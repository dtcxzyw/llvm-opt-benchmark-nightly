Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/PartitionedMesh?download=true
inline.NumInlined: 248
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi:bb.a
  %i.bw = load <4 x float>, ptr %i.bv, align 4, !tbaa !42 ; 5 uses
  store <4 x float> %i.bw, ptr %i.d, align 4, !tbaa !42
  %.05.i78 = add nsw i32 %1, 1
  %i.bx = icmp slt i32 %.05.i78, %2
  br i1 %i.bx, label %.lr.ph.preheader.i79, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88

.lr.ph.preheader.i79:                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76
  %i.by = add nsw i64 %i.bu, 1                    ; 2 uses
  %i.bz = add i32 %2, -2
  %i.ca = sub i32 %1, %2
  %i.cb = and i32 %i.ca, 1
  %lcmp.mod160.not.not = icmp eq i32 %i.cb, 0
  br i1 %lcmp.mod160.not.not, label %.lr.ph.i80.prol, label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol:                                  ; preds = %.lr.ph.preheader.i79
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.bq, i64 %i.by
  %i.cd = load <4 x float>, ptr %i.cc, align 4, !tbaa !42 ; 3 uses
  %i.ce = shufflevector <4 x float> %i.bw, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = fcmp olt <4 x float> %i.ce, %i.cf
  %i.ch = select <4 x i1> %i.cg, <4 x float> %i.bw, <4 x float> %i.cd ; 2 uses
  %indvars.iv.next.i83.prol = add nsw i64 %i.bu, 2
  br label %.lr.ph.i80.prol.loopexit

