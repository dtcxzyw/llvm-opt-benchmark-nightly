Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN10btSoftBody16generateClustersEii:bb.a
  store ptr %.0.i.i.i243, ptr %i.ks, align 8, !tbaa !411
  store i32 %i.kl, ptr %i.kh, align 8, !tbaa !948
  %.pre754 = load i32, ptr %i.h, align 4, !tbaa !171
  br label %bb.u

.lr.ph597:                                        ; preds = %.lr.ph597.preheader, %.lr.ph597
  %indvars.iv672 = phi i64 [ 1, %.lr.ph597.preheader ], [ %indvars.iv.next673, %.lr.ph597 ] ; 3 uses
  %.0132594 = phi float [ %i.ka, %.lr.ph597.preheader ], [ %.1133, %.lr.ph597 ] ; 2 uses
  %.0134593 = phi i32 [ 0, %.lr.ph597.preheader ], [ %.1135, %.lr.ph597 ]
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %indvars.iv672 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !253
  %i.lz = fsub float %i.ly, %.sroa.8.0.copyload
  %i.ma = load <2 x float>, ptr %i.lw, align 4, !tbaa !253
  %i.mb = fsub <2 x float> %i.ma, %i.jn
  %i.mc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mb) ; 2 uses
  %shift = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1192 = fadd <2 x float> %i.mc, %shift
  %i.md = extractelement <2 x float> %foldExtExtBinop1192, i64 0
  %i.me = tail call noundef float @llvm.fabs.f32(float %i.lz)
  %i.mf = fadd float %i.md, %i.me                 ; 2 uses
  %i.mg = fcmp olt float %i.mf, %.0132594         ; 2 uses
  %i.mh = trunc nuw nsw i64 %indvars.iv672 to i32
  %.1135 = select i1 %i.mg, i32 %i.mh, i32 %.0134593 ; 2 uses
  %.1133 = select i1 %i.mg, float %i.mf, float %.0132594
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1 ; 2 uses
  %exitcond677.not = icmp eq i64 %indvars.iv.next673, %wide.trip.count676
  br i1 %exitcond677.not, label %._crit_edge598.loopexit, label %.lr.ph597, !llvm.loop !884

bb.u:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247, %bb.q, %._crit_edge598
  %i.mi = phi i32 [ %.pre754, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.jj, %bb.q ], [ %i.jj, %._crit_edge598 ] ; 3 uses
  %i.mj = phi i32 [ %.pre2.i248, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i247 ], [ %i.kg, %bb.q ], [ %i.kg, %._crit_edge598 ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !411
  %i.mm = sext i32 %i.mj to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.ml, i64 %i.mm
  store ptr %i.jl, ptr %i.mn, align 8, !tbaa !316
  %i.mo = add nsw i32 %i.mj, 1
  store i32 %i.mo, ptr %i.kf, align 4, !tbaa !410
  %indvars.iv.next679 = add nuw nsw i64 %indvars.iv678, 1 ; 2 uses
  %i.mp = sext i32 %i.mi to i64
  %i.mq = icmp slt i64 %indvars.iv.next679, %i.mp
  br i1 %i.mq, label %.lr.ph601, label %._crit_edge602, !llvm.loop !885

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.thread

._crit_edge602:                                   ; preds = %bb.u, %.preheader548
  %.lcssa559 = phi i32 [ %i.gi, %.preheader548 ], [ %i.mi, %bb.u ] ; 4 uses
  %i.ms = icmp slt i32 %i.gf, %2
  %i.mt = select i1 %.1141, i1 %i.ms, i1 false
  br i1 %i.mt, label %.preheader547.preheader, label %bb.w, !llvm.loop !886

bb.w:                                             ; preds = %._crit_edge602
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.mu, align 8, !tbaa !249
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.mv, align 8, !tbaa !250
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.mw, align 4, !tbaa !251
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.mx, align 8, !tbaa !252
  %i.my = icmp sgt i32 %.lcssa559, 0
  br i1 %i.my, label %bb.x, label %.loopexit545

bb.x:                                             ; preds = %bb.w
  %i.mz = zext nneg i32 %.lcssa559 to i64
  %i.na = shl nuw nsw i64 %i.mz, 2                ; 2 uses
  %i.nb = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.na, i32 noundef 16)
          to label %.lr.ph.i258 unwind label %bb.z ; 3 uses

.lr.ph.i258:                                      ; preds = %bb.x
  store i8 1, ptr %i.mu, align 8, !tbaa !249
  store ptr %i.nb, ptr %i.mv, align 8, !tbaa !250
  store i32 %.lcssa559, ptr %i.mx, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.nb, i8 -1, i64 %i.na, i1 false), !tbaa !275
  br label %.loopexit545

.loopexit545:                                     ; preds = %.lr.ph.i258, %bb.w
  %i.nc = phi ptr [ %i.nb, %.lr.ph.i258 ], [ null, %bb.w ] ; 4 uses
  store i32 %.lcssa559, ptr %i.mw, align 4, !tbaa !251
  %i.nd = load i32, ptr %i.b, align 4, !tbaa !235 ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.preheader544.lr.ph, label %.preheader543

