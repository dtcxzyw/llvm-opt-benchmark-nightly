Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBodyDynamicsWorld?download=true
inline.NumInlined: 901
inline.NumDeleted: 283
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
bb.bd:                                            ; preds = %.loopexit554
  %i.lq = load i32, ptr %i.hi, align 8, !tbaa !150
  %.not551 = icmp sgt i32 %i.lq, %i.lo
  br i1 %.not551, label %.loopexit553, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.not.i.i.i320 = icmp eq i32 %.pre-phi661, 0
  br i1 %.not.i.i.i320, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lr = sext i32 %.pre-phi661 to i64
  %i.ls = mul nsw i64 %i.lr, 48
  %i.lt = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ls, i32 noundef 16)
          to label %.noexc329 unwind label %bb.bm

.noexc329:                                        ; preds = %bb.bf
  %.pre.i321 = load i32, ptr %i.hh, align 4, !tbaa !149
  br label %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i: ; preds = %.noexc329, %bb.be
  %i.lu = phi i32 [ %.pre.i321, %.noexc329 ], [ %i.lp, %bb.be ] ; 2 uses
  %.0.i.i.i322 = phi ptr [ %i.lt, %.noexc329 ], [ null, %bb.be ] ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  br i1 %i.lv, label %.lr.ph.i.i.i324, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i324:                                  ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %wide.trip.count.i.i.i325 = zext nneg i32 %i.lu to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i.i.i324
  %indvars.iv.i.i.i326 = phi i64 [ 0, %.lr.ph.i.i.i324 ], [ %indvars.iv.next.i.i.i327, %bb.bg ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i322, i64 %indvars.iv.i.i.i326 ; 3 uses
  %i.lx = load ptr, ptr %i.hj, align 8, !tbaa !148
  %i.ly = getelementptr inbounds nuw [48 x i8], ptr %i.lx, i64 %indvars.iv.i.i.i326 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.lw, ptr noundef nonnull align 4 dereferenceable(48) %i.ly, i64 16, i1 false), !tbaa.struct !79
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ma, ptr noundef nonnull align 4 dereferenceable(16) %i.lz, i64 16, i1 false), !tbaa.struct !79
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mc, ptr noundef nonnull align 4 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !79
  %indvars.iv.next.i.i.i327 = add nuw nsw i64 %indvars.iv.i.i.i326, 1 ; 2 uses
  %exitcond.not.i.i.i328 = icmp eq i64 %indvars.iv.next.i.i.i327, %wide.trip.count.i.i.i325
  br i1 %exitcond.not.i.i.i328, label %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i, label %bb.bg, !llvm.loop !3

_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i: ; preds = %bb.bg, %_ZN20btAlignedObjectArrayI11btMatrix3x3E8allocateEi.exit.i.i
  %i.md = load ptr, ptr %i.hj, align 8, !tbaa !148 ; 2 uses
  %.not.i5.i.i323 = icmp eq ptr %i.md, null
  br i1 %.not.i5.i.i323, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  %i.me = load i8, ptr %i.hk, align 8, !tbaa !147, !range !30, !noundef !31
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.bi, label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.md)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i unwind label %bb.bm

_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i: ; preds = %bb.bi, %bb.bh, %_ZNK20btAlignedObjectArrayI11btMatrix3x3E4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.hk, align 8, !tbaa !147
  store ptr %.0.i.i.i322, ptr %i.hj, align 8, !tbaa !148
  store i32 %.pre-phi661, ptr %i.hi, align 8, !tbaa !150
  br label %.loopexit553

.loopexit553:                                     ; preds = %bb.bd, %_ZN20btAlignedObjectArrayI11btMatrix3x3E10deallocateEv.exit.i.i, %.loopexit554
  store i32 %.pre-phi661, ptr %i.hh, align 4, !tbaa !149
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ib, i64 636
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !178, !range !30, !noundef !31
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %.loopexit553
  %i.mj = load float, ptr %i.hl, align 4, !tbaa !179
  %i.mk = load i8, ptr %i.hm, align 4, !tbaa !180, !range !30, !noundef !31
  %i.ml = trunc nuw i8 %i.mk to i1
  %i.mm = load i8, ptr %i.hn, align 1, !tbaa !181, !range !30, !noundef !31
  %i.mn = trunc nuw i8 %i.mm to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.ib, float noundef %i.mj, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, ptr noundef nonnull align 8 dereferenceable(25) %i.hg, i1 noundef zeroext false, i1 noundef zeroext %i.ml, i1 noundef zeroext %i.mn)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %bb.bn

bb.bk:                                            ; preds = %bb.aw, %bb.av
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

bb.bl:                                            ; preds = %bb.bc, %bb.az
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

bb.bm:                                            ; preds = %bb.bi, %bb.bf
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

bb.bn:                                            ; preds = %bb.bj
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

bb.bo:                                            ; preds = %.loopexit553
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ib, i64 628 ; 9 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !182 ; 14 uses
  %i.mu = add nsw i32 %i.mt, 6                    ; 28 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ib, i64 632 ; 4 uses
  %i.mw = load i32, ptr %i.mv, align 8, !tbaa !332 ; 14 uses
  %i.mx = add nsw i32 %i.mw, 7                    ; 2 uses
  %i.my = shl nsw i32 %i.mx, 1
  %i.mz = shl nsw i32 %i.mu, 3
  %i.na = add nsw i32 %i.my, %i.mz                ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %bb.bp, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352

bb.bp:                                            ; preds = %bb.bo
  %i.nc = zext nneg i32 %i.na to i64
  %i.nd = shl nuw nsw i64 %i.nc, 2                ; 2 uses
  %i.ne = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.nd, i32 noundef 16)
          to label %.lr.ph.i331 unwind label %.thread531 ; 2 uses

.lr.ph.i331:                                      ; preds = %bb.bp
  call void @llvm.memset.p0.i64(ptr align 4 %i.ne, i8 0, i64 %i.nd, i1 false), !tbaa !177
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352: ; preds = %.lr.ph.i331, %bb.bo
  %.sroa.10521.2 = phi ptr [ null, %bb.bo ], [ %i.ne, %.lr.ph.i331 ] ; 35 uses
  %.sroa.10521.2797 = ptrtoaddr ptr %.sroa.10521.2 to i64 ; 26 uses
  %i.nf = sext i32 %i.mx to i64                   ; 2 uses
  %i.ng = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.nf ; 22 uses
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.ng, i64 %i.nf ; 28 uses
  %i.ni = sext i32 %i.mu to i64                   ; 8 uses
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.nh, i64 %i.ni ; 14 uses
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.nj, i64 %i.ni ; 14 uses
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.ni ; 13 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.nl, i64 %i.ni ; 13 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nm, i64 %i.ni ; 13 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.ni ; 13 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.ni ; 8 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ib, i64 56
  %i.nr = load float, ptr %i.nq, align 8, !tbaa !177
  store float %i.nr, ptr %.sroa.10521.2, align 4, !tbaa !177
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ib, i64 60
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !177
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 4
  store float %i.nt, ptr %i.nu, align 4, !tbaa !177
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.nw = load float, ptr %i.nv, align 8, !tbaa !177
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 8
  store float %i.nw, ptr %i.nx, align 4, !tbaa !177
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ib, i64 68
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !177
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 12
  store float %i.nz, ptr %i.oa, align 4, !tbaa !177
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.oc = load float, ptr %i.ob, align 8, !tbaa !177
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 16
  store float %i.oc, ptr %i.od, align 4, !tbaa !177
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  %i.of = load float, ptr %i.oe, align 4, !tbaa !177
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 20
  store float %i.of, ptr %i.og, align 4, !tbaa !177
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !177
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.10521.2, i64 24
  store float %i.oi, ptr %i.oj, align 4, !tbaa !177
  %i.ok = load i32, ptr %i.ih, align 4, !tbaa !61 ; 2 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.preheader.lr.ph, label %.preheader552

.preheader.lr.ph:                                 ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352
  %i.om = getelementptr inbounds nuw i8, ptr %i.ib, i64 192
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !62 ; 2 uses
  %i.oo = ptrtoaddr ptr %i.on to i64
  %wide.trip.count626 = zext nneg i32 %i.ok to i64
  %i.op = add i64 %.sroa.10521.2797, -464
  %i.oq = sub i64 %i.op, %i.oo
  br label %.preheader

.preheader552:                                    ; preds = %._crit_edge579, %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit352
  %i.or = icmp sgt i32 %i.mt, -6                  ; 9 uses
  br i1 %i.or, label %.lr.ph582, label %._crit_edge583

.lr.ph582:                                        ; preds = %.preheader552
  %i.os = getelementptr inbounds nuw i8, ptr %i.ib, i64 288
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !144 ; 7 uses
  %wide.trip.count631 = zext i32 %i.mu to i64     ; 5 uses
  %min.iters.check1068 = icmp ult i32 %i.mu, 8
  br i1 %min.iters.check1068, label %scalar.ph1067.preheader, label %vector.memcheck1065

