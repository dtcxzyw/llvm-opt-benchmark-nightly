Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/avgpool_layer?download=true
inline.NumInlined: 642
inline.NumDeleted: 336
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10avgPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEbE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ff = mul i32 %.fr.i, %.fr35.i
  %i.fg = sext i32 %i.ff to i64                   ; 7 uses
  %i.fh = shl nsw i64 %i.fg, 2                    ; 2 uses
  %i.fi = icmp slt i32 %.fr35.i, 1                ; 4 uses
  %i.fj = select i1 %i.p, float %i.fc, float +inf ; 2 uses
  %i.fk = sext i32 %i.dc to i64                   ; 3 uses
  %i.fl = icmp sgt i32 %i.cp, 0
  %or.cond.i.i.i = select i1 %i.fe, i1 %i.fl, i1 false
  br i1 %or.cond.i.i.i, label %.preheader7.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.preheader7.us.preheader.i.i.i:                   ; preds = %.preheader7.lr.ph.i.i.i
  %i.fm = icmp sgt i32 %i.ej, 0
  %i.fn = sext i32 %.fr35.i to i64                ; 8 uses
  %i.fo = sext i32 %i.ea to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %.fr35.i to i64 ; 26 uses
  %wide.trip.count86.i.i.i = and i64 %i.ei, 2147483647 ; 2 uses
  br i1 %i.fm, label %.preheader7.us.i.us.i.i.preheader, label %.preheader7.us.i.i.preheader.i

.preheader7.us.i.us.i.i.preheader:                ; preds = %.preheader7.us.preheader.i.i.i
  %i.fp = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.fq = shl nsw i64 %i.fg, 2
  %i.fr = shl nsw i64 %i.fn, 2
  %i.fs = shl nsw i64 %i.fn, 2
  %i.ft = add nsw i64 %i.eq, %wide.trip.count.i.i.i
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = shl nsw i64 %i.fk, 2
  %i.fw = mul i32 %i.cl, %i.dk
  %i.fx = add i32 %i.fw, %i.dm
  %i.fy = mul i32 %i.fx, %i.co
  %i.fz = add i32 %i.fy, %i.do
  %i.ga = sub i32 0, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = mul i32 %i.co, %i.cl
  %i.gd = mul i32 %i.gc, %i.de
  %i.ge = zext i32 %i.gd to i64
  %i.gf = mul i32 %i.co, %i.dg
  %i.gg = zext i32 %i.gf to i64
  %i.gh = mul i32 %.fr35.i, %i.di
  %i.gi = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.gj = shl nsw i64 %i.fg, 2
  %i.gk = shl nsw i64 %i.fn, 2
  %i.gl = shl nsw i64 %i.fn, 2
  %i.gm = add nsw i64 %i.eq, %wide.trip.count.i.i.i
  %i.gn = shl nsw i64 %i.gm, 2
  %i.go = shl nsw i64 %i.fk, 2
  %i.gp = getelementptr i8, ptr %i.eo, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.eo, i64 %i.fu
  %min.iters.check131 = icmp ult i32 %.fr35.i, 8
  %n.vec133 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count.i.i.i
  %xtraiter154 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %min.iters.check107 = icmp ult i32 %.fr35.i, 8
  %n.vec109 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec109, %wide.trip.count.i.i.i
  %min.iters.check93 = icmp ult i32 %.fr35.i, 8
  %n.vec95 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec95, %wide.trip.count.i.i.i
  %xtraiter157 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  %min.iters.check69 = icmp ult i32 %.fr35.i, 8
  %n.vec71 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert72 = insertelement <4 x float> poison, float %i.fc, i64 0
  %broadcast.splat73 = shufflevector <4 x float> %broadcast.splatinsert72, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n80 = icmp eq i64 %n.vec71, %wide.trip.count.i.i.i
  br label %.preheader7.us.i.us.i.i

.preheader7.us.i.i.preheader.i:                   ; preds = %.preheader7.us.preheader.i.i.i
  br i1 %i.fi, label %.preheader7.us.i.i.preheader.split.us.i, label %.preheader7.us.i.i.i.preheader

.preheader7.us.i.i.i.preheader:                   ; preds = %.preheader7.us.i.i.preheader.i
  %min.iters.check55 = icmp ult i32 %.fr35.i, 8
  %n.vec57 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.fj, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec57, %wide.trip.count.i.i.i
  %min.iters.check = icmp ult i32 %.fr35.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %.preheader7.us.i.i.i

