Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ArchiveCommandLine?download=true
inline.NumInlined: 366
inline.NumDeleted: 75
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN25CArchiveCommandLineParser6Parse2ER26CArchiveCommandLineOptions:bb.a
  %or.cond1492 = select i1 %min.iters.check1069, i1 true, i1 %diff.check1067
  br i1 %or.cond1492, label %scalar.ph1068.preheader, label %vector.ph1070

vector.ph1070:                                    ; preds = %.lr.ph.i.i243
  %n.vec1071 = and i64 %wide.trip.count.i.i244, 2147483640 ; 3 uses
  br label %vector.body1072

vector.body1072:                                  ; preds = %vector.body1072, %vector.ph1070
  %index1073 = phi i64 [ 0, %vector.ph1070 ], [ %index.next1076, %vector.body1072 ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %index1073 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %wide.load1074 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !48
  %wide.load1075 = load <4 x i32>, ptr %i.kz, align 4, !tbaa !48
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index1073 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store <4 x i32> %wide.load1074, ptr %i.la, align 4, !tbaa !48
  store <4 x i32> %wide.load1075, ptr %i.lb, align 4, !tbaa !48
  %index.next1076 = add nuw i64 %index1073, 8     ; 2 uses
  %i.lc = icmp eq i64 %index.next1076, %n.vec1071
  br i1 %i.lc, label %middle.block1077, label %vector.body1072, !llvm.loop !78

middle.block1077:                                 ; preds = %vector.body1072
  %cmp.n1078 = icmp eq i64 %n.vec1071, %wide.trip.count.i.i244
  br i1 %cmp.n1078, label %._crit_edge.thread.i.i241, label %scalar.ph1068.preheader

scalar.ph1068.preheader:                          ; preds = %.lr.ph.i.i243, %middle.block1077
  %indvars.iv.i.i245.ph = phi i64 [ 0, %.lr.ph.i.i243 ], [ %n.vec1071, %middle.block1077 ] ; 3 uses
  %xtraiter1579 = and i64 %wide.trip.count.i.i244, 3 ; 2 uses
  %lcmp.mod1580.not = icmp eq i64 %xtraiter1579, 0
  br i1 %lcmp.mod1580.not, label %scalar.ph1068.prol.loopexit, label %scalar.ph1068.prol

scalar.ph1068.prol:                               ; preds = %scalar.ph1068.preheader, %scalar.ph1068.prol
  %indvars.iv.i.i245.prol = phi i64 [ %indvars.iv.next.i.i246.prol, %scalar.ph1068.prol ], [ %indvars.iv.i.i245.ph, %scalar.ph1068.preheader ] ; 3 uses
  %prol.iter1581 = phi i64 [ %prol.iter1581.next, %scalar.ph1068.prol ], [ 0, %scalar.ph1068.preheader ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %indvars.iv.i.i245.prol
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !48
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i245.prol
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !48
  %indvars.iv.next.i.i246.prol = add nuw nsw i64 %indvars.iv.i.i245.prol, 1 ; 2 uses
  %prol.iter1581.next = add i64 %prol.iter1581, 1 ; 2 uses
  %prol.iter1581.cmp.not = icmp eq i64 %prol.iter1581.next, %xtraiter1579
  br i1 %prol.iter1581.cmp.not, label %scalar.ph1068.prol.loopexit, label %scalar.ph1068.prol, !llvm.loop !79

scalar.ph1068.prol.loopexit:                      ; preds = %scalar.ph1068.prol, %scalar.ph1068.preheader
  %indvars.iv.i.i245.unr = phi i64 [ %indvars.iv.i.i245.ph, %scalar.ph1068.preheader ], [ %indvars.iv.next.i.i246.prol, %scalar.ph1068.prol ]
  %i.lg = sub nsw i64 %indvars.iv.i.i245.ph, %wide.trip.count.i.i244
  %i.lh = icmp ugt i64 %i.lg, -4
  br i1 %i.lh, label %._crit_edge.thread.i.i241, label %scalar.ph1068

._crit_edge.i.i240:                               ; preds = %.preheader.i.i238
  %i.li = icmp eq ptr %.pre.i.i239, null
  br i1 %i.li, label %bb.bo, label %._crit_edge.thread.i.i241

scalar.ph1068:                                    ; preds = %scalar.ph1068.prol.loopexit, %scalar.ph1068
  %indvars.iv.i.i245 = phi i64 [ %indvars.iv.next.i.i246.3, %scalar.ph1068 ], [ %indvars.iv.i.i245.unr, %scalar.ph1068.prol.loopexit ] ; 6 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %indvars.iv.i.i245
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !48
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i245
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !48
  %indvars.iv.next.i.i246 = add nuw nsw i64 %indvars.iv.i.i245, 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %indvars.iv.next.i.i246
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !48
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i246
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !48
  %indvars.iv.next.i.i246.1 = add nuw nsw i64 %indvars.iv.i.i245, 2 ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %indvars.iv.next.i.i246.1
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !48
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i246.1
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !48
  %indvars.iv.next.i.i246.2 = add nuw nsw i64 %indvars.iv.i.i245, 3 ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i239, i64 %indvars.iv.next.i.i246.2
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !48
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i246.2
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !48
  %indvars.iv.next.i.i246.3 = add nuw nsw i64 %indvars.iv.i.i245, 4 ; 2 uses
  %exitcond.not.i.i247.3 = icmp eq i64 %indvars.iv.next.i.i246.3, %wide.trip.count.i.i244
  br i1 %exitcond.not.i.i247.3, label %._crit_edge.thread.i.i241, label %scalar.ph1068, !llvm.loop !80

._crit_edge.thread.i.i241:                        ; preds = %scalar.ph1068.prol.loopexit, %scalar.ph1068, %middle.block1077, %._crit_edge.i.i240
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i239) #21
  %.pre.i242 = load i32, ptr %i.kg, align 8, !tbaa !46
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread.i.i241, %._crit_edge.i.i240, %bb.bn
  %i.lv = phi i32 [ %.pre.i242, %._crit_edge.thread.i.i241 ], [ %.pre7.i232, %._crit_edge.i.i240 ], [ %.pre7.i232, %bb.bn ]
  store ptr %i.ks, ptr %i.ke, align 8, !tbaa !11
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.lw
  store i32 0, ptr %i.lx, align 4, !tbaa !48
  store i32 %i.kk, ptr %i.kl, align 4, !tbaa !50
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i233

_ZN11CStringBaseIwE11SetCapacityEi.exit.i233:     ; preds = %bb.bo, %bb.bm
  %i.ly = phi ptr [ %i.kh, %bb.bm ], [ %i.ks, %bb.bo ]
  %i.lz = load ptr, ptr %i.kd, align 8, !tbaa !11
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i233
  %.04.i.i234 = phi ptr [ %i.ly, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i233 ], [ %i.mc, %bb.bp ] ; 2 uses
  %.0.i.i235 = phi ptr [ %i.lz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i233 ], [ %i.ma, %bb.bp ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.i.i235, i64 4
  %i.mb = load i32, ptr %.0.i.i235, align 4, !tbaa !48 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.04.i.i234, i64 4
  store i32 %i.mb, ptr %.04.i.i234, align 4, !tbaa !48
  %.not.i.i236 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i236, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i237, label %bb.bp, !llvm.loop !51

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i237:         ; preds = %bb.bp
  %i.md = load i32, ptr %i.ki, align 8, !tbaa !46
  store i32 %i.md, ptr %i.kg, align 8, !tbaa !46
  br label %_ZN11CStringBaseIwEaSERKS0_.exit248

_ZN11CStringBaseIwEaSERKS0_.exit248:              ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i237, %bb.bl, %_ZN11CStringBaseIwEaSERKS0_.exit231
  br i1 %i.et, label %bb.bq, label %bb.fd

bb.bq:                                            ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit248
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !47
  %i.mg = icmp eq i32 %i.mf, 1
  br i1 %i.mg, label %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit, label %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit.thread

_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit:    ; preds = %bb.bq
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !45
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !46
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.bt, label %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit.thread

_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit.thread: ; preds = %bb.bq, %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit
  %i.mn = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN28CArchiveCommandLineExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.mn, ptr noundef nonnull @.str.4)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit.thread
  call void @__cxa_throw(ptr nonnull %i.mn, ptr nonnull @_ZTI28CArchiveCommandLineException, ptr nonnull @_ZN11CStringBaseIcED2Ev) #24
  unreachable

bb.bs:                                            ; preds = %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit.thread
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.mn) #22
  br label %common.resume