vector.memcheck1065:                              ; preds = %.lr.ph582
  %i.ou = ptrtoaddr ptr %i.ot to i64
  %i.ov = add i64 %.sroa.10521.2797, 56
  %i.ow = sext i32 %i.mw to i64
  %i.ox = shl nsw i64 %i.ow, 3
  %i.oy = add i64 %i.ov, %i.ox
  %i.oz = sub i64 %i.ou, %i.oy
  %diff.check1066 = icmp ugt i64 %i.oz, -32
  br i1 %diff.check1066, label %scalar.ph1067.preheader, label %vector.ph1069

vector.ph1069:                                    ; preds = %vector.memcheck1065
  %n.vec1070 = and i64 %wide.trip.count631, 4294967288 ; 3 uses
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1069
  %index1072 = phi i64 [ 0, %vector.ph1069 ], [ %index.next1075, %vector.body1071 ] ; 3 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %index1072 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  %wide.load1073 = load <4 x float>, ptr %i.pa, align 4, !tbaa !177
  %wide.load1074 = load <4 x float>, ptr %i.pb, align 4, !tbaa !177
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index1072 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <4 x float> %wide.load1073, ptr %i.pc, align 4, !tbaa !177
  store <4 x float> %wide.load1074, ptr %i.pd, align 4, !tbaa !177
  %index.next1075 = add nuw i64 %index1072, 8     ; 2 uses
  %i.pe = icmp eq i64 %index.next1075, %n.vec1070
  br i1 %i.pe, label %middle.block1076, label %vector.body1071, !llvm.loop !273

middle.block1076:                                 ; preds = %vector.body1071
  %cmp.n1077 = icmp eq i64 %n.vec1070, %wide.trip.count631
  br i1 %cmp.n1077, label %._crit_edge583, label %scalar.ph1067.preheader

scalar.ph1067.preheader:                          ; preds = %vector.memcheck1065, %.lr.ph582, %middle.block1076
  %indvars.iv628.ph = phi i64 [ 0, %vector.memcheck1065 ], [ 0, %.lr.ph582 ], [ %n.vec1070, %middle.block1076 ] ; 3 uses
  %xtraiter1148 = and i64 %wide.trip.count631, 3  ; 2 uses
  %lcmp.mod1149.not = icmp eq i64 %xtraiter1148, 0
  br i1 %lcmp.mod1149.not, label %scalar.ph1067.prol.loopexit, label %scalar.ph1067.prol

scalar.ph1067.prol:                               ; preds = %scalar.ph1067.preheader, %scalar.ph1067.prol
  %indvars.iv628.prol = phi i64 [ %indvars.iv.next629.prol, %scalar.ph1067.prol ], [ %indvars.iv628.ph, %scalar.ph1067.preheader ] ; 3 uses
  %prol.iter1150 = phi i64 [ %prol.iter1150.next, %scalar.ph1067.prol ], [ 0, %scalar.ph1067.preheader ]
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv628.prol
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !177
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv628.prol
  store float %i.pg, ptr %i.ph, align 4, !tbaa !177
  %indvars.iv.next629.prol = add nuw nsw i64 %indvars.iv628.prol, 1 ; 2 uses
  %prol.iter1150.next = add i64 %prol.iter1150, 1 ; 2 uses
  %prol.iter1150.cmp.not = icmp eq i64 %prol.iter1150.next, %xtraiter1148
  br i1 %prol.iter1150.cmp.not, label %scalar.ph1067.prol.loopexit, label %scalar.ph1067.prol, !llvm.loop !274

scalar.ph1067.prol.loopexit:                      ; preds = %scalar.ph1067.prol, %scalar.ph1067.preheader
  %indvars.iv628.unr = phi i64 [ %indvars.iv628.ph, %scalar.ph1067.preheader ], [ %indvars.iv.next629.prol, %scalar.ph1067.prol ]
  %i.pi = sub nsw i64 %indvars.iv628.ph, %wide.trip.count631
  %i.pj = icmp ugt i64 %i.pi, -4
  br i1 %i.pj, label %._crit_edge583, label %scalar.ph1067

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge579
  %indvars.iv623 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next624, %._crit_edge579 ] ; 3 uses
  %i.pk = mul nsw i64 %indvars.iv623, -688
  %i.pl = add i64 %i.oq, %i.pk
  %i.pm = getelementptr inbounds nuw [688 x i8], ptr %i.on, i64 %indvars.iv623 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 560
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !333 ; 3 uses
  %i.pp = icmp sgt i32 %i.po, 0
  br i1 %i.pp, label %.lr.ph578, label %._crit_edge579

.lr.ph578:                                        ; preds = %.preheader
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pm, i64 464 ; 6 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 332
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !334
  %invariant.op = add i32 %i.ps, 7                ; 9 uses
  %wide.trip.count621 = zext nneg i32 %i.po to i64 ; 6 uses
  %min.iters.check1082 = icmp ult i32 %i.po, 12
  br i1 %min.iters.check1082, label %scalar.ph1081.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph578
  %i.pt = add nsw i64 %wide.trip.count621, -1     ; 2 uses
  %i.pu = trunc nsw i64 %i.pt to i32
  %i.pv = add i32 %invariant.op, %i.pu
  %i.pw = icmp slt i32 %i.pv, %invariant.op
  %i.px = icmp ugt i64 %i.pt, 4294967295
  %i.py = or i1 %i.pw, %i.px
  br i1 %i.py, label %scalar.ph1081.preheader, label %vector.memcheck1079

vector.memcheck1079:                              ; preds = %vector.scevcheck
  %i.pz = sext i32 %invariant.op to i64
  %i.qa = shl nsw i64 %i.pz, 2
  %i.qb = add i64 %i.pl, %i.qa
  %i.qc = add i64 %i.qb, -1
  %diff.check1080 = icmp ult i64 %i.qc, 31
  br i1 %diff.check1080, label %scalar.ph1081.preheader, label %vector.ph1083

