inline.NumInlined: 494
inline.NumDeleted: 147
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN16btRaycastVehicle14updateFrictionEf:bb.a
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i152
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !50
  store float %i.cg, ptr %i.ce, align 4, !tbaa !50
  %indvars.iv.next.i.i.i152.1 = add nuw nsw i64 %indvars.iv.i.i.i151, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i152.1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i152.1
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !50
  store float %i.cj, ptr %i.ch, align 4, !tbaa !50
  %indvars.iv.next.i.i.i152.2 = add nuw nsw i64 %indvars.iv.i.i.i151, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.i152.2
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i.i152.2
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  store float %i.cm, ptr %i.ck, align 4, !tbaa !50
  %indvars.iv.next.i.i.i152.3 = add nuw nsw i64 %indvars.iv.i.i.i151, 4 ; 2 uses
  %exitcond.not.i.i.i153.3 = icmp eq i64 %indvars.iv.next.i.i.i152.3, %wide.trip.count.i.i.i150
  br i1 %exitcond.not.i.i.i153.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !97

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i148 = icmp ne ptr %i.bn, null
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load i8, ptr %i.cn, align 8, !range !17
  %i.cp = trunc nuw i8 %i.co to i1
  %or.cond28.i = select i1 %.not.i5.i.i148, i1 %i.cp, i1 false
  br i1 %or.cond28.i, label %bb.j, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.old26.i = load i8, ptr %.old.i, align 8, !tbaa !25, !range !17, !noundef !81
  %.old27.i = trunc nuw i8 %.old26.i to i1
  br i1 %.old27.i, label %bb.j, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bn)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.j, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.cq, align 8, !tbaa !25
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !29
  store i32 %i.b, ptr %i.bf, align 8, !tbaa !31
  br label %.lr.ph.i140

.lr.ph.i140:                                      ; preds = %..lr.ph.i140_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre-phi = phi i64 [ %.pre252, %..lr.ph.i140_crit_edge ], [ %i.bj, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.cr = phi ptr [ %.pre, %..lr.ph.i140_crit_edge ], [ %i.bk, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.cs = sext i32 %i.bd to i64
  %i.ct = shl nsw i64 %i.cs, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cr, i64 %i.ct
  %i.cu = sub nsw i64 %.pre-phi, %i.ct
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cu, i1 false), !tbaa !50
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i140, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit139
  store i32 %i.b, ptr %i.bc, align 4, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !30 ; 2 uses
  %i.cx = icmp sgt i32 %i.b, %i.cw
  br i1 %i.cx, label %bb.k, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !31
  %i.da = icmp slt i32 %i.cz, %i.b
  br i1 %i.da, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i162, label %..lr.ph.i154_crit_edge

..lr.ph.i154_crit_edge:                           ; preds = %bb.k
  %.phi.trans.insert246 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre247 = load ptr, ptr %.phi.trans.insert246, align 8, !tbaa !29
  %.pre253 = sext i32 %i.b to i64
  %.pre254 = shl nsw i64 %.pre253, 2
  br label %.lr.ph.i154

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i162: ; preds = %bb.k
  %i.db = sext i32 %i.b to i64
  %i.dc = shl nsw i64 %i.db, 2                    ; 2 uses
  %i.dd = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dc, i32 noundef 16) ; 9 uses
  %.pre.i161 = load i32, ptr %i.cv, align 4, !tbaa !30 ; 3 uses
  %i.de = icmp sgt i32 %.pre.i161, 0
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 9 uses
  br i1 %i.de, label %.lr.ph.i.i.i168, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164