.preheader544.lr.ph:                              ; preds = %.loopexit545
  %i.nf = load ptr, ptr %i.fy, align 8, !tbaa !234
  br label %.preheader544

.preheader544:                                    ; preds = %.preheader544.lr.ph, %._crit_edge606
  %i.ng = phi i32 [ %i.nd, %.preheader544.lr.ph ], [ %i.nx, %._crit_edge606 ]
  %indvars.iv684 = phi i64 [ 0, %.preheader544.lr.ph ], [ %indvars.iv.next685, %._crit_edge606 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv684
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !378 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 36 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !410
  %i.nl = icmp sgt i32 %i.nk, 0
  br i1 %i.nl, label %.lr.ph605, label %._crit_edge606

.lr.ph605:                                        ; preds = %.preheader544
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 48
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !411
  %i.no = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = trunc nuw nsw i64 %indvars.iv684 to i32
  br label %bb.aa

.preheader543:                                    ; preds = %._crit_edge606, %.loopexit545
  %i.nr = phi i32 [ %i.nd, %.loopexit545 ], [ %i.nx, %._crit_edge606 ]
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !183
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %.lr.ph611, label %._crit_edge612

.lr.ph611:                                        ; preds = %.preheader543
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.nw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ab

._crit_edge606.loopexit:                          ; preds = %bb.aa
  %.pre755 = load i32, ptr %i.b, align 4, !tbaa !235
  br label %._crit_edge606

._crit_edge606:                                   ; preds = %._crit_edge606.loopexit, %.preheader544
  %i.nx = phi i32 [ %.pre755, %._crit_edge606.loopexit ], [ %i.ng, %.preheader544 ] ; 3 uses
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  %i.nz = icmp slt i64 %indvars.iv.next685, %i.ny
  br i1 %i.nz, label %.preheader544, label %.preheader543, !llvm.loop !887

bb.y:                                             ; preds = %bb.bm
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.z:                                             ; preds = %bb.x
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aa:                                            ; preds = %.lr.ph605, %bb.aa
  %indvars.iv681 = phi i64 [ 0, %.lr.ph605 ], [ %indvars.iv.next682, %bb.aa ] ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv681
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !316
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.np
  %sext = shl i64 %i.of, 24
  %i.og = ashr i64 %sext, 32
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.og
  store i32 %i.nq, ptr %i.oh, align 4, !tbaa !275
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.oi = load i32, ptr %i.nj, align 4, !tbaa !410
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv.next682, %i.oj
  br i1 %i.ok, label %bb.aa, label %._crit_edge606.loopexit, !llvm.loop !888

bb.ab:                                            ; preds = %.lr.ph611, %bb.ac
  %indvars.iv692 = phi i64 [ 0, %.lr.ph611 ], [ %indvars.iv.next693, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ol = load ptr, ptr %i.nv, align 8, !tbaa !182
  %i.om = getelementptr inbounds nuw [144 x i8], ptr %i.ol, i64 %indvars.iv692 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.op = ptrtoint ptr %i.oo to i64               ; 2 uses
  %i.oq = load <2 x ptr>, ptr %i.on, align 8, !tbaa !316
  %i.or = ptrtoint <2 x ptr> %i.oq to <2 x i64>
  %i.os = insertelement <2 x i64> poison, i64 %i.op, i64 0
  %i.ot = shufflevector <2 x i64> %i.os, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ou = sub <2 x i64> %i.or, %i.ot
  %i.ov = lshr exact <2 x i64> %i.ou, splat (i64 8)
  %i.ow = trunc <2 x i64> %i.ov to <2 x i32>
  store <2 x i32> %i.ow, ptr %i.a, align 8, !tbaa !275
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !316
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = sub i64 %i.oz, %i.op
  %i.pb = lshr exact i64 %i.pa, 8
  %i.pc = trunc i64 %i.pb to i32
  store i32 %i.pc, ptr %i.nw, align 8, !tbaa !275
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %i.pd = load i32, ptr %i.ns, align 4, !tbaa !183
  %i.pe = sext i32 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next693, %i.pe
  br i1 %i.pf, label %bb.ab, label %._crit_edge612.loopexit, !llvm.loop !889

bb.ad:                                            ; preds = %bb.ab, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1
  %indvars.iv688 = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next689, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1 ] ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv688
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !275
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pi
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !275 ; 3 uses
  %i.pl = sext i32 %i.pk to i64                   ; 2 uses
  %indvars.iv.next689 = add nuw nsw i64 %indvars.iv688, 1 ; 3 uses
  %i.pm = icmp eq i64 %indvars.iv.next689, 3      ; 2 uses
  %i.pn = select i1 %i.pm, i64 0, i64 %indvars.iv.next689
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !275
  %i.pq = sext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !275
  %.not167 = icmp eq i32 %i.ps, %i.pk
  br i1 %.not167, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pt = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.pu = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.pl
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !378 ; 7 uses
  %i.pw = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.px = getelementptr inbounds [256 x i8], ptr %i.pw, i64 %i.pq ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 36 ; 4 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !410 ; 9 uses
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.lr.ph.i275, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread

.lr.ph.i275:                                      ; preds = %bb.ae
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !411
  %wide.trip.count.i276 = zext nneg i32 %i.pz to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i275
  %indvars.iv.i277 = phi i64 [ 0, %.lr.ph.i275 ], [ %indvars.iv.next.i278, %bb.ag ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i277
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !316
  %i.qf = icmp eq ptr %i.qe, %i.px
  br i1 %i.qf, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i278 = add nuw nsw i64 %indvars.iv.i277, 1 ; 2 uses
  %exitcond.not.i279 = icmp eq i64 %indvars.iv.next.i278, %wide.trip.count.i276
  br i1 %exitcond.not.i279, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread, label %bb.af, !llvm.loop !890

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread: ; preds = %bb.ag, %bb.ae
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pv, i64 40 ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !948
  %i.qi = icmp eq i32 %i.pz, %i.qh
  br i1 %i.qi, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread
  %.not.i.i280 = icmp eq i32 %i.pz, 0
  %i.qj = shl nsw i32 %i.pz, 1
  %i.qk = select i1 %.not.i.i280, i32 1, i32 %i.qj ; 4 uses
  %i.ql = icmp slt i32 %i.pz, %i.qk
  br i1 %i.ql, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i281 = icmp eq i32 %i.qk, 0
  br i1 %.not.i.i.i281, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.qm = sext i32 %i.qk to i64
  %i.qn = shl nsw i64 %i.qm, 3
  %i.qo = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.qn, i32 noundef 16)
          to label %.noexc296 unwind label %bb.am

.noexc296:                                        ; preds = %bb.aj
  %.pre.i282 = load i32, ptr %i.py, align 4, !tbaa !410
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283: ; preds = %.noexc296, %bb.ai
  %i.qp = phi i32 [ %.pre.i282, %.noexc296 ], [ %i.pz, %bb.ai ] ; 5 uses
  %.0.i.i.i284 = phi ptr [ %i.qo, %.noexc296 ], [ null, %bb.ai ] ; 8 uses
  %i.qq = icmp sgt i32 %i.qp, 0
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pv, i64 48 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !411 ; 9 uses
  br i1 %i.qq, label %.lr.ph.i.i.i291, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285

.lr.ph.i.i.i291:                                  ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283
  %i.qt = ptrtoaddr ptr %i.qs to i64
  %.0.i.i.i2841090 = ptrtoaddr ptr %.0.i.i.i284 to i64
  %wide.trip.count.i.i.i292 = zext nneg i32 %i.qp to i64 ; 5 uses
  %min.iters.check1093 = icmp ult i32 %i.qp, 4
  %i.qu = sub i64 %i.qt, %.0.i.i.i2841090
  %diff.check1091 = icmp ugt i64 %i.qu, -32
  %or.cond1172 = select i1 %min.iters.check1093, i1 true, i1 %diff.check1091
  br i1 %or.cond1172, label %scalar.ph1092.preheader, label %vector.ph1094

vector.ph1094:                                    ; preds = %.lr.ph.i.i.i291
  %n.vec1095 = and i64 %wide.trip.count.i.i.i292, 2147483644 ; 3 uses
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1094
  %index1097 = phi i64 [ 0, %vector.ph1094 ], [ %index.next1100, %vector.body1096 ] ; 3 uses
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %index1097 ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %index1097 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %wide.load1098 = load <2 x ptr>, ptr %i.qw, align 8, !tbaa !316
  %wide.load1099 = load <2 x ptr>, ptr %i.qx, align 8, !tbaa !316
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  store <2 x ptr> %wide.load1098, ptr %i.qv, align 8, !tbaa !316
  store <2 x ptr> %wide.load1099, ptr %i.qy, align 8, !tbaa !316
  %index.next1100 = add nuw i64 %index1097, 4     ; 2 uses
  %i.qz = icmp eq i64 %index.next1100, %n.vec1095
  br i1 %i.qz, label %middle.block1101, label %vector.body1096, !llvm.loop !891

middle.block1101:                                 ; preds = %vector.body1096
  %cmp.n1102 = icmp eq i64 %n.vec1095, %wide.trip.count.i.i.i292
  br i1 %cmp.n1102, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1092.preheader

scalar.ph1092.preheader:                          ; preds = %.lr.ph.i.i.i291, %middle.block1101
  %indvars.iv.i.i.i293.ph = phi i64 [ 0, %.lr.ph.i.i.i291 ], [ %n.vec1095, %middle.block1101 ] ; 3 uses
  %xtraiter1262 = and i64 %wide.trip.count.i.i.i292, 3 ; 2 uses
  %lcmp.mod1263.not = icmp eq i64 %xtraiter1262, 0
  br i1 %lcmp.mod1263.not, label %scalar.ph1092.prol.loopexit, label %scalar.ph1092.prol

scalar.ph1092.prol:                               ; preds = %scalar.ph1092.preheader, %scalar.ph1092.prol
  %indvars.iv.i.i.i293.prol = phi i64 [ %indvars.iv.next.i.i.i294.prol, %scalar.ph1092.prol ], [ %indvars.iv.i.i.i293.ph, %scalar.ph1092.preheader ] ; 3 uses
  %prol.iter1264 = phi i64 [ %prol.iter1264.next, %scalar.ph1092.prol ], [ 0, %scalar.ph1092.preheader ]
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.i.i.i293.prol
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.i.i.i293.prol
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !316
  store ptr %i.rc, ptr %i.ra, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.prol = add nuw nsw i64 %indvars.iv.i.i.i293.prol, 1 ; 2 uses
  %prol.iter1264.next = add i64 %prol.iter1264, 1 ; 2 uses
  %prol.iter1264.cmp.not = icmp eq i64 %prol.iter1264.next, %xtraiter1262
  br i1 %prol.iter1264.cmp.not, label %scalar.ph1092.prol.loopexit, label %scalar.ph1092.prol, !llvm.loop !892

scalar.ph1092.prol.loopexit:                      ; preds = %scalar.ph1092.prol, %scalar.ph1092.preheader
  %indvars.iv.i.i.i293.unr = phi i64 [ %indvars.iv.i.i.i293.ph, %scalar.ph1092.preheader ], [ %indvars.iv.next.i.i.i294.prol, %scalar.ph1092.prol ]
  %i.rd = sub nsw i64 %indvars.iv.i.i.i293.ph, %wide.trip.count.i.i.i292
  %i.re = icmp ugt i64 %i.rd, -4
  br i1 %i.re, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1092

scalar.ph1092:                                    ; preds = %scalar.ph1092.prol.loopexit, %scalar.ph1092
  %indvars.iv.i.i.i293 = phi i64 [ %indvars.iv.next.i.i.i294.3, %scalar.ph1092 ], [ %indvars.iv.i.i.i293.unr, %scalar.ph1092.prol.loopexit ] ; 6 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.i.i.i293
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.i.i.i293
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !316
  store ptr %i.rh, ptr %i.rf, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294 = add nuw nsw i64 %indvars.iv.i.i.i293, 1 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next.i.i.i294
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !316
  store ptr %i.rk, ptr %i.ri, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.11266 = add nuw nsw i64 %indvars.iv.i.i.i293, 2 ; 2 uses
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294.11266
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next.i.i.i294.11266
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !316
  store ptr %i.rn, ptr %i.rl, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.2 = add nuw nsw i64 %indvars.iv.i.i.i293, 3 ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284, i64 %indvars.iv.next.i.i.i294.2
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.qs, i64 %indvars.iv.next.i.i.i294.2
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !316
  store ptr %i.rq, ptr %i.ro, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.3 = add nuw nsw i64 %indvars.iv.i.i.i293, 4 ; 2 uses
  %exitcond.not.i.i.i295.3 = icmp eq i64 %indvars.iv.next.i.i.i294.3, %wide.trip.count.i.i.i292
  br i1 %exitcond.not.i.i.i295.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, label %scalar.ph1092, !llvm.loop !893

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283
  %.not.i5.i.i286 = icmp eq ptr %i.qs, null
  br i1 %.not.i5.i.i286, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287: ; preds = %scalar.ph1092.prol.loopexit, %scalar.ph1092, %middle.block1101, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  %i.rs = load i8, ptr %i.rr, align 8, !tbaa !947, !range !262, !noundef !263
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %bb.ak, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288

bb.ak:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.qs)
          to label %.noexc297 unwind label %bb.am