bb.bt:                                            ; preds = %_ZNK9NWildcard7CCensor14AllAreRelativeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.mp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.mq, align 8, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN9NWildcard5CPairEE, i64 16), ptr %9, align 8, !tbaa !82
  %i.mr = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 13)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !35, !range !37, !noundef !38
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.mu = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 13)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  invoke fastcc void @_ZL26AddSwitchWildCardsToCensorRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEbN13NRecursedType5EEnumEj(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.mv, i1 noundef zeroext true, i32 noundef 2)
          to label %bb.by unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.cb, %bb.ca, %bb.by, %bb.bv, %bb.bt
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit304

bb.by:                                            ; preds = %bb.bw, %bb.bu
  %i.mx = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 14)
          to label %bb.bz unwind label %bb.bx

bb.bz:                                            ; preds = %bb.by
  %i.my = load i8, ptr %i.mx, align 8, !tbaa !35, !range !37, !noundef !38
  %i.mz = trunc nuw i8 %i.my to i1
  br i1 %i.mz, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.na = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 14)
          to label %bb.cb unwind label %bb.bx

bb.cb:                                            ; preds = %bb.ca
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  invoke fastcc void @_ZL26AddSwitchWildCardsToCensorRN9NWildcard7CCensorERK13CObjectVectorI11CStringBaseIwEEbN13NRecursedType5EEnumEj(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.nb, i1 noundef zeroext false, i32 noundef 2)
          to label %bb.cc unwind label %bb.bx

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  br i1 %.0166627, label %.noexc, label %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit

.noexc:                                           ; preds = %bb.cc
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !46 ; 2 uses
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.preheader.us.i.i.a, label %.noexc285

.preheader.us.i.i.a:                              ; preds = %.noexc
  %19 = zext nneg i32 %i.ne to i64
  %.pre816 = load ptr, ptr %i.nc, align 8, !tbaa !11
  br label %bb.cd

bb.cd:                                            ; preds = %.critedge.us.i.i, %.preheader.us.i.i.a
  %indvars.iv35.i.i = phi i64 [ 0, %.preheader.us.i.i.a ], [ %indvars.iv.next36.i.i, %.critedge.us.i.i ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %.pre816, i64 %indvars.iv35.i.i
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !48
  %.not.us.i.i = icmp eq i32 %i.nh, 42
  br i1 %.not.us.i.i, label %_ZN11CStringBaseIwED2Ev.exit302, label %.critedge.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.cd
  %indvars.iv.next36.i.i = add nuw nsw i64 %indvars.iv35.i.i, 1 ; 2 uses
  %i.ni = icmp eq i64 %indvars.iv.next36.i.i, %19
  br i1 %i.ni, label %.noexc285, label %bb.cd, !llvm.loop !84

.noexc285:                                        ; preds = %.critedge.us.i.i, %.noexc
  %i.nj = load i32, ptr %i.nd, align 8, !tbaa !46 ; 2 uses
  %i.nk = icmp sgt i32 %i.nj, 0
  br i1 %i.nk, label %.preheader.us.i.i292.a, label %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit

.preheader.us.i.i292.a:                           ; preds = %.noexc285
  %20 = zext nneg i32 %i.nj to i64
  %.pre817 = load ptr, ptr %i.nc, align 8, !tbaa !11
  br label %bb.ce

bb.ce:                                            ; preds = %.critedge.us.i.i295, %.preheader.us.i.i292.a
  %indvars.iv35.i.i293 = phi i64 [ 0, %.preheader.us.i.i292.a ], [ %indvars.iv.next36.i.i296, %.critedge.us.i.i295 ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.pre817, i64 %indvars.iv35.i.i293
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !48
  %.not.us.i.i297 = icmp eq i32 %i.nm, 63
  br i1 %.not.us.i.i297, label %_ZN11CStringBaseIwED2Ev.exit302, label %.critedge.us.i.i295

.critedge.us.i.i295:                              ; preds = %bb.ce
  %indvars.iv.next36.i.i296 = add nuw nsw i64 %indvars.iv35.i.i293, 1 ; 2 uses
  %i.nn = icmp eq i64 %indvars.iv.next36.i.i296, %20
  br i1 %i.nn, label %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit, label %bb.ce, !llvm.loop !84

_ZN11CStringBaseIwED2Ev.exit302:                  ; preds = %bb.cd, %bb.ce
  invoke void @_ZN9NWildcard7CCensor7AddItemEbRK11CStringBaseIwEb(ptr noundef nonnull align 8 dereferenceable(32) %9, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %i.nc, i1 noundef zeroext false)
          to label %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit unwind label %bb.cf

bb.cf:                                            ; preds = %bb.et, %_ZN11CStringBaseIwED2Ev.exit302, %bb.ey, %bb.ew, %_ZN11CStringBaseIwEaSERKS0_.exit360, %bb.eq, %bb.eo, %bb.en, %bb.ej, %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit304

_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit: ; preds = %.critedge.us.i.i295, %.noexc285, %_ZN11CStringBaseIwED2Ev.exit302, %bb.cc
  %.0145 = phi i1 [ false, %bb.cc ], [ false, %_ZN11CStringBaseIwED2Ev.exit302 ], [ true, %.noexc285 ], [ true, %.critedge.us.i.i295 ]
  invoke void @_ZN9NWildcard7CCensor13ExtendExcludeEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.cg unwind label %bb.cf

bb.cg:                                            ; preds = %_ZL15AddNameToCensorRN9NWildcard7CCensorERK11CStringBaseIwEbN13NRecursedType5EEnumE.exit
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !39, !range !37, !noundef !38
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.ch, label %bb.ct

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ns = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZNK18NCommandLineParser7CParserixEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 20)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !44
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !45 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !46 ; 2 uses
  %i.oa = add nsw i32 %i.nz, 1                    ; 3 uses
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i307, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oc = zext nneg i32 %i.oa to i64
  %i.od = icmp slt i32 %i.nz, -1
  %i.oe = shl nuw nsw i64 %i.oc, 2
  %i.of = select i1 %i.od, i64 -1, i64 %i.oe
  %i.og = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.of) #25
          to label %.noexc322 unwind label %bb.cq ; 10 uses