.lr.ph.i.i.i168:                                  ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i162
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = ptrtoaddr ptr %i.dd to i64
  %wide.trip.count.i.i.i169 = zext nneg i32 %.pre.i161 to i64 ; 5 uses
  %min.iters.check276 = icmp ult i32 %.pre.i161, 8
  %i.dj = sub i64 %i.di, %i.dh
  %diff.check274 = icmp ult i64 %i.dj, 32
  %or.cond302 = select i1 %min.iters.check276, i1 true, i1 %diff.check274
  br i1 %or.cond302, label %scalar.ph275.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %.lr.ph.i.i.i168
  %n.vec279 = and i64 %wide.trip.count.i.i.i169, 2147483640 ; 3 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph277
  %index281 = phi i64 [ 0, %vector.ph277 ], [ %index.next284, %vector.body280 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index281 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %index281 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load282 = load <4 x float>, ptr %i.dl, align 4, !tbaa !50
  %wide.load283 = load <4 x float>, ptr %i.dm, align 4, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %wide.load282, ptr %i.dk, align 4, !tbaa !50
  store <4 x float> %wide.load283, ptr %i.dn, align 4, !tbaa !50
  %index.next284 = add nuw i64 %index281, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next284, %n.vec279
  br i1 %i.do, label %middle.block285, label %vector.body280, !llvm.loop !98

middle.block285:                                  ; preds = %vector.body280
  %cmp.n286 = icmp eq i64 %n.vec279, %wide.trip.count.i.i.i169
  br i1 %cmp.n286, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %.lr.ph.i.i.i168, %middle.block285
  %indvars.iv.i.i.i170.ph = phi i64 [ 0, %.lr.ph.i.i.i168 ], [ %n.vec279, %middle.block285 ] ; 3 uses
  %xtraiter316 = and i64 %wide.trip.count.i.i.i169, 3 ; 2 uses
  %lcmp.mod317.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod317.not, label %scalar.ph275.prol.loopexit, label %scalar.ph275.prol

scalar.ph275.prol:                                ; preds = %scalar.ph275.preheader, %scalar.ph275.prol
  %indvars.iv.i.i.i170.prol = phi i64 [ %indvars.iv.next.i.i.i171.prol, %scalar.ph275.prol ], [ %indvars.iv.i.i.i170.ph, %scalar.ph275.preheader ] ; 3 uses
  %prol.iter318 = phi i64 [ %prol.iter318.next, %scalar.ph275.prol ], [ 0, %scalar.ph275.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i170.prol
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i170.prol
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !50
  store float %i.dr, ptr %i.dp, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.prol = add nuw nsw i64 %indvars.iv.i.i.i170.prol, 1 ; 2 uses
  %prol.iter318.next = add i64 %prol.iter318, 1   ; 2 uses
  %prol.iter318.cmp.not = icmp eq i64 %prol.iter318.next, %xtraiter316
  br i1 %prol.iter318.cmp.not, label %scalar.ph275.prol.loopexit, label %scalar.ph275.prol, !llvm.loop !99

scalar.ph275.prol.loopexit:                       ; preds = %scalar.ph275.prol, %scalar.ph275.preheader
  %indvars.iv.i.i.i170.unr = phi i64 [ %indvars.iv.i.i.i170.ph, %scalar.ph275.preheader ], [ %indvars.iv.next.i.i.i171.prol, %scalar.ph275.prol ]
  %i.ds = sub nsw i64 %indvars.iv.i.i.i170.ph, %wide.trip.count.i.i.i169
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph275

scalar.ph275:                                     ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275
  %indvars.iv.i.i.i170 = phi i64 [ %indvars.iv.next.i.i.i171.3, %scalar.ph275 ], [ %indvars.iv.i.i.i170.unr, %scalar.ph275.prol.loopexit ] ; 6 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i170
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i170
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !50
  store float %i.dw, ptr %i.du, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171 = add nuw nsw i64 %indvars.iv.i.i.i170, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !50
  store float %i.dz, ptr %i.dx, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.1 = add nuw nsw i64 %indvars.iv.i.i.i170, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171.1
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171.1
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !50
  store float %i.ec, ptr %i.ea, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.2 = add nuw nsw i64 %indvars.iv.i.i.i170, 3 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i171.2
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.next.i.i.i171.2
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !50
  store float %i.ef, ptr %i.ed, align 4, !tbaa !50
  %indvars.iv.next.i.i.i171.3 = add nuw nsw i64 %indvars.iv.i.i.i170, 4 ; 2 uses
  %exitcond.not.i.i.i172.3 = icmp eq i64 %indvars.iv.next.i.i.i171.3, %wide.trip.count.i.i.i169
  br i1 %exitcond.not.i.i.i172.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, label %scalar.ph275, !llvm.loop !100

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i162
  %.not.i5.i.i165 = icmp ne ptr %i.dg, null
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.eh = load i8, ptr %i.eg, align 8, !range !17
  %i.ei = trunc nuw i8 %i.eh to i1
  %or.cond28.i166 = select i1 %.not.i5.i.i165, i1 %i.ei, i1 false
  br i1 %or.cond28.i166, label %bb.l, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173: ; preds = %scalar.ph275.prol.loopexit, %scalar.ph275, %middle.block285
  %.old.i174 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.old26.i175 = load i8, ptr %.old.i174, align 8, !tbaa !25, !range !17, !noundef !81
  %.old27.i176 = trunc nuw i8 %.old26.i175 to i1
  br i1 %.old27.i176, label %bb.l, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dg)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i173, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i164
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ej, align 8, !tbaa !25
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !29
  store i32 %i.b, ptr %i.cy, align 8, !tbaa !31
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %..lr.ph.i154_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167
  %.pre-phi255 = phi i64 [ %.pre254, %..lr.ph.i154_crit_edge ], [ %i.dc, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167 ]
  %i.ek = phi ptr [ %.pre247, %..lr.ph.i154_crit_edge ], [ %i.dd, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i167 ]
  %i.el = sext i32 %i.cw to i64
  %i.em = shl nsw i64 %i.el, 2                    ; 2 uses
  %scevgep230 = getelementptr i8, ptr %i.ek, i64 %i.em
  %i.en = sub nsw i64 %.pre-phi255, %i.em
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep230, i8 0, i64 %i.en, i1 false), !tbaa !50
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177: ; preds = %.lr.ph.i154, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  store i32 %i.b, ptr %i.cv, align 4, !tbaa !30
  %i.eo = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %10 = load ptr, ptr %9, align 8, !tbaa !29      ; 7 uses
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %12 = load ptr, ptr %11, align 8, !tbaa !29     ; 7 uses
  %wide.trip.count = zext nneg i32 %i.eo to i64   ; 5 uses
  %min.iters.check291 = icmp ult i32 %i.eo, 8
  %13 = ptrtoaddr ptr %12 to i64
  %14 = ptrtoaddr ptr %10 to i64
  %15 = sub i64 %13, %14
  %diff.check289 = icmp ult i64 %15, 32
  %or.cond305 = select i1 %min.iters.check291, i1 true, i1 %diff.check289
  br i1 %or.cond305, label %scalar.ph290.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph
  %n.vec294 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body295

vector.body295:                                   ; preds = %vector.body295, %vector.ph292
  %index296 = phi i64 [ 0, %vector.ph292 ], [ %index.next297, %vector.body295 ] ; 3 uses
  %16 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index296 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <4 x float> zeroinitializer, ptr %16, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %17, align 4, !tbaa !50
  %18 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %index296 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 16
  store <4 x float> zeroinitializer, ptr %18, align 4, !tbaa !50
  store <4 x float> zeroinitializer, ptr %19, align 4, !tbaa !50
  %index.next297 = add nuw i64 %index296, 8       ; 2 uses
  %20 = icmp eq i64 %index.next297, %n.vec294
  br i1 %20, label %middle.block298, label %vector.body295, !llvm.loop !101

middle.block298:                                  ; preds = %vector.body295
  %cmp.n299 = icmp eq i64 %n.vec294, %wide.trip.count
  br i1 %cmp.n299, label %.lr.ph219, label %scalar.ph290.preheader

scalar.ph290.preheader:                           ; preds = %.lr.ph, %middle.block298
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec294, %middle.block298 ] ; 3 uses
  %xtraiter319 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  br i1 %lcmp.mod320.not, label %scalar.ph290.prol.loopexit, label %scalar.ph290.prol

scalar.ph290.prol:                                ; preds = %scalar.ph290.preheader, %scalar.ph290.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph290.prol ], [ %indvars.iv.ph, %scalar.ph290.preheader ] ; 3 uses
  %prol.iter321 = phi i64 [ %prol.iter321.next, %scalar.ph290.prol ], [ 0, %scalar.ph290.preheader ]
  %21 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.prol
  store float 0.000000e+00, ptr %21, align 4, !tbaa !50
  %22 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.prol
  store float 0.000000e+00, ptr %22, align 4, !tbaa !50
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter321.next = add i64 %prol.iter321, 1   ; 2 uses
  %prol.iter321.cmp.not = icmp eq i64 %prol.iter321.next, %xtraiter319
  br i1 %prol.iter321.cmp.not, label %scalar.ph290.prol.loopexit, label %scalar.ph290.prol, !llvm.loop !102

scalar.ph290.prol.loopexit:                       ; preds = %scalar.ph290.prol, %scalar.ph290.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph290.preheader ], [ %indvars.iv.next.prol, %scalar.ph290.prol ]
  %23 = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %24 = icmp ugt i64 %23, -4
  br i1 %24, label %.lr.ph219, label %scalar.ph290

.lr.ph219:                                        ; preds = %scalar.ph290.prol.loopexit, %scalar.ph290, %middle.block298
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %26 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.m