vector.ph1083:                                    ; preds = %vector.memcheck1079
  %n.vec1084 = and i64 %wide.trip.count621, 2147483640 ; 3 uses
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %vector.ph1083
  %index1086 = phi i64 [ 0, %vector.ph1083 ], [ %index.next1089, %vector.body1085 ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %index1086 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %wide.load1087 = load <4 x float>, ptr %i.qd, align 4, !tbaa !177
  %wide.load1088 = load <4 x float>, ptr %i.qe, align 4, !tbaa !177
  %i.qf = trunc nuw nsw i64 %index1086 to i32
  %i.qg = add i32 %invariant.op, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.qh ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store <4 x float> %wide.load1087, ptr %i.qi, align 4, !tbaa !177
  store <4 x float> %wide.load1088, ptr %i.qj, align 4, !tbaa !177
  %index.next1089 = add nuw i64 %index1086, 8     ; 2 uses
  %i.qk = icmp eq i64 %index.next1089, %n.vec1084
  br i1 %i.qk, label %middle.block1090, label %vector.body1085, !llvm.loop !275

middle.block1090:                                 ; preds = %vector.body1085
  %cmp.n1091 = icmp eq i64 %n.vec1084, %wide.trip.count621
  br i1 %cmp.n1091, label %._crit_edge579, label %scalar.ph1081.preheader

scalar.ph1081.preheader:                          ; preds = %vector.memcheck1079, %vector.scevcheck, %.lr.ph578, %middle.block1090
  %indvars.iv618.ph = phi i64 [ 0, %vector.memcheck1079 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph578 ], [ %n.vec1084, %middle.block1090 ] ; 3 uses
  %xtraiter1145 = and i64 %wide.trip.count621, 3  ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145, 0
  br i1 %lcmp.mod1146.not, label %scalar.ph1081.prol.loopexit, label %scalar.ph1081.prol

scalar.ph1081.prol:                               ; preds = %scalar.ph1081.preheader, %scalar.ph1081.prol
  %indvars.iv618.prol = phi i64 [ %indvars.iv.next619.prol, %scalar.ph1081.prol ], [ %indvars.iv618.ph, %scalar.ph1081.preheader ] ; 3 uses
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %scalar.ph1081.prol ], [ 0, %scalar.ph1081.preheader ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv618.prol
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !177
  %i.qn = trunc nuw nsw i64 %indvars.iv618.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.qn
  %i.qo = sext i32 %.reass.prol to i64
  %i.qp = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.qo
  store float %i.qm, ptr %i.qp, align 4, !tbaa !177
  %indvars.iv.next619.prol = add nuw nsw i64 %indvars.iv618.prol, 1 ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145
  br i1 %prol.iter1147.cmp.not, label %scalar.ph1081.prol.loopexit, label %scalar.ph1081.prol, !llvm.loop !276

scalar.ph1081.prol.loopexit:                      ; preds = %scalar.ph1081.prol, %scalar.ph1081.preheader
  %indvars.iv618.unr = phi i64 [ %indvars.iv618.ph, %scalar.ph1081.preheader ], [ %indvars.iv.next619.prol, %scalar.ph1081.prol ]
  %i.qq = sub nsw i64 %indvars.iv618.ph, %wide.trip.count621
  %i.qr = icmp ugt i64 %i.qq, -4
  br i1 %i.qr, label %._crit_edge579, label %scalar.ph1081

.thread531:                                       ; preds = %bb.bp
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIfED2Ev.exit508

._crit_edge579:                                   ; preds = %scalar.ph1081.prol.loopexit, %scalar.ph1081, %middle.block1090, %.preheader
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count626
  br i1 %exitcond627.not, label %.preheader552, label %.preheader, !llvm.loop !277

scalar.ph1081:                                    ; preds = %scalar.ph1081.prol.loopexit, %scalar.ph1081
  %indvars.iv618 = phi i64 [ %indvars.iv.next619.3, %scalar.ph1081 ], [ %indvars.iv618.unr, %scalar.ph1081.prol.loopexit ] ; 6 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv618
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !177
  %i.qv = trunc nuw nsw i64 %indvars.iv618 to i32
  %.reass = add i32 %invariant.op, %i.qv
  %i.qw = sext i32 %.reass to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.qw
  store float %i.qu, ptr %i.qx, align 4, !tbaa !177
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv.next619
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !177
  %i.ra = trunc nuw nsw i64 %indvars.iv.next619 to i32
  %.reass.1 = add i32 %invariant.op, %i.ra
  %i.rb = sext i32 %.reass.1 to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.rb
  store float %i.qz, ptr %i.rc, align 4, !tbaa !177
  %indvars.iv.next619.1 = add nuw nsw i64 %indvars.iv618, 2 ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv.next619.1
  %i.re = load float, ptr %i.rd, align 4, !tbaa !177
  %i.rf = trunc nuw nsw i64 %indvars.iv.next619.1 to i32
  %.reass.2 = add i32 %invariant.op, %i.rf
  %i.rg = sext i32 %.reass.2 to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.rg
  store float %i.re, ptr %i.rh, align 4, !tbaa !177
  %indvars.iv.next619.2 = add nuw nsw i64 %indvars.iv618, 3 ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv.next619.2
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !177
  %i.rk = trunc nuw nsw i64 %indvars.iv.next619.2 to i32
  %.reass.3 = add i32 %invariant.op, %i.rk
  %i.rl = sext i32 %.reass.3 to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %.sroa.10521.2, i64 %i.rl
  store float %i.rj, ptr %i.rm, align 4, !tbaa !177
  %indvars.iv.next619.3 = add nuw nsw i64 %indvars.iv618, 4 ; 2 uses
  %exitcond622.not.3 = icmp eq i64 %indvars.iv.next619.3, %wide.trip.count621
  br i1 %exitcond622.not.3, label %._crit_edge579, label %scalar.ph1081, !llvm.loop !278

._crit_edge583:                                   ; preds = %scalar.ph1067.prol.loopexit, %scalar.ph1067, %middle.block1076, %.preheader552
  %i.rn = load float, ptr %i.hl, align 4, !tbaa !179 ; 7 uses
  %i.ro = load i8, ptr %i.hm, align 4, !tbaa !180, !range !30, !noundef !31
  %i.rp = trunc nuw i8 %i.ro to i1
  %i.rq = load i8, ptr %i.hn, align 1, !tbaa !181, !range !30, !noundef !31
  %i.rr = trunc nuw i8 %i.rq to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.ib, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, ptr noundef nonnull align 8 dereferenceable(25) %i.hg, i1 noundef zeroext false, i1 noundef zeroext %i.rp, i1 noundef zeroext %i.rr)
          to label %bb.bq unwind label %bb.bx

scalar.ph1067:                                    ; preds = %scalar.ph1067.prol.loopexit, %scalar.ph1067
  %indvars.iv628 = phi i64 [ %indvars.iv.next629.3, %scalar.ph1067 ], [ %indvars.iv628.unr, %scalar.ph1067.prol.loopexit ] ; 6 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv628
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !177
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv628
  store float %i.rt, ptr %i.ru, align 4, !tbaa !177
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.next629
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !177
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv.next629
  store float %i.rw, ptr %i.rx, align 4, !tbaa !177
  %indvars.iv.next629.1 = add nuw nsw i64 %indvars.iv628, 2 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %xtraiter1184 = and i64 %i.ahw, 3               ; 2 uses
  %lcmp.mod1185.not = icmp eq i64 %xtraiter1184, 0
  br i1 %lcmp.mod1185.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol

.lr.ph.i429.prol:                                 ; preds = %.lr.ph.i429.preheader, %.lr.ph.i429.prol
  %indvars.iv.i430.prol = phi i64 [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ], [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ] ; 3 uses
  %prol.iter1186 = phi i64 [ %prol.iter1186.next, %.lr.ph.i429.prol ], [ 0, %.lr.ph.i429.preheader ]
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.i430.prol
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !177
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.i430.prol
  store float %i.ahz, ptr %i.aia, align 4, !tbaa !177
  %indvars.iv.next.i431.prol = add nuw nsw i64 %indvars.iv.i430.prol, 1 ; 2 uses
  %prol.iter1186.next = add i64 %prol.iter1186, 1 ; 2 uses
  %prol.iter1186.cmp.not = icmp eq i64 %prol.iter1186.next, %xtraiter1184
  br i1 %prol.iter1186.cmp.not, label %.lr.ph.i429.prol.loopexit, label %.lr.ph.i429.prol, !llvm.loop !311

.lr.ph.i429.prol.loopexit:                        ; preds = %.lr.ph.i429.prol, %.lr.ph.i429.preheader
  %indvars.iv.i430.unr = phi i64 [ %indvars.iv.i430.ph, %.lr.ph.i429.preheader ], [ %indvars.iv.next.i431.prol, %.lr.ph.i429.prol ]
  %i.aib = icmp ult i64 %i.ahx, 3
  br i1 %i.aib, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429
  %indvars.iv.i430 = phi i64 [ %indvars.iv.next.i431.3, %.lr.ph.i429 ], [ %indvars.iv.i430.unr, %.lr.ph.i429.prol.loopexit ] ; 6 uses
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.i430
  %i.aid = load float, ptr %i.aic, align 4, !tbaa !177
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.i430
  store float %i.aid, ptr %i.aie, align 4, !tbaa !177
  %indvars.iv.next.i431 = add nuw nsw i64 %indvars.iv.i430, 1 ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.next.i431
  %i.aig = load float, ptr %i.aif, align 4, !tbaa !177
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next.i431
  store float %i.aig, ptr %i.aih, align 4, !tbaa !177
  %indvars.iv.next.i431.1 = add nuw nsw i64 %indvars.iv.i430, 2 ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.next.i431.1
  %i.aij = load float, ptr %i.aii, align 4, !tbaa !177
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next.i431.1
  store float %i.aij, ptr %i.aik, align 4, !tbaa !177
  %indvars.iv.next.i431.2 = add nuw nsw i64 %indvars.iv.i430, 3 ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.next.i431.2
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !177
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.next.i431.2
  store float %i.aim, ptr %i.ain, align 4, !tbaa !177
  %indvars.iv.next.i431.3 = add nuw nsw i64 %indvars.iv.i430, 4 ; 2 uses
  %exitcond.not.i432.3 = icmp eq i64 %indvars.iv.next.i431.3, %wide.trip.count.i428
  br i1 %exitcond.not.i432.3, label %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", label %.lr.ph.i429, !llvm.loop !312

"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433": ; preds = %.lr.ph.i429.prol.loopexit, %.lr.ph.i429, %middle.block890, %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_2clEfPKfS4_Pfi.exit425"
  %i.aio = load i8, ptr %i.hm, align 4, !tbaa !180, !range !30, !noundef !31
  %i.aip = trunc nuw i8 %i.aio to i1
  %i.aiq = load i8, ptr %i.hn, align 1, !tbaa !181, !range !30, !noundef !31
  %i.air = trunc nuw i8 %i.aiq to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.ib, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, ptr noundef nonnull align 8 dereferenceable(25) %i.hg, i1 noundef zeroext false, i1 noundef zeroext %i.aip, i1 noundef zeroext %i.air)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433"
  %i.ais = load i32, ptr %i.ms, align 4, !tbaa !182
  %i.ait = load ptr, ptr %i.gz, align 8, !tbaa !144 ; 2 uses
  %i.aiu = ptrtoaddr ptr %i.ait to i64
  %i.aiv = sext i32 %i.ais to i64                 ; 2 uses
  %i.aiw = getelementptr inbounds [4 x i8], ptr %i.ait, i64 %i.aiv ; 6 uses
  br i1 %i.or, label %.lr.ph.preheader.i434, label %.loopexit

.lr.ph.preheader.i434:                            ; preds = %bb.bw
  %wide.trip.count.i435 = zext i32 %i.mu to i64   ; 7 uses
  %min.iters.check868 = icmp ult i32 %i.mu, 16
  br i1 %min.iters.check868, label %.lr.ph.i436.preheader, label %vector.memcheck865

