inline.NumInlined: 9532
inline.NumDeleted: 3275
begin_hunk_0_@_ZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi:bb.a
  %i.afi = and i8 %.pre, 2
  %.not.i204 = icmp eq i8 %i.afi, 0
  br i1 %.not.i204, label %bb.ep, label %bb.eo, !prof !20

bb.eo:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc205 unwind label %bb.fj

.noexc205:                                        ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !117 ; 19 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %15, i64 37
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !85, !range !147, !noundef !148
  %i.afo = trunc nuw i8 %i.afn to i1
  br i1 %i.afo, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247, label %bb.eq

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247: ; preds = %bb.ep
  %.0.in.pre.i.i248 = load i8, ptr %i.afl, align 4, !tbaa !149, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208

bb.eq:                                            ; preds = %bb.ep
  %i.afp = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !100
  %i.afr = icmp eq i32 %i.afq, 0
  br i1 %i.afr, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.er:                                            ; preds = %bb.eq
  %i.afs = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aft = load i32, ptr %i.afs, align 8, !tbaa !98 ; 6 uses
  %i.afu = load i32, ptr %i.fd, align 8, !tbaa !90
  %i.afv = icmp eq i32 %i.aft, %i.afu
  br i1 %i.afv, label %bb.es, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.es:                                            ; preds = %bb.er
  %i.afw = load ptr, ptr %15, align 8, !tbaa !87  ; 2 uses
  %.not.i.i.i239 = icmp sgt i32 %i.aft, 0
  br i1 %.not.i.i.i239, label %bb.et, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.et:                                            ; preds = %bb.es
  %i.afx = and i32 %i.aft, 2147483584             ; 3 uses
  %i.afy = zext nneg i32 %i.afx to i64
  %.not37.i.i.not.i.i241633.not = icmp eq i32 %i.afx, 0
  br i1 %.not37.i.i.not.i.i241633.not, label %.critedge.i.i.i.i242, label %.lr.ph636

bb.eu:                                            ; preds = %.lr.ph636
  %indvars.iv.next.i.i246 = add nuw nsw i64 %indvars.iv.i.i240634, 64 ; 2 uses
  %.not37.i.i.not.i.i241 = icmp samesign ult i64 %indvars.iv.next.i.i246, %i.afy
  br i1 %.not37.i.i.not.i.i241, label %.lr.ph636, label %.critedge.i.i.i.i242, !llvm.loop !150

.lr.ph636:                                        ; preds = %bb.et, %bb.eu
  %indvars.iv.i.i240634 = phi i64 [ %indvars.iv.next.i.i246, %bb.eu ], [ 0, %bb.et ] ; 2 uses
  %i.afz = lshr exact i64 %indvars.iv.i.i240634, 3
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.afz
  %i.agb = load i64, ptr %i.aga, align 8, !tbaa !43
  %i.agc = icmp eq i64 %i.agb, -1
  br i1 %i.agc, label %bb.eu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, !llvm.loop !150

.critedge.i.i.i.i242:                             ; preds = %bb.eu, %bb.et
  %.not38.i.i.i.i243 = icmp eq i32 %i.aft, %i.afx
  br i1 %.not38.i.i.i.i243, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, label %bb.ev