.noexc297:                                        ; preds = %bb.ak
  %.pre2.pre.pre.i290 = load i32, ptr %i.py, align 4, !tbaa !410
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288: ; preds = %.noexc297, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285
  %.pre2.i289 = phi i32 [ %i.qp, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285 ], [ %.pre2.pre.pre.i290, %.noexc297 ], [ %i.qp, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287 ]
  %i.ru = getelementptr inbounds nuw i8, ptr %i.pv, i64 56
  store i8 1, ptr %i.ru, align 8, !tbaa !947
  store ptr %.0.i.i.i284, ptr %i.qr, align 8, !tbaa !411
  store i32 %i.qk, ptr %i.qg, align 8, !tbaa !948
  br label %bb.al

bb.al:                                            ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288, %bb.ah, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread
  %i.rv = phi i32 [ %.pre2.i289, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288 ], [ %i.pz, %bb.ah ], [ %i.pz, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pv, i64 48
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !411
  %i.ry = sext i32 %i.rv to i64
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.ry
  store ptr %i.px, ptr %i.rz, align 8, !tbaa !316
  %i.sa = add nsw i32 %i.rv, 1
  store i32 %i.sa, ptr %i.py, align 4, !tbaa !410
  br label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit

bb.am:                                            ; preds = %bb.at, %bb.as, %bb.ak, %bb.aj
  %i.sb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.bs

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit: ; preds = %bb.af, %bb.al, %bb.ad
  %i.sc = trunc i64 %indvars.iv688 to i32
  %i.sd = add i32 %i.sc, 2
  %i.se = urem i32 %i.sd, 3
  %i.sf = zext nneg i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !275
  %i.si = sext i32 %i.sh to i64                   ; 2 uses
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !275
  %.not167.1 = icmp eq i32 %i.sk, %i.pk
  br i1 %.not167.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1, label %bb.an

bb.an:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit
  %i.sl = load ptr, ptr %i.fy, align 8, !tbaa !234
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.pl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !378 ; 7 uses
  %i.so = load ptr, ptr %i.fz, align 8, !tbaa !170
  %i.sp = getelementptr inbounds [256 x i8], ptr %i.so, i64 %i.si ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 36 ; 4 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !410 ; 9 uses
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.lr.ph.i275.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1

.lr.ph.i275.1:                                    ; preds = %bb.an
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !411
  %wide.trip.count.i276.1 = zext nneg i32 %i.sr to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i275.1
  %indvars.iv.i277.1 = phi i64 [ 0, %.lr.ph.i275.1 ], [ %indvars.iv.next.i278.1, %bb.ap ] ; 2 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %indvars.iv.i277.1
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !316
  %i.sx = icmp eq ptr %i.sw, %i.sp
  br i1 %i.sx, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %indvars.iv.next.i278.1 = add nuw nsw i64 %indvars.iv.i277.1, 1 ; 2 uses
  %exitcond.not.i279.1 = icmp eq i64 %indvars.iv.next.i278.1, %wide.trip.count.i276.1
  br i1 %exitcond.not.i279.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1, label %bb.ao, !llvm.loop !890

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1: ; preds = %bb.ap, %bb.an
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sn, i64 40 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !948
  %i.ta = icmp eq i32 %i.sr, %i.sz
  br i1 %i.ta, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1
  %.not.i.i280.1 = icmp eq i32 %i.sr, 0
  %i.tb = shl nsw i32 %i.sr, 1
  %i.tc = select i1 %.not.i.i280.1, i32 1, i32 %i.tb ; 4 uses
  %i.td = icmp slt i32 %i.sr, %i.tc
  br i1 %i.td, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not.i.i.i281.1 = icmp eq i32 %i.tc, 0
  br i1 %.not.i.i.i281.1, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.te = sext i32 %i.tc to i64
  %i.tf = shl nsw i64 %i.te, 3
  %i.tg = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.tf, i32 noundef 16)
          to label %.noexc296.1 unwind label %bb.am