.lr.ph.i80.prol.loopexit:                         ; preds = %.lr.ph.i80.prol, %.lr.ph.preheader.i79
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.preheader.i79 ], [ %i.ch, %.lr.ph.i80.prol ]
  %indvars.iv.i81.unr = phi i64 [ %i.by, %.lr.ph.preheader.i79 ], [ %indvars.iv.next.i83.prol, %.lr.ph.i80.prol ]
  %.unr161 = phi <4 x float> [ %i.bw, %.lr.ph.preheader.i79 ], [ %i.ch, %.lr.ph.i80.prol ]
  %i.ci = icmp eq i32 %i.bz, %1
  br i1 %i.ci, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.prol.loopexit, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i83.1, %.lr.ph.i80 ], [ %indvars.iv.i81.unr, %.lr.ph.i80.prol.loopexit ] ; 3 uses
  %i.cj = phi <4 x float> [ %i.cw, %.lr.ph.i80 ], [ %.unr161, %.lr.ph.i80.prol.loopexit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.cl = load <4 x float>, ptr %i.ck, align 4, !tbaa !42 ; 3 uses
  %i.cm = shufflevector <4 x float> %i.cj, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.co = fcmp olt <4 x float> %i.cm, %i.cn
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.cj, <4 x float> %i.cl ; 3 uses
  %i.cq = getelementptr [20 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.cr = getelementptr i8, ptr %i.cq, i64 20
  %i.cs = load <4 x float>, ptr %i.cr, align 4, !tbaa !42 ; 3 uses
  %i.ct = shufflevector <4 x float> %i.cp, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cv = fcmp olt <4 x float> %i.ct, %i.cu
  %i.cw = select <4 x i1> %i.cv, <4 x float> %i.cp, <4 x float> %i.cs ; 2 uses
  %indvars.iv.next.i83.1 = add nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %lftr.wideiv.i84.1 = trunc i64 %indvars.iv.next.i83.1 to i32
  %exitcond.not.i85.1 = icmp eq i32 %2, %lftr.wideiv.i84.1
  br i1 %exitcond.not.i85.1, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, label %.lr.ph.i80, !llvm.loop !50

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit: ; preds = %.lr.ph.i80, %.lr.ph.i80.prol.loopexit
  %.lcssa = phi <4 x float> [ %.lcssa.unr, %.lr.ph.i80.prol.loopexit ], [ %i.cw, %.lr.ph.i80 ]
  store <4 x float> %.lcssa, ptr %i.d, align 4, !tbaa !42
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88:  ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88.loopexit, %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit76
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.k) #13
  %i.cx = load <2 x float>, ptr %i.bt, align 4, !tbaa !42
  %i.cy = load <2 x float>, ptr %i.d, align 4, !tbaa !42
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !15
  %i.db = getelementptr inbounds [20 x i8], ptr %i.da, i64 %i.bu
  %i.dc = sext i32 %i.a to i64
  %i.dd = extractelement <2 x float> %i.cz, i64 0
  %i.de = extractelement <2 x float> %i.cz, i64 1
  %i.df = fcmp oge float %i.dd, %i.de
  %_ZN12_GLOBAL__N_111compareMinXEPKvS1_._ZN12_GLOBAL__N_111compareMinYEPKvS1_ = select i1 %i.df, ptr @_ZN12_GLOBAL__N_111compareMinXEPKvS1_, ptr @_ZN12_GLOBAL__N_111compareMinYEPKvS1_
  tail call void @qsort(ptr noundef %i.db, i64 noundef %i.dc, i64 noundef 20, ptr noundef nonnull %_ZN12_GLOBAL__N_111compareMinXEPKvS1_._ZN12_GLOBAL__N_111compareMinYEPKvS1_) #10
  %i.dg = sdiv i32 %i.a, 2
  %i.dh = add nsw i32 %i.dg, %1                   ; 4 uses
  %i.di = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %.not.i.i.i.i89 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i.i.i89, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88
  %i.dn = sdiv exact i64 %i.dm, 20
  %i.do = icmp ugt i64 %i.dn, 461168601842738790
  br i1 %i.do, label %bb.o, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91: ; preds = %bb.n
  %i.dp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #12 ; 5 uses
  store ptr %i.dp, ptr %10, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dm ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !26
  %i.dt = icmp sgt i64 %i.dm, 20
  br i1 %i.dt, label %bb.p, label %bb.q, !prof !28

bb.p:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dp, ptr align 4 %i.dj, i64 %i.dm, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i91
  %i.du = icmp eq i64 %i.dm, 20
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dp, ptr noundef nonnull align 4 dereferenceable(20) %i.dj, i64 20, i1 false), !tbaa.struct !30
  br label %bb.s

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit88
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dw = getelementptr inbounds i8, ptr null, i64 %i.dm ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %10, align 8
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !26
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %i.dh, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %i.dh, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.dm) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94:  ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit92, %bb.s
  %i.dy = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.dz = load ptr, ptr %0, align 8, !tbaa !15    ; 4 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %.not.i.i.i.i95 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i.i.i95, label %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94
  %i.ed = sdiv exact i64 %i.ec, 20
  %i.ee = icmp ugt i64 %i.ed, 461168601842738790
  br i1 %i.ee, label %bb.u, label %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97: ; preds = %bb.t
  %i.ef = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #12 ; 5 uses
  store ptr %i.ef, ptr %11, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.ec ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !26
  %i.ej = icmp sgt i64 %i.ec, 20
  br i1 %i.ej, label %bb.v, label %bb.w, !prof !28

bb.v:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr align 4 %i.dz, i64 %i.ec, i1 false)
  br label %bb.y

bb.w:                                             ; preds = %_ZNSt12_Vector_baseI13IndexedBoundsSaIS0_EEC2EmRKS1_.exit.i97
  %i.ek = icmp eq i64 %i.ec, 20
  br i1 %i.ek, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ef, ptr noundef nonnull align 4 dereferenceable(20) %i.dz, i64 20, i1 false), !tbaa.struct !30
  br label %bb.y

_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit94
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.em = getelementptr inbounds i8, ptr null, i64 %i.ec ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %11, align 8
  store ptr %i.em, ptr %i.en, align 8, !tbaa !26
  store ptr %i.em, ptr %i.el, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %11, i32 noundef %i.dh, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  store ptr %i.eh, ptr %i.eg, align 8, !tbaa !25
  call fastcc void @_ZN12_GLOBAL__N_19subdivideESt6vectorI13IndexedBoundsSaIS1_EEiiiRiPN15PartitionedMesh4NodeEiS4_PiPKi(ptr nofreeobj noundef align 8 dereferenceable(24) %11, i32 noundef %i.dh, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef %8, ptr noundef %9)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ec) #13
  br label %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100