vector.memcheck865:                               ; preds = %.lr.ph.preheader.i434
  %i.aix = add i64 %.sroa.10521.2797, 224
  %i.aiy = sext i32 %i.mt to i64
  %i.aiz = mul nsw i64 %i.aiy, 28
  %i.aja = add i64 %i.aix, %i.aiz
  %i.ajb = sext i32 %i.mw to i64
  %i.ajc = shl nsw i64 %i.ajb, 3
  %i.ajd = add i64 %i.aja, %i.ajc
  %i.aje = shl nsw i64 %i.aiv, 2
  %i.ajf = add i64 %i.aje, %i.aiu
  %i.ajg = sub i64 %i.ajf, %i.ajd
  %diff.check866 = icmp ugt i64 %i.ajg, -32
  br i1 %diff.check866, label %.lr.ph.i436.preheader, label %vector.ph869

vector.ph869:                                     ; preds = %vector.memcheck865
  %n.vec870 = and i64 %wide.trip.count.i435, 2147483640 ; 3 uses
  br label %vector.body871

vector.body871:                                   ; preds = %vector.body871, %vector.ph869
  %index872 = phi i64 [ 0, %vector.ph869 ], [ %index.next875, %vector.body871 ] ; 3 uses
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %index872 ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 16
  %wide.load873 = load <4 x float>, ptr %i.ajh, align 4, !tbaa !177
  %wide.load874 = load <4 x float>, ptr %i.aji, align 4, !tbaa !177
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %index872 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 16
  store <4 x float> %wide.load873, ptr %i.ajj, align 4, !tbaa !177
  store <4 x float> %wide.load874, ptr %i.ajk, align 4, !tbaa !177
  %index.next875 = add nuw i64 %index872, 8       ; 2 uses
  %i.ajl = icmp eq i64 %index.next875, %n.vec870
  br i1 %i.ajl, label %middle.block876, label %vector.body871, !llvm.loop !313

middle.block876:                                  ; preds = %vector.body871
  %cmp.n877 = icmp eq i64 %n.vec870, %wide.trip.count.i435
  br i1 %cmp.n877, label %.loopexit1108, label %.lr.ph.i436.preheader

.lr.ph.i436.preheader:                            ; preds = %vector.memcheck865, %.lr.ph.preheader.i434, %middle.block876
  %indvars.iv.i437.ph = phi i64 [ 0, %vector.memcheck865 ], [ 0, %.lr.ph.preheader.i434 ], [ %n.vec870, %middle.block876 ] ; 3 uses
  %xtraiter1187 = and i64 %wide.trip.count.i435, 3 ; 2 uses
  %lcmp.mod1188.not = icmp eq i64 %xtraiter1187, 0
  br i1 %lcmp.mod1188.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol

.lr.ph.i436.prol:                                 ; preds = %.lr.ph.i436.preheader, %.lr.ph.i436.prol
  %indvars.iv.i437.prol = phi i64 [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ], [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ] ; 3 uses
  %prol.iter1189 = phi i64 [ %prol.iter1189.next, %.lr.ph.i436.prol ], [ 0, %.lr.ph.i436.preheader ]
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv.i437.prol
  %i.ajn = load float, ptr %i.ajm, align 4, !tbaa !177
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.i437.prol
  store float %i.ajn, ptr %i.ajo, align 4, !tbaa !177
  %indvars.iv.next.i438.prol = add nuw nsw i64 %indvars.iv.i437.prol, 1 ; 2 uses
  %prol.iter1189.next = add i64 %prol.iter1189, 1 ; 2 uses
  %prol.iter1189.cmp.not = icmp eq i64 %prol.iter1189.next, %xtraiter1187
  br i1 %prol.iter1189.cmp.not, label %.lr.ph.i436.prol.loopexit, label %.lr.ph.i436.prol, !llvm.loop !314

.lr.ph.i436.prol.loopexit:                        ; preds = %.lr.ph.i436.prol, %.lr.ph.i436.preheader
  %indvars.iv.i437.unr = phi i64 [ %indvars.iv.i437.ph, %.lr.ph.i436.preheader ], [ %indvars.iv.next.i438.prol, %.lr.ph.i436.prol ]
  %i.ajp = sub nsw i64 %indvars.iv.i437.ph, %wide.trip.count.i435
  %i.ajq = icmp ugt i64 %i.ajp, -4
  br i1 %i.ajq, label %.loopexit1108, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436
  %indvars.iv.i437 = phi i64 [ %indvars.iv.next.i438.3, %.lr.ph.i436 ], [ %indvars.iv.i437.unr, %.lr.ph.i436.prol.loopexit ] ; 6 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv.i437
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !177
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.i437
  store float %i.ajs, ptr %i.ajt, align 4, !tbaa !177
  %indvars.iv.next.i438 = add nuw nsw i64 %indvars.iv.i437, 1 ; 2 uses
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv.next.i438
  %i.ajv = load float, ptr %i.aju, align 4, !tbaa !177
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next.i438
  store float %i.ajv, ptr %i.ajw, align 4, !tbaa !177
  %indvars.iv.next.i438.1 = add nuw nsw i64 %indvars.iv.i437, 2 ; 2 uses
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv.next.i438.1
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !177
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next.i438.1
  store float %i.ajy, ptr %i.ajz, align 4, !tbaa !177
  %indvars.iv.next.i438.2 = add nuw nsw i64 %indvars.iv.i437, 3 ; 2 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv.next.i438.2
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !177
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv.next.i438.2
  store float %i.akb, ptr %i.akc, align 4, !tbaa !177
  %indvars.iv.next.i438.3 = add nuw nsw i64 %indvars.iv.i437, 4 ; 2 uses
  %exitcond.not.i439.3 = icmp eq i64 %indvars.iv.next.i438.3, %wide.trip.count.i435
  br i1 %exitcond.not.i439.3, label %.loopexit1108, label %.lr.ph.i436, !llvm.loop !315

.loopexit1108:                                    ; preds = %.lr.ph.i436.prol.loopexit, %.lr.ph.i436, %middle.block876
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.ho, align 8, !tbaa !143
  store ptr null, ptr %i.hp, align 8, !tbaa !144
  store i32 0, ptr %i.hq, align 4, !tbaa !145
  store i32 0, ptr %i.hr, align 8, !tbaa !146
  %i.akd = shl nuw nsw i64 %i.ni, 2               ; 2 uses
  %i.ake = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.akd, i32 noundef 16)
          to label %.lr.ph.i441 unwind label %bb.by ; 7 uses

.lr.ph.i441:                                      ; preds = %.loopexit1108
  %i.akf = ptrtoaddr ptr %i.ake to i64            ; 9 uses
  store i8 1, ptr %i.ho, align 8, !tbaa !143
  store ptr %i.ake, ptr %i.hp, align 8, !tbaa !144
  store i32 %i.mu, ptr %i.hr, align 8, !tbaa !146
  %i.akg = sext i32 %i.mt to i64
  %i.akh = shl nsw i64 %i.akg, 2
  %i.aki = add nsw i64 %i.akh, 24                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ake, i8 0, i64 %i.aki, i1 false), !tbaa !177
  store i32 %i.mu, ptr %i.hq, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hs, align 8, !tbaa !143
  store ptr null, ptr %i.ht, align 8, !tbaa !144
  store i32 0, ptr %i.hu, align 4, !tbaa !145
  store i32 0, ptr %i.hv, align 8, !tbaa !146
  %i.akj = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.akd, i32 noundef 16)
          to label %.lr.ph586 unwind label %bb.bz ; 7 uses

.loopexit:                                        ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i8 1, ptr %i.ho, align 8, !tbaa !143
  store ptr null, ptr %i.hp, align 8, !tbaa !144
  store i32 0, ptr %i.hr, align 8, !tbaa !146
  store i32 %i.mu, ptr %i.hq, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i8 1, ptr %i.hs, align 8, !tbaa !143
  store ptr null, ptr %i.ht, align 8, !tbaa !144
  store i32 0, ptr %i.hv, align 8, !tbaa !146
  store i32 %i.mu, ptr %i.hu, align 4, !tbaa !145
  br label %._crit_edge587

.lr.ph586:                                        ; preds = %.lr.ph.i441
  store i8 1, ptr %i.hs, align 8, !tbaa !143
  store ptr %i.akj, ptr %i.ht, align 8, !tbaa !144
  store i32 %i.mu, ptr %i.hv, align 8, !tbaa !146
  call void @llvm.memset.p0.i64(ptr align 4 %i.akj, i8 0, i64 %i.aki, i1 false), !tbaa !177
  store i32 %i.mu, ptr %i.hu, align 4, !tbaa !145
  %i.akk = fdiv float %i.rn, 6.000000e+00         ; 3 uses
  %wide.trip.count636 = zext i32 %i.mu to i64
  %min.iters.check846 = icmp ult i32 %i.mu, 20
  br i1 %min.iters.check846, label %scalar.ph845.preheader, label %vector.memcheck811

