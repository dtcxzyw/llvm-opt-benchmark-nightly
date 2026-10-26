Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_fma?download=true
inline.NumInlined: 397
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 143
loop-unroll.NumUnrolled: 268
begin_hunk_0_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
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
  %i.aik = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 9 uses
  %i.ail = mul i32 %i.aci, %i.cj                  ; 16 uses
  %i.aim = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !255
  %i.ain = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !38, !noalias !255
  %i.aip = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aiq = load i64, ptr %i.aip, align 8, !tbaa !79, !noalias !255
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
  %i.ajn = add nuw i32 %i.ajm, 8                  ; 4 uses
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
  %i.ajy = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 5 uses
  %i.ajz = mul i32 %i.aci, %i.cj                  ; 9 uses
  %i.aka = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !256
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !38, !noalias !256
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !79, !noalias !256
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
  %narrow1836.i = add nuw i32 %i.akr, 4
  %i.aks = zext i32 %narrow1836.i to i64
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
  %i.alc = add nuw i32 %i.alb, 8                  ; 4 uses
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
  %i.alm = shl nsw i64 %i.akh, 2                  ; 5 uses
  %i.aln = add nsw i64 %i.alm, %i.alk             ; 4 uses
  %i.alo = shl nsw i64 %i.akn, 2
  %i.alp = add i32 %i.cj, -2
  %min.iters.check831 = icmp ult i32 %i.aci, 16
  %stride.check = icmp slt i32 %i.akm, 0
  %n.vec833 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alq = shl nuw nsw i64 %n.vec833, 5
  %cmp.n848 = icmp eq i64 %n.vec833, %wide.trip.count1708.i
  %min.iters.check761 = icmp ult i32 %i.aci, 8
  %n.vec763 = and i64 %wide.trip.count1708.i, 2147483640 ; 4 uses
  %i.alr = shl nuw nsw i64 %n.vec763, 4
  %cmp.n774 = icmp eq i64 %n.vec763, %wide.trip.count1708.i
  %xtraiter = and i64 %wide.trip.count1708.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.als = add nsw i64 %wide.trip.count1708.i, -1
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
  %i.alt = sext i32 %indvars.iv.i227 to i64
  %i.alu = shl nsw i64 %i.alt, 2
  %scevgep1620.i = getelementptr i8, ptr %scevgep.i, i64 %i.alu ; 2 uses
  %i.alv = sext i32 %indvars.iv1622.i to i64
  %i.alw = shl nsw i64 %i.alv, 2
  %scevgep1624.i = getelementptr i8, ptr %scevgep.i, i64 %i.alw ; 2 uses
  %i.alx = sext i32 %indvars.iv1626.i to i64
  %i.aly = shl nsw i64 %i.alx, 2
  %scevgep1628.i = getelementptr i8, ptr %scevgep.i, i64 %i.aly ; 2 uses
  %i.alz = sext i32 %indvars.iv1630.i to i64
  %i.ama = shl nsw i64 %i.alz, 2
  %scevgep1632.i = getelementptr i8, ptr %scevgep.i, i64 %i.ama ; 2 uses
  %i.amb = sext i32 %indvars.iv1634.i to i64
  %i.amc = shl nsw i64 %i.amb, 2
  %scevgep1636.i = getelementptr i8, ptr %scevgep.i, i64 %i.amc ; 2 uses
  %i.amd = sext i32 %indvars.iv1638.i to i64
  %i.ame = shl nsw i64 %i.amd, 2
  %scevgep1640.i = getelementptr i8, ptr %scevgep.i, i64 %i.ame ; 2 uses
  %i.amf = sext i32 %indvars.iv1642.i to i64
  %i.amg = shl nsw i64 %i.amf, 2
  %scevgep1644.i = getelementptr i8, ptr %scevgep.i, i64 %i.amg ; 2 uses
  %i.amh = sext i32 %indvars.iv1646.i to i64
  %i.ami = shl nsw i64 %i.amh, 2
  %scevgep1648.i = getelementptr i8, ptr %scevgep.i, i64 %i.ami ; 2 uses
  %i.amj = trunc i64 %indvars.iv1685.i to i32     ; 8 uses
  %i.amk = mul i32 %i.ail, %i.amj
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.aml ; 2 uses
  %i.amn = or disjoint i32 %i.amj, 1
  %i.amo = mul i32 %i.amn, %i.ail
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amp ; 2 uses
  %i.amr = or disjoint i32 %i.amj, 2
  %i.ams = mul i32 %i.amr, %i.ail
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amt ; 2 uses
  %i.amv = or disjoint i32 %i.amj, 3
  %i.amw = mul i32 %i.amv, %i.ail
  %i.amx = sext i32 %i.amw to i64
  %i.amy = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.amx ; 2 uses
  %i.amz = or disjoint i32 %i.amj, 4
  %i.ana = mul i32 %i.amz, %i.ail
  %i.anb = sext i32 %i.ana to i64
  %i.anc = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.anb ; 2 uses
  %i.and = or disjoint i32 %i.amj, 5
  %i.ane = mul i32 %i.and, %i.ail
  %i.anf = sext i32 %i.ane to i64
  %i.ang = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.anf ; 2 uses
  %i.anh = or disjoint i32 %i.amj, 6
  %i.ani = mul i32 %i.anh, %i.ail
  %i.anj = sext i32 %i.ani to i64
  %i.ank = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.anj ; 2 uses
  %i.anl = or disjoint i32 %i.amj, 7
  %i.anm = mul i32 %i.anl, %i.ail
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.aik, i64 %i.ann ; 2 uses
  %i.anp = lshr exact i64 %indvars.iv1685.i, 3
  %.reass.i = mul i64 %factor.op.mul.i, %i.anp
  %i.anq = getelementptr inbounds nuw i8, ptr %i.aim, i64 %.reass.i ; 4 uses
  br i1 %i.ack, label %.preheader1109.lr.ph.i, label %.preheader1112.i

.preheader1109.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1007.i
  br i1 %i.air, label %.preheader1109.us.i, label %.preheader1112.thread.i

