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
  %.0835.lcssa.i = phi i32 [ %i.ajv, %.preheader1105.loopexit.i ], [ 0, %bb.jf ], [ 0, %bb.ji ], [ 0, %bb.jh ], [ 0, %bb.jd ], [ 0, %bb.js ], [ 0, %bb.jw ], [ 0, %bb.jx ], [ 0, %bb.ju ], [ 0, %bb.jl ], [ 0, %bb.jp ], [ 0, %bb.jq ], [ 0, %bb.jn ] ; 7 uses
  %i.ajw = or disjoint i32 %.0835.lcssa.i, 3      ; 2 uses
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
  %i.aku = mul i32 %i.ajz, %.0835.lcssa.i
  %i.akv = shl i32 %i.ajz, 2                      ; 4 uses
  %i.akw = add nuw nsw i32 %.0835.lcssa.i, 1
  %i.akx = mul i32 %i.akw, %i.ajz
  %i.aky = add nuw nsw i32 %.0835.lcssa.i, 2
  %i.akz = mul i32 %i.aky, %i.ajz
  %i.ala = mul i32 %i.ajw, %i.ajz
  %i.alb = and i32 %i.akp, -8
  %i.alc = add i32 %i.alb, 8                      ; 4 uses
  %i.ald = add i32 %i.cj, -4
  %i.ale = zext nneg i32 %.0835.lcssa.i to i64
  %i.alf = add i32 %.0835.lcssa.i, 3
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
  %min.iters.check838 = icmp ult i32 %i.aci, 16
  %stride.check805 = icmp slt i32 %i.akm, 0
  %n.vec840 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alp = shl nuw nsw i64 %n.vec840, 5
  %cmp.n855 = icmp eq i64 %n.vec840, %wide.trip.count1708.i
  %min.iters.check761 = icmp ult i32 %i.aci, 8
  %n.vec763 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alq = shl nuw nsw i64 %n.vec763, 4
  %cmp.n774 = icmp eq i64 %n.vec763, %wide.trip.count1708.i
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
  %indvars.iv.i227 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next.i228, %._crit_edge1246.split.i ] ; 2 uses
  %i.als = sext i32 %indvars.iv.i227 to i64
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
  %.08471133.us.i = phi ptr [ %i.avb, %._crit_edge.us.i ], [ %i.amp, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08501132.us.i = phi ptr [ %i.avc, %._crit_edge.us.i ], [ %i.amt, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08541131.us.i = phi ptr [ %i.avd, %._crit_edge.us.i ], [ %i.amx, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08571130.us.i = phi ptr [ %i.ave, %._crit_edge.us.i ], [ %i.anb, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08801129.us.i = phi ptr [ %i.avf, %._crit_edge.us.i ], [ %i.anf, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08831128.us.i = phi ptr [ %i.avg, %._crit_edge.us.i ], [ %i.anj, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08861127.us.i = phi ptr [ %i.avh, %._crit_edge.us.i ], [ %i.ann, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08891126.us.i = phi ptr [ %i.auz, %._crit_edge.us.i ], [ %i.anp, %.preheader1109.lr.ph.i ]
  %.09461125.us.i = phi i32 [ %i.avi, %._crit_edge.us.i ], [ 0, %.preheader1109.lr.ph.i ]
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jy, %.preheader1109.us.i
  %indvars.iv1649.i = phi i64 [ 0, %.preheader1109.us.i ], [ %indvars.iv.next1650.i, %bb.jy ] ; 9 uses
  %.18901124.us.i = phi ptr [ %.08891126.us.i, %.preheader1109.us.i ], [ %i.auz, %bb.jy ] ; 65 uses
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.08471133.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.08541131.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %.08801129.us.i, i64 %indvars.iv1649.i ; 2 uses
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
  %i.bcg = icmp sge i32 %.2948.lcssa.i, %i.cj
  %brmerge.i = or i1 %i.aiz, %i.bcg
  br i1 %brmerge.i, label %._crit_edge1246.split.i, label %.preheader1106.i.preheader

.preheader1106.i.preheader:                       ; preds = %.preheader1110.i
  %scevgep696 = getelementptr i8, ptr %.2888.lcssa.i, i64 %i.ajt
  %scevgep697 = getelementptr i8, ptr %.2885.lcssa.i, i64 %i.ajt
  %scevgep698 = getelementptr i8, ptr %.2882.lcssa.i, i64 %i.ajt
  %scevgep699 = getelementptr i8, ptr %.2859.lcssa.i, i64 %i.ajt
  %scevgep700 = getelementptr i8, ptr %.2856.lcssa.i, i64 %i.ajt
  %scevgep701 = getelementptr i8, ptr %.2852.lcssa.i, i64 %i.ajt
  %scevgep702 = getelementptr i8, ptr %.2849.lcssa.i, i64 %i.ajt
  %scevgep703 = getelementptr i8, ptr %.2841.lcssa.i, i64 %i.ajt
  %i.bch = insertelement <8 x ptr> poison, ptr %scevgep696, i64 0
  %i.bci = insertelement <8 x ptr> %i.bch, ptr %scevgep697, i64 1
  %i.bcj = insertelement <8 x ptr> %i.bci, ptr %scevgep698, i64 2
  %i.bck = insertelement <8 x ptr> %i.bcj, ptr %scevgep699, i64 3
  %i.bcl = insertelement <8 x ptr> %i.bck, ptr %scevgep700, i64 4
  %i.bcm = insertelement <8 x ptr> %i.bcl, ptr %scevgep701, i64 5
  %i.bcn = insertelement <8 x ptr> %i.bcm, ptr %scevgep702, i64 6
  %i.bco = insertelement <8 x ptr> %i.bcn, ptr %scevgep703, i64 7
  %i.bcp = insertelement <8 x ptr> poison, ptr %.2888.lcssa.i, i64 0
  %i.bcq = insertelement <8 x ptr> %i.bcp, ptr %.2885.lcssa.i, i64 1
  %i.bcr = insertelement <8 x ptr> %i.bcq, ptr %.2882.lcssa.i, i64 2
  %i.bcs = insertelement <8 x ptr> %i.bcr, ptr %.2859.lcssa.i, i64 3
  %i.bct = insertelement <8 x ptr> %i.bcs, ptr %.2856.lcssa.i, i64 4
  %i.bcu = insertelement <8 x ptr> %i.bct, ptr %.2852.lcssa.i, i64 5
  %i.bcv = insertelement <8 x ptr> %i.bcu, ptr %.2849.lcssa.i, i64 6
  %i.bcw = insertelement <8 x ptr> %i.bcv, ptr %.2841.lcssa.i, i64 7
  br label %.preheader1106.i

.preheader1106.i:                                 ; preds = %.preheader1106.i.preheader, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa695, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1106.i.preheader ] ; 6 uses
  %.39491244.i = phi i32 [ %i.bdw, %._crit_edge.i ], [ %.2948.lcssa.i, %.preheader1106.i.preheader ]
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
  %.not1241 = icmp eq i8 %i.bde, 0
  br i1 %.not1241, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.bdf = getelementptr i8, ptr %.98981245.i, i64 %i.aju ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bdg = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.bdg
  %i.bdh = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %index
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %index
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %index
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.bdh, align 4, !tbaa !39, !alias.scope !102
  %wide.load731 = load <8 x float>, ptr %i.bdi, align 4, !tbaa !39, !alias.scope !105
  %wide.load732 = load <8 x float>, ptr %i.bdj, align 4, !tbaa !39, !alias.scope !107
  %wide.load733 = load <8 x float>, ptr %i.bdk, align 4, !tbaa !39, !alias.scope !109
  %wide.load734 = load <8 x float>, ptr %i.bdl, align 4, !tbaa !39, !alias.scope !111
  %wide.load735 = load <8 x float>, ptr %i.bdm, align 4, !tbaa !39, !alias.scope !113
  %wide.load736 = load <8 x float>, ptr %i.bdn, align 4, !tbaa !39, !alias.scope !115
  %wide.load737 = load <8 x float>, ptr %i.bdo, align 4, !tbaa !39, !alias.scope !117
  %i.bdp = shufflevector <8 x float> %wide.load, <8 x float> %wide.load731, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdq = shufflevector <8 x float> %wide.load732, <8 x float> %wide.load733, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdr = shufflevector <8 x float> %wide.load734, <8 x float> %wide.load735, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bds = shufflevector <8 x float> %wide.load736, <8 x float> %wide.load737, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
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
  %.lcssa695 = phi ptr [ %i.bdf, %middle.block ], [ %i.beu, %scalar.ph ]
  %i.bdw = add nuw nsw i32 %.39491244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.bdw, %i.cj
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.beu, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.bdx = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %indvars.iv1679.i
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %indvars.iv1679.i
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %indvars.iv1679.i
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
  %indvars.iv.next.i228 = add i32 %indvars.iv.i227, %i.ajf
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
  %.1836.lcssa.i = phi i32 [ %.0835.lcssa.i, %.preheader1105.i ], [ %i.bex, %.preheader1097.loopexit.i ] ; 4 uses
  %i.bey = or disjoint i32 %.1836.lcssa.i, 1      ; 3 uses
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
  %i.bge = mul i32 %i.bfb, %.1836.lcssa.i
  %i.bgf = shl i32 %i.bfb, 1                      ; 2 uses
  %i.bgg = mul i32 %i.bey, %i.bfb
  %i.bgh = and i32 %i.bfz, -8
  %i.bgi = add i32 %i.bgh, 8                      ; 4 uses
  %i.bgj = add i32 %i.cj, -4
  %i.bgk = zext nneg i32 %.1836.lcssa.i to i64
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
  %min.iters.check1001 = icmp ult i32 %i.aci, 16
  %stride.check968 = icmp slt i32 %i.bfo, 0
  %n.vec1003 = and i64 %wide.trip.count1754.i, 2147483640 ; 4 uses
  %i.bhe = shl nuw nsw i64 %n.vec1003, 5
  %cmp.n1018 = icmp eq i64 %n.vec1003, %wide.trip.count1754.i
  %min.iters.check921 = icmp ult i32 %i.aci, 16
  %stride.check908 = icmp slt i32 %i.bfk, 0
  %n.vec923 = and i64 %wide.trip.count1754.i, 2147483640 ; 4 uses
  %i.bhf = shl nuw nsw i64 %n.vec923, 4
  %cmp.n934 = icmp eq i64 %n.vec923, %wide.trip.count1754.i
  %xtraiter1311 = and i64 %wide.trip.count1754.i, 1
  %lcmp.mod1312.not = icmp eq i64 %xtraiter1311, 0
  %i.bhg = add nsw i64 %wide.trip.count1754.i, -1
  %min.iters.check870 = icmp ult i32 %i.aci, 6
  %n.vec872 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.bhh = shl nuw nsw i64 %n.vec872, 3
  %cmp.n885 = icmp eq i64 %n.vec872, %wide.trip.count1754.i
  %xtraiter1313 = and i64 %wide.trip.count1754.i, 3 ; 2 uses
  %lcmp.mod1314.not = icmp eq i64 %xtraiter1313, 0
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
  %.09191264.us.i = phi i32 [ %i.bmh, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09231263.us.i = phi ptr [ %i.bmc, %._crit_edge1257.us.i ], [ %i.bik, %.preheader1101.lr.ph.i ]
  %.09341262.us.i = phi ptr [ %i.bmg, %._crit_edge1257.us.i ], [ %i.bie, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09371261.us.i = phi ptr [ %i.bmf, %._crit_edge1257.us.i ], [ %i.bib, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09401260.us.i = phi ptr [ %i.bme, %._crit_edge1257.us.i ], [ %i.bhx, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09431259.us.i = phi ptr [ %i.bmd, %._crit_edge1257.us.i ], [ %i.bht, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kb, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.kb ] ; 5 uses
  %.19241255.us.i = phi ptr [ %.09231263.us.i, %.preheader1101.us.i ], [ %i.bmc, %bb.kb ] ; 33 uses
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bim = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bin = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bio = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bip = load float, ptr %i.bil, align 4, !tbaa !39
  store float %i.bip, ptr %.19241255.us.i, align 4, !tbaa !39
  %i.biq = load float, ptr %i.bim, align 4, !tbaa !39
  %i.bir = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 4
  store float %i.biq, ptr %i.bir, align 4, !tbaa !39
  %i.bis = load float, ptr %i.bin, align 4, !tbaa !39
  %i.bit = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 8
  store float %i.bis, ptr %i.bit, align 4, !tbaa !39
  %i.biu = load float, ptr %i.bio, align 4, !tbaa !39
  %i.biv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store float %i.biu, ptr %i.biv, align 4, !tbaa !39
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %i.akh ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %i.akh ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bin, i64 %i.akh ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bio, i64 %i.akh ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !39
  store float %i.bjb, ptr %i.bja, align 4, !tbaa !39
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !39
  %i.bjd = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store float %i.bjc, ptr %i.bjd, align 4, !tbaa !39
  %i.bje = load float, ptr %i.biy, align 4, !tbaa !39
  %i.bjf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  store float %i.bje, ptr %i.bjf, align 4, !tbaa !39
  %i.bjg = load float, ptr %i.biz, align 4, !tbaa !39
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store float %i.bjg, ptr %i.bjh, align 4, !tbaa !39
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.akh ; 2 uses
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.akh ; 2 uses
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.akh ; 2 uses
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.akh ; 2 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !39
  store float %i.bjn, ptr %i.bjm, align 4, !tbaa !39
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !39
  %i.bjp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store float %i.bjo, ptr %i.bjp, align 4, !tbaa !39
  %i.bjq = load float, ptr %i.bjk, align 4, !tbaa !39
  %i.bjr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 40
  store float %i.bjq, ptr %i.bjr, align 4, !tbaa !39
  %i.bjs = load float, ptr %i.bjl, align 4, !tbaa !39
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 44
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !39
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.akh ; 2 uses
  %i.bjv = getelementptr inbounds nuw [4 x i8], ptr %i.bjj, i64 %i.akh ; 2 uses
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %i.bjk, i64 %i.akh ; 2 uses
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %i.bjl, i64 %i.akh ; 2 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 48
  %i.bjz = load float, ptr %i.bju, align 4, !tbaa !39
  store float %i.bjz, ptr %i.bjy, align 4, !tbaa !39
  %i.bka = load float, ptr %i.bjv, align 4, !tbaa !39
  %i.bkb = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 52
  store float %i.bka, ptr %i.bkb, align 4, !tbaa !39
  %i.bkc = load float, ptr %i.bjw, align 4, !tbaa !39
  %i.bkd = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 56
  store float %i.bkc, ptr %i.bkd, align 4, !tbaa !39
  %i.bke = load float, ptr %i.bjx, align 4, !tbaa !39
  %i.bkf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 60
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !39
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %i.akh ; 2 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bjv, i64 %i.akh ; 2 uses
  %i.bki = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.akh ; 2 uses
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.akh ; 2 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 64
  %i.bkl = load float, ptr %i.bkg, align 4, !tbaa !39
  store float %i.bkl, ptr %i.bkk, align 4, !tbaa !39
  %i.bkm = load float, ptr %i.bkh, align 4, !tbaa !39
  %i.bkn = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 68
  store float %i.bkm, ptr %i.bkn, align 4, !tbaa !39
  %i.bko = load float, ptr %i.bki, align 4, !tbaa !39
  %i.bkp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 72
  store float %i.bko, ptr %i.bkp, align 4, !tbaa !39
  %i.bkq = load float, ptr %i.bkj, align 4, !tbaa !39
  %i.bkr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 76
  store float %i.bkq, ptr %i.bkr, align 4, !tbaa !39
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.bkg, i64 %i.akh ; 2 uses
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bkh, i64 %i.akh ; 2 uses
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %i.akh ; 2 uses
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bkj, i64 %i.akh ; 2 uses
  %i.bkw = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 80
  %i.bkx = load float, ptr %i.bks, align 4, !tbaa !39
  store float %i.bkx, ptr %i.bkw, align 4, !tbaa !39
  %i.bky = load float, ptr %i.bkt, align 4, !tbaa !39
  %i.bkz = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 84
  store float %i.bky, ptr %i.bkz, align 4, !tbaa !39
  %i.bla = load float, ptr %i.bku, align 4, !tbaa !39
  %i.blb = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 88
  store float %i.bla, ptr %i.blb, align 4, !tbaa !39
  %i.blc = load float, ptr %i.bkv, align 4, !tbaa !39
  %i.bld = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 92
  store float %i.blc, ptr %i.bld, align 4, !tbaa !39
  %i.ble = getelementptr inbounds nuw [4 x i8], ptr %i.bks, i64 %i.akh ; 2 uses
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.akh ; 2 uses
  %i.blg = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %i.akh ; 2 uses
  %i.blh = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %i.akh ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn19Convolution_x86_avx15create_pipelineERKNS_6OptionE:bb.a
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %i.akn ; 2 uses
  %i.brw = add nuw nsw i32 %.29211320.us.i, 2     ; 3 uses
  %i.brx = or disjoint i32 %i.brw, 1
  %i.bry = icmp slt i32 %i.brx, %i.cj
  br i1 %i.bry, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !156

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2945.lcssa.i = phi ptr [ %.1944.lcssa.i, %.preheader1103.i ], [ %i.brs, %._crit_edge1313.us.i ] ; 6 uses
  %.2942.lcssa.i = phi ptr [ %.1941.lcssa.i, %.preheader1103.i ], [ %i.brt, %._crit_edge1313.us.i ] ; 6 uses
  %.2939.lcssa.i = phi ptr [ %.1938.lcssa.i, %.preheader1103.i ], [ %i.bru, %._crit_edge1313.us.i ] ; 6 uses
  %.2936.lcssa.i = phi ptr [ %.1935.lcssa.i, %.preheader1103.i ], [ %i.brv, %._crit_edge1313.us.i ] ; 6 uses
  %.6929.lcssa.i = phi ptr [ %.3926.lcssa.i, %.preheader1103.i ], [ %.lcssa659, %._crit_edge1313.us.i ]
  %.2921.lcssa.i = phi i32 [ %.1920.lcssa.i, %.preheader1103.i ], [ %i.brw, %._crit_edge1313.us.i ] ; 2 uses
  %i.brz = icmp sge i32 %.2921.lcssa.i, %i.cj
  %brmerge1469.i = or i1 %i.ako, %i.brz
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i.preheader

.preheader1098.i.preheader:                       ; preds = %.preheader1102.i
  %scevgep741 = getelementptr i8, ptr %.2936.lcssa.i, i64 %i.alk
  %scevgep742 = getelementptr i8, ptr %.2939.lcssa.i, i64 %i.alk
  %scevgep743 = getelementptr i8, ptr %.2942.lcssa.i, i64 %i.alk
  %scevgep744 = getelementptr i8, ptr %.2945.lcssa.i, i64 %i.alk
  br label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1098.i.preheader, %._crit_edge1335.i
  %.39221338.i = phi i32 [ %i.bsw, %._crit_edge1335.i ], [ %.2921.lcssa.i, %.preheader1098.i.preheader ]
  %.99321337.i = phi ptr [ %.lcssa665, %._crit_edge1335.i ], [ %.6929.lcssa.i, %.preheader1098.i.preheader ] ; 9 uses
  br i1 %min.iters.check761, label %scalar.ph760.preheader, label %vector.memcheck739

vector.memcheck739:                               ; preds = %.preheader1098.i
  %scevgep740 = getelementptr i8, ptr %.99321337.i, i64 %i.alj ; 4 uses
  %bound0745 = icmp ult ptr %.99321337.i, %scevgep741
  %bound1746 = icmp ult ptr %.2936.lcssa.i, %scevgep740
  %found.conflict747 = and i1 %bound0745, %bound1746
  %bound0748 = icmp ult ptr %.99321337.i, %scevgep742
  %bound1749 = icmp ult ptr %.2939.lcssa.i, %scevgep740
  %found.conflict750 = and i1 %bound0748, %bound1749
  %conflict.rdx751 = or i1 %found.conflict747, %found.conflict750
  %bound0752 = icmp ult ptr %.99321337.i, %scevgep743
  %bound1753 = icmp ult ptr %.2942.lcssa.i, %scevgep740
  %found.conflict754 = and i1 %bound0752, %bound1753
  %conflict.rdx755 = or i1 %conflict.rdx751, %found.conflict754
  %bound0756 = icmp ult ptr %.99321337.i, %scevgep744
  %bound1757 = icmp ult ptr %.2945.lcssa.i, %scevgep740
  %found.conflict758 = and i1 %bound0756, %bound1757
  %conflict.rdx759 = or i1 %conflict.rdx755, %found.conflict758
  br i1 %conflict.rdx759, label %scalar.ph760.preheader, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck739
  %i.bsa = getelementptr i8, ptr %.99321337.i, i64 %i.alq ; 2 uses
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next772, %vector.body764 ] ; 6 uses
  %i.bsb = shl i64 %index765, 4
  %next.gep766 = getelementptr i8, ptr %.99321337.i, i64 %i.bsb
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %index765
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %index765
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %index765
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %index765
  %wide.load767 = load <8 x float>, ptr %i.bsc, align 4, !tbaa !39, !alias.scope !157
  %wide.load768 = load <8 x float>, ptr %i.bsd, align 4, !tbaa !39, !alias.scope !160
  %wide.load769 = load <8 x float>, ptr %i.bse, align 4, !tbaa !39, !alias.scope !162
  %wide.load770 = load <8 x float>, ptr %i.bsf, align 4, !tbaa !39, !alias.scope !164
  %i.bsg = shufflevector <8 x float> %wide.load767, <8 x float> %wide.load768, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsh = shufflevector <8 x float> %wide.load769, <8 x float> %wide.load770, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec771 = shufflevector <16 x float> %i.bsg, <16 x float> %i.bsh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec771, ptr %next.gep766, align 4, !tbaa !39, !alias.scope !166, !noalias !168
  %index.next772 = add nuw i64 %index765, 8       ; 2 uses
  %i.bsi = icmp eq i64 %index.next772, %n.vec763
  br i1 %i.bsi, label %middle.block773, label %vector.body764, !llvm.loop !169

middle.block773:                                  ; preds = %vector.body764
  br i1 %cmp.n774, label %._crit_edge1335.i, label %scalar.ph760.preheader

scalar.ph760.preheader:                           ; preds = %vector.memcheck739, %.preheader1098.i, %middle.block773
  %indvars.iv1730.i.ph = phi i64 [ 0, %vector.memcheck739 ], [ 0, %.preheader1098.i ], [ %n.vec763, %middle.block773 ] ; 7 uses
  %.109331333.i.ph = phi ptr [ %.99321337.i, %vector.memcheck739 ], [ %.99321337.i, %.preheader1098.i ], [ %i.bsa, %middle.block773 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph760.prol.loopexit, label %scalar.ph760.prol

scalar.ph760.prol:                                ; preds = %scalar.ph760.preheader
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1730.i.ph
  %i.bsn = load float, ptr %i.bsj, align 4, !tbaa !39
  store float %i.bsn, ptr %.109331333.i.ph, align 4, !tbaa !39
  %i.bso = load float, ptr %i.bsk, align 4, !tbaa !39
  %i.bsp = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 4
  store float %i.bso, ptr %i.bsp, align 4, !tbaa !39
  %i.bsq = load float, ptr %i.bsl, align 4, !tbaa !39
  %i.bsr = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 8
  store float %i.bsq, ptr %i.bsr, align 4, !tbaa !39
  %i.bss = load float, ptr %i.bsm, align 4, !tbaa !39
  %i.bst = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 12
  store float %i.bss, ptr %i.bst, align 4, !tbaa !39
  %i.bsu = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1731.i.prol = or disjoint i64 %indvars.iv1730.i.ph, 1
  br label %scalar.ph760.prol.loopexit

scalar.ph760.prol.loopexit:                       ; preds = %scalar.ph760.prol, %scalar.ph760.preheader
  %.lcssa1280.unr = phi ptr [ poison, %scalar.ph760.preheader ], [ %i.bsu, %scalar.ph760.prol ]
  %indvars.iv1730.i.unr = phi i64 [ %indvars.iv1730.i.ph, %scalar.ph760.preheader ], [ %indvars.iv.next1731.i.prol, %scalar.ph760.prol ]
  %.109331333.i.unr = phi ptr [ %.109331333.i.ph, %scalar.ph760.preheader ], [ %i.bsu, %scalar.ph760.prol ]
  %i.bsv = icmp eq i64 %indvars.iv1730.i.ph, %i.alr
  br i1 %i.bsv, label %._crit_edge1335.i, label %scalar.ph760

._crit_edge1335.i:                                ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760, %middle.block773
  %.lcssa665 = phi ptr [ %i.bsa, %middle.block773 ], [ %.lcssa1280.unr, %scalar.ph760.prol.loopexit ], [ %i.btu, %scalar.ph760 ]
  %i.bsw = add nuw nsw i32 %.39221338.i, 1        ; 2 uses
  %exitcond1735.not.i = icmp eq i32 %i.bsw, %i.cj
  br i1 %exitcond1735.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !170

scalar.ph760:                                     ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i.1, %scalar.ph760 ], [ %indvars.iv1730.i.unr, %scalar.ph760.prol.loopexit ] ; 6 uses
  %.109331333.i = phi ptr [ %i.btu, %scalar.ph760 ], [ %.109331333.i.unr, %scalar.ph760.prol.loopexit ] ; 9 uses
  %i.bsx = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1730.i
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1730.i
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1730.i
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1730.i
  %i.btb = load float, ptr %i.bsx, align 4, !tbaa !39
  store float %i.btb, ptr %.109331333.i, align 4, !tbaa !39
  %i.btc = load float, ptr %i.bsy, align 4, !tbaa !39
  %i.btd = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 4
  store float %i.btc, ptr %i.btd, align 4, !tbaa !39
  %i.bte = load float, ptr %i.bsz, align 4, !tbaa !39
  %i.btf = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 8
  store float %i.bte, ptr %i.btf, align 4, !tbaa !39
  %i.btg = load float, ptr %i.bta, align 4, !tbaa !39
  %i.bth = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 12
  store float %i.btg, ptr %i.bth, align 4, !tbaa !39
  %i.bti = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 16
  %indvars.iv.next1731.i = add nuw nsw i64 %indvars.iv1730.i, 1 ; 4 uses
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btk = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv.next1731.i
  %i.btn = load float, ptr %i.btj, align 4, !tbaa !39
  store float %i.btn, ptr %i.bti, align 4, !tbaa !39
  %i.bto = load float, ptr %i.btk, align 4, !tbaa !39
  %i.btp = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 20
  store float %i.bto, ptr %i.btp, align 4, !tbaa !39
  %i.btq = load float, ptr %i.btl, align 4, !tbaa !39
  %i.btr = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 24
  store float %i.btq, ptr %i.btr, align 4, !tbaa !39
  %i.bts = load float, ptr %i.btm, align 4, !tbaa !39
  %i.btt = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 28
  store float %i.bts, ptr %i.btt, align 4, !tbaa !39
  %i.btu = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 32 ; 2 uses
  %indvars.iv.next1731.i.1 = add nuw nsw i64 %indvars.iv1730.i, 2 ; 2 uses
  %exitcond1734.not.i.1 = icmp eq i64 %indvars.iv.next1731.i.1, %wide.trip.count1708.i
  br i1 %exitcond1734.not.i.1, label %._crit_edge1335.i, label %scalar.ph760, !llvm.loop !171

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
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.btw, %.preheader1089.loopexit.i ] ; 4 uses
  %i.btx = icmp slt i32 %.2837.lcssa.i, %i.rh
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
  %i.buu = mul i32 %i.btz, %.2837.lcssa.i
  %i.buv = and i32 %i.bup, -8
  %i.buw = add i32 %i.buv, 8                      ; 4 uses
  %i.bux = add i32 %i.cj, -4
  %i.buy = sext i32 %.2837.lcssa.i to i64
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
  %scevgep1129 = getelementptr i8, ptr %i.bty, i64 %i.bvm
  %i.bvn = mul i32 %.2837.lcssa.i, %i.rk
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
  %scevgep1131 = getelementptr i8, ptr %i.bvy, i64 %i.bvw
  %i.bvz = mul nsw i64 %i.buh, 24                 ; 2 uses
  %scevgep1133 = getelementptr i8, ptr %i.bty, i64 %i.bvz
  %i.bwa = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwb = getelementptr i8, ptr %i.bwa, i64 %i.bvz
  %scevgep1135 = getelementptr i8, ptr %i.bwb, i64 %i.bvw
  %i.bwc = mul nsw i64 %i.buh, 20                 ; 2 uses
  %scevgep1137 = getelementptr i8, ptr %i.bty, i64 %i.bwc
  %i.bwd = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwe = getelementptr i8, ptr %i.bwd, i64 %i.bwc
  %scevgep1139 = getelementptr i8, ptr %i.bwe, i64 %i.bvw
  %i.bwf = shl nsw i64 %i.buh, 4                  ; 2 uses
  %scevgep1141 = getelementptr i8, ptr %i.bty, i64 %i.bwf
  %i.bwg = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwh = getelementptr i8, ptr %i.bwg, i64 %i.bwf
  %scevgep1143 = getelementptr i8, ptr %i.bwh, i64 %i.bvw
  %i.bwi = mul nsw i64 %i.buh, 12                 ; 2 uses
  %scevgep1145 = getelementptr i8, ptr %i.bty, i64 %i.bwi
  %i.bwj = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwk = getelementptr i8, ptr %i.bwj, i64 %i.bwi
  %scevgep1147 = getelementptr i8, ptr %i.bwk, i64 %i.bvw
  %i.bwl = shl nsw i64 %i.buh, 3                  ; 2 uses
  %scevgep1149 = getelementptr i8, ptr %i.bty, i64 %i.bwl
  %i.bwm = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwn = getelementptr i8, ptr %i.bwm, i64 %i.bwl
  %scevgep1151 = getelementptr i8, ptr %i.bwn, i64 %i.bvw
  %i.bwo = shl nuw nsw i64 %i.buh, 2              ; 2 uses
  %scevgep1153 = getelementptr i8, ptr %i.bty, i64 %i.bwo
  %i.bwp = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %i.bwq = getelementptr i8, ptr %i.bwp, i64 %i.bwo
  %scevgep1155 = getelementptr i8, ptr %i.bwq, i64 %i.bvw
  %i.bwr = getelementptr i8, ptr %i.bty, i64 %i.bvv
  %scevgep1158 = getelementptr i8, ptr %i.bwr, i64 %i.bvw
  %min.iters.check1200 = icmp ult i32 %i.aci, 16
  %stride.check1167 = icmp slt i32 %i.bui, 0
  %n.vec1202 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bws = shl nuw nsw i64 %n.vec1202, 5
  %cmp.n1217 = icmp eq i64 %n.vec1202, %wide.trip.count1788.i
  %min.iters.check1111 = icmp ult i32 %i.aci, 8
  %n.vec1113 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bwt = shl nuw nsw i64 %n.vec1113, 4
  %cmp.n1124 = icmp eq i64 %n.vec1113, %wide.trip.count1788.i
  %xtraiter1315 = and i64 %wide.trip.count1788.i, 1
  %lcmp.mod1316.not = icmp eq i64 %xtraiter1315, 0
  %i.bwu = add nsw i64 %wide.trip.count1788.i, -1
  %min.iters.check1064 = icmp ult i32 %i.aci, 6
  %n.vec1066 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bwv = shl nuw nsw i64 %n.vec1066, 3
  %cmp.n1079 = icmp eq i64 %n.vec1066, %wide.trip.count1788.i
  %xtraiter1318 = and i64 %wide.trip.count1788.i, 3 ; 2 uses
  %lcmp.mod1319.not = icmp eq i64 %xtraiter1318, 0
  %min.iters.check1025 = icmp ult i32 %i.aci, 8
  %min.iters.check1026 = icmp ult i32 %i.aci, 32
  %i.bww = and i64 %wide.trip.count1788.i, 24
  %n.vec1028 = and i64 %wide.trip.count1788.i, 2147483616 ; 5 uses
  %i.bwx = shl nuw nsw i64 %n.vec1028, 2
  %cmp.n1038 = icmp eq i64 %n.vec1028, %wide.trip.count1788.i
  %min.epilog.iters.check = icmp eq i64 %i.bww, 0
  %n.vec1040 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bwy = shl nuw nsw i64 %n.vec1040, 2
  %cmp.n1045 = icmp eq i64 %n.vec1040, %wide.trip.count1788.i
  %xtraiter1321 = and i64 %wide.trip.count1788.i, 7 ; 2 uses
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1321, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

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
  %.08611351.us.i = phi i32 [ %i.bzs, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bzp, %._crit_edge1346.us.i ], [ %i.bxt, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bzr, %._crit_edge1346.us.i ], [ %i.bxk, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bzq, %._crit_edge1346.us.i ], [ %i.bxh, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1751.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1752.i, %bb.kd ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bzp, %bb.kd ] ; 17 uses
  %i.bxu = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bxw = load float, ptr %i.bxu, align 4, !tbaa !39
  store float %i.bxw, ptr %.18661344.us.i, align 4, !tbaa !39
  %i.bxx = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfj
  %i.bxy = load float, ptr %i.bxx, align 4, !tbaa !39
  %i.bxz = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 4
  store float %i.bxy, ptr %i.bxz, align 4, !tbaa !39
  %i.bya = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfl
  %i.byb = load float, ptr %i.bya, align 4, !tbaa !39
  %i.byc = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 8
  store float %i.byb, ptr %i.byc, align 4, !tbaa !39
  %i.byd = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfn
  %i.bye = load float, ptr %i.byd, align 4, !tbaa !39
  %i.byf = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 12
  store float %i.bye, ptr %i.byf, align 4, !tbaa !39
  %i.byg = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfp
  %i.byh = load float, ptr %i.byg, align 4, !tbaa !39
  %i.byi = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 16
  store float %i.byh, ptr %i.byi, align 4, !tbaa !39
  %i.byj = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfr
  %i.byk = load float, ptr %i.byj, align 4, !tbaa !39
  %i.byl = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 20
  store float %i.byk, ptr %i.byl, align 4, !tbaa !39
  %i.bym = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bft
  %i.byn = load float, ptr %i.bym, align 4, !tbaa !39
  %i.byo = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 24
  store float %i.byn, ptr %i.byo, align 4, !tbaa !39
  %i.byp = getelementptr inbounds nuw [4 x i8], ptr %i.bxu, i64 %i.bfv
  %i.byq = load float, ptr %i.byp, align 4, !tbaa !39
  %i.byr = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 28
  store float %i.byq, ptr %i.byr, align 4, !tbaa !39
  %i.bys = load float, ptr %i.bxv, align 4, !tbaa !39
  %i.byt = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32
  store float %i.bys, ptr %i.byt, align 4, !tbaa !39
  %i.byu = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfj
  %i.byv = load float, ptr %i.byu, align 4, !tbaa !39
  %i.byw = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 36
  store float %i.byv, ptr %i.byw, align 4, !tbaa !39
  %i.byx = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfl
  %i.byy = load float, ptr %i.byx, align 4, !tbaa !39
  %i.byz = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 40
  store float %i.byy, ptr %i.byz, align 4, !tbaa !39
  %i.bza = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfn
  %i.bzb = load float, ptr %i.bza, align 4, !tbaa !39
  %i.bzc = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 44
  store float %i.bzb, ptr %i.bzc, align 4, !tbaa !39
  %i.bzd = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfp
  %i.bze = load float, ptr %i.bzd, align 4, !tbaa !39
  %i.bzf = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 48
  store float %i.bze, ptr %i.bzf, align 4, !tbaa !39
  %i.bzg = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bfr
  %i.bzh = load float, ptr %i.bzg, align 4, !tbaa !39
  %i.bzi = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 52
  store float %i.bzh, ptr %i.bzi, align 4, !tbaa !39
  %i.bzj = getelementptr inbounds nuw [4 x i8], ptr %i.bxv, i64 %i.bft
  %i.bzk = load float, ptr %i.bzj, align 4, !tbaa !39
  %i.bzl = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 56
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
  %.0835.lcssa.i = phi i32 [ %i.vj, %.preheader1105.loopexit.i ], [ 0, %bb.dr ], [ 0, %bb.du ], [ 0, %bb.dt ], [ 0, %bb.dp ], [ 0, %bb.ee ], [ 0, %bb.ei ], [ 0, %bb.ej ], [ 0, %bb.eg ], [ 0, %bb.dx ], [ 0, %bb.eb ], [ 0, %bb.ec ], [ 0, %bb.dz ] ; 7 uses
  %i.vk = or disjoint i32 %.0835.lcssa.i, 3       ; 2 uses
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
  %i.wi = mul i32 %i.vn, %.0835.lcssa.i
  %i.wj = shl i32 %i.vn, 2                        ; 4 uses
  %i.wk = add nuw nsw i32 %.0835.lcssa.i, 1
  %i.wl = mul i32 %i.wk, %i.vn
  %i.wm = add nuw nsw i32 %.0835.lcssa.i, 2
  %i.wn = mul i32 %i.wm, %i.vn
  %i.wo = mul i32 %i.vk, %i.vn
  %i.wp = and i32 %i.wd, -8
  %i.wq = add i32 %i.wp, 8                        ; 4 uses
  %i.wr = add i32 %i.p, -4
  %i.ws = zext nneg i32 %.0835.lcssa.i to i64
  %i.wt = add i32 %.0835.lcssa.i, 3
  %i.wu = sext i32 %i.eg to i64
  %i.wv = or disjoint i32 %i.wq, 3
  %i.ww = icmp slt i32 %i.wv, %i.p
  %wide.trip.count1708.i = zext i32 %i.ny to i64  ; 8 uses
  %invariant.op.i = add nsw i64 %i.wu, -3
  %min.iters.check502 = icmp ult i32 %i.ny, 4
  %n.vec504 = and i64 %wide.trip.count1708.i, 2147483644 ; 4 uses
  %i.wx = shl nuw nsw i64 %n.vec504, 4
  %cmp.n519 = icmp eq i64 %n.vec504, %wide.trip.count1708.i
  %min.iters.check485 = icmp ult i32 %i.ny, 4
  %n.vec487 = and i64 %wide.trip.count1708.i, 2147483644 ; 4 uses
  %i.wy = shl nuw nsw i64 %n.vec487, 3
  %cmp.n498 = icmp eq i64 %n.vec487, %wide.trip.count1708.i
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
  %indvars.iv.i103 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1007.lr.ph.i ], [ %indvars.iv.next.i104, %._crit_edge1246.split.i ] ; 2 uses
  %i.wz = sext i32 %indvars.iv.i103 to i64
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
  %.08471133.us.i = phi ptr [ %i.agu, %._crit_edge.us.i ], [ %i.xw, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08501132.us.i = phi ptr [ %i.agv, %._crit_edge.us.i ], [ %i.ya, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08541131.us.i = phi ptr [ %i.agw, %._crit_edge.us.i ], [ %i.ye, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08571130.us.i = phi ptr [ %i.agx, %._crit_edge.us.i ], [ %i.yi, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08801129.us.i = phi ptr [ %i.agy, %._crit_edge.us.i ], [ %i.ym, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08831128.us.i = phi ptr [ %i.agz, %._crit_edge.us.i ], [ %i.yq, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08861127.us.i = phi ptr [ %i.aha, %._crit_edge.us.i ], [ %i.yu, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08891126.us.i = phi ptr [ %i.ags, %._crit_edge.us.i ], [ %i.yw, %.preheader1109.lr.ph.i ]
  %.09461125.us.i = phi i32 [ %i.ahb, %._crit_edge.us.i ], [ 0, %.preheader1109.lr.ph.i ]
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.preheader1109.us.i
  %indvars.iv1649.i = phi i64 [ 0, %.preheader1109.us.i ], [ %indvars.iv.next1650.i, %bb.ek ] ; 9 uses
  %.18901124.us.i = phi ptr [ %.08891126.us.i, %.preheader1109.us.i ], [ %i.ags, %bb.ek ] ; 5 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.08471133.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.08541131.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.08801129.us.i, i64 %indvars.iv1649.i ; 2 uses
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
  %.2948.lcssa.i = phi i32 [ %.1947.lcssa.i, %.preheader1111.i ], [ %i.aof, %._crit_edge.us1230.i ] ; 2 uses
  %.6895.lcssa.i = phi ptr [ %.3892.lcssa.i, %.preheader1111.i ], [ %i.anw, %._crit_edge.us1230.i ]
  %.2888.lcssa.i = phi ptr [ %.1887.lcssa.i, %.preheader1111.i ], [ %i.aoe, %._crit_edge.us1230.i ] ; 2 uses
  %.2885.lcssa.i = phi ptr [ %.1884.lcssa.i, %.preheader1111.i ], [ %i.aod, %._crit_edge.us1230.i ] ; 2 uses
  %.2882.lcssa.i = phi ptr [ %.1881.lcssa.i, %.preheader1111.i ], [ %i.aoc, %._crit_edge.us1230.i ] ; 2 uses
  %.2859.lcssa.i = phi ptr [ %.1858.lcssa.i, %.preheader1111.i ], [ %i.aob, %._crit_edge.us1230.i ] ; 2 uses
  %.2856.lcssa.i = phi ptr [ %.1855.lcssa.i, %.preheader1111.i ], [ %i.aoa, %._crit_edge.us1230.i ] ; 2 uses
  %.2852.lcssa.i = phi ptr [ %.1851.lcssa.i, %.preheader1111.i ], [ %i.anz, %._crit_edge.us1230.i ] ; 2 uses
  %.2849.lcssa.i = phi ptr [ %.1848.lcssa.i, %.preheader1111.i ], [ %i.any, %._crit_edge.us1230.i ] ; 2 uses
  %.2841.lcssa.i = phi ptr [ %.1840.lcssa.i, %.preheader1111.i ], [ %i.anx, %._crit_edge.us1230.i ] ; 2 uses
  %i.aoi = icmp sge i32 %.2948.lcssa.i, %i.p
  %brmerge.i = or i1 %i.up, %i.aoi
  br i1 %brmerge.i, label %._crit_edge1246.split.i, label %.preheader1106.i

.preheader1106.i:                                 ; preds = %.preheader1110.i, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa475, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1110.i ] ; 3 uses
  %.39491244.i = phi i32 [ %i.apk, %._crit_edge.i ], [ %.2948.lcssa.i, %.preheader1110.i ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader1106.i
  %i.aoj = getelementptr i8, ptr %.98981245.i, i64 %i.vi ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.aok = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.aok
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %index
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %index
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %index
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <4 x i32>, ptr %i.aol, align 4, !tbaa !39
  %i.aot = lshr <4 x i32> %wide.load, splat (i32 16)
  %wide.load476 = load <4 x i32>, ptr %i.aom, align 4, !tbaa !39
  %i.aou = lshr <4 x i32> %wide.load476, splat (i32 16)
  %wide.load477 = load <4 x i32>, ptr %i.aon, align 4, !tbaa !39
  %i.aov = lshr <4 x i32> %wide.load477, splat (i32 16)
  %wide.load478 = load <4 x i32>, ptr %i.aoo, align 4, !tbaa !39
  %i.aow = lshr <4 x i32> %wide.load478, splat (i32 16)
  %wide.load479 = load <4 x i32>, ptr %i.aop, align 4, !tbaa !39
  %i.aox = lshr <4 x i32> %wide.load479, splat (i32 16)
  %wide.load480 = load <4 x i32>, ptr %i.aoq, align 4, !tbaa !39
  %i.aoy = lshr <4 x i32> %wide.load480, splat (i32 16)
  %wide.load481 = load <4 x i32>, ptr %i.aor, align 4, !tbaa !39
  %i.aoz = lshr <4 x i32> %wide.load481, splat (i32 16)
  %wide.load482 = load <4 x i32>, ptr %i.aos, align 4, !tbaa !39
  %i.apa = lshr <4 x i32> %wide.load482, splat (i32 16)
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
  %.lcssa475 = phi ptr [ %i.aoj, %middle.block ], [ %i.aqy, %scalar.ph ]
  %i.apk = add nuw nsw i32 %.39491244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.apk, %i.p
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !582

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.aqy, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %indvars.iv1679.i
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %indvars.iv1679.i
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %indvars.iv1679.i
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
  %indvars.iv.next.i104 = add i32 %indvars.iv.i103, %i.uv
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
  %.1836.lcssa.i = phi i32 [ %.0835.lcssa.i, %.preheader1105.i ], [ %i.arb, %.preheader1097.loopexit.i ] ; 4 uses
  %i.arc = or disjoint i32 %.1836.lcssa.i, 1      ; 3 uses
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
  %i.asi = mul i32 %i.arf, %.1836.lcssa.i
  %i.asj = shl i32 %i.arf, 1                      ; 2 uses
  %i.ask = mul i32 %i.arc, %i.arf
  %i.asl = and i32 %i.asd, -8
  %i.asm = add i32 %i.asl, 8                      ; 4 uses
  %i.asn = add i32 %i.p, -4
  %i.aso = zext nneg i32 %.1836.lcssa.i to i64
  %i.asp = sext i32 %i.eg to i64
  %i.asq = or disjoint i32 %i.asm, 3
  %i.asr = icmp slt i32 %i.asq, %i.p
  %wide.trip.count1754.i = zext i32 %i.ny to i64  ; 10 uses
  %min.iters.check555 = icmp ult i32 %i.ny, 4
  %n.vec557 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.ass = shl nuw nsw i64 %n.vec557, 4
  %cmp.n572 = icmp eq i64 %n.vec557, %wide.trip.count1754.i
  %min.iters.check538 = icmp ult i32 %i.ny, 4
  %n.vec540 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.ast = shl nuw nsw i64 %n.vec540, 3
  %cmp.n551 = icmp eq i64 %n.vec540, %wide.trip.count1754.i
  %min.iters.check523 = icmp ult i32 %i.ny, 4
  %n.vec525 = and i64 %wide.trip.count1754.i, 2147483644 ; 4 uses
  %i.asu = shl nuw nsw i64 %n.vec525, 2
  %cmp.n534 = icmp eq i64 %n.vec525, %wide.trip.count1754.i
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
  %.09191264.us.i = phi i32 [ %i.bag, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09231263.us.i = phi ptr [ %i.bab, %._crit_edge1257.us.i ], [ %i.atx, %.preheader1101.lr.ph.i ]
  %.09341262.us.i = phi ptr [ %i.baf, %._crit_edge1257.us.i ], [ %i.atr, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09371261.us.i = phi ptr [ %i.bae, %._crit_edge1257.us.i ], [ %i.ato, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09401260.us.i = phi ptr [ %i.bad, %._crit_edge1257.us.i ], [ %i.atk, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09431259.us.i = phi ptr [ %i.bac, %._crit_edge1257.us.i ], [ %i.atg, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.en ] ; 5 uses
  %.19241255.us.i = phi ptr [ %.09231263.us.i, %.preheader1101.us.i ], [ %i.bab, %bb.en ] ; 33 uses
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.auc = load i32, ptr %i.aty, align 4, !tbaa !39
  %i.aud = lshr i32 %i.auc, 16
  %i.aue = trunc nuw i32 %i.aud to i16
  store i16 %i.aue, ptr %.19241255.us.i, align 2, !tbaa !573
  %i.auf = load i32, ptr %i.atz, align 4, !tbaa !39
  %i.aug = lshr i32 %i.auf, 16
  %i.auh = trunc nuw i32 %i.aug to i16
  %i.aui = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 2
  store i16 %i.auh, ptr %i.aui, align 2, !tbaa !573
  %i.auj = load i32, ptr %i.aua, align 4, !tbaa !39
  %i.auk = lshr i32 %i.auj, 16
  %i.aul = trunc nuw i32 %i.auk to i16
  %i.aum = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 4
  store i16 %i.aul, ptr %i.aum, align 2, !tbaa !573
  %i.aun = load i32, ptr %i.aub, align 4, !tbaa !39
  %i.auo = lshr i32 %i.aun, 16
  %i.aup = trunc nuw i32 %i.auo to i16
  %i.auq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 6
  store i16 %i.aup, ptr %i.auq, align 2, !tbaa !573
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.aty, i64 %i.vv ; 2 uses
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.atz, i64 %i.vv ; 2 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.aua, i64 %i.vv ; 2 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %i.vv ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 8
  %i.auw = load i32, ptr %i.aur, align 4, !tbaa !39
  %i.aux = lshr i32 %i.auw, 16
  %i.auy = trunc nuw i32 %i.aux to i16
  store i16 %i.auy, ptr %i.auv, align 2, !tbaa !573
  %i.auz = load i32, ptr %i.aus, align 4, !tbaa !39
  %i.ava = lshr i32 %i.auz, 16
  %i.avb = trunc nuw i32 %i.ava to i16
  %i.avc = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 10
  store i16 %i.avb, ptr %i.avc, align 2, !tbaa !573
  %i.avd = load i32, ptr %i.aut, align 4, !tbaa !39
  %i.ave = lshr i32 %i.avd, 16
  %i.avf = trunc nuw i32 %i.ave to i16
  %i.avg = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store i16 %i.avf, ptr %i.avg, align 2, !tbaa !573
  %i.avh = load i32, ptr %i.auu, align 4, !tbaa !39
  %i.avi = lshr i32 %i.avh, 16
  %i.avj = trunc nuw i32 %i.avi to i16
  %i.avk = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 14
  store i16 %i.avj, ptr %i.avk, align 2, !tbaa !573
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.vv ; 2 uses
  %i.avm = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %i.vv ; 2 uses
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.aut, i64 %i.vv ; 2 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.auu, i64 %i.vv ; 2 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.avq = load i32, ptr %i.avl, align 4, !tbaa !39
  %i.avr = lshr i32 %i.avq, 16
  %i.avs = trunc nuw i32 %i.avr to i16
  store i16 %i.avs, ptr %i.avp, align 2, !tbaa !573
  %i.avt = load i32, ptr %i.avm, align 4, !tbaa !39
  %i.avu = lshr i32 %i.avt, 16
  %i.avv = trunc nuw i32 %i.avu to i16
  %i.avw = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 18
  store i16 %i.avv, ptr %i.avw, align 2, !tbaa !573
  %i.avx = load i32, ptr %i.avn, align 4, !tbaa !39
  %i.avy = lshr i32 %i.avx, 16
  %i.avz = trunc nuw i32 %i.avy to i16
  %i.awa = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store i16 %i.avz, ptr %i.awa, align 2, !tbaa !573
  %i.awb = load i32, ptr %i.avo, align 4, !tbaa !39
  %i.awc = lshr i32 %i.awb, 16
  %i.awd = trunc nuw i32 %i.awc to i16
  %i.awe = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 22
  store i16 %i.awd, ptr %i.awe, align 2, !tbaa !573
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %i.vv ; 2 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %i.vv ; 2 uses
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avn, i64 %i.vv ; 2 uses
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.avo, i64 %i.vv ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  %i.awk = load i32, ptr %i.awf, align 4, !tbaa !39
  %i.awl = lshr i32 %i.awk, 16
  %i.awm = trunc nuw i32 %i.awl to i16
  store i16 %i.awm, ptr %i.awj, align 2, !tbaa !573
  %i.awn = load i32, ptr %i.awg, align 4, !tbaa !39
  %i.awo = lshr i32 %i.awn, 16
  %i.awp = trunc nuw i32 %i.awo to i16
  %i.awq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 26
  store i16 %i.awp, ptr %i.awq, align 2, !tbaa !573
  %i.awr = load i32, ptr %i.awh, align 4, !tbaa !39
  %i.aws = lshr i32 %i.awr, 16
  %i.awt = trunc nuw i32 %i.aws to i16
  %i.awu = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store i16 %i.awt, ptr %i.awu, align 2, !tbaa !573
  %i.awv = load i32, ptr %i.awi, align 4, !tbaa !39
  %i.aww = lshr i32 %i.awv, 16
  %i.awx = trunc nuw i32 %i.aww to i16
  %i.awy = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 30
  store i16 %i.awx, ptr %i.awy, align 2, !tbaa !573
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %i.awf, i64 %i.vv ; 2 uses
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.vv ; 2 uses
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr %i.awh, i64 %i.vv ; 2 uses
  %i.axc = getelementptr inbounds nuw [4 x i8], ptr %i.awi, i64 %i.vv ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.axe = load i32, ptr %i.awz, align 4, !tbaa !39
  %i.axf = lshr i32 %i.axe, 16
  %i.axg = trunc nuw i32 %i.axf to i16
  store i16 %i.axg, ptr %i.axd, align 2, !tbaa !573
  %i.axh = load i32, ptr %i.axa, align 4, !tbaa !39
  %i.axi = lshr i32 %i.axh, 16
  %i.axj = trunc nuw i32 %i.axi to i16
  %i.axk = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 34
  store i16 %i.axj, ptr %i.axk, align 2, !tbaa !573
  %i.axl = load i32, ptr %i.axb, align 4, !tbaa !39
  %i.axm = lshr i32 %i.axl, 16
  %i.axn = trunc nuw i32 %i.axm to i16
  %i.axo = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store i16 %i.axn, ptr %i.axo, align 2, !tbaa !573
  %i.axp = load i32, ptr %i.axc, align 4, !tbaa !39
  %i.axq = lshr i32 %i.axp, 16
  %i.axr = trunc nuw i32 %i.axq to i16
  %i.axs = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 38
  store i16 %i.axr, ptr %i.axs, align 2, !tbaa !573
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %i.vv ; 2 uses
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %i.axa, i64 %i.vv ; 2 uses
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axb, i64 %i.vv ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn19Convolution_x86_avx21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfh = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %indvars.iv1725.i ; 2 uses
  %i.bfi = load i32, ptr %i.bfe, align 4, !tbaa !39
  %i.bfj = lshr i32 %i.bfi, 16
  %i.bfk = trunc nuw i32 %i.bfj to i16
  store i16 %i.bfk, ptr %.79301311.us.i, align 2, !tbaa !573
  %i.bfl = load i32, ptr %i.bff, align 4, !tbaa !39
  %i.bfm = lshr i32 %i.bfl, 16
  %i.bfn = trunc nuw i32 %i.bfm to i16
  %i.bfo = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 2
  store i16 %i.bfn, ptr %i.bfo, align 2, !tbaa !573
  %i.bfp = load i32, ptr %i.bfg, align 4, !tbaa !39
  %i.bfq = lshr i32 %i.bfp, 16
  %i.bfr = trunc nuw i32 %i.bfq to i16
  %i.bfs = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 4
  store i16 %i.bfr, ptr %i.bfs, align 2, !tbaa !573
  %i.bft = load i32, ptr %i.bfh, align 4, !tbaa !39
  %i.bfu = lshr i32 %i.bft, 16
  %i.bfv = trunc nuw i32 %i.bfu to i16
  %i.bfw = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 6
  store i16 %i.bfv, ptr %i.bfw, align 2, !tbaa !573
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfe, i64 %i.vv
  %i.bfy = getelementptr inbounds nuw [4 x i8], ptr %i.bff, i64 %i.vv
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bfg, i64 %i.vv
  %i.bga = getelementptr inbounds nuw [4 x i8], ptr %i.bfh, i64 %i.vv
  %i.bgb = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 8
  %i.bgc = load i32, ptr %i.bfx, align 4, !tbaa !39
  %i.bgd = lshr i32 %i.bgc, 16
  %i.bge = trunc nuw i32 %i.bgd to i16
  store i16 %i.bge, ptr %i.bgb, align 2, !tbaa !573
  %i.bgf = load i32, ptr %i.bfy, align 4, !tbaa !39
  %i.bgg = lshr i32 %i.bgf, 16
  %i.bgh = trunc nuw i32 %i.bgg to i16
  %i.bgi = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 10
  store i16 %i.bgh, ptr %i.bgi, align 2, !tbaa !573
  %i.bgj = load i32, ptr %i.bfz, align 4, !tbaa !39
  %i.bgk = lshr i32 %i.bgj, 16
  %i.bgl = trunc nuw i32 %i.bgk to i16
  %i.bgm = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 12
  store i16 %i.bgl, ptr %i.bgm, align 2, !tbaa !573
  %i.bgn = load i32, ptr %i.bga, align 4, !tbaa !39
  %i.bgo = lshr i32 %i.bgn, 16
  %i.bgp = trunc nuw i32 %i.bgo to i16
  %i.bgq = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 14
  store i16 %i.bgp, ptr %i.bgq, align 2, !tbaa !573
  %i.bgr = getelementptr inbounds nuw i8, ptr %.79301311.us.i, i64 16 ; 2 uses
  %indvars.iv.next1726.i = add nuw nsw i64 %indvars.iv1725.i, 1 ; 2 uses
  %exitcond1729.not.i = icmp eq i64 %indvars.iv.next1726.i, %wide.trip.count1708.i
  br i1 %exitcond1729.not.i, label %._crit_edge1313.us.i, label %scalar.ph501, !llvm.loop !593

._crit_edge1313.us.i:                             ; preds = %scalar.ph501, %middle.block518
  %.lcssa439 = phi ptr [ %i.bed, %middle.block518 ], [ %i.bgr, %scalar.ph501 ] ; 2 uses
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %.29451315.us.i, i64 %i.wb ; 2 uses
  %i.bgt = getelementptr inbounds nuw [4 x i8], ptr %.29421316.us.i, i64 %i.wb ; 2 uses
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %.29391317.us.i, i64 %i.wb ; 2 uses
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %.29361318.us.i, i64 %i.wb ; 2 uses
  %i.bgw = add nuw nsw i32 %.29211320.us.i, 2     ; 3 uses
  %i.bgx = or disjoint i32 %i.bgw, 1
  %i.bgy = icmp slt i32 %i.bgx, %i.p
  br i1 %i.bgy, label %.preheader1099.us.i, label %.preheader1102.i, !llvm.loop !594

.preheader1102.i:                                 ; preds = %._crit_edge1313.us.i, %.preheader1103.i
  %.2945.lcssa.i = phi ptr [ %.1944.lcssa.i, %.preheader1103.i ], [ %i.bgs, %._crit_edge1313.us.i ] ; 2 uses
  %.2942.lcssa.i = phi ptr [ %.1941.lcssa.i, %.preheader1103.i ], [ %i.bgt, %._crit_edge1313.us.i ] ; 2 uses
  %.2939.lcssa.i = phi ptr [ %.1938.lcssa.i, %.preheader1103.i ], [ %i.bgu, %._crit_edge1313.us.i ] ; 2 uses
  %.2936.lcssa.i = phi ptr [ %.1935.lcssa.i, %.preheader1103.i ], [ %i.bgv, %._crit_edge1313.us.i ] ; 2 uses
  %.6929.lcssa.i = phi ptr [ %.3926.lcssa.i, %.preheader1103.i ], [ %.lcssa439, %._crit_edge1313.us.i ]
  %.2921.lcssa.i = phi i32 [ %.1920.lcssa.i, %.preheader1103.i ], [ %i.bgw, %._crit_edge1313.us.i ] ; 2 uses
  %i.bgz = icmp sge i32 %.2921.lcssa.i, %i.p
  %brmerge1469.i = or i1 %i.wc, %i.bgz
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1102.i, %._crit_edge1335.i
  %.39221338.i = phi i32 [ %i.bho, %._crit_edge1335.i ], [ %.2921.lcssa.i, %.preheader1102.i ]
  %.99321337.i = phi ptr [ %.lcssa445, %._crit_edge1335.i ], [ %.6929.lcssa.i, %.preheader1102.i ] ; 3 uses
  br i1 %min.iters.check485, label %scalar.ph484.preheader, label %vector.ph486

vector.ph486:                                     ; preds = %.preheader1098.i
  %i.bha = getelementptr i8, ptr %.99321337.i, i64 %i.wy ; 2 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph486
  %index489 = phi i64 [ 0, %vector.ph486 ], [ %index.next496, %vector.body488 ] ; 6 uses
  %i.bhb = shl i64 %index489, 3
  %next.gep490 = getelementptr i8, ptr %.99321337.i, i64 %i.bhb
  %i.bhc = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %index489
  %i.bhd = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %index489
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %index489
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %index489
  %wide.load491 = load <4 x i32>, ptr %i.bhc, align 4, !tbaa !39
  %i.bhg = lshr <4 x i32> %wide.load491, splat (i32 16)
  %wide.load492 = load <4 x i32>, ptr %i.bhd, align 4, !tbaa !39
  %i.bhh = lshr <4 x i32> %wide.load492, splat (i32 16)
  %wide.load493 = load <4 x i32>, ptr %i.bhe, align 4, !tbaa !39
  %i.bhi = lshr <4 x i32> %wide.load493, splat (i32 16)
  %wide.load494 = load <4 x i32>, ptr %i.bhf, align 4, !tbaa !39
  %i.bhj = lshr <4 x i32> %wide.load494, splat (i32 16)
  %i.bhk = shufflevector <4 x i32> %i.bhg, <4 x i32> %i.bhh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhl = shufflevector <4 x i32> %i.bhi, <4 x i32> %i.bhj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bhm = shufflevector <8 x i32> %i.bhk, <8 x i32> %i.bhl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec495 = trunc nuw <16 x i32> %i.bhm to <16 x i16>
  store <16 x i16> %interleaved.vec495, ptr %next.gep490, align 2, !tbaa !573
  %index.next496 = add nuw i64 %index489, 4       ; 2 uses
  %i.bhn = icmp eq i64 %index.next496, %n.vec487
  br i1 %i.bhn, label %middle.block497, label %vector.body488, !llvm.loop !595

middle.block497:                                  ; preds = %vector.body488
  br i1 %cmp.n498, label %._crit_edge1335.i, label %scalar.ph484.preheader

scalar.ph484.preheader:                           ; preds = %.preheader1098.i, %middle.block497
  %indvars.iv1730.i.ph = phi i64 [ 0, %.preheader1098.i ], [ %n.vec487, %middle.block497 ]
  %.109331333.i.ph = phi ptr [ %.99321337.i, %.preheader1098.i ], [ %i.bha, %middle.block497 ]
  br label %scalar.ph484

._crit_edge1335.i:                                ; preds = %scalar.ph484, %middle.block497
  %.lcssa445 = phi ptr [ %i.bha, %middle.block497 ], [ %i.bii, %scalar.ph484 ]
  %i.bho = add nuw nsw i32 %.39221338.i, 1        ; 2 uses
  %exitcond1735.not.i = icmp eq i32 %i.bho, %i.p
  br i1 %exitcond1735.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !596

scalar.ph484:                                     ; preds = %scalar.ph484.preheader, %scalar.ph484
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i, %scalar.ph484 ], [ %indvars.iv1730.i.ph, %scalar.ph484.preheader ] ; 5 uses
  %.109331333.i = phi ptr [ %i.bii, %scalar.ph484 ], [ %.109331333.i.ph, %scalar.ph484.preheader ] ; 5 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1730.i
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1730.i
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1730.i
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1730.i
  %i.bht = load i32, ptr %i.bhp, align 4, !tbaa !39
  %i.bhu = lshr i32 %i.bht, 16
  %i.bhv = trunc nuw i32 %i.bhu to i16
  store i16 %i.bhv, ptr %.109331333.i, align 2, !tbaa !573
  %i.bhw = load i32, ptr %i.bhq, align 4, !tbaa !39
  %i.bhx = lshr i32 %i.bhw, 16
  %i.bhy = trunc nuw i32 %i.bhx to i16
  %i.bhz = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 2
  store i16 %i.bhy, ptr %i.bhz, align 2, !tbaa !573
  %i.bia = load i32, ptr %i.bhr, align 4, !tbaa !39
  %i.bib = lshr i32 %i.bia, 16
  %i.bic = trunc nuw i32 %i.bib to i16
  %i.bid = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 4
  store i16 %i.bic, ptr %i.bid, align 2, !tbaa !573
  %i.bie = load i32, ptr %i.bhs, align 4, !tbaa !39
  %i.bif = lshr i32 %i.bie, 16
  %i.big = trunc nuw i32 %i.bif to i16
  %i.bih = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 6
  store i16 %i.big, ptr %i.bih, align 2, !tbaa !573
  %i.bii = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 8 ; 2 uses
  %indvars.iv.next1731.i = add nuw nsw i64 %indvars.iv1730.i, 1 ; 2 uses
  %exitcond1734.not.i = icmp eq i64 %indvars.iv.next1731.i, %wide.trip.count1708.i
  br i1 %exitcond1734.not.i, label %._crit_edge1335.i, label %scalar.ph484, !llvm.loop !597

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
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.bik, %.preheader1089.loopexit.i ] ; 3 uses
  %i.bil = icmp slt i32 %.2837.lcssa.i, %i.eg
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
  %i.bji = mul i32 %i.bin, %.2837.lcssa.i
  %i.bjj = and i32 %i.bjd, -8
  %i.bjk = add i32 %i.bjj, 8                      ; 4 uses
  %i.bjl = add i32 %i.p, -4
  %i.bjm = sext i32 %.2837.lcssa.i to i64
  %wide.trip.count1813.i = sext i32 %i.eg to i64
  %i.bjn = or disjoint i32 %i.bjk, 3
  %i.bjo = icmp slt i32 %i.bjn, %i.p
  %wide.trip.count1788.i = zext i32 %i.ny to i64  ; 15 uses
  %min.iters.check636 = icmp ult i32 %i.ny, 4
  %n.vec638 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bjp = shl nuw nsw i64 %n.vec638, 4
  %cmp.n653 = icmp eq i64 %n.vec638, %wide.trip.count1788.i
  %min.iters.check619 = icmp ult i32 %i.ny, 4
  %n.vec621 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bjq = shl nuw nsw i64 %n.vec621, 3
  %cmp.n632 = icmp eq i64 %n.vec621, %wide.trip.count1788.i
  %min.iters.check600 = icmp ult i32 %i.ny, 8
  %n.vec602 = and i64 %wide.trip.count1788.i, 2147483640 ; 4 uses
  %i.bjr = shl nuw nsw i64 %n.vec602, 2
  %cmp.n615 = icmp eq i64 %n.vec602, %wide.trip.count1788.i
  %min.iters.check576 = icmp ult i32 %i.ny, 4
  %min.iters.check577 = icmp ult i32 %i.ny, 32
  %i.bjs = and i64 %wide.trip.count1788.i, 28
  %n.vec579 = and i64 %wide.trip.count1788.i, 2147483616 ; 5 uses
  %i.bjt = shl nuw nsw i64 %n.vec579, 1
  %cmp.n589 = icmp eq i64 %n.vec579, %wide.trip.count1788.i
  %min.epilog.iters.check = icmp eq i64 %i.bjs, 0
  %n.vec591 = and i64 %wide.trip.count1788.i, 2147483644 ; 4 uses
  %i.bju = shl nuw nsw i64 %n.vec591, 1
  %cmp.n596 = icmp eq i64 %n.vec591, %wide.trip.count1788.i
  br label %_ZN4ncnn3MatD2Ev.exit.i102

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
  %.08611351.us.i = phi i32 [ %i.bmr, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bmo, %._crit_edge1346.us.i ], [ %i.bkp, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bmq, %._crit_edge1346.us.i ], [ %i.bkg, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bmp, %._crit_edge1346.us.i ], [ %i.bkd, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ep, %.preheader1093.us.i
  %indvars.iv1751.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1752.i, %bb.ep ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bmo, %bb.ep ] ; 2 uses
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1751.i ; 8 uses
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1751.i ; 8 uses
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
  store <16 x i16> %i.bmn, ptr %.18661344.us.i, align 2, !tbaa !573
  %i.bmo = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32 ; 3 uses
  %indvars.iv.next1752.i = add nuw nsw i64 %indvars.iv1751.i, 1 ; 2 uses
  %exitcond1755.not.i = icmp eq i64 %indvars.iv.next1752.i, %wide.trip.count1754.i
  br i1 %exitcond1755.not.i, label %._crit_edge1346.us.i, label %bb.ep, !llvm.loop !602

._crit_edge1346.us.i:                             ; preds = %bb.ep
  %i.bmp = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.asb ; 2 uses
  %i.bmq = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.asb ; 2 uses
  %i.bmr = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
  %i.bms = or disjoint i32 %i.bmr, 7
  %i.bmt = icmp slt i32 %i.bms, %i.p
  br i1 %i.bmt, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !603

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0877.lcssa.i = phi ptr [ %i.bkd, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmp, %._crit_edge1346.us.i ] ; 3 uses
  %.0874.lcssa.i = phi ptr [ %i.bkg, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmq, %._crit_edge1346.us.i ] ; 3 uses
  %.0865.lcssa.i = phi ptr [ %i.bkp, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bmo, %._crit_edge1346.us.i ] ; 3 uses
  %.0861.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.asm, %._crit_edge1346.us.i ] ; 4 uses
  %i.bmu = or disjoint i32 %.0861.lcssa.i, 3
  %i.bmv = icmp slt i32 %i.bmu, %i.p
  br i1 %i.bmv, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.asr, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.arm, label %.preheader1092.us.i, label %.preheader1092.preheader.i

.preheader1092.preheader.i:                       ; preds = %.preheader1092.lr.ph.i, %.preheader1096.thread.i
  %.0877.lcssa19281939.i = phi ptr [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1746.i, %.preheader1096.thread.i ]
  %.0874.lcssa19291938.i = phi ptr [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ], [ %scevgep1750.i, %.preheader1096.thread.i ]
  %.0865.lcssa19301937.i = phi ptr [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.bkp, %.preheader1096.thread.i ]
  %.0861.lcssa19311936.i = phi i32 [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ], [ %i.asm, %.preheader1096.thread.i ] ; 2 uses
  %i.bmw = sub i32 %i.asn, %.0861.lcssa19311936.i
  %i.bmx = and i32 %i.bmw, -4                     ; 2 uses
  %i.bmy = zext i32 %i.bmx to i64
  %i.bmz = add nuw nsw i64 %i.bmy, 4
  %i.bna = mul nsw i64 %i.bmz, %i.art             ; 2 uses
  %scevgep1756.i = getelementptr i8, ptr %.0877.lcssa19281939.i, i64 %i.bna
  %scevgep1757.i = getelementptr i8, ptr %.0874.lcssa19291938.i, i64 %i.bna
  %i.bnb = add i32 %.0861.lcssa19311936.i, 4
  %i.bnc = add i32 %i.bnb, %i.bmx
  br label %.preheader1095.i

.preheader1092.us.i:                              ; preds = %.preheader1092.lr.ph.i, %._crit_edge1362.us.i
  %.18621367.us.i = phi i32 [ %i.bpu, %._crit_edge1362.us.i ], [ %.0861.lcssa.i, %.preheader1092.lr.ph.i ]
  %.28671366.us.i = phi ptr [ %.lcssa419, %._crit_edge1362.us.i ], [ %.0865.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18751365.us.i = phi ptr [ %i.bpt, %._crit_edge1362.us.i ], [ %.0874.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  %.18781364.us.i = phi ptr [ %i.bps, %._crit_edge1362.us.i ], [ %.0877.lcssa.i, %.preheader1092.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check555, label %scalar.ph554.preheader, label %vector.ph556

vector.ph556:                                     ; preds = %.preheader1092.us.i
  %i.bnd = getelementptr i8, ptr %.28671366.us.i, i64 %i.ass ; 2 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next570, %vector.body558 ] ; 4 uses
  %i.bne = shl i64 %index559, 4
  %next.gep560 = getelementptr i8, ptr %.28671366.us.i, i64 %i.bne
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.18781364.us.i, i64 %index559 ; 4 uses
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %.18751365.us.i, i64 %index559 ; 4 uses
  %wide.load561 = load <4 x i32>, ptr %i.bnf, align 4, !tbaa !39
  %i.bnh = lshr <4 x i32> %wide.load561, splat (i32 16)
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arn
  %wide.load562 = load <4 x i32>, ptr %i.bni, align 4, !tbaa !39
  %i.bnj = lshr <4 x i32> %wide.load562, splat (i32 16)
  %i.bnk = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arp
  %wide.load563 = load <4 x i32>, ptr %i.bnk, align 4, !tbaa !39
  %i.bnl = lshr <4 x i32> %wide.load563, splat (i32 16)
  %i.bnm = getelementptr inbounds nuw [4 x i8], ptr %i.bnf, i64 %i.arr
  %wide.load564 = load <4 x i32>, ptr %i.bnm, align 4, !tbaa !39
  %i.bnn = lshr <4 x i32> %wide.load564, splat (i32 16)
  %wide.load565 = load <4 x i32>, ptr %i.bng, align 4, !tbaa !39
  %i.bno = lshr <4 x i32> %wide.load565, splat (i32 16)
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.bng, i64 %i.arn
  %wide.load566 = load <4 x i32>, ptr %i.bnp, align 4, !tbaa !39
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
  %.1.us147.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us149.preheader.i ], [ %i.uu, %bb.av ]
  %i.uv = or disjoint i32 %i.uj, 1
  %.not491.us146.1.i = icmp slt i32 %i.uv, %i.bz
  br i1 %.not491.us146.1.i, label %bb.aw, label %.split.us148.i

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us149.1.i
  %i.uw = fadd fast float %i.tk, %i.si
  %i.ux = fadd fast float %i.uw, %i.sy
  %i.uy = fadd fast float %i.ux, %i.tw
  store float %i.uy, ptr %.1.us147.i, align 4, !tbaa !39
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
  %.1.us.us.i = phi ptr [ %i.uo, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.vh, %bb.ax ] ; 2 uses
  %i.vi = or disjoint i32 %i.uj, 1
  %.not491.us.us.1.i = icmp slt i32 %i.vi, %i.bz
  br i1 %.not491.us.us.1.i, label %bb.ay, label %.split.us148.i

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.vj = fadd fast float %i.tk, %i.si            ; 2 uses
  %i.vk = fadd fast float %i.vj, %i.sy
  %i.vl = fadd fast float %i.vk, %i.tw
  store float %i.vl, ptr %.1.us.us.i, align 4, !tbaa !39
  %i.vm = fadd fast float %i.vj, %i.uc
  %i.vn = fadd fast float %i.tw, %i.ud
  %i.vo = fsub fast float %i.vm, %i.vn
  %i.vp = fadd fast float %i.vo, %i.ue
  %i.vq = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.vp, ptr %i.vq, align 4, !tbaa !39
  br label %.split.us148.i

._crit_edge136.us.i:                              ; preds = %.split.us148.i
  %indvars.iv.next217.i = add nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond220.not.i = icmp eq i64 %indvars.iv.next217.i, %i.bm
  br i1 %exitcond220.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.at, !llvm.loop !1053

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.vr = phi i32 [ %i.xo, %.noexc ], [ %.pre167, %.noexc.preheader ] ; 2 uses
  %i.vs = phi i32 [ %i.xq, %.noexc ], [ %i.bw, %.noexc.preheader ]
  %.0150 = phi i32 [ %i.xp, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.vt = sub nsw i32 %i.vs, %.0150
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
  %i.wf = sdiv i32 %.0150, %i.vr
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
  %i.wt = sdiv i32 %.044156, %i.ws
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
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, ptr %i.bc, i32 noundef 16, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0150, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #12
  %i.xo = load i32, ptr %9, align 4, !tbaa !67    ; 2 uses
  %i.xp = add nsw i32 %i.xo, %.0150               ; 2 uses
  %i.xq = load i32, ptr %8, align 4, !tbaa !67    ; 2 uses
  %i.xr = icmp slt i32 %i.xp, %i.xq
  br i1 %i.xr, label %.noexc, label %._crit_edge, !llvm.loop !1066

_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit: ; preds = %._crit_edge136.us.i, %.lr.ph142.i, %.preheader.i
  %i.xs = load i32, ptr %7, align 4, !tbaa !67    ; 2 uses
  %i.xt = add nsw i32 %i.xs, %.044156             ; 2 uses
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
  %i.r = add nsw i32 %4, -1                       ; 2 uses
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
  %.0625578 = phi ptr [ %.0.val, %.preheader449.lr.ph ], [ %.6631.lcssa, %bb.b ]
  %i.x = mul nsw i64 %indvars.iv1101, %i.u
  br label %bb.c

.preheader444.loopexit:                           ; preds = %bb.b
  %i.y = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  br label %.preheader444

.preheader444:                                    ; preds = %.preheader444.loopexit, %bb.a
  %.0635.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader444.loopexit ] ; 3 uses
  %.0625.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.6631.lcssa, %.preheader444.loopexit ] ; 2 uses
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
  %i.ar = add nsw i32 %4, -1                      ; 2 uses
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
  %.1626576 = phi ptr [ %.0625578, %.preheader449 ], [ %.6631.lcssa, %._crit_edge568 ] ; 2 uses
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
  %.0652.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %._crit_edge ] ; 3 uses
  %.0642.lcssa = phi ptr [ %i.bo, %bb.c ], [ %.1643.lcssa, %._crit_edge ] ; 2 uses
  %.2627.lcssa = phi ptr [ %.1626576, %bb.c ], [ %i.fw, %._crit_edge ] ; 2 uses
  %i.bp = add nuw nsw i32 %.0652.lcssa, 7
  %i.bq = icmp slt i32 %i.bp, %4
  br i1 %i.bq, label %.lr.ph511, label %.preheader447

.lr.ph481:                                        ; preds = %bb.c, %._crit_edge
  %.2627479 = phi ptr [ %i.fw, %._crit_edge ], [ %.1626576, %bb.c ] ; 25 uses
  %.0642478 = phi ptr [ %.1643.lcssa, %._crit_edge ], [ %i.bo, %bb.c ] ; 2 uses
  %.0652477 = phi i32 [ %i.fx, %._crit_edge ], [ 0, %bb.c ] ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph481
  %i.br = load <8 x float>, ptr %.2627479, align 32, !tbaa !316
  %i.bs = getelementptr inbounds nuw i8, ptr %.2627479, i64 32
  %i.bt = load <8 x float>, ptr %i.bs, align 32, !tbaa !316
  %i.bu = getelementptr inbounds nuw i8, ptr %.2627479, i64 64
  %i.bv = load <8 x float>, ptr %i.bu, align 32, !tbaa !316
  %i.bw = getelementptr inbounds nuw i8, ptr %.2627479, i64 96
  %i.bx = load <8 x float>, ptr %i.bw, align 32, !tbaa !316
  %i.by = getelementptr inbounds nuw i8, ptr %.2627479, i64 128
  %i.bz = load <8 x float>, ptr %i.by, align 32, !tbaa !316
  %i.ca = getelementptr inbounds nuw i8, ptr %.2627479, i64 160
  %i.cb = load <8 x float>, ptr %i.ca, align 32, !tbaa !316
  %i.cc = getelementptr inbounds nuw i8, ptr %.2627479, i64 192
  %i.cd = load <8 x float>, ptr %i.cc, align 32, !tbaa !316
  %i.ce = getelementptr inbounds nuw i8, ptr %.2627479, i64 224
  %i.cf = load <8 x float>, ptr %i.ce, align 32, !tbaa !316
  %i.cg = getelementptr inbounds nuw i8, ptr %.2627479, i64 256
  %i.ch = load <8 x float>, ptr %i.cg, align 32, !tbaa !316
  %i.ci = getelementptr inbounds nuw i8, ptr %.2627479, i64 288
  %i.cj = load <8 x float>, ptr %i.ci, align 32, !tbaa !316
  %i.ck = getelementptr inbounds nuw i8, ptr %.2627479, i64 320
  %i.cl = load <8 x float>, ptr %i.ck, align 32, !tbaa !316
  %i.cm = getelementptr inbounds nuw i8, ptr %.2627479, i64 352
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
  %.1643464 = phi ptr [ %i.fj, %.lr.ph ], [ %.0642478, %bb.e ] ; 13 uses
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
  %i.cp = load float, ptr %.1643464, align 4, !tbaa !39
  %i.cq = insertelement <8 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <8 x float> %i.cq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cs = fmul fast <8 x float> %i.cr, %i.co
  %i.ct = fadd fast <8 x float> %i.cs, %.1301461  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1643464, i64 4
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !39
  %i.cw = insertelement <8 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cy = fmul fast <8 x float> %i.cx, %i.co
  %i.cz = fadd fast <8 x float> %i.cy, %.1303460  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1643464, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !39
  %i.dc = insertelement <8 x float> poison, float %i.db, i64 0
  %i.dd = shufflevector <8 x float> %i.dc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.de = fmul fast <8 x float> %i.dd, %i.co
  %i.df = fadd fast <8 x float> %i.de, %.1306459  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1643464, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !39
  %i.di = insertelement <8 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <8 x float> %i.di, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dk = fmul fast <8 x float> %i.dj, %i.co
  %i.dl = fadd fast <8 x float> %i.dk, %.1308458  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1643464, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !39
  %i.do = insertelement <8 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <8 x float> %i.do, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dq = fmul fast <8 x float> %i.dp, %i.co
  %i.dr = fadd fast <8 x float> %i.dq, %.1310457  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1643464, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !39
  %i.du = insertelement <8 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <8 x float> %i.du, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dw = fmul fast <8 x float> %i.dv, %i.co
  %i.dx = fadd fast <8 x float> %i.dw, %.1315456  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1643464, i64 24
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !39
  %i.ea = insertelement <8 x float> poison, float %i.dz, i64 0
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ec = fmul fast <8 x float> %i.eb, %i.co
  %i.ed = fadd fast <8 x float> %i.ec, %.1317455  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.1643464, i64 28
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !39
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ei = fmul fast <8 x float> %i.eh, %i.co
  %i.ej = fadd fast <8 x float> %i.ei, %.1319454  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.1643464, i64 32
  %i.el = load float, ptr %i.ek, align 4, !tbaa !39
  %i.em = insertelement <8 x float> poison, float %i.el, i64 0
  %i.en = shufflevector <8 x float> %i.em, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eo = fmul fast <8 x float> %i.en, %i.co
  %i.ep = fadd fast <8 x float> %i.eo, %.1321453  ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1643464, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !39
  %i.es = insertelement <8 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <8 x float> %i.es, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eu = fmul fast <8 x float> %i.et, %i.co
  %i.ev = fadd fast <8 x float> %i.eu, %.1328452  ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1643464, i64 40
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !39
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fa = fmul fast <8 x float> %i.ez, %i.co
  %i.fb = fadd fast <8 x float> %i.fa, %.1330451  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1643464, i64 44
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !39
  %i.fe = insertelement <8 x float> poison, float %i.fd, i64 0
  %i.ff = shufflevector <8 x float> %i.fe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fg = fmul fast <8 x float> %i.ff, %i.co
  %i.fh = fadd fast <8 x float> %i.fg, %.0331450  ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0657463, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %.1643464, i64 48 ; 2 uses
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
  %i.ld = getelementptr inbounds nuw i8, ptr %.9651558.us, i64 4
  %i.le = load <8 x float>, ptr %i.lc, align 32, !tbaa !316
  %i.lf = load float, ptr %i.ld, align 4, !tbaa !39
  %i.lg = insertelement <8 x float> poison, float %i.lf, i64 0
  %i.lh = shufflevector <8 x float> %i.lg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.li = fmul fast <8 x float> %i.lh, %i.le
  %i.lj = fadd fast <8 x float> %i.li, %i.lb      ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.0667557.us, i64 64 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.9651558.us, i64 8 ; 2 uses
  %niter1689.next.1 = add nuw nsw i32 %niter1689, 2 ; 2 uses
  %niter1689.ncmp.1 = icmp eq i32 %niter1689.next.1, %unroll_iter1688
  br i1 %niter1689.ncmp.1, label %._crit_edge561.us.unr-lcssa, label %.lr.ph560.us, !llvm.loop !1075

._crit_edge561.us.unr-lcssa:                      ; preds = %.lr.ph560.us
  br i1 %lcmp.mod1685.not, label %._crit_edge561.us, label %.lr.ph560.us.epil.preheader

.lr.ph560.us.epil.preheader:                      ; preds = %._crit_edge561.us.unr-lcssa, %.lr.ph560.us.preheader
  %.9651558.us.epil.init = phi ptr [ %.8650565.us, %.lr.ph560.us.preheader ], [ %i.ll, %._crit_edge561.us.unr-lcssa ]
  %.0667557.us.epil.init = phi ptr [ %i.bh, %.lr.ph560.us.preheader ], [ %i.lk, %._crit_edge561.us.unr-lcssa ]
  %.0382555.us.epil.init = phi <8 x float> [ %.0382555.us.ph, %.lr.ph560.us.preheader ], [ %i.lj, %._crit_edge561.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1687)
  %i.lm = load <8 x float>, ptr %.0667557.us.epil.init, align 32, !tbaa !316
  %i.ln = load float, ptr %.9651558.us.epil.init, align 4, !tbaa !39
  %i.lo = insertelement <8 x float> poison, float %i.ln, i64 0
  %i.lp = shufflevector <8 x float> %i.lo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lq = fmul fast <8 x float> %i.lp, %i.lm
  %i.lr = fadd fast <8 x float> %i.lq, %.0382555.us.epil.init
  br label %._crit_edge561.us

._crit_edge561.us:                                ; preds = %._crit_edge561.us.unr-lcssa, %.lr.ph560.us.epil.preheader
  %.lcssa1679 = phi <8 x float> [ %i.lj, %._crit_edge561.us.unr-lcssa ], [ %i.lr, %.lr.ph560.us.epil.preheader ]
  %i.ls = getelementptr i8, ptr %.8650565.us, i64 %i.s
  %scevgep1096 = getelementptr i8, ptr %i.ls, i64 4
  store <8 x float> %.lcssa1679, ptr %.6631566.us, align 32, !tbaa !316
  %i.lt = getelementptr inbounds nuw i8, ptr %.6631566.us, i64 32 ; 2 uses
  %i.lu = add nuw nsw i32 %.4656564.us, 1         ; 2 uses
  %exitcond1098.not = icmp eq i32 %i.lu, %4
  br i1 %exitcond1098.not, label %._crit_edge568, label %.lr.ph567.split.us, !llvm.loop !1076

.lr.ph567.split:                                  ; preds = %.lr.ph567
  br i1 %i.g, label %.lr.ph567.split.split.us.preheader, label %.lr.ph567.split.split.preheader

.lr.ph567.split.split.preheader:                  ; preds = %.lr.ph567.split
  %scevgep1092 = getelementptr i8, ptr %.5630.lcssa, i64 32
  %i.lv = sub i32 %i.r, %.3655.lcssa
  %i.lw = zext i32 %i.lv to i64
  %i.lx = shl nuw nsw i64 %i.lw, 5
  %scevgep1093 = getelementptr i8, ptr %scevgep1092, i64 %i.lx
  br label %._crit_edge568

.lr.ph567.split.split.us.preheader:               ; preds = %.lr.ph567.split
  %i.ly = sub i32 %i.r, %.3655.lcssa
  %i.lz = zext i32 %i.ly to i64
  %i.ma = shl nuw nsw i64 %i.lz, 5                ; 2 uses
  %i.mb = add nuw nsw i64 %i.ma, 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %.5630.lcssa, i8 0, i64 %i.mb, i1 false), !tbaa !316
  %scevgep1094 = getelementptr i8, ptr %.5630.lcssa, i64 32
  %scevgep1095 = getelementptr i8, ptr %scevgep1094, i64 %i.ma
  br label %._crit_edge568

.lr.ph551:                                        ; preds = %.preheader446, %._crit_edge544
  %.5630550 = phi ptr [ %i.nv, %._crit_edge544 ], [ %.4629.lcssa, %.preheader446 ] ; 5 uses
  %.6648549 = phi ptr [ %.7649.lcssa, %._crit_edge544 ], [ %.4646.lcssa, %.preheader446 ] ; 4 uses
  %.3655548 = phi i32 [ %i.nw, %._crit_edge544 ], [ %.2654.lcssa, %.preheader446 ]
  br i1 %i.g, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph551
  %i.mc = load <8 x float>, ptr %.5630550, align 32, !tbaa !316
  %i.md = getelementptr inbounds nuw i8, ptr %.5630550, i64 32
  %i.me = load <8 x float>, ptr %i.md, align 32, !tbaa !316
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph551, %bb.k
  %.0376 = phi nsz <8 x float> [ %i.mc, %bb.k ], [ zeroinitializer, %.lr.ph551 ] ; 3 uses
  %storemerge724 = phi <8 x float> [ %i.me, %bb.k ], [ zeroinitializer, %.lr.ph551 ] ; 3 uses
  br i1 %i.h, label %.lr.ph543.preheader, label %._crit_edge544

.lr.ph543.preheader:                              ; preds = %bb.l
  br i1 %i.v, label %.lr.ph543.epil.preheader, label %.lr.ph543

.lr.ph543:                                        ; preds = %.lr.ph543.preheader, %.lr.ph543
  %.7649541 = phi ptr [ %i.ng, %.lr.ph543 ], [ %.6648549, %.lr.ph543.preheader ] ; 5 uses
  %.0665540 = phi ptr [ %i.nf, %.lr.ph543 ], [ %i.bh, %.lr.ph543.preheader ] ; 3 uses
  %.1377538 = phi <8 x float> [ %i.my, %.lr.ph543 ], [ %.0376, %.lr.ph543.preheader ]
  %.0378537 = phi <8 x float> [ %i.ne, %.lr.ph543 ], [ %storemerge724, %.lr.ph543.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph543 ], [ 0, %.lr.ph543.preheader ]
  %i.mf = load <8 x float>, ptr %.0665540, align 32, !tbaa !316 ; 2 uses
  %i.mg = load float, ptr %.7649541, align 4, !tbaa !39
  %i.mh = insertelement <8 x float> poison, float %i.mg, i64 0
  %i.mi = shufflevector <8 x float> %i.mh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mj = fmul fast <8 x float> %i.mi, %i.mf
  %i.mk = fadd fast <8 x float> %i.mj, %.1377538
  %i.ml = getelementptr inbounds nuw i8, ptr %.7649541, i64 4
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !39
  %i.mn = insertelement <8 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <8 x float> %i.mn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mp = fmul fast <8 x float> %i.mo, %i.mf
  %i.mq = fadd fast <8 x float> %i.mp, %.0378537
  %i.mr = getelementptr inbounds nuw i8, ptr %.0665540, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %.7649541, i64 8
  %i.mt = load <8 x float>, ptr %i.mr, align 32, !tbaa !316 ; 2 uses
  %i.mu = load float, ptr %i.ms, align 4, !tbaa !39
  %i.mv = insertelement <8 x float> poison, float %i.mu, i64 0
  %i.mw = shufflevector <8 x float> %i.mv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mx = fmul fast <8 x float> %i.mw, %i.mt
  %i.my = fadd fast <8 x float> %i.mx, %i.mk      ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.7649541, i64 12
  %i.na = load float, ptr %i.mz, align 4, !tbaa !39
  %i.nb = insertelement <8 x float> poison, float %i.na, i64 0
  %i.nc = shufflevector <8 x float> %i.nb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nd = fmul fast <8 x float> %i.nc, %i.mt
  %i.ne = fadd fast <8 x float> %i.nd, %i.mq      ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0665540, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.7649541, i64 16 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge544.loopexit.unr-lcssa, label %.lr.ph543, !llvm.loop !1077

._crit_edge544.loopexit.unr-lcssa:                ; preds = %.lr.ph543
  br i1 %lcmp.mod.not, label %._crit_edge544.loopexit, label %.lr.ph543.epil.preheader

.lr.ph543.epil.preheader:                         ; preds = %._crit_edge544.loopexit.unr-lcssa, %.lr.ph543.preheader
  %.7649541.epil.init = phi ptr [ %.6648549, %.lr.ph543.preheader ], [ %i.ng, %._crit_edge544.loopexit.unr-lcssa ] ; 2 uses
  %.0665540.epil.init = phi ptr [ %i.bh, %.lr.ph543.preheader ], [ %i.nf, %._crit_edge544.loopexit.unr-lcssa ]
  %.1377538.epil.init = phi <8 x float> [ %.0376, %.lr.ph543.preheader ], [ %i.my, %._crit_edge544.loopexit.unr-lcssa ]
  %.0378537.epil.init = phi <8 x float> [ %storemerge724, %.lr.ph543.preheader ], [ %i.ne, %._crit_edge544.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1683)
  %i.nh = load <8 x float>, ptr %.0665540.epil.init, align 32, !tbaa !316 ; 2 uses
  %i.ni = load float, ptr %.7649541.epil.init, align 4, !tbaa !39
  %i.nj = insertelement <8 x float> poison, float %i.ni, i64 0
  %i.nk = shufflevector <8 x float> %i.nj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nl = fmul fast <8 x float> %i.nk, %i.nh
  %i.nm = fadd fast <8 x float> %i.nl, %.1377538.epil.init
  %i.nn = getelementptr inbounds nuw i8, ptr %.7649541.epil.init, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !39
  %i.np = insertelement <8 x float> poison, float %i.no, i64 0
  %i.nq = shufflevector <8 x float> %i.np, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nr = fmul fast <8 x float> %i.nq, %i.nh
  %i.ns = fadd fast <8 x float> %i.nr, %.0378537.epil.init
  br label %._crit_edge544.loopexit

._crit_edge544.loopexit:                          ; preds = %._crit_edge544.loopexit.unr-lcssa, %.lr.ph543.epil.preheader
  %.lcssa1676 = phi <8 x float> [ %i.my, %._crit_edge544.loopexit.unr-lcssa ], [ %i.nm, %.lr.ph543.epil.preheader ]
  %.lcssa1675 = phi <8 x float> [ %i.ne, %._crit_edge544.loopexit.unr-lcssa ], [ %i.ns, %.lr.ph543.epil.preheader ]
  %i.nt = getelementptr i8, ptr %.6648549, i64 %i.q
  %scevgep1090 = getelementptr i8, ptr %i.nt, i64 8
  br label %._crit_edge544

._crit_edge544:                                   ; preds = %._crit_edge544.loopexit, %bb.l
  %.0378.lcssa = phi <8 x float> [ %storemerge724, %bb.l ], [ %.lcssa1675, %._crit_edge544.loopexit ]
  %.1377.lcssa = phi <8 x float> [ %.0376, %bb.l ], [ %.lcssa1676, %._crit_edge544.loopexit ]
  %.7649.lcssa = phi ptr [ %.6648549, %bb.l ], [ %scevgep1090, %._crit_edge544.loopexit ] ; 2 uses
  store <8 x float> %.1377.lcssa, ptr %.5630550, align 32, !tbaa !316
  %i.nu = getelementptr inbounds nuw i8, ptr %.5630550, i64 32
  store <8 x float> %.0378.lcssa, ptr %i.nu, align 32, !tbaa !316
  %i.nv = getelementptr inbounds nuw i8, ptr %.5630550, i64 64 ; 2 uses
  %i.nw = add nuw nsw i32 %.3655548, 2            ; 3 uses
  %i.nx = or disjoint i32 %i.nw, 1
  %i.ny = icmp slt i32 %i.nx, %4
  br i1 %i.ny, label %.lr.ph551, label %.preheader445, !llvm.loop !1078

._crit_edge568:                                   ; preds = %._crit_edge561.us, %.lr.ph567.split.split.preheader, %.lr.ph567.split.split.us.preheader, %.preheader445
  %.6631.lcssa = phi ptr [ %.5630.lcssa, %.preheader445 ], [ %scevgep1095, %.lr.ph567.split.split.us.preheader ], [ %scevgep1093, %.lr.ph567.split.split.preheader ], [ %i.lt, %._crit_edge561.us ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1100.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1100.not, label %bb.b, label %bb.c, !llvm.loop !1079

.preheader443:                                    ; preds = %.preheader443.lr.ph, %bb.m
  %indvars.iv1123 = phi i64 [ %i.at, %.preheader443.lr.ph ], [ %indvars.iv.next1124, %bb.m ] ; 2 uses
  %.7632714 = phi ptr [ %.0625.lcssa, %.preheader443.lr.ph ], [ %.13.lcssa, %bb.m ]
  %i.nz = mul nsw i64 %indvars.iv1123, %i.av
  br label %bb.n

.preheader438.loopexit:                           ; preds = %bb.m
  %i.oa = trunc nuw nsw i64 %indvars.iv.next1124 to i32
  br label %.preheader438

.preheader438:                                    ; preds = %.preheader438.loopexit, %.preheader444
  %.1636.lcssa = phi i32 [ %.0635.lcssa, %.preheader444 ], [ %i.oa, %.preheader438.loopexit ] ; 3 uses
  %.7632.lcssa = phi ptr [ %.0625.lcssa, %.preheader444 ], [ %.13.lcssa, %.preheader438.loopexit ] ; 2 uses
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
  %.8633712 = phi ptr [ %.7632714, %.preheader443 ], [ %.13.lcssa, %._crit_edge703 ] ; 2 uses
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
  %.0681.lcssa = phi i32 [ 0, %bb.n ], [ %i.al, %._crit_edge598 ] ; 3 uses
  %.0671.lcssa = phi ptr [ %i.pu, %bb.n ], [ %.1672.lcssa, %._crit_edge598 ] ; 2 uses
  %.9634.lcssa = phi ptr [ %.8633712, %bb.n ], [ %i.uc, %._crit_edge598 ] ; 2 uses
  %i.pv = add nuw nsw i32 %.0681.lcssa, 7
  %i.pw = icmp slt i32 %i.pv, %4
  br i1 %i.pw, label %.lr.ph646, label %.preheader441

.lr.ph616:                                        ; preds = %bb.n, %._crit_edge598
  %.9634614 = phi ptr [ %i.uc, %._crit_edge598 ], [ %.8633712, %bb.n ] ; 25 uses
  %.0671613 = phi ptr [ %.1672.lcssa, %._crit_edge598 ], [ %i.pu, %bb.n ] ; 2 uses
  %.0681612 = phi i32 [ %i.ud, %._crit_edge598 ], [ 0, %bb.n ] ; 2 uses
  br i1 %i.ag, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph616
  %i.px = load <4 x float>, ptr %.9634614, align 16, !tbaa !316
  %i.py = getelementptr inbounds nuw i8, ptr %.9634614, i64 16
  %i.pz = load <4 x float>, ptr %i.py, align 16, !tbaa !316
  %i.qa = getelementptr inbounds nuw i8, ptr %.9634614, i64 32
  %i.qb = load <4 x float>, ptr %i.qa, align 16, !tbaa !316
  %i.qc = getelementptr inbounds nuw i8, ptr %.9634614, i64 48
  %i.qd = load <4 x float>, ptr %i.qc, align 16, !tbaa !316
  %i.qe = getelementptr inbounds nuw i8, ptr %.9634614, i64 64
  %i.qf = load <4 x float>, ptr %i.qe, align 16, !tbaa !316
  %i.qg = getelementptr inbounds nuw i8, ptr %.9634614, i64 80
  %i.qh = load <4 x float>, ptr %i.qg, align 16, !tbaa !316
  %i.qi = getelementptr inbounds nuw i8, ptr %.9634614, i64 96
  %i.qj = load <4 x float>, ptr %i.qi, align 16, !tbaa !316
  %i.qk = getelementptr inbounds nuw i8, ptr %.9634614, i64 112
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !tbaa !316
  %i.qm = getelementptr inbounds nuw i8, ptr %.9634614, i64 128
  %i.qn = load <4 x float>, ptr %i.qm, align 16, !tbaa !316
  %i.qo = getelementptr inbounds nuw i8, ptr %.9634614, i64 144
  %i.qp = load <4 x float>, ptr %i.qo, align 16, !tbaa !316
  %i.qq = getelementptr inbounds nuw i8, ptr %.9634614, i64 160
  %i.qr = load <4 x float>, ptr %i.qq, align 16, !tbaa !316
  %i.qs = getelementptr inbounds nuw i8, ptr %.9634614, i64 176
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
  %.1672595 = phi ptr [ %i.tp, %.lr.ph597 ], [ %.0671613, %bb.p ] ; 13 uses
  %.0686594 = phi ptr [ %i.to, %.lr.ph597 ], [ %i.pn, %bb.p ] ; 2 uses
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
  %i.qu = load <4 x float>, ptr %.0686594, align 16, !tbaa !316 ; 12 uses
  %i.qv = load float, ptr %.1672595, align 4, !tbaa !39
  %i.qw = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.qx = shufflevector <4 x float> %i.qw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qy = fmul fast <4 x float> %i.qx, %i.qu
  %i.qz = fadd fast <4 x float> %i.qy, %.1384592  ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.1672595, i64 4
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !39
  %i.rc = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = fmul fast <4 x float> %i.rd, %i.qu
  %i.rf = fadd fast <4 x float> %i.re, %.1386591  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.1672595, i64 8
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !39
  %i.ri = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rk = fmul fast <4 x float> %i.rj, %i.qu
  %i.rl = fadd fast <4 x float> %i.rk, %.1388590  ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.1672595, i64 12
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !39
  %i.ro = insertelement <4 x float> poison, float %i.rn, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = fmul fast <4 x float> %i.rp, %i.qu
  %i.rr = fadd fast <4 x float> %i.rq, %.1390589  ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.1672595, i64 16
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !39
  %i.ru = insertelement <4 x float> poison, float %i.rt, i64 0
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rw = fmul fast <4 x float> %i.rv, %i.qu
  %i.rx = fadd fast <4 x float> %i.rw, %.1399588  ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.1672595, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !39
  %i.sa = insertelement <4 x float> poison, float %i.rz, i64 0
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sc = fmul fast <4 x float> %i.sb, %i.qu
  %i.sd = fadd fast <4 x float> %i.sc, %.1401587  ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.1672595, i64 24
  %i.sf = load float, ptr %i.se, align 4, !tbaa !39
  %i.sg = insertelement <4 x float> poison, float %i.sf, i64 0
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.si = fmul fast <4 x float> %i.sh, %i.qu
  %i.sj = fadd fast <4 x float> %i.si, %.1403586  ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.1672595, i64 28
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !39
  %i.sm = insertelement <4 x float> poison, float %i.sl, i64 0
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.so = fmul fast <4 x float> %i.sn, %i.qu
  %i.sp = fadd fast <4 x float> %i.so, %.1405585  ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.1672595, i64 32
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !39
  %i.ss = insertelement <4 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.su = fmul fast <4 x float> %i.st, %i.qu
  %i.sv = fadd fast <4 x float> %i.su, %.1407584  ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.1672595, i64 36
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !39
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = fmul fast <4 x float> %i.sz, %i.qu
  %i.tb = fadd fast <4 x float> %i.ta, %.1409583  ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.1672595, i64 40
  %i.td = load float, ptr %i.tc, align 4, !tbaa !39
  %i.te = insertelement <4 x float> poison, float %i.td, i64 0
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tg = fmul fast <4 x float> %i.tf, %i.qu
  %i.th = fadd fast <4 x float> %i.tg, %.1411582  ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.1672595, i64 44
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !39
  %i.tk = insertelement <4 x float> poison, float %i.tj, i64 0
  %i.tl = shufflevector <4 x float> %i.tk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tm = fmul fast <4 x float> %i.tl, %i.qu
  %i.tn = fadd fast <4 x float> %i.tm, %.0412581  ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.0686594, i64 16
end_hunk_7
begin_hunk_8_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.aae = fmul fast <4 x float> %i.aad, %i.aaa
  %i.aaf = fadd fast <4 x float> %i.aae, %i.zx    ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0708691.us, i64 64 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.9680693.us, i64 16 ; 2 uses
  %niter1702.next.3 = add nuw nsw i32 %niter1702, 4 ; 2 uses
  %niter1702.ncmp.3 = icmp eq i32 %niter1702.next.3, %unroll_iter1701
  br i1 %niter1702.ncmp.3, label %._crit_edge696.us.unr-lcssa, label %.lr.ph695.us, !llvm.loop !1087

._crit_edge696.us.unr-lcssa:                      ; preds = %.lr.ph695.us
  br i1 %lcmp.mod1698.not, label %._crit_edge696.us, label %.lr.ph695.us.epil.preheader

.lr.ph695.us.epil.preheader:                      ; preds = %._crit_edge696.us.unr-lcssa, %.lr.ph695.us.preheader
  %.9680693.us.epil.init = phi ptr [ %.8679700.us, %.lr.ph695.us.preheader ], [ %i.aah, %._crit_edge696.us.unr-lcssa ]
  %.0708691.us.epil.init = phi ptr [ %i.pn, %.lr.ph695.us.preheader ], [ %i.aag, %._crit_edge696.us.unr-lcssa ]
  %.0374690.us.epil.init = phi <4 x float> [ %.0374690.us.ph, %.lr.ph695.us.preheader ], [ %i.aaf, %._crit_edge696.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1700)
  br label %.lr.ph695.us.epil

.lr.ph695.us.epil:                                ; preds = %.lr.ph695.us.epil, %.lr.ph695.us.epil.preheader
  %.9680693.us.epil = phi ptr [ %i.aap, %.lr.ph695.us.epil ], [ %.9680693.us.epil.init, %.lr.ph695.us.epil.preheader ] ; 2 uses
  %.0708691.us.epil = phi ptr [ %i.aao, %.lr.ph695.us.epil ], [ %.0708691.us.epil.init, %.lr.ph695.us.epil.preheader ] ; 2 uses
  %.0374690.us.epil = phi <4 x float> [ %i.aan, %.lr.ph695.us.epil ], [ %.0374690.us.epil.init, %.lr.ph695.us.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph695.us.epil ], [ 0, %.lr.ph695.us.epil.preheader ]
  %i.aai = load <4 x float>, ptr %.0708691.us.epil, align 16, !tbaa !316
  %i.aaj = load float, ptr %.9680693.us.epil, align 4, !tbaa !39
  %i.aak = insertelement <4 x float> poison, float %i.aaj, i64 0
  %i.aal = shufflevector <4 x float> %i.aak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aam = fmul fast <4 x float> %i.aal, %i.aai
  %i.aan = fadd fast <4 x float> %i.aam, %.0374690.us.epil ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0708691.us.epil, i64 16
  %i.aap = getelementptr inbounds nuw i8, ptr %.9680693.us.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1697
  br i1 %epil.iter.cmp.not, label %._crit_edge696.us, label %.lr.ph695.us.epil, !llvm.loop !1088

._crit_edge696.us:                                ; preds = %.lr.ph695.us.epil, %._crit_edge696.us.unr-lcssa
  %.lcssa1643 = phi <4 x float> [ %i.aaf, %._crit_edge696.us.unr-lcssa ], [ %i.aan, %.lr.ph695.us.epil ]
  %i.aaq = getelementptr i8, ptr %.8679700.us, i64 %i.as
  %scevgep1115 = getelementptr i8, ptr %i.aaq, i64 4
  store <4 x float> %.lcssa1643, ptr %.13701.us, align 16, !tbaa !316
  %i.aar = getelementptr inbounds nuw i8, ptr %.13701.us, i64 16 ; 2 uses
  %i.aas = add nuw nsw i32 %.4685699.us, 1        ; 2 uses
  %exitcond1117.not = icmp eq i32 %i.aas, %4
  br i1 %exitcond1117.not, label %._crit_edge703, label %.lr.ph702.split.us, !llvm.loop !1089

.lr.ph702.split:                                  ; preds = %.lr.ph702
  br i1 %i.ag, label %.lr.ph702.split.split.us.preheader, label %.lr.ph702.split.split.preheader

.lr.ph702.split.split.preheader:                  ; preds = %.lr.ph702.split
  %scevgep1111 = getelementptr i8, ptr %.12.lcssa, i64 16
  %i.aat = sub i32 %i.ar, %.3684.lcssa
  %i.aau = zext i32 %i.aat to i64
  %i.aav = shl nuw nsw i64 %i.aau, 4
  %scevgep1112 = getelementptr i8, ptr %scevgep1111, i64 %i.aav
  br label %._crit_edge703

.lr.ph702.split.split.us.preheader:               ; preds = %.lr.ph702.split
  %i.aaw = sub i32 %i.ar, %.3684.lcssa
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = shl nuw nsw i64 %i.aax, 4              ; 2 uses
  %i.aaz = add nuw nsw i64 %i.aay, 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %.12.lcssa, i8 0, i64 %i.aaz, i1 false), !tbaa !316
  %scevgep1113 = getelementptr i8, ptr %.12.lcssa, i64 16
  %scevgep1114 = getelementptr i8, ptr %scevgep1113, i64 %i.aay
  br label %._crit_edge703

.lr.ph686:                                        ; preds = %.preheader440, %._crit_edge679
  %.12685 = phi ptr [ %i.act, %._crit_edge679 ], [ %.11.lcssa, %.preheader440 ] ; 5 uses
  %.6677684 = phi ptr [ %.7678.lcssa, %._crit_edge679 ], [ %.4675.lcssa, %.preheader440 ] ; 4 uses
  %.3684683 = phi i32 [ %i.acu, %._crit_edge679 ], [ %.2683.lcssa, %.preheader440 ]
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
  %.7678676 = phi ptr [ %i.ace, %.lr.ph678 ], [ %.6677684, %.lr.ph678.preheader ] ; 5 uses
  %.0710674 = phi ptr [ %i.acd, %.lr.ph678 ], [ %i.pn, %.lr.ph678.preheader ] ; 3 uses
  %.0379673 = phi <4 x float> [ %i.acc, %.lr.ph678 ], [ %storemerge719, %.lr.ph678.preheader ]
  %.1381672 = phi <4 x float> [ %i.abw, %.lr.ph678 ], [ %.0380, %.lr.ph678.preheader ]
  %niter1696 = phi i32 [ %niter1696.next.1, %.lr.ph678 ], [ 0, %.lr.ph678.preheader ]
  %i.abd = load <4 x float>, ptr %.0710674, align 16, !tbaa !316 ; 2 uses
  %i.abe = load float, ptr %.7678676, align 4, !tbaa !39
  %i.abf = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abg = shufflevector <4 x float> %i.abf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abh = fmul fast <4 x float> %i.abg, %i.abd
  %i.abi = fadd fast <4 x float> %i.abh, %.1381672
  %i.abj = getelementptr inbounds nuw i8, ptr %.7678676, i64 4
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !39
  %i.abl = insertelement <4 x float> poison, float %i.abk, i64 0
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abn = fmul fast <4 x float> %i.abm, %i.abd
  %i.abo = fadd fast <4 x float> %i.abn, %.0379673
  %i.abp = getelementptr inbounds nuw i8, ptr %.0710674, i64 16
  %i.abq = getelementptr inbounds nuw i8, ptr %.7678676, i64 8
  %i.abr = load <4 x float>, ptr %i.abp, align 16, !tbaa !316 ; 2 uses
  %i.abs = load float, ptr %i.abq, align 4, !tbaa !39
  %i.abt = insertelement <4 x float> poison, float %i.abs, i64 0
  %i.abu = shufflevector <4 x float> %i.abt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abv = fmul fast <4 x float> %i.abu, %i.abr
  %i.abw = fadd fast <4 x float> %i.abv, %i.abi   ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.7678676, i64 12
  %i.aby = load float, ptr %i.abx, align 4, !tbaa !39
  %i.abz = insertelement <4 x float> poison, float %i.aby, i64 0
  %i.aca = shufflevector <4 x float> %i.abz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acb = fmul fast <4 x float> %i.aca, %i.abr
  %i.acc = fadd fast <4 x float> %i.acb, %i.abo   ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.0710674, i64 32 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.7678676, i64 16 ; 2 uses
  %niter1696.next.1 = add nuw nsw i32 %niter1696, 2 ; 2 uses
  %niter1696.ncmp.1 = icmp eq i32 %niter1696.next.1, %unroll_iter1695
  br i1 %niter1696.ncmp.1, label %._crit_edge679.loopexit.unr-lcssa, label %.lr.ph678, !llvm.loop !1090

._crit_edge679.loopexit.unr-lcssa:                ; preds = %.lr.ph678
  br i1 %lcmp.mod1691.not, label %._crit_edge679.loopexit, label %.lr.ph678.epil.preheader

.lr.ph678.epil.preheader:                         ; preds = %._crit_edge679.loopexit.unr-lcssa, %.lr.ph678.preheader
  %.7678676.epil.init = phi ptr [ %.6677684, %.lr.ph678.preheader ], [ %i.ace, %._crit_edge679.loopexit.unr-lcssa ] ; 2 uses
  %.0710674.epil.init = phi ptr [ %i.pn, %.lr.ph678.preheader ], [ %i.acd, %._crit_edge679.loopexit.unr-lcssa ]
  %.0379673.epil.init = phi <4 x float> [ %storemerge719, %.lr.ph678.preheader ], [ %i.acc, %._crit_edge679.loopexit.unr-lcssa ]
  %.1381672.epil.init = phi <4 x float> [ %.0380, %.lr.ph678.preheader ], [ %i.abw, %._crit_edge679.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1694)
  %i.acf = load <4 x float>, ptr %.0710674.epil.init, align 16, !tbaa !316 ; 2 uses
  %i.acg = load float, ptr %.7678676.epil.init, align 4, !tbaa !39
  %i.ach = insertelement <4 x float> poison, float %i.acg, i64 0
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acj = fmul fast <4 x float> %i.aci, %i.acf
  %i.ack = fadd fast <4 x float> %i.acj, %.1381672.epil.init
  %i.acl = getelementptr inbounds nuw i8, ptr %.7678676.epil.init, i64 4
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !39
  %i.acn = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.aco = shufflevector <4 x float> %i.acn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acp = fmul fast <4 x float> %i.aco, %i.acf
  %i.acq = fadd fast <4 x float> %i.acp, %.0379673.epil.init
  br label %._crit_edge679.loopexit

._crit_edge679.loopexit:                          ; preds = %._crit_edge679.loopexit.unr-lcssa, %.lr.ph678.epil.preheader
  %.lcssa1640 = phi <4 x float> [ %i.abw, %._crit_edge679.loopexit.unr-lcssa ], [ %i.ack, %.lr.ph678.epil.preheader ]
  %.lcssa1639 = phi <4 x float> [ %i.acc, %._crit_edge679.loopexit.unr-lcssa ], [ %i.acq, %.lr.ph678.epil.preheader ]
  %i.acr = getelementptr i8, ptr %.6677684, i64 %i.aq
  %scevgep1109 = getelementptr i8, ptr %i.acr, i64 8
  br label %._crit_edge679

._crit_edge679:                                   ; preds = %._crit_edge679.loopexit, %bb.w
  %.1381.lcssa = phi <4 x float> [ %.0380, %bb.w ], [ %.lcssa1640, %._crit_edge679.loopexit ]
  %.0379.lcssa = phi <4 x float> [ %storemerge719, %bb.w ], [ %.lcssa1639, %._crit_edge679.loopexit ]
  %.7678.lcssa = phi ptr [ %.6677684, %bb.w ], [ %scevgep1109, %._crit_edge679.loopexit ] ; 2 uses
  store <4 x float> %.1381.lcssa, ptr %.12685, align 16, !tbaa !316
  %i.acs = getelementptr inbounds nuw i8, ptr %.12685, i64 16
  store <4 x float> %.0379.lcssa, ptr %i.acs, align 16, !tbaa !316
  %i.act = getelementptr inbounds nuw i8, ptr %.12685, i64 32 ; 2 uses
  %i.acu = add nuw nsw i32 %.3684683, 2           ; 3 uses
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
  %.14826 = phi ptr [ %.7632.lcssa, %.preheader437.lr.ph ], [ %.20.lcssa, %bb.x ]
  %i.acx = mul nsw i64 %indvars.iv1141, %i.ow
  br label %bb.y

.preheader432.loopexit:                           ; preds = %bb.x
  %i.acy = trunc nsw i64 %indvars.iv.next1142 to i32
  br label %.preheader432

.preheader432:                                    ; preds = %.preheader432.loopexit, %.preheader438
  %.2637.lcssa = phi i32 [ %.1636.lcssa, %.preheader438 ], [ %i.acy, %.preheader432.loopexit ] ; 2 uses
  %.14.lcssa = phi ptr [ %.7632.lcssa, %.preheader438 ], [ %.20.lcssa, %.preheader432.loopexit ]
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
  %.0696.lcssa = phi ptr [ %i.aev, %bb.y ], [ %.1697.lcssa, %._crit_edge728 ] ; 2 uses
  %.0691.lcssa = phi i32 [ 0, %bb.y ], [ %i.on, %._crit_edge728 ] ; 3 uses
  %.16.lcssa = phi ptr [ %.15824, %bb.y ], [ %i.ahb, %._crit_edge728 ] ; 2 uses
  %i.aew = add nuw nsw i32 %.0691.lcssa, 7
  %i.aex = icmp slt i32 %i.aew, %4
  br i1 %i.aex, label %.lr.ph762, label %.preheader435

.lr.ph740:                                        ; preds = %bb.y, %._crit_edge728
  %.16738 = phi ptr [ %i.ahb, %._crit_edge728 ], [ %.15824, %bb.y ] ; 13 uses
  %.0691737 = phi i32 [ %i.ahc, %._crit_edge728 ], [ 0, %bb.y ] ; 2 uses
  %.0696736 = phi ptr [ %.1697.lcssa, %._crit_edge728 ], [ %i.aev, %bb.y ] ; 2 uses
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
  %.0670725 = phi i32 [ %i.agp, %.lr.ph727 ], [ 0, %bb.aa ]
  %.0690724 = phi ptr [ %i.agn, %.lr.ph727 ], [ %i.aeo, %bb.aa ] ; 3 uses
  %.1697723 = phi ptr [ %i.ago, %.lr.ph727 ], [ %.0696736, %bb.aa ] ; 4 uses
  %.0359722 = phi <4 x float> [ %i.agm, %.lr.ph727 ], [ %storemerge717, %bb.aa ]
  %.1361721 = phi <4 x float> [ %i.agk, %.lr.ph727 ], [ %.0360, %bb.aa ]
  %.1363720 = phi <4 x float> [ %i.agi, %.lr.ph727 ], [ %.0362, %bb.aa ]
  %.1365719 = phi <4 x float> [ %i.agg, %.lr.ph727 ], [ %.0364, %bb.aa ]
  %.1367718 = phi <4 x float> [ %i.age, %.lr.ph727 ], [ %.0366, %bb.aa ]
  %.1369717 = phi <4 x float> [ %i.agc, %.lr.ph727 ], [ %.0368, %bb.aa ]
  %i.afp = load float, ptr %.0690724, align 4, !tbaa !39
  %i.afq = insertelement <4 x float> poison, float %i.afp, i64 0
  %i.afr = shufflevector <4 x float> %i.afq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %.0690724, i64 4
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !39
  %i.afu = insertelement <4 x float> poison, float %i.aft, i64 0
  %i.afv = shufflevector <4 x float> %i.afu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.afw = load <4 x float>, ptr %.1697723, align 16, !tbaa !316 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.1697723, i64 16
  %i.afy = load <4 x float>, ptr %i.afx, align 16, !tbaa !316 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.1697723, i64 32
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
  %i.agn = getelementptr inbounds nuw i8, ptr %.0690724, i64 8
  %i.ago = getelementptr inbounds nuw i8, ptr %.1697723, i64 48 ; 2 uses
  %i.agp = add nuw nsw i32 %.0670725, 1           ; 2 uses
  %exitcond1126.not = icmp eq i32 %i.agp, %6
  br i1 %exitcond1126.not, label %._crit_edge728, label %.lr.ph727, !llvm.loop !1094

._crit_edge728:                                   ; preds = %.lr.ph727, %bb.aa
  %.1369.lcssa = phi <4 x float> [ %.0368, %bb.aa ], [ %i.agc, %.lr.ph727 ] ; 2 uses
  %.1367.lcssa = phi <4 x float> [ %.0366, %bb.aa ], [ %i.age, %.lr.ph727 ] ; 2 uses
  %.1365.lcssa = phi <4 x float> [ %.0364, %bb.aa ], [ %i.agg, %.lr.ph727 ] ; 2 uses
  %.1363.lcssa = phi <4 x float> [ %.0362, %bb.aa ], [ %i.agi, %.lr.ph727 ] ; 2 uses
  %.1361.lcssa = phi <4 x float> [ %.0360, %bb.aa ], [ %i.agk, %.lr.ph727 ] ; 2 uses
  %.0359.lcssa = phi <4 x float> [ %storemerge717, %bb.aa ], [ %i.agm, %.lr.ph727 ] ; 2 uses
  %.1697.lcssa = phi ptr [ %.0696736, %bb.aa ], [ %i.ago, %.lr.ph727 ] ; 2 uses
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
  %i.ahc = add nuw nsw i32 %.0691737, 12
  %i.ahd = add nuw nsw i32 %.0691737, 23
  %i.ahe = icmp slt i32 %i.ahd, %4
  br i1 %i.ahe, label %.lr.ph740, label %.preheader436, !llvm.loop !1095

.preheader435:                                    ; preds = %._crit_edge753, %.preheader436
  %.2698.lcssa = phi ptr [ %.0696.lcssa, %.preheader436 ], [ %.3699.lcssa, %._crit_edge753 ] ; 2 uses
  %.1692.lcssa = phi i32 [ %.0691.lcssa, %.preheader436 ], [ %i.aiw, %._crit_edge753 ] ; 3 uses
  %.17.lcssa = phi ptr [ %.16.lcssa, %.preheader436 ], [ %i.aiv, %._crit_edge753 ] ; 2 uses
  %i.ahf = or disjoint i32 %.1692.lcssa, 3
  %i.ahg = icmp slt i32 %i.ahf, %4
  br i1 %i.ahg, label %.lr.ph780, label %.preheader434

.lr.ph762:                                        ; preds = %.preheader436, %._crit_edge753
  %.17761 = phi ptr [ %i.aiv, %._crit_edge753 ], [ %.16.lcssa, %.preheader436 ] ; 9 uses
  %.1692760 = phi i32 [ %i.aiw, %._crit_edge753 ], [ %.0691.lcssa, %.preheader436 ] ; 2 uses
  %.2698759 = phi ptr [ %.3699.lcssa, %._crit_edge753 ], [ %.0696.lcssa, %.preheader436 ] ; 3 uses
  br i1 %i.oi, label %bb.ac, label %bb.ab

end_hunk_8
begin_hunk_9_@_ZN4ncnnL41conv3x3s1_winograd63_transform_input_tileERKNS_3MatERS0_iiiii.omp_outlined:bb.a
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
  store <8 x float> %i.lw, ptr %.0239474, align 32, !tbaa !316
  store <8 x float> %i.lx, ptr %.0238475, align 32, !tbaa !316
  store <8 x float> %i.ly, ptr %.0237476, align 32, !tbaa !316
  store <8 x float> %i.lz, ptr %.0236477, align 32, !tbaa !316
  store <8 x float> %i.ma, ptr %.0235478, align 32, !tbaa !316
  store <8 x float> %i.mb, ptr %.0234479, align 32, !tbaa !316
  store <8 x float> %i.mc, ptr %.0233480, align 32, !tbaa !316
  store <8 x float> %i.mg, ptr %.0232481, align 32, !tbaa !316
  %i.mh = load i32, ptr %4, align 4, !tbaa !67    ; 4 uses
  %i.mi = shl nsw i32 %i.mh, 6
  %i.mj = sext i32 %i.mi to i64                   ; 8 uses
  %i.mk = getelementptr inbounds [4 x i8], ptr %.0239474, i64 %i.mj
  %i.ml = getelementptr inbounds [4 x i8], ptr %.0238475, i64 %i.mj
  %i.mm = getelementptr inbounds [4 x i8], ptr %.0237476, i64 %i.mj
  %i.mn = getelementptr inbounds [4 x i8], ptr %.0236477, i64 %i.mj
  %i.mo = getelementptr inbounds [4 x i8], ptr %.0235478, i64 %i.mj
  %i.mp = getelementptr inbounds [4 x i8], ptr %.0234479, i64 %i.mj
  %i.mq = getelementptr inbounds [4 x i8], ptr %.0233480, i64 %i.mj
  %i.mr = getelementptr inbounds [4 x i8], ptr %.0232481, i64 %i.mj
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %exitcond493.not = icmp eq i64 %indvars.iv.next491, 8
  br i1 %exitcond493.not, label %bb.ak, label %bb.al, !llvm.loop !1303

._crit_edge:                                      ; preds = %bb.ak, %.lr.ph.split
  %i.ms = phi i32 [ %i.y, %.lr.ph.split ], [ %i.mh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.mt = add i32 %.0240485, 1
  %exitcond497.not = icmp eq i32 %.0240485, %i.k
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
  %.0458324.i.us.us.i = phi i32 [ %i.fe, %.lr.ph.i.us.us.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit509.i.us.us.i ]
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
  %i.fe = add nuw nsw i32 %.0458324.i.us.us.i, 1  ; 2 uses
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
end_hunk_9