vector.memcheck811:                               ; preds = %.lr.ph586
  %i.akl = ptrtoaddr ptr %i.akj to i64            ; 9 uses
  %i.akm = sub i64 %i.akf, %i.akl
  %diff.check812 = icmp ugt i64 %i.akm, -16
  %i.akn = add i64 %.sroa.10521.2797, 224
  %i.ako = sext i32 %i.mt to i64                  ; 7 uses
  %i.akp = mul nsw i64 %i.ako, 28                 ; 2 uses
  %i.akq = add i64 %i.akn, %i.akp
  %i.akr = sext i32 %i.mw to i64
  %i.aks = shl nsw i64 %i.akr, 3                  ; 16 uses
  %i.akt = add i64 %i.akq, %i.aks
  %i.aku = sub i64 %i.akf, %i.akt
  %diff.check813 = icmp ugt i64 %i.aku, -16
  %conflict.rdx814 = or i1 %diff.check812, %diff.check813
  %i.akv = add i64 %.sroa.10521.2797, 200
  %i.akw = mul nsw i64 %i.ako, 24                 ; 2 uses
  %i.akx = add i64 %i.akv, %i.akw
  %i.aky = add i64 %i.akx, %i.aks
  %i.akz = sub i64 %i.akf, %i.aky
  %diff.check815 = icmp ugt i64 %i.akz, -16
  %conflict.rdx816 = or i1 %conflict.rdx814, %diff.check815
  %i.ala = add i64 %.sroa.10521.2797, 176
  %i.alb = mul nsw i64 %i.ako, 20                 ; 2 uses
  %i.alc = add i64 %i.ala, %i.alb
  %i.ald = add i64 %i.alc, %i.aks
  %i.ale = sub i64 %i.akf, %i.ald
  %diff.check817 = icmp ugt i64 %i.ale, -16
  %conflict.rdx818 = or i1 %conflict.rdx816, %diff.check817
  %i.alf = add i64 %.sroa.10521.2797, 152
  %i.alg = shl nsw i64 %i.ako, 4                  ; 2 uses
  %i.alh = add i64 %i.alf, %i.alg
  %i.ali = add i64 %i.alh, %i.aks
  %i.alj = sub i64 %i.akf, %i.ali
  %diff.check819 = icmp ugt i64 %i.alj, -16
  %conflict.rdx820 = or i1 %conflict.rdx818, %diff.check819
  %i.alk = add i64 %i.aks, %.sroa.10521.2797
  %i.all = mul nsw i64 %i.ako, 12                 ; 2 uses
  %i.alm = add i64 %i.alk, %i.all
  %i.aln = sub i64 %i.akf, %i.alm
  %i.alo = add i64 %i.aln, -129
  %diff.check821 = icmp ult i64 %i.alo, 15
  %conflict.rdx822 = or i1 %conflict.rdx820, %diff.check821
  %i.alp = add i64 %i.aks, %.sroa.10521.2797
  %i.alq = shl nsw i64 %i.ako, 3                  ; 2 uses
  %i.alr = add i64 %i.alp, %i.alq
  %i.als = sub i64 %i.akf, %i.alr
  %i.alt = add i64 %i.als, -105
  %diff.check823 = icmp ult i64 %i.alt, 15
  %conflict.rdx824 = or i1 %conflict.rdx822, %diff.check823
  %i.alu = shl nsw i64 %i.ako, 2                  ; 2 uses
  %i.alv = add i64 %i.alu, %.sroa.10521.2797
  %i.alw = add i64 %i.alv, %i.aks
  %i.alx = sub i64 %i.akf, %i.alw
  %i.aly = add i64 %i.alx, -81
  %diff.check825 = icmp ult i64 %i.aly, 15
  %conflict.rdx826 = or i1 %conflict.rdx824, %diff.check825
  %i.alz = add i64 %i.aks, %.sroa.10521.2797
  %i.ama = sub i64 %i.akf, %i.alz
  %i.amb = add i64 %i.ama, -57
  %diff.check827 = icmp ult i64 %i.amb, 15
  %conflict.rdx828 = or i1 %conflict.rdx826, %diff.check827
  %i.amc = add i64 %i.aks, %.sroa.10521.2797
  %i.amd = add i64 %i.amc, %i.akp
  %i.ame = sub i64 %i.akl, %i.amd
  %i.amf = add i64 %i.ame, -225
  %diff.check829 = icmp ult i64 %i.amf, 15
  %conflict.rdx830 = or i1 %conflict.rdx828, %diff.check829
  %i.amg = add i64 %i.aks, %.sroa.10521.2797
  %i.amh = add i64 %i.amg, %i.akw
  %i.ami = sub i64 %i.akl, %i.amh
  %i.amj = add i64 %i.ami, -201
  %diff.check831 = icmp ult i64 %i.amj, 15
  %conflict.rdx832 = or i1 %conflict.rdx830, %diff.check831
  %i.amk = add i64 %i.aks, %.sroa.10521.2797
  %i.aml = add i64 %i.amk, %i.alb
  %i.amm = sub i64 %i.akl, %i.aml
  %i.amn = add i64 %i.amm, -177
  %diff.check833 = icmp ult i64 %i.amn, 15
  %conflict.rdx834 = or i1 %conflict.rdx832, %diff.check833
  %i.amo = add i64 %i.aks, %.sroa.10521.2797
  %i.amp = add i64 %i.amo, %i.alg
  %i.amq = sub i64 %i.akl, %i.amp
  %i.amr = add i64 %i.amq, -153
  %diff.check835 = icmp ult i64 %i.amr, 15
  %conflict.rdx836 = or i1 %conflict.rdx834, %diff.check835
  %i.ams = add i64 %i.aks, %.sroa.10521.2797
  %i.amt = add i64 %i.ams, %i.all
  %i.amu = sub i64 %i.akl, %i.amt
  %i.amv = add i64 %i.amu, -129
  %diff.check837 = icmp ult i64 %i.amv, 15
  %conflict.rdx838 = or i1 %conflict.rdx836, %diff.check837
  %i.amw = add i64 %i.aks, %.sroa.10521.2797
  %i.amx = add i64 %i.amw, %i.alq
  %i.amy = sub i64 %i.akl, %i.amx
  %i.amz = add i64 %i.amy, -105
  %diff.check839 = icmp ult i64 %i.amz, 15
  %conflict.rdx840 = or i1 %conflict.rdx838, %diff.check839
  %i.ana = add i64 %i.alu, %.sroa.10521.2797
  %i.anb = add i64 %i.ana, %i.aks
  %i.anc = sub i64 %i.akl, %i.anb
  %i.and = add i64 %i.anc, -81
  %diff.check841 = icmp ult i64 %i.and, 15
  %conflict.rdx842 = or i1 %conflict.rdx840, %diff.check841
  %i.ane = add i64 %i.aks, %.sroa.10521.2797
  %i.anf = sub i64 %i.akl, %i.ane
  %i.ang = add i64 %i.anf, -57
  %diff.check843 = icmp ult i64 %i.ang, 15
  %conflict.rdx844 = or i1 %conflict.rdx842, %diff.check843
  br i1 %conflict.rdx844, label %scalar.ph845.preheader, label %vector.ph847

vector.ph847:                                     ; preds = %vector.memcheck811
  %n.vec848 = and i64 %wide.trip.count.i435, 2147483644 ; 3 uses
  %broadcast.splatinsert849 = insertelement <4 x float> poison, float %i.akk, i64 0
  %broadcast.splat850 = shufflevector <4 x float> %broadcast.splatinsert849, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph847
  %index852 = phi i64 [ 0, %vector.ph847 ], [ %index.next861, %vector.body851 ] ; 11 uses
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index852
  %wide.load853 = load <4 x float>, ptr %i.anh, align 4, !tbaa !177
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %index852
  %wide.load854 = load <4 x float>, ptr %i.ani, align 4, !tbaa !177
  %i.anj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load854, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load853)
  %i.ank = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index852
  %wide.load855 = load <4 x float>, ptr %i.ank, align 4, !tbaa !177
  %i.anl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load855, <4 x float> splat (float 2.000000e+00), <4 x float> %i.anj)
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %index852
  %wide.load856 = load <4 x float>, ptr %i.anm, align 4, !tbaa !177
  %i.ann = fadd <4 x float> %i.anl, %wide.load856
  %i.ano = fmul <4 x float> %broadcast.splat850, %i.ann
  %i.anp = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %index852
  store <4 x float> %i.ano, ptr %i.anp, align 4, !tbaa !177
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %index852
  %wide.load857 = load <4 x float>, ptr %i.anq, align 4, !tbaa !177
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %index852
  %wide.load858 = load <4 x float>, ptr %i.anr, align 4, !tbaa !177
  %i.ans = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load858, <4 x float> splat (float 2.000000e+00), <4 x float> %wide.load857)
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %index852
  %wide.load859 = load <4 x float>, ptr %i.ant, align 4, !tbaa !177
  %i.anu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load859, <4 x float> splat (float 2.000000e+00), <4 x float> %i.ans)
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %index852
  %wide.load860 = load <4 x float>, ptr %i.anv, align 4, !tbaa !177
  %i.anw = fadd <4 x float> %i.anu, %wide.load860
  %i.anx = fmul <4 x float> %broadcast.splat850, %i.anw
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %index852
  store <4 x float> %i.anx, ptr %i.any, align 4, !tbaa !177
  %index.next861 = add nuw i64 %index852, 4       ; 2 uses
  %i.anz = icmp eq i64 %index.next861, %n.vec848
  br i1 %i.anz, label %middle.block862, label %vector.body851, !llvm.loop !316