scalar.ph290:                                     ; preds = %scalar.ph290.prol.loopexit, %scalar.ph290
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph290 ], [ %indvars.iv.unr, %scalar.ph290.prol.loopexit ] ; 6 uses
  %33 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  store float 0.000000e+00, ptr %33, align 4, !tbaa !50
  %34 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv
  store float 0.000000e+00, ptr %34, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %35 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %35, align 4, !tbaa !50
  %36 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next
  store float 0.000000e+00, ptr %36, align 4, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %37 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.1
  store float 0.000000e+00, ptr %37, align 4, !tbaa !50
  %38 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next.1
  store float 0.000000e+00, ptr %38, align 4, !tbaa !50
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %39 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.next.2
  store float 0.000000e+00, ptr %39, align 4, !tbaa !50
  %40 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.next.2
  store float 0.000000e+00, ptr %40, align 4, !tbaa !50
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph219, label %scalar.ph290, !llvm.loop !103

.preheader215:                                    ; preds = %bb.o
  %i.eq = icmp sgt i32 %i.in, 0
  br i1 %i.eq, label %.lr.ph222, label %.loopexit

.lr.ph222:                                        ; preds = %.preheader215
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.pre249 = load ptr, ptr %i.er, align 8, !tbaa !42 ; 2 uses
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph219, %bb.o
  %i.ff = phi i32 [ %i.eo, %.lr.ph219 ], [ %i.in, %bb.o ]
  %indvars.iv232 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next233, %bb.o ] ; 9 uses
  %i.fg = load ptr, ptr %25, align 8, !tbaa !42
  %i.fh = getelementptr inbounds nuw [288 x i8], ptr %i.fg, i64 %indvars.iv232 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 88
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !76 ; 2 uses
  %.not119 = icmp eq ptr %i.fj, null
  br i1 %.not119, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %i.fk, i64 16, i1 false), !tbaa.struct !57
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) %i.fl, i64 16, i1 false), !tbaa.struct !57
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !57
  %i.fn = load i32, ptr %28, align 8, !tbaa !46
  %i.fo = sext i32 %i.fn to i64                   ; 3 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fo
  %i.fq = getelementptr inbounds [4 x i8], ptr %26, i64 %i.fo
  %i.fr = getelementptr inbounds [4 x i8], ptr %27, i64 %i.fo
  %i.fs = load float, ptr %i.fp, align 4, !tbaa !50
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !50
  %i.fu = load float, ptr %i.fr, align 4, !tbaa !50
  %i.fv = load ptr, ptr %29, align 8, !tbaa !22
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %indvars.iv232 ; 3 uses
  store float %i.fs, ptr %i.fw, align 4
  %.sroa.4.0..sroa_idx210 = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store float %i.ft, ptr %.sroa.4.0..sroa_idx210, align 4
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fx = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fu, i64 0
  store <2 x float> %i.fx, ptr %.sroa.5211.0..sroa_idx, align 4
  %i.fy = load ptr, ptr %29, align 8, !tbaa !22
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %indvars.iv232 ; 4 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !50 ; 2 uses
  %i.gb = load float, ptr %i.fh, align 8, !tbaa !50 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !50 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !50 ; 2 uses
  %i.gg = fmul float %i.gd, %i.gf
  %i.gh = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %i.gg)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !50 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !50 ; 2 uses
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.gj, float %i.gl, float %i.gh) ; 3 uses
  %i.gn = fmul float %i.gb, %i.gm
  %i.go = fmul float %i.gf, %i.gm
  %i.gp = fmul float %i.gl, %i.gm
  %i.gq = fsub float %i.ga, %i.gn                 ; 3 uses
  %i.gr = fsub float %i.gd, %i.go                 ; 3 uses
  %i.gs = fsub float %i.gj, %i.gp                 ; 3 uses
  %i.gt = fmul float %i.gr, %i.gr
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gq, float %i.gq, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.gv)
  %i.gw = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.gx = fmul float %i.gq, %i.gw                 ; 3 uses
  store float %i.gx, ptr %i.fz, align 4, !tbaa !50
  %i.gy = fmul float %i.gr, %i.gw                 ; 3 uses
  store float %i.gy, ptr %i.gc, align 4, !tbaa !50
  %i.gz = fmul float %i.gs, %i.gw                 ; 3 uses
  store float %i.gz, ptr %i.gi, align 4, !tbaa !50
  %i.ha = load float, ptr %i.ge, align 4, !tbaa !50 ; 2 uses
  %i.hb = load float, ptr %i.gk, align 8, !tbaa !50 ; 2 uses
  %i.hc = fneg float %i.gy
  %i.hd = fmul float %i.hb, %i.hc
  %i.he = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.gz, float %i.hd)
  %i.hf = load float, ptr %i.fh, align 8, !tbaa !50 ; 2 uses
  %i.hg = fneg float %i.gz
  %i.hh = fmul float %i.hf, %i.hg
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.gx, float %i.hh)
  %i.hj = fneg float %i.gx
  %i.hk = fmul float %i.ha, %i.hj
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.gy, float %i.hk)
  %.sroa.0.0.vec.insert.i178 = insertelement <2 x float> poison, float %i.he, i64 0
  %.sroa.0.4.vec.insert.i179 = insertelement <2 x float> %.sroa.0.0.vec.insert.i178, float %i.hi, i64 1
  %.sroa.3.12.vec.insert.i180 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  %i.hm = load ptr, ptr %30, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %indvars.iv232 ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i179, ptr %i.hn, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i180, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !54
  %i.ho = load ptr, ptr %30, align 8, !tbaa !22
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %indvars.iv232 ; 4 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !50 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !50 ; 3 uses
  %i.ht = fmul float %i.hs, %i.hs
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hq, float %i.ht)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !50 ; 3 uses
  %i.hx = tail call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hu)
  %sqrt.i.i183 = tail call noundef float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fdiv float 1.000000e+00, %sqrt.i.i183   ; 3 uses
  %i.hz = fmul float %i.hq, %i.hy
  store float %i.hz, ptr %i.hp, align 4, !tbaa !50
  %i.ia = fmul float %i.hs, %i.hy
  store float %i.ia, ptr %i.hr, align 4, !tbaa !50
  %i.ib = fmul float %i.hw, %i.hy
  store float %i.ib, ptr %i.hv, align 4, !tbaa !50
  %i.ic = load ptr, ptr %31, align 8, !tbaa !45
  %i.id = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.ie = load ptr, ptr %29, align 8, !tbaa !22
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv232
  %i.ig = load ptr, ptr %32, align 8, !tbaa !29
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv232
  tail call void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564) %i.ic, ptr noundef nonnull align 4 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(564) %i.fj, ptr noundef nonnull align 4 dereferenceable(16) %i.id, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %i.if, ptr noundef nonnull align 4 dereferenceable(4) %i.ih, float noundef %1)
  %i.ii = load float, ptr @sideFrictionStiffness2, align 4, !tbaa !50
  %i.ij = load ptr, ptr %32, align 8, !tbaa !29
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv232 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !50
  %i.im = fmul float %i.ii, %i.il
  store float %i.im, ptr %i.ik, align 4, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre248 = load i32, ptr %i.a, align 4, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.in = phi i32 [ %.pre248, %bb.n ], [ %i.ff, %bb.m ] ; 3 uses
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next233, %i.io
  br i1 %i.ip, label %bb.m, label %.preheader215