bb.ev:                                            ; preds = %.critedge.i.i.i.i242
  %i.agd = lshr i32 %i.aft, 6
  %i.age = and i32 %i.aft, 63
  %i.agf = zext nneg i32 %i.age to i64
  %notmask.i40.i.i.i.i244 = shl nsw i64 -1, %i.agf
  %i.agg = zext nneg i32 %i.agd to i64
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.agg
  %i.agi = load i64, ptr %i.agh, align 8, !tbaa !43
  %.demorgan.i.i245 = or i64 %i.agi, %notmask.i40.i.i.i.i244
  %i.agj = icmp eq i64 %.demorgan.i.i245, -1
  %i.agk = zext i1 %i.agj to i16
  %i.agl = or disjoint i16 %i.agk, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206: ; preds = %.lr.ph636, %bb.ev, %.critedge.i.i.i.i242, %bb.es, %bb.er, %bb.eq
  %.sroa.0.0.insert.ext.i.i207 = phi i16 [ 256, %bb.er ], [ 256, %bb.eq ], [ 257, %bb.es ], [ 257, %.critedge.i.i.i.i242 ], [ %i.agl, %bb.ev ], [ 256, %.lr.ph636 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i207, ptr %i.afl, align 4
  %i.agm = trunc i16 %.sroa.0.0.insert.ext.i.i207 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247
  %.0.in.i.i209 = phi i8 [ %.0.in.pre.i.i248, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247 ], [ %i.agm, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206 ]
  %.0.i.i210 = trunc nuw i8 %.0.in.i.i209 to i1
  br i1 %.0.i.i210, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208
  %i.agn = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !98 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !100 ; 2 uses
  %i.agr = icmp slt i32 %i.agq, %i.ago
  br i1 %i.agr, label %.lr.ph.i234, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"

.lr.ph.i234:                                      ; preds = %bb.ew
  %i.ags = sext i32 %i.agq to i64                 ; 4 uses
  %wide.trip.count.i235 = sext i32 %i.ago to i64  ; 3 uses
  %i.agt = sub nsw i64 %wide.trip.count.i235, %i.ags
  %xtraiter = and i64 %i.agt, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i234, %.prol.preheader
  %indvars.iv.i236.prol = phi i64 [ %indvars.iv.next.i237.prol, %.prol.preheader ], [ %i.ags, %.lr.ph.i234 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i234 ]
  %i.agu = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i236.prol
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !3
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !3
  %i.agz = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %indvars.iv.i236.prol
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !3
  %indvars.iv.next.i237.prol = add nsw i64 %indvars.iv.i236.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !204

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i234
  %indvars.iv.i236.unr = phi i64 [ %i.ags, %.lr.ph.i234 ], [ %indvars.iv.next.i237.prol, %.prol.preheader ]
  %i.aha = sub nsw i64 %i.ags, %wide.trip.count.i235
  %i.ahb = icmp ugt i64 %i.aha, -4
  br i1 %i.ahb, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.lr.ph.i234.new

.lr.ph.i234.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i234.new
  %indvars.iv.i236 = phi i64 [ %indvars.iv.next.i237.3, %.lr.ph.i234.new ], [ %indvars.iv.i236.unr, %.prol.loopexit ] ; 6 uses
  %i.ahc = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i236
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !3
  %i.ahe = sext i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !3
  %i.ahh = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %indvars.iv.i236
  store i32 %i.ahg, ptr %i.ahh, align 4, !tbaa !3
  %indvars.iv.next.i237 = add nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %i.ahi = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !3
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ahk
  %i.ahm = load i32, ptr %i.ahl, align 4, !tbaa !3
  %i.ahn = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %indvars.iv.next.i237
  store i32 %i.ahm, ptr %i.ahn, align 4, !tbaa !3
  %indvars.iv.next.i237.1 = add nsw i64 %indvars.iv.i236, 2 ; 2 uses
  %i.aho = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237.1
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !3
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ahq
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !3
  %i.aht = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %indvars.iv.next.i237.1
  store i32 %i.ahs, ptr %i.aht, align 4, !tbaa !3
  %indvars.iv.next.i237.2 = add nsw i64 %indvars.iv.i236, 3 ; 2 uses
  %i.ahu = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237.2
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !3
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ahw
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !3
  %i.ahz = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %indvars.iv.next.i237.2
  store i32 %i.ahy, ptr %i.ahz, align 4, !tbaa !3
  %indvars.iv.next.i237.3 = add nsw i64 %indvars.iv.i236, 4 ; 2 uses
  %exitcond.not.i238.3 = icmp eq i64 %indvars.iv.next.i237.3, %wide.trip.count.i235
  br i1 %exitcond.not.i238.3, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.lr.ph.i234.new, !llvm.loop !206

bb.ex:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208
  %i.aia = load ptr, ptr %15, align 8, !tbaa !87  ; 4 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !100 ; 6 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aie = load i32, ptr %i.aid, align 8, !tbaa !98 ; 7 uses
  %.not.i.i.i.i215 = icmp slt i32 %i.aic, %i.aie
  br i1 %.not.i.i.i.i215, label %bb.ey, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"

bb.ey:                                            ; preds = %bb.ex
  %i.aif = add i32 %i.aic, 63                     ; 2 uses
  %i.aig = srem i32 %i.aif, 64
  %i.aih = sub nsw i32 %i.aif, %i.aig             ; 6 uses
  %i.aii = and i32 %i.aie, -64                    ; 6 uses
  %i.aij = icmp slt i32 %i.aii, %i.aih
  br i1 %i.aij, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aik = ashr i32 %i.aie, 6
  %i.ail = and i32 %i.aie, 63
  %i.aim = zext nneg i32 %i.ail to i64
  %notmask.i.i.i.i.i228 = shl nsw i64 -1, %i.aim
  %i.ain = xor i64 %notmask.i.i.i.i.i228, -1
  %i.aio = sub nsw i32 %i.aih, %i.aic             ; 2 uses
  %i.aip = zext nneg i32 %i.aio to i64
  %notmask.i.i.i.i.i.i229 = shl nsw i64 -1, %i.aip
  %i.aiq = xor i64 %notmask.i.i.i.i.i.i229, -1
  %i.air = sub nsw i32 64, %i.aio
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = shl i64 %i.aiq, %i.ais
  %i.aiu = and i64 %i.ait, %i.ain
  %i.aiv = sext i32 %i.aik to i64
  %i.aiw = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.aiv
  %i.aix = load i64, ptr %i.aiw, align 8, !tbaa !43
  %i.aiy = and i64 %i.aiu, %i.aix                 ; 2 uses
  %.not.i.i.i.i.i230 = icmp eq i64 %i.aiy, 0
  br i1 %.not.i.i.i.i.i230, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i.i.i.i.i231.a

.preheader.i.i.i.i.i231.a:                        ; preds = %bb.ez, %.preheader.i.i.i.i.i231.a
  %.011.i.i.i.i.i232 = phi i64 [ %i.ajh, %.preheader.i.i.i.i.i231.a ], [ %i.aiy, %bb.ez ] ; 3 uses
  %i.aiz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i232, i1 true)
  %21 = trunc nuw nsw i64 %i.aiz to i32
  %22 = or disjoint i32 %i.aii, %21
  %23 = sext i32 %22 to i64                       ; 2 uses
  %i.aja = getelementptr inbounds [4 x i8], ptr %3, i64 %23
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !3
  %i.ajc = sext i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !3
  %i.ajf = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %23
  store i32 %i.aje, ptr %i.ajf, align 4, !tbaa !3
  %i.ajg = add nsw i64 %.011.i.i.i.i.i232, -1
  %i.ajh = and i64 %i.ajg, %.011.i.i.i.i.i232     ; 2 uses
  %.not10.i.i.i.i.i233 = icmp eq i64 %i.ajh, 0
  br i1 %.not10.i.i.i.i.i233, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i.i.i.i.i231.a, !llvm.loop !207