.noexc322:                                        ; preds = %bb.cj
  %i.oh = ptrtoaddr ptr %i.og to i64
  %i.oi = load i32, ptr %i.nx, align 4, !tbaa !50
  %i.oj = icmp sgt i32 %i.oi, 0
  %.pre4.i306 = load i32, ptr %i.nw, align 8, !tbaa !46 ; 5 uses
  br i1 %i.oj, label %.preheader.i.i312, label %bb.ck

.preheader.i.i312:                                ; preds = %.noexc322
  %i.ok = icmp sgt i32 %.pre4.i306, 0
  %.pre.i.i313 = load ptr, ptr %10, align 8, !tbaa !11 ; 9 uses
  br i1 %i.ok, label %.lr.ph.i.i317, label %._crit_edge.i.i314

.lr.ph.i.i317:                                    ; preds = %.preheader.i.i312
  %.pre.i.i3131462 = ptrtoaddr ptr %.pre.i.i313 to i64
  %wide.trip.count.i.i318 = zext nneg i32 %.pre4.i306 to i64 ; 5 uses
  %min.iters.check1465 = icmp ult i32 %.pre4.i306, 8
  %i.ol = sub i64 %.pre.i.i3131462, %i.oh
  %diff.check1463 = icmp ugt i64 %i.ol, -32
  %or.cond1493 = select i1 %min.iters.check1465, i1 true, i1 %diff.check1463
  br i1 %or.cond1493, label %scalar.ph1464.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %.lr.ph.i.i317
  %n.vec1467 = and i64 %wide.trip.count.i.i318, 2147483640 ; 3 uses
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1472, %vector.body1468 ] ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %index1469 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %wide.load1470 = load <4 x i32>, ptr %i.om, align 4, !tbaa !48
  %wide.load1471 = load <4 x i32>, ptr %i.on, align 4, !tbaa !48
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index1469 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store <4 x i32> %wide.load1470, ptr %i.oo, align 4, !tbaa !48
  store <4 x i32> %wide.load1471, ptr %i.op, align 4, !tbaa !48
  %index.next1472 = add nuw i64 %index1469, 8     ; 2 uses
  %i.oq = icmp eq i64 %index.next1472, %n.vec1467
  br i1 %i.oq, label %middle.block1473, label %vector.body1468, !llvm.loop !85