.noexc296.1:                                      ; preds = %bb.as
  %.pre.i282.1 = load i32, ptr %i.sq, align 4, !tbaa !410
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1: ; preds = %.noexc296.1, %bb.ar
  %i.th = phi i32 [ %.pre.i282.1, %.noexc296.1 ], [ %i.sr, %bb.ar ] ; 5 uses
  %.0.i.i.i284.1 = phi ptr [ %i.tg, %.noexc296.1 ], [ null, %bb.ar ] ; 8 uses
  %i.ti = icmp sgt i32 %i.th, 0
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sn, i64 48 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !411 ; 9 uses
  br i1 %i.ti, label %.lr.ph.i.i.i291.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1
  %.not.i5.i.i286.1 = icmp eq ptr %i.tk, null
  br i1 %.not.i5.i.i286.1, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1

.lr.ph.i.i.i291.1:                                ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i.i283.1
  %i.tl = ptrtoaddr ptr %i.tk to i64
  %.0.i.i.i284.11075 = ptrtoaddr ptr %.0.i.i.i284.1 to i64
  %wide.trip.count.i.i.i292.1 = zext nneg i32 %i.th to i64 ; 5 uses
  %min.iters.check1078 = icmp ult i32 %i.th, 4
  %i.tm = sub i64 %i.tl, %.0.i.i.i284.11075
  %diff.check1076 = icmp ugt i64 %i.tm, -32
  %or.cond1173 = select i1 %min.iters.check1078, i1 true, i1 %diff.check1076
  br i1 %or.cond1173, label %scalar.ph1077.preheader, label %vector.ph1079