bb.fa:                                            ; preds = %bb.ey
  %.not32.i.i.i.i216 = icmp eq i32 %i.aic, %i.aih
  br i1 %.not32.i.i.i.i216, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aji = sdiv i32 %i.aic, 64                    ; 2 uses
  %i.ajj = sub nsw i32 %i.aih, %i.aic             ; 2 uses
  %i.ajk = zext nneg i32 %i.ajj to i64
  %notmask.i.i35.i.i.i.i217 = shl nsw i64 -1, %i.ajk
  %i.ajl = xor i64 %notmask.i.i35.i.i.i.i217, -1
  %i.ajm = sub nsw i32 64, %i.ajj
  %i.ajn = zext nneg i32 %i.ajm to i64
  %i.ajo = shl i64 %i.ajl, %i.ajn
  %i.ajp = sext i32 %i.aji to i64
  %i.ajq = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.ajp
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !43
  %i.ajs = and i64 %i.ajr, %i.ajo                 ; 2 uses
  %.not.i36.i.i.i.i218 = icmp eq i64 %i.ajs, 0
  br i1 %.not.i36.i.i.i.i218, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i219

.preheader.i37.i.i.i.i219:                        ; preds = %bb.fb
  %i.ajt = shl nsw i32 %i.aji, 6
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fc, %.preheader.i37.i.i.i.i219
  %.011.i38.i.i.i.i220 = phi i64 [ %i.ajs, %.preheader.i37.i.i.i.i219 ], [ %i.akc, %bb.fc ] ; 3 uses
  %i.aju = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i220, i1 true)
  %24 = trunc nuw nsw i64 %i.aju to i32
  %25 = or disjoint i32 %i.ajt, %24
  %26 = sext i32 %25 to i64                       ; 2 uses
  %i.ajv = getelementptr inbounds [4 x i8], ptr %3, i64 %26
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !3
  %i.ajx = sext i32 %i.ajw to i64
  %i.ajy = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !3
  %i.aka = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %26
  store i32 %i.ajz, ptr %i.aka, align 4, !tbaa !3
  %i.akb = add i64 %.011.i38.i.i.i.i220, -1
  %i.akc = and i64 %i.akb, %.011.i38.i.i.i.i220   ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.akc, 0
  br i1 %.not10.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.fc, !llvm.loop !207

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %bb.fc, %bb.fb, %bb.fa
  %i.akd = add nsw i32 %i.aih, 64                 ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.akd, %i.aii
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i223, label %.lr.ph.i.i.i.i221