.preheader7.us.i.i.preheader.split.us.i:          ; preds = %.preheader7.us.i.i.preheader.i
  %i.gr = icmp sgt i32 %.fr.i, -1
  %i.gs = zext nneg i32 %i.cp to i64
  %i.gt = add nsw i32 %i.cp, -1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2                ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, 4
  %i.gx = mul nsw i64 %i.fg, %i.gs
  %i.gy = zext nneg i32 %i.ci to i64
  %i.gz = mul i64 %i.gx, %i.gy
  %i.ha = shl i64 %i.gz, 2                        ; 18 uses
  %i.hb = add nsw i32 %i.ci, -1
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = mul nuw i64 %i.gw, %i.hc
  %i.he = add nuw i64 %i.hd, %i.gv
  %i.hf = add nuw i64 %i.he, 4
  %i.hg = mul i64 %i.hf, %i.fg                    ; 18 uses
  br i1 %i.gr, label %.preheader7.us.i.i.us.us.i.preheader, label %.preheader7.us.i.i.us.i.preheader

.preheader7.us.i.i.us.i.preheader:                ; preds = %.preheader7.us.i.i.preheader.split.us.i
  %i.hh = sub i32 %.val3, %.val2
  %xtraiter = and i32 %i.hh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader7.us.i.i.us.i.prol.loopexit, label %.preheader7.us.i.i.us.i.prol

.preheader7.us.i.i.us.i.prol:                     ; preds = %.preheader7.us.i.i.us.i.preheader, %.preheader7.us.i.i.us.i.prol
  %.016462.us.i.i.us.i.prol = phi i32 [ %i.hi, %.preheader7.us.i.i.us.i.prol ], [ %.val2, %.preheader7.us.i.i.us.i.preheader ]
  %.016561.us.i.i.us.i.prol = phi ptr [ %scevgep.prol, %.preheader7.us.i.i.us.i.prol ], [ %i.fa, %.preheader7.us.i.i.us.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader7.us.i.i.us.i.prol ], [ 0, %.preheader7.us.i.i.us.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.i.prol, i8 0, i64 %i.ha, i1 false)
  %scevgep.prol = getelementptr i8, ptr %.016561.us.i.i.us.i.prol, i64 %i.hg ; 2 uses
  %i.hi = add nsw i32 %.016462.us.i.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader7.us.i.i.us.i.prol.loopexit, label %.preheader7.us.i.i.us.i.prol, !llvm.loop !279

.preheader7.us.i.i.us.i.prol.loopexit:            ; preds = %.preheader7.us.i.i.us.i.prol, %.preheader7.us.i.i.us.i.preheader
  %.016462.us.i.i.us.i.unr = phi i32 [ %.val2, %.preheader7.us.i.i.us.i.preheader ], [ %i.hi, %.preheader7.us.i.i.us.i.prol ]
  %.016561.us.i.i.us.i.unr = phi ptr [ %i.fa, %.preheader7.us.i.i.us.i.preheader ], [ %scevgep.prol, %.preheader7.us.i.i.us.i.prol ]
  %i.hj = sub i32 %.val2, %.val3
  %i.hk = icmp ugt i32 %i.hj, -8
  br i1 %i.hk, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.i

.preheader7.us.i.i.us.us.i.preheader:             ; preds = %.preheader7.us.i.i.preheader.split.us.i
  %i.hl = sub i32 %.val3, %.val2
  %xtraiter151 = and i32 %i.hl, 7                 ; 2 uses
  %lcmp.mod152.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.preheader7.us.i.i.us.us.i.prol.loopexit, label %.preheader7.us.i.i.us.us.i.prol

.preheader7.us.i.i.us.us.i.prol:                  ; preds = %.preheader7.us.i.i.us.us.i.preheader, %.preheader7.us.i.i.us.us.i.prol
  %.016462.us.i.i.us.us.i.prol = phi i32 [ %i.hm, %.preheader7.us.i.i.us.us.i.prol ], [ %.val2, %.preheader7.us.i.i.us.us.i.preheader ]
  %.016561.us.i.i.us.us.i.prol = phi ptr [ %scevgep12.prol, %.preheader7.us.i.i.us.us.i.prol ], [ %i.fa, %.preheader7.us.i.i.us.us.i.preheader ] ; 2 uses
  %prol.iter153 = phi i32 [ %prol.iter153.next, %.preheader7.us.i.i.us.us.i.prol ], [ 0, %.preheader7.us.i.i.us.us.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.us.i.prol, i8 0, i64 %i.ha, i1 false)
  %scevgep12.prol = getelementptr i8, ptr %.016561.us.i.i.us.us.i.prol, i64 %i.hg ; 2 uses
  %i.hm = add nsw i32 %.016462.us.i.i.us.us.i.prol, 1 ; 2 uses
  %prol.iter153.next = add i32 %prol.iter153, 1   ; 2 uses
  %prol.iter153.cmp.not = icmp eq i32 %prol.iter153.next, %xtraiter151
  br i1 %prol.iter153.cmp.not, label %.preheader7.us.i.i.us.us.i.prol.loopexit, label %.preheader7.us.i.i.us.us.i.prol, !llvm.loop !280