vector.ph1079:                                    ; preds = %.lr.ph.i.i.i291.1
  %n.vec1080 = and i64 %wide.trip.count.i.i.i292.1, 2147483644 ; 3 uses
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1079
  %index1082 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1085, %vector.body1081 ] ; 3 uses
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %index1082 ; 2 uses
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %index1082 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %wide.load1083 = load <2 x ptr>, ptr %i.to, align 8, !tbaa !316
  %wide.load1084 = load <2 x ptr>, ptr %i.tp, align 8, !tbaa !316
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <2 x ptr> %wide.load1083, ptr %i.tn, align 8, !tbaa !316
  store <2 x ptr> %wide.load1084, ptr %i.tq, align 8, !tbaa !316
  %index.next1085 = add nuw i64 %index1082, 4     ; 2 uses
  %i.tr = icmp eq i64 %index.next1085, %n.vec1080
  br i1 %i.tr, label %middle.block1086, label %vector.body1081, !llvm.loop !894

middle.block1086:                                 ; preds = %vector.body1081
  %cmp.n1087 = icmp eq i64 %n.vec1080, %wide.trip.count.i.i.i292.1
  br i1 %cmp.n1087, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1077.preheader

scalar.ph1077.preheader:                          ; preds = %.lr.ph.i.i.i291.1, %middle.block1086
  %indvars.iv.i.i.i293.1.ph = phi i64 [ 0, %.lr.ph.i.i.i291.1 ], [ %n.vec1080, %middle.block1086 ] ; 3 uses
  %xtraiter1268 = and i64 %wide.trip.count.i.i.i292.1, 3 ; 2 uses
  %lcmp.mod1269.not = icmp eq i64 %xtraiter1268, 0
  br i1 %lcmp.mod1269.not, label %scalar.ph1077.prol.loopexit, label %scalar.ph1077.prol