._crit_edge.i.i.i.i223:                           ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.not34.i.i.i.i224 = icmp eq i32 %i.aie, %i.aii
  br i1 %.not34.i.i.i.i224, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %bb.fg

.lr.ph.i.i.i.i221:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %i.ake = phi i32 [ %i.alf, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.akd, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.ake, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.aih, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %i.akf = sdiv i32 %.051.i.i.i.i, 64             ; 3 uses
  %i.akg = sext i32 %i.akf to i64
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.akg
  %i.aki = load i64, ptr %i.akh, align 8, !tbaa !43 ; 2 uses
  switch i64 %i.aki, label %.lr.ph.i.i.i.i.i227 [
    i64 -1, label %bb.fd
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i227:                              ; preds = %.lr.ph.i.i.i.i221
  %i.akj = shl nsw i32 %i.akf, 6
  br label %bb.ff

bb.fd:                                            ; preds = %.lr.ph.i.i.i.i221
  %i.akk = shl nsw i32 %i.akf, 6                  ; 2 uses
  %i.akl = add i32 %i.akk, 64
  %i.akm = sext i32 %i.akl to i64
  %.0.off.i.i.i.i226 = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i226, 64
  br i1 %.not22.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.fd
  %i.akn = sext i32 %i.akk to i64
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fe, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.akn, %.lr.ph21.i.i.i.i.i ], [ %i.aku, %bb.fe ] ; 3 uses
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020.i.i.i.i.i
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !3
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.akq
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %.020.i.i.i.i.i
  store i32 %i.aks, ptr %i.akt, align 4, !tbaa !3
  %i.aku = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.akv = icmp ult i64 %i.aku, %i.akm
  br i1 %i.akv, label %bb.fe, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !208

bb.ff:                                            ; preds = %bb.ff, %.lr.ph.i.i.i.i.i227
  %.01519.i.i.i.i.i = phi i64 [ %i.aki, %.lr.ph.i.i.i.i.i227 ], [ %i.ale, %bb.ff ] ; 3 uses
  %i.akw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %27 = trunc nuw nsw i64 %i.akw to i32
  %28 = or disjoint i32 %i.akj, %27
  %29 = sext i32 %28 to i64                       ; 2 uses
  %i.akx = getelementptr inbounds [4 x i8], ptr %3, i64 %29
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !3
  %i.akz = sext i32 %i.aky to i64
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.akz
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !3
  %i.alc = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %29
  store i32 %i.alb, ptr %i.alc, align 4, !tbaa !3
  %i.ald = add i64 %.01519.i.i.i.i.i, -1
  %i.ale = and i64 %i.ald, %.01519.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.ale, 0
  br i1 %.not.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.ff, !llvm.loop !209

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.fe, %bb.ff, %bb.fd, %.lr.ph.i.i.i.i221
  %i.alf = add nsw i32 %i.ake, 64                 ; 2 uses
  %.not33.i.i.i.i222 = icmp sgt i32 %i.alf, %i.aii
  br i1 %.not33.i.i.i.i222, label %._crit_edge.i.i.i.i223, label %.lr.ph.i.i.i.i221, !llvm.loop !210

bb.fg:                                            ; preds = %._crit_edge.i.i.i.i223
  %i.alg = ashr i32 %i.aie, 6
  %i.alh = and i32 %i.aie, 63
  %i.ali = zext nneg i32 %i.alh to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.ali
  %i.alj = xor i64 %notmask.i42.i.i.i.i, -1
  %i.alk = sext i32 %i.alg to i64
  %i.all = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.alk
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !43
  %i.aln = and i64 %i.alm, %i.alj                 ; 2 uses
  %.not.i43.i.i.i.i225 = icmp eq i64 %i.aln, 0
  br i1 %.not.i43.i.i.i.i225, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i44.i.i.i.i.a

.preheader.i44.i.i.i.i.a:                         ; preds = %bb.fg, %.preheader.i44.i.i.i.i.a
  %.011.i45.i.i.i.i = phi i64 [ %i.alw, %.preheader.i44.i.i.i.i.a ], [ %i.aln, %bb.fg ] ; 3 uses
  %i.alo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %30 = trunc nuw nsw i64 %i.alo to i32
  %31 = or disjoint i32 %i.aii, %30
  %32 = sext i32 %31 to i64                       ; 2 uses
  %i.alp = getelementptr inbounds [4 x i8], ptr %3, i64 %32
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3
  %i.alr = sext i32 %i.alq to i64
  %i.als = getelementptr inbounds [4 x i8], ptr %i.afa, i64 %i.alr
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !3
  %i.alu = getelementptr inbounds [4 x i8], ptr %i.afk, i64 %32
  store i32 %i.alt, ptr %i.alu, align 4, !tbaa !3
  %i.alv = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.alw = and i64 %i.alv, %.011.i45.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.alw, 0
  br i1 %.not10.i46.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i44.i.i.i.i.a, !llvm.loop !207

bb.fh:                                            ; preds = %bb.em
  %i.alx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fi:                                            ; preds = %bb.en
  %i.aly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %.body262

bb.fj:                                            ; preds = %bb.eo
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %.body262

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit": ; preds = %.preheader.i44.i.i.i.i.a, %.preheader.i.i.i.i.i231.a, %.prol.loopexit, %.lr.ph.i234.new, %bb.fg, %._crit_edge.i.i.i.i223, %bb.ez, %bb.ex, %bb.ew, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  %i.ama = phi ptr [ null, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ], [ %i.afh, %bb.ew ], [ %i.afh, %.prol.loopexit ], [ %i.afh, %bb.ex ], [ %i.afh, %bb.ez ], [ %i.afh, %.preheader.i.i.i.i.i231.a ], [ %i.afh, %._crit_edge.i.i.i.i223 ], [ %i.afh, %bb.fg ], [ %i.afh, %.lr.ph.i234.new ], [ %i.afh, %.preheader.i44.i.i.i.i.a ]
  %.0373 = phi ptr [ null, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ], [ %i.afk, %bb.ew ], [ %i.afk, %.prol.loopexit ], [ %i.afk, %bb.ex ], [ %i.afk, %bb.ez ], [ %i.afk, %.preheader.i.i.i.i.i231.a ], [ %i.afk, %._crit_edge.i.i.i.i223 ], [ %i.afk, %bb.fg ], [ %i.afk, %.lr.ph.i234.new ], [ %i.afk, %.preheader.i44.i.i.i.i.a ] ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !211
  %i.amd = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.amc, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #39 ; 2 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.amf = load i64, ptr %i.ame, align 8, !tbaa !72
  %.not426 = icmp eq i64 %i.amf, 0
  br i1 %.not426, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"
  %i.amg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ami = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.not57 = icmp eq ptr %.0373, null
  %i.amj = select i1 %.not57, ptr %i.afa, ptr %.0373
  br label %bb.fm

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269
  %.pre460 = load ptr, ptr %18, align 8, !tbaa !109
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"
  %i.amk = phi ptr [ %.pre460, %._crit_edge.loopexit ], [ %i.ama, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit" ] ; 7 uses
  %.not.i249 = icmp eq ptr %i.amk, null
  br i1 %.not.i249, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254, label %bb.fk

bb.fk:                                            ; preds = %._crit_edge
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 40
  %i.amm = atomicrmw sub ptr %i.aml, i32 1 acq_rel, align 4
  %i.amn = icmp eq i32 %i.amm, 1
  br i1 %i.amn, label %.sink.split.i.i250, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254

.sink.split.i.i250:                               ; preds = %bb.fk
  %i.amo = load ptr, ptr %i.amk, align 8, !tbaa !50
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 64
  %i.amq = load ptr, ptr %i.amp, align 8
  invoke void %i.amq(ptr noundef nonnull align 8 dereferenceable(64) %i.amk)
          to label %.noexc.i251 unwind label %bb.fl, !inline_history !124

.noexc.i251:                                      ; preds = %.sink.split.i.i250
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !125
  %.not.i.i252 = icmp eq ptr %i.ams, null
  %i.amt = load ptr, ptr %i.amk, align 8, !tbaa !50
  %..i.i253 = select i1 %.not.i.i252, i64 8, i64 48
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amt, i64 %..i.i253
  %i.amv = load ptr, ptr %i.amu, align 8
  invoke void %i.amv(ptr noundef nonnull align 8 dereferenceable(64) %i.amk)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254 unwind label %bb.fl, !inline_history !124

bb.fl:                                            ; preds = %.noexc.i251, %.sink.split.i.i250
  %i.amw = landingpad { ptr, i32 }
          catch ptr null
  %i.amx = extractvalue { ptr, i32 } %i.amw, 0
  call void @__clang_call_terminate(ptr %i.amx) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254: ; preds = %._crit_edge, %bb.fk, %.noexc.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %.loopexit

bb.fm:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269 ] ; 7 uses
  %i.amy = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  %i.amz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.amd, i32 noundef %i.amy)
          to label %bb.fn unwind label %.loopexit398