._crit_edge:                                      ; preds = %bb.v
  %i.iq = icmp sgt i32 %i.nt, 0
  %or.cond = and i1 %.2, %i.iq
  br i1 %or.cond, label %.lr.ph225, label %.loopexit214

.lr.ph225:                                        ; preds = %._crit_edge
  %i.ir = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.is = load ptr, ptr %i.er, align 8
  %i.it = load ptr, ptr %i.fd, align 8
  %wide.trip.count241 = zext nneg i32 %i.nt to i64
  br label %bb.w

bb.p:                                             ; preds = %.lr.ph222, %bb.v
  %i.iu = phi ptr [ %.pre249, %.lr.ph222 ], [ %i.nr, %bb.v ] ; 2 uses
  %i.iv = phi ptr [ %.pre249, %.lr.ph222 ], [ %i.ns, %bb.v ] ; 2 uses
  %indvars.iv235.a = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next236.a, %bb.v ] ; 7 uses
  %.0108221 = phi i1 [ false, %.lr.ph222 ], [ %.2, %bb.v ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [288 x i8], ptr %i.iv, i64 %indvars.iv235.a ; 7 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 88
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !76 ; 2 uses
  %.not118 = icmp eq ptr %i.iy, null
  br i1 %.not118, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 252
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !85 ; 2 uses
  %i.jb = fcmp une float %i.ja, 0.000000e+00
  br i1 %i.jb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jc = fmul float %1, %i.ja
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 256
  %i.je = load float, ptr %i.jd, align 8, !tbaa !86 ; 2 uses
  %.inv = fcmp oeq float %i.je, 0.000000e+00
  %. = select i1 %.inv, float 0.000000e+00, float %i.je
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.jf = load ptr, ptr %i.es, align 8, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.jh = load ptr, ptr %i.et, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv235.a
  call void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.jf, ptr noundef nonnull %i.iy, ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, float noundef %.)
  %i.jj = load ptr, ptr %3, align 8, !tbaa !87    ; 9 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %i.jl = load float, ptr %i.eu, align 8, !tbaa !50 ; 2 uses
  %i.jm = load float, ptr %i.jk, align 4, !tbaa !50
  %i.jn = fsub float %i.jl, %i.jm                 ; 2 uses
  %i.jo = load float, ptr %i.ev, align 4, !tbaa !50 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 60
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !50
  %i.jr = fsub float %i.jo, %i.jq                 ; 2 uses
  %i.js = load float, ptr %i.ew, align 8, !tbaa !50 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !50
  %i.jv = fsub float %i.js, %i.ju                 ; 2 uses
  %i.jw = load ptr, ptr %i.ex, align 8, !tbaa !89 ; 9 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 56
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !50
  %i.jz = fsub float %i.jl, %i.jy                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 60
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !50
  %i.kc = fsub float %i.jo, %i.kb                 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 64
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !50
  %i.kf = fsub float %i.js, %i.ke                 ; 2 uses
  %i.kg = load float, ptr %i.ey, align 4, !tbaa !90 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jj, i64 328
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jj, i64 344
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jj, i64 348
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !50 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jj, i64 352
  %i.km = load float, ptr %i.kl, align 4, !tbaa !50 ; 2 uses
  %i.kn = fneg float %i.jr
  %i.ko = fmul float %i.km, %i.kn
  %i.kp = call float @llvm.fmuladd.f32(float %i.kk, float %i.jv, float %i.ko)
  %i.kq = load float, ptr %i.ki, align 4, !tbaa !50 ; 2 uses
  %i.kr = fneg float %i.jv
  %i.ks = fmul float %i.kq, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.km, float %i.jn, float %i.ks)
  %i.ku = fneg float %i.jn
  %i.kv = fmul float %i.kk, %i.ku
  %i.kw = call float @llvm.fmuladd.f32(float %i.kq, float %i.jr, float %i.kv)
  %i.kx = load float, ptr %i.kh, align 4, !tbaa !50
  %i.ky = fadd float %i.kp, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jj, i64 332
  %i.la = load float, ptr %i.kz, align 4, !tbaa !50
  %i.lb = fadd float %i.la, %i.kt
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jj, i64 336
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !50
  %i.le = fadd float %i.kw, %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jw, i64 328
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jw, i64 344
  %i.lh = getelementptr inbounds nuw i8, ptr %i.jw, i64 348
  %i.li = load float, ptr %i.lh, align 4, !tbaa !50 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jw, i64 352
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !50 ; 2 uses
  %i.ll = fneg float %i.kc
  %i.lm = fmul float %i.lk, %i.ll
  %i.ln = call float @llvm.fmuladd.f32(float %i.li, float %i.kf, float %i.lm)
  %i.lo = load float, ptr %i.lg, align 4, !tbaa !50 ; 2 uses
  %i.lp = fneg float %i.kf
  %i.lq = fmul float %i.lo, %i.lp
  %i.lr = call float @llvm.fmuladd.f32(float %i.lk, float %i.jz, float %i.lq)
  %i.ls = fneg float %i.jz
  %i.lt = fmul float %i.li, %i.ls
  %i.lu = call float @llvm.fmuladd.f32(float %i.lo, float %i.kc, float %i.lt)
  %i.lv = load float, ptr %i.lf, align 4, !tbaa !50
  %i.lw = fadd float %i.ln, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %i.jw, i64 332
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !50
  %i.lz = fadd float %i.ly, %i.lr
  %i.ma = getelementptr inbounds nuw i8, ptr %i.jw, i64 336
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !50
  %i.mc = fadd float %i.lu, %i.mb
  %i.md = fsub float %i.ky, %i.lw
  %i.me = fsub float %i.lb, %i.lz
  %i.mf = fsub float %i.le, %i.mc
  %i.mg = load float, ptr %i.ez, align 8, !tbaa !50
  %i.mh = load float, ptr %i.fa, align 4, !tbaa !50
  %i.mi = fmul float %i.me, %i.mh
  %i.mj = call float @llvm.fmuladd.f32(float %i.mg, float %i.md, float %i.mi)
  %i.mk = load float, ptr %i.fb, align 8, !tbaa !50
  %i.ml = call noundef float @llvm.fmuladd.f32(float %i.mk, float %i.mf, float %i.mj)
  %i.mm = fneg float %i.ml
  %i.mn = load float, ptr %i.fc, align 8, !tbaa !91
  %i.mo = fmul float %i.mn, %i.mm                 ; 2 uses
  %i.mp = fcmp olt float %i.kg, %i.mo
  %.0.i = select i1 %i.mp, float %i.kg, float %i.mo ; 2 uses
  %i.mq = fneg float %i.kg                        ; 2 uses
  %i.mr = fcmp olt float %.0.i, %i.mq
  %.1.i = select i1 %i.mr, float %i.mq, float %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre250 = load ptr, ptr %i.er, align 8, !tbaa !42
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ms = phi ptr [ %i.iu, %bb.r ], [ %.pre250, %bb.s ] ; 5 uses
  %.0111 = phi float [ %i.jc, %bb.r ], [ %.1.i, %bb.s ] ; 2 uses
  %i.mt = load ptr, ptr %i.fd, align 8, !tbaa !29
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv235.a ; 2 uses
  store float 0.000000e+00, ptr %i.mu, align 4, !tbaa !50
  %i.mv = getelementptr inbounds nuw [288 x i8], ptr %i.ms, i64 %indvars.iv235.a
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 284 ; 3 uses
  store float 1.000000e+00, ptr %i.mw, align 4, !tbaa !104
  %i.mx = getelementptr inbounds nuw i8, ptr %i.iw, i64 280
  %i.my = load float, ptr %i.mx, align 8, !tbaa !83
  %i.mz = fmul float %1, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.iw, i64 232
  %i.nb = load float, ptr %i.na, align 8, !tbaa !105
  %i.nc = fmul float %i.mz, %i.nb                 ; 3 uses
  %i.nd = fmul float %i.nc, %i.nc
  store float %.0111, ptr %i.mu, align 4, !tbaa !50
  %i.ne = fmul float %.0111, 5.000000e-01         ; 2 uses
  %i.nf = load ptr, ptr %i.fe, align 8, !tbaa !29
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %indvars.iv235.a
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !50 ; 2 uses
  %i.ni = fmul float %i.nh, %i.nh
  %i.nj = call float @llvm.fmuladd.f32(float %i.ne, float %i.ne, float %i.ni) ; 2 uses
  %i.nk = fcmp ogt float %i.nj, %i.nd
  br i1 %i.nk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %sqrt = call float @llvm.sqrt.f32(float %i.nj)
  %i.nl = fdiv float %i.nc, %sqrt
  %i.nm = load float, ptr %i.mw, align 4, !tbaa !104
  %i.nn = fmul float %i.nl, %i.nm
  store float %i.nn, ptr %i.mw, align 4, !tbaa !104
  br label %bb.v