scalar.ph1077.prol:                               ; preds = %scalar.ph1077.preheader, %scalar.ph1077.prol
  %indvars.iv.i.i.i293.1.prol = phi i64 [ %indvars.iv.next.i.i.i294.1.prol, %scalar.ph1077.prol ], [ %indvars.iv.i.i.i293.1.ph, %scalar.ph1077.preheader ] ; 3 uses
  %prol.iter1270 = phi i64 [ %prol.iter1270.next, %scalar.ph1077.prol ], [ 0, %scalar.ph1077.preheader ]
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.i.i.i293.1.prol
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.i.i.i293.1.prol
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !316
  store ptr %i.tu, ptr %i.ts, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.1.prol = add nuw nsw i64 %indvars.iv.i.i.i293.1.prol, 1 ; 2 uses
  %prol.iter1270.next = add i64 %prol.iter1270, 1 ; 2 uses
  %prol.iter1270.cmp.not = icmp eq i64 %prol.iter1270.next, %xtraiter1268
  br i1 %prol.iter1270.cmp.not, label %scalar.ph1077.prol.loopexit, label %scalar.ph1077.prol, !llvm.loop !895

scalar.ph1077.prol.loopexit:                      ; preds = %scalar.ph1077.prol, %scalar.ph1077.preheader
  %indvars.iv.i.i.i293.1.unr = phi i64 [ %indvars.iv.i.i.i293.1.ph, %scalar.ph1077.preheader ], [ %indvars.iv.next.i.i.i294.1.prol, %scalar.ph1077.prol ]
  %i.tv = sub nsw i64 %indvars.iv.i.i.i293.1.ph, %wide.trip.count.i.i.i292.1
  %i.tw = icmp ugt i64 %i.tv, -4
  br i1 %i.tw, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1077

scalar.ph1077:                                    ; preds = %scalar.ph1077.prol.loopexit, %scalar.ph1077
  %indvars.iv.i.i.i293.1 = phi i64 [ %indvars.iv.next.i.i.i294.1.3, %scalar.ph1077 ], [ %indvars.iv.i.i.i293.1.unr, %scalar.ph1077.prol.loopexit ] ; 6 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.i.i.i293.1
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.i.i.i293.1
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !316
  store ptr %i.tz, ptr %i.tx, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.1 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 1 ; 2 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.next.i.i.i294.1
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !316
  store ptr %i.uc, ptr %i.ua, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.1.1 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 2 ; 2 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1.1
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.next.i.i.i294.1.1
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !316
  store ptr %i.uf, ptr %i.ud, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.1.2 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 3 ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i284.1, i64 %indvars.iv.next.i.i.i294.1.2
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.tk, i64 %indvars.iv.next.i.i.i294.1.2
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !316
  store ptr %i.ui, ptr %i.ug, align 8, !tbaa !316
  %indvars.iv.next.i.i.i294.1.3 = add nuw nsw i64 %indvars.iv.i.i.i293.1, 4 ; 2 uses
  %exitcond.not.i.i.i295.1.3 = icmp eq i64 %indvars.iv.next.i.i.i294.1.3, %wide.trip.count.i.i.i292.1
  br i1 %exitcond.not.i.i.i295.1.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, label %scalar.ph1077, !llvm.loop !896

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1: ; preds = %scalar.ph1077.prol.loopexit, %scalar.ph1077, %middle.block1086, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sn, i64 56
  %i.uk = load i8, ptr %i.uj, align 8, !tbaa !947, !range !262, !noundef !263
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %bb.at, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1

bb.at:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.tk)
          to label %.noexc297.1 unwind label %bb.am

.noexc297.1:                                      ; preds = %bb.at
  %.pre2.pre.pre.i290.1 = load i32, ptr %i.sq, align 4, !tbaa !410
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1: ; preds = %.noexc297.1, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1
  %.pre2.i289.1 = phi i32 [ %i.th, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i.i285.1 ], [ %.pre2.pre.pre.i290.1, %.noexc297.1 ], [ %i.th, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i.i287.1 ]
  %i.um = getelementptr inbounds nuw i8, ptr %i.sn, i64 56
  store i8 1, ptr %i.um, align 8, !tbaa !947
  store ptr %.0.i.i.i284.1, ptr %i.tj, align 8, !tbaa !411
  store i32 %i.tc, ptr %i.sy, align 8, !tbaa !948
  br label %bb.au