middle.block1473:                                 ; preds = %vector.body1468
  %cmp.n1474 = icmp eq i64 %n.vec1467, %wide.trip.count.i.i318
  br i1 %cmp.n1474, label %._crit_edge.thread.i.i315, label %scalar.ph1464.preheader

scalar.ph1464.preheader:                          ; preds = %.lr.ph.i.i317, %middle.block1473
  %indvars.iv.i.i319.ph = phi i64 [ 0, %.lr.ph.i.i317 ], [ %n.vec1467, %middle.block1473 ] ; 3 uses
  %xtraiter1633 = and i64 %wide.trip.count.i.i318, 3 ; 2 uses
  %lcmp.mod1634.not = icmp eq i64 %xtraiter1633, 0
  br i1 %lcmp.mod1634.not, label %scalar.ph1464.prol.loopexit, label %scalar.ph1464.prol

scalar.ph1464.prol:                               ; preds = %scalar.ph1464.preheader, %scalar.ph1464.prol
  %indvars.iv.i.i319.prol = phi i64 [ %indvars.iv.next.i.i320.prol, %scalar.ph1464.prol ], [ %indvars.iv.i.i319.ph, %scalar.ph1464.preheader ] ; 3 uses
  %prol.iter1635 = phi i64 [ %prol.iter1635.next, %scalar.ph1464.prol ], [ 0, %scalar.ph1464.preheader ]
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %indvars.iv.i.i319.prol
  %i.os = load i32, ptr %i.or, align 4, !tbaa !48
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.i.i319.prol
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !48
  %indvars.iv.next.i.i320.prol = add nuw nsw i64 %indvars.iv.i.i319.prol, 1 ; 2 uses
  %prol.iter1635.next = add i64 %prol.iter1635, 1 ; 2 uses
  %prol.iter1635.cmp.not = icmp eq i64 %prol.iter1635.next, %xtraiter1633
  br i1 %prol.iter1635.cmp.not, label %scalar.ph1464.prol.loopexit, label %scalar.ph1464.prol, !llvm.loop !86

scalar.ph1464.prol.loopexit:                      ; preds = %scalar.ph1464.prol, %scalar.ph1464.preheader
  %indvars.iv.i.i319.unr = phi i64 [ %indvars.iv.i.i319.ph, %scalar.ph1464.preheader ], [ %indvars.iv.next.i.i320.prol, %scalar.ph1464.prol ]
  %i.ou = sub nsw i64 %indvars.iv.i.i319.ph, %wide.trip.count.i.i318
  %i.ov = icmp ugt i64 %i.ou, -4
  br i1 %i.ov, label %._crit_edge.thread.i.i315, label %scalar.ph1464

._crit_edge.i.i314:                               ; preds = %.preheader.i.i312
  %i.ow = icmp eq ptr %.pre.i.i313, null
  br i1 %i.ow, label %bb.ck, label %._crit_edge.thread.i.i315