.critedge:                                        ; preds = %bb.p
  %i.no = load ptr, ptr %i.fd, align 8, !tbaa !29
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv235.a
  store float 0.000000e+00, ptr %i.np, align 4, !tbaa !50
  %i.nq = getelementptr inbounds nuw i8, ptr %i.iw, i64 284
  store float 1.000000e+00, ptr %i.nq, align 4, !tbaa !104
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %.critedge
  %i.nr = phi ptr [ %i.iu, %.critedge ], [ %i.ms, %bb.t ], [ %i.ms, %bb.u ]
  %i.ns = phi ptr [ %i.iv, %.critedge ], [ %i.ms, %bb.t ], [ %i.ms, %bb.u ]
  %.2 = phi i1 [ %.0108221, %.critedge ], [ %.0108221, %bb.t ], [ true, %bb.u ] ; 2 uses
  %indvars.iv.next236.a = add nuw nsw i64 %indvars.iv235.a, 1 ; 2 uses
  %i.nt = load i32, ptr %i.a, align 4, !tbaa !43  ; 4 uses
  %i.nu = sext i32 %i.nt to i64
  %i.nv = icmp slt i64 %indvars.iv.next236.a, %i.nu
  br i1 %i.nv, label %bb.p, label %._crit_edge

bb.w:                                             ; preds = %.lr.ph225, %bb.z
  %indvars.iv237 = phi i64 [ 0, %.lr.ph225 ], [ %indvars.iv.next238, %bb.z ] ; 4 uses
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv237 ; 3 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !50
  %i.ny = fcmp une float %i.nx, 0.000000e+00
  br i1 %i.ny, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.nz = getelementptr inbounds nuw [288 x i8], ptr %i.is, i64 %indvars.iv237
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 284 ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !104 ; 2 uses
  %i.oc = fcmp olt float %i.ob, 1.000000e+00
  br i1 %i.oc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv237 ; 2 uses
  %i.oe = load float, ptr %i.od, align 4, !tbaa !50
  %i.of = fmul float %i.ob, %i.oe
  store float %i.of, ptr %i.od, align 4, !tbaa !50
  %i.og = load float, ptr %i.oa, align 4, !tbaa !104
  %i.oh = load float, ptr %i.nw, align 4, !tbaa !50
  %i.oi = fmul float %i.og, %i.oh
  store float %i.oi, ptr %i.nw, align 4, !tbaa !50
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y, %bb.x
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next238, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit214, label %bb.w

.loopexit214:                                     ; preds = %bb.z, %._crit_edge
  %i.oj = icmp sgt i32 %i.nt, 0
  br i1 %i.oj, label %.lr.ph228, label %.loopexit