bb.au:                                            ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1, %bb.aq, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1
  %i.un = phi i32 [ %.pre2.i289.1, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE10deallocateEv.exit.i.i288.1 ], [ %i.sr, %bb.aq ], [ %i.sr, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.thread.1 ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !411
  %i.uq = sext i32 %i.un to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.up, i64 %i.uq
  store ptr %i.sp, ptr %i.ur, align 8, !tbaa !316
  %i.us = add nsw i32 %i.un, 1
  store i32 %i.us, ptr %i.sq, align 4, !tbaa !410
  br label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit.1: ; preds = %bb.ao, %bb.au, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE16findLinearSearchERKS2_.exit
  br i1 %i.pm, label %bb.ac, label %bb.ad, !llvm.loop !897

._crit_edge612.loopexit:                          ; preds = %bb.ac
  %.pre756 = load i32, ptr %i.b, align 4, !tbaa !235
  br label %._crit_edge612

._crit_edge612:                                   ; preds = %._crit_edge612.loopexit, %.preheader543
  %i.ut = phi i32 [ %.pre756, %._crit_edge612.loopexit ], [ %i.nr, %.preheader543 ] ; 2 uses
  %i.uu = icmp sgt i32 %i.ut, 1
  br i1 %i.uu, label %bb.av, label %bb.bl

bb.av:                                            ; preds = %._crit_edge612
  %i.uv = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 424, i32 noundef 16)
          to label %bb.aw unwind label %bb.bd     ; 18 uses

bb.aw:                                            ; preds = %bb.av
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  store i8 1, ptr %i.uw, align 8, !tbaa !160
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  store ptr null, ptr %i.ux, align 8, !tbaa !161
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  store i32 0, ptr %i.uy, align 4, !tbaa !162
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store i32 0, ptr %i.uz, align 8, !tbaa !163
  %i.va = getelementptr inbounds nuw i8, ptr %i.uv, i64 56 ; 5 uses
  store i8 1, ptr %i.va, align 8, !tbaa !947
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uv, i64 48 ; 6 uses
  store ptr null, ptr %i.vb, align 8, !tbaa !411
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uv, i64 36 ; 6 uses
  store i32 0, ptr %i.vc, align 4, !tbaa !410
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uv, i64 40 ; 3 uses
  store i32 0, ptr %i.vd, align 8, !tbaa !948
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uv, i64 88
  store i8 1, ptr %i.ve, align 8, !tbaa !156
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 80
  store ptr null, ptr %i.vf, align 8, !tbaa !157
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uv, i64 68
  store i32 0, ptr %i.vg, align 4, !tbaa !158
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uv, i64 72
  store i32 0, ptr %i.vh, align 8, !tbaa !159
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uv, i64 384
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uv, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vi, i8 0, i64 24, i1 false)
  store <2 x float> <float 1.000000e+02, float f0x3C23D70A>, ptr %i.vj, align 8, !tbaa !253
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uv, i64 416
  store i8 0, ptr %i.vk, align 8, !tbaa !423
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uv, i64 417
  store i8 0, ptr %i.vl, align 1, !tbaa !424
  %i.vm = load i32, ptr %i.h, align 4, !tbaa !171 ; 4 uses
  %i.vn = icmp sgt i32 %i.vm, 0
  br i1 %i.vn, label %bb.ax, label %._crit_edge615

bb.ax:                                            ; preds = %bb.aw
  %i.vo = zext nneg i32 %i.vm to i64
  %i.vp = shl nuw nsw i64 %i.vo, 3
  %i.vq = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.vp, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i unwind label %bb.bd ; 9 uses

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i: ; preds = %bb.ax
  %.pre758 = load i32, ptr %i.vc, align 4, !tbaa !410 ; 3 uses
  %.pre759 = load ptr, ptr %i.vb, align 8, !tbaa !411 ; 9 uses
  %i.vr = icmp sgt i32 %.pre758, 0
  br i1 %i.vr, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i
  %.pre7591105 = ptrtoaddr ptr %.pre759 to i64
  %i.vs = ptrtoaddr ptr %i.vq to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre758 to i64 ; 5 uses
  %min.iters.check1108 = icmp ult i32 %.pre758, 8
  %i.vt = sub i64 %.pre7591105, %i.vs
  %diff.check1106 = icmp ugt i64 %i.vt, -32
  %or.cond1174 = select i1 %min.iters.check1108, i1 true, i1 %diff.check1106
  br i1 %or.cond1174, label %scalar.ph1107.preheader, label %vector.ph1109

vector.ph1109:                                    ; preds = %.lr.ph.i.i
  %n.vec1110 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %vector.ph1109
  %index1112 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1115, %vector.body1111 ] ; 3 uses
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %index1112 ; 2 uses
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %index1112 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %wide.load1113 = load <2 x ptr>, ptr %i.vv, align 8, !tbaa !316
  %wide.load1114 = load <2 x ptr>, ptr %i.vw, align 8, !tbaa !316
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  store <2 x ptr> %wide.load1113, ptr %i.vu, align 8, !tbaa !316
  store <2 x ptr> %wide.load1114, ptr %i.vx, align 8, !tbaa !316
  %index.next1115 = add nuw i64 %index1112, 4     ; 2 uses
  %i.vy = icmp eq i64 %index.next1115, %n.vec1110
  br i1 %i.vy, label %middle.block1116, label %vector.body1111, !llvm.loop !898

middle.block1116:                                 ; preds = %vector.body1111
  %cmp.n1117 = icmp eq i64 %n.vec1110, %wide.trip.count.i.i
  br i1 %cmp.n1117, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1107.preheader