bb.fn:                                            ; preds = %bb.fm
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !47
  %.not387 = icmp eq ptr %i.ana, null
  br i1 %.not387, label %bb.fx, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.anb = load ptr, ptr %i.amg, align 8, !tbaa !7
  %i.anc = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.anb, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #39 ; 3 uses
  %i.and = icmp eq ptr %i.anc, null
  br i1 %i.and, label %bb.fp, label %_ZNK8facebook5velox4Type5asRowEv.exit256

bb.fp:                                            ; preds = %bb.fo
  invoke void @__cxa_bad_cast() #38
          to label %.noexc255 unwind label %.loopexit.split-lp399

.noexc255:                                        ; preds = %bb.fp
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit256:         ; preds = %bb.fo
  %i.ane = getelementptr inbounds nuw i8, ptr %i.anc, i64 48
  %i.anf = getelementptr inbounds nuw i8, ptr %i.anc, i64 56
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !181
  %i.anh = load ptr, ptr %i.ane, align 8, !tbaa !184 ; 2 uses
  %i.ani = ptrtoint ptr %i.ang to i64
  %i.anj = ptrtoint ptr %i.anh to i64
  %i.ank = sub i64 %i.ani, %i.anj
  %i.anl = ashr exact i64 %i.ank, 4               ; 2 uses
  %.not.i257 = icmp ugt i64 %i.anl, %indvars.iv
  br i1 %.not.i257, label %bb.ft, label %bb.fq, !prof !20