.lr.ph228:                                        ; preds = %.loopexit214
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.or = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ot = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.ov = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph228, %bb.ae
  %indvars.iv243 = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next244, %bb.ae ] ; 7 uses
  %i.ow = load ptr, ptr %i.ok, align 8, !tbaa !42
  %i.ox = getelementptr inbounds nuw [288 x i8], ptr %i.ow, i64 %indvars.iv243 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 2 uses
  %i.oz = load ptr, ptr %i.ol, align 8, !tbaa !45 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pb = load <2 x float>, ptr %i.oy, align 4, !tbaa !50
  %i.pc = load <2 x float>, ptr %i.pa, align 4, !tbaa !50
  %i.pd = fsub <2 x float> %i.pb, %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ox, i64 24 ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !50
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !50
  %i.pi = fsub float %i.pf, %i.ph
  %.sroa.3.12.vec.insert.i186 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pi, i64 0
  store <2 x float> %i.pd, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i186, ptr %i.om, align 8
  %i.pj = load ptr, ptr %i.on, align 8, !tbaa !29
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv243
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !50 ; 3 uses
  %i.pm = fcmp une float %i.pl, 0.000000e+00
  br i1 %i.pm, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.pn = load ptr, ptr %i.oo, align 8, !tbaa !22
  %i.po = getelementptr inbounds nuw [16 x i8], ptr %i.pn, i64 %indvars.iv243 ; 2 uses
  %i.pp = load <2 x float>, ptr %i.po, align 4, !tbaa !50
  %i.pq = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.pr = shufflevector <2 x float> %i.pq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ps = fmul <2 x float> %i.pr, %i.pp
  %i.pt = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !50
  %i.pv = fmul float %i.pl, %i.pu
  %.sroa.3.12.vec.insert.i191 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pv, i64 0
  store <2 x float> %i.ps, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i191, ptr %i.op, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.oz, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.pw = load ptr, ptr %i.oq, align 8, !tbaa !29
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %indvars.iv243 ; 2 uses
  %i.py = load float, ptr %i.px, align 4, !tbaa !50
  %i.pz = fcmp une float %i.py, 0.000000e+00
  br i1 %i.pz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.qa = load ptr, ptr %i.ok, align 8, !tbaa !42
  %i.qb = getelementptr inbounds nuw [288 x i8], ptr %i.qa, i64 %indvars.iv243
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 88
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !76 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qf = load <2 x float>, ptr %i.oy, align 4, !tbaa !50
  %i.qg = load <2 x float>, ptr %i.qe, align 4, !tbaa !50
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = load float, ptr %i.pe, align 4, !tbaa !50
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 64
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !50
  %i.ql = fsub float %i.qi, %i.qk
  %.sroa.3.12.vec.insert.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ql, i64 0
  store <2 x float> %i.qh, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i196, ptr %i.or, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.qm = load ptr, ptr %i.os, align 8, !tbaa !22
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %indvars.iv243 ; 2 uses
  %i.qo = load float, ptr %i.px, align 4, !tbaa !50 ; 2 uses
  %i.qp = load <2 x float>, ptr %i.qn, align 4, !tbaa !50
  %i.qq = insertelement <2 x float> poison, float %i.qo, i64 0
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qs = fmul <2 x float> %i.qr, %i.qp
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !50
  %i.qv = fmul float %i.qo, %i.qu
  %.sroa.3.12.vec.insert.i201 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qv, i64 0
  store <2 x float> %i.qs, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i201, ptr %i.ot, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ox, i64 248
  %i.qx = load float, ptr %i.qw, align 8, !tbaa !106
  %i.qy = load i32, ptr %i.ou, align 4, !tbaa !47
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %4, i64 %i.qz ; 2 uses
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !50
  %i.rc = fmul float %i.qx, %i.rb
  store float %i.rc, ptr %i.ra, align 4, !tbaa !50
  %i.rd = load ptr, ptr %i.ol, align 8, !tbaa !45
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.rd, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.re = load <2 x float>, ptr %7, align 8, !tbaa !50
  %i.rf = fneg <2 x float> %i.re
  %i.rg = load float, ptr %i.ot, align 8, !tbaa !50
  %i.rh = fneg float %i.rg
  %.sroa.3.12.vec.insert.i206 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.rh, i64 0
  store <2 x float> %i.rf, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i206, ptr %i.ov, align 8
  call void @_ZN11btRigidBody12applyImpulseERK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(564) %i.qd, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %i.ri = load i32, ptr %i.a, align 4, !tbaa !43
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next244, %i.rj
  br i1 %i.rk, label %bb.aa, label %.loopexit

.loopexit:                                        ; preds = %bb.ae, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit177, %.preheader215, %.loopexit214, %bb.a
  ret void
}

declare void @_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff(ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 4 dereferenceable(16), float noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %5) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %5, ptr %i.d, align 4, !tbaa !90
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load float, ptr %3, align 4, !tbaa !50   ; 2 uses
  %i.g = load float, ptr %i.e, align 4, !tbaa !50
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !50 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !50
  %i.m = fsub float %i.j, %i.l                    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load float, ptr %i.p, align 4, !tbaa !50
  %i.r = fsub float %i.o, %i.q                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !50 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 5 uses
  %i.w = fneg float %i.v                          ; 2 uses
  %i.x = fmul float %i.r, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.m, float %i.t, float %i.x) ; 3 uses
  %i.z = load float, ptr %4, align 4, !tbaa !50   ; 5 uses
  %i.aa = fneg float %i.t                         ; 2 uses
  %i.ab = fmul float %i.h, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.r, float %i.z, float %i.ab) ; 3 uses
  %i.ad = fneg float %i.z                         ; 2 uses
  %i.ae = fmul float %i.m, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.h, float %i.v, float %i.ae) ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !50
  %i.ak = fmul float %i.ac, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.y, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.af, float %i.al) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 284
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.as = load float, ptr %i.ar, align 4, !tbaa !50
  %i.at = fmul float %i.ac, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.y, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.aw = load float, ptr %i.av, align 4, !tbaa !50
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.af, float %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.az = load float, ptr %i.ay, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !50
  %i.bc = fmul float %i.ac, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.az, float %i.y, float %i.bc)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bf = load float, ptr %i.be, align 4, !tbaa !50
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.af, float %i.bd) ; 2 uses
  %i.bh = fneg float %i.m
  %i.bi = fmul float %i.bg, %i.bh
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.r, float %i.bi)
  %i.bk = fneg float %i.r
  %i.bl = fmul float %i.ao, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.h, float %i.bl)
  %i.bn = fneg float %i.h
  %i.bo = fmul float %i.ax, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.m, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.br = load float, ptr %i.bq, align 8, !tbaa !80
  %i.bs = fmul float %i.v, %i.bm
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.z, float %i.bj, float %i.bs)
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.bp, float %i.bt)
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !50
  %i.by = fsub float %i.f, %i.bx                  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !50
  %i.cb = fsub float %i.j, %i.ca                  ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !50
  %i.ce = fsub float %i.o, %i.cd                  ; 4 uses
  %i.cf = fmul float %i.ce, %i.w
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.t, float %i.cf) ; 3 uses
  %i.ch = fmul float %i.by, %i.aa
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.z, float %i.ch) ; 3 uses
  %i.cj = fmul float %i.cb, %i.ad
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.by, float %i.v, float %i.cj) ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.co = load float, ptr %i.cn, align 4, !tbaa !50
  %i.cp = fmul float %i.ci, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cg, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !50
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ck, float %i.cq) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 300
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !50
  %i.cy = fmul float %i.ci, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cg, float %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 316
  %i.db = load float, ptr %i.da, align 4, !tbaa !50
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.ck, float %i.cz) ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.de = load float, ptr %i.dd, align 4, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.dg = load float, ptr %i.df, align 4, !tbaa !50
  %i.dh = fmul float %i.ci, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.cg, float %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !50
  %i.dl = tail call noundef float @llvm.fmuladd.f32(float %i.dk, float %i.ck, float %i.di) ; 2 uses
  %i.dm = fneg float %i.cb
  %i.dn = fmul float %i.dl, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.ce, float %i.dn)
  %i.dp = fneg float %i.ce
  %i.dq = fmul float %i.ct, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.by, float %i.dq)
  %i.ds = fneg float %i.by
  %i.dt = fmul float %i.dc, %i.ds
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cb, float %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !80
  %i.dx = fmul float %i.v, %i.dr
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.z, float %i.do, float %i.dx)
  %i.dz = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.du, float %i.dy)
  %i.ea = fadd float %i.dw, %i.dz
  %i.eb = fadd float %i.bv, %i.ea
  %i.ec = fdiv float 1.000000e+00, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ec, ptr %i.ed, align 8, !tbaa !91
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 7 uses
  %3 = alloca %class.btVector3, align 8           ; 7 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw [288 x i8], ptr %i.j, i64 %indvars.iv ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i8, ptr %i.l, align 4, !tbaa !58, !range !17, !noundef !81
  %i.n = trunc nuw i8 %i.m to i1
  %. = select i1 %i.n, float 0.000000e+00, float 2.550000e+02
  store float %., ptr %2, align 4, !tbaa !50
  store <2 x float> <float 0.000000e+00, float 2.550000e+02>, ptr %i.d, align 4, !tbaa !50
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !57
  %i.q = load i32, ptr %i.g, align 8, !tbaa !46
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r
  %i.x = load float, ptr %i.s, align 4, !tbaa !50
  %i.y = load float, ptr %i.u, align 4, !tbaa !50
  %i.z = load float, ptr %i.w, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = load <2 x float>, ptr %3, align 8, !tbaa !50
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.y, i64 1
  %i.ad = fadd <2 x float> %i.ac, %i.aa
  %i.ae = load float, ptr %i.h, align 8, !tbaa !50
  %i.af = fadd float %i.z, %i.ae
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ad, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw [288 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %1, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !43
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(36) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.btCollisionWorld::ClosestRayResultCallback", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !111
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 1, ptr %i.c, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 -1, ptr %i.d, align 2, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !114
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, i64 16), ptr %4, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !57
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !115
  call void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !111  ; 4 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = load i32, ptr %i.k, align 8, !tbaa !119
  %.not = icmp eq i32 %i.l, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.n = load i32, ptr %i.m, align 8, !tbaa !120
  %i.o = and i32 %i.n, 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !57
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !57
  %i.t = load float, ptr %i.s, align 4, !tbaa !50 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 3 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !50 ; 3 uses
  %i.aa = call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.x)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ac = fmul float %i.t, %i.ab
  store float %i.ac, ptr %i.s, align 4, !tbaa !50
  %i.ad = fmul float %i.v, %i.ab
  store float %i.ad, ptr %i.u, align 4, !tbaa !50
  %i.ae = fmul float %i.z, %i.ab
  store float %i.ae, ptr %i.y, align 4, !tbaa !50
  %i.af = load float, ptr %i.a, align 8, !tbaa !107
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.af, ptr %i.ag, align 4, !tbaa !74
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %.critedge
  %.1 = phi ptr [ %i.j, %.critedge ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.1
}