.preheader7.us.i.i.us.us.i.prol.loopexit:         ; preds = %.preheader7.us.i.i.us.us.i.prol, %.preheader7.us.i.i.us.us.i.preheader
  %.016462.us.i.i.us.us.i.unr = phi i32 [ %.val2, %.preheader7.us.i.i.us.us.i.preheader ], [ %i.hm, %.preheader7.us.i.i.us.us.i.prol ]
  %.016561.us.i.i.us.us.i.unr = phi ptr [ %i.fa, %.preheader7.us.i.i.us.us.i.preheader ], [ %scevgep12.prol, %.preheader7.us.i.i.us.us.i.prol ]
  %i.hn = sub i32 %.val2, %.val3
  %i.ho = icmp ugt i32 %i.hn, -8
  br i1 %i.ho, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.us.i

.preheader7.us.i.i.us.us.i:                       ; preds = %.preheader7.us.i.i.us.us.i.prol.loopexit, %.preheader7.us.i.i.us.us.i
  %.016462.us.i.i.us.us.i = phi i32 [ %i.hp, %.preheader7.us.i.i.us.us.i ], [ %.016462.us.i.i.us.us.i.unr, %.preheader7.us.i.i.us.us.i.prol.loopexit ]
  %.016561.us.i.i.us.us.i = phi ptr [ %scevgep12.7, %.preheader7.us.i.i.us.us.i ], [ %.016561.us.i.i.us.us.i.unr, %.preheader7.us.i.i.us.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.us.i, i8 0, i64 %i.ha, i1 false)
  %scevgep12 = getelementptr i8, ptr %.016561.us.i.i.us.us.i, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12, i8 0, i64 %i.ha, i1 false)
  %scevgep12.1 = getelementptr i8, ptr %scevgep12, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.1, i8 0, i64 %i.ha, i1 false)
  %scevgep12.2 = getelementptr i8, ptr %scevgep12.1, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.2, i8 0, i64 %i.ha, i1 false)
  %scevgep12.3 = getelementptr i8, ptr %scevgep12.2, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.3, i8 0, i64 %i.ha, i1 false)
  %scevgep12.4 = getelementptr i8, ptr %scevgep12.3, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.4, i8 0, i64 %i.ha, i1 false)
  %scevgep12.5 = getelementptr i8, ptr %scevgep12.4, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.5, i8 0, i64 %i.ha, i1 false)
  %scevgep12.6 = getelementptr i8, ptr %scevgep12.5, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.6, i8 0, i64 %i.ha, i1 false)
  %scevgep12.7 = getelementptr i8, ptr %scevgep12.6, i64 %i.hg
  %i.hp = add nsw i32 %.016462.us.i.i.us.us.i, 8  ; 2 uses
  %exitcond119.not.i.i.us.us.i.7 = icmp eq i32 %i.hp, %.val3
  br i1 %exitcond119.not.i.i.us.us.i.7, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.us.i, !llvm.loop !281

.preheader7.us.i.i.us.i:                          ; preds = %.preheader7.us.i.i.us.i.prol.loopexit, %.preheader7.us.i.i.us.i
  %.016462.us.i.i.us.i = phi i32 [ %i.hq, %.preheader7.us.i.i.us.i ], [ %.016462.us.i.i.us.i.unr, %.preheader7.us.i.i.us.i.prol.loopexit ]
  %.016561.us.i.i.us.i = phi ptr [ %scevgep.7, %.preheader7.us.i.i.us.i ], [ %.016561.us.i.i.us.i.unr, %.preheader7.us.i.i.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.i, i8 0, i64 %i.ha, i1 false)
  %scevgep = getelementptr i8, ptr %.016561.us.i.i.us.i, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ha, i1 false)
  %scevgep.1 = getelementptr i8, ptr %scevgep, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ha, i1 false)
  %scevgep.2 = getelementptr i8, ptr %scevgep.1, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ha, i1 false)
  %scevgep.3 = getelementptr i8, ptr %scevgep.2, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ha, i1 false)
  %scevgep.4 = getelementptr i8, ptr %scevgep.3, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4, i8 0, i64 %i.ha, i1 false)
  %scevgep.5 = getelementptr i8, ptr %scevgep.4, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5, i8 0, i64 %i.ha, i1 false)
  %scevgep.6 = getelementptr i8, ptr %scevgep.5, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6, i8 0, i64 %i.ha, i1 false)
  %scevgep.7 = getelementptr i8, ptr %scevgep.6, i64 %i.hg
  %i.hq = add nsw i32 %.016462.us.i.i.us.i, 8     ; 2 uses
  %exitcond119.not.i.i.us.i.7 = icmp eq i32 %i.hq, %.val3
  br i1 %exitcond119.not.i.i.us.i.7, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.i, !llvm.loop !281