bb.fq:                                            ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit256
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !212
  store i32 %i.amy, ptr %6, align 16, !tbaa !61, !alias.scope !215, !noalias !212
  %i.anm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.anl, ptr %i.anm, align 16, !tbaa !61, !alias.scope !215, !noalias !212
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.12, i64 11, i64 66, ptr nonnull %6)
          to label %.noexc261 unwind label %.loopexit.split-lp399

.noexc261:                                        ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !212
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox7RowType7childAtEjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.12) #38
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %.noexc261
  unreachable

bb.fs:                                            ; preds = %.noexc261
  %i.ann = landingpad { ptr, i32 }
          cleanup
  %i.ano = load ptr, ptr %7, align 8, !tbaa !56   ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.anq = icmp eq ptr %i.ano, %i.anp
  br i1 %i.anq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258: ; preds = %bb.fs
  %i.anr = load i64, ptr %i.anp, align 8, !tbaa !61
  %i.ans = add i64 %i.anr, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.ans) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.body262

bb.ft:                                            ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit256
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %i.anh, i64 %indvars.iv
  %i.anu = load ptr, ptr %i.amh, align 8, !tbaa !110
  %i.anv = load ptr, ptr %i.ami, align 8, !tbaa !64
  %i.anw = getelementptr inbounds nuw [16 x i8], ptr %i.anv, i64 %indvars.iv
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ant, ptr noundef %i.anu, ptr noundef nonnull align 8 dereferenceable(16) %i.anw, ptr noundef null)
          to label %bb.fu unwind label %.loopexit398

bb.fu:                                            ; preds = %bb.ft
  %i.anx = load ptr, ptr %i.ami, align 8, !tbaa !64
  %i.any = getelementptr inbounds nuw [16 x i8], ptr %i.anx, i64 %indvars.iv
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !47 ; 2 uses
  %i.aoa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.amd, i32 noundef %i.amy)
          to label %bb.fv unwind label %.loopexit398

bb.fv:                                            ; preds = %bb.fu
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !47 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !50
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 280
  %i.aoe = load ptr, ptr %i.aod, align 8
  %i.aof = invoke noundef ptr %i.aoe(ptr noundef nonnull align 8 dereferenceable(94) %i.aob)
          to label %bb.fw unwind label %.loopexit398

bb.fw:                                            ; preds = %bb.fv
  %i.aog = load ptr, ptr %i.anz, align 8, !tbaa !50
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 200
  %i.aoi = load ptr, ptr %i.aoh, align 8
  invoke void %i.aoi(ptr noundef nonnull align 8 dereferenceable(94) %i.anz, ptr noundef %i.aof, ptr noundef nonnull align 8 dereferenceable(38) %15, ptr noundef %i.amj)
          to label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269 unwind label %.loopexit398