declare void @_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld17RayResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN18btVehicleRaycasterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN25btDefaultVehicleRaycasterD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, float noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(224) %0, float noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btRaycastVehicle19setCoordinateSystemEiii(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %2, ptr %i.b, align 4, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %3, ptr %i.c, align 8, !tbaa !48
  ret void
}

declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280)) unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #16

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.d = load i16, ptr %i.c, align 2, !tbaa !113
  %i.e = and i16 %i.d, %i.b
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i16, ptr %i.f, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !123
  %i.j = and i16 %i.i, %i.g
  %i.k = icmp ne i16 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.b, ptr %i.c, align 8, !tbaa !107
  %i.d = load ptr, ptr %1, align 8, !tbaa !127    ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !111
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !57
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load float, ptr %i.h, align 4, !tbaa !50
  %i.k = load float, ptr %i.i, align 8, !tbaa !50 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !50 ; 3 uses
  %i.p = fmul float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.t, align 8, !tbaa !50 ; 3 uses
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.u, float %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.z = load float, ptr %i.y, align 4, !tbaa !50
  %i.aa = fmul float %i.o, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.x, float %i.k, float %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !50
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.u, float %i.ab)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ag = load float, ptr %i.af, align 4, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !50
  %i.aj = fmul float %i.o, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.k, float %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.am = load float, ptr %i.al, align 4, !tbaa !50
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.u, float %i.ak)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.v, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ae, i64 1
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.an, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load float, ptr %i.a, align 8, !tbaa !124 ; 3 uses
  %i.at = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.au = load <2 x float>, ptr %i.aq, align 8, !tbaa !50
  %i.av = load <2 x float>, ptr %i.ar, align 8, !tbaa !50
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.ax, %i.av
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.au, <2 x float> %i.ay)
  store <2 x float> %i.bb, ptr %i.ap, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load float, ptr %i.be, align 8, !tbaa !50
  %i.bg = fmul float %i.as, %i.bf
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.at, float %i.bd, float %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %i.bh, ptr %i.bi, align 8, !tbaa !50
  %i.bj = load float, ptr %i.a, align 8, !tbaa !124
  ret float %i.bj
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_btRaycastVehicle.cpp() #2 section ".text.startup" {
bb.a:
  %0 = alloca %class.btVector3, align 4           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564) @_ZL13s_fixedObject, float noundef 0.000000e+00, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.a = call i32 @__cxa_atexit(ptr nonnull @_ZN11btRigidBodyD2Ev, ptr nonnull @_ZL13s_fixedObject, ptr nonnull @__dso_handle) #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 16}