_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100: ; preds = %_ZNSt6vectorI13IndexedBoundsSaIS0_EEC2ERKS2_.exit98, %bb.y
  %i.eo = load i32, ptr %4, align 4, !tbaa !24
  %i.ep = sub nsw i32 %i.b, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit, %_ZNSt6vectorI13IndexedBoundsSaIS0_EED2Ev.exit100, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK15PartitionedMesh23GetNodesOverlappingRectEPfS0_RSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %storemerge1423 = phi i32 [ 0, %.lr.ph ], [ %storemerge.a, %bb.l ] ; 5 uses
  %i.h = sext i32 %storemerge1423 to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.val15 = load float, ptr %i.l, align 4
  %.val16 = load float, ptr %i.k, align 4, !tbaa !42
  %i.m = getelementptr i8, ptr %i.j, i64 12
  %.val17 = load float, ptr %i.m, align 4
  %i.n = load float, ptr %1, align 4, !tbaa !42
  %i.o = fcmp ugt float %i.n, %.val16
  br i1 %i.o, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load float, ptr %i.j, align 4
  %i.p = load float, ptr %2, align 4, !tbaa !42
  %i.q = fcmp ult float %i.p, %.val
  br i1 %i.q, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load float, ptr %i.d, align 4, !tbaa !42
  %i.s = fcmp ugt float %i.r, %.val17
  br i1 %i.s, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, label %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit

_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = icmp sgt i32 %i.u, -1
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit: ; preds = %bb.d
  %i.w = load float, ptr %i.e, align 4, !tbaa !42
  %i.x = fcmp oge float %i.w, %.val15             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !45
  %i.aa = icmp sgt i32 %i.z, -1                   ; 2 uses
  %or.cond = and i1 %i.x, %i.aa
  br i1 %or.cond, label %bb.e, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !22  ; 4 uses
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %storemerge1423, ptr %i.ab, align 4, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ad, ptr %i.f, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %3, align 8, !tbaa !23    ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #12 ; 4 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i32 %storemerge1423, ptr %i.aq, align 4, !tbaa !24
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ap, ptr %3, align 8, !tbaa !23
  store ptr %i.as, ptr %i.f, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit
  %4 = phi i1 [ %i.v, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.aa, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %5 = phi ptr [ %i.t, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.y, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %i.au = phi i1 [ false, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit.thread ], [ %i.x, %_ZN12_GLOBAL__N_116checkOverlapRectEPKfS1_S1_S1_.exit ]
  %or.cond3 = or i1 %4, %i.au
  br i1 %or.cond3, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread, label %bb.k

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.av = add nsw i32 %storemerge1423, 1
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %i.aw = sub nsw i32 %storemerge1423, %6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread
  %storemerge.a = phi i32 [ %i.aw, %bb.k ], [ %i.av, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread ] ; 2 uses
  %7 = load i32, ptr %i.a, align 8, !tbaa !38
  %i.ax = icmp slt i32 %storemerge.a, %7
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !53
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK15PartitionedMesh26GetNodesOverlappingSegmentEPfS0_RSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.q, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.cd, %bb.q ]
  %storemerge1425 = phi i32 [ 0, %.lr.ph ], [ %storemerge, %bb.q ] ; 5 uses
  %i.i = zext nneg i32 %storemerge1425 to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.val = load float, ptr %2, align 4, !tbaa !42
  %.val15 = load float, ptr %i.d, align 4, !tbaa !42
  %i.m = load float, ptr %1, align 4, !tbaa !42   ; 5 uses
  %i.n = fsub float %.val, %i.m                   ; 2 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !42 ; 5 uses
  %i.p = fsub float %.val15, %i.o                 ; 2 uses
  %i.q = tail call float @llvm.fabs.f32(float %i.n)
  %i.r = fcmp olt float %i.q, f0x358637BD
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = load float, ptr %i.k, align 4, !tbaa !42
  %i.t = fcmp olt float %i.m, %i.s
  br i1 %i.t, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load float, ptr %i.l, align 4, !tbaa !42
  %i.v = fcmp ogt float %i.m, %i.u
  br i1 %i.v, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.w = fdiv float 1.000000e+00, %i.n            ; 2 uses
  %i.x = load float, ptr %i.k, align 4, !tbaa !42
  %i.y = fsub float %i.x, %i.m
  %i.z = fmul float %i.w, %i.y                    ; 3 uses
  %i.aa = load float, ptr %i.l, align 4, !tbaa !42
  %i.ab = fsub float %i.aa, %i.m
  %i.ac = fmul float %i.w, %i.ab                  ; 3 uses
  %i.ad = fcmp ogt float %i.z, %i.ac              ; 2 uses
  %.043.i = select i1 %i.ad, float %i.ac, float %i.z ; 2 uses
  %.042.i = select i1 %i.ad, float %i.z, float %i.ac ; 2 uses
  %i.ae = fcmp ogt float %.043.i, 0.000000e+00
  %.151.i = select i1 %i.ae, float %.043.i, float 0.000000e+00 ; 2 uses
  %i.af = fcmp olt float %.042.i, 1.000000e+00
  %.148.i = select i1 %i.af, float %.042.i, float 1.000000e+00 ; 2 uses
  %i.ag = fcmp ule float %.151.i, %.148.i
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %.252.i = phi float [ 0.000000e+00, %bb.d ], [ %.151.i, %bb.e ] ; 2 uses
  %.249.i = phi float [ 1.000000e+00, %bb.d ], [ %.148.i, %bb.e ] ; 2 uses
  %i.ah = tail call float @llvm.fabs.f32(float %i.p)
  %i.ai = fcmp olt float %i.ah, f0x358637BD
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = fdiv float 1.000000e+00, %i.p           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !42
  %i.am = fsub float %i.al, %i.o
  %i.an = fmul float %i.aj, %i.am                 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !42
  %i.aq = fsub float %i.ap, %i.o
  %i.ar = fmul float %i.aj, %i.aq                 ; 3 uses
  %i.as = fcmp ogt float %i.an, %i.ar             ; 2 uses
  %.043.1.i = select i1 %i.as, float %i.ar, float %i.an ; 2 uses
  %.042.1.i = select i1 %i.as, float %i.an, float %i.ar ; 2 uses
  %i.at = fcmp ogt float %.043.1.i, %.252.i
  %.151.1.i = select i1 %i.at, float %.043.1.i, float %.252.i
  %i.au = fcmp olt float %.042.1.i, %.249.i
  %.148.1.i = select i1 %i.au, float %.042.1.i, float %.249.i
  %i.av = fcmp ule float %.151.1.i, %.148.1.i
  br i1 %i.av, label %_ZN12_GLOBAL__N_119checkOverlapSegmentEPKfS1_S1_S1_.exit, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !42
  %i.ay = fcmp olt float %i.o, %i.ax
  br i1 %i.ay, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !42
  %i.bb = fcmp ogt float %i.o, %i.ba
  br i1 %i.bb, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit, label %_ZN12_GLOBAL__N_119checkOverlapSegmentEPKfS1_S1_S1_.exit

_ZN12_GLOBAL__N_119checkOverlapSegmentEPKfS1_S1_S1_.exit: ; preds = %bb.g, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.j, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_119checkOverlapSegmentEPKfS1_S1_S1_.exit
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !22  ; 4 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !46
  %.not.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %storemerge1425, ptr %i.bf, align 4, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store ptr %i.bh, ptr %i.f, align 8, !tbaa !22
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %3, align 8, !tbaa !23    ; 4 uses
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %bb.m, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bn = ashr exact i64 %i.bl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951)
  %i.br = select i1 %i.bp, i64 2305843009213693951, i64 %i.bq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #12 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 %storemerge1425, ptr %i.bu, align 4, !tbaa !24
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.n, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.not.i17.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bl) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bt, ptr %3, align 8, !tbaa !23
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.bx, ptr %i.g, align 8, !tbaa !46
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.h, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !45 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread, label %bb.p

_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.k, %_ZN12_GLOBAL__N_119checkOverlapSegmentEPKfS1_S1_S1_.exit, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.cb = add nuw nsw i32 %storemerge1425, 1
  %.pre = load i32, ptr %i.a, align 8, !tbaa !38
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit
  %i.cc = sub nsw i32 %storemerge1425, %i.bz
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread
  %i.cd = phi i32 [ %i.h, %bb.p ], [ %.pre, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread ] ; 2 uses
  %storemerge = phi i32 [ %i.cc, %bb.p ], [ %i.cb, %_ZNSt6vectorIiSaIiEE12emplace_backIJRiEEES3_DpOT_.exit.thread ] ; 2 uses
  %i.ce = icmp slt i32 %storemerge, %i.cd
  br i1 %i.ce, label %bb.b, label %._crit_edge, !llvm.loop !54
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13IndexedBoundsSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
