inline.NumInlined: 2906
inline.NumDeleted: 1200
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

bb.km:                                            ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23, !noalias !392
  %i.alo = load ptr, ptr %101, align 8, !tbaa !237 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 44
  %i.alq = load i8, ptr %i.alp, align 4, !tbaa !384
  %i.alr = and i8 %i.alq, 2
  %.not.i385 = icmp eq i8 %i.alr, 0
  br i1 %.not.i385, label %bb.ko, label %bb.kn, !prof !78

bb.kn:                                            ; preds = %bb.km
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc386 unwind label %bb.pc

.noexc386:                                        ; preds = %bb.kn
  unreachable

bb.ko:                                            ; preds = %bb.km
  %i.als = getelementptr inbounds nuw i8, ptr %i.alo, i64 16
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !385 ; 6 uses
  %i.alu = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 36 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alu, i64 37
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !263, !range !82, !noundef !83
  %i.aly = trunc nuw i8 %i.alx to i1
  br i1 %i.aly, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.kp

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.ko
  %.0.in.pre.i.i = load i8, ptr %i.alv, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.kp:                                            ; preds = %bb.ko
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 28
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !312
  %i.amb = icmp eq i32 %i.ama, 0
  br i1 %i.amb, label %bb.kq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.kq:                                            ; preds = %bb.kp
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.amd = load i32, ptr %i.amc, align 8, !tbaa !196 ; 6 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alu, i64 24
  %i.amf = load i32, ptr %i.ame, align 8, !tbaa !313
  %i.amg = icmp eq i32 %i.amd, %i.amf
  br i1 %i.amg, label %bb.kr, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.kr:                                            ; preds = %bb.kq
  %i.amh = load ptr, ptr %i.alu, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i395 = icmp sgt i32 %i.amd, 0
  br i1 %.not.i.i.i395, label %bb.ks, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ks:                                            ; preds = %bb.kr
  %i.ami = and i32 %i.amd, 2147483584             ; 3 uses
  %i.amj = zext nneg i32 %i.ami to i64
  %.not37.i.i.not.i.i1949.not = icmp eq i32 %i.ami, 0
  br i1 %.not37.i.i.not.i.i1949.not, label %.critedge.i.i.i.i, label %.lr.ph1951

bb.kt:                                            ; preds = %.lr.ph1951
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i1950, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.amj
  br i1 %.not37.i.i.not.i.i, label %.lr.ph1951, label %.critedge.i.i.i.i, !llvm.loop !315

.lr.ph1951:                                       ; preds = %bb.ks, %bb.kt
  %indvars.iv.i.i1950 = phi i64 [ %indvars.iv.next.i.i, %bb.kt ], [ 0, %bb.ks ] ; 2 uses
  %i.amk = lshr exact i64 %indvars.iv.i.i1950, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.amk
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !145
  %i.amn = icmp eq i64 %i.amm, -1
  br i1 %i.amn, label %bb.kt, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !315

.critedge.i.i.i.i:                                ; preds = %bb.kt, %bb.ks
  %.not38.i.i.i.i = icmp eq i32 %i.amd, %i.ami
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ku

bb.ku:                                            ; preds = %.critedge.i.i.i.i
  %i.amo = lshr i32 %i.amd, 6
  %i.amp = and i32 %i.amd, 63
  %i.amq = zext nneg i32 %i.amp to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.amq
  %i.amr = zext nneg i32 %i.amo to i64
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.amh, i64 %i.amr
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !145
  %.demorgan.i.i = or i64 %i.amt, %notmask.i40.i.i.i.i
  %i.amu = icmp eq i64 %.demorgan.i.i, -1
  %i.amv = zext i1 %i.amu to i16
  %i.amw = or disjoint i16 %i.amv, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph1951, %bb.ku, %.critedge.i.i.i.i, %bb.kr, %bb.kq, %bb.kp
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.kq ], [ 256, %bb.kp ], [ 257, %bb.kr ], [ 257, %.critedge.i.i.i.i ], [ %i.amw, %bb.ku ], [ 256, %.lr.ph1951 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.alv, align 4
  %i.amx = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.amx, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.kv, label %bb.ky

bb.kv:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !196 ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alu, i64 28
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !312 ; 2 uses
  %i.anc = icmp slt i32 %i.anb, %i.amz
  br i1 %i.anc, label %.lr.ph.i391, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit

.lr.ph.i391:                                      ; preds = %bb.kv
  %i.and = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.ane = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.anf = getelementptr inbounds nuw i8, ptr %i.and, i64 104
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !306
  %i.anh = sext i32 %i.anb to i64
  %wide.trip.count.i = sext i32 %i.amz to i64
  %i.ani = load ptr, ptr %96, align 8
  br label %bb.kw

bb.kw:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, %.lr.ph.i391
  %.91190 = phi i32 [ 0, %.lr.ph.i391 ], [ %i.aoe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i ] ; 3 uses
  %indvars.iv.i393 = phi i64 [ %i.anh, %.lr.ph.i391 ], [ %indvars.iv.next.i394, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i ] ; 4 uses
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %indvars.iv.i393
  store i32 %.91190, ptr %i.anj, align 4, !tbaa !3
  %i.ank = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %indvars.iv.i393
  store i32 %i.ank, ptr %i.anl, align 4, !tbaa !3
  %i.anm = icmp sgt i32 %i.ank, 0
  br i1 %i.anm, label %.lr.ph.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.kw
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv.i393
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !3
  %i.anp = sext i32 %i.ano to i64
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.ang, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !3
  %i.ans = sub i32 %i.anr, %i.xy
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kx, %.lr.ph.i.i
  %indvars.iv.i4.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i5.i, %bb.kx ] ; 3 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.ani, i64 %indvars.iv.i4.i
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !3 ; 2 uses
  %i.anv = trunc nuw nsw i64 %indvars.iv.i4.i to i32
  %i.anw = add nsw i32 %.91190, %i.anv
  %i.anx = sext i32 %i.anw to i64                 ; 2 uses
  %i.any = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.anx
  store i32 %i.anu, ptr %i.any, align 4, !tbaa !3
  %i.anz = add i32 %i.ans, %i.anu
  %i.aoa = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.anx
  store i32 %i.anz, ptr %i.aoa, align 4, !tbaa !3
  %indvars.iv.next.i5.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 2 uses
  %i.aob = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = icmp slt i64 %indvars.iv.next.i5.i, %i.aoc
  br i1 %i.aod, label %bb.kx, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i: ; preds = %bb.kx, %bb.kw
  %.lcssa.i.i = phi i32 [ %i.ank, %bb.kw ], [ %i.aob, %bb.kx ]
  %i.aoe = add nsw i32 %.lcssa.i.i, %.91190
  %indvars.iv.next.i394 = add nsw i64 %indvars.iv.i393, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i394, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.kw, !llvm.loop !396

bb.ky:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aof = load ptr, ptr %i.alu, align 8, !tbaa !314 ; 4 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %i.alu, i64 28
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !312 ; 6 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.aoj = load i32, ptr %i.aoi, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i388 = icmp slt i32 %i.aoh, %i.aoj
  br i1 %.not.i.i.i.i388, label %bb.kz, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit

bb.kz:                                            ; preds = %bb.ky
  %i.aok = add i32 %i.aoh, 63                     ; 2 uses
  %i.aol = srem i32 %i.aok, 64
  %i.aom = sub nsw i32 %i.aok, %i.aol             ; 6 uses
  %i.aon = and i32 %i.aoj, -64                    ; 6 uses
  %i.aoo = icmp slt i32 %i.aon, %i.aom
  br i1 %i.aoo, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.aop = ashr i32 %i.aoj, 6
  %i.aoq = and i32 %i.aoj, 63
  %i.aor = zext nneg i32 %i.aoq to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.aor
  %i.aos = xor i64 %notmask.i.i.i.i.i, -1
  %i.aot = sub nsw i32 %i.aom, %i.aoh             ; 2 uses
  %i.aou = zext nneg i32 %i.aot to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.aou
  %i.aov = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.aow = sub nsw i32 64, %i.aot
  %i.aox = zext nneg i32 %i.aow to i64
  %i.aoy = shl i64 %i.aov, %i.aox
  %i.aoz = and i64 %i.aoy, %i.aos
  %i.apa = sext i32 %i.aop to i64
  %i.apb = getelementptr inbounds [8 x i8], ptr %i.aof, i64 %i.apa
  %i.apc = load i64, ptr %i.apb, align 8, !tbaa !145
  %i.apd = and i64 %i.aoz, %i.apc                 ; 2 uses
  %.not.i.i.i.i.i389 = icmp eq i64 %i.apd, 0
  br i1 %.not.i.i.i.i.i389, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.la
  %i.ape = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.apf = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ape, i64 104
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !306
  %i.api = load ptr, ptr %96, align 8
  br label %bb.lb

bb.lb:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.81189 = phi i32 [ 0, %.preheader.i.i.i.i.i ], [ %i.aqf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i = phi i64 [ %i.apd, %.preheader.i.i.i.i.i ], [ %i.aqh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.apj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %127 = trunc nuw nsw i64 %i.apj to i32
  %128 = or disjoint i32 %i.aon, %127
  %129 = sext i32 %128 to i64                     ; 3 uses
  %i.apk = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %129
  store i32 %.81189, ptr %i.apk, align 4, !tbaa !3
  %i.apl = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.apm = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %129
  store i32 %i.apl, ptr %i.apm, align 4, !tbaa !3
  %i.apn = icmp sgt i32 %i.apl, 0
  br i1 %i.apn, label %.lr.ph.i.i.i.i.i.i390, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i390:                            ; preds = %bb.lb
  %i.apo = getelementptr inbounds [4 x i8], ptr %i.apf, i64 %129
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !3
  %i.apq = sext i32 %i.app to i64
  %i.apr = getelementptr inbounds [4 x i8], ptr %i.aph, i64 %i.apq
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !3
  %i.apt = sub i32 %i.aps, %i.xy
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lc, %.lr.ph.i.i.i.i.i.i390
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i390 ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.lc ] ; 3 uses
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.api, i64 %indvars.iv.i.i.i.i.i.i
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !3 ; 2 uses
  %i.apw = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.apx = add nsw i32 %.81189, %i.apw
  %i.apy = sext i32 %i.apx to i64                 ; 2 uses
  %i.apz = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.apy
  store i32 %i.apv, ptr %i.apz, align 4, !tbaa !3
  %i.aqa = add i32 %i.apt, %i.apv
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.apy
  store i32 %i.aqa, ptr %i.aqb, align 4, !tbaa !3
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.aqc = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.aqd = sext i32 %i.aqc to i64
  %i.aqe = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i, %i.aqd
  br i1 %i.aqe, label %bb.lc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i: ; preds = %bb.lc, %bb.lb
  %.lcssa.i.i.i.i.i.i = phi i32 [ %i.apl, %bb.lb ], [ %i.aqc, %bb.lc ]
  %i.aqf = add nsw i32 %.lcssa.i.i.i.i.i.i, %.81189
  %i.aqg = add nsw i64 %.011.i.i.i.i.i, -1
  %i.aqh = and i64 %i.aqg, %.011.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.aqh, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.lb, !llvm.loop !397

bb.ld:                                            ; preds = %bb.kz
  %.not32.i.i.i.i = icmp eq i32 %i.aoh, %i.aom
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aqi = sdiv i32 %i.aoh, 64                    ; 2 uses
  %i.aqj = sub nsw i32 %i.aom, %i.aoh             ; 2 uses
  %i.aqk = zext nneg i32 %i.aqj to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.aqk
  %i.aql = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.aqm = sub nsw i32 64, %i.aqj
  %i.aqn = zext nneg i32 %i.aqm to i64
  %i.aqo = shl i64 %i.aql, %i.aqn
  %i.aqp = sext i32 %i.aqi to i64
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.aof, i64 %i.aqp
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !145
  %i.aqs = and i64 %i.aqr, %i.aqo                 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.aqs, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.le
  %i.aqt = shl nsw i32 %i.aqi, 6
  %i.aqu = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.aqv = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqu, i64 104
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !306
  %i.aqy = load ptr, ptr %96, align 8
  br label %bb.lf

bb.lf:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i
  %.01181 = phi i32 [ 0, %.preheader.i37.i.i.i.i ], [ %i.arv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i = phi i64 [ %i.aqs, %.preheader.i37.i.i.i.i ], [ %i.arx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.aqz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i, i1 true)
  %130 = trunc nuw nsw i64 %i.aqz to i32
  %131 = or disjoint i32 %i.aqt, %130
  %132 = sext i32 %131 to i64                     ; 3 uses
  %i.ara = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %132
  store i32 %.01181, ptr %i.ara, align 4, !tbaa !3
  %i.arb = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.arc = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %132
  store i32 %i.arb, ptr %i.arc, align 4, !tbaa !3
  %i.ard = icmp sgt i32 %i.arb, 0
  br i1 %i.ard, label %.lr.ph.i.i43.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i

.lr.ph.i.i43.i.i.i.i:                             ; preds = %bb.lf
  %i.are = getelementptr inbounds [4 x i8], ptr %i.aqv, i64 %132
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !3
  %i.arg = sext i32 %i.arf to i64
  %i.arh = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %i.arg
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !3
  %i.arj = sub i32 %i.ari, %i.xy
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lg, %.lr.ph.i.i43.i.i.i.i
  %indvars.iv.i.i44.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i43.i.i.i.i ], [ %indvars.iv.next.i.i45.i.i.i.i, %bb.lg ] ; 3 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aqy, i64 %indvars.iv.i.i44.i.i.i.i
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !3 ; 2 uses
  %i.arm = trunc nuw nsw i64 %indvars.iv.i.i44.i.i.i.i to i32
  %i.arn = add nsw i32 %.01181, %i.arm
  %i.aro = sext i32 %i.arn to i64                 ; 2 uses
  %i.arp = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.aro
  store i32 %i.arl, ptr %i.arp, align 4, !tbaa !3
  %i.arq = add i32 %i.arj, %i.arl
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aro
  store i32 %i.arq, ptr %i.arr, align 4, !tbaa !3
  %indvars.iv.next.i.i45.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i44.i.i.i.i, 1 ; 2 uses
  %i.ars = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.art = sext i32 %i.ars to i64
  %i.aru = icmp slt i64 %indvars.iv.next.i.i45.i.i.i.i, %i.art
  br i1 %i.aru, label %bb.lg, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i: ; preds = %bb.lg, %bb.lf
  %.lcssa.i.i41.i.i.i.i = phi i32 [ %i.arb, %bb.lf ], [ %i.ars, %bb.lg ]
  %i.arv = add nsw i32 %.lcssa.i.i41.i.i.i.i, %.01181 ; 2 uses
  %i.arw = add i64 %.011.i39.i.i.i.i, -1
  %i.arx = and i64 %i.arw, %.011.i39.i.i.i.i      ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.arx, 0
  br i1 %.not10.i42.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %bb.lf, !llvm.loop !397

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, %bb.le, %bb.ld
  %.11182 = phi i32 [ 0, %bb.ld ], [ 0, %bb.le ], [ %i.arv, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.ary = add nsw i32 %i.aom, 64                 ; 2 uses
  %.not3376.i.i.i.i = icmp sgt i32 %i.ary, %i.aon
  br i1 %.not3376.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i
  %i.arz = load ptr, ptr %i.h, align 8
  %i.asa = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arz, i64 104 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i
  %.41185 = phi i32 [ %.11182, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i ], [ %.31184, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i = icmp eq i32 %i.aoj, %i.aon
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.lm

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.21183 = phi i32 [ %.31184, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.11182, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.asc = phi i32 [ %i.auo, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ary, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.077.i.i.i.i = phi i32 [ %i.asc, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.aom, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.asd = sdiv i32 %.077.i.i.i.i, 64             ; 3 uses
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [8 x i8], ptr %i.aof, i64 %i.ase
  %i.asg = load i64, ptr %i.asf, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.asg, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.lh
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ash = shl nsw i32 %i.asd, 6
  %i.asi = load ptr, ptr %i.asb, align 8, !tbaa !306
  %i.asj = load ptr, ptr %96, align 8
  br label %bb.lk

bb.lh:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ask = shl nsw i32 %i.asd, 6                  ; 2 uses
  %i.asl = add i32 %i.ask, 64
  %i.asm = sext i32 %i.asl to i64
  %.0.off.i.i.i.i = add i32 %.077.i.i.i.i, 127
  %.not29.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not29.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.lh
  %i.asn = sext i32 %i.ask to i64
  %i.aso = load ptr, ptr %i.asb, align 8, !tbaa !306
  %i.asp = load ptr, ptr %96, align 8
  br label %bb.li

bb.li:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, %.lr.ph28.i.i.i.i.i
  %.61187 = phi i32 [ %.21183, %.lr.ph28.i.i.i.i.i ], [ %i.atm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 3 uses
  %.027.i.i.i.i.i = phi i64 [ %i.asn, %.lr.ph28.i.i.i.i.i ], [ %i.atn, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.027.i.i.i.i.i, 32
  %i.asq = ashr exact i64 %sext.i.i.i.i.i, 32     ; 3 uses
  %i.asr = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %i.asq
  store i32 %.61187, ptr %i.asr, align 4, !tbaa !3
  %i.ass = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.ast = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %i.asq
  store i32 %i.ass, ptr %i.ast, align 4, !tbaa !3
  %i.asu = icmp sgt i32 %i.ass, 0
  br i1 %i.asu, label %.lr.ph.i.i50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i

.lr.ph.i.i50.i.i.i.i:                             ; preds = %bb.li
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.asa, i64 %i.asq
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !3
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds [4 x i8], ptr %i.aso, i64 %i.asx
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !3
  %i.ata = sub i32 %i.asz, %i.xy
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lj, %.lr.ph.i.i50.i.i.i.i
  %indvars.iv.i.i51.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i50.i.i.i.i ], [ %indvars.iv.next.i.i52.i.i.i.i, %bb.lj ] ; 3 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.asp, i64 %indvars.iv.i.i51.i.i.i.i
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !3 ; 2 uses
  %i.atd = trunc nuw nsw i64 %indvars.iv.i.i51.i.i.i.i to i32
  %i.ate = add nsw i32 %.61187, %i.atd
  %i.atf = sext i32 %i.ate to i64                 ; 2 uses
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.atf
  store i32 %i.atc, ptr %i.atg, align 4, !tbaa !3
  %i.ath = add i32 %i.ata, %i.atc
  %i.ati = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.atf
  store i32 %i.ath, ptr %i.ati, align 4, !tbaa !3
  %indvars.iv.next.i.i52.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i51.i.i.i.i, 1 ; 2 uses
  %i.atj = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.atk = sext i32 %i.atj to i64
  %i.atl = icmp slt i64 %indvars.iv.next.i.i52.i.i.i.i, %i.atk
  br i1 %i.atl, label %bb.lj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i: ; preds = %bb.lj, %bb.li
  %.lcssa.i.i49.i.i.i.i = phi i32 [ %i.ass, %bb.li ], [ %i.atj, %bb.lj ]
  %i.atm = add nsw i32 %.lcssa.i.i49.i.i.i.i, %.61187 ; 2 uses
  %i.atn = add nuw i64 %.027.i.i.i.i.i, 1         ; 2 uses
  %i.ato = icmp ult i64 %i.atn, %i.asm
  br i1 %i.ato, label %bb.li, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !398

bb.lk:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.71188 = phi i32 [ %.21183, %.lr.ph.i.i.i.i.i ], [ %i.aul, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ] ; 3 uses
  %.01526.i.i.i.i.i = phi i64 [ %i.asg, %.lr.ph.i.i.i.i.i ], [ %i.aun, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ] ; 3 uses
  %i.atp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.i.i.i.i.i, i1 true)
  %133 = trunc nuw nsw i64 %i.atp to i32
  %134 = or disjoint i32 %i.ash, %133
  %135 = sext i32 %134 to i64                     ; 3 uses
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %135
  store i32 %.71188, ptr %i.atq, align 4, !tbaa !3
  %i.atr = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %135
  store i32 %i.atr, ptr %i.ats, align 4, !tbaa !3
  %i.att = icmp sgt i32 %i.atr, 0
  br i1 %i.att, label %.lr.ph.i18.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i

.lr.ph.i18.i.i.i.i.i:                             ; preds = %bb.lk
  %i.atu = getelementptr inbounds [4 x i8], ptr %i.asa, i64 %135
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !3
  %i.atw = sext i32 %i.atv to i64
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.atw
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !3
  %i.atz = sub i32 %i.aty, %i.xy
  br label %bb.ll

bb.ll:                                            ; preds = %bb.ll, %.lr.ph.i18.i.i.i.i.i
  %indvars.iv.i19.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i18.i.i.i.i.i ], [ %indvars.iv.next.i20.i.i.i.i.i, %bb.ll ] ; 3 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv.i19.i.i.i.i.i
  %i.aub = load i32, ptr %i.aua, align 4, !tbaa !3 ; 2 uses
  %i.auc = trunc nuw nsw i64 %indvars.iv.i19.i.i.i.i.i to i32
  %i.aud = add nsw i32 %.71188, %i.auc
  %i.aue = sext i32 %i.aud to i64                 ; 2 uses
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.aue
  store i32 %i.aub, ptr %i.auf, align 4, !tbaa !3
  %i.aug = add i32 %i.atz, %i.aub
  %i.auh = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.aue
  store i32 %i.aug, ptr %i.auh, align 4, !tbaa !3
  %indvars.iv.next.i20.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i.i.i.i, 1 ; 2 uses
  %i.aui = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.auj = sext i32 %i.aui to i64
  %i.auk = icmp slt i64 %indvars.iv.next.i20.i.i.i.i.i, %i.auj
  br i1 %i.auk, label %bb.ll, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i: ; preds = %bb.ll, %bb.lk
  %.lcssa.i17.i.i.i.i.i = phi i32 [ %i.atr, %bb.lk ], [ %i.aui, %bb.ll ]
  %i.aul = add nsw i32 %.lcssa.i17.i.i.i.i.i, %.71188 ; 2 uses
  %i.aum = add i64 %.01526.i.i.i.i.i, -1
  %i.aun = and i64 %i.aum, %.01526.i.i.i.i.i      ; 2 uses
  %.not.i53.i.i.i.i = icmp eq i64 %i.aun, 0
  br i1 %.not.i53.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.lk, !llvm.loop !399

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, %bb.lh, %.lr.ph.i.i.i.i
  %.31184 = phi i32 [ %.21183, %.lr.ph.i.i.i.i ], [ %.21183, %bb.lh ], [ %i.aul, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ], [ %i.atm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 2 uses
  %i.auo = add nsw i32 %i.asc, 64                 ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.auo, %i.aon
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !400

bb.lm:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aup = ashr i32 %i.aoj, 6
  %i.auq = and i32 %i.aoj, 63
  %i.aur = zext nneg i32 %i.auq to i64
  %notmask.i54.i.i.i.i = shl nsw i64 -1, %i.aur
  %i.aus = xor i64 %notmask.i54.i.i.i.i, -1
  %i.aut = sext i32 %i.aup to i64
  %i.auu = getelementptr inbounds [8 x i8], ptr %i.aof, i64 %i.aut
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !145
  %i.auw = and i64 %i.auv, %i.aus                 ; 2 uses
  %.not.i55.i.i.i.i = icmp eq i64 %i.auw, 0
  br i1 %.not.i55.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %.preheader.i56.i.i.i.i

.preheader.i56.i.i.i.i:                           ; preds = %bb.lm
  %i.aux = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.auy = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aux, i64 104
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !306
  %i.avb = load ptr, ptr %96, align 8
  br label %bb.ln

bb.ln:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, %.preheader.i56.i.i.i.i
  %.51186 = phi i32 [ %.41185, %.preheader.i56.i.i.i.i ], [ %i.avy, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i ] ; 3 uses
  %.011.i58.i.i.i.i = phi i64 [ %i.auw, %.preheader.i56.i.i.i.i ], [ %i.awa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i ] ; 3 uses
  %i.avc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i58.i.i.i.i, i1 true)
  %136 = trunc nuw nsw i64 %i.avc to i32
  %137 = or disjoint i32 %i.aon, %136
  %138 = sext i32 %137 to i64                     ; 3 uses
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.akp, i64 %138
  store i32 %.51186, ptr %i.avd, align 4, !tbaa !3
  %i.ave = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.ala, i64 %138
  store i32 %i.ave, ptr %i.avf, align 4, !tbaa !3
  %i.avg = icmp sgt i32 %i.ave, 0
  br i1 %i.avg, label %.lr.ph.i.i62.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i

.lr.ph.i.i62.i.i.i.i:                             ; preds = %bb.ln
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.auy, i64 %138
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !3
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds [4 x i8], ptr %i.ava, i64 %i.avj
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !3
  %i.avm = sub i32 %i.avl, %i.xy
  br label %bb.lo

bb.lo:                                            ; preds = %bb.lo, %.lr.ph.i.i62.i.i.i.i
  %indvars.iv.i.i63.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i62.i.i.i.i ], [ %indvars.iv.next.i.i64.i.i.i.i, %bb.lo ] ; 3 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %indvars.iv.i.i63.i.i.i.i
  %i.avo = load i32, ptr %i.avn, align 4, !tbaa !3 ; 2 uses
  %i.avp = trunc nuw nsw i64 %indvars.iv.i.i63.i.i.i.i to i32
  %i.avq = add nsw i32 %.51186, %i.avp
  %i.avr = sext i32 %i.avq to i64                 ; 2 uses
  %i.avs = getelementptr inbounds [4 x i8], ptr %i.alk, i64 %i.avr
  store i32 %i.avo, ptr %i.avs, align 4, !tbaa !3
  %i.avt = add i32 %i.avm, %i.avo
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.alt, i64 %i.avr
  store i32 %i.avt, ptr %i.avu, align 4, !tbaa !3
  %indvars.iv.next.i.i64.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i63.i.i.i.i, 1 ; 2 uses
  %i.avv = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.avw = sext i32 %i.avv to i64
  %i.avx = icmp slt i64 %indvars.iv.next.i.i64.i.i.i.i, %i.avw
  br i1 %i.avx, label %bb.lo, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, !llvm.loop !395

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i: ; preds = %bb.lo, %bb.ln
  %.lcssa.i.i60.i.i.i.i = phi i32 [ %i.ave, %bb.ln ], [ %i.avv, %bb.lo ]
  %i.avy = add nsw i32 %.lcssa.i.i60.i.i.i.i, %.51186
  %i.avz = add nsw i64 %.011.i58.i.i.i.i, -1
  %i.awa = and i64 %i.avz, %.011.i58.i.i.i.i      ; 2 uses
  %.not10.i61.i.i.i.i = icmp eq i64 %i.awa, 0
  br i1 %.not10.i61.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.ln, !llvm.loop !397

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, %bb.lm, %._crit_edge.i.i.i.i, %bb.la, %bb.ky, %bb.kv
  call void @llvm.lifetime.start.p0(ptr nonnull %102) #23
  store ptr null, ptr %103, align 8, !tbaa !237
  %i.awb = load ptr, ptr %100, align 8, !tbaa !237 ; 3 uses
  store ptr %i.awb, ptr %104, align 8, !tbaa !237
  %.not.i396 = icmp eq ptr %i.awb, null
  br i1 %.not.i396, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.lp

bb.lp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 40
  %i.awd = atomicrmw add ptr %i.awc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, %bb.lp
  %i.awe = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.awf = load ptr, ptr %i.xm, align 8, !tbaa !38 ; 2 uses
  %i.awg = load <2 x ptr>, ptr %i.xk, align 8, !tbaa !41
  store <2 x ptr> %i.awg, ptr %105, align 16, !tbaa !41
  %.not.i.i.i397 = icmp eq ptr %i.awf, null
  br i1 %.not.i.i.i397, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit399, label %bb.lq

bb.lq:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awf, i64 8 ; 3 uses
  %i.awi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i398 = icmp eq i8 %i.awi, 0
  br i1 %.not.i.i.i.i398, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.awj = load i32, ptr %i.awh, align 4, !tbaa !3
  %i.awk = add nsw i32 %i.awj, 1
  store i32 %i.awk, ptr %i.awh, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit399

bb.ls:                                            ; preds = %bb.lq
  %i.awl = atomicrmw volatile add ptr %i.awh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit399

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit399: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, %bb.lr, %bb.ls
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %102, ptr noundef nonnull %103, ptr noundef nonnull %104, i32 noundef %i.akd, ptr noundef nonnull %105, i1 noundef zeroext false)
          to label %bb.lt unwind label %bb.pd

bb.lt:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit399
  %i.awm = load ptr, ptr %i.awe, align 8, !tbaa !38 ; 8 uses
  %.not.i.i400 = icmp eq ptr %i.awm, null
  br i1 %.not.i.i400, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8 ; 4 uses
  %i.awo = load atomic i64, ptr %i.awn acquire, align 8 ; 2 uses
  %i.awp = icmp eq i64 %i.awo, 4294967297
  %i.awq = trunc i64 %i.awo to i32                ; 2 uses
  br i1 %i.awp, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  store i32 0, ptr %i.awn, align 8, !tbaa !43
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awm, i64 12
  store i32 0, ptr %i.awr, align 4, !tbaa !45
  %i.aws = load ptr, ptr %i.awm, align 8, !tbaa !46
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 16
  %i.awu = load ptr, ptr %i.awt, align 8
  call void %i.awu(ptr noundef nonnull align 8 dereferenceable(16) %i.awm) #23, !inline_history !236
  %i.awv = load ptr, ptr %i.awm, align 8, !tbaa !46
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 24
  %i.awx = load ptr, ptr %i.aww, align 8
  call void %i.awx(ptr noundef nonnull align 8 dereferenceable(16) %i.awm) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404

bb.lw:                                            ; preds = %bb.lu
  %i.awy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i401 = icmp eq i8 %i.awy, 0
  br i1 %.not.i.i.i401, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.awz = add nsw i32 %i.awq, -1
  store i32 %i.awz, ptr %i.awn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i402

bb.ly:                                            ; preds = %bb.lw
  %i.axa = atomicrmw volatile add ptr %i.awn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i402

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i402: ; preds = %bb.ly, %bb.lx
  %.0.i.i.i.i403 = phi i32 [ %i.awq, %bb.lx ], [ %i.axa, %bb.ly ]
  %i.axb = icmp eq i32 %.0.i.i.i.i403, 1
  br i1 %i.axb, label %bb.lz, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404, !prof !49

bb.lz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i402
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awm) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404: ; preds = %bb.lt, %bb.lv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i402, %bb.lz
  %i.axc = load ptr, ptr %104, align 8, !tbaa !237 ; 7 uses
  %.not.i405 = icmp eq ptr %i.axc, null
  br i1 %.not.i405, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410, label %bb.ma

bb.ma:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 40
  %i.axe = atomicrmw sub ptr %i.axd, i32 1 acq_rel, align 4
  %i.axf = icmp eq i32 %i.axe, 1
  br i1 %i.axf, label %.sink.split.i.i406, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410

.sink.split.i.i406:                               ; preds = %bb.ma
  %i.axg = load ptr, ptr %i.axc, align 8, !tbaa !46
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 64
  %i.axi = load ptr, ptr %i.axh, align 8
  invoke void %i.axi(ptr noundef nonnull align 8 dereferenceable(64) %i.axc)
          to label %.noexc.i407 unwind label %bb.mb, !inline_history !240

.noexc.i407:                                      ; preds = %.sink.split.i.i406
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axk = load ptr, ptr %i.axj, align 8, !tbaa !241
  %.not.i.i408 = icmp eq ptr %i.axk, null
  %i.axl = load ptr, ptr %i.axc, align 8, !tbaa !46
  %..i.i409 = select i1 %.not.i.i408, i64 8, i64 48
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 %..i.i409
  %i.axn = load ptr, ptr %i.axm, align 8
  invoke void %i.axn(ptr noundef nonnull align 8 dereferenceable(64) %i.axc)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410 unwind label %bb.mb, !inline_history !240

bb.mb:                                            ; preds = %.noexc.i407, %.sink.split.i.i406
  %i.axo = landingpad { ptr, i32 }
          catch ptr null
  %i.axp = extractvalue { ptr, i32 } %i.axo, 0
  call void @__clang_call_terminate(ptr %i.axp) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit404, %bb.ma, %.noexc.i407
  %i.axq = load ptr, ptr %103, align 8, !tbaa !237 ; 7 uses
  %.not.i411 = icmp eq ptr %i.axq, null
  br i1 %.not.i411, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit416, label %bb.mc

bb.mc:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 40
  %i.axs = atomicrmw sub ptr %i.axr, i32 1 acq_rel, align 4
  %i.axt = icmp eq i32 %i.axs, 1
  br i1 %i.axt, label %.sink.split.i.i412, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit416

.sink.split.i.i412:                               ; preds = %bb.mc
  %i.axu = load ptr, ptr %i.axq, align 8, !tbaa !46
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 64
  %i.axw = load ptr, ptr %i.axv, align 8
  invoke void %i.axw(ptr noundef nonnull align 8 dereferenceable(64) %i.axq)
          to label %.noexc.i413 unwind label %bb.md, !inline_history !240

.noexc.i413:                                      ; preds = %.sink.split.i.i412
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axq, i64 8
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !241
  %.not.i.i414 = icmp eq ptr %i.axy, null
  %i.axz = load ptr, ptr %i.axq, align 8, !tbaa !46
  %..i.i415 = select i1 %.not.i.i414, i64 8, i64 48
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 %..i.i415
  %i.ayb = load ptr, ptr %i.aya, align 8
  invoke void %i.ayb(ptr noundef nonnull align 8 dereferenceable(64) %i.axq)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit416 unwind label %bb.md, !inline_history !240

bb.md:                                            ; preds = %.noexc.i413, %.sink.split.i.i412
  %i.ayc = landingpad { ptr, i32 }
          catch ptr null
  %i.ayd = extractvalue { ptr, i32 } %i.ayc, 0
  call void @__clang_call_terminate(ptr %i.ayd) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit416: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410, %bb.mc, %.noexc.i413
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #23
  store ptr null, ptr %107, align 8, !tbaa !237
  %i.aye = load ptr, ptr %101, align 8, !tbaa !237 ; 3 uses
  store ptr %i.aye, ptr %108, align 8, !tbaa !237
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.cop = load i32, ptr %i.cnb, align 4, !tbaa !3
  %i.coq = load i32, ptr %i.cnc, align 4, !tbaa !3
  %i.cor = load i32, ptr %i.cnd, align 4, !tbaa !3
  %i.cos = load i32, ptr %i.cne, align 4, !tbaa !3
  %i.cot = insertelement <8 x i32> poison, i32 %i.col, i64 0
  %i.cou = insertelement <8 x i32> %i.cot, i32 %i.com, i64 1
  %i.cov = insertelement <8 x i32> %i.cou, i32 %i.con, i64 2
  %i.cow = insertelement <8 x i32> %i.cov, i32 %i.coo, i64 3
  %i.cox = insertelement <8 x i32> %i.cow, i32 %i.cop, i64 4
  %i.coy = insertelement <8 x i32> %i.cox, i32 %i.coq, i64 5
  %i.coz = insertelement <8 x i32> %i.coy, i32 %i.cor, i64 6
  %i.cpa = insertelement <8 x i32> %i.coz, i32 %i.cos, i64 7
  %i.cpb = load i32, ptr %i.cnf, align 4, !tbaa !3
  %i.cpc = load i32, ptr %i.cng, align 4, !tbaa !3
  %i.cpd = load i32, ptr %i.cnh, align 4, !tbaa !3
  %i.cpe = load i32, ptr %i.cni, align 4, !tbaa !3
  %i.cpf = load i32, ptr %i.cnj, align 4, !tbaa !3
  %i.cpg = load i32, ptr %i.cnk, align 4, !tbaa !3
  %i.cph = load i32, ptr %i.cnl, align 4, !tbaa !3
  %i.cpi = load i32, ptr %i.cnm, align 4, !tbaa !3
  %i.cpj = insertelement <8 x i32> poison, i32 %i.cpb, i64 0
  %i.cpk = insertelement <8 x i32> %i.cpj, i32 %i.cpc, i64 1
  %i.cpl = insertelement <8 x i32> %i.cpk, i32 %i.cpd, i64 2
  %i.cpm = insertelement <8 x i32> %i.cpl, i32 %i.cpe, i64 3
  %i.cpn = insertelement <8 x i32> %i.cpm, i32 %i.cpf, i64 4
  %i.cpo = insertelement <8 x i32> %i.cpn, i32 %i.cpg, i64 5
  %i.cpp = insertelement <8 x i32> %i.cpo, i32 %i.cph, i64 6
  %i.cpq = insertelement <8 x i32> %i.cpp, i32 %i.cpi, i64 7
  %i.cpr = load i32, ptr %i.cnn, align 4, !tbaa !3
  %i.cps = load i32, ptr %i.cno, align 4, !tbaa !3
  %i.cpt = load i32, ptr %i.cnp, align 4, !tbaa !3
  %i.cpu = load i32, ptr %i.cnq, align 4, !tbaa !3
  %i.cpv = load i32, ptr %i.cnr, align 4, !tbaa !3
  %i.cpw = load i32, ptr %i.cns, align 4, !tbaa !3
  %i.cpx = load i32, ptr %i.cnt, align 4, !tbaa !3
  %i.cpy = load i32, ptr %i.cnu, align 4, !tbaa !3
  %i.cpz = insertelement <8 x i32> poison, i32 %i.cpr, i64 0
  %i.cqa = insertelement <8 x i32> %i.cpz, i32 %i.cps, i64 1
  %i.cqb = insertelement <8 x i32> %i.cqa, i32 %i.cpt, i64 2
  %i.cqc = insertelement <8 x i32> %i.cqb, i32 %i.cpu, i64 3
  %i.cqd = insertelement <8 x i32> %i.cqc, i32 %i.cpv, i64 4
  %i.cqe = insertelement <8 x i32> %i.cqd, i32 %i.cpw, i64 5
  %i.cqf = insertelement <8 x i32> %i.cqe, i32 %i.cpx, i64 6
  %i.cqg = insertelement <8 x i32> %i.cqf, i32 %i.cpy, i64 7
  %i.cqh = add <8 x i32> %i.cok, %vec.phi1977     ; 2 uses
  %i.cqi = add <8 x i32> %i.cpa, %vec.phi1978     ; 2 uses
  %i.cqj = add <8 x i32> %i.cpq, %vec.phi1979     ; 2 uses
  %i.cqk = add <8 x i32> %i.cqg, %vec.phi1980     ; 2 uses
  %index.next1981 = add nuw i64 %index1976, 32    ; 2 uses
  %i.cql = icmp eq i64 %index.next1981, %n.vec1974
  br i1 %i.cql, label %middle.block1982, label %vector.body1975, !llvm.loop !450

middle.block1982:                                 ; preds = %vector.body1975
  %bin.rdx1983 = add <8 x i32> %i.cqi, %i.cqh
  %bin.rdx1984 = add <8 x i32> %i.cqj, %bin.rdx1983
  %bin.rdx1985 = add <8 x i32> %i.cqk, %bin.rdx1984
  %i.cqm = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1985) ; 3 uses
  %cmp.n1986 = icmp eq i64 %i.chp, %n.vec1974
  br i1 %cmp.n1986, label %.loopexit1226, label %vec.epilog.iter.check1991

vec.epilog.iter.check1991:                        ; preds = %middle.block1982
  %min.epilog.iters.check1992 = icmp eq i64 %n.mod.vf1973, 0
  br i1 %min.epilog.iters.check1992, label %vec.epilog.scalar.ph1990.preheader, label %vec.epilog.ph1993, !prof !350

vec.epilog.ph1993:                                ; preds = %vector.main.loop.iter.check1970, %vec.epilog.iter.check1991
  %vec.epilog.resume.val1987 = phi i64 [ %n.vec1974, %vec.epilog.iter.check1991 ], [ 0, %vector.main.loop.iter.check1970 ]
  %bc.merge.rdx1988 = phi i32 [ %i.cqm, %vec.epilog.iter.check1991 ], [ 0, %vector.main.loop.iter.check1970 ]
  %n.vec1995 = and i64 %i.chp, -8                 ; 3 uses
  %i.cqn = add nsw i64 %n.vec1995, %i.cho
  %i.cqo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1988, i64 0
  br label %vec.epilog.vector.body1996

vec.epilog.vector.body1996:                       ; preds = %vec.epilog.vector.body1996, %vec.epilog.ph1993
  %index1997 = phi i64 [ %vec.epilog.resume.val1987, %vec.epilog.ph1993 ], [ %index.next1999, %vec.epilog.vector.body1996 ] ; 2 uses
  %vec.phi1998 = phi <8 x i32> [ %i.cqo, %vec.epilog.ph1993 ], [ %i.cst, %vec.epilog.vector.body1996 ]
  %i.cqp = add i64 %index1997, %i.cho             ; 8 uses
  %i.cqq = getelementptr inbounds [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cqr = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cqs = getelementptr i8, ptr %i.cqr, i64 4
  %i.cqt = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cqu = getelementptr i8, ptr %i.cqt, i64 8
  %i.cqv = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cqw = getelementptr i8, ptr %i.cqv, i64 12
  %i.cqx = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cqy = getelementptr i8, ptr %i.cqx, i64 16
  %i.cqz = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cra = getelementptr i8, ptr %i.cqz, i64 20
  %i.crb = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.crc = getelementptr i8, ptr %i.crb, i64 24
  %i.crd = getelementptr [4 x i8], ptr %i.chl, i64 %i.cqp
  %i.cre = getelementptr i8, ptr %i.crd, i64 28
  %i.crf = load i32, ptr %i.cqq, align 4, !tbaa !3
  %i.crg = load i32, ptr %i.cqs, align 4, !tbaa !3
  %i.crh = load i32, ptr %i.cqu, align 4, !tbaa !3
  %i.cri = load i32, ptr %i.cqw, align 4, !tbaa !3
  %i.crj = load i32, ptr %i.cqy, align 4, !tbaa !3
  %i.crk = load i32, ptr %i.cra, align 4, !tbaa !3
  %i.crl = load i32, ptr %i.crc, align 4, !tbaa !3
  %i.crm = load i32, ptr %i.cre, align 4, !tbaa !3
  %i.crn = sext i32 %i.crf to i64
  %i.cro = sext i32 %i.crg to i64
  %i.crp = sext i32 %i.crh to i64
  %i.crq = sext i32 %i.cri to i64
  %i.crr = sext i32 %i.crj to i64
  %i.crs = sext i32 %i.crk to i64
  %i.crt = sext i32 %i.crl to i64
  %i.cru = sext i32 %i.crm to i64
  %i.crv = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crn
  %i.crw = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.cro
  %i.crx = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crp
  %i.cry = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crq
  %i.crz = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crr
  %i.csa = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crs
  %i.csb = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.crt
  %i.csc = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.cru
  %i.csd = load i32, ptr %i.crv, align 4, !tbaa !3
  %i.cse = load i32, ptr %i.crw, align 4, !tbaa !3
  %i.csf = load i32, ptr %i.crx, align 4, !tbaa !3
  %i.csg = load i32, ptr %i.cry, align 4, !tbaa !3
  %i.csh = load i32, ptr %i.crz, align 4, !tbaa !3
  %i.csi = load i32, ptr %i.csa, align 4, !tbaa !3
  %i.csj = load i32, ptr %i.csb, align 4, !tbaa !3
  %i.csk = load i32, ptr %i.csc, align 4, !tbaa !3
  %i.csl = insertelement <8 x i32> poison, i32 %i.csd, i64 0
  %i.csm = insertelement <8 x i32> %i.csl, i32 %i.cse, i64 1
  %i.csn = insertelement <8 x i32> %i.csm, i32 %i.csf, i64 2
  %i.cso = insertelement <8 x i32> %i.csn, i32 %i.csg, i64 3
  %i.csp = insertelement <8 x i32> %i.cso, i32 %i.csh, i64 4
  %i.csq = insertelement <8 x i32> %i.csp, i32 %i.csi, i64 5
  %i.csr = insertelement <8 x i32> %i.csq, i32 %i.csj, i64 6
  %i.css = insertelement <8 x i32> %i.csr, i32 %i.csk, i64 7
  %i.cst = add <8 x i32> %i.css, %vec.phi1998     ; 2 uses
  %index.next1999 = add nuw i64 %index1997, 8     ; 2 uses
  %i.csu = icmp eq i64 %index.next1999, %n.vec1995
  br i1 %i.csu, label %vec.epilog.middle.block2000, label %vec.epilog.vector.body1996, !llvm.loop !451

vec.epilog.middle.block2000:                      ; preds = %vec.epilog.vector.body1996
  %i.csv = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cst) ; 2 uses
  %cmp.n2001 = icmp eq i64 %i.chp, %n.vec1995
  br i1 %cmp.n2001, label %.loopexit1226, label %vec.epilog.scalar.ph1990.preheader

vec.epilog.scalar.ph1990.preheader:               ; preds = %iter.check1989, %vec.epilog.iter.check1991, %vec.epilog.middle.block2000
  %indvars.iv.i795.ph = phi i64 [ %i.cho, %iter.check1989 ], [ %i.chq, %vec.epilog.iter.check1991 ], [ %i.cqn, %vec.epilog.middle.block2000 ]
  %.ph = phi i32 [ 0, %iter.check1989 ], [ %i.cqm, %vec.epilog.iter.check1991 ], [ %i.csv, %vec.epilog.middle.block2000 ]
  br label %vec.epilog.scalar.ph1990

vec.epilog.scalar.ph1990:                         ; preds = %vec.epilog.scalar.ph1990.preheader, %vec.epilog.scalar.ph1990
  %indvars.iv.i795 = phi i64 [ %indvars.iv.next.i796, %vec.epilog.scalar.ph1990 ], [ %indvars.iv.i795.ph, %vec.epilog.scalar.ph1990.preheader ] ; 2 uses
  %i.csw = phi i32 [ %i.ctc, %vec.epilog.scalar.ph1990 ], [ %.ph, %vec.epilog.scalar.ph1990.preheader ]
  %i.csx = getelementptr inbounds [4 x i8], ptr %i.chl, i64 %indvars.iv.i795
  %i.csy = load i32, ptr %i.csx, align 4, !tbaa !3
  %i.csz = sext i32 %i.csy to i64
  %i.cta = getelementptr inbounds [4 x i8], ptr %i.chn, i64 %i.csz
  %i.ctb = load i32, ptr %i.cta, align 4, !tbaa !3
  %i.ctc = add nsw i32 %i.ctb, %i.csw             ; 2 uses
  %indvars.iv.next.i796 = add nsw i64 %indvars.iv.i795, 1 ; 2 uses
  %exitcond.not.i797 = icmp eq i64 %indvars.iv.next.i796, %wide.trip.count.i794
  br i1 %exitcond.not.i797, label %.loopexit1226, label %vec.epilog.scalar.ph1990, !llvm.loop !452

bb.wh:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i768
  %i.ctd = load ptr, ptr %i.cgb, align 8, !tbaa !314 ; 4 uses
  %i.cte = getelementptr inbounds nuw i8, ptr %i.cgb, i64 28
  %i.ctf = load i32, ptr %i.cte, align 4, !tbaa !312 ; 6 uses
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.cgb, i64 32
  %i.cth = load i32, ptr %i.ctg, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i775 = icmp slt i32 %i.ctf, %i.cth
  br i1 %.not.i.i.i.i775, label %bb.wi, label %.loopexit1226

bb.wi:                                            ; preds = %bb.wh
  %i.cti = add i32 %i.ctf, 63                     ; 2 uses
  %i.ctj = srem i32 %i.cti, 64
  %i.ctk = sub nsw i32 %i.cti, %i.ctj             ; 6 uses
  %i.ctl = and i32 %i.cth, -64                    ; 6 uses
  %i.ctm = icmp slt i32 %i.ctl, %i.ctk
  br i1 %i.ctm, label %bb.wj, label %bb.wl

bb.wj:                                            ; preds = %bb.wi
  %i.ctn = ashr i32 %i.cth, 6
  %i.cto = and i32 %i.cth, 63
  %i.ctp = zext nneg i32 %i.cto to i64
  %notmask.i.i.i.i.i787 = shl nsw i64 -1, %i.ctp
  %i.ctq = xor i64 %notmask.i.i.i.i.i787, -1
  %i.ctr = sub nsw i32 %i.ctk, %i.ctf             ; 2 uses
  %i.cts = zext nneg i32 %i.ctr to i64
  %notmask.i.i.i.i.i.i788 = shl nsw i64 -1, %i.cts
  %i.ctt = xor i64 %notmask.i.i.i.i.i.i788, -1
  %i.ctu = sub nsw i32 64, %i.ctr
  %i.ctv = zext nneg i32 %i.ctu to i64
  %i.ctw = shl i64 %i.ctt, %i.ctv
  %i.ctx = and i64 %i.ctw, %i.ctq
  %i.cty = sext i32 %i.ctn to i64
  %i.ctz = getelementptr inbounds [8 x i8], ptr %i.ctd, i64 %i.cty
  %i.cua = load i64, ptr %i.ctz, align 8, !tbaa !145
  %i.cub = and i64 %i.ctx, %i.cua                 ; 2 uses
  %.not.i.i.i.i.i789 = icmp eq i64 %i.cub, 0
  br i1 %.not.i.i.i.i.i789, label %.loopexit1226, label %.preheader.i.i.i.i.i790

.preheader.i.i.i.i.i790:                          ; preds = %bb.wj
  %i.cuc = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.cud = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cuc, i64 120
  %i.cuf = load ptr, ptr %i.cue, align 8, !tbaa !308
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wk, %.preheader.i.i.i.i.i790
  %.011.i.i.i.i.i791 = phi i64 [ %i.cub, %.preheader.i.i.i.i.i790 ], [ %i.cup, %bb.wk ] ; 3 uses
  %i.cug = phi i32 [ 0, %.preheader.i.i.i.i.i790 ], [ %i.cun, %bb.wk ]
  %i.cuh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i791, i1 true)
  %139 = trunc nuw nsw i64 %i.cuh to i32
  %140 = or disjoint i32 %i.ctl, %139
  %141 = sext i32 %140 to i64
  %i.cui = getelementptr inbounds [4 x i8], ptr %i.cud, i64 %141
  %i.cuj = load i32, ptr %i.cui, align 4, !tbaa !3
  %i.cuk = sext i32 %i.cuj to i64
  %i.cul = getelementptr inbounds [4 x i8], ptr %i.cuf, i64 %i.cuk
  %i.cum = load i32, ptr %i.cul, align 4, !tbaa !3
  %i.cun = add nsw i32 %i.cum, %i.cug             ; 2 uses
  %i.cuo = add nsw i64 %.011.i.i.i.i.i791, -1
  %i.cup = and i64 %i.cuo, %.011.i.i.i.i.i791     ; 2 uses
  %.not10.i.i.i.i.i792 = icmp eq i64 %i.cup, 0
  br i1 %.not10.i.i.i.i.i792, label %.loopexit1226, label %bb.wk, !llvm.loop !453

bb.wl:                                            ; preds = %bb.wi
  %.not32.i.i.i.i776 = icmp eq i32 %i.ctf, %i.ctk
  br i1 %.not32.i.i.i.i776, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  %i.cuq = sdiv i32 %i.ctf, 64                    ; 2 uses
  %i.cur = sub nsw i32 %i.ctk, %i.ctf             ; 2 uses
  %i.cus = zext nneg i32 %i.cur to i64
  %notmask.i.i35.i.i.i.i777 = shl nsw i64 -1, %i.cus
  %i.cut = xor i64 %notmask.i.i35.i.i.i.i777, -1
  %i.cuu = sub nsw i32 64, %i.cur
  %i.cuv = zext nneg i32 %i.cuu to i64
  %i.cuw = shl i64 %i.cut, %i.cuv
  %i.cux = sext i32 %i.cuq to i64
  %i.cuy = getelementptr inbounds [8 x i8], ptr %i.ctd, i64 %i.cux
  %i.cuz = load i64, ptr %i.cuy, align 8, !tbaa !145
  %i.cva = and i64 %i.cuz, %i.cuw                 ; 2 uses
  %.not.i36.i.i.i.i778 = icmp eq i64 %i.cva, 0
  br i1 %.not.i36.i.i.i.i778, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %.preheader.i37.i.i.i.i779

.preheader.i37.i.i.i.i779:                        ; preds = %bb.wm
  %i.cvb = shl nsw i32 %i.cuq, 6
  %i.cvc = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.cvd = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvc, i64 120
  %i.cvf = load ptr, ptr %i.cve, align 8, !tbaa !308
  br label %bb.wn

bb.wn:                                            ; preds = %bb.wn, %.preheader.i37.i.i.i.i779
  %.011.i39.i.i.i.i780 = phi i64 [ %i.cva, %.preheader.i37.i.i.i.i779 ], [ %i.cvp, %bb.wn ] ; 3 uses
  %i.cvg = phi i32 [ 0, %.preheader.i37.i.i.i.i779 ], [ %i.cvn, %bb.wn ]
  %i.cvh = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i780, i1 true)
  %142 = trunc nuw nsw i64 %i.cvh to i32
  %143 = or disjoint i32 %i.cvb, %142
  %144 = sext i32 %143 to i64
  %i.cvi = getelementptr inbounds [4 x i8], ptr %i.cvd, i64 %144
  %i.cvj = load i32, ptr %i.cvi, align 4, !tbaa !3
  %i.cvk = sext i32 %i.cvj to i64
  %i.cvl = getelementptr inbounds [4 x i8], ptr %i.cvf, i64 %i.cvk
  %i.cvm = load i32, ptr %i.cvl, align 4, !tbaa !3
  %i.cvn = add nsw i32 %i.cvm, %i.cvg             ; 2 uses
  %i.cvo = add i64 %.011.i39.i.i.i.i780, -1
  %i.cvp = and i64 %i.cvo, %.011.i39.i.i.i.i780   ; 2 uses
  %.not10.i40.i.i.i.i = icmp eq i64 %i.cvp, 0
  br i1 %.not10.i40.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %bb.wn, !llvm.loop !453

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i: ; preds = %bb.wn, %bb.wm, %bb.wl
  %.01176 = phi i32 [ 0, %bb.wl ], [ 0, %bb.wm ], [ %i.cvn, %bb.wn ] ; 2 uses
  %i.cvq = add nsw i32 %i.ctk, 64                 ; 2 uses
  %.not3353.i.i.i.i = icmp sgt i32 %i.cvq, %i.ctl
  br i1 %.not3353.i.i.i.i, label %._crit_edge.i.i.i.i783, label %.lr.ph.i.i.i.i781.preheader

.lr.ph.i.i.i.i781.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i
  %i.cvr = load ptr, ptr %i.p, align 8
  %i.cvs = load ptr, ptr %i.n, align 8            ; 42 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvr, i64 120 ; 2 uses
  br label %.lr.ph.i.i.i.i781

._crit_edge.i.i.i.i783:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i
  %.31179 = phi i32 [ %.01176, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i ], [ %.21178, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i784 = icmp eq i32 %i.cth, %i.ctl
  br i1 %.not34.i.i.i.i784, label %.loopexit1226, label %bb.wq

.lr.ph.i.i.i.i781:                                ; preds = %.lr.ph.i.i.i.i781.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i
  %.11177 = phi i32 [ %.21178, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %.01176, %.lr.ph.i.i.i.i781.preheader ] ; 5 uses
  %i.cvu = phi i32 [ %i.dig, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cvq, %.lr.ph.i.i.i.i781.preheader ] ; 2 uses
  %.054.i.i.i.i = phi i32 [ %i.cvu, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ctk, %.lr.ph.i.i.i.i781.preheader ] ; 2 uses
  %i.cvv = sdiv i32 %.054.i.i.i.i, 64             ; 3 uses
  %i.cvw = sext i32 %i.cvv to i64
  %i.cvx = getelementptr inbounds [8 x i8], ptr %i.ctd, i64 %i.cvw
  %i.cvy = load i64, ptr %i.cvx, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.cvy, label %.lr.ph.i.i.i.i.i786 [
    i64 -1, label %bb.wo
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i786:                              ; preds = %.lr.ph.i.i.i.i781
  %i.cvz = shl nsw i32 %i.cvv, 6
  %i.cwa = load ptr, ptr %i.cvt, align 8, !tbaa !308
  br label %bb.wp

bb.wo:                                            ; preds = %.lr.ph.i.i.i.i781
  %i.cwb = shl nsw i32 %i.cvv, 6                  ; 2 uses
  %i.cwc = add i32 %i.cwb, 64
  %i.cwd = sext i32 %i.cwc to i64                 ; 2 uses
  %.0.off.i.i.i.i785 = add i32 %.054.i.i.i.i, 127
  %.not23.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i785, 64
  br i1 %.not23.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.wo
  %i.cwe = sext i32 %i.cwb to i64                 ; 6 uses
  %i.cwf = load ptr, ptr %i.cvt, align 8, !tbaa !308 ; 41 uses
  %i.cwg = or disjoint i64 %i.cwe, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cwg, i64 %i.cwd) ; 2 uses
  %i.cwh = sub i64 %umax, %i.cwe                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cwh, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1955 = icmp ult i64 %i.cwh, 32
  %n.mod.vf1961 = and i64 %umax, 1                ; 3 uses
  %n.vec1962 = sub nuw i64 %i.cwh, %n.mod.vf1961  ; 3 uses
  %i.cwi = add i64 %n.vec1962, %i.cwe             ; 2 uses
  %i.cwj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.11177, i64 0 ; 2 uses
  br i1 %min.iters.check1955, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.dfa, %vector.body ], [ %i.cwj, %vector.main.loop.iter.check ]
  %vec.phi1956 = phi <8 x i32> [ %i.dfb, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi1957 = phi <8 x i32> [ %i.dfc, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi1958 = phi <8 x i32> [ %i.dfd, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.cwk = add i64 %index, %i.cwe                 ; 32 uses
  %i.cwl = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 4
  %i.cwo = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 8
  %i.cwq = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwq, i64 12
  %i.cws = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cws, i64 16
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 20
  %i.cww = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cww, i64 24
  %i.cwy = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 28
  %i.cxa = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cxa, i64 32
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 36
  %i.cxe = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cxe, i64 40
  %i.cxg = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxg, i64 44
  %i.cxi = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 48
  %i.cxk = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxk, i64 52
  %i.cxm = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cxm, i64 56
  %i.cxo = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxo, i64 60
  %i.cxq = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxq, i64 64
  %i.cxs = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxs, i64 68
  %i.cxu = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxu, i64 72
  %i.cxw = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxw, i64 76
  %i.cxy = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxy, i64 80
  %i.cya = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cya, i64 84
  %i.cyc = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cyc, i64 88
  %i.cye = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 92
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyg, i64 96
  %i.cyi = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cyi, i64 100
  %i.cyk = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyl = getelementptr inbounds nuw i8, ptr %i.cyk, i64 104
  %i.cym = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyn = getelementptr inbounds nuw i8, ptr %i.cym, i64 108
  %i.cyo = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 112
  %i.cyq = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cyq, i64 116
  %i.cys = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyt = getelementptr inbounds nuw i8, ptr %i.cys, i64 120
  %i.cyu = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.cwk
  %i.cyv = getelementptr inbounds nuw i8, ptr %i.cyu, i64 124
  %i.cyw = load i32, ptr %i.cwl, align 4, !tbaa !3
  %i.cyx = load i32, ptr %i.cwn, align 4, !tbaa !3
  %i.cyy = load i32, ptr %i.cwp, align 4, !tbaa !3
  %i.cyz = load i32, ptr %i.cwr, align 4, !tbaa !3
  %i.cza = load i32, ptr %i.cwt, align 4, !tbaa !3
  %i.czb = load i32, ptr %i.cwv, align 4, !tbaa !3
  %i.czc = load i32, ptr %i.cwx, align 4, !tbaa !3
  %i.czd = load i32, ptr %i.cwz, align 4, !tbaa !3
  %i.cze = load i32, ptr %i.cxb, align 4, !tbaa !3
  %i.czf = load i32, ptr %i.cxd, align 4, !tbaa !3
  %i.czg = load i32, ptr %i.cxf, align 4, !tbaa !3
  %i.czh = load i32, ptr %i.cxh, align 4, !tbaa !3
  %i.czi = load i32, ptr %i.cxj, align 4, !tbaa !3
  %i.czj = load i32, ptr %i.cxl, align 4, !tbaa !3
  %i.czk = load i32, ptr %i.cxn, align 4, !tbaa !3
  %i.czl = load i32, ptr %i.cxp, align 4, !tbaa !3
  %i.czm = load i32, ptr %i.cxr, align 4, !tbaa !3
  %i.czn = load i32, ptr %i.cxt, align 4, !tbaa !3
  %i.czo = load i32, ptr %i.cxv, align 4, !tbaa !3
  %i.czp = load i32, ptr %i.cxx, align 4, !tbaa !3
  %i.czq = load i32, ptr %i.cxz, align 4, !tbaa !3
  %i.czr = load i32, ptr %i.cyb, align 4, !tbaa !3
  %i.czs = load i32, ptr %i.cyd, align 4, !tbaa !3
  %i.czt = load i32, ptr %i.cyf, align 4, !tbaa !3
  %i.czu = load i32, ptr %i.cyh, align 4, !tbaa !3
  %i.czv = load i32, ptr %i.cyj, align 4, !tbaa !3
  %i.czw = load i32, ptr %i.cyl, align 4, !tbaa !3
  %i.czx = load i32, ptr %i.cyn, align 4, !tbaa !3
  %i.czy = load i32, ptr %i.cyp, align 4, !tbaa !3
  %i.czz = load i32, ptr %i.cyr, align 4, !tbaa !3
  %i.daa = load i32, ptr %i.cyt, align 4, !tbaa !3
  %i.dab = load i32, ptr %i.cyv, align 4, !tbaa !3
  %i.dac = sext i32 %i.cyw to i64
  %i.dad = sext i32 %i.cyx to i64
  %i.dae = sext i32 %i.cyy to i64
  %i.daf = sext i32 %i.cyz to i64
  %i.dag = sext i32 %i.cza to i64
  %i.dah = sext i32 %i.czb to i64
  %i.dai = sext i32 %i.czc to i64
  %i.daj = sext i32 %i.czd to i64
  %i.dak = sext i32 %i.cze to i64
  %i.dal = sext i32 %i.czf to i64
  %i.dam = sext i32 %i.czg to i64
  %i.dan = sext i32 %i.czh to i64
  %i.dao = sext i32 %i.czi to i64
  %i.dap = sext i32 %i.czj to i64
  %i.daq = sext i32 %i.czk to i64
  %i.dar = sext i32 %i.czl to i64
  %i.das = sext i32 %i.czm to i64
  %i.dat = sext i32 %i.czn to i64
  %i.dau = sext i32 %i.czo to i64
  %i.dav = sext i32 %i.czp to i64
  %i.daw = sext i32 %i.czq to i64
  %i.dax = sext i32 %i.czr to i64
  %i.day = sext i32 %i.czs to i64
  %i.daz = sext i32 %i.czt to i64
  %i.dba = sext i32 %i.czu to i64
  %i.dbb = sext i32 %i.czv to i64
  %i.dbc = sext i32 %i.czw to i64
  %i.dbd = sext i32 %i.czx to i64
  %i.dbe = sext i32 %i.czy to i64
  %i.dbf = sext i32 %i.czz to i64
  %i.dbg = sext i32 %i.daa to i64
  %i.dbh = sext i32 %i.dab to i64
  %i.dbi = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dac
  %i.dbj = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dad
  %i.dbk = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dae
  %i.dbl = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.daf
  %i.dbm = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dag
  %i.dbn = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dah
  %i.dbo = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dai
  %i.dbp = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.daj
  %i.dbq = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dak
  %i.dbr = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dal
  %i.dbs = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dam
  %i.dbt = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dan
  %i.dbu = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dao
  %i.dbv = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dap
  %i.dbw = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.daq
  %i.dbx = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dar
  %i.dby = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.das
  %i.dbz = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dat
  %i.dca = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dau
  %i.dcb = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dav
  %i.dcc = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.daw
  %i.dcd = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dax
  %i.dce = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.day
  %i.dcf = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.daz
  %i.dcg = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dba
  %i.dch = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbb
  %i.dci = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbc
  %i.dcj = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbd
  %i.dck = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbe
  %i.dcl = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbf
  %i.dcm = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbg
  %i.dcn = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dbh
  %i.dco = load i32, ptr %i.dbi, align 4, !tbaa !3
  %i.dcp = load i32, ptr %i.dbj, align 4, !tbaa !3
  %i.dcq = load i32, ptr %i.dbk, align 4, !tbaa !3
  %i.dcr = load i32, ptr %i.dbl, align 4, !tbaa !3
  %i.dcs = load i32, ptr %i.dbm, align 4, !tbaa !3
  %i.dct = load i32, ptr %i.dbn, align 4, !tbaa !3
  %i.dcu = load i32, ptr %i.dbo, align 4, !tbaa !3
  %i.dcv = load i32, ptr %i.dbp, align 4, !tbaa !3
  %i.dcw = insertelement <8 x i32> poison, i32 %i.dco, i64 0
  %i.dcx = insertelement <8 x i32> %i.dcw, i32 %i.dcp, i64 1
  %i.dcy = insertelement <8 x i32> %i.dcx, i32 %i.dcq, i64 2
  %i.dcz = insertelement <8 x i32> %i.dcy, i32 %i.dcr, i64 3
  %i.dda = insertelement <8 x i32> %i.dcz, i32 %i.dcs, i64 4
  %i.ddb = insertelement <8 x i32> %i.dda, i32 %i.dct, i64 5
  %i.ddc = insertelement <8 x i32> %i.ddb, i32 %i.dcu, i64 6
  %i.ddd = insertelement <8 x i32> %i.ddc, i32 %i.dcv, i64 7
  %i.dde = load i32, ptr %i.dbq, align 4, !tbaa !3
  %i.ddf = load i32, ptr %i.dbr, align 4, !tbaa !3
  %i.ddg = load i32, ptr %i.dbs, align 4, !tbaa !3
  %i.ddh = load i32, ptr %i.dbt, align 4, !tbaa !3
  %i.ddi = load i32, ptr %i.dbu, align 4, !tbaa !3
  %i.ddj = load i32, ptr %i.dbv, align 4, !tbaa !3
  %i.ddk = load i32, ptr %i.dbw, align 4, !tbaa !3
  %i.ddl = load i32, ptr %i.dbx, align 4, !tbaa !3
  %i.ddm = insertelement <8 x i32> poison, i32 %i.dde, i64 0
  %i.ddn = insertelement <8 x i32> %i.ddm, i32 %i.ddf, i64 1
  %i.ddo = insertelement <8 x i32> %i.ddn, i32 %i.ddg, i64 2
  %i.ddp = insertelement <8 x i32> %i.ddo, i32 %i.ddh, i64 3
  %i.ddq = insertelement <8 x i32> %i.ddp, i32 %i.ddi, i64 4
  %i.ddr = insertelement <8 x i32> %i.ddq, i32 %i.ddj, i64 5
  %i.dds = insertelement <8 x i32> %i.ddr, i32 %i.ddk, i64 6
  %i.ddt = insertelement <8 x i32> %i.dds, i32 %i.ddl, i64 7
  %i.ddu = load i32, ptr %i.dby, align 4, !tbaa !3
  %i.ddv = load i32, ptr %i.dbz, align 4, !tbaa !3
  %i.ddw = load i32, ptr %i.dca, align 4, !tbaa !3
  %i.ddx = load i32, ptr %i.dcb, align 4, !tbaa !3
  %i.ddy = load i32, ptr %i.dcc, align 4, !tbaa !3
  %i.ddz = load i32, ptr %i.dcd, align 4, !tbaa !3
  %i.dea = load i32, ptr %i.dce, align 4, !tbaa !3
  %i.deb = load i32, ptr %i.dcf, align 4, !tbaa !3
  %i.dec = insertelement <8 x i32> poison, i32 %i.ddu, i64 0
  %i.ded = insertelement <8 x i32> %i.dec, i32 %i.ddv, i64 1
  %i.dee = insertelement <8 x i32> %i.ded, i32 %i.ddw, i64 2
  %i.def = insertelement <8 x i32> %i.dee, i32 %i.ddx, i64 3
  %i.deg = insertelement <8 x i32> %i.def, i32 %i.ddy, i64 4
  %i.deh = insertelement <8 x i32> %i.deg, i32 %i.ddz, i64 5
  %i.dei = insertelement <8 x i32> %i.deh, i32 %i.dea, i64 6
  %i.dej = insertelement <8 x i32> %i.dei, i32 %i.deb, i64 7
  %i.dek = load i32, ptr %i.dcg, align 4, !tbaa !3
  %i.del = load i32, ptr %i.dch, align 4, !tbaa !3
  %i.dem = load i32, ptr %i.dci, align 4, !tbaa !3
  %i.den = load i32, ptr %i.dcj, align 4, !tbaa !3
  %i.deo = load i32, ptr %i.dck, align 4, !tbaa !3
  %i.dep = load i32, ptr %i.dcl, align 4, !tbaa !3
  %i.deq = load i32, ptr %i.dcm, align 4, !tbaa !3
  %i.der = load i32, ptr %i.dcn, align 4, !tbaa !3
  %i.des = insertelement <8 x i32> poison, i32 %i.dek, i64 0
  %i.det = insertelement <8 x i32> %i.des, i32 %i.del, i64 1
  %i.deu = insertelement <8 x i32> %i.det, i32 %i.dem, i64 2
  %i.dev = insertelement <8 x i32> %i.deu, i32 %i.den, i64 3
  %i.dew = insertelement <8 x i32> %i.dev, i32 %i.deo, i64 4
  %i.dex = insertelement <8 x i32> %i.dew, i32 %i.dep, i64 5
  %i.dey = insertelement <8 x i32> %i.dex, i32 %i.deq, i64 6
  %i.dez = insertelement <8 x i32> %i.dey, i32 %i.der, i64 7
  %i.dfa = add <8 x i32> %i.ddd, %vec.phi         ; 2 uses
  %i.dfb = add <8 x i32> %i.ddt, %vec.phi1956     ; 2 uses
  %i.dfc = add <8 x i32> %i.dej, %vec.phi1957     ; 2 uses
  %i.dfd = add <8 x i32> %i.dez, %vec.phi1958     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dfe = icmp eq i64 %index.next, %n.vec1962
  br i1 %i.dfe, label %middle.block, label %vector.body, !llvm.loop !454

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.dfb, %i.dfa
  %bin.rdx1959 = add <8 x i32> %i.dfc, %bin.rdx
  %bin.rdx1960 = add <8 x i32> %i.dfd, %bin.rdx1959
  %i.dff = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1960) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf1961, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index1963 = phi i64 [ %index.next1965, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi1964 = phi <8 x i32> [ %i.dhk, %vec.epilog.vector.body ], [ %i.cwj, %vector.main.loop.iter.check ]
  %i.dfg = add i64 %index1963, %i.cwe             ; 8 uses
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfi = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfi, i64 4
  %i.dfk = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dfk, i64 8
  %i.dfm = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.dfm, i64 12
  %i.dfo = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dfo, i64 16
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dfq, i64 20
  %i.dfs = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfs, i64 24
  %i.dfu = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %i.dfg
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfu, i64 28
  %i.dfw = load i32, ptr %i.dfh, align 4, !tbaa !3
  %i.dfx = load i32, ptr %i.dfj, align 4, !tbaa !3
  %i.dfy = load i32, ptr %i.dfl, align 4, !tbaa !3
  %i.dfz = load i32, ptr %i.dfn, align 4, !tbaa !3
  %i.dga = load i32, ptr %i.dfp, align 4, !tbaa !3
  %i.dgb = load i32, ptr %i.dfr, align 4, !tbaa !3
  %i.dgc = load i32, ptr %i.dft, align 4, !tbaa !3
  %i.dgd = load i32, ptr %i.dfv, align 4, !tbaa !3
  %i.dge = sext i32 %i.dfw to i64
  %i.dgf = sext i32 %i.dfx to i64
  %i.dgg = sext i32 %i.dfy to i64
  %i.dgh = sext i32 %i.dfz to i64
  %i.dgi = sext i32 %i.dga to i64
  %i.dgj = sext i32 %i.dgb to i64
  %i.dgk = sext i32 %i.dgc to i64
  %i.dgl = sext i32 %i.dgd to i64
  %i.dgm = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dge
  %i.dgn = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgf
  %i.dgo = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgg
  %i.dgp = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgh
  %i.dgq = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgi
  %i.dgr = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgj
  %i.dgs = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgk
  %i.dgt = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dgl
  %i.dgu = load i32, ptr %i.dgm, align 4, !tbaa !3
  %i.dgv = load i32, ptr %i.dgn, align 4, !tbaa !3
  %i.dgw = load i32, ptr %i.dgo, align 4, !tbaa !3
  %i.dgx = load i32, ptr %i.dgp, align 4, !tbaa !3
  %i.dgy = load i32, ptr %i.dgq, align 4, !tbaa !3
  %i.dgz = load i32, ptr %i.dgr, align 4, !tbaa !3
  %i.dha = load i32, ptr %i.dgs, align 4, !tbaa !3
  %i.dhb = load i32, ptr %i.dgt, align 4, !tbaa !3
  %i.dhc = insertelement <8 x i32> poison, i32 %i.dgu, i64 0
  %i.dhd = insertelement <8 x i32> %i.dhc, i32 %i.dgv, i64 1
  %i.dhe = insertelement <8 x i32> %i.dhd, i32 %i.dgw, i64 2
  %i.dhf = insertelement <8 x i32> %i.dhe, i32 %i.dgx, i64 3
  %i.dhg = insertelement <8 x i32> %i.dhf, i32 %i.dgy, i64 4
  %i.dhh = insertelement <8 x i32> %i.dhg, i32 %i.dgz, i64 5
  %i.dhi = insertelement <8 x i32> %i.dhh, i32 %i.dha, i64 6
  %i.dhj = insertelement <8 x i32> %i.dhi, i32 %i.dhb, i64 7
  %i.dhk = add <8 x i32> %i.dhj, %vec.phi1964     ; 2 uses
  %index.next1965 = add nuw i64 %index1963, 8     ; 2 uses
  %i.dhl = icmp eq i64 %index.next1965, %n.vec1962
  br i1 %i.dhl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !455

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dhm = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dhk) ; 2 uses
  %cmp.n1966 = icmp eq i64 %n.mod.vf1961, 0
  br i1 %cmp.n1966, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.ph2458 = phi i32 [ %i.dff, %middle.block ], [ %.11177, %iter.check ], [ %i.dhm, %vec.epilog.middle.block ]
  %.020.i.i.i.i.i.ph = phi i64 [ %i.cwi, %middle.block ], [ %i.cwe, %iter.check ], [ %i.cwi, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.dhn = phi i32 [ %i.dht, %vec.epilog.scalar.ph ], [ %.ph2458, %vec.epilog.scalar.ph.preheader ]
  %.020.i.i.i.i.i = phi i64 [ %i.dhu, %vec.epilog.scalar.ph ], [ %.020.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dho = getelementptr inbounds nuw [4 x i8], ptr %i.cvs, i64 %.020.i.i.i.i.i
  %i.dhp = load i32, ptr %i.dho, align 4, !tbaa !3
  %i.dhq = sext i32 %i.dhp to i64
  %i.dhr = getelementptr inbounds [4 x i8], ptr %i.cwf, i64 %i.dhq
  %i.dhs = load i32, ptr %i.dhr, align 4, !tbaa !3
  %i.dht = add nsw i32 %i.dhs, %i.dhn             ; 2 uses
  %i.dhu = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.dhv = icmp ult i64 %i.dhu, %i.cwd
  br i1 %i.dhv, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !456

bb.wp:                                            ; preds = %bb.wp, %.lr.ph.i.i.i.i.i786
  %i.dhw = phi i32 [ %.11177, %.lr.ph.i.i.i.i.i786 ], [ %i.did, %bb.wp ]
  %.01519.i.i.i.i.i = phi i64 [ %i.cvy, %.lr.ph.i.i.i.i.i786 ], [ %i.dif, %bb.wp ] ; 3 uses
  %i.dhx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %145 = trunc nuw nsw i64 %i.dhx to i32
  %146 = or disjoint i32 %i.cvz, %145
  %147 = sext i32 %146 to i64
  %i.dhy = getelementptr inbounds [4 x i8], ptr %i.cvs, i64 %147
  %i.dhz = load i32, ptr %i.dhy, align 4, !tbaa !3
  %i.dia = sext i32 %i.dhz to i64
  %i.dib = getelementptr inbounds [4 x i8], ptr %i.cwa, i64 %i.dia
  %i.dic = load i32, ptr %i.dib, align 4, !tbaa !3
  %i.did = add nsw i32 %i.dic, %i.dhw             ; 2 uses
  %i.die = add i64 %.01519.i.i.i.i.i, -1
  %i.dif = and i64 %i.die, %.01519.i.i.i.i.i      ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.dif, 0
  br i1 %.not.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %bb.wp, !llvm.loop !457

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.wp, %middle.block, %vec.epilog.middle.block, %bb.wo, %.lr.ph.i.i.i.i781
  %.21178 = phi i32 [ %.11177, %.lr.ph.i.i.i.i781 ], [ %.11177, %bb.wo ], [ %i.did, %bb.wp ], [ %i.dhm, %vec.epilog.middle.block ], [ %i.dff, %middle.block ], [ %i.dht, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dig = add nsw i32 %i.cvu, 64                 ; 2 uses
  %.not33.i.i.i.i782 = icmp sgt i32 %i.dig, %i.ctl
  br i1 %.not33.i.i.i.i782, label %._crit_edge.i.i.i.i783, label %.lr.ph.i.i.i.i781, !llvm.loop !458

bb.wq:                                            ; preds = %._crit_edge.i.i.i.i783
  %i.dih = ashr i32 %i.cth, 6
  %i.dii = and i32 %i.cth, 63
  %i.dij = zext nneg i32 %i.dii to i64
  %notmask.i44.i.i.i.i = shl nsw i64 -1, %i.dij
  %i.dik = xor i64 %notmask.i44.i.i.i.i, -1
  %i.dil = sext i32 %i.dih to i64
  %i.dim = getelementptr inbounds [8 x i8], ptr %i.ctd, i64 %i.dil
  %i.din = load i64, ptr %i.dim, align 8, !tbaa !145
  %i.dio = and i64 %i.din, %i.dik                 ; 2 uses
  %.not.i45.i.i.i.i = icmp eq i64 %i.dio, 0
  br i1 %.not.i45.i.i.i.i, label %.loopexit1226, label %.preheader.i46.i.i.i.i

.preheader.i46.i.i.i.i:                           ; preds = %bb.wq
  %i.dip = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.diq = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dip, i64 120
  %i.dis = load ptr, ptr %i.dir, align 8, !tbaa !308
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wr, %.preheader.i46.i.i.i.i
  %.011.i48.i.i.i.i = phi i64 [ %i.dio, %.preheader.i46.i.i.i.i ], [ %i.djc, %bb.wr ] ; 3 uses
  %i.dit = phi i32 [ %.31179, %.preheader.i46.i.i.i.i ], [ %i.dja, %bb.wr ]
  %i.diu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48.i.i.i.i, i1 true)
  %148 = trunc nuw nsw i64 %i.diu to i32
  %149 = or disjoint i32 %i.ctl, %148
  %150 = sext i32 %149 to i64
  %i.div = getelementptr inbounds [4 x i8], ptr %i.diq, i64 %150
  %i.diw = load i32, ptr %i.div, align 4, !tbaa !3
  %i.dix = sext i32 %i.diw to i64
  %i.diy = getelementptr inbounds [4 x i8], ptr %i.dis, i64 %i.dix
  %i.diz = load i32, ptr %i.diy, align 4, !tbaa !3
  %i.dja = add nsw i32 %i.diz, %i.dit             ; 2 uses
  %i.djb = add nsw i64 %.011.i48.i.i.i.i, -1
  %i.djc = and i64 %i.djb, %.011.i48.i.i.i.i      ; 2 uses
  %.not10.i49.i.i.i.i = icmp eq i64 %i.djc, 0
  br i1 %.not10.i49.i.i.i.i, label %.loopexit1226, label %bb.wr, !llvm.loop !453

.loopexit1226:                                    ; preds = %bb.wr, %bb.wk, %vec.epilog.scalar.ph1990, %middle.block1982, %vec.epilog.middle.block2000, %bb.wg, %bb.wh, %bb.wj, %._crit_edge.i.i.i.i783, %bb.wq
  %.41180 = phi i32 [ 0, %bb.wh ], [ 0, %bb.wg ], [ 0, %bb.wj ], [ %i.cun, %bb.wk ], [ %.31179, %._crit_edge.i.i.i.i783 ], [ %.31179, %bb.wq ], [ %i.ctc, %vec.epilog.scalar.ph1990 ], [ %i.csv, %vec.epilog.middle.block2000 ], [ %i.cqm, %middle.block1982 ], [ %i.dja, %bb.wr ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  %i.djd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dje = load i32, ptr %i.djd, align 8, !tbaa !196
  %i.djf = load ptr, ptr %4, align 8, !tbaa !155
  %i.djg = load ptr, ptr %i.djf, align 8, !tbaa !171
  %i.djh = sext i32 %i.dje to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !459
  store i32 0, ptr %9, align 4, !tbaa !30, !noalias !459
  %i.dji = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 1, ptr %i.dji, align 4, !tbaa !209, !noalias !459
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %113, i64 noundef %i.djh, ptr noundef %i.djg, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext false)
          to label %bb.ws unwind label %bb.aav

bb.ws:                                            ; preds = %.loopexit1226
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !459
  %i.djj = load ptr, ptr %113, align 8, !tbaa !237 ; 2 uses
  %i.djk = getelementptr inbounds nuw i8, ptr %i.djj, i64 44
  %i.djl = load i8, ptr %i.djk, align 4, !tbaa !384
  %i.djm = and i8 %i.djl, 2
  %.not.i810 = icmp eq i8 %i.djm, 0
  br i1 %.not.i810, label %bb.wu, label %bb.wt, !prof !78

bb.wt:                                            ; preds = %bb.ws
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc811 unwind label %bb.aaw

.noexc811:                                        ; preds = %bb.wt
  unreachable

bb.wu:                                            ; preds = %bb.ws
  %i.djn = getelementptr inbounds nuw i8, ptr %i.djj, i64 16
  %i.djo = load ptr, ptr %i.djn, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  %i.djp = load i32, ptr %i.djd, align 8, !tbaa !196
  %i.djq = load ptr, ptr %4, align 8, !tbaa !155
  %i.djr = load ptr, ptr %i.djq, align 8, !tbaa !171
  %i.djs = sext i32 %i.djp to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !462
  store i32 0, ptr %8, align 4, !tbaa !30, !noalias !462
  %i.djt = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 1, ptr %i.djt, align 4, !tbaa !209, !noalias !462
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %114, i64 noundef %i.djs, ptr noundef %i.djr, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.wv unwind label %bb.aax

bb.wv:                                            ; preds = %bb.wu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !462
  %i.dju = load ptr, ptr %114, align 8, !tbaa !237 ; 2 uses
  %i.djv = getelementptr inbounds nuw i8, ptr %i.dju, i64 44
  %i.djw = load i8, ptr %i.djv, align 4, !tbaa !384
  %i.djx = and i8 %i.djw, 2
  %.not.i815 = icmp eq i8 %i.djx, 0
  br i1 %.not.i815, label %bb.wx, label %bb.ww, !prof !78

bb.ww:                                            ; preds = %bb.wv
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc816 unwind label %bb.aay

.noexc816:                                        ; preds = %bb.ww
  unreachable

bb.wx:                                            ; preds = %bb.wv
  %i.djy = getelementptr inbounds nuw i8, ptr %i.dju, i64 16
  %i.djz = load ptr, ptr %i.djy, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #23
  %i.dka = load ptr, ptr %4, align 8, !tbaa !155
  %i.dkb = load ptr, ptr %i.dka, align 8, !tbaa !171
  %i.dkc = sext i32 %.41180 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !465
  store i32 0, ptr %7, align 4, !tbaa !30, !noalias !465
  %i.dkd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.dkd, align 4, !tbaa !209, !noalias !465
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %115, i64 noundef %i.dkc, ptr noundef %i.dkb, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.wy unwind label %bb.aaz

bb.wy:                                            ; preds = %bb.wx
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !465
  %i.dke = load ptr, ptr %115, align 8, !tbaa !237 ; 2 uses
  %i.dkf = getelementptr inbounds nuw i8, ptr %i.dke, i64 44
  %i.dkg = load i8, ptr %i.dkf, align 4, !tbaa !384
  %i.dkh = and i8 %i.dkg, 2
  %.not.i820 = icmp eq i8 %i.dkh, 0
  br i1 %.not.i820, label %bb.xa, label %bb.wz, !prof !78

bb.wz:                                            ; preds = %bb.wy
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc821 unwind label %bb.aba

.noexc821:                                        ; preds = %bb.wz
  unreachable

bb.xa:                                            ; preds = %bb.wy
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dke, i64 16
  %i.dkj = load ptr, ptr %i.dki, align 8, !tbaa !385 ; 31 uses
  %i.dkk = ptrtoaddr ptr %i.dkj to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #23
  %i.dkl = load ptr, ptr %4, align 8, !tbaa !155
  %i.dkm = load ptr, ptr %i.dkl, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !468
  store i32 0, ptr %6, align 4, !tbaa !30, !noalias !468
  %i.dkn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dkn, align 4, !tbaa !209, !noalias !468
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %116, i64 noundef %i.dkc, ptr noundef %i.dkm, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.xb unwind label %bb.abb

bb.xb:                                            ; preds = %bb.xa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !468
  %i.dko = load ptr, ptr %116, align 8, !tbaa !237 ; 5 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.dko, i64 44
  %i.dkq = load i8, ptr %i.dkp, align 4, !tbaa !384
  %i.dkr = and i8 %i.dkq, 2
  %.not.i825 = icmp eq i8 %i.dkr, 0
  br i1 %.not.i825, label %bb.xd, label %bb.xc, !prof !78

bb.xc:                                            ; preds = %bb.xb
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc826 unwind label %bb.abc

.noexc826:                                        ; preds = %bb.xc
  unreachable

bb.xd:                                            ; preds = %bb.xb
  %i.dks = getelementptr inbounds nuw i8, ptr %i.dko, i64 16
  %i.dkt = load ptr, ptr %i.dks, align 8, !tbaa !385 ; 31 uses
  %i.dku = ptrtoaddr ptr %i.dkt to i64            ; 5 uses
  %i.dkv = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkv, i64 36 ; 2 uses
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkv, i64 37
  %i.dky = load i8, ptr %i.dkx, align 1, !tbaa !263, !range !82, !noundef !83
  %i.dkz = trunc nuw i8 %i.dky to i1
  br i1 %i.dkz, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876, label %bb.xe

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i876: ; preds = %bb.xd
  %.0.in.pre.i.i877 = load i8, ptr %i.dkw, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830

bb.xe:                                            ; preds = %bb.xd
  %i.dla = getelementptr inbounds nuw i8, ptr %i.dkv, i64 28
  %i.dlb = load i32, ptr %i.dla, align 4, !tbaa !312
  %i.dlc = icmp eq i32 %i.dlb, 0
  br i1 %i.dlc, label %bb.xf, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xf:                                            ; preds = %bb.xe
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dkv, i64 32
  %i.dle = load i32, ptr %i.dld, align 8, !tbaa !196 ; 6 uses
  %i.dlf = getelementptr inbounds nuw i8, ptr %i.dkv, i64 24
  %i.dlg = load i32, ptr %i.dlf, align 8, !tbaa !313
  %i.dlh = icmp eq i32 %i.dle, %i.dlg
  br i1 %i.dlh, label %bb.xg, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xg:                                            ; preds = %bb.xf
  %i.dli = load ptr, ptr %i.dkv, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i868 = icmp sgt i32 %i.dle, 0
  br i1 %.not.i.i.i868, label %bb.xh, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828

bb.xh:                                            ; preds = %bb.xg
  %i.dlj = and i32 %i.dle, 2147483584             ; 3 uses
  %i.dlk = zext nneg i32 %i.dlj to i64
  %.not37.i.i.not.i.i8701943.not = icmp eq i32 %i.dlj, 0
  br i1 %.not37.i.i.not.i.i8701943.not, label %.critedge.i.i.i.i871, label %.lr.ph1945

bb.xi:                                            ; preds = %.lr.ph1945
  %indvars.iv.next.i.i875 = add nuw nsw i64 %indvars.iv.i.i8691944, 64 ; 2 uses
  %.not37.i.i.not.i.i870 = icmp samesign ult i64 %indvars.iv.next.i.i875, %i.dlk
  br i1 %.not37.i.i.not.i.i870, label %.lr.ph1945, label %.critedge.i.i.i.i871, !llvm.loop !315

.lr.ph1945:                                       ; preds = %bb.xh, %bb.xi
  %indvars.iv.i.i8691944 = phi i64 [ %indvars.iv.next.i.i875, %bb.xi ], [ 0, %bb.xh ] ; 2 uses
  %i.dll = lshr exact i64 %indvars.iv.i.i8691944, 3
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dli, i64 %i.dll
  %i.dln = load i64, ptr %i.dlm, align 8, !tbaa !145
  %i.dlo = icmp eq i64 %i.dln, -1
  br i1 %i.dlo, label %bb.xi, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828, !llvm.loop !315

.critedge.i.i.i.i871:                             ; preds = %bb.xi, %bb.xh
  %.not38.i.i.i.i872 = icmp eq i32 %i.dle, %i.dlj
  br i1 %.not38.i.i.i.i872, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i828, label %bb.xj

bb.xj:                                            ; preds = %.critedge.i.i.i.i871
  %i.dlp = lshr i32 %i.dle, 6
  %i.dlq = and i32 %i.dle, 63
  %i.dlr = zext nneg i32 %i.dlq to i64
  %notmask.i40.i.i.i.i873 = shl nsw i64 -1, %i.dlr
  %i.dls = zext nneg i32 %i.dlp to i64
  %i.dlt = getelementptr inbounds nuw [8 x i8], ptr %i.dli, i64 %i.dls
  %i.dlu = load i64, ptr %i.dlt, align 8, !tbaa !145
  %.demorgan.i.i874 = or i64 %i.dlu, %notmask.i40.i.i.i.i873
  %i.dlv = icmp eq i64 %.demorgan.i.i874, -1
  %i.dlw = zext i1 %i.dlv to i16
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.dng = load i32, ptr %i.dnf, align 4, !tbaa !3 ; 5 uses
  %i.dnh = sext i32 %.9 to i64                    ; 5 uses
  %i.dni = zext nneg i32 %i.dmu to i64            ; 8 uses
  %min.iters.check2255 = icmp ult i32 %i.dmu, 4
  %or.cond = select i1 %min.iters.check2255, i1 true, i1 %diff.check2254
  br i1 %or.cond, label %.lr.ph.i.i867.preheader, label %vector.main.loop.iter.check2256

vector.main.loop.iter.check2256:                  ; preds = %iter.check2281
  %min.iters.check2257 = icmp ult i32 %i.dmu, 32
  br i1 %min.iters.check2257, label %vec.epilog.ph2285, label %vector.ph2258

vector.ph2258:                                    ; preds = %vector.main.loop.iter.check2256
  %n.mod.vf2259 = and i64 %i.dni, 28
  %n.vec2260 = and i64 %i.dni, 2147483616         ; 4 uses
  %broadcast.splatinsert2261 = insertelement <8 x i32> poison, i32 %i.dnc, i64 0
  %broadcast.splat2262 = shufflevector <8 x i32> %broadcast.splatinsert2261, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2263 = insertelement <8 x i32> poison, i32 %i.dng, i64 0
  %broadcast.splat2264 = shufflevector <8 x i32> %broadcast.splatinsert2263, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2663 = add <8 x i32> splat (i32 8), %broadcast.splat2264
  %invariant.op2665 = add <8 x i32> splat (i32 16), %broadcast.splat2264
  %invariant.op2667 = add <8 x i32> splat (i32 24), %broadcast.splat2264
  %invariant.op2669 = add <8 x i32> splat (i32 8), %broadcast.splat2262
  %invariant.op2671 = add <8 x i32> splat (i32 16), %broadcast.splat2262
  %invariant.op2673 = add <8 x i32> splat (i32 24), %broadcast.splat2262
  br label %vector.body2265

vector.body2265:                                  ; preds = %vector.body2265, %vector.ph2258
  %index2266 = phi i64 [ 0, %vector.ph2258 ], [ %index.next2275, %vector.body2265 ] ; 2 uses
  %vec.ind2267 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2258 ], [ %vec.ind.next2276, %vector.body2265 ] ; 5 uses
  %vec.ind2268 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2258 ], [ %vec.ind.next2277, %vector.body2265 ] ; 5 uses
  %i.dnj = add nsw i64 %index2266, %i.dnh         ; 2 uses
  %i.dnk = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dnj ; 4 uses
  %i.dnl = add <8 x i32> %broadcast.splat2264, %vec.ind2267
  %.reass2664 = add <8 x i32> %vec.ind2267, %invariant.op2663
  %.reass2666 = add <8 x i32> %vec.ind2267, %invariant.op2665
  %.reass2668 = add <8 x i32> %vec.ind2267, %invariant.op2667
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnk, i64 32
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dnk, i64 64
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dnk, i64 96
  store <8 x i32> %i.dnl, ptr %i.dnk, align 4, !tbaa !3
  store <8 x i32> %.reass2664, ptr %i.dnm, align 4, !tbaa !3
  store <8 x i32> %.reass2666, ptr %i.dnn, align 4, !tbaa !3
  store <8 x i32> %.reass2668, ptr %i.dno, align 4, !tbaa !3
  %i.dnp = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dnj ; 4 uses
  %i.dnq = add <8 x i32> %broadcast.splat2262, %vec.ind2268
  %.reass2670 = add <8 x i32> %vec.ind2268, %invariant.op2669
  %.reass2672 = add <8 x i32> %vec.ind2268, %invariant.op2671
  %.reass2674 = add <8 x i32> %vec.ind2268, %invariant.op2673
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnp, i64 32
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnp, i64 64
  %i.dnt = getelementptr inbounds nuw i8, ptr %i.dnp, i64 96
  store <8 x i32> %i.dnq, ptr %i.dnp, align 4, !tbaa !3
  store <8 x i32> %.reass2670, ptr %i.dnr, align 4, !tbaa !3
  store <8 x i32> %.reass2672, ptr %i.dns, align 4, !tbaa !3
  store <8 x i32> %.reass2674, ptr %i.dnt, align 4, !tbaa !3
  %index.next2275 = add nuw i64 %index2266, 32    ; 2 uses
  %vec.ind.next2276 = add <8 x i32> %vec.ind2267, splat (i32 32)
  %vec.ind.next2277 = add <8 x i32> %vec.ind2268, splat (i32 32)
  %i.dnu = icmp eq i64 %index.next2275, %n.vec2260
  br i1 %i.dnu, label %middle.block2278, label %vector.body2265, !llvm.loop !471

middle.block2278:                                 ; preds = %vector.body2265
  %cmp.n2279 = icmp eq i64 %n.vec2260, %i.dni
  br i1 %cmp.n2279, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2283

vec.epilog.iter.check2283:                        ; preds = %middle.block2278
  %min.epilog.iters.check2284 = icmp eq i64 %n.mod.vf2259, 0
  br i1 %min.epilog.iters.check2284, label %.lr.ph.i.i867.preheader, label %vec.epilog.ph2285, !prof !472

vec.epilog.ph2285:                                ; preds = %vector.main.loop.iter.check2256, %vec.epilog.iter.check2283
  %vec.epilog.resume.val2280 = phi i64 [ %n.vec2260, %vec.epilog.iter.check2283 ], [ 0, %vector.main.loop.iter.check2256 ] ; 2 uses
  %n.vec2287 = and i64 %i.dni, 2147483644         ; 3 uses
  %broadcast.splatinsert2288 = insertelement <4 x i32> poison, i32 %i.dnc, i64 0
  %broadcast.splat2289 = shufflevector <4 x i32> %broadcast.splatinsert2288, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2290 = insertelement <4 x i32> poison, i32 %i.dng, i64 0
  %broadcast.splat2291 = shufflevector <4 x i32> %broadcast.splatinsert2290, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dnv = trunc nuw nsw i64 %vec.epilog.resume.val2280 to i32
  %broadcast.splatinsert2292 = insertelement <4 x i32> poison, i32 %i.dnv, i64 0
  %broadcast.splat2293 = shufflevector <4 x i32> %broadcast.splatinsert2292, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2294 = or disjoint <4 x i32> %broadcast.splat2293, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2295

vec.epilog.vector.body2295:                       ; preds = %vec.epilog.vector.body2295, %vec.epilog.ph2285
  %index2296 = phi i64 [ %vec.epilog.resume.val2280, %vec.epilog.ph2285 ], [ %index.next2299, %vec.epilog.vector.body2295 ] ; 2 uses
  %vec.ind2297 = phi <4 x i32> [ %induction2294, %vec.epilog.ph2285 ], [ %vec.ind.next2300, %vec.epilog.vector.body2295 ] ; 2 uses
  %vec.ind2298 = phi <4 x i32> [ %induction2294, %vec.epilog.ph2285 ], [ %vec.ind.next2301, %vec.epilog.vector.body2295 ] ; 2 uses
  %i.dnw = add nsw i64 %index2296, %i.dnh         ; 2 uses
  %i.dnx = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dnw
  %i.dny = add <4 x i32> %broadcast.splat2291, %vec.ind2297
  store <4 x i32> %i.dny, ptr %i.dnx, align 4, !tbaa !3
  %i.dnz = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dnw
  %i.doa = add <4 x i32> %broadcast.splat2289, %vec.ind2298
  store <4 x i32> %i.doa, ptr %i.dnz, align 4, !tbaa !3
  %index.next2299 = add nuw i64 %index2296, 4     ; 2 uses
  %vec.ind.next2300 = add <4 x i32> %vec.ind2297, splat (i32 4)
  %vec.ind.next2301 = add <4 x i32> %vec.ind2298, splat (i32 4)
  %i.dob = icmp eq i64 %index.next2299, %n.vec2287
  br i1 %i.dob, label %vec.epilog.middle.block2302, label %vec.epilog.vector.body2295, !llvm.loop !473

vec.epilog.middle.block2302:                      ; preds = %vec.epilog.vector.body2295
  %cmp.n2303 = icmp eq i64 %n.vec2287, %i.dni
  br i1 %cmp.n2303, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867.preheader

.lr.ph.i.i867.preheader:                          ; preds = %iter.check2281, %vec.epilog.iter.check2283, %vec.epilog.middle.block2302
  %indvars.iv1461.ph = phi i64 [ 0, %iter.check2281 ], [ %n.vec2260, %vec.epilog.iter.check2283 ], [ %n.vec2287, %vec.epilog.middle.block2302 ] ; 6 uses
  %xtraiter2513 = and i64 %i.dni, 1
  %lcmp.mod2514.not = icmp eq i64 %xtraiter2513, 0
  br i1 %lcmp.mod2514.not, label %.lr.ph.i.i867.prol.loopexit, label %.lr.ph.i.i867.prol

.lr.ph.i.i867.prol:                               ; preds = %.lr.ph.i.i867.preheader
  %i.doc = add nsw i64 %indvars.iv1461.ph, %i.dnh ; 2 uses
  %i.dod = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.doc
  %i.doe = trunc nuw nsw i64 %indvars.iv1461.ph to i32
  %i.dof = add i32 %i.dng, %i.doe
  store i32 %i.dof, ptr %i.dod, align 4, !tbaa !3
  %i.dog = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.doc
  %i.doh = trunc nuw nsw i64 %indvars.iv1461.ph to i32
  %i.doi = add i32 %i.dnc, %i.doh
  store i32 %i.doi, ptr %i.dog, align 4, !tbaa !3
  %indvars.iv.next1462.prol = or disjoint i64 %indvars.iv1461.ph, 1
  br label %.lr.ph.i.i867.prol.loopexit

.lr.ph.i.i867.prol.loopexit:                      ; preds = %.lr.ph.i.i867.prol, %.lr.ph.i.i867.preheader
  %indvars.iv1461.unr = phi i64 [ %indvars.iv1461.ph, %.lr.ph.i.i867.preheader ], [ %indvars.iv.next1462.prol, %.lr.ph.i.i867.prol ]
  %i.doj = add nsw i64 %i.dni, -1
  %i.dok = icmp eq i64 %indvars.iv1461.ph, %i.doj
  br i1 %i.dok, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867

.lr.ph.i.i867:                                    ; preds = %.lr.ph.i.i867.prol.loopexit, %.lr.ph.i.i867
  %indvars.iv1461 = phi i64 [ %indvars.iv.next1462.1, %.lr.ph.i.i867 ], [ %indvars.iv1461.unr, %.lr.ph.i.i867.prol.loopexit ] ; 5 uses
  %i.dol = add nsw i64 %indvars.iv1461, %i.dnh    ; 2 uses
  %i.dom = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dol
  %i.don = trunc i64 %indvars.iv1461 to i32
  %i.doo = add i32 %i.dng, %i.don
  store i32 %i.doo, ptr %i.dom, align 4, !tbaa !3
  %i.dop = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dol
  %i.doq = trunc i64 %indvars.iv1461 to i32
  %i.dor = add i32 %i.dnc, %i.doq
  store i32 %i.dor, ptr %i.dop, align 4, !tbaa !3
  %indvars.iv.next1462 = add nuw nsw i64 %indvars.iv1461, 1 ; 3 uses
  %i.dos = add nsw i64 %indvars.iv.next1462, %i.dnh ; 2 uses
  %i.dot = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dos
  %i.dou = trunc i64 %indvars.iv.next1462 to i32
  %i.dov = add i32 %i.dng, %i.dou
  store i32 %i.dov, ptr %i.dot, align 4, !tbaa !3
  %i.dow = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dos
  %i.dox = trunc i64 %indvars.iv.next1462 to i32
  %i.doy = add i32 %i.dnc, %i.dox
  store i32 %i.doy, ptr %i.dow, align 4, !tbaa !3
  %indvars.iv.next1462.1 = add nuw nsw i64 %indvars.iv1461, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1462.1, %i.dni
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i867, !llvm.loop !474

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i867.prol.loopexit, %.lr.ph.i.i867, %middle.block2278, %vec.epilog.middle.block2302, %bb.xl
  %i.doz = add nsw i32 %i.dmu, %.9
  %indvars.iv.next.i865 = add nsw i64 %indvars.iv.i864, 1 ; 2 uses
  %exitcond.not.i866 = icmp eq i64 %indvars.iv.next.i865, %wide.trip.count.i862
  br i1 %exitcond.not.i866, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xl, !llvm.loop !475

bb.xm:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i830
  %i.dpa = load ptr, ptr %i.dkv, align 8, !tbaa !314 ; 4 uses
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.dkv, i64 28
  %i.dpc = load i32, ptr %i.dpb, align 4, !tbaa !312 ; 6 uses
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.dkv, i64 32
  %i.dpe = load i32, ptr %i.dpd, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i838 = icmp slt i32 %i.dpc, %i.dpe
  br i1 %.not.i.i.i.i838, label %bb.xn, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xn:                                            ; preds = %bb.xm
  %i.dpf = add i32 %i.dpc, 63                     ; 2 uses
  %i.dpg = srem i32 %i.dpf, 64
  %i.dph = sub nsw i32 %i.dpf, %i.dpg             ; 6 uses
  %i.dpi = and i32 %i.dpe, -64                    ; 6 uses
  %i.dpj = icmp slt i32 %i.dpi, %i.dph
  br i1 %i.dpj, label %bb.xo, label %bb.xq

bb.xo:                                            ; preds = %bb.xn
  %i.dpk = ashr i32 %i.dpe, 6
  %i.dpl = and i32 %i.dpe, 63
  %i.dpm = zext nneg i32 %i.dpl to i64
  %notmask.i.i.i.i.i853 = shl nsw i64 -1, %i.dpm
  %i.dpn = xor i64 %notmask.i.i.i.i.i853, -1
  %i.dpo = sub nsw i32 %i.dph, %i.dpc             ; 2 uses
  %i.dpp = zext nneg i32 %i.dpo to i64
  %notmask.i.i.i.i.i.i854 = shl nsw i64 -1, %i.dpp
  %i.dpq = xor i64 %notmask.i.i.i.i.i.i854, -1
  %i.dpr = sub nsw i32 64, %i.dpo
  %i.dps = zext nneg i32 %i.dpr to i64
  %i.dpt = shl i64 %i.dpq, %i.dps
  %i.dpu = and i64 %i.dpt, %i.dpn
  %i.dpv = sext i32 %i.dpk to i64
  %i.dpw = getelementptr inbounds [8 x i8], ptr %i.dpa, i64 %i.dpv
  %i.dpx = load i64, ptr %i.dpw, align 8, !tbaa !145
  %i.dpy = and i64 %i.dpu, %i.dpx                 ; 2 uses
  %.not.i.i.i.i.i855 = icmp eq i64 %i.dpy, 0
  br i1 %.not.i.i.i.i.i855, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i856

.preheader.i.i.i.i.i856:                          ; preds = %bb.xo
  %i.dpz = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dqa = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dpz, i64 120
  %i.dqc = load ptr, ptr %i.dqb, align 8, !tbaa !308
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dpz, i64 104
  %i.dqe = load ptr, ptr %i.dqd, align 8, !tbaa !306
  %i.dqf = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dqg = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dqh = getelementptr inbounds nuw i8, ptr %i.dqf, i64 104
  %i.dqi = load ptr, ptr %i.dqh, align 8, !tbaa !306
  %i.dqj = sub i64 %i.dkk, %i.dku
  %diff.check2202 = icmp ult i64 %i.dqj, 128
  br label %bb.xp

bb.xp:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i856
  %.8 = phi i32 [ 0, %.preheader.i.i.i.i.i856 ], [ %i.dsu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i858 = phi i64 [ %i.dpy, %.preheader.i.i.i.i.i856 ], [ %i.dsw, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.dqk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i858, i1 true)
  %151 = trunc nuw nsw i64 %i.dqk to i32
  %152 = or disjoint i32 %i.dpi, %151
  %153 = sext i32 %152 to i64                     ; 4 uses
  %i.dql = getelementptr inbounds [4 x i8], ptr %i.dqa, i64 %153 ; 2 uses
  %i.dqm = load i32, ptr %i.dql, align 4, !tbaa !3
  %i.dqn = sext i32 %i.dqm to i64
  %i.dqo = getelementptr inbounds [4 x i8], ptr %i.dqc, i64 %i.dqn
  %i.dqp = load i32, ptr %i.dqo, align 4, !tbaa !3 ; 6 uses
  %i.dqq = getelementptr inbounds [4 x i8], ptr %i.djo, i64 %153
  store i32 %.8, ptr %i.dqq, align 4, !tbaa !3
  %i.dqr = getelementptr inbounds [4 x i8], ptr %i.djz, i64 %153
  store i32 %i.dqp, ptr %i.dqr, align 4, !tbaa !3
  %i.dqs = icmp sgt i32 %i.dqp, 0
  br i1 %i.dqs, label %iter.check2229, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2229:                                   ; preds = %bb.xp
  %i.dqt = getelementptr inbounds [4 x i8], ptr %i.dqg, i64 %153
  %i.dqu = load i32, ptr %i.dqt, align 4, !tbaa !3
  %i.dqv = sext i32 %i.dqu to i64
  %i.dqw = getelementptr inbounds [4 x i8], ptr %i.dqi, i64 %i.dqv
  %i.dqx = load i32, ptr %i.dqw, align 4, !tbaa !3 ; 5 uses
  %i.dqy = load i32, ptr %i.dql, align 4, !tbaa !3
  %i.dqz = sext i32 %i.dqy to i64
  %i.dra = getelementptr inbounds [4 x i8], ptr %i.dqe, i64 %i.dqz
  %i.drb = load i32, ptr %i.dra, align 4, !tbaa !3 ; 5 uses
  %i.drc = sext i32 %.8 to i64                    ; 5 uses
  %i.drd = zext nneg i32 %i.dqp to i64            ; 8 uses
  %min.iters.check2203 = icmp ult i32 %i.dqp, 4
  %or.cond2387 = select i1 %min.iters.check2203, i1 true, i1 %diff.check2202
  br i1 %or.cond2387, label %.lr.ph.i.i.i.i.i.i860.preheader, label %vector.main.loop.iter.check2204

vector.main.loop.iter.check2204:                  ; preds = %iter.check2229
  %min.iters.check2205 = icmp ult i32 %i.dqp, 32
  br i1 %min.iters.check2205, label %vec.epilog.ph2233, label %vector.ph2206

vector.ph2206:                                    ; preds = %vector.main.loop.iter.check2204
  %n.mod.vf2207 = and i64 %i.drd, 28
  %n.vec2208 = and i64 %i.drd, 2147483616         ; 4 uses
  %broadcast.splatinsert2209 = insertelement <8 x i32> poison, i32 %i.dqx, i64 0
  %broadcast.splat2210 = shufflevector <8 x i32> %broadcast.splatinsert2209, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2211 = insertelement <8 x i32> poison, i32 %i.drb, i64 0
  %broadcast.splat2212 = shufflevector <8 x i32> %broadcast.splatinsert2211, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2651 = add <8 x i32> splat (i32 8), %broadcast.splat2212
  %invariant.op2653 = add <8 x i32> splat (i32 16), %broadcast.splat2212
  %invariant.op2655 = add <8 x i32> splat (i32 24), %broadcast.splat2212
  %invariant.op2657 = add <8 x i32> splat (i32 8), %broadcast.splat2210
  %invariant.op2659 = add <8 x i32> splat (i32 16), %broadcast.splat2210
  %invariant.op2661 = add <8 x i32> splat (i32 24), %broadcast.splat2210
  br label %vector.body2213

vector.body2213:                                  ; preds = %vector.body2213, %vector.ph2206
  %index2214 = phi i64 [ 0, %vector.ph2206 ], [ %index.next2223, %vector.body2213 ] ; 2 uses
  %vec.ind2215 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2206 ], [ %vec.ind.next2224, %vector.body2213 ] ; 5 uses
  %vec.ind2216 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2206 ], [ %vec.ind.next2225, %vector.body2213 ] ; 5 uses
  %i.dre = add nsw i64 %index2214, %i.drc         ; 2 uses
  %i.drf = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dre ; 4 uses
  %i.drg = add <8 x i32> %broadcast.splat2212, %vec.ind2215
  %.reass2652 = add <8 x i32> %vec.ind2215, %invariant.op2651
  %.reass2654 = add <8 x i32> %vec.ind2215, %invariant.op2653
  %.reass2656 = add <8 x i32> %vec.ind2215, %invariant.op2655
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drf, i64 32
  %i.dri = getelementptr inbounds nuw i8, ptr %i.drf, i64 64
  %i.drj = getelementptr inbounds nuw i8, ptr %i.drf, i64 96
  store <8 x i32> %i.drg, ptr %i.drf, align 4, !tbaa !3
  store <8 x i32> %.reass2652, ptr %i.drh, align 4, !tbaa !3
  store <8 x i32> %.reass2654, ptr %i.dri, align 4, !tbaa !3
  store <8 x i32> %.reass2656, ptr %i.drj, align 4, !tbaa !3
  %i.drk = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dre ; 4 uses
  %i.drl = add <8 x i32> %broadcast.splat2210, %vec.ind2216
  %.reass2658 = add <8 x i32> %vec.ind2216, %invariant.op2657
  %.reass2660 = add <8 x i32> %vec.ind2216, %invariant.op2659
  %.reass2662 = add <8 x i32> %vec.ind2216, %invariant.op2661
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drk, i64 32
  %i.drn = getelementptr inbounds nuw i8, ptr %i.drk, i64 64
  %i.dro = getelementptr inbounds nuw i8, ptr %i.drk, i64 96
  store <8 x i32> %i.drl, ptr %i.drk, align 4, !tbaa !3
  store <8 x i32> %.reass2658, ptr %i.drm, align 4, !tbaa !3
  store <8 x i32> %.reass2660, ptr %i.drn, align 4, !tbaa !3
  store <8 x i32> %.reass2662, ptr %i.dro, align 4, !tbaa !3
  %index.next2223 = add nuw i64 %index2214, 32    ; 2 uses
  %vec.ind.next2224 = add <8 x i32> %vec.ind2215, splat (i32 32)
  %vec.ind.next2225 = add <8 x i32> %vec.ind2216, splat (i32 32)
  %i.drp = icmp eq i64 %index.next2223, %n.vec2208
  br i1 %i.drp, label %middle.block2226, label %vector.body2213, !llvm.loop !476

middle.block2226:                                 ; preds = %vector.body2213
  %cmp.n2227 = icmp eq i64 %n.vec2208, %i.drd
  br i1 %cmp.n2227, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2231

vec.epilog.iter.check2231:                        ; preds = %middle.block2226
  %min.epilog.iters.check2232 = icmp eq i64 %n.mod.vf2207, 0
  br i1 %min.epilog.iters.check2232, label %.lr.ph.i.i.i.i.i.i860.preheader, label %vec.epilog.ph2233, !prof !472

vec.epilog.ph2233:                                ; preds = %vector.main.loop.iter.check2204, %vec.epilog.iter.check2231
  %vec.epilog.resume.val2228 = phi i64 [ %n.vec2208, %vec.epilog.iter.check2231 ], [ 0, %vector.main.loop.iter.check2204 ] ; 2 uses
  %n.vec2235 = and i64 %i.drd, 2147483644         ; 3 uses
  %broadcast.splatinsert2236 = insertelement <4 x i32> poison, i32 %i.dqx, i64 0
  %broadcast.splat2237 = shufflevector <4 x i32> %broadcast.splatinsert2236, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2238 = insertelement <4 x i32> poison, i32 %i.drb, i64 0
  %broadcast.splat2239 = shufflevector <4 x i32> %broadcast.splatinsert2238, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.drq = trunc nuw nsw i64 %vec.epilog.resume.val2228 to i32
  %broadcast.splatinsert2240 = insertelement <4 x i32> poison, i32 %i.drq, i64 0
  %broadcast.splat2241 = shufflevector <4 x i32> %broadcast.splatinsert2240, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2242 = or disjoint <4 x i32> %broadcast.splat2241, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2243

vec.epilog.vector.body2243:                       ; preds = %vec.epilog.vector.body2243, %vec.epilog.ph2233
  %index2244 = phi i64 [ %vec.epilog.resume.val2228, %vec.epilog.ph2233 ], [ %index.next2247, %vec.epilog.vector.body2243 ] ; 2 uses
  %vec.ind2245 = phi <4 x i32> [ %induction2242, %vec.epilog.ph2233 ], [ %vec.ind.next2248, %vec.epilog.vector.body2243 ] ; 2 uses
  %vec.ind2246 = phi <4 x i32> [ %induction2242, %vec.epilog.ph2233 ], [ %vec.ind.next2249, %vec.epilog.vector.body2243 ] ; 2 uses
  %i.drr = add nsw i64 %index2244, %i.drc         ; 2 uses
  %i.drs = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.drr
  %i.drt = add <4 x i32> %broadcast.splat2239, %vec.ind2245
  store <4 x i32> %i.drt, ptr %i.drs, align 4, !tbaa !3
  %i.dru = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.drr
  %i.drv = add <4 x i32> %broadcast.splat2237, %vec.ind2246
  store <4 x i32> %i.drv, ptr %i.dru, align 4, !tbaa !3
  %index.next2247 = add nuw i64 %index2244, 4     ; 2 uses
  %vec.ind.next2248 = add <4 x i32> %vec.ind2245, splat (i32 4)
  %vec.ind.next2249 = add <4 x i32> %vec.ind2246, splat (i32 4)
  %i.drw = icmp eq i64 %index.next2247, %n.vec2235
  br i1 %i.drw, label %vec.epilog.middle.block2250, label %vec.epilog.vector.body2243, !llvm.loop !477

vec.epilog.middle.block2250:                      ; preds = %vec.epilog.vector.body2243
  %cmp.n2251 = icmp eq i64 %n.vec2235, %i.drd
  br i1 %cmp.n2251, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860.preheader

.lr.ph.i.i.i.i.i.i860.preheader:                  ; preds = %iter.check2229, %vec.epilog.iter.check2231, %vec.epilog.middle.block2250
  %indvars.iv1458.ph = phi i64 [ 0, %iter.check2229 ], [ %n.vec2208, %vec.epilog.iter.check2231 ], [ %n.vec2235, %vec.epilog.middle.block2250 ] ; 6 uses
  %xtraiter2511 = and i64 %i.drd, 1
  %lcmp.mod2512.not = icmp eq i64 %xtraiter2511, 0
  br i1 %lcmp.mod2512.not, label %.lr.ph.i.i.i.i.i.i860.prol.loopexit, label %.lr.ph.i.i.i.i.i.i860.prol

.lr.ph.i.i.i.i.i.i860.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i860.preheader
  %i.drx = add nsw i64 %indvars.iv1458.ph, %i.drc ; 2 uses
  %i.dry = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.drx
  %i.drz = trunc nuw nsw i64 %indvars.iv1458.ph to i32
  %i.dsa = add i32 %i.drb, %i.drz
  store i32 %i.dsa, ptr %i.dry, align 4, !tbaa !3
  %i.dsb = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.drx
  %i.dsc = trunc nuw nsw i64 %indvars.iv1458.ph to i32
  %i.dsd = add i32 %i.dqx, %i.dsc
  store i32 %i.dsd, ptr %i.dsb, align 4, !tbaa !3
  %indvars.iv.next1459.prol = or disjoint i64 %indvars.iv1458.ph, 1
  br label %.lr.ph.i.i.i.i.i.i860.prol.loopexit

.lr.ph.i.i.i.i.i.i860.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i860.prol, %.lr.ph.i.i.i.i.i.i860.preheader
  %indvars.iv1458.unr = phi i64 [ %indvars.iv1458.ph, %.lr.ph.i.i.i.i.i.i860.preheader ], [ %indvars.iv.next1459.prol, %.lr.ph.i.i.i.i.i.i860.prol ]
  %i.dse = add nsw i64 %i.drd, -1
  %i.dsf = icmp eq i64 %indvars.iv1458.ph, %i.dse
  br i1 %i.dsf, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860

.lr.ph.i.i.i.i.i.i860:                            ; preds = %.lr.ph.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i860
  %indvars.iv1458 = phi i64 [ %indvars.iv.next1459.1, %.lr.ph.i.i.i.i.i.i860 ], [ %indvars.iv1458.unr, %.lr.ph.i.i.i.i.i.i860.prol.loopexit ] ; 5 uses
  %i.dsg = add nsw i64 %indvars.iv1458, %i.drc    ; 2 uses
  %i.dsh = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dsg
  %i.dsi = trunc i64 %indvars.iv1458 to i32
  %i.dsj = add i32 %i.drb, %i.dsi
  store i32 %i.dsj, ptr %i.dsh, align 4, !tbaa !3
  %i.dsk = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dsg
  %i.dsl = trunc i64 %indvars.iv1458 to i32
  %i.dsm = add i32 %i.dqx, %i.dsl
  store i32 %i.dsm, ptr %i.dsk, align 4, !tbaa !3
  %indvars.iv.next1459 = add nuw nsw i64 %indvars.iv1458, 1 ; 3 uses
  %i.dsn = add nsw i64 %indvars.iv.next1459, %i.drc ; 2 uses
  %i.dso = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dsn
  %i.dsp = trunc i64 %indvars.iv.next1459 to i32
  %i.dsq = add i32 %i.drb, %i.dsp
  store i32 %i.dsq, ptr %i.dso, align 4, !tbaa !3
  %i.dsr = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dsn
  %i.dss = trunc i64 %indvars.iv.next1459 to i32
  %i.dst = add i32 %i.dqx, %i.dss
  store i32 %i.dst, ptr %i.dsr, align 4, !tbaa !3
  %indvars.iv.next1459.1 = add nuw nsw i64 %indvars.iv1458, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1459.1, %i.drd
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i860, !llvm.loop !478

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i860.prol.loopexit, %.lr.ph.i.i.i.i.i.i860, %middle.block2226, %vec.epilog.middle.block2250, %bb.xp
  %i.dsu = add nsw i32 %i.dqp, %.8
  %i.dsv = add nsw i64 %.011.i.i.i.i.i858, -1
  %i.dsw = and i64 %i.dsv, %.011.i.i.i.i.i858     ; 2 uses
  %.not10.i.i.i.i.i859 = icmp eq i64 %i.dsw, 0
  br i1 %.not10.i.i.i.i.i859, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xp, !llvm.loop !479

bb.xq:                                            ; preds = %bb.xn
  %.not32.i.i.i.i839 = icmp eq i32 %i.dpc, %i.dph
  br i1 %.not32.i.i.i.i839, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.dsx = sdiv i32 %i.dpc, 64                    ; 2 uses
  %i.dsy = sub nsw i32 %i.dph, %i.dpc             ; 2 uses
  %i.dsz = zext nneg i32 %i.dsy to i64
  %notmask.i.i35.i.i.i.i840 = shl nsw i64 -1, %i.dsz
  %i.dta = xor i64 %notmask.i.i35.i.i.i.i840, -1
  %i.dtb = sub nsw i32 64, %i.dsy
  %i.dtc = zext nneg i32 %i.dtb to i64
  %i.dtd = shl i64 %i.dta, %i.dtc
  %i.dte = sext i32 %i.dsx to i64
  %i.dtf = getelementptr inbounds [8 x i8], ptr %i.dpa, i64 %i.dte
  %i.dtg = load i64, ptr %i.dtf, align 8, !tbaa !145
  %i.dth = and i64 %i.dtg, %i.dtd                 ; 2 uses
  %.not.i36.i.i.i.i841 = icmp eq i64 %i.dth, 0
  br i1 %.not.i36.i.i.i.i841, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i842

.preheader.i37.i.i.i.i842:                        ; preds = %bb.xr
  %i.dti = shl nsw i32 %i.dsx, 6
  %i.dtj = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dtk = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dtj, i64 120
  %i.dtm = load ptr, ptr %i.dtl, align 8, !tbaa !308
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtj, i64 104
  %i.dto = load ptr, ptr %i.dtn, align 8, !tbaa !306
  %i.dtp = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.dtq = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dtr = getelementptr inbounds nuw i8, ptr %i.dtp, i64 104
  %i.dts = load ptr, ptr %i.dtr, align 8, !tbaa !306
  %i.dtt = sub i64 %i.dkk, %i.dku
  %diff.check = icmp ult i64 %i.dtt, 128
  br label %bb.xs

bb.xs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i842
  %.0 = phi i32 [ 0, %.preheader.i37.i.i.i.i842 ], [ %i.dwe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i844 = phi i64 [ %i.dth, %.preheader.i37.i.i.i.i842 ], [ %i.dwg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.dtu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i844, i1 true)
  %154 = trunc nuw nsw i64 %i.dtu to i32
  %155 = or disjoint i32 %i.dti, %154
  %156 = sext i32 %155 to i64                     ; 4 uses
  %i.dtv = getelementptr inbounds [4 x i8], ptr %i.dtk, i64 %156 ; 2 uses
  %i.dtw = load i32, ptr %i.dtv, align 4, !tbaa !3
  %i.dtx = sext i32 %i.dtw to i64
  %i.dty = getelementptr inbounds [4 x i8], ptr %i.dtm, i64 %i.dtx
  %i.dtz = load i32, ptr %i.dty, align 4, !tbaa !3 ; 6 uses
  %i.dua = getelementptr inbounds [4 x i8], ptr %i.djo, i64 %156
  store i32 %.0, ptr %i.dua, align 4, !tbaa !3
  %i.dub = getelementptr inbounds [4 x i8], ptr %i.djz, i64 %156
  store i32 %i.dtz, ptr %i.dub, align 4, !tbaa !3
  %i.duc = icmp sgt i32 %i.dtz, 0
  br i1 %i.duc, label %iter.check2023, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check2023:                                   ; preds = %bb.xs
  %i.dud = getelementptr inbounds [4 x i8], ptr %i.dtq, i64 %156
  %i.due = load i32, ptr %i.dud, align 4, !tbaa !3
  %i.duf = sext i32 %i.due to i64
  %i.dug = getelementptr inbounds [4 x i8], ptr %i.dts, i64 %i.duf
  %i.duh = load i32, ptr %i.dug, align 4, !tbaa !3 ; 5 uses
  %i.dui = load i32, ptr %i.dtv, align 4, !tbaa !3
  %i.duj = sext i32 %i.dui to i64
  %i.duk = getelementptr inbounds [4 x i8], ptr %i.dto, i64 %i.duj
  %i.dul = load i32, ptr %i.duk, align 4, !tbaa !3 ; 5 uses
  %i.dum = sext i32 %.0 to i64                    ; 5 uses
  %i.dun = zext nneg i32 %i.dtz to i64            ; 8 uses
  %min.iters.check2004 = icmp ult i32 %i.dtz, 4
  %or.cond2388 = select i1 %min.iters.check2004, i1 true, i1 %diff.check
  br i1 %or.cond2388, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check2005

vector.main.loop.iter.check2005:                  ; preds = %iter.check2023
  %min.iters.check2006 = icmp ult i32 %i.dtz, 32
  br i1 %min.iters.check2006, label %vec.epilog.ph2027, label %vector.ph2007

vector.ph2007:                                    ; preds = %vector.main.loop.iter.check2005
  %n.mod.vf2008 = and i64 %i.dun, 28
  %n.vec2009 = and i64 %i.dun, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.duh, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2010 = insertelement <8 x i32> poison, i32 %i.dul, i64 0
  %broadcast.splat2011 = shufflevector <8 x i32> %broadcast.splatinsert2010, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat2011
  %invariant.op2605 = add <8 x i32> splat (i32 16), %broadcast.splat2011
  %invariant.op2607 = add <8 x i32> splat (i32 24), %broadcast.splat2011
  %invariant.op2609 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2611 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2613 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body2012

vector.body2012:                                  ; preds = %vector.body2012, %vector.ph2007
  %index2013 = phi i64 [ 0, %vector.ph2007 ], [ %index.next2018, %vector.body2012 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2007 ], [ %vec.ind.next, %vector.body2012 ] ; 5 uses
  %vec.ind2014 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2007 ], [ %vec.ind.next2019, %vector.body2012 ] ; 5 uses
  %i.duo = add nsw i64 %index2013, %i.dum         ; 2 uses
  %i.dup = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.duo ; 4 uses
  %i.duq = add <8 x i32> %broadcast.splat2011, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass2606 = add <8 x i32> %vec.ind, %invariant.op2605
  %.reass2608 = add <8 x i32> %vec.ind, %invariant.op2607
  %i.dur = getelementptr inbounds nuw i8, ptr %i.dup, i64 32
  %i.dus = getelementptr inbounds nuw i8, ptr %i.dup, i64 64
  %i.dut = getelementptr inbounds nuw i8, ptr %i.dup, i64 96
  store <8 x i32> %i.duq, ptr %i.dup, align 4, !tbaa !3
  store <8 x i32> %.reass, ptr %i.dur, align 4, !tbaa !3
  store <8 x i32> %.reass2606, ptr %i.dus, align 4, !tbaa !3
  store <8 x i32> %.reass2608, ptr %i.dut, align 4, !tbaa !3
  %i.duu = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.duo ; 4 uses
  %i.duv = add <8 x i32> %broadcast.splat, %vec.ind2014
  %.reass2610 = add <8 x i32> %vec.ind2014, %invariant.op2609
  %.reass2612 = add <8 x i32> %vec.ind2014, %invariant.op2611
  %.reass2614 = add <8 x i32> %vec.ind2014, %invariant.op2613
  %i.duw = getelementptr inbounds nuw i8, ptr %i.duu, i64 32
  %i.dux = getelementptr inbounds nuw i8, ptr %i.duu, i64 64
  %i.duy = getelementptr inbounds nuw i8, ptr %i.duu, i64 96
  store <8 x i32> %i.duv, ptr %i.duu, align 4, !tbaa !3
  store <8 x i32> %.reass2610, ptr %i.duw, align 4, !tbaa !3
  store <8 x i32> %.reass2612, ptr %i.dux, align 4, !tbaa !3
  store <8 x i32> %.reass2614, ptr %i.duy, align 4, !tbaa !3
  %index.next2018 = add nuw i64 %index2013, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next2019 = add <8 x i32> %vec.ind2014, splat (i32 32)
  %i.duz = icmp eq i64 %index.next2018, %n.vec2009
  br i1 %i.duz, label %middle.block2020, label %vector.body2012, !llvm.loop !480

middle.block2020:                                 ; preds = %vector.body2012
  %cmp.n2021 = icmp eq i64 %n.vec2009, %i.dun
  br i1 %cmp.n2021, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check2025

vec.epilog.iter.check2025:                        ; preds = %middle.block2020
  %min.epilog.iters.check2026 = icmp eq i64 %n.mod.vf2008, 0
  br i1 %min.epilog.iters.check2026, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph2027, !prof !472

vec.epilog.ph2027:                                ; preds = %vector.main.loop.iter.check2005, %vec.epilog.iter.check2025
  %vec.epilog.resume.val2022 = phi i64 [ %n.vec2009, %vec.epilog.iter.check2025 ], [ 0, %vector.main.loop.iter.check2005 ] ; 2 uses
  %n.vec2029 = and i64 %i.dun, 2147483644         ; 3 uses
  %broadcast.splatinsert2030 = insertelement <4 x i32> poison, i32 %i.duh, i64 0
  %broadcast.splat2031 = shufflevector <4 x i32> %broadcast.splatinsert2030, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2032 = insertelement <4 x i32> poison, i32 %i.dul, i64 0
  %broadcast.splat2033 = shufflevector <4 x i32> %broadcast.splatinsert2032, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dva = trunc nuw nsw i64 %vec.epilog.resume.val2022 to i32
  %broadcast.splatinsert2034 = insertelement <4 x i32> poison, i32 %i.dva, i64 0
  %broadcast.splat2035 = shufflevector <4 x i32> %broadcast.splatinsert2034, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat2035, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2036

vec.epilog.vector.body2036:                       ; preds = %vec.epilog.vector.body2036, %vec.epilog.ph2027
  %index2037 = phi i64 [ %vec.epilog.resume.val2022, %vec.epilog.ph2027 ], [ %index.next2040, %vec.epilog.vector.body2036 ] ; 2 uses
  %vec.ind2038 = phi <4 x i32> [ %induction, %vec.epilog.ph2027 ], [ %vec.ind.next2041, %vec.epilog.vector.body2036 ] ; 2 uses
  %vec.ind2039 = phi <4 x i32> [ %induction, %vec.epilog.ph2027 ], [ %vec.ind.next2042, %vec.epilog.vector.body2036 ] ; 2 uses
  %i.dvb = add nsw i64 %index2037, %i.dum         ; 2 uses
  %i.dvc = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvb
  %i.dvd = add <4 x i32> %broadcast.splat2033, %vec.ind2038
  store <4 x i32> %i.dvd, ptr %i.dvc, align 4, !tbaa !3
  %i.dve = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dvb
  %i.dvf = add <4 x i32> %broadcast.splat2031, %vec.ind2039
  store <4 x i32> %i.dvf, ptr %i.dve, align 4, !tbaa !3
  %index.next2040 = add nuw i64 %index2037, 4     ; 2 uses
  %vec.ind.next2041 = add <4 x i32> %vec.ind2038, splat (i32 4)
  %vec.ind.next2042 = add <4 x i32> %vec.ind2039, splat (i32 4)
  %i.dvg = icmp eq i64 %index.next2040, %n.vec2029
  br i1 %i.dvg, label %vec.epilog.middle.block2043, label %vec.epilog.vector.body2036, !llvm.loop !481

vec.epilog.middle.block2043:                      ; preds = %vec.epilog.vector.body2036
  %cmp.n2044 = icmp eq i64 %n.vec2029, %i.dun
  br i1 %cmp.n2044, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check2023, %vec.epilog.iter.check2025, %vec.epilog.middle.block2043
  %indvars.iv.ph = phi i64 [ 0, %iter.check2023 ], [ %n.vec2009, %vec.epilog.iter.check2025 ], [ %n.vec2029, %vec.epilog.middle.block2043 ] ; 6 uses
  %xtraiter = and i64 %i.dun, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dvh = add nsw i64 %indvars.iv.ph, %i.dum     ; 2 uses
  %i.dvi = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvh
  %i.dvj = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dvk = add i32 %i.dul, %i.dvj
  store i32 %i.dvk, ptr %i.dvi, align 4, !tbaa !3
  %i.dvl = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dvh
  %i.dvm = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dvn = add i32 %i.duh, %i.dvm
  store i32 %i.dvn, ptr %i.dvl, align 4, !tbaa !3
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dvo = add nsw i64 %i.dun, -1
  %i.dvp = icmp eq i64 %indvars.iv.ph, %i.dvo
  br i1 %i.dvp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dvq = add nsw i64 %indvars.iv, %i.dum        ; 2 uses
  %i.dvr = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvq
  %i.dvs = trunc i64 %indvars.iv to i32
  %i.dvt = add i32 %i.dul, %i.dvs
  store i32 %i.dvt, ptr %i.dvr, align 4, !tbaa !3
  %i.dvu = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dvq
  %i.dvv = trunc i64 %indvars.iv to i32
  %i.dvw = add i32 %i.duh, %i.dvv
  store i32 %i.dvw, ptr %i.dvu, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dvx = add nsw i64 %indvars.iv.next, %i.dum   ; 2 uses
  %i.dvy = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dvx
  %i.dvz = trunc i64 %indvars.iv.next to i32
  %i.dwa = add i32 %i.dul, %i.dvz
  store i32 %i.dwa, ptr %i.dvy, align 4, !tbaa !3
  %i.dwb = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dvx
  %i.dwc = trunc i64 %indvars.iv.next to i32
  %i.dwd = add i32 %i.duh, %i.dwc
  store i32 %i.dwd, ptr %i.dwb, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.dun
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !482

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block2020, %vec.epilog.middle.block2043, %bb.xs
  %i.dwe = add nsw i32 %i.dtz, %.0                ; 2 uses
  %i.dwf = add i64 %.011.i39.i.i.i.i844, -1
  %i.dwg = and i64 %i.dwf, %.011.i39.i.i.i.i844   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dwg, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xs, !llvm.loop !479

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xr, %bb.xq
  %.1 = phi i32 [ 0, %bb.xq ], [ 0, %bb.xr ], [ %i.dwe, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dwh = add nsw i32 %i.dph, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dwh, %i.dpi
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i847, label %.lr.ph.i.i.i.i845.preheader

.lr.ph.i.i.i.i845.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.dwi = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.dwj = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwi, i64 120 ; 2 uses
  %i.dwl = getelementptr inbounds nuw i8, ptr %i.dwi, i64 104 ; 2 uses
  %i.dwm = load ptr, ptr %i.q, align 8
  %i.dwn = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwm, i64 104 ; 2 uses
  %i.dwp = sub i64 %i.dkk, %i.dku                 ; 2 uses
  %diff.check2098 = icmp ult i64 %i.dwp, 128
  %diff.check2046 = icmp ult i64 %i.dwp, 128
  br label %.lr.ph.i.i.i.i845

._crit_edge.i.i.i.i847:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.4 = phi i32 [ %.1, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i848 = icmp eq i32 %i.dpe, %i.dpi
  br i1 %.not34.i.i.i.i848, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xw

.lr.ph.i.i.i.i845:                                ; preds = %.lr.ph.i.i.i.i845.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2 = phi i32 [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i845.preheader ] ; 4 uses
  %i.dwq = phi i32 [ %i.ecg, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dwh, %.lr.ph.i.i.i.i845.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.dwq, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dph, %.lr.ph.i.i.i.i845.preheader ] ; 2 uses
  %i.dwr = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.dws = sext i32 %i.dwr to i64
  %i.dwt = getelementptr inbounds [8 x i8], ptr %i.dpa, i64 %i.dws
  %i.dwu = load i64, ptr %i.dwt, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.dwu, label %.lr.ph.i.i.i.i.i852 [
    i64 -1, label %bb.xt
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i852:                              ; preds = %.lr.ph.i.i.i.i845
  %i.dwv = shl nsw i32 %i.dwr, 6
  %i.dww = load ptr, ptr %i.dwk, align 8, !tbaa !308
  %i.dwx = load ptr, ptr %i.dwl, align 8, !tbaa !306
  %i.dwy = load ptr, ptr %i.dwo, align 8, !tbaa !306
  br label %bb.xv

bb.xt:                                            ; preds = %.lr.ph.i.i.i.i845
  %i.dwz = shl nsw i32 %i.dwr, 6                  ; 2 uses
  %i.dxa = add i32 %i.dwz, 64
  %i.dxb = sext i32 %i.dxa to i64
  %.0.off.i.i.i.i850 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i850, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xt
  %i.dxc = sext i32 %i.dwz to i64
  %i.dxd = load ptr, ptr %i.dwk, align 8, !tbaa !308
  %i.dxe = load ptr, ptr %i.dwl, align 8, !tbaa !306
  %i.dxf = load ptr, ptr %i.dwo, align 8, !tbaa !306
  br label %bb.xu

bb.xu:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.6 = phi i32 [ %.2, %.lr.ph25.i.i.i.i.i ], [ %i.dzq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.dxc, %.lr.ph25.i.i.i.i.i ], [ %i.dzr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i851 = shl i64 %.024.i.i.i.i.i, 32
  %i.dxg = ashr exact i64 %sext.i.i.i.i.i851, 32  ; 4 uses
  %i.dxh = getelementptr inbounds [4 x i8], ptr %i.dwj, i64 %i.dxg ; 2 uses
  %i.dxi = load i32, ptr %i.dxh, align 4, !tbaa !3
  %i.dxj = sext i32 %i.dxi to i64
  %i.dxk = getelementptr inbounds [4 x i8], ptr %i.dxd, i64 %i.dxj
  %i.dxl = load i32, ptr %i.dxk, align 4, !tbaa !3 ; 6 uses
  %i.dxm = getelementptr inbounds [4 x i8], ptr %i.djo, i64 %i.dxg
  store i32 %.6, ptr %i.dxm, align 4, !tbaa !3
  %i.dxn = getelementptr inbounds [4 x i8], ptr %i.djz, i64 %i.dxg
  store i32 %i.dxl, ptr %i.dxn, align 4, !tbaa !3
  %i.dxo = icmp sgt i32 %i.dxl, 0
  br i1 %i.dxo, label %iter.check2125, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2125:                                   ; preds = %bb.xu
  %i.dxp = getelementptr inbounds [4 x i8], ptr %i.dwn, i64 %i.dxg
  %i.dxq = load i32, ptr %i.dxp, align 4, !tbaa !3
  %i.dxr = sext i32 %i.dxq to i64
  %i.dxs = getelementptr inbounds [4 x i8], ptr %i.dxf, i64 %i.dxr
  %i.dxt = load i32, ptr %i.dxs, align 4, !tbaa !3 ; 5 uses
  %i.dxu = load i32, ptr %i.dxh, align 4, !tbaa !3
  %i.dxv = sext i32 %i.dxu to i64
  %i.dxw = getelementptr inbounds [4 x i8], ptr %i.dxe, i64 %i.dxv
  %i.dxx = load i32, ptr %i.dxw, align 4, !tbaa !3 ; 5 uses
  %i.dxy = sext i32 %.6 to i64                    ; 5 uses
  %i.dxz = zext nneg i32 %i.dxl to i64            ; 8 uses
  %min.iters.check2099 = icmp ult i32 %i.dxl, 4
  %or.cond2389 = select i1 %min.iters.check2099, i1 true, i1 %diff.check2098
  br i1 %or.cond2389, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2100

vector.main.loop.iter.check2100:                  ; preds = %iter.check2125
  %min.iters.check2101 = icmp ult i32 %i.dxl, 32
  br i1 %min.iters.check2101, label %vec.epilog.ph2129, label %vector.ph2102

vector.ph2102:                                    ; preds = %vector.main.loop.iter.check2100
  %n.mod.vf2103 = and i64 %i.dxz, 28
  %n.vec2104 = and i64 %i.dxz, 2147483616         ; 4 uses
  %broadcast.splatinsert2105 = insertelement <8 x i32> poison, i32 %i.dxt, i64 0
  %broadcast.splat2106 = shufflevector <8 x i32> %broadcast.splatinsert2105, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2107 = insertelement <8 x i32> poison, i32 %i.dxx, i64 0
  %broadcast.splat2108 = shufflevector <8 x i32> %broadcast.splatinsert2107, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2615 = add <8 x i32> splat (i32 8), %broadcast.splat2108
  %invariant.op2617 = add <8 x i32> splat (i32 16), %broadcast.splat2108
  %invariant.op2619 = add <8 x i32> splat (i32 24), %broadcast.splat2108
  %invariant.op2621 = add <8 x i32> splat (i32 8), %broadcast.splat2106
  %invariant.op2623 = add <8 x i32> splat (i32 16), %broadcast.splat2106
  %invariant.op2625 = add <8 x i32> splat (i32 24), %broadcast.splat2106
  br label %vector.body2109

vector.body2109:                                  ; preds = %vector.body2109, %vector.ph2102
  %index2110 = phi i64 [ 0, %vector.ph2102 ], [ %index.next2119, %vector.body2109 ] ; 2 uses
  %vec.ind2111 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2102 ], [ %vec.ind.next2120, %vector.body2109 ] ; 5 uses
  %vec.ind2112 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2102 ], [ %vec.ind.next2121, %vector.body2109 ] ; 5 uses
  %i.dya = add nsw i64 %index2110, %i.dxy         ; 2 uses
  %i.dyb = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dya ; 4 uses
  %i.dyc = add <8 x i32> %broadcast.splat2108, %vec.ind2111
  %.reass2616 = add <8 x i32> %vec.ind2111, %invariant.op2615
  %.reass2618 = add <8 x i32> %vec.ind2111, %invariant.op2617
  %.reass2620 = add <8 x i32> %vec.ind2111, %invariant.op2619
  %i.dyd = getelementptr inbounds nuw i8, ptr %i.dyb, i64 32
  %i.dye = getelementptr inbounds nuw i8, ptr %i.dyb, i64 64
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dyb, i64 96
  store <8 x i32> %i.dyc, ptr %i.dyb, align 4, !tbaa !3
  store <8 x i32> %.reass2616, ptr %i.dyd, align 4, !tbaa !3
  store <8 x i32> %.reass2618, ptr %i.dye, align 4, !tbaa !3
  store <8 x i32> %.reass2620, ptr %i.dyf, align 4, !tbaa !3
  %i.dyg = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dya ; 4 uses
  %i.dyh = add <8 x i32> %broadcast.splat2106, %vec.ind2112
  %.reass2622 = add <8 x i32> %vec.ind2112, %invariant.op2621
  %.reass2624 = add <8 x i32> %vec.ind2112, %invariant.op2623
  %.reass2626 = add <8 x i32> %vec.ind2112, %invariant.op2625
  %i.dyi = getelementptr inbounds nuw i8, ptr %i.dyg, i64 32
  %i.dyj = getelementptr inbounds nuw i8, ptr %i.dyg, i64 64
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyg, i64 96
  store <8 x i32> %i.dyh, ptr %i.dyg, align 4, !tbaa !3
  store <8 x i32> %.reass2622, ptr %i.dyi, align 4, !tbaa !3
  store <8 x i32> %.reass2624, ptr %i.dyj, align 4, !tbaa !3
  store <8 x i32> %.reass2626, ptr %i.dyk, align 4, !tbaa !3
  %index.next2119 = add nuw i64 %index2110, 32    ; 2 uses
  %vec.ind.next2120 = add <8 x i32> %vec.ind2111, splat (i32 32)
  %vec.ind.next2121 = add <8 x i32> %vec.ind2112, splat (i32 32)
  %i.dyl = icmp eq i64 %index.next2119, %n.vec2104
  br i1 %i.dyl, label %middle.block2122, label %vector.body2109, !llvm.loop !483

middle.block2122:                                 ; preds = %vector.body2109
  %cmp.n2123 = icmp eq i64 %n.vec2104, %i.dxz
  br i1 %cmp.n2123, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2127

vec.epilog.iter.check2127:                        ; preds = %middle.block2122
  %min.epilog.iters.check2128 = icmp eq i64 %n.mod.vf2103, 0
  br i1 %min.epilog.iters.check2128, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2129, !prof !472

vec.epilog.ph2129:                                ; preds = %vector.main.loop.iter.check2100, %vec.epilog.iter.check2127
  %vec.epilog.resume.val2124 = phi i64 [ %n.vec2104, %vec.epilog.iter.check2127 ], [ 0, %vector.main.loop.iter.check2100 ] ; 2 uses
  %n.vec2131 = and i64 %i.dxz, 2147483644         ; 3 uses
  %broadcast.splatinsert2132 = insertelement <4 x i32> poison, i32 %i.dxt, i64 0
  %broadcast.splat2133 = shufflevector <4 x i32> %broadcast.splatinsert2132, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2134 = insertelement <4 x i32> poison, i32 %i.dxx, i64 0
  %broadcast.splat2135 = shufflevector <4 x i32> %broadcast.splatinsert2134, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dym = trunc nuw nsw i64 %vec.epilog.resume.val2124 to i32
  %broadcast.splatinsert2136 = insertelement <4 x i32> poison, i32 %i.dym, i64 0
  %broadcast.splat2137 = shufflevector <4 x i32> %broadcast.splatinsert2136, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2138 = or disjoint <4 x i32> %broadcast.splat2137, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2139

vec.epilog.vector.body2139:                       ; preds = %vec.epilog.vector.body2139, %vec.epilog.ph2129
  %index2140 = phi i64 [ %vec.epilog.resume.val2124, %vec.epilog.ph2129 ], [ %index.next2143, %vec.epilog.vector.body2139 ] ; 2 uses
  %vec.ind2141 = phi <4 x i32> [ %induction2138, %vec.epilog.ph2129 ], [ %vec.ind.next2144, %vec.epilog.vector.body2139 ] ; 2 uses
  %vec.ind2142 = phi <4 x i32> [ %induction2138, %vec.epilog.ph2129 ], [ %vec.ind.next2145, %vec.epilog.vector.body2139 ] ; 2 uses
  %i.dyn = add nsw i64 %index2140, %i.dxy         ; 2 uses
  %i.dyo = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dyn
  %i.dyp = add <4 x i32> %broadcast.splat2135, %vec.ind2141
  store <4 x i32> %i.dyp, ptr %i.dyo, align 4, !tbaa !3
  %i.dyq = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dyn
  %i.dyr = add <4 x i32> %broadcast.splat2133, %vec.ind2142
  store <4 x i32> %i.dyr, ptr %i.dyq, align 4, !tbaa !3
  %index.next2143 = add nuw i64 %index2140, 4     ; 2 uses
  %vec.ind.next2144 = add <4 x i32> %vec.ind2141, splat (i32 4)
  %vec.ind.next2145 = add <4 x i32> %vec.ind2142, splat (i32 4)
  %i.dys = icmp eq i64 %index.next2143, %n.vec2131
  br i1 %i.dys, label %vec.epilog.middle.block2146, label %vec.epilog.vector.body2139, !llvm.loop !484

vec.epilog.middle.block2146:                      ; preds = %vec.epilog.vector.body2139
  %cmp.n2147 = icmp eq i64 %n.vec2131, %i.dxz
  br i1 %cmp.n2147, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2125, %vec.epilog.iter.check2127, %vec.epilog.middle.block2146
  %indvars.iv1449.ph = phi i64 [ 0, %iter.check2125 ], [ %n.vec2104, %vec.epilog.iter.check2127 ], [ %n.vec2131, %vec.epilog.middle.block2146 ] ; 6 uses
  %xtraiter2505 = and i64 %i.dxz, 1
  %lcmp.mod2506.not = icmp eq i64 %xtraiter2505, 0
  br i1 %lcmp.mod2506.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dyt = add nsw i64 %indvars.iv1449.ph, %i.dxy ; 2 uses
  %i.dyu = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dyt
  %i.dyv = trunc nuw nsw i64 %indvars.iv1449.ph to i32
  %i.dyw = add i32 %i.dxx, %i.dyv
  store i32 %i.dyw, ptr %i.dyu, align 4, !tbaa !3
  %i.dyx = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dyt
  %i.dyy = trunc nuw nsw i64 %indvars.iv1449.ph to i32
  %i.dyz = add i32 %i.dxt, %i.dyy
  store i32 %i.dyz, ptr %i.dyx, align 4, !tbaa !3
  %indvars.iv.next1450.prol = or disjoint i64 %indvars.iv1449.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1449.unr = phi i64 [ %indvars.iv1449.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1450.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dza = add nsw i64 %i.dxz, -1
  %i.dzb = icmp eq i64 %indvars.iv1449.ph, %i.dza
  br i1 %i.dzb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1449 = phi i64 [ %indvars.iv.next1450.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1449.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dzc = add nsw i64 %indvars.iv1449, %i.dxy    ; 2 uses
  %i.dzd = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dzc
  %i.dze = trunc i64 %indvars.iv1449 to i32
  %i.dzf = add i32 %i.dxx, %i.dze
  store i32 %i.dzf, ptr %i.dzd, align 4, !tbaa !3
  %i.dzg = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dzc
  %i.dzh = trunc i64 %indvars.iv1449 to i32
  %i.dzi = add i32 %i.dxt, %i.dzh
  store i32 %i.dzi, ptr %i.dzg, align 4, !tbaa !3
  %indvars.iv.next1450 = add nuw nsw i64 %indvars.iv1449, 1 ; 3 uses
  %i.dzj = add nsw i64 %indvars.iv.next1450, %i.dxy ; 2 uses
  %i.dzk = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.dzj
  %i.dzl = trunc i64 %indvars.iv.next1450 to i32
  %i.dzm = add i32 %i.dxx, %i.dzl
  store i32 %i.dzm, ptr %i.dzk, align 4, !tbaa !3
  %i.dzn = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.dzj
  %i.dzo = trunc i64 %indvars.iv.next1450 to i32
  %i.dzp = add i32 %i.dxt, %i.dzo
  store i32 %i.dzp, ptr %i.dzn, align 4, !tbaa !3
  %indvars.iv.next1450.1 = add nuw nsw i64 %indvars.iv1449, 2 ; 2 uses
  %exitcond.not.i.i50.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1450.1, %i.dxz
  br i1 %exitcond.not.i.i50.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !485

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i: ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i, %middle.block2122, %vec.epilog.middle.block2146, %bb.xu
  %i.dzq = add nsw i32 %i.dxl, %.6                ; 2 uses
  %i.dzr = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.dzs = icmp ult i64 %i.dzr, %i.dxb
  br i1 %i.dzs, label %bb.xu, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !486

bb.xv:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %.lr.ph.i.i.i.i.i852
  %.7 = phi i32 [ %.2, %.lr.ph.i.i.i.i.i852 ], [ %i.ecd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %.01523.i.i.i.i.i = phi i64 [ %i.dwu, %.lr.ph.i.i.i.i.i852 ], [ %i.ecf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %i.dzt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %157 = trunc nuw nsw i64 %i.dzt to i32
  %158 = or disjoint i32 %i.dwv, %157
  %159 = sext i32 %158 to i64                     ; 4 uses
  %i.dzu = getelementptr inbounds [4 x i8], ptr %i.dwj, i64 %159 ; 2 uses
  %i.dzv = load i32, ptr %i.dzu, align 4, !tbaa !3
  %i.dzw = sext i32 %i.dzv to i64
  %i.dzx = getelementptr inbounds [4 x i8], ptr %i.dww, i64 %i.dzw
  %i.dzy = load i32, ptr %i.dzx, align 4, !tbaa !3 ; 6 uses
  %i.dzz = getelementptr inbounds [4 x i8], ptr %i.djo, i64 %159
  store i32 %.7, ptr %i.dzz, align 4, !tbaa !3
  %i.eaa = getelementptr inbounds [4 x i8], ptr %i.djz, i64 %159
  store i32 %i.dzy, ptr %i.eaa, align 4, !tbaa !3
  %i.eab = icmp sgt i32 %i.dzy, 0
  br i1 %i.eab, label %iter.check2073, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i

iter.check2073:                                   ; preds = %bb.xv
  %i.eac = getelementptr inbounds [4 x i8], ptr %i.dwn, i64 %159
  %i.ead = load i32, ptr %i.eac, align 4, !tbaa !3
  %i.eae = sext i32 %i.ead to i64
  %i.eaf = getelementptr inbounds [4 x i8], ptr %i.dwy, i64 %i.eae
  %i.eag = load i32, ptr %i.eaf, align 4, !tbaa !3 ; 5 uses
  %i.eah = load i32, ptr %i.dzu, align 4, !tbaa !3
  %i.eai = sext i32 %i.eah to i64
  %i.eaj = getelementptr inbounds [4 x i8], ptr %i.dwx, i64 %i.eai
  %i.eak = load i32, ptr %i.eaj, align 4, !tbaa !3 ; 5 uses
  %i.eal = sext i32 %.7 to i64                    ; 5 uses
  %i.eam = zext nneg i32 %i.dzy to i64            ; 8 uses
  %min.iters.check2047 = icmp ult i32 %i.dzy, 4
  %or.cond2390 = select i1 %min.iters.check2047, i1 true, i1 %diff.check2046
  br i1 %or.cond2390, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2048

vector.main.loop.iter.check2048:                  ; preds = %iter.check2073
  %min.iters.check2049 = icmp ult i32 %i.dzy, 32
  br i1 %min.iters.check2049, label %vec.epilog.ph2077, label %vector.ph2050

vector.ph2050:                                    ; preds = %vector.main.loop.iter.check2048
  %n.mod.vf2051 = and i64 %i.eam, 28
  %n.vec2052 = and i64 %i.eam, 2147483616         ; 4 uses
  %broadcast.splatinsert2053 = insertelement <8 x i32> poison, i32 %i.eag, i64 0
  %broadcast.splat2054 = shufflevector <8 x i32> %broadcast.splatinsert2053, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2055 = insertelement <8 x i32> poison, i32 %i.eak, i64 0
  %broadcast.splat2056 = shufflevector <8 x i32> %broadcast.splatinsert2055, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2627 = add <8 x i32> splat (i32 8), %broadcast.splat2056
  %invariant.op2629 = add <8 x i32> splat (i32 16), %broadcast.splat2056
  %invariant.op2631 = add <8 x i32> splat (i32 24), %broadcast.splat2056
  %invariant.op2633 = add <8 x i32> splat (i32 8), %broadcast.splat2054
  %invariant.op2635 = add <8 x i32> splat (i32 16), %broadcast.splat2054
  %invariant.op2637 = add <8 x i32> splat (i32 24), %broadcast.splat2054
  br label %vector.body2057

vector.body2057:                                  ; preds = %vector.body2057, %vector.ph2050
  %index2058 = phi i64 [ 0, %vector.ph2050 ], [ %index.next2067, %vector.body2057 ] ; 2 uses
  %vec.ind2059 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2050 ], [ %vec.ind.next2068, %vector.body2057 ] ; 5 uses
  %vec.ind2060 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2050 ], [ %vec.ind.next2069, %vector.body2057 ] ; 5 uses
  %i.ean = add nsw i64 %index2058, %i.eal         ; 2 uses
  %i.eao = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ean ; 4 uses
  %i.eap = add <8 x i32> %broadcast.splat2056, %vec.ind2059
  %.reass2628 = add <8 x i32> %vec.ind2059, %invariant.op2627
  %.reass2630 = add <8 x i32> %vec.ind2059, %invariant.op2629
  %.reass2632 = add <8 x i32> %vec.ind2059, %invariant.op2631
  %i.eaq = getelementptr inbounds nuw i8, ptr %i.eao, i64 32
  %i.ear = getelementptr inbounds nuw i8, ptr %i.eao, i64 64
  %i.eas = getelementptr inbounds nuw i8, ptr %i.eao, i64 96
  store <8 x i32> %i.eap, ptr %i.eao, align 4, !tbaa !3
  store <8 x i32> %.reass2628, ptr %i.eaq, align 4, !tbaa !3
  store <8 x i32> %.reass2630, ptr %i.ear, align 4, !tbaa !3
  store <8 x i32> %.reass2632, ptr %i.eas, align 4, !tbaa !3
  %i.eat = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.ean ; 4 uses
  %i.eau = add <8 x i32> %broadcast.splat2054, %vec.ind2060
  %.reass2634 = add <8 x i32> %vec.ind2060, %invariant.op2633
  %.reass2636 = add <8 x i32> %vec.ind2060, %invariant.op2635
  %.reass2638 = add <8 x i32> %vec.ind2060, %invariant.op2637
  %i.eav = getelementptr inbounds nuw i8, ptr %i.eat, i64 32
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.eat, i64 64
  %i.eax = getelementptr inbounds nuw i8, ptr %i.eat, i64 96
  store <8 x i32> %i.eau, ptr %i.eat, align 4, !tbaa !3
  store <8 x i32> %.reass2634, ptr %i.eav, align 4, !tbaa !3
  store <8 x i32> %.reass2636, ptr %i.eaw, align 4, !tbaa !3
  store <8 x i32> %.reass2638, ptr %i.eax, align 4, !tbaa !3
  %index.next2067 = add nuw i64 %index2058, 32    ; 2 uses
  %vec.ind.next2068 = add <8 x i32> %vec.ind2059, splat (i32 32)
  %vec.ind.next2069 = add <8 x i32> %vec.ind2060, splat (i32 32)
  %i.eay = icmp eq i64 %index.next2067, %n.vec2052
  br i1 %i.eay, label %middle.block2070, label %vector.body2057, !llvm.loop !487

middle.block2070:                                 ; preds = %vector.body2057
  %cmp.n2071 = icmp eq i64 %n.vec2052, %i.eam
  br i1 %cmp.n2071, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2075

vec.epilog.iter.check2075:                        ; preds = %middle.block2070
  %min.epilog.iters.check2076 = icmp eq i64 %n.mod.vf2051, 0
  br i1 %min.epilog.iters.check2076, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2077, !prof !472

vec.epilog.ph2077:                                ; preds = %vector.main.loop.iter.check2048, %vec.epilog.iter.check2075
  %vec.epilog.resume.val2072 = phi i64 [ %n.vec2052, %vec.epilog.iter.check2075 ], [ 0, %vector.main.loop.iter.check2048 ] ; 2 uses
  %n.vec2079 = and i64 %i.eam, 2147483644         ; 3 uses
  %broadcast.splatinsert2080 = insertelement <4 x i32> poison, i32 %i.eag, i64 0
  %broadcast.splat2081 = shufflevector <4 x i32> %broadcast.splatinsert2080, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2082 = insertelement <4 x i32> poison, i32 %i.eak, i64 0
  %broadcast.splat2083 = shufflevector <4 x i32> %broadcast.splatinsert2082, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eaz = trunc nuw nsw i64 %vec.epilog.resume.val2072 to i32
  %broadcast.splatinsert2084 = insertelement <4 x i32> poison, i32 %i.eaz, i64 0
  %broadcast.splat2085 = shufflevector <4 x i32> %broadcast.splatinsert2084, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2086 = or disjoint <4 x i32> %broadcast.splat2085, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2087

vec.epilog.vector.body2087:                       ; preds = %vec.epilog.vector.body2087, %vec.epilog.ph2077
  %index2088 = phi i64 [ %vec.epilog.resume.val2072, %vec.epilog.ph2077 ], [ %index.next2091, %vec.epilog.vector.body2087 ] ; 2 uses
  %vec.ind2089 = phi <4 x i32> [ %induction2086, %vec.epilog.ph2077 ], [ %vec.ind.next2092, %vec.epilog.vector.body2087 ] ; 2 uses
  %vec.ind2090 = phi <4 x i32> [ %induction2086, %vec.epilog.ph2077 ], [ %vec.ind.next2093, %vec.epilog.vector.body2087 ] ; 2 uses
  %i.eba = add nsw i64 %index2088, %i.eal         ; 2 uses
  %i.ebb = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eba
  %i.ebc = add <4 x i32> %broadcast.splat2083, %vec.ind2089
  store <4 x i32> %i.ebc, ptr %i.ebb, align 4, !tbaa !3
  %i.ebd = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.eba
  %i.ebe = add <4 x i32> %broadcast.splat2081, %vec.ind2090
  store <4 x i32> %i.ebe, ptr %i.ebd, align 4, !tbaa !3
  %index.next2091 = add nuw i64 %index2088, 4     ; 2 uses
  %vec.ind.next2092 = add <4 x i32> %vec.ind2089, splat (i32 4)
  %vec.ind.next2093 = add <4 x i32> %vec.ind2090, splat (i32 4)
  %i.ebf = icmp eq i64 %index.next2091, %n.vec2079
  br i1 %i.ebf, label %vec.epilog.middle.block2094, label %vec.epilog.vector.body2087, !llvm.loop !488

vec.epilog.middle.block2094:                      ; preds = %vec.epilog.vector.body2087
  %cmp.n2095 = icmp eq i64 %n.vec2079, %i.eam
  br i1 %cmp.n2095, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2073, %vec.epilog.iter.check2075, %vec.epilog.middle.block2094
  %indvars.iv1452.ph = phi i64 [ 0, %iter.check2073 ], [ %n.vec2052, %vec.epilog.iter.check2075 ], [ %n.vec2079, %vec.epilog.middle.block2094 ] ; 6 uses
  %xtraiter2507 = and i64 %i.eam, 1
  %lcmp.mod2508.not = icmp eq i64 %xtraiter2507, 0
  br i1 %lcmp.mod2508.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.ebg = add nsw i64 %indvars.iv1452.ph, %i.eal ; 2 uses
  %i.ebh = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ebg
  %i.ebi = trunc nuw nsw i64 %indvars.iv1452.ph to i32
  %i.ebj = add i32 %i.eak, %i.ebi
  store i32 %i.ebj, ptr %i.ebh, align 4, !tbaa !3
  %i.ebk = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.ebg
  %i.ebl = trunc nuw nsw i64 %indvars.iv1452.ph to i32
  %i.ebm = add i32 %i.eag, %i.ebl
  store i32 %i.ebm, ptr %i.ebk, align 4, !tbaa !3
  %indvars.iv.next1453.prol = or disjoint i64 %indvars.iv1452.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1452.unr = phi i64 [ %indvars.iv1452.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1453.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.ebn = add nsw i64 %i.eam, -1
  %i.ebo = icmp eq i64 %indvars.iv1452.ph, %i.ebn
  br i1 %i.ebo, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1452 = phi i64 [ %indvars.iv.next1453.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1452.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ebp = add nsw i64 %indvars.iv1452, %i.eal    ; 2 uses
  %i.ebq = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ebp
  %i.ebr = trunc i64 %indvars.iv1452 to i32
  %i.ebs = add i32 %i.eak, %i.ebr
  store i32 %i.ebs, ptr %i.ebq, align 4, !tbaa !3
  %i.ebt = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.ebp
  %i.ebu = trunc i64 %indvars.iv1452 to i32
  %i.ebv = add i32 %i.eag, %i.ebu
  store i32 %i.ebv, ptr %i.ebt, align 4, !tbaa !3
  %indvars.iv.next1453 = add nuw nsw i64 %indvars.iv1452, 1 ; 3 uses
  %i.ebw = add nsw i64 %indvars.iv.next1453, %i.eal ; 2 uses
  %i.ebx = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.ebw
  %i.eby = trunc i64 %indvars.iv.next1453 to i32
  %i.ebz = add i32 %i.eak, %i.eby
  store i32 %i.ebz, ptr %i.ebx, align 4, !tbaa !3
  %i.eca = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.ebw
  %i.ecb = trunc i64 %indvars.iv.next1453 to i32
  %i.ecc = add i32 %i.eag, %i.ecb
  store i32 %i.ecc, ptr %i.eca, align 4, !tbaa !3
  %indvars.iv.next1453.1 = add nuw nsw i64 %indvars.iv1452, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1453.1, %i.eam
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !489

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2070, %vec.epilog.middle.block2094, %bb.xv
  %i.ecd = add nsw i32 %i.dzy, %.7                ; 2 uses
  %i.ece = add i64 %.01523.i.i.i.i.i, -1
  %i.ecf = and i64 %i.ece, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.ecf, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xv, !llvm.loop !490

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xt, %.lr.ph.i.i.i.i845
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i.i845 ], [ %.2, %bb.xt ], [ %i.ecd, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.dzq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.ecg = add nsw i32 %i.dwq, 64                 ; 2 uses
  %.not33.i.i.i.i846 = icmp sgt i32 %i.ecg, %i.dpi
  br i1 %.not33.i.i.i.i846, label %._crit_edge.i.i.i.i847, label %.lr.ph.i.i.i.i845, !llvm.loop !491

bb.xw:                                            ; preds = %._crit_edge.i.i.i.i847
  %i.ech = ashr i32 %i.dpe, 6
  %i.eci = and i32 %i.dpe, 63
  %i.ecj = zext nneg i32 %i.eci to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.ecj
  %i.eck = xor i64 %notmask.i52.i.i.i.i, -1
  %i.ecl = sext i32 %i.ech to i64
  %i.ecm = getelementptr inbounds [8 x i8], ptr %i.dpa, i64 %i.ecl
  %i.ecn = load i64, ptr %i.ecm, align 8, !tbaa !145
  %i.eco = and i64 %i.ecn, %i.eck                 ; 2 uses
  %.not.i53.i.i.i.i849 = icmp eq i64 %i.eco, 0
  br i1 %.not.i53.i.i.i.i849, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xw
  %i.ecp = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.ecq = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecp, i64 120
  %i.ecs = load ptr, ptr %i.ecr, align 8, !tbaa !308
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecp, i64 104
  %i.ecu = load ptr, ptr %i.ect, align 8, !tbaa !306
  %i.ecv = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.ecw = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.ecx = getelementptr inbounds nuw i8, ptr %i.ecv, i64 104
  %i.ecy = load ptr, ptr %i.ecx, align 8, !tbaa !306
  %i.ecz = sub i64 %i.dkk, %i.dku
  %diff.check2150 = icmp ult i64 %i.ecz, 128
  br label %bb.xx

bb.xx:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.5 = phi i32 [ %.4, %.preheader.i54.i.i.i.i ], [ %i.efk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.eco, %.preheader.i54.i.i.i.i ], [ %i.efm, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.eda = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %160 = trunc nuw nsw i64 %i.eda to i32
  %161 = or disjoint i32 %i.dpi, %160
  %162 = sext i32 %161 to i64                     ; 4 uses
  %i.edb = getelementptr inbounds [4 x i8], ptr %i.ecq, i64 %162 ; 2 uses
  %i.edc = load i32, ptr %i.edb, align 4, !tbaa !3
  %i.edd = sext i32 %i.edc to i64
  %i.ede = getelementptr inbounds [4 x i8], ptr %i.ecs, i64 %i.edd
  %i.edf = load i32, ptr %i.ede, align 4, !tbaa !3 ; 6 uses
  %i.edg = getelementptr inbounds [4 x i8], ptr %i.djo, i64 %162
  store i32 %.5, ptr %i.edg, align 4, !tbaa !3
  %i.edh = getelementptr inbounds [4 x i8], ptr %i.djz, i64 %162
  store i32 %i.edf, ptr %i.edh, align 4, !tbaa !3
  %i.edi = icmp sgt i32 %i.edf, 0
  br i1 %i.edi, label %iter.check2177, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2177:                                   ; preds = %bb.xx
  %i.edj = getelementptr inbounds [4 x i8], ptr %i.ecw, i64 %162
  %i.edk = load i32, ptr %i.edj, align 4, !tbaa !3
  %i.edl = sext i32 %i.edk to i64
  %i.edm = getelementptr inbounds [4 x i8], ptr %i.ecy, i64 %i.edl
  %i.edn = load i32, ptr %i.edm, align 4, !tbaa !3 ; 5 uses
  %i.edo = load i32, ptr %i.edb, align 4, !tbaa !3
  %i.edp = sext i32 %i.edo to i64
  %i.edq = getelementptr inbounds [4 x i8], ptr %i.ecu, i64 %i.edp
  %i.edr = load i32, ptr %i.edq, align 4, !tbaa !3 ; 5 uses
  %i.eds = sext i32 %.5 to i64                    ; 5 uses
  %i.edt = zext nneg i32 %i.edf to i64            ; 8 uses
  %min.iters.check2151 = icmp ult i32 %i.edf, 4
  %or.cond2391 = select i1 %min.iters.check2151, i1 true, i1 %diff.check2150
  br i1 %or.cond2391, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2152

vector.main.loop.iter.check2152:                  ; preds = %iter.check2177
  %min.iters.check2153 = icmp ult i32 %i.edf, 32
  br i1 %min.iters.check2153, label %vec.epilog.ph2181, label %vector.ph2154

vector.ph2154:                                    ; preds = %vector.main.loop.iter.check2152
  %n.mod.vf2155 = and i64 %i.edt, 28
  %n.vec2156 = and i64 %i.edt, 2147483616         ; 4 uses
  %broadcast.splatinsert2157 = insertelement <8 x i32> poison, i32 %i.edn, i64 0
  %broadcast.splat2158 = shufflevector <8 x i32> %broadcast.splatinsert2157, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2159 = insertelement <8 x i32> poison, i32 %i.edr, i64 0
  %broadcast.splat2160 = shufflevector <8 x i32> %broadcast.splatinsert2159, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2639 = add <8 x i32> splat (i32 8), %broadcast.splat2160
  %invariant.op2641 = add <8 x i32> splat (i32 16), %broadcast.splat2160
  %invariant.op2643 = add <8 x i32> splat (i32 24), %broadcast.splat2160
  %invariant.op2645 = add <8 x i32> splat (i32 8), %broadcast.splat2158
  %invariant.op2647 = add <8 x i32> splat (i32 16), %broadcast.splat2158
  %invariant.op2649 = add <8 x i32> splat (i32 24), %broadcast.splat2158
  br label %vector.body2161

vector.body2161:                                  ; preds = %vector.body2161, %vector.ph2154
  %index2162 = phi i64 [ 0, %vector.ph2154 ], [ %index.next2171, %vector.body2161 ] ; 2 uses
  %vec.ind2163 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2154 ], [ %vec.ind.next2172, %vector.body2161 ] ; 5 uses
  %vec.ind2164 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2154 ], [ %vec.ind.next2173, %vector.body2161 ] ; 5 uses
  %i.edu = add nsw i64 %index2162, %i.eds         ; 2 uses
  %i.edv = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.edu ; 4 uses
  %i.edw = add <8 x i32> %broadcast.splat2160, %vec.ind2163
  %.reass2640 = add <8 x i32> %vec.ind2163, %invariant.op2639
  %.reass2642 = add <8 x i32> %vec.ind2163, %invariant.op2641
  %.reass2644 = add <8 x i32> %vec.ind2163, %invariant.op2643
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edv, i64 32
  %i.edy = getelementptr inbounds nuw i8, ptr %i.edv, i64 64
  %i.edz = getelementptr inbounds nuw i8, ptr %i.edv, i64 96
  store <8 x i32> %i.edw, ptr %i.edv, align 4, !tbaa !3
  store <8 x i32> %.reass2640, ptr %i.edx, align 4, !tbaa !3
  store <8 x i32> %.reass2642, ptr %i.edy, align 4, !tbaa !3
  store <8 x i32> %.reass2644, ptr %i.edz, align 4, !tbaa !3
  %i.eea = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.edu ; 4 uses
  %i.eeb = add <8 x i32> %broadcast.splat2158, %vec.ind2164
  %.reass2646 = add <8 x i32> %vec.ind2164, %invariant.op2645
  %.reass2648 = add <8 x i32> %vec.ind2164, %invariant.op2647
  %.reass2650 = add <8 x i32> %vec.ind2164, %invariant.op2649
  %i.eec = getelementptr inbounds nuw i8, ptr %i.eea, i64 32
  %i.eed = getelementptr inbounds nuw i8, ptr %i.eea, i64 64
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eea, i64 96
  store <8 x i32> %i.eeb, ptr %i.eea, align 4, !tbaa !3
  store <8 x i32> %.reass2646, ptr %i.eec, align 4, !tbaa !3
  store <8 x i32> %.reass2648, ptr %i.eed, align 4, !tbaa !3
  store <8 x i32> %.reass2650, ptr %i.eee, align 4, !tbaa !3
  %index.next2171 = add nuw i64 %index2162, 32    ; 2 uses
  %vec.ind.next2172 = add <8 x i32> %vec.ind2163, splat (i32 32)
  %vec.ind.next2173 = add <8 x i32> %vec.ind2164, splat (i32 32)
  %i.eef = icmp eq i64 %index.next2171, %n.vec2156
  br i1 %i.eef, label %middle.block2174, label %vector.body2161, !llvm.loop !492

middle.block2174:                                 ; preds = %vector.body2161
  %cmp.n2175 = icmp eq i64 %n.vec2156, %i.edt
  br i1 %cmp.n2175, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2179

vec.epilog.iter.check2179:                        ; preds = %middle.block2174
  %min.epilog.iters.check2180 = icmp eq i64 %n.mod.vf2155, 0
  br i1 %min.epilog.iters.check2180, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2181, !prof !472

vec.epilog.ph2181:                                ; preds = %vector.main.loop.iter.check2152, %vec.epilog.iter.check2179
  %vec.epilog.resume.val2176 = phi i64 [ %n.vec2156, %vec.epilog.iter.check2179 ], [ 0, %vector.main.loop.iter.check2152 ] ; 2 uses
  %n.vec2183 = and i64 %i.edt, 2147483644         ; 3 uses
  %broadcast.splatinsert2184 = insertelement <4 x i32> poison, i32 %i.edn, i64 0
  %broadcast.splat2185 = shufflevector <4 x i32> %broadcast.splatinsert2184, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2186 = insertelement <4 x i32> poison, i32 %i.edr, i64 0
  %broadcast.splat2187 = shufflevector <4 x i32> %broadcast.splatinsert2186, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eeg = trunc nuw nsw i64 %vec.epilog.resume.val2176 to i32
  %broadcast.splatinsert2188 = insertelement <4 x i32> poison, i32 %i.eeg, i64 0
  %broadcast.splat2189 = shufflevector <4 x i32> %broadcast.splatinsert2188, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2190 = or disjoint <4 x i32> %broadcast.splat2189, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2191

vec.epilog.vector.body2191:                       ; preds = %vec.epilog.vector.body2191, %vec.epilog.ph2181
  %index2192 = phi i64 [ %vec.epilog.resume.val2176, %vec.epilog.ph2181 ], [ %index.next2195, %vec.epilog.vector.body2191 ] ; 2 uses
  %vec.ind2193 = phi <4 x i32> [ %induction2190, %vec.epilog.ph2181 ], [ %vec.ind.next2196, %vec.epilog.vector.body2191 ] ; 2 uses
  %vec.ind2194 = phi <4 x i32> [ %induction2190, %vec.epilog.ph2181 ], [ %vec.ind.next2197, %vec.epilog.vector.body2191 ] ; 2 uses
  %i.eeh = add nsw i64 %index2192, %i.eds         ; 2 uses
  %i.eei = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eeh
  %i.eej = add <4 x i32> %broadcast.splat2187, %vec.ind2193
  store <4 x i32> %i.eej, ptr %i.eei, align 4, !tbaa !3
  %i.eek = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.eeh
  %i.eel = add <4 x i32> %broadcast.splat2185, %vec.ind2194
  store <4 x i32> %i.eel, ptr %i.eek, align 4, !tbaa !3
  %index.next2195 = add nuw i64 %index2192, 4     ; 2 uses
  %vec.ind.next2196 = add <4 x i32> %vec.ind2193, splat (i32 4)
  %vec.ind.next2197 = add <4 x i32> %vec.ind2194, splat (i32 4)
  %i.eem = icmp eq i64 %index.next2195, %n.vec2183
  br i1 %i.eem, label %vec.epilog.middle.block2198, label %vec.epilog.vector.body2191, !llvm.loop !493

vec.epilog.middle.block2198:                      ; preds = %vec.epilog.vector.body2191
  %cmp.n2199 = icmp eq i64 %n.vec2183, %i.edt
  br i1 %cmp.n2199, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2177, %vec.epilog.iter.check2179, %vec.epilog.middle.block2198
  %indvars.iv1455.ph = phi i64 [ 0, %iter.check2177 ], [ %n.vec2156, %vec.epilog.iter.check2179 ], [ %n.vec2183, %vec.epilog.middle.block2198 ] ; 6 uses
  %xtraiter2509 = and i64 %i.edt, 1
  %lcmp.mod2510.not = icmp eq i64 %xtraiter2509, 0
  br i1 %lcmp.mod2510.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.een = add nsw i64 %indvars.iv1455.ph, %i.eds ; 2 uses
  %i.eeo = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.een
  %i.eep = trunc nuw nsw i64 %indvars.iv1455.ph to i32
  %i.eeq = add i32 %i.edr, %i.eep
  store i32 %i.eeq, ptr %i.eeo, align 4, !tbaa !3
  %i.eer = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.een
  %i.ees = trunc nuw nsw i64 %indvars.iv1455.ph to i32
  %i.eet = add i32 %i.edn, %i.ees
  store i32 %i.eet, ptr %i.eer, align 4, !tbaa !3
  %indvars.iv.next1456.prol = or disjoint i64 %indvars.iv1455.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1455.unr = phi i64 [ %indvars.iv1455.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1456.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.eeu = add nsw i64 %i.edt, -1
  %i.eev = icmp eq i64 %indvars.iv1455.ph, %i.eeu
  br i1 %i.eev, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1455 = phi i64 [ %indvars.iv.next1456.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1455.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.eew = add nsw i64 %indvars.iv1455, %i.eds    ; 2 uses
  %i.eex = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.eew
  %i.eey = trunc i64 %indvars.iv1455 to i32
  %i.eez = add i32 %i.edr, %i.eey
  store i32 %i.eez, ptr %i.eex, align 4, !tbaa !3
  %i.efa = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.eew
  %i.efb = trunc i64 %indvars.iv1455 to i32
  %i.efc = add i32 %i.edn, %i.efb
  store i32 %i.efc, ptr %i.efa, align 4, !tbaa !3
  %indvars.iv.next1456 = add nuw nsw i64 %indvars.iv1455, 1 ; 3 uses
  %i.efd = add nsw i64 %indvars.iv.next1456, %i.eds ; 2 uses
  %i.efe = getelementptr inbounds [4 x i8], ptr %i.dkt, i64 %i.efd
  %i.eff = trunc i64 %indvars.iv.next1456 to i32
  %i.efg = add i32 %i.edr, %i.eff
  store i32 %i.efg, ptr %i.efe, align 4, !tbaa !3
  %i.efh = getelementptr inbounds [4 x i8], ptr %i.dkj, i64 %i.efd
  %i.efi = trunc i64 %indvars.iv.next1456 to i32
  %i.efj = add i32 %i.edn, %i.efi
  store i32 %i.efj, ptr %i.efh, align 4, !tbaa !3
  %indvars.iv.next1456.1 = add nuw nsw i64 %indvars.iv1455, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1456.1, %i.edt
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !494

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2174, %vec.epilog.middle.block2198, %bb.xx
  %i.efk = add nsw i32 %i.edf, %.5
  %i.efl = add nsw i64 %.011.i56.i.i.i.i, -1
  %i.efm = and i64 %i.efl, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.efm, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xx, !llvm.loop !479

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xw, %._crit_edge.i.i.i.i847, %bb.xo, %bb.xm, %bb.xk
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #23
  store ptr null, ptr %118, align 8, !tbaa !237
  store ptr %i.dko, ptr %119, align 8, !tbaa !237
  %.not.i878 = icmp eq ptr %i.dko, null
  br i1 %.not.i878, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879, label %bb.xy

bb.xy:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.efn = getelementptr inbounds nuw i8, ptr %i.dko, i64 40
  %i.efo = atomicrmw add ptr %i.efn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, %bb.xy
  %i.efp = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.efq = getelementptr inbounds nuw i8, ptr %i.efp, i64 128
  %i.efr = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efp, i64 136
  %i.eft = load ptr, ptr %i.efs, align 8, !tbaa !38 ; 2 uses
  %i.efu = load <2 x ptr>, ptr %i.efq, align 8, !tbaa !41
  store <2 x ptr> %i.efu, ptr %120, align 16, !tbaa !41
  %.not.i.i.i880 = icmp eq ptr %i.eft, null
  br i1 %.not.i.i.i880, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit882, label %bb.xz

bb.xz:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit879
  %i.efv = getelementptr inbounds nuw i8, ptr %i.eft, i64 8 ; 3 uses
  %i.efw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i881 = icmp eq i8 %i.efw, 0
  br i1 %.not.i.i.i.i881, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.efx = load i32, ptr %i.efv, align 4, !tbaa !3
  %i.efy = add nsw i32 %i.efx, 1
  store i32 %i.efy, ptr %i.efv, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !992
  %i.ali = load ptr, ptr %98, align 8, !tbaa !237 ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 44
  %i.alk = load i8, ptr %i.alj, align 4, !tbaa !384
  %i.all = and i8 %i.alk, 2
  %.not.i379 = icmp eq i8 %i.all, 0
  br i1 %.not.i379, label %bb.km, label %bb.kl, !prof !78

bb.kl:                                            ; preds = %bb.kk
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc380 unwind label %bb.ou

.noexc380:                                        ; preds = %bb.kl
  unreachable

bb.km:                                            ; preds = %bb.kk
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 16
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !385 ; 6 uses
  %i.alo = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 36 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alo, i64 37
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !263, !range !82, !noundef !83
  %i.als = trunc nuw i8 %i.alr to i1
  br i1 %i.als, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.kn

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.km
  %.0.in.pre.i.i = load i8, ptr %i.alp, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.kn:                                            ; preds = %bb.km
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alo, i64 28
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !312
  %i.alv = icmp eq i32 %i.alu, 0
  br i1 %i.alv, label %bb.ko, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.ko:                                            ; preds = %bb.kn
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !196 ; 6 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !313
  %i.ama = icmp eq i32 %i.alx, %i.alz
  br i1 %i.ama, label %bb.kp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.kp:                                            ; preds = %bb.ko
  %i.amb = load ptr, ptr %i.alo, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i389 = icmp sgt i32 %i.alx, 0
  br i1 %.not.i.i.i389, label %bb.kq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.kq:                                            ; preds = %bb.kp
  %i.amc = and i32 %i.alx, 2147483584             ; 3 uses
  %i.amd = zext nneg i32 %i.amc to i64
  %.not37.i.i.not.i.i1911.not = icmp eq i32 %i.amc, 0
  br i1 %.not37.i.i.not.i.i1911.not, label %.critedge.i.i.i.i, label %.lr.ph1913

bb.kr:                                            ; preds = %.lr.ph1913
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i1912, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.amd
  br i1 %.not37.i.i.not.i.i, label %.lr.ph1913, label %.critedge.i.i.i.i, !llvm.loop !315

.lr.ph1913:                                       ; preds = %bb.kq, %bb.kr
  %indvars.iv.i.i1912 = phi i64 [ %indvars.iv.next.i.i, %bb.kr ], [ 0, %bb.kq ] ; 2 uses
  %i.ame = lshr exact i64 %indvars.iv.i.i1912, 3
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amb, i64 %i.ame
  %i.amg = load i64, ptr %i.amf, align 8, !tbaa !145
  %i.amh = icmp eq i64 %i.amg, -1
  br i1 %i.amh, label %bb.kr, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !315

.critedge.i.i.i.i:                                ; preds = %bb.kr, %bb.kq
  %.not38.i.i.i.i = icmp eq i32 %i.alx, %i.amc
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.ks

bb.ks:                                            ; preds = %.critedge.i.i.i.i
  %i.ami = lshr i32 %i.alx, 6
  %i.amj = and i32 %i.alx, 63
  %i.amk = zext nneg i32 %i.amj to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.amk
  %i.aml = zext nneg i32 %i.ami to i64
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.amb, i64 %i.aml
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !145
  %.demorgan.i.i = or i64 %i.amn, %notmask.i40.i.i.i.i
  %i.amo = icmp eq i64 %.demorgan.i.i, -1
  %i.amp = zext i1 %i.amo to i16
  %i.amq = or disjoint i16 %i.amp, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph1913, %bb.ks, %.critedge.i.i.i.i, %bb.kp, %bb.ko, %bb.kn
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.ko ], [ 256, %bb.kn ], [ 257, %bb.kp ], [ 257, %.critedge.i.i.i.i ], [ %i.amq, %bb.ks ], [ 256, %.lr.ph1913 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.alp, align 4
  %i.amr = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.amr, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.kt, label %bb.kw

bb.kt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.amt = load i32, ptr %i.ams, align 8, !tbaa !196 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %i.alo, i64 28
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !312 ; 2 uses
  %i.amw = icmp slt i32 %i.amv, %i.amt
  br i1 %i.amw, label %.lr.ph.i385, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit

.lr.ph.i385:                                      ; preds = %bb.kt
  %i.amx = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.amy = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 104
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !306
  %i.anb = sext i32 %i.amv to i64
  %wide.trip.count.i = sext i32 %i.amt to i64
  %i.anc = load ptr, ptr %93, align 8
  br label %bb.ku

bb.ku:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, %.lr.ph.i385
  %.91171 = phi i32 [ 0, %.lr.ph.i385 ], [ %i.any, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i ] ; 3 uses
  %indvars.iv.i387 = phi i64 [ %i.anb, %.lr.ph.i385 ], [ %indvars.iv.next.i388, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i ] ; 4 uses
  %i.and = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %indvars.iv.i387
  store i32 %.91171, ptr %i.and, align 4, !tbaa !3
  %i.ane = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %indvars.iv.i387
  store i32 %i.ane, ptr %i.anf, align 4, !tbaa !3
  %i.ang = icmp sgt i32 %i.ane, 0
  br i1 %i.ang, label %.lr.ph.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ku
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.amy, i64 %indvars.iv.i387
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !3
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [4 x i8], ptr %i.ana, i64 %i.anj
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !3
  %i.anm = sub i32 %i.anl, %i.xt
  br label %bb.kv

bb.kv:                                            ; preds = %bb.kv, %.lr.ph.i.i
  %indvars.iv.i4.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i5.i, %bb.kv ] ; 3 uses
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.anc, i64 %indvars.iv.i4.i
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !3 ; 2 uses
  %i.anp = trunc nuw nsw i64 %indvars.iv.i4.i to i32
  %i.anq = add nsw i32 %.91171, %i.anp
  %i.anr = sext i32 %i.anq to i64                 ; 2 uses
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.anr
  store i32 %i.ano, ptr %i.ans, align 4, !tbaa !3
  %i.ant = add i32 %i.anm, %i.ano
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.anr
  store i32 %i.ant, ptr %i.anu, align 4, !tbaa !3
  %indvars.iv.next.i5.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 2 uses
  %i.anv = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.anw = sext i32 %i.anv to i64
  %i.anx = icmp slt i64 %indvars.iv.next.i5.i, %i.anw
  br i1 %i.anx, label %bb.kv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i: ; preds = %bb.kv, %bb.ku
  %.lcssa.i.i = phi i32 [ %i.ane, %bb.ku ], [ %i.anv, %bb.kv ]
  %i.any = add nsw i32 %.lcssa.i.i, %.91171
  %indvars.iv.next.i388 = add nsw i64 %indvars.iv.i387, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i388, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.ku, !llvm.loop !996

bb.kw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.anz = load ptr, ptr %i.alo, align 8, !tbaa !314 ; 4 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.alo, i64 28
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !312 ; 6 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.alo, i64 32
  %i.aod = load i32, ptr %i.aoc, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i382 = icmp slt i32 %i.aob, %i.aod
  br i1 %.not.i.i.i.i382, label %bb.kx, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit

bb.kx:                                            ; preds = %bb.kw
  %i.aoe = add i32 %i.aob, 63                     ; 2 uses
  %i.aof = srem i32 %i.aoe, 64
  %i.aog = sub nsw i32 %i.aoe, %i.aof             ; 6 uses
  %i.aoh = and i32 %i.aod, -64                    ; 6 uses
  %i.aoi = icmp slt i32 %i.aoh, %i.aog
  br i1 %i.aoi, label %bb.ky, label %bb.lb

bb.ky:                                            ; preds = %bb.kx
  %i.aoj = ashr i32 %i.aod, 6
  %i.aok = and i32 %i.aod, 63
  %i.aol = zext nneg i32 %i.aok to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.aol
  %i.aom = xor i64 %notmask.i.i.i.i.i, -1
  %i.aon = sub nsw i32 %i.aog, %i.aob             ; 2 uses
  %i.aoo = zext nneg i32 %i.aon to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.aoo
  %i.aop = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.aoq = sub nsw i32 64, %i.aon
  %i.aor = zext nneg i32 %i.aoq to i64
  %i.aos = shl i64 %i.aop, %i.aor
  %i.aot = and i64 %i.aos, %i.aom
  %i.aou = sext i32 %i.aoj to i64
  %i.aov = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.aou
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !145
  %i.aox = and i64 %i.aot, %i.aow                 ; 2 uses
  %.not.i.i.i.i.i383 = icmp eq i64 %i.aox, 0
  br i1 %.not.i.i.i.i.i383, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ky
  %i.aoy = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.aoz = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoy, i64 104
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !306
  %i.apc = load ptr, ptr %93, align 8
  br label %bb.kz

bb.kz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.81170 = phi i32 [ 0, %.preheader.i.i.i.i.i ], [ %i.apz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i = phi i64 [ %i.aox, %.preheader.i.i.i.i.i ], [ %i.aqb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.apd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %124 = trunc nuw nsw i64 %i.apd to i32
  %125 = or disjoint i32 %i.aoh, %124
  %126 = sext i32 %125 to i64                     ; 3 uses
  %i.ape = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %126
  store i32 %.81170, ptr %i.ape, align 4, !tbaa !3
  %i.apf = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %126
  store i32 %i.apf, ptr %i.apg, align 4, !tbaa !3
  %i.aph = icmp sgt i32 %i.apf, 0
  br i1 %i.aph, label %.lr.ph.i.i.i.i.i.i384, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i384:                            ; preds = %bb.kz
  %i.api = getelementptr inbounds [4 x i8], ptr %i.aoz, i64 %126
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !3
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [4 x i8], ptr %i.apb, i64 %i.apk
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !3
  %i.apn = sub i32 %i.apm, %i.xt
  br label %bb.la

bb.la:                                            ; preds = %bb.la, %.lr.ph.i.i.i.i.i.i384
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i384 ], [ %indvars.iv.next.i.i.i.i.i.i, %bb.la ] ; 3 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %indvars.iv.i.i.i.i.i.i
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !3 ; 2 uses
  %i.apq = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.apr = add nsw i32 %.81170, %i.apq
  %i.aps = sext i32 %i.apr to i64                 ; 2 uses
  %i.apt = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.aps
  store i32 %i.app, ptr %i.apt, align 4, !tbaa !3
  %i.apu = add i32 %i.apn, %i.app
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.aps
  store i32 %i.apu, ptr %i.apv, align 4, !tbaa !3
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %i.apw = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.apx = sext i32 %i.apw to i64
  %i.apy = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i, %i.apx
  br i1 %i.apy, label %bb.la, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i: ; preds = %bb.la, %bb.kz
  %.lcssa.i.i.i.i.i.i = phi i32 [ %i.apf, %bb.kz ], [ %i.apw, %bb.la ]
  %i.apz = add nsw i32 %.lcssa.i.i.i.i.i.i, %.81170
  %i.aqa = add nsw i64 %.011.i.i.i.i.i, -1
  %i.aqb = and i64 %i.aqa, %.011.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.aqb, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.kz, !llvm.loop !997

bb.lb:                                            ; preds = %bb.kx
  %.not32.i.i.i.i = icmp eq i32 %i.aob, %i.aog
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aqc = sdiv i32 %i.aob, 64                    ; 2 uses
  %i.aqd = sub nsw i32 %i.aog, %i.aob             ; 2 uses
  %i.aqe = zext nneg i32 %i.aqd to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.aqe
  %i.aqf = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.aqg = sub nsw i32 64, %i.aqd
  %i.aqh = zext nneg i32 %i.aqg to i64
  %i.aqi = shl i64 %i.aqf, %i.aqh
  %i.aqj = sext i32 %i.aqc to i64
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.aqj
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !145
  %i.aqm = and i64 %i.aql, %i.aqi                 ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.aqm, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.lc
  %i.aqn = shl nsw i32 %i.aqc, 6
  %i.aqo = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.aqp = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqo, i64 104
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !306
  %i.aqs = load ptr, ptr %93, align 8
  br label %bb.ld

bb.ld:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i
  %.01162 = phi i32 [ 0, %.preheader.i37.i.i.i.i ], [ %i.arp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i = phi i64 [ %i.aqm, %.preheader.i37.i.i.i.i ], [ %i.arr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.aqt = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i, i1 true)
  %127 = trunc nuw nsw i64 %i.aqt to i32
  %128 = or disjoint i32 %i.aqn, %127
  %129 = sext i32 %128 to i64                     ; 3 uses
  %i.aqu = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %129
  store i32 %.01162, ptr %i.aqu, align 4, !tbaa !3
  %i.aqv = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.aqw = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %129
  store i32 %i.aqv, ptr %i.aqw, align 4, !tbaa !3
  %i.aqx = icmp sgt i32 %i.aqv, 0
  br i1 %i.aqx, label %.lr.ph.i.i43.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i

.lr.ph.i.i43.i.i.i.i:                             ; preds = %bb.ld
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.aqp, i64 %129
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !3
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds [4 x i8], ptr %i.aqr, i64 %i.ara
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !3
  %i.ard = sub i32 %i.arc, %i.xt
  br label %bb.le

bb.le:                                            ; preds = %bb.le, %.lr.ph.i.i43.i.i.i.i
  %indvars.iv.i.i44.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i43.i.i.i.i ], [ %indvars.iv.next.i.i45.i.i.i.i, %bb.le ] ; 3 uses
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv.i.i44.i.i.i.i
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !3 ; 2 uses
  %i.arg = trunc nuw nsw i64 %indvars.iv.i.i44.i.i.i.i to i32
  %i.arh = add nsw i32 %.01162, %i.arg
  %i.ari = sext i32 %i.arh to i64                 ; 2 uses
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.ari
  store i32 %i.arf, ptr %i.arj, align 4, !tbaa !3
  %i.ark = add i32 %i.ard, %i.arf
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.ari
  store i32 %i.ark, ptr %i.arl, align 4, !tbaa !3
  %indvars.iv.next.i.i45.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i44.i.i.i.i, 1 ; 2 uses
  %i.arm = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.arn = sext i32 %i.arm to i64
  %i.aro = icmp slt i64 %indvars.iv.next.i.i45.i.i.i.i, %i.arn
  br i1 %i.aro, label %bb.le, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i: ; preds = %bb.le, %bb.ld
  %.lcssa.i.i41.i.i.i.i = phi i32 [ %i.aqv, %bb.ld ], [ %i.arm, %bb.le ]
  %i.arp = add nsw i32 %.lcssa.i.i41.i.i.i.i, %.01162 ; 2 uses
  %i.arq = add i64 %.011.i39.i.i.i.i, -1
  %i.arr = and i64 %i.arq, %.011.i39.i.i.i.i      ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.arr, 0
  br i1 %.not10.i42.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i, label %bb.ld, !llvm.loop !997

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i, %bb.lc, %bb.lb
  %.11163 = phi i32 [ 0, %bb.lb ], [ 0, %bb.lc ], [ %i.arp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.ars = add nsw i32 %i.aog, 64                 ; 2 uses
  %.not3376.i.i.i.i = icmp sgt i32 %i.ars, %i.aoh
  br i1 %.not3376.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i
  %i.art = load ptr, ptr %i.h, align 8
  %i.aru = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 104 ; 2 uses
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i
  %.41166 = phi i32 [ %.11163, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUlimE_clEim.exit46.i.i.i.i ], [ %.31165, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i = icmp eq i32 %i.aod, %i.aoh
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.lk

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.21164 = phi i32 [ %.31165, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.11163, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %i.arw = phi i32 [ %i.aui, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ars, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.077.i.i.i.i = phi i32 [ %i.arw, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.aog, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.arx = sdiv i32 %.077.i.i.i.i, 64             ; 3 uses
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.ary
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.asa, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.lf
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.asb = shl nsw i32 %i.arx, 6
  %i.asc = load ptr, ptr %i.arv, align 8, !tbaa !306
  %i.asd = load ptr, ptr %93, align 8
  br label %bb.li

bb.lf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ase = shl nsw i32 %i.arx, 6                  ; 2 uses
  %i.asf = add i32 %i.ase, 64
  %i.asg = sext i32 %i.asf to i64
  %.0.off.i.i.i.i = add i32 %.077.i.i.i.i, 127
  %.not29.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not29.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph28.i.i.i.i.i

.lr.ph28.i.i.i.i.i:                               ; preds = %bb.lf
  %i.ash = sext i32 %i.ase to i64
  %i.asi = load ptr, ptr %i.arv, align 8, !tbaa !306
  %i.asj = load ptr, ptr %93, align 8
  br label %bb.lg

bb.lg:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, %.lr.ph28.i.i.i.i.i
  %.61168 = phi i32 [ %.21164, %.lr.ph28.i.i.i.i.i ], [ %i.atg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 3 uses
  %.027.i.i.i.i.i = phi i64 [ %i.ash, %.lr.ph28.i.i.i.i.i ], [ %i.ath, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i = shl i64 %.027.i.i.i.i.i, 32
  %i.ask = ashr exact i64 %sext.i.i.i.i.i, 32     ; 3 uses
  %i.asl = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %i.ask
  store i32 %.61168, ptr %i.asl, align 4, !tbaa !3
  %i.asm = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.asn = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %i.ask
  store i32 %i.asm, ptr %i.asn, align 4, !tbaa !3
  %i.aso = icmp sgt i32 %i.asm, 0
  br i1 %i.aso, label %.lr.ph.i.i50.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i

.lr.ph.i.i50.i.i.i.i:                             ; preds = %bb.lg
  %i.asp = getelementptr inbounds [4 x i8], ptr %i.aru, i64 %i.ask
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !3
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !3
  %i.asu = sub i32 %i.ast, %i.xt
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lh, %.lr.ph.i.i50.i.i.i.i
  %indvars.iv.i.i51.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i50.i.i.i.i ], [ %indvars.iv.next.i.i52.i.i.i.i, %bb.lh ] ; 3 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.asj, i64 %indvars.iv.i.i51.i.i.i.i
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !3 ; 2 uses
  %i.asx = trunc nuw nsw i64 %indvars.iv.i.i51.i.i.i.i to i32
  %i.asy = add nsw i32 %.61168, %i.asx
  %i.asz = sext i32 %i.asy to i64                 ; 2 uses
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.asz
  store i32 %i.asw, ptr %i.ata, align 4, !tbaa !3
  %i.atb = add i32 %i.asu, %i.asw
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.asz
  store i32 %i.atb, ptr %i.atc, align 4, !tbaa !3
  %indvars.iv.next.i.i52.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i51.i.i.i.i, 1 ; 2 uses
  %i.atd = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.ate = sext i32 %i.atd to i64
  %i.atf = icmp slt i64 %indvars.iv.next.i.i52.i.i.i.i, %i.ate
  br i1 %i.atf, label %bb.lh, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i: ; preds = %bb.lh, %bb.lg
  %.lcssa.i.i49.i.i.i.i = phi i32 [ %i.asm, %bb.lg ], [ %i.atd, %bb.lh ]
  %i.atg = add nsw i32 %.lcssa.i.i49.i.i.i.i, %.61168 ; 2 uses
  %i.ath = add nuw i64 %.027.i.i.i.i.i, 1         ; 2 uses
  %i.ati = icmp ult i64 %i.ath, %i.asg
  br i1 %i.ati, label %bb.lg, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !998

bb.li:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.71169 = phi i32 [ %.21164, %.lr.ph.i.i.i.i.i ], [ %i.auf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ] ; 3 uses
  %.01526.i.i.i.i.i = phi i64 [ %i.asa, %.lr.ph.i.i.i.i.i ], [ %i.auh, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ] ; 3 uses
  %i.atj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01526.i.i.i.i.i, i1 true)
  %130 = trunc nuw nsw i64 %i.atj to i32
  %131 = or disjoint i32 %i.asb, %130
  %132 = sext i32 %131 to i64                     ; 3 uses
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %132
  store i32 %.71169, ptr %i.atk, align 4, !tbaa !3
  %i.atl = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.atm = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %132
  store i32 %i.atl, ptr %i.atm, align 4, !tbaa !3
  %i.atn = icmp sgt i32 %i.atl, 0
  br i1 %i.atn, label %.lr.ph.i18.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i

.lr.ph.i18.i.i.i.i.i:                             ; preds = %bb.li
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.aru, i64 %132
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !3
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.atq
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !3
  %i.att = sub i32 %i.ats, %i.xt
  br label %bb.lj

bb.lj:                                            ; preds = %bb.lj, %.lr.ph.i18.i.i.i.i.i
  %indvars.iv.i19.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i18.i.i.i.i.i ], [ %indvars.iv.next.i20.i.i.i.i.i, %bb.lj ] ; 3 uses
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.asd, i64 %indvars.iv.i19.i.i.i.i.i
  %i.atv = load i32, ptr %i.atu, align 4, !tbaa !3 ; 2 uses
  %i.atw = trunc nuw nsw i64 %indvars.iv.i19.i.i.i.i.i to i32
  %i.atx = add nsw i32 %.71169, %i.atw
  %i.aty = sext i32 %i.atx to i64                 ; 2 uses
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.aty
  store i32 %i.atv, ptr %i.atz, align 4, !tbaa !3
  %i.aua = add i32 %i.att, %i.atv
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.aty
  store i32 %i.aua, ptr %i.aub, align 4, !tbaa !3
  %indvars.iv.next.i20.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i.i.i.i, 1 ; 2 uses
  %i.auc = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.aud = sext i32 %i.auc to i64
  %i.aue = icmp slt i64 %indvars.iv.next.i20.i.i.i.i.i, %i.aud
  br i1 %i.aue, label %bb.lj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i: ; preds = %bb.lj, %bb.li
  %.lcssa.i17.i.i.i.i.i = phi i32 [ %i.atl, %bb.li ], [ %i.auc, %bb.lj ]
  %i.auf = add nsw i32 %.lcssa.i17.i.i.i.i.i, %.71169 ; 2 uses
  %i.aug = add i64 %.01526.i.i.i.i.i, -1
  %i.auh = and i64 %i.aug, %.01526.i.i.i.i.i      ; 2 uses
  %.not.i53.i.i.i.i = icmp eq i64 %i.auh, 0
  br i1 %.not.i53.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.li, !llvm.loop !999

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE0_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i, %bb.lf, %.lr.ph.i.i.i.i
  %.31165 = phi i32 [ %.21164, %.lr.ph.i.i.i.i ], [ %.21164, %bb.lf ], [ %i.auf, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit21.i.i.i.i.i ], [ %i.atg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i48.i.i.i.i ] ; 2 uses
  %i.aui = add nsw i32 %i.arw, 64                 ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.aui, %i.aoh
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1000

bb.lk:                                            ; preds = %._crit_edge.i.i.i.i
  %i.auj = ashr i32 %i.aod, 6
  %i.auk = and i32 %i.aod, 63
  %i.aul = zext nneg i32 %i.auk to i64
  %notmask.i54.i.i.i.i = shl nsw i64 -1, %i.aul
  %i.aum = xor i64 %notmask.i54.i.i.i.i, -1
  %i.aun = sext i32 %i.auj to i64
  %i.auo = getelementptr inbounds [8 x i8], ptr %i.anz, i64 %i.aun
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !145
  %i.auq = and i64 %i.aup, %i.aum                 ; 2 uses
  %.not.i55.i.i.i.i = icmp eq i64 %i.auq, 0
  br i1 %.not.i55.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %.preheader.i56.i.i.i.i

.preheader.i56.i.i.i.i:                           ; preds = %bb.lk
  %i.aur = load ptr, ptr %i.h, align 8, !tbaa !310
  %i.aus = load ptr, ptr %i.g, align 8, !tbaa !342
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aur, i64 104
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !306
  %i.auv = load ptr, ptr %93, align 8
  br label %bb.ll

bb.ll:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, %.preheader.i56.i.i.i.i
  %.51167 = phi i32 [ %.41166, %.preheader.i56.i.i.i.i ], [ %i.avs, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i ] ; 3 uses
  %.011.i58.i.i.i.i = phi i64 [ %i.auq, %.preheader.i56.i.i.i.i ], [ %i.avu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i ] ; 3 uses
  %i.auw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i58.i.i.i.i, i1 true)
  %133 = trunc nuw nsw i64 %i.auw to i32
  %134 = or disjoint i32 %i.aoh, %133
  %135 = sext i32 %134 to i64                     ; 3 uses
  %i.aux = getelementptr inbounds [4 x i8], ptr %i.akj, i64 %135
  store i32 %.51167, ptr %i.aux, align 4, !tbaa !3
  %i.auy = load i32, ptr %i.i, align 4, !tbaa !3  ; 3 uses
  %i.auz = getelementptr inbounds [4 x i8], ptr %i.aku, i64 %135
  store i32 %i.auy, ptr %i.auz, align 4, !tbaa !3
  %i.ava = icmp sgt i32 %i.auy, 0
  br i1 %i.ava, label %.lr.ph.i.i62.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i

.lr.ph.i.i62.i.i.i.i:                             ; preds = %bb.ll
  %i.avb = getelementptr inbounds [4 x i8], ptr %i.aus, i64 %135
  %i.avc = load i32, ptr %i.avb, align 4, !tbaa !3
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.auu, i64 %i.avd
  %i.avf = load i32, ptr %i.ave, align 4, !tbaa !3
  %i.avg = sub i32 %i.avf, %i.xt
  br label %bb.lm

bb.lm:                                            ; preds = %bb.lm, %.lr.ph.i.i62.i.i.i.i
  %indvars.iv.i.i63.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i62.i.i.i.i ], [ %indvars.iv.next.i.i64.i.i.i.i, %bb.lm ] ; 3 uses
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.auv, i64 %indvars.iv.i.i63.i.i.i.i
  %i.avi = load i32, ptr %i.avh, align 4, !tbaa !3 ; 2 uses
  %i.avj = trunc nuw nsw i64 %indvars.iv.i.i63.i.i.i.i to i32
  %i.avk = add nsw i32 %.51167, %i.avj
  %i.avl = sext i32 %i.avk to i64                 ; 2 uses
  %i.avm = getelementptr inbounds [4 x i8], ptr %i.ale, i64 %i.avl
  store i32 %i.avi, ptr %i.avm, align 4, !tbaa !3
  %i.avn = add i32 %i.avg, %i.avi
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.aln, i64 %i.avl
  store i32 %i.avn, ptr %i.avo, align 4, !tbaa !3
  %indvars.iv.next.i.i64.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i63.i.i.i.i, 1 ; 2 uses
  %i.avp = load i32, ptr %i.i, align 4, !tbaa !3  ; 2 uses
  %i.avq = sext i32 %i.avp to i64
  %i.avr = icmp slt i64 %indvars.iv.next.i.i64.i.i.i.i, %i.avq
  br i1 %i.avr, label %bb.lm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, !llvm.loop !995

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i: ; preds = %bb.lm, %bb.ll
  %.lcssa.i.i60.i.i.i.i = phi i32 [ %i.auy, %bb.ll ], [ %i.avp, %bb.lm ]
  %i.avs = add nsw i32 %.lcssa.i.i60.i.i.i.i, %.51167
  %i.avt = add nsw i64 %.011.i58.i.i.i.i, -1
  %i.avu = and i64 %i.avt, %.011.i58.i.i.i.i      ; 2 uses
  %.not10.i61.i.i.i.i = icmp eq i64 %i.avu, 0
  br i1 %.not10.i61.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, label %bb.ll, !llvm.loop !997

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i59.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE0_clEi.exit.i, %bb.lk, %._crit_edge.i.i.i.i, %bb.ky, %bb.kw, %bb.kt
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #23
  store ptr null, ptr %100, align 8, !tbaa !237
  %i.avv = load ptr, ptr %97, align 8, !tbaa !237 ; 3 uses
  store ptr %i.avv, ptr %101, align 8, !tbaa !237
  %.not.i390 = icmp eq ptr %i.avv, null
  br i1 %.not.i390, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, label %bb.ln

bb.ln:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 40
  %i.avx = atomicrmw add ptr %i.avw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE0_EEvT_.exit, %bb.ln
  %i.avy = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.avz = load ptr, ptr %i.xh, align 8, !tbaa !38 ; 2 uses
  %i.awa = load <2 x ptr>, ptr %i.xf, align 8, !tbaa !41
  store <2 x ptr> %i.awa, ptr %102, align 16, !tbaa !41
  %.not.i.i.i391 = icmp eq ptr %i.avz, null
  br i1 %.not.i.i.i391, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit393, label %bb.lo

bb.lo:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avz, i64 8 ; 3 uses
  %i.awc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i392 = icmp eq i8 %i.awc, 0
  br i1 %.not.i.i.i.i392, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.awd = load i32, ptr %i.awb, align 4, !tbaa !3
  %i.awe = add nsw i32 %i.awd, 1
  store i32 %i.awe, ptr %i.awb, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit393

bb.lq:                                            ; preds = %bb.lo
  %i.awf = atomicrmw volatile add ptr %i.awb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit393

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit393: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit, %bb.lp, %bb.lq
  invoke void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %99, ptr noundef nonnull %100, ptr noundef nonnull %101, i32 noundef %i.ajx, ptr noundef nonnull %102, i1 noundef zeroext false)
          to label %bb.lr unwind label %bb.ov

bb.lr:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit393
  %i.awg = load ptr, ptr %i.avy, align 8, !tbaa !38 ; 8 uses
  %.not.i.i394 = icmp eq ptr %i.awg, null
  br i1 %.not.i.i394, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 8 ; 4 uses
  %i.awi = load atomic i64, ptr %i.awh acquire, align 8 ; 2 uses
  %i.awj = icmp eq i64 %i.awi, 4294967297
  %i.awk = trunc i64 %i.awi to i32                ; 2 uses
  br i1 %i.awj, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  store i32 0, ptr %i.awh, align 8, !tbaa !43
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awg, i64 12
  store i32 0, ptr %i.awl, align 4, !tbaa !45
  %i.awm = load ptr, ptr %i.awg, align 8, !tbaa !46
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 16
  %i.awo = load ptr, ptr %i.awn, align 8
  call void %i.awo(ptr noundef nonnull align 8 dereferenceable(16) %i.awg) #23, !inline_history !236
  %i.awp = load ptr, ptr %i.awg, align 8, !tbaa !46
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 24
  %i.awr = load ptr, ptr %i.awq, align 8
  call void %i.awr(ptr noundef nonnull align 8 dereferenceable(16) %i.awg) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398

bb.lu:                                            ; preds = %bb.ls
  %i.aws = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i395 = icmp eq i8 %i.aws, 0
  br i1 %.not.i.i.i395, label %bb.lw, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.awt = add nsw i32 %i.awk, -1
  store i32 %i.awt, ptr %i.awh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

bb.lw:                                            ; preds = %bb.lu
  %i.awu = atomicrmw volatile add ptr %i.awh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396: ; preds = %bb.lw, %bb.lv
  %.0.i.i.i.i397 = phi i32 [ %i.awk, %bb.lv ], [ %i.awu, %bb.lw ]
  %i.awv = icmp eq i32 %.0.i.i.i.i397, 1
  br i1 %i.awv, label %bb.lx, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398, !prof !49

bb.lx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awg) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398: ; preds = %bb.lr, %bb.lt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i396, %bb.lx
  %i.aww = load ptr, ptr %101, align 8, !tbaa !237 ; 7 uses
  %.not.i399 = icmp eq ptr %i.aww, null
  br i1 %.not.i399, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404, label %bb.ly

bb.ly:                                            ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 40
  %i.awy = atomicrmw sub ptr %i.awx, i32 1 acq_rel, align 4
  %i.awz = icmp eq i32 %i.awy, 1
  br i1 %i.awz, label %.sink.split.i.i400, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404

.sink.split.i.i400:                               ; preds = %bb.ly
  %i.axa = load ptr, ptr %i.aww, align 8, !tbaa !46
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 64
  %i.axc = load ptr, ptr %i.axb, align 8
  invoke void %i.axc(ptr noundef nonnull align 8 dereferenceable(64) %i.aww)
          to label %.noexc.i401 unwind label %bb.lz, !inline_history !240

.noexc.i401:                                      ; preds = %.sink.split.i.i400
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aww, i64 8
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !241
  %.not.i.i402 = icmp eq ptr %i.axe, null
  %i.axf = load ptr, ptr %i.aww, align 8, !tbaa !46
  %..i.i403 = select i1 %.not.i.i402, i64 8, i64 48
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 %..i.i403
  %i.axh = load ptr, ptr %i.axg, align 8
  invoke void %i.axh(ptr noundef nonnull align 8 dereferenceable(64) %i.aww)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404 unwind label %bb.lz, !inline_history !240

bb.lz:                                            ; preds = %.noexc.i401, %.sink.split.i.i400
  %i.axi = landingpad { ptr, i32 }
          catch ptr null
  %i.axj = extractvalue { ptr, i32 } %i.axi, 0
  call void @__clang_call_terminate(ptr %i.axj) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit398, %bb.ly, %.noexc.i401
  %i.axk = load ptr, ptr %100, align 8, !tbaa !237 ; 7 uses
  %.not.i405 = icmp eq ptr %i.axk, null
  br i1 %.not.i405, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410, label %bb.ma

bb.ma:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 40
  %i.axm = atomicrmw sub ptr %i.axl, i32 1 acq_rel, align 4
  %i.axn = icmp eq i32 %i.axm, 1
  br i1 %i.axn, label %.sink.split.i.i406, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410

.sink.split.i.i406:                               ; preds = %bb.ma
  %i.axo = load ptr, ptr %i.axk, align 8, !tbaa !46
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 64
  %i.axq = load ptr, ptr %i.axp, align 8
  invoke void %i.axq(ptr noundef nonnull align 8 dereferenceable(64) %i.axk)
          to label %.noexc.i407 unwind label %bb.mb, !inline_history !240

.noexc.i407:                                      ; preds = %.sink.split.i.i406
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !241
  %.not.i.i408 = icmp eq ptr %i.axs, null
  %i.axt = load ptr, ptr %i.axk, align 8, !tbaa !46
  %..i.i409 = select i1 %.not.i.i408, i64 8, i64 48
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 %..i.i409
  %i.axv = load ptr, ptr %i.axu, align 8
  invoke void %i.axv(ptr noundef nonnull align 8 dereferenceable(64) %i.axk)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410 unwind label %bb.mb, !inline_history !240

bb.mb:                                            ; preds = %.noexc.i407, %.sink.split.i.i406
  %i.axw = landingpad { ptr, i32 }
          catch ptr null
  %i.axx = extractvalue { ptr, i32 } %i.axw, 0
  call void @__clang_call_terminate(ptr %i.axx) #26
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit410: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit404, %bb.ma, %.noexc.i407
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #23
  store ptr null, ptr %104, align 8, !tbaa !237
  %i.axy = load ptr, ptr %98, align 8, !tbaa !237 ; 3 uses
  store ptr %i.axy, ptr %105, align 8, !tbaa !237
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.cmj = load i32, ptr %i.ckv, align 4, !tbaa !3
  %i.cmk = load i32, ptr %i.ckw, align 4, !tbaa !3
  %i.cml = load i32, ptr %i.ckx, align 4, !tbaa !3
  %i.cmm = load i32, ptr %i.cky, align 4, !tbaa !3
  %i.cmn = insertelement <8 x i32> poison, i32 %i.cmf, i64 0
  %i.cmo = insertelement <8 x i32> %i.cmn, i32 %i.cmg, i64 1
  %i.cmp = insertelement <8 x i32> %i.cmo, i32 %i.cmh, i64 2
  %i.cmq = insertelement <8 x i32> %i.cmp, i32 %i.cmi, i64 3
  %i.cmr = insertelement <8 x i32> %i.cmq, i32 %i.cmj, i64 4
  %i.cms = insertelement <8 x i32> %i.cmr, i32 %i.cmk, i64 5
  %i.cmt = insertelement <8 x i32> %i.cms, i32 %i.cml, i64 6
  %i.cmu = insertelement <8 x i32> %i.cmt, i32 %i.cmm, i64 7
  %i.cmv = load i32, ptr %i.ckz, align 4, !tbaa !3
  %i.cmw = load i32, ptr %i.cla, align 4, !tbaa !3
  %i.cmx = load i32, ptr %i.clb, align 4, !tbaa !3
  %i.cmy = load i32, ptr %i.clc, align 4, !tbaa !3
  %i.cmz = load i32, ptr %i.cld, align 4, !tbaa !3
  %i.cna = load i32, ptr %i.cle, align 4, !tbaa !3
  %i.cnb = load i32, ptr %i.clf, align 4, !tbaa !3
  %i.cnc = load i32, ptr %i.clg, align 4, !tbaa !3
  %i.cnd = insertelement <8 x i32> poison, i32 %i.cmv, i64 0
  %i.cne = insertelement <8 x i32> %i.cnd, i32 %i.cmw, i64 1
  %i.cnf = insertelement <8 x i32> %i.cne, i32 %i.cmx, i64 2
  %i.cng = insertelement <8 x i32> %i.cnf, i32 %i.cmy, i64 3
  %i.cnh = insertelement <8 x i32> %i.cng, i32 %i.cmz, i64 4
  %i.cni = insertelement <8 x i32> %i.cnh, i32 %i.cna, i64 5
  %i.cnj = insertelement <8 x i32> %i.cni, i32 %i.cnb, i64 6
  %i.cnk = insertelement <8 x i32> %i.cnj, i32 %i.cnc, i64 7
  %i.cnl = load i32, ptr %i.clh, align 4, !tbaa !3
  %i.cnm = load i32, ptr %i.cli, align 4, !tbaa !3
  %i.cnn = load i32, ptr %i.clj, align 4, !tbaa !3
  %i.cno = load i32, ptr %i.clk, align 4, !tbaa !3
  %i.cnp = load i32, ptr %i.cll, align 4, !tbaa !3
  %i.cnq = load i32, ptr %i.clm, align 4, !tbaa !3
  %i.cnr = load i32, ptr %i.cln, align 4, !tbaa !3
  %i.cns = load i32, ptr %i.clo, align 4, !tbaa !3
  %i.cnt = insertelement <8 x i32> poison, i32 %i.cnl, i64 0
  %i.cnu = insertelement <8 x i32> %i.cnt, i32 %i.cnm, i64 1
  %i.cnv = insertelement <8 x i32> %i.cnu, i32 %i.cnn, i64 2
  %i.cnw = insertelement <8 x i32> %i.cnv, i32 %i.cno, i64 3
  %i.cnx = insertelement <8 x i32> %i.cnw, i32 %i.cnp, i64 4
  %i.cny = insertelement <8 x i32> %i.cnx, i32 %i.cnq, i64 5
  %i.cnz = insertelement <8 x i32> %i.cny, i32 %i.cnr, i64 6
  %i.coa = insertelement <8 x i32> %i.cnz, i32 %i.cns, i64 7
  %i.cob = add <8 x i32> %i.cme, %vec.phi1939     ; 2 uses
  %i.coc = add <8 x i32> %i.cmu, %vec.phi1940     ; 2 uses
  %i.cod = add <8 x i32> %i.cnk, %vec.phi1941     ; 2 uses
  %i.coe = add <8 x i32> %i.coa, %vec.phi1942     ; 2 uses
  %index.next1943 = add nuw i64 %index1938, 32    ; 2 uses
  %i.cof = icmp eq i64 %index.next1943, %n.vec1936
  br i1 %i.cof, label %middle.block1944, label %vector.body1937, !llvm.loop !1045

middle.block1944:                                 ; preds = %vector.body1937
  %bin.rdx1945 = add <8 x i32> %i.coc, %i.cob
  %bin.rdx1946 = add <8 x i32> %i.cod, %bin.rdx1945
  %bin.rdx1947 = add <8 x i32> %i.coe, %bin.rdx1946
  %i.cog = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1947) ; 3 uses
  %cmp.n1948 = icmp eq i64 %i.cfj, %n.vec1936
  br i1 %cmp.n1948, label %.loopexit1202, label %vec.epilog.iter.check1953

vec.epilog.iter.check1953:                        ; preds = %middle.block1944
  %min.epilog.iters.check1954 = icmp eq i64 %n.mod.vf1935, 0
  br i1 %min.epilog.iters.check1954, label %vec.epilog.scalar.ph1952.preheader, label %vec.epilog.ph1955, !prof !350

vec.epilog.ph1955:                                ; preds = %vector.main.loop.iter.check1932, %vec.epilog.iter.check1953
  %vec.epilog.resume.val1949 = phi i64 [ %n.vec1936, %vec.epilog.iter.check1953 ], [ 0, %vector.main.loop.iter.check1932 ]
  %bc.merge.rdx1950 = phi i32 [ %i.cog, %vec.epilog.iter.check1953 ], [ 0, %vector.main.loop.iter.check1932 ]
  %n.vec1957 = and i64 %i.cfj, -8                 ; 3 uses
  %i.coh = add nsw i64 %n.vec1957, %i.cfi
  %i.coi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1950, i64 0
  br label %vec.epilog.vector.body1958

vec.epilog.vector.body1958:                       ; preds = %vec.epilog.vector.body1958, %vec.epilog.ph1955
  %index1959 = phi i64 [ %vec.epilog.resume.val1949, %vec.epilog.ph1955 ], [ %index.next1961, %vec.epilog.vector.body1958 ] ; 2 uses
  %vec.phi1960 = phi <8 x i32> [ %i.coi, %vec.epilog.ph1955 ], [ %i.cqn, %vec.epilog.vector.body1958 ]
  %i.coj = add i64 %index1959, %i.cfi             ; 8 uses
  %i.cok = getelementptr inbounds [4 x i8], ptr %i.cff, i64 %i.coj
  %i.col = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.com = getelementptr i8, ptr %i.col, i64 4
  %i.con = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.coo = getelementptr i8, ptr %i.con, i64 8
  %i.cop = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.coq = getelementptr i8, ptr %i.cop, i64 12
  %i.cor = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.cos = getelementptr i8, ptr %i.cor, i64 16
  %i.cot = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.cou = getelementptr i8, ptr %i.cot, i64 20
  %i.cov = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.cow = getelementptr i8, ptr %i.cov, i64 24
  %i.cox = getelementptr [4 x i8], ptr %i.cff, i64 %i.coj
  %i.coy = getelementptr i8, ptr %i.cox, i64 28
  %i.coz = load i32, ptr %i.cok, align 4, !tbaa !3
  %i.cpa = load i32, ptr %i.com, align 4, !tbaa !3
  %i.cpb = load i32, ptr %i.coo, align 4, !tbaa !3
  %i.cpc = load i32, ptr %i.coq, align 4, !tbaa !3
  %i.cpd = load i32, ptr %i.cos, align 4, !tbaa !3
  %i.cpe = load i32, ptr %i.cou, align 4, !tbaa !3
  %i.cpf = load i32, ptr %i.cow, align 4, !tbaa !3
  %i.cpg = load i32, ptr %i.coy, align 4, !tbaa !3
  %i.cph = sext i32 %i.coz to i64
  %i.cpi = sext i32 %i.cpa to i64
  %i.cpj = sext i32 %i.cpb to i64
  %i.cpk = sext i32 %i.cpc to i64
  %i.cpl = sext i32 %i.cpd to i64
  %i.cpm = sext i32 %i.cpe to i64
  %i.cpn = sext i32 %i.cpf to i64
  %i.cpo = sext i32 %i.cpg to i64
  %i.cpp = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cph
  %i.cpq = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpi
  %i.cpr = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpj
  %i.cps = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpk
  %i.cpt = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpl
  %i.cpu = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpm
  %i.cpv = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpn
  %i.cpw = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cpo
  %i.cpx = load i32, ptr %i.cpp, align 4, !tbaa !3
  %i.cpy = load i32, ptr %i.cpq, align 4, !tbaa !3
  %i.cpz = load i32, ptr %i.cpr, align 4, !tbaa !3
  %i.cqa = load i32, ptr %i.cps, align 4, !tbaa !3
  %i.cqb = load i32, ptr %i.cpt, align 4, !tbaa !3
  %i.cqc = load i32, ptr %i.cpu, align 4, !tbaa !3
  %i.cqd = load i32, ptr %i.cpv, align 4, !tbaa !3
  %i.cqe = load i32, ptr %i.cpw, align 4, !tbaa !3
  %i.cqf = insertelement <8 x i32> poison, i32 %i.cpx, i64 0
  %i.cqg = insertelement <8 x i32> %i.cqf, i32 %i.cpy, i64 1
  %i.cqh = insertelement <8 x i32> %i.cqg, i32 %i.cpz, i64 2
  %i.cqi = insertelement <8 x i32> %i.cqh, i32 %i.cqa, i64 3
  %i.cqj = insertelement <8 x i32> %i.cqi, i32 %i.cqb, i64 4
  %i.cqk = insertelement <8 x i32> %i.cqj, i32 %i.cqc, i64 5
  %i.cql = insertelement <8 x i32> %i.cqk, i32 %i.cqd, i64 6
  %i.cqm = insertelement <8 x i32> %i.cql, i32 %i.cqe, i64 7
  %i.cqn = add <8 x i32> %i.cqm, %vec.phi1960     ; 2 uses
  %index.next1961 = add nuw i64 %index1959, 8     ; 2 uses
  %i.cqo = icmp eq i64 %index.next1961, %n.vec1957
  br i1 %i.cqo, label %vec.epilog.middle.block1962, label %vec.epilog.vector.body1958, !llvm.loop !1046

vec.epilog.middle.block1962:                      ; preds = %vec.epilog.vector.body1958
  %i.cqp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cqn) ; 2 uses
  %cmp.n1963 = icmp eq i64 %i.cfj, %n.vec1957
  br i1 %cmp.n1963, label %.loopexit1202, label %vec.epilog.scalar.ph1952.preheader

vec.epilog.scalar.ph1952.preheader:               ; preds = %iter.check1951, %vec.epilog.iter.check1953, %vec.epilog.middle.block1962
  %indvars.iv.i776.ph = phi i64 [ %i.cfi, %iter.check1951 ], [ %i.cfk, %vec.epilog.iter.check1953 ], [ %i.coh, %vec.epilog.middle.block1962 ]
  %.ph = phi i32 [ 0, %iter.check1951 ], [ %i.cog, %vec.epilog.iter.check1953 ], [ %i.cqp, %vec.epilog.middle.block1962 ]
  br label %vec.epilog.scalar.ph1952

vec.epilog.scalar.ph1952:                         ; preds = %vec.epilog.scalar.ph1952.preheader, %vec.epilog.scalar.ph1952
  %indvars.iv.i776 = phi i64 [ %indvars.iv.next.i777, %vec.epilog.scalar.ph1952 ], [ %indvars.iv.i776.ph, %vec.epilog.scalar.ph1952.preheader ] ; 2 uses
  %i.cqq = phi i32 [ %i.cqw, %vec.epilog.scalar.ph1952 ], [ %.ph, %vec.epilog.scalar.ph1952.preheader ]
  %i.cqr = getelementptr inbounds [4 x i8], ptr %i.cff, i64 %indvars.iv.i776
  %i.cqs = load i32, ptr %i.cqr, align 4, !tbaa !3
  %i.cqt = sext i32 %i.cqs to i64
  %i.cqu = getelementptr inbounds [4 x i8], ptr %i.cfh, i64 %i.cqt
  %i.cqv = load i32, ptr %i.cqu, align 4, !tbaa !3
  %i.cqw = add nsw i32 %i.cqv, %i.cqq             ; 2 uses
  %indvars.iv.next.i777 = add nsw i64 %indvars.iv.i776, 1 ; 2 uses
  %exitcond.not.i778 = icmp eq i64 %indvars.iv.next.i777, %wide.trip.count.i775
  br i1 %exitcond.not.i778, label %.loopexit1202, label %vec.epilog.scalar.ph1952, !llvm.loop !1047

bb.vz:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i749
  %i.cqx = load ptr, ptr %i.cdv, align 8, !tbaa !314 ; 4 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cdv, i64 28
  %i.cqz = load i32, ptr %i.cqy, align 4, !tbaa !312 ; 6 uses
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cdv, i64 32
  %i.crb = load i32, ptr %i.cra, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i756 = icmp slt i32 %i.cqz, %i.crb
  br i1 %.not.i.i.i.i756, label %bb.wa, label %.loopexit1202

bb.wa:                                            ; preds = %bb.vz
  %i.crc = add i32 %i.cqz, 63                     ; 2 uses
  %i.crd = srem i32 %i.crc, 64
  %i.cre = sub nsw i32 %i.crc, %i.crd             ; 6 uses
  %i.crf = and i32 %i.crb, -64                    ; 6 uses
  %i.crg = icmp slt i32 %i.crf, %i.cre
  br i1 %i.crg, label %bb.wb, label %bb.wd

bb.wb:                                            ; preds = %bb.wa
  %i.crh = ashr i32 %i.crb, 6
  %i.cri = and i32 %i.crb, 63
  %i.crj = zext nneg i32 %i.cri to i64
  %notmask.i.i.i.i.i768 = shl nsw i64 -1, %i.crj
  %i.crk = xor i64 %notmask.i.i.i.i.i768, -1
  %i.crl = sub nsw i32 %i.cre, %i.cqz             ; 2 uses
  %i.crm = zext nneg i32 %i.crl to i64
  %notmask.i.i.i.i.i.i769 = shl nsw i64 -1, %i.crm
  %i.crn = xor i64 %notmask.i.i.i.i.i.i769, -1
  %i.cro = sub nsw i32 64, %i.crl
  %i.crp = zext nneg i32 %i.cro to i64
  %i.crq = shl i64 %i.crn, %i.crp
  %i.crr = and i64 %i.crq, %i.crk
  %i.crs = sext i32 %i.crh to i64
  %i.crt = getelementptr inbounds [8 x i8], ptr %i.cqx, i64 %i.crs
  %i.cru = load i64, ptr %i.crt, align 8, !tbaa !145
  %i.crv = and i64 %i.crr, %i.cru                 ; 2 uses
  %.not.i.i.i.i.i770 = icmp eq i64 %i.crv, 0
  br i1 %.not.i.i.i.i.i770, label %.loopexit1202, label %.preheader.i.i.i.i.i771

.preheader.i.i.i.i.i771:                          ; preds = %bb.wb
  %i.crw = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.crx = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.cry = getelementptr inbounds nuw i8, ptr %i.crw, i64 120
  %i.crz = load ptr, ptr %i.cry, align 8, !tbaa !308
  br label %bb.wc

bb.wc:                                            ; preds = %bb.wc, %.preheader.i.i.i.i.i771
  %.011.i.i.i.i.i772 = phi i64 [ %i.crv, %.preheader.i.i.i.i.i771 ], [ %i.csj, %bb.wc ] ; 3 uses
  %i.csa = phi i32 [ 0, %.preheader.i.i.i.i.i771 ], [ %i.csh, %bb.wc ]
  %i.csb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i772, i1 true)
  %136 = trunc nuw nsw i64 %i.csb to i32
  %137 = or disjoint i32 %i.crf, %136
  %138 = sext i32 %137 to i64
  %i.csc = getelementptr inbounds [4 x i8], ptr %i.crx, i64 %138
  %i.csd = load i32, ptr %i.csc, align 4, !tbaa !3
  %i.cse = sext i32 %i.csd to i64
  %i.csf = getelementptr inbounds [4 x i8], ptr %i.crz, i64 %i.cse
  %i.csg = load i32, ptr %i.csf, align 4, !tbaa !3
  %i.csh = add nsw i32 %i.csg, %i.csa             ; 2 uses
  %i.csi = add nsw i64 %.011.i.i.i.i.i772, -1
  %i.csj = and i64 %i.csi, %.011.i.i.i.i.i772     ; 2 uses
  %.not10.i.i.i.i.i773 = icmp eq i64 %i.csj, 0
  br i1 %.not10.i.i.i.i.i773, label %.loopexit1202, label %bb.wc, !llvm.loop !1048

bb.wd:                                            ; preds = %bb.wa
  %.not32.i.i.i.i757 = icmp eq i32 %i.cqz, %i.cre
  br i1 %.not32.i.i.i.i757, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.csk = sdiv i32 %i.cqz, 64                    ; 2 uses
  %i.csl = sub nsw i32 %i.cre, %i.cqz             ; 2 uses
  %i.csm = zext nneg i32 %i.csl to i64
  %notmask.i.i35.i.i.i.i758 = shl nsw i64 -1, %i.csm
  %i.csn = xor i64 %notmask.i.i35.i.i.i.i758, -1
  %i.cso = sub nsw i32 64, %i.csl
  %i.csp = zext nneg i32 %i.cso to i64
  %i.csq = shl i64 %i.csn, %i.csp
  %i.csr = sext i32 %i.csk to i64
  %i.css = getelementptr inbounds [8 x i8], ptr %i.cqx, i64 %i.csr
  %i.cst = load i64, ptr %i.css, align 8, !tbaa !145
  %i.csu = and i64 %i.cst, %i.csq                 ; 2 uses
  %.not.i36.i.i.i.i759 = icmp eq i64 %i.csu, 0
  br i1 %.not.i36.i.i.i.i759, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %.preheader.i37.i.i.i.i760

.preheader.i37.i.i.i.i760:                        ; preds = %bb.we
  %i.csv = shl nsw i32 %i.csk, 6
  %i.csw = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.csx = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.csy = getelementptr inbounds nuw i8, ptr %i.csw, i64 120
  %i.csz = load ptr, ptr %i.csy, align 8, !tbaa !308
  br label %bb.wf

bb.wf:                                            ; preds = %bb.wf, %.preheader.i37.i.i.i.i760
  %.011.i39.i.i.i.i761 = phi i64 [ %i.csu, %.preheader.i37.i.i.i.i760 ], [ %i.ctj, %bb.wf ] ; 3 uses
  %i.cta = phi i32 [ 0, %.preheader.i37.i.i.i.i760 ], [ %i.cth, %bb.wf ]
  %i.ctb = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i761, i1 true)
  %139 = trunc nuw nsw i64 %i.ctb to i32
  %140 = or disjoint i32 %i.csv, %139
  %141 = sext i32 %140 to i64
  %i.ctc = getelementptr inbounds [4 x i8], ptr %i.csx, i64 %141
  %i.ctd = load i32, ptr %i.ctc, align 4, !tbaa !3
  %i.cte = sext i32 %i.ctd to i64
  %i.ctf = getelementptr inbounds [4 x i8], ptr %i.csz, i64 %i.cte
  %i.ctg = load i32, ptr %i.ctf, align 4, !tbaa !3
  %i.cth = add nsw i32 %i.ctg, %i.cta             ; 2 uses
  %i.cti = add i64 %.011.i39.i.i.i.i761, -1
  %i.ctj = and i64 %i.cti, %.011.i39.i.i.i.i761   ; 2 uses
  %.not10.i40.i.i.i.i = icmp eq i64 %i.ctj, 0
  br i1 %.not10.i40.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i, label %bb.wf, !llvm.loop !1048

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i: ; preds = %bb.wf, %bb.we, %bb.wd
  %.01157 = phi i32 [ 0, %bb.wd ], [ 0, %bb.we ], [ %i.cth, %bb.wf ] ; 2 uses
  %i.ctk = add nsw i32 %i.cre, 64                 ; 2 uses
  %.not3353.i.i.i.i = icmp sgt i32 %i.ctk, %i.crf
  br i1 %.not3353.i.i.i.i, label %._crit_edge.i.i.i.i764, label %.lr.ph.i.i.i.i762.preheader

.lr.ph.i.i.i.i762.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i
  %i.ctl = load ptr, ptr %i.p, align 8
  %i.ctm = load ptr, ptr %i.n, align 8            ; 42 uses
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.ctl, i64 120 ; 2 uses
  br label %.lr.ph.i.i.i.i762

._crit_edge.i.i.i.i764:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i
  %.31160 = phi i32 [ %.01157, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUlimE_clEim.exit41.i.i.i.i ], [ %.21159, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ] ; 3 uses
  %.not34.i.i.i.i765 = icmp eq i32 %i.crb, %i.crf
  br i1 %.not34.i.i.i.i765, label %.loopexit1202, label %bb.wi

.lr.ph.i.i.i.i762:                                ; preds = %.lr.ph.i.i.i.i762.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i
  %.11158 = phi i32 [ %.21159, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %.01157, %.lr.ph.i.i.i.i762.preheader ] ; 5 uses
  %i.cto = phi i32 [ %i.dga, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %i.ctk, %.lr.ph.i.i.i.i762.preheader ] ; 2 uses
  %.054.i.i.i.i = phi i32 [ %i.cto, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i ], [ %i.cre, %.lr.ph.i.i.i.i762.preheader ] ; 2 uses
  %i.ctp = sdiv i32 %.054.i.i.i.i, 64             ; 3 uses
  %i.ctq = sext i32 %i.ctp to i64
  %i.ctr = getelementptr inbounds [8 x i8], ptr %i.cqx, i64 %i.ctq
  %i.cts = load i64, ptr %i.ctr, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.cts, label %.lr.ph.i.i.i.i.i767 [
    i64 -1, label %bb.wg
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i767:                              ; preds = %.lr.ph.i.i.i.i762
  %i.ctt = shl nsw i32 %i.ctp, 6
  %i.ctu = load ptr, ptr %i.ctn, align 8, !tbaa !308
  br label %bb.wh

bb.wg:                                            ; preds = %.lr.ph.i.i.i.i762
  %i.ctv = shl nsw i32 %i.ctp, 6                  ; 2 uses
  %i.ctw = add i32 %i.ctv, 64
  %i.ctx = sext i32 %i.ctw to i64                 ; 2 uses
  %.0.off.i.i.i.i766 = add i32 %.054.i.i.i.i, 127
  %.not23.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i766, 64
  br i1 %.not23.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.wg
  %i.cty = sext i32 %i.ctv to i64                 ; 6 uses
  %i.ctz = load ptr, ptr %i.ctn, align 8, !tbaa !308 ; 41 uses
  %i.cua = or disjoint i64 %i.cty, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cua, i64 %i.ctx) ; 2 uses
  %i.cub = sub i64 %umax, %i.cty                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.cub, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1917 = icmp ult i64 %i.cub, 32
  %n.mod.vf1923 = and i64 %umax, 1                ; 3 uses
  %n.vec1924 = sub nuw i64 %i.cub, %n.mod.vf1923  ; 3 uses
  %i.cuc = add i64 %n.vec1924, %i.cty             ; 2 uses
  %i.cud = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.11158, i64 0 ; 2 uses
  br i1 %min.iters.check1917, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x i32> [ %i.dcu, %vector.body ], [ %i.cud, %vector.main.loop.iter.check ]
  %vec.phi1918 = phi <8 x i32> [ %i.dcv, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi1919 = phi <8 x i32> [ %i.dcw, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi1920 = phi <8 x i32> [ %i.dcx, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.cue = add i64 %index, %i.cty                 ; 32 uses
  %i.cuf = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cug = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.cug, i64 4
  %i.cui = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cui, i64 8
  %i.cuk = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cuk, i64 12
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cum, i64 16
  %i.cuo = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cup = getelementptr inbounds nuw i8, ptr %i.cuo, i64 20
  %i.cuq = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cuq, i64 24
  %i.cus = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cus, i64 28
  %i.cuu = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuu, i64 32
  %i.cuw = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 36
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuy, i64 40
  %i.cva = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cva, i64 44
  %i.cvc = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvd = getelementptr inbounds nuw i8, ptr %i.cvc, i64 48
  %i.cve = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cve, i64 52
  %i.cvg = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cvg, i64 56
  %i.cvi = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cvi, i64 60
  %i.cvk = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 64
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvm, i64 68
  %i.cvo = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cvo, i64 72
  %i.cvq = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvq, i64 76
  %i.cvs = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 80
  %i.cvu = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvu, i64 84
  %i.cvw = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvw, i64 88
  %i.cvy = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvy, i64 92
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cwa, i64 96
  %i.cwc = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cwc, i64 100
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 104
  %i.cwg = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwg, i64 108
  %i.cwi = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwi, i64 112
  %i.cwk = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwk, i64 116
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 120
  %i.cwo = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.cue
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 124
  %i.cwq = load i32, ptr %i.cuf, align 4, !tbaa !3
  %i.cwr = load i32, ptr %i.cuh, align 4, !tbaa !3
  %i.cws = load i32, ptr %i.cuj, align 4, !tbaa !3
  %i.cwt = load i32, ptr %i.cul, align 4, !tbaa !3
  %i.cwu = load i32, ptr %i.cun, align 4, !tbaa !3
  %i.cwv = load i32, ptr %i.cup, align 4, !tbaa !3
  %i.cww = load i32, ptr %i.cur, align 4, !tbaa !3
  %i.cwx = load i32, ptr %i.cut, align 4, !tbaa !3
  %i.cwy = load i32, ptr %i.cuv, align 4, !tbaa !3
  %i.cwz = load i32, ptr %i.cux, align 4, !tbaa !3
  %i.cxa = load i32, ptr %i.cuz, align 4, !tbaa !3
  %i.cxb = load i32, ptr %i.cvb, align 4, !tbaa !3
  %i.cxc = load i32, ptr %i.cvd, align 4, !tbaa !3
  %i.cxd = load i32, ptr %i.cvf, align 4, !tbaa !3
  %i.cxe = load i32, ptr %i.cvh, align 4, !tbaa !3
  %i.cxf = load i32, ptr %i.cvj, align 4, !tbaa !3
  %i.cxg = load i32, ptr %i.cvl, align 4, !tbaa !3
  %i.cxh = load i32, ptr %i.cvn, align 4, !tbaa !3
  %i.cxi = load i32, ptr %i.cvp, align 4, !tbaa !3
  %i.cxj = load i32, ptr %i.cvr, align 4, !tbaa !3
  %i.cxk = load i32, ptr %i.cvt, align 4, !tbaa !3
  %i.cxl = load i32, ptr %i.cvv, align 4, !tbaa !3
  %i.cxm = load i32, ptr %i.cvx, align 4, !tbaa !3
  %i.cxn = load i32, ptr %i.cvz, align 4, !tbaa !3
  %i.cxo = load i32, ptr %i.cwb, align 4, !tbaa !3
  %i.cxp = load i32, ptr %i.cwd, align 4, !tbaa !3
  %i.cxq = load i32, ptr %i.cwf, align 4, !tbaa !3
  %i.cxr = load i32, ptr %i.cwh, align 4, !tbaa !3
  %i.cxs = load i32, ptr %i.cwj, align 4, !tbaa !3
  %i.cxt = load i32, ptr %i.cwl, align 4, !tbaa !3
  %i.cxu = load i32, ptr %i.cwn, align 4, !tbaa !3
  %i.cxv = load i32, ptr %i.cwp, align 4, !tbaa !3
  %i.cxw = sext i32 %i.cwq to i64
  %i.cxx = sext i32 %i.cwr to i64
  %i.cxy = sext i32 %i.cws to i64
  %i.cxz = sext i32 %i.cwt to i64
  %i.cya = sext i32 %i.cwu to i64
  %i.cyb = sext i32 %i.cwv to i64
  %i.cyc = sext i32 %i.cww to i64
  %i.cyd = sext i32 %i.cwx to i64
  %i.cye = sext i32 %i.cwy to i64
  %i.cyf = sext i32 %i.cwz to i64
  %i.cyg = sext i32 %i.cxa to i64
  %i.cyh = sext i32 %i.cxb to i64
  %i.cyi = sext i32 %i.cxc to i64
  %i.cyj = sext i32 %i.cxd to i64
  %i.cyk = sext i32 %i.cxe to i64
  %i.cyl = sext i32 %i.cxf to i64
  %i.cym = sext i32 %i.cxg to i64
  %i.cyn = sext i32 %i.cxh to i64
  %i.cyo = sext i32 %i.cxi to i64
  %i.cyp = sext i32 %i.cxj to i64
  %i.cyq = sext i32 %i.cxk to i64
  %i.cyr = sext i32 %i.cxl to i64
  %i.cys = sext i32 %i.cxm to i64
  %i.cyt = sext i32 %i.cxn to i64
  %i.cyu = sext i32 %i.cxo to i64
  %i.cyv = sext i32 %i.cxp to i64
  %i.cyw = sext i32 %i.cxq to i64
  %i.cyx = sext i32 %i.cxr to i64
  %i.cyy = sext i32 %i.cxs to i64
  %i.cyz = sext i32 %i.cxt to i64
  %i.cza = sext i32 %i.cxu to i64
  %i.czb = sext i32 %i.cxv to i64
  %i.czc = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cxw
  %i.czd = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cxx
  %i.cze = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cxy
  %i.czf = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cxz
  %i.czg = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cya
  %i.czh = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyb
  %i.czi = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyc
  %i.czj = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyd
  %i.czk = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cye
  %i.czl = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyf
  %i.czm = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyg
  %i.czn = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyh
  %i.czo = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyi
  %i.czp = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyj
  %i.czq = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyk
  %i.czr = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyl
  %i.czs = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cym
  %i.czt = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyn
  %i.czu = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyo
  %i.czv = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyp
  %i.czw = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyq
  %i.czx = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyr
  %i.czy = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cys
  %i.czz = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyt
  %i.daa = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyu
  %i.dab = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyv
  %i.dac = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyw
  %i.dad = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyx
  %i.dae = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyy
  %i.daf = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cyz
  %i.dag = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.cza
  %i.dah = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.czb
  %i.dai = load i32, ptr %i.czc, align 4, !tbaa !3
  %i.daj = load i32, ptr %i.czd, align 4, !tbaa !3
  %i.dak = load i32, ptr %i.cze, align 4, !tbaa !3
  %i.dal = load i32, ptr %i.czf, align 4, !tbaa !3
  %i.dam = load i32, ptr %i.czg, align 4, !tbaa !3
  %i.dan = load i32, ptr %i.czh, align 4, !tbaa !3
  %i.dao = load i32, ptr %i.czi, align 4, !tbaa !3
  %i.dap = load i32, ptr %i.czj, align 4, !tbaa !3
  %i.daq = insertelement <8 x i32> poison, i32 %i.dai, i64 0
  %i.dar = insertelement <8 x i32> %i.daq, i32 %i.daj, i64 1
  %i.das = insertelement <8 x i32> %i.dar, i32 %i.dak, i64 2
  %i.dat = insertelement <8 x i32> %i.das, i32 %i.dal, i64 3
  %i.dau = insertelement <8 x i32> %i.dat, i32 %i.dam, i64 4
  %i.dav = insertelement <8 x i32> %i.dau, i32 %i.dan, i64 5
  %i.daw = insertelement <8 x i32> %i.dav, i32 %i.dao, i64 6
  %i.dax = insertelement <8 x i32> %i.daw, i32 %i.dap, i64 7
  %i.day = load i32, ptr %i.czk, align 4, !tbaa !3
  %i.daz = load i32, ptr %i.czl, align 4, !tbaa !3
  %i.dba = load i32, ptr %i.czm, align 4, !tbaa !3
  %i.dbb = load i32, ptr %i.czn, align 4, !tbaa !3
  %i.dbc = load i32, ptr %i.czo, align 4, !tbaa !3
  %i.dbd = load i32, ptr %i.czp, align 4, !tbaa !3
  %i.dbe = load i32, ptr %i.czq, align 4, !tbaa !3
  %i.dbf = load i32, ptr %i.czr, align 4, !tbaa !3
  %i.dbg = insertelement <8 x i32> poison, i32 %i.day, i64 0
  %i.dbh = insertelement <8 x i32> %i.dbg, i32 %i.daz, i64 1
  %i.dbi = insertelement <8 x i32> %i.dbh, i32 %i.dba, i64 2
  %i.dbj = insertelement <8 x i32> %i.dbi, i32 %i.dbb, i64 3
  %i.dbk = insertelement <8 x i32> %i.dbj, i32 %i.dbc, i64 4
  %i.dbl = insertelement <8 x i32> %i.dbk, i32 %i.dbd, i64 5
  %i.dbm = insertelement <8 x i32> %i.dbl, i32 %i.dbe, i64 6
  %i.dbn = insertelement <8 x i32> %i.dbm, i32 %i.dbf, i64 7
  %i.dbo = load i32, ptr %i.czs, align 4, !tbaa !3
  %i.dbp = load i32, ptr %i.czt, align 4, !tbaa !3
  %i.dbq = load i32, ptr %i.czu, align 4, !tbaa !3
  %i.dbr = load i32, ptr %i.czv, align 4, !tbaa !3
  %i.dbs = load i32, ptr %i.czw, align 4, !tbaa !3
  %i.dbt = load i32, ptr %i.czx, align 4, !tbaa !3
  %i.dbu = load i32, ptr %i.czy, align 4, !tbaa !3
  %i.dbv = load i32, ptr %i.czz, align 4, !tbaa !3
  %i.dbw = insertelement <8 x i32> poison, i32 %i.dbo, i64 0
  %i.dbx = insertelement <8 x i32> %i.dbw, i32 %i.dbp, i64 1
  %i.dby = insertelement <8 x i32> %i.dbx, i32 %i.dbq, i64 2
  %i.dbz = insertelement <8 x i32> %i.dby, i32 %i.dbr, i64 3
  %i.dca = insertelement <8 x i32> %i.dbz, i32 %i.dbs, i64 4
  %i.dcb = insertelement <8 x i32> %i.dca, i32 %i.dbt, i64 5
  %i.dcc = insertelement <8 x i32> %i.dcb, i32 %i.dbu, i64 6
  %i.dcd = insertelement <8 x i32> %i.dcc, i32 %i.dbv, i64 7
  %i.dce = load i32, ptr %i.daa, align 4, !tbaa !3
  %i.dcf = load i32, ptr %i.dab, align 4, !tbaa !3
  %i.dcg = load i32, ptr %i.dac, align 4, !tbaa !3
  %i.dch = load i32, ptr %i.dad, align 4, !tbaa !3
  %i.dci = load i32, ptr %i.dae, align 4, !tbaa !3
  %i.dcj = load i32, ptr %i.daf, align 4, !tbaa !3
  %i.dck = load i32, ptr %i.dag, align 4, !tbaa !3
  %i.dcl = load i32, ptr %i.dah, align 4, !tbaa !3
  %i.dcm = insertelement <8 x i32> poison, i32 %i.dce, i64 0
  %i.dcn = insertelement <8 x i32> %i.dcm, i32 %i.dcf, i64 1
  %i.dco = insertelement <8 x i32> %i.dcn, i32 %i.dcg, i64 2
  %i.dcp = insertelement <8 x i32> %i.dco, i32 %i.dch, i64 3
  %i.dcq = insertelement <8 x i32> %i.dcp, i32 %i.dci, i64 4
  %i.dcr = insertelement <8 x i32> %i.dcq, i32 %i.dcj, i64 5
  %i.dcs = insertelement <8 x i32> %i.dcr, i32 %i.dck, i64 6
  %i.dct = insertelement <8 x i32> %i.dcs, i32 %i.dcl, i64 7
  %i.dcu = add <8 x i32> %i.dax, %vec.phi         ; 2 uses
  %i.dcv = add <8 x i32> %i.dbn, %vec.phi1918     ; 2 uses
  %i.dcw = add <8 x i32> %i.dcd, %vec.phi1919     ; 2 uses
  %i.dcx = add <8 x i32> %i.dct, %vec.phi1920     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dcy = icmp eq i64 %index.next, %n.vec1924
  br i1 %i.dcy, label %middle.block, label %vector.body, !llvm.loop !1049

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.dcv, %i.dcu
  %bin.rdx1921 = add <8 x i32> %i.dcw, %bin.rdx
  %bin.rdx1922 = add <8 x i32> %i.dcx, %bin.rdx1921
  %i.dcz = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1922) ; 2 uses
  %cmp.n = icmp eq i64 %n.mod.vf1923, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index1925 = phi i64 [ %index.next1927, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi1926 = phi <8 x i32> [ %i.dfe, %vec.epilog.vector.body ], [ %i.cud, %vector.main.loop.iter.check ]
  %i.dda = add i64 %index1925, %i.cty             ; 8 uses
  %i.ddb = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddc = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddd = getelementptr inbounds nuw i8, ptr %i.ddc, i64 4
  %i.dde = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dde, i64 8
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddg, i64 12
  %i.ddi = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.ddi, i64 16
  %i.ddk = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.ddk, i64 20
  %i.ddm = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddm, i64 24
  %i.ddo = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %i.dda
  %i.ddp = getelementptr inbounds nuw i8, ptr %i.ddo, i64 28
  %i.ddq = load i32, ptr %i.ddb, align 4, !tbaa !3
  %i.ddr = load i32, ptr %i.ddd, align 4, !tbaa !3
  %i.dds = load i32, ptr %i.ddf, align 4, !tbaa !3
  %i.ddt = load i32, ptr %i.ddh, align 4, !tbaa !3
  %i.ddu = load i32, ptr %i.ddj, align 4, !tbaa !3
  %i.ddv = load i32, ptr %i.ddl, align 4, !tbaa !3
  %i.ddw = load i32, ptr %i.ddn, align 4, !tbaa !3
  %i.ddx = load i32, ptr %i.ddp, align 4, !tbaa !3
  %i.ddy = sext i32 %i.ddq to i64
  %i.ddz = sext i32 %i.ddr to i64
  %i.dea = sext i32 %i.dds to i64
  %i.deb = sext i32 %i.ddt to i64
  %i.dec = sext i32 %i.ddu to i64
  %i.ded = sext i32 %i.ddv to i64
  %i.dee = sext i32 %i.ddw to i64
  %i.def = sext i32 %i.ddx to i64
  %i.deg = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.ddy
  %i.deh = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.ddz
  %i.dei = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.dea
  %i.dej = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.deb
  %i.dek = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.dec
  %i.del = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.ded
  %i.dem = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.dee
  %i.den = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.def
  %i.deo = load i32, ptr %i.deg, align 4, !tbaa !3
  %i.dep = load i32, ptr %i.deh, align 4, !tbaa !3
  %i.deq = load i32, ptr %i.dei, align 4, !tbaa !3
  %i.der = load i32, ptr %i.dej, align 4, !tbaa !3
  %i.des = load i32, ptr %i.dek, align 4, !tbaa !3
  %i.det = load i32, ptr %i.del, align 4, !tbaa !3
  %i.deu = load i32, ptr %i.dem, align 4, !tbaa !3
  %i.dev = load i32, ptr %i.den, align 4, !tbaa !3
  %i.dew = insertelement <8 x i32> poison, i32 %i.deo, i64 0
  %i.dex = insertelement <8 x i32> %i.dew, i32 %i.dep, i64 1
  %i.dey = insertelement <8 x i32> %i.dex, i32 %i.deq, i64 2
  %i.dez = insertelement <8 x i32> %i.dey, i32 %i.der, i64 3
  %i.dfa = insertelement <8 x i32> %i.dez, i32 %i.des, i64 4
  %i.dfb = insertelement <8 x i32> %i.dfa, i32 %i.det, i64 5
  %i.dfc = insertelement <8 x i32> %i.dfb, i32 %i.deu, i64 6
  %i.dfd = insertelement <8 x i32> %i.dfc, i32 %i.dev, i64 7
  %i.dfe = add <8 x i32> %i.dfd, %vec.phi1926     ; 2 uses
  %index.next1927 = add nuw i64 %index1925, 8     ; 2 uses
  %i.dff = icmp eq i64 %index.next1927, %n.vec1924
  br i1 %i.dff, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1050

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dfg = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dfe) ; 2 uses
  %cmp.n1928 = icmp eq i64 %n.mod.vf1923, 0
  br i1 %cmp.n1928, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.ph2418 = phi i32 [ %i.dcz, %middle.block ], [ %.11158, %iter.check ], [ %i.dfg, %vec.epilog.middle.block ]
  %.020.i.i.i.i.i.ph = phi i64 [ %i.cuc, %middle.block ], [ %i.cty, %iter.check ], [ %i.cuc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.dfh = phi i32 [ %i.dfn, %vec.epilog.scalar.ph ], [ %.ph2418, %vec.epilog.scalar.ph.preheader ]
  %.020.i.i.i.i.i = phi i64 [ %i.dfo, %vec.epilog.scalar.ph ], [ %.020.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dfi = getelementptr inbounds nuw [4 x i8], ptr %i.ctm, i64 %.020.i.i.i.i.i
  %i.dfj = load i32, ptr %i.dfi, align 4, !tbaa !3
  %i.dfk = sext i32 %i.dfj to i64
  %i.dfl = getelementptr inbounds [4 x i8], ptr %i.ctz, i64 %i.dfk
  %i.dfm = load i32, ptr %i.dfl, align 4, !tbaa !3
  %i.dfn = add nsw i32 %i.dfm, %i.dfh             ; 2 uses
  %i.dfo = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.dfp = icmp ult i64 %i.dfo, %i.ctx
  br i1 %i.dfp, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1051

bb.wh:                                            ; preds = %bb.wh, %.lr.ph.i.i.i.i.i767
  %i.dfq = phi i32 [ %.11158, %.lr.ph.i.i.i.i.i767 ], [ %i.dfx, %bb.wh ]
  %.01519.i.i.i.i.i = phi i64 [ %i.cts, %.lr.ph.i.i.i.i.i767 ], [ %i.dfz, %bb.wh ] ; 3 uses
  %i.dfr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %142 = trunc nuw nsw i64 %i.dfr to i32
  %143 = or disjoint i32 %i.ctt, %142
  %144 = sext i32 %143 to i64
  %i.dfs = getelementptr inbounds [4 x i8], ptr %i.ctm, i64 %144
  %i.dft = load i32, ptr %i.dfs, align 4, !tbaa !3
  %i.dfu = sext i32 %i.dft to i64
  %i.dfv = getelementptr inbounds [4 x i8], ptr %i.ctu, i64 %i.dfu
  %i.dfw = load i32, ptr %i.dfv, align 4, !tbaa !3
  %i.dfx = add nsw i32 %i.dfw, %i.dfq             ; 2 uses
  %i.dfy = add i64 %.01519.i.i.i.i.i, -1
  %i.dfz = and i64 %i.dfy, %.01519.i.i.i.i.i      ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.dfz, 0
  br i1 %.not.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i, label %bb.wh, !llvm.loop !1052

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUlT_E1_EEvPKmiibSQ_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.wh, %middle.block, %vec.epilog.middle.block, %bb.wg, %.lr.ph.i.i.i.i762
  %.21159 = phi i32 [ %.11158, %.lr.ph.i.i.i.i762 ], [ %.11158, %bb.wg ], [ %i.dfx, %bb.wh ], [ %i.dfg, %vec.epilog.middle.block ], [ %i.dcz, %middle.block ], [ %i.dfn, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dga = add nsw i32 %i.cto, 64                 ; 2 uses
  %.not33.i.i.i.i763 = icmp sgt i32 %i.dga, %i.crf
  br i1 %.not33.i.i.i.i763, label %._crit_edge.i.i.i.i764, label %.lr.ph.i.i.i.i762, !llvm.loop !1053

bb.wi:                                            ; preds = %._crit_edge.i.i.i.i764
  %i.dgb = ashr i32 %i.crb, 6
  %i.dgc = and i32 %i.crb, 63
  %i.dgd = zext nneg i32 %i.dgc to i64
  %notmask.i44.i.i.i.i = shl nsw i64 -1, %i.dgd
  %i.dge = xor i64 %notmask.i44.i.i.i.i, -1
  %i.dgf = sext i32 %i.dgb to i64
  %i.dgg = getelementptr inbounds [8 x i8], ptr %i.cqx, i64 %i.dgf
  %i.dgh = load i64, ptr %i.dgg, align 8, !tbaa !145
  %i.dgi = and i64 %i.dgh, %i.dge                 ; 2 uses
  %.not.i45.i.i.i.i = icmp eq i64 %i.dgi, 0
  br i1 %.not.i45.i.i.i.i, label %.loopexit1202, label %.preheader.i46.i.i.i.i

.preheader.i46.i.i.i.i:                           ; preds = %bb.wi
  %i.dgj = load ptr, ptr %i.p, align 8, !tbaa !310
  %i.dgk = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgj, i64 120
  %i.dgm = load ptr, ptr %i.dgl, align 8, !tbaa !308
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wj, %.preheader.i46.i.i.i.i
  %.011.i48.i.i.i.i = phi i64 [ %i.dgi, %.preheader.i46.i.i.i.i ], [ %i.dgw, %bb.wj ] ; 3 uses
  %i.dgn = phi i32 [ %.31160, %.preheader.i46.i.i.i.i ], [ %i.dgu, %bb.wj ]
  %i.dgo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i48.i.i.i.i, i1 true)
  %145 = trunc nuw nsw i64 %i.dgo to i32
  %146 = or disjoint i32 %i.crf, %145
  %147 = sext i32 %146 to i64
  %i.dgp = getelementptr inbounds [4 x i8], ptr %i.dgk, i64 %147
  %i.dgq = load i32, ptr %i.dgp, align 4, !tbaa !3
  %i.dgr = sext i32 %i.dgq to i64
  %i.dgs = getelementptr inbounds [4 x i8], ptr %i.dgm, i64 %i.dgr
  %i.dgt = load i32, ptr %i.dgs, align 4, !tbaa !3
  %i.dgu = add nsw i32 %i.dgt, %i.dgn             ; 2 uses
  %i.dgv = add nsw i64 %.011.i48.i.i.i.i, -1
  %i.dgw = and i64 %i.dgv, %.011.i48.i.i.i.i      ; 2 uses
  %.not10.i49.i.i.i.i = icmp eq i64 %i.dgw, 0
  br i1 %.not10.i49.i.i.i.i, label %.loopexit1202, label %bb.wj, !llvm.loop !1048

.loopexit1202:                                    ; preds = %bb.wj, %bb.wc, %vec.epilog.scalar.ph1952, %middle.block1944, %vec.epilog.middle.block1962, %bb.vy, %bb.vz, %bb.wb, %._crit_edge.i.i.i.i764, %bb.wi
  %.41161 = phi i32 [ 0, %bb.vz ], [ 0, %bb.vy ], [ 0, %bb.wb ], [ %i.csh, %bb.wc ], [ %.31160, %._crit_edge.i.i.i.i764 ], [ %.31160, %bb.wi ], [ %i.cqw, %vec.epilog.scalar.ph1952 ], [ %i.cqp, %vec.epilog.middle.block1962 ], [ %i.cog, %middle.block1944 ], [ %i.dgu, %bb.wj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #23
  %i.dgx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.dgy = load i32, ptr %i.dgx, align 8, !tbaa !196
  %i.dgz = load ptr, ptr %4, align 8, !tbaa !155
  %i.dha = load ptr, ptr %i.dgz, align 8, !tbaa !171
  %i.dhb = sext i32 %i.dgy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !1054
  store i32 0, ptr %9, align 4, !tbaa !30, !noalias !1054
  %i.dhc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i8 1, ptr %i.dhc, align 4, !tbaa !209, !noalias !1054
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %110, i64 noundef %i.dhb, ptr noundef %i.dha, ptr noundef nonnull align 4 dereferenceable(8) %9, i1 noundef zeroext false)
          to label %bb.wk unwind label %bb.aal

bb.wk:                                            ; preds = %.loopexit1202
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !1054
  %i.dhd = load ptr, ptr %110, align 8, !tbaa !237 ; 2 uses
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dhd, i64 44
  %i.dhf = load i8, ptr %i.dhe, align 4, !tbaa !384
  %i.dhg = and i8 %i.dhf, 2
  %.not.i791 = icmp eq i8 %i.dhg, 0
  br i1 %.not.i791, label %bb.wm, label %bb.wl, !prof !78

bb.wl:                                            ; preds = %bb.wk
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc792 unwind label %bb.aam

.noexc792:                                        ; preds = %bb.wl
  unreachable

bb.wm:                                            ; preds = %bb.wk
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dhd, i64 16
  %i.dhi = load ptr, ptr %i.dhh, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #23
  %i.dhj = load i32, ptr %i.dgx, align 8, !tbaa !196
  %i.dhk = load ptr, ptr %4, align 8, !tbaa !155
  %i.dhl = load ptr, ptr %i.dhk, align 8, !tbaa !171
  %i.dhm = sext i32 %i.dhj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !1057
  store i32 0, ptr %8, align 4, !tbaa !30, !noalias !1057
  %i.dhn = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 1, ptr %i.dhn, align 4, !tbaa !209, !noalias !1057
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %111, i64 noundef %i.dhm, ptr noundef %i.dhl, ptr noundef nonnull align 4 dereferenceable(8) %8, i1 noundef zeroext false)
          to label %bb.wn unwind label %bb.aan

bb.wn:                                            ; preds = %bb.wm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !1057
  %i.dho = load ptr, ptr %111, align 8, !tbaa !237 ; 2 uses
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dho, i64 44
  %i.dhq = load i8, ptr %i.dhp, align 4, !tbaa !384
  %i.dhr = and i8 %i.dhq, 2
  %.not.i796 = icmp eq i8 %i.dhr, 0
  br i1 %.not.i796, label %bb.wp, label %bb.wo, !prof !78

bb.wo:                                            ; preds = %bb.wn
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc797 unwind label %bb.aao

.noexc797:                                        ; preds = %bb.wo
  unreachable

bb.wp:                                            ; preds = %bb.wn
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dho, i64 16
  %i.dht = load ptr, ptr %i.dhs, align 8, !tbaa !385 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #23
  %i.dhu = load ptr, ptr %4, align 8, !tbaa !155
  %i.dhv = load ptr, ptr %i.dhu, align 8, !tbaa !171
  %i.dhw = sext i32 %.41161 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !1060
  store i32 0, ptr %7, align 4, !tbaa !30, !noalias !1060
  %i.dhx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i8 1, ptr %i.dhx, align 4, !tbaa !209, !noalias !1060
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %112, i64 noundef %i.dhw, ptr noundef %i.dhv, ptr noundef nonnull align 4 dereferenceable(8) %7, i1 noundef zeroext false)
          to label %bb.wq unwind label %bb.aap

bb.wq:                                            ; preds = %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !1060
  %i.dhy = load ptr, ptr %112, align 8, !tbaa !237 ; 2 uses
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dhy, i64 44
  %i.dia = load i8, ptr %i.dhz, align 4, !tbaa !384
  %i.dib = and i8 %i.dia, 2
  %.not.i801 = icmp eq i8 %i.dib, 0
  br i1 %.not.i801, label %bb.ws, label %bb.wr, !prof !78

bb.wr:                                            ; preds = %bb.wq
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc802 unwind label %bb.aaq

.noexc802:                                        ; preds = %bb.wr
  unreachable

bb.ws:                                            ; preds = %bb.wq
  %i.dic = getelementptr inbounds nuw i8, ptr %i.dhy, i64 16
  %i.did = load ptr, ptr %i.dic, align 8, !tbaa !385 ; 31 uses
  %i.die = ptrtoaddr ptr %i.did to i64            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #23
  %i.dif = load ptr, ptr %4, align 8, !tbaa !155
  %i.dig = load ptr, ptr %i.dif, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !1063
  store i32 0, ptr %6, align 4, !tbaa !30, !noalias !1063
  %i.dih = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i8 1, ptr %i.dih, align 4, !tbaa !209, !noalias !1063
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %113, i64 noundef %i.dhw, ptr noundef %i.dig, ptr noundef nonnull align 4 dereferenceable(8) %6, i1 noundef zeroext false)
          to label %bb.wt unwind label %bb.aar

bb.wt:                                            ; preds = %bb.ws
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !1063
  %i.dii = load ptr, ptr %113, align 8, !tbaa !237 ; 5 uses
  %i.dij = getelementptr inbounds nuw i8, ptr %i.dii, i64 44
  %i.dik = load i8, ptr %i.dij, align 4, !tbaa !384
  %i.dil = and i8 %i.dik, 2
  %.not.i806 = icmp eq i8 %i.dil, 0
  br i1 %.not.i806, label %bb.wv, label %bb.wu, !prof !78

bb.wu:                                            ; preds = %bb.wt
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc807 unwind label %bb.aas

.noexc807:                                        ; preds = %bb.wu
  unreachable

bb.wv:                                            ; preds = %bb.wt
  %i.dim = getelementptr inbounds nuw i8, ptr %i.dii, i64 16
  %i.din = load ptr, ptr %i.dim, align 8, !tbaa !385 ; 31 uses
  %i.dio = ptrtoaddr ptr %i.din to i64            ; 5 uses
  %i.dip = load ptr, ptr %i.gt, align 8, !tbaa !267 ; 11 uses
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dip, i64 36 ; 2 uses
  %i.dir = getelementptr inbounds nuw i8, ptr %i.dip, i64 37
  %i.dis = load i8, ptr %i.dir, align 1, !tbaa !263, !range !82, !noundef !83
  %i.dit = trunc nuw i8 %i.dis to i1
  br i1 %i.dit, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857, label %bb.ww

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i857: ; preds = %bb.wv
  %.0.in.pre.i.i858 = load i8, ptr %i.diq, align 1, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811

bb.ww:                                            ; preds = %bb.wv
  %i.diu = getelementptr inbounds nuw i8, ptr %i.dip, i64 28
  %i.div = load i32, ptr %i.diu, align 4, !tbaa !312
  %i.diw = icmp eq i32 %i.div, 0
  br i1 %i.diw, label %bb.wx, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wx:                                            ; preds = %bb.ww
  %i.dix = getelementptr inbounds nuw i8, ptr %i.dip, i64 32
  %i.diy = load i32, ptr %i.dix, align 8, !tbaa !196 ; 6 uses
  %i.diz = getelementptr inbounds nuw i8, ptr %i.dip, i64 24
  %i.dja = load i32, ptr %i.diz, align 8, !tbaa !313
  %i.djb = icmp eq i32 %i.diy, %i.dja
  br i1 %i.djb, label %bb.wy, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wy:                                            ; preds = %bb.wx
  %i.djc = load ptr, ptr %i.dip, align 8, !tbaa !314 ; 2 uses
  %.not.i.i.i849 = icmp sgt i32 %i.diy, 0
  br i1 %.not.i.i.i849, label %bb.wz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809

bb.wz:                                            ; preds = %bb.wy
  %i.djd = and i32 %i.diy, 2147483584             ; 3 uses
  %i.dje = zext nneg i32 %i.djd to i64
  %.not37.i.i.not.i.i8511905.not = icmp eq i32 %i.djd, 0
  br i1 %.not37.i.i.not.i.i8511905.not, label %.critedge.i.i.i.i852, label %.lr.ph1907

bb.xa:                                            ; preds = %.lr.ph1907
  %indvars.iv.next.i.i856 = add nuw nsw i64 %indvars.iv.i.i8501906, 64 ; 2 uses
  %.not37.i.i.not.i.i851 = icmp samesign ult i64 %indvars.iv.next.i.i856, %i.dje
  br i1 %.not37.i.i.not.i.i851, label %.lr.ph1907, label %.critedge.i.i.i.i852, !llvm.loop !315

.lr.ph1907:                                       ; preds = %bb.wz, %bb.xa
  %indvars.iv.i.i8501906 = phi i64 [ %indvars.iv.next.i.i856, %bb.xa ], [ 0, %bb.wz ] ; 2 uses
  %i.djf = lshr exact i64 %indvars.iv.i.i8501906, 3
  %i.djg = getelementptr inbounds nuw i8, ptr %i.djc, i64 %i.djf
  %i.djh = load i64, ptr %i.djg, align 8, !tbaa !145
  %i.dji = icmp eq i64 %i.djh, -1
  br i1 %i.dji, label %bb.xa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809, !llvm.loop !315

.critedge.i.i.i.i852:                             ; preds = %bb.xa, %bb.wz
  %.not38.i.i.i.i853 = icmp eq i32 %i.diy, %i.djd
  br i1 %.not38.i.i.i.i853, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i809, label %bb.xb

bb.xb:                                            ; preds = %.critedge.i.i.i.i852
  %i.djj = lshr i32 %i.diy, 6
  %i.djk = and i32 %i.diy, 63
  %i.djl = zext nneg i32 %i.djk to i64
  %notmask.i40.i.i.i.i854 = shl nsw i64 -1, %i.djl
  %i.djm = zext nneg i32 %i.djj to i64
  %i.djn = getelementptr inbounds nuw [8 x i8], ptr %i.djc, i64 %i.djm
  %i.djo = load i64, ptr %i.djn, align 8, !tbaa !145
  %.demorgan.i.i855 = or i64 %i.djo, %notmask.i40.i.i.i.i854
  %i.djp = icmp eq i64 %.demorgan.i.i855, -1
  %i.djq = zext i1 %i.djp to i16
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  %i.dla = load i32, ptr %i.dkz, align 4, !tbaa !3 ; 5 uses
  %i.dlb = sext i32 %.9 to i64                    ; 5 uses
  %i.dlc = zext nneg i32 %i.dko to i64            ; 8 uses
  %min.iters.check2217 = icmp ult i32 %i.dko, 4
  %or.cond = select i1 %min.iters.check2217, i1 true, i1 %diff.check2216
  br i1 %or.cond, label %.lr.ph.i.i848.preheader, label %vector.main.loop.iter.check2218

vector.main.loop.iter.check2218:                  ; preds = %iter.check2243
  %min.iters.check2219 = icmp ult i32 %i.dko, 32
  br i1 %min.iters.check2219, label %vec.epilog.ph2247, label %vector.ph2220

vector.ph2220:                                    ; preds = %vector.main.loop.iter.check2218
  %n.mod.vf2221 = and i64 %i.dlc, 28
  %n.vec2222 = and i64 %i.dlc, 2147483616         ; 4 uses
  %broadcast.splatinsert2223 = insertelement <8 x i32> poison, i32 %i.dkw, i64 0
  %broadcast.splat2224 = shufflevector <8 x i32> %broadcast.splatinsert2223, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2225 = insertelement <8 x i32> poison, i32 %i.dla, i64 0
  %broadcast.splat2226 = shufflevector <8 x i32> %broadcast.splatinsert2225, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2621 = add <8 x i32> splat (i32 8), %broadcast.splat2226
  %invariant.op2623 = add <8 x i32> splat (i32 16), %broadcast.splat2226
  %invariant.op2625 = add <8 x i32> splat (i32 24), %broadcast.splat2226
  %invariant.op2627 = add <8 x i32> splat (i32 8), %broadcast.splat2224
  %invariant.op2629 = add <8 x i32> splat (i32 16), %broadcast.splat2224
  %invariant.op2631 = add <8 x i32> splat (i32 24), %broadcast.splat2224
  br label %vector.body2227

vector.body2227:                                  ; preds = %vector.body2227, %vector.ph2220
  %index2228 = phi i64 [ 0, %vector.ph2220 ], [ %index.next2237, %vector.body2227 ] ; 2 uses
  %vec.ind2229 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2220 ], [ %vec.ind.next2238, %vector.body2227 ] ; 5 uses
  %vec.ind2230 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2220 ], [ %vec.ind.next2239, %vector.body2227 ] ; 5 uses
  %i.dld = add nsw i64 %index2228, %i.dlb         ; 2 uses
  %i.dle = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dld ; 4 uses
  %i.dlf = add <8 x i32> %broadcast.splat2226, %vec.ind2229
  %.reass2622 = add <8 x i32> %vec.ind2229, %invariant.op2621
  %.reass2624 = add <8 x i32> %vec.ind2229, %invariant.op2623
  %.reass2626 = add <8 x i32> %vec.ind2229, %invariant.op2625
  %i.dlg = getelementptr inbounds nuw i8, ptr %i.dle, i64 32
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.dle, i64 64
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dle, i64 96
  store <8 x i32> %i.dlf, ptr %i.dle, align 4, !tbaa !3
  store <8 x i32> %.reass2622, ptr %i.dlg, align 4, !tbaa !3
  store <8 x i32> %.reass2624, ptr %i.dlh, align 4, !tbaa !3
  store <8 x i32> %.reass2626, ptr %i.dli, align 4, !tbaa !3
  %i.dlj = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dld ; 4 uses
  %i.dlk = add <8 x i32> %broadcast.splat2224, %vec.ind2230
  %.reass2628 = add <8 x i32> %vec.ind2230, %invariant.op2627
  %.reass2630 = add <8 x i32> %vec.ind2230, %invariant.op2629
  %.reass2632 = add <8 x i32> %vec.ind2230, %invariant.op2631
  %i.dll = getelementptr inbounds nuw i8, ptr %i.dlj, i64 32
  %i.dlm = getelementptr inbounds nuw i8, ptr %i.dlj, i64 64
  %i.dln = getelementptr inbounds nuw i8, ptr %i.dlj, i64 96
  store <8 x i32> %i.dlk, ptr %i.dlj, align 4, !tbaa !3
  store <8 x i32> %.reass2628, ptr %i.dll, align 4, !tbaa !3
  store <8 x i32> %.reass2630, ptr %i.dlm, align 4, !tbaa !3
  store <8 x i32> %.reass2632, ptr %i.dln, align 4, !tbaa !3
  %index.next2237 = add nuw i64 %index2228, 32    ; 2 uses
  %vec.ind.next2238 = add <8 x i32> %vec.ind2229, splat (i32 32)
  %vec.ind.next2239 = add <8 x i32> %vec.ind2230, splat (i32 32)
  %i.dlo = icmp eq i64 %index.next2237, %n.vec2222
  br i1 %i.dlo, label %middle.block2240, label %vector.body2227, !llvm.loop !1066

middle.block2240:                                 ; preds = %vector.body2227
  %cmp.n2241 = icmp eq i64 %n.vec2222, %i.dlc
  br i1 %cmp.n2241, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %vec.epilog.iter.check2245

vec.epilog.iter.check2245:                        ; preds = %middle.block2240
  %min.epilog.iters.check2246 = icmp eq i64 %n.mod.vf2221, 0
  br i1 %min.epilog.iters.check2246, label %.lr.ph.i.i848.preheader, label %vec.epilog.ph2247, !prof !472

vec.epilog.ph2247:                                ; preds = %vector.main.loop.iter.check2218, %vec.epilog.iter.check2245
  %vec.epilog.resume.val2242 = phi i64 [ %n.vec2222, %vec.epilog.iter.check2245 ], [ 0, %vector.main.loop.iter.check2218 ] ; 2 uses
  %n.vec2249 = and i64 %i.dlc, 2147483644         ; 3 uses
  %broadcast.splatinsert2250 = insertelement <4 x i32> poison, i32 %i.dkw, i64 0
  %broadcast.splat2251 = shufflevector <4 x i32> %broadcast.splatinsert2250, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2252 = insertelement <4 x i32> poison, i32 %i.dla, i64 0
  %broadcast.splat2253 = shufflevector <4 x i32> %broadcast.splatinsert2252, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dlp = trunc nuw nsw i64 %vec.epilog.resume.val2242 to i32
  %broadcast.splatinsert2254 = insertelement <4 x i32> poison, i32 %i.dlp, i64 0
  %broadcast.splat2255 = shufflevector <4 x i32> %broadcast.splatinsert2254, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2256 = or disjoint <4 x i32> %broadcast.splat2255, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2257

vec.epilog.vector.body2257:                       ; preds = %vec.epilog.vector.body2257, %vec.epilog.ph2247
  %index2258 = phi i64 [ %vec.epilog.resume.val2242, %vec.epilog.ph2247 ], [ %index.next2261, %vec.epilog.vector.body2257 ] ; 2 uses
  %vec.ind2259 = phi <4 x i32> [ %induction2256, %vec.epilog.ph2247 ], [ %vec.ind.next2262, %vec.epilog.vector.body2257 ] ; 2 uses
  %vec.ind2260 = phi <4 x i32> [ %induction2256, %vec.epilog.ph2247 ], [ %vec.ind.next2263, %vec.epilog.vector.body2257 ] ; 2 uses
  %i.dlq = add nsw i64 %index2258, %i.dlb         ; 2 uses
  %i.dlr = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dlq
  %i.dls = add <4 x i32> %broadcast.splat2253, %vec.ind2259
  store <4 x i32> %i.dls, ptr %i.dlr, align 4, !tbaa !3
  %i.dlt = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dlq
  %i.dlu = add <4 x i32> %broadcast.splat2251, %vec.ind2260
  store <4 x i32> %i.dlu, ptr %i.dlt, align 4, !tbaa !3
  %index.next2261 = add nuw i64 %index2258, 4     ; 2 uses
  %vec.ind.next2262 = add <4 x i32> %vec.ind2259, splat (i32 4)
  %vec.ind.next2263 = add <4 x i32> %vec.ind2260, splat (i32 4)
  %i.dlv = icmp eq i64 %index.next2261, %n.vec2249
  br i1 %i.dlv, label %vec.epilog.middle.block2264, label %vec.epilog.vector.body2257, !llvm.loop !1067

vec.epilog.middle.block2264:                      ; preds = %vec.epilog.vector.body2257
  %cmp.n2265 = icmp eq i64 %n.vec2249, %i.dlc
  br i1 %cmp.n2265, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848.preheader

.lr.ph.i.i848.preheader:                          ; preds = %iter.check2243, %vec.epilog.iter.check2245, %vec.epilog.middle.block2264
  %indvars.iv1433.ph = phi i64 [ 0, %iter.check2243 ], [ %n.vec2222, %vec.epilog.iter.check2245 ], [ %n.vec2249, %vec.epilog.middle.block2264 ] ; 6 uses
  %xtraiter2473 = and i64 %i.dlc, 1
  %lcmp.mod2474.not = icmp eq i64 %xtraiter2473, 0
  br i1 %lcmp.mod2474.not, label %.lr.ph.i.i848.prol.loopexit, label %.lr.ph.i.i848.prol

.lr.ph.i.i848.prol:                               ; preds = %.lr.ph.i.i848.preheader
  %i.dlw = add nsw i64 %indvars.iv1433.ph, %i.dlb ; 2 uses
  %i.dlx = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dlw
  %i.dly = trunc nuw nsw i64 %indvars.iv1433.ph to i32
  %i.dlz = add i32 %i.dla, %i.dly
  store i32 %i.dlz, ptr %i.dlx, align 4, !tbaa !3
  %i.dma = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dlw
  %i.dmb = trunc nuw nsw i64 %indvars.iv1433.ph to i32
  %i.dmc = add i32 %i.dkw, %i.dmb
  store i32 %i.dmc, ptr %i.dma, align 4, !tbaa !3
  %indvars.iv.next1434.prol = or disjoint i64 %indvars.iv1433.ph, 1
  br label %.lr.ph.i.i848.prol.loopexit

.lr.ph.i.i848.prol.loopexit:                      ; preds = %.lr.ph.i.i848.prol, %.lr.ph.i.i848.preheader
  %indvars.iv1433.unr = phi i64 [ %indvars.iv1433.ph, %.lr.ph.i.i848.preheader ], [ %indvars.iv.next1434.prol, %.lr.ph.i.i848.prol ]
  %i.dmd = add nsw i64 %i.dlc, -1
  %i.dme = icmp eq i64 %indvars.iv1433.ph, %i.dmd
  br i1 %i.dme, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848

.lr.ph.i.i848:                                    ; preds = %.lr.ph.i.i848.prol.loopexit, %.lr.ph.i.i848
  %indvars.iv1433 = phi i64 [ %indvars.iv.next1434.1, %.lr.ph.i.i848 ], [ %indvars.iv1433.unr, %.lr.ph.i.i848.prol.loopexit ] ; 5 uses
  %i.dmf = add nsw i64 %indvars.iv1433, %i.dlb    ; 2 uses
  %i.dmg = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmf
  %i.dmh = trunc i64 %indvars.iv1433 to i32
  %i.dmi = add i32 %i.dla, %i.dmh
  store i32 %i.dmi, ptr %i.dmg, align 4, !tbaa !3
  %i.dmj = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dmf
  %i.dmk = trunc i64 %indvars.iv1433 to i32
  %i.dml = add i32 %i.dkw, %i.dmk
  store i32 %i.dml, ptr %i.dmj, align 4, !tbaa !3
  %indvars.iv.next1434 = add nuw nsw i64 %indvars.iv1433, 1 ; 3 uses
  %i.dmm = add nsw i64 %indvars.iv.next1434, %i.dlb ; 2 uses
  %i.dmn = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dmm
  %i.dmo = trunc i64 %indvars.iv.next1434 to i32
  %i.dmp = add i32 %i.dla, %i.dmo
  store i32 %i.dmp, ptr %i.dmn, align 4, !tbaa !3
  %i.dmq = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dmm
  %i.dmr = trunc i64 %indvars.iv.next1434 to i32
  %i.dms = add i32 %i.dkw, %i.dmr
  store i32 %i.dms, ptr %i.dmq, align 4, !tbaa !3
  %indvars.iv.next1434.1 = add nuw nsw i64 %indvars.iv1433, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next1434.1, %i.dlc
  br i1 %exitcond.not.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, label %.lr.ph.i.i848, !llvm.loop !1068

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i: ; preds = %.lr.ph.i.i848.prol.loopexit, %.lr.ph.i.i848, %middle.block2240, %vec.epilog.middle.block2264, %bb.xd
  %i.dmt = add nsw i32 %i.dko, %.9
  %indvars.iv.next.i846 = add nsw i64 %indvars.iv.i845, 1 ; 2 uses
  %exitcond.not.i847 = icmp eq i64 %indvars.iv.next.i846, %wide.trip.count.i843
  br i1 %exitcond.not.i847, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xd, !llvm.loop !1069

bb.xe:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i811
  %i.dmu = load ptr, ptr %i.dip, align 8, !tbaa !314 ; 4 uses
  %i.dmv = getelementptr inbounds nuw i8, ptr %i.dip, i64 28
  %i.dmw = load i32, ptr %i.dmv, align 4, !tbaa !312 ; 6 uses
  %i.dmx = getelementptr inbounds nuw i8, ptr %i.dip, i64 32
  %i.dmy = load i32, ptr %i.dmx, align 8, !tbaa !196 ; 7 uses
  %.not.i.i.i.i819 = icmp slt i32 %i.dmw, %i.dmy
  br i1 %.not.i.i.i.i819, label %bb.xf, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit

bb.xf:                                            ; preds = %bb.xe
  %i.dmz = add i32 %i.dmw, 63                     ; 2 uses
  %i.dna = srem i32 %i.dmz, 64
  %i.dnb = sub nsw i32 %i.dmz, %i.dna             ; 6 uses
  %i.dnc = and i32 %i.dmy, -64                    ; 6 uses
  %i.dnd = icmp slt i32 %i.dnc, %i.dnb
  br i1 %i.dnd, label %bb.xg, label %bb.xi

bb.xg:                                            ; preds = %bb.xf
  %i.dne = ashr i32 %i.dmy, 6
  %i.dnf = and i32 %i.dmy, 63
  %i.dng = zext nneg i32 %i.dnf to i64
  %notmask.i.i.i.i.i834 = shl nsw i64 -1, %i.dng
  %i.dnh = xor i64 %notmask.i.i.i.i.i834, -1
  %i.dni = sub nsw i32 %i.dnb, %i.dmw             ; 2 uses
  %i.dnj = zext nneg i32 %i.dni to i64
  %notmask.i.i.i.i.i.i835 = shl nsw i64 -1, %i.dnj
  %i.dnk = xor i64 %notmask.i.i.i.i.i.i835, -1
  %i.dnl = sub nsw i32 64, %i.dni
  %i.dnm = zext nneg i32 %i.dnl to i64
  %i.dnn = shl i64 %i.dnk, %i.dnm
  %i.dno = and i64 %i.dnn, %i.dnh
  %i.dnp = sext i32 %i.dne to i64
  %i.dnq = getelementptr inbounds [8 x i8], ptr %i.dmu, i64 %i.dnp
  %i.dnr = load i64, ptr %i.dnq, align 8, !tbaa !145
  %i.dns = and i64 %i.dno, %i.dnr                 ; 2 uses
  %.not.i.i.i.i.i836 = icmp eq i64 %i.dns, 0
  br i1 %.not.i.i.i.i.i836, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i.i.i.i.i837

.preheader.i.i.i.i.i837:                          ; preds = %bb.xg
  %i.dnt = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dnu = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnt, i64 120
  %i.dnw = load ptr, ptr %i.dnv, align 8, !tbaa !308
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.dnt, i64 104
  %i.dny = load ptr, ptr %i.dnx, align 8, !tbaa !306
  %i.dnz = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.doa = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.dob = getelementptr inbounds nuw i8, ptr %i.dnz, i64 104
  %i.doc = load ptr, ptr %i.dob, align 8, !tbaa !306
  %i.dod = sub i64 %i.die, %i.dio
  %diff.check2164 = icmp ult i64 %i.dod, 128
  br label %bb.xh

bb.xh:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %.preheader.i.i.i.i.i837
  %.8 = phi i32 [ 0, %.preheader.i.i.i.i.i837 ], [ %i.dqo, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %.011.i.i.i.i.i839 = phi i64 [ %i.dns, %.preheader.i.i.i.i.i837 ], [ %i.dqq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i ] ; 3 uses
  %i.doe = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i839, i1 true)
  %148 = trunc nuw nsw i64 %i.doe to i32
  %149 = or disjoint i32 %i.dnc, %148
  %150 = sext i32 %149 to i64                     ; 4 uses
  %i.dof = getelementptr inbounds [4 x i8], ptr %i.dnu, i64 %150 ; 2 uses
  %i.dog = load i32, ptr %i.dof, align 4, !tbaa !3
  %i.doh = sext i32 %i.dog to i64
  %i.doi = getelementptr inbounds [4 x i8], ptr %i.dnw, i64 %i.doh
  %i.doj = load i32, ptr %i.doi, align 4, !tbaa !3 ; 6 uses
  %i.dok = getelementptr inbounds [4 x i8], ptr %i.dhi, i64 %150
  store i32 %.8, ptr %i.dok, align 4, !tbaa !3
  %i.dol = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %150
  store i32 %i.doj, ptr %i.dol, align 4, !tbaa !3
  %i.dom = icmp sgt i32 %i.doj, 0
  br i1 %i.dom, label %iter.check2191, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i

iter.check2191:                                   ; preds = %bb.xh
  %i.don = getelementptr inbounds [4 x i8], ptr %i.doa, i64 %150
  %i.doo = load i32, ptr %i.don, align 4, !tbaa !3
  %i.dop = sext i32 %i.doo to i64
  %i.doq = getelementptr inbounds [4 x i8], ptr %i.doc, i64 %i.dop
  %i.dor = load i32, ptr %i.doq, align 4, !tbaa !3 ; 5 uses
  %i.dos = load i32, ptr %i.dof, align 4, !tbaa !3
  %i.dot = sext i32 %i.dos to i64
  %i.dou = getelementptr inbounds [4 x i8], ptr %i.dny, i64 %i.dot
  %i.dov = load i32, ptr %i.dou, align 4, !tbaa !3 ; 5 uses
  %i.dow = sext i32 %.8 to i64                    ; 5 uses
  %i.dox = zext nneg i32 %i.doj to i64            ; 8 uses
  %min.iters.check2165 = icmp ult i32 %i.doj, 4
  %or.cond2349 = select i1 %min.iters.check2165, i1 true, i1 %diff.check2164
  br i1 %or.cond2349, label %.lr.ph.i.i.i.i.i.i841.preheader, label %vector.main.loop.iter.check2166

vector.main.loop.iter.check2166:                  ; preds = %iter.check2191
  %min.iters.check2167 = icmp ult i32 %i.doj, 32
  br i1 %min.iters.check2167, label %vec.epilog.ph2195, label %vector.ph2168

vector.ph2168:                                    ; preds = %vector.main.loop.iter.check2166
  %n.mod.vf2169 = and i64 %i.dox, 28
  %n.vec2170 = and i64 %i.dox, 2147483616         ; 4 uses
  %broadcast.splatinsert2171 = insertelement <8 x i32> poison, i32 %i.dor, i64 0
  %broadcast.splat2172 = shufflevector <8 x i32> %broadcast.splatinsert2171, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2173 = insertelement <8 x i32> poison, i32 %i.dov, i64 0
  %broadcast.splat2174 = shufflevector <8 x i32> %broadcast.splatinsert2173, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2609 = add <8 x i32> splat (i32 8), %broadcast.splat2174
  %invariant.op2611 = add <8 x i32> splat (i32 16), %broadcast.splat2174
  %invariant.op2613 = add <8 x i32> splat (i32 24), %broadcast.splat2174
  %invariant.op2615 = add <8 x i32> splat (i32 8), %broadcast.splat2172
  %invariant.op2617 = add <8 x i32> splat (i32 16), %broadcast.splat2172
  %invariant.op2619 = add <8 x i32> splat (i32 24), %broadcast.splat2172
  br label %vector.body2175

vector.body2175:                                  ; preds = %vector.body2175, %vector.ph2168
  %index2176 = phi i64 [ 0, %vector.ph2168 ], [ %index.next2185, %vector.body2175 ] ; 2 uses
  %vec.ind2177 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2168 ], [ %vec.ind.next2186, %vector.body2175 ] ; 5 uses
  %vec.ind2178 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2168 ], [ %vec.ind.next2187, %vector.body2175 ] ; 5 uses
  %i.doy = add nsw i64 %index2176, %i.dow         ; 2 uses
  %i.doz = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.doy ; 4 uses
  %i.dpa = add <8 x i32> %broadcast.splat2174, %vec.ind2177
  %.reass2610 = add <8 x i32> %vec.ind2177, %invariant.op2609
  %.reass2612 = add <8 x i32> %vec.ind2177, %invariant.op2611
  %.reass2614 = add <8 x i32> %vec.ind2177, %invariant.op2613
  %i.dpb = getelementptr inbounds nuw i8, ptr %i.doz, i64 32
  %i.dpc = getelementptr inbounds nuw i8, ptr %i.doz, i64 64
  %i.dpd = getelementptr inbounds nuw i8, ptr %i.doz, i64 96
  store <8 x i32> %i.dpa, ptr %i.doz, align 4, !tbaa !3
  store <8 x i32> %.reass2610, ptr %i.dpb, align 4, !tbaa !3
  store <8 x i32> %.reass2612, ptr %i.dpc, align 4, !tbaa !3
  store <8 x i32> %.reass2614, ptr %i.dpd, align 4, !tbaa !3
  %i.dpe = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.doy ; 4 uses
  %i.dpf = add <8 x i32> %broadcast.splat2172, %vec.ind2178
  %.reass2616 = add <8 x i32> %vec.ind2178, %invariant.op2615
  %.reass2618 = add <8 x i32> %vec.ind2178, %invariant.op2617
  %.reass2620 = add <8 x i32> %vec.ind2178, %invariant.op2619
  %i.dpg = getelementptr inbounds nuw i8, ptr %i.dpe, i64 32
  %i.dph = getelementptr inbounds nuw i8, ptr %i.dpe, i64 64
  %i.dpi = getelementptr inbounds nuw i8, ptr %i.dpe, i64 96
  store <8 x i32> %i.dpf, ptr %i.dpe, align 4, !tbaa !3
  store <8 x i32> %.reass2616, ptr %i.dpg, align 4, !tbaa !3
  store <8 x i32> %.reass2618, ptr %i.dph, align 4, !tbaa !3
  store <8 x i32> %.reass2620, ptr %i.dpi, align 4, !tbaa !3
  %index.next2185 = add nuw i64 %index2176, 32    ; 2 uses
  %vec.ind.next2186 = add <8 x i32> %vec.ind2177, splat (i32 32)
  %vec.ind.next2187 = add <8 x i32> %vec.ind2178, splat (i32 32)
  %i.dpj = icmp eq i64 %index.next2185, %n.vec2170
  br i1 %i.dpj, label %middle.block2188, label %vector.body2175, !llvm.loop !1070

middle.block2188:                                 ; preds = %vector.body2175
  %cmp.n2189 = icmp eq i64 %n.vec2170, %i.dox
  br i1 %cmp.n2189, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %vec.epilog.iter.check2193

vec.epilog.iter.check2193:                        ; preds = %middle.block2188
  %min.epilog.iters.check2194 = icmp eq i64 %n.mod.vf2169, 0
  br i1 %min.epilog.iters.check2194, label %.lr.ph.i.i.i.i.i.i841.preheader, label %vec.epilog.ph2195, !prof !472

vec.epilog.ph2195:                                ; preds = %vector.main.loop.iter.check2166, %vec.epilog.iter.check2193
  %vec.epilog.resume.val2190 = phi i64 [ %n.vec2170, %vec.epilog.iter.check2193 ], [ 0, %vector.main.loop.iter.check2166 ] ; 2 uses
  %n.vec2197 = and i64 %i.dox, 2147483644         ; 3 uses
  %broadcast.splatinsert2198 = insertelement <4 x i32> poison, i32 %i.dor, i64 0
  %broadcast.splat2199 = shufflevector <4 x i32> %broadcast.splatinsert2198, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2200 = insertelement <4 x i32> poison, i32 %i.dov, i64 0
  %broadcast.splat2201 = shufflevector <4 x i32> %broadcast.splatinsert2200, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dpk = trunc nuw nsw i64 %vec.epilog.resume.val2190 to i32
  %broadcast.splatinsert2202 = insertelement <4 x i32> poison, i32 %i.dpk, i64 0
  %broadcast.splat2203 = shufflevector <4 x i32> %broadcast.splatinsert2202, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2204 = or disjoint <4 x i32> %broadcast.splat2203, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2205

vec.epilog.vector.body2205:                       ; preds = %vec.epilog.vector.body2205, %vec.epilog.ph2195
  %index2206 = phi i64 [ %vec.epilog.resume.val2190, %vec.epilog.ph2195 ], [ %index.next2209, %vec.epilog.vector.body2205 ] ; 2 uses
  %vec.ind2207 = phi <4 x i32> [ %induction2204, %vec.epilog.ph2195 ], [ %vec.ind.next2210, %vec.epilog.vector.body2205 ] ; 2 uses
  %vec.ind2208 = phi <4 x i32> [ %induction2204, %vec.epilog.ph2195 ], [ %vec.ind.next2211, %vec.epilog.vector.body2205 ] ; 2 uses
  %i.dpl = add nsw i64 %index2206, %i.dow         ; 2 uses
  %i.dpm = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dpl
  %i.dpn = add <4 x i32> %broadcast.splat2201, %vec.ind2207
  store <4 x i32> %i.dpn, ptr %i.dpm, align 4, !tbaa !3
  %i.dpo = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dpl
  %i.dpp = add <4 x i32> %broadcast.splat2199, %vec.ind2208
  store <4 x i32> %i.dpp, ptr %i.dpo, align 4, !tbaa !3
  %index.next2209 = add nuw i64 %index2206, 4     ; 2 uses
  %vec.ind.next2210 = add <4 x i32> %vec.ind2207, splat (i32 4)
  %vec.ind.next2211 = add <4 x i32> %vec.ind2208, splat (i32 4)
  %i.dpq = icmp eq i64 %index.next2209, %n.vec2197
  br i1 %i.dpq, label %vec.epilog.middle.block2212, label %vec.epilog.vector.body2205, !llvm.loop !1071

vec.epilog.middle.block2212:                      ; preds = %vec.epilog.vector.body2205
  %cmp.n2213 = icmp eq i64 %n.vec2197, %i.dox
  br i1 %cmp.n2213, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841.preheader

.lr.ph.i.i.i.i.i.i841.preheader:                  ; preds = %iter.check2191, %vec.epilog.iter.check2193, %vec.epilog.middle.block2212
  %indvars.iv1430.ph = phi i64 [ 0, %iter.check2191 ], [ %n.vec2170, %vec.epilog.iter.check2193 ], [ %n.vec2197, %vec.epilog.middle.block2212 ] ; 6 uses
  %xtraiter2471 = and i64 %i.dox, 1
  %lcmp.mod2472.not = icmp eq i64 %xtraiter2471, 0
  br i1 %lcmp.mod2472.not, label %.lr.ph.i.i.i.i.i.i841.prol.loopexit, label %.lr.ph.i.i.i.i.i.i841.prol

.lr.ph.i.i.i.i.i.i841.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i841.preheader
  %i.dpr = add nsw i64 %indvars.iv1430.ph, %i.dow ; 2 uses
  %i.dps = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dpr
  %i.dpt = trunc nuw nsw i64 %indvars.iv1430.ph to i32
  %i.dpu = add i32 %i.dov, %i.dpt
  store i32 %i.dpu, ptr %i.dps, align 4, !tbaa !3
  %i.dpv = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dpr
  %i.dpw = trunc nuw nsw i64 %indvars.iv1430.ph to i32
  %i.dpx = add i32 %i.dor, %i.dpw
  store i32 %i.dpx, ptr %i.dpv, align 4, !tbaa !3
  %indvars.iv.next1431.prol = or disjoint i64 %indvars.iv1430.ph, 1
  br label %.lr.ph.i.i.i.i.i.i841.prol.loopexit

.lr.ph.i.i.i.i.i.i841.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i841.prol, %.lr.ph.i.i.i.i.i.i841.preheader
  %indvars.iv1430.unr = phi i64 [ %indvars.iv1430.ph, %.lr.ph.i.i.i.i.i.i841.preheader ], [ %indvars.iv.next1431.prol, %.lr.ph.i.i.i.i.i.i841.prol ]
  %i.dpy = add nsw i64 %i.dox, -1
  %i.dpz = icmp eq i64 %indvars.iv1430.ph, %i.dpy
  br i1 %i.dpz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841

.lr.ph.i.i.i.i.i.i841:                            ; preds = %.lr.ph.i.i.i.i.i.i841.prol.loopexit, %.lr.ph.i.i.i.i.i.i841
  %indvars.iv1430 = phi i64 [ %indvars.iv.next1431.1, %.lr.ph.i.i.i.i.i.i841 ], [ %indvars.iv1430.unr, %.lr.ph.i.i.i.i.i.i841.prol.loopexit ] ; 5 uses
  %i.dqa = add nsw i64 %indvars.iv1430, %i.dow    ; 2 uses
  %i.dqb = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dqa
  %i.dqc = trunc i64 %indvars.iv1430 to i32
  %i.dqd = add i32 %i.dov, %i.dqc
  store i32 %i.dqd, ptr %i.dqb, align 4, !tbaa !3
  %i.dqe = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dqa
  %i.dqf = trunc i64 %indvars.iv1430 to i32
  %i.dqg = add i32 %i.dor, %i.dqf
  store i32 %i.dqg, ptr %i.dqe, align 4, !tbaa !3
  %indvars.iv.next1431 = add nuw nsw i64 %indvars.iv1430, 1 ; 3 uses
  %i.dqh = add nsw i64 %indvars.iv.next1431, %i.dow ; 2 uses
  %i.dqi = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dqh
  %i.dqj = trunc i64 %indvars.iv.next1431 to i32
  %i.dqk = add i32 %i.dov, %i.dqj
  store i32 %i.dqk, ptr %i.dqi, align 4, !tbaa !3
  %i.dql = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dqh
  %i.dqm = trunc i64 %indvars.iv.next1431 to i32
  %i.dqn = add i32 %i.dor, %i.dqm
  store i32 %i.dqn, ptr %i.dql, align 4, !tbaa !3
  %indvars.iv.next1431.1 = add nuw nsw i64 %indvars.iv1430, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1431.1, %i.dox
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i841, !llvm.loop !1072

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i841.prol.loopexit, %.lr.ph.i.i.i.i.i.i841, %middle.block2188, %vec.epilog.middle.block2212, %bb.xh
  %i.dqo = add nsw i32 %i.doj, %.8
  %i.dqp = add nsw i64 %.011.i.i.i.i.i839, -1
  %i.dqq = and i64 %i.dqp, %.011.i.i.i.i.i839     ; 2 uses
  %.not10.i.i.i.i.i840 = icmp eq i64 %i.dqq, 0
  br i1 %.not10.i.i.i.i.i840, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xh, !llvm.loop !1073

bb.xi:                                            ; preds = %bb.xf
  %.not32.i.i.i.i820 = icmp eq i32 %i.dmw, %i.dnb
  br i1 %.not32.i.i.i.i820, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.dqr = sdiv i32 %i.dmw, 64                    ; 2 uses
  %i.dqs = sub nsw i32 %i.dnb, %i.dmw             ; 2 uses
  %i.dqt = zext nneg i32 %i.dqs to i64
  %notmask.i.i35.i.i.i.i821 = shl nsw i64 -1, %i.dqt
  %i.dqu = xor i64 %notmask.i.i35.i.i.i.i821, -1
  %i.dqv = sub nsw i32 64, %i.dqs
  %i.dqw = zext nneg i32 %i.dqv to i64
  %i.dqx = shl i64 %i.dqu, %i.dqw
  %i.dqy = sext i32 %i.dqr to i64
  %i.dqz = getelementptr inbounds [8 x i8], ptr %i.dmu, i64 %i.dqy
  %i.dra = load i64, ptr %i.dqz, align 8, !tbaa !145
  %i.drb = and i64 %i.dra, %i.dqx                 ; 2 uses
  %.not.i36.i.i.i.i822 = icmp eq i64 %i.drb, 0
  br i1 %.not.i36.i.i.i.i822, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %.preheader.i37.i.i.i.i823

.preheader.i37.i.i.i.i823:                        ; preds = %bb.xj
  %i.drc = shl nsw i32 %i.dqr, 6
  %i.drd = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.dre = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.drf = getelementptr inbounds nuw i8, ptr %i.drd, i64 120
  %i.drg = load ptr, ptr %i.drf, align 8, !tbaa !308
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drd, i64 104
  %i.dri = load ptr, ptr %i.drh, align 8, !tbaa !306
  %i.drj = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.drk = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.drl = getelementptr inbounds nuw i8, ptr %i.drj, i64 104
  %i.drm = load ptr, ptr %i.drl, align 8, !tbaa !306
  %i.drn = sub i64 %i.die, %i.dio
  %diff.check = icmp ult i64 %i.drn, 128
  br label %bb.xk

bb.xk:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %.preheader.i37.i.i.i.i823
  %.0 = phi i32 [ 0, %.preheader.i37.i.i.i.i823 ], [ %i.dty, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %.011.i39.i.i.i.i825 = phi i64 [ %i.drb, %.preheader.i37.i.i.i.i823 ], [ %i.dua, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 3 uses
  %i.dro = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i39.i.i.i.i825, i1 true)
  %151 = trunc nuw nsw i64 %i.dro to i32
  %152 = or disjoint i32 %i.drc, %151
  %153 = sext i32 %152 to i64                     ; 4 uses
  %i.drp = getelementptr inbounds [4 x i8], ptr %i.dre, i64 %153 ; 2 uses
  %i.drq = load i32, ptr %i.drp, align 4, !tbaa !3
  %i.drr = sext i32 %i.drq to i64
  %i.drs = getelementptr inbounds [4 x i8], ptr %i.drg, i64 %i.drr
  %i.drt = load i32, ptr %i.drs, align 4, !tbaa !3 ; 6 uses
  %i.dru = getelementptr inbounds [4 x i8], ptr %i.dhi, i64 %153
  store i32 %.0, ptr %i.dru, align 4, !tbaa !3
  %i.drv = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %153
  store i32 %i.drt, ptr %i.drv, align 4, !tbaa !3
  %i.drw = icmp sgt i32 %i.drt, 0
  br i1 %i.drw, label %iter.check1985, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i

iter.check1985:                                   ; preds = %bb.xk
  %i.drx = getelementptr inbounds [4 x i8], ptr %i.drk, i64 %153
  %i.dry = load i32, ptr %i.drx, align 4, !tbaa !3
  %i.drz = sext i32 %i.dry to i64
  %i.dsa = getelementptr inbounds [4 x i8], ptr %i.drm, i64 %i.drz
  %i.dsb = load i32, ptr %i.dsa, align 4, !tbaa !3 ; 5 uses
  %i.dsc = load i32, ptr %i.drp, align 4, !tbaa !3
  %i.dsd = sext i32 %i.dsc to i64
  %i.dse = getelementptr inbounds [4 x i8], ptr %i.dri, i64 %i.dsd
  %i.dsf = load i32, ptr %i.dse, align 4, !tbaa !3 ; 5 uses
  %i.dsg = sext i32 %.0 to i64                    ; 5 uses
  %i.dsh = zext nneg i32 %i.drt to i64            ; 8 uses
  %min.iters.check1966 = icmp ult i32 %i.drt, 4
  %or.cond2350 = select i1 %min.iters.check1966, i1 true, i1 %diff.check
  br i1 %or.cond2350, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vector.main.loop.iter.check1967

vector.main.loop.iter.check1967:                  ; preds = %iter.check1985
  %min.iters.check1968 = icmp ult i32 %i.drt, 32
  br i1 %min.iters.check1968, label %vec.epilog.ph1989, label %vector.ph1969

vector.ph1969:                                    ; preds = %vector.main.loop.iter.check1967
  %n.mod.vf1970 = and i64 %i.dsh, 28
  %n.vec1971 = and i64 %i.dsh, 2147483616         ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.dsb, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1972 = insertelement <8 x i32> poison, i32 %i.dsf, i64 0
  %broadcast.splat1973 = shufflevector <8 x i32> %broadcast.splatinsert1972, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat1973
  %invariant.op2563 = add <8 x i32> splat (i32 16), %broadcast.splat1973
  %invariant.op2565 = add <8 x i32> splat (i32 24), %broadcast.splat1973
  %invariant.op2567 = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op2569 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op2571 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body1974

vector.body1974:                                  ; preds = %vector.body1974, %vector.ph1969
  %index1975 = phi i64 [ 0, %vector.ph1969 ], [ %index.next1980, %vector.body1974 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1969 ], [ %vec.ind.next, %vector.body1974 ] ; 5 uses
  %vec.ind1976 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1969 ], [ %vec.ind.next1981, %vector.body1974 ] ; 5 uses
  %i.dsi = add nsw i64 %index1975, %i.dsg         ; 2 uses
  %i.dsj = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dsi ; 4 uses
  %i.dsk = add <8 x i32> %broadcast.splat1973, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass2564 = add <8 x i32> %vec.ind, %invariant.op2563
  %.reass2566 = add <8 x i32> %vec.ind, %invariant.op2565
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.dsj, i64 32
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsj, i64 64
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsj, i64 96
  store <8 x i32> %i.dsk, ptr %i.dsj, align 4, !tbaa !3
  store <8 x i32> %.reass, ptr %i.dsl, align 4, !tbaa !3
  store <8 x i32> %.reass2564, ptr %i.dsm, align 4, !tbaa !3
  store <8 x i32> %.reass2566, ptr %i.dsn, align 4, !tbaa !3
  %i.dso = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dsi ; 4 uses
  %i.dsp = add <8 x i32> %broadcast.splat, %vec.ind1976
  %.reass2568 = add <8 x i32> %vec.ind1976, %invariant.op2567
  %.reass2570 = add <8 x i32> %vec.ind1976, %invariant.op2569
  %.reass2572 = add <8 x i32> %vec.ind1976, %invariant.op2571
  %i.dsq = getelementptr inbounds nuw i8, ptr %i.dso, i64 32
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dso, i64 64
  %i.dss = getelementptr inbounds nuw i8, ptr %i.dso, i64 96
  store <8 x i32> %i.dsp, ptr %i.dso, align 4, !tbaa !3
  store <8 x i32> %.reass2568, ptr %i.dsq, align 4, !tbaa !3
  store <8 x i32> %.reass2570, ptr %i.dsr, align 4, !tbaa !3
  store <8 x i32> %.reass2572, ptr %i.dss, align 4, !tbaa !3
  %index.next1980 = add nuw i64 %index1975, 32    ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %vec.ind.next1981 = add <8 x i32> %vec.ind1976, splat (i32 32)
  %i.dst = icmp eq i64 %index.next1980, %n.vec1971
  br i1 %i.dst, label %middle.block1982, label %vector.body1974, !llvm.loop !1074

middle.block1982:                                 ; preds = %vector.body1974
  %cmp.n1983 = icmp eq i64 %n.vec1971, %i.dsh
  br i1 %cmp.n1983, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %vec.epilog.iter.check1987

vec.epilog.iter.check1987:                        ; preds = %middle.block1982
  %min.epilog.iters.check1988 = icmp eq i64 %n.mod.vf1970, 0
  br i1 %min.epilog.iters.check1988, label %.lr.ph.i.i42.i.i.i.i.preheader, label %vec.epilog.ph1989, !prof !472

vec.epilog.ph1989:                                ; preds = %vector.main.loop.iter.check1967, %vec.epilog.iter.check1987
  %vec.epilog.resume.val1984 = phi i64 [ %n.vec1971, %vec.epilog.iter.check1987 ], [ 0, %vector.main.loop.iter.check1967 ] ; 2 uses
  %n.vec1991 = and i64 %i.dsh, 2147483644         ; 3 uses
  %broadcast.splatinsert1992 = insertelement <4 x i32> poison, i32 %i.dsb, i64 0
  %broadcast.splat1993 = shufflevector <4 x i32> %broadcast.splatinsert1992, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1994 = insertelement <4 x i32> poison, i32 %i.dsf, i64 0
  %broadcast.splat1995 = shufflevector <4 x i32> %broadcast.splatinsert1994, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dsu = trunc nuw nsw i64 %vec.epilog.resume.val1984 to i32
  %broadcast.splatinsert1996 = insertelement <4 x i32> poison, i32 %i.dsu, i64 0
  %broadcast.splat1997 = shufflevector <4 x i32> %broadcast.splatinsert1996, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat1997, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body1998

vec.epilog.vector.body1998:                       ; preds = %vec.epilog.vector.body1998, %vec.epilog.ph1989
  %index1999 = phi i64 [ %vec.epilog.resume.val1984, %vec.epilog.ph1989 ], [ %index.next2002, %vec.epilog.vector.body1998 ] ; 2 uses
  %vec.ind2000 = phi <4 x i32> [ %induction, %vec.epilog.ph1989 ], [ %vec.ind.next2003, %vec.epilog.vector.body1998 ] ; 2 uses
  %vec.ind2001 = phi <4 x i32> [ %induction, %vec.epilog.ph1989 ], [ %vec.ind.next2004, %vec.epilog.vector.body1998 ] ; 2 uses
  %i.dsv = add nsw i64 %index1999, %i.dsg         ; 2 uses
  %i.dsw = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dsv
  %i.dsx = add <4 x i32> %broadcast.splat1995, %vec.ind2000
  store <4 x i32> %i.dsx, ptr %i.dsw, align 4, !tbaa !3
  %i.dsy = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dsv
  %i.dsz = add <4 x i32> %broadcast.splat1993, %vec.ind2001
  store <4 x i32> %i.dsz, ptr %i.dsy, align 4, !tbaa !3
  %index.next2002 = add nuw i64 %index1999, 4     ; 2 uses
  %vec.ind.next2003 = add <4 x i32> %vec.ind2000, splat (i32 4)
  %vec.ind.next2004 = add <4 x i32> %vec.ind2001, splat (i32 4)
  %i.dta = icmp eq i64 %index.next2002, %n.vec1991
  br i1 %i.dta, label %vec.epilog.middle.block2005, label %vec.epilog.vector.body1998, !llvm.loop !1075

vec.epilog.middle.block2005:                      ; preds = %vec.epilog.vector.body1998
  %cmp.n2006 = icmp eq i64 %n.vec1991, %i.dsh
  br i1 %cmp.n2006, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i.preheader

.lr.ph.i.i42.i.i.i.i.preheader:                   ; preds = %iter.check1985, %vec.epilog.iter.check1987, %vec.epilog.middle.block2005
  %indvars.iv.ph = phi i64 [ 0, %iter.check1985 ], [ %n.vec1971, %vec.epilog.iter.check1987 ], [ %n.vec1991, %vec.epilog.middle.block2005 ] ; 6 uses
  %xtraiter = and i64 %i.dsh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i42.i.i.i.i.prol.loopexit, label %.lr.ph.i.i42.i.i.i.i.prol

.lr.ph.i.i42.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i42.i.i.i.i.preheader
  %i.dtb = add nsw i64 %indvars.iv.ph, %i.dsg     ; 2 uses
  %i.dtc = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dtb
  %i.dtd = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dte = add i32 %i.dsf, %i.dtd
  store i32 %i.dte, ptr %i.dtc, align 4, !tbaa !3
  %i.dtf = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dtb
  %i.dtg = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.dth = add i32 %i.dsb, %i.dtg
  store i32 %i.dth, ptr %i.dtf, align 4, !tbaa !3
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.i.i42.i.i.i.i.prol.loopexit

.lr.ph.i.i42.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i42.i.i.i.i.prol, %.lr.ph.i.i42.i.i.i.i.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.i.i42.i.i.i.i.preheader ], [ %indvars.iv.next.prol, %.lr.ph.i.i42.i.i.i.i.prol ]
  %i.dti = add nsw i64 %i.dsh, -1
  %i.dtj = icmp eq i64 %indvars.iv.ph, %i.dti
  br i1 %i.dtj, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i

.lr.ph.i.i42.i.i.i.i:                             ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.i.i42.i.i.i.i ], [ %indvars.iv.unr, %.lr.ph.i.i42.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dtk = add nsw i64 %indvars.iv, %i.dsg        ; 2 uses
  %i.dtl = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dtk
  %i.dtm = trunc i64 %indvars.iv to i32
  %i.dtn = add i32 %i.dsf, %i.dtm
  store i32 %i.dtn, ptr %i.dtl, align 4, !tbaa !3
  %i.dto = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dtk
  %i.dtp = trunc i64 %indvars.iv to i32
  %i.dtq = add i32 %i.dsb, %i.dtp
  store i32 %i.dtq, ptr %i.dto, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dtr = add nsw i64 %indvars.iv.next, %i.dsg   ; 2 uses
  %i.dts = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dtr
  %i.dtt = trunc i64 %indvars.iv.next to i32
  %i.dtu = add i32 %i.dsf, %i.dtt
  store i32 %i.dtu, ptr %i.dts, align 4, !tbaa !3
  %i.dtv = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dtr
  %i.dtw = trunc i64 %indvars.iv.next to i32
  %i.dtx = add i32 %i.dsb, %i.dtw
  store i32 %i.dtx, ptr %i.dtv, align 4, !tbaa !3
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.i.i44.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.1, %i.dsh
  br i1 %exitcond.not.i.i44.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, label %.lr.ph.i.i42.i.i.i.i, !llvm.loop !1076

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i: ; preds = %.lr.ph.i.i42.i.i.i.i.prol.loopexit, %.lr.ph.i.i42.i.i.i.i, %middle.block1982, %vec.epilog.middle.block2005, %bb.xk
  %i.dty = add nsw i32 %i.drt, %.0                ; 2 uses
  %i.dtz = add i64 %.011.i39.i.i.i.i825, -1
  %i.dua = and i64 %i.dtz, %.011.i39.i.i.i.i825   ; 2 uses
  %.not10.i41.i.i.i.i = icmp eq i64 %i.dua, 0
  br i1 %.not10.i41.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i, label %bb.xk, !llvm.loop !1073

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i, %bb.xj, %bb.xi
  %.1 = phi i32 [ 0, %bb.xi ], [ 0, %bb.xj ], [ %i.dty, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i40.i.i.i.i ] ; 2 uses
  %i.dub = add nsw i32 %i.dnb, 64                 ; 2 uses
  %.not3365.i.i.i.i = icmp sgt i32 %i.dub, %i.dnc
  br i1 %.not3365.i.i.i.i, label %._crit_edge.i.i.i.i828, label %.lr.ph.i.i.i.i826.preheader

.lr.ph.i.i.i.i826.preheader:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %i.duc = load ptr, ptr %i.p, align 8            ; 2 uses
  %i.dud = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.due = getelementptr inbounds nuw i8, ptr %i.duc, i64 120 ; 2 uses
  %i.duf = getelementptr inbounds nuw i8, ptr %i.duc, i64 104 ; 2 uses
  %i.dug = load ptr, ptr %i.q, align 8
  %i.duh = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.dui = getelementptr inbounds nuw i8, ptr %i.dug, i64 104 ; 2 uses
  %i.duj = sub i64 %i.die, %i.dio                 ; 2 uses
  %diff.check2060 = icmp ult i64 %i.duj, 128
  %diff.check2008 = icmp ult i64 %i.duj, 128
  br label %.lr.ph.i.i.i.i826

._crit_edge.i.i.i.i828:                           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i
  %.4 = phi i32 [ %.1, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUlimE_clEim.exit45.i.i.i.i ], [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ]
  %.not34.i.i.i.i829 = icmp eq i32 %i.dmy, %i.dnc
  br i1 %.not34.i.i.i.i829, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xo

.lr.ph.i.i.i.i826:                                ; preds = %.lr.ph.i.i.i.i826.preheader, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  %.2 = phi i32 [ %.3, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %.1, %.lr.ph.i.i.i.i826.preheader ] ; 4 uses
  %i.duk = phi i32 [ %i.eaa, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dub, %.lr.ph.i.i.i.i826.preheader ] ; 2 uses
  %.066.i.i.i.i = phi i32 [ %i.duk, %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i ], [ %i.dnb, %.lr.ph.i.i.i.i826.preheader ] ; 2 uses
  %i.dul = sdiv i32 %.066.i.i.i.i, 64             ; 3 uses
  %i.dum = sext i32 %i.dul to i64
  %i.dun = getelementptr inbounds [8 x i8], ptr %i.dmu, i64 %i.dum
  %i.duo = load i64, ptr %i.dun, align 8, !tbaa !145 ; 2 uses
  switch i64 %i.duo, label %.lr.ph.i.i.i.i.i833 [
    i64 -1, label %bb.xl
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i833:                              ; preds = %.lr.ph.i.i.i.i826
  %i.dup = shl nsw i32 %i.dul, 6
  %i.duq = load ptr, ptr %i.due, align 8, !tbaa !308
  %i.dur = load ptr, ptr %i.duf, align 8, !tbaa !306
  %i.dus = load ptr, ptr %i.dui, align 8, !tbaa !306
  br label %bb.xn

bb.xl:                                            ; preds = %.lr.ph.i.i.i.i826
  %i.dut = shl nsw i32 %i.dul, 6                  ; 2 uses
  %i.duu = add i32 %i.dut, 64
  %i.duv = sext i32 %i.duu to i64
  %.0.off.i.i.i.i831 = add i32 %.066.i.i.i.i, 127
  %.not26.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i831, 64
  br i1 %.not26.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %.lr.ph25.i.i.i.i.i

.lr.ph25.i.i.i.i.i:                               ; preds = %bb.xl
  %i.duw = sext i32 %i.dut to i64
  %i.dux = load ptr, ptr %i.due, align 8, !tbaa !308
  %i.duy = load ptr, ptr %i.duf, align 8, !tbaa !306
  %i.duz = load ptr, ptr %i.dui, align 8, !tbaa !306
  br label %bb.xm

bb.xm:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %.lr.ph25.i.i.i.i.i
  %.6 = phi i32 [ %.2, %.lr.ph25.i.i.i.i.i ], [ %i.dxk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i64 [ %i.duw, %.lr.ph25.i.i.i.i.i ], [ %i.dxl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %sext.i.i.i.i.i832 = shl i64 %.024.i.i.i.i.i, 32
  %i.dva = ashr exact i64 %sext.i.i.i.i.i832, 32  ; 4 uses
  %i.dvb = getelementptr inbounds [4 x i8], ptr %i.dud, i64 %i.dva ; 2 uses
  %i.dvc = load i32, ptr %i.dvb, align 4, !tbaa !3
  %i.dvd = sext i32 %i.dvc to i64
  %i.dve = getelementptr inbounds [4 x i8], ptr %i.dux, i64 %i.dvd
  %i.dvf = load i32, ptr %i.dve, align 4, !tbaa !3 ; 6 uses
  %i.dvg = getelementptr inbounds [4 x i8], ptr %i.dhi, i64 %i.dva
  store i32 %.6, ptr %i.dvg, align 4, !tbaa !3
  %i.dvh = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %i.dva
  store i32 %i.dvf, ptr %i.dvh, align 4, !tbaa !3
  %i.dvi = icmp sgt i32 %i.dvf, 0
  br i1 %i.dvi, label %iter.check2087, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i

iter.check2087:                                   ; preds = %bb.xm
  %i.dvj = getelementptr inbounds [4 x i8], ptr %i.duh, i64 %i.dva
  %i.dvk = load i32, ptr %i.dvj, align 4, !tbaa !3
  %i.dvl = sext i32 %i.dvk to i64
  %i.dvm = getelementptr inbounds [4 x i8], ptr %i.duz, i64 %i.dvl
  %i.dvn = load i32, ptr %i.dvm, align 4, !tbaa !3 ; 5 uses
  %i.dvo = load i32, ptr %i.dvb, align 4, !tbaa !3
  %i.dvp = sext i32 %i.dvo to i64
  %i.dvq = getelementptr inbounds [4 x i8], ptr %i.duy, i64 %i.dvp
  %i.dvr = load i32, ptr %i.dvq, align 4, !tbaa !3 ; 5 uses
  %i.dvs = sext i32 %.6 to i64                    ; 5 uses
  %i.dvt = zext nneg i32 %i.dvf to i64            ; 8 uses
  %min.iters.check2061 = icmp ult i32 %i.dvf, 4
  %or.cond2351 = select i1 %min.iters.check2061, i1 true, i1 %diff.check2060
  br i1 %or.cond2351, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vector.main.loop.iter.check2062

vector.main.loop.iter.check2062:                  ; preds = %iter.check2087
  %min.iters.check2063 = icmp ult i32 %i.dvf, 32
  br i1 %min.iters.check2063, label %vec.epilog.ph2091, label %vector.ph2064

vector.ph2064:                                    ; preds = %vector.main.loop.iter.check2062
  %n.mod.vf2065 = and i64 %i.dvt, 28
  %n.vec2066 = and i64 %i.dvt, 2147483616         ; 4 uses
  %broadcast.splatinsert2067 = insertelement <8 x i32> poison, i32 %i.dvn, i64 0
  %broadcast.splat2068 = shufflevector <8 x i32> %broadcast.splatinsert2067, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2069 = insertelement <8 x i32> poison, i32 %i.dvr, i64 0
  %broadcast.splat2070 = shufflevector <8 x i32> %broadcast.splatinsert2069, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2573 = add <8 x i32> splat (i32 8), %broadcast.splat2070
  %invariant.op2575 = add <8 x i32> splat (i32 16), %broadcast.splat2070
  %invariant.op2577 = add <8 x i32> splat (i32 24), %broadcast.splat2070
  %invariant.op2579 = add <8 x i32> splat (i32 8), %broadcast.splat2068
  %invariant.op2581 = add <8 x i32> splat (i32 16), %broadcast.splat2068
  %invariant.op2583 = add <8 x i32> splat (i32 24), %broadcast.splat2068
  br label %vector.body2071

vector.body2071:                                  ; preds = %vector.body2071, %vector.ph2064
  %index2072 = phi i64 [ 0, %vector.ph2064 ], [ %index.next2081, %vector.body2071 ] ; 2 uses
  %vec.ind2073 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2064 ], [ %vec.ind.next2082, %vector.body2071 ] ; 5 uses
  %vec.ind2074 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2064 ], [ %vec.ind.next2083, %vector.body2071 ] ; 5 uses
  %i.dvu = add nsw i64 %index2072, %i.dvs         ; 2 uses
  %i.dvv = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dvu ; 4 uses
  %i.dvw = add <8 x i32> %broadcast.splat2070, %vec.ind2073
  %.reass2574 = add <8 x i32> %vec.ind2073, %invariant.op2573
  %.reass2576 = add <8 x i32> %vec.ind2073, %invariant.op2575
  %.reass2578 = add <8 x i32> %vec.ind2073, %invariant.op2577
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvv, i64 32
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvv, i64 64
  %i.dvz = getelementptr inbounds nuw i8, ptr %i.dvv, i64 96
  store <8 x i32> %i.dvw, ptr %i.dvv, align 4, !tbaa !3
  store <8 x i32> %.reass2574, ptr %i.dvx, align 4, !tbaa !3
  store <8 x i32> %.reass2576, ptr %i.dvy, align 4, !tbaa !3
  store <8 x i32> %.reass2578, ptr %i.dvz, align 4, !tbaa !3
  %i.dwa = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dvu ; 4 uses
  %i.dwb = add <8 x i32> %broadcast.splat2068, %vec.ind2074
  %.reass2580 = add <8 x i32> %vec.ind2074, %invariant.op2579
  %.reass2582 = add <8 x i32> %vec.ind2074, %invariant.op2581
  %.reass2584 = add <8 x i32> %vec.ind2074, %invariant.op2583
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dwa, i64 32
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dwa, i64 64
  %i.dwe = getelementptr inbounds nuw i8, ptr %i.dwa, i64 96
  store <8 x i32> %i.dwb, ptr %i.dwa, align 4, !tbaa !3
  store <8 x i32> %.reass2580, ptr %i.dwc, align 4, !tbaa !3
  store <8 x i32> %.reass2582, ptr %i.dwd, align 4, !tbaa !3
  store <8 x i32> %.reass2584, ptr %i.dwe, align 4, !tbaa !3
  %index.next2081 = add nuw i64 %index2072, 32    ; 2 uses
  %vec.ind.next2082 = add <8 x i32> %vec.ind2073, splat (i32 32)
  %vec.ind.next2083 = add <8 x i32> %vec.ind2074, splat (i32 32)
  %i.dwf = icmp eq i64 %index.next2081, %n.vec2066
  br i1 %i.dwf, label %middle.block2084, label %vector.body2071, !llvm.loop !1077

middle.block2084:                                 ; preds = %vector.body2071
  %cmp.n2085 = icmp eq i64 %n.vec2066, %i.dvt
  br i1 %cmp.n2085, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %vec.epilog.iter.check2089

vec.epilog.iter.check2089:                        ; preds = %middle.block2084
  %min.epilog.iters.check2090 = icmp eq i64 %n.mod.vf2065, 0
  br i1 %min.epilog.iters.check2090, label %.lr.ph.i.i48.i.i.i.i.preheader, label %vec.epilog.ph2091, !prof !472

vec.epilog.ph2091:                                ; preds = %vector.main.loop.iter.check2062, %vec.epilog.iter.check2089
  %vec.epilog.resume.val2086 = phi i64 [ %n.vec2066, %vec.epilog.iter.check2089 ], [ 0, %vector.main.loop.iter.check2062 ] ; 2 uses
  %n.vec2093 = and i64 %i.dvt, 2147483644         ; 3 uses
  %broadcast.splatinsert2094 = insertelement <4 x i32> poison, i32 %i.dvn, i64 0
  %broadcast.splat2095 = shufflevector <4 x i32> %broadcast.splatinsert2094, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2096 = insertelement <4 x i32> poison, i32 %i.dvr, i64 0
  %broadcast.splat2097 = shufflevector <4 x i32> %broadcast.splatinsert2096, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dwg = trunc nuw nsw i64 %vec.epilog.resume.val2086 to i32
  %broadcast.splatinsert2098 = insertelement <4 x i32> poison, i32 %i.dwg, i64 0
  %broadcast.splat2099 = shufflevector <4 x i32> %broadcast.splatinsert2098, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2100 = or disjoint <4 x i32> %broadcast.splat2099, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2101

vec.epilog.vector.body2101:                       ; preds = %vec.epilog.vector.body2101, %vec.epilog.ph2091
  %index2102 = phi i64 [ %vec.epilog.resume.val2086, %vec.epilog.ph2091 ], [ %index.next2105, %vec.epilog.vector.body2101 ] ; 2 uses
  %vec.ind2103 = phi <4 x i32> [ %induction2100, %vec.epilog.ph2091 ], [ %vec.ind.next2106, %vec.epilog.vector.body2101 ] ; 2 uses
  %vec.ind2104 = phi <4 x i32> [ %induction2100, %vec.epilog.ph2091 ], [ %vec.ind.next2107, %vec.epilog.vector.body2101 ] ; 2 uses
  %i.dwh = add nsw i64 %index2102, %i.dvs         ; 2 uses
  %i.dwi = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dwh
  %i.dwj = add <4 x i32> %broadcast.splat2097, %vec.ind2103
  store <4 x i32> %i.dwj, ptr %i.dwi, align 4, !tbaa !3
  %i.dwk = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dwh
  %i.dwl = add <4 x i32> %broadcast.splat2095, %vec.ind2104
  store <4 x i32> %i.dwl, ptr %i.dwk, align 4, !tbaa !3
  %index.next2105 = add nuw i64 %index2102, 4     ; 2 uses
  %vec.ind.next2106 = add <4 x i32> %vec.ind2103, splat (i32 4)
  %vec.ind.next2107 = add <4 x i32> %vec.ind2104, splat (i32 4)
  %i.dwm = icmp eq i64 %index.next2105, %n.vec2093
  br i1 %i.dwm, label %vec.epilog.middle.block2108, label %vec.epilog.vector.body2101, !llvm.loop !1078

vec.epilog.middle.block2108:                      ; preds = %vec.epilog.vector.body2101
  %cmp.n2109 = icmp eq i64 %n.vec2093, %i.dvt
  br i1 %cmp.n2109, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.preheader

.lr.ph.i.i48.i.i.i.i.preheader:                   ; preds = %iter.check2087, %vec.epilog.iter.check2089, %vec.epilog.middle.block2108
  %indvars.iv1421.ph = phi i64 [ 0, %iter.check2087 ], [ %n.vec2066, %vec.epilog.iter.check2089 ], [ %n.vec2093, %vec.epilog.middle.block2108 ] ; 6 uses
  %xtraiter2465 = and i64 %i.dvt, 1
  %lcmp.mod2466.not = icmp eq i64 %xtraiter2465, 0
  br i1 %lcmp.mod2466.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i48.i.i.i.i.preheader
  %i.dwn = add nsw i64 %indvars.iv1421.ph, %i.dvs ; 2 uses
  %i.dwo = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dwn
  %i.dwp = trunc nuw nsw i64 %indvars.iv1421.ph to i32
  %i.dwq = add i32 %i.dvr, %i.dwp
  store i32 %i.dwq, ptr %i.dwo, align 4, !tbaa !3
  %i.dwr = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dwn
  %i.dws = trunc nuw nsw i64 %indvars.iv1421.ph to i32
  %i.dwt = add i32 %i.dvn, %i.dws
  store i32 %i.dwt, ptr %i.dwr, align 4, !tbaa !3
  %indvars.iv.next1422.prol = or disjoint i64 %indvars.iv1421.ph, 1
  br label %.lr.ph.i.i48.i.i.i.i.prol.loopexit

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %.lr.ph.i.i48.i.i.i.i.preheader
  %indvars.iv1421.unr = phi i64 [ %indvars.iv1421.ph, %.lr.ph.i.i48.i.i.i.i.preheader ], [ %indvars.iv.next1422.prol, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.dwu = add nsw i64 %i.dvt, -1
  %i.dwv = icmp eq i64 %indvars.iv1421.ph, %i.dwu
  br i1 %i.dwv, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %indvars.iv1421 = phi i64 [ %indvars.iv.next1422.1, %.lr.ph.i.i48.i.i.i.i ], [ %indvars.iv1421.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dww = add nsw i64 %indvars.iv1421, %i.dvs    ; 2 uses
  %i.dwx = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dww
  %i.dwy = trunc i64 %indvars.iv1421 to i32
  %i.dwz = add i32 %i.dvr, %i.dwy
  store i32 %i.dwz, ptr %i.dwx, align 4, !tbaa !3
  %i.dxa = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dww
  %i.dxb = trunc i64 %indvars.iv1421 to i32
  %i.dxc = add i32 %i.dvn, %i.dxb
  store i32 %i.dxc, ptr %i.dxa, align 4, !tbaa !3
  %indvars.iv.next1422 = add nuw nsw i64 %indvars.iv1421, 1 ; 3 uses
  %i.dxd = add nsw i64 %indvars.iv.next1422, %i.dvs ; 2 uses
  %i.dxe = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dxd
  %i.dxf = trunc i64 %indvars.iv.next1422 to i32
  %i.dxg = add i32 %i.dvr, %i.dxf
  store i32 %i.dxg, ptr %i.dxe, align 4, !tbaa !3
  %i.dxh = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dxd
  %i.dxi = trunc i64 %indvars.iv.next1422 to i32
  %i.dxj = add i32 %i.dvn, %i.dxi
  store i32 %i.dxj, ptr %i.dxh, align 4, !tbaa !3
  %indvars.iv.next1422.1 = add nuw nsw i64 %indvars.iv1421, 2 ; 2 uses
  %exitcond.not.i.i50.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1422.1, %i.dvt
  br i1 %exitcond.not.i.i50.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !1079

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i: ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i, %middle.block2084, %vec.epilog.middle.block2108, %bb.xm
  %i.dxk = add nsw i32 %i.dvf, %.6                ; 2 uses
  %i.dxl = add nuw i64 %.024.i.i.i.i.i, 1         ; 2 uses
  %i.dxm = icmp ult i64 %i.dxl, %i.duv
  br i1 %i.dxm, label %bb.xm, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !1080

bb.xn:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %.lr.ph.i.i.i.i.i833
  %.7 = phi i32 [ %.2, %.lr.ph.i.i.i.i.i833 ], [ %i.dzx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %.01523.i.i.i.i.i = phi i64 [ %i.duo, %.lr.ph.i.i.i.i.i833 ], [ %i.dzz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ] ; 3 uses
  %i.dxn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01523.i.i.i.i.i, i1 true)
  %154 = trunc nuw nsw i64 %i.dxn to i32
  %155 = or disjoint i32 %i.dup, %154
  %156 = sext i32 %155 to i64                     ; 4 uses
  %i.dxo = getelementptr inbounds [4 x i8], ptr %i.dud, i64 %156 ; 2 uses
  %i.dxp = load i32, ptr %i.dxo, align 4, !tbaa !3
  %i.dxq = sext i32 %i.dxp to i64
  %i.dxr = getelementptr inbounds [4 x i8], ptr %i.duq, i64 %i.dxq
  %i.dxs = load i32, ptr %i.dxr, align 4, !tbaa !3 ; 6 uses
  %i.dxt = getelementptr inbounds [4 x i8], ptr %i.dhi, i64 %156
  store i32 %.7, ptr %i.dxt, align 4, !tbaa !3
  %i.dxu = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %156
  store i32 %i.dxs, ptr %i.dxu, align 4, !tbaa !3
  %i.dxv = icmp sgt i32 %i.dxs, 0
  br i1 %i.dxv, label %iter.check2035, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i

iter.check2035:                                   ; preds = %bb.xn
  %i.dxw = getelementptr inbounds [4 x i8], ptr %i.duh, i64 %156
  %i.dxx = load i32, ptr %i.dxw, align 4, !tbaa !3
  %i.dxy = sext i32 %i.dxx to i64
  %i.dxz = getelementptr inbounds [4 x i8], ptr %i.dus, i64 %i.dxy
  %i.dya = load i32, ptr %i.dxz, align 4, !tbaa !3 ; 5 uses
  %i.dyb = load i32, ptr %i.dxo, align 4, !tbaa !3
  %i.dyc = sext i32 %i.dyb to i64
  %i.dyd = getelementptr inbounds [4 x i8], ptr %i.dur, i64 %i.dyc
  %i.dye = load i32, ptr %i.dyd, align 4, !tbaa !3 ; 5 uses
  %i.dyf = sext i32 %.7 to i64                    ; 5 uses
  %i.dyg = zext nneg i32 %i.dxs to i64            ; 8 uses
  %min.iters.check2009 = icmp ult i32 %i.dxs, 4
  %or.cond2352 = select i1 %min.iters.check2009, i1 true, i1 %diff.check2008
  br i1 %or.cond2352, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vector.main.loop.iter.check2010

vector.main.loop.iter.check2010:                  ; preds = %iter.check2035
  %min.iters.check2011 = icmp ult i32 %i.dxs, 32
  br i1 %min.iters.check2011, label %vec.epilog.ph2039, label %vector.ph2012

vector.ph2012:                                    ; preds = %vector.main.loop.iter.check2010
  %n.mod.vf2013 = and i64 %i.dyg, 28
  %n.vec2014 = and i64 %i.dyg, 2147483616         ; 4 uses
  %broadcast.splatinsert2015 = insertelement <8 x i32> poison, i32 %i.dya, i64 0
  %broadcast.splat2016 = shufflevector <8 x i32> %broadcast.splatinsert2015, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2017 = insertelement <8 x i32> poison, i32 %i.dye, i64 0
  %broadcast.splat2018 = shufflevector <8 x i32> %broadcast.splatinsert2017, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2585 = add <8 x i32> splat (i32 8), %broadcast.splat2018
  %invariant.op2587 = add <8 x i32> splat (i32 16), %broadcast.splat2018
  %invariant.op2589 = add <8 x i32> splat (i32 24), %broadcast.splat2018
  %invariant.op2591 = add <8 x i32> splat (i32 8), %broadcast.splat2016
  %invariant.op2593 = add <8 x i32> splat (i32 16), %broadcast.splat2016
  %invariant.op2595 = add <8 x i32> splat (i32 24), %broadcast.splat2016
  br label %vector.body2019

vector.body2019:                                  ; preds = %vector.body2019, %vector.ph2012
  %index2020 = phi i64 [ 0, %vector.ph2012 ], [ %index.next2029, %vector.body2019 ] ; 2 uses
  %vec.ind2021 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2012 ], [ %vec.ind.next2030, %vector.body2019 ] ; 5 uses
  %vec.ind2022 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2012 ], [ %vec.ind.next2031, %vector.body2019 ] ; 5 uses
  %i.dyh = add nsw i64 %index2020, %i.dyf         ; 2 uses
  %i.dyi = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dyh ; 4 uses
  %i.dyj = add <8 x i32> %broadcast.splat2018, %vec.ind2021
  %.reass2586 = add <8 x i32> %vec.ind2021, %invariant.op2585
  %.reass2588 = add <8 x i32> %vec.ind2021, %invariant.op2587
  %.reass2590 = add <8 x i32> %vec.ind2021, %invariant.op2589
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyi, i64 32
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dyi, i64 64
  %i.dym = getelementptr inbounds nuw i8, ptr %i.dyi, i64 96
  store <8 x i32> %i.dyj, ptr %i.dyi, align 4, !tbaa !3
  store <8 x i32> %.reass2586, ptr %i.dyk, align 4, !tbaa !3
  store <8 x i32> %.reass2588, ptr %i.dyl, align 4, !tbaa !3
  store <8 x i32> %.reass2590, ptr %i.dym, align 4, !tbaa !3
  %i.dyn = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dyh ; 4 uses
  %i.dyo = add <8 x i32> %broadcast.splat2016, %vec.ind2022
  %.reass2592 = add <8 x i32> %vec.ind2022, %invariant.op2591
  %.reass2594 = add <8 x i32> %vec.ind2022, %invariant.op2593
  %.reass2596 = add <8 x i32> %vec.ind2022, %invariant.op2595
  %i.dyp = getelementptr inbounds nuw i8, ptr %i.dyn, i64 32
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dyn, i64 64
  %i.dyr = getelementptr inbounds nuw i8, ptr %i.dyn, i64 96
  store <8 x i32> %i.dyo, ptr %i.dyn, align 4, !tbaa !3
  store <8 x i32> %.reass2592, ptr %i.dyp, align 4, !tbaa !3
  store <8 x i32> %.reass2594, ptr %i.dyq, align 4, !tbaa !3
  store <8 x i32> %.reass2596, ptr %i.dyr, align 4, !tbaa !3
  %index.next2029 = add nuw i64 %index2020, 32    ; 2 uses
  %vec.ind.next2030 = add <8 x i32> %vec.ind2021, splat (i32 32)
  %vec.ind.next2031 = add <8 x i32> %vec.ind2022, splat (i32 32)
  %i.dys = icmp eq i64 %index.next2029, %n.vec2014
  br i1 %i.dys, label %middle.block2032, label %vector.body2019, !llvm.loop !1081

middle.block2032:                                 ; preds = %vector.body2019
  %cmp.n2033 = icmp eq i64 %n.vec2014, %i.dyg
  br i1 %cmp.n2033, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %vec.epilog.iter.check2037

vec.epilog.iter.check2037:                        ; preds = %middle.block2032
  %min.epilog.iters.check2038 = icmp eq i64 %n.mod.vf2013, 0
  br i1 %min.epilog.iters.check2038, label %.lr.ph.i17.i.i.i.i.i.preheader, label %vec.epilog.ph2039, !prof !472

vec.epilog.ph2039:                                ; preds = %vector.main.loop.iter.check2010, %vec.epilog.iter.check2037
  %vec.epilog.resume.val2034 = phi i64 [ %n.vec2014, %vec.epilog.iter.check2037 ], [ 0, %vector.main.loop.iter.check2010 ] ; 2 uses
  %n.vec2041 = and i64 %i.dyg, 2147483644         ; 3 uses
  %broadcast.splatinsert2042 = insertelement <4 x i32> poison, i32 %i.dya, i64 0
  %broadcast.splat2043 = shufflevector <4 x i32> %broadcast.splatinsert2042, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2044 = insertelement <4 x i32> poison, i32 %i.dye, i64 0
  %broadcast.splat2045 = shufflevector <4 x i32> %broadcast.splatinsert2044, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dyt = trunc nuw nsw i64 %vec.epilog.resume.val2034 to i32
  %broadcast.splatinsert2046 = insertelement <4 x i32> poison, i32 %i.dyt, i64 0
  %broadcast.splat2047 = shufflevector <4 x i32> %broadcast.splatinsert2046, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2048 = or disjoint <4 x i32> %broadcast.splat2047, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2049

vec.epilog.vector.body2049:                       ; preds = %vec.epilog.vector.body2049, %vec.epilog.ph2039
  %index2050 = phi i64 [ %vec.epilog.resume.val2034, %vec.epilog.ph2039 ], [ %index.next2053, %vec.epilog.vector.body2049 ] ; 2 uses
  %vec.ind2051 = phi <4 x i32> [ %induction2048, %vec.epilog.ph2039 ], [ %vec.ind.next2054, %vec.epilog.vector.body2049 ] ; 2 uses
  %vec.ind2052 = phi <4 x i32> [ %induction2048, %vec.epilog.ph2039 ], [ %vec.ind.next2055, %vec.epilog.vector.body2049 ] ; 2 uses
  %i.dyu = add nsw i64 %index2050, %i.dyf         ; 2 uses
  %i.dyv = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dyu
  %i.dyw = add <4 x i32> %broadcast.splat2045, %vec.ind2051
  store <4 x i32> %i.dyw, ptr %i.dyv, align 4, !tbaa !3
  %i.dyx = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dyu
  %i.dyy = add <4 x i32> %broadcast.splat2043, %vec.ind2052
  store <4 x i32> %i.dyy, ptr %i.dyx, align 4, !tbaa !3
  %index.next2053 = add nuw i64 %index2050, 4     ; 2 uses
  %vec.ind.next2054 = add <4 x i32> %vec.ind2051, splat (i32 4)
  %vec.ind.next2055 = add <4 x i32> %vec.ind2052, splat (i32 4)
  %i.dyz = icmp eq i64 %index.next2053, %n.vec2041
  br i1 %i.dyz, label %vec.epilog.middle.block2056, label %vec.epilog.vector.body2049, !llvm.loop !1082

vec.epilog.middle.block2056:                      ; preds = %vec.epilog.vector.body2049
  %cmp.n2057 = icmp eq i64 %n.vec2041, %i.dyg
  br i1 %cmp.n2057, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.preheader:                   ; preds = %iter.check2035, %vec.epilog.iter.check2037, %vec.epilog.middle.block2056
  %indvars.iv1424.ph = phi i64 [ 0, %iter.check2035 ], [ %n.vec2014, %vec.epilog.iter.check2037 ], [ %n.vec2041, %vec.epilog.middle.block2056 ] ; 6 uses
  %xtraiter2467 = and i64 %i.dyg, 1
  %lcmp.mod2468.not = icmp eq i64 %xtraiter2467, 0
  br i1 %lcmp.mod2468.not, label %.lr.ph.i17.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i17.i.i.i.i.i.preheader
  %i.dza = add nsw i64 %indvars.iv1424.ph, %i.dyf ; 2 uses
  %i.dzb = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dza
  %i.dzc = trunc nuw nsw i64 %indvars.iv1424.ph to i32
  %i.dzd = add i32 %i.dye, %i.dzc
  store i32 %i.dzd, ptr %i.dzb, align 4, !tbaa !3
  %i.dze = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dza
  %i.dzf = trunc nuw nsw i64 %indvars.iv1424.ph to i32
  %i.dzg = add i32 %i.dya, %i.dzf
  store i32 %i.dzg, ptr %i.dze, align 4, !tbaa !3
  %indvars.iv.next1425.prol = or disjoint i64 %indvars.iv1424.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i17.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.preheader
  %indvars.iv1424.unr = phi i64 [ %indvars.iv1424.ph, %.lr.ph.i17.i.i.i.i.i.preheader ], [ %indvars.iv.next1425.prol, %.lr.ph.i17.i.i.i.i.i.prol ]
  %i.dzh = add nsw i64 %i.dyg, -1
  %i.dzi = icmp eq i64 %indvars.iv1424.ph, %i.dzh
  br i1 %i.dzi, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i:                             ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i
  %indvars.iv1424 = phi i64 [ %indvars.iv.next1425.1, %.lr.ph.i17.i.i.i.i.i ], [ %indvars.iv1424.unr, %.lr.ph.i17.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.dzj = add nsw i64 %indvars.iv1424, %i.dyf    ; 2 uses
  %i.dzk = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dzj
  %i.dzl = trunc i64 %indvars.iv1424 to i32
  %i.dzm = add i32 %i.dye, %i.dzl
  store i32 %i.dzm, ptr %i.dzk, align 4, !tbaa !3
  %i.dzn = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dzj
  %i.dzo = trunc i64 %indvars.iv1424 to i32
  %i.dzp = add i32 %i.dya, %i.dzo
  store i32 %i.dzp, ptr %i.dzn, align 4, !tbaa !3
  %indvars.iv.next1425 = add nuw nsw i64 %indvars.iv1424, 1 ; 3 uses
  %i.dzq = add nsw i64 %indvars.iv.next1425, %i.dyf ; 2 uses
  %i.dzr = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.dzq
  %i.dzs = trunc i64 %indvars.iv.next1425 to i32
  %i.dzt = add i32 %i.dye, %i.dzs
  store i32 %i.dzt, ptr %i.dzr, align 4, !tbaa !3
  %i.dzu = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.dzq
  %i.dzv = trunc i64 %indvars.iv.next1425 to i32
  %i.dzw = add i32 %i.dya, %i.dzv
  store i32 %i.dzw, ptr %i.dzu, align 4, !tbaa !3
  %indvars.iv.next1425.1 = add nuw nsw i64 %indvars.iv1424, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1425.1, %i.dyg
  br i1 %exitcond.not.i19.i.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i, !llvm.loop !1083

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i, %middle.block2032, %vec.epilog.middle.block2056, %bb.xn
  %i.dzx = add nsw i32 %i.dxs, %.7                ; 2 uses
  %i.dzy = add i64 %.01523.i.i.i.i.i, -1
  %i.dzz = and i64 %i.dzy, %.01523.i.i.i.i.i      ; 2 uses
  %.not.i51.i.i.i.i = icmp eq i64 %i.dzz, 0
  br i1 %.not.i51.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i, label %bb.xn, !llvm.loop !1084

_ZZN8facebook5velox4bits10forEachBitIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERNS0_4exec7EvalCtxERSD_EUliE2_EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i, %bb.xl, %.lr.ph.i.i.i.i826
  %.3 = phi i32 [ %.2, %.lr.ph.i.i.i.i826 ], [ %.2, %bb.xl ], [ %i.dzx, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit20.i.i.i.i.i ], [ %i.dxk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i47.i.i.i.i ] ; 2 uses
  %i.eaa = add nsw i32 %i.duk, 64                 ; 2 uses
  %.not33.i.i.i.i827 = icmp sgt i32 %i.eaa, %i.dnc
  br i1 %.not33.i.i.i.i827, label %._crit_edge.i.i.i.i828, label %.lr.ph.i.i.i.i826, !llvm.loop !1085

bb.xo:                                            ; preds = %._crit_edge.i.i.i.i828
  %i.eab = ashr i32 %i.dmy, 6
  %i.eac = and i32 %i.dmy, 63
  %i.ead = zext nneg i32 %i.eac to i64
  %notmask.i52.i.i.i.i = shl nsw i64 -1, %i.ead
  %i.eae = xor i64 %notmask.i52.i.i.i.i, -1
  %i.eaf = sext i32 %i.eab to i64
  %i.eag = getelementptr inbounds [8 x i8], ptr %i.dmu, i64 %i.eaf
  %i.eah = load i64, ptr %i.eag, align 8, !tbaa !145
  %i.eai = and i64 %i.eah, %i.eae                 ; 2 uses
  %.not.i53.i.i.i.i830 = icmp eq i64 %i.eai, 0
  br i1 %.not.i53.i.i.i.i830, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %.preheader.i54.i.i.i.i

.preheader.i54.i.i.i.i:                           ; preds = %bb.xo
  %i.eaj = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.eak = load ptr, ptr %i.n, align 8, !tbaa !342
  %i.eal = getelementptr inbounds nuw i8, ptr %i.eaj, i64 120
  %i.eam = load ptr, ptr %i.eal, align 8, !tbaa !308
  %i.ean = getelementptr inbounds nuw i8, ptr %i.eaj, i64 104
  %i.eao = load ptr, ptr %i.ean, align 8, !tbaa !306
  %i.eap = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.eaq = load ptr, ptr %i.o, align 8, !tbaa !342
  %i.ear = getelementptr inbounds nuw i8, ptr %i.eap, i64 104
  %i.eas = load ptr, ptr %i.ear, align 8, !tbaa !306
  %i.eat = sub i64 %i.die, %i.dio
  %diff.check2112 = icmp ult i64 %i.eat, 128
  br label %bb.xp

bb.xp:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %.preheader.i54.i.i.i.i
  %.5 = phi i32 [ %.4, %.preheader.i54.i.i.i.i ], [ %i.ede, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %.011.i56.i.i.i.i = phi i64 [ %i.eai, %.preheader.i54.i.i.i.i ], [ %i.edg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i ] ; 3 uses
  %i.eau = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i56.i.i.i.i, i1 true)
  %157 = trunc nuw nsw i64 %i.eau to i32
  %158 = or disjoint i32 %i.dnc, %157
  %159 = sext i32 %158 to i64                     ; 4 uses
  %i.eav = getelementptr inbounds [4 x i8], ptr %i.eak, i64 %159 ; 2 uses
  %i.eaw = load i32, ptr %i.eav, align 4, !tbaa !3
  %i.eax = sext i32 %i.eaw to i64
  %i.eay = getelementptr inbounds [4 x i8], ptr %i.eam, i64 %i.eax
  %i.eaz = load i32, ptr %i.eay, align 4, !tbaa !3 ; 6 uses
  %i.eba = getelementptr inbounds [4 x i8], ptr %i.dhi, i64 %159
  store i32 %.5, ptr %i.eba, align 4, !tbaa !3
  %i.ebb = getelementptr inbounds [4 x i8], ptr %i.dht, i64 %159
  store i32 %i.eaz, ptr %i.ebb, align 4, !tbaa !3
  %i.ebc = icmp sgt i32 %i.eaz, 0
  br i1 %i.ebc, label %iter.check2139, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i

iter.check2139:                                   ; preds = %bb.xp
  %i.ebd = getelementptr inbounds [4 x i8], ptr %i.eaq, i64 %159
  %i.ebe = load i32, ptr %i.ebd, align 4, !tbaa !3
  %i.ebf = sext i32 %i.ebe to i64
  %i.ebg = getelementptr inbounds [4 x i8], ptr %i.eas, i64 %i.ebf
  %i.ebh = load i32, ptr %i.ebg, align 4, !tbaa !3 ; 5 uses
  %i.ebi = load i32, ptr %i.eav, align 4, !tbaa !3
  %i.ebj = sext i32 %i.ebi to i64
  %i.ebk = getelementptr inbounds [4 x i8], ptr %i.eao, i64 %i.ebj
  %i.ebl = load i32, ptr %i.ebk, align 4, !tbaa !3 ; 5 uses
  %i.ebm = sext i32 %.5 to i64                    ; 5 uses
  %i.ebn = zext nneg i32 %i.eaz to i64            ; 8 uses
  %min.iters.check2113 = icmp ult i32 %i.eaz, 4
  %or.cond2353 = select i1 %min.iters.check2113, i1 true, i1 %diff.check2112
  br i1 %or.cond2353, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vector.main.loop.iter.check2114

vector.main.loop.iter.check2114:                  ; preds = %iter.check2139
  %min.iters.check2115 = icmp ult i32 %i.eaz, 32
  br i1 %min.iters.check2115, label %vec.epilog.ph2143, label %vector.ph2116

vector.ph2116:                                    ; preds = %vector.main.loop.iter.check2114
  %n.mod.vf2117 = and i64 %i.ebn, 28
  %n.vec2118 = and i64 %i.ebn, 2147483616         ; 4 uses
  %broadcast.splatinsert2119 = insertelement <8 x i32> poison, i32 %i.ebh, i64 0
  %broadcast.splat2120 = shufflevector <8 x i32> %broadcast.splatinsert2119, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert2121 = insertelement <8 x i32> poison, i32 %i.ebl, i64 0
  %broadcast.splat2122 = shufflevector <8 x i32> %broadcast.splatinsert2121, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op2597 = add <8 x i32> splat (i32 8), %broadcast.splat2122
  %invariant.op2599 = add <8 x i32> splat (i32 16), %broadcast.splat2122
  %invariant.op2601 = add <8 x i32> splat (i32 24), %broadcast.splat2122
  %invariant.op2603 = add <8 x i32> splat (i32 8), %broadcast.splat2120
  %invariant.op2605 = add <8 x i32> splat (i32 16), %broadcast.splat2120
  %invariant.op2607 = add <8 x i32> splat (i32 24), %broadcast.splat2120
  br label %vector.body2123

vector.body2123:                                  ; preds = %vector.body2123, %vector.ph2116
  %index2124 = phi i64 [ 0, %vector.ph2116 ], [ %index.next2133, %vector.body2123 ] ; 2 uses
  %vec.ind2125 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2116 ], [ %vec.ind.next2134, %vector.body2123 ] ; 5 uses
  %vec.ind2126 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph2116 ], [ %vec.ind.next2135, %vector.body2123 ] ; 5 uses
  %i.ebo = add nsw i64 %index2124, %i.ebm         ; 2 uses
  %i.ebp = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ebo ; 4 uses
  %i.ebq = add <8 x i32> %broadcast.splat2122, %vec.ind2125
  %.reass2598 = add <8 x i32> %vec.ind2125, %invariant.op2597
  %.reass2600 = add <8 x i32> %vec.ind2125, %invariant.op2599
  %.reass2602 = add <8 x i32> %vec.ind2125, %invariant.op2601
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebp, i64 32
  %i.ebs = getelementptr inbounds nuw i8, ptr %i.ebp, i64 64
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebp, i64 96
  store <8 x i32> %i.ebq, ptr %i.ebp, align 4, !tbaa !3
  store <8 x i32> %.reass2598, ptr %i.ebr, align 4, !tbaa !3
  store <8 x i32> %.reass2600, ptr %i.ebs, align 4, !tbaa !3
  store <8 x i32> %.reass2602, ptr %i.ebt, align 4, !tbaa !3
  %i.ebu = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ebo ; 4 uses
  %i.ebv = add <8 x i32> %broadcast.splat2120, %vec.ind2126
  %.reass2604 = add <8 x i32> %vec.ind2126, %invariant.op2603
  %.reass2606 = add <8 x i32> %vec.ind2126, %invariant.op2605
  %.reass2608 = add <8 x i32> %vec.ind2126, %invariant.op2607
  %i.ebw = getelementptr inbounds nuw i8, ptr %i.ebu, i64 32
  %i.ebx = getelementptr inbounds nuw i8, ptr %i.ebu, i64 64
  %i.eby = getelementptr inbounds nuw i8, ptr %i.ebu, i64 96
  store <8 x i32> %i.ebv, ptr %i.ebu, align 4, !tbaa !3
  store <8 x i32> %.reass2604, ptr %i.ebw, align 4, !tbaa !3
  store <8 x i32> %.reass2606, ptr %i.ebx, align 4, !tbaa !3
  store <8 x i32> %.reass2608, ptr %i.eby, align 4, !tbaa !3
  %index.next2133 = add nuw i64 %index2124, 32    ; 2 uses
  %vec.ind.next2134 = add <8 x i32> %vec.ind2125, splat (i32 32)
  %vec.ind.next2135 = add <8 x i32> %vec.ind2126, splat (i32 32)
  %i.ebz = icmp eq i64 %index.next2133, %n.vec2118
  br i1 %i.ebz, label %middle.block2136, label %vector.body2123, !llvm.loop !1086

middle.block2136:                                 ; preds = %vector.body2123
  %cmp.n2137 = icmp eq i64 %n.vec2118, %i.ebn
  br i1 %cmp.n2137, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %vec.epilog.iter.check2141

vec.epilog.iter.check2141:                        ; preds = %middle.block2136
  %min.epilog.iters.check2142 = icmp eq i64 %n.mod.vf2117, 0
  br i1 %min.epilog.iters.check2142, label %.lr.ph.i.i59.i.i.i.i.preheader, label %vec.epilog.ph2143, !prof !472

vec.epilog.ph2143:                                ; preds = %vector.main.loop.iter.check2114, %vec.epilog.iter.check2141
  %vec.epilog.resume.val2138 = phi i64 [ %n.vec2118, %vec.epilog.iter.check2141 ], [ 0, %vector.main.loop.iter.check2114 ] ; 2 uses
  %n.vec2145 = and i64 %i.ebn, 2147483644         ; 3 uses
  %broadcast.splatinsert2146 = insertelement <4 x i32> poison, i32 %i.ebh, i64 0
  %broadcast.splat2147 = shufflevector <4 x i32> %broadcast.splatinsert2146, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2148 = insertelement <4 x i32> poison, i32 %i.ebl, i64 0
  %broadcast.splat2149 = shufflevector <4 x i32> %broadcast.splatinsert2148, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eca = trunc nuw nsw i64 %vec.epilog.resume.val2138 to i32
  %broadcast.splatinsert2150 = insertelement <4 x i32> poison, i32 %i.eca, i64 0
  %broadcast.splat2151 = shufflevector <4 x i32> %broadcast.splatinsert2150, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2152 = or disjoint <4 x i32> %broadcast.splat2151, <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %vec.epilog.vector.body2153

vec.epilog.vector.body2153:                       ; preds = %vec.epilog.vector.body2153, %vec.epilog.ph2143
  %index2154 = phi i64 [ %vec.epilog.resume.val2138, %vec.epilog.ph2143 ], [ %index.next2157, %vec.epilog.vector.body2153 ] ; 2 uses
  %vec.ind2155 = phi <4 x i32> [ %induction2152, %vec.epilog.ph2143 ], [ %vec.ind.next2158, %vec.epilog.vector.body2153 ] ; 2 uses
  %vec.ind2156 = phi <4 x i32> [ %induction2152, %vec.epilog.ph2143 ], [ %vec.ind.next2159, %vec.epilog.vector.body2153 ] ; 2 uses
  %i.ecb = add nsw i64 %index2154, %i.ebm         ; 2 uses
  %i.ecc = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ecb
  %i.ecd = add <4 x i32> %broadcast.splat2149, %vec.ind2155
  store <4 x i32> %i.ecd, ptr %i.ecc, align 4, !tbaa !3
  %i.ece = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ecb
  %i.ecf = add <4 x i32> %broadcast.splat2147, %vec.ind2156
  store <4 x i32> %i.ecf, ptr %i.ece, align 4, !tbaa !3
  %index.next2157 = add nuw i64 %index2154, 4     ; 2 uses
  %vec.ind.next2158 = add <4 x i32> %vec.ind2155, splat (i32 4)
  %vec.ind.next2159 = add <4 x i32> %vec.ind2156, splat (i32 4)
  %i.ecg = icmp eq i64 %index.next2157, %n.vec2145
  br i1 %i.ecg, label %vec.epilog.middle.block2160, label %vec.epilog.vector.body2153, !llvm.loop !1087

vec.epilog.middle.block2160:                      ; preds = %vec.epilog.vector.body2153
  %cmp.n2161 = icmp eq i64 %n.vec2145, %i.ebn
  br i1 %cmp.n2161, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i.preheader

.lr.ph.i.i59.i.i.i.i.preheader:                   ; preds = %iter.check2139, %vec.epilog.iter.check2141, %vec.epilog.middle.block2160
  %indvars.iv1427.ph = phi i64 [ 0, %iter.check2139 ], [ %n.vec2118, %vec.epilog.iter.check2141 ], [ %n.vec2145, %vec.epilog.middle.block2160 ] ; 6 uses
  %xtraiter2469 = and i64 %i.ebn, 1
  %lcmp.mod2470.not = icmp eq i64 %xtraiter2469, 0
  br i1 %lcmp.mod2470.not, label %.lr.ph.i.i59.i.i.i.i.prol.loopexit, label %.lr.ph.i.i59.i.i.i.i.prol

.lr.ph.i.i59.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i59.i.i.i.i.preheader
  %i.ech = add nsw i64 %indvars.iv1427.ph, %i.ebm ; 2 uses
  %i.eci = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ech
  %i.ecj = trunc nuw nsw i64 %indvars.iv1427.ph to i32
  %i.eck = add i32 %i.ebl, %i.ecj
  store i32 %i.eck, ptr %i.eci, align 4, !tbaa !3
  %i.ecl = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ech
  %i.ecm = trunc nuw nsw i64 %indvars.iv1427.ph to i32
  %i.ecn = add i32 %i.ebh, %i.ecm
  store i32 %i.ecn, ptr %i.ecl, align 4, !tbaa !3
  %indvars.iv.next1428.prol = or disjoint i64 %indvars.iv1427.ph, 1
  br label %.lr.ph.i.i59.i.i.i.i.prol.loopexit

.lr.ph.i.i59.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i59.i.i.i.i.prol, %.lr.ph.i.i59.i.i.i.i.preheader
  %indvars.iv1427.unr = phi i64 [ %indvars.iv1427.ph, %.lr.ph.i.i59.i.i.i.i.preheader ], [ %indvars.iv.next1428.prol, %.lr.ph.i.i59.i.i.i.i.prol ]
  %i.eco = add nsw i64 %i.ebn, -1
  %i.ecp = icmp eq i64 %indvars.iv1427.ph, %i.eco
  br i1 %i.ecp, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i

.lr.ph.i.i59.i.i.i.i:                             ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i
  %indvars.iv1427 = phi i64 [ %indvars.iv.next1428.1, %.lr.ph.i.i59.i.i.i.i ], [ %indvars.iv1427.unr, %.lr.ph.i.i59.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ecq = add nsw i64 %indvars.iv1427, %i.ebm    ; 2 uses
  %i.ecr = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ecq
  %i.ecs = trunc i64 %indvars.iv1427 to i32
  %i.ect = add i32 %i.ebl, %i.ecs
  store i32 %i.ect, ptr %i.ecr, align 4, !tbaa !3
  %i.ecu = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ecq
  %i.ecv = trunc i64 %indvars.iv1427 to i32
  %i.ecw = add i32 %i.ebh, %i.ecv
  store i32 %i.ecw, ptr %i.ecu, align 4, !tbaa !3
  %indvars.iv.next1428 = add nuw nsw i64 %indvars.iv1427, 1 ; 3 uses
  %i.ecx = add nsw i64 %indvars.iv.next1428, %i.ebm ; 2 uses
  %i.ecy = getelementptr inbounds [4 x i8], ptr %i.din, i64 %i.ecx
  %i.ecz = trunc i64 %indvars.iv.next1428 to i32
  %i.eda = add i32 %i.ebl, %i.ecz
  store i32 %i.eda, ptr %i.ecy, align 4, !tbaa !3
  %i.edb = getelementptr inbounds [4 x i8], ptr %i.did, i64 %i.ecx
  %i.edc = trunc i64 %indvars.iv.next1428 to i32
  %i.edd = add i32 %i.ebh, %i.edc
  store i32 %i.edd, ptr %i.edb, align 4, !tbaa !3
  %indvars.iv.next1428.1 = add nuw nsw i64 %indvars.iv1427, 2 ; 2 uses
  %exitcond.not.i.i61.i.i.i.i.1 = icmp eq i64 %indvars.iv.next1428.1, %i.ebn
  br i1 %exitcond.not.i.i61.i.i.i.i.1, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, label %.lr.ph.i.i59.i.i.i.i, !llvm.loop !1088

_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i: ; preds = %.lr.ph.i.i59.i.i.i.i.prol.loopexit, %.lr.ph.i.i59.i.i.i.i, %middle.block2136, %vec.epilog.middle.block2160, %bb.xp
  %i.ede = add nsw i32 %i.eaz, %.5
  %i.edf = add nsw i64 %.011.i56.i.i.i.i, -1
  %i.edg = and i64 %i.edf, %.011.i56.i.i.i.i      ; 2 uses
  %.not10.i58.i.i.i.i = icmp eq i64 %i.edg, 0
  br i1 %.not10.i58.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, label %bb.xp, !llvm.loop !1073

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i57.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUliE2_clEi.exit.i, %bb.xo, %._crit_edge.i.i.i.i828, %bb.xg, %bb.xe, %bb.xc
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #23
  store ptr null, ptr %115, align 8, !tbaa !237
  store ptr %i.dii, ptr %116, align 8, !tbaa !237
  %.not.i859 = icmp eq ptr %i.dii, null
  br i1 %.not.i859, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860, label %bb.xq

bb.xq:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit
  %i.edh = getelementptr inbounds nuw i8, ptr %i.dii, i64 40
  %i.edi = atomicrmw add ptr %i.edh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860: ; preds = %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKS1_RSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISC_EERKSA_IKNS0_4TypeEERNS0_4exec7EvalCtxERSC_EUliE2_EEvT_.exit, %bb.xq
  %i.edj = load ptr, ptr %i.p, align 8, !tbaa !310 ; 2 uses
  %i.edk = getelementptr inbounds nuw i8, ptr %i.edj, i64 128
  %i.edl = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.edm = getelementptr inbounds nuw i8, ptr %i.edj, i64 136
  %i.edn = load ptr, ptr %i.edm, align 8, !tbaa !38 ; 2 uses
  %i.edo = load <2 x ptr>, ptr %i.edk, align 8, !tbaa !41
  store <2 x ptr> %i.edo, ptr %117, align 16, !tbaa !41
  %.not.i.i.i861 = icmp eq ptr %i.edn, null
  br i1 %.not.i.i.i861, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit863, label %bb.xr

bb.xr:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit860
  %i.edp = getelementptr inbounds nuw i8, ptr %i.edn, i64 8 ; 3 uses
  %i.edq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i862 = icmp eq i8 %i.edq, 0
  br i1 %.not.i.i.i.i862, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.edr = load i32, ptr %i.edp, align 4, !tbaa !3
  %i.eds = add nsw i32 %i.edr, 1
  store i32 %i.eds, ptr %i.edp, align 4, !tbaa !3
end_hunk_5