.loopexit398:                                     ; preds = %bb.fm, %bb.ft, %bb.fu, %bb.fv, %bb.fw
  %lpad.loopexit400 = landingpad { ptr, i32 }
          cleanup
  br label %.body262

.loopexit.split-lp399:                            ; preds = %bb.fp, %bb.fq
  %lpad.loopexit.split-lp401 = landingpad { ptr, i32 }
          cleanup
  br label %.body262

bb.fx:                                            ; preds = %bb.fn
  %i.aoj = load ptr, ptr %i.ami, align 8, !tbaa !64
  %i.aok = getelementptr inbounds nuw [16 x i8], ptr %i.aoj, i64 %indvars.iv ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox15ArrayVectorBase16transferOrCopyToEPNS0_6memory10MemoryPoolE:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr32, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !125
  %.not.i.i24 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %.pr32, align 8, !tbaa !50
  %..i.i25 = select i1 %.not.i.i24, i64 8, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %..i.i25
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.pr32)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26 unwind label %bb.r, !inline_history !124

bb.r:                                             ; preds = %.noexc.i23, %.sink.split.i.i22
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26: ; preds = %bb.k, %_ZN8facebook5velox13AlignedBuffer4copyIiEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit13, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20, %bb.q, %.noexc.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !109
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !117
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !304
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox15ArrayVectorBase19ensureNullRowsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !112
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117  ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !109  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !112
  %i.o = and i8 %i.n, 2
  %.not.i2 = icmp eq i8 %i.o, 0
  br i1 %.not.i2, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, label %bb.d, !prof !20

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 9 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !162  ; 5 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3
  %i.v = and i32 %i.t, 2147483584                 ; 4 uses
  %.not32.not57.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not32.not57.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.w = zext nneg i32 %i.v to i64
  %i.x = sub i64 %i.j, %i.r
  %diff.check = icmp ult i64 %i.x, 128
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %bb.e
  %.not33.i.i.i = icmp eq i32 %i.t, %i.v
  br i1 %.not33.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.g

bb.f:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %.lr.ph.i.i.i
  %indvars.iv60.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next61.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 7 uses
  %indvars.iv.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 3 uses
  %i.y = lshr exact i64 %indvars.iv60.i.i.i, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !43
  %i.ab = xor i64 %i.aa, -1                       ; 2 uses
  switch i64 %i.ab, label %.lr.ph.i.i.i.i [
    i64 -1, label %vector.memcheck
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"
  ]

vector.memcheck:                                  ; preds = %bb.f
  br i1 %diff.check, label %.preheader.i, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv60.i.i.i ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ac, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ad, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv60.i.i.i ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ag, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ah, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ai, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.aj, align 4, !tbaa !3
  %i.ak = or disjoint i64 %indvars.iv60.i.i.i, 32 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <8 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.am, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.an, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <8 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.aq, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.ar, align 4, !tbaa !3
  store <8 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !3
  br label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"

.preheader.i:                                     ; preds = %vector.memcheck, %.preheader.i
  %.023.i.i.i.i = phi i64 [ %i.be, %.preheader.i ], [ %indvars.iv60.i.i.i, %vector.memcheck ] ; 6 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.023.i.i.i.i
  store i32 0, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.023.i.i.i.i
  store i32 0, ptr %i.au, align 4, !tbaa !3
  %i.av = or disjoint i64 %.023.i.i.i.i, 1        ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.av
  store i32 0, ptr %i.aw, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.av
  store i32 0, ptr %i.ax, align 4, !tbaa !3
  %i.ay = or disjoint i64 %.023.i.i.i.i, 2        ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  store i32 0, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !3
  %i.bb = or disjoint i64 %.023.i.i.i.i, 3        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bb
  store i32 0, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bb
  store i32 0, ptr %i.bd, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.023.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.be, %indvars.iv.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.preheader.i, !llvm.loop !409

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.01522.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.f ] ; 3 uses
  %i.bf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i, i1 true)
  %i.bg = or disjoint i64 %i.bf, %indvars.iv60.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bg
  store i32 0, ptr %i.bh, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bg
  store i32 0, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.01522.i.i.i.i, -1
  %i.bk = and i64 %i.bj, %.01522.i.i.i.i          ; 2 uses
  %.not.i45.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i45.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !410