.preheader1109.us.i:                              ; preds = %.preheader1109.lr.ph.i, %._crit_edge.us.i
  %.08391134.us.i = phi ptr [ %i.avb, %._crit_edge.us.i ], [ %i.amm, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08471133.us.i = phi ptr [ %i.avc, %._crit_edge.us.i ], [ %i.amq, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08501132.us.i = phi ptr [ %i.avd, %._crit_edge.us.i ], [ %i.amu, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08541131.us.i = phi ptr [ %i.ave, %._crit_edge.us.i ], [ %i.amy, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08571130.us.i = phi ptr [ %i.avf, %._crit_edge.us.i ], [ %i.anc, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08801129.us.i = phi ptr [ %i.avg, %._crit_edge.us.i ], [ %i.ang, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08831128.us.i = phi ptr [ %i.avh, %._crit_edge.us.i ], [ %i.ank, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08861127.us.i = phi ptr [ %i.avi, %._crit_edge.us.i ], [ %i.ano, %.preheader1109.lr.ph.i ] ; 2 uses
  %.08891126.us.i = phi ptr [ %i.ava, %._crit_edge.us.i ], [ %i.anq, %.preheader1109.lr.ph.i ]
  %.09461125.us.i = phi i32 [ %i.avj, %._crit_edge.us.i ], [ 0, %.preheader1109.lr.ph.i ]
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jy, %.preheader1109.us.i
  %indvars.iv1649.i = phi i64 [ 0, %.preheader1109.us.i ], [ %indvars.iv.next1650.i, %bb.jy ] ; 9 uses
  %.18901124.us.i = phi ptr [ %.08891126.us.i, %.preheader1109.us.i ], [ %i.ava, %bb.jy ] ; 65 uses
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %.08391134.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %.08471133.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.08501132.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anu = getelementptr inbounds nuw [4 x i8], ptr %.08541131.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %.08571130.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %.08801129.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %.08831128.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %.08861127.us.i, i64 %indvars.iv1649.i ; 2 uses
  %i.anz = load float, ptr %i.anr, align 4, !tbaa !56
  store float %i.anz, ptr %.18901124.us.i, align 4, !tbaa !56
  %i.aoa = load float, ptr %i.ans, align 4, !tbaa !56
  %i.aob = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 4
  store float %i.aoa, ptr %i.aob, align 4, !tbaa !56
  %i.aoc = load float, ptr %i.ant, align 4, !tbaa !56
  %i.aod = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 8
  store float %i.aoc, ptr %i.aod, align 4, !tbaa !56
  %i.aoe = load float, ptr %i.anu, align 4, !tbaa !56
  %i.aof = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 12
  store float %i.aoe, ptr %i.aof, align 4, !tbaa !56
  %i.aog = load float, ptr %i.anv, align 4, !tbaa !56
  %i.aoh = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 16
  store float %i.aog, ptr %i.aoh, align 4, !tbaa !56
  %i.aoi = load float, ptr %i.anw, align 4, !tbaa !56
  %i.aoj = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 20
  store float %i.aoi, ptr %i.aoj, align 4, !tbaa !56
  %i.aok = load float, ptr %i.anx, align 4, !tbaa !56
  %i.aol = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 24
  store float %i.aok, ptr %i.aol, align 4, !tbaa !56
  %i.aom = load float, ptr %i.any, align 4, !tbaa !56
  %i.aon = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 28
  store float %i.aom, ptr %i.aon, align 4, !tbaa !56
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.ais ; 2 uses
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.ans, i64 %i.ais ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.ant, i64 %i.ais ; 2 uses
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.ais ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.anv, i64 %i.ais ; 2 uses
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %i.anw, i64 %i.ais ; 2 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.anx, i64 %i.ais ; 2 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.any, i64 %i.ais ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 32
  %i.aox = load float, ptr %i.aoo, align 4, !tbaa !56
  store float %i.aox, ptr %i.aow, align 4, !tbaa !56
  %i.aoy = load float, ptr %i.aop, align 4, !tbaa !56
  %i.aoz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 36
  store float %i.aoy, ptr %i.aoz, align 4, !tbaa !56
  %i.apa = load float, ptr %i.aoq, align 4, !tbaa !56
  %i.apb = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 40
  store float %i.apa, ptr %i.apb, align 4, !tbaa !56
  %i.apc = load float, ptr %i.aor, align 4, !tbaa !56
  %i.apd = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 44
  store float %i.apc, ptr %i.apd, align 4, !tbaa !56
  %i.ape = load float, ptr %i.aos, align 4, !tbaa !56
  %i.apf = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 48
  store float %i.ape, ptr %i.apf, align 4, !tbaa !56
  %i.apg = load float, ptr %i.aot, align 4, !tbaa !56
  %i.aph = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 52
  store float %i.apg, ptr %i.aph, align 4, !tbaa !56
  %i.api = load float, ptr %i.aou, align 4, !tbaa !56
  %i.apj = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 56
  store float %i.api, ptr %i.apj, align 4, !tbaa !56
  %i.apk = load float, ptr %i.aov, align 4, !tbaa !56
  %i.apl = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 60
  store float %i.apk, ptr %i.apl, align 4, !tbaa !56
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.aoo, i64 %i.ais ; 2 uses
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.aop, i64 %i.ais ; 2 uses
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.aoq, i64 %i.ais ; 2 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.ais ; 2 uses
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.aos, i64 %i.ais ; 2 uses
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %i.ais ; 2 uses
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.aou, i64 %i.ais ; 2 uses
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.aov, i64 %i.ais ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 64
  %i.apv = load float, ptr %i.apm, align 4, !tbaa !56
  store float %i.apv, ptr %i.apu, align 4, !tbaa !56
  %i.apw = load float, ptr %i.apn, align 4, !tbaa !56
  %i.apx = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 68
  store float %i.apw, ptr %i.apx, align 4, !tbaa !56
  %i.apy = load float, ptr %i.apo, align 4, !tbaa !56
  %i.apz = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 72
  store float %i.apy, ptr %i.apz, align 4, !tbaa !56
  %i.aqa = load float, ptr %i.app, align 4, !tbaa !56
  %i.aqb = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 76
  store float %i.aqa, ptr %i.aqb, align 4, !tbaa !56
  %i.aqc = load float, ptr %i.apq, align 4, !tbaa !56
  %i.aqd = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 80
  store float %i.aqc, ptr %i.aqd, align 4, !tbaa !56
  %i.aqe = load float, ptr %i.apr, align 4, !tbaa !56
  %i.aqf = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 84
  store float %i.aqe, ptr %i.aqf, align 4, !tbaa !56
  %i.aqg = load float, ptr %i.aps, align 4, !tbaa !56
  %i.aqh = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 88
  store float %i.aqg, ptr %i.aqh, align 4, !tbaa !56
  %i.aqi = load float, ptr %i.apt, align 4, !tbaa !56
  %i.aqj = getelementptr inbounds nuw i8, ptr %.18901124.us.i, i64 92
end_hunk_0
begin_hunk_1_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %scevgep703 = getelementptr i8, ptr %.2841.lcssa.i, i64 %i.ajt
  %i.bci = insertelement <8 x ptr> poison, ptr %scevgep696, i64 0
  %i.bcj = insertelement <8 x ptr> %i.bci, ptr %scevgep697, i64 1
  %i.bck = insertelement <8 x ptr> %i.bcj, ptr %scevgep698, i64 2
  %i.bcl = insertelement <8 x ptr> %i.bck, ptr %scevgep699, i64 3
  %i.bcm = insertelement <8 x ptr> %i.bcl, ptr %scevgep700, i64 4
  %i.bcn = insertelement <8 x ptr> %i.bcm, ptr %scevgep701, i64 5
  %i.bco = insertelement <8 x ptr> %i.bcn, ptr %scevgep702, i64 6
  %i.bcp = insertelement <8 x ptr> %i.bco, ptr %scevgep703, i64 7
  %i.bcq = insertelement <8 x ptr> poison, ptr %.2888.lcssa.i, i64 0
  %i.bcr = insertelement <8 x ptr> %i.bcq, ptr %.2885.lcssa.i, i64 1
  %i.bcs = insertelement <8 x ptr> %i.bcr, ptr %.2882.lcssa.i, i64 2
  %i.bct = insertelement <8 x ptr> %i.bcs, ptr %.2859.lcssa.i, i64 3
  %i.bcu = insertelement <8 x ptr> %i.bct, ptr %.2856.lcssa.i, i64 4
  %i.bcv = insertelement <8 x ptr> %i.bcu, ptr %.2852.lcssa.i, i64 5
  %i.bcw = insertelement <8 x ptr> %i.bcv, ptr %.2849.lcssa.i, i64 6
  %i.bcx = insertelement <8 x ptr> %i.bcw, ptr %.2841.lcssa.i, i64 7
  br label %.preheader1106.i

.preheader1106.i:                                 ; preds = %.preheader1106.i.preheader, %._crit_edge.i
  %.98981245.i = phi ptr [ %.lcssa695, %._crit_edge.i ], [ %.6895.lcssa.i, %.preheader1106.i.preheader ] ; 6 uses
  %.39491244.i = phi i32 [ %i.bdx, %._crit_edge.i ], [ %.2948.lcssa.i, %.preheader1106.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader1106.i
  %scevgep = getelementptr i8, ptr %.98981245.i, i64 %i.ajs
  %i.bcy = insertelement <8 x ptr> poison, ptr %.98981245.i, i64 0
  %i.bcz = shufflevector <8 x ptr> %i.bcy, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bda = icmp ult <8 x ptr> %i.bcz, %i.bcp
  %i.bdb = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.bdc = shufflevector <8 x ptr> %i.bdb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bdd = icmp ult <8 x ptr> %i.bcx, %i.bdc
  %i.bde = and <8 x i1> %i.bda, %i.bdd
  %i.bdf = bitcast <8 x i1> %i.bde to i8
  %.not1215 = icmp eq i8 %i.bdf, 0
  br i1 %.not1215, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.bdg = getelementptr i8, ptr %.98981245.i, i64 %i.aju ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.bdh = shl i64 %index, 5
  %next.gep = getelementptr i8, ptr %.98981245.i, i64 %i.bdh
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %index
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %index
  %i.bdk = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %index
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %index
  %i.bdm = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %index
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %index
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %index
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.bdi, align 4, !tbaa !56, !alias.scope !257
  %wide.load731 = load <8 x float>, ptr %i.bdj, align 4, !tbaa !56, !alias.scope !258
  %wide.load732 = load <8 x float>, ptr %i.bdk, align 4, !tbaa !56, !alias.scope !259
  %wide.load733 = load <8 x float>, ptr %i.bdl, align 4, !tbaa !56, !alias.scope !260
  %wide.load734 = load <8 x float>, ptr %i.bdm, align 4, !tbaa !56, !alias.scope !261
  %wide.load735 = load <8 x float>, ptr %i.bdn, align 4, !tbaa !56, !alias.scope !262
  %wide.load736 = load <8 x float>, ptr %i.bdo, align 4, !tbaa !56, !alias.scope !263
  %wide.load737 = load <8 x float>, ptr %i.bdp, align 4, !tbaa !56, !alias.scope !264
  %i.bdq = shufflevector <8 x float> %wide.load, <8 x float> %wide.load731, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdr = shufflevector <8 x float> %wide.load732, <8 x float> %wide.load733, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bds = shufflevector <8 x float> %wide.load734, <8 x float> %wide.load735, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdt = shufflevector <8 x float> %wide.load736, <8 x float> %wide.load737, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdu = shufflevector <16 x float> %i.bdq, <16 x float> %i.bdr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdv = shufflevector <16 x float> %i.bds, <16 x float> %i.bdt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.bdu, <32 x float> %i.bdv, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !56, !alias.scope !265, !noalias !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bdw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bdw, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader1106.i, %middle.block
  %indvars.iv1679.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader1106.i ], [ %n.vec, %middle.block ]
  %.108991243.i.ph = phi ptr [ %.98981245.i, %vector.memcheck ], [ %.98981245.i, %.preheader1106.i ], [ %i.bdg, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa695 = phi ptr [ %i.bdg, %middle.block ], [ %i.bev, %scalar.ph ]
  %i.bdx = add nuw nsw i32 %.39491244.i, 1        ; 2 uses
  %exitcond1684.not.i = icmp eq i32 %i.bdx, %i.cj
  br i1 %exitcond1684.not.i, label %._crit_edge1246.split.i, label %.preheader1106.i, !llvm.loop !150

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1679.i = phi i64 [ %indvars.iv.next1680.i, %scalar.ph ], [ %indvars.iv1679.i.ph, %scalar.ph.preheader ] ; 9 uses
  %.108991243.i = phi ptr [ %i.bev, %scalar.ph ], [ %.108991243.i.ph, %scalar.ph.preheader ] ; 9 uses
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %.2841.lcssa.i, i64 %indvars.iv1679.i
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %.2849.lcssa.i, i64 %indvars.iv1679.i
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %.2852.lcssa.i, i64 %indvars.iv1679.i
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %.2856.lcssa.i, i64 %indvars.iv1679.i
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %.2859.lcssa.i, i64 %indvars.iv1679.i
  %i.bed = getelementptr inbounds nuw [4 x i8], ptr %.2882.lcssa.i, i64 %indvars.iv1679.i
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.2885.lcssa.i, i64 %indvars.iv1679.i
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.2888.lcssa.i, i64 %indvars.iv1679.i
  %i.beg = load float, ptr %i.bdy, align 4, !tbaa !56
  store float %i.beg, ptr %.108991243.i, align 4, !tbaa !56
  %i.beh = load float, ptr %i.bdz, align 4, !tbaa !56
  %i.bei = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 4
  store float %i.beh, ptr %i.bei, align 4, !tbaa !56
  %i.bej = load float, ptr %i.bea, align 4, !tbaa !56
  %i.bek = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 8
  store float %i.bej, ptr %i.bek, align 4, !tbaa !56
  %i.bel = load float, ptr %i.beb, align 4, !tbaa !56
  %i.bem = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 12
  store float %i.bel, ptr %i.bem, align 4, !tbaa !56
  %i.ben = load float, ptr %i.bec, align 4, !tbaa !56
  %i.beo = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 16
  store float %i.ben, ptr %i.beo, align 4, !tbaa !56
  %i.bep = load float, ptr %i.bed, align 4, !tbaa !56
  %i.beq = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 20
  store float %i.bep, ptr %i.beq, align 4, !tbaa !56
  %i.ber = load float, ptr %i.bee, align 4, !tbaa !56
  %i.bes = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 24
  store float %i.ber, ptr %i.bes, align 4, !tbaa !56
  %i.bet = load float, ptr %i.bef, align 4, !tbaa !56
  %i.beu = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 28
  store float %i.bet, ptr %i.beu, align 4, !tbaa !56
  %i.bev = getelementptr inbounds nuw i8, ptr %.108991243.i, i64 32 ; 2 uses
  %indvars.iv.next1680.i = add nuw nsw i64 %indvars.iv1679.i, 1 ; 2 uses
  %exitcond1683.not.i = icmp eq i64 %indvars.iv.next1680.i, %wide.trip.count.i
  br i1 %exitcond1683.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !151

._crit_edge1246.split.i:                          ; preds = %._crit_edge.i, %.preheader1110.i, %.preheader1107.lr.ph.i
  %indvars.iv.next1686.i = add nuw nsw i64 %indvars.iv1685.i, 8 ; 3 uses
  %i.bew = or disjoint i64 %indvars.iv.next1686.i, 7
  %i.bex = icmp samesign ult i64 %i.bew, %i.ajp
  %indvars.iv.next.i228 = add i32 %indvars.iv.i227, %i.ajf
  %indvars.iv.next1623.i = add i32 %indvars.iv1622.i, %i.ajf
  %indvars.iv.next1627.i = add i32 %indvars.iv1626.i, %i.ajf
  %indvars.iv.next1631.i = add i32 %indvars.iv1630.i, %i.ajf
  %indvars.iv.next1635.i = add i32 %indvars.iv1634.i, %i.ajf
  %indvars.iv.next1639.i = add i32 %indvars.iv1638.i, %i.ajf
  %indvars.iv.next1643.i = add i32 %indvars.iv1642.i, %i.ajf
  %indvars.iv.next1647.i = add i32 %indvars.iv1646.i, %i.ajf
  br i1 %i.bex, label %_ZN4ncnn3MatD2Ev.exit1007.i, label %.preheader1105.loopexit.i, !llvm.loop !152

.preheader1097.loopexit.i:                        ; preds = %._crit_edge1339.split.i
  %i.bey = trunc nuw nsw i64 %indvars.iv.next1738.i to i32
  br label %.preheader1097.i

.preheader1097.i:                                 ; preds = %.preheader1097.loopexit.i, %.preheader1105.i
  %.1836.lcssa.i = phi i32 [ %.0835.lcssa.i, %.preheader1105.i ], [ %i.bey, %.preheader1097.loopexit.i ] ; 4 uses
  %i.bez = or disjoint i32 %.1836.lcssa.i, 1      ; 3 uses
  %i.bfa = icmp slt i32 %i.bez, %i.rh
  br i1 %i.bfa, label %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i, label %.preheader1089.i

_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i:                ; preds = %.preheader1097.i
  %i.bfb = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 3 uses
  %i.bfc = mul i32 %i.aci, %i.cj                  ; 5 uses
  %i.bfd = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !267
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bff = load i64, ptr %i.bfe, align 8, !tbaa !38, !noalias !267
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bfh = load i64, ptr %i.bfg, align 8, !tbaa !79, !noalias !267
  %factor.op.mul1405.i = mul i64 %i.bfh, %i.bff
  %i.bfi = icmp sgt i32 %i.cj, 7
  %i.bfj = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.bfk = sext i32 %i.aci to i64                 ; 16 uses
  %i.bfl = shl i32 %i.aci, 1                      ; 3 uses
  %i.bfm = zext i32 %i.bfl to i64                 ; 7 uses
  %i.bfn = mul i32 %i.aci, 3
  %i.bfo = zext i32 %i.bfn to i64                 ; 7 uses
  %i.bfp = shl i32 %i.aci, 2                      ; 3 uses
  %i.bfq = zext nneg i32 %i.bfp to i64            ; 2 uses
  %i.bfr = mul nuw nsw i32 %i.aci, 5
  %i.bfs = zext nneg i32 %i.bfr to i64            ; 2 uses
  %i.bft = mul nuw nsw i32 %i.aci, 6
  %i.bfu = zext nneg i32 %i.bft to i64            ; 2 uses
  %i.bfv = mul nuw nsw i32 %i.aci, 7
  %i.bfw = zext nneg i32 %i.bfv to i64            ; 2 uses
  %i.bfx = shl i32 %i.aci, 3
  %i.bfy = sext i32 %i.bfx to i64                 ; 3 uses
  %i.bfz = sext i32 %i.bfp to i64                 ; 4 uses
  %i.bga = sext i32 %i.bfl to i64                 ; 3 uses
  %i.bgb = icmp slt i32 %i.aci, 1
  %i.bgc = add i32 %i.cj, -8                      ; 2 uses
  %i.bgd = lshr i32 %i.bgc, 1
  %i.bge = and i32 %i.bgd, 2147483644
  %narrow1837.i = add nuw i32 %i.bge, 4
  %i.bgf = zext i32 %narrow1837.i to i64
  %i.bgg = mul nsw i64 %i.bfy, %i.bgf
  %scevgep1742.i = getelementptr i8, ptr %i.bfb, i64 %i.bgg ; 2 uses
  %i.bgh = mul i32 %i.bfc, %.1836.lcssa.i
  %i.bgi = shl i32 %i.bfc, 1                      ; 2 uses
  %i.bgj = mul i32 %i.bez, %i.bfc
  %i.bgk = and i32 %i.bgc, -8
  %i.bgl = add nuw i32 %i.bgk, 8                  ; 4 uses
  %i.bgm = add i32 %i.cj, -4
  %i.bgn = zext nneg i32 %.1836.lcssa.i to i64
  %i.bgo = sext i32 %i.rh to i64
  %i.bgp = or disjoint i32 %i.bgl, 3
  %i.bgq = icmp slt i32 %i.bgp, %i.cj
  %wide.trip.count1753.i = zext i32 %i.aci to i64 ; 19 uses
  %i.bgr = shl nuw nsw i64 %wide.trip.count1753.i, 3
  %i.bgs = shl nuw nsw i64 %wide.trip.count1753.i, 2 ; 5 uses
  %i.bgt = shl nuw nsw i64 %wide.trip.count1753.i, 4
  %i.bgu = shl nsw i64 %i.bfk, 2                  ; 3 uses
  %i.bgv = add nsw i64 %i.bgu, %i.bgs             ; 2 uses
  %i.bgw = shl nsw i64 %i.bga, 2
  %i.bgx = add i32 %i.cj, -2
  %i.bgy = shl nuw nsw i64 %wide.trip.count1753.i, 5
  %i.bgz = shl nuw nsw i64 %i.bfo, 2              ; 3 uses
  %i.bha = shl nuw nsw i64 %wide.trip.count1753.i, 2 ; 5 uses
  %i.bhb = add nuw nsw i64 %i.bgz, %i.bha         ; 2 uses
  %i.bhc = shl nsw i64 %i.bfz, 2
  %i.bhd = add i32 %i.cj, -4
  %i.bhe = shl nuw nsw i64 %i.bfm, 2              ; 3 uses
  %i.bhf = add nuw nsw i64 %i.bhe, %i.bha         ; 2 uses
  %i.bhg = shl nsw i64 %i.bfk, 2                  ; 3 uses
  %i.bhh = add nsw i64 %i.bhg, %i.bha             ; 2 uses
  %min.iters.check983 = icmp ult i32 %i.aci, 16
  %stride.check953 = icmp slt i32 %i.bfp, 0
  %n.vec985 = and i64 %wide.trip.count1753.i, 2147483640 ; 4 uses
  %i.bhi = shl nuw nsw i64 %n.vec985, 5
  %cmp.n1000 = icmp eq i64 %n.vec985, %wide.trip.count1753.i
  %min.iters.check910 = icmp ult i32 %i.aci, 8
  %stride.check896 = icmp slt i32 %i.bfl, 0
  %n.vec912 = and i64 %wide.trip.count1753.i, 2147483640 ; 4 uses
  %i.bhj = shl nuw nsw i64 %n.vec912, 4
  %cmp.n923 = icmp eq i64 %n.vec912, %wide.trip.count1753.i
  %xtraiter1285 = and i64 %wide.trip.count1753.i, 1
  %lcmp.mod1286.not = icmp eq i64 %xtraiter1285, 0
  %i.bhk = add nsw i64 %wide.trip.count1753.i, -1
  %min.iters.check863 = icmp ult i32 %i.aci, 6
  %n.vec865 = and i64 %wide.trip.count1753.i, 2147483644 ; 4 uses
  %i.bhl = shl nuw nsw i64 %n.vec865, 3
  %cmp.n878 = icmp eq i64 %n.vec865, %wide.trip.count1753.i
  %xtraiter1287 = and i64 %wide.trip.count1753.i, 3 ; 2 uses
  %lcmp.mod1288.not = icmp eq i64 %xtraiter1287, 0
  br label %_ZN4ncnn3MatD2Ev.exit1005.i

_ZN4ncnn3MatD2Ev.exit1006.i:                      ; preds = %._crit_edge1339.split.i, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i
  %indvars.iv1737.i = phi i64 [ %i.ale, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1738.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1735.i = phi i32 [ %i.alf, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1736.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1701.i = phi i32 [ %i.ala, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1702.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1697.i = phi i32 [ %i.akz, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1698.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1693.i = phi i32 [ %i.akx, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1694.i, %._crit_edge1339.split.i ] ; 2 uses
  %indvars.iv1689.i = phi i32 [ %i.aku, %_ZN4ncnn3MatD2Ev.exit1006.lr.ph.i ], [ %indvars.iv.next1690.i, %._crit_edge1339.split.i ] ; 2 uses
  %i.bhm = sext i32 %indvars.iv1689.i to i64
  %i.bhn = shl nsw i64 %i.bhm, 2
  %scevgep1691.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhn ; 2 uses
  %i.bho = sext i32 %indvars.iv1693.i to i64
  %i.bhp = shl nsw i64 %i.bho, 2
  %scevgep1695.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhp ; 2 uses
  %i.bhq = sext i32 %indvars.iv1697.i to i64
  %i.bhr = shl nsw i64 %i.bhq, 2
  %scevgep1699.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bhr ; 2 uses
  %i.bhs = sext i32 %indvars.iv1701.i to i64
  %i.bht = shl nsw i64 %i.bhs, 2
  %scevgep1703.i = getelementptr i8, ptr %scevgep1688.i, i64 %i.bht ; 2 uses
  %i.bhu = trunc nuw i64 %indvars.iv1737.i to i32 ; 5 uses
  %i.bhv = mul i32 %i.ajz, %i.bhu
  %i.bhw = sext i32 %i.bhv to i64
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bhw ; 2 uses
  %i.bhy = add i32 %i.bhu, 1
  %i.bhz = mul i32 %i.bhy, %i.ajz
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bia ; 2 uses
  %i.bic = add i32 %i.bhu, 2
  %i.bid = mul i32 %i.bic, %i.ajz
  %i.bie = sext i32 %i.bid to i64
  %i.bif = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bie ; 2 uses
  %i.big = mul i32 %indvars.iv1735.i, %i.ajz
  %i.bih = sext i32 %i.big to i64
  %i.bii = getelementptr inbounds [4 x i8], ptr %i.ajy, i64 %i.bih ; 2 uses
  %i.bij = lshr i32 %i.bhu, 3
  %i.bik = lshr i32 %i.bhu, 2
  %i.bil = and i32 %i.bik, 1
  %i.bim = add nuw nsw i32 %i.bil, %i.bij
  %i.bin = zext nneg i32 %i.bim to i64
  %.reass1343.i = mul i64 %factor.op.mul1342.i, %i.bin
  %i.bio = getelementptr inbounds nuw i8, ptr %i.aka, i64 %.reass1343.i ; 4 uses
  br i1 %i.akf, label %.preheader1101.lr.ph.i, label %.preheader1104.i

.preheader1101.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1006.i
  br i1 %i.akg, label %.preheader1101.us.i, label %.preheader1104.thread.i

.preheader1101.us.i:                              ; preds = %.preheader1101.lr.ph.i, %._crit_edge1257.us.i
  %.09191264.us.i = phi i32 [ %i.bml, %._crit_edge1257.us.i ], [ 0, %.preheader1101.lr.ph.i ]
  %.09231263.us.i = phi ptr [ %i.bmg, %._crit_edge1257.us.i ], [ %i.bio, %.preheader1101.lr.ph.i ]
  %.09341262.us.i = phi ptr [ %i.bmk, %._crit_edge1257.us.i ], [ %i.bii, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09371261.us.i = phi ptr [ %i.bmj, %._crit_edge1257.us.i ], [ %i.bif, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09401260.us.i = phi ptr [ %i.bmi, %._crit_edge1257.us.i ], [ %i.bib, %.preheader1101.lr.ph.i ] ; 2 uses
  %.09431259.us.i = phi ptr [ %i.bmh, %._crit_edge1257.us.i ], [ %i.bhx, %.preheader1101.lr.ph.i ] ; 2 uses
  br label %bb.kb

bb.kb:                                            ; preds = %bb.kb, %.preheader1101.us.i
  %indvars.iv1705.i = phi i64 [ 0, %.preheader1101.us.i ], [ %indvars.iv.next1706.i, %bb.kb ] ; 5 uses
  %.19241255.us.i = phi ptr [ %.09231263.us.i, %.preheader1101.us.i ], [ %i.bmg, %bb.kb ] ; 33 uses
  %i.bip = getelementptr inbounds nuw [4 x i8], ptr %.09431259.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %.09401260.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bir = getelementptr inbounds nuw [4 x i8], ptr %.09371261.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bis = getelementptr inbounds nuw [4 x i8], ptr %.09341262.us.i, i64 %indvars.iv1705.i ; 2 uses
  %i.bit = load float, ptr %i.bip, align 4, !tbaa !56
  store float %i.bit, ptr %.19241255.us.i, align 4, !tbaa !56
  %i.biu = load float, ptr %i.biq, align 4, !tbaa !56
  %i.biv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 4
  store float %i.biu, ptr %i.biv, align 4, !tbaa !56
  %i.biw = load float, ptr %i.bir, align 4, !tbaa !56
  %i.bix = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 8
  store float %i.biw, ptr %i.bix, align 4, !tbaa !56
  %i.biy = load float, ptr %i.bis, align 4, !tbaa !56
  %i.biz = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 12
  store float %i.biy, ptr %i.biz, align 4, !tbaa !56
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bip, i64 %i.akh ; 2 uses
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.biq, i64 %i.akh ; 2 uses
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %i.bir, i64 %i.akh ; 2 uses
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.akh ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 16
  %i.bjf = load float, ptr %i.bja, align 4, !tbaa !56
  store float %i.bjf, ptr %i.bje, align 4, !tbaa !56
  %i.bjg = load float, ptr %i.bjb, align 4, !tbaa !56
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 20
  store float %i.bjg, ptr %i.bjh, align 4, !tbaa !56
  %i.bji = load float, ptr %i.bjc, align 4, !tbaa !56
  %i.bjj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 24
  store float %i.bji, ptr %i.bjj, align 4, !tbaa !56
  %i.bjk = load float, ptr %i.bjd, align 4, !tbaa !56
  %i.bjl = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 28
  store float %i.bjk, ptr %i.bjl, align 4, !tbaa !56
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.akh ; 2 uses
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjb, i64 %i.akh ; 2 uses
  %i.bjo = getelementptr inbounds nuw [4 x i8], ptr %i.bjc, i64 %i.akh ; 2 uses
  %i.bjp = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %i.akh ; 2 uses
  %i.bjq = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 32
  %i.bjr = load float, ptr %i.bjm, align 4, !tbaa !56
  store float %i.bjr, ptr %i.bjq, align 4, !tbaa !56
  %i.bjs = load float, ptr %i.bjn, align 4, !tbaa !56
  %i.bjt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 36
  store float %i.bjs, ptr %i.bjt, align 4, !tbaa !56
  %i.bju = load float, ptr %i.bjo, align 4, !tbaa !56
  %i.bjv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 40
  store float %i.bju, ptr %i.bjv, align 4, !tbaa !56
  %i.bjw = load float, ptr %i.bjp, align 4, !tbaa !56
  %i.bjx = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 44
  store float %i.bjw, ptr %i.bjx, align 4, !tbaa !56
  %i.bjy = getelementptr inbounds nuw [4 x i8], ptr %i.bjm, i64 %i.akh ; 2 uses
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bjn, i64 %i.akh ; 2 uses
  %i.bka = getelementptr inbounds nuw [4 x i8], ptr %i.bjo, i64 %i.akh ; 2 uses
  %i.bkb = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %i.akh ; 2 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 48
  %i.bkd = load float, ptr %i.bjy, align 4, !tbaa !56
  store float %i.bkd, ptr %i.bkc, align 4, !tbaa !56
  %i.bke = load float, ptr %i.bjz, align 4, !tbaa !56
  %i.bkf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 52
  store float %i.bke, ptr %i.bkf, align 4, !tbaa !56
  %i.bkg = load float, ptr %i.bka, align 4, !tbaa !56
  %i.bkh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 56
  store float %i.bkg, ptr %i.bkh, align 4, !tbaa !56
  %i.bki = load float, ptr %i.bkb, align 4, !tbaa !56
  %i.bkj = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 60
  store float %i.bki, ptr %i.bkj, align 4, !tbaa !56
  %i.bkk = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.akh ; 2 uses
  %i.bkl = getelementptr inbounds nuw [4 x i8], ptr %i.bjz, i64 %i.akh ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.bka, i64 %i.akh ; 2 uses
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bkb, i64 %i.akh ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 64
  %i.bkp = load float, ptr %i.bkk, align 4, !tbaa !56
  store float %i.bkp, ptr %i.bko, align 4, !tbaa !56
  %i.bkq = load float, ptr %i.bkl, align 4, !tbaa !56
  %i.bkr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 68
  store float %i.bkq, ptr %i.bkr, align 4, !tbaa !56
  %i.bks = load float, ptr %i.bkm, align 4, !tbaa !56
  %i.bkt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 72
  store float %i.bks, ptr %i.bkt, align 4, !tbaa !56
  %i.bku = load float, ptr %i.bkn, align 4, !tbaa !56
  %i.bkv = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 76
  store float %i.bku, ptr %i.bkv, align 4, !tbaa !56
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkk, i64 %i.akh ; 2 uses
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %i.akh ; 2 uses
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bkm, i64 %i.akh ; 2 uses
  %i.bkz = getelementptr inbounds nuw [4 x i8], ptr %i.bkn, i64 %i.akh ; 2 uses
  %i.bla = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 80
  %i.blb = load float, ptr %i.bkw, align 4, !tbaa !56
  store float %i.blb, ptr %i.bla, align 4, !tbaa !56
  %i.blc = load float, ptr %i.bkx, align 4, !tbaa !56
  %i.bld = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 84
  store float %i.blc, ptr %i.bld, align 4, !tbaa !56
  %i.ble = load float, ptr %i.bky, align 4, !tbaa !56
  %i.blf = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 88
  store float %i.ble, ptr %i.blf, align 4, !tbaa !56
  %i.blg = load float, ptr %i.bkz, align 4, !tbaa !56
  %i.blh = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 92
  store float %i.blg, ptr %i.blh, align 4, !tbaa !56
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %i.akh ; 2 uses
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bkx, i64 %i.akh ; 2 uses
  %i.blk = getelementptr inbounds nuw [4 x i8], ptr %i.bky, i64 %i.akh ; 2 uses
  %i.bll = getelementptr inbounds nuw [4 x i8], ptr %i.bkz, i64 %i.akh ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 96
  %i.bln = load float, ptr %i.bli, align 4, !tbaa !56
  store float %i.bln, ptr %i.blm, align 4, !tbaa !56
  %i.blo = load float, ptr %i.blj, align 4, !tbaa !56
  %i.blp = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 100
  store float %i.blo, ptr %i.blp, align 4, !tbaa !56
  %i.blq = load float, ptr %i.blk, align 4, !tbaa !56
  %i.blr = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 104
  store float %i.blq, ptr %i.blr, align 4, !tbaa !56
  %i.bls = load float, ptr %i.bll, align 4, !tbaa !56
  %i.blt = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 108
  store float %i.bls, ptr %i.blt, align 4, !tbaa !56
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bli, i64 %i.akh
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.blj, i64 %i.akh
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.blk, i64 %i.akh
  %i.blx = getelementptr inbounds nuw [4 x i8], ptr %i.bll, i64 %i.akh
  %i.bly = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 112
  %i.blz = load float, ptr %i.blu, align 4, !tbaa !56
  store float %i.blz, ptr %i.bly, align 4, !tbaa !56
  %i.bma = load float, ptr %i.blv, align 4, !tbaa !56
  %i.bmb = getelementptr inbounds nuw i8, ptr %.19241255.us.i, i64 116
  store float %i.bma, ptr %i.bmb, align 4, !tbaa !56
end_hunk_1
begin_hunk_2_@_ZN4ncnn19Convolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %.2942.lcssa.i = phi ptr [ %.1941.lcssa.i, %.preheader1103.i ], [ %i.brv, %._crit_edge1313.us.i ] ; 6 uses
  %.2939.lcssa.i = phi ptr [ %.1938.lcssa.i, %.preheader1103.i ], [ %i.brw, %._crit_edge1313.us.i ] ; 6 uses
  %.2936.lcssa.i = phi ptr [ %.1935.lcssa.i, %.preheader1103.i ], [ %i.brx, %._crit_edge1313.us.i ] ; 6 uses
  %.6929.lcssa.i = phi ptr [ %.3926.lcssa.i, %.preheader1103.i ], [ %.lcssa659, %._crit_edge1313.us.i ]
  %.2921.lcssa.i = phi i32 [ %.1920.lcssa.i, %.preheader1103.i ], [ %i.bry, %._crit_edge1313.us.i ] ; 2 uses
  %i.bsb = icmp sge i32 %.2921.lcssa.i, %i.cj
  %brmerge1469.i = or i1 %i.ako, %i.bsb
  br i1 %brmerge1469.i, label %._crit_edge1339.split.i, label %.preheader1098.i.preheader

.preheader1098.i.preheader:                       ; preds = %.preheader1102.i
  %scevgep741 = getelementptr i8, ptr %.2936.lcssa.i, i64 %i.alk
  %scevgep742 = getelementptr i8, ptr %.2939.lcssa.i, i64 %i.alk
  %scevgep743 = getelementptr i8, ptr %.2942.lcssa.i, i64 %i.alk
  %scevgep744 = getelementptr i8, ptr %.2945.lcssa.i, i64 %i.alk
  br label %.preheader1098.i

.preheader1098.i:                                 ; preds = %.preheader1098.i.preheader, %._crit_edge1335.i
  %.39221338.i = phi i32 [ %i.bsy, %._crit_edge1335.i ], [ %.2921.lcssa.i, %.preheader1098.i.preheader ]
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
  %i.bsc = getelementptr i8, ptr %.99321337.i, i64 %i.alr ; 2 uses
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next772, %vector.body764 ] ; 6 uses
  %i.bsd = shl i64 %index765, 4
  %next.gep766 = getelementptr i8, ptr %.99321337.i, i64 %i.bsd
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %index765
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %index765
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %index765
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %index765
  %wide.load767 = load <8 x float>, ptr %i.bse, align 4, !tbaa !56, !alias.scope !278
  %wide.load768 = load <8 x float>, ptr %i.bsf, align 4, !tbaa !56, !alias.scope !279
  %wide.load769 = load <8 x float>, ptr %i.bsg, align 4, !tbaa !56, !alias.scope !280
  %wide.load770 = load <8 x float>, ptr %i.bsh, align 4, !tbaa !56, !alias.scope !281
  %i.bsi = shufflevector <8 x float> %wide.load767, <8 x float> %wide.load768, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsj = shufflevector <8 x float> %wide.load769, <8 x float> %wide.load770, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec771 = shufflevector <16 x float> %i.bsi, <16 x float> %i.bsj, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec771, ptr %next.gep766, align 4, !tbaa !56, !alias.scope !282, !noalias !283
  %index.next772 = add nuw i64 %index765, 8       ; 2 uses
  %i.bsk = icmp eq i64 %index.next772, %n.vec763
  br i1 %i.bsk, label %middle.block773, label %vector.body764, !llvm.loop !178

middle.block773:                                  ; preds = %vector.body764
  br i1 %cmp.n774, label %._crit_edge1335.i, label %scalar.ph760.preheader

scalar.ph760.preheader:                           ; preds = %vector.memcheck739, %.preheader1098.i, %middle.block773
  %indvars.iv1729.i.ph = phi i64 [ 0, %vector.memcheck739 ], [ 0, %.preheader1098.i ], [ %n.vec763, %middle.block773 ] ; 7 uses
  %.109331333.i.ph = phi ptr [ %.99321337.i, %vector.memcheck739 ], [ %.99321337.i, %.preheader1098.i ], [ %i.bsc, %middle.block773 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph760.prol.loopexit, label %scalar.ph760.prol

scalar.ph760.prol:                                ; preds = %scalar.ph760.preheader
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i.ph
  %i.bsp = load float, ptr %i.bsl, align 4, !tbaa !56
  store float %i.bsp, ptr %.109331333.i.ph, align 4, !tbaa !56
  %i.bsq = load float, ptr %i.bsm, align 4, !tbaa !56
  %i.bsr = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 4
  store float %i.bsq, ptr %i.bsr, align 4, !tbaa !56
  %i.bss = load float, ptr %i.bsn, align 4, !tbaa !56
  %i.bst = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 8
  store float %i.bss, ptr %i.bst, align 4, !tbaa !56
  %i.bsu = load float, ptr %i.bso, align 4, !tbaa !56
  %i.bsv = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 12
  store float %i.bsu, ptr %i.bsv, align 4, !tbaa !56
  %i.bsw = getelementptr inbounds nuw i8, ptr %.109331333.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1730.i.prol = or disjoint i64 %indvars.iv1729.i.ph, 1
  br label %scalar.ph760.prol.loopexit

scalar.ph760.prol.loopexit:                       ; preds = %scalar.ph760.prol, %scalar.ph760.preheader
  %.lcssa1254.unr = phi ptr [ poison, %scalar.ph760.preheader ], [ %i.bsw, %scalar.ph760.prol ]
  %indvars.iv1729.i.unr = phi i64 [ %indvars.iv1729.i.ph, %scalar.ph760.preheader ], [ %indvars.iv.next1730.i.prol, %scalar.ph760.prol ]
  %.109331333.i.unr = phi ptr [ %.109331333.i.ph, %scalar.ph760.preheader ], [ %i.bsw, %scalar.ph760.prol ]
  %i.bsx = icmp eq i64 %indvars.iv1729.i.ph, %i.als
  br i1 %i.bsx, label %._crit_edge1335.i, label %scalar.ph760

._crit_edge1335.i:                                ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760, %middle.block773
  %.lcssa665 = phi ptr [ %i.bsc, %middle.block773 ], [ %.lcssa1254.unr, %scalar.ph760.prol.loopexit ], [ %i.btw, %scalar.ph760 ]
  %i.bsy = add nuw nsw i32 %.39221338.i, 1        ; 2 uses
  %exitcond1734.not.i = icmp eq i32 %i.bsy, %i.cj
  br i1 %exitcond1734.not.i, label %._crit_edge1339.split.i, label %.preheader1098.i, !llvm.loop !179

scalar.ph760:                                     ; preds = %scalar.ph760.prol.loopexit, %scalar.ph760
  %indvars.iv1729.i = phi i64 [ %indvars.iv.next1730.i.1, %scalar.ph760 ], [ %indvars.iv1729.i.unr, %scalar.ph760.prol.loopexit ] ; 6 uses
  %.109331333.i = phi ptr [ %i.btw, %scalar.ph760 ], [ %.109331333.i.unr, %scalar.ph760.prol.loopexit ] ; 9 uses
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv1729.i
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv1729.i
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv1729.i
  %i.btc = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv1729.i
  %i.btd = load float, ptr %i.bsz, align 4, !tbaa !56
  store float %i.btd, ptr %.109331333.i, align 4, !tbaa !56
  %i.bte = load float, ptr %i.bta, align 4, !tbaa !56
  %i.btf = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 4
  store float %i.bte, ptr %i.btf, align 4, !tbaa !56
  %i.btg = load float, ptr %i.btb, align 4, !tbaa !56
  %i.bth = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 8
  store float %i.btg, ptr %i.bth, align 4, !tbaa !56
  %i.bti = load float, ptr %i.btc, align 4, !tbaa !56
  %i.btj = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 12
  store float %i.bti, ptr %i.btj, align 4, !tbaa !56
  %i.btk = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 16
  %indvars.iv.next1730.i = add nuw nsw i64 %indvars.iv1729.i, 1 ; 4 uses
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %.2945.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btm = getelementptr inbounds nuw [4 x i8], ptr %.2942.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %.2939.lcssa.i, i64 %indvars.iv.next1730.i
  %i.bto = getelementptr inbounds nuw [4 x i8], ptr %.2936.lcssa.i, i64 %indvars.iv.next1730.i
  %i.btp = load float, ptr %i.btl, align 4, !tbaa !56
  store float %i.btp, ptr %i.btk, align 4, !tbaa !56
  %i.btq = load float, ptr %i.btm, align 4, !tbaa !56
  %i.btr = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 20
  store float %i.btq, ptr %i.btr, align 4, !tbaa !56
  %i.bts = load float, ptr %i.btn, align 4, !tbaa !56
  %i.btt = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 24
  store float %i.bts, ptr %i.btt, align 4, !tbaa !56
  %i.btu = load float, ptr %i.bto, align 4, !tbaa !56
  %i.btv = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 28
  store float %i.btu, ptr %i.btv, align 4, !tbaa !56
  %i.btw = getelementptr inbounds nuw i8, ptr %.109331333.i, i64 32 ; 2 uses
  %indvars.iv.next1730.i.1 = add nuw nsw i64 %indvars.iv1729.i, 2 ; 2 uses
  %exitcond1733.not.i.1 = icmp eq i64 %indvars.iv.next1730.i.1, %wide.trip.count1708.i
  br i1 %exitcond1733.not.i.1, label %._crit_edge1335.i, label %scalar.ph760, !llvm.loop !180

._crit_edge1339.split.i:                          ; preds = %._crit_edge1335.i, %.preheader1102.i, %.preheader1099.lr.ph.i
  %indvars.iv.next1738.i = add nuw nsw i64 %indvars.iv1737.i, 4 ; 3 uses
  %i.btx = icmp slt i64 %indvars.iv.next1738.i, %invariant.op.i
  %indvars.iv.next1690.i = add i32 %indvars.iv1689.i, %i.akv
  %indvars.iv.next1694.i = add i32 %indvars.iv1693.i, %i.akv
  %indvars.iv.next1698.i = add i32 %indvars.iv1697.i, %i.akv
  %indvars.iv.next1702.i = add i32 %indvars.iv1701.i, %i.akv
  %indvars.iv.next1736.i = add i32 %indvars.iv1735.i, 4
  br i1 %i.btx, label %_ZN4ncnn3MatD2Ev.exit1006.i, label %.preheader1097.loopexit.i, !llvm.loop !181

.preheader1089.loopexit.i:                        ; preds = %._crit_edge1402.split.i
  %i.bty = trunc nuw nsw i64 %indvars.iv.next1776.i to i32
  br label %.preheader1089.i

.preheader1089.i:                                 ; preds = %.preheader1089.loopexit.i, %.preheader1097.i
  %.2837.lcssa.i = phi i32 [ %.1836.lcssa.i, %.preheader1097.i ], [ %i.bty, %.preheader1089.loopexit.i ] ; 4 uses
  %i.btz = icmp slt i32 %.2837.lcssa.i, %i.rh
  br i1 %i.btz, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL35convolution_transform_kernel_packedERKNS_3MatERS0_iiii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1089.i
  %i.bua = load ptr, ptr %i.acg, align 8, !tbaa !37 ; 17 uses
  %i.bub = mul i32 %i.aci, %i.cj                  ; 3 uses
  %i.buc = load ptr, ptr %i.ach, align 8, !tbaa !37, !noalias !284
  %i.bud = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bue = load i64, ptr %i.bud, align 8, !tbaa !38, !noalias !284
  %i.buf = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bug = load i64, ptr %i.buf, align 8, !tbaa !79, !noalias !284
  %factor.op.mul1464.i = mul i64 %i.bug, %i.bue
  %i.buh = icmp sgt i32 %i.cj, 7
  %i.bui = icmp sgt i32 %i.aci, 0                 ; 3 uses
  %i.buj = sext i32 %i.aci to i64                 ; 43 uses
  %i.buk = shl i32 %i.aci, 3                      ; 2 uses
  %i.bul = sext i32 %i.buk to i64                 ; 3 uses
  %i.bum = shl i32 %i.aci, 2                      ; 2 uses
  %i.bun = sext i32 %i.bum to i64                 ; 3 uses
  %i.buo = shl i32 %i.aci, 1                      ; 2 uses
  %i.bup = sext i32 %i.buo to i64                 ; 2 uses
  %i.buq = icmp slt i32 %i.aci, 1
  %i.bur = add i32 %i.cj, -8                      ; 3 uses
  %i.bus = lshr i32 %i.bur, 1
  %i.but = and i32 %i.bus, 2147483644
  %narrow1838.i = add nuw i32 %i.but, 4
  %i.buu = zext i32 %narrow1838.i to i64
  %i.buv = mul nsw i64 %i.bul, %i.buu
  %scevgep1778.i = getelementptr i8, ptr %i.bua, i64 %i.buv
  %i.buw = mul i32 %i.bub, %.2837.lcssa.i
  %i.bux = and i32 %i.bur, -8
  %i.buy = add nuw i32 %i.bux, 8                  ; 4 uses
  %i.buz = add i32 %i.cj, -4
  %i.bva = sext i32 %.2837.lcssa.i to i64
  %wide.trip.count1810.i = sext i32 %i.rh to i64
  %i.bvb = or disjoint i32 %i.buy, 3
  %i.bvc = icmp slt i32 %i.bvb, %i.cj
  %wide.trip.count1786.i = zext i32 %i.aci to i64 ; 27 uses
  %i.bvd = shl nuw nsw i64 %wide.trip.count1786.i, 3
  %i.bve = shl nsw i64 %i.buj, 2                  ; 2 uses
  %i.bvf = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 2 uses
  %i.bvg = shl nsw i64 %i.bup, 2
  %i.bvh = add i32 %i.cj, -2
  %i.bvi = shl nuw nsw i64 %wide.trip.count1786.i, 4
  %i.bvj = mul nsw i64 %i.buj, 12                 ; 2 uses
  %i.bvk = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 4 uses
  %i.bvl = shl nsw i64 %i.bun, 2
  %i.bvm = add i32 %i.cj, -4
  %i.bvn = shl nsw i64 %i.buj, 3                  ; 2 uses
  %i.bvo = shl nsw i64 %i.buj, 2                  ; 2 uses
  %i.bvp = shl nuw nsw i64 %wide.trip.count1786.i, 5
  %i.bvq = mul nsw i64 %i.buj, 28                 ; 2 uses
  %scevgep1111 = getelementptr i8, ptr %i.bua, i64 %i.bvq
  %i.bvr = mul i32 %.2837.lcssa.i, %i.ri
  %i.bvs = mul i32 %i.bvr, %i.rk
  %i.bvt = mul i32 %i.bvs, %i.cj
  %i.bvu = mul i32 %i.ri, %i.rk
  %i.bvv = mul i32 %i.bvu, %i.cj
  %i.bvw = lshr i32 %i.bur, 3
  %i.bvx = zext nneg i32 %i.bvw to i64
  %i.bvy = mul nsw i64 %i.bvx, %i.bul
  %i.bvz = shl nsw i64 %i.bvy, 2                  ; 8 uses
  %i.bwa = shl nuw nsw i64 %wide.trip.count1786.i, 2 ; 8 uses
  %i.bwb = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwc = getelementptr i8, ptr %i.bwb, i64 %i.bvq
  %scevgep1113 = getelementptr i8, ptr %i.bwc, i64 %i.bwa
  %i.bwd = mul nsw i64 %i.buj, 24                 ; 2 uses
  %scevgep1115 = getelementptr i8, ptr %i.bua, i64 %i.bwd
  %i.bwe = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwf = getelementptr i8, ptr %i.bwe, i64 %i.bwd
  %scevgep1117 = getelementptr i8, ptr %i.bwf, i64 %i.bwa
  %i.bwg = mul nsw i64 %i.buj, 20                 ; 2 uses
  %scevgep1119 = getelementptr i8, ptr %i.bua, i64 %i.bwg
  %i.bwh = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwi = getelementptr i8, ptr %i.bwh, i64 %i.bwg
  %scevgep1121 = getelementptr i8, ptr %i.bwi, i64 %i.bwa
  %i.bwj = shl nsw i64 %i.buj, 4                  ; 2 uses
  %scevgep1123 = getelementptr i8, ptr %i.bua, i64 %i.bwj
  %i.bwk = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwl = getelementptr i8, ptr %i.bwk, i64 %i.bwj
  %scevgep1125 = getelementptr i8, ptr %i.bwl, i64 %i.bwa
  %i.bwm = mul nsw i64 %i.buj, 12                 ; 2 uses
  %scevgep1127 = getelementptr i8, ptr %i.bua, i64 %i.bwm
  %i.bwn = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwo = getelementptr i8, ptr %i.bwn, i64 %i.bwm
  %scevgep1129 = getelementptr i8, ptr %i.bwo, i64 %i.bwa
  %i.bwp = shl nsw i64 %i.buj, 3                  ; 2 uses
  %scevgep1131 = getelementptr i8, ptr %i.bua, i64 %i.bwp
  %i.bwq = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwr = getelementptr i8, ptr %i.bwq, i64 %i.bwp
  %scevgep1133 = getelementptr i8, ptr %i.bwr, i64 %i.bwa
  %i.bws = shl nsw i64 %i.buj, 2                  ; 2 uses
  %scevgep1135 = getelementptr i8, ptr %i.bua, i64 %i.bws
  %i.bwt = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %i.bwu = getelementptr i8, ptr %i.bwt, i64 %i.bws
  %scevgep1137 = getelementptr i8, ptr %i.bwu, i64 %i.bwa
  %i.bwv = getelementptr i8, ptr %i.bua, i64 %i.bvz
  %scevgep1139 = getelementptr i8, ptr %i.bwv, i64 %i.bwa
  %min.iters.check1174 = icmp ult i32 %i.aci, 16
  %stride.check1144 = icmp slt i32 %i.buk, 0
  %n.vec1176 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bww = shl nuw nsw i64 %n.vec1176, 5
  %cmp.n1191 = icmp eq i64 %n.vec1176, %wide.trip.count1786.i
  %min.iters.check1093 = icmp ult i32 %i.aci, 8
  %stride.check1079 = icmp slt i32 %i.bum, 0
  %n.vec1095 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bwx = shl nuw nsw i64 %n.vec1095, 4
  %cmp.n1106 = icmp eq i64 %n.vec1095, %wide.trip.count1786.i
  %xtraiter1289 = and i64 %wide.trip.count1786.i, 1
  %lcmp.mod1290.not = icmp eq i64 %xtraiter1289, 0
  %i.bwy = add nsw i64 %wide.trip.count1786.i, -1
  %min.iters.check1045 = icmp ult i32 %i.aci, 8
  %stride.check1039 = icmp slt i32 %i.buo, 0
  %n.vec1047 = and i64 %wide.trip.count1786.i, 2147483644 ; 4 uses
  %i.bwz = shl nuw nsw i64 %n.vec1047, 3
  %cmp.n1060 = icmp eq i64 %n.vec1047, %wide.trip.count1786.i
  %xtraiter1292 = and i64 %wide.trip.count1786.i, 3 ; 2 uses
  %lcmp.mod1293.not = icmp eq i64 %xtraiter1292, 0
  %min.iters.check1007 = icmp ult i32 %i.aci, 8
  %min.iters.check1008 = icmp ult i32 %i.aci, 32
  %i.bxa = and i64 %wide.trip.count1786.i, 24
  %n.vec1010 = and i64 %wide.trip.count1786.i, 2147483616 ; 5 uses
  %i.bxb = shl nuw nsw i64 %n.vec1010, 2
  %cmp.n1020 = icmp eq i64 %n.vec1010, %wide.trip.count1786.i
  %min.epilog.iters.check = icmp eq i64 %i.bxa, 0
  %n.vec1021 = and i64 %wide.trip.count1786.i, 2147483640 ; 4 uses
  %i.bxc = shl nuw nsw i64 %n.vec1021, 2
  %cmp.n1026 = icmp eq i64 %n.vec1021, %wide.trip.count1786.i
  %xtraiter1295 = and i64 %wide.trip.count1786.i, 7 ; 2 uses
  %lcmp.mod1296.not = icmp eq i64 %xtraiter1295, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i226

_ZN4ncnn3MatD2Ev.exit1005.i:                      ; preds = %._crit_edge1402.split.i, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i
  %indvars.iv1775.i = phi i64 [ %i.bgn, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1776.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1747.i = phi i32 [ %i.bgj, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1748.i, %._crit_edge1402.split.i ] ; 2 uses
  %indvars.iv1743.i = phi i32 [ %i.bgh, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %indvars.iv.next1744.i, %._crit_edge1402.split.i ] ; 2 uses
  %i.bxd = phi i32 [ %i.bez, %_ZN4ncnn3MatD2Ev.exit1005.lr.ph.i ], [ %i.chd, %._crit_edge1402.split.i ]
  %i.bxe = sext i32 %indvars.iv1743.i to i64
  %i.bxf = shl nsw i64 %i.bxe, 2
  %scevgep1745.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxf ; 2 uses
  %i.bxg = sext i32 %indvars.iv1747.i to i64
  %i.bxh = shl nsw i64 %i.bxg, 2
  %scevgep1749.i = getelementptr i8, ptr %scevgep1742.i, i64 %i.bxh ; 2 uses
  %i.bxi = trunc i64 %indvars.iv1775.i to i32     ; 4 uses
  %i.bxj = mul i32 %i.bfc, %i.bxi
  %i.bxk = sext i32 %i.bxj to i64
  %i.bxl = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxk ; 2 uses
  %i.bxm = mul i32 %i.bxd, %i.bfc
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr inbounds [4 x i8], ptr %i.bfb, i64 %i.bxn ; 2 uses
  %i.bxp = lshr i32 %i.bxi, 3
  %i.bxq = lshr i32 %i.bxi, 2
  %i.bxr = and i32 %i.bxq, 1
  %i.bxs = add nuw nsw i32 %i.bxr, %i.bxp
  %i.bxt = lshr i32 %i.bxi, 1
  %i.bxu = and i32 %i.bxt, 1
  %i.bxv = add nuw nsw i32 %i.bxs, %i.bxu
  %i.bxw = zext nneg i32 %i.bxv to i64
  %.reass1406.i = mul i64 %factor.op.mul1405.i, %i.bxw
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bfd, i64 %.reass1406.i ; 4 uses
  br i1 %i.bfi, label %.preheader1093.lr.ph.i, label %.preheader1096.i

.preheader1093.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1005.i
  br i1 %i.bfj, label %.preheader1093.us.i, label %.preheader1096.thread.i

.preheader1093.us.i:                              ; preds = %.preheader1093.lr.ph.i, %._crit_edge1346.us.i
  %.08611351.us.i = phi i32 [ %i.bzw, %._crit_edge1346.us.i ], [ 0, %.preheader1093.lr.ph.i ]
  %.08651350.us.i = phi ptr [ %i.bzt, %._crit_edge1346.us.i ], [ %i.bxx, %.preheader1093.lr.ph.i ]
  %.08741349.us.i = phi ptr [ %i.bzv, %._crit_edge1346.us.i ], [ %i.bxo, %.preheader1093.lr.ph.i ] ; 2 uses
  %.08771348.us.i = phi ptr [ %i.bzu, %._crit_edge1346.us.i ], [ %i.bxl, %.preheader1093.lr.ph.i ] ; 2 uses
  br label %bb.kd

bb.kd:                                            ; preds = %bb.kd, %.preheader1093.us.i
  %indvars.iv1750.i = phi i64 [ 0, %.preheader1093.us.i ], [ %indvars.iv.next1751.i, %bb.kd ] ; 3 uses
  %.18661344.us.i = phi ptr [ %.08651350.us.i, %.preheader1093.us.i ], [ %i.bzt, %bb.kd ] ; 17 uses
  %i.bxy = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bxz = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %indvars.iv1750.i ; 8 uses
  %i.bya = load float, ptr %i.bxy, align 4, !tbaa !56
  store float %i.bya, ptr %.18661344.us.i, align 4, !tbaa !56
  %i.byb = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfk
  %i.byc = load float, ptr %i.byb, align 4, !tbaa !56
  %i.byd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 4
  store float %i.byc, ptr %i.byd, align 4, !tbaa !56
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfm
  %i.byf = load float, ptr %i.bye, align 4, !tbaa !56
  %i.byg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 8
  store float %i.byf, ptr %i.byg, align 4, !tbaa !56
  %i.byh = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfo
  %i.byi = load float, ptr %i.byh, align 4, !tbaa !56
  %i.byj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 12
  store float %i.byi, ptr %i.byj, align 4, !tbaa !56
  %i.byk = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfq
  %i.byl = load float, ptr %i.byk, align 4, !tbaa !56
  %i.bym = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 16
  store float %i.byl, ptr %i.bym, align 4, !tbaa !56
  %i.byn = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfs
  %i.byo = load float, ptr %i.byn, align 4, !tbaa !56
  %i.byp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 20
  store float %i.byo, ptr %i.byp, align 4, !tbaa !56
  %i.byq = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfu
  %i.byr = load float, ptr %i.byq, align 4, !tbaa !56
  %i.bys = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 24
  store float %i.byr, ptr %i.bys, align 4, !tbaa !56
  %i.byt = getelementptr inbounds nuw [4 x i8], ptr %i.bxy, i64 %i.bfw
  %i.byu = load float, ptr %i.byt, align 4, !tbaa !56
  %i.byv = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 28
  store float %i.byu, ptr %i.byv, align 4, !tbaa !56
  %i.byw = load float, ptr %i.bxz, align 4, !tbaa !56
  %i.byx = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 32
  store float %i.byw, ptr %i.byx, align 4, !tbaa !56
  %i.byy = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfk
  %i.byz = load float, ptr %i.byy, align 4, !tbaa !56
  %i.bza = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 36
  store float %i.byz, ptr %i.bza, align 4, !tbaa !56
  %i.bzb = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfm
  %i.bzc = load float, ptr %i.bzb, align 4, !tbaa !56
  %i.bzd = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 40
  store float %i.bzc, ptr %i.bzd, align 4, !tbaa !56
  %i.bze = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfo
  %i.bzf = load float, ptr %i.bze, align 4, !tbaa !56
  %i.bzg = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 44
  store float %i.bzf, ptr %i.bzg, align 4, !tbaa !56
  %i.bzh = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfq
  %i.bzi = load float, ptr %i.bzh, align 4, !tbaa !56
  %i.bzj = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 48
  store float %i.bzi, ptr %i.bzj, align 4, !tbaa !56
  %i.bzk = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfs
  %i.bzl = load float, ptr %i.bzk, align 4, !tbaa !56
  %i.bzm = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 52
  store float %i.bzl, ptr %i.bzm, align 4, !tbaa !56
  %i.bzn = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfu
  %i.bzo = load float, ptr %i.bzn, align 4, !tbaa !56
  %i.bzp = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 56
  store float %i.bzo, ptr %i.bzp, align 4, !tbaa !56
  %i.bzq = getelementptr inbounds nuw [4 x i8], ptr %i.bxz, i64 %i.bfw
  %i.bzr = load float, ptr %i.bzq, align 4, !tbaa !56
  %i.bzs = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 60
  store float %i.bzr, ptr %i.bzs, align 4, !tbaa !56
  %i.bzt = getelementptr inbounds nuw i8, ptr %.18661344.us.i, i64 64 ; 3 uses
  %indvars.iv.next1751.i = add nuw nsw i64 %indvars.iv1750.i, 1 ; 2 uses
  %exitcond1754.not.i = icmp eq i64 %indvars.iv.next1751.i, %wide.trip.count1753.i
  br i1 %exitcond1754.not.i, label %._crit_edge1346.us.i, label %bb.kd, !llvm.loop !184

._crit_edge1346.us.i:                             ; preds = %bb.kd
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr %.08771348.us.i, i64 %i.bfy ; 2 uses
  %i.bzv = getelementptr inbounds nuw [4 x i8], ptr %.08741349.us.i, i64 %i.bfy ; 2 uses
  %i.bzw = add nuw nsw i32 %.08611351.us.i, 8     ; 2 uses
  %i.bzx = or disjoint i32 %i.bzw, 7
  %i.bzy = icmp slt i32 %i.bzx, %i.cj
  br i1 %i.bzy, label %.preheader1093.us.i, label %.preheader1096.i, !llvm.loop !185

.preheader1096.i:                                 ; preds = %._crit_edge1346.us.i, %_ZN4ncnn3MatD2Ev.exit1005.i
  %.0877.lcssa.i = phi ptr [ %i.bxl, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzu, %._crit_edge1346.us.i ] ; 11 uses
  %.0874.lcssa.i = phi ptr [ %i.bxo, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzv, %._crit_edge1346.us.i ] ; 11 uses
  %.0865.lcssa.i = phi ptr [ %i.bxx, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bzt, %._crit_edge1346.us.i ] ; 3 uses
  %.0861.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1005.i ], [ %i.bgl, %._crit_edge1346.us.i ] ; 5 uses
  %i.bzz = or disjoint i32 %.0861.lcssa.i, 3
  %i.caa = icmp slt i32 %i.bzz, %i.cj
  br i1 %i.caa, label %.preheader1092.lr.ph.i, label %.preheader1095.i

.preheader1096.thread.i:                          ; preds = %.preheader1093.lr.ph.i
  br i1 %i.bgq, label %.preheader1092.preheader.i, label %.preheader1095.i

.preheader1092.lr.ph.i:                           ; preds = %.preheader1096.i
  br i1 %i.bfj, label %.preheader1092.us.i.preheader, label %.preheader1092.preheader.i

.preheader1092.us.i.preheader:                    ; preds = %.preheader1092.lr.ph.i
  %scevgep928 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bgz
  %scevgep929 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhb
  %i.cab = sub i32 %i.bhd, %.0861.lcssa.i
  %i.cac = lshr i32 %i.cab, 2
  %i.cad = zext nneg i32 %i.cac to i64
  %i.cae = mul nsw i64 %i.bhc, %i.cad             ; 8 uses
  %scevgep930 = getelementptr i8, ptr %scevgep929, i64 %i.cae
  %scevgep931 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhe
  %scevgep932 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhf
  %scevgep933 = getelementptr i8, ptr %scevgep932, i64 %i.cae
  %scevgep934 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhg
  %scevgep935 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bhh
  %scevgep936 = getelementptr i8, ptr %scevgep935, i64 %i.cae
  %scevgep937 = getelementptr i8, ptr %.0874.lcssa.i, i64 %i.bha
  %scevgep938 = getelementptr i8, ptr %scevgep937, i64 %i.cae
  %scevgep939 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bgz
  %scevgep940 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhb
  %scevgep941 = getelementptr i8, ptr %scevgep940, i64 %i.cae
  %scevgep942 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhe
  %scevgep943 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhf
  %scevgep944 = getelementptr i8, ptr %scevgep943, i64 %i.cae
  %scevgep945 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhg
  %scevgep946 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bhh
  %scevgep947 = getelementptr i8, ptr %scevgep946, i64 %i.cae
  %scevgep948 = getelementptr i8, ptr %.0877.lcssa.i, i64 %i.bha
end_hunk_2
begin_hunk_3_@_ZN4ncnnL28convolution_im2col_gemm_int8ERKNS_3MatERS0_S2_iiiiiiiRKNS_6OptionE.omp_outlined.14:bb.a
  %i.li = shufflevector <8 x float> %i.kw, <8 x float> %i.ky, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.lj = bitcast <8 x float> %i.li to <8 x i32>  ; 2 uses
  %i.lk = shufflevector <8 x float> %i.kx, <8 x float> %i.kz, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ll = bitcast <8 x float> %i.lk to <8 x i32>  ; 2 uses
  %i.lm = shufflevector <8 x i32> %i.le, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.lm, ptr %.4620995.i, align 1, !tbaa !114
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.4620995.i, i64 %i.dc
  %i.lo = shufflevector <8 x i32> %i.lf, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.lo, ptr %i.ln, align 1, !tbaa !114
  %i.lp = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx691.i
  %i.lq = shufflevector <8 x i32> %i.lg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.lq, ptr %i.lp, align 1, !tbaa !114
  %i.lr = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx692.i
  %i.ls = shufflevector <8 x i32> %i.lh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ls, ptr %i.lr, align 1, !tbaa !114
  %i.lt = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx693.i
  %i.lu = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.lu, ptr %i.lt, align 1, !tbaa !114
  %i.lv = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx694.i
  %i.lw = shufflevector <8 x i32> %i.lj, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.lw, ptr %i.lv, align 1, !tbaa !114
  %i.lx = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx695.i
  %i.ly = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ly, ptr %i.lx, align 1, !tbaa !114
  %i.lz = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 %.idx696.i
  %i.ma = shufflevector <8 x i32> %i.ll, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x i32> %i.ma, ptr %i.lz, align 1, !tbaa !114
  %i.mb = getelementptr inbounds nuw i8, ptr %.4620995.i, i64 16
  br label %.thread945.i

.thread945.i:                                     ; preds = %bb.s, %bb.r, %.thread942.i, %.lr.ph998.i
  %.7623.i = phi ptr [ %i.mb, %bb.s ], [ %.4620995.i, %.lr.ph998.i ], [ %i.kh, %.thread942.i ], [ %i.kt, %bb.r ] ; 2 uses
  %i.mc = add nuw nsw i32 %.1641994.i, 4          ; 3 uses
  %i.md = or disjoint i32 %i.mc, 3
  %i.me = icmp slt i32 %i.md, %.sroa.speculated114
  br i1 %i.me, label %.lr.ph998.i, label %.preheader985.i, !llvm.loop !1999

.preheader984.i:                                  ; preds = %.thread950.i, %.preheader985.i
  %.2642.lcssa.i = phi i32 [ %.1641.lcssa.i, %.preheader985.i ], [ %i.nk, %.thread950.i ] ; 2 uses
  %.8624.lcssa.i = phi ptr [ %.4620.lcssa.i, %.preheader985.i ], [ %.11627.i, %.thread950.i ]
  %.3614.lcssa.i = phi ptr [ %.2613.lcssa.i, %.preheader985.i ], [ %i.ml, %.thread950.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader985.i ], [ %i.mk, %.thread950.i ]
  %i.mf = icmp slt i32 %.2642.lcssa.i, %.sroa.speculated114
  br i1 %i.mf, label %.lr.ph1016.i, label %._crit_edge.i

.lr.ph1007.i:                                     ; preds = %.preheader985.i, %.thread950.i
  %.31006.i = phi ptr [ %i.mk, %.thread950.i ], [ %.2.lcssa.i, %.preheader985.i ] ; 2 uses
  %.36141005.i = phi ptr [ %i.ml, %.thread950.i ], [ %.2613.lcssa.i, %.preheader985.i ] ; 2 uses
  %.86241004.i = phi ptr [ %.11627.i, %.thread950.i ], [ %.4620.lcssa.i, %.preheader985.i ] ; 16 uses
  %.26421003.i = phi i32 [ %i.nk, %.thread950.i ], [ %.1641.lcssa.i, %.preheader985.i ]
  %i.mg = load <8 x i32>, ptr %.31006.i, align 1, !tbaa !114 ; 2 uses
  %i.mh = load <8 x i32>, ptr %.36141005.i, align 1, !tbaa !114 ; 7 uses
  %i.mi = shufflevector <8 x i32> %i.mg, <8 x i32> %i.mh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.mj = shufflevector <8 x i32> %i.mg, <8 x i32> %i.mh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.31006.i, i64 32 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.36141005.i, i64 32 ; 2 uses
  %i.mm = shufflevector <8 x i32> %i.mi, <8 x i32> %i.mj, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 6 uses
  %i.mn = shufflevector <8 x i32> %i.mj, <8 x i32> %i.mi, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 6 uses
  switch i32 %i.db, label %.thread950.i [
    i32 8, label %.thread947.i
    i32 4, label %bb.t
    i32 1, label %bb.u
  ]

.thread947.i:                                     ; preds = %.lr.ph1007.i
  store <8 x i32> %i.mm, ptr %.86241004.i, align 1, !tbaa !114
  %i.mo = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 32
  store <8 x i32> %i.mn, ptr %i.mo, align 1, !tbaa !114
  %i.mp = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 64
  br label %.thread950.i

bb.t:                                             ; preds = %.lr.ph1007.i
  %i.mq = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.mr = shufflevector <8 x i32> %i.mh, <8 x i32> poison, <8 x i32> <i32 0, i32 5, i32 2, i32 7, i32 4, i32 1, i32 6, i32 3>
  store <8 x i32> %i.mq, ptr %.86241004.i, align 1, !tbaa !114
  %i.ms = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx693.i
  store <8 x i32> %i.mr, ptr %i.ms, align 1, !tbaa !114
  %i.mt = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 32
  br label %.thread950.i

bb.u:                                             ; preds = %.lr.ph1007.i
  %i.mu = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mn, <2 x i32> <i32 0, i32 8>
  store <2 x i32> %i.mu, ptr %.86241004.i, align 4, !tbaa !81
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %.86241004.i, i64 %i.dc
  %i.mw = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mn, <2 x i32> <i32 1, i32 9>
  store <2 x i32> %i.mw, ptr %i.mv, align 4, !tbaa !81
  %i.mx = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx691.i
  %i.my = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mn, <2 x i32> <i32 2, i32 10>
  store <2 x i32> %i.my, ptr %i.mx, align 4, !tbaa !81
  %i.mz = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx692.i
  %i.na = shufflevector <8 x i32> %i.mm, <8 x i32> %i.mn, <2 x i32> <i32 3, i32 11>
  store <2 x i32> %i.na, ptr %i.mz, align 4, !tbaa !81
  %i.nb = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx693.i
  %i.nc = shufflevector <8 x i32> %i.mh, <8 x i32> poison, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.nc, ptr %i.nb, align 4, !tbaa !81
  %i.nd = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx694.i
  %i.ne = shufflevector <8 x i32> %i.mh, <8 x i32> poison, <2 x i32> <i32 5, i32 1>
  store <2 x i32> %i.ne, ptr %i.nd, align 4, !tbaa !81
  %i.nf = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx695.i
  %i.ng = shufflevector <8 x i32> %i.mh, <8 x i32> poison, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ng, ptr %i.nf, align 4, !tbaa !81
  %i.nh = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 %.idx696.i
  %i.ni = shufflevector <8 x i32> %i.mh, <8 x i32> poison, <2 x i32> <i32 7, i32 3>
  store <2 x i32> %i.ni, ptr %i.nh, align 4, !tbaa !81
  %i.nj = getelementptr inbounds nuw i8, ptr %.86241004.i, i64 8
  br label %.thread950.i

.thread950.i:                                     ; preds = %bb.u, %bb.t, %.thread947.i, %.lr.ph1007.i
  %.11627.i = phi ptr [ %i.nj, %bb.u ], [ %.86241004.i, %.lr.ph1007.i ], [ %i.mp, %.thread947.i ], [ %i.mt, %bb.t ] ; 2 uses
  %i.nk = add nuw nsw i32 %.26421003.i, 2         ; 3 uses
  %i.nl = or disjoint i32 %i.nk, 1
  %i.nm = icmp slt i32 %i.nl, %.sroa.speculated114
  br i1 %i.nm, label %.lr.ph1007.i, label %.preheader984.i, !llvm.loop !2000

.lr.ph1016.i:                                     ; preds = %.preheader984.i, %.thread955.i
  %.41015.i = phi ptr [ %i.np, %.thread955.i ], [ %.3.lcssa.i, %.preheader984.i ] ; 2 uses
  %.46151014.i = phi ptr [ %i.nq, %.thread955.i ], [ %.3614.lcssa.i, %.preheader984.i ] ; 2 uses
  %.126281013.i = phi ptr [ %.15631.i, %.thread955.i ], [ %.8624.lcssa.i, %.preheader984.i ] ; 15 uses
  %.36431012.i = phi i32 [ %i.of, %.thread955.i ], [ %.2642.lcssa.i, %.preheader984.i ]
  %i.nn = load <2 x i64>, ptr %.41015.i, align 16, !tbaa !114 ; 3 uses
  %i.no = load <2 x i64>, ptr %.46151014.i, align 16, !tbaa !114 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.41015.i, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %.46151014.i, i64 16 ; 2 uses
  switch i32 %i.db, label %.thread955.i [
    i32 8, label %.thread952.i
    i32 4, label %bb.v
    i32 1, label %bb.w
  ]

.thread952.i:                                     ; preds = %.lr.ph1016.i
  %i.nr = shufflevector <2 x i64> %i.nn, <2 x i64> %i.no, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i64> %i.nr, ptr %.126281013.i, align 1, !tbaa !114
  %i.ns = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 32
  br label %.thread955.i

bb.v:                                             ; preds = %.lr.ph1016.i
  store <2 x i64> %i.nn, ptr %.126281013.i, align 16, !tbaa !114
  %i.nt = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx693.i
  store <2 x i64> %i.no, ptr %i.nt, align 16, !tbaa !114
  %i.nu = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 16
  br label %.thread955.i

bb.w:                                             ; preds = %.lr.ph1016.i
  %i.nv = bitcast <2 x i64> %i.nn to <4 x i32>    ; 4 uses
  %i.nw = bitcast <2 x i64> %i.no to <4 x i32>    ; 4 uses
  %.sroa.0792.0.vec.extract.i = extractelement <4 x i32> %i.nv, i64 0
  store i32 %.sroa.0792.0.vec.extract.i, ptr %.126281013.i, align 4, !tbaa !81
  %.sroa.0792.4.vec.extract.i = extractelement <4 x i32> %i.nv, i64 1
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.126281013.i, i64 %i.dc
  store i32 %.sroa.0792.4.vec.extract.i, ptr %i.nx, align 4, !tbaa !81
  %.sroa.0792.8.vec.extract.i = extractelement <4 x i32> %i.nv, i64 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx691.i
  store i32 %.sroa.0792.8.vec.extract.i, ptr %i.ny, align 4, !tbaa !81
  %.sroa.0792.12.vec.extract.i = extractelement <4 x i32> %i.nv, i64 3
  %i.nz = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx692.i
  store i32 %.sroa.0792.12.vec.extract.i, ptr %i.nz, align 4, !tbaa !81
  %.sroa.0792.16.vec.extract.i = extractelement <4 x i32> %i.nw, i64 0
  %i.oa = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx693.i
  store i32 %.sroa.0792.16.vec.extract.i, ptr %i.oa, align 4, !tbaa !81
  %.sroa.0792.20.vec.extract.i = extractelement <4 x i32> %i.nw, i64 1
  %i.ob = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx694.i
  store i32 %.sroa.0792.20.vec.extract.i, ptr %i.ob, align 4, !tbaa !81
  %.sroa.0792.24.vec.extract.i = extractelement <4 x i32> %i.nw, i64 2
  %i.oc = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx695.i
  store i32 %.sroa.0792.24.vec.extract.i, ptr %i.oc, align 4, !tbaa !81
  %.sroa.0792.28.vec.extract.i = extractelement <4 x i32> %i.nw, i64 3
  %i.od = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 %.idx696.i
  store i32 %.sroa.0792.28.vec.extract.i, ptr %i.od, align 4, !tbaa !81
  %i.oe = getelementptr inbounds nuw i8, ptr %.126281013.i, i64 4
  br label %.thread955.i

.thread955.i:                                     ; preds = %bb.w, %bb.v, %.thread952.i, %.lr.ph1016.i
  %.15631.i = phi ptr [ %i.oe, %bb.w ], [ %.126281013.i, %.lr.ph1016.i ], [ %i.ns, %.thread952.i ], [ %i.nu, %bb.v ]
  %i.of = add nuw nsw i32 %.36431012.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.of, %.sroa.speculated114
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph1016.i, !llvm.loop !2001

._crit_edge.i:                                    ; preds = %.thread955.i, %.preheader984.i
  %.4615.lcssa.i = phi ptr [ %.3614.lcssa.i, %.preheader984.i ], [ %i.nq, %.thread955.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %i.og = or disjoint i64 %indvars.iv.next.i, 7
  %i.oh = icmp samesign ult i64 %i.og, %i.ch
  br i1 %i.oh, label %bb.o, label %.preheader983.loopexit.i, !llvm.loop !2002

.preheader979.loopexit.i:                         ; preds = %._crit_edge1050.i
  %i.oi = trunc nuw nsw i64 %indvars.iv.next1176.i to i32
  br label %.preheader979.i

.preheader979.i:                                  ; preds = %.preheader979.loopexit.i, %.preheader983.i
  %.1608.lcssa.i = phi i32 [ %.0607.lcssa.i, %.preheader983.i ], [ %i.oi, %.preheader979.loopexit.i ] ; 3 uses
  %.5.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader983.i ], [ %.9.lcssa.i, %.preheader979.loopexit.i ] ; 2 uses
  %i.oj = or disjoint i32 %.1608.lcssa.i, 1
  %i.ok = icmp slt i32 %i.oj, %.sroa.speculated118
  br i1 %i.ok, label %.lr.ph1094.i, label %.preheader975.i

.lr.ph1094.i:                                     ; preds = %.preheader979.i
  %i.ol = sext i32 %.044159 to i64
  %i.om = icmp sgt i32 %.sroa.speculated114, 7
  %i.on = and i32 %.sroa.speculated114, -8
  %i.oo = zext nneg i32 %.1608.lcssa.i to i64
  %i.op = shl i64 %i.dc, 2                        ; 2 uses
  br label %bb.ae

bb.x:                                             ; preds = %._crit_edge1050.i, %.lr.ph1061.i
  %indvars.iv1175.i = phi i64 [ %i.dr, %.lr.ph1061.i ], [ %indvars.iv.next1176.i, %._crit_edge1050.i ] ; 2 uses
  %.51060.i = phi ptr [ %.0.lcssa.i, %.lr.ph1061.i ], [ %.9.lcssa.i, %._crit_edge1050.i ] ; 2 uses
  %i.oq = load ptr, ptr %12, align 8, !tbaa !37
  %i.or = add nsw i64 %indvars.iv1175.i, %i.ci
  %i.os = mul i64 %i.or, %i.dc
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.os
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ot, i64 %i.do ; 2 uses
  br i1 %i.dp, label %.lr.ph1028.i, label %.preheader982.i

.preheader982.i:                                  ; preds = %bb.z, %bb.x
  %.0656.lcssa.i = phi i32 [ 0, %bb.x ], [ %i.dq, %bb.z ] ; 3 uses
  %.0644.lcssa.i = phi ptr [ %i.ou, %bb.x ], [ %.2646.i, %bb.z ] ; 2 uses
  %.6.lcssa.i = phi ptr [ %.51060.i, %bb.x ], [ %i.sk, %bb.z ] ; 2 uses
  %i.ov = or disjoint i32 %.0656.lcssa.i, 3
  %i.ow = icmp slt i32 %i.ov, %.sroa.speculated114
  br i1 %i.ow, label %.lr.ph1035.i, label %.preheader981.i

.lr.ph1028.i:                                     ; preds = %bb.x, %bb.z
  %.61026.i = phi ptr [ %i.sk, %bb.z ], [ %.51060.i, %bb.x ] ; 9 uses
  %.06441025.i = phi ptr [ %.2646.i, %bb.z ], [ %i.ou, %bb.x ] ; 16 uses
  %.06561024.i = phi i32 [ %i.sl, %bb.z ], [ 0, %bb.x ]
  %i.ox = load <4 x i32>, ptr %.61026.i, align 16, !tbaa !114 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.61026.i, i64 16
  %i.oz = load <4 x i32>, ptr %i.oy, align 16, !tbaa !114 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.61026.i, i64 32
  %i.pb = load <4 x i32>, ptr %i.pa, align 16, !tbaa !114 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.61026.i, i64 48
  %i.pd = load <4 x i32>, ptr %i.pc, align 16, !tbaa !114 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.61026.i, i64 64
  %i.pf = load <4 x i32>, ptr %i.pe, align 16, !tbaa !114 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.61026.i, i64 80
  %i.ph = load <4 x i32>, ptr %i.pg, align 16, !tbaa !114 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.61026.i, i64 96
  %i.pj = load <4 x i32>, ptr %i.pi, align 16, !tbaa !114 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.61026.i, i64 112
  %i.pl = load <4 x i32>, ptr %i.pk, align 16, !tbaa !114 ; 2 uses
  %i.pm = shufflevector <4 x i32> %i.ox, <4 x i32> %i.pj, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.pn = bitcast <4 x i32> %i.pm to <2 x i64>    ; 2 uses
  %i.po = shufflevector <4 x i32> %i.ox, <4 x i32> %i.pj, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.pp = bitcast <4 x i32> %i.po to <2 x i64>    ; 2 uses
  %i.pq = shufflevector <4 x i32> %i.oz, <4 x i32> %i.pl, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.pr = bitcast <4 x i32> %i.pq to <2 x i64>    ; 2 uses
  %i.ps = shufflevector <4 x i32> %i.oz, <4 x i32> %i.pl, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.pt = bitcast <4 x i32> %i.ps to <2 x i64>    ; 2 uses
  %i.pu = shufflevector <4 x i32> %i.pb, <4 x i32> %i.pf, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.pv = bitcast <4 x i32> %i.pu to <2 x i64>    ; 2 uses
  %i.pw = shufflevector <4 x i32> %i.pb, <4 x i32> %i.pf, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.px = bitcast <4 x i32> %i.pw to <2 x i64>    ; 2 uses
  %i.py = shufflevector <4 x i32> %i.pd, <4 x i32> %i.ph, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.pz = bitcast <4 x i32> %i.py to <2 x i64>    ; 2 uses
  %i.qa = shufflevector <4 x i32> %i.pd, <4 x i32> %i.ph, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.qb = bitcast <4 x i32> %i.qa to <2 x i64>    ; 2 uses
  %i.qc = shufflevector <2 x i64> %i.pn, <2 x i64> %i.pv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qd = shufflevector <2 x i64> %i.pn, <2 x i64> %i.pv, <2 x i32> <i32 1, i32 3>
  %i.qe = shufflevector <2 x i64> %i.px, <2 x i64> %i.pp, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qf = shufflevector <2 x i64> %i.px, <2 x i64> %i.pp, <2 x i32> <i32 1, i32 3>
  %i.qg = shufflevector <2 x i64> %i.pr, <2 x i64> %i.pz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qh = shufflevector <2 x i64> %i.pr, <2 x i64> %i.pz, <2 x i32> <i32 1, i32 3>
  %i.qi = shufflevector <2 x i64> %i.qb, <2 x i64> %i.pt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qj = shufflevector <2 x i64> %i.qb, <2 x i64> %i.pt, <2 x i32> <i32 1, i32 3>
  %i.qk = bitcast <2 x i64> %i.qd to <4 x i32>    ; 3 uses
  %i.ql = bitcast <2 x i64> %i.qf to <4 x i32>    ; 3 uses
  %i.qm = bitcast <2 x i64> %i.qh to <4 x i32>    ; 3 uses
  %i.qn = bitcast <2 x i64> %i.qj to <4 x i32>    ; 3 uses
  switch i32 %i.db, label %bb.z [
    i32 4, label %.thread957.i
    i32 1, label %bb.y
  ]

.thread957.i:                                     ; preds = %.lr.ph1028.i
  %i.qo = shufflevector <4 x i32> %i.qn, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.qp = shufflevector <4 x i32> %i.qm, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.qq = shufflevector <4 x i32> %i.ql, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.qr = shufflevector <4 x i32> %i.qk, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.qc, ptr %.06441025.i, align 16, !tbaa !114
  %i.qs = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 16
  store <4 x i32> %i.qr, ptr %i.qs, align 16, !tbaa !114
  %i.qt = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 32
  store <2 x i64> %i.qe, ptr %i.qt, align 16, !tbaa !114
  %i.qu = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 48
  store <4 x i32> %i.qq, ptr %i.qu, align 16, !tbaa !114
  %i.qv = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 64
  store <2 x i64> %i.qg, ptr %i.qv, align 16, !tbaa !114
  %i.qw = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 80
  store <4 x i32> %i.qp, ptr %i.qw, align 16, !tbaa !114
  %i.qx = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 96
  store <2 x i64> %i.qi, ptr %i.qx, align 16, !tbaa !114
  %i.qy = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 112
  store <4 x i32> %i.qo, ptr %i.qy, align 16, !tbaa !114
  %i.qz = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 128
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph1028.i
  %i.ra = bitcast <2 x i64> %i.qc to <4 x i32>    ; 2 uses
  %i.rb = shufflevector <4 x i32> %i.ra, <4 x i32> %i.qk, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.rc = bitcast <4 x i32> %i.rb to <2 x i64>    ; 2 uses
  %i.rd = shufflevector <4 x i32> %i.ra, <4 x i32> %i.qk, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.re = bitcast <4 x i32> %i.rd to <2 x i64>    ; 2 uses
  %i.rf = bitcast <2 x i64> %i.qe to <4 x i32>    ; 2 uses
  %i.rg = shufflevector <4 x i32> %i.rf, <4 x i32> %i.ql, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.rh = bitcast <4 x i32> %i.rg to <2 x i64>    ; 2 uses
  %i.ri = shufflevector <4 x i32> %i.rf, <4 x i32> %i.ql, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.rj = bitcast <4 x i32> %i.ri to <2 x i64>    ; 2 uses
  %i.rk = shufflevector <2 x i64> %i.rc, <2 x i64> %i.rh, <2 x i32> <i32 0, i32 2>
  %i.rl = shufflevector <2 x i64> %i.rc, <2 x i64> %i.rh, <2 x i32> <i32 1, i32 3>
  %i.rm = shufflevector <2 x i64> %i.re, <2 x i64> %i.rj, <2 x i32> <i32 0, i32 2>
  %i.rn = shufflevector <2 x i64> %i.re, <2 x i64> %i.rj, <2 x i32> <i32 1, i32 3>
  %i.ro = bitcast <2 x i64> %i.qg to <4 x i32>    ; 2 uses
  %i.rp = shufflevector <4 x i32> %i.ro, <4 x i32> %i.qm, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.rq = bitcast <4 x i32> %i.rp to <2 x i64>    ; 2 uses
  %i.rr = shufflevector <4 x i32> %i.ro, <4 x i32> %i.qm, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.rs = bitcast <4 x i32> %i.rr to <2 x i64>    ; 2 uses
  %i.rt = bitcast <2 x i64> %i.qi to <4 x i32>    ; 2 uses
  %i.ru = shufflevector <4 x i32> %i.rt, <4 x i32> %i.qn, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.rv = bitcast <4 x i32> %i.ru to <2 x i64>    ; 2 uses
  %i.rw = shufflevector <4 x i32> %i.rt, <4 x i32> %i.qn, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.rx = bitcast <4 x i32> %i.rw to <2 x i64>    ; 2 uses
  %i.ry = shufflevector <2 x i64> %i.rq, <2 x i64> %i.rv, <2 x i32> <i32 0, i32 2>
  %i.rz = shufflevector <2 x i64> %i.rq, <2 x i64> %i.rv, <2 x i32> <i32 1, i32 3>
  %i.sa = shufflevector <2 x i64> %i.rs, <2 x i64> %i.rx, <2 x i32> <i32 0, i32 2>
  %i.sb = shufflevector <2 x i64> %i.rs, <2 x i64> %i.rx, <2 x i32> <i32 1, i32 3>
  store <2 x i64> %i.rk, ptr %.06441025.i, align 1, !tbaa !114
  %i.sc = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 16
  store <2 x i64> %i.ry, ptr %i.sc, align 1, !tbaa !114
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.06441025.i, i64 %i.dc ; 2 uses
  store <2 x i64> %i.rl, ptr %i.sd, align 1, !tbaa !114
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store <2 x i64> %i.rz, ptr %i.se, align 1, !tbaa !114
  %i.sf = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 %.idx673.i ; 2 uses
  store <2 x i64> %i.rm, ptr %i.sf, align 1, !tbaa !114
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store <2 x i64> %i.sa, ptr %i.sg, align 1, !tbaa !114
  %i.sh = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 %.idx674.i ; 2 uses
  store <2 x i64> %i.rn, ptr %i.sh, align 1, !tbaa !114
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  store <2 x i64> %i.sb, ptr %i.si, align 1, !tbaa !114
  %i.sj = getelementptr inbounds nuw i8, ptr %.06441025.i, i64 32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread957.i, %.lr.ph1028.i
  %.2646.i = phi ptr [ %i.sj, %bb.y ], [ %.06441025.i, %.lr.ph1028.i ], [ %i.qz, %.thread957.i ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.61026.i, i64 128 ; 2 uses
  %i.sl = add nuw nsw i32 %.06561024.i, 8         ; 2 uses
  %i.sm = or disjoint i32 %i.sl, 7
  %i.sn = icmp slt i32 %i.sm, %.sroa.speculated114
  br i1 %i.sn, label %.lr.ph1028.i, label %.preheader982.i, !llvm.loop !2003

.preheader981.i:                                  ; preds = %bb.ab, %.preheader982.i
  %.1657.lcssa.i = phi i32 [ %.0656.lcssa.i, %.preheader982.i ], [ %i.uj, %bb.ab ] ; 3 uses
  %.3647.lcssa.i = phi ptr [ %.0644.lcssa.i, %.preheader982.i ], [ %.5649.i, %bb.ab ] ; 2 uses
  %.7.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader982.i ], [ %i.ui, %bb.ab ] ; 2 uses
  %i.so = or disjoint i32 %.1657.lcssa.i, 1
  %i.sp = icmp slt i32 %i.so, %.sroa.speculated114
  br i1 %i.sp, label %.lr.ph1042.i, label %.preheader980.i

.lr.ph1035.i:                                     ; preds = %.preheader982.i, %bb.ab
  %.71034.i = phi ptr [ %i.ui, %bb.ab ], [ %.6.lcssa.i, %.preheader982.i ] ; 5 uses
  %.36471033.i = phi ptr [ %.5649.i, %bb.ab ], [ %.0644.lcssa.i, %.preheader982.i ] ; 11 uses
  %.16571032.i = phi i32 [ %i.uj, %bb.ab ], [ %.0656.lcssa.i, %.preheader982.i ]
  %i.sq = load <4 x i32>, ptr %.71034.i, align 16, !tbaa !114 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.71034.i, i64 16
  %i.ss = load <4 x i32>, ptr %i.sr, align 16, !tbaa !114 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.71034.i, i64 32
  %i.su = load <4 x i32>, ptr %i.st, align 16, !tbaa !114 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.71034.i, i64 48
  %i.sw = load <4 x i32>, ptr %i.sv, align 16, !tbaa !114 ; 2 uses
  %i.sx = shufflevector <4 x i32> %i.sq, <4 x i32> %i.sw, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.sy = bitcast <4 x i32> %i.sx to <2 x i64>    ; 2 uses
  %i.sz = shufflevector <4 x i32> %i.sq, <4 x i32> %i.sw, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.ta = bitcast <4 x i32> %i.sz to <2 x i64>    ; 2 uses
  %i.tb = shufflevector <4 x i32> %i.su, <4 x i32> %i.ss, <4 x i32> <i32 0, i32 7, i32 1, i32 4>
  %i.tc = bitcast <4 x i32> %i.tb to <2 x i64>    ; 2 uses
  %i.td = shufflevector <4 x i32> %i.su, <4 x i32> %i.ss, <4 x i32> <i32 2, i32 5, i32 3, i32 6>
  %i.te = bitcast <4 x i32> %i.td to <2 x i64>    ; 2 uses
  %i.tf = shufflevector <2 x i64> %i.sy, <2 x i64> %i.tc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tg = shufflevector <2 x i64> %i.sy, <2 x i64> %i.tc, <2 x i32> <i32 1, i32 3>
  %i.th = shufflevector <2 x i64> %i.te, <2 x i64> %i.ta, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ti = shufflevector <2 x i64> %i.te, <2 x i64> %i.ta, <2 x i32> <i32 1, i32 3>
  %i.tj = bitcast <2 x i64> %i.tg to <4 x i32>    ; 3 uses
  %.cast669.i = bitcast <2 x i64> %i.ti to <4 x i32> ; 3 uses
  switch i32 %i.db, label %bb.ab [
    i32 4, label %.thread959.i
    i32 1, label %bb.aa
  ]

.thread959.i:                                     ; preds = %.lr.ph1035.i
  %i.tk = shufflevector <4 x i32> %.cast669.i, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  %i.tl = shufflevector <4 x i32> %i.tj, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <2 x i64> %i.tf, ptr %.36471033.i, align 16, !tbaa !114
  %i.tm = getelementptr inbounds nuw i8, ptr %.36471033.i, i64 16
  store <4 x i32> %i.tl, ptr %i.tm, align 16, !tbaa !114
  %i.tn = getelementptr inbounds nuw i8, ptr %.36471033.i, i64 32
  store <2 x i64> %i.th, ptr %i.tn, align 16, !tbaa !114
  %i.to = getelementptr inbounds nuw i8, ptr %.36471033.i, i64 48
  store <4 x i32> %i.tk, ptr %i.to, align 16, !tbaa !114
  %i.tp = getelementptr inbounds nuw i8, ptr %.36471033.i, i64 64
  br label %bb.ab
end_hunk_3