middle.block862:                                  ; preds = %vector.body851
  %cmp.n863 = icmp eq i64 %n.vec848, %wide.trip.count.i435
  br i1 %cmp.n863, label %._crit_edge587, label %scalar.ph845.preheader

scalar.ph845.preheader:                           ; preds = %vector.memcheck811, %.lr.ph586, %middle.block862
  %indvars.iv633.ph = phi i64 [ 0, %vector.memcheck811 ], [ 0, %.lr.ph586 ], [ %n.vec848, %middle.block862 ]
  br label %scalar.ph845

._crit_edge587:                                   ; preds = %scalar.ph845, %middle.block862, %.loopexit
  %i.aoa = phi ptr [ null, %.loopexit ], [ %i.ake, %middle.block862 ], [ %i.ake, %scalar.ph845 ] ; 9 uses
  %i.aob = phi ptr [ null, %.loopexit ], [ %i.akj, %middle.block862 ], [ %i.akj, %scalar.ph845 ] ; 6 uses
  %i.aoc = ptrtoaddr ptr %i.aoa to i64
  %i.aod = load ptr, ptr %i.wc, align 8, !tbaa !144 ; 16 uses
  %i.aoe = ptrtoaddr ptr %i.aod to i64            ; 2 uses
  %i.aof = load i32, ptr %i.ms, align 4, !tbaa !182 ; 5 uses
  %i.aog = icmp sgt i32 %i.aof, -6
  br i1 %i.aog, label %.lr.ph.preheader.i485, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit

.lr.ph.preheader.i485:                            ; preds = %._crit_edge587
  %i.aoh = add i32 %i.aof, 5                      ; 3 uses
  %smax.i486 = call i32 @llvm.smax.i32(i32 %i.aoh, i32 0) ; 3 uses
  %i.aoi = add nuw i32 %smax.i486, 1
  %wide.trip.count.i487 = zext i32 %i.aoi to i64  ; 6 uses
  %min.iters.check800 = icmp slt i32 %i.aoh, 7
  br i1 %min.iters.check800, label %.lr.ph.i488.preheader, label %vector.memcheck796

vector.memcheck796:                               ; preds = %.lr.ph.preheader.i485
  %i.aoj = sext i32 %i.mw to i64
  %i.aok = shl nsw i64 %i.aoj, 3
  %i.aol = add i64 %i.aok, %.sroa.10521.2797
  %i.aom = sub i64 %i.aoe, %i.aol
  %i.aon = add i64 %i.aom, -57
  %diff.check798 = icmp ult i64 %i.aon, 31
  br i1 %diff.check798, label %.lr.ph.i488.preheader, label %vector.ph801

vector.ph801:                                     ; preds = %vector.memcheck796
  %n.vec802 = and i64 %wide.trip.count.i487, 4294967288 ; 3 uses
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph801
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next807, %vector.body803 ] ; 3 uses
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %index804 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 16
  %wide.load805 = load <4 x float>, ptr %i.aoo, align 4, !tbaa !177
  %wide.load806 = load <4 x float>, ptr %i.aop, align 4, !tbaa !177
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %index804 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
end_hunk_1
begin_hunk_2_@_ZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfo:bb.a
  %i.apk = load float, ptr %i.apj, align 4, !tbaa !177
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %indvars.iv.next.i490.2
  store float %i.apk, ptr %i.apl, align 4, !tbaa !177
  %indvars.iv.next.i490.3 = add nuw nsw i64 %indvars.iv.i489, 4 ; 2 uses
  %exitcond.not.i491.3 = icmp eq i64 %indvars.iv.next.i490.3, %wide.trip.count.i487
  br i1 %exitcond.not.i491.3, label %.lr.ph.i493, label %.lr.ph.i488, !llvm.loop !319

bb.bx:                                            ; preds = %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit433", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit418", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit404", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit389", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_3clEP11btMultiBodyPKf.exit", %"_ZZN24btMultiBodyDynamicsWorld19solveExternalForcesER19btContactSolverInfoEN3$_0clEv.exit", %._crit_edge583
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %.thread536

bb.by:                                            ; preds = %.loopexit1108
  %i.apn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.bz:                                            ; preds = %.lr.ph.i441
  %i.apo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

scalar.ph845:                                     ; preds = %scalar.ph845.preheader, %scalar.ph845
  %indvars.iv633 = phi i64 [ %indvars.iv.next634, %scalar.ph845 ], [ %indvars.iv633.ph, %scalar.ph845.preheader ] ; 11 uses
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %indvars.iv633
  %i.apq = load float, ptr %i.app, align 4, !tbaa !177
  %i.apr = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv633
  %i.aps = load float, ptr %i.apr, align 4, !tbaa !177
  %i.apt = call float @llvm.fmuladd.f32(float %i.aps, float 2.000000e+00, float %i.apq)
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv633
  %i.apv = load float, ptr %i.apu, align 4, !tbaa !177
  %i.apw = call float @llvm.fmuladd.f32(float %i.apv, float 2.000000e+00, float %i.apt)
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv633
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !177
  %i.apz = fadd float %i.apw, %i.apy
  %i.aqa = fmul float %i.akk, %i.apz
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %i.ake, i64 %indvars.iv633
  store float %i.aqa, ptr %i.aqb, align 4, !tbaa !177
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv633
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !177
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %indvars.iv633
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !177
  %i.aqg = call float @llvm.fmuladd.f32(float %i.aqf, float 2.000000e+00, float %i.aqd)
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %indvars.iv633
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !177
  %i.aqj = call float @llvm.fmuladd.f32(float %i.aqi, float 2.000000e+00, float %i.aqg)
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv633
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !177
  %i.aqm = fadd float %i.aqj, %i.aql
  %i.aqn = fmul float %i.akk, %i.aqm
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %indvars.iv633
  store float %i.aqn, ptr %i.aqo, align 4, !tbaa !177
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %._crit_edge587, label %scalar.ph845, !llvm.loop !320

.lr.ph.i493:                                      ; preds = %.lr.ph.i488.prol.loopexit, %.lr.ph.i488, %middle.block808
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.ib, i64 620 ; 3 uses
  %min.iters.check779 = icmp slt i32 %i.aoh, 3
  br i1 %min.iters.check779, label %scalar.ph778.preheader, label %vector.memcheck769

vector.memcheck769:                               ; preds = %.lr.ph.i493
  %scevgep770 = getelementptr i8, ptr %i.aod, i64 4
  %i.aqq = zext nneg i32 %smax.i486 to i64
  %i.aqr = shl nuw nsw i64 %i.aqq, 2              ; 2 uses
  %scevgep771 = getelementptr i8, ptr %scevgep770, i64 %i.aqr ; 2 uses
  %scevgep772 = getelementptr i8, ptr %i.aob, i64 4
  %scevgep773 = getelementptr i8, ptr %scevgep772, i64 %i.aqr
  %scevgep774 = getelementptr i8, ptr %i.ib, i64 624
  %bound0 = icmp ult ptr %i.aod, %scevgep773
  %bound1 = icmp ult ptr %i.aob, %scevgep771
  %found.conflict = and i1 %bound0, %bound1
  %bound0775 = icmp ult ptr %i.aod, %scevgep774
  %bound1776 = icmp ult ptr %i.aqp, %scevgep771
  %found.conflict777 = and i1 %bound0775, %bound1776
  %conflict.rdx = or i1 %found.conflict, %found.conflict777
  br i1 %conflict.rdx, label %scalar.ph778.preheader, label %vector.ph780

vector.ph780:                                     ; preds = %vector.memcheck769
  %n.vec781 = and i64 %wide.trip.count.i487, 4294967292 ; 3 uses
  %i.aqs = load float, ptr %i.aqp, align 4, !tbaa !183, !alias.scope !335
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aqs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aqt = fneg <4 x float> %broadcast.splat      ; 2 uses
  br label %vector.body782