.preheader7.us.i.us.i.i:                          ; preds = %.preheader7.us.i.us.i.i.preheader, %._crit_edge47.split.us.us.i.split.us.us.i.i
  %indvar85 = phi i64 [ 0, %.preheader7.us.i.us.i.i.preheader ], [ %indvar.next86, %._crit_edge47.split.us.us.i.split.us.us.i.i ] ; 3 uses
  %.016462.us.i.us.i.i = phi i32 [ %.val2, %.preheader7.us.i.us.i.i.preheader ], [ %i.nq, %._crit_edge47.split.us.us.i.split.us.us.i.i ]
  %.016561.us.i.us.i.i = phi ptr [ %i.fa, %.preheader7.us.i.us.i.i.preheader ], [ %i.no, %._crit_edge47.split.us.us.i.split.us.us.i.i ]
  %.016859.us.i.us.i.i = phi ptr [ %i.er, %.preheader7.us.i.us.i.i.preheader ], [ %i.nr, %._crit_edge47.split.us.us.i.split.us.us.i.i ] ; 4 uses
  %i.hr = mul i64 %i.go, %indvar85
  %scevgep125.a = getelementptr i8, ptr %i.gp, i64 %i.hr
  %i.hs = mul i64 %i.fv, %indvar85
  %scevgep87 = getelementptr i8, ptr %i.gq, i64 %i.hs
  br label %.lr.ph41.us.us.i.us.us.i.i

.lr.ph41.us.us.i.us.us.i.i:                       ; preds = %._crit_edge42.us.us.i.split.us.us.us.i.i, %.preheader7.us.i.us.i.i
  %indvar88 = phi i64 [ %indvar.next89, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ 0, %.preheader7.us.i.us.i.i ] ; 2 uses
  %.016345.us.us.i.us.us.i.i = phi i32 [ %i.np, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ 0, %.preheader7.us.i.us.i.i ] ; 4 uses
  %.116644.us.us.i.us.us.i.i = phi ptr [ %i.no, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ %.016561.us.i.us.i.i, %.preheader7.us.i.us.i.i ] ; 3 uses
  %i.ht = mul i64 %indvar88, %i.ge
  %i.hu = add i64 %i.ht, %i.gb
  %i.hv = mul nsw i32 %.016345.us.us.i.us.us.i.i, %i.de
  %i.hw = sub nsw i32 %i.hv, %i.dk                ; 2 uses
  %.not.us.us.i.us.us.i.i = icmp sge i32 %.016345.us.us.i.us.us.i.i, %i.dq
  %i.hx = icmp slt i32 %.016345.us.us.i.us.us.i.i, %i.ds
  %or.cond.not2.not5.us.us.i.us.us.i.i = select i1 %.not.us.us.i.us.us.i.i, i1 %i.hx, i1 false
  %i.hy = mul nsw i32 %i.hw, %i.cl
  %i.hz = getelementptr i8, ptr %.116644.us.us.i.us.us.i.i, i64 %i.gi
  %i.ia = getelementptr i8, ptr %.116644.us.us.i.us.us.i.i, i64 %i.fp
  br label %.split.us.us.us.us.i.i