scalar.ph1107.preheader:                          ; preds = %.lr.ph.i.i, %middle.block1116
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec1110, %middle.block1116 ] ; 3 uses
  %xtraiter1271 = and i64 %wide.trip.count.i.i, 3 ; 2 uses
  %lcmp.mod1272.not = icmp eq i64 %xtraiter1271, 0
  br i1 %lcmp.mod1272.not, label %scalar.ph1107.prol.loopexit, label %scalar.ph1107.prol

scalar.ph1107.prol:                               ; preds = %scalar.ph1107.preheader, %scalar.ph1107.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph1107.prol ], [ %indvars.iv.i.i.ph, %scalar.ph1107.preheader ] ; 3 uses
  %prol.iter1273 = phi i64 [ %prol.iter1273.next, %scalar.ph1107.prol ], [ 0, %scalar.ph1107.preheader ]
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i.prol
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %indvars.iv.i.i.prol
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !316
  store ptr %i.wb, ptr %i.vz, align 8, !tbaa !316
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter1273.next = add i64 %prol.iter1273, 1 ; 2 uses
  %prol.iter1273.cmp.not = icmp eq i64 %prol.iter1273.next, %xtraiter1271
  br i1 %prol.iter1273.cmp.not, label %scalar.ph1107.prol.loopexit, label %scalar.ph1107.prol, !llvm.loop !899

scalar.ph1107.prol.loopexit:                      ; preds = %scalar.ph1107.prol, %scalar.ph1107.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph1107.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph1107.prol ]
  %i.wc = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.wd = icmp ugt i64 %i.wc, -4
  br i1 %i.wd, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1107

scalar.ph1107:                                    ; preds = %scalar.ph1107.prol.loopexit, %scalar.ph1107
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph1107 ], [ %indvars.iv.i.i.unr, %scalar.ph1107.prol.loopexit ] ; 6 uses
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.i.i
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %indvars.iv.i.i
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !316
  store ptr %i.wg, ptr %i.we, align 8, !tbaa !316
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.next.i.i
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %indvars.iv.next.i.i
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !316
  store ptr %i.wj, ptr %i.wh, align 8, !tbaa !316
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.next.i.i.1
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %indvars.iv.next.i.i.1
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !316
  store ptr %i.wm, ptr %i.wk, align 8, !tbaa !316
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %indvars.iv.next.i.i.2
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.pre759, i64 %indvars.iv.next.i.i.2
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !316
  store ptr %i.wp, ptr %i.wn, align 8, !tbaa !316
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i, label %scalar.ph1107, !llvm.loop !900

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %.pre759, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit, label %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i

_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph1107.prol.loopexit, %scalar.ph1107, %middle.block1116, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i
  %i.wq = load i8, ptr %i.va, align 8, !tbaa !947, !range !262, !noundef !263
  %i.wr = trunc nuw i8 %i.wq to i1
  br i1 %i.wr, label %bb.ay, label %.noexc301

bb.ay:                                            ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre759)
          to label %.noexc301 unwind label %bb.bd

.noexc301:                                        ; preds = %bb.ay, %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.thread.i
  store ptr null, ptr %i.vb, align 8, !tbaa !411
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit: ; preds = %_ZNK20btAlignedObjectArrayIPN10btSoftBody4NodeEE4copyEiiPS2_.exit.i, %.noexc301
  store i8 1, ptr %i.va, align 8, !tbaa !947
  store ptr %i.vq, ptr %i.vb, align 8, !tbaa !411
  store i32 %i.vm, ptr %i.vd, align 8, !tbaa !948
  %.pre760 = load i32, ptr %i.h, align 4, !tbaa !171 ; 2 uses
  %i.ws = icmp sgt i32 %.pre760, 0
  br i1 %i.ws, label %.lr.ph614, label %._crit_edge615

.lr.ph614:                                        ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit
  %.pre761 = load i32, ptr %i.vc, align 4, !tbaa !410
  br label %bb.be

._crit_edge615:                                   ; preds = %bb.bi, %bb.aw, %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEE7reserveEi.exit
  %i.wt = load i32, ptr %i.b, align 4, !tbaa !235 ; 7 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !236
  %i.ww = icmp eq i32 %i.wt, %i.wv
  br i1 %i.ww, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %._crit_edge615
  %.not.i.i302 = icmp eq i32 %i.wt, 0
  %i.wx = shl nsw i32 %i.wt, 1
  %i.wy = select i1 %.not.i.i302, i32 1, i32 %i.wx ; 4 uses
  %i.wz = icmp slt i32 %i.wt, %i.wy
  br i1 %i.wz, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %.not.i.i.i303 = icmp eq i32 %i.wy, 0
  br i1 %.not.i.i.i303, label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i305, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.xa = sext i32 %i.wy to i64
  %i.xb = shl nsw i64 %i.xa, 3
  %i.xc = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.xb, i32 noundef 16)
          to label %.noexc318 unwind label %bb.bd

.noexc318:                                        ; preds = %bb.bb
  %.pre.i304 = load i32, ptr %i.b, align 4, !tbaa !235
  br label %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEE8allocateEi.exit.i.i305
end_hunk_0