!11 = !{!"_ZTS20btAlignedObjectArrayIP17btTypedConstraintE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !16, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIP17btTypedConstraintLj16EE"}
!13 = !{!"p2 _ZTS17btTypedConstraint", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{!19, !16, i64 24}
!19 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !20, i64 0, !5, i64 4, !5, i64 8, !21, i64 16, !16, i64 24}
!20 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!21 = !{!"p1 _ZTS9btVector3", !15, i64 0}
!22 = !{!19, !21, i64 16}
!23 = !{!19, !5, i64 4}
!24 = !{!19, !5, i64 8}
!25 = !{!26, !16, i64 24}
!26 = !{!"_ZTS20btAlignedObjectArrayIfE", !27, i64 0, !5, i64 4, !5, i64 8, !28, i64 16, !16, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!28 = !{!"p1 float", !15, i64 0}
!29 = !{!26, !28, i64 16}
!30 = !{!26, !5, i64 4}
!31 = !{!26, !5, i64 8}
!32 = !{!33, !36, i64 144}
!33 = !{!"_ZTS16btRaycastVehicle", !34, i64 0, !19, i64 8, !19, i64 40, !26, i64 72, !26, i64 104, !35, i64 136, !35, i64 140, !36, i64 144, !35, i64 152, !35, i64 156, !35, i64 160, !37, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !38, i64 192}
!34 = !{!"_ZTS17btActionInterface"}
!35 = !{!"float", !6, i64 0}
!36 = !{!"p1 _ZTS18btVehicleRaycaster", !15, i64 0}
!37 = !{!"p1 _ZTS11btRigidBody", !15, i64 0}
!38 = !{!"_ZTS20btAlignedObjectArrayI11btWheelInfoE", !39, i64 0, !5, i64 4, !5, i64 8, !40, i64 16, !16, i64 24}
!39 = !{!"_ZTS18btAlignedAllocatorI11btWheelInfoLj16EE"}
!40 = !{!"p1 _ZTS11btWheelInfo", !15, i64 0}
!41 = !{!38, !16, i64 24}
!42 = !{!38, !40, i64 16}
!43 = !{!38, !5, i64 4}
!44 = !{!38, !5, i64 8}
!45 = !{!33, !37, i64 168}
!46 = !{!33, !5, i64 176}
!47 = !{!33, !5, i64 180}
!48 = !{!33, !5, i64 184}
!49 = !{!33, !35, i64 160}
!50 = !{!35, !35, i64 0}
!51 = !{!52, !35, i64 12}
!52 = !{!"_ZTSN16btRaycastVehicle15btVehicleTuningE", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16}
!53 = !{i64 0, i64 16, !54, i64 16, i64 16, !54, i64 32, i64 4, !50, i64 36, i64 16, !54, i64 52, i64 16, !54, i64 68, i64 16, !54, i64 84, i64 1, !55, i64 88, i64 8, !56}
!54 = !{!6, !6, i64 0}
!55 = !{!16, !16, i64 0}
!56 = !{!15, !15, i64 0}
!57 = !{i64 0, i64 16, !54}
!58 = !{!59, !16, i64 84}
!59 = !{!"_ZTS11btWheelInfo", !60, i64 0, !62, i64 96, !61, i64 160, !61, i64 176, !61, i64 192, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !16, i64 260, !15, i64 264, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284}
!60 = !{!"_ZTSN11btWheelInfo11RaycastInfoE", !61, i64 0, !61, i64 16, !35, i64 32, !61, i64 36, !61, i64 52, !61, i64 68, !16, i64 84, !15, i64 88}
!61 = !{!"_ZTS9btVector3", !6, i64 0}
!62 = !{!"_ZTS11btTransform", !63, i64 0, !61, i64 48}
!63 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!64 = !{!65, !69, i64 512}
!65 = !{!"_ZTS11btRigidBody", !66, i64 0, !63, i64 280, !61, i64 328, !61, i64 344, !35, i64 360, !61, i64 364, !61, i64 380, !61, i64 396, !61, i64 412, !61, i64 428, !61, i64 444, !61, i64 460, !35, i64 476, !35, i64 480, !16, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !69, i64 512, !11, i64 520, !5, i64 552, !5, i64 556, !5, i64 560}
!66 = !{!"_ZTS17btCollisionObject", !62, i64 8, !62, i64 72, !61, i64 136, !61, i64 152, !61, i64 168, !16, i64 184, !35, i64 188, !67, i64 192, !68, i64 200, !68, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !15, i64 248, !5, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !16, i64 272, !6, i64 273}
!67 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!68 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!69 = !{!"p1 _ZTS13btMotionState", !15, i64 0}
!70 = !{!59, !35, i64 236}
!71 = !{!59, !35, i64 240}
!72 = !{!59, !35, i64 32}
!73 = !{!59, !35, i64 216}
!74 = !{!75, !35, i64 32}
!75 = !{!"_ZTSN18btVehicleRaycaster24btVehicleRaycasterResultE", !61, i64 0, !61, i64 16, !35, i64 32}
!76 = !{!59, !15, i64 88}
!77 = !{!59, !35, i64 212}
!78 = !{!59, !35, i64 276}
!79 = !{!59, !35, i64 272}
!80 = !{!65, !35, i64 360}
!81 = !{}
!82 = !{!59, !35, i64 220}
!83 = !{!59, !35, i64 280}
!84 = !{!59, !35, i64 244}
!85 = !{!59, !35, i64 252}
!86 = !{!59, !35, i64 256}
!87 = !{!88, !37, i64 0}
!88 = !{!"_ZTS19btWheelContactPoint", !37, i64 0, !37, i64 8, !61, i64 16, !61, i64 32, !35, i64 48, !35, i64 52}
!89 = !{!88, !37, i64 8}
!90 = !{!88, !35, i64 52}
!91 = !{!88, !35, i64 48}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = distinct !{!95, !96}
!96 = !{!"llvm.loop.unroll.disable"}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !93, !94}
!99 = distinct !{!99, !96}
!100 = distinct !{!100, !93}
!101 = distinct !{!101, !93, !94}
!102 = distinct !{!102, !96}
!103 = distinct !{!103, !93}
!104 = !{!59, !35, i64 284}
!105 = !{!59, !35, i64 232}
!106 = !{!59, !35, i64 248}
!107 = !{!108, !35, i64 8}
!108 = !{!"_ZTSN16btCollisionWorld17RayResultCallbackE", !35, i64 8, !109, i64 16, !110, i64 24, !110, i64 26, !5, i64 28}
!109 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!110 = !{!"short", !6, i64 0}
!111 = !{!108, !109, i64 16}
!112 = !{!108, !110, i64 24}
!113 = !{!108, !110, i64 26}
!114 = !{!108, !5, i64 28}
!115 = !{!116, !118, i64 8}
!116 = !{!"_ZTS25btDefaultVehicleRaycaster", !117, i64 0, !118, i64 8}
!117 = !{!"_ZTS18btVehicleRaycaster"}
!118 = !{!"p1 _ZTS15btDynamicsWorld", !15, i64 0}
!119 = !{!66, !5, i64 256}
!120 = !{!66, !5, i64 216}
!121 = !{!122, !110, i64 8}
!122 = !{!"_ZTS17btBroadphaseProxy", !15, i64 0, !110, i64 8, !110, i64 10, !15, i64 16, !5, i64 24, !61, i64 28, !61, i64 44}
!123 = !{!122, !110, i64 10}
!124 = !{!125, !35, i64 32}
!125 = !{!"_ZTSN16btCollisionWorld14LocalRayResultE", !109, i64 0, !126, i64 8, !61, i64 16, !35, i64 32}
!126 = !{!"p1 _ZTSN16btCollisionWorld14LocalShapeInfoE", !15, i64 0}
!127 = !{!125, !109, i64 0}
end_hunk_0