vector.body782:                                   ; preds = %pred.store.continue791, %vector.ph780
  %index783 = phi i64 [ 0, %vector.ph780 ], [ %index.next792, %pred.store.continue791 ] ; 6 uses
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %index783
  %wide.load784 = load <4 x float>, ptr %i.aqu, align 4, !tbaa !177, !alias.scope !336
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %index783 ; 3 uses
  %wide.load785 = load <4 x float>, ptr %i.aqv, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  %i.aqw = fadd <4 x float> %wide.load784, %wide.load785 ; 3 uses
  store <4 x float> %i.aqw, ptr %i.aqv, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  %i.aqx = fcmp olt <4 x float> %i.aqw, %i.aqt    ; 2 uses
  %i.aqy = fcmp olt <4 x float> %broadcast.splat, %i.aqw
  %i.aqz = or <4 x i1> %i.aqx, %i.aqy             ; 4 uses
  %predphi = select <4 x i1> %i.aqx, <4 x float> %i.aqt, <4 x float> %broadcast.splat ; 4 uses
  %i.ara = extractelement <4 x i1> %i.aqz, i64 0
  br i1 %i.ara, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body782
  %i.arb = extractelement <4 x float> %predphi, i64 0
  store float %i.arb, ptr %i.aqv, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body782
  %i.arc = extractelement <4 x i1> %i.aqz, i64 1
  br i1 %i.arc, label %pred.store.if786, label %pred.store.continue787

pred.store.if786:                                 ; preds = %pred.store.continue
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %index783
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 4
  %i.arf = extractelement <4 x float> %predphi, i64 1
  store float %i.arf, ptr %i.are, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue787

pred.store.continue787:                           ; preds = %pred.store.if786, %pred.store.continue
  %i.arg = extractelement <4 x i1> %i.aqz, i64 2
  br i1 %i.arg, label %pred.store.if788, label %pred.store.continue789

pred.store.if788:                                 ; preds = %pred.store.continue787
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %index783
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.arj = extractelement <4 x float> %predphi, i64 2
  store float %i.arj, ptr %i.ari, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue789

pred.store.continue789:                           ; preds = %pred.store.if788, %pred.store.continue787
  %i.ark = extractelement <4 x i1> %i.aqz, i64 3
  br i1 %i.ark, label %pred.store.if790, label %pred.store.continue791

pred.store.if790:                                 ; preds = %pred.store.continue789
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %index783
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 12
  %i.arn = extractelement <4 x float> %predphi, i64 3
  store float %i.arn, ptr %i.arm, align 4, !tbaa !177, !alias.scope !337, !noalias !338
  br label %pred.store.continue791

pred.store.continue791:                           ; preds = %pred.store.if790, %pred.store.continue789
  %index.next792 = add nuw i64 %index783, 4       ; 2 uses
  %i.aro = icmp eq i64 %index.next792, %n.vec781
  br i1 %i.aro, label %middle.block793, label %vector.body782, !llvm.loop !325

middle.block793:                                  ; preds = %pred.store.continue791
  %cmp.n794 = icmp eq i64 %n.vec781, %wide.trip.count.i487
  br i1 %cmp.n794, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph778.preheader

scalar.ph778.preheader:                           ; preds = %vector.memcheck769, %.lr.ph.i493, %middle.block793
  %indvars.iv.i496.ph = phi i64 [ 0, %vector.memcheck769 ], [ 0, %.lr.ph.i493 ], [ %n.vec781, %middle.block793 ]
  br label %scalar.ph778

scalar.ph778:                                     ; preds = %scalar.ph778.preheader, %_Z7btClampIfEvRT_RKS0_S3_.exit.i
  %indvars.iv.i496 = phi i64 [ %indvars.iv.next.i497, %_Z7btClampIfEvRT_RKS0_S3_.exit.i ], [ %indvars.iv.i496.ph, %scalar.ph778.preheader ] ; 3 uses
  %i.arp = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %indvars.iv.i496
  %i.arq = load float, ptr %i.arp, align 4, !tbaa !177
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.aod, i64 %indvars.iv.i496 ; 3 uses
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !177
  %i.art = fadd float %i.arq, %i.ars              ; 3 uses
  store float %i.art, ptr %i.arr, align 4, !tbaa !177
  %i.aru = load float, ptr %i.aqp, align 4, !tbaa !183 ; 3 uses
  %i.arv = fneg float %i.aru                      ; 2 uses
  %i.arw = fcmp olt float %i.art, %i.arv
  br i1 %i.arw, label %.sink.split.i.i, label %bb.ca

bb.ca:                                            ; preds = %scalar.ph778
  %i.arx = fcmp olt float %i.aru, %i.art
  br i1 %i.arx, label %.sink.split.i.i, label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

.sink.split.i.i:                                  ; preds = %bb.ca, %scalar.ph778
  %.sink.i.i = phi float [ %i.arv, %scalar.ph778 ], [ %i.aru, %bb.ca ]
  store float %.sink.i.i, ptr %i.arr, align 4, !tbaa !177
  br label %_Z7btClampIfEvRT_RKS0_S3_.exit.i

_Z7btClampIfEvRT_RKS0_S3_.exit.i:                 ; preds = %.sink.split.i.i, %bb.ca
  %indvars.iv.next.i497 = add nuw nsw i64 %indvars.iv.i496, 1 ; 2 uses
  %exitcond.not.i498 = icmp eq i64 %indvars.iv.next.i497, %wide.trip.count.i487
  br i1 %exitcond.not.i498, label %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit, label %scalar.ph778, !llvm.loop !326

_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit: ; preds = %_Z7btClampIfEvRT_RKS0_S3_.exit.i, %middle.block793, %._crit_edge587
  %i.ary = add i32 %i.aof, 6
  %i.arz = mul i32 %i.aof, %i.aof
  %i.asa = add i32 %i.ary, %i.arz
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.aod, i64 %i.asb ; 6 uses
  br i1 %i.or, label %.lr.ph589, label %._crit_edge590

.lr.ph589:                                        ; preds = %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %wide.trip.count641 = zext i32 %i.mu to i64     ; 5 uses
  %min.iters.check758 = icmp ult i32 %i.mu, 8
  br i1 %min.iters.check758, label %scalar.ph757.preheader, label %vector.memcheck755

vector.memcheck755:                               ; preds = %.lr.ph589
  %i.asd = shl nsw i64 %i.asb, 2
  %i.ase = add i64 %i.asd, %i.aoe
  %i.asf = sub i64 %i.aoc, %i.ase
  %diff.check756 = icmp ugt i64 %i.asf, -32
  br i1 %diff.check756, label %scalar.ph757.preheader, label %vector.ph759

vector.ph759:                                     ; preds = %vector.memcheck755
  %n.vec760 = and i64 %wide.trip.count641, 4294967288 ; 3 uses
  br label %vector.body761

vector.body761:                                   ; preds = %vector.body761, %vector.ph759
  %index762 = phi i64 [ 0, %vector.ph759 ], [ %index.next765, %vector.body761 ] ; 3 uses
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %index762 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %wide.load763 = load <4 x float>, ptr %i.asg, align 4, !tbaa !177
  %wide.load764 = load <4 x float>, ptr %i.ash, align 4, !tbaa !177
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %index762 ; 2 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 16
  store <4 x float> %wide.load763, ptr %i.asi, align 4, !tbaa !177
  store <4 x float> %wide.load764, ptr %i.asj, align 4, !tbaa !177
  %index.next765 = add nuw i64 %index762, 8       ; 2 uses
  %i.ask = icmp eq i64 %index.next765, %n.vec760
  br i1 %i.ask, label %middle.block766, label %vector.body761, !llvm.loop !327

middle.block766:                                  ; preds = %vector.body761
  %cmp.n767 = icmp eq i64 %n.vec760, %wide.trip.count641
  br i1 %cmp.n767, label %._crit_edge590, label %scalar.ph757.preheader

scalar.ph757.preheader:                           ; preds = %vector.memcheck755, %.lr.ph589, %middle.block766
  %indvars.iv638.ph = phi i64 [ 0, %vector.memcheck755 ], [ 0, %.lr.ph589 ], [ %n.vec760, %middle.block766 ] ; 3 uses
  %xtraiter1193 = and i64 %wide.trip.count641, 3  ; 2 uses
  %lcmp.mod1194.not = icmp eq i64 %xtraiter1193, 0
  br i1 %lcmp.mod1194.not, label %scalar.ph757.prol.loopexit, label %scalar.ph757.prol

scalar.ph757.prol:                                ; preds = %scalar.ph757.preheader, %scalar.ph757.prol
  %indvars.iv638.prol = phi i64 [ %indvars.iv.next639.prol, %scalar.ph757.prol ], [ %indvars.iv638.ph, %scalar.ph757.preheader ] ; 3 uses
  %prol.iter1195 = phi i64 [ %prol.iter1195.next, %scalar.ph757.prol ], [ 0, %scalar.ph757.preheader ]
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %indvars.iv638.prol
  %i.asm = load float, ptr %i.asl, align 4, !tbaa !177
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv638.prol
  store float %i.asm, ptr %i.asn, align 4, !tbaa !177
  %indvars.iv.next639.prol = add nuw nsw i64 %indvars.iv638.prol, 1 ; 2 uses
  %prol.iter1195.next = add i64 %prol.iter1195, 1 ; 2 uses
  %prol.iter1195.cmp.not = icmp eq i64 %prol.iter1195.next, %xtraiter1193
  br i1 %prol.iter1195.cmp.not, label %scalar.ph757.prol.loopexit, label %scalar.ph757.prol, !llvm.loop !328