"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i": ; preds = %.preheader.i, %.lr.ph.i.i.i.i, %vector.body, %bb.f
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 64
  %.not32.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i, %i.w
  %indvars.iv.next61.i.i.i = add nuw nsw i64 %indvars.iv60.i.i.i, 64
  br i1 %.not32.not.i.i.i, label %bb.f, label %._crit_edge.i.i.i, !llvm.loop !411

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bl = lshr i32 %i.t, 6
  %i.bm = and i32 %i.t, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %notmask.i46.i.i.i = shl nsw i64 -1, %i.bn
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !43
  %.demorgan.i.i = or i64 %i.bq, %notmask.i46.i.i.i ; 2 uses
  %.not.i47.i.i.i = icmp eq i64 %.demorgan.i.i, -1
  br i1 %.not.i47.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %.preheader.i48.i.i.i

.preheader.i48.i.i.i:                             ; preds = %bb.g
  %i.br = xor i64 %.demorgan.i.i, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i48.i.i.i
  %.012.i53.i.i.i = phi i64 [ %i.br, %.preheader.i48.i.i.i ], [ %i.bw, %bb.h ] ; 3 uses
  %i.bs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i53.i.i.i, i1 true)
  %1 = trunc nuw nsw i64 %i.bs to i32
  %2 = or disjoint i32 %i.v, %1
  %3 = zext nneg i32 %2 to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %3
  store i32 0, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %3
  store i32 0, ptr %i.bu, align 4, !tbaa !3
  %i.bv = add nsw i64 %.012.i53.i.i.i, -1
  %i.bw = and i64 %i.bv, %.012.i53.i.i.i          ; 2 uses
  %.not10.i54.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not10.i54.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.h, !llvm.loop !412

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit": ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEi(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %.not = icmp ult i64 %i.h, %i.d
  br i1 %.not, label %bb.b, label %bb.e, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !413
  store i64 %i.h, ptr %7, align 16, !tbaa !61, !alias.scope !416, !noalias !413
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.d, ptr %i.i, align 16, !tbaa !61, !alias.scope !416, !noalias !413
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !413
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.12) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %8, align 8, !tbaa !56     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !61
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !146  ; 2 uses
  %.not9 = icmp ult i64 %i.s, %i.d
  br i1 %.not9, label %bb.j, label %.preheader, !prof !13

.preheader:                                       ; preds = %bb.e
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29   ; 2 uses
  %.not10 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %wide.trip.count108 = zext nneg i32 %i.b to i64 ; 2 uses
  br i1 %.not10, label %.critedge.us, label %.lr.ph.split

.critedge.us:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %bb.i ], [ 0, %.lr.ph ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv105
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 5 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %.split.us, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv105
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 4 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.split77.us, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw nsw i32 %i.af, %i.ab
  %.not11.us = icmp sgt i32 %i.ah, %2
  br i1 %.not11.us, label %.split82.us, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h, %.critedge.us
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %._crit_edge, label %.critedge.us, !llvm.loop !419

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !420
  store i64 %i.s, ptr %6, align 16, !tbaa !61, !alias.scope !423, !noalias !420
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.d, ptr %i.ai, align 16, !tbaa !61, !alias.scope !423, !noalias !420
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !420
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.12) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  %i.an = load i64, ptr %i.al, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.w

._crit_edge:                                      ; preds = %bb.v, %bb.i, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 0, %.lr.ph ] ; 8 uses
  %i.ap = lshr i64 %indvars.iv, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43
  %i.as = and i64 %indvars.iv, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.v, label %.critedge

.critedge:                                        ; preds = %.lr.ph.split
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 5 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.v, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ay = icmp slt i32 %i.aw, 0
  br i1 %i.ay, label %.split.us, label %bb.p, !prof !13

.split.us:                                        ; preds = %bb.m, %bb.f
  %i.az = phi i32 [ %i.ab, %bb.f ], [ %i.aw, %bb.m ]
  %.us-phi75.in = phi i64 [ %indvars.iv105, %bb.f ], [ %indvars.iv, %bb.m ]
  %.us-phi75 = trunc i64 %.us-phi75.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !426
  store i32 %i.az, ptr %5, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ba, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.us-phi75, ptr %i.bb, align 16, !tbaa !61, !alias.scope !429, !noalias !426
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.34, i64 70, i64 273, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !426
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.34) #38
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.split.us
  unreachable

bb.o:                                             ; preds = %.split.us
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %10, align 8, !tbaa !56   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

end_hunk_1
