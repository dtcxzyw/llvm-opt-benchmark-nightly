inline.NumInlined: 392
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4ncnn19Convolution_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.aev = lshr i32 %i.cj, 2
  %i.aew = and i32 %i.aev, 1
  %i.aex = lshr i32 %i.cj, 1
  %i.aey = and i32 %i.aex, 1
  %i.aez = and i32 %i.cj, 1
  %i.afa = add nuw nsw i32 %i.aez, %i.aeu
  %i.afb = add nuw nsw i32 %i.afa, %i.aew
  %i.afc = add nuw nsw i32 %i.afb, %i.aey
  %i.afd = lshr i32 %i.rh, 1
  %i.afe = and i32 %i.afd, 1
  %i.aff = and i32 %i.rh, 1
  %i.afg = add nuw nsw i32 %i.aff, 1
  %i.afh = add nuw nsw i32 %i.afg, %i.afe
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.aet, i32 noundef %i.afc, i32 noundef %i.afh, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.je:                                            ; preds = %bb.jc
  %i.afi = icmp sgt i32 %i.cj, 3
  br i1 %i.afi, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.afj = shl nsw i32 %i.aci, 4
  %i.afk = lshr i32 %i.cj, 1
  %i.afl = and i32 %i.afk, 1
  %i.afm = and i32 %i.cj, 1
  %i.afn = add nuw nsw i32 %i.afm, 1
  %i.afo = add nuw nsw i32 %i.afn, %i.afl
  %i.afp = lshr i32 %i.rh, 1
  %i.afq = and i32 %i.afp, 1
  %i.afr = and i32 %i.rh, 1
  %i.afs = add nuw nsw i32 %i.afr, 1
  %i.aft = add nuw nsw i32 %i.afs, %i.afq
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.afj, i32 noundef %i.afo, i32 noundef %i.aft, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jg:                                            ; preds = %bb.je
  %i.afu = icmp sgt i32 %i.cj, 1
  br i1 %i.afu, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.afv = shl nsw i32 %i.aci, 3
  %i.afw = and i32 %i.cj, 1
  %i.afx = add nuw nsw i32 %i.afw, 1
  %i.afy = lshr i32 %i.rh, 1
  %i.afz = and i32 %i.afy, 1
  %i.aga = and i32 %i.rh, 1
  %i.agb = add nuw nsw i32 %i.aga, 1
  %i.agc = add nuw nsw i32 %i.agb, %i.afz
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.afv, i32 noundef %i.afx, i32 noundef %i.agc, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.ji:                                            ; preds = %bb.jg
  %i.agd = shl nsw i32 %i.aci, 2
  %i.age = lshr i32 %i.rh, 1
  %i.agf = and i32 %i.age, 1
  %i.agg = and i32 %i.rh, 1
  %i.agh = add nuw nsw i32 %i.agg, 1
  %i.agi = add nuw nsw i32 %i.agh, %i.agf
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.agd, i32 noundef %i.cj, i32 noundef %i.agi, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jj:                                            ; preds = %bb.jb
  %i.agj = icmp sgt i32 %i.rh, 1
  %i.agk = icmp sgt i32 %i.cj, 7                  ; 2 uses
  br i1 %i.agj, label %bb.jk, label %bb.jr

bb.jk:                                            ; preds = %bb.jj
  br i1 %i.agk, label %bb.jl, label %bb.jm

bb.jl:                                            ; preds = %bb.jk
  %i.agl = shl nsw i32 %i.aci, 4
  %i.agm = lshr i32 %i.cj, 3
  %i.agn = lshr i32 %i.cj, 2
  %i.ago = and i32 %i.agn, 1
  %i.agp = lshr i32 %i.cj, 1
  %i.agq = and i32 %i.agp, 1
  %i.agr = and i32 %i.cj, 1
  %i.ags = add nuw nsw i32 %i.agr, %i.agm
  %i.agt = add nuw nsw i32 %i.ags, %i.ago
  %i.agu = add nuw nsw i32 %i.agt, %i.agq
  %i.agv = and i32 %i.rh, 1
  %i.agw = add nuw nsw i32 %i.agv, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.agl, i32 noundef %i.agu, i32 noundef %i.agw, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jm:                                            ; preds = %bb.jk
  %i.agx = icmp sgt i32 %i.cj, 3
  br i1 %i.agx, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.agy = shl nsw i32 %i.aci, 3
  %i.agz = lshr i32 %i.cj, 1
  %i.aha = and i32 %i.agz, 1
  %i.ahb = and i32 %i.cj, 1
  %i.ahc = add nuw nsw i32 %i.ahb, 1
  %i.ahd = add nuw nsw i32 %i.ahc, %i.aha
  %i.ahe = and i32 %i.rh, 1
  %i.ahf = add nuw nsw i32 %i.ahe, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.agy, i32 noundef %i.ahd, i32 noundef %i.ahf, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jo:                                            ; preds = %bb.jm
  %i.ahg = icmp sgt i32 %i.cj, 1
  br i1 %i.ahg, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.ahh = shl nsw i32 %i.aci, 2
  %i.ahi = and i32 %i.cj, 1
  %i.ahj = add nuw nsw i32 %i.ahi, 1
  %i.ahk = and i32 %i.rh, 1
  %i.ahl = add nuw nsw i32 %i.ahk, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.ahh, i32 noundef %i.ahj, i32 noundef %i.ahl, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jq:                                            ; preds = %bb.jo
  %i.ahm = shl nsw i32 %i.aci, 1
  %i.ahn = and i32 %i.rh, 1
  %i.aho = add nuw nsw i32 %i.ahn, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.ahm, i32 noundef %i.cj, i32 noundef %i.aho, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jr:                                            ; preds = %bb.jj
  br i1 %i.agk, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.ahp = shl nsw i32 %i.aci, 3
  %i.ahq = lshr i32 %i.cj, 3
  %i.ahr = lshr i32 %i.cj, 2
  %i.ahs = and i32 %i.ahr, 1
  %i.aht = lshr i32 %i.cj, 1
  %i.ahu = and i32 %i.aht, 1
  %i.ahv = and i32 %i.cj, 1
  %i.ahw = add nuw nsw i32 %i.ahv, %i.ahq
  %i.ahx = add nuw nsw i32 %i.ahw, %i.ahs
  %i.ahy = add nuw nsw i32 %i.ahx, %i.ahu
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.ahp, i32 noundef %i.ahy, i32 noundef %i.rh, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jt:                                            ; preds = %bb.jr
  %i.ahz = icmp sgt i32 %i.cj, 3
  br i1 %i.ahz, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.aia = shl nsw i32 %i.aci, 2
  %i.aib = lshr i32 %i.cj, 1
  %i.aic = and i32 %i.aib, 1
  %i.aid = and i32 %i.cj, 1
  %i.aie = add nuw nsw i32 %i.aid, 1
  %i.aif = add nuw nsw i32 %i.aie, %i.aic
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.aia, i32 noundef %i.aif, i32 noundef %i.rh, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jv:                                            ; preds = %bb.jt
  %i.aig = icmp sgt i32 %i.cj, 1
  br i1 %i.aig, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.aih = shl nsw i32 %i.aci, 1
  %i.aii = and i32 %i.cj, 1
  %i.aij = add nuw nsw i32 %i.aii, 1
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.aih, i32 noundef %i.aij, i32 noundef %i.rh, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

bb.jx:                                            ; preds = %bb.jv
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ach, i32 noundef %i.aci, i32 noundef %i.cj, i32 noundef %i.rh, i64 noundef 4, ptr noundef null)
  br label %.preheader1105.i

_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i:                ; preds = %bb.ja, %bb.iz, %bb.ix, %bb.iv
  %i.aik = load ptr, ptr %i.acg, align 8, !tbaa !18 ; 9 uses
  %i.ail = mul i32 %i.aci, %i.cj                  ; 16 uses
  %i.aim = load ptr, ptr %i.ach, align 8, !tbaa !18, !noalias !90
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !20, !noalias !90
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !65, !noalias !90
  %factor.op.mul.i = mul i64 %i.aiq, %i.aio
  %i.air = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.ais = sext i32 %i.aci to i64                 ; 88 uses
  %i.ait = shl i32 %i.aci, 3
  %i.aiu = sext i32 %i.ait to i64                 ; 9 uses
  %i.aiv = shl i32 %i.aci, 2
  %i.aiw = sext i32 %i.aiv to i64                 ; 9 uses
  %i.aix = shl i32 %i.aci, 1
  %i.aiy = sext i32 %i.aix to i64                 ; 8 uses
  %i.aiz = icmp slt i32 %i.aci, 1
  %i.aja = add i32 %i.cj, -8                      ; 2 uses
  %i.ajb = lshr i32 %i.aja, 1
  %i.ajc = and i32 %i.ajb, 2147483644
  %narrow.i = add nuw i32 %i.ajc, 4
  %i.ajd = zext i32 %narrow.i to i64
  %i.aje = mul nsw i64 %i.aiu, %i.ajd
  %scevgep.i = getelementptr i8, ptr %i.aik, i64 %i.aje ; 8 uses
  %i.ajf = shl i32 %i.ail, 3                      ; 8 uses
  %i.ajg = shl i32 %i.ail, 1
  %i.ajh = mul i32 %i.ail, 3
  %i.aji = shl i32 %i.ail, 2
  %i.ajj = mul i32 %i.ail, 5
  %i.ajk = mul i32 %i.ail, 6
  %i.ajl = mul i32 %i.ail, 7
  %i.ajm = and i32 %i.aja, -8
  %i.ajn = add i32 %i.ajm, 8                      ; 4 uses
  %i.ajo = add i32 %i.cj, -4
  %i.ajp = zext nneg i32 %i.rh to i64
  %i.ajq = or disjoint i32 %i.ajn, 3
  %i.ajr = icmp slt i32 %i.ajq, %i.cj
  %wide.trip.count.i = zext i32 %i.aci to i64     ; 8 uses
  %i.ajs = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.ajt = shl nuw nsw i64 %wide.trip.count.i, 2  ; 8 uses
  %min.iters.check = icmp ult i32 %i.aci, 16
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.aju = shl nuw nsw i64 %n.vec, 5
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %_ZN4ncnn3MatD2Ev.exit1007.i

.preheader1105.loopexit.i:                        ; preds = %._crit_edge1246.split.i
  %i.ajv = trunc nuw nsw i64 %indvars.iv.next1686.i to i32
  br label %.preheader1105.i

.preheader1105.i:                                 ; preds = %.preheader1105.loopexit.i, %bb.jx, %bb.jw, %bb.ju, %bb.js, %bb.jq, %bb.jp, %bb.jn, %bb.jl, %bb.ji, %bb.jh, %bb.jf, %bb.jd
  %.0.lcssa.i = phi i32 [ %i.ajv, %.preheader1105.loopexit.i ], [ 0, %bb.jf ], [ 0, %bb.ji ], [ 0, %bb.jh ], [ 0, %bb.jd ], [ 0, %bb.js ], [ 0, %bb.jw ], [ 0, %bb.jx ], [ 0, %bb.ju ], [ 0, %bb.jl ], [ 0, %bb.jp ], [ 0, %bb.jq ], [ 0, %bb.jn ] ; 7 uses
  %i.ajw = or disjoint i32 %.0.lcssa.i, 3         ; 2 uses
  %i.ajx = icmp slt i32 %i.ajw, %i.rh
  br i1 %i.ajx, label %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i, label %.preheader1097.i

_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i:                ; preds = %.preheader1105.i
  %i.ajy = load ptr, ptr %i.acg, align 8, !tbaa !18 ; 5 uses
  %i.ajz = mul i32 %i.aci, %i.cj                  ; 9 uses
  %i.aka = load ptr, ptr %i.ach, align 8, !tbaa !18, !noalias !93
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !20, !noalias !93
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !65, !noalias !93
  %factor.op.mul1342.i = mul i64 %i.ake, %i.akc
  %i.akf = icmp sgt i32 %i.cj, 7
  %i.akg = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.akh = sext i32 %i.aci to i64                 ; 49 uses
  %i.aki = shl i32 %i.aci, 3
  %i.akj = sext i32 %i.aki to i64                 ; 5 uses
  %i.akk = shl i32 %i.aci, 2
  %i.akl = sext i32 %i.akk to i64                 ; 5 uses
  %i.akm = shl i32 %i.aci, 1                      ; 2 uses
  %i.akn = sext i32 %i.akm to i64                 ; 5 uses
  %i.ako = icmp slt i32 %i.aci, 1
  %i.akp = add i32 %i.cj, -8                      ; 2 uses
  %i.akq = lshr i32 %i.akp, 1
  %i.akr = and i32 %i.akq, 2147483644
  %narrow1839.i = add nuw i32 %i.akr, 4
  %i.aks = zext i32 %narrow1839.i to i64
  %i.akt = mul nsw i64 %i.akj, %i.aks
  %scevgep1688.i = getelementptr i8, ptr %i.ajy, i64 %i.akt ; 4 uses
  %i.aku = mul i32 %i.ajz, %.0.lcssa.i
  %i.akv = shl i32 %i.ajz, 2                      ; 4 uses
  %i.akw = add nuw nsw i32 %.0.lcssa.i, 1
  %i.akx = mul i32 %i.akw, %i.ajz
  %i.aky = add nuw nsw i32 %.0.lcssa.i, 2
  %i.akz = mul i32 %i.aky, %i.ajz
  %i.ala = mul i32 %i.ajw, %i.ajz
  %i.alb = and i32 %i.akp, -8
  %i.alc = add i32 %i.alb, 8                      ; 4 uses
  %i.ald = add i32 %i.cj, -4
  %i.ale = zext nneg i32 %.0.lcssa.i to i64
  %i.alf = add i32 %.0.lcssa.i, 3
  %i.alg = sext i32 %i.rh to i64
  %i.alh = or disjoint i32 %i.alc, 3
  %i.ali = icmp slt i32 %i.alh, %i.cj
  %wide.trip.count1708.i = zext i32 %i.aci to i64 ; 13 uses
  %invariant.op.i = add nsw i64 %i.alg, -3
  %i.alj = shl nuw nsw i64 %wide.trip.count1708.i, 4
  %i.alk = shl nuw nsw i64 %wide.trip.count1708.i, 2 ; 9 uses
  %i.all = shl nuw nsw i64 %wide.trip.count1708.i, 5
  %i.alm = shl nuw nsw i64 %i.akh, 2              ; 5 uses
  %i.aln = add nuw nsw i64 %i.alm, %i.alk         ; 4 uses
  %i.alo = shl nsw i64 %i.akn, 2
  %min.iters.check837 = icmp ult i32 %i.aci, 16
  %stride.check804 = icmp slt i32 %i.akm, 0
  %n.vec839 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alp = shl nuw nsw i64 %n.vec839, 5
  %cmp.n854 = icmp eq i64 %n.vec839, %wide.trip.count1708.i
  %min.iters.check760 = icmp ult i32 %i.aci, 8
  %n.vec762 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alq = shl nuw nsw i64 %n.vec762, 4
  %cmp.n773 = icmp eq i64 %n.vec762, %wide.trip.count1708.i
  %xtraiter = and i64 %wide.trip.count1708.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.alr = add nsw i64 %wide.trip.count1708.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit1006.i

_ZN4ncnn3MatD2Ev.exit1007.i:                      ; preds = %._crit_edge1246.split.i, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i
  %indvars.iv1685.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1686.i, %._crit_edge1246.split.i ] ; 3 uses
  %indvars.iv1646.i = phi i32 [ %i.ajl, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1647.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1642.i = phi i32 [ %i.ajk, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1643.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1638.i = phi i32 [ %i.ajj, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1639.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1634.i = phi i32 [ %i.aji, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1635.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1630.i = phi i32 [ %i.ajh, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1631.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1626.i = phi i32 [ %i.ajg, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1627.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1622.i = phi i32 [ %i.ail, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1623.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv.i226 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next.i227, %._crit_edge1246.split.i ] ; 2 uses
  %i.als = sext i32 %indvars.iv.i226 to i64
  %i.alt = shl nsw i64 %i.als, 2
  %scevgep1620.i = getelementptr i8, ptr %scevgep.i, i64 %i.alt ; 2 uses
  %i.alu = sext i32 %indvars.iv1622.i to i64
  %i.alv = shl nsw i64 %i.alu, 2
  %scevgep1624.i = getelementptr i8, ptr %scevgep.i, i64 %i.alv ; 2 uses
  %i.alw = sext i32 %indvars.iv1626.i to i64
  %i.alx = shl nsw i64 %i.alw, 2
  %scevgep1628.i = getelementptr i8, ptr %scevgep.i, i64 %i.alx ; 2 uses
  %i.aly = sext i32 %indvars.iv1630.i to i64
  %i.alz = shl nsw i64 %i.aly, 2
  %scevgep1632.i = getelementptr i8, ptr %scevgep.i, i64 %i.alz ; 2 uses
  %i.ama = sext i32 %indvars.iv1634.i to i64
  %i.amb = shl nsw i64 %i.ama, 2
  %scevgep1636.i = getelementptr i8, ptr %scevgep.i, i64 %i.amb ; 2 uses
  %i.amc = sext i32 %indvars.iv1638.i to i64
  %i.amd = shl nsw i64 %i.amc, 2
  %scevgep1640.i = getelementptr i8, ptr %scevgep.i, i64 %i.amd ; 2 uses
  %i.ame = sext i32 %indvars.iv1642.i to i64
  %i.amf = shl nsw i64 %i.ame, 2
  %scevgep1644.i = getelementptr i8, ptr %scevgep.i, i64 %i.amf ; 2 uses
  %i.amg = sext i32 %indvars.iv1646.i to i64
  %i.amh = shl nsw i64 %i.amg, 2
  %scevgep1648.i = getelementptr i8, ptr %scevgep.i, i64 %i.amh ; 2 uses
  %i.ami = trunc i64 %indvars.iv1685.i to i32     ; 8 uses
  %i.amj = mul i32 %i.ail, %i.ami
  %i.amk = sext i32 %i.amj to i64
  %i.aml = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amk ; 2 uses
  %i.amm = or disjoint i32 %i.ami, 1
  %i.amn = mul i32 %i.amm, %i.ail
  %i.amo = sext i32 %i.amn to i64
  %i.amp = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amo ; 2 uses
  %i.amq = or disjoint i32 %i.ami, 2
  %i.amr = mul i32 %i.amq, %i.ail
  %i.ams = sext i32 %i.amr to i64
  %i.amt = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.ams ; 2 uses
  %i.amu = or disjoint i32 %i.ami, 3
  %i.amv = mul i32 %i.amu, %i.ail
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amw ; 2 uses
  %i.amy = or disjoint i32 %i.ami, 4
  %i.amz = mul i32 %i.amy, %i.ail
  %i.ana = sext i32 %i.amz to i64
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.ana ; 2 uses
  %i.anc = or disjoint i32 %i.ami, 5
  %i.and = mul i32 %i.anc, %i.ail
  %i.ane = sext i32 %i.and to i64
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.ane ; 2 uses
  %i.ang = or disjoint i32 %i.ami, 6
  %i.anh = mul i32 %i.ang, %i.ail
  %i.ani = sext i32 %i.anh to i64
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.ani ; 2 uses
  %i.ank = or disjoint i32 %i.ami, 7
  %i.anl = mul i32 %i.ank, %i.ail
  %i.anm = sext i32 %i.anl to i64
  %i.ann = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.anm ; 2 uses
  %i.ano = lshr exact i64 %indvars.iv1685.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.ano
  %i.anp = getelementptr inbounds nuw i8, ptr %i.aim, i64 %.reass.i ; 4 uses
  br i1 %i.ack, label %.preheader1109.lr.ph.i, label %.preheader1112.i

.preheader1109.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1007.i
  br i1 %i.air, label %.preheader1109.us.i, label %.preheader1112.thread.i

.preheader1109.us.i:                              ; preds = %.preheader1109.lr.ph.i, %._crit_edge.us.i
  %.08391134.us.i = phi ptr [ %i.ava, %._crit_edge.us.i ], [ %i.aml, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08421133.us.i = phi ptr [ %i.avb, %._crit_edge.us.i ], [ %i.amp, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08501132.us.i = phi ptr [ %i.avc, %._crit_edge.us.i ], [ %i.amt, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08531131.us.i = phi ptr [ %i.avd, %._crit_edge.us.i ], [ %i.amx, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08571130.us.i = phi ptr [ %i.ave, %._crit_edge.us.i ], [ %i.anb, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08601129.us.i = phi ptr [ %i.avf, %._crit_edge.us.i ], [ %i.anf, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08831128.us.i = phi ptr [ %i.avg, %._crit_edge.us.i ], [ %i.anj, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08861127.us.i = phi ptr [ %i.avh, %._crit_edge.us.i ], [ %i.ann, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08891126.us.i = phi ptr [ %i.auz, %._crit_edge.us.i ], [ %i.anp, %.preheader1109.lr.ph.i ]
  %.09001125.us.i = phi i32 [ %i.avi, %._crit_edge.us.i ], [ 0, %.preheader1109.lr.ph.i ]
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jy, %.preheader1109.us.i
  %indvars.iv1649.i = phi i64 [ 0, %.preheader1109.us.i ], [ %indvars.iv.next1650.i, %bb.jy ] ; 9 uses
  %.18901124.us.i = phi ptr [ %.08891126.us.i, %.preheader1109.us.i ], [ %i.auz, %bb.jy ] ; 65 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.08421133.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.08531131.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %.08601129.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.08831128.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.08861127.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.any = load float, ptr %i.anq, align 4, !tbaa !39
  store float %i.any, ptr %.18901124.us.i, align 4, !tbaa !39
  %i.anz = load float, ptr %i.anr, align 4, !tbaa !39
  %i.aoa = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 4
  store float %i.anz, ptr %i.aoa, align 4, !tbaa !39
  %i.aob = load float, ptr %i.ans, align 4, !tbaa !39
  %i.aoc = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 8
  store float %i.aob, ptr %i.aoc, align 4, !tbaa !39
  %i.aod = load float, ptr %i.ant, align 4, !tbaa !39
  %i.aoe = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 12
  store float %i.aod, ptr %i.aoe, align 4, !tbaa !39
  %i.aof = load float, ptr %i.anu, align 4, !tbaa !39
  %i.aog = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 16
  store float %i.aof, ptr %i.aog, align 4, !tbaa !39
  %i.aoh = load float, ptr %i.anv, align 4, !tbaa !39
  %i.aoi = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 20
  store float %i.aoh, ptr %i.aoi, align 4, !tbaa !39
  %i.aoj = load float, ptr %i.anw, align 4, !tbaa !39
  %i.aok = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 24
  store float %i.aoj, ptr %i.aok, align 4, !tbaa !39
  %i.aol = load float, ptr %i.anx, align 4, !tbaa !39
  %i.aom = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 28
  store float %i.aol, ptr %i.aom, align 4, !tbaa !39
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.anq, i64 %i.ais ; 2 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.ais ; 2 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.ais ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %i.ais ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.ais ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.ais ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ais ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.ais ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 32
  %i.aow = load float, ptr %i.aon, align 4, !tbaa !39
  store float %i.aow, ptr %i.aov, align 4, !tbaa !39
  %i.aox = load float, ptr %i.aoo, align 4, !tbaa !39
  %i.aoy = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 36
  store float %i.aox, ptr %i.aoy, align 4, !tbaa !39
  %i.aoz = load float, ptr %i.aop, align 4, !tbaa !39
  %i.apa = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 40
  store float %i.aoz, ptr %i.apa, align 4, !tbaa !39
  %i.apb = load float, ptr %i.aoq, align 4, !tbaa !39
  %i.apc = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 44
  store float %i.apb, ptr %i.apc, align 4, !tbaa !39
  %i.apd = load float, ptr %i.aor, align 4, !tbaa !39
  %i.ape = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 48
  store float %i.apd, ptr %i.ape, align 4, !tbaa !39
  %i.apf = load float, ptr %i.aos, align 4, !tbaa !39
  %i.apg = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 52
  store float %i.apf, ptr %i.apg, align 4, !tbaa !39
  %i.aph = load float, ptr %i.aot, align 4, !tbaa !39
  %i.api = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 56
  store float %i.aph, ptr %i.api, align 4, !tbaa !39
  %i.apj = load float, ptr %i.aou, align 4, !tbaa !39
  %i.apk = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 60
  store float %i.apj, ptr %i.apk, align 4, !tbaa !39
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.aon, i64 %i.ais ; 2 uses
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoo, i64 %i.ais ; 2 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.ais ; 2 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.ais ; 2 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.ais ; 2 uses
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.ais ; 2 uses
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.ais ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %i.ais ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 64
  %i.apu = load float, ptr %i.apl, align 4, !tbaa !39
  store float %i.apu, ptr %i.apt, align 4, !tbaa !39
  %i.apv = load float, ptr %i.apm, align 4, !tbaa !39
  %i.apw = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 68
  store float %i.apv, ptr %i.apw, align 4, !tbaa !39
  %i.apx = load float, ptr %i.apn, align 4, !tbaa !39
  %i.apy = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 72
  store float %i.apx, ptr %i.apy, align 4, !tbaa !39
  %i.apz = load float, ptr %i.apo, align 4, !tbaa !39
  %i.aqa = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 76
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.bcg = icmp sge i32 %.2902.lcssa.i, %i.cj
  %brmerge.i = or i1 %i.aiz, %i.bcg
  br i1 %brmerge.i, label %._crit_edge1246.split.i, label %.preheader1106.i.preheader

.preheader1106.i.preheader:                       ; preds = %.preheader1110.i
  %scevgep695 = getelementptr i8, ptr %.2888.lcssa.i, i64 %i.ajt
  %scevgep696 = getelementptr i8, ptr %.2885.lcssa.i, i64 %i.ajt
  %scevgep697 = getelementptr i8, ptr %.2862.lcssa.i, i64 %i.ajt
  %scevgep698 = getelementptr i8, ptr %.2859.lcssa.i, i64 %i.ajt
  %scevgep699 = getelementptr i8, ptr %.2855.lcssa.i, i64 %i.ajt
  %scevgep700 = getelementptr i8, ptr %.2852.lcssa.i, i64 %i.ajt
  %scevgep701 = getelementptr i8, ptr %.2844.lcssa.i, i64 %i.ajt
  %scevgep702 = getelementptr i8, ptr %.2841.lcssa.i, i64 %i.ajt
  %i.bch = insertelement <8 x ptr> poison, ptr %scevgep695, i64 0
  %i.bci = insertelement <8 x ptr> %i.bch, ptr %scevgep696, i64 1
  %i.bcj = insertelement <8 x ptr> %i.bci, ptr %scevgep697, i64 2
  %i.bck = insertelement <8 x ptr> %i.bcj, ptr %scevgep698, i64 3
  %i.bcl = insertelement <8 x ptr> %i.bck, ptr %scevgep699, i64 4
  %i.bcm = insertelement <8 x ptr> %i.bcl, ptr %scevgep700, i64 5
  %i.bcn = insertelement <8 x ptr> %i.bcm, ptr %scevgep701, i64 6
  %i.bco = insertelement <8 x ptr> %i.bcn, ptr %scevgep702, i64 7
  %i.bcp = insertelement <8 x ptr> poison, ptr %.2888.lcssa.i, i64 0
  %i.bcq = insertelement <8 x ptr> %i.bcp, ptr %.2885.lcssa.i, i64 1
  %i.bcr = insertelement <8 x ptr> %i.bcq, ptr %.2862.lcssa.i, i64 2
  %i.bcs = insertelement <8 x ptr> %i.bcr, ptr %.2859.lcssa.i, i64 3
  %i.bct = insertelement <8 x ptr> %i.bcs, ptr %.2855.lcssa.i, i64 4
  %i.bcu = insertelement <8 x ptr> %i.bct, ptr %.2852.lcssa.i, i64 5
  %i.bcv = insertelement <8 x ptr> %i.bcu, ptr %.2844.lcssa.i, i64 6
  %i.bcw = insertelement <8 x ptr> %i.bcv, ptr %.2841.lcssa.i, i64 7
  br label %.preheader1106.i

.preheader1106.i:                                 ; preds = %.preheader1106.i.preheader, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa694, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1106.i.preheader ] ; 6 uses
  %.39031244.i = phi i32 [ %i.bdw, %._crit_edge.i ], [ %.2902.lcssa.i, %.preheader1106.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1106.i
  %scevgep = getelementptr i8, ptr %.98981245.i, i64 %i.ajs
  %i.bcx = insertelement <8 x ptr> poison, ptr %.98981245.i, i64 0
  %i.bcy = shufflevector <8 x ptr> %i.bcx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bcz = icmp ult <8 x ptr> %i.bcy, %i.bco
  %i.bda = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.bdb = shufflevector <8 x ptr> %i.bda, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bdc = icmp ult <8 x ptr> %i.bcw, %i.bdb
  %i.bdd = and <8 x i1> %i.bcz, %i.bdc
  %i.bde = bitcast <8 x i1> %i.bdd to i8
  %.not1240 = icmp eq i8 %i.bde, 0
  br i1 %.not1240, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.bdf = getelementptr i8, ptr %.98981245.i, i64 %i.aju ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bdg = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.bdg
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %.2844.lcssa.i, i64 %index
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.2855.lcssa.i, i64 %index
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.2862.lcssa.i, i64 %index
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.bdh, align 4, !tbaa !39, !alias.scope !102
  %wide.load730 = load <8 x float>, ptr %i.bdi, align 4, !tbaa !39, !alias.scope !105
  %wide.load731 = load <8 x float>, ptr %i.bdj, align 4, !tbaa !39, !alias.scope !107
  %wide.load732 = load <8 x float>, ptr %i.bdk, align 4, !tbaa !39, !alias.scope !109
  %wide.load733 = load <8 x float>, ptr %i.bdl, align 4, !tbaa !39, !alias.scope !111
  %wide.load734 = load <8 x float>, ptr %i.bdm, align 4, !tbaa !39, !alias.scope !113
  %wide.load735 = load <8 x float>, ptr %i.bdn, align 4, !tbaa !39, !alias.scope !115
  %wide.load736 = load <8 x float>, ptr %i.bdo, align 4, !tbaa !39, !alias.scope !117
  %i.bdp = shufflevector <8 x float> %wide.load, <8 x float> %wide.load730, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdq = shufflevector <8 x float> %wide.load731, <8 x float> %wide.load732, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdr = shufflevector <8 x float> %wide.load733, <8 x float> %wide.load734, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bds = shufflevector <8 x float> %wide.load735, <8 x float> %wide.load736, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdt = shufflevector <16 x float> %i.bdp, <16 x float> %i.bdq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdu = shufflevector <16 x float> %i.bdr, <16 x float> %i.bds, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.bdt, <32 x float> %i.bdu, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !39, !alias.scope !119, !noalias !121
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bdv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdv, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1106.i, %middle.block
  %indvars.iv1679.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1106.i ], [ %n.vec, %middle.block ]
  %.108991243.i.ph = phi ptr [ %.98981245.i, %vector.memcheck ], [ %.98981245.i, %.preheader1106.i ], [ %i.bdf, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa694 = phi ptr [ %i.bdf, %middle.block ], [ %i.beu, %scalar.ph ]
  %i.bdw = add nuw nsw i32 %.39031244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.bdw, %i.cj
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.beu, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.2844.lcssa.i, i64 %indvars.iv1679.i
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.2855.lcssa.i, i64 %indvars.iv1679.i
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.2862.lcssa.i, i64 %indvars.iv1679.i
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %indvars.iv1679.i
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %indvars.iv1679.i
  %i.bef = load float, ptr %i.bdx, align 4, !tbaa !39
  store float %i.bef, ptr %.108991243.i, align 4, !tbaa !39
  %i.beg = load float, ptr %i.bdy, align 4, !tbaa !39
  %i.beh = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 4
  store float %i.beg, ptr %i.beh, align 4, !tbaa !39
  %i.bei = load float, ptr %i.bdz, align 4, !tbaa !39
  %i.bej = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 8
  store float %i.bei, ptr %i.bej, align 4, !tbaa !39
  %i.bek = load float, ptr %i.bea, align 4, !tbaa !39
  %i.bel = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 12
  store float %i.bek, ptr %i.bel, align 4, !tbaa !39
  %i.bem = load float, ptr %i.beb, align 4, !tbaa !39
  %i.ben = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 16
  store float %i.bem, ptr %i.ben, align 4, !tbaa !39
  %i.beo = load float, ptr %i.bec, align 4, !tbaa !39
  %i.bep = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 20
  store float %i.beo, ptr %i.bep, align 4, !tbaa !39
  %i.beq = load float, ptr %i.bed, align 4, !tbaa !39
  %i.ber = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 24
  store float %i.beq, ptr %i.ber, align 4, !tbaa !39
  %i.bes = load float, ptr %i.bee, align 4, !tbaa !39
  %i.bet = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 28
  store float %i.bes, ptr %i.bet, align 4, !tbaa !39
  %i.beu = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 32 ; 2 uses
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1 ; 2 uses
  %exitcond1683.not.i = icmp eq i64 %indvars.iv.next1680.i, %wide.trip.count.i
  br i1 %exitcond1683.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !125

._crit_edge1246.split.i:                          ; preds = %._crit_edge.i, %.preheader1110.i, %.preheader1107.lr.ph.i
  %indvars.iv.next1686.i = add nuw nsw i64 %indvars.iv1685.i, 8 ; 3 uses
  %i.bev = or disjoint i64 %indvars.iv.next1686.i, 7
  %i.bew = icmp samesign ult i64 %i.bev, %i.ajp
  %indvars.iv.next.i227 = add i32 %indvars.iv.i226, %i.ajf
  %indvars.iv.next1623.i = add i32 %indvars.iv1622.i, %i.ajf
  %indvars.iv.next1627.i = add i32 %indvars.iv1626.i, %i.ajf
  %indvars.iv.next1631.i = add i32 %indvars.iv1630.i, %i.ajf
  %indvars.iv.next1635.i = add i32 %indvars.iv1634.i, %i.ajf
  %indvars.iv.next1639.i = add i32 %indvars.iv1638.i, %i.ajf
  %indvars.iv.next1643.i = add i32 %indvars.iv1642.i, %i.ajf
  %indvars.iv.next1647.i = add i32 %indvars.iv1646.i, %i.ajf
  br i1 %i.bew, label %_ZN4ncnn3MatD2Ev.exit1007.i, label %.preheader1105.loopexit.i, !llvm.loop !126

.preheader1097.loopexit.i:                        ; preds = %._crit_edge1339.split.i
  %i.bex = trunc nuw nsw i64 %indvars.iv.next1739.i to i32
  br label %.preheader1097.i

.preheader1097.i:                                 ; preds = %.preheader1097.loopexit.i, %.preheader1105.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1105.i ], [ %i.bex, %.preheader1097.loopexit.i ] ; 4 uses
  %i.bey = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.bez = icmp slt i32 %i.bey, %i.rh
  br i1 %i.bez, label %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i, label %.preheader1089.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %.preheader1097.i
  %i.bfa = load ptr, ptr %i.acg, align 8, !tbaa !18 ; 3 uses
  %i.bfb = mul i32 %i.aci, %i.cj                  ; 5 uses
  %i.bfc = load ptr, ptr %i.ach, align 8, !tbaa !18, !noalias !127
  %i.bfd = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bfe = load i64, ptr %i.bfd, align 8, !tbaa !20, !noalias !127
  %i.bff = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bfg = load i64, ptr %i.bff, align 8, !tbaa !65, !noalias !127
  %factor.op.mul1405.i = mul i64 %i.bfg, %i.bfe
  %i.bfh = icmp sgt i32 %i.cj, 7
  %i.bfi = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.bfj = sext i32 %i.aci to i64                 ; 16 uses
  %i.bfk = shl i32 %i.aci, 1                      ; 2 uses
  %i.bfl = sext i32 %i.bfk to i64                 ; 10 uses
  %i.bfm = mul i32 %i.aci, 3
  %i.bfn = sext i32 %i.bfm to i64                 ; 7 uses
  %i.bfo = shl i32 %i.aci, 2                      ; 2 uses
  %i.bfp = sext i32 %i.bfo to i64                 ; 6 uses
  %i.bfq = mul nsw i32 %i.aci, 5
  %i.bfr = sext i32 %i.bfq to i64                 ; 2 uses
  %i.bfs = mul nsw i32 %i.aci, 6
  %i.bft = sext i32 %i.bfs to i64                 ; 2 uses
  %i.bfu = mul nsw i32 %i.aci, 7
  %i.bfv = sext i32 %i.bfu to i64                 ; 2 uses
  %i.bfw = shl i32 %i.aci, 3
  %i.bfx = sext i32 %i.bfw to i64                 ; 3 uses
  %i.bfy = icmp slt i32 %i.aci, 1
  %i.bfz = add i32 %i.cj, -8                      ; 2 uses
  %i.bga = lshr i32 %i.bfz, 1
  %i.bgb = and i32 %i.bga, 2147483644
  %narrow1840.i = add nuw i32 %i.bgb, 4
  %i.bgc = zext i32 %narrow1840.i to i64
  %i.bgd = mul nsw i64 %i.bfx, %i.bgc
  %scevgep1743.i = getelementptr i8, ptr %i.bfa, i64 %i.bgd ; 2 uses
  %i.bge = mul i32 %i.bfb, %.1.lcssa.i
  %i.bgf = shl i32 %i.bfb, 1                      ; 2 uses
  %i.bgg = mul i32 %i.bey, %i.bfb
  %i.bgh = and i32 %i.bfz, -8
  %i.bgi = add i32 %i.bgh, 8                      ; 4 uses
  %i.bgj = add i32 %i.cj, -4
  %i.bgk = zext nneg i32 %.1.lcssa.i to i64
  %i.bgl = sext i32 %i.rh to i64
  %i.bgm = or disjoint i32 %i.bgi, 3
  %i.bgn = icmp slt i32 %i.bgm, %i.cj
  %wide.trip.count1754.i = zext i32 %i.aci to i64 ; 19 uses
  %i.bgo = shl nuw nsw i64 %wide.trip.count1754.i, 3
  %i.bgp = shl nuw nsw i64 %wide.trip.count1754.i, 2 ; 5 uses
  %i.bgq = shl nuw nsw i64 %wide.trip.count1754.i, 4
  %i.bgr = shl nuw nsw i64 %i.bfj, 2              ; 3 uses
  %i.bgs = add nuw nsw i64 %i.bgr, %i.bgp         ; 2 uses
  %i.bgt = shl nsw i64 %i.bfl, 2
  %i.bgu = shl nuw nsw i64 %wide.trip.count1754.i, 5
  %i.bgv = shl nuw nsw i64 %i.bfn, 2              ; 3 uses
  %i.bgw = shl nuw nsw i64 %wide.trip.count1754.i, 2 ; 5 uses
  %i.bgx = add nuw nsw i64 %i.bgv, %i.bgw         ; 2 uses
  %i.bgy = shl nsw i64 %i.bfp, 2
  %i.bgz = add i32 %i.cj, -4
  %i.bha = shl nuw nsw i64 %i.bfl, 2              ; 3 uses
  %i.bhb = add nuw nsw i64 %i.bha, %i.bgw         ; 2 uses
  %i.bhc = shl nuw nsw i64 %i.bfj, 2              ; 3 uses
  %i.bhd = add nuw nsw i64 %i.bhc, %i.bgw         ; 2 uses
  %min.iters.check1000 = icmp ult i32 %i.aci, 16
  %stride.check967 = icmp slt i32 %i.bfo, 0
  %n.vec1002 = and i64 %wide.trip.count1754.i, 2147483640 ; 4 uses
  %i.bhe = shl nuw nsw i64 %n.vec1002, 5
  %cmp.n1017 = icmp eq i64 %n.vec1002, %wide.trip.count1754.i
  %min.iters.check920 = icmp ult i32 %i.aci, 16
  %stride.check907 = icmp slt i32 %i.bfk, 0
  %n.vec922 = and i64 %wide.trip.count1754.i, 2147483640 ; 4 uses
  %i.bhf = shl nuw nsw i64 %n.vec922, 4
  %cmp.n933 = icmp eq i64 %n.vec922, %wide.trip.count1754.i
  %xtraiter1310 = and i64 %wide.trip.count1754.i, 1
  %lcmp.mod1311.not = icmp eq i64 %xtraiter1310, 0
  %i.bhg = add nsw i64 %wide.trip.count1754.i, -1
  %min.iters.check869 = icmp ult i32 %i.aci, 6
  %n.vec871 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.bhh = shl nuw nsw i64 %n.vec871, 3
  %cmp.n884 = icmp eq i64 %n.vec871, %wide.trip.count1754.i
  %xtraiter1312 = and i64 %wide.trip.count1754.i, 3 ; 2 uses
  %lcmp.mod1313.not = icmp eq i64 %xtraiter1312, 0
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

_ZN4ncnn3MatD2Ev.exit1006.i:                      ; preds = %._crit_edge1339.split.i, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i
  %indvars.iv1738.i = phi i64 [ %i.ale, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1739.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1736.i = phi i32 [ %i.alf, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1701.i = phi i32 [ %i.ala, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1702.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1697.i = phi i32 [ %i.akz, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1698.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1693.i = phi i32 [ %i.akx, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1694.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1689.i = phi i32 [ %i.aku, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1690.i, %._crit_edge1339.split.i ] ; 2 uses
  %i.bhi = sext i32 %indvars.iv1689.i to i64
  %i.bhj = shl nsw i64 %i.bhi, 2
  %scevgep1691.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhj ; 2 uses
  %i.bhk = sext i32 %indvars.iv1693.i to i64
  %i.bhl = shl nsw i64 %i.bhk, 2
  %scevgep1695.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhl ; 2 uses
  %i.bhm = sext i32 %indvars.iv1697.i to i64
  %i.bhn = shl nsw i64 %i.bhm, 2
  %scevgep1699.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhn ; 2 uses
  %i.bho = sext i32 %indvars.iv1701.i to i64
  %i.bhp = shl nsw i64 %i.bho, 2
  %scevgep1703.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhp ; 2 uses
  %i.bhq = trunc nuw i64 %indvars.iv1738.i to i32 ; 5 uses
  %i.bhr = mul i32 %i.ajz, %i.bhq
  %i.bhs = sext i32 %i.bhr to i64
  %i.bht = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bhs ; 2 uses
  %i.bhu = add i32 %i.bhq, 1
  %i.bhv = mul i32 %i.bhu, %i.ajz
  %i.bhw = sext i32 %i.bhv to i64
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bhw ; 2 uses
  %i.bhy = add i32 %i.bhq, 2
  %i.bhz = mul i32 %i.bhy, %i.ajz
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bia ; 2 uses
  %i.bic = mul i32 %indvars.iv1736.i, %i.ajz
  %i.bid = sext i32 %i.bic to i64
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bid ; 2 uses
  %i.bif = lshr i32 %i.bhq, 3
  %i.big = lshr i32 %i.bhq, 2
  %i.bih = and i32 %i.big, 1
  %i.bii = add nuw nsw i32 %i.bih, %i.bif
  %i.bij = zext nneg i32 %i.bii to i64
  %.reass1343.i = mul i64 %factor.op.mul1342.i, %i.bij
  %i.bik = getelementptr inbounds nuw i8, ptr %i.aka, i64 %.reass1343.i ; 4 uses
  br i1 %i.akf, label %.preheader1101.lr.ph.i, label %.preheader1104.i

.preheader1101.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  br i1 %i.akg, label %.preheader1101.us.i, label %.preheader1104.thread.i

.preheader1101.us.i:                              ; preds = %.preheader1101.lr.ph.i, %._crit_edge1257.us.i
  %.09231264.us.i = phi i32 [ %i.bmh, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09271263.us.i = phi ptr [ %i.bmc, %._crit_edge1257.us.i ], [ %i.bik, %.preheader1101.lr.ph.i ]
  %.09381262.us.i = phi ptr [ %i.bmg, %._crit_edge1257.us.i ], [ %i.bie, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09411261.us.i = phi ptr [ %i.bmf, %._crit_edge1257.us.i ], [ %i.bib, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09441260.us.i = phi ptr [ %i.bme, %._crit_edge1257.us.i ], [ %i.bhx, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09471259.us.i = phi ptr [ %i.bmd, %._crit_edge1257.us.i ], [ %i.bht, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kb, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.kb ] ; 5 uses
  %.19281255.us.i = phi ptr [ %.09271263.us.i, %.preheader1101.us.i ], [ %i.bmc, %bb.kb ] ; 33 uses
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %.09471259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %.09441260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %.09411261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %.09381262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bip = load float, ptr %i.bil, align 4, !tbaa !39
  store float %i.bip, ptr %.19281255.us.i, align 4, !tbaa !39
  %i.biq = load float, ptr %i.bim, align 4, !tbaa !39
  %i.bir = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 4
  store float %i.biq, ptr %i.bir, align 4, !tbaa !39
  %i.bis = load float, ptr %i.bin, align 4, !tbaa !39
  %i.bit = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 8
  store float %i.bis, ptr %i.bit, align 4, !tbaa !39
  %i.biu = load float, ptr %i.bio, align 4, !tbaa !39
  %i.biv = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 12
  store float %i.biu, ptr %i.biv, align 4, !tbaa !39
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %i.akh ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.akh ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %i.akh ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bio, i64 %i.akh ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 16
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !39
  store float %i.bjb, ptr %i.bja, align 4, !tbaa !39
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !39
  %i.bjd = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 20
  store float %i.bjc, ptr %i.bjd, align 4, !tbaa !39
  %i.bje = load float, ptr %i.biy, align 4, !tbaa !39
  %i.bjf = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 24
  store float %i.bje, ptr %i.bjf, align 4, !tbaa !39
  %i.bjg = load float, ptr %i.biz, align 4, !tbaa !39
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 28
  store float %i.bjg, ptr %i.bjh, align 4, !tbaa !39
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.akh ; 2 uses
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.akh ; 2 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.akh ; 2 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.akh ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 32
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !39
  store float %i.bjn, ptr %i.bjm, align 4, !tbaa !39
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !39
  %i.bjp = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 36
  store float %i.bjo, ptr %i.bjp, align 4, !tbaa !39
  %i.bjq = load float, ptr %i.bjk, align 4, !tbaa !39
  %i.bjr = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 40
  store float %i.bjq, ptr %i.bjr, align 4, !tbaa !39
  %i.bjs = load float, ptr %i.bjl, align 4, !tbaa !39
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 44
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !39
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.akh ; 2 uses
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %i.akh ; 2 uses
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.bjk, i64 %i.akh ; 2 uses
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.akh ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 48
  %i.bjz = load float, ptr %i.bju, align 4, !tbaa !39
  store float %i.bjz, ptr %i.bjy, align 4, !tbaa !39
  %i.bka = load float, ptr %i.bjv, align 4, !tbaa !39
  %i.bkb = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 52
  store float %i.bka, ptr %i.bkb, align 4, !tbaa !39
  %i.bkc = load float, ptr %i.bjw, align 4, !tbaa !39
  %i.bkd = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 56
  store float %i.bkc, ptr %i.bkd, align 4, !tbaa !39
  %i.bke = load float, ptr %i.bjx, align 4, !tbaa !39
  %i.bkf = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 60
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !39
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.akh ; 2 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bjv, i64 %i.akh ; 2 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.akh ; 2 uses
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.akh ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 64
  %i.bkl = load float, ptr %i.bkg, align 4, !tbaa !39
  store float %i.bkl, ptr %i.bkk, align 4, !tbaa !39
  %i.bkm = load float, ptr %i.bkh, align 4, !tbaa !39
  %i.bkn = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 68
  store float %i.bkm, ptr %i.bkn, align 4, !tbaa !39
  %i.bko = load float, ptr %i.bki, align 4, !tbaa !39
  %i.bkp = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 72
  store float %i.bko, ptr %i.bkp, align 4, !tbaa !39
  %i.bkq = load float, ptr %i.bkj, align 4, !tbaa !39
  %i.bkr = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 76
  store float %i.bkq, ptr %i.bkr, align 4, !tbaa !39
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.akh ; 2 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bkh, i64 %i.akh ; 2 uses
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.akh ; 2 uses
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bkj, i64 %i.akh ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 80
  %i.bkx = load float, ptr %i.bks, align 4, !tbaa !39
  store float %i.bkx, ptr %i.bkw, align 4, !tbaa !39
  %i.bky = load float, ptr %i.bkt, align 4, !tbaa !39
  %i.bkz = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 84
  store float %i.bky, ptr %i.bkz, align 4, !tbaa !39
  %i.bla = load float, ptr %i.bku, align 4, !tbaa !39
  %i.blb = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 88
  store float %i.bla, ptr %i.blb, align 4, !tbaa !39
  %i.blc = load float, ptr %i.bkv, align 4, !tbaa !39
  %i.bld = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 92
  store float %i.blc, ptr %i.bld, align 4, !tbaa !39
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.akh ; 2 uses
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.akh ; 2 uses
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %i.akh ; 2 uses
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.akh ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn19Convolution_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.29401318.us.i, i64 %i.akn ; 2 uses
  %i.brw = add nuw nsw i32 %.29251320.us.i, 2     ; 3 uses
  %i.brx = or disjoint i32 %i.brw, 1
  %i.bry = icmp slt i32 %i.brx, %i.cj
  br i1 %i.bry, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !156

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2949.lcssa.i = phi ptr [ %.1948.lcssa.i, %.preheader1103.i ], [ %i.brs, %._crit_edge1313.us.i ] ; 6 uses
  %.2946.lcssa.i = phi ptr [ %.1945.lcssa.i, %.preheader1103.i ], [ %i.brt, %._crit_edge1313.us.i ] ; 6 uses
  %.2943.lcssa.i = phi ptr [ %.1942.lcssa.i, %.preheader1103.i ], [ %i.bru, %._crit_edge1313.us.i ] ; 6 uses
  %.2940.lcssa.i = phi ptr [ %.1939.lcssa.i, %.preheader1103.i ], [ %i.brv, %._crit_edge1313.us.i ] ; 6 uses
  %.6933.lcssa.i = phi ptr [ %.3930.lcssa.i, %.preheader1103.i ], [ %.lcssa658, %._crit_edge1313.us.i ]
  %.2925.lcssa.i = phi i32 [ %.1924.lcssa.i, %.preheader1103.i ], [ %i.brw, %._crit_edge1313.us.i ] ; 2 uses
  %i.brz = icmp sge i32 %.2925.lcssa.i, %i.cj
  %brmerge1469.i = or i1 %i.ako, %i.brz
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i.preheader

.preheader1098.i.preheader:                       ; preds = %.preheader1102.i
  %scevgep740 = getelementptr i8, ptr %.2940.lcssa.i, i64 %i.alk
  %scevgep741 = getelementptr i8, ptr %.2943.lcssa.i, i64 %i.alk
  %scevgep742 = getelementptr i8, ptr %.2946.lcssa.i, i64 %i.alk
  %scevgep743 = getelementptr i8, ptr %.2949.lcssa.i, i64 %i.alk
  br label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1098.i.preheader, %._crit_edge1335.i
  %.39261338.i = phi i32 [ %i.bsw, %._crit_edge1335.i ], [ %.2925.lcssa.i, %.preheader1098.i.preheader ]
  %.99361337.i = phi ptr [ %.lcssa664, %._crit_edge1335.i ], [ %.6933.lcssa.i, %.preheader1098.i.preheader ] ; 9 uses
  br i1 %min.iters.check760, label %scalar.ph759.preheader, label %vector.memcheck738

vector.memcheck738:                               ; preds = %.preheader1098.i
  %scevgep739 = getelementptr i8, ptr %.99361337.i, i64 %i.alj ; 4 uses
  %bound0744 = icmp ult ptr %.99361337.i, %scevgep740
  %bound1745 = icmp ult ptr %.2940.lcssa.i, %scevgep739
  %found.conflict746 = and i1 %bound0744, %bound1745
  %bound0747 = icmp ult ptr %.99361337.i, %scevgep741
  %bound1748 = icmp ult ptr %.2943.lcssa.i, %scevgep739
  %found.conflict749 = and i1 %bound0747, %bound1748
  %conflict.rdx750 = or i1 %found.conflict746, %found.conflict749
  %bound0751 = icmp ult ptr %.99361337.i, %scevgep742
  %bound1752 = icmp ult ptr %.2946.lcssa.i, %scevgep739
  %found.conflict753 = and i1 %bound0751, %bound1752
  %conflict.rdx754 = or i1 %conflict.rdx750, %found.conflict753
  %bound0755 = icmp ult ptr %.99361337.i, %scevgep743
  %bound1756 = icmp ult ptr %.2949.lcssa.i, %scevgep739
  %found.conflict757 = and i1 %bound0755, %bound1756
  %conflict.rdx758 = or i1 %conflict.rdx754, %found.conflict757
  br i1 %conflict.rdx758, label %scalar.ph759.preheader, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck738
  %i.bsa = getelementptr i8, ptr %.99361337.i, i64 %i.alq ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph761
  %index764 = phi i64 [ 0, %vector.ph761 ], [ %index.next771, %vector.body763 ] ; 6 uses
  %i.bsb = shl i64 %index764, 4
  %next.gep765 = getelementptr i8, ptr %.99361337.i, i64 %i.bsb
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %index764
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %index764
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %index764
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %index764
  %wide.load766 = load <8 x float>, ptr %i.bsc, align 4, !tbaa !39, !alias.scope !157
  %wide.load767 = load <8 x float>, ptr %i.bsd, align 4, !tbaa !39, !alias.scope !160
  %wide.load768 = load <8 x float>, ptr %i.bse, align 4, !tbaa !39, !alias.scope !162
  %wide.load769 = load <8 x float>, ptr %i.bsf, align 4, !tbaa !39, !alias.scope !164
  %i.bsg = shufflevector <8 x float> %wide.load766, <8 x float> %wide.load767, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsh = shufflevector <8 x float> %wide.load768, <8 x float> %wide.load769, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec770 = shufflevector <16 x float> %i.bsg, <16 x float> %i.bsh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec770, ptr %next.gep765, align 4, !tbaa !39, !alias.scope !166, !noalias !168
  %index.next771 = add nuw i64 %index764, 8       ; 2 uses
  %i.bsi = icmp eq i64 %index.next771, %n.vec762
  br i1 %i.bsi, label %middle.block772, label %vector.body763, !llvm.loop !169

middle.block772:                                  ; preds = %vector.body763
  br i1 %cmp.n773, label %._crit_edge1335.i, label %scalar.ph759.preheader

scalar.ph759.preheader:                           ; preds = %vector.memcheck738, %.preheader1098.i, %middle.block772
  %indvars.iv1730.i.ph = phi i64 [ 0, %vector.memcheck738 ], [ 0, %.preheader1098.i ], [ %n.vec762, %middle.block772 ] ; 7 uses
  %.109371333.i.ph = phi ptr [ %.99361337.i, %vector.memcheck738 ], [ %.99361337.i, %.preheader1098.i ], [ %i.bsa, %middle.block772 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph759.prol.loopexit, label %scalar.ph759.prol

scalar.ph759.prol:                                ; preds = %scalar.ph759.preheader
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsn = load float, ptr %i.bsj, align 4, !tbaa !39
  store float %i.bsn, ptr %.109371333.i.ph, align 4, !tbaa !39
  %i.bso = load float, ptr %i.bsk, align 4, !tbaa !39
  %i.bsp = getelementptr inbounds nuw i8, ptr %.109371333.i.ph, i64 4
  store float %i.bso, ptr %i.bsp, align 4, !tbaa !39
  %i.bsq = load float, ptr %i.bsl, align 4, !tbaa !39
  %i.bsr = getelementptr inbounds nuw i8, ptr %.109371333.i.ph, i64 8
  store float %i.bsq, ptr %i.bsr, align 4, !tbaa !39
  %i.bss = load float, ptr %i.bsm, align 4, !tbaa !39
  %i.bst = getelementptr inbounds nuw i8, ptr %.109371333.i.ph, i64 12
  store float %i.bss, ptr %i.bst, align 4, !tbaa !39
  %i.bsu = getelementptr inbounds nuw i8, ptr %.109371333.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1731.i.prol = or disjoint i64 %indvars.iv1730.i.ph, 1
  br label %scalar.ph759.prol.loopexit

scalar.ph759.prol.loopexit:                       ; preds = %scalar.ph759.prol, %scalar.ph759.preheader
  %.lcssa1279.unr = phi ptr [ poison, %scalar.ph759.preheader ], [ %i.bsu, %scalar.ph759.prol ]
  %indvars.iv1730.i.unr = phi i64 [ %indvars.iv1730.i.ph, %scalar.ph759.preheader ], [ %indvars.iv.next1731.i.prol, %scalar.ph759.prol ]
  %.109371333.i.unr = phi ptr [ %.109371333.i.ph, %scalar.ph759.preheader ], [ %i.bsu, %scalar.ph759.prol ]
  %i.bsv = icmp eq i64 %indvars.iv1730.i.ph, %i.alr
  br i1 %i.bsv, label %._crit_edge1335.i, label %scalar.ph759

._crit_edge1335.i:                                ; preds = %scalar.ph759.prol.loopexit, %scalar.ph759, %middle.block772
  %.lcssa664 = phi ptr [ %i.bsa, %middle.block772 ], [ %.lcssa1279.unr, %scalar.ph759.prol.loopexit ], [ %i.btu, %scalar.ph759 ]
  %i.bsw = add nuw nsw i32 %.39261338.i, 1        ; 2 uses
  %exitcond1735.not.i = icmp eq i32 %i.bsw, %i.cj
  br i1 %exitcond1735.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !170

scalar.ph759:                                     ; preds = %scalar.ph759.prol.loopexit, %scalar.ph759
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i.1, %scalar.ph759 ], [ %indvars.iv1730.i.unr, %scalar.ph759.prol.loopexit ] ; 6 uses
  %.109371333.i = phi ptr [ %i.btu, %scalar.ph759 ], [ %.109371333.i.unr, %scalar.ph759.prol.loopexit ] ; 9 uses
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %indvars.iv1730.i
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %indvars.iv1730.i
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %indvars.iv1730.i
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %indvars.iv1730.i
  %i.btb = load float, ptr %i.bsx, align 4, !tbaa !39
  store float %i.btb, ptr %.109371333.i, align 4, !tbaa !39
  %i.btc = load float, ptr %i.bsy, align 4, !tbaa !39
  %i.btd = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 4
  store float %i.btc, ptr %i.btd, align 4, !tbaa !39
  %i.bte = load float, ptr %i.bsz, align 4, !tbaa !39
  %i.btf = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 8
  store float %i.bte, ptr %i.btf, align 4, !tbaa !39
  %i.btg = load float, ptr %i.bta, align 4, !tbaa !39
  %i.bth = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 12
  store float %i.btg, ptr %i.bth, align 4, !tbaa !39
  %i.bti = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 16
  %indvars.iv.next1731.i = add nuw nsw i64 %indvars.iv1730.i, 1 ; 4 uses
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btn = load float, ptr %i.btj, align 4, !tbaa !39
  store float %i.btn, ptr %i.bti, align 4, !tbaa !39
  %i.bto = load float, ptr %i.btk, align 4, !tbaa !39
  %i.btp = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 20
  store float %i.bto, ptr %i.btp, align 4, !tbaa !39
  %i.btq = load float, ptr %i.btl, align 4, !tbaa !39
  %i.btr = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 24
  store float %i.btq, ptr %i.btr, align 4, !tbaa !39
  %i.bts = load float, ptr %i.btm, align 4, !tbaa !39
  %i.btt = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 28
  store float %i.bts, ptr %i.btt, align 4, !tbaa !39
  %i.btu = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 32 ; 2 uses
  %indvars.iv.next1731.i.1 = add nuw nsw i64 %indvars.iv1730.i, 2 ; 2 uses
  %exitcond1734.not.i.1 = icmp eq i64 %indvars.iv.next1731.i.1, %wide.trip.count1708.i
  br i1 %exitcond1734.not.i.1, label %._crit_edge1335.i, label %scalar.ph759, !llvm.loop !171

._crit_edge1339.split.i:                          ; preds = %._crit_edge1335.i, %.preheader1102.i, %.preheader1099.lr.ph.i
  %indvars.iv.next1739.i = add nuw nsw i64 %indvars.iv1738.i, 4 ; 3 uses
  %i.btv = icmp slt i64 %indvars.iv.next1739.i, %invariant.op.i
  %indvars.iv.next1690.i = add i32 %indvars.iv1689.i, %i.akv
  %indvars.iv.next1694.i = add i32 %indvars.iv1693.i, %i.akv
  %indvars.iv.next1698.i = add i32 %indvars.iv1697.i, %i.akv
  %indvars.iv.next1702.i = add i32 %indvars.iv1701.i, %i.akv
  %indvars.iv.next1737.i = add i32 %indvars.iv1736.i, 4
  br i1 %i.btv, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %.preheader1097.loopexit.i, !llvm.loop !172

.preheader1089.loopexit.i:                        ; preds = %._crit_edge1402.split.i
  %i.btw = trunc nsw i64 %indvars.iv.next1778.i to i32
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1097.i ], [ %i.btw, %.preheader1089.loopexit.i ] ; 4 uses
  %i.btx = icmp slt i32 %.2.lcssa.i, %i.rh
  br i1 %i.btx, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bty = load ptr, ptr %i.acg, align 8, !tbaa !18 ; 18 uses
  %i.btz = mul i32 %i.aci, %i.cj                  ; 3 uses
  %i.bua = load ptr, ptr %i.ach, align 8, !tbaa !18, !noalias !173
  %i.bub = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.buc = load i64, ptr %i.bub, align 8, !tbaa !20, !noalias !173
  %i.bud = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bue = load i64, ptr %i.bud, align 8, !tbaa !65, !noalias !173
  %factor.op.mul1464.i = mul i64 %i.bue, %i.buc
  %i.buf = icmp sgt i32 %i.cj, 7
  %i.bug = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.buh = sext i32 %i.aci to i64                 ; 43 uses
  %i.bui = shl i32 %i.aci, 3                      ; 2 uses
  %i.buj = sext i32 %i.bui to i64                 ; 3 uses
  %i.buk = shl i32 %i.aci, 2
  %i.bul = sext i32 %i.buk to i64                 ; 3 uses
  %i.bum = shl i32 %i.aci, 1
  %i.bun = sext i32 %i.bum to i64                 ; 2 uses
  %i.buo = icmp slt i32 %i.aci, 1
  %i.bup = add i32 %i.cj, -8                      ; 3 uses
  %i.buq = lshr i32 %i.bup, 1
  %i.bur = and i32 %i.buq, 2147483644
  %narrow1841.i = add nuw i32 %i.bur, 4
  %i.bus = zext i32 %narrow1841.i to i64
  %i.but = mul nsw i64 %i.buj, %i.bus
  %scevgep1780.i = getelementptr i8, ptr %i.bty, i64 %i.but
  %i.buu = mul i32 %i.btz, %.2.lcssa.i
  %i.buv = and i32 %i.bup, -8
  %i.buw = add i32 %i.buv, 8                      ; 4 uses
  %i.bux = add i32 %i.cj, -4
  %i.buy = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1813.i = sext i32 %i.rh to i64
  %i.buz = or disjoint i32 %i.buw, 3
  %i.bva = icmp slt i32 %i.buz, %i.cj
  %wide.trip.count1788.i = zext i32 %i.aci to i64 ; 26 uses
  %i.bvb = shl nuw nsw i64 %wide.trip.count1788.i, 3
  %i.bvc = shl nuw nsw i64 %i.buh, 2              ; 2 uses
  %i.bvd = shl nuw nsw i64 %wide.trip.count1788.i, 2 ; 6 uses
  %i.bve = shl nsw i64 %i.bun, 2
  %i.bvf = shl nuw nsw i64 %wide.trip.count1788.i, 4
  %i.bvg = mul nsw i64 %i.buh, 12                 ; 2 uses
  %i.bvh = shl nsw i64 %i.bul, 2
  %i.bvi = add i32 %i.cj, -4
  %i.bvj = shl nsw i64 %i.buh, 3                  ; 2 uses
  %i.bvk = shl nuw nsw i64 %i.buh, 2              ; 2 uses
  %i.bvl = shl nuw nsw i64 %wide.trip.count1788.i, 5
  %i.bvm = mul nsw i64 %i.buh, 28                 ; 2 uses
  %scevgep1128 = getelementptr i8, ptr %i.bty, i64 %i.bvm
  %i.bvn = mul i32 %.2.lcssa.i, %i.rk
  %i.bvo = mul i32 %i.bvn, %i.ri
  %i.bvp = mul i32 %i.bvo, %i.cj
  %i.bvq = mul i32 %i.rk, %i.ri
  %i.bvr = mul i32 %i.bvq, %i.cj
  %i.bvs = lshr i32 %i.bup, 3
  %i.bvt = zext nneg i32 %i.bvs to i64
  %i.bvu = mul nsw i64 %i.bvt, %i.buj
  %i.bvv = shl nsw i64 %i.bvu, 2                  ; 8 uses
  %i.bvw = shl nuw nsw i64 %wide.trip.count1788.i, 2 ; 8 uses
  %i.bvx = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bvy = getelementptr i8, ptr %i.bvx, i64 %i.bvm
  %scevgep1130 = getelementptr i8, ptr %i.bvy, i64 %i.bvw
  %i.bvz = mul nsw i64 %i.buh, 24                 ; 2 uses
  %scevgep1132 = getelementptr i8, ptr %i.bty, i64 %i.bvz
  %i.bwa = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 %i.bvz
  %scevgep1134 = getelementptr i8, ptr %i.bwb, i64 %i.bvw
  %i.bwc = mul nsw i64 %i.buh, 20                 ; 2 uses
  %scevgep1136 = getelementptr i8, ptr %i.bty, i64 %i.bwc
  %i.bwd = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwe = getelementptr i8, ptr %i.bwd, i64 %i.bwc
  %scevgep1138 = getelementptr i8, ptr %i.bwe, i64 %i.bvw
  %i.bwf = shl nsw i64 %i.buh, 4                  ; 2 uses
  %scevgep1140 = getelementptr i8, ptr %i.bty, i64 %i.bwf
  %i.bwg = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwh = getelementptr i8, ptr %i.bwg, i64 %i.bwf
  %scevgep1142 = getelementptr i8, ptr %i.bwh, i64 %i.bvw
  %i.bwi = mul nsw i64 %i.buh, 12                 ; 2 uses
  %scevgep1144 = getelementptr i8, ptr %i.bty, i64 %i.bwi
  %i.bwj = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwk = getelementptr i8, ptr %i.bwj, i64 %i.bwi
  %scevgep1146 = getelementptr i8, ptr %i.bwk, i64 %i.bvw
  %i.bwl = shl nsw i64 %i.buh, 3                  ; 2 uses
  %scevgep1148 = getelementptr i8, ptr %i.bty, i64 %i.bwl
  %i.bwm = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 %i.bwl
  %scevgep1150 = getelementptr i8, ptr %i.bwn, i64 %i.bvw
  %i.bwo = shl nuw nsw i64 %i.buh, 2              ; 2 uses
  %scevgep1152 = getelementptr i8, ptr %i.bty, i64 %i.bwo
  %i.bwp = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 %i.bwo
  %scevgep1154 = getelementptr i8, ptr %i.bwq, i64 %i.bvw
  %i.bwr = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %scevgep1157 = getelementptr i8, ptr %i.bwr, i64 %i.bvw
  %min.iters.check1199 = icmp ult i32 %i.aci, 16
  %stride.check1166 = icmp slt i32 %i.bui, 0
  %n.vec1201 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bws = shl nuw nsw i64 %n.vec1201, 5
  %cmp.n1216 = icmp eq i64 %n.vec1201, %wide.trip.count1788.i
  %min.iters.check1110 = icmp ult i32 %i.aci, 8
  %n.vec1112 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bwt = shl nuw nsw i64 %n.vec1112, 4
  %cmp.n1123 = icmp eq i64 %n.vec1112, %wide.trip.count1788.i
  %xtraiter1314 = and i64 %wide.trip.count1788.i, 1
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1314, 0
  %i.bwu = add nsw i64 %wide.trip.count1788.i, -1
  %min.iters.check1063 = icmp ult i32 %i.aci, 6
  %n.vec1065 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bwv = shl nuw nsw i64 %n.vec1065, 3
  %cmp.n1078 = icmp eq i64 %n.vec1065, %wide.trip.count1788.i
  %xtraiter1317 = and i64 %wide.trip.count1788.i, 3 ; 2 uses
  %lcmp.mod1318.not = icmp eq i64 %xtraiter1317, 0
  %min.iters.check1024 = icmp ult i32 %i.aci, 8
  %min.iters.check1025 = icmp ult i32 %i.aci, 32
  %i.bww = and i64 %wide.trip.count1788.i, 24
  %n.vec1027 = and i64 %wide.trip.count1788.i, 2147483616 ; 5 uses
  %i.bwx = shl nuw nsw i64 %n.vec1027, 2
  %cmp.n1037 = icmp eq i64 %n.vec1027, %wide.trip.count1788.i
  %min.epilog.iters.check = icmp eq i64 %i.bww, 0
  %n.vec1039 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bwy = shl nuw nsw i64 %n.vec1039, 2
  %cmp.n1044 = icmp eq i64 %n.vec1039, %wide.trip.count1788.i
  %xtraiter1320 = and i64 %wide.trip.count1788.i, 7 ; 2 uses
  %lcmp.mod1321.not = icmp eq i64 %xtraiter1320, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i225

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1777.i = phi i64 [ %i.bgk, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1778.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1748.i = phi i32 [ %i.bgg, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1749.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1744.i = phi i32 [ %i.bge, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1745.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bwz = phi i32 [ %i.bey, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.chb, %._crit_edge1402.split.i ]
  %i.bxa = sext i32 %indvars.iv1744.i to i64
  %i.bxb = shl nsw i64 %i.bxa, 2
  %scevgep1746.i = getelementptr i8, ptr %scevgep1743.i, i64 %i.bxb ; 2 uses
  %i.bxc = sext i32 %indvars.iv1748.i to i64
  %i.bxd = shl nsw i64 %i.bxc, 2
  %scevgep1750.i = getelementptr i8, ptr %scevgep1743.i, i64 %i.bxd ; 2 uses
  %i.bxe = trunc i64 %indvars.iv1777.i to i32     ; 4 uses
  %i.bxf = mul i32 %i.bfb, %i.bxe
  %i.bxg = sext i32 %i.bxf to i64
  %i.bxh = getelementptr inbounds [4 x i8], ptr %i.bfa, i64 %i.bxg ; 2 uses
  %i.bxi = mul i32 %i.bwz, %i.bfb
  %i.bxj = sext i32 %i.bxi to i64
  %i.bxk = getelementptr inbounds [4 x i8], ptr %i.bfa, i64 %i.bxj ; 2 uses
  %i.bxl = lshr i32 %i.bxe, 3
  %i.bxm = lshr i32 %i.bxe, 2
  %i.bxn = and i32 %i.bxm, 1
  %i.bxo = add nuw nsw i32 %i.bxn, %i.bxl
  %i.bxp = lshr i32 %i.bxe, 1
  %i.bxq = and i32 %i.bxp, 1
  %i.bxr = add nuw nsw i32 %i.bxo, %i.bxq
  %i.bxs = zext nneg i32 %i.bxr to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bxs
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bfc, i64 %.reass1406.i ; 4 uses
  br i1 %i.bfh, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.bfi, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08641351.us.i = phi i32 [ %i.bzs, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08681350.us.i = phi ptr [ %i.bzp, %._crit_edge1346.us.i ], [ %i.bxt, %.preheader1093.lr.ph.i ]
  %.08771349.us.i = phi ptr [ %i.bzr, %._crit_edge1346.us.i ], [ %i.bxk, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08801348.us.i = phi ptr [ %i.bzq, %._crit_edge1346.us.i ], [ %i.bxh, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1751.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1752.i, %bb.kd ] ; 3 uses
  %.18691344.us.i = phi ptr [ %.08681350.us.i, %.preheader1093.us.i ], [ %i.bzp, %bb.kd ] ; 17 uses
  %i.bxu = getelementptr inbounds nuw [4 x i8], ptr %.08801348.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr %.08771349.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bxw = load float, ptr %i.bxu, align 4, !tbaa !39
  store float %i.bxw, ptr %.18691344.us.i, align 4, !tbaa !39
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfj
  %i.bxy = load float, ptr %i.bxx, align 4, !tbaa !39
  %i.bxz = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 4
  store float %i.bxy, ptr %i.bxz, align 4, !tbaa !39
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfl
  %i.byb = load float, ptr %i.bya, align 4, !tbaa !39
  %i.byc = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 8
  store float %i.byb, ptr %i.byc, align 4, !tbaa !39
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfn
  %i.bye = load float, ptr %i.byd, align 4, !tbaa !39
  %i.byf = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 12
  store float %i.bye, ptr %i.byf, align 4, !tbaa !39
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfp
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !39
  %i.byi = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 16
  store float %i.byh, ptr %i.byi, align 4, !tbaa !39
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfr
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !39
  %i.byl = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 20
  store float %i.byk, ptr %i.byl, align 4, !tbaa !39
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bft
  %i.byn = load float, ptr %i.bym, align 4, !tbaa !39
  %i.byo = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 24
  store float %i.byn, ptr %i.byo, align 4, !tbaa !39
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfv
  %i.byq = load float, ptr %i.byp, align 4, !tbaa !39
  %i.byr = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 28
  store float %i.byq, ptr %i.byr, align 4, !tbaa !39
  %i.bys = load float, ptr %i.bxv, align 4, !tbaa !39
  %i.byt = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 32
  store float %i.bys, ptr %i.byt, align 4, !tbaa !39
  %i.byu = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfj
  %i.byv = load float, ptr %i.byu, align 4, !tbaa !39
  %i.byw = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 36
  store float %i.byv, ptr %i.byw, align 4, !tbaa !39
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfl
  %i.byy = load float, ptr %i.byx, align 4, !tbaa !39
  %i.byz = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 40
  store float %i.byy, ptr %i.byz, align 4, !tbaa !39
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfn
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !39
  %i.bzc = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 44
  store float %i.bzb, ptr %i.bzc, align 4, !tbaa !39
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfp
  %i.bze = load float, ptr %i.bzd, align 4, !tbaa !39
  %i.bzf = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 48
  store float %i.bze, ptr %i.bzf, align 4, !tbaa !39
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfr
  %i.bzh = load float, ptr %i.bzg, align 4, !tbaa !39
  %i.bzi = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 52
  store float %i.bzh, ptr %i.bzi, align 4, !tbaa !39
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bft
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !39
  %i.bzl = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 56
  store float %i.bzk, ptr %i.bzl, align 4, !tbaa !39
  %i.bzm = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfv
  %i.bzn = load float, ptr %i.bzm, align 4, !tbaa !39
end_hunk_2
begin_hunk_3_@_ZN4ncnn19Convolution_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ql = lshr i32 %i.p, 2
  %i.qm = and i32 %i.ql, 1
  %i.qn = lshr i32 %i.p, 1
  %i.qo = and i32 %i.qn, 1
  %i.qp = and i32 %i.p, 1
  %i.qq = add nuw nsw i32 %i.qp, %i.qk
  %i.qr = add nuw nsw i32 %i.qq, %i.qm
  %i.qs = add nuw nsw i32 %i.qr, %i.qo
  %i.qt = lshr i32 %i.eg, 1
  %i.qu = and i32 %i.qt, 1
  %i.qv = and i32 %i.eg, 1
  %i.qw = add nuw nsw i32 %i.qv, 1
  %i.qx = add nuw nsw i32 %i.qw, %i.qu
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.qj, i32 noundef %i.qs, i32 noundef %i.qx, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.dq:                                            ; preds = %bb.do
  %i.qy = icmp sgt i32 %i.p, 3
  br i1 %i.qy, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.qz = shl nsw i32 %i.ny, 4
  %i.ra = lshr i32 %i.p, 1
  %i.rb = and i32 %i.ra, 1
  %i.rc = and i32 %i.p, 1
  %i.rd = add nuw nsw i32 %i.rc, 1
  %i.re = add nuw nsw i32 %i.rd, %i.rb
  %i.rf = lshr i32 %i.eg, 1
  %i.rg = and i32 %i.rf, 1
  %i.rh = and i32 %i.eg, 1
  %i.ri = add nuw nsw i32 %i.rh, 1
  %i.rj = add nuw nsw i32 %i.ri, %i.rg
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.qz, i32 noundef %i.re, i32 noundef %i.rj, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ds:                                            ; preds = %bb.dq
  %i.rk = icmp sgt i32 %i.p, 1
  br i1 %i.rk, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.rl = shl nsw i32 %i.ny, 3
  %i.rm = and i32 %i.p, 1
  %i.rn = add nuw nsw i32 %i.rm, 1
  %i.ro = lshr i32 %i.eg, 1
  %i.rp = and i32 %i.ro, 1
  %i.rq = and i32 %i.eg, 1
  %i.rr = add nuw nsw i32 %i.rq, 1
  %i.rs = add nuw nsw i32 %i.rr, %i.rp
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.rl, i32 noundef %i.rn, i32 noundef %i.rs, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.du:                                            ; preds = %bb.ds
  %i.rt = shl nsw i32 %i.ny, 2
  %i.ru = lshr i32 %i.eg, 1
  %i.rv = and i32 %i.ru, 1
  %i.rw = and i32 %i.eg, 1
  %i.rx = add nuw nsw i32 %i.rw, 1
  %i.ry = add nuw nsw i32 %i.rx, %i.rv
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.rt, i32 noundef %i.p, i32 noundef %i.ry, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.dv:                                            ; preds = %bb.dn
  %i.rz = icmp sgt i32 %i.eg, 1
  %i.sa = icmp sgt i32 %i.p, 7                    ; 2 uses
  br i1 %i.rz, label %bb.dw, label %bb.ed

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.sa, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.sb = shl nsw i32 %i.ny, 4
  %i.sc = lshr i32 %i.p, 3
  %i.sd = lshr i32 %i.p, 2
  %i.se = and i32 %i.sd, 1
  %i.sf = lshr i32 %i.p, 1
  %i.sg = and i32 %i.sf, 1
  %i.sh = and i32 %i.p, 1
  %i.si = add nuw nsw i32 %i.sh, %i.sc
  %i.sj = add nuw nsw i32 %i.si, %i.se
  %i.sk = add nuw nsw i32 %i.sj, %i.sg
  %i.sl = and i32 %i.eg, 1
  %i.sm = add nuw nsw i32 %i.sl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.sb, i32 noundef %i.sk, i32 noundef %i.sm, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.dy:                                            ; preds = %bb.dw
  %i.sn = icmp sgt i32 %i.p, 3
  br i1 %i.sn, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.so = shl nsw i32 %i.ny, 3
  %i.sp = lshr i32 %i.p, 1
  %i.sq = and i32 %i.sp, 1
  %i.sr = and i32 %i.p, 1
  %i.ss = add nuw nsw i32 %i.sr, 1
  %i.st = add nuw nsw i32 %i.ss, %i.sq
  %i.su = and i32 %i.eg, 1
  %i.sv = add nuw nsw i32 %i.su, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.so, i32 noundef %i.st, i32 noundef %i.sv, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ea:                                            ; preds = %bb.dy
  %i.sw = icmp sgt i32 %i.p, 1
  br i1 %i.sw, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.sx = shl nsw i32 %i.ny, 2
  %i.sy = and i32 %i.p, 1
  %i.sz = add nuw nsw i32 %i.sy, 1
  %i.ta = and i32 %i.eg, 1
  %i.tb = add nuw nsw i32 %i.ta, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.sx, i32 noundef %i.sz, i32 noundef %i.tb, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ec:                                            ; preds = %bb.ea
  %i.tc = shl nsw i32 %i.ny, 1
  %i.td = and i32 %i.eg, 1
  %i.te = add nuw nsw i32 %i.td, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.tc, i32 noundef %i.p, i32 noundef %i.te, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ed:                                            ; preds = %bb.dv
  br i1 %i.sa, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.tf = shl nsw i32 %i.ny, 3
  %i.tg = lshr i32 %i.p, 3
  %i.th = lshr i32 %i.p, 2
  %i.ti = and i32 %i.th, 1
  %i.tj = lshr i32 %i.p, 1
  %i.tk = and i32 %i.tj, 1
  %i.tl = and i32 %i.p, 1
  %i.tm = add nuw nsw i32 %i.tl, %i.tg
  %i.tn = add nuw nsw i32 %i.tm, %i.ti
  %i.to = add nuw nsw i32 %i.tn, %i.tk
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.tf, i32 noundef %i.to, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ef:                                            ; preds = %bb.ed
  %i.tp = icmp sgt i32 %i.p, 3
  br i1 %i.tp, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.tq = shl nsw i32 %i.ny, 2
  %i.tr = lshr i32 %i.p, 1
  %i.ts = and i32 %i.tr, 1
  %i.tt = and i32 %i.p, 1
  %i.tu = add nuw nsw i32 %i.tt, 1
  %i.tv = add nuw nsw i32 %i.tu, %i.ts
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.tq, i32 noundef %i.tv, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.eh:                                            ; preds = %bb.ef
  %i.tw = icmp sgt i32 %i.p, 1
  br i1 %i.tw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.tx = shl nsw i32 %i.ny, 1
  %i.ty = and i32 %i.p, 1
  %i.tz = add nuw nsw i32 %i.ty, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.tx, i32 noundef %i.tz, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

bb.ej:                                            ; preds = %bb.eh
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nx, i32 noundef %i.ny, i32 noundef %i.p, i32 noundef %i.eg, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1105.i

_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i:                ; preds = %bb.dm, %bb.dl, %bb.dj, %bb.dh
  %i.ua = load ptr, ptr %i.nw, align 8, !tbaa !18 ; 9 uses
  %i.ub = mul i32 %i.ny, %i.p                     ; 16 uses
  %i.uc = load ptr, ptr %i.nx, align 8, !tbaa !18, !noalias !567
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !20, !noalias !567
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !65, !noalias !567
  %factor.op.mul.i = mul i64 %i.ug, %i.ue
  %i.uh = icmp sgt i32 %i.ny, 0                   ; 3 uses
  %i.ui = sext i32 %i.ny to i64                   ; 88 uses
  %i.uj = shl i32 %i.ny, 3
  %i.uk = sext i32 %i.uj to i64                   ; 9 uses
  %i.ul = shl i32 %i.ny, 2
  %i.um = sext i32 %i.ul to i64                   ; 9 uses
  %i.un = shl i32 %i.ny, 1
  %i.uo = sext i32 %i.un to i64                   ; 8 uses
  %i.up = icmp slt i32 %i.ny, 1
  %i.uq = add i32 %i.p, -8                        ; 2 uses
  %i.ur = lshr i32 %i.uq, 1
  %i.us = and i32 %i.ur, 2147483644
  %narrow.i = add nuw i32 %i.us, 4
  %i.ut = zext i32 %narrow.i to i64
  %i.uu = mul nsw i64 %i.uk, %i.ut
  %scevgep.i = getelementptr i8, ptr %i.ua, i64 %i.uu ; 8 uses
  %i.uv = shl i32 %i.ub, 3                        ; 8 uses
  %i.uw = shl i32 %i.ub, 1
  %i.ux = mul i32 %i.ub, 3
  %i.uy = shl i32 %i.ub, 2
  %i.uz = mul i32 %i.ub, 5
  %i.va = mul i32 %i.ub, 6
  %i.vb = mul i32 %i.ub, 7
  %i.vc = and i32 %i.uq, -8
  %i.vd = add i32 %i.vc, 8                        ; 4 uses
  %i.ve = add i32 %i.p, -4
  %i.vf = zext nneg i32 %i.eg to i64
  %i.vg = or disjoint i32 %i.vd, 3
  %i.vh = icmp slt i32 %i.vg, %i.p
  %wide.trip.count.i = zext i32 %i.ny to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.ny, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.vi = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %_ZN4ncnn3MatD2Ev.exit1007.i

.preheader1105.loopexit.i:                        ; preds = %._crit_edge1246.split.i
  %i.vj = trunc nuw nsw i64 %indvars.iv.next1686.i to i32
  br label %.preheader1105.i

.preheader1105.i:                                 ; preds = %.preheader1105.loopexit.i, %bb.ej, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.eb, %bb.dz, %bb.dx, %bb.du, %bb.dt, %bb.dr, %bb.dp
  %.0.lcssa.i = phi i32 [ %i.vj, %.preheader1105.loopexit.i ], [ 0, %bb.dr ], [ 0, %bb.du ], [ 0, %bb.dt ], [ 0, %bb.dp ], [ 0, %bb.ee ], [ 0, %bb.ei ], [ 0, %bb.ej ], [ 0, %bb.eg ], [ 0, %bb.dx ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %bb.dz ] ; 7 uses
  %i.vk = or disjoint i32 %.0.lcssa.i, 3          ; 2 uses
  %i.vl = icmp slt i32 %i.vk, %i.eg
  br i1 %i.vl, label %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i, label %.preheader1097.i

_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i:                ; preds = %.preheader1105.i
  %i.vm = load ptr, ptr %i.nw, align 8, !tbaa !18 ; 5 uses
  %i.vn = mul i32 %i.ny, %i.p                     ; 9 uses
  %i.vo = load ptr, ptr %i.nx, align 8, !tbaa !18, !noalias !570
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !20, !noalias !570
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !65, !noalias !570
  %factor.op.mul1342.i = mul i64 %i.vs, %i.vq
  %i.vt = icmp sgt i32 %i.p, 7
  %i.vu = icmp sgt i32 %i.ny, 0                   ; 3 uses
  %i.vv = sext i32 %i.ny to i64                   ; 48 uses
  %i.vw = shl i32 %i.ny, 3
  %i.vx = sext i32 %i.vw to i64                   ; 5 uses
  %i.vy = shl i32 %i.ny, 2
  %i.vz = sext i32 %i.vy to i64                   ; 5 uses
  %i.wa = shl i32 %i.ny, 1
  %i.wb = sext i32 %i.wa to i64                   ; 4 uses
  %i.wc = icmp slt i32 %i.ny, 1
  %i.wd = add i32 %i.p, -8                        ; 2 uses
  %i.we = lshr i32 %i.wd, 1
  %i.wf = and i32 %i.we, 2147483644
  %narrow1839.i = add nuw i32 %i.wf, 4
  %i.wg = zext i32 %narrow1839.i to i64
  %i.wh = mul nsw i64 %i.vx, %i.wg
  %scevgep1688.i = getelementptr i8, ptr %i.vm, i64 %i.wh ; 4 uses
  %i.wi = mul i32 %i.vn, %.0.lcssa.i
  %i.wj = shl i32 %i.vn, 2                        ; 4 uses
  %i.wk = add nuw nsw i32 %.0.lcssa.i, 1
  %i.wl = mul i32 %i.wk, %i.vn
  %i.wm = add nuw nsw i32 %.0.lcssa.i, 2
  %i.wn = mul i32 %i.wm, %i.vn
  %i.wo = mul i32 %i.vk, %i.vn
  %i.wp = and i32 %i.wd, -8
  %i.wq = add i32 %i.wp, 8                        ; 4 uses
  %i.wr = add i32 %i.p, -4
  %i.ws = zext nneg i32 %.0.lcssa.i to i64
  %i.wt = add i32 %.0.lcssa.i, 3
  %i.wu = sext i32 %i.eg to i64
  %i.wv = or disjoint i32 %i.wq, 3
  %i.ww = icmp slt i32 %i.wv, %i.p
  %wide.trip.count1708.i = zext i32 %i.ny to i64  ; 8 uses
  %invariant.op.i = add nsw i64 %i.wu, -3
  %min.iters.check501 = icmp ult i32 %i.ny, 4
  %n.vec503 = and i64 %wide.trip.count1708.i, 2147483644 ; 4 uses
  %i.wx = shl nuw nsw i64 %n.vec503, 4
  %cmp.n518 = icmp eq i64 %n.vec503, %wide.trip.count1708.i
  %min.iters.check484 = icmp ult i32 %i.ny, 4
  %n.vec486 = and i64 %wide.trip.count1708.i, 2147483644 ; 4 uses
  %i.wy = shl nuw nsw i64 %n.vec486, 3
  %cmp.n497 = icmp eq i64 %n.vec486, %wide.trip.count1708.i
  br label %_ZN4ncnn3MatD2Ev.exit1006.i

_ZN4ncnn3MatD2Ev.exit1007.i:                      ; preds = %._crit_edge1246.split.i, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i
  %indvars.iv1685.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1686.i, %._crit_edge1246.split.i ] ; 3 uses
  %indvars.iv1646.i = phi i32 [ %i.vb, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1647.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1642.i = phi i32 [ %i.va, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1643.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1638.i = phi i32 [ %i.uz, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1639.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1634.i = phi i32 [ %i.uy, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1635.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1630.i = phi i32 [ %i.ux, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1631.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1626.i = phi i32 [ %i.uw, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1627.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv1622.i = phi i32 [ %i.ub, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next1623.i, %._crit_edge1246.split.i ] ; 2 uses
  %indvars.iv.i102 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next.i103, %._crit_edge1246.split.i ] ; 2 uses
  %i.wz = sext i32 %indvars.iv.i102 to i64
  %i.xa = shl nsw i64 %i.wz, 2
  %scevgep1620.i = getelementptr i8, ptr %scevgep.i, i64 %i.xa ; 2 uses
  %i.xb = sext i32 %indvars.iv1622.i to i64
  %i.xc = shl nsw i64 %i.xb, 2
  %scevgep1624.i = getelementptr i8, ptr %scevgep.i, i64 %i.xc ; 2 uses
  %i.xd = sext i32 %indvars.iv1626.i to i64
  %i.xe = shl nsw i64 %i.xd, 2
  %scevgep1628.i = getelementptr i8, ptr %scevgep.i, i64 %i.xe ; 2 uses
  %i.xf = sext i32 %indvars.iv1630.i to i64
  %i.xg = shl nsw i64 %i.xf, 2
  %scevgep1632.i = getelementptr i8, ptr %scevgep.i, i64 %i.xg ; 2 uses
  %i.xh = sext i32 %indvars.iv1634.i to i64
  %i.xi = shl nsw i64 %i.xh, 2
  %scevgep1636.i = getelementptr i8, ptr %scevgep.i, i64 %i.xi ; 2 uses
  %i.xj = sext i32 %indvars.iv1638.i to i64
  %i.xk = shl nsw i64 %i.xj, 2
  %scevgep1640.i = getelementptr i8, ptr %scevgep.i, i64 %i.xk ; 2 uses
  %i.xl = sext i32 %indvars.iv1642.i to i64
  %i.xm = shl nsw i64 %i.xl, 2
  %scevgep1644.i = getelementptr i8, ptr %scevgep.i, i64 %i.xm ; 2 uses
  %i.xn = sext i32 %indvars.iv1646.i to i64
  %i.xo = shl nsw i64 %i.xn, 2
  %scevgep1648.i = getelementptr i8, ptr %scevgep.i, i64 %i.xo ; 2 uses
  %i.xp = trunc i64 %indvars.iv1685.i to i32      ; 8 uses
  %i.xq = mul i32 %i.ub, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xr ; 2 uses
  %i.xt = or disjoint i32 %i.xp, 1
  %i.xu = mul i32 %i.xt, %i.ub
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xv ; 2 uses
  %i.xx = or disjoint i32 %i.xp, 2
  %i.xy = mul i32 %i.xx, %i.ub
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.xz ; 2 uses
  %i.yb = or disjoint i32 %i.xp, 3
  %i.yc = mul i32 %i.yb, %i.ub
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.yd ; 2 uses
  %i.yf = or disjoint i32 %i.xp, 4
  %i.yg = mul i32 %i.yf, %i.ub
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.yh ; 2 uses
  %i.yj = or disjoint i32 %i.xp, 5
  %i.yk = mul i32 %i.yj, %i.ub
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.yl ; 2 uses
  %i.yn = or disjoint i32 %i.xp, 6
  %i.yo = mul i32 %i.yn, %i.ub
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.yp ; 2 uses
  %i.yr = or disjoint i32 %i.xp, 7
  %i.ys = mul i32 %i.yr, %i.ub
  %i.yt = sext i32 %i.ys to i64
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.ua, i64 %i.yt ; 2 uses
  %i.yv = lshr exact i64 %indvars.iv1685.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.yv
  %i.yw = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.reass.i ; 4 uses
  br i1 %i.oa, label %.preheader1109.lr.ph.i, label %.preheader1112.i

.preheader1109.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1007.i
  br i1 %i.uh, label %.preheader1109.us.i, label %.preheader1112.thread.i

.preheader1109.us.i:                              ; preds = %.preheader1109.lr.ph.i, %._crit_edge.us.i
  %.08391134.us.i = phi ptr [ %i.agt, %._crit_edge.us.i ], [ %i.xs, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08421133.us.i = phi ptr [ %i.agu, %._crit_edge.us.i ], [ %i.xw, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08501132.us.i = phi ptr [ %i.agv, %._crit_edge.us.i ], [ %i.ya, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08531131.us.i = phi ptr [ %i.agw, %._crit_edge.us.i ], [ %i.ye, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08571130.us.i = phi ptr [ %i.agx, %._crit_edge.us.i ], [ %i.yi, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08601129.us.i = phi ptr [ %i.agy, %._crit_edge.us.i ], [ %i.ym, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08831128.us.i = phi ptr [ %i.agz, %._crit_edge.us.i ], [ %i.yq, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08861127.us.i = phi ptr [ %i.aha, %._crit_edge.us.i ], [ %i.yu, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08891126.us.i = phi ptr [ %i.ags, %._crit_edge.us.i ], [ %i.yw, %.preheader1109.lr.ph.i ]
  %.09001125.us.i = phi i32 [ %i.ahb, %._crit_edge.us.i ], [ 0, %.preheader1109.lr.ph.i ]
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.preheader1109.us.i
  %indvars.iv1649.i = phi i64 [ 0, %.preheader1109.us.i ], [ %indvars.iv.next1650.i, %bb.ek ] ; 9 uses
  %.18901124.us.i = phi ptr [ %.08891126.us.i, %.preheader1109.us.i ], [ %i.ags, %bb.ek ] ; 5 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.08421133.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.08531131.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.08601129.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.08831128.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %.08861127.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zf = load i32, ptr %i.yx, align 4, !tbaa !39
  %i.zg = load i32, ptr %i.yy, align 4, !tbaa !39
  %i.zh = load i32, ptr %i.yz, align 4, !tbaa !39
  %i.zi = load i32, ptr %i.za, align 4, !tbaa !39
  %i.zj = load i32, ptr %i.zb, align 4, !tbaa !39
  %i.zk = load i32, ptr %i.zc, align 4, !tbaa !39
  %i.zl = load i32, ptr %i.zd, align 4, !tbaa !39
  %i.zm = load i32, ptr %i.ze, align 4, !tbaa !39
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %i.ui ; 2 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %i.ui ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.ui ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.ui ; 2 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.ui ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zc, i64 %i.ui ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zd, i64 %i.ui ; 2 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %i.ui ; 2 uses
  %i.zv = load i32, ptr %i.zn, align 4, !tbaa !39
  %i.zw = load i32, ptr %i.zo, align 4, !tbaa !39
  %i.zx = load i32, ptr %i.zp, align 4, !tbaa !39
  %i.zy = load i32, ptr %i.zq, align 4, !tbaa !39
  %i.zz = load i32, ptr %i.zr, align 4, !tbaa !39
  %i.aaa = load i32, ptr %i.zs, align 4, !tbaa !39
  %i.aab = load i32, ptr %i.zt, align 4, !tbaa !39
  %i.aac = load i32, ptr %i.zu, align 4, !tbaa !39
  %i.aad = insertelement <16 x i32> poison, i32 %i.zf, i64 0
  %i.aae = insertelement <16 x i32> %i.aad, i32 %i.zg, i64 1
  %i.aaf = insertelement <16 x i32> %i.aae, i32 %i.zh, i64 2
  %i.aag = insertelement <16 x i32> %i.aaf, i32 %i.zi, i64 3
  %i.aah = insertelement <16 x i32> %i.aag, i32 %i.zj, i64 4
  %i.aai = insertelement <16 x i32> %i.aah, i32 %i.zk, i64 5
  %i.aaj = insertelement <16 x i32> %i.aai, i32 %i.zl, i64 6
  %i.aak = insertelement <16 x i32> %i.aaj, i32 %i.zm, i64 7
  %i.aal = insertelement <16 x i32> %i.aak, i32 %i.zv, i64 8
  %i.aam = insertelement <16 x i32> %i.aal, i32 %i.zw, i64 9
  %i.aan = insertelement <16 x i32> %i.aam, i32 %i.zx, i64 10
  %i.aao = insertelement <16 x i32> %i.aan, i32 %i.zy, i64 11
  %i.aap = insertelement <16 x i32> %i.aao, i32 %i.zz, i64 12
  %i.aaq = insertelement <16 x i32> %i.aap, i32 %i.aaa, i64 13
  %i.aar = insertelement <16 x i32> %i.aaq, i32 %i.aab, i64 14
  %i.aas = insertelement <16 x i32> %i.aar, i32 %i.aac, i64 15
  %i.aat = lshr <16 x i32> %i.aas, splat (i32 16)
  %i.aau = trunc nuw <16 x i32> %i.aat to <16 x i16>
  store <16 x i16> %i.aau, ptr %.18901124.us.i, align 2, !tbaa !573
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.ui ; 2 uses
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.ui ; 2 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %i.ui ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zq, i64 %i.ui ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %i.ui ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.zs, i64 %i.ui ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.ui ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.ui ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 32
  %i.abe = load i32, ptr %i.aav, align 4, !tbaa !39
  %i.abf = load i32, ptr %i.aaw, align 4, !tbaa !39
  %i.abg = load i32, ptr %i.aax, align 4, !tbaa !39
  %i.abh = load i32, ptr %i.aay, align 4, !tbaa !39
  %i.abi = load i32, ptr %i.aaz, align 4, !tbaa !39
  %i.abj = load i32, ptr %i.aba, align 4, !tbaa !39
  %i.abk = load i32, ptr %i.abb, align 4, !tbaa !39
  %i.abl = load i32, ptr %i.abc, align 4, !tbaa !39
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %i.ui ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.ui ; 2 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aax, i64 %i.ui ; 2 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.ui ; 2 uses
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.ui ; 2 uses
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.aba, i64 %i.ui ; 2 uses
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.ui ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.ui ; 2 uses
  %i.abu = load i32, ptr %i.abm, align 4, !tbaa !39
  %i.abv = load i32, ptr %i.abn, align 4, !tbaa !39
  %i.abw = load i32, ptr %i.abo, align 4, !tbaa !39
  %i.abx = load i32, ptr %i.abp, align 4, !tbaa !39
  %i.aby = load i32, ptr %i.abq, align 4, !tbaa !39
  %i.abz = load i32, ptr %i.abr, align 4, !tbaa !39
  %i.aca = load i32, ptr %i.abs, align 4, !tbaa !39
  %i.acb = load i32, ptr %i.abt, align 4, !tbaa !39
  %i.acc = insertelement <16 x i32> poison, i32 %i.abe, i64 0
  %i.acd = insertelement <16 x i32> %i.acc, i32 %i.abf, i64 1
  %i.ace = insertelement <16 x i32> %i.acd, i32 %i.abg, i64 2
  %i.acf = insertelement <16 x i32> %i.ace, i32 %i.abh, i64 3
  %i.acg = insertelement <16 x i32> %i.acf, i32 %i.abi, i64 4
  %i.ach = insertelement <16 x i32> %i.acg, i32 %i.abj, i64 5
  %i.aci = insertelement <16 x i32> %i.ach, i32 %i.abk, i64 6
  %i.acj = insertelement <16 x i32> %i.aci, i32 %i.abl, i64 7
end_hunk_3
begin_hunk_4_@_ZN4ncnn19Convolution_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.aoh = icmp slt i32 %i.aog, %i.p
  br i1 %i.aoh, label %.preheader1107.us.i, label %.preheader1110.i, !llvm.loop !580

.preheader1110.i:                                 ; preds = %._crit_edge.us1230.i, %.preheader1111.i
  %.2902.lcssa.i = phi i32 [ %.1901.lcssa.i, %.preheader1111.i ], [ %i.aof, %._crit_edge.us1230.i ] ; 2 uses
  %.6895.lcssa.i = phi ptr [ %.3892.lcssa.i, %.preheader1111.i ], [ %i.anw, %._crit_edge.us1230.i ]
  %.2888.lcssa.i = phi ptr [ %.1887.lcssa.i, %.preheader1111.i ], [ %i.aoe, %._crit_edge.us1230.i ] ; 2 uses
  %.2885.lcssa.i = phi ptr [ %.1884.lcssa.i, %.preheader1111.i ], [ %i.aod, %._crit_edge.us1230.i ] ; 2 uses
  %.2862.lcssa.i = phi ptr [ %.1861.lcssa.i, %.preheader1111.i ], [ %i.aoc, %._crit_edge.us1230.i ] ; 2 uses
  %.2859.lcssa.i = phi ptr [ %.1858.lcssa.i, %.preheader1111.i ], [ %i.aob, %._crit_edge.us1230.i ] ; 2 uses
  %.2855.lcssa.i = phi ptr [ %.1854.lcssa.i, %.preheader1111.i ], [ %i.aoa, %._crit_edge.us1230.i ] ; 2 uses
  %.2852.lcssa.i = phi ptr [ %.1851.lcssa.i, %.preheader1111.i ], [ %i.anz, %._crit_edge.us1230.i ] ; 2 uses
  %.2844.lcssa.i = phi ptr [ %.1843.lcssa.i, %.preheader1111.i ], [ %i.any, %._crit_edge.us1230.i ] ; 2 uses
  %.2841.lcssa.i = phi ptr [ %.1840.lcssa.i, %.preheader1111.i ], [ %i.anx, %._crit_edge.us1230.i ] ; 2 uses
  %i.aoi = icmp sge i32 %.2902.lcssa.i, %i.p
  %brmerge.i = or i1 %i.up, %i.aoi
  br i1 %brmerge.i, label %._crit_edge1246.split.i, label %.preheader1106.i

.preheader1106.i:                                 ; preds = %.preheader1110.i, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa474, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1110.i ] ; 3 uses
  %.39031244.i = phi i32 [ %i.apk, %._crit_edge.i ], [ %.2902.lcssa.i, %.preheader1110.i ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader1106.i
  %i.aoj = getelementptr i8, ptr %.98981245.i, i64 %i.vi ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aok = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.aok
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.2844.lcssa.i, i64 %index
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.2855.lcssa.i, i64 %index
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %.2862.lcssa.i, i64 %index
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.aol, align 4, !tbaa !39
  %i.aot = lshr <4 x i32> %wide.load, splat (i32 16)
  %wide.load475 = load <4 x i32>, ptr %i.aom, align 4, !tbaa !39
  %i.aou = lshr <4 x i32> %wide.load475, splat (i32 16)
  %wide.load476 = load <4 x i32>, ptr %i.aon, align 4, !tbaa !39
  %i.aov = lshr <4 x i32> %wide.load476, splat (i32 16)
  %wide.load477 = load <4 x i32>, ptr %i.aoo, align 4, !tbaa !39
  %i.aow = lshr <4 x i32> %wide.load477, splat (i32 16)
  %wide.load478 = load <4 x i32>, ptr %i.aop, align 4, !tbaa !39
  %i.aox = lshr <4 x i32> %wide.load478, splat (i32 16)
  %wide.load479 = load <4 x i32>, ptr %i.aoq, align 4, !tbaa !39
  %i.aoy = lshr <4 x i32> %wide.load479, splat (i32 16)
  %wide.load480 = load <4 x i32>, ptr %i.aor, align 4, !tbaa !39
  %i.aoz = lshr <4 x i32> %wide.load480, splat (i32 16)
  %wide.load481 = load <4 x i32>, ptr %i.aos, align 4, !tbaa !39
  %i.apa = lshr <4 x i32> %wide.load481, splat (i32 16)
  %i.apb = shufflevector <4 x i32> %i.aot, <4 x i32> %i.aou, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apc = shufflevector <4 x i32> %i.aov, <4 x i32> %i.aow, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apd = shufflevector <4 x i32> %i.aox, <4 x i32> %i.aoy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ape = shufflevector <4 x i32> %i.aoz, <4 x i32> %i.apa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.apf = shufflevector <8 x i32> %i.apb, <8 x i32> %i.apc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.apg = trunc nuw <16 x i32> %i.apf to <16 x i16>
  %i.aph = shufflevector <8 x i32> %i.apd, <8 x i32> %i.ape, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.api = trunc nuw <16 x i32> %i.aph to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.apg, <16 x i16> %i.api, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !573
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.apj = icmp eq i64 %index.next, %n.vec
  br i1 %i.apj, label %middle.block, label %vector.body, !llvm.loop !581

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader1106.i, %middle.block
  %indvars.iv1679.i.ph = phi i64 [ 0, %.preheader1106.i ], [ %n.vec, %middle.block ]
  %.108991243.i.ph = phi ptr [ %.98981245.i, %.preheader1106.i ], [ %i.aoj, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa474 = phi ptr [ %i.aoj, %middle.block ], [ %i.aqy, %scalar.ph ]
  %i.apk = add nuw nsw i32 %.39031244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.apk, %i.p
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !582

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.aqy, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.2844.lcssa.i, i64 %indvars.iv1679.i
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.2855.lcssa.i, i64 %indvars.iv1679.i
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.2862.lcssa.i, i64 %indvars.iv1679.i
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %indvars.iv1679.i
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %indvars.iv1679.i
  %i.apt = load i32, ptr %i.apl, align 4, !tbaa !39
  %i.apu = lshr i32 %i.apt, 16
  %i.apv = trunc nuw i32 %i.apu to i16
  store i16 %i.apv, ptr %.108991243.i, align 2, !tbaa !573
  %i.apw = load i32, ptr %i.apm, align 4, !tbaa !39
  %i.apx = lshr i32 %i.apw, 16
  %i.apy = trunc nuw i32 %i.apx to i16
  %i.apz = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 2
  store i16 %i.apy, ptr %i.apz, align 2, !tbaa !573
  %i.aqa = load i32, ptr %i.apn, align 4, !tbaa !39
  %i.aqb = lshr i32 %i.aqa, 16
  %i.aqc = trunc nuw i32 %i.aqb to i16
  %i.aqd = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 4
  store i16 %i.aqc, ptr %i.aqd, align 2, !tbaa !573
  %i.aqe = load i32, ptr %i.apo, align 4, !tbaa !39
  %i.aqf = lshr i32 %i.aqe, 16
  %i.aqg = trunc nuw i32 %i.aqf to i16
  %i.aqh = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 6
  store i16 %i.aqg, ptr %i.aqh, align 2, !tbaa !573
  %i.aqi = load i32, ptr %i.app, align 4, !tbaa !39
  %i.aqj = lshr i32 %i.aqi, 16
  %i.aqk = trunc nuw i32 %i.aqj to i16
  %i.aql = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 8
  store i16 %i.aqk, ptr %i.aql, align 2, !tbaa !573
  %i.aqm = load i32, ptr %i.apq, align 4, !tbaa !39
  %i.aqn = lshr i32 %i.aqm, 16
  %i.aqo = trunc nuw i32 %i.aqn to i16
  %i.aqp = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 10
  store i16 %i.aqo, ptr %i.aqp, align 2, !tbaa !573
  %i.aqq = load i32, ptr %i.apr, align 4, !tbaa !39
  %i.aqr = lshr i32 %i.aqq, 16
  %i.aqs = trunc nuw i32 %i.aqr to i16
  %i.aqt = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 12
  store i16 %i.aqs, ptr %i.aqt, align 2, !tbaa !573
  %i.aqu = load i32, ptr %i.aps, align 4, !tbaa !39
  %i.aqv = lshr i32 %i.aqu, 16
  %i.aqw = trunc nuw i32 %i.aqv to i16
  %i.aqx = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 14
  store i16 %i.aqw, ptr %i.aqx, align 2, !tbaa !573
  %i.aqy = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 16 ; 2 uses
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1 ; 2 uses
  %exitcond1683.not.i = icmp eq i64 %indvars.iv.next1680.i, %wide.trip.count.i
  br i1 %exitcond1683.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !583

._crit_edge1246.split.i:                          ; preds = %._crit_edge.i, %.preheader1110.i, %.preheader1107.lr.ph.i
  %indvars.iv.next1686.i = add nuw nsw i64 %indvars.iv1685.i, 8 ; 3 uses
  %i.aqz = or disjoint i64 %indvars.iv.next1686.i, 7
  %i.ara = icmp samesign ult i64 %i.aqz, %i.vf
  %indvars.iv.next.i103 = add i32 %indvars.iv.i102, %i.uv
  %indvars.iv.next1623.i = add i32 %indvars.iv1622.i, %i.uv
  %indvars.iv.next1627.i = add i32 %indvars.iv1626.i, %i.uv
  %indvars.iv.next1631.i = add i32 %indvars.iv1630.i, %i.uv
  %indvars.iv.next1635.i = add i32 %indvars.iv1634.i, %i.uv
  %indvars.iv.next1639.i = add i32 %indvars.iv1638.i, %i.uv
  %indvars.iv.next1643.i = add i32 %indvars.iv1642.i, %i.uv
  %indvars.iv.next1647.i = add i32 %indvars.iv1646.i, %i.uv
  br i1 %i.ara, label %_ZN4ncnn3MatD2Ev.exit1007.i, label %.preheader1105.loopexit.i, !llvm.loop !584

.preheader1097.loopexit.i:                        ; preds = %._crit_edge1339.split.i
  %i.arb = trunc nuw nsw i64 %indvars.iv.next1739.i to i32
  br label %.preheader1097.i

.preheader1097.i:                                 ; preds = %.preheader1097.loopexit.i, %.preheader1105.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1105.i ], [ %i.arb, %.preheader1097.loopexit.i ] ; 4 uses
  %i.arc = or disjoint i32 %.1.lcssa.i, 1         ; 3 uses
  %i.ard = icmp slt i32 %i.arc, %i.eg
  br i1 %i.ard, label %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i, label %.preheader1089.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %.preheader1097.i
  %i.are = load ptr, ptr %i.nw, align 8, !tbaa !18 ; 3 uses
  %i.arf = mul i32 %i.ny, %i.p                    ; 5 uses
  %i.arg = load ptr, ptr %i.nx, align 8, !tbaa !18, !noalias !585
  %i.arh = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ari = load i64, ptr %i.arh, align 8, !tbaa !20, !noalias !585
  %i.arj = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !65, !noalias !585
  %factor.op.mul1405.i = mul i64 %i.ark, %i.ari
  %i.arl = icmp sgt i32 %i.p, 7
  %i.arm = icmp sgt i32 %i.ny, 0                  ; 3 uses
  %i.arn = sext i32 %i.ny to i64                  ; 10 uses
  %i.aro = shl i32 %i.ny, 1
  %i.arp = sext i32 %i.aro to i64                 ; 8 uses
  %i.arq = mul nsw i32 %i.ny, 3
  %i.arr = sext i32 %i.arq to i64                 ; 6 uses
  %i.ars = shl i32 %i.ny, 2
  %i.art = sext i32 %i.ars to i64                 ; 5 uses
  %i.aru = mul nsw i32 %i.ny, 5
  %i.arv = sext i32 %i.aru to i64                 ; 2 uses
  %i.arw = mul nsw i32 %i.ny, 6
  %i.arx = sext i32 %i.arw to i64                 ; 2 uses
  %i.ary = mul nsw i32 %i.ny, 7
  %i.arz = sext i32 %i.ary to i64                 ; 2 uses
  %i.asa = shl i32 %i.ny, 3
  %i.asb = sext i32 %i.asa to i64                 ; 3 uses
  %i.asc = icmp slt i32 %i.ny, 1
  %i.asd = add i32 %i.p, -8                       ; 2 uses
  %i.ase = lshr i32 %i.asd, 1
  %i.asf = and i32 %i.ase, 2147483644
  %narrow1840.i = add nuw i32 %i.asf, 4
  %i.asg = zext i32 %narrow1840.i to i64
  %i.ash = mul nsw i64 %i.asb, %i.asg
  %scevgep1743.i = getelementptr i8, ptr %i.are, i64 %i.ash ; 2 uses
  %i.asi = mul i32 %i.arf, %.1.lcssa.i
  %i.asj = shl i32 %i.arf, 1                      ; 2 uses
  %i.ask = mul i32 %i.arc, %i.arf
  %i.asl = and i32 %i.asd, -8
  %i.asm = add i32 %i.asl, 8                      ; 4 uses
  %i.asn = add i32 %i.p, -4
  %i.aso = zext nneg i32 %.1.lcssa.i to i64
  %i.asp = sext i32 %i.eg to i64
  %i.asq = or disjoint i32 %i.asm, 3
  %i.asr = icmp slt i32 %i.asq, %i.p
  %wide.trip.count1754.i = zext i32 %i.ny to i64  ; 10 uses
  %min.iters.check554 = icmp ult i32 %i.ny, 4
  %n.vec556 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.ass = shl nuw nsw i64 %n.vec556, 4
  %cmp.n571 = icmp eq i64 %n.vec556, %wide.trip.count1754.i
  %min.iters.check537 = icmp ult i32 %i.ny, 4
  %n.vec539 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.ast = shl nuw nsw i64 %n.vec539, 3
  %cmp.n550 = icmp eq i64 %n.vec539, %wide.trip.count1754.i
  %min.iters.check522 = icmp ult i32 %i.ny, 4
  %n.vec524 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.asu = shl nuw nsw i64 %n.vec524, 2
  %cmp.n533 = icmp eq i64 %n.vec524, %wide.trip.count1754.i
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

_ZN4ncnn3MatD2Ev.exit1006.i:                      ; preds = %._crit_edge1339.split.i, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i
  %indvars.iv1738.i = phi i64 [ %i.ws, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1739.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1736.i = phi i32 [ %i.wt, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1737.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1701.i = phi i32 [ %i.wo, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1702.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1697.i = phi i32 [ %i.wn, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1698.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1693.i = phi i32 [ %i.wl, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1694.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1689.i = phi i32 [ %i.wi, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1690.i, %._crit_edge1339.split.i ] ; 2 uses
  %i.asv = sext i32 %indvars.iv1689.i to i64
  %i.asw = shl nsw i64 %i.asv, 2
  %scevgep1691.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.asw ; 2 uses
  %i.asx = sext i32 %indvars.iv1693.i to i64
  %i.asy = shl nsw i64 %i.asx, 2
  %scevgep1695.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.asy ; 2 uses
  %i.asz = sext i32 %indvars.iv1697.i to i64
  %i.ata = shl nsw i64 %i.asz, 2
  %scevgep1699.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.ata ; 2 uses
  %i.atb = sext i32 %indvars.iv1701.i to i64
  %i.atc = shl nsw i64 %i.atb, 2
  %scevgep1703.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.atc ; 2 uses
  %i.atd = trunc nuw i64 %indvars.iv1738.i to i32 ; 5 uses
  %i.ate = mul i32 %i.vn, %i.atd
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.atf ; 2 uses
  %i.ath = add i32 %i.atd, 1
  %i.ati = mul i32 %i.ath, %i.vn
  %i.atj = sext i32 %i.ati to i64
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.atj ; 2 uses
  %i.atl = add i32 %i.atd, 2
  %i.atm = mul i32 %i.atl, %i.vn
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.atn ; 2 uses
  %i.atp = mul i32 %indvars.iv1736.i, %i.vn
  %i.atq = sext i32 %i.atp to i64
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.vm, i64 %i.atq ; 2 uses
  %i.ats = lshr i32 %i.atd, 3
  %i.att = lshr i32 %i.atd, 2
  %i.atu = and i32 %i.att, 1
  %i.atv = add nuw nsw i32 %i.atu, %i.ats
  %i.atw = zext nneg i32 %i.atv to i64
  %.reass1343.i = mul i64 %factor.op.mul1342.i, %i.atw
  %i.atx = getelementptr inbounds nuw i8, ptr %i.vo, i64 %.reass1343.i ; 4 uses
  br i1 %i.vt, label %.preheader1101.lr.ph.i, label %.preheader1104.i

.preheader1101.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  br i1 %i.vu, label %.preheader1101.us.i, label %.preheader1104.thread.i

.preheader1101.us.i:                              ; preds = %.preheader1101.lr.ph.i, %._crit_edge1257.us.i
  %.09231264.us.i = phi i32 [ %i.bag, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09271263.us.i = phi ptr [ %i.bab, %._crit_edge1257.us.i ], [ %i.atx, %.preheader1101.lr.ph.i ]
  %.09381262.us.i = phi ptr [ %i.baf, %._crit_edge1257.us.i ], [ %i.atr, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09411261.us.i = phi ptr [ %i.bae, %._crit_edge1257.us.i ], [ %i.ato, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09441260.us.i = phi ptr [ %i.bad, %._crit_edge1257.us.i ], [ %i.atk, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09471259.us.i = phi ptr [ %i.bac, %._crit_edge1257.us.i ], [ %i.atg, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.en ] ; 5 uses
  %.19281255.us.i = phi ptr [ %.09271263.us.i, %.preheader1101.us.i ], [ %i.bab, %bb.en ] ; 33 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.09471259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.09441260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.09411261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.09381262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.auc = load i32, ptr %i.aty, align 4, !tbaa !39
  %i.aud = lshr i32 %i.auc, 16
  %i.aue = trunc nuw i32 %i.aud to i16
  store i16 %i.aue, ptr %.19281255.us.i, align 2, !tbaa !573
  %i.auf = load i32, ptr %i.atz, align 4, !tbaa !39
  %i.aug = lshr i32 %i.auf, 16
  %i.auh = trunc nuw i32 %i.aug to i16
  %i.aui = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 2
  store i16 %i.auh, ptr %i.aui, align 2, !tbaa !573
  %i.auj = load i32, ptr %i.aua, align 4, !tbaa !39
  %i.auk = lshr i32 %i.auj, 16
  %i.aul = trunc nuw i32 %i.auk to i16
  %i.aum = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 4
  store i16 %i.aul, ptr %i.aum, align 2, !tbaa !573
  %i.aun = load i32, ptr %i.aub, align 4, !tbaa !39
  %i.auo = lshr i32 %i.aun, 16
  %i.aup = trunc nuw i32 %i.auo to i16
  %i.auq = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 6
  store i16 %i.aup, ptr %i.auq, align 2, !tbaa !573
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %i.vv ; 2 uses
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.atz, i64 %i.vv ; 2 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %i.vv ; 2 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %i.vv ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 8
  %i.auw = load i32, ptr %i.aur, align 4, !tbaa !39
  %i.aux = lshr i32 %i.auw, 16
  %i.auy = trunc nuw i32 %i.aux to i16
  store i16 %i.auy, ptr %i.auv, align 2, !tbaa !573
  %i.auz = load i32, ptr %i.aus, align 4, !tbaa !39
  %i.ava = lshr i32 %i.auz, 16
  %i.avb = trunc nuw i32 %i.ava to i16
  %i.avc = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 10
  store i16 %i.avb, ptr %i.avc, align 2, !tbaa !573
  %i.avd = load i32, ptr %i.aut, align 4, !tbaa !39
  %i.ave = lshr i32 %i.avd, 16
  %i.avf = trunc nuw i32 %i.ave to i16
  %i.avg = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 12
  store i16 %i.avf, ptr %i.avg, align 2, !tbaa !573
  %i.avh = load i32, ptr %i.auu, align 4, !tbaa !39
  %i.avi = lshr i32 %i.avh, 16
  %i.avj = trunc nuw i32 %i.avi to i16
  %i.avk = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 14
  store i16 %i.avj, ptr %i.avk, align 2, !tbaa !573
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.vv ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %i.vv ; 2 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.vv ; 2 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.vv ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 16
  %i.avq = load i32, ptr %i.avl, align 4, !tbaa !39
  %i.avr = lshr i32 %i.avq, 16
  %i.avs = trunc nuw i32 %i.avr to i16
  store i16 %i.avs, ptr %i.avp, align 2, !tbaa !573
  %i.avt = load i32, ptr %i.avm, align 4, !tbaa !39
  %i.avu = lshr i32 %i.avt, 16
  %i.avv = trunc nuw i32 %i.avu to i16
  %i.avw = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 18
  store i16 %i.avv, ptr %i.avw, align 2, !tbaa !573
  %i.avx = load i32, ptr %i.avn, align 4, !tbaa !39
  %i.avy = lshr i32 %i.avx, 16
  %i.avz = trunc nuw i32 %i.avy to i16
  %i.awa = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 20
  store i16 %i.avz, ptr %i.awa, align 2, !tbaa !573
  %i.awb = load i32, ptr %i.avo, align 4, !tbaa !39
  %i.awc = lshr i32 %i.awb, 16
  %i.awd = trunc nuw i32 %i.awc to i16
  %i.awe = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 22
  store i16 %i.awd, ptr %i.awe, align 2, !tbaa !573
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %i.vv ; 2 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %i.vv ; 2 uses
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %i.vv ; 2 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avo, i64 %i.vv ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 24
  %i.awk = load i32, ptr %i.awf, align 4, !tbaa !39
  %i.awl = lshr i32 %i.awk, 16
  %i.awm = trunc nuw i32 %i.awl to i16
  store i16 %i.awm, ptr %i.awj, align 2, !tbaa !573
  %i.awn = load i32, ptr %i.awg, align 4, !tbaa !39
  %i.awo = lshr i32 %i.awn, 16
  %i.awp = trunc nuw i32 %i.awo to i16
  %i.awq = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 26
  store i16 %i.awp, ptr %i.awq, align 2, !tbaa !573
  %i.awr = load i32, ptr %i.awh, align 4, !tbaa !39
  %i.aws = lshr i32 %i.awr, 16
  %i.awt = trunc nuw i32 %i.aws to i16
  %i.awu = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 28
  store i16 %i.awt, ptr %i.awu, align 2, !tbaa !573
  %i.awv = load i32, ptr %i.awi, align 4, !tbaa !39
  %i.aww = lshr i32 %i.awv, 16
  %i.awx = trunc nuw i32 %i.aww to i16
  %i.awy = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 30
  store i16 %i.awx, ptr %i.awy, align 2, !tbaa !573
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awf, i64 %i.vv ; 2 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.vv ; 2 uses
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.vv ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.awi, i64 %i.vv ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 32
  %i.axe = load i32, ptr %i.awz, align 4, !tbaa !39
  %i.axf = lshr i32 %i.axe, 16
  %i.axg = trunc nuw i32 %i.axf to i16
  store i16 %i.axg, ptr %i.axd, align 2, !tbaa !573
  %i.axh = load i32, ptr %i.axa, align 4, !tbaa !39
  %i.axi = lshr i32 %i.axh, 16
  %i.axj = trunc nuw i32 %i.axi to i16
  %i.axk = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 34
  store i16 %i.axj, ptr %i.axk, align 2, !tbaa !573
  %i.axl = load i32, ptr %i.axb, align 4, !tbaa !39
  %i.axm = lshr i32 %i.axl, 16
  %i.axn = trunc nuw i32 %i.axm to i16
  %i.axo = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 36
  store i16 %i.axn, ptr %i.axo, align 2, !tbaa !573
  %i.axp = load i32, ptr %i.axc, align 4, !tbaa !39
  %i.axq = lshr i32 %i.axp, 16
  %i.axr = trunc nuw i32 %i.axq to i16
  %i.axs = getelementptr inbounds nuw i8, ptr %.19281255.us.i, i64 38
  store i16 %i.axr, ptr %i.axs, align 2, !tbaa !573
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.vv ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.axa, i64 %i.vv ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axb, i64 %i.vv ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn19Convolution_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %.29491315.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %.29461316.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.29431317.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %.29401318.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfi = load i32, ptr %i.bfe, align 4, !tbaa !39
  %i.bfj = lshr i32 %i.bfi, 16
  %i.bfk = trunc nuw i32 %i.bfj to i16
  store i16 %i.bfk, ptr %.79341311.us.i, align 2, !tbaa !573
  %i.bfl = load i32, ptr %i.bff, align 4, !tbaa !39
  %i.bfm = lshr i32 %i.bfl, 16
  %i.bfn = trunc nuw i32 %i.bfm to i16
  %i.bfo = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 2
  store i16 %i.bfn, ptr %i.bfo, align 2, !tbaa !573
  %i.bfp = load i32, ptr %i.bfg, align 4, !tbaa !39
  %i.bfq = lshr i32 %i.bfp, 16
  %i.bfr = trunc nuw i32 %i.bfq to i16
  %i.bfs = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 4
  store i16 %i.bfr, ptr %i.bfs, align 2, !tbaa !573
  %i.bft = load i32, ptr %i.bfh, align 4, !tbaa !39
  %i.bfu = lshr i32 %i.bft, 16
  %i.bfv = trunc nuw i32 %i.bfu to i16
  %i.bfw = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 6
  store i16 %i.bfv, ptr %i.bfw, align 2, !tbaa !573
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfe, i64 %i.vv
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bff, i64 %i.vv
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bfg, i64 %i.vv
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.bfh, i64 %i.vv
  %i.bgb = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 8
  %i.bgc = load i32, ptr %i.bfx, align 4, !tbaa !39
  %i.bgd = lshr i32 %i.bgc, 16
  %i.bge = trunc nuw i32 %i.bgd to i16
  store i16 %i.bge, ptr %i.bgb, align 2, !tbaa !573
  %i.bgf = load i32, ptr %i.bfy, align 4, !tbaa !39
  %i.bgg = lshr i32 %i.bgf, 16
  %i.bgh = trunc nuw i32 %i.bgg to i16
  %i.bgi = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 10
  store i16 %i.bgh, ptr %i.bgi, align 2, !tbaa !573
  %i.bgj = load i32, ptr %i.bfz, align 4, !tbaa !39
  %i.bgk = lshr i32 %i.bgj, 16
  %i.bgl = trunc nuw i32 %i.bgk to i16
  %i.bgm = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 12
  store i16 %i.bgl, ptr %i.bgm, align 2, !tbaa !573
  %i.bgn = load i32, ptr %i.bga, align 4, !tbaa !39
  %i.bgo = lshr i32 %i.bgn, 16
  %i.bgp = trunc nuw i32 %i.bgo to i16
  %i.bgq = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 14
  store i16 %i.bgp, ptr %i.bgq, align 2, !tbaa !573
  %i.bgr = getelementptr inbounds nuw i8, ptr %.79341311.us.i, i64 16 ; 2 uses
  %indvars.iv.next1726.i = add nuw nsw i64 %indvars.iv1725.i, 1 ; 2 uses
  %exitcond1729.not.i = icmp eq i64 %indvars.iv.next1726.i, %wide.trip.count1708.i
  br i1 %exitcond1729.not.i, label %._crit_edge1313.us.i, label %scalar.ph500, !llvm.loop !593

._crit_edge1313.us.i:                             ; preds = %scalar.ph500, %middle.block517
  %.lcssa438 = phi ptr [ %i.bed, %middle.block517 ], [ %i.bgr, %scalar.ph500 ] ; 2 uses
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %.29491315.us.i, i64 %i.wb ; 2 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.29461316.us.i, i64 %i.wb ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %.29431317.us.i, i64 %i.wb ; 2 uses
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %.29401318.us.i, i64 %i.wb ; 2 uses
  %i.bgw = add nuw nsw i32 %.29251320.us.i, 2     ; 3 uses
  %i.bgx = or disjoint i32 %i.bgw, 1
  %i.bgy = icmp slt i32 %i.bgx, %i.p
  br i1 %i.bgy, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !594

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2949.lcssa.i = phi ptr [ %.1948.lcssa.i, %.preheader1103.i ], [ %i.bgs, %._crit_edge1313.us.i ] ; 2 uses
  %.2946.lcssa.i = phi ptr [ %.1945.lcssa.i, %.preheader1103.i ], [ %i.bgt, %._crit_edge1313.us.i ] ; 2 uses
  %.2943.lcssa.i = phi ptr [ %.1942.lcssa.i, %.preheader1103.i ], [ %i.bgu, %._crit_edge1313.us.i ] ; 2 uses
  %.2940.lcssa.i = phi ptr [ %.1939.lcssa.i, %.preheader1103.i ], [ %i.bgv, %._crit_edge1313.us.i ] ; 2 uses
  %.6933.lcssa.i = phi ptr [ %.3930.lcssa.i, %.preheader1103.i ], [ %.lcssa438, %._crit_edge1313.us.i ]
  %.2925.lcssa.i = phi i32 [ %.1924.lcssa.i, %.preheader1103.i ], [ %i.bgw, %._crit_edge1313.us.i ] ; 2 uses
  %i.bgz = icmp sge i32 %.2925.lcssa.i, %i.p
  %brmerge1469.i = or i1 %i.wc, %i.bgz
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1102.i, %._crit_edge1335.i
  %.39261338.i = phi i32 [ %i.bho, %._crit_edge1335.i ], [ %.2925.lcssa.i, %.preheader1102.i ]
  %.99361337.i = phi ptr [ %.lcssa444, %._crit_edge1335.i ], [ %.6933.lcssa.i, %.preheader1102.i ] ; 3 uses
  br i1 %min.iters.check484, label %scalar.ph483.preheader, label %vector.ph485

vector.ph485:                                     ; preds = %.preheader1098.i
  %i.bha = getelementptr i8, ptr %.99361337.i, i64 %i.wy ; 2 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next495, %vector.body487 ] ; 6 uses
  %i.bhb = shl i64 %index488, 3
  %next.gep489 = getelementptr i8, ptr %.99361337.i, i64 %i.bhb
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %index488
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %index488
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %index488
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %index488
  %wide.load490 = load <4 x i32>, ptr %i.bhc, align 4, !tbaa !39
  %i.bhg = lshr <4 x i32> %wide.load490, splat (i32 16)
  %wide.load491 = load <4 x i32>, ptr %i.bhd, align 4, !tbaa !39
  %i.bhh = lshr <4 x i32> %wide.load491, splat (i32 16)
  %wide.load492 = load <4 x i32>, ptr %i.bhe, align 4, !tbaa !39
  %i.bhi = lshr <4 x i32> %wide.load492, splat (i32 16)
  %wide.load493 = load <4 x i32>, ptr %i.bhf, align 4, !tbaa !39
  %i.bhj = lshr <4 x i32> %wide.load493, splat (i32 16)
  %i.bhk = shufflevector <4 x i32> %i.bhg, <4 x i32> %i.bhh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhl = shufflevector <4 x i32> %i.bhi, <4 x i32> %i.bhj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhm = shufflevector <8 x i32> %i.bhk, <8 x i32> %i.bhl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec494 = trunc nuw <16 x i32> %i.bhm to <16 x i16>
  store <16 x i16> %interleaved.vec494, ptr %next.gep489, align 2, !tbaa !573
  %index.next495 = add nuw i64 %index488, 4       ; 2 uses
  %i.bhn = icmp eq i64 %index.next495, %n.vec486
  br i1 %i.bhn, label %middle.block496, label %vector.body487, !llvm.loop !595

middle.block496:                                  ; preds = %vector.body487
  br i1 %cmp.n497, label %._crit_edge1335.i, label %scalar.ph483.preheader

scalar.ph483.preheader:                           ; preds = %.preheader1098.i, %middle.block496
  %indvars.iv1730.i.ph = phi i64 [ 0, %.preheader1098.i ], [ %n.vec486, %middle.block496 ]
  %.109371333.i.ph = phi ptr [ %.99361337.i, %.preheader1098.i ], [ %i.bha, %middle.block496 ]
  br label %scalar.ph483

._crit_edge1335.i:                                ; preds = %scalar.ph483, %middle.block496
  %.lcssa444 = phi ptr [ %i.bha, %middle.block496 ], [ %i.bii, %scalar.ph483 ]
  %i.bho = add nuw nsw i32 %.39261338.i, 1        ; 2 uses
  %exitcond1735.not.i = icmp eq i32 %i.bho, %i.p
  br i1 %exitcond1735.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !596

scalar.ph483:                                     ; preds = %scalar.ph483.preheader, %scalar.ph483
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i, %scalar.ph483 ], [ %indvars.iv1730.i.ph, %scalar.ph483.preheader ] ; 5 uses
  %.109371333.i = phi ptr [ %i.bii, %scalar.ph483 ], [ %.109371333.i.ph, %scalar.ph483.preheader ] ; 5 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.2949.lcssa.i, i64 %indvars.iv1730.i
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %.2946.lcssa.i, i64 %indvars.iv1730.i
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.2943.lcssa.i, i64 %indvars.iv1730.i
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %.2940.lcssa.i, i64 %indvars.iv1730.i
  %i.bht = load i32, ptr %i.bhp, align 4, !tbaa !39
  %i.bhu = lshr i32 %i.bht, 16
  %i.bhv = trunc nuw i32 %i.bhu to i16
  store i16 %i.bhv, ptr %.109371333.i, align 2, !tbaa !573
  %i.bhw = load i32, ptr %i.bhq, align 4, !tbaa !39
  %i.bhx = lshr i32 %i.bhw, 16
  %i.bhy = trunc nuw i32 %i.bhx to i16
  %i.bhz = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 2
  store i16 %i.bhy, ptr %i.bhz, align 2, !tbaa !573
  %i.bia = load i32, ptr %i.bhr, align 4, !tbaa !39
  %i.bib = lshr i32 %i.bia, 16
  %i.bic = trunc nuw i32 %i.bib to i16
  %i.bid = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 4
  store i16 %i.bic, ptr %i.bid, align 2, !tbaa !573
  %i.bie = load i32, ptr %i.bhs, align 4, !tbaa !39
  %i.bif = lshr i32 %i.bie, 16
  %i.big = trunc nuw i32 %i.bif to i16
  %i.bih = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 6
  store i16 %i.big, ptr %i.bih, align 2, !tbaa !573
  %i.bii = getelementptr inbounds nuw i8, ptr %.109371333.i, i64 8 ; 2 uses
  %indvars.iv.next1731.i = add nuw nsw i64 %indvars.iv1730.i, 1 ; 2 uses
  %exitcond1734.not.i = icmp eq i64 %indvars.iv.next1731.i, %wide.trip.count1708.i
  br i1 %exitcond1734.not.i, label %._crit_edge1335.i, label %scalar.ph483, !llvm.loop !597

._crit_edge1339.split.i:                          ; preds = %._crit_edge1335.i, %.preheader1102.i, %.preheader1099.lr.ph.i
  %indvars.iv.next1739.i = add nuw nsw i64 %indvars.iv1738.i, 4 ; 3 uses
  %i.bij = icmp slt i64 %indvars.iv.next1739.i, %invariant.op.i
  %indvars.iv.next1690.i = add i32 %indvars.iv1689.i, %i.wj
  %indvars.iv.next1694.i = add i32 %indvars.iv1693.i, %i.wj
  %indvars.iv.next1698.i = add i32 %indvars.iv1697.i, %i.wj
  %indvars.iv.next1702.i = add i32 %indvars.iv1701.i, %i.wj
  %indvars.iv.next1737.i = add i32 %indvars.iv1736.i, 4
  br i1 %i.bij, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %.preheader1097.loopexit.i, !llvm.loop !598

.preheader1089.loopexit.i:                        ; preds = %._crit_edge1402.split.i
  %i.bik = trunc nsw i64 %indvars.iv.next1778.i to i32
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1097.i ], [ %i.bik, %.preheader1089.loopexit.i ] ; 3 uses
  %i.bil = icmp slt i32 %.2.lcssa.i, %i.eg
  br i1 %i.bil, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bim = load ptr, ptr %i.nw, align 8, !tbaa !18 ; 2 uses
  %i.bin = mul i32 %i.ny, %i.p                    ; 3 uses
  %i.bio = load ptr, ptr %i.nx, align 8, !tbaa !18, !noalias !599
  %i.bip = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.biq = load i64, ptr %i.bip, align 8, !tbaa !20, !noalias !599
  %i.bir = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bis = load i64, ptr %i.bir, align 8, !tbaa !65, !noalias !599
  %factor.op.mul1464.i = mul i64 %i.bis, %i.biq
  %i.bit = icmp sgt i32 %i.p, 7
  %i.biu = icmp sgt i32 %i.ny, 0                  ; 3 uses
  %i.biv = sext i32 %i.ny to i64                  ; 22 uses
  %i.biw = shl i32 %i.ny, 3
  %i.bix = sext i32 %i.biw to i64                 ; 2 uses
  %i.biy = shl i32 %i.ny, 2
  %i.biz = sext i32 %i.biy to i64                 ; 2 uses
  %i.bja = shl i32 %i.ny, 1
  %i.bjb = sext i32 %i.bja to i64
  %i.bjc = icmp slt i32 %i.ny, 1
  %i.bjd = add i32 %i.p, -8                       ; 2 uses
  %i.bje = lshr i32 %i.bjd, 1
  %i.bjf = and i32 %i.bje, 2147483644
  %narrow1841.i = add nuw i32 %i.bjf, 4
  %i.bjg = zext i32 %narrow1841.i to i64
  %i.bjh = mul nsw i64 %i.bix, %i.bjg
  %scevgep1780.i = getelementptr i8, ptr %i.bim, i64 %i.bjh
  %i.bji = mul i32 %i.bin, %.2.lcssa.i
  %i.bjj = and i32 %i.bjd, -8
  %i.bjk = add i32 %i.bjj, 8                      ; 4 uses
  %i.bjl = add i32 %i.p, -4
  %i.bjm = sext i32 %.2.lcssa.i to i64
  %wide.trip.count1813.i = sext i32 %i.eg to i64
  %i.bjn = or disjoint i32 %i.bjk, 3
  %i.bjo = icmp slt i32 %i.bjn, %i.p
  %wide.trip.count1788.i = zext i32 %i.ny to i64  ; 15 uses
  %min.iters.check635 = icmp ult i32 %i.ny, 4
  %n.vec637 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bjp = shl nuw nsw i64 %n.vec637, 4
  %cmp.n652 = icmp eq i64 %n.vec637, %wide.trip.count1788.i
  %min.iters.check618 = icmp ult i32 %i.ny, 4
  %n.vec620 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bjq = shl nuw nsw i64 %n.vec620, 3
  %cmp.n631 = icmp eq i64 %n.vec620, %wide.trip.count1788.i
  %min.iters.check599 = icmp ult i32 %i.ny, 8
  %n.vec601 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bjr = shl nuw nsw i64 %n.vec601, 2
  %cmp.n614 = icmp eq i64 %n.vec601, %wide.trip.count1788.i
  %min.iters.check575 = icmp ult i32 %i.ny, 4
  %min.iters.check576 = icmp ult i32 %i.ny, 32
  %i.bjs = and i64 %wide.trip.count1788.i, 28
  %n.vec578 = and i64 %wide.trip.count1788.i, 2147483616 ; 5 uses
  %i.bjt = shl nuw nsw i64 %n.vec578, 1
  %cmp.n588 = icmp eq i64 %n.vec578, %wide.trip.count1788.i
  %min.epilog.iters.check = icmp eq i64 %i.bjs, 0
  %n.vec590 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bju = shl nuw nsw i64 %n.vec590, 1
  %cmp.n595 = icmp eq i64 %n.vec590, %wide.trip.count1788.i
  br label %_ZN4ncnn3MatD2Ev.exit.i101

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1777.i = phi i64 [ %i.aso, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1778.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1748.i = phi i32 [ %i.ask, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1749.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1744.i = phi i32 [ %i.asi, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1745.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bjv = phi i32 [ %i.arc, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.bsi, %._crit_edge1402.split.i ]
  %i.bjw = sext i32 %indvars.iv1744.i to i64
  %i.bjx = shl nsw i64 %i.bjw, 2
  %scevgep1746.i = getelementptr i8, ptr %scevgep1743.i, i64 %i.bjx ; 2 uses
  %i.bjy = sext i32 %indvars.iv1748.i to i64
  %i.bjz = shl nsw i64 %i.bjy, 2
  %scevgep1750.i = getelementptr i8, ptr %scevgep1743.i, i64 %i.bjz ; 2 uses
  %i.bka = trunc i64 %indvars.iv1777.i to i32     ; 4 uses
  %i.bkb = mul i32 %i.arf, %i.bka
  %i.bkc = sext i32 %i.bkb to i64
  %i.bkd = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.bkc ; 2 uses
  %i.bke = mul i32 %i.bjv, %i.arf
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = getelementptr inbounds [4 x i8], ptr %i.are, i64 %i.bkf ; 2 uses
  %i.bkh = lshr i32 %i.bka, 3
  %i.bki = lshr i32 %i.bka, 2
  %i.bkj = and i32 %i.bki, 1
  %i.bkk = add nuw nsw i32 %i.bkj, %i.bkh
  %i.bkl = lshr i32 %i.bka, 1
  %i.bkm = and i32 %i.bkl, 1
  %i.bkn = add nuw nsw i32 %i.bkk, %i.bkm
  %i.bko = zext nneg i32 %i.bkn to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bko
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.arg, i64 %.reass1406.i ; 4 uses
  br i1 %i.arl, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.arm, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08641351.us.i = phi i32 [ %i.bmr, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08681350.us.i = phi ptr [ %i.bmo, %._crit_edge1346.us.i ], [ %i.bkp, %.preheader1093.lr.ph.i ]
  %.08771349.us.i = phi ptr [ %i.bmq, %._crit_edge1346.us.i ], [ %i.bkg, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08801348.us.i = phi ptr [ %i.bmp, %._crit_edge1346.us.i ], [ %i.bkd, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.preheader1093.us.i
  %indvars.iv1751.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1752.i, %bb.ep ] ; 3 uses
  %.18691344.us.i = phi ptr [ %.08681350.us.i, %.preheader1093.us.i ], [ %i.bmo, %bb.ep ] ; 2 uses
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %.08801348.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.08771349.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bks = load i32, ptr %i.bkq, align 4, !tbaa !39
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arn
  %i.bku = load i32, ptr %i.bkt, align 4, !tbaa !39
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arp
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !39
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arr
  %i.bky = load i32, ptr %i.bkx, align 4, !tbaa !39
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.art
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !39
  %i.blb = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arv
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !39
  %i.bld = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arx
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !39
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkq, i64 %i.arz
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !39
  %i.blh = load i32, ptr %i.bkr, align 4, !tbaa !39
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arn
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !39
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arp
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !39
  %i.blm = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arr
  %i.bln = load i32, ptr %i.blm, align 4, !tbaa !39
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.art
  %i.blp = load i32, ptr %i.blo, align 4, !tbaa !39
  %i.blq = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arv
  %i.blr = load i32, ptr %i.blq, align 4, !tbaa !39
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arx
  %i.blt = load i32, ptr %i.bls, align 4, !tbaa !39
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bkr, i64 %i.arz
  %i.blv = load i32, ptr %i.blu, align 4, !tbaa !39
  %i.blw = insertelement <16 x i32> poison, i32 %i.bks, i64 0
  %i.blx = insertelement <16 x i32> %i.blw, i32 %i.bku, i64 1
  %i.bly = insertelement <16 x i32> %i.blx, i32 %i.bkw, i64 2
  %i.blz = insertelement <16 x i32> %i.bly, i32 %i.bky, i64 3
  %i.bma = insertelement <16 x i32> %i.blz, i32 %i.bla, i64 4
  %i.bmb = insertelement <16 x i32> %i.bma, i32 %i.blc, i64 5
  %i.bmc = insertelement <16 x i32> %i.bmb, i32 %i.ble, i64 6
  %i.bmd = insertelement <16 x i32> %i.bmc, i32 %i.blg, i64 7
  %i.bme = insertelement <16 x i32> %i.bmd, i32 %i.blh, i64 8
  %i.bmf = insertelement <16 x i32> %i.bme, i32 %i.blj, i64 9
  %i.bmg = insertelement <16 x i32> %i.bmf, i32 %i.bll, i64 10
  %i.bmh = insertelement <16 x i32> %i.bmg, i32 %i.bln, i64 11
  %i.bmi = insertelement <16 x i32> %i.bmh, i32 %i.blp, i64 12
  %i.bmj = insertelement <16 x i32> %i.bmi, i32 %i.blr, i64 13
  %i.bmk = insertelement <16 x i32> %i.bmj, i32 %i.blt, i64 14
  %i.bml = insertelement <16 x i32> %i.bmk, i32 %i.blv, i64 15
  %i.bmm = lshr <16 x i32> %i.bml, splat (i32 16)
  %i.bmn = trunc nuw <16 x i32> %i.bmm to <16 x i16>
  store <16 x i16> %i.bmn, ptr %.18691344.us.i, align 2, !tbaa !573
  %i.bmo = getelementptr inbounds nuw i8, ptr %.18691344.us.i, i64 32 ; 3 uses
  %indvars.iv.next1752.i = add nuw nsw i64 %indvars.iv1751.i, 1 ; 2 uses
  %exitcond1755.not.i = icmp eq i64 %indvars.iv.next1752.i, %wide.trip.count1754.i
  br i1 %exitcond1755.not.i, label %._crit_edge1346.us.i, label %bb.ep, !llvm.loop !602

._crit_edge1346.us.i:                             ; preds = %bb.ep
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %.08801348.us.i, i64 %i.asb ; 2 uses
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %.08771349.us.i, i64 %i.asb ; 2 uses
  %i.bmr = add nuw nsw i32 %.08641351.us.i, 8     ; 2 uses
  %i.bms = or disjoint i32 %i.bmr, 7
  %i.bmt = icmp slt i32 %i.bms, %i.p
  br i1 %i.bmt, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !603

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0880.lcssa.i = phi ptr [ %i.bkd, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmp, %._crit_edge1346.us.i ] ; 3 uses
  %.0877.lcssa.i = phi ptr [ %i.bkg, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmq, %._crit_edge1346.us.i ] ; 3 uses
  %.0868.lcssa.i = phi ptr [ %i.bkp, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmo, %._crit_edge1346.us.i ] ; 3 uses
  %.0864.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.asm, %._crit_edge1346.us.i ] ; 4 uses
  %i.bmu = or disjoint i32 %.0864.lcssa.i, 3
  %i.bmv = icmp slt i32 %i.bmu, %i.p
  br i1 %i.bmv, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.asr, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.arm, label %.preheader1092.us.i, label %.preheader1092.preheader.i

.preheader1092.preheader.i:                       ; preds = %.preheader1092.lr.ph.i, %.preheader1096.thread.i
  %.0880.lcssa19281939.i = phi ptr [ %.0880.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1746.i, %.preheader1096.thread.i ]
  %.0877.lcssa19291938.i = phi ptr [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1750.i, %.preheader1096.thread.i ]
  %.0868.lcssa19301937.i = phi ptr [ %.0868.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bkp, %.preheader1096.thread.i ]
  %.0864.lcssa19311936.i = phi i32 [ %.0864.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.asm, %.preheader1096.thread.i ] ; 2 uses
  %i.bmw = sub i32 %i.asn, %.0864.lcssa19311936.i
  %i.bmx = and i32 %i.bmw, -4                     ; 2 uses
  %i.bmy = zext i32 %i.bmx to i64
  %i.bmz = add nuw nsw i64 %i.bmy, 4
  %i.bna = mul nsw i64 %i.bmz, %i.art             ; 2 uses
  %scevgep1756.i = getelementptr i8, ptr %.0880.lcssa19281939.i, i64 %i.bna
  %scevgep1757.i = getelementptr i8, ptr %.0877.lcssa19291938.i, i64 %i.bna
  %i.bnb = add i32 %.0864.lcssa19311936.i, 4
  %i.bnc = add i32 %i.bnb, %i.bmx
  br label %.preheader1095.i

.preheader1092.us.i:                              ; preds = %.preheader1092.lr.ph.i, %._crit_edge1362.us.i
  %.18651367.us.i = phi i32 [ %i.bpu, %._crit_edge1362.us.i ], [ %.0864.lcssa.i, %.preheader1092.lr.ph.i ]
  %.28701366.us.i = phi ptr [ %.lcssa418, %._crit_edge1362.us.i ], [ %.0868.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18781365.us.i = phi ptr [ %i.bpt, %._crit_edge1362.us.i ], [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18811364.us.i = phi ptr [ %i.bps, %._crit_edge1362.us.i ], [ %.0880.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check554, label %scalar.ph553.preheader, label %vector.ph555

vector.ph555:                                     ; preds = %.preheader1092.us.i
  %i.bnd = getelementptr i8, ptr %.28701366.us.i, i64 %i.ass ; 2 uses
  br label %vector.body557

vector.body557:                                   ; preds = %vector.body557, %vector.ph555
  %index558 = phi i64 [ 0, %vector.ph555 ], [ %index.next569, %vector.body557 ] ; 4 uses
  %i.bne = shl i64 %index558, 4
  %next.gep559 = getelementptr i8, ptr %.28701366.us.i, i64 %i.bne
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.18811364.us.i, i64 %index558 ; 4 uses
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %.18781365.us.i, i64 %index558 ; 4 uses
  %wide.load560 = load <4 x i32>, ptr %i.bnf, align 4, !tbaa !39
  %i.bnh = lshr <4 x i32> %wide.load560, splat (i32 16)
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arn
  %wide.load561 = load <4 x i32>, ptr %i.bni, align 4, !tbaa !39
  %i.bnj = lshr <4 x i32> %wide.load561, splat (i32 16)
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arp
  %wide.load562 = load <4 x i32>, ptr %i.bnk, align 4, !tbaa !39
  %i.bnl = lshr <4 x i32> %wide.load562, splat (i32 16)
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arr
  %wide.load563 = load <4 x i32>, ptr %i.bnm, align 4, !tbaa !39
  %i.bnn = lshr <4 x i32> %wide.load563, splat (i32 16)
  %wide.load564 = load <4 x i32>, ptr %i.bng, align 4, !tbaa !39
  %i.bno = lshr <4 x i32> %wide.load564, splat (i32 16)
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.bng, i64 %i.arn
  %wide.load565 = load <4 x i32>, ptr %i.bnp, align 4, !tbaa !39
end_hunk_5
begin_hunk_6_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %i.un ; 7 uses
  %i.up = or disjoint i32 %i.um, 1
  %i.uq = icmp slt i32 %i.up, %i.by
  %.fr.us.i = freeze i1 %i.uq
  %.not491.us.us.i = icmp slt i32 %i.uj, %i.bz    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.av, label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not491.us.us.i, label %bb.ax, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.av:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %i.ur = fadd fast float %i.th, %i.si
  %i.us = fadd fast float %i.ur, %i.sv
  %i.ut = fadd fast float %i.us, %i.tt
  store float %i.ut, ptr %i.uo, align 4, !tbaa !39
  %i.uu = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i

_ZN4ncnn3MatD2Ev.exit.split.us149.1.i:            ; preds = %bb.av, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i
  %.1454.us147.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i ], [ %i.uu, %bb.av ]
  %i.uv = or disjoint i32 %i.uj, 1
  %.not491.us146.1.i = icmp slt i32 %i.uv, %i.bz
  br i1 %.not491.us146.1.i, label %bb.aw, label %.split.us148.i

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %i.uw = fadd fast float %i.tk, %i.si
  %i.ux = fadd fast float %i.uw, %i.sy
  %i.uy = fadd fast float %i.ux, %i.tw
  store float %i.uy, ptr %.1454.us147.i, align 4, !tbaa !39
  br label %.split.us148.i

.split.us148.i:                                   ; preds = %bb.ay, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.aw, %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %._crit_edge136.us.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !1052

bb.ax:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.uz = fadd fast float %i.th, %i.si            ; 2 uses
  %i.va = fadd fast float %i.uz, %i.sv
  %i.vb = fadd fast float %i.va, %i.tt
  store float %i.vb, ptr %i.uo, align 4, !tbaa !39
  %i.vc = fsub fast float %i.uz, %i.tt
  %i.vd = fadd fast float %i.vc, %i.ub
  %i.ve = fadd fast float %i.vd, %i.uc
  %i.vf = fadd fast float %i.ve, %i.ud
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  store float %i.vf, ptr %i.vg, align 4, !tbaa !39
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.rz
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.ax, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1454.us.us.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.vh, %bb.ax ] ; 2 uses
  %i.vi = or disjoint i32 %i.uj, 1
  %.not491.us.us.1.i = icmp slt i32 %i.vi, %i.bz
  br i1 %.not491.us.us.1.i, label %bb.ay, label %.split.us148.i

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.vj = fadd fast float %i.tk, %i.si            ; 2 uses
  %i.vk = fadd fast float %i.vj, %i.sy
  %i.vl = fadd fast float %i.vk, %i.tw
  store float %i.vl, ptr %.1454.us.us.i, align 4, !tbaa !39
  %i.vm = fadd fast float %i.vj, %i.uc
  %i.vn = fadd fast float %i.tw, %i.ud
  %i.vo = fsub fast float %i.vm, %i.vn
  %i.vp = fadd fast float %i.vo, %i.ue
  %i.vq = getelementptr inbounds nuw i8, ptr %.1454.us.us.i, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !39
  br label %.split.us148.i

._crit_edge136.us.i:                              ; preds = %.split.us148.i
  %indvars.iv.next217.i = add nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next217.i, %i.bm
  br i1 %exitcond220.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.at, !llvm.loop !1053

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.vr = phi i32 [ %i.xo, %.noexc ], [ %.pre167, %.noexc.preheader ] ; 2 uses
  %i.vs = phi i32 [ %i.xq, %.noexc ], [ %i.bw, %.noexc.preheader ]
  %.044150 = phi i32 [ %i.xp, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.vt = sub nsw i32 %i.vs, %.044150
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.vr, i32 %i.vt)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.vu = load i32, ptr %3, align 4, !tbaa !67
  %i.vv = sdiv i32 %i.au, %i.vu
  %i.vw = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1054
  %i.vx = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1054
  %i.vy = sext i32 %i.vv to i64
  %i.vz = mul i64 %i.vx, %i.vy
  %i.wa = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1054 ; 3 uses
  %i.wb = mul i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.wb
  %i.wd = load i32, ptr %i.r, align 8, !tbaa !66, !noalias !1054
  %i.we = load ptr, ptr %i.s, align 8, !tbaa !17, !noalias !1054
  %i.wf = sdiv i32 %.044150, %i.vr
  %i.wg = sext i32 %i.wf to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !11, !alias.scope !1057
  store i64 %i.wa, ptr %i.u, align 8, !tbaa !65, !alias.scope !1057
  store i32 %i.wd, ptr %i.v, align 8, !tbaa !66, !alias.scope !1057
  store ptr %i.we, ptr %i.w, align 8, !tbaa !17, !alias.scope !1057
  store i32 2, ptr %i.x, align 8, !tbaa !289, !alias.scope !1057
  %i.wh = load <2 x i32>, ptr %i.n, align 4, !tbaa !67, !noalias !1054
  %i.wi = load i32, ptr %i.o, align 8, !tbaa !76, !noalias !1054
  %i.wj = load i32, ptr %i.n, align 4, !tbaa !75, !noalias !1054
  %i.wk = sext i32 %i.wj to i64
  %i.wl = sext i32 %i.wi to i64
  %i.wm = mul nsw i64 %i.wl, %i.wk                ; 2 uses
  %i.wn = mul i64 %i.wa, %i.wm
  %i.wo = mul i64 %i.wn, %i.wg
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.wo
  store ptr %i.wp, ptr %14, align 8, !tbaa !18, !alias.scope !1057
  %i.wq = shufflevector <2 x i32> %i.wh, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wr = shufflevector <4 x i32> %i.wq, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.wr, ptr %i.y, align 4, !tbaa !67, !alias.scope !1057
  store i64 %i.wm, ptr %i.z, align 8, !tbaa !20, !alias.scope !1057
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #12
  %i.ws = load i32, ptr %7, align 4, !tbaa !67
  %i.wt = sdiv i32 %.045156, %i.ws
  %i.wu = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1060
  %i.wv = load i64, ptr %i.ac, align 8, !tbaa !20, !noalias !1060
  %i.ww = sext i32 %i.wt to i64
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = load i64, ptr %i.ad, align 8, !tbaa !65, !noalias !1060 ; 3 uses
  %i.wz = mul i64 %i.wx, %i.wy
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wz
  %i.xb = load i32, ptr %i.ae, align 8, !tbaa !66, !noalias !1060
  %i.xc = load ptr, ptr %i.af, align 8, !tbaa !17, !noalias !1060
  store ptr null, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.wy, ptr %i.ah, align 8, !tbaa !65
  store i32 %i.xb, ptr %i.ai, align 8, !tbaa !66
  store ptr %i.xc, ptr %i.aj, align 8, !tbaa !17
  store i32 2, ptr %i.ak, align 8, !tbaa !289
  %i.xd = load <2 x i32>, ptr %i.aa, align 4, !tbaa !67, !noalias !1060
  %i.xe = load i32, ptr %i.ab, align 8, !tbaa !76, !noalias !1060
  %i.xf = load i32, ptr %i.aa, align 4, !tbaa !75, !noalias !1060
  %i.xg = sext i32 %i.xf to i64
  %i.xh = sext i32 %i.xe to i64
  %i.xi = mul nsw i64 %i.xh, %i.xg                ; 2 uses
  %i.xj = mul i64 %i.wy, %i.xi
  %i.xk = mul i64 %i.xj, %i.wg
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xk
  store ptr %i.xl, ptr %15, align 8, !tbaa !18
  %i.xm = shufflevector <2 x i32> %i.xd, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xn = shufflevector <4 x i32> %i.xm, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.xn, ptr %i.al, align 4, !tbaa !67
  store i64 %i.xi, ptr %i.am, align 8, !tbaa !20, !alias.scope !1063
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bc, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.044150, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.xo = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.xp = add nsw i32 %i.xo, %.044150             ; 2 uses
  %i.xq = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.xr = icmp slt i32 %i.xp, %i.xq
  br i1 %i.xr, label %.noexc, label %._crit_edge, !llvm.loop !1066

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge136.us.i, %.lr.ph142.i, %.preheader.i
  %i.xs = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.xt = add nsw i32 %i.xs, %.045156             ; 2 uses
  %i.xu = load i32, ptr %6, align 4, !tbaa !67    ; 2 uses
  %i.xv = icmp slt i32 %i.xt, %i.xu
  br i1 %i.xv, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1067

._crit_edge162:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge162, %bb.a
  ret void

bb.ba:                                            ; preds = %bb.c
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 65) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %.preheader449.lr.ph, label %.preheader444

.preheader449.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 11
  %i.g = icmp eq i32 %5, 0                        ; 6 uses
  %i.h = icmp sgt i32 %6, 0                       ; 5 uses
  %i.i = add i32 %4, -12                          ; 2 uses
  %i.j = urem i32 %i.i, 12
  %i.k = sub nuw i32 %i.i, %i.j
  %i.l = add i32 %i.k, 12
  %i.m = add i32 %6, -1                           ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = shl nuw nsw i64 %i.n, 5
  %i.p = shl nuw nsw i64 %i.n, 4
  %i.q = shl nuw nsw i64 %i.n, 3
  %i.r = add i32 %4, -1                           ; 2 uses
  %i.s = shl nuw nsw i64 %i.n, 2
  %i.t = zext nneg i32 %3 to i64
  %i.u = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %xtraiter = and i32 %6, 1
  %i.v = icmp eq i32 %6, 1
  %unroll_iter = and i32 %6, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1683 = trunc i32 %6 to i1
  %xtraiter1684 = and i32 %6, 1
  %i.w = icmp eq i32 %i.m, 0
  %unroll_iter1688 = and i32 %6, 2147483646
  %lcmp.mod1685.not = icmp eq i32 %xtraiter1684, 0
  %lcmp.mod1687 = trunc i32 %6 to i1
  br label %.preheader449

.preheader449:                                    ; preds = %.preheader449.lr.ph, %bb.b
  %indvars.iv1101 = phi i64 [ 0, %.preheader449.lr.ph ], [ %indvars.iv.next1102, %bb.b ] ; 2 uses
  %.0608578 = phi ptr [ %.0.val, %.preheader449.lr.ph ], [ %.6614.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv1101, %i.u
  br label %bb.c

.preheader444.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.loopexit, %bb.a
  %.0635.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader444.loopexit ] ; 3 uses
  %.0608.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6614.lcssa, %.preheader444.loopexit ] ; 2 uses
  %i.z = or disjoint i32 %.0635.lcssa, 3
  %i.aa = icmp slt i32 %i.z, %3
  br i1 %i.aa, label %.preheader443.lr.ph, label %.preheader438

.preheader443.lr.ph:                              ; preds = %.preheader444
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = icmp sgt i32 %4, 11
  %i.ag = icmp eq i32 %5, 0                       ; 6 uses
  %i.ah = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ai = add i32 %4, -12                         ; 2 uses
  %i.aj = urem i32 %i.ai, 12
  %i.ak = sub nuw i32 %i.ai, %i.aj
  %i.al = add i32 %i.ak, 12
  %i.am = add i32 %6, -1                          ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 4 uses
  %i.ao = shl nuw nsw i64 %i.an, 5
  %i.ap = shl nuw nsw i64 %i.an, 4
  %i.aq = shl nuw nsw i64 %i.an, 3
  %i.ar = add i32 %4, -1                          ; 2 uses
  %i.as = shl nuw nsw i64 %i.an, 2
  %i.at = zext nneg i32 %.0635.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count1121 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -3
  %xtraiter1690 = and i32 %6, 1
  %i.aw = icmp eq i32 %6, 1
  %unroll_iter1695 = and i32 %6, 2147483646
  %lcmp.mod1691.not = icmp eq i32 %xtraiter1690, 0
  %lcmp.mod1694 = trunc i32 %6 to i1
  %xtraiter1697 = and i32 %6, 3                   ; 3 uses
  %i.ax = icmp ult i32 %i.am, 3
  %unroll_iter1701 = and i32 %6, 2147483644
  %lcmp.mod1698.not = icmp eq i32 %xtraiter1697, 0
  %lcmp.mod1700 = icmp ne i32 %xtraiter1697, 0
  br label %.preheader443

bb.b:                                             ; preds = %._crit_edge568
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 8 ; 3 uses
  %i.ay = or disjoint i64 %indvars.iv.next1102, 7
  %i.az = icmp samesign ult i64 %i.ay, %i.t
  br i1 %i.az, label %.preheader449, label %.preheader444.loopexit, !llvm.loop !1068

bb.c:                                             ; preds = %.preheader449, %._crit_edge568
  %indvars.iv = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next, %._crit_edge568 ] ; 3 uses
  %.1609576 = phi ptr [ %.0608578, %.preheader449 ], [ %.6614.lcssa, %._crit_edge568 ] ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !18
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %indvars.iv, %i.bc
  %i.be = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bf = mul i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.x ; 7 uses
  %i.bi = load ptr, ptr %1, align 8, !tbaa !18
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %indvars.iv, %i.bk
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !65
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn ; 2 uses
  br i1 %i.f, label %.lr.ph481, label %.preheader448

.preheader448:                                    ; preds = %._crit_edge, %bb.c
  %.0651.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %._crit_edge ] ; 3 uses
  %.0641.lcssa = phi ptr [ %i.bo, %bb.c ], [ %.1642.lcssa, %._crit_edge ] ; 2 uses
  %.2610.lcssa = phi ptr [ %.1609576, %bb.c ], [ %i.fw, %._crit_edge ] ; 2 uses
  %i.bp = add nuw nsw i32 %.0651.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %.lr.ph511, label %.preheader447

.lr.ph481:                                        ; preds = %bb.c, %._crit_edge
  %.2610479 = phi ptr [ %i.fw, %._crit_edge ], [ %.1609576, %bb.c ] ; 25 uses
  %.0641478 = phi ptr [ %.1642.lcssa, %._crit_edge ], [ %i.bo, %bb.c ] ; 2 uses
  %.0651477 = phi i32 [ %i.fx, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph481
  %i.br = load <8 x float>, ptr %.2610479, align 32, !tbaa !316
  %i.bs = getelementptr inbounds nuw i8, ptr %.2610479, i64 32
  %i.bt = load <8 x float>, ptr %i.bs, align 32, !tbaa !316
  %i.bu = getelementptr inbounds nuw i8, ptr %.2610479, i64 64
  %i.bv = load <8 x float>, ptr %i.bu, align 32, !tbaa !316
  %i.bw = getelementptr inbounds nuw i8, ptr %.2610479, i64 96
  %i.bx = load <8 x float>, ptr %i.bw, align 32, !tbaa !316
  %i.by = getelementptr inbounds nuw i8, ptr %.2610479, i64 128
  %i.bz = load <8 x float>, ptr %i.by, align 32, !tbaa !316
  %i.ca = getelementptr inbounds nuw i8, ptr %.2610479, i64 160
  %i.cb = load <8 x float>, ptr %i.ca, align 32, !tbaa !316
  %i.cc = getelementptr inbounds nuw i8, ptr %.2610479, i64 192
  %i.cd = load <8 x float>, ptr %i.cc, align 32, !tbaa !316
  %i.ce = getelementptr inbounds nuw i8, ptr %.2610479, i64 224
  %i.cf = load <8 x float>, ptr %i.ce, align 32, !tbaa !316
  %i.cg = getelementptr inbounds nuw i8, ptr %.2610479, i64 256
  %i.ch = load <8 x float>, ptr %i.cg, align 32, !tbaa !316
  %i.ci = getelementptr inbounds nuw i8, ptr %.2610479, i64 288
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !316
  %i.ck = getelementptr inbounds nuw i8, ptr %.2610479, i64 320
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316
  %i.cm = getelementptr inbounds nuw i8, ptr %.2610479, i64 352
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !316
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph481, %bb.d
  %.0329 = phi nsz <8 x float> [ %i.cl, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0327 = phi nsz <8 x float> [ %i.cj, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0320 = phi nsz <8 x float> [ %i.ch, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0318 = phi nsz <8 x float> [ %i.cf, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0316 = phi nsz <8 x float> [ %i.cd, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0314 = phi nsz <8 x float> [ %i.cb, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0309 = phi nsz <8 x float> [ %i.bz, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0307 = phi nsz <8 x float> [ %i.bx, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0305 = phi nsz <8 x float> [ %i.bv, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0302 = phi nsz <8 x float> [ %i.bt, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %.0300 = phi nsz <8 x float> [ %i.br, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  %storemerge727 = phi <8 x float> [ %i.cn, %bb.d ], [ zeroinitializer, %.lr.ph481 ] ; 2 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.1642464 = phi ptr [ %i.fj, %.lr.ph ], [ %.0641478, %bb.e ] ; 13 uses
  %.0657463 = phi ptr [ %i.fi, %.lr.ph ], [ %i.bh, %bb.e ] ; 2 uses
  %.0658462 = phi i32 [ %i.fk, %.lr.ph ], [ 0, %bb.e ]
  %.1301461 = phi <8 x float> [ %i.ct, %.lr.ph ], [ %.0300, %bb.e ]
  %.1303460 = phi <8 x float> [ %i.cz, %.lr.ph ], [ %.0302, %bb.e ]
  %.1306459 = phi <8 x float> [ %i.df, %.lr.ph ], [ %.0305, %bb.e ]
  %.1308458 = phi <8 x float> [ %i.dl, %.lr.ph ], [ %.0307, %bb.e ]
  %.1310457 = phi <8 x float> [ %i.dr, %.lr.ph ], [ %.0309, %bb.e ]
  %.1315456 = phi <8 x float> [ %i.dx, %.lr.ph ], [ %.0314, %bb.e ]
  %.1317455 = phi <8 x float> [ %i.ed, %.lr.ph ], [ %.0316, %bb.e ]
  %.1319454 = phi <8 x float> [ %i.ej, %.lr.ph ], [ %.0318, %bb.e ]
  %.1321453 = phi <8 x float> [ %i.ep, %.lr.ph ], [ %.0320, %bb.e ]
  %.1328452 = phi <8 x float> [ %i.ev, %.lr.ph ], [ %.0327, %bb.e ]
  %.1330451 = phi <8 x float> [ %i.fb, %.lr.ph ], [ %.0329, %bb.e ]
  %.0331450 = phi <8 x float> [ %i.fh, %.lr.ph ], [ %storemerge727, %bb.e ]
  %i.co = load <8 x float>, ptr %.0657463, align 32, !tbaa !316 ; 12 uses
  %i.cp = load float, ptr %.1642464, align 4, !tbaa !39
  %i.cq = insertelement <8 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <8 x float> %i.cq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cs = fmul fast <8 x float> %i.cr, %i.co
  %i.ct = fadd fast <8 x float> %i.cs, %.1301461  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1642464, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !39
  %i.cw = insertelement <8 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cy = fmul fast <8 x float> %i.cx, %i.co
  %i.cz = fadd fast <8 x float> %i.cy, %.1303460  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1642464, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !39
  %i.dc = insertelement <8 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <8 x float> %i.dc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.de = fmul fast <8 x float> %i.dd, %i.co
  %i.df = fadd fast <8 x float> %i.de, %.1306459  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1642464, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <8 x float> %i.di, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dk = fmul fast <8 x float> %i.dj, %i.co
  %i.dl = fadd fast <8 x float> %i.dk, %.1308458  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1642464, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !39
  %i.do = insertelement <8 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dq = fmul fast <8 x float> %i.dp, %i.co
  %i.dr = fadd fast <8 x float> %i.dq, %.1310457  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1642464, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !39
  %i.du = insertelement <8 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dw = fmul fast <8 x float> %i.dv, %i.co
  %i.dx = fadd fast <8 x float> %i.dw, %.1315456  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1642464, i64 24
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !39
  %i.ea = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ec = fmul fast <8 x float> %i.eb, %i.co
  %i.ed = fadd fast <8 x float> %i.ec, %.1317455  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1642464, i64 28
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !39
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ei = fmul fast <8 x float> %i.eh, %i.co
  %i.ej = fadd fast <8 x float> %i.ei, %.1319454  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1642464, i64 32
  %i.el = load float, ptr %i.ek, align 4, !tbaa !39
  %i.em = insertelement <8 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eo = fmul fast <8 x float> %i.en, %i.co
  %i.ep = fadd fast <8 x float> %i.eo, %.1321453  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1642464, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !39
  %i.es = insertelement <8 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <8 x float> %i.es, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eu = fmul fast <8 x float> %i.et, %i.co
  %i.ev = fadd fast <8 x float> %i.eu, %.1328452  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1642464, i64 40
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !39
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fa = fmul fast <8 x float> %i.ez, %i.co
  %i.fb = fadd fast <8 x float> %i.fa, %.1330451  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1642464, i64 44
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !39
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = fmul fast <8 x float> %i.ff, %i.co
  %i.fh = fadd fast <8 x float> %i.fg, %.0331450  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0657463, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %.1642464, i64 48 ; 2 uses
  %i.fk = add nuw nsw i32 %.0658462, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fk, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1069

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
end_hunk_6
begin_hunk_7_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.ky = insertelement <8 x float> poison, float %i.kx, i64 0
  %i.kz = shufflevector <8 x float> %i.ky, <8 x float> poison, <8 x i32> zeroinitializer
  %i.la = fmul fast <8 x float> %i.kz, %i.kw
  %i.lb = fadd fast <8 x float> %i.la, %.0382555.us
  %i.lc = getelementptr inbounds nuw i8, ptr %.0667557.us, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %.9650558.us, i64 4
  %i.le = load <8 x float>, ptr %i.lc, align 32, !tbaa !316
  %i.lf = load float, ptr %i.ld, align 4, !tbaa !39
  %i.lg = insertelement <8 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <8 x float> %i.lg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.li = fmul fast <8 x float> %i.lh, %i.le
  %i.lj = fadd fast <8 x float> %i.li, %i.lb      ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0667557.us, i64 64 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.9650558.us, i64 8 ; 2 uses
  %niter1689.next.1 = add nuw nsw i32 %niter1689, 2 ; 2 uses
  %niter1689.ncmp.1 = icmp eq i32 %niter1689.next.1, %unroll_iter1688
  br i1 %niter1689.ncmp.1, label %._crit_edge561.us.unr-lcssa, label %.lr.ph560.us, !llvm.loop !1075

._crit_edge561.us.unr-lcssa:                      ; preds = %.lr.ph560.us
  br i1 %lcmp.mod1685.not, label %._crit_edge561.us, label %.lr.ph560.us.epil.preheader

.lr.ph560.us.epil.preheader:                      ; preds = %._crit_edge561.us.unr-lcssa, %.lr.ph560.us.preheader
  %.9650558.us.epil.init = phi ptr [ %.8649565.us, %.lr.ph560.us.preheader ], [ %i.ll, %._crit_edge561.us.unr-lcssa ]
  %.0667557.us.epil.init = phi ptr [ %i.bh, %.lr.ph560.us.preheader ], [ %i.lk, %._crit_edge561.us.unr-lcssa ]
  %.0382555.us.epil.init = phi <8 x float> [ %.0382555.us.ph, %.lr.ph560.us.preheader ], [ %i.lj, %._crit_edge561.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1687)
  %i.lm = load <8 x float>, ptr %.0667557.us.epil.init, align 32, !tbaa !316
  %i.ln = load float, ptr %.9650558.us.epil.init, align 4, !tbaa !39
  %i.lo = insertelement <8 x float> poison, float %i.ln, i64 0
  %i.lp = shufflevector <8 x float> %i.lo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lq = fmul fast <8 x float> %i.lp, %i.lm
  %i.lr = fadd fast <8 x float> %i.lq, %.0382555.us.epil.init
  br label %._crit_edge561.us

._crit_edge561.us:                                ; preds = %._crit_edge561.us.unr-lcssa, %.lr.ph560.us.epil.preheader
  %.lcssa1679 = phi <8 x float> [ %i.lj, %._crit_edge561.us.unr-lcssa ], [ %i.lr, %.lr.ph560.us.epil.preheader ]
  %i.ls = getelementptr i8, ptr %.8649565.us, i64 %i.s
  %scevgep1096 = getelementptr i8, ptr %i.ls, i64 4
  store <8 x float> %.lcssa1679, ptr %.6614566.us, align 32, !tbaa !316
  %i.lt = getelementptr inbounds nuw i8, ptr %.6614566.us, i64 32 ; 2 uses
  %i.lu = add nuw nsw i32 %.4655564.us, 1         ; 2 uses
  %exitcond1098.not = icmp eq i32 %i.lu, %4
  br i1 %exitcond1098.not, label %._crit_edge568, label %.lr.ph567.split.us, !llvm.loop !1076

.lr.ph567.split:                                  ; preds = %.lr.ph567
  br i1 %i.g, label %.lr.ph567.split.split.us.preheader, label %.lr.ph567.split.split.preheader

.lr.ph567.split.split.preheader:                  ; preds = %.lr.ph567.split
  %scevgep1092 = getelementptr i8, ptr %.5613.lcssa, i64 32
  %i.lv = sub i32 %i.r, %.3654.lcssa
  %i.lw = zext i32 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 5
  %scevgep1093 = getelementptr i8, ptr %scevgep1092, i64 %i.lx
  br label %._crit_edge568

.lr.ph567.split.split.us.preheader:               ; preds = %.lr.ph567.split
  %i.ly = sub i32 %i.r, %.3654.lcssa
  %i.lz = zext i32 %i.ly to i64
  %i.ma = shl nuw nsw i64 %i.lz, 5                ; 2 uses
  %i.mb = add nuw nsw i64 %i.ma, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.5613.lcssa, i8 0, i64 %i.mb, i1 false), !tbaa !316
  %scevgep1094 = getelementptr i8, ptr %.5613.lcssa, i64 32
  %scevgep1095 = getelementptr i8, ptr %scevgep1094, i64 %i.ma
  br label %._crit_edge568

.lr.ph551:                                        ; preds = %.preheader446, %._crit_edge544
  %.5613550 = phi ptr [ %i.nv, %._crit_edge544 ], [ %.4612.lcssa, %.preheader446 ] ; 5 uses
  %.6647549 = phi ptr [ %.7648.lcssa, %._crit_edge544 ], [ %.4645.lcssa, %.preheader446 ] ; 4 uses
  %.3654548 = phi i32 [ %i.nw, %._crit_edge544 ], [ %.2653.lcssa, %.preheader446 ]
  br i1 %i.g, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph551
  %i.mc = load <8 x float>, ptr %.5613550, align 32, !tbaa !316
  %i.md = getelementptr inbounds nuw i8, ptr %.5613550, i64 32
  %i.me = load <8 x float>, ptr %i.md, align 32, !tbaa !316
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph551, %bb.k
  %.0376 = phi nsz <8 x float> [ %i.mc, %bb.k ], [ zeroinitializer, %.lr.ph551 ] ; 3 uses
  %storemerge724 = phi <8 x float> [ %i.me, %bb.k ], [ zeroinitializer, %.lr.ph551 ] ; 3 uses
  br i1 %i.h, label %.lr.ph543.preheader, label %._crit_edge544

.lr.ph543.preheader:                              ; preds = %bb.l
  br i1 %i.v, label %.lr.ph543.epil.preheader, label %.lr.ph543

.lr.ph543:                                        ; preds = %.lr.ph543.preheader, %.lr.ph543
  %.7648541 = phi ptr [ %i.ng, %.lr.ph543 ], [ %.6647549, %.lr.ph543.preheader ] ; 5 uses
  %.0664540 = phi ptr [ %i.nf, %.lr.ph543 ], [ %i.bh, %.lr.ph543.preheader ] ; 3 uses
  %.1377538 = phi <8 x float> [ %i.my, %.lr.ph543 ], [ %.0376, %.lr.ph543.preheader ]
  %.0378537 = phi <8 x float> [ %i.ne, %.lr.ph543 ], [ %storemerge724, %.lr.ph543.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph543 ], [ 0, %.lr.ph543.preheader ]
  %i.mf = load <8 x float>, ptr %.0664540, align 32, !tbaa !316 ; 2 uses
  %i.mg = load float, ptr %.7648541, align 4, !tbaa !39
  %i.mh = insertelement <8 x float> poison, float %i.mg, i64 0
  %i.mi = shufflevector <8 x float> %i.mh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mj = fmul fast <8 x float> %i.mi, %i.mf
  %i.mk = fadd fast <8 x float> %i.mj, %.1377538
  %i.ml = getelementptr inbounds nuw i8, ptr %.7648541, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !39
  %i.mn = insertelement <8 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <8 x float> %i.mn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mp = fmul fast <8 x float> %i.mo, %i.mf
  %i.mq = fadd fast <8 x float> %i.mp, %.0378537
  %i.mr = getelementptr inbounds nuw i8, ptr %.0664540, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %.7648541, i64 8
  %i.mt = load <8 x float>, ptr %i.mr, align 32, !tbaa !316 ; 2 uses
  %i.mu = load float, ptr %i.ms, align 4, !tbaa !39
  %i.mv = insertelement <8 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <8 x float> %i.mv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mx = fmul fast <8 x float> %i.mw, %i.mt
  %i.my = fadd fast <8 x float> %i.mx, %i.mk      ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.7648541, i64 12
  %i.na = load float, ptr %i.mz, align 4, !tbaa !39
  %i.nb = insertelement <8 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <8 x float> %i.nb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nd = fmul fast <8 x float> %i.nc, %i.mt
  %i.ne = fadd fast <8 x float> %i.nd, %i.mq      ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0664540, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.7648541, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge544.loopexit.unr-lcssa, label %.lr.ph543, !llvm.loop !1077

._crit_edge544.loopexit.unr-lcssa:                ; preds = %.lr.ph543
  br i1 %lcmp.mod.not, label %._crit_edge544.loopexit, label %.lr.ph543.epil.preheader

.lr.ph543.epil.preheader:                         ; preds = %._crit_edge544.loopexit.unr-lcssa, %.lr.ph543.preheader
  %.7648541.epil.init = phi ptr [ %.6647549, %.lr.ph543.preheader ], [ %i.ng, %._crit_edge544.loopexit.unr-lcssa ] ; 2 uses
  %.0664540.epil.init = phi ptr [ %i.bh, %.lr.ph543.preheader ], [ %i.nf, %._crit_edge544.loopexit.unr-lcssa ]
  %.1377538.epil.init = phi <8 x float> [ %.0376, %.lr.ph543.preheader ], [ %i.my, %._crit_edge544.loopexit.unr-lcssa ]
  %.0378537.epil.init = phi <8 x float> [ %storemerge724, %.lr.ph543.preheader ], [ %i.ne, %._crit_edge544.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1683)
  %i.nh = load <8 x float>, ptr %.0664540.epil.init, align 32, !tbaa !316 ; 2 uses
  %i.ni = load float, ptr %.7648541.epil.init, align 4, !tbaa !39
  %i.nj = insertelement <8 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <8 x float> %i.nj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nl = fmul fast <8 x float> %i.nk, %i.nh
  %i.nm = fadd fast <8 x float> %i.nl, %.1377538.epil.init
  %i.nn = getelementptr inbounds nuw i8, ptr %.7648541.epil.init, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !39
  %i.np = insertelement <8 x float> poison, float %i.no, i64 0
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nr = fmul fast <8 x float> %i.nq, %i.nh
  %i.ns = fadd fast <8 x float> %i.nr, %.0378537.epil.init
  br label %._crit_edge544.loopexit

._crit_edge544.loopexit:                          ; preds = %._crit_edge544.loopexit.unr-lcssa, %.lr.ph543.epil.preheader
  %.lcssa1676 = phi <8 x float> [ %i.my, %._crit_edge544.loopexit.unr-lcssa ], [ %i.nm, %.lr.ph543.epil.preheader ]
  %.lcssa1675 = phi <8 x float> [ %i.ne, %._crit_edge544.loopexit.unr-lcssa ], [ %i.ns, %.lr.ph543.epil.preheader ]
  %i.nt = getelementptr i8, ptr %.6647549, i64 %i.q
  %scevgep1090 = getelementptr i8, ptr %i.nt, i64 8
  br label %._crit_edge544

._crit_edge544:                                   ; preds = %._crit_edge544.loopexit, %bb.l
  %.0378.lcssa = phi <8 x float> [ %storemerge724, %bb.l ], [ %.lcssa1675, %._crit_edge544.loopexit ]
  %.1377.lcssa = phi <8 x float> [ %.0376, %bb.l ], [ %.lcssa1676, %._crit_edge544.loopexit ]
  %.7648.lcssa = phi ptr [ %.6647549, %bb.l ], [ %scevgep1090, %._crit_edge544.loopexit ] ; 2 uses
  store <8 x float> %.1377.lcssa, ptr %.5613550, align 32, !tbaa !316
  %i.nu = getelementptr inbounds nuw i8, ptr %.5613550, i64 32
  store <8 x float> %.0378.lcssa, ptr %i.nu, align 32, !tbaa !316
  %i.nv = getelementptr inbounds nuw i8, ptr %.5613550, i64 64 ; 2 uses
  %i.nw = add nuw nsw i32 %.3654548, 2            ; 3 uses
  %i.nx = or disjoint i32 %i.nw, 1
  %i.ny = icmp slt i32 %i.nx, %4
  br i1 %i.ny, label %.lr.ph551, label %.preheader445, !llvm.loop !1078

._crit_edge568:                                   ; preds = %._crit_edge561.us, %.lr.ph567.split.split.preheader, %.lr.ph567.split.split.us.preheader, %.preheader445
  %.6614.lcssa = phi ptr [ %.5613.lcssa, %.preheader445 ], [ %scevgep1095, %.lr.ph567.split.split.us.preheader ], [ %scevgep1093, %.lr.ph567.split.split.preheader ], [ %i.lt, %._crit_edge561.us ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1100.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1100.not, label %bb.b, label %bb.c, !llvm.loop !1079

.preheader443:                                    ; preds = %.preheader443.lr.ph, %bb.m
  %indvars.iv1123 = phi i64 [ %i.at, %.preheader443.lr.ph ], [ %indvars.iv.next1124, %bb.m ] ; 2 uses
  %.7615714 = phi ptr [ %.0608.lcssa, %.preheader443.lr.ph ], [ %.13.lcssa, %bb.m ]
  %i.nz = mul nsw i64 %indvars.iv1123, %i.av
  br label %bb.n

.preheader438.loopexit:                           ; preds = %bb.m
  %i.oa = trunc nuw nsw i64 %indvars.iv.next1124 to i32
  br label %.preheader438

.preheader438:                                    ; preds = %.preheader438.loopexit, %.preheader444
  %.1636.lcssa = phi i32 [ %.0635.lcssa, %.preheader444 ], [ %i.oa, %.preheader438.loopexit ] ; 3 uses
  %.7615.lcssa = phi ptr [ %.0608.lcssa, %.preheader444 ], [ %.13.lcssa, %.preheader438.loopexit ] ; 2 uses
  %i.ob = or disjoint i32 %.1636.lcssa, 1
  %i.oc = icmp slt i32 %i.ob, %3
  br i1 %i.oc, label %.preheader437.lr.ph, label %.preheader432

.preheader437.lr.ph:                              ; preds = %.preheader438
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.oh = icmp sgt i32 %4, 11
  %i.oi = icmp eq i32 %5, 0                       ; 5 uses
  %i.oj = icmp sgt i32 %6, 0                      ; 5 uses
  %i.ok = add i32 %4, -12                         ; 2 uses
  %i.ol = urem i32 %i.ok, 12
  %i.om = sub nuw i32 %i.ok, %i.ol
  %i.on = add i32 %i.om, 12
  %i.oo = add i32 %6, -1
  %i.op = zext i32 %i.oo to i64                   ; 4 uses
  %i.oq = shl nuw nsw i64 %i.op, 5
  %i.or = shl nuw nsw i64 %i.op, 4
  %i.os = shl nuw nsw i64 %i.op, 3
  %i.ot = shl nuw nsw i64 %i.op, 2
  %i.ou = zext nneg i32 %.1636.lcssa to i64
  %i.ov = sext i32 %3 to i64
  %i.ow = sext i32 %6 to i64
  %wide.trip.count1139 = zext nneg i32 %2 to i64
  %invariant.op1314 = add nsw i64 %i.ov, -1
  %xtraiter1703 = and i32 %6, 1
  %i.ox = icmp eq i32 %6, 1
  %unroll_iter1709 = and i32 %6, 2147483646
  %lcmp.mod1705.not = icmp eq i32 %xtraiter1703, 0
  %lcmp.mod1708 = trunc i32 %6 to i1
  %i.oy = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check1446 = icmp ult i32 %6, 4
  %n.vec1448 = and i64 %i.oy, 2147483644          ; 4 uses
  %i.oz = trunc nuw nsw i64 %n.vec1448 to i32
  %i.pa = shl nuw nsw i64 %n.vec1448, 3           ; 2 uses
  %cmp.n1465 = icmp eq i64 %n.vec1448, %i.oy
  %i.pb = zext nneg i32 %6 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %6, 8
  %n.vec = and i64 %i.pb, 2147483640              ; 5 uses
  %i.pc = trunc nuw nsw i64 %n.vec to i32
  %i.pd = shl nuw nsw i64 %n.vec, 3
  %i.pe = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.pb
  br label %.preheader437

bb.m:                                             ; preds = %._crit_edge703
  %indvars.iv.next1124 = add nuw nsw i64 %indvars.iv1123, 4 ; 3 uses
  %i.pf = icmp slt i64 %indvars.iv.next1124, %invariant.op
  br i1 %i.pf, label %.preheader443, label %.preheader438.loopexit, !llvm.loop !1080

bb.n:                                             ; preds = %.preheader443, %._crit_edge703
  %indvars.iv1118 = phi i64 [ 0, %.preheader443 ], [ %indvars.iv.next1119, %._crit_edge703 ] ; 3 uses
  %.8616712 = phi ptr [ %.7615714, %.preheader443 ], [ %.13.lcssa, %._crit_edge703 ] ; 2 uses
  %i.pg = load ptr, ptr %0, align 8, !tbaa !18
  %i.ph = load i32, ptr %i.ab, align 4, !tbaa !75
  %i.pi = sext i32 %i.ph to i64
  %i.pj = mul nsw i64 %indvars.iv1118, %i.pi
  %i.pk = load i64, ptr %i.ac, align 8, !tbaa !65
  %i.pl = mul i64 %i.pj, %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pl
  %i.pn = getelementptr inbounds [4 x i8], ptr %i.pm, i64 %i.nz ; 7 uses
  %i.po = load ptr, ptr %1, align 8, !tbaa !18
  %i.pp = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.pq = sext i32 %i.pp to i64
  %i.pr = mul nsw i64 %indvars.iv1118, %i.pq
  %i.ps = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.pt = mul i64 %i.pr, %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pt ; 2 uses
  br i1 %i.af, label %.lr.ph616, label %.preheader442

.preheader442:                                    ; preds = %._crit_edge598, %bb.n
  %.0680.lcssa = phi i32 [ 0, %bb.n ], [ %i.al, %._crit_edge598 ] ; 3 uses
  %.0670.lcssa = phi ptr [ %i.pu, %bb.n ], [ %.1671.lcssa, %._crit_edge598 ] ; 2 uses
  %.9617.lcssa = phi ptr [ %.8616712, %bb.n ], [ %i.uc, %._crit_edge598 ] ; 2 uses
  %i.pv = add nuw nsw i32 %.0680.lcssa, 7
  %i.pw = icmp slt i32 %i.pv, %4
  br i1 %i.pw, label %.lr.ph646, label %.preheader441

.lr.ph616:                                        ; preds = %bb.n, %._crit_edge598
  %.9617614 = phi ptr [ %i.uc, %._crit_edge598 ], [ %.8616712, %bb.n ] ; 25 uses
  %.0670613 = phi ptr [ %.1671.lcssa, %._crit_edge598 ], [ %i.pu, %bb.n ] ; 2 uses
  %.0680612 = phi i32 [ %i.ud, %._crit_edge598 ], [ 0, %bb.n ] ; 2 uses
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph616
  %i.px = load <4 x float>, ptr %.9617614, align 16, !tbaa !316
  %i.py = getelementptr inbounds nuw i8, ptr %.9617614, i64 16
  %i.pz = load <4 x float>, ptr %i.py, align 16, !tbaa !316
  %i.qa = getelementptr inbounds nuw i8, ptr %.9617614, i64 32
  %i.qb = load <4 x float>, ptr %i.qa, align 16, !tbaa !316
  %i.qc = getelementptr inbounds nuw i8, ptr %.9617614, i64 48
  %i.qd = load <4 x float>, ptr %i.qc, align 16, !tbaa !316
  %i.qe = getelementptr inbounds nuw i8, ptr %.9617614, i64 64
  %i.qf = load <4 x float>, ptr %i.qe, align 16, !tbaa !316
  %i.qg = getelementptr inbounds nuw i8, ptr %.9617614, i64 80
  %i.qh = load <4 x float>, ptr %i.qg, align 16, !tbaa !316
  %i.qi = getelementptr inbounds nuw i8, ptr %.9617614, i64 96
  %i.qj = load <4 x float>, ptr %i.qi, align 16, !tbaa !316
  %i.qk = getelementptr inbounds nuw i8, ptr %.9617614, i64 112
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !tbaa !316
  %i.qm = getelementptr inbounds nuw i8, ptr %.9617614, i64 128
  %i.qn = load <4 x float>, ptr %i.qm, align 16, !tbaa !316
  %i.qo = getelementptr inbounds nuw i8, ptr %.9617614, i64 144
  %i.qp = load <4 x float>, ptr %i.qo, align 16, !tbaa !316
  %i.qq = getelementptr inbounds nuw i8, ptr %.9617614, i64 160
  %i.qr = load <4 x float>, ptr %i.qq, align 16, !tbaa !316
  %i.qs = getelementptr inbounds nuw i8, ptr %.9617614, i64 176
  %i.qt = load <4 x float>, ptr %i.qs, align 16, !tbaa !316
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph616, %bb.o
  %.0410 = phi nsz <4 x float> [ %i.qr, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0408 = phi nsz <4 x float> [ %i.qp, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0406 = phi nsz <4 x float> [ %i.qn, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0404 = phi nsz <4 x float> [ %i.ql, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0402 = phi nsz <4 x float> [ %i.qj, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0400 = phi nsz <4 x float> [ %i.qh, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0398 = phi nsz <4 x float> [ %i.qf, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0389 = phi nsz <4 x float> [ %i.qd, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0387 = phi nsz <4 x float> [ %i.qb, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0385 = phi nsz <4 x float> [ %i.pz, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %.0383 = phi nsz <4 x float> [ %i.px, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  %storemerge722 = phi <4 x float> [ %i.qt, %bb.o ], [ zeroinitializer, %.lr.ph616 ] ; 2 uses
  br i1 %i.ah, label %.lr.ph597, label %._crit_edge598

.lr.ph597:                                        ; preds = %bb.p, %.lr.ph597
  %.1671595 = phi ptr [ %i.tp, %.lr.ph597 ], [ %.0670613, %bb.p ] ; 13 uses
  %.0685594 = phi ptr [ %i.to, %.lr.ph597 ], [ %i.pn, %bb.p ] ; 2 uses
  %.0687593 = phi i32 [ %i.tq, %.lr.ph597 ], [ 0, %bb.p ]
  %.1384592 = phi <4 x float> [ %i.qz, %.lr.ph597 ], [ %.0383, %bb.p ]
  %.1386591 = phi <4 x float> [ %i.rf, %.lr.ph597 ], [ %.0385, %bb.p ]
  %.1388590 = phi <4 x float> [ %i.rl, %.lr.ph597 ], [ %.0387, %bb.p ]
  %.1390589 = phi <4 x float> [ %i.rr, %.lr.ph597 ], [ %.0389, %bb.p ]
  %.1399588 = phi <4 x float> [ %i.rx, %.lr.ph597 ], [ %.0398, %bb.p ]
  %.1401587 = phi <4 x float> [ %i.sd, %.lr.ph597 ], [ %.0400, %bb.p ]
  %.1403586 = phi <4 x float> [ %i.sj, %.lr.ph597 ], [ %.0402, %bb.p ]
  %.1405585 = phi <4 x float> [ %i.sp, %.lr.ph597 ], [ %.0404, %bb.p ]
  %.1407584 = phi <4 x float> [ %i.sv, %.lr.ph597 ], [ %.0406, %bb.p ]
  %.1409583 = phi <4 x float> [ %i.tb, %.lr.ph597 ], [ %.0408, %bb.p ]
  %.1411582 = phi <4 x float> [ %i.th, %.lr.ph597 ], [ %.0410, %bb.p ]
  %.0412581 = phi <4 x float> [ %i.tn, %.lr.ph597 ], [ %storemerge722, %bb.p ]
  %i.qu = load <4 x float>, ptr %.0685594, align 16, !tbaa !316 ; 12 uses
  %i.qv = load float, ptr %.1671595, align 4, !tbaa !39
  %i.qw = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = fmul fast <4 x float> %i.qx, %i.qu
  %i.qz = fadd fast <4 x float> %i.qy, %.1384592  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.1671595, i64 4
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !39
  %i.rc = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = fmul fast <4 x float> %i.rd, %i.qu
  %i.rf = fadd fast <4 x float> %i.re, %.1386591  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.1671595, i64 8
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !39
  %i.ri = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rk = fmul fast <4 x float> %i.rj, %i.qu
  %i.rl = fadd fast <4 x float> %i.rk, %.1388590  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.1671595, i64 12
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !39
  %i.ro = insertelement <4 x float> poison, float %i.rn, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = fmul fast <4 x float> %i.rp, %i.qu
  %i.rr = fadd fast <4 x float> %i.rq, %.1390589  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.1671595, i64 16
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !39
  %i.ru = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rw = fmul fast <4 x float> %i.rv, %i.qu
  %i.rx = fadd fast <4 x float> %i.rw, %.1399588  ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.1671595, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !39
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sc = fmul fast <4 x float> %i.sb, %i.qu
  %i.sd = fadd fast <4 x float> %i.sc, %.1401587  ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.1671595, i64 24
  %i.sf = load float, ptr %i.se, align 4, !tbaa !39
  %i.sg = insertelement <4 x float> poison, float %i.sf, i64 0
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.si = fmul fast <4 x float> %i.sh, %i.qu
  %i.sj = fadd fast <4 x float> %i.si, %.1403586  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1671595, i64 28
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !39
  %i.sm = insertelement <4 x float> poison, float %i.sl, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = fmul fast <4 x float> %i.sn, %i.qu
  %i.sp = fadd fast <4 x float> %i.so, %.1405585  ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.1671595, i64 32
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = fmul fast <4 x float> %i.st, %i.qu
  %i.sv = fadd fast <4 x float> %i.su, %.1407584  ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.1671595, i64 36
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !39
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = fmul fast <4 x float> %i.sz, %i.qu
  %i.tb = fadd fast <4 x float> %i.ta, %.1409583  ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.1671595, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !39
  %i.te = insertelement <4 x float> poison, float %i.td, i64 0
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tg = fmul fast <4 x float> %i.tf, %i.qu
  %i.th = fadd fast <4 x float> %i.tg, %.1411582  ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.1671595, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !39
  %i.tk = insertelement <4 x float> poison, float %i.tj, i64 0
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tm = fmul fast <4 x float> %i.tl, %i.qu
  %i.tn = fadd fast <4 x float> %i.tm, %.0412581  ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0685594, i64 16
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.aae = fmul fast <4 x float> %i.aad, %i.aaa
  %i.aaf = fadd fast <4 x float> %i.aae, %i.zx    ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0712691.us, i64 64 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.9679693.us, i64 16 ; 2 uses
  %niter1702.next.3 = add nuw nsw i32 %niter1702, 4 ; 2 uses
  %niter1702.ncmp.3 = icmp eq i32 %niter1702.next.3, %unroll_iter1701
  br i1 %niter1702.ncmp.3, label %._crit_edge696.us.unr-lcssa, label %.lr.ph695.us, !llvm.loop !1087

._crit_edge696.us.unr-lcssa:                      ; preds = %.lr.ph695.us
  br i1 %lcmp.mod1698.not, label %._crit_edge696.us, label %.lr.ph695.us.epil.preheader

.lr.ph695.us.epil.preheader:                      ; preds = %._crit_edge696.us.unr-lcssa, %.lr.ph695.us.preheader
  %.9679693.us.epil.init = phi ptr [ %.8678700.us, %.lr.ph695.us.preheader ], [ %i.aah, %._crit_edge696.us.unr-lcssa ]
  %.0712691.us.epil.init = phi ptr [ %i.pn, %.lr.ph695.us.preheader ], [ %i.aag, %._crit_edge696.us.unr-lcssa ]
  %.0374690.us.epil.init = phi <4 x float> [ %.0374690.us.ph, %.lr.ph695.us.preheader ], [ %i.aaf, %._crit_edge696.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1700)
  br label %.lr.ph695.us.epil

.lr.ph695.us.epil:                                ; preds = %.lr.ph695.us.epil, %.lr.ph695.us.epil.preheader
  %.9679693.us.epil = phi ptr [ %i.aap, %.lr.ph695.us.epil ], [ %.9679693.us.epil.init, %.lr.ph695.us.epil.preheader ] ; 2 uses
  %.0712691.us.epil = phi ptr [ %i.aao, %.lr.ph695.us.epil ], [ %.0712691.us.epil.init, %.lr.ph695.us.epil.preheader ] ; 2 uses
  %.0374690.us.epil = phi <4 x float> [ %i.aan, %.lr.ph695.us.epil ], [ %.0374690.us.epil.init, %.lr.ph695.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph695.us.epil ], [ 0, %.lr.ph695.us.epil.preheader ]
  %i.aai = load <4 x float>, ptr %.0712691.us.epil, align 16, !tbaa !316
  %i.aaj = load float, ptr %.9679693.us.epil, align 4, !tbaa !39
  %i.aak = insertelement <4 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aam = fmul fast <4 x float> %i.aal, %i.aai
  %i.aan = fadd fast <4 x float> %i.aam, %.0374690.us.epil ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0712691.us.epil, i64 16
  %i.aap = getelementptr inbounds nuw i8, ptr %.9679693.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1697
  br i1 %epil.iter.cmp.not, label %._crit_edge696.us, label %.lr.ph695.us.epil, !llvm.loop !1088

._crit_edge696.us:                                ; preds = %.lr.ph695.us.epil, %._crit_edge696.us.unr-lcssa
  %.lcssa1643 = phi <4 x float> [ %i.aaf, %._crit_edge696.us.unr-lcssa ], [ %i.aan, %.lr.ph695.us.epil ]
  %i.aaq = getelementptr i8, ptr %.8678700.us, i64 %i.as
  %scevgep1115 = getelementptr i8, ptr %i.aaq, i64 4
  store <4 x float> %.lcssa1643, ptr %.13701.us, align 16, !tbaa !316
  %i.aar = getelementptr inbounds nuw i8, ptr %.13701.us, i64 16 ; 2 uses
  %i.aas = add nuw nsw i32 %.4684699.us, 1        ; 2 uses
  %exitcond1117.not = icmp eq i32 %i.aas, %4
  br i1 %exitcond1117.not, label %._crit_edge703, label %.lr.ph702.split.us, !llvm.loop !1089

.lr.ph702.split:                                  ; preds = %.lr.ph702
  br i1 %i.ag, label %.lr.ph702.split.split.us.preheader, label %.lr.ph702.split.split.preheader

.lr.ph702.split.split.preheader:                  ; preds = %.lr.ph702.split
  %scevgep1111 = getelementptr i8, ptr %.12.lcssa, i64 16
  %i.aat = sub i32 %i.ar, %.3683.lcssa
  %i.aau = zext i32 %i.aat to i64
  %i.aav = shl nuw nsw i64 %i.aau, 4
  %scevgep1112 = getelementptr i8, ptr %scevgep1111, i64 %i.aav
  br label %._crit_edge703

.lr.ph702.split.split.us.preheader:               ; preds = %.lr.ph702.split
  %i.aaw = sub i32 %i.ar, %.3683.lcssa
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = shl nuw nsw i64 %i.aax, 4              ; 2 uses
  %i.aaz = add nuw nsw i64 %i.aay, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.12.lcssa, i8 0, i64 %i.aaz, i1 false), !tbaa !316
  %scevgep1113 = getelementptr i8, ptr %.12.lcssa, i64 16
  %scevgep1114 = getelementptr i8, ptr %scevgep1113, i64 %i.aay
  br label %._crit_edge703

.lr.ph686:                                        ; preds = %.preheader440, %._crit_edge679
  %.12685 = phi ptr [ %i.act, %._crit_edge679 ], [ %.11.lcssa, %.preheader440 ] ; 5 uses
  %.6676684 = phi ptr [ %.7677.lcssa, %._crit_edge679 ], [ %.4674.lcssa, %.preheader440 ] ; 4 uses
  %.3683683 = phi i32 [ %i.acu, %._crit_edge679 ], [ %.2682.lcssa, %.preheader440 ]
  br i1 %i.ag, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph686
  %i.aba = load <4 x float>, ptr %.12685, align 16, !tbaa !316
  %i.abb = getelementptr inbounds nuw i8, ptr %.12685, i64 16
  %i.abc = load <4 x float>, ptr %i.abb, align 16, !tbaa !316
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph686, %bb.v
  %.0380 = phi nsz <4 x float> [ %i.aba, %bb.v ], [ zeroinitializer, %.lr.ph686 ] ; 3 uses
  %storemerge719 = phi <4 x float> [ %i.abc, %bb.v ], [ zeroinitializer, %.lr.ph686 ] ; 3 uses
  br i1 %i.ah, label %.lr.ph678.preheader, label %._crit_edge679

.lr.ph678.preheader:                              ; preds = %bb.w
  br i1 %i.aw, label %.lr.ph678.epil.preheader, label %.lr.ph678

.lr.ph678:                                        ; preds = %.lr.ph678.preheader, %.lr.ph678
  %.7677676 = phi ptr [ %i.ace, %.lr.ph678 ], [ %.6676684, %.lr.ph678.preheader ] ; 5 uses
  %.0692675 = phi ptr [ %i.acd, %.lr.ph678 ], [ %i.pn, %.lr.ph678.preheader ] ; 3 uses
  %.0379673 = phi <4 x float> [ %i.acc, %.lr.ph678 ], [ %storemerge719, %.lr.ph678.preheader ]
  %.1381672 = phi <4 x float> [ %i.abw, %.lr.ph678 ], [ %.0380, %.lr.ph678.preheader ]
  %niter1696 = phi i32 [ %niter1696.next.1, %.lr.ph678 ], [ 0, %.lr.ph678.preheader ]
  %i.abd = load <4 x float>, ptr %.0692675, align 16, !tbaa !316 ; 2 uses
  %i.abe = load float, ptr %.7677676, align 4, !tbaa !39
  %i.abf = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abg = shufflevector <4 x float> %i.abf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abh = fmul fast <4 x float> %i.abg, %i.abd
  %i.abi = fadd fast <4 x float> %i.abh, %.1381672
  %i.abj = getelementptr inbounds nuw i8, ptr %.7677676, i64 4
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !39
  %i.abl = insertelement <4 x float> poison, float %i.abk, i64 0
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abn = fmul fast <4 x float> %i.abm, %i.abd
  %i.abo = fadd fast <4 x float> %i.abn, %.0379673
  %i.abp = getelementptr inbounds nuw i8, ptr %.0692675, i64 16
  %i.abq = getelementptr inbounds nuw i8, ptr %.7677676, i64 8
  %i.abr = load <4 x float>, ptr %i.abp, align 16, !tbaa !316 ; 2 uses
  %i.abs = load float, ptr %i.abq, align 4, !tbaa !39
  %i.abt = insertelement <4 x float> poison, float %i.abs, i64 0
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abv = fmul fast <4 x float> %i.abu, %i.abr
  %i.abw = fadd fast <4 x float> %i.abv, %i.abi   ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.7677676, i64 12
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !39
  %i.abz = insertelement <4 x float> poison, float %i.aby, i64 0
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acb = fmul fast <4 x float> %i.aca, %i.abr
  %i.acc = fadd fast <4 x float> %i.acb, %i.abo   ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0692675, i64 32 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.7677676, i64 16 ; 2 uses
  %niter1696.next.1 = add nuw nsw i32 %niter1696, 2 ; 2 uses
  %niter1696.ncmp.1 = icmp eq i32 %niter1696.next.1, %unroll_iter1695
  br i1 %niter1696.ncmp.1, label %._crit_edge679.loopexit.unr-lcssa, label %.lr.ph678, !llvm.loop !1090

._crit_edge679.loopexit.unr-lcssa:                ; preds = %.lr.ph678
  br i1 %lcmp.mod1691.not, label %._crit_edge679.loopexit, label %.lr.ph678.epil.preheader

.lr.ph678.epil.preheader:                         ; preds = %._crit_edge679.loopexit.unr-lcssa, %.lr.ph678.preheader
  %.7677676.epil.init = phi ptr [ %.6676684, %.lr.ph678.preheader ], [ %i.ace, %._crit_edge679.loopexit.unr-lcssa ] ; 2 uses
  %.0692675.epil.init = phi ptr [ %i.pn, %.lr.ph678.preheader ], [ %i.acd, %._crit_edge679.loopexit.unr-lcssa ]
  %.0379673.epil.init = phi <4 x float> [ %storemerge719, %.lr.ph678.preheader ], [ %i.acc, %._crit_edge679.loopexit.unr-lcssa ]
  %.1381672.epil.init = phi <4 x float> [ %.0380, %.lr.ph678.preheader ], [ %i.abw, %._crit_edge679.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1694)
  %i.acf = load <4 x float>, ptr %.0692675.epil.init, align 16, !tbaa !316 ; 2 uses
  %i.acg = load float, ptr %.7677676.epil.init, align 4, !tbaa !39
  %i.ach = insertelement <4 x float> poison, float %i.acg, i64 0
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acj = fmul fast <4 x float> %i.aci, %i.acf
  %i.ack = fadd fast <4 x float> %i.acj, %.1381672.epil.init
  %i.acl = getelementptr inbounds nuw i8, ptr %.7677676.epil.init, i64 4
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !39
  %i.acn = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acp = fmul fast <4 x float> %i.aco, %i.acf
  %i.acq = fadd fast <4 x float> %i.acp, %.0379673.epil.init
  br label %._crit_edge679.loopexit

._crit_edge679.loopexit:                          ; preds = %._crit_edge679.loopexit.unr-lcssa, %.lr.ph678.epil.preheader
  %.lcssa1640 = phi <4 x float> [ %i.abw, %._crit_edge679.loopexit.unr-lcssa ], [ %i.ack, %.lr.ph678.epil.preheader ]
  %.lcssa1639 = phi <4 x float> [ %i.acc, %._crit_edge679.loopexit.unr-lcssa ], [ %i.acq, %.lr.ph678.epil.preheader ]
  %i.acr = getelementptr i8, ptr %.6676684, i64 %i.aq
  %scevgep1109 = getelementptr i8, ptr %i.acr, i64 8
  br label %._crit_edge679

._crit_edge679:                                   ; preds = %._crit_edge679.loopexit, %bb.w
  %.1381.lcssa = phi <4 x float> [ %.0380, %bb.w ], [ %.lcssa1640, %._crit_edge679.loopexit ]
  %.0379.lcssa = phi <4 x float> [ %storemerge719, %bb.w ], [ %.lcssa1639, %._crit_edge679.loopexit ]
  %.7677.lcssa = phi ptr [ %.6676684, %bb.w ], [ %scevgep1109, %._crit_edge679.loopexit ] ; 2 uses
  store <4 x float> %.1381.lcssa, ptr %.12685, align 16, !tbaa !316
  %i.acs = getelementptr inbounds nuw i8, ptr %.12685, i64 16
  store <4 x float> %.0379.lcssa, ptr %i.acs, align 16, !tbaa !316
  %i.act = getelementptr inbounds nuw i8, ptr %.12685, i64 32 ; 2 uses
  %i.acu = add nuw nsw i32 %.3683683, 2           ; 3 uses
  %i.acv = or disjoint i32 %i.acu, 1
  %i.acw = icmp slt i32 %i.acv, %4
  br i1 %i.acw, label %.lr.ph686, label %.preheader439, !llvm.loop !1091

._crit_edge703:                                   ; preds = %._crit_edge696.us, %.lr.ph702.split.split.preheader, %.lr.ph702.split.split.us.preheader, %.preheader439
  %.13.lcssa = phi ptr [ %.12.lcssa, %.preheader439 ], [ %scevgep1114, %.lr.ph702.split.split.us.preheader ], [ %scevgep1112, %.lr.ph702.split.split.preheader ], [ %i.aar, %._crit_edge696.us ] ; 3 uses
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 1 ; 2 uses
  %exitcond1122.not = icmp eq i64 %indvars.iv.next1119, %wide.trip.count1121
  br i1 %exitcond1122.not, label %bb.m, label %bb.n, !llvm.loop !1092

.preheader437:                                    ; preds = %.preheader437.lr.ph, %bb.x
  %indvars.iv1141 = phi i64 [ %i.ou, %.preheader437.lr.ph ], [ %indvars.iv.next1142, %bb.x ] ; 2 uses
  %.14826 = phi ptr [ %.7615.lcssa, %.preheader437.lr.ph ], [ %.20.lcssa, %bb.x ]
  %i.acx = mul nsw i64 %indvars.iv1141, %i.ow
  br label %bb.y

.preheader432.loopexit:                           ; preds = %bb.x
  %i.acy = trunc nsw i64 %indvars.iv.next1142 to i32
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.loopexit, %.preheader438
  %.2637.lcssa = phi i32 [ %.1636.lcssa, %.preheader438 ], [ %i.acy, %.preheader432.loopexit ] ; 2 uses
  %.14.lcssa = phi ptr [ %.7615.lcssa, %.preheader438 ], [ %.20.lcssa, %.preheader432.loopexit ]
  %i.acz = icmp slt i32 %.2637.lcssa, %3
  br i1 %i.acz, label %.preheader431.lr.ph, label %._crit_edge933

.preheader431.lr.ph:                              ; preds = %.preheader432
  %i.ada = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.add = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ade = icmp sgt i32 %4, 11
  %i.adf = icmp eq i32 %5, 0                      ; 6 uses
  %i.adg = icmp sgt i32 %6, 0                     ; 5 uses
  %i.adh = add i32 %4, -12                        ; 2 uses
  %i.adi = urem i32 %i.adh, 12
  %i.adj = sub nuw i32 %i.adh, %i.adi
  %i.adk = add i32 %i.adj, 12
  %i.adl = add i32 %6, -1
  %i.adm = zext i32 %i.adl to i64                 ; 4 uses
  %i.adn = shl nuw nsw i64 %i.adm, 5
  %i.ado = shl nuw nsw i64 %i.adm, 4
  %i.adp = shl nuw nsw i64 %i.adm, 3
  %i.adq = shl nuw nsw i64 %i.adm, 2
  %i.adr = sext i32 %.2637.lcssa to i64
  %i.ads = sext i32 %6 to i64
  %wide.trip.count1168 = sext i32 %3 to i64
  %wide.trip.count1163 = zext nneg i32 %2 to i64
  %i.adt = zext i32 %6 to i64                     ; 7 uses
  %i.adu = add i32 %6, -1                         ; 3 uses
  %xtraiter1711 = and i32 %6, 1
  %i.adv = icmp eq i32 %i.adu, 0
  %unroll_iter1719 = and i32 %6, 2147483646
  %lcmp.mod1713.not = icmp eq i32 %xtraiter1711, 0
  %lcmp.mod1718 = trunc i32 %6 to i1
  %xtraiter1721 = and i32 %6, 1
  %i.adw = icmp eq i32 %i.adu, 0
  %unroll_iter1727 = and i32 %6, 2147483646
  %lcmp.mod1723.not = icmp eq i32 %xtraiter1721, 0
  %lcmp.mod1726 = trunc i32 %6 to i1
  %xtraiter1729 = and i32 %6, 3                   ; 3 uses
  %i.adx = icmp ult i32 %i.adu, 3
  %unroll_iter1734 = and i32 %6, 2147483644
  %lcmp.mod1731.not = icmp eq i32 %xtraiter1729, 0
  %lcmp.mod1733 = icmp ne i32 %xtraiter1729, 0
  %min.iters.check1518 = icmp ult i32 %6, 8
  %n.vec1520 = and i64 %i.adt, 2147483640         ; 5 uses
  %i.ady = trunc nuw nsw i64 %n.vec1520 to i32
  %i.adz = shl nuw nsw i64 %n.vec1520, 2
  %i.aea = shl nuw nsw i64 %n.vec1520, 3
  %cmp.n1542 = icmp eq i64 %n.vec1520, %i.adt
  %min.iters.check1474 = icmp ult i32 %6, 8
  %min.iters.check1475 = icmp ult i32 %6, 32
  %i.aeb = and i64 %i.adt, 24
  %n.vec1477 = and i64 %i.adt, 2147483616         ; 5 uses
  %i.aec = trunc nuw nsw i64 %n.vec1477 to i32
  %i.aed = shl nuw nsw i64 %n.vec1477, 2          ; 2 uses
  %cmp.n1499 = icmp eq i64 %n.vec1477, %i.adt
  %min.epilog.iters.check = icmp eq i64 %i.aeb, 0
  %n.vec1504 = and i64 %i.adt, 2147483640         ; 4 uses
  %i.aee = trunc nuw nsw i64 %n.vec1504 to i32
  %i.aef = shl nuw nsw i64 %n.vec1504, 2          ; 2 uses
  %cmp.n1512 = icmp eq i64 %n.vec1504, %i.adt
  br label %.preheader431

bb.x:                                             ; preds = %._crit_edge821
  %indvars.iv.next1142 = add nuw nsw i64 %indvars.iv1141, 2 ; 3 uses
  %i.aeg = icmp slt i64 %indvars.iv.next1142, %invariant.op1314
  br i1 %i.aeg, label %.preheader437, label %.preheader432.loopexit, !llvm.loop !1093

bb.y:                                             ; preds = %.preheader437, %._crit_edge821
  %indvars.iv1136 = phi i64 [ 0, %.preheader437 ], [ %indvars.iv.next1137, %._crit_edge821 ] ; 3 uses
  %.15824 = phi ptr [ %.14826, %.preheader437 ], [ %.20.lcssa, %._crit_edge821 ] ; 2 uses
  %i.aeh = load ptr, ptr %0, align 8, !tbaa !18
  %i.aei = load i32, ptr %i.od, align 4, !tbaa !75
  %i.aej = sext i32 %i.aei to i64
  %i.aek = mul nsw i64 %indvars.iv1136, %i.aej
  %i.ael = load i64, ptr %i.oe, align 8, !tbaa !65
  %i.aem = mul i64 %i.aek, %i.ael
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aem
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.aen, i64 %i.acx ; 11 uses
  %i.aep = load ptr, ptr %1, align 8, !tbaa !18
  %i.aeq = load i32, ptr %i.of, align 4, !tbaa !75
  %i.aer = sext i32 %i.aeq to i64
  %i.aes = mul nsw i64 %indvars.iv1136, %i.aer
  %i.aet = load i64, ptr %i.og, align 8, !tbaa !65
  %i.aeu = mul i64 %i.aes, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aeu ; 2 uses
  br i1 %i.oh, label %.lr.ph740, label %.preheader436

.preheader436:                                    ; preds = %._crit_edge728, %bb.y
  %.0699.lcssa = phi ptr [ %i.aev, %bb.y ], [ %.1700.lcssa, %._crit_edge728 ] ; 2 uses
  %.0694.lcssa = phi i32 [ 0, %bb.y ], [ %i.on, %._crit_edge728 ] ; 3 uses
  %.16.lcssa = phi ptr [ %.15824, %bb.y ], [ %i.ahb, %._crit_edge728 ] ; 2 uses
  %i.aew = add nuw nsw i32 %.0694.lcssa, 7
  %i.aex = icmp slt i32 %i.aew, %4
  br i1 %i.aex, label %.lr.ph762, label %.preheader435

.lr.ph740:                                        ; preds = %bb.y, %._crit_edge728
  %.16738 = phi ptr [ %i.ahb, %._crit_edge728 ], [ %.15824, %bb.y ] ; 13 uses
  %.0694737 = phi i32 [ %i.ahc, %._crit_edge728 ], [ 0, %bb.y ] ; 2 uses
  %.0699736 = phi ptr [ %.1700.lcssa, %._crit_edge728 ], [ %i.aev, %bb.y ] ; 2 uses
  br i1 %i.oi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph740
  %i.aey = load <4 x float>, ptr %.16738, align 1, !tbaa !316 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.16738, i64 16
  %i.afa = load <4 x float>, ptr %i.aez, align 1, !tbaa !316 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %.16738, i64 32
  %i.afc = load <4 x float>, ptr %i.afb, align 1, !tbaa !316 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.16738, i64 48
  %i.afe = load <4 x float>, ptr %i.afd, align 1, !tbaa !316 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.16738, i64 64
  %i.afg = load <4 x float>, ptr %i.aff, align 1, !tbaa !316 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.16738, i64 80
  %i.afi = load <4 x float>, ptr %i.afh, align 1, !tbaa !316 ; 2 uses
  %i.afj = shufflevector <4 x float> %i.aey, <4 x float> %i.afa, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.afk = shufflevector <4 x float> %i.afc, <4 x float> %i.afe, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.afl = shufflevector <4 x float> %i.afg, <4 x float> %i.afi, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.afm = shufflevector <4 x float> %i.aey, <4 x float> %i.afa, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.afn = shufflevector <4 x float> %i.afc, <4 x float> %i.afe, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.afo = shufflevector <4 x float> %i.afg, <4 x float> %i.afi, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph740, %bb.z
  %.0368 = phi nsz <4 x float> [ %i.afj, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  %.0366 = phi nsz <4 x float> [ %i.afk, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  %.0364 = phi nsz <4 x float> [ %i.afl, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  %.0362 = phi nsz <4 x float> [ %i.afm, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  %.0360 = phi nsz <4 x float> [ %i.afn, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  %storemerge717 = phi <4 x float> [ %i.afo, %bb.z ], [ zeroinitializer, %.lr.ph740 ] ; 2 uses
  br i1 %i.oj, label %.lr.ph727, label %._crit_edge728

.lr.ph727:                                        ; preds = %bb.aa, %.lr.ph727
  %.0686725 = phi i32 [ %i.agp, %.lr.ph727 ], [ 0, %bb.aa ]
  %.0693724 = phi ptr [ %i.agn, %.lr.ph727 ], [ %i.aeo, %bb.aa ] ; 3 uses
  %.1700723 = phi ptr [ %i.ago, %.lr.ph727 ], [ %.0699736, %bb.aa ] ; 4 uses
  %.0359722 = phi <4 x float> [ %i.agm, %.lr.ph727 ], [ %storemerge717, %bb.aa ]
  %.1361721 = phi <4 x float> [ %i.agk, %.lr.ph727 ], [ %.0360, %bb.aa ]
  %.1363720 = phi <4 x float> [ %i.agi, %.lr.ph727 ], [ %.0362, %bb.aa ]
  %.1365719 = phi <4 x float> [ %i.agg, %.lr.ph727 ], [ %.0364, %bb.aa ]
  %.1367718 = phi <4 x float> [ %i.age, %.lr.ph727 ], [ %.0366, %bb.aa ]
  %.1369717 = phi <4 x float> [ %i.agc, %.lr.ph727 ], [ %.0368, %bb.aa ]
  %i.afp = load float, ptr %.0693724, align 4, !tbaa !39
  %i.afq = insertelement <4 x float> poison, float %i.afp, i64 0
  %i.afr = shufflevector <4 x float> %i.afq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0693724, i64 4
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !39
  %i.afu = insertelement <4 x float> poison, float %i.aft, i64 0
  %i.afv = shufflevector <4 x float> %i.afu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.afw = load <4 x float>, ptr %.1700723, align 16, !tbaa !316 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.1700723, i64 16
  %i.afy = load <4 x float>, ptr %i.afx, align 16, !tbaa !316 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.1700723, i64 32
  %i.aga = load <4 x float>, ptr %i.afz, align 16, !tbaa !316 ; 2 uses
  %i.agb = fmul fast <4 x float> %i.afr, %i.afw
  %i.agc = fadd fast <4 x float> %i.agb, %.1369717 ; 2 uses
  %i.agd = fmul fast <4 x float> %i.afy, %i.afr
  %i.age = fadd fast <4 x float> %i.agd, %.1367718 ; 2 uses
  %i.agf = fmul fast <4 x float> %i.aga, %i.afr
  %i.agg = fadd fast <4 x float> %i.agf, %.1365719 ; 2 uses
  %i.agh = fmul fast <4 x float> %i.afv, %i.afw
  %i.agi = fadd fast <4 x float> %i.agh, %.1363720 ; 2 uses
  %i.agj = fmul fast <4 x float> %i.afv, %i.afy
  %i.agk = fadd fast <4 x float> %i.agj, %.1361721 ; 2 uses
  %i.agl = fmul fast <4 x float> %i.aga, %i.afv
  %i.agm = fadd fast <4 x float> %i.agl, %.0359722 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.0693724, i64 8
  %i.ago = getelementptr inbounds nuw i8, ptr %.1700723, i64 48 ; 2 uses
  %i.agp = add nuw nsw i32 %.0686725, 1           ; 2 uses
  %exitcond1126.not = icmp eq i32 %i.agp, %6
  br i1 %exitcond1126.not, label %._crit_edge728, label %.lr.ph727, !llvm.loop !1094

._crit_edge728:                                   ; preds = %.lr.ph727, %bb.aa
  %.1369.lcssa = phi <4 x float> [ %.0368, %bb.aa ], [ %i.agc, %.lr.ph727 ] ; 2 uses
  %.1367.lcssa = phi <4 x float> [ %.0366, %bb.aa ], [ %i.age, %.lr.ph727 ] ; 2 uses
  %.1365.lcssa = phi <4 x float> [ %.0364, %bb.aa ], [ %i.agg, %.lr.ph727 ] ; 2 uses
  %.1363.lcssa = phi <4 x float> [ %.0362, %bb.aa ], [ %i.agi, %.lr.ph727 ] ; 2 uses
  %.1361.lcssa = phi <4 x float> [ %.0360, %bb.aa ], [ %i.agk, %.lr.ph727 ] ; 2 uses
  %.0359.lcssa = phi <4 x float> [ %storemerge717, %bb.aa ], [ %i.agm, %.lr.ph727 ] ; 2 uses
  %.1700.lcssa = phi ptr [ %.0699736, %bb.aa ], [ %i.ago, %.lr.ph727 ] ; 2 uses
  %i.agq = shufflevector <4 x float> %.1369.lcssa, <4 x float> %.1363.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.agr = shufflevector <4 x float> %.1369.lcssa, <4 x float> %.1363.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ags = shufflevector <4 x float> %.1367.lcssa, <4 x float> %.1361.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.agt = shufflevector <4 x float> %.1367.lcssa, <4 x float> %.1361.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.agu = shufflevector <4 x float> %.1365.lcssa, <4 x float> %.0359.lcssa, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.agv = shufflevector <4 x float> %.1365.lcssa, <4 x float> %.0359.lcssa, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.agq, ptr %.16738, align 1, !tbaa !316
  %i.agw = getelementptr inbounds nuw i8, ptr %.16738, i64 16
  store <4 x float> %i.agr, ptr %i.agw, align 1, !tbaa !316
  %i.agx = getelementptr inbounds nuw i8, ptr %.16738, i64 32
  store <4 x float> %i.ags, ptr %i.agx, align 1, !tbaa !316
  %i.agy = getelementptr inbounds nuw i8, ptr %.16738, i64 48
  store <4 x float> %i.agt, ptr %i.agy, align 1, !tbaa !316
  %i.agz = getelementptr inbounds nuw i8, ptr %.16738, i64 64
  store <4 x float> %i.agu, ptr %i.agz, align 1, !tbaa !316
  %i.aha = getelementptr inbounds nuw i8, ptr %.16738, i64 80
  store <4 x float> %i.agv, ptr %i.aha, align 1, !tbaa !316
  %i.ahb = getelementptr inbounds nuw i8, ptr %.16738, i64 96 ; 2 uses
  %i.ahc = add nuw nsw i32 %.0694737, 12
  %i.ahd = add nuw nsw i32 %.0694737, 23
  %i.ahe = icmp slt i32 %i.ahd, %4
  br i1 %i.ahe, label %.lr.ph740, label %.preheader436, !llvm.loop !1095

.preheader435:                                    ; preds = %._crit_edge753, %.preheader436
  %.2701.lcssa = phi ptr [ %.0699.lcssa, %.preheader436 ], [ %.3702.lcssa, %._crit_edge753 ] ; 2 uses
  %.1695.lcssa = phi i32 [ %.0694.lcssa, %.preheader436 ], [ %i.aiw, %._crit_edge753 ] ; 3 uses
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader436 ], [ %i.aiv, %._crit_edge753 ] ; 2 uses
  %i.ahf = or disjoint i32 %.1695.lcssa, 3
  %i.ahg = icmp slt i32 %i.ahf, %4
  br i1 %i.ahg, label %.lr.ph780, label %.preheader434

.lr.ph762:                                        ; preds = %.preheader436, %._crit_edge753
  %.17761 = phi ptr [ %i.aiv, %._crit_edge753 ], [ %.16.lcssa, %.preheader436 ] ; 9 uses
  %.1695760 = phi i32 [ %i.aiw, %._crit_edge753 ], [ %.0694.lcssa, %.preheader436 ] ; 2 uses
  %.2701759 = phi ptr [ %.3702.lcssa, %._crit_edge753 ], [ %.0699.lcssa, %.preheader436 ] ; 3 uses
  br i1 %i.oi, label %bb.ac, label %bb.ab

end_hunk_8
begin_hunk_9_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  br i1 %i.adg, label %.lr.ph836.preheader, label %._crit_edge837

.lr.ph836.preheader:                              ; preds = %bb.am
  br i1 %i.adv, label %.lr.ph836.epil.preheader, label %.lr.ph836

.lr.ph836:                                        ; preds = %.lr.ph836.preheader, %.lr.ph836
  %.0600833 = phi ptr [ %i.aqi, %.lr.ph836 ], [ %i.aop, %.lr.ph836.preheader ] ; 3 uses
  %.1604832 = phi ptr [ %i.aqj, %.lr.ph836 ], [ %.0603843, %.lr.ph836.preheader ] ; 7 uses
  %.0322831 = phi <4 x float> [ %i.aqh, %.lr.ph836 ], [ %storemerge714, %.lr.ph836.preheader ]
  %.1324830 = phi <4 x float> [ %i.aqf, %.lr.ph836 ], [ %.0323, %.lr.ph836.preheader ]
  %.1326829 = phi <4 x float> [ %i.aqd, %.lr.ph836 ], [ %.0325, %.lr.ph836.preheader ]
  %niter1720 = phi i32 [ %niter1720.next.1, %.lr.ph836 ], [ 0, %.lr.ph836.preheader ]
  %i.ape = load float, ptr %.0600833, align 4, !tbaa !39
  %i.apf = insertelement <4 x float> poison, float %i.ape, i64 0
  %i.apg = shufflevector <4 x float> %i.apf, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aph = load <4 x float>, ptr %.1604832, align 16, !tbaa !316
  %i.api = getelementptr inbounds nuw i8, ptr %.1604832, i64 16
  %i.apj = load <4 x float>, ptr %i.api, align 16, !tbaa !316
  %i.apk = getelementptr inbounds nuw i8, ptr %.1604832, i64 32
  %i.apl = load <4 x float>, ptr %i.apk, align 16, !tbaa !316
  %i.apm = fmul fast <4 x float> %i.apg, %i.aph
  %i.apn = fadd fast <4 x float> %i.apm, %.1326829
  %i.apo = fmul fast <4 x float> %i.apg, %i.apj
  %i.app = fadd fast <4 x float> %i.apo, %.1324830
  %i.apq = fmul fast <4 x float> %i.apl, %i.apg
  %i.apr = fadd fast <4 x float> %i.apq, %.0322831
  %i.aps = getelementptr inbounds nuw i8, ptr %.0600833, i64 4
  %i.apt = getelementptr inbounds nuw i8, ptr %.1604832, i64 48
  %i.apu = load float, ptr %i.aps, align 4, !tbaa !39
  %i.apv = insertelement <4 x float> poison, float %i.apu, i64 0
  %i.apw = shufflevector <4 x float> %i.apv, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.apx = load <4 x float>, ptr %i.apt, align 16, !tbaa !316
  %i.apy = getelementptr inbounds nuw i8, ptr %.1604832, i64 64
  %i.apz = load <4 x float>, ptr %i.apy, align 16, !tbaa !316
  %i.aqa = getelementptr inbounds nuw i8, ptr %.1604832, i64 80
  %i.aqb = load <4 x float>, ptr %i.aqa, align 16, !tbaa !316
  %i.aqc = fmul fast <4 x float> %i.apw, %i.apx
  %i.aqd = fadd fast <4 x float> %i.aqc, %i.apn   ; 3 uses
  %i.aqe = fmul fast <4 x float> %i.apw, %i.apz
  %i.aqf = fadd fast <4 x float> %i.aqe, %i.app   ; 3 uses
  %i.aqg = fmul fast <4 x float> %i.aqb, %i.apw
  %i.aqh = fadd fast <4 x float> %i.aqg, %i.apr   ; 3 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %.0600833, i64 8 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %.1604832, i64 96 ; 3 uses
  %niter1720.next.1 = add nuw nsw i32 %niter1720, 2 ; 2 uses
  %niter1720.ncmp.1 = icmp eq i32 %niter1720.next.1, %unroll_iter1719
  br i1 %niter1720.ncmp.1, label %._crit_edge837.loopexit.unr-lcssa, label %.lr.ph836, !llvm.loop !1108

._crit_edge837.loopexit.unr-lcssa:                ; preds = %.lr.ph836
  br i1 %lcmp.mod1713.not, label %._crit_edge837, label %.lr.ph836.epil.preheader

.lr.ph836.epil.preheader:                         ; preds = %._crit_edge837.loopexit.unr-lcssa, %.lr.ph836.preheader
  %.0600833.epil.init = phi ptr [ %i.aop, %.lr.ph836.preheader ], [ %i.aqi, %._crit_edge837.loopexit.unr-lcssa ]
  %.1604832.epil.init = phi ptr [ %.0603843, %.lr.ph836.preheader ], [ %i.aqj, %._crit_edge837.loopexit.unr-lcssa ] ; 4 uses
  %.0322831.epil.init = phi <4 x float> [ %storemerge714, %.lr.ph836.preheader ], [ %i.aqh, %._crit_edge837.loopexit.unr-lcssa ]
  %.1324830.epil.init = phi <4 x float> [ %.0323, %.lr.ph836.preheader ], [ %i.aqf, %._crit_edge837.loopexit.unr-lcssa ]
  %.1326829.epil.init = phi <4 x float> [ %.0325, %.lr.ph836.preheader ], [ %i.aqd, %._crit_edge837.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1718)
  %i.aqk = load float, ptr %.0600833.epil.init, align 4, !tbaa !39
  %i.aql = insertelement <4 x float> poison, float %i.aqk, i64 0
  %i.aqm = shufflevector <4 x float> %i.aql, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqn = load <4 x float>, ptr %.1604832.epil.init, align 16, !tbaa !316
  %i.aqo = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 16
  %i.aqp = load <4 x float>, ptr %i.aqo, align 16, !tbaa !316
  %i.aqq = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 32
  %i.aqr = load <4 x float>, ptr %i.aqq, align 16, !tbaa !316
  %i.aqs = fmul fast <4 x float> %i.aqm, %i.aqn
  %i.aqt = fadd fast <4 x float> %i.aqs, %.1326829.epil.init
  %i.aqu = fmul fast <4 x float> %i.aqm, %i.aqp
  %i.aqv = fadd fast <4 x float> %i.aqu, %.1324830.epil.init
  %i.aqw = fmul fast <4 x float> %i.aqr, %i.aqm
  %i.aqx = fadd fast <4 x float> %i.aqw, %.0322831.epil.init
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1604832.epil.init, i64 48
  br label %._crit_edge837

._crit_edge837:                                   ; preds = %.lr.ph836.epil.preheader, %._crit_edge837.loopexit.unr-lcssa, %bb.am
  %.1326.lcssa = phi <4 x float> [ %.0325, %bb.am ], [ %i.aqd, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqt, %.lr.ph836.epil.preheader ]
  %.1324.lcssa = phi <4 x float> [ %.0323, %bb.am ], [ %i.aqf, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqv, %.lr.ph836.epil.preheader ]
  %.0322.lcssa = phi <4 x float> [ %storemerge714, %bb.am ], [ %i.aqh, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqx, %.lr.ph836.epil.preheader ]
  %.1604.lcssa = phi ptr [ %.0603843, %bb.am ], [ %i.aqj, %._crit_edge837.loopexit.unr-lcssa ], [ %i.aqy, %.lr.ph836.epil.preheader ] ; 2 uses
  store <4 x float> %.1326.lcssa, ptr %.23842, align 1, !tbaa !316
  %i.aqz = getelementptr inbounds nuw i8, ptr %.23842, i64 16
  store <4 x float> %.1324.lcssa, ptr %i.aqz, align 1, !tbaa !316
  %i.ara = getelementptr inbounds nuw i8, ptr %.23842, i64 32
  store <4 x float> %.0322.lcssa, ptr %i.ara, align 1, !tbaa !316
  %i.arb = getelementptr inbounds nuw i8, ptr %.23842, i64 48 ; 2 uses
  %i.arc = add nuw nsw i32 %.0601844, 12
  %i.ard = add nuw nsw i32 %.0601844, 23
  %i.are = icmp slt i32 %i.ard, %4
  br i1 %i.are, label %.lr.ph846, label %.preheader430, !llvm.loop !1109

.preheader429:                                    ; preds = %._crit_edge857, %.preheader430
  %.24.lcssa = phi ptr [ %.23.lcssa, %.preheader430 ], [ %i.avh, %._crit_edge857 ] ; 5 uses
  %.2605.lcssa = phi ptr [ %.0603.lcssa, %.preheader430 ], [ %.3606.lcssa, %._crit_edge857 ] ; 4 uses
  %.1602.lcssa = phi i32 [ %.0601.lcssa, %.preheader430 ], [ %i.avi, %._crit_edge857 ] ; 9 uses
  %i.arf = or disjoint i32 %.1602.lcssa, 3
  %i.arg = icmp slt i32 %i.arf, %4
  br i1 %i.arg, label %.lr.ph880, label %.preheader428

.lr.ph880:                                        ; preds = %.preheader429
  br i1 %i.adg, label %.lr.ph880.split.us, label %.lr.ph880.split

.lr.ph880.split.us:                               ; preds = %.lr.ph880, %._crit_edge874.us
  %.2879.us = phi i32 [ %i.asy, %._crit_edge874.us ], [ %.1602.lcssa, %.lr.ph880 ]
  %.4607878.us = phi ptr [ %scevgep1153, %._crit_edge874.us ], [ %.2605.lcssa, %.lr.ph880 ] ; 3 uses
  %.25877.us = phi ptr [ %i.asx, %._crit_edge874.us ], [ %.24.lcssa, %.lr.ph880 ] ; 3 uses
  br i1 %i.adf, label %.lr.ph873.us.preheader, label %bb.an

bb.an:                                            ; preds = %.lr.ph880.split.us
  %i.arh = load <4 x float>, ptr %.25877.us, align 1, !tbaa !316
  br label %.lr.ph873.us.preheader

.lr.ph873.us.preheader:                           ; preds = %bb.an, %.lr.ph880.split.us
  %.0304868.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph880.split.us ], [ %i.arh, %bb.an ] ; 2 uses
  br i1 %i.adx, label %.lr.ph873.us.epil.preheader, label %.lr.ph873.us

.lr.ph873.us:                                     ; preds = %.lr.ph873.us.preheader, %.lr.ph873.us
  %.0596870.us = phi ptr [ %i.asm, %.lr.ph873.us ], [ %i.aop, %.lr.ph873.us.preheader ] ; 5 uses
  %.5869.us = phi ptr [ %i.asn, %.lr.ph873.us ], [ %.4607878.us, %.lr.ph873.us.preheader ] ; 5 uses
  %.0304868.us = phi <4 x float> [ %i.asl, %.lr.ph873.us ], [ %.0304868.us.ph, %.lr.ph873.us.preheader ]
  %niter1735 = phi i32 [ %niter1735.next.3, %.lr.ph873.us ], [ 0, %.lr.ph873.us.preheader ]
  %i.ari = load float, ptr %.0596870.us, align 4, !tbaa !39
  %i.arj = insertelement <4 x float> poison, float %i.ari, i64 0
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arl = load <4 x float>, ptr %.5869.us, align 16, !tbaa !316
  %i.arm = fmul fast <4 x float> %i.ark, %i.arl
  %i.arn = fadd fast <4 x float> %i.arm, %.0304868.us
  %i.aro = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 4
  %i.arp = getelementptr inbounds nuw i8, ptr %.5869.us, i64 16
  %i.arq = load float, ptr %i.aro, align 4, !tbaa !39
  %i.arr = insertelement <4 x float> poison, float %i.arq, i64 0
  %i.ars = shufflevector <4 x float> %i.arr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.art = load <4 x float>, ptr %i.arp, align 16, !tbaa !316
  %i.aru = fmul fast <4 x float> %i.ars, %i.art
  %i.arv = fadd fast <4 x float> %i.aru, %i.arn
  %i.arw = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 8
  %i.arx = getelementptr inbounds nuw i8, ptr %.5869.us, i64 32
  %i.ary = load float, ptr %i.arw, align 4, !tbaa !39
  %i.arz = insertelement <4 x float> poison, float %i.ary, i64 0
  %i.asa = shufflevector <4 x float> %i.arz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asb = load <4 x float>, ptr %i.arx, align 16, !tbaa !316
  %i.asc = fmul fast <4 x float> %i.asa, %i.asb
  %i.asd = fadd fast <4 x float> %i.asc, %i.arv
  %i.ase = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 12
  %i.asf = getelementptr inbounds nuw i8, ptr %.5869.us, i64 48
  %i.asg = load float, ptr %i.ase, align 4, !tbaa !39
  %i.ash = insertelement <4 x float> poison, float %i.asg, i64 0
  %i.asi = shufflevector <4 x float> %i.ash, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asj = load <4 x float>, ptr %i.asf, align 16, !tbaa !316
  %i.ask = fmul fast <4 x float> %i.asi, %i.asj
  %i.asl = fadd fast <4 x float> %i.ask, %i.asd   ; 3 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %.0596870.us, i64 16 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.5869.us, i64 64 ; 2 uses
  %niter1735.next.3 = add nuw nsw i32 %niter1735, 4 ; 2 uses
  %niter1735.ncmp.3 = icmp eq i32 %niter1735.next.3, %unroll_iter1734
  br i1 %niter1735.ncmp.3, label %._crit_edge874.us.unr-lcssa, label %.lr.ph873.us, !llvm.loop !1110

._crit_edge874.us.unr-lcssa:                      ; preds = %.lr.ph873.us
  br i1 %lcmp.mod1731.not, label %._crit_edge874.us, label %.lr.ph873.us.epil.preheader

.lr.ph873.us.epil.preheader:                      ; preds = %._crit_edge874.us.unr-lcssa, %.lr.ph873.us.preheader
  %.0596870.us.epil.init = phi ptr [ %i.aop, %.lr.ph873.us.preheader ], [ %i.asm, %._crit_edge874.us.unr-lcssa ]
  %.5869.us.epil.init = phi ptr [ %.4607878.us, %.lr.ph873.us.preheader ], [ %i.asn, %._crit_edge874.us.unr-lcssa ]
  %.0304868.us.epil.init = phi <4 x float> [ %.0304868.us.ph, %.lr.ph873.us.preheader ], [ %i.asl, %._crit_edge874.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1733)
  br label %.lr.ph873.us.epil

.lr.ph873.us.epil:                                ; preds = %.lr.ph873.us.epil, %.lr.ph873.us.epil.preheader
  %.0596870.us.epil = phi ptr [ %i.asu, %.lr.ph873.us.epil ], [ %.0596870.us.epil.init, %.lr.ph873.us.epil.preheader ] ; 2 uses
  %.5869.us.epil = phi ptr [ %i.asv, %.lr.ph873.us.epil ], [ %.5869.us.epil.init, %.lr.ph873.us.epil.preheader ] ; 2 uses
  %.0304868.us.epil = phi <4 x float> [ %i.ast, %.lr.ph873.us.epil ], [ %.0304868.us.epil.init, %.lr.ph873.us.epil.preheader ]
  %epil.iter1730 = phi i32 [ %epil.iter1730.next, %.lr.ph873.us.epil ], [ 0, %.lr.ph873.us.epil.preheader ]
  %i.aso = load float, ptr %.0596870.us.epil, align 4, !tbaa !39
  %i.asp = insertelement <4 x float> poison, float %i.aso, i64 0
  %i.asq = shufflevector <4 x float> %i.asp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.asr = load <4 x float>, ptr %.5869.us.epil, align 16, !tbaa !316
  %i.ass = fmul fast <4 x float> %i.asq, %i.asr
  %i.ast = fadd fast <4 x float> %i.ass, %.0304868.us.epil ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.0596870.us.epil, i64 4
  %i.asv = getelementptr inbounds nuw i8, ptr %.5869.us.epil, i64 16
  %epil.iter1730.next = add i32 %epil.iter1730, 1 ; 2 uses
  %epil.iter1730.cmp.not = icmp eq i32 %epil.iter1730.next, %xtraiter1729
  br i1 %epil.iter1730.cmp.not, label %._crit_edge874.us, label %.lr.ph873.us.epil, !llvm.loop !1111

._crit_edge874.us:                                ; preds = %.lr.ph873.us.epil, %._crit_edge874.us.unr-lcssa
  %.lcssa1557 = phi <4 x float> [ %i.asl, %._crit_edge874.us.unr-lcssa ], [ %i.ast, %.lr.ph873.us.epil ]
  %i.asw = getelementptr i8, ptr %.4607878.us, i64 %i.ado
  %scevgep1153 = getelementptr i8, ptr %i.asw, i64 16 ; 2 uses
  store <4 x float> %.lcssa1557, ptr %.25877.us, align 1, !tbaa !316
  %i.asx = getelementptr inbounds nuw i8, ptr %.25877.us, i64 16 ; 2 uses
  %i.asy = add nuw nsw i32 %.2879.us, 4           ; 3 uses
  %i.asz = or disjoint i32 %i.asy, 3
  %i.ata = icmp slt i32 %i.asz, %4
  br i1 %i.ata, label %.lr.ph880.split.us, label %.preheader428, !llvm.loop !1112

.lr.ph880.split:                                  ; preds = %.lr.ph880
  br i1 %i.adf, label %.lr.ph880.split.split.us.preheader, label %.lr.ph880.split.split.preheader

.lr.ph880.split.split.preheader:                  ; preds = %.lr.ph880.split
  %scevgep1147 = getelementptr i8, ptr %.24.lcssa, i64 16
  %i.atb = add i32 %.1602.lcssa, 7
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.atb)
  %i.atc = add i32 %smax, -4
  %i.atd = sub i32 %i.atc, %.1602.lcssa           ; 2 uses
  %i.ate = lshr i32 %i.atd, 2
  %i.atf = zext nneg i32 %i.ate to i64
  %i.atg = shl nuw nsw i64 %i.atf, 4
  %scevgep1148 = getelementptr i8, ptr %scevgep1147, i64 %i.atg
  %i.ath = add i32 %.1602.lcssa, 4
  %i.ati = and i32 %i.atd, -4
  %i.atj = add i32 %i.ath, %i.ati
  br label %.preheader428

.lr.ph880.split.split.us.preheader:               ; preds = %.lr.ph880.split
  %i.atk = add i32 %.1602.lcssa, 7
  %smax1149 = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.atk)
  %i.atl = add i32 %smax1149, -4
  %i.atm = sub i32 %i.atl, %.1602.lcssa           ; 2 uses
  %i.atn = lshr i32 %i.atm, 2
  %i.ato = zext nneg i32 %i.atn to i64
  %i.atp = shl nuw nsw i64 %i.ato, 4              ; 2 uses
  %i.atq = add nuw nsw i64 %i.atp, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.24.lcssa, i8 0, i64 %i.atq, i1 false), !tbaa !316
  %scevgep1150 = getelementptr i8, ptr %.24.lcssa, i64 16
  %scevgep1152 = getelementptr i8, ptr %scevgep1150, i64 %i.atp
  %i.atr = add i32 %.1602.lcssa, 4
  %i.ats = and i32 %i.atm, -4
  %i.att = add i32 %i.atr, %i.ats
  br label %.preheader428

.lr.ph864:                                        ; preds = %.preheader430, %._crit_edge857
  %.1602863 = phi i32 [ %i.avi, %._crit_edge857 ], [ %.0601.lcssa, %.preheader430 ] ; 2 uses
  %.2605862 = phi ptr [ %.3606.lcssa, %._crit_edge857 ], [ %.0603.lcssa, %.preheader430 ] ; 4 uses
  %.24861 = phi ptr [ %i.avh, %._crit_edge857 ], [ %.23.lcssa, %.preheader430 ] ; 5 uses
  br i1 %i.adf, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph864
  %i.atu = load <4 x float>, ptr %.24861, align 1, !tbaa !316
  %i.atv = getelementptr inbounds nuw i8, ptr %.24861, i64 16
  %i.atw = load <4 x float>, ptr %i.atv, align 1, !tbaa !316
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph864, %bb.ao
  %.0312 = phi nsz <4 x float> [ %i.atu, %bb.ao ], [ zeroinitializer, %.lr.ph864 ] ; 3 uses
  %storemerge713 = phi <4 x float> [ %i.atw, %bb.ao ], [ zeroinitializer, %.lr.ph864 ] ; 3 uses
  br i1 %i.adg, label %.lr.ph856.preheader, label %._crit_edge857

.lr.ph856.preheader:                              ; preds = %bb.ap
  br i1 %i.adw, label %.lr.ph856.epil.preheader, label %.lr.ph856

.lr.ph856:                                        ; preds = %.lr.ph856.preheader, %.lr.ph856
  %.0598853 = phi ptr [ %i.aut, %.lr.ph856 ], [ %i.aop, %.lr.ph856.preheader ] ; 3 uses
  %.3606852 = phi ptr [ %i.auu, %.lr.ph856 ], [ %.2605862, %.lr.ph856.preheader ] ; 5 uses
  %.0311851 = phi <4 x float> [ %i.aus, %.lr.ph856 ], [ %storemerge713, %.lr.ph856.preheader ]
  %.1313850 = phi <4 x float> [ %i.auq, %.lr.ph856 ], [ %.0312, %.lr.ph856.preheader ]
  %niter1728 = phi i32 [ %niter1728.next.1, %.lr.ph856 ], [ 0, %.lr.ph856.preheader ]
  %i.atx = load float, ptr %.0598853, align 4, !tbaa !39
  %i.aty = insertelement <4 x float> poison, float %i.atx, i64 0
  %i.atz = shufflevector <4 x float> %i.aty, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aua = load <4 x float>, ptr %.3606852, align 16, !tbaa !316
  %i.aub = getelementptr inbounds nuw i8, ptr %.3606852, i64 16
  %i.auc = load <4 x float>, ptr %i.aub, align 16, !tbaa !316
  %i.aud = fmul fast <4 x float> %i.atz, %i.aua
  %i.aue = fadd fast <4 x float> %i.aud, %.1313850
  %i.auf = fmul fast <4 x float> %i.atz, %i.auc
  %i.aug = fadd fast <4 x float> %i.auf, %.0311851
  %i.auh = getelementptr inbounds nuw i8, ptr %.0598853, i64 4
  %i.aui = getelementptr inbounds nuw i8, ptr %.3606852, i64 32
  %i.auj = load float, ptr %i.auh, align 4, !tbaa !39
  %i.auk = insertelement <4 x float> poison, float %i.auj, i64 0
  %i.aul = shufflevector <4 x float> %i.auk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aum = load <4 x float>, ptr %i.aui, align 16, !tbaa !316
  %i.aun = getelementptr inbounds nuw i8, ptr %.3606852, i64 48
  %i.auo = load <4 x float>, ptr %i.aun, align 16, !tbaa !316
  %i.aup = fmul fast <4 x float> %i.aul, %i.aum
  %i.auq = fadd fast <4 x float> %i.aup, %i.aue   ; 3 uses
  %i.aur = fmul fast <4 x float> %i.aul, %i.auo
  %i.aus = fadd fast <4 x float> %i.aur, %i.aug   ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.0598853, i64 8 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %.3606852, i64 64 ; 2 uses
  %niter1728.next.1 = add nuw nsw i32 %niter1728, 2 ; 2 uses
  %niter1728.ncmp.1 = icmp eq i32 %niter1728.next.1, %unroll_iter1727
  br i1 %niter1728.ncmp.1, label %._crit_edge857.loopexit.unr-lcssa, label %.lr.ph856, !llvm.loop !1113

._crit_edge857.loopexit.unr-lcssa:                ; preds = %.lr.ph856
  br i1 %lcmp.mod1723.not, label %._crit_edge857.loopexit, label %.lr.ph856.epil.preheader

.lr.ph856.epil.preheader:                         ; preds = %._crit_edge857.loopexit.unr-lcssa, %.lr.ph856.preheader
  %.0598853.epil.init = phi ptr [ %i.aop, %.lr.ph856.preheader ], [ %i.aut, %._crit_edge857.loopexit.unr-lcssa ]
  %.3606852.epil.init = phi ptr [ %.2605862, %.lr.ph856.preheader ], [ %i.auu, %._crit_edge857.loopexit.unr-lcssa ] ; 2 uses
  %.0311851.epil.init = phi <4 x float> [ %storemerge713, %.lr.ph856.preheader ], [ %i.aus, %._crit_edge857.loopexit.unr-lcssa ]
  %.1313850.epil.init = phi <4 x float> [ %.0312, %.lr.ph856.preheader ], [ %i.auq, %._crit_edge857.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1726)
  %i.auv = load float, ptr %.0598853.epil.init, align 4, !tbaa !39
  %i.auw = insertelement <4 x float> poison, float %i.auv, i64 0
  %i.aux = shufflevector <4 x float> %i.auw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.auy = load <4 x float>, ptr %.3606852.epil.init, align 16, !tbaa !316
  %i.auz = getelementptr inbounds nuw i8, ptr %.3606852.epil.init, i64 16
  %i.ava = load <4 x float>, ptr %i.auz, align 16, !tbaa !316
  %i.avb = fmul fast <4 x float> %i.aux, %i.auy
  %i.avc = fadd fast <4 x float> %i.avb, %.1313850.epil.init
  %i.avd = fmul fast <4 x float> %i.aux, %i.ava
  %i.ave = fadd fast <4 x float> %i.avd, %.0311851.epil.init
  br label %._crit_edge857.loopexit

._crit_edge857.loopexit:                          ; preds = %._crit_edge857.loopexit.unr-lcssa, %.lr.ph856.epil.preheader
  %.lcssa1554 = phi <4 x float> [ %i.auq, %._crit_edge857.loopexit.unr-lcssa ], [ %i.avc, %.lr.ph856.epil.preheader ]
  %.lcssa1553 = phi <4 x float> [ %i.aus, %._crit_edge857.loopexit.unr-lcssa ], [ %i.ave, %.lr.ph856.epil.preheader ]
  %i.avf = getelementptr i8, ptr %.2605862, i64 %i.adn
  %scevgep1145 = getelementptr i8, ptr %i.avf, i64 32
  br label %._crit_edge857

._crit_edge857:                                   ; preds = %._crit_edge857.loopexit, %bb.ap
  %.1313.lcssa = phi <4 x float> [ %.0312, %bb.ap ], [ %.lcssa1554, %._crit_edge857.loopexit ]
  %.0311.lcssa = phi <4 x float> [ %storemerge713, %bb.ap ], [ %.lcssa1553, %._crit_edge857.loopexit ]
  %.3606.lcssa = phi ptr [ %.2605862, %bb.ap ], [ %scevgep1145, %._crit_edge857.loopexit ] ; 2 uses
  store <4 x float> %.1313.lcssa, ptr %.24861, align 1, !tbaa !316
  %i.avg = getelementptr inbounds nuw i8, ptr %.24861, i64 16
  store <4 x float> %.0311.lcssa, ptr %i.avg, align 1, !tbaa !316
  %i.avh = getelementptr inbounds nuw i8, ptr %.24861, i64 32 ; 2 uses
  %i.avi = add nuw nsw i32 %.1602863, 8           ; 2 uses
  %i.avj = add nuw nsw i32 %.1602863, 15
  %i.avk = icmp slt i32 %i.avj, %4
  br i1 %i.avk, label %.lr.ph864, label %.preheader429, !llvm.loop !1114

.preheader428:                                    ; preds = %._crit_edge874.us, %.lr.ph880.split.split.preheader, %.lr.ph880.split.split.us.preheader, %.preheader429
  %.25.lcssa = phi ptr [ %.24.lcssa, %.preheader429 ], [ %scevgep1152, %.lr.ph880.split.split.us.preheader ], [ %scevgep1148, %.lr.ph880.split.split.preheader ], [ %i.asx, %._crit_edge874.us ] ; 2 uses
  %.4607.lcssa = phi ptr [ %.2605.lcssa, %.preheader429 ], [ %.2605.lcssa, %.lr.ph880.split.split.us.preheader ], [ %.2605.lcssa, %.lr.ph880.split.split.preheader ], [ %scevgep1153, %._crit_edge874.us ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1602.lcssa, %.preheader429 ], [ %i.att, %.lr.ph880.split.split.us.preheader ], [ %i.atj, %.lr.ph880.split.split.preheader ], [ %i.asy, %._crit_edge874.us ] ; 3 uses
  %i.avl = or disjoint i32 %.2.lcssa, 1
  %i.avm = icmp slt i32 %i.avl, %4
  br i1 %i.avm, label %.lr.ph910.preheader, label %.preheader

.lr.ph910.preheader:                              ; preds = %.preheader428
  %i.avn = getelementptr i8, ptr %i.aop, i64 %i.adz
  br label %.lr.ph910

.preheader:                                       ; preds = %._crit_edge903, %.preheader428
  %.26.lcssa = phi ptr [ %.25.lcssa, %.preheader428 ], [ %i.axb, %._crit_edge903 ] ; 2 uses
  %.6.lcssa = phi ptr [ %.4607.lcssa, %.preheader428 ], [ %.7.lcssa, %._crit_edge903 ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader428 ], [ %i.axc, %._crit_edge903 ] ; 2 uses
  %i.avo = icmp slt i32 %.3.lcssa, %4
  br i1 %i.avo, label %.lr.ph926.preheader, label %._crit_edge927

.lr.ph926.preheader:                              ; preds = %.preheader
  %i.avp = getelementptr i8, ptr %i.aop, i64 %i.aed
  %i.avq = getelementptr i8, ptr %i.aop, i64 %i.aef
  br label %.lr.ph926

.lr.ph910:                                        ; preds = %.lr.ph910.preheader, %._crit_edge903
  %.3909 = phi i32 [ %i.axc, %._crit_edge903 ], [ %.2.lcssa, %.lr.ph910.preheader ]
  %.6908 = phi ptr [ %.7.lcssa, %._crit_edge903 ], [ %.4607.lcssa, %.lr.ph910.preheader ] ; 6 uses
  %.26907 = phi ptr [ %i.axb, %._crit_edge903 ], [ %.25.lcssa, %.lr.ph910.preheader ] ; 3 uses
  br i1 %i.adf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph910
  %i.avr = load <2 x float>, ptr %.26907, align 4, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph910, %bb.aq
  %i.avs = phi <2 x float> [ %i.avr, %bb.aq ], [ zeroinitializer, %.lr.ph910 ] ; 3 uses
  br i1 %i.adg, label %.lr.ph902.preheader, label %._crit_edge903

.lr.ph902.preheader:                              ; preds = %bb.ar
  br i1 %min.iters.check1518, label %.lr.ph902.preheader1548, label %vector.ph1519

vector.ph1519:                                    ; preds = %.lr.ph902.preheader
  %i.avt = getelementptr i8, ptr %.6908, i64 %i.aea
  %i.avu = shufflevector <2 x float> %i.avs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.avv = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.avu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.avw = shufflevector <4 x float> %i.avu, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body1521

vector.body1521:                                  ; preds = %vector.body1521, %vector.ph1519
  %index1522 = phi i64 [ 0, %vector.ph1519 ], [ %index.next1538, %vector.body1521 ] ; 3 uses
  %vec.phi1523 = phi <4 x float> [ %i.avv, %vector.ph1519 ], [ %i.awh, %vector.body1521 ]
  %vec.phi1524 = phi <4 x float> [ zeroinitializer, %vector.ph1519 ], [ %i.awi, %vector.body1521 ]
  %vec.phi1525 = phi <4 x float> [ %i.avw, %vector.ph1519 ], [ %i.awd, %vector.body1521 ]
  %vec.phi1526 = phi <4 x float> [ zeroinitializer, %vector.ph1519 ], [ %i.awe, %vector.body1521 ]
  %i.avx = shl i64 %index1522, 2
  %next.gep1527 = getelementptr i8, ptr %i.aop, i64 %i.avx ; 2 uses
  %i.avy = shl i64 %index1522, 3                  ; 2 uses
  %next.gep1528 = getelementptr i8, ptr %.6908, i64 %i.avy
  %i.avz = getelementptr i8, ptr %.6908, i64 %i.avy
  %next.gep1529 = getelementptr i8, ptr %i.avz, i64 32
  %i.awa = getelementptr i8, ptr %next.gep1527, i64 16
  %wide.load1530 = load <4 x float>, ptr %next.gep1527, align 4, !tbaa !39 ; 2 uses
  %wide.load1531 = load <4 x float>, ptr %i.awa, align 4, !tbaa !39 ; 2 uses
  %wide.vec1532 = load <8 x float>, ptr %next.gep1528, align 4, !tbaa !39 ; 2 uses
  %strided.vec1533 = shufflevector <8 x float> %wide.vec1532, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1534 = shufflevector <8 x float> %wide.vec1532, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1535 = load <8 x float>, ptr %next.gep1529, align 4, !tbaa !39 ; 2 uses
  %strided.vec1536 = shufflevector <8 x float> %wide.vec1535, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1537 = shufflevector <8 x float> %wide.vec1535, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.awb = fmul fast <4 x float> %strided.vec1533, %wide.load1530
  %i.awc = fmul fast <4 x float> %strided.vec1536, %wide.load1531
  %i.awd = fadd fast <4 x float> %i.awb, %vec.phi1525 ; 2 uses
  %i.awe = fadd fast <4 x float> %i.awc, %vec.phi1526 ; 2 uses
  %i.awf = fmul fast <4 x float> %strided.vec1534, %wide.load1530
  %i.awg = fmul fast <4 x float> %strided.vec1537, %wide.load1531
  %i.awh = fadd fast <4 x float> %i.awf, %vec.phi1523 ; 2 uses
  %i.awi = fadd fast <4 x float> %i.awg, %vec.phi1524 ; 2 uses
  %index.next1538 = add nuw i64 %index1522, 8     ; 2 uses
  %i.awj = icmp eq i64 %index.next1538, %n.vec1520
  br i1 %i.awj, label %middle.block1539, label %vector.body1521, !llvm.loop !1115

middle.block1539:                                 ; preds = %vector.body1521
  %bin.rdx1540 = fadd fast <4 x float> %i.awi, %i.awh
  %i.awk = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1540)
  %bin.rdx1541 = fadd fast <4 x float> %i.awe, %i.awd
  %i.awl = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1541)
  %i.awm = insertelement <2 x float> poison, float %i.awl, i64 0
  %i.awn = insertelement <2 x float> %i.awm, float %i.awk, i64 1 ; 2 uses
  br i1 %cmp.n1542, label %._crit_edge903.loopexit, label %.lr.ph902.preheader1548

.lr.ph902.preheader1548:                          ; preds = %.lr.ph902.preheader, %middle.block1539
  %.0589900.ph = phi i32 [ 0, %.lr.ph902.preheader ], [ %i.ady, %middle.block1539 ]
  %.0594897.ph = phi ptr [ %i.aop, %.lr.ph902.preheader ], [ %i.avn, %middle.block1539 ]
  %.7896.ph = phi ptr [ %.6908, %.lr.ph902.preheader ], [ %i.avt, %middle.block1539 ]
  %.ph = phi <2 x float> [ %i.avs, %.lr.ph902.preheader ], [ %i.awn, %middle.block1539 ]
  br label %.lr.ph902

.lr.ph902:                                        ; preds = %.lr.ph902.preheader1548, %.lr.ph902
  %.0589900 = phi i32 [ %i.awx, %.lr.ph902 ], [ %.0589900.ph, %.lr.ph902.preheader1548 ]
  %.0594897 = phi ptr [ %i.awv, %.lr.ph902 ], [ %.0594897.ph, %.lr.ph902.preheader1548 ] ; 2 uses
  %.7896 = phi ptr [ %i.aww, %.lr.ph902 ], [ %.7896.ph, %.lr.ph902.preheader1548 ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 128
  %i.kq = load <8 x float>, ptr %i.kp, align 32, !tbaa !316 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 160
  %i.ks = load <8 x float>, ptr %i.kr, align 32, !tbaa !316 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 192
  %i.ku = load <8 x float>, ptr %i.kt, align 32, !tbaa !316 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 224
  %i.kw = load <8 x float>, ptr %i.kv, align 32, !tbaa !316
  %i.kx = fmul fast <8 x float> %i.kq, splat (float -4.250000e+00)
  %i.ky = fadd fast <8 x float> %i.kx, %i.km
  %i.kz = fadd fast <8 x float> %i.ky, %i.ku      ; 2 uses
  %i.la = fmul fast <8 x float> %i.ko, splat (float -4.250000e+00)
  %i.lb = fadd fast <8 x float> %i.la, %i.kk
  %i.lc = fadd fast <8 x float> %i.lb, %i.ks      ; 2 uses
  %i.ld = fmul fast <8 x float> %i.km, splat (float 2.500000e-01)
  %i.le = fmul fast <8 x float> %i.kq, splat (float -1.250000e+00) ; 2 uses
  %i.lf = fadd fast <8 x float> %i.le, %i.ld
  %i.lg = fadd fast <8 x float> %i.lf, %i.ku      ; 2 uses
  %i.lh = fmul fast <8 x float> %i.kk, splat (float 5.000000e-01)
  %i.li = fmul fast <8 x float> %i.ko, splat (float -2.500000e+00) ; 2 uses
  %i.lj = fadd fast <8 x float> %i.li, %i.lh
  %i.lk = fmul fast <8 x float> %i.ks, splat (float 2.000000e+00)
  %i.ll = fadd fast <8 x float> %i.lj, %i.lk      ; 2 uses
  %i.lm = fadd fast <8 x float> %i.le, %i.km
  %i.ln = fmul fast <8 x float> %i.lm, splat (float 4.000000e+00)
  %i.lo = fadd fast <8 x float> %i.ln, %i.ku      ; 2 uses
  %i.lp = fmul fast <8 x float> %i.kk, splat (float 2.000000e+00)
  %i.lq = fadd fast <8 x float> %i.li, %i.lp
  %i.lr = fmul fast <8 x float> %i.ks, splat (float 5.000000e-01)
  %i.ls = fadd fast <8 x float> %i.lq, %i.lr      ; 2 uses
  %i.lt = fsub fast <8 x float> %i.kq, %i.km
  %i.lu = fsub fast <8 x float> %i.ki, %i.ku
  %i.lv = fmul fast <8 x float> %i.lt, splat (float 5.250000e+00)
  %i.lw = fadd fast <8 x float> %i.lu, %i.lv
  %i.lx = fadd fast <8 x float> %i.kz, %i.lc
  %i.ly = fsub fast <8 x float> %i.kz, %i.lc
  %i.lz = fadd fast <8 x float> %i.lg, %i.ll
  %i.ma = fsub fast <8 x float> %i.lg, %i.ll
  %i.mb = fadd fast <8 x float> %i.lo, %i.ls
  %i.mc = fsub fast <8 x float> %i.lo, %i.ls
  %i.md = fsub fast <8 x float> %i.ko, %i.ks
  %i.me = fsub fast <8 x float> %i.kw, %i.kk
  %i.mf = fmul fast <8 x float> %i.md, splat (float 5.250000e+00)
  %i.mg = fadd fast <8 x float> %i.me, %i.mf
  store <8 x float> %i.lw, ptr %.0244482, align 32, !tbaa !316
  store <8 x float> %i.lx, ptr %.0245481, align 32, !tbaa !316
  store <8 x float> %i.ly, ptr %.0246480, align 32, !tbaa !316
  store <8 x float> %i.lz, ptr %.0247479, align 32, !tbaa !316
  store <8 x float> %i.ma, ptr %.0248478, align 32, !tbaa !316
  store <8 x float> %i.mb, ptr %.0249477, align 32, !tbaa !316
  store <8 x float> %i.mc, ptr %.0250476, align 32, !tbaa !316
  store <8 x float> %i.mg, ptr %.0251475, align 32, !tbaa !316
  %i.mh = load i32, ptr %4, align 4, !tbaa !67    ; 4 uses
  %i.mi = shl nsw i32 %i.mh, 6
  %i.mj = sext i32 %i.mi to i64                   ; 8 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %.0244482, i64 %i.mj
  %i.ml = getelementptr inbounds [4 x i8], ptr %.0245481, i64 %i.mj
  %i.mm = getelementptr inbounds [4 x i8], ptr %.0246480, i64 %i.mj
  %i.mn = getelementptr inbounds [4 x i8], ptr %.0247479, i64 %i.mj
  %i.mo = getelementptr inbounds [4 x i8], ptr %.0248478, i64 %i.mj
  %i.mp = getelementptr inbounds [4 x i8], ptr %.0249477, i64 %i.mj
  %i.mq = getelementptr inbounds [4 x i8], ptr %.0250476, i64 %i.mj
  %i.mr = getelementptr inbounds [4 x i8], ptr %.0251475, i64 %i.mj
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next491, 8
  br i1 %exitcond493.not, label %bb.ak, label %bb.al, !llvm.loop !1303

._crit_edge:                                      ; preds = %bb.ak, %.lr.ph.split
  %i.ms = phi i32 [ %i.y, %.lr.ph.split ], [ %i.mh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.mt = add i32 %.0485, 1
  %exitcond497.not = icmp eq i32 %.0485, %i.k
  br i1 %exitcond497.not, label %._crit_edge487, label %.lr.ph.split, !llvm.loop !1304

._crit_edge487:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge487, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_im2col_gemmERKNS_3MatERS0_S2_S2_iiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !67     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.h = load i32, ptr %0, align 4, !tbaa !67     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !67
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !67
  %i.k = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not94 = icmp sgt i32 %i.k, %i.j
  br i1 %.not94, label %._crit_edge, label %_ZN4ncnn3MatD2Ev.exit36.lr.ph

_ZN4ncnn3MatD2Ev.exit36.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 47 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 15 uses
  br label %_ZN4ncnn3MatD2Ev.exit36

_ZN4ncnn3MatD2Ev.exit36:                          ; preds = %_ZN4ncnn3MatD2Ev.exit36.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.095 = phi i32 [ %i.k, %_ZN4ncnn3MatD2Ev.exit36.lr.ph ], [ %i.adr, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !67     ; 2 uses
  %i.s = sdiv i32 %.095, %i.r                     ; 2 uses
  %i.t = srem i32 %.095, %i.r                     ; 2 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !67     ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.s                   ; 13 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !67     ; 2 uses
  %i.x = mul i32 %i.w, %i.t                       ; 23 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !67
  %i.z = sub nsw i32 %i.y, %i.v
  %.sroa.speculated64 = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.z) ; 21 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !67
  %i.ab = sub i32 %i.aa, %i.x
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab) ; 49 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !1305
  %i.ad = load ptr, ptr %8, align 8, !tbaa !18, !noalias !1305
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !1305
  %i.af = sext i32 %i.s to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !65, !noalias !1305 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = sext i32 %i.t to i64
  %i.am = mul nsw i64 %i.ak, %i.al
  %i.an = mul i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.an ; 15 uses
  %i.ap = load i32, ptr %10, align 4, !tbaa !67   ; 5 uses
  %i.aq = load i32, ptr %11, align 4, !tbaa !67   ; 5 uses
  %i.ar = load i32, ptr %12, align 4, !tbaa !67   ; 2 uses
  %i.as = load i32, ptr %13, align 4, !tbaa !67   ; 2 uses
  %i.at = load i32, ptr %14, align 4, !tbaa !67   ; 3 uses
  %i.au = load i32, ptr %15, align 4, !tbaa !67   ; 3 uses
  %i.av = icmp eq i32 %i.ap, 1
  %i.aw = icmp eq i32 %i.aq, 1
  %or.cond.i = and i1 %i.av, %i.aw                ; 2 uses
  %i.ax = icmp eq i32 %i.ar, 1                    ; 4 uses
  %or.cond3.i = and i1 %or.cond.i, %i.ax
  %i.ay = icmp eq i32 %i.as, 1                    ; 4 uses
  %or.cond5.i = and i1 %or.cond3.i, %i.ay
  %i.az = icmp eq i32 %i.at, 1                    ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.az
  %i.ba = icmp eq i32 %i.au, 1                    ; 3 uses
  %or.cond9.i = and i1 %or.cond7.i, %i.ba
  br i1 %or.cond9.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit36
  %i.bb = load i32, ptr %i.o, align 8, !tbaa !66  ; 5 uses
  %i.bc = icmp sgt i32 %.sroa.speculated64, 11
  br i1 %i.bc, label %.lr.ph339.i.i, label %.preheader320.i.i

.lr.ph339.i.i:                                    ; preds = %bb.c
  %i.bd = sdiv i32 %i.x, 8
  %i.be = sext i32 %i.bd to i64
  %i.bf = lshr i32 %.sroa.speculated, 3
  %i.bg = sdiv i32 %i.x, 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = lshr i32 %.sroa.speculated, 2
  %i.bj = sext i32 %i.x to i64
  %i.bk = sext i32 %i.v to i64                    ; 3 uses
  %i.bl = zext nneg i32 %.sroa.speculated64 to i64 ; 7 uses
  switch i32 %i.bb, label %.loopexit321.i.preheader.i [
    i32 8, label %.lr.ph339.i.split.us.i
    i32 4, label %.lr.ph339.i.split.us26.i
    i32 1, label %.lr.ph339.i.split.us36.i
  ]

.loopexit321.i.preheader.i:                       ; preds = %.lr.ph339.i.i
  %i.bm = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %i.bn = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin85.i = zext i1 %i.bn to i64                ; 2 uses
  %i.bo = sub nsw i64 %i.bm, %umin85.i
  %i.bp = udiv i64 %i.bo, 12
  %i.bq = add nuw nsw i64 %i.bp, %umin85.i
  %i.br = mul i64 %i.bq, 12
  %i.bs = add i64 %i.br, 12
  br label %.preheader320.loopexit.i.i

.lr.ph339.i.split.us.i:                           ; preds = %.lr.ph339.i.i
  %i.bt = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.bt, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us.i
  %i.bu = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %i.bv = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin83.i = zext i1 %i.bv to i64                ; 2 uses
  %i.bw = sub nsw i64 %i.bu, %umin83.i
  %i.bx = udiv i64 %i.bw, 12
  %i.by = add nuw nsw i64 %i.bx, %umin83.i
  %i.bz = mul i64 %i.by, 12
  %i.ca = add i64 %i.bz, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us.i
  %.pre87.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1308
  br label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i

_ZN4ncnn3MatD2Ev.exit509.i.us.us.i:               ; preds = %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i
  %i.cb = phi i64 [ %i.fc, %.loopexit321.i.loopexit.us.us.i ], [ %.pre87.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us.us.i = phi ptr [ %i.fb, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.preheader.i ]
  %i.cc = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1308
  %i.cd = mul i64 %i.cb, %i.be
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1308
  %i.cf = mul i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf
  %i.ch = add nsw i64 %indvars.iv.i.us.us.i, %i.bk
  %.idx482.i.us.us.i = shl nsw i64 %i.ch, 5
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 %.idx482.i.us.us.i
  br label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %.lr.ph.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i
  %.1326.i.us.us.i = phi ptr [ %i.fb, %.lr.ph.i.us.us.i ], [ %.0445338.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0451325.i.us.us.i = phi ptr [ %i.fd, %.lr.ph.i.us.us.i ], [ %i.ci, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ] ; 13 uses
  %.0452324.i.us.us.i = phi i32 [ %i.fe, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ]
  %i.cj = load <8 x float>, ptr %.0451325.i.us.us.i, align 32, !tbaa !316 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 32
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 64
  %i.cn = load <8 x float>, ptr %i.cm, align 32, !tbaa !316 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 96
  %i.cp = load <8 x float>, ptr %i.co, align 32, !tbaa !316 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 128
  %i.cr = load <8 x float>, ptr %i.cq, align 32, !tbaa !316 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 160
  %i.ct = load <8 x float>, ptr %i.cs, align 32, !tbaa !316 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 192
  %i.cv = load <8 x float>, ptr %i.cu, align 32, !tbaa !316 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 224
  %i.cx = load <8 x float>, ptr %i.cw, align 32, !tbaa !316 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 256
  %i.cz = load <8 x float>, ptr %i.cy, align 32, !tbaa !316 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 288
  %i.db = load <8 x float>, ptr %i.da, align 32, !tbaa !316 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 320
  %i.dd = load <8 x float>, ptr %i.dc, align 32, !tbaa !316 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 352
  %i.df = load <8 x float>, ptr %i.de, align 32, !tbaa !316 ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dh = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.di = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.cn, <8 x float> %i.cp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dl = shufflevector <8 x float> %i.cr, <8 x float> %i.ct, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dm = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.do = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dp = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dq = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dr = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ds = shufflevector <8 x float> %i.dg, <8 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dt = shufflevector <8 x float> %i.dg, <8 x float> %i.di, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.du = shufflevector <8 x float> %i.dh, <8 x float> %i.dj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dv = shufflevector <8 x float> %i.dh, <8 x float> %i.dj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dw = shufflevector <8 x float> %i.dk, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dx = shufflevector <8 x float> %i.dk, <8 x float> %i.dm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dy = shufflevector <8 x float> %i.dl, <8 x float> %i.dn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.dz = shufflevector <8 x float> %i.dl, <8 x float> %i.dn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ea = shufflevector <8 x float> %i.do, <8 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.eb = shufflevector <8 x float> %i.do, <8 x float> %i.dq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ec = shufflevector <8 x float> %i.dp, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ed = shufflevector <8 x float> %i.dp, <8 x float> %i.dr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ee = shufflevector <8 x float> %i.ds, <8 x float> %i.dw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ef = shufflevector <8 x float> %i.ea, <8 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eg = shufflevector <8 x float> %i.dx, <8 x float> %i.eb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eh = shufflevector <8 x float> %i.du, <8 x float> %i.dy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ei = shufflevector <8 x float> %i.ec, <8 x float> %i.dv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ej = shufflevector <8 x float> %i.dz, <8 x float> %i.ed, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ek = shufflevector <8 x float> %i.ds, <8 x float> %i.dw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.el = shufflevector <8 x float> %i.ea, <8 x float> %i.dt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.em = shufflevector <8 x float> %i.dx, <8 x float> %i.eb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.en = shufflevector <8 x float> %i.du, <8 x float> %i.dy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.eo = shufflevector <8 x float> %i.ec, <8 x float> %i.dv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ep = shufflevector <8 x float> %i.dz, <8 x float> %i.ed, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ee, ptr %.1326.i.us.us.i, align 32, !tbaa !316
  %i.eq = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 32
  store <8 x float> %i.ef, ptr %i.eq, align 32, !tbaa !316
  %i.er = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 64
  store <8 x float> %i.eg, ptr %i.er, align 32, !tbaa !316
  %i.es = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 96
  store <8 x float> %i.eh, ptr %i.es, align 32, !tbaa !316
  %i.et = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 128
  store <8 x float> %i.ei, ptr %i.et, align 32, !tbaa !316
  %i.eu = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 160
  store <8 x float> %i.ej, ptr %i.eu, align 32, !tbaa !316
  %i.ev = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 192
  store <8 x float> %i.ek, ptr %i.ev, align 32, !tbaa !316
  %i.ew = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 224
  store <8 x float> %i.el, ptr %i.ew, align 32, !tbaa !316
  %i.ex = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 256
  store <8 x float> %i.em, ptr %i.ex, align 32, !tbaa !316
  %i.ey = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 288
  store <8 x float> %i.en, ptr %i.ey, align 32, !tbaa !316
  %i.ez = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 320
  store <8 x float> %i.eo, ptr %i.ez, align 32, !tbaa !316
  %i.fa = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 352
  store <8 x float> %i.ep, ptr %i.fa, align 32, !tbaa !316
  %i.fb = getelementptr inbounds nuw i8, ptr %.1326.i.us.us.i, i64 384 ; 3 uses
  %i.fc = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx481.i.us.us.i = shl i64 %i.fc, 5
  %i.fd = getelementptr inbounds nuw i8, ptr %.0451325.i.us.us.i, i64 %.idx481.i.us.us.i
  %i.fe = add nuw nsw i32 %.0452324.i.us.us.i, 1  ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i32 %i.fe, %i.bf
  br i1 %exitcond.not.i.us.us.i, label %.loopexit321.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1311

.loopexit321.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 12 ; 2 uses
  %i.ff = add nuw nsw i64 %indvars.iv.i.us.us.i, 23
  %i.fg = icmp samesign ult i64 %i.ff, %i.bl
  br i1 %i.fg, label %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us26.i:                         ; preds = %.lr.ph339.i.i
  %i.fh = icmp sgt i32 %.sroa.speculated, 3
  br i1 %i.fh, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us26.i
  %i.fi = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %i.fj = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin81.i = zext i1 %i.fj to i64                ; 2 uses
  %i.fk = sub nsw i64 %i.fi, %umin81.i
  %i.fl = udiv i64 %i.fk, 12
  %i.fm = add nuw nsw i64 %i.fl, %umin81.i
  %i.fn = mul i64 %i.fm, 12
  %i.fo = add i64 %i.fn, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us26.i
  %.pre86.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1313
  br label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i

_ZN4ncnn3MatD2Ev.exit508.i.us.us.i:               ; preds = %.loopexit321.i.loopexit9.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i
  %i.fp = phi i64 [ %i.ie, %.loopexit321.i.loopexit9.us.us.i ], [ %.pre86.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %indvars.iv.i.us27.us.i = phi i64 [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us28.us.i = phi ptr [ %i.id, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.preheader.i ]
  %i.fq = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1313
  %i.fr = mul i64 %i.fp, %i.bh
  %i.fs = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1313
  %i.ft = mul i64 %i.fr, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ft
  %i.fv = add nsw i64 %indvars.iv.i.us27.us.i, %i.bk
  %.idx483.i.us.us.i = shl nsw i64 %i.fv, 4
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %.idx483.i.us.us.i
  br label %.lr.ph330.i.us.us.i

.lr.ph330.i.us.us.i:                              ; preds = %.lr.ph330.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i
  %.3329.i.us.us.i = phi ptr [ %i.id, %.lr.ph330.i.us.us.i ], [ %.0445338.i.us28.us.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0459328.i.us.us.i = phi ptr [ %i.if, %.lr.ph330.i.us.us.i ], [ %i.fw, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ] ; 13 uses
  %.0460327.i.us.us.i = phi i32 [ %i.ig, %.lr.ph330.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i ]
  %i.fx = load <4 x float>, ptr %.0459328.i.us.us.i, align 16, !tbaa !316 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 16
  %i.fz = load <4 x float>, ptr %i.fy, align 16, !tbaa !316 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 32
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !316 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 48
  %i.gd = load <4 x float>, ptr %i.gc, align 16, !tbaa !316 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 64
  %i.gf = load <4 x float>, ptr %i.ge, align 16, !tbaa !316 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 80
  %i.gh = load <4 x float>, ptr %i.gg, align 16, !tbaa !316 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 96
  %i.gj = load <4 x float>, ptr %i.gi, align 16, !tbaa !316 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 112
  %i.gl = load <4 x float>, ptr %i.gk, align 16, !tbaa !316 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 128
  %i.gn = load <4 x float>, ptr %i.gm, align 16, !tbaa !316 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 144
  %i.gp = load <4 x float>, ptr %i.go, align 16, !tbaa !316 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 160
  %i.gr = load <4 x float>, ptr %i.gq, align 16, !tbaa !316 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 176
  %i.gt = load <4 x float>, ptr %i.gs, align 16, !tbaa !316 ; 2 uses
  %i.gu = shufflevector <4 x float> %i.fx, <4 x float> %i.fz, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gv = shufflevector <4 x float> %i.gb, <4 x float> %i.gd, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gw = shufflevector <4 x float> %i.fx, <4 x float> %i.fz, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gx = shufflevector <4 x float> %i.gb, <4 x float> %i.gd, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gy = shufflevector <4 x float> %i.gu, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gz = shufflevector <4 x float> %i.gv, <4 x float> %i.gu, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ha = shufflevector <4 x float> %i.gw, <4 x float> %i.gx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hb = shufflevector <4 x float> %i.gx, <4 x float> %i.gw, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hc = shufflevector <4 x float> %i.gf, <4 x float> %i.gh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hd = shufflevector <4 x float> %i.gj, <4 x float> %i.gl, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.he = shufflevector <4 x float> %i.gf, <4 x float> %i.gh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hf = shufflevector <4 x float> %i.gj, <4 x float> %i.gl, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hg = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hh = shufflevector <4 x float> %i.hd, <4 x float> %i.hc, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hi = shufflevector <4 x float> %i.he, <4 x float> %i.hf, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hj = shufflevector <4 x float> %i.hf, <4 x float> %i.he, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hk = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hl = shufflevector <4 x float> %i.gr, <4 x float> %i.gt, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.hm = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.hn = shufflevector <4 x float> %i.gr, <4 x float> %i.gt, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ho = shufflevector <4 x float> %i.hk, <4 x float> %i.hl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hp = shufflevector <4 x float> %i.hl, <4 x float> %i.hk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.hq = shufflevector <4 x float> %i.hm, <4 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.hr = shufflevector <4 x float> %i.hn, <4 x float> %i.hm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.gy, ptr %.3329.i.us.us.i, align 16, !tbaa !316
  %i.hs = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 16
  store <4 x float> %i.hg, ptr %i.hs, align 16, !tbaa !316
  %i.ht = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 32
  store <4 x float> %i.ho, ptr %i.ht, align 16, !tbaa !316
  %i.hu = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 48
  store <4 x float> %i.gz, ptr %i.hu, align 16, !tbaa !316
  %i.hv = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 64
  store <4 x float> %i.hh, ptr %i.hv, align 16, !tbaa !316
  %i.hw = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 80
  store <4 x float> %i.hp, ptr %i.hw, align 16, !tbaa !316
  %i.hx = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 96
  store <4 x float> %i.ha, ptr %i.hx, align 16, !tbaa !316
  %i.hy = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 112
  store <4 x float> %i.hi, ptr %i.hy, align 16, !tbaa !316
  %i.hz = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 128
  store <4 x float> %i.hq, ptr %i.hz, align 16, !tbaa !316
  %i.ia = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 144
  store <4 x float> %i.hb, ptr %i.ia, align 16, !tbaa !316
  %i.ib = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 160
  store <4 x float> %i.hj, ptr %i.ib, align 16, !tbaa !316
  %i.ic = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 176
  store <4 x float> %i.hr, ptr %i.ic, align 16, !tbaa !316
  %i.id = getelementptr inbounds nuw i8, ptr %.3329.i.us.us.i, i64 192 ; 3 uses
  %i.ie = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.idx480.i.us.us.i = shl i64 %i.ie, 4
  %i.if = getelementptr inbounds nuw i8, ptr %.0459328.i.us.us.i, i64 %.idx480.i.us.us.i
  %i.ig = add nuw nsw i32 %.0460327.i.us.us.i, 1  ; 2 uses
  %exitcond438.not.i.us.us.i = icmp eq i32 %i.ig, %i.bi
  br i1 %exitcond438.not.i.us.us.i, label %.loopexit321.i.loopexit9.us.us.i, label %.lr.ph330.i.us.us.i, !llvm.loop !1316

.loopexit321.i.loopexit9.us.us.i:                 ; preds = %.lr.ph330.i.us.us.i
  %indvars.iv.next.i.us31.us.i = add nuw nsw i64 %indvars.iv.i.us27.us.i, 12 ; 2 uses
  %i.ih = add nuw nsw i64 %indvars.iv.i.us27.us.i, 23
  %i.ii = icmp samesign ult i64 %i.ih, %i.bl
  br i1 %i.ii, label %_ZN4ncnn3MatD2Ev.exit508.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.lr.ph339.i.split.us36.i:                         ; preds = %.lr.ph339.i.i
  %i.ij = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ij, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i:        ; preds = %.lr.ph339.i.split.us36.i
  %i.ik = call i64 @llvm.usub.sat.i64(i64 %i.bl, i64 23)
  %i.il = icmp samesign ugt i32 %.sroa.speculated64, 23
  %umin.i = zext i1 %i.il to i64                  ; 2 uses
  %i.im = sub nsw i64 %i.ik, %umin.i
  %i.in = udiv i64 %i.im, 12
  %i.io = add nuw nsw i64 %i.in, %umin.i
  %i.ip = mul i64 %i.io, 12
  %i.iq = add i64 %i.ip, 12
  br label %.preheader320.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i:     ; preds = %.lr.ph339.i.split.us36.i
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1317
  %xtraiter = and i32 %.sroa.speculated, 1
  %i.ir = icmp eq i32 %.sroa.speculated, 1
  %unroll_iter = and i32 %.sroa.speculated, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod207 = trunc i32 %.sroa.speculated to i1
  br label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i

_ZN4ncnn3MatD2Ev.exit507.i.us.us.i:               ; preds = %.loopexit321.i.loopexit10.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i
  %i.is = phi i64 [ %.lcssa, %.loopexit321.i.loopexit10.us.us.i ], [ %.pre.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ]
  %indvars.iv.i.us37.us.i = phi i64 [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 3 uses
  %.0445338.i.us38.us.i = phi ptr [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.preheader.i ] ; 2 uses
  %i.it = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1317
  %i.iu = mul i64 %i.is, %i.bj
  %i.iv = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1317
  %i.iw = mul i64 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iw
  %i.iy = getelementptr [4 x i8], ptr %i.ix, i64 %indvars.iv.i.us37.us.i
  %i.iz = getelementptr [4 x i8], ptr %i.iy, i64 %i.bk ; 2 uses
  br i1 %i.ir, label %.lr.ph335.i.us.us.i.epil.preheader, label %.lr.ph335.i.us.us.i

.lr.ph335.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, %.lr.ph335.i.us.us.i
  %.5334.i.us.us.i = phi ptr [ %i.jr, %.lr.ph335.i.us.us.i ], [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 7 uses
  %.0461333.i.us.us.i = phi ptr [ %i.jt, %.lr.ph335.i.us.us.i ], [ %i.iz, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ] ; 4 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph335.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ]
  %i.ja = load <4 x float>, ptr %.0461333.i.us.us.i, align 1, !tbaa !316
  %i.jb = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 16
  %i.jc = load <4 x float>, ptr %i.jb, align 1, !tbaa !316
  %i.jd = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i, i64 32
  %i.je = load <4 x float>, ptr %i.jd, align 1, !tbaa !316
  store <4 x float> %i.ja, ptr %.5334.i.us.us.i, align 1, !tbaa !316
  %i.jf = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 16
  store <4 x float> %i.jc, ptr %i.jf, align 1, !tbaa !316
  %i.jg = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 32
  store <4 x float> %i.je, ptr %i.jg, align 1, !tbaa !316
  %i.jh = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 48
  %i.ji = load i64, ptr %i.p, align 8, !tbaa !20
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.0461333.i.us.us.i, i64 %i.ji ; 4 uses
  %i.jk = load <4 x float>, ptr %i.jj, align 1, !tbaa !316
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jm = load <4 x float>, ptr %i.jl, align 1, !tbaa !316
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jo = load <4 x float>, ptr %i.jn, align 1, !tbaa !316
  store <4 x float> %i.jk, ptr %i.jh, align 1, !tbaa !316
  %i.jp = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 64
  store <4 x float> %i.jm, ptr %i.jp, align 1, !tbaa !316
  %i.jq = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 80
  store <4 x float> %i.jo, ptr %i.jq, align 1, !tbaa !316
  %i.jr = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i, i64 96 ; 3 uses
  %i.js = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.js ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, label %.lr.ph335.i.us.us.i, !llvm.loop !1320

.loopexit321.i.loopexit10.us.us.i.unr-lcssa:      ; preds = %.lr.ph335.i.us.us.i
  br i1 %lcmp.mod.not, label %.loopexit321.i.loopexit10.us.us.i, label %.lr.ph335.i.us.us.i.epil.preheader

.lr.ph335.i.us.us.i.epil.preheader:               ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i
  %.5334.i.us.us.i.epil.init = phi ptr [ %.0445338.i.us38.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.jr, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 4 uses
  %.0461333.i.us.us.i.epil.init = phi ptr [ %i.iz, %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i ], [ %i.jt, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod207)
  %i.ju = load <4 x float>, ptr %.0461333.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.jv = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 16
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !tbaa !316
  %i.jx = getelementptr inbounds nuw i8, ptr %.0461333.i.us.us.i.epil.init, i64 32
  %i.jy = load <4 x float>, ptr %i.jx, align 1, !tbaa !316
  store <4 x float> %i.ju, ptr %.5334.i.us.us.i.epil.init, align 1, !tbaa !316
  %i.jz = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 16
  store <4 x float> %i.jw, ptr %i.jz, align 1, !tbaa !316
  %i.ka = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 32
  store <4 x float> %i.jy, ptr %i.ka, align 1, !tbaa !316
  %i.kb = getelementptr inbounds nuw i8, ptr %.5334.i.us.us.i.epil.init, i64 48
  %i.kc = load i64, ptr %i.p, align 8, !tbaa !20
  br label %.loopexit321.i.loopexit10.us.us.i

.loopexit321.i.loopexit10.us.us.i:                ; preds = %.loopexit321.i.loopexit10.us.us.i.unr-lcssa, %.lr.ph335.i.us.us.i.epil.preheader
  %.lcssa188 = phi ptr [ %i.jr, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.kb, %.lr.ph335.i.us.us.i.epil.preheader ] ; 2 uses
  %.lcssa = phi i64 [ %i.js, %.loopexit321.i.loopexit10.us.us.i.unr-lcssa ], [ %i.kc, %.lr.ph335.i.us.us.i.epil.preheader ]
  %indvars.iv.next.i.us41.us.i = add nuw nsw i64 %indvars.iv.i.us37.us.i, 12 ; 2 uses
  %i.kd = add nuw nsw i64 %indvars.iv.i.us37.us.i, 23
  %i.ke = icmp samesign ult i64 %i.kd, %i.bl
  br i1 %i.ke, label %_ZN4ncnn3MatD2Ev.exit507.i.us.us.i, label %.preheader320.loopexit.i.i, !llvm.loop !1312

.preheader320.loopexit.i.i:                       ; preds = %.loopexit321.i.loopexit10.us.us.i, %.loopexit321.i.loopexit9.us.us.i, %.loopexit321.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i, %.loopexit321.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ao, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %i.ao, %.loopexit321.i.preheader.i ], [ %i.fb, %.loopexit321.i.loopexit.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %i.id, %.loopexit321.i.loopexit9.us.us.i ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %.lcssa188, %.loopexit321.i.loopexit10.us.us.i ]
  %.us-phi25.i = phi i64 [ %i.iq, %_ZN4ncnn3MatD2Ev.exit507.i.us.preheader.i ], [ %i.bs, %.loopexit321.i.preheader.i ], [ %indvars.iv.next.i.us.us.i, %.loopexit321.i.loopexit.us.us.i ], [ %i.ca, %_ZN4ncnn3MatD2Ev.exit509.i.us.preheader.i ], [ %indvars.iv.next.i.us31.us.i, %.loopexit321.i.loopexit9.us.us.i ], [ %i.fo, %_ZN4ncnn3MatD2Ev.exit508.i.us.preheader.i ], [ %indvars.iv.next.i.us41.us.i, %.loopexit321.i.loopexit10.us.us.i ]
  %i.kf = trunc nuw nsw i64 %.us-phi25.i to i32
  br label %.preheader320.i.i

.preheader320.i.i:                                ; preds = %.preheader320.loopexit.i.i, %bb.c
  %.0446.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %i.kf, %.preheader320.loopexit.i.i ] ; 3 uses
  %.0445.lcssa.i.i = phi ptr [ %i.ao, %bb.c ], [ %.us-phi.i, %.preheader320.loopexit.i.i ] ; 2 uses
  %i.kg = add nuw nsw i32 %.0446.lcssa.i.i, 7
  %i.kh = icmp slt i32 %i.kg, %.sroa.speculated64
  br i1 %i.kh, label %.lr.ph359.i.i, label %.preheader316.i.i

.lr.ph359.i.i:                                    ; preds = %.preheader320.i.i
  %i.ki = sdiv i32 %i.x, 8
  %i.kj = sext i32 %i.ki to i64
  %i.kk = lshr i32 %.sroa.speculated, 3
  %i.kl = icmp sgt i32 %.sroa.speculated, 7
  %i.km = sdiv i32 %i.x, 4
  %i.kn = sext i32 %i.km to i64
  %i.ko = lshr i32 %.sroa.speculated, 2
  %i.kp = icmp sgt i32 %.sroa.speculated, 3
  %i.kq = sext i32 %i.x to i64
  %i.kr = icmp sgt i32 %.sroa.speculated, 0
  %i.ks = zext nneg i32 %.0446.lcssa.i.i to i64
  %i.kt = sext i32 %i.v to i64                    ; 3 uses
  %i.ku = sext i32 %.sroa.speculated64 to i64
  %invariant.op.i.i = add nsw i64 %i.ku, -15
  %i.kv = add i32 %.sroa.speculated, -1
  %xtraiter208 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.kw = icmp ult i32 %i.kv, 3
  %unroll_iter212 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod209.not = icmp eq i32 %xtraiter208, 0
  %lcmp.mod211 = icmp ne i32 %xtraiter208, 0
  br label %bb.d

.preheader316.loopexit.i.i:                       ; preds = %.loopexit317.i.i
  %i.kx = trunc nsw i64 %indvars.iv.next445.i.i to i32
  br label %.preheader316.i.i

.preheader316.i.i:                                ; preds = %.preheader316.loopexit.i.i, %.preheader320.i.i
  %.1447.lcssa.i.i = phi i32 [ %.0446.lcssa.i.i, %.preheader320.i.i ], [ %i.kx, %.preheader316.loopexit.i.i ] ; 3 uses
  %.7.lcssa.i.i = phi ptr [ %.0445.lcssa.i.i, %.preheader320.i.i ], [ %.13.i.i, %.preheader316.loopexit.i.i ] ; 2 uses
  %i.ky = or disjoint i32 %.1447.lcssa.i.i, 3
  %i.kz = icmp slt i32 %i.ky, %.sroa.speculated64
  br i1 %i.kz, label %.lr.ph379.i.i, label %.preheader312.i.i

.lr.ph379.i.i:                                    ; preds = %.preheader316.i.i
  %i.la = sdiv i32 %i.x, 8
  %i.lb = sext i32 %i.la to i64
  %i.lc = lshr i32 %.sroa.speculated, 3
  %i.ld = icmp sgt i32 %.sroa.speculated, 7
  %i.le = sdiv i32 %i.x, 4
  %i.lf = sext i32 %i.le to i64
  %i.lg = lshr i32 %.sroa.speculated, 2
  %i.lh = icmp sgt i32 %.sroa.speculated, 3
  %i.li = sext i32 %i.x to i64
  %i.lj = icmp sgt i32 %.sroa.speculated, 0
  %i.lk = sext i32 %.1447.lcssa.i.i to i64
  %i.ll = sext i32 %.sroa.speculated64 to i64
  %i.lm = sext i32 %i.v to i64                    ; 3 uses
  %invariant.op526.i.i = add nsw i64 %i.ll, -3
  %i.ln = add i32 %.sroa.speculated, -1
  %xtraiter214 = and i32 %.sroa.speculated, 3     ; 3 uses
  %i.lo = icmp ult i32 %i.ln, 3
  %unroll_iter219 = and i32 %.sroa.speculated, 2147483644
  %lcmp.mod216.not = icmp eq i32 %xtraiter214, 0
  %lcmp.mod218 = icmp ne i32 %xtraiter214, 0
  br label %bb.e

bb.d:                                             ; preds = %.loopexit317.i.i, %.lr.ph359.i.i
  %indvars.iv444.i.i = phi i64 [ %i.ks, %.lr.ph359.i.i ], [ %indvars.iv.next445.i.i, %.loopexit317.i.i ] ; 5 uses
  %.7358.i.i = phi ptr [ %.0445.lcssa.i.i, %.lr.ph359.i.i ], [ %.13.i.i, %.loopexit317.i.i ] ; 8 uses
  switch i32 %i.bb, label %.loopexit317.i.i [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit506.i.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit505.i.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit504.i.i
  ]

_ZN4ncnn3MatD2Ev.exit506.i.i:                     ; preds = %bb.d
  br i1 %i.kl, label %.lr.ph345.preheader.i.i, label %.loopexit317.i.i

.lr.ph345.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit506.i.i
  %i.lp = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1321
  %i.lq = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !1321
  %i.lr = mul i64 %i.lq, %i.kj
  %i.ls = load i64, ptr %i.q, align 8, !tbaa !65, !noalias !1321
  %i.lt = mul i64 %i.lr, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lt
  %i.lv = add nsw i64 %indvars.iv444.i.i, %i.kt
  %.idx484.i.i = shl nsw i64 %i.lv, 5
  %i.lw = getelementptr inbounds i8, ptr %i.lu, i64 %.idx484.i.i
  br label %.lr.ph345.i.i

.lr.ph345.i.i:                                    ; preds = %.lr.ph345.i.i, %.lr.ph345.preheader.i.i
  %.8344.i.i = phi ptr [ %i.nr, %.lr.ph345.i.i ], [ %.7358.i.i, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0463343.i.i = phi ptr [ %i.nt, %.lr.ph345.i.i ], [ %i.lw, %.lr.ph345.preheader.i.i ] ; 9 uses
  %.0464342.i.i = phi i32 [ %i.nu, %.lr.ph345.i.i ], [ 0, %.lr.ph345.preheader.i.i ]
  %i.lx = load <8 x float>, ptr %.0463343.i.i, align 32, !tbaa !316 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 32
  %i.lz = load <8 x float>, ptr %i.ly, align 32, !tbaa !316 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 64
  %i.mb = load <8 x float>, ptr %i.ma, align 32, !tbaa !316 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 96
  %i.md = load <8 x float>, ptr %i.mc, align 32, !tbaa !316 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 128
  %i.mf = load <8 x float>, ptr %i.me, align 32, !tbaa !316 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 160
  %i.mh = load <8 x float>, ptr %i.mg, align 32, !tbaa !316 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 192
  %i.mj = load <8 x float>, ptr %i.mi, align 32, !tbaa !316 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0463343.i.i, i64 224
  %i.ml = load <8 x float>, ptr %i.mk, align 32, !tbaa !316 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.12:bb.a
  store i32 %i.apa, ptr %i.apg, align 4, !tbaa !67
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.alv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.aph = getelementptr inbounds nuw i8, ptr %.1655.us.1.i, i64 12
  store i32 %i.apb, ptr %i.aph, align 4, !tbaa !67
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.api = getelementptr inbounds [4 x i8], ptr %.1655.us.1.i, i64 %i.afw
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au
  %.1655.us.2.i = phi ptr [ %.1655.us.1.i, %bb.au ], [ %i.api, %bb.bb ] ; 4 uses
  %i.apj = or disjoint i32 %i.ali, 3
  %.not.us.3.i = icmp slt i32 %i.apj, %i.en
  br i1 %.not.us.3.i, label %bb.bd, label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  %i.apk = add nsw i32 %i.aiq, %i.ahu             ; 2 uses
  %i.apl = add nsw i32 %i.aki, %i.ajm             ; 2 uses
  %i.apm = sub nsw i32 %i.ahu, %i.aiq             ; 2 uses
  %i.apn = sub nsw i32 %i.ajm, %i.aki             ; 2 uses
  %i.apo = add i32 %i.agw, %i.ags
  %i.app = add i32 %i.apo, %i.agy
  %i.apq = add i32 %i.app, %i.apk
  %i.apr = add i32 %i.apq, %i.apl
  %i.aps = shl nsw i32 %i.apl, 2
  %i.apt = add nsw i32 %i.aps, %i.apk
  %i.apu = shl nsw i32 %i.apn, 3
  %i.apv = add i32 %i.apu, %i.apm
  %i.apw = add i32 %i.apv, %i.alb
  %i.apx = add i32 %i.apw, %i.alf
  %i.apy = add i32 %i.apx, %i.ale
  %i.apz = sdiv i32 %i.apr, 576
  %i.aqa = sdiv i32 %i.apt, 576
  %i.aqb = sdiv i32 %i.apy, 576
  store i32 %i.apz, ptr %.1655.us.2.i, align 4, !tbaa !67
  br i1 %i.alr, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.aqc = shl nsw i32 %i.apn, 1
  %i.aqd = add nsw i32 %i.aqc, %i.apm
  %i.aqe = sdiv i32 %i.aqd, 576
  %i.aqf = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 4
  store i32 %i.aqe, ptr %i.aqf, align 4, !tbaa !67
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.alt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.aqg = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 8
  store i32 %i.aqa, ptr %i.aqg, align 4, !tbaa !67
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.alv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.aqh = getelementptr inbounds nuw i8, ptr %.1655.us.2.i, i64 12
  store i32 %i.aqb, ptr %i.aqh, align 4, !tbaa !67
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bc
  %indvars.iv.next1027.i = add nuw nsw i64 %indvars.iv1026.i, 1 ; 2 uses
  %exitcond1030.not.i = icmp eq i64 %indvars.iv.next1027.i, %wide.trip.count1029.i
  br i1 %exitcond1030.not.i, label %._crit_edge.us942.i, label %.preheader.us.i, !llvm.loop !1777

._crit_edge.us942.i:                              ; preds = %bb.bj
  %indvars.iv.next1032.i = add nsw i64 %indvars.iv1031.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1032.i, %i.ed
  br i1 %exitcond1035.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us941.i, !llvm.loop !1778

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.aqi = phi i32 [ %i.ash, %.noexc ], [ %.pre140, %.noexc.preheader ] ; 3 uses
  %i.aqj = phi i32 [ %i.asj, %.noexc ], [ %i.ek, %.noexc.preheader ] ; 2 uses
  %.045133 = phi i32 [ %i.asi, %.noexc ], [ 0, %.noexc.preheader ] ; 5 uses
  %i.aqk = sub nsw i32 %i.aqj, %.045133
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aqi, i32 %i.aqk)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.aql = load i32, ptr %3, align 4, !tbaa !67
  %i.aqm = sdiv i32 %i.dm, %i.aql
  %i.aqn = load ptr, ptr %10, align 8, !tbaa !18, !noalias !1779
  %i.aqo = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !1779
  %i.aqp = sext i32 %i.aqm to i64
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = load i64, ptr %i.s, align 8, !tbaa !65, !noalias !1779 ; 3 uses
  %i.aqs = mul i64 %i.aqq, %i.aqr
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqn, i64 %i.aqs
  %i.aqu = load i32, ptr %i.t, align 8, !tbaa !66, !noalias !1779
  %i.aqv = load ptr, ptr %i.u, align 8, !tbaa !17, !noalias !1779
  %i.aqw = sdiv i32 %.045133, %i.aqi
  %i.aqx = sext i32 %i.aqw to i64                 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !11, !alias.scope !1782
  store i64 %i.aqr, ptr %i.w, align 8, !tbaa !65, !alias.scope !1782
  store i32 %i.aqu, ptr %i.x, align 8, !tbaa !66, !alias.scope !1782
  store ptr %i.aqv, ptr %i.y, align 8, !tbaa !17, !alias.scope !1782
  store i32 2, ptr %i.z, align 8, !tbaa !289, !alias.scope !1782
  %i.aqy = load <2 x i32>, ptr %i.p, align 4, !tbaa !67, !noalias !1779
  %i.aqz = load i32, ptr %i.q, align 8, !tbaa !76, !noalias !1779
  %i.ara = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !1779
  %i.arb = sext i32 %i.ara to i64
  %i.arc = sext i32 %i.aqz to i64
  %i.ard = mul nsw i64 %i.arc, %i.arb             ; 2 uses
  %i.are = mul i64 %i.aqr, %i.ard
  %i.arf = mul i64 %i.are, %i.aqx
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %i.arf
  store ptr %i.arg, ptr %13, align 8, !tbaa !18, !alias.scope !1782
  %i.arh = shufflevector <2 x i32> %i.aqy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ari = shufflevector <4 x i32> %i.arh, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ari, ptr %i.aa, align 4, !tbaa !67, !alias.scope !1782
  store i64 %i.ard, ptr %i.ab, align 8, !tbaa !20, !alias.scope !1782
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.arj = load i32, ptr %7, align 4, !tbaa !67
  %i.ark = sdiv i32 %.044134, %i.arj
  %i.arl = load ptr, ptr %11, align 8, !tbaa !18, !noalias !1785
  %i.arm = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !1785
  %i.arn = sext i32 %i.ark to i64
  %i.aro = mul i64 %i.arm, %i.arn
  %i.arp = load i64, ptr %i.af, align 8, !tbaa !65, !noalias !1785 ; 3 uses
  %i.arq = mul i64 %i.aro, %i.arp
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arq
  %i.ars = load i32, ptr %i.ag, align 8, !tbaa !66, !noalias !1785
  %i.art = load ptr, ptr %i.ah, align 8, !tbaa !17, !noalias !1785
  store ptr null, ptr %i.ai, align 8, !tbaa !11
  store i64 %i.arp, ptr %i.aj, align 8, !tbaa !65
  store i32 %i.ars, ptr %i.ak, align 8, !tbaa !66
  store ptr %i.art, ptr %i.al, align 8, !tbaa !17
  store i32 2, ptr %i.am, align 8, !tbaa !289
  %i.aru = load <2 x i32>, ptr %i.ac, align 4, !tbaa !67, !noalias !1785
  %i.arv = load i32, ptr %i.ad, align 8, !tbaa !76, !noalias !1785
  %i.arw = load i32, ptr %i.ac, align 4, !tbaa !75, !noalias !1785
  %i.arx = sext i32 %i.arw to i64
  %i.ary = sext i32 %i.arv to i64
  %i.arz = mul nsw i64 %i.ary, %i.arx             ; 2 uses
  %i.asa = mul i64 %i.arp, %i.arz
  %i.asb = mul i64 %i.asa, %i.aqx
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.asb
  store ptr %i.asc, ptr %14, align 8, !tbaa !18
  %i.asd = shufflevector <2 x i32> %i.aru, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ase = shufflevector <4 x i32> %i.asd, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ase, ptr %i.an, align 4, !tbaa !67
  store i64 %i.arz, ptr %i.ao, align 8, !tbaa !20, !alias.scope !1788
  %i.asf = add nsw i32 %i.aqi, %.045133
  %i.asg = icmp sge i32 %i.asf, %i.aqj
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.du, i32 noundef 36, i32 noundef %.sroa.speculated118, i32 noundef %.sroa.speculated114, i32 noundef %.045133, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.asg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %i.ash = load i32, ptr %9, align 4, !tbaa !67   ; 2 uses
  %i.asi = add nsw i32 %i.ash, %.045133           ; 2 uses
  %i.asj = load i32, ptr %8, align 4, !tbaa !67   ; 2 uses
  %i.ask = icmp slt i32 %i.asi, %i.asj
  br i1 %i.ask, label %.noexc, label %._crit_edge, !llvm.loop !1791

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us942.i, %.lr.ph939.i, %.preheader773.i
  %i.asl = load i32, ptr %7, align 4, !tbaa !67   ; 2 uses
  %i.asm = add nsw i32 %i.asl, %.044134           ; 2 uses
  %i.asn = load i32, ptr %6, align 4, !tbaa !67   ; 2 uses
  %i.aso = icmp slt i32 %i.asm, %i.asn
  br i1 %i.aso, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !1792

._crit_edge139:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge139, %bb.a
  ret void

bb.bl:                                            ; preds = %bb.c
  %i.asp = landingpad { ptr, i32 }
          catch ptr null
  %i.asq = extractvalue { ptr, i32 } %i.asp, 0
  call void @__clang_call_terminate(ptr %i.asq) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #26 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader235.lr.ph, label %.preheader227

.preheader235.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 5 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 4 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1411 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1417 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1413.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1416 = trunc i32 %i.u to i1
  br label %.preheader235

.preheader235:                                    ; preds = %.preheader235.lr.ph, %bb.b
  %indvars.iv773 = phi i64 [ 0, %.preheader235.lr.ph ], [ %indvars.iv.next774, %bb.b ] ; 2 uses
  %.0655384 = phi ptr [ %.0.val, %.preheader235.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.z = mul nsw i64 %indvars.iv773, %i.s
  br label %bb.c

.preheader227.loopexit:                           ; preds = %bb.b
  %i.aa = trunc nuw nsw i64 %indvars.iv.next774 to i32
  br label %.preheader227

.preheader227:                                    ; preds = %.preheader227.loopexit, %bb.a
  %.0658.lcssa = phi i32 [ 0, %bb.a ], [ %i.aa, %.preheader227.loopexit ] ; 3 uses
  %.0655.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader227.loopexit ] ; 2 uses
  %i.ab = or disjoint i32 %.0658.lcssa, 1
  %i.ac = icmp slt i32 %i.ab, %3
  br i1 %i.ac, label %.preheader226.lr.ph, label %.preheader218

.preheader226.lr.ph:                              ; preds = %.preheader227
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = icmp sgt i32 %4, 7
  %i.ai = icmp eq i32 %5, 0                       ; 4 uses
  %i.aj = icmp sgt i32 %6, 1                      ; 4 uses
  %i.ak = add i32 %6, -2                          ; 6 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2                        ; 4 uses
  %i.an = and i32 %4, -8
  %i.ao = lshr i32 %i.ak, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = shl nuw nsw i64 %i.ap, 3
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = zext nneg i32 %.0658.lcssa to i64
  %i.au = sext i32 %3 to i64
  %i.av = sext i32 %6 to i64
  %wide.trip.count787 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.au, -1
  %i.aw = lshr i32 %i.ak, 1                       ; 2 uses
  %i.ax = add nuw i32 %i.aw, 1                    ; 2 uses
  %i.ay = icmp eq i32 %i.aw, 0
  %unroll_iter1428 = and i32 %i.ax, -2
  %i.az = and i32 %i.ak, 2
  %lcmp.mod1423.not.not = icmp eq i32 %i.az, 0
  %lcmp.mod1427 = trunc i32 %i.ax to i1
  %i.ba = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1127 = icmp ult i32 %i.ak, 6
  %n.vec1129 = and i64 %i.ba, 4294967292          ; 4 uses
  %i.bb = shl nuw nsw i64 %n.vec1129, 3           ; 2 uses
  %i.bc = trunc nuw i64 %n.vec1129 to i32
  %i.bd = shl i32 %i.bc, 1
  %cmp.n1146 = icmp eq i64 %i.ba, %n.vec1129
  %i.be = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check1063 = icmp ult i32 %i.ak, 14
  %n.vec1065 = and i64 %i.be, 4294967288          ; 5 uses
  %i.bf = shl nuw nsw i64 %n.vec1065, 2
  %i.bg = trunc nuw i64 %n.vec1065 to i32
  %i.bh = shl i32 %i.bg, 1
  %i.bi = shl nuw nsw i64 %n.vec1065, 3
  %cmp.n1092 = icmp eq i64 %i.be, %n.vec1065
  br label %.preheader226

bb.b:                                             ; preds = %._crit_edge379
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 4 ; 3 uses
  %i.bj = or disjoint i64 %indvars.iv.next774, 3
  %i.bk = icmp samesign ult i64 %i.bj, %i.r
  br i1 %i.bk, label %.preheader235, label %.preheader227.loopexit, !llvm.loop !1793

bb.c:                                             ; preds = %.preheader235, %._crit_edge379
  %indvars.iv = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next, %._crit_edge379 ] ; 3 uses
  %.1656382 = phi ptr [ %.0655384, %.preheader235 ], [ %.5.lcssa, %._crit_edge379 ] ; 2 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !18
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !75
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %indvars.iv, %i.bn
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bq = mul i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.z ; 10 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !18
  %i.bu = load i32, ptr %i.d, align 4, !tbaa !75
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul nsw i64 %indvars.iv, %i.bv
  %i.bx = load i64, ptr %i.e, align 8, !tbaa !65
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 2 uses
  br i1 %i.f, label %.lr.ph289, label %.preheader234

.preheader234:                                    ; preds = %bb.g, %bb.c
  %.0674.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0662.lcssa = phi ptr [ %i.bz, %bb.c ], [ %.2664.lcssa, %bb.g ] ; 2 uses
  %.2657.lcssa = phi ptr [ %.1656382, %bb.c ], [ %i.ix, %bb.g ] ; 2 uses
  %i.ca = or disjoint i32 %.0674.lcssa, 3
  %i.cb = icmp slt i32 %i.ca, %4
  br i1 %i.cb, label %.lr.ph326, label %.preheader233

.lr.ph289:                                        ; preds = %bb.c, %bb.g
  %.2657287 = phi ptr [ %i.ix, %bb.g ], [ %.1656382, %bb.c ] ; 17 uses
  %.0662286 = phi ptr [ %.2664.lcssa, %bb.g ], [ %i.bz, %bb.c ] ; 2 uses
  %.0674285 = phi i32 [ %i.iy, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph289
  %i.cc = load <2 x i64>, ptr %.2657287, align 16, !tbaa !316
  %i.cd = getelementptr inbounds nuw i8, ptr %.2657287, i64 16
  %i.ce = load <2 x i64>, ptr %i.cd, align 16, !tbaa !316
  %i.cf = getelementptr inbounds nuw i8, ptr %.2657287, i64 32
  %i.cg = load <2 x i64>, ptr %i.cf, align 16, !tbaa !316
  %i.ch = getelementptr inbounds nuw i8, ptr %.2657287, i64 48
  %i.ci = load <2 x i64>, ptr %i.ch, align 16, !tbaa !316
  %i.cj = getelementptr inbounds nuw i8, ptr %.2657287, i64 64
  %i.ck = load <2 x i64>, ptr %i.cj, align 16, !tbaa !316
  %i.cl = getelementptr inbounds nuw i8, ptr %.2657287, i64 80
  %i.cm = load <2 x i64>, ptr %i.cl, align 16, !tbaa !316
  %i.cn = getelementptr inbounds nuw i8, ptr %.2657287, i64 96
  %i.co = load <2 x i64>, ptr %i.cn, align 16, !tbaa !316
  %i.cp = getelementptr inbounds nuw i8, ptr %.2657287, i64 112
  %i.cq = load <2 x i64>, ptr %i.cp, align 16, !tbaa !316
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph289, %bb.d
  %.0205 = phi <2 x i64> [ %i.co, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0174 = phi <2 x i64> [ %i.cm, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0170 = phi <2 x i64> [ %i.ck, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0151 = phi <2 x i64> [ %i.ci, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0147 = phi <2 x i64> [ %i.cg, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0137 = phi <2 x i64> [ %i.ce, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %.0133 = phi <2 x i64> [ %i.cc, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  %storemerge806 = phi <2 x i64> [ %i.cq, %bb.d ], [ zeroinitializer, %.lr.ph289 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader231

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cr = bitcast <2 x i64> %.0133 to <4 x i32>
  %i.cs = bitcast <2 x i64> %.0137 to <4 x i32>
  %i.ct = bitcast <2 x i64> %.0147 to <4 x i32>
  %i.cu = bitcast <2 x i64> %.0151 to <4 x i32>
  %i.cv = bitcast <2 x i64> %.0170 to <4 x i32>
  %i.cw = bitcast <2 x i64> %.0174 to <4 x i32>
  %i.cx = bitcast <2 x i64> %.0205 to <4 x i32>
  %i.cy = bitcast <2 x i64> %storemerge806 to <4 x i32>
  br label %.lr.ph

.preheader231.loopexit:                           ; preds = %.lr.ph
  %i.cz = bitcast <4 x i32> %i.es to <2 x i64>
  %i.da = bitcast <4 x i32> %i.eq to <2 x i64>
  %i.db = bitcast <4 x i32> %i.eo to <2 x i64>
  %i.dc = bitcast <4 x i32> %i.em to <2 x i64>
  %i.dd = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.de = bitcast <4 x i32> %i.ee to <2 x i64>
  %i.df = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.dg = bitcast <4 x i32> %i.dx to <2 x i64>
  br label %.preheader231

.preheader231:                                    ; preds = %.preheader231.loopexit, %bb.e
  %.0209.lcssa = phi <2 x i64> [ %storemerge806, %bb.e ], [ %i.cz, %.preheader231.loopexit ] ; 2 uses
  %.1206.lcssa = phi <2 x i64> [ %.0205, %bb.e ], [ %i.da, %.preheader231.loopexit ] ; 2 uses
  %.1175.lcssa = phi <2 x i64> [ %.0174, %bb.e ], [ %i.db, %.preheader231.loopexit ] ; 2 uses
  %.1171.lcssa = phi <2 x i64> [ %.0170, %bb.e ], [ %i.dc, %.preheader231.loopexit ] ; 2 uses
  %.1152.lcssa = phi <2 x i64> [ %.0151, %bb.e ], [ %i.dd, %.preheader231.loopexit ] ; 2 uses
  %.1148.lcssa = phi <2 x i64> [ %.0147, %bb.e ], [ %i.de, %.preheader231.loopexit ] ; 2 uses
  %.1138.lcssa = phi <2 x i64> [ %.0137, %bb.e ], [ %i.df, %.preheader231.loopexit ] ; 2 uses
  %.1134.lcssa = phi <2 x i64> [ %.0133, %bb.e ], [ %i.dg, %.preheader231.loopexit ] ; 2 uses
  %.0680.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader231.loopexit ] ; 2 uses
  %.0678.lcssa = phi ptr [ %i.bs, %bb.e ], [ %i.et, %.preheader231.loopexit ]
  %.1663.lcssa = phi ptr [ %.0662286, %bb.e ], [ %i.eu, %.preheader231.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.0680.lcssa, %6
  br i1 %i.dh, label %.lr.ph275.preheader, label %._crit_edge

.lr.ph275.preheader:                              ; preds = %.preheader231
  %i.di = bitcast <2 x i64> %.1134.lcssa to <4 x i32>
  %i.dj = bitcast <2 x i64> %.1138.lcssa to <4 x i32>
  %i.dk = bitcast <2 x i64> %.1148.lcssa to <4 x i32>
  %i.dl = bitcast <2 x i64> %.1152.lcssa to <4 x i32>
  %i.dm = bitcast <2 x i64> %.1171.lcssa to <4 x i32>
  %i.dn = bitcast <2 x i64> %.1175.lcssa to <4 x i32>
  %i.do = bitcast <2 x i64> %.1206.lcssa to <4 x i32>
  %i.dp = bitcast <2 x i64> %.0209.lcssa to <4 x i32>
  br label %.lr.ph275

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1663253 = phi ptr [ %i.eu, %.lr.ph ], [ %.0662286, %.lr.ph.preheader ] ; 3 uses
  %.0678252 = phi ptr [ %i.et, %.lr.ph ], [ %i.bs, %.lr.ph.preheader ] ; 2 uses
  %.0680251 = phi i32 [ %i.ev, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.1134250 = phi <4 x i32> [ %i.dx, %.lr.ph ], [ %i.cr, %.lr.ph.preheader ]
  %.1138249 = phi <4 x i32> [ %i.ea, %.lr.ph ], [ %i.cs, %.lr.ph.preheader ]
  %.1148248 = phi <4 x i32> [ %i.ee, %.lr.ph ], [ %i.ct, %.lr.ph.preheader ]
  %.1152247 = phi <4 x i32> [ %i.ei, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ]
  %.1171246 = phi <4 x i32> [ %i.em, %.lr.ph ], [ %i.cv, %.lr.ph.preheader ]
  %.1175245 = phi <4 x i32> [ %i.eo, %.lr.ph ], [ %i.cw, %.lr.ph.preheader ]
  %.1206244 = phi <4 x i32> [ %i.eq, %.lr.ph ], [ %i.cx, %.lr.ph.preheader ]
  %.0209243 = phi <4 x i32> [ %i.es, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ]
  %i.dq = load <2 x i64>, ptr %.0678252, align 1, !tbaa !316 ; 2 uses
  %i.dr = load <2 x i64>, ptr %.1663253, align 1, !tbaa !316 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1663253, i64 16
  %i.dt = load <2 x i64>, ptr %i.ds, align 1, !tbaa !316 ; 2 uses
  %i.du = bitcast <2 x i64> %i.dq to <8 x i16>    ; 4 uses
  %i.dv = bitcast <2 x i64> %i.dr to <8 x i16>    ; 2 uses
  %i.dw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.du, <8 x i16> %i.dv)
  %i.dx = add <4 x i32> %i.dw, %.1134250          ; 2 uses
  %i.dy = bitcast <2 x i64> %i.dt to <8 x i16>    ; 2 uses
  %i.dz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.du, <8 x i16> %i.dy)
  %i.ea = add <4 x i32> %i.dz, %.1138249          ; 2 uses
  %i.eb = bitcast <2 x i64> %i.dr to <8 x i16>
  %i.ec = shufflevector <8 x i16> %i.eb, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.ed = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.du, <8 x i16> %i.ec)
  %i.ee = add <4 x i32> %i.ed, %.1148248          ; 2 uses
  %i.ef = bitcast <2 x i64> %i.dt to <8 x i16>
  %i.eg = shufflevector <8 x i16> %i.ef, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.eh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.du, <8 x i16> %i.eg)
  %i.ei = add <4 x i32> %i.eh, %.1152247          ; 2 uses
  %i.ej = bitcast <2 x i64> %i.dq to <8 x i16>
  %i.ek = shufflevector <8 x i16> %i.ej, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.el = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> %i.dv)
  %i.em = add <4 x i32> %i.el, %.1171246          ; 2 uses
  %i.en = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> %i.dy)
  %i.eo = add <4 x i32> %i.en, %.1175245          ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> %i.ec)
  %i.eq = add <4 x i32> %i.ep, %.1206244          ; 2 uses
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> %i.eg)
  %i.es = add <4 x i32> %i.er, %.0209243          ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0678252, i64 16 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.1663253, i64 32 ; 2 uses
  %i.ev = add nuw nsw i32 %.0680251, 2            ; 2 uses
  %i.ew = or disjoint i32 %i.ev, 1
  %i.ex = icmp slt i32 %i.ew, %6
  br i1 %i.ex, label %.lr.ph, label %.preheader231.loopexit, !llvm.loop !1794

end_hunk_11
begin_hunk_12_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %i.qe = bitcast <4 x i32> %i.qd to <2 x i64>
  %.3161 = select i1 %7, <2 x i64> %i.qc, <2 x i64> %.2160.lcssa
  %.2157 = select i1 %7, <2 x i64> %i.qe, <2 x i64> %.1156.lcssa
  store <2 x i64> %.3161, ptr %.4354, align 16, !tbaa !316
  %i.qf = getelementptr inbounds nuw i8, ptr %.4354, i64 16
  store <2 x i64> %.2157, ptr %i.qf, align 16, !tbaa !316
  %i.qg = getelementptr inbounds nuw i8, ptr %.4354, i64 32 ; 2 uses
  %i.qh = add nuw nsw i32 %.2676352, 2            ; 3 uses
  %i.qi = or disjoint i32 %i.qh, 1
  %i.qj = icmp slt i32 %i.qi, %4
  br i1 %i.qj, label %.lr.ph355, label %.preheader232, !llvm.loop !1802

.lr.ph378:                                        ; preds = %.preheader232, %._crit_edge372
  %.5377 = phi ptr [ %i.th, %._crit_edge372 ], [ %.4.lcssa, %.preheader232 ] ; 3 uses
  %.9671376 = phi ptr [ %.11673.lcssa, %._crit_edge372 ], [ %.6668.lcssa, %.preheader232 ] ; 4 uses
  %.3677375 = phi i32 [ %i.ti, %._crit_edge372 ], [ %.2676.lcssa, %.preheader232 ]
  br i1 %i.g, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph378
  %i.qk = load <4 x i32>, ptr %.5377, align 16, !tbaa !316
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph378, %bb.n
  %i.ql = phi <4 x i32> [ %i.qk, %bb.n ], [ zeroinitializer, %.lr.ph378 ] ; 3 uses
  br i1 %i.h, label %.lr.ph363.preheader, label %.preheader228

.lr.ph363.preheader:                              ; preds = %bb.o
  br i1 %i.x, label %.lr.ph363.epil.preheader, label %.lr.ph363

.preheader228.loopexit.unr-lcssa:                 ; preds = %.lr.ph363
  br i1 %lcmp.mod1413.not.not, label %.lr.ph363.epil.preheader, label %.preheader228.loopexit

.lr.ph363.epil.preheader:                         ; preds = %.preheader228.loopexit.unr-lcssa, %.lr.ph363.preheader
  %.10672361.epil.init = phi ptr [ %.9671376, %.lr.ph363.preheader ], [ %i.se, %.preheader228.loopexit.unr-lcssa ]
  %.0697360.epil.init = phi ptr [ %i.bs, %.lr.ph363.preheader ], [ %i.sd, %.preheader228.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x i32> [ %i.ql, %.lr.ph363.preheader ], [ %i.sc, %.preheader228.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1416)
  %i.qm = load <8 x i16>, ptr %.0697360.epil.init, align 1, !tbaa !316
  %i.qn = load float, ptr %.10672361.epil.init, align 1, !tbaa !316
  %i.qo = insertelement <4 x float> poison, float %i.qn, i64 0
  %i.qp = bitcast <4 x float> %i.qo to <8 x i16>
  %i.qq = shufflevector <8 x i16> %i.qp, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.qr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.qm, <8 x i16> %i.qq)
  %i.qs = add <4 x i32> %i.qr, %.epil.init
  %i.qt = getelementptr inbounds nuw i8, ptr %.0697360.epil.init, i64 16
  br label %.preheader228.loopexit

.preheader228.loopexit:                           ; preds = %.preheader228.loopexit.unr-lcssa, %.lr.ph363.epil.preheader
  %.lcssa1404 = phi <4 x i32> [ %i.sc, %.preheader228.loopexit.unr-lcssa ], [ %i.qs, %.lr.ph363.epil.preheader ]
  %.lcssa1403 = phi ptr [ %i.sd, %.preheader228.loopexit.unr-lcssa ], [ %i.qt, %.lr.ph363.epil.preheader ]
  %i.qu = getelementptr i8, ptr %.9671376, i64 %i.q
  %scevgep768 = getelementptr i8, ptr %i.qu, i64 4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.o
  %.lcssa241 = phi <4 x i32> [ %i.ql, %bb.o ], [ %.lcssa1404, %.preheader228.loopexit ] ; 3 uses
  %.0699.lcssa = phi i32 [ 0, %bb.o ], [ %i.k, %.preheader228.loopexit ] ; 5 uses
  %.0697.lcssa = phi ptr [ %i.bs, %bb.o ], [ %.lcssa1403, %.preheader228.loopexit ] ; 3 uses
  %.10672.lcssa = phi ptr [ %.9671376, %bb.o ], [ %scevgep768, %.preheader228.loopexit ] ; 4 uses
  %i.qv = icmp slt i32 %.0699.lcssa, %6
  br i1 %i.qv, label %.lr.ph371.preheader, label %._crit_edge372

.lr.ph371.preheader:                              ; preds = %.preheader228
  %i.qw = sub i32 %6, %.0699.lcssa
  %.neg = add i32 %.0699.lcssa, 1
  %xtraiter1419 = and i32 %i.qw, 1
  %lcmp.mod1420.not = icmp eq i32 %xtraiter1419, 0
  br i1 %lcmp.mod1420.not, label %.lr.ph371.prol.loopexit, label %.lr.ph371.prol

.lr.ph371.prol:                                   ; preds = %.lr.ph371.preheader
  %i.qx = load i64, ptr %.0697.lcssa, align 1, !tbaa !316
  %i.qy = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.qx, i64 0
  %i.qz = load i16, ptr %.10672.lcssa, align 2, !tbaa !573
  %i.ra = insertelement <8 x i16> poison, i16 %i.qz, i64 0
  %i.rb = shufflevector <8 x i16> %i.ra, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.rc = bitcast <2 x i64> %i.qy to <8 x i16>    ; 2 uses
  %i.rd = mul <8 x i16> %i.rb, %i.rc
  %i.re = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.rc, <8 x i16> %i.rb)
  %i.rf = shufflevector <8 x i16> %i.rd, <8 x i16> %i.re, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rg = bitcast <8 x i16> %i.rf to <4 x i32>
  %i.rh = add <4 x i32> %.lcssa241, %i.rg         ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0697.lcssa, i64 8
  %i.rj = getelementptr inbounds nuw i8, ptr %.10672.lcssa, i64 2 ; 2 uses
  %i.rk = add nuw nsw i32 %.0699.lcssa, 1
  br label %.lr.ph371.prol.loopexit

.lr.ph371.prol.loopexit:                          ; preds = %.lr.ph371.prol, %.lr.ph371.preheader
  %.lcssa1406.unr = phi <4 x i32> [ poison, %.lr.ph371.preheader ], [ %i.rh, %.lr.ph371.prol ]
  %.lcssa1405.unr = phi ptr [ poison, %.lr.ph371.preheader ], [ %i.rj, %.lr.ph371.prol ]
  %.11673370.unr = phi ptr [ %.10672.lcssa, %.lr.ph371.preheader ], [ %i.rj, %.lr.ph371.prol ]
  %.1698369.unr = phi ptr [ %.0697.lcssa, %.lr.ph371.preheader ], [ %i.ri, %.lr.ph371.prol ]
  %.1700368.unr = phi i32 [ %.0699.lcssa, %.lr.ph371.preheader ], [ %i.rk, %.lr.ph371.prol ]
  %.unr1421 = phi <4 x i32> [ %.lcssa241, %.lr.ph371.preheader ], [ %i.rh, %.lr.ph371.prol ]
  %i.rl = icmp eq i32 %6, %.neg
  br i1 %i.rl, label %._crit_edge372, label %.lr.ph371

.lr.ph363:                                        ; preds = %.lr.ph363.preheader, %.lr.ph363
  %.10672361 = phi ptr [ %i.se, %.lr.ph363 ], [ %.9671376, %.lr.ph363.preheader ] ; 3 uses
  %.0697360 = phi ptr [ %i.sd, %.lr.ph363 ], [ %i.bs, %.lr.ph363.preheader ] ; 3 uses
  %i.rm = phi <4 x i32> [ %i.sc, %.lr.ph363 ], [ %i.ql, %.lr.ph363.preheader ]
  %niter1418 = phi i32 [ %niter1418.next.1, %.lr.ph363 ], [ 0, %.lr.ph363.preheader ]
  %i.rn = load <8 x i16>, ptr %.0697360, align 1, !tbaa !316
  %i.ro = load float, ptr %.10672361, align 1, !tbaa !316
  %i.rp = insertelement <4 x float> poison, float %i.ro, i64 0
  %i.rq = bitcast <4 x float> %i.rp to <8 x i16>
  %i.rr = shufflevector <8 x i16> %i.rq, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.rs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rn, <8 x i16> %i.rr)
  %i.rt = add <4 x i32> %i.rs, %i.rm
  %i.ru = getelementptr inbounds nuw i8, ptr %.0697360, i64 16
  %i.rv = getelementptr inbounds nuw i8, ptr %.10672361, i64 4
  %i.rw = load <8 x i16>, ptr %i.ru, align 1, !tbaa !316
  %i.rx = load float, ptr %i.rv, align 1, !tbaa !316
  %i.ry = insertelement <4 x float> poison, float %i.rx, i64 0
  %i.rz = bitcast <4 x float> %i.ry to <8 x i16>
  %i.sa = shufflevector <8 x i16> %i.rz, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.sb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.rw, <8 x i16> %i.sa)
  %i.sc = add <4 x i32> %i.sb, %i.rt              ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0697360, i64 32 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.10672361, i64 8 ; 2 uses
  %niter1418.next.1 = add nuw nsw i32 %niter1418, 2 ; 2 uses
  %niter1418.ncmp.1.not = icmp eq i32 %niter1418.next.1, %unroll_iter1417
  br i1 %niter1418.ncmp.1.not, label %.preheader228.loopexit.unr-lcssa, label %.lr.ph363, !llvm.loop !1803

.lr.ph371:                                        ; preds = %.lr.ph371.prol.loopexit, %.lr.ph371
  %.11673370 = phi ptr [ %i.tf, %.lr.ph371 ], [ %.11673370.unr, %.lr.ph371.prol.loopexit ] ; 3 uses
  %.1698369 = phi ptr [ %i.te, %.lr.ph371 ], [ %.1698369.unr, %.lr.ph371.prol.loopexit ] ; 3 uses
  %.1700368 = phi i32 [ %i.tg, %.lr.ph371 ], [ %.1700368.unr, %.lr.ph371.prol.loopexit ]
  %i.sf = phi <4 x i32> [ %i.td, %.lr.ph371 ], [ %.unr1421, %.lr.ph371.prol.loopexit ]
  %i.sg = load i64, ptr %.1698369, align 1, !tbaa !316
  %i.sh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.sg, i64 0
  %i.si = load i16, ptr %.11673370, align 2, !tbaa !573
  %i.sj = insertelement <8 x i16> poison, i16 %i.si, i64 0
  %i.sk = shufflevector <8 x i16> %i.sj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sl = bitcast <2 x i64> %i.sh to <8 x i16>    ; 2 uses
  %i.sm = mul <8 x i16> %i.sk, %i.sl
  %i.sn = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.sl, <8 x i16> %i.sk)
  %i.so = shufflevector <8 x i16> %i.sm, <8 x i16> %i.sn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sp = bitcast <8 x i16> %i.so to <4 x i32>
  %i.sq = add <4 x i32> %i.sf, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %.1698369, i64 8
  %i.ss = getelementptr inbounds nuw i8, ptr %.11673370, i64 2
  %i.st = load i64, ptr %i.sr, align 1, !tbaa !316
  %i.su = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.st, i64 0
  %i.sv = load i16, ptr %i.ss, align 2, !tbaa !573
  %i.sw = insertelement <8 x i16> poison, i16 %i.sv, i64 0
  %i.sx = shufflevector <8 x i16> %i.sw, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.sy = bitcast <2 x i64> %i.su to <8 x i16>    ; 2 uses
  %i.sz = mul <8 x i16> %i.sx, %i.sy
  %i.ta = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.sy, <8 x i16> %i.sx)
  %i.tb = shufflevector <8 x i16> %i.sz, <8 x i16> %i.ta, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tc = bitcast <8 x i16> %i.tb to <4 x i32>
  %i.td = add <4 x i32> %i.sq, %i.tc              ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.1698369, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %.11673370, i64 4 ; 2 uses
  %i.tg = add nuw nsw i32 %.1700368, 2            ; 2 uses
  %exitcond769.not.1 = icmp eq i32 %i.tg, %6
  br i1 %exitcond769.not.1, label %._crit_edge372, label %.lr.ph371, !llvm.loop !1804

._crit_edge372:                                   ; preds = %.lr.ph371.prol.loopexit, %.lr.ph371, %.preheader228
  %.lcssa242 = phi <4 x i32> [ %.lcssa241, %.preheader228 ], [ %.lcssa1406.unr, %.lr.ph371.prol.loopexit ], [ %i.td, %.lr.ph371 ]
  %.11673.lcssa = phi ptr [ %.10672.lcssa, %.preheader228 ], [ %.lcssa1405.unr, %.lr.ph371.prol.loopexit ], [ %i.tf, %.lr.ph371 ]
  store <4 x i32> %.lcssa242, ptr %.5377, align 16, !tbaa !316
  %i.th = getelementptr inbounds nuw i8, ptr %.5377, i64 16 ; 2 uses
  %i.ti = add nuw nsw i32 %.3677375, 1            ; 2 uses
  %exitcond770.not = icmp eq i32 %i.ti, %4
  br i1 %exitcond770.not, label %._crit_edge379, label %.lr.ph378, !llvm.loop !1805

._crit_edge379:                                   ; preds = %._crit_edge372, %.preheader232
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader232 ], [ %i.th, %._crit_edge372 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond772.not, label %bb.b, label %bb.c, !llvm.loop !1806

.preheader226:                                    ; preds = %.preheader226.lr.ph, %bb.p
  %indvars.iv789 = phi i64 [ %i.at, %.preheader226.lr.ph ], [ %indvars.iv.next790, %bb.p ] ; 2 uses
  %.6522 = phi ptr [ %.0655.lcssa, %.preheader226.lr.ph ], [ %.11.lcssa, %bb.p ]
  %i.tj = mul nsw i64 %indvars.iv789, %i.av
  br label %bb.q

.preheader218.loopexit:                           ; preds = %bb.p
  %i.tk = trunc nuw nsw i64 %indvars.iv.next790 to i32
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.loopexit, %.preheader227
  %.1659.lcssa = phi i32 [ %.0658.lcssa, %.preheader227 ], [ %i.tk, %.preheader218.loopexit ] ; 2 uses
  %.6.lcssa = phi ptr [ %.0655.lcssa, %.preheader227 ], [ %.11.lcssa, %.preheader218.loopexit ]
  %i.tl = icmp slt i32 %.1659.lcssa, %3
  br i1 %i.tl, label %.preheader217.lr.ph, label %._crit_edge627

.preheader217.lr.ph:                              ; preds = %.preheader218
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tq = icmp sgt i32 %4, 7
  %i.tr = icmp eq i32 %5, 0                       ; 5 uses
  %i.ts = icmp sgt i32 %6, 1                      ; 3 uses
  %i.tt = icmp sgt i32 %6, 0
  %i.tu = add i32 %6, -2                          ; 3 uses
  %i.tv = and i32 %i.tu, -2
  %i.tw = add i32 %i.tv, 2                        ; 4 uses
  %i.tx = and i32 %4, -8
  %i.ty = lshr i32 %i.tu, 1
  %i.tz = zext nneg i32 %i.ty to i64              ; 3 uses
  %i.ua = shl nuw nsw i64 %i.tz, 4
  %i.ub = shl nuw nsw i64 %i.tz, 3
  %i.uc = add i32 %4, -1                          ; 2 uses
  %i.ud = add i32 %6, -1
  %i.ue = zext i32 %i.ud to i64
  %i.uf = shl nuw nsw i64 %i.ue, 1
  %i.ug = zext nneg i32 %.1659.lcssa to i64
  %i.uh = sext i32 %6 to i64
  %wide.trip.count812 = zext i32 %3 to i64
  %wide.trip.count807 = zext nneg i32 %2 to i64
  %i.ui = zext i32 %6 to i64                      ; 5 uses
  %i.uj = add i32 %6, -2                          ; 3 uses
  %i.uk = lshr i32 %i.uj, 1                       ; 3 uses
  %i.ul = add nuw i32 %i.uk, 1                    ; 4 uses
  %i.um = icmp eq i32 %i.uk, 0
  %unroll_iter1441 = and i32 %i.ul, -2
  %i.un = and i32 %i.uj, 2
  %lcmp.mod1435.not.not = icmp eq i32 %i.un, 0
  %lcmp.mod1440 = trunc i32 %i.ul to i1
  %i.uo = icmp eq i32 %i.uk, 0
  %unroll_iter1450 = and i32 %i.ul, -2
  %i.up = and i32 %i.uj, 2
  %lcmp.mod1446.not.not = icmp eq i32 %i.up, 0
  %lcmp.mod1449 = trunc i32 %i.ul to i1
  %i.uq = add nuw nsw i64 %i.tz, 1                ; 2 uses
  %min.iters.check1230 = icmp ult i32 %i.tu, 14
  %n.vec1232 = and i64 %i.uq, 4294967288          ; 5 uses
  %i.ur = trunc nuw i64 %n.vec1232 to i32
  %i.us = shl i32 %i.ur, 1
  %i.ut = shl nuw nsw i64 %n.vec1232, 2
  %i.uu = shl nuw nsw i64 %n.vec1232, 3
  %cmp.n1259 = icmp eq i64 %i.uq, %n.vec1232
  %min.iters.check1155 = icmp ult i32 %6, 4
  %min.iters.check1156 = icmp ult i32 %6, 16
  %i.uv = and i64 %i.ui, 12
  %n.vec1158 = and i64 %i.ui, 2147483632          ; 5 uses
  %i.uw = trunc nuw nsw i64 %n.vec1158 to i32
  %i.ux = shl nuw nsw i64 %n.vec1158, 1           ; 2 uses
  %cmp.n1180 = icmp eq i64 %n.vec1158, %i.ui
  %min.epilog.iters.check = icmp eq i64 %i.uv, 0
  %n.vec1185 = and i64 %i.ui, 2147483644          ; 4 uses
  %i.uy = trunc nuw nsw i64 %n.vec1185 to i32
  %i.uz = shl nuw nsw i64 %n.vec1185, 1           ; 2 uses
  %cmp.n1193 = icmp eq i64 %n.vec1185, %i.ui
  br label %.preheader217

bb.p:                                             ; preds = %._crit_edge517
  %indvars.iv.next790 = add nuw nsw i64 %indvars.iv789, 2 ; 3 uses
  %i.va = icmp slt i64 %indvars.iv.next790, %invariant.op
  br i1 %i.va, label %.preheader226, label %.preheader218.loopexit, !llvm.loop !1807

bb.q:                                             ; preds = %.preheader226, %._crit_edge517
  %indvars.iv784 = phi i64 [ 0, %.preheader226 ], [ %indvars.iv.next785, %._crit_edge517 ] ; 3 uses
  %.7520 = phi ptr [ %.6522, %.preheader226 ], [ %.11.lcssa, %._crit_edge517 ] ; 2 uses
  %i.vb = load ptr, ptr %0, align 8, !tbaa !18
  %i.vc = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.vd = sext i32 %i.vc to i64
  %i.ve = mul nsw i64 %indvars.iv784, %i.vd
  %i.vf = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.vg = mul i64 %i.ve, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vg
  %i.vi = getelementptr inbounds [2 x i8], ptr %i.vh, i64 %i.tj ; 23 uses
  %i.vj = load ptr, ptr %1, align 8, !tbaa !18
  %i.vk = load i32, ptr %i.af, align 4, !tbaa !75
  %i.vl = sext i32 %i.vk to i64
  %i.vm = mul nsw i64 %indvars.iv784, %i.vl
  %i.vn = load i64, ptr %i.ag, align 8, !tbaa !65
  %i.vo = mul i64 %i.vm, %i.vn
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vo ; 2 uses
  br i1 %i.ah, label %.lr.ph421, label %.preheader225

.preheader225:                                    ; preds = %bb.u, %bb.q
  %.0714.lcssa = phi i32 [ 0, %bb.q ], [ %i.an, %bb.u ] ; 3 uses
  %.0702.lcssa = phi ptr [ %i.vp, %bb.q ], [ %.2704.lcssa, %bb.u ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7520, %bb.q ], [ %i.zf, %bb.u ] ; 2 uses
  %i.vq = or disjoint i32 %.0714.lcssa, 3
  %i.vr = icmp slt i32 %i.vq, %4
  br i1 %i.vr, label %.lr.ph450, label %.preheader224

.lr.ph421:                                        ; preds = %bb.q, %bb.u
  %.8419 = phi ptr [ %i.zf, %bb.u ], [ %.7520, %bb.q ] ; 9 uses
  %.0702418 = phi ptr [ %.2704.lcssa, %bb.u ], [ %i.vp, %bb.q ] ; 2 uses
  %.0714417 = phi i32 [ %i.zg, %bb.u ], [ 0, %bb.q ]
  br i1 %i.ai, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph421
  %i.vs = load <2 x i64>, ptr %.8419, align 1, !tbaa !316
  %i.vt = getelementptr inbounds nuw i8, ptr %.8419, i64 16
  %i.vu = load <2 x i64>, ptr %i.vt, align 1, !tbaa !316
  %i.vv = getelementptr inbounds nuw i8, ptr %.8419, i64 32
  %i.vw = load <2 x i64>, ptr %i.vv, align 1, !tbaa !316
  %i.vx = getelementptr inbounds nuw i8, ptr %.8419, i64 48
  %i.vy = load <2 x i64>, ptr %i.vx, align 1, !tbaa !316
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph421, %bb.r
  %.0784 = phi <2 x i64> [ %i.vy, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0780 = phi <2 x i64> [ %i.vw, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0776 = phi <2 x i64> [ %i.vu, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  %.0772 = phi <2 x i64> [ %i.vs, %bb.r ], [ zeroinitializer, %.lr.ph421 ] ; 2 uses
  br i1 %i.aj, label %.lr.ph395.preheader, label %.preheader222

.lr.ph395.preheader:                              ; preds = %bb.s
  %i.vz = bitcast <2 x i64> %.0772 to <4 x i32>
  %i.wa = bitcast <2 x i64> %.0776 to <4 x i32>
  %i.wb = bitcast <2 x i64> %.0780 to <4 x i32>
  %i.wc = bitcast <2 x i64> %.0784 to <4 x i32>
  br label %.lr.ph395

.preheader222.loopexit:                           ; preds = %.lr.ph395
  %i.wd = bitcast <4 x i32> %i.xf to <2 x i64>
  %i.we = bitcast <4 x i32> %i.xd to <2 x i64>
  %i.wf = bitcast <4 x i32> %i.wz to <2 x i64>
  %i.wg = bitcast <4 x i32> %i.wx to <2 x i64>
  br label %.preheader222

.preheader222:                                    ; preds = %.preheader222.loopexit, %bb.s
  %.0788.lcssa = phi i32 [ 0, %bb.s ], [ %i.am, %.preheader222.loopexit ] ; 2 uses
  %.1785.lcssa = phi <2 x i64> [ %.0784, %bb.s ], [ %i.wd, %.preheader222.loopexit ] ; 2 uses
  %.1781.lcssa = phi <2 x i64> [ %.0780, %bb.s ], [ %i.we, %.preheader222.loopexit ] ; 2 uses
  %.1777.lcssa = phi <2 x i64> [ %.0776, %bb.s ], [ %i.wf, %.preheader222.loopexit ] ; 2 uses
  %.1773.lcssa = phi <2 x i64> [ %.0772, %bb.s ], [ %i.wg, %.preheader222.loopexit ] ; 2 uses
  %.0743.lcssa = phi ptr [ %i.vi, %bb.s ], [ %i.xg, %.preheader222.loopexit ]
  %.1703.lcssa = phi ptr [ %.0702418, %bb.s ], [ %i.xh, %.preheader222.loopexit ] ; 2 uses
  %i.wh = icmp slt i32 %.0788.lcssa, %6
  br i1 %i.wh, label %.lr.ph410.preheader, label %._crit_edge411

.lr.ph410.preheader:                              ; preds = %.preheader222
  %i.wi = bitcast <2 x i64> %.1773.lcssa to <4 x i32>
  %i.wj = bitcast <2 x i64> %.1777.lcssa to <4 x i32>
  %i.wk = bitcast <2 x i64> %.1781.lcssa to <4 x i32>
  %i.wl = bitcast <2 x i64> %.1785.lcssa to <4 x i32>
  br label %.lr.ph410

.lr.ph395:                                        ; preds = %.lr.ph395.preheader, %.lr.ph395
  %.1703393 = phi ptr [ %i.xh, %.lr.ph395 ], [ %.0702418, %.lr.ph395.preheader ] ; 3 uses
  %.0743392 = phi ptr [ %i.xg, %.lr.ph395 ], [ %i.vi, %.lr.ph395.preheader ] ; 3 uses
  %.1773391 = phi <4 x i32> [ %i.wx, %.lr.ph395 ], [ %i.vz, %.lr.ph395.preheader ]
  %.1777390 = phi <4 x i32> [ %i.wz, %.lr.ph395 ], [ %i.wa, %.lr.ph395.preheader ]
  %.1781389 = phi <4 x i32> [ %i.xd, %.lr.ph395 ], [ %i.wb, %.lr.ph395.preheader ]
  %.1785388 = phi <4 x i32> [ %i.xf, %.lr.ph395 ], [ %i.wc, %.lr.ph395.preheader ]
  %.0788387 = phi i32 [ %i.xi, %.lr.ph395 ], [ 0, %.lr.ph395.preheader ]
  %i.wm = load float, ptr %.0743392, align 1, !tbaa !316
  %i.wn = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wo = getelementptr inbounds nuw i8, ptr %.0743392, i64 4
  %i.wp = load float, ptr %i.wo, align 1, !tbaa !316
  %i.wq = insertelement <4 x float> poison, float %i.wp, i64 0
  %i.wr = load <8 x i16>, ptr %.1703393, align 1, !tbaa !316 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.1703393, i64 16
  %i.wt = load <8 x i16>, ptr %i.ws, align 1, !tbaa !316 ; 2 uses
  %i.wu = bitcast <4 x float> %i.wn to <8 x i16>
  %i.wv = shufflevector <8 x i16> %i.wu, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ww = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wv, <8 x i16> %i.wr)
  %i.wx = add <4 x i32> %i.ww, %.1773391          ; 2 uses
  %i.wy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.wv, <8 x i16> %i.wt)
  %i.wz = add <4 x i32> %i.wy, %.1777390          ; 2 uses
  %i.xa = bitcast <4 x float> %i.wq to <8 x i16>
  %i.xb = shufflevector <8 x i16> %i.xa, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.xc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.xb, <8 x i16> %i.wr)
  %i.xd = add <4 x i32> %i.xc, %.1781389          ; 2 uses
  %i.xe = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.xb, <8 x i16> %i.wt)
  %i.xf = add <4 x i32> %i.xe, %.1785388          ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0743392, i64 8 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.1703393, i64 32 ; 2 uses
  %i.xi = add nuw nsw i32 %.0788387, 2            ; 2 uses
  %i.xj = or disjoint i32 %i.xi, 1
  %i.xk = icmp slt i32 %i.xj, %6
  br i1 %i.xk, label %.lr.ph395, label %.preheader222.loopexit, !llvm.loop !1808

.lr.ph410:                                        ; preds = %.lr.ph410.preheader, %.lr.ph410
  %.2704409 = phi ptr [ %i.yk, %.lr.ph410 ], [ %.1703.lcssa, %.lr.ph410.preheader ] ; 2 uses
  %.1744408 = phi ptr [ %i.yj, %.lr.ph410 ], [ %.0743.lcssa, %.lr.ph410.preheader ] ; 3 uses
  %.2774407 = phi <4 x i32> [ %i.yc, %.lr.ph410 ], [ %i.wi, %.lr.ph410.preheader ]
  %.2778406 = phi <4 x i32> [ %i.ye, %.lr.ph410 ], [ %i.wj, %.lr.ph410.preheader ]
  %.2782405 = phi <4 x i32> [ %i.yg, %.lr.ph410 ], [ %i.wk, %.lr.ph410.preheader ]
  %.2786404 = phi <4 x i32> [ %i.yi, %.lr.ph410 ], [ %i.wl, %.lr.ph410.preheader ]
  %.1789403 = phi i32 [ %i.yl, %.lr.ph410 ], [ %.0788.lcssa, %.lr.ph410.preheader ]
  %i.xl = load <8 x i16>, ptr %.2704409, align 16, !tbaa !316 ; 4 uses
  %i.xm = load i16, ptr %.1744408, align 2, !tbaa !573
  %i.xn = insertelement <8 x i16> poison, i16 %i.xm, i64 0
  %i.xo = shufflevector <8 x i16> %i.xn, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.1744408, i64 2
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !573
  %i.xr = insertelement <8 x i16> poison, i16 %i.xq, i64 0
  %i.xs = shufflevector <8 x i16> %i.xr, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.xt = mul <8 x i16> %i.xo, %i.xl              ; 2 uses
  %i.xu = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.xo, <8 x i16> %i.xl) ; 2 uses
  %i.xv = mul <8 x i16> %i.xs, %i.xl              ; 2 uses
  %i.xw = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.xs, <8 x i16> %i.xl) ; 2 uses
  %i.xx = shufflevector <8 x i16> %i.xt, <8 x i16> %i.xu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xy = shufflevector <8 x i16> %i.xt, <8 x i16> %i.xu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.xz = shufflevector <8 x i16> %i.xv, <8 x i16> %i.xw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ya = shufflevector <8 x i16> %i.xv, <8 x i16> %i.xw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.yb = bitcast <8 x i16> %i.xx to <4 x i32>
  %i.yc = add <4 x i32> %.2774407, %i.yb          ; 2 uses
  %i.yd = bitcast <8 x i16> %i.xy to <4 x i32>
  %i.ye = add <4 x i32> %.2778406, %i.yd          ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %exitcond.not.i.us.us.i = icmp eq i32 %i.du, %i.bx
  br i1 %exitcond.not.i.us.us.i, label %.loopexit128.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !1930

.loopexit128.i.loopexit.us.us.i:                  ; preds = %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 8 ; 3 uses
  %i.dv = or disjoint i64 %indvars.iv.next.i.us.us.i, 7
  %i.dw = icmp samesign ult i64 %i.dv, %i.cd
  br i1 %i.dw, label %_ZN4ncnn3MatD2Ev.exit271.i.us.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1931

_ZN4ncnn3MatD2Ev.exit270.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader, %.loopexit128.i.us146.i
  %indvars.iv.i.us144.i = phi i64 [ %indvars.iv.next.i.us148.i, %.loopexit128.i.us146.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 2 uses
  %.0233146.i.us145.i = phi ptr [ %.5.i.us147.i, %.loopexit128.i.us146.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i.preheader ] ; 3 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1932
  %i.dy = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1932
  %i.dz = mul i64 %i.dy, %i.bz
  %i.ea = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1932
  %i.eb = mul i64 %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 %indvars.iv.i.us144.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.ce  ; 3 uses
  br i1 %i.ca, label %.lr.ph136.i.us.i.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.preheader:                       ; preds = %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  br i1 %i.ci, label %.lr.ph136.i.us.i.epil.preheader, label %.lr.ph136.i.us.i

.lr.ph136.i.us.i:                                 ; preds = %.lr.ph136.i.us.i.preheader, %.lr.ph136.i.us.i
  %.3135.i.us.i = phi ptr [ %i.ex, %.lr.ph136.i.us.i ], [ %.0233146.i.us145.i, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %.0252134.i.us.i = phi ptr [ %i.ey, %.lr.ph136.i.us.i ], [ %i.ee, %.lr.ph136.i.us.i.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph136.i.us.i ], [ 0, %.lr.ph136.i.us.i.preheader ]
  %i.ef = load i64, ptr %.0252134.i.us.i, align 1, !tbaa !316
  %i.eg = insertelement <2 x i64> poison, i64 %i.ef, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.bs
  %i.ei = load i64, ptr %i.eh, align 1, !tbaa !316
  %i.ej = insertelement <2 x i64> poison, i64 %i.ei, i64 0
  %i.ek = bitcast <2 x i64> %i.eg to <16 x i8>
  %i.el = bitcast <2 x i64> %i.ej to <16 x i8>
  %i.em = shufflevector <16 x i8> %i.ek, <16 x i8> %i.el, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.em, ptr %.3135.i.us.i, align 1, !tbaa !316
  %i.en = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i, i64 %i.cb ; 3 uses
  %i.ep = load i64, ptr %i.eo, align 1, !tbaa !316
  %i.eq = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.bs
  %i.es = load i64, ptr %i.er, align 1, !tbaa !316
  %i.et = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %i.eu = bitcast <2 x i64> %i.eq to <16 x i8>
  %i.ev = bitcast <2 x i64> %i.et to <16 x i8>
  %i.ew = shufflevector <16 x i8> %i.eu, <16 x i8> %i.ev, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ew, ptr %i.en, align 1, !tbaa !316
  %i.ex = getelementptr inbounds nuw i8, ptr %.3135.i.us.i, i64 32 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.cb ; 3 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader127.i.us.i.loopexit.unr-lcssa, label %.lr.ph136.i.us.i, !llvm.loop !1935

.preheader127.i.us.i.loopexit.unr-lcssa:          ; preds = %.lr.ph136.i.us.i
  br i1 %lcmp.mod.not.not, label %.lr.ph136.i.us.i.epil.preheader, label %.preheader127.i.us.i

.lr.ph136.i.us.i.epil.preheader:                  ; preds = %.preheader127.i.us.i.loopexit.unr-lcssa, %.lr.ph136.i.us.i.preheader
  %.3135.i.us.i.epil.init = phi ptr [ %.0233146.i.us145.i, %.lr.ph136.i.us.i.preheader ], [ %i.ex, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 2 uses
  %.0252134.i.us.i.epil.init = phi ptr [ %i.ee, %.lr.ph136.i.us.i.preheader ], [ %i.ey, %.preheader127.i.us.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod381)
  %i.ez = load i64, ptr %.0252134.i.us.i.epil.init, align 1, !tbaa !316
  %i.fa = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %i.fb = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.bs
  %i.fc = load i64, ptr %i.fb, align 1, !tbaa !316
  %i.fd = insertelement <2 x i64> poison, i64 %i.fc, i64 0
  %i.fe = bitcast <2 x i64> %i.fa to <16 x i8>
  %i.ff = bitcast <2 x i64> %i.fd to <16 x i8>
  %i.fg = shufflevector <16 x i8> %i.fe, <16 x i8> %i.ff, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.fg, ptr %.3135.i.us.i.epil.init, align 1, !tbaa !316
  %i.fh = getelementptr inbounds nuw i8, ptr %.3135.i.us.i.epil.init, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0252134.i.us.i.epil.init, i64 %i.cb
  br label %.preheader127.i.us.i

.preheader127.i.us.i:                             ; preds = %.lr.ph136.i.us.i.epil.preheader, %.preheader127.i.us.i.loopexit.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit270.i.us.i
  %.0254.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.cc, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.cc, %.lr.ph136.i.us.i.epil.preheader ] ; 5 uses
  %.0252.lcssa.i.us.i = phi ptr [ %i.ee, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.ey, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.fi, %.lr.ph136.i.us.i.epil.preheader ] ; 2 uses
  %.3.lcssa.i.us.i = phi ptr [ %.0233146.i.us145.i, %_ZN4ncnn3MatD2Ev.exit270.i.us.i ], [ %i.ex, %.preheader127.i.us.i.loopexit.unr-lcssa ], [ %i.fh, %.lr.ph136.i.us.i.epil.preheader ] ; 3 uses
  %i.fj = icmp slt i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.fj, label %.lr.ph143.i.us.i.preheader, label %.loopexit128.i.us146.i

.lr.ph143.i.us.i.preheader:                       ; preds = %.preheader127.i.us.i
  %i.fk = sub i32 %.sroa.speculated, %.0254.lcssa.i.us.i
  %xtraiter382 = and i32 %i.fk, 7                 ; 2 uses
  %lcmp.mod383.not = icmp eq i32 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol

.lr.ph143.i.us.i.prol:                            ; preds = %.lr.ph143.i.us.i.preheader, %.lr.ph143.i.us.i.prol
  %.4142.i.us.i.prol = phi ptr [ %i.fm, %.lr.ph143.i.us.i.prol ], [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1253141.i.us.i.prol = phi ptr [ %i.fn, %.lr.ph143.i.us.i.prol ], [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ] ; 2 uses
  %.1255140.i.us.i.prol = phi i32 [ %i.fo, %.lr.ph143.i.us.i.prol ], [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph143.i.us.i.prol ], [ 0, %.lr.ph143.i.us.i.preheader ]
  %i.fl = load i64, ptr %.1253141.i.us.i.prol, align 1, !tbaa !316
  store i64 %i.fl, ptr %.4142.i.us.i.prol, align 1, !tbaa !316
  %i.fm = getelementptr inbounds nuw i8, ptr %.4142.i.us.i.prol, i64 8 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i.prol, i64 %i.bs ; 2 uses
  %i.fo = add nuw nsw i32 %.1255140.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter382
  br i1 %prol.iter.cmp.not, label %.lr.ph143.i.us.i.prol.loopexit, label %.lr.ph143.i.us.i.prol, !llvm.loop !1936

.lr.ph143.i.us.i.prol.loopexit:                   ; preds = %.lr.ph143.i.us.i.prol, %.lr.ph143.i.us.i.preheader
  %.lcssa367.unr = phi ptr [ poison, %.lr.ph143.i.us.i.preheader ], [ %i.fm, %.lr.ph143.i.us.i.prol ]
  %.4142.i.us.i.unr = phi ptr [ %.3.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fm, %.lr.ph143.i.us.i.prol ]
  %.1253141.i.us.i.unr = phi ptr [ %.0252.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fn, %.lr.ph143.i.us.i.prol ]
  %.1255140.i.us.i.unr = phi i32 [ %.0254.lcssa.i.us.i, %.lr.ph143.i.us.i.preheader ], [ %i.fo, %.lr.ph143.i.us.i.prol ]
  %i.fp = sub i32 %.0254.lcssa.i.us.i, %.sroa.speculated
  %i.fq = icmp ugt i32 %i.fp, -8
  br i1 %i.fq, label %.loopexit128.i.us146.i, label %.lr.ph143.i.us.i

.lr.ph143.i.us.i:                                 ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i
  %.4142.i.us.i = phi ptr [ %i.gn, %.lr.ph143.i.us.i ], [ %.4142.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 9 uses
  %.1253141.i.us.i = phi ptr [ %i.go, %.lr.ph143.i.us.i ], [ %.1253141.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ] ; 2 uses
  %.1255140.i.us.i = phi i32 [ %i.gp, %.lr.ph143.i.us.i ], [ %.1255140.i.us.i.unr, %.lr.ph143.i.us.i.prol.loopexit ]
  %i.fr = load i64, ptr %.1253141.i.us.i, align 1, !tbaa !316
  store i64 %i.fr, ptr %.4142.i.us.i, align 1, !tbaa !316
  %i.fs = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.1253141.i.us.i, i64 %i.bs ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 1, !tbaa !316
  store i64 %i.fu, ptr %i.fs, align 1, !tbaa !316
  %i.fv = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.bs ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 1, !tbaa !316
  store i64 %i.fx, ptr %i.fv, align 1, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.bs ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 1, !tbaa !316
  store i64 %i.ga, ptr %i.fy, align 1, !tbaa !316
  %i.gb = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.bs ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 1, !tbaa !316
  store i64 %i.gd, ptr %i.gb, align 1, !tbaa !316
  %i.ge = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.bs ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 1, !tbaa !316
  store i64 %i.gg, ptr %i.ge, align 1, !tbaa !316
  %i.gh = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.bs ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 1, !tbaa !316
  store i64 %i.gj, ptr %i.gh, align 1, !tbaa !316
  %i.gk = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.bs ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 1, !tbaa !316
  store i64 %i.gm, ptr %i.gk, align 1, !tbaa !316
  %i.gn = getelementptr inbounds nuw i8, ptr %.4142.i.us.i, i64 64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.bs
  %i.gp = add nuw nsw i32 %.1255140.i.us.i, 8     ; 2 uses
  %exitcond228.not.i.us.i.7 = icmp eq i32 %i.gp, %.sroa.speculated
  br i1 %exitcond228.not.i.us.i.7, label %.loopexit128.i.us146.i, label %.lr.ph143.i.us.i, !llvm.loop !1937

.loopexit128.i.us146.i:                           ; preds = %.lr.ph143.i.us.i.prol.loopexit, %.lr.ph143.i.us.i, %.preheader127.i.us.i
  %.5.i.us147.i = phi ptr [ %.3.lcssa.i.us.i, %.preheader127.i.us.i ], [ %.lcssa367.unr, %.lr.ph143.i.us.i.prol.loopexit ], [ %i.gn, %.lr.ph143.i.us.i ] ; 2 uses
  %indvars.iv.next.i.us148.i = add nuw nsw i64 %indvars.iv.i.us144.i, 8 ; 3 uses
  %i.gq = or disjoint i64 %indvars.iv.next.i.us148.i, 7
  %i.gr = icmp samesign ult i64 %i.gq, %i.cd
  br i1 %i.gr, label %_ZN4ncnn3MatD2Ev.exit270.i.us.i, label %.preheader126.loopexit.i.i, !llvm.loop !1931

.preheader126.loopexit.i.i:                       ; preds = %.loopexit128.i.us146.i, %.loopexit128.i.loopexit.us.us.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i, %.loopexit128.i.preheader.i
  %.us-phi.i = phi ptr [ %i.ds, %.loopexit128.i.loopexit.us.us.i ], [ %.val.i, %.loopexit128.i.preheader.i ], [ %.val.i, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %.5.i.us147.i, %.loopexit128.i.us146.i ]
  %.us-phi142.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.loopexit128.i.loopexit.us.us.i ], [ %i.ck, %.loopexit128.i.preheader.i ], [ %i.cm, %_ZN4ncnn3MatD2Ev.exit271.i.us.preheader.i ], [ %indvars.iv.next.i.us148.i, %.loopexit128.i.us146.i ]
  %i.gs = trunc nuw nsw i64 %.us-phi142.i to i32
  br label %.preheader126.i.i

.preheader126.i.i:                                ; preds = %.preheader126.loopexit.i.i, %bb.i
  %.0240.lcssa.i.i = phi i32 [ 0, %bb.i ], [ %i.gs, %.preheader126.loopexit.i.i ] ; 3 uses
  %.0233.lcssa.i.i = phi ptr [ %.val.i, %bb.i ], [ %.us-phi.i, %.preheader126.loopexit.i.i ] ; 5 uses
  %i.gt = or disjoint i32 %.0240.lcssa.i.i, 3
  %i.gu = icmp slt i32 %i.gt, %.sroa.speculated63
  br i1 %i.gu, label %.lr.ph169.i.i, label %.preheader122.i.i

.lr.ph169.i.i:                                    ; preds = %.preheader126.i.i
  %i.gv = sdiv i32 %i.ah, 8
  %i.gw = sext i32 %i.gv to i64
  %i.gx = lshr i32 %.sroa.speculated, 3           ; 3 uses
  %i.gy = shl i64 %i.bs, 3                        ; 2 uses
  %i.gz = sext i32 %i.ah to i64
  %i.ha = icmp sgt i32 %.sroa.speculated, 1
  %i.hb = shl i64 %i.bs, 1
  %i.hc = and i32 %.sroa.speculated, -2
  %i.hd = zext i32 %.0240.lcssa.i.i to i64        ; 6 uses
  %i.he = sext i32 %.sroa.speculated63 to i64
  %i.hf = sext i32 %i.af to i64                   ; 2 uses
  %invariant.op.i.i = add nsw i64 %i.he, -3       ; 4 uses
  switch i32 %i.bt, label %.loopexit124.i.preheader.i [
    i32 8, label %.lr.ph169.i.split.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader
  ]

_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader:        ; preds = %.lr.ph169.i.i
  %xtraiter384 = and i32 %.sroa.speculated, 1
  %lcmp.mod385.not = icmp eq i32 %xtraiter384, 0
  br label %_ZN4ncnn3MatD2Ev.exit268.i.us.i

.loopexit124.i.preheader.i:                       ; preds = %.lr.ph169.i.i
  %i.hg = add nuw nsw i64 %i.hd, 4                ; 2 uses
  %smax233.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.hg)
  %i.hh = xor i64 %i.hd, -1
  %i.hi = add nsw i64 %smax233.i, %i.hh
  %i.hj = and i64 %i.hi, -4
  %i.hk = add i64 %i.hg, %i.hj
  br label %.preheader122.loopexit.i.i

.lr.ph169.i.split.us.i:                           ; preds = %.lr.ph169.i.i
  %i.hl = icmp sgt i32 %.sroa.speculated, 7
  br i1 %i.hl, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader, label %_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader:     ; preds = %.lr.ph169.i.split.us.i
  %i.hm = icmp eq i32 %i.gx, 1
  %unroll_iter391 = and i32 %i.gx, 268435454
  %i.hn = and i32 %.sroa.speculated, 8
  %lcmp.mod388.not = icmp eq i32 %i.hn, 0
  %lcmp.mod390 = trunc i32 %i.gx to i1
  br label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i

_ZN4ncnn3MatD2Ev.exit269.i.us.preheader.i:        ; preds = %.lr.ph169.i.split.us.i
  %i.ho = add nuw nsw i64 %i.hd, 4                ; 2 uses
  %smax.i = call i64 @llvm.smax.i64(i64 %invariant.op.i.i, i64 %i.ho)
  %i.hp = xor i64 %i.hd, -1
  %i.hq = add nsw i64 %smax.i, %i.hp
  %i.hr = and i64 %i.hq, -4
  %i.hs = add i64 %i.ho, %i.hr
  br label %.preheader122.loopexit.i.i

_ZN4ncnn3MatD2Ev.exit269.i.us.us.i:               ; preds = %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader, %.loopexit124.i.loopexit.us.us.i
  %indvars.iv232.i.us.us.i = phi i64 [ %indvars.iv.next233.i.us.us.i, %.loopexit124.i.loopexit.us.us.i ], [ %i.hd, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader ] ; 2 uses
  %.6168.i.us.us.i = phi ptr [ %.lcssa372, %.loopexit124.i.loopexit.us.us.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i.preheader ] ; 2 uses
  %i.ht = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1938
  %i.hu = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1938
  %i.hv = mul i64 %i.hu, %i.gw
  %i.hw = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1938
  %i.hx = mul i64 %i.hv, %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hx
  %i.hz = add nsw i64 %indvars.iv232.i.us.us.i, %i.hf
  %i.ia = shl nsw i64 %i.hz, 3
  %i.ib = getelementptr inbounds i8, ptr %i.hy, i64 %i.ia ; 2 uses
  br i1 %i.hm, label %.lr.ph153.i.us.us.i.epil.preheader, label %.lr.ph153.i.us.us.i

.lr.ph153.i.us.us.i:                              ; preds = %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, %.lr.ph153.i.us.us.i
  %.7152.i.us.us.i = phi ptr [ %i.iq, %.lr.ph153.i.us.us.i ], [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 5 uses
  %.0256151.i.us.us.i = phi ptr [ %i.ir, %.lr.ph153.i.us.us.i ], [ %i.ib, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ] ; 3 uses
  %niter392 = phi i32 [ %niter392.next.1, %.lr.ph153.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ]
  %i.ic = load <8 x i16>, ptr %.0256151.i.us.us.i, align 1, !tbaa !316 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 16
  %i.ie = load <8 x i16>, ptr %i.id, align 1, !tbaa !316 ; 2 uses
  %i.if = shufflevector <8 x i16> %i.ic, <8 x i16> %i.ie, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ig = shufflevector <8 x i16> %i.ic, <8 x i16> %i.ie, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.if, ptr %.7152.i.us.us.i, align 16, !tbaa !316
  %i.ih = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 16
  store <8 x i16> %i.ig, ptr %i.ih, align 16, !tbaa !316
  %i.ii = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i, i64 %i.gy ; 3 uses
  %i.ik = load <8 x i16>, ptr %i.ij, align 1, !tbaa !316 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.im = load <8 x i16>, ptr %i.il, align 1, !tbaa !316 ; 2 uses
  %i.in = shufflevector <8 x i16> %i.ik, <8 x i16> %i.im, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.io = shufflevector <8 x i16> %i.ik, <8 x i16> %i.im, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.in, ptr %i.ii, align 16, !tbaa !316
  %i.ip = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 48
  store <8 x i16> %i.io, ptr %i.ip, align 16, !tbaa !316
  %i.iq = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i, i64 64 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.gy ; 2 uses
  %niter392.next.1 = add i32 %niter392, 2         ; 2 uses
  %niter392.ncmp.1 = icmp eq i32 %niter392.next.1, %unroll_iter391
  br i1 %niter392.ncmp.1, label %.loopexit124.i.loopexit.us.us.i.unr-lcssa, label %.lr.ph153.i.us.us.i, !llvm.loop !1941

.loopexit124.i.loopexit.us.us.i.unr-lcssa:        ; preds = %.lr.ph153.i.us.us.i
  br i1 %lcmp.mod388.not, label %.loopexit124.i.loopexit.us.us.i, label %.lr.ph153.i.us.us.i.epil.preheader

.lr.ph153.i.us.us.i.epil.preheader:               ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i
  %.7152.i.us.us.i.epil.init = phi ptr [ %.6168.i.us.us.i, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ], [ %i.iq, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 3 uses
  %.0256151.i.us.us.i.epil.init = phi ptr [ %i.ib, %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i ], [ %i.ir, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod390)
  %i.is = load <8 x i16>, ptr %.0256151.i.us.us.i.epil.init, align 1, !tbaa !316 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0256151.i.us.us.i.epil.init, i64 16
  %i.iu = load <8 x i16>, ptr %i.it, align 1, !tbaa !316 ; 2 uses
  %i.iv = shufflevector <8 x i16> %i.is, <8 x i16> %i.iu, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.iw = shufflevector <8 x i16> %i.is, <8 x i16> %i.iu, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <8 x i16> %i.iv, ptr %.7152.i.us.us.i.epil.init, align 16, !tbaa !316
  %i.ix = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 16
  store <8 x i16> %i.iw, ptr %i.ix, align 16, !tbaa !316
  %i.iy = getelementptr inbounds nuw i8, ptr %.7152.i.us.us.i.epil.init, i64 32
  br label %.loopexit124.i.loopexit.us.us.i

.loopexit124.i.loopexit.us.us.i:                  ; preds = %.loopexit124.i.loopexit.us.us.i.unr-lcssa, %.lr.ph153.i.us.us.i.epil.preheader
  %.lcssa372 = phi ptr [ %i.iq, %.loopexit124.i.loopexit.us.us.i.unr-lcssa ], [ %i.iy, %.lr.ph153.i.us.us.i.epil.preheader ] ; 2 uses
  %indvars.iv.next233.i.us.us.i = add nuw nsw i64 %indvars.iv232.i.us.us.i, 4 ; 3 uses
  %i.iz = icmp slt i64 %indvars.iv.next233.i.us.us.i, %invariant.op.i.i
  br i1 %i.iz, label %_ZN4ncnn3MatD2Ev.exit269.i.us.us.i, label %.preheader122.loopexit.i.i, !llvm.loop !1942

_ZN4ncnn3MatD2Ev.exit268.i.us.i:                  ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader, %.loopexit124.i.us160.i
  %indvars.iv232.i.us158.i = phi i64 [ %indvars.iv.next233.i.us162.i, %.loopexit124.i.us160.i ], [ %i.hd, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %.6168.i.us159.i = phi ptr [ %.11.i.us161.i, %.loopexit124.i.us160.i ], [ %.0233.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i.preheader ] ; 2 uses
  %i.ja = load ptr, ptr %9, align 8, !tbaa !18, !noalias !1943
  %i.jb = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !1943
  %i.jc = mul i64 %i.jb, %i.gz
  %i.jd = load i64, ptr %i.aa, align 8, !tbaa !65, !noalias !1943
  %i.je = mul i64 %i.jc, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 %indvars.iv232.i.us158.i
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.hf  ; 2 uses
  br i1 %i.ha, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i

.lr.ph158.i.us.i:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit268.i.us.i, %.lr.ph158.i.us.i
  %.9157.i.us.i = phi ptr [ %i.ke, %.lr.ph158.i.us.i ], [ %.6168.i.us159.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 9 uses
  %.0248156.i.us.i = phi i32 [ %i.kg, %.lr.ph158.i.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ]
  %.0250155.i.us.i = phi ptr [ %i.kf, %.lr.ph158.i.us.i ], [ %i.jh, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ] ; 6 uses
  %i.ji = load i8, ptr %.0250155.i.us.i, align 1, !tbaa !316
  store i8 %i.ji, ptr %.9157.i.us.i, align 1, !tbaa !316
  %i.jj = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.bs ; 4 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !316
  %i.jl = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 1
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !316
  %i.jm = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !316
  %i.jo = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 2
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !316
  %i.jp = getelementptr i8, ptr %i.jj, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !316
  %i.jr = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 3
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !316
  %i.js = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 2
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !316
  %i.ju = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 4
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !316
  %i.jv = getelementptr i8, ptr %i.jj, i64 2
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !316
  %i.jx = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 5
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !316
  %i.jy = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 3
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !316
  %i.ka = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 6
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !316
  %i.kb = getelementptr i8, ptr %i.jj, i64 3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !316
  %i.kd = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 7
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !316
  %i.ke = getelementptr inbounds nuw i8, ptr %.9157.i.us.i, i64 8 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.0250155.i.us.i, i64 %i.hb ; 2 uses
  %i.kg = add nuw nsw i32 %.0248156.i.us.i, 2     ; 2 uses
  %i.kh = or disjoint i32 %i.kg, 1
  %i.ki = icmp slt i32 %i.kh, %.sroa.speculated
  br i1 %i.ki, label %.lr.ph158.i.us.i, label %.preheader123.i.us.i, !llvm.loop !1946

.preheader123.i.us.i:                             ; preds = %.lr.ph158.i.us.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i
  %.0250.lcssa.i.us.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.kf, %.lr.ph158.i.us.i ] ; 6 uses
  %.0248.lcssa.i.us.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.hc, %.lr.ph158.i.us.i ] ; 4 uses
  %.9.lcssa.i.us.i = phi ptr [ %.6168.i.us159.i, %_ZN4ncnn3MatD2Ev.exit268.i.us.i ], [ %i.ke, %.lr.ph158.i.us.i ] ; 7 uses
  %i.kj = icmp slt i32 %.0248.lcssa.i.us.i, %.sroa.speculated
  br i1 %i.kj, label %.lr.ph165.i.us.i.preheader, label %.loopexit124.i.us160.i

.lr.ph165.i.us.i.preheader:                       ; preds = %.preheader123.i.us.i
  %.neg = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br i1 %lcmp.mod385.not, label %.lr.ph165.i.us.i.prol.loopexit, label %.lr.ph165.i.us.i.prol

.lr.ph165.i.us.i.prol:                            ; preds = %.lr.ph165.i.us.i.preheader
  %i.kk = load i8, ptr %.0250.lcssa.i.us.i, align 1, !tbaa !316
  store i8 %i.kk, ptr %.9.lcssa.i.us.i, align 1, !tbaa !316
  %i.kl = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 1
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !316
  %i.kn = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 1
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !316
  %i.ko = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 2
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !316
  %i.kq = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 2
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !316
  %i.kr = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 3
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !316
  %i.kt = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 3
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !316
  %i.ku = getelementptr inbounds nuw i8, ptr %.9.lcssa.i.us.i, i64 4 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0250.lcssa.i.us.i, i64 %i.bs
  %i.kw = or disjoint i32 %.0248.lcssa.i.us.i, 1
  br label %.lr.ph165.i.us.i.prol.loopexit

.lr.ph165.i.us.i.prol.loopexit:                   ; preds = %.lr.ph165.i.us.i.prol, %.lr.ph165.i.us.i.preheader
  %.lcssa371.unr = phi ptr [ poison, %.lr.ph165.i.us.i.preheader ], [ %i.ku, %.lr.ph165.i.us.i.prol ]
  %.10164.i.us.i.unr = phi ptr [ %.9.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.ku, %.lr.ph165.i.us.i.prol ]
  %.1249163.i.us.i.unr = phi i32 [ %.0248.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.kw, %.lr.ph165.i.us.i.prol ]
  %.1251162.i.us.i.unr = phi ptr [ %.0250.lcssa.i.us.i, %.lr.ph165.i.us.i.preheader ], [ %i.kv, %.lr.ph165.i.us.i.prol ]
  %i.kx = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.kx, label %.loopexit124.i.us160.i, label %.lr.ph165.i.us.i

.lr.ph165.i.us.i:                                 ; preds = %.lr.ph165.i.us.i.prol.loopexit, %.lr.ph165.i.us.i
  %.10164.i.us.i = phi ptr [ %i.lu, %.lr.ph165.i.us.i ], [ %.10164.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 9 uses
  %.1249163.i.us.i = phi i32 [ %i.lw, %.lr.ph165.i.us.i ], [ %.1249163.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ]
  %.1251162.i.us.i = phi ptr [ %i.lv, %.lr.ph165.i.us.i ], [ %.1251162.i.us.i.unr, %.lr.ph165.i.us.i.prol.loopexit ] ; 5 uses
  %i.ky = load i8, ptr %.1251162.i.us.i, align 1, !tbaa !316
  store i8 %i.ky, ptr %.10164.i.us.i, align 1, !tbaa !316
  %i.kz = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !316
  %i.lb = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 1
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !316
  %i.lc = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 2
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !316
  %i.le = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 2
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !316
  %i.lf = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 3
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !316
  %i.lh = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 3
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !316
  %i.li = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 4
  %i.lj = getelementptr inbounds nuw i8, ptr %.1251162.i.us.i, i64 %i.bs ; 5 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !316
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !316
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !316
  %i.ln = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 5
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !316
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !316
  %i.lq = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 6
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !316
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !316
  %i.lt = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 7
  store i8 %i.ls, ptr %i.lt, align 1, !tbaa !316
  %i.lu = getelementptr inbounds nuw i8, ptr %.10164.i.us.i, i64 8 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.bs
  %i.lw = add nuw nsw i32 %.1249163.i.us.i, 2     ; 2 uses
  %exitcond231.not.i.us.i.1 = icmp eq i32 %i.lw, %.sroa.speculated
  br i1 %exitcond231.not.i.us.i.1, label %.loopexit124.i.us160.i, label %.lr.ph165.i.us.i, !llvm.loop !1947
end_hunk_13