scalar.ph757.prol.loopexit:                       ; preds = %scalar.ph757.prol, %scalar.ph757.preheader
  %indvars.iv638.unr = phi i64 [ %indvars.iv638.ph, %scalar.ph757.preheader ], [ %indvars.iv.next639.prol, %scalar.ph757.prol ]
  %i.aso = sub nsw i64 %indvars.iv638.ph, %wide.trip.count641
  %i.asp = icmp ugt i64 %i.aso, -4
  br i1 %i.asp, label %._crit_edge590, label %scalar.ph757

._crit_edge590:                                   ; preds = %scalar.ph757.prol.loopexit, %scalar.ph757, %middle.block766, %_ZN11btMultiBody21applyDeltaVeeMultiDofEPKff.exit
  %i.asq = getelementptr inbounds nuw i8, ptr %i.ib, i64 625
  store i8 1, ptr %i.asq, align 1, !tbaa !184
  %i.asr = load i32, ptr %i.ih, align 4, !tbaa !61
  %i.ass = icmp sgt i32 %i.asr, 0
  br i1 %i.ass, label %.lr.ph593, label %._crit_edge594

.lr.ph593:                                        ; preds = %._crit_edge590
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ib, i64 192
  br label %bb.cd

bb.cb:                                            ; preds = %._crit_edge594
  %i.asu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

scalar.ph757:                                     ; preds = %scalar.ph757.prol.loopexit, %scalar.ph757
  %indvars.iv638 = phi i64 [ %indvars.iv.next639.3, %scalar.ph757 ], [ %indvars.iv638.unr, %scalar.ph757.prol.loopexit ] ; 6 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %indvars.iv638
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !177
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv638
  store float %i.asw, ptr %i.asx, align 4, !tbaa !177
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %indvars.iv.next639
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !177
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv.next639
  store float %i.asz, ptr %i.ata, align 4, !tbaa !177
  %indvars.iv.next639.1 = add nuw nsw i64 %indvars.iv638, 2 ; 2 uses
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %indvars.iv.next639.1
  %i.atc = load float, ptr %i.atb, align 4, !tbaa !177
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv.next639.1
  store float %i.atc, ptr %i.atd, align 4, !tbaa !177
  %indvars.iv.next639.2 = add nuw nsw i64 %indvars.iv638, 3 ; 2 uses
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %indvars.iv.next639.2
  %i.atf = load float, ptr %i.ate, align 4, !tbaa !177
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv.next639.2
  store float %i.atf, ptr %i.atg, align 4, !tbaa !177
  %indvars.iv.next639.3 = add nuw nsw i64 %indvars.iv638, 4 ; 2 uses
  %exitcond642.not.3 = icmp eq i64 %indvars.iv.next639.3, %wide.trip.count641
  br i1 %exitcond642.not.3, label %._crit_edge590, label %scalar.ph757, !llvm.loop !329

._crit_edge594:                                   ; preds = %bb.ce, %._crit_edge590
  %i.ath = load i8, ptr %i.hm, align 4, !tbaa !180, !range !30, !noundef !31
  %i.ati = trunc nuw i8 %i.ath to i1
  %i.atj = load i8, ptr %i.hn, align 1, !tbaa !181, !range !30, !noundef !31
  %i.atk = trunc nuw i8 %i.atj to i1
  invoke void @_ZN11btMultiBody52computeAccelerationsArticulatedBodyAlgorithmMultiDofEfR20btAlignedObjectArrayIfERS0_I9btVector3ERS0_I11btMatrix3x3Ebbb(ptr noundef nonnull align 8 dereferenceable(640) %i.ib, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %i.gw, ptr noundef nonnull align 8 dereferenceable(25) %i.hb, ptr noundef nonnull align 8 dereferenceable(25) %i.hg, i1 noundef zeroext false, i1 noundef zeroext %i.ati, i1 noundef zeroext %i.atk)
          to label %bb.cf unwind label %bb.cb

bb.cc:                                            ; preds = %bb.cd
  %i.atl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cd:                                            ; preds = %.lr.ph593, %bb.ce
  %indvars.iv643 = phi i64 [ 0, %.lr.ph593 ], [ %indvars.iv.next644, %bb.ce ] ; 2 uses
  %i.atm = load ptr, ptr %i.ast, align 8, !tbaa !62
  %i.atn = getelementptr inbounds nuw [688 x i8], ptr %i.atm, i64 %indvars.iv643
  invoke void @_ZN15btMultibodyLink19updateCacheMultiDofEPf(ptr noundef nonnull align 8 dereferenceable(688) %i.atn, ptr noundef null)
          to label %bb.ce unwind label %bb.cc

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next644 = add nuw nsw i64 %indvars.iv643, 1 ; 2 uses
  %i.ato = load i32, ptr %i.ih, align 4, !tbaa !61
  %i.atp = sext i32 %i.ato to i64
  %i.atq = icmp slt i64 %indvars.iv.next644, %i.atp
  br i1 %i.atq, label %bb.cd, label %._crit_edge594, !llvm.loop !330

bb.cf:                                            ; preds = %._crit_edge594
  %.not.i.i.i499.not = icmp eq ptr %i.aob, null
  br i1 %.not.i.i.i499.not, label %_ZN20btAlignedObjectArrayIfED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aob)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.atr = landingpad { ptr, i32 }
          catch ptr null
  %i.ats = extractvalue { ptr, i32 } %i.atr, 0
  call void @__clang_call_terminate(ptr %i.ats) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %.not.i.i.i500.not = icmp eq ptr %i.aoa, null
  br i1 %.not.i.i.i500.not, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aoa)
          to label %bb.ck unwind label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.att = landingpad { ptr, i32 }
          catch ptr null
  %i.atu = extractvalue { ptr, i32 } %i.att, 0
  call void @__clang_call_terminate(ptr %i.atu) #20
  unreachable

bb.ck:                                            ; preds = %bb.ci, %_ZN20btAlignedObjectArrayIfED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit505 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.atv = landingpad { ptr, i32 }
          catch ptr null
  %i.atw = extractvalue { ptr, i32 } %i.atv, 0
  call void @__clang_call_terminate(ptr %i.atw) #20
  unreachable

bb.cm:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %.pn = phi { ptr, i32 } [ %i.atl, %bb.cc ], [ %i.asu, %bb.cb ], [ %i.apo, %bb.bz ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.by
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.cm ], [ %i.apn, %bb.by ]
  call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread536

.thread536:                                       ; preds = %bb.cn, %bb.bx
  %.pn244.pn.pn = phi { ptr, i32 } [ %i.apm, %bb.bx ], [ %.pn.pn.pn, %bb.cn ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10521.2)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit508 unwind label %bb.co

bb.co:                                            ; preds = %.thread536
  %i.atx = landingpad { ptr, i32 }
          catch ptr null
  %i.aty = extractvalue { ptr, i32 } %i.atx, 0
  call void @__clang_call_terminate(ptr %i.aty) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit505:         ; preds = %bb.ck, %bb.bj, %._crit_edge575
  %indvars.iv.next647 = add nuw nsw i64 %indvars.iv646, 1 ; 2 uses
  %i.atz = load i32, ptr %i.a, align 4, !tbaa !20
  %i.aua = sext i32 %i.atz to i64
  %i.aub = icmp slt i64 %indvars.iv.next647, %i.aua
  br i1 %i.aub, label %bb.aj, label %._crit_edge597, !llvm.loop !331

_ZN20btAlignedObjectArrayIfED2Ev.exit508:         ; preds = %.thread531, %.thread536, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.pn251 = phi { ptr, i32 } [ %i.qs, %.thread531 ], [ %i.mo, %bb.bk ], [ %i.mq, %bb.bm ], [ %.pn244.pn.pn, %.thread536 ], [ %i.mp, %bb.bl ], [ %i.mr, %bb.bn ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit508, %bb.ai
  %.pn251.pn = phi { ptr, i32 } [ %.pn251, %_ZN20btAlignedObjectArrayIfED2Ev.exit508 ], [ %i.hy, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.m, %bb.w, %bb.ah, %bb.cp, %bb.ag, %bb.y, %bb.x, %bb.l, %bb.k
  %.pn251.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.ca, %bb.l ], [ %i.cb, %bb.m ], [ %i.fn, %bb.w ], [ %i.fo, %bb.x ], [ %i.hw, %bb.ag ], [ %i.fp, %bb.y ], [ %.pn251.pn, %bb.cp ], [ %i.hx, %bb.ah ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
end_hunk_2