.split.us.us.us.us.i.i:                           ; preds = %.split3.us.us.us.us.i.i, %.lr.ph41.us.us.i.us.us.i.i
  %indvar = phi i64 [ %indvar.next, %.split3.us.us.us.us.i.i ], [ 0, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %.016239.us.us.i.us.us.us.i.i = phi i32 [ %i.nn, %.split3.us.us.us.us.i.i ], [ 0, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %.216738.us.us.i.us.us.us.i.i = phi ptr [ %i.no, %.split3.us.us.us.us.i.i ], [ %.116644.us.us.i.us.us.i.i, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %i.ib = mul i64 %i.gj, %indvar
  %i.ic = mul i64 %i.fq, %indvar
  %i.id = mul i64 %indvar, %i.gg
  %i.ie = add i64 %i.hu, %i.id
  %i.if = trunc i64 %i.ie to i32
  %.not182.us.us.i.us.us.us.i.i = icmp sge i32 %.016239.us.us.i.us.us.us.i.i, %i.du
  %or.cond186.not3.us.us.i.us.us.us.i.i = select i1 %or.cond.not2.not5.us.us.i.us.us.i.i, i1 %.not182.us.us.i.us.us.us.i.i, i1 false
  %i.ig = icmp slt i32 %.016239.us.us.i.us.us.us.i.i, %i.dw
  %or.cond187.us.us.i.us.us.us.i.i = select i1 %or.cond186.not3.us.us.i.us.us.us.i.i, i1 %i.ig, i1 false
  %i.ih = select i1 %or.cond187.us.us.i.us.us.us.i.i, i32 %i.dy, i32 %.fr.i
  %i.ii = mul i32 %.016239.us.us.i.us.us.us.i.i, %i.dg
  %i.ij = sub i32 %i.ii, %i.dm                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.216738.us.us.i.us.us.us.i.i, i8 0, i64 %i.fh, i1 false)
  %i.ik = add nsw i32 %i.ij, %i.hy
  %i.il = mul nsw i32 %i.ik, %i.co
  %i.im = sub i32 %i.il, %i.do
  %i.in = getelementptr i8, ptr %i.hz, i64 %i.ib
  %i.io = getelementptr i8, ptr %i.ia, i64 %i.ic
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.us.us.i.us.us.us.us.i.i, %.split.us.us.us.us.i.i
  %.0160.us.us.i.us.us.us.us.i.i = phi i32 [ 0, %.split.us.us.us.us.i.i ], [ %.2.lcssa.us.us.i.us.us.us.us.i.i, %.loopexit.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %.0159.us.us.i.us.us.us.us.i.i = phi i32 [ %i.ih, %.split.us.us.us.us.i.i ], [ %.fr.i, %.loopexit.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.ip = icmp slt i32 %.0160.us.us.i.us.us.us.us.i.i, %.0159.us.us.i.us.us.us.us.i.i
  br i1 %i.ip, label %.lr.ph20.us.us.i.us.us.us.us.i.i, label %._crit_edge21.us.us.i.us.us.us.us.i.i

.lr.ph20.us.us.i.us.us.us.us.i.i:                 ; preds = %bb.af
  %i.iq = zext i32 %.0160.us.us.i.us.us.us.us.i.i to i64 ; 2 uses
  %wide.trip.count96.i.us.us.us.us.i.i = zext nneg i32 %.0159.us.us.i.us.us.us.us.i.i to i64
  %i.ir = mul i64 %i.gk, %i.iq
  %i.is = getelementptr i8, ptr %i.in, i64 %i.ir
  br label %.lr.ph12.us.us.us.i.us.us.us.us.i.i

.lr.ph12.us.us.us.i.us.us.us.us.i.i:              ; preds = %._crit_edge17.us.us.us.i.us.us.us.us.i.i, %.lr.ph20.us.us.i.us.us.us.us.i.i
  %indvar121 = phi i64 [ %indvar.next122, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ], [ 0, %.lr.ph20.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %indvars.iv93.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next94.i.us.us.us.us.i.i, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ], [ %i.iq, %.lr.ph20.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.it = mul i64 %i.gl, %indvar121
  %scevgep123 = getelementptr i8, ptr %i.is, i64 %i.it
  %i.iu = mul i64 %indvars.iv93.i.us.us.us.us.i.i, %i.fn
  %i.iv = trunc i64 %indvars.iv93.i.us.us.us.us.i.i to i32
  %i.iw = mul i32 %i.di, %i.iv
  %i.ix = sub i32 %i.iw, %i.do
  %invariant.gep164.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %.216738.us.us.i.us.us.us.i.i, i64 %i.iu ; 9 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph12.us.us.us.i.us.us.us.us.i.i
  %indvars.iv83.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next84.i.us.us.us.us.i.i, %bb.ai ], [ 0, %.lr.ph12.us.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %.01589.us.us.us.i.us.us.us.us.i.i = phi i32 [ %.1.us.us.us.i.us.us.us.us.i.i, %bb.ai ], [ 0, %.lr.ph12.us.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %.idx.i.us.us.us.us.i.i = mul nuw nsw i64 %indvars.iv83.i.us.us.us.us.i.i, 12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i.us.us.us.us.i.i ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !84
  %i.ja = add nsw i32 %i.iz, %i.hw                ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !84
  %i.jd = add i32 %i.jc, %i.ij                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !84
  %i.jg = add i32 %i.jf, %i.ix                    ; 2 uses
  %.not183.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.ja, %i.cm
  %.not184.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.jd, %i.cl
  %or.cond188.us.us.us.i.us.us.us.us.i.i = select i1 %.not183.us.us.us.i.us.us.us.us.i.i, i1 %.not184.us.us.us.i.us.us.us.us.i.i, i1 false
  %.not185.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.jg, %i.co
  %or.cond189.us.us.us.i.us.us.us.us.i.i = select i1 %or.cond188.us.us.us.i.us.us.us.us.i.i, i1 %.not185.us.us.us.i.us.us.us.us.i.i, i1 false
  br i1 %or.cond189.us.us.us.i.us.us.us.us.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jh = mul i32 %i.ja, %i.cl
  %i.ji = add i32 %i.jh, %i.jd
  %i.jj = mul i32 %i.ji, %i.co
  %i.jk = add i32 %i.jj, %i.jg
  %i.jl = mul i32 %i.jk, %.fr35.i
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %.016859.us.i.us.i.i, i64 %i.jm ; 6 uses
  br i1 %i.fi, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader

.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader:      ; preds = %bb.ah
  br i1 %min.iters.check131, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader
  %i.jo = shl nsw i64 %i.jm, 2                    ; 2 uses
  %scevgep124 = getelementptr i8, ptr %.016859.us.i.us.i.i, i64 %i.jo
  %scevgep126 = getelementptr i8, ptr %scevgep125.a, i64 %i.jo
  %bound0127 = icmp ult ptr %invariant.gep164.i.us.us.us.us.i.i, %scevgep126
  %bound1128 = icmp ult ptr %scevgep124, %scevgep123
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, label %vector.body134

vector.body134:                                   ; preds = %vector.memcheck120, %vector.body134
  %index135 = phi i64 [ %index.next140, %vector.body134 ], [ 0, %vector.memcheck120 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index135 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load136.a = load <4 x float>, ptr %i.jp, align 4, !tbaa !317, !alias.scope !318
  %wide.load137.a = load <4 x float>, ptr %i.jq, align 4, !tbaa !317, !alias.scope !318
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %index135 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16     ; 2 uses
  %wide.load138.a = load <4 x float>, ptr %i.jr, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %wide.load139 = load <4 x float>, ptr %i.js, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %i.jt = fadd <4 x float> %wide.load136.a, %wide.load138.a
  %i.ju = fadd <4 x float> %wide.load137.a, %wide.load139
  store <4 x float> %i.jt, ptr %i.jr, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  store <4 x float> %i.ju, ptr %i.js, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %index.next140 = add nuw i64 %index135, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.jv, label %middle.block141, label %vector.body134, !llvm.loop !285

middle.block141:                                  ; preds = %vector.body134
  br i1 %cmp.n142, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144

.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144:   ; preds = %vector.memcheck120, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block141
  %indvars.iv78.i.us.us.us.us.i.i.ph = phi i64 [ 0, %vector.memcheck120 ], [ 0, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec133, %middle.block141 ] ; 3 uses
  br i1 %lcmp.mod155.not, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol

.lr.ph.us.us.us.i.us.us.us.us.i.i.prol:           ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol
  %indvars.iv78.i.us.us.us.us.i.i.prol = phi i64 [ %indvars.iv.next79.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ], [ %indvars.iv78.i.us.us.us.us.i.i.ph, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ], [ 0, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv78.i.us.us.us.us.i.i.prol
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv78.i.us.us.us.us.i.i.prol ; 2 uses
  %i.jy = load float, ptr %gep165.i.us.us.us.us.i.i.prol, align 4, !tbaa !317
  %i.jz = fadd float %i.jx, %i.jy
  store float %i.jz, ptr %gep165.i.us.us.us.us.i.i.prol, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.prol = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol, !llvm.loop !286

.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit:  ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144
  %indvars.iv78.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv78.i.us.us.us.us.i.i.ph, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ], [ %indvars.iv.next79.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.ka = sub nsw i64 %indvars.iv78.i.us.us.us.us.i.i.ph, %wide.trip.count.i.i.i
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i

.lr.ph.us.us.us.i.us.us.us.us.i.i:                ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph.us.us.us.i.us.us.us.us.i.i
  %indvars.iv78.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next79.i.us.us.us.us.i.i.3, %.lr.ph.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv78.i.us.us.us.us.i.i.unr, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 6 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv78.i.us.us.us.us.i.i
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv78.i.us.us.us.us.i.i ; 2 uses
  %i.ke = load float, ptr %gep165.i.us.us.us.us.i.i, align 4, !tbaa !317
  %i.kf = fadd float %i.kd, %i.ke
  store float %i.kf, ptr %gep165.i.us.us.us.us.i.i, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i ; 2 uses
  %i.ki = load float, ptr %gep165.i.us.us.us.us.i.i.1, align 4, !tbaa !317
  %i.kj = fadd float %i.kh, %i.ki
  store float %i.kj, ptr %gep165.i.us.us.us.us.i.i.1, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 2 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i.1
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i.1 ; 2 uses
  %i.km = load float, ptr %gep165.i.us.us.us.us.i.i.2, align 4, !tbaa !317
  %i.kn = fadd float %i.kl, %i.km
  store float %i.kn, ptr %gep165.i.us.us.us.us.i.i.2, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.2 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i.2
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i.2 ; 2 uses
  %i.kq = load float, ptr %gep165.i.us.us.us.us.i.i.3, align 4, !tbaa !317
  %i.kr = fadd float %i.kp, %i.kq
  store float %i.kr, ptr %gep165.i.us.us.us.us.i.i.3, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.3 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 4 ; 2 uses
  %exitcond82.not.i.us.us.us.us.i.i.3 = icmp eq i64 %indvars.iv.next79.i.us.us.us.us.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond82.not.i.us.us.us.us.i.i.3, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i, !llvm.loop !287

._crit_edge.us.us.us.i.us.us.us.us.i.i:           ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph.us.us.us.i.us.us.us.us.i.i, %middle.block141, %bb.ah
  %i.ks = add nsw i32 %.01589.us.us.us.i.us.us.us.us.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.us.us.us.i.us.us.us.us.i.i, %bb.ag
  %.1.us.us.us.i.us.us.us.us.i.i = phi i32 [ %i.ks, %._crit_edge.us.us.us.i.us.us.us.us.i.i ], [ %.01589.us.us.us.i.us.us.us.us.i.i, %bb.ag ] ; 2 uses
  %indvars.iv.next84.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv83.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond87.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next84.i.us.us.us.us.i.i, %wide.trip.count86.i.i.i
  br i1 %exitcond87.not.i.us.us.us.us.i.i, label %._crit_edge13.us.us.us.i.us.us.us.us.i.i, label %bb.ag, !llvm.loop !288

._crit_edge13.us.us.us.i.us.us.us.us.i.i:         ; preds = %bb.ai
  %i.kt = sitofp i32 %.1.us.us.us.i.us.us.us.us.i.i to float
  %i.ku = fdiv nnan float 1.000000e+00, %i.kt
  %i.kv = select i1 %i.p, float %i.fc, float %i.ku ; 2 uses
  br i1 %i.fi, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader

.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader:    ; preds = %._crit_edge13.us.us.us.i.us.us.us.us.i.i
  br i1 %min.iters.check107, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.kv, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %index113 ; 3 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 16     ; 2 uses
  %wide.load114 = load <4 x float>, ptr %i.kw, align 4, !tbaa !317
  %wide.load115 = load <4 x float>, ptr %i.kx, align 4, !tbaa !317
  %i.ky = fmul <4 x float> %broadcast.splat111, %wide.load114
  %i.kz = fmul <4 x float> %broadcast.splat111, %wide.load115
  store <4 x float> %i.ky, ptr %i.kw, align 4, !tbaa !317
  store <4 x float> %i.kz, ptr %i.kx, align 4, !tbaa !317
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.la, label %middle.block117, label %vector.body112, !llvm.loop !289

middle.block117:                                  ; preds = %vector.body112
  br i1 %cmp.n118, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146

.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146: ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block117
  %indvars.iv88.i.us.us.us.us.i.i.ph = phi i64 [ 0, %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec109, %middle.block117 ]
  br label %.lr.ph16.us.us.us.i.us.us.us.us.i.i

.lr.ph16.us.us.us.i.us.us.us.us.i.i:              ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146, %.lr.ph16.us.us.us.i.us.us.us.us.i.i
  %indvars.iv88.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next89.i.us.us.us.us.i.i, %.lr.ph16.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv88.i.us.us.us.us.i.i.ph, %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146 ] ; 2 uses
  %gep167.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv88.i.us.us.us.us.i.i ; 2 uses
  %i.lb = load float, ptr %gep167.i.us.us.us.us.i.i, align 4, !tbaa !317
  %i.lc = fmul float %i.kv, %i.lb
  store float %i.lc, ptr %gep167.i.us.us.us.us.i.i, align 4, !tbaa !317
  %indvars.iv.next89.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv88.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond92.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next89.i.us.us.us.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond92.not.i.us.us.us.us.i.i, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i, !llvm.loop !290

._crit_edge17.us.us.us.i.us.us.us.us.i.i:         ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i, %middle.block117, %._crit_edge13.us.us.us.i.us.us.us.us.i.i
  %indvars.iv.next94.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv93.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond97.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next94.i.us.us.us.us.i.i, %wide.trip.count96.i.us.us.us.us.i.i
  %indvar.next122 = add i64 %indvar121, 1
  br i1 %exitcond97.not.i.us.us.us.us.i.i, label %._crit_edge21.us.us.i.us.us.us.us.i.i, label %.lr.ph12.us.us.us.i.us.us.us.us.i.i, !llvm.loop !291

._crit_edge21.us.us.i.us.us.us.us.i.i:            ; preds = %._crit_edge17.us.us.us.i.us.us.us.us.i.i, %bb.af
  %.1161.lcssa.us.us.i.us.us.us.us.i.i = phi i32 [ %.0160.us.us.i.us.us.us.us.i.i, %bb.af ], [ %.0159.us.us.i.us.us.us.us.i.i, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ] ; 5 uses
  %i.ld = icmp eq i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, %.fr.i
  br i1 %i.ld, label %.split3.us.us.us.us.i.i, label %.preheader6.us.us.i.us.us.us.us.i.i

.preheader6.us.us.i.us.us.us.us.i.i:              ; preds = %._crit_edge21.us.us.i.us.us.us.us.i.i
  %i.le = icmp sge i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, %i.ea
  %brmerge47.i.i = or i1 %i.fi, %i.le
  %.1161.lcssa.us.us.i.us.us.us.us.mux.i.i = tail call i32 @llvm.smax.i32(i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, i32 %i.ea)
  br i1 %brmerge47.i.i, label %.loopexit.us.us.i.us.us.us.us.i.i, label %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i

.lr.ph37.us.us.i.us.us.us.us.preheader.i.i:       ; preds = %.preheader6.us.us.i.us.us.us.us.i.i
  %i.lf = zext i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i to i64 ; 2 uses
  %i.lg = mul i64 %i.fr, %i.lf
  %i.lh = mul i32 %i.di, %.1161.lcssa.us.us.i.us.us.us.us.i.i
  %i.li = add i32 %i.lh, %i.if
  %i.lj = mul i32 %.fr35.i, %i.li
  %i.lk = getelementptr i8, ptr %i.io, i64 %i.lg
  br label %.lr.ph37.us.us.i.us.us.us.us.i.i

.lr.ph37.us.us.i.us.us.us.us.i.i:                 ; preds = %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i
  %indvar82 = phi i64 [ %indvar.next83, %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i ], [ 0, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i ] ; 3 uses
  %indvars.iv113.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next114.i.us.us.us.us.i.i, %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i ], [ %i.lf, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i ] ; 3 uses
  %i.ll = mul i64 %i.fs, %indvar82
  %scevgep84 = getelementptr i8, ptr %i.lk, i64 %i.ll
  %i.lm = trunc i64 %indvar82 to i32
  %i.ln = mul i32 %i.gh, %i.lm
  %i.lo = add i32 %i.ln, %i.lj
  %i.lp = sext i32 %i.lo to i64
  %i.lq = shl nsw i64 %i.lp, 2
  %i.lr = trunc i64 %indvars.iv113.i.us.us.us.us.i.i to i32
  %i.ls = mul i32 %i.di, %i.lr
  %i.lt = add i32 %i.im, %i.ls
  %i.lu = mul nsw i32 %i.lt, %.fr35.i
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.016859.us.i.us.i.i, i64 %i.lv
  %i.lx = mul nuw nsw i64 %indvars.iv113.i.us.us.us.us.i.i, %i.fn
  %invariant.gep168.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %.216738.us.us.i.us.us.us.i.i, i64 %i.lx ; 9 uses
  %scevgep90 = getelementptr i8, ptr %scevgep87, i64 %i.lq
  br label %.lr.ph.us55.us.i.us.us.us.us.i.i

.lr.ph.us55.us.i.us.us.us.us.i.i:                 ; preds = %._crit_edge.us56.us.i.us.us.us.us.i.i, %.lr.ph37.us.us.i.us.us.us.us.i.i
  %indvars.iv103.i.us.us.us.us.i.i = phi i64 [ 0, %.lr.ph37.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.next104.i.us.us.us.us.i.i, %._crit_edge.us56.us.i.us.us.us.us.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv103.i.us.us.us.us.i.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !84
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.ma ; 7 uses
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us55.us.i.us.us.us.us.i.i
  %i.mc = shl nsw i64 %i.ma, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.mc
  %bound0 = icmp ult ptr %invariant.gep168.i.us.us.us.us.i.i, %scevgep91
  %bound1 = icmp ult ptr %i.mb, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph92.preheader, label %vector.body96

vector.body96:                                    ; preds = %vector.memcheck, %vector.body96
end_hunk_0