scalar.ph1464:                                    ; preds = %scalar.ph1464.prol.loopexit, %scalar.ph1464
  %indvars.iv.i.i319 = phi i64 [ %indvars.iv.next.i.i320.3, %scalar.ph1464 ], [ %indvars.iv.i.i319.unr, %scalar.ph1464.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %indvars.iv.i.i319
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !48
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.i.i319
  store i32 %i.oy, ptr %i.oz, align 4, !tbaa !48
  %indvars.iv.next.i.i320 = add nuw nsw i64 %indvars.iv.i.i319, 1 ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %indvars.iv.next.i.i320
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !48
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next.i.i320
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !48
  %indvars.iv.next.i.i320.1 = add nuw nsw i64 %indvars.iv.i.i319, 2 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %indvars.iv.next.i.i320.1
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !48
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next.i.i320.1
  store i32 %i.pe, ptr %i.pf, align 4, !tbaa !48
  %indvars.iv.next.i.i320.2 = add nuw nsw i64 %indvars.iv.i.i319, 3 ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i313, i64 %indvars.iv.next.i.i320.2
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !48
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv.next.i.i320.2
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !48
  %indvars.iv.next.i.i320.3 = add nuw nsw i64 %indvars.iv.i.i319, 4 ; 2 uses
  %exitcond.not.i.i321.3 = icmp eq i64 %indvars.iv.next.i.i320.3, %wide.trip.count.i.i318
  br i1 %exitcond.not.i.i321.3, label %._crit_edge.thread.i.i315, label %scalar.ph1464, !llvm.loop !87

._crit_edge.thread.i.i315:                        ; preds = %scalar.ph1464.prol.loopexit, %scalar.ph1464, %middle.block1473, %._crit_edge.i.i314
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i313) #21
  %.pre.i316 = load i32, ptr %i.nw, align 8, !tbaa !46
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.thread.i.i315, %._crit_edge.i.i314, %.noexc322
  %i.pj = phi i32 [ %.pre.i316, %._crit_edge.thread.i.i315 ], [ %.pre4.i306, %._crit_edge.i.i314 ], [ %.pre4.i306, %.noexc322 ]
  store ptr %i.og, ptr %10, align 8, !tbaa !11
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.pk
  store i32 0, ptr %i.pl, align 4, !tbaa !48
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !50
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i307

_ZN11CStringBaseIwE11SetCapacityEi.exit.i307:     ; preds = %bb.ck, %bb.ci
  %i.pm = phi ptr [ null, %bb.ci ], [ %i.og, %bb.ck ]
  %i.pn = load ptr, ptr %i.nv, align 8, !tbaa !11
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i307
  %.04.i.i308 = phi ptr [ %i.pm, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i307 ], [ %i.pq, %bb.cl ] ; 2 uses
  %.0.i.i309 = phi ptr [ %i.pn, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i307 ], [ %i.po, %bb.cl ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i309, i64 4
  %i.pp = load i32, ptr %.0.i.i309, align 4, !tbaa !48 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.04.i.i308, i64 4
  store i32 %i.pp, ptr %.04.i.i308, align 4, !tbaa !48
  %.not.i.i310 = icmp eq i32 %i.pp, 0
  br i1 %.not.i.i310, label %bb.cm, label %bb.cl, !llvm.loop !51

bb.cm:                                            ; preds = %bb.cl
  %i.pr = load i32, ptr %i.ny, align 8, !tbaa !46
  store i32 %i.pr, ptr %i.nw, align 8, !tbaa !46
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.pt = invoke noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ps, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.cn unwind label %bb.cr     ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.pv = invoke noundef i32 @_ZN13CObjectVectorI11CStringBaseIwEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.co unwind label %bb.cr     ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.pw = load ptr, ptr %10, align 8, !tbaa !11   ; 2 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %_ZN11CStringBaseIwED2Ev.exit323, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdaPv(ptr noundef nonnull %i.pw) #21
  br label %_ZN11CStringBaseIwED2Ev.exit323

_ZN11CStringBaseIwED2Ev.exit323:                  ; preds = %bb.co, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ei

bb.cq:                                            ; preds = %bb.cj, %bb.ch
  %i.py = landingpad { ptr, i32 }
          cleanup
end_hunk_0
