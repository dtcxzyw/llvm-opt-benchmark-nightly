Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_bar?download=true
inline.NumInlined: 497
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z7gmx_bariPPc:bb.a
vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.i.i.i.prol
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !56
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i.i.i.prol
  store double %i.mp, ptr %i.mq, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !106

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.mr = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ms = icmp ugt i64 %i.mr, -8
  br i1 %i.ms, label %_ZL15lambda_vec_copyP12lambda_vec_tPKS_.exit.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.i.i.i
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !56
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i.i.i
  store double %i.mu, ptr %i.mv, align 8, !tbaa !56
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !56
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i
  store double %i.mx, ptr %i.my, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.1
  %i.na = load double, ptr %i.mz, align 8, !tbaa !56
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.1
  store double %i.na, ptr %i.nb, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.2
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !56
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.2
  store double %i.nd, ptr %i.ne, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.3
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !56
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.3
  store double %i.ng, ptr %i.nh, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.4
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !56
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.4
  store double %i.nj, ptr %i.nk, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.5
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !56
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.5
  store double %i.nm, ptr %i.nn, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %indvars.iv.next.i.i.i.6
  %i.np = load double, ptr %i.no, align 8, !tbaa !56
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i.6
  store double %i.np, ptr %i.nq, align 8, !tbaa !56
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.7, label %_ZL15lambda_vec_copyP12lambda_vec_tPKS_.exit.i.i, label %vec.epilog.scalar.ph, !llvm.loop !107

_ZL15lambda_vec_copyP12lambda_vec_tPKS_.exit.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc215
  %i.nr = load ptr, ptr %i.z, align 8, !tbaa !43  ; 10 uses
  %i.ns = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ns, i64 %i.la
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !43 ; 16 uses
  %i.nv = load ptr, ptr %i.kj, align 8, !tbaa !256 ; 2 uses
  %i.nw = getelementptr inbounds [32 x i8], ptr %i.nv, i64 %i.la ; 5 uses
  %i.nx = icmp eq ptr %i.nu, null
  br i1 %i.nx, label %bb.cd, label %.preheader114.i.i.i

.preheader114.i.i.i:                              ; preds = %_ZL15lambda_vec_copyP12lambda_vec_tPKS_.exit.i.i
  %i.ny = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.nu, ptr noundef nonnull dereferenceable(1) @.str.202) #26 ; 2 uses
  %.not120.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not120.i.i.i, label %.critedge.i105.i.i, label %.lr.ph.i90.i.i

bb.cd:                                            ; preds = %_ZL15lambda_vec_copyP12lambda_vec_tPKS_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc216 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc216:                                        ; preds = %bb.cd
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 2399, ptr noundef nonnull @.str.203, ptr noundef %i.nr) #24
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc216
  unreachable

bb.cf:                                            ; preds = %.noexc216
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %.body411

bb.cg:                                            ; preds = %.lr.ph.i90.i.i
  %i.oa = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.oc, ptr noundef nonnull dereferenceable(1) @.str.202) #26 ; 2 uses
  %.not.i91.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i91.i.i, label %.loopexit.i92.i.i, label %.lr.ph.i90.i.i, !llvm.loop !108

.lr.ph.i90.i.i:                                   ; preds = %.preheader114.i.i.i, %bb.cg
  %i.ob = phi ptr [ %i.oa, %bb.cg ], [ %i.ny, %.preheader114.i.i.i ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 1 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !20
  %.not92.i.i.i = icmp eq i8 %i.od, 0
  br i1 %.not92.i.i.i, label %..critedge_crit_edge125.i.i.i, label %bb.cg, !llvm.loop !108

..critedge_crit_edge125.i.i.i:                    ; preds = %.lr.ph.i90.i.i
  br label %.loopexit.i92.i.i, !llvm.loop !108

.loopexit.i92.i.i:                                ; preds = %bb.cg, %..critedge_crit_edge125.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 3
  br label %bb.ci

.critedge.i105.i.i:                               ; preds = %.preheader114.i.i.i
  %i.of = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.nu, i32 noundef 61) #26 ; 2 uses
  %.not94.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not94.i.i.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.critedge.i105.i.i
  %i.og = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.nu, i32 noundef 32) #26
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.critedge.i105.i.i, %.loopexit.i92.i.i
  %.2.i.i.i = phi ptr [ %i.oe, %.loopexit.i92.i.i ], [ %i.of, %.critedge.i105.i.i ], [ %i.og, %bb.ch ] ; 4 uses
  %i.oh = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.nu, ptr noundef nonnull dereferenceable(1) @.str.204) #26
  %.not95.not.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not95.not.i.i.i, label %bb.cj, label %.thread.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.oi = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.nu, i32 noundef 68) #26
  %.not96.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not96.i.i.i, label %_ZL13legend2lambdaPKcS0_P12lambda_vec_t.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.nu, i32 noundef 72) #26
  %.not97.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not97.i.i.i, label %_ZL13legend2lambdaPKcS0_P12lambda_vec_t.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %.not98.not.i.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not98.not.i.i.i, label %bb.cm, label %.preheader.i.i93.i.i

.thread.i.i.i:                                    ; preds = %bb.ci
  %.not98.not108.i.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not98.not108.i.i.i, label %bb.cm, label %.thread109.i.i.i

bb.cm:                                            ; preds = %.thread.i.i.i, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc217 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc217:                                        ; preds = %bb.cm
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 2450, ptr noundef nonnull @.str.205, ptr noundef %i.nr) #24
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %.noexc217
  unreachable

bb.co:                                            ; preds = %.noexc217
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  br label %.body411

.preheader.i.i93.i.i:                             ; preds = %bb.cl
  %i.ol = load i8, ptr %.2.i.i.i, align 1, !tbaa !20 ; 2 uses
  %.not16.i.i94.i.i = icmp eq i8 %i.ol, 0
  br i1 %.not16.i.i94.i.i, label %_ZL10find_valuePKc.exit.thread.i.i.i, label %.lr.ph.i.i95.i.i

.lr.ph.i.i95.i.i:                                 ; preds = %.preheader.i.i93.i.i, %bb.cp
  %i.om = phi i8 [ %i.or, %bb.cp ], [ %i.ol, %.preheader.i.i93.i.i ] ; 2 uses
  %.018.i.i96.i.i = phi i1 [ %or.cond15.mux.i.i103.i.i, %bb.cp ], [ false, %.preheader.i.i93.i.i ] ; 2 uses
  %.0917.i.i97.i.i = phi ptr [ %i.oq, %bb.cp ], [ %.2.i.i.i, %.preheader.i.i93.i.i ] ; 2 uses
  %i.on = sext i8 %i.om to i32
  %i.oo = call i32 @isspace(i32 noundef %i.on) #26
  %.not14.i.i98.i.i = icmp ne i32 %i.oo, 0
  %i.op = icmp eq i8 %i.om, 61
  %or.cond15.i.i99.i.i = or i1 %i.op, %.not14.i.i98.i.i ; 2 uses
  %.018.not.i.i100.i.i = xor i1 %.018.i.i96.i.i, true
  %brmerge.i.i101.i.i = select i1 %.018.not.i.i100.i.i, i1 true, i1 %or.cond15.i.i99.i.i
  br i1 %brmerge.i.i101.i.i, label %bb.cp, label %_ZL10find_valuePKc.exit.i102.i.i

bb.cp:                                            ; preds = %.lr.ph.i.i95.i.i
  %or.cond15.mux.i.i103.i.i = select i1 %.018.i.i96.i.i, i1 true, i1 %or.cond15.i.i99.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %.0917.i.i97.i.i, i64 1 ; 2 uses
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !20  ; 2 uses
  %.not.i.i104.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i.i104.i.i, label %_ZL10find_valuePKc.exit.thread.i.i.i, label %.lr.ph.i.i95.i.i, !llvm.loop !102

_ZL10find_valuePKc.exit.i102.i.i:                 ; preds = %.lr.ph.i.i95.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !54
  %i.ou = invoke fastcc noundef zeroext i1 @_ZL19read_lambda_compvecPKcP12lambda_vec_tPK19lambda_components_tPS3_PS0_S0_(ptr noundef nonnull %.0917.i.i97.i.i, ptr noundef nonnull readonly %i.nw, ptr noundef %i.ot, ptr noundef null, ptr noundef null, ptr noundef %i.nr)
          to label %.noexc218 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc218:                                        ; preds = %_ZL10find_valuePKc.exit.i102.i.i
  br i1 %i.ou, label %_ZL10find_valuePKc.exit.i102._crit_edge.i.i, label %_ZL10find_valuePKc.exit.thread.i.i.i

_ZL10find_valuePKc.exit.i102._crit_edge.i.i:      ; preds = %.noexc218
  %.pre.i.i = load ptr, ptr %i.kj, align 8, !tbaa !256 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds [32 x i8], ptr %.pre.i.i, i64 %i.la
  %.phi.trans.insert113.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i.i, i64 8
  %.pre114.i.i = load i32, ptr %.phi.trans.insert113.i.i, align 8, !tbaa !53
  br label %bb.dp

_ZL10find_valuePKc.exit.thread.i.i.i:             ; preds = %.noexc218, %.preheader.i.i93.i.i, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc219 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219:                                        ; preds = %_ZL10find_valuePKc.exit.thread.i.i.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %35, i32 noundef 2457, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.nu, ptr noundef %i.nr) #24
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %.noexc219
  unreachable

bb.cr:                                            ; preds = %.noexc219
  %i.ov = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %35) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  br label %.body411

.thread109.i.i.i:                                 ; preds = %.thread.i.i.i
  %i.ow = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.nu, i32 noundef 61) #26 ; 3 uses
  %.not100.i.i.i = icmp eq ptr %i.ow, null
  br i1 %.not100.i.i.i, label %bb.dk, label %bb.cs

bb.cs:                                            ; preds = %.thread109.i.i.i
  %i.ox = getelementptr inbounds i8, ptr %i.ow, i64 -1 ; 4 uses
  %i.oy = icmp ult ptr %i.ox, %i.nu
  br i1 %i.oy, label %bb.ct, label %.preheader113.i.i.i

.preheader113.i.i.i:                              ; preds = %bb.cs
  %i.oz = load i8, ptr %i.ox, align 1, !tbaa !20
  %i.pa = sext i8 %i.oz to i32
  %i.pb = call i32 @isspace(i32 noundef %i.pa) #26
  %.not101129.i.i.i = icmp eq i32 %i.pb, 0
  br i1 %.not101129.i.i.i, label %.preheader.i.i.i, label %.lr.ph131.i.i.i

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %36, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc220 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc220:                                        ; preds = %bb.ct
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %36, i32 noundef 2473, ptr noundef nonnull @.str.207, ptr noundef nonnull %i.nu, ptr noundef %i.nr) #24
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %.noexc220
  unreachable

bb.cv:                                            ; preds = %.noexc220
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %.body411

bb.cw:                                            ; preds = %.lr.ph131.i.i.i
  %i.pd = load i8, ptr %i.pg, align 1, !tbaa !20
  %i.pe = sext i8 %i.pd to i32
  %i.pf = call i32 @isspace(i32 noundef %i.pe) #26
  %.not101.i.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not101.i.i.i, label %.preheader.i.i.i, label %.lr.ph131.i.i.i, !llvm.loop !109

.preheader.i.i.i:                                 ; preds = %bb.cw, %.preheader113.i.i.i
  %.3.lcssa.i.i.i = phi ptr [ %i.ox, %.preheader113.i.i.i ], [ %i.pg, %bb.cw ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ow, %.preheader113.i.i.i ], [ %.3130.i.i.i, %bb.cw ]
  br label %bb.da

.lr.ph131.i.i.i:                                  ; preds = %.preheader113.i.i.i, %bb.cw
  %.3130.i.i.i = phi ptr [ %i.pg, %bb.cw ], [ %i.ox, %.preheader113.i.i.i ] ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %.3130.i.i.i, i64 -1 ; 4 uses
  %i.ph = icmp ult ptr %i.pg, %i.nu
  br i1 %i.ph, label %bb.cx, label %bb.cw, !llvm.loop !109

bb.cx:                                            ; preds = %.lr.ph131.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc221 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc221:                                        ; preds = %bb.cx
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %37, i32 noundef 2482, ptr noundef nonnull @.str.207, ptr noundef nonnull %i.nu, ptr noundef %i.nr) #24
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %.noexc221
  unreachable

bb.cz:                                            ; preds = %.noexc221
  %i.pi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %37) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %.body411

bb.da:                                            ; preds = %bb.db, %.preheader.i.i.i
  %.4.i.i.i = phi ptr [ %i.pm, %bb.db ], [ %.3.lcssa.i.i.i, %.preheader.i.i.i ] ; 3 uses
  %i.pj = load i8, ptr %.4.i.i.i, align 1, !tbaa !20
  %i.pk = sext i8 %i.pj to i32
  %i.pl = call i32 @isspace(i32 noundef %i.pk) #26
  %.not102.i.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not102.i.i.i, label %bb.db, label %bb.df

bb.db:                                            ; preds = %bb.da
  %i.pm = getelementptr inbounds i8, ptr %.4.i.i.i, i64 -1 ; 2 uses
  %i.pn = icmp ult ptr %i.pm, %i.nu
  br i1 %i.pn, label %bb.dc, label %bb.da, !llvm.loop !110

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc222 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc222:                                        ; preds = %bb.dc
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %38, i32 noundef 2490, ptr noundef nonnull @.str.207, ptr noundef nonnull %i.nu, ptr noundef %i.nr) #24
          to label %bb.dd unwind label %bb.de

bb.dd:                                            ; preds = %.noexc222
  unreachable

bb.de:                                            ; preds = %.noexc222
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  br label %.body411

bb.df:                                            ; preds = %bb.da
  %i.pp = getelementptr inbounds nuw i8, ptr %.4.i.i.i, i64 1 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !54 ; 2 uses
  %i.ps = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.pt = ptrtoint ptr %i.pp to i64
  %i.pu = sub i64 %i.ps, %i.pt                    ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !37 ; 2 uses
  %i.px = icmp sgt i32 %i.pw, 0
  br i1 %i.px, label %.lr.ph.i107.i.i.i, label %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.thread.i.i.i

.lr.ph.i107.i.i.i:                                ; preds = %bb.df
  %i.py = load ptr, ptr %i.pr, align 8, !tbaa !55
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.pw to i64
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dh, %.lr.ph.i107.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i107.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.dh ] ; 3 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.py, i64 %indvars.iv.i.i.i.i
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !43
  %i.qb = call i32 @strncmp(ptr noundef %i.qa, ptr noundef nonnull readonly %i.pp, i64 noundef %i.pu) #26
  %i.qc = icmp eq i32 %i.qb, 0
  br i1 %i.qc, label %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.thread.i.i.i, label %bb.dg, !llvm.loop !111

_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.i.i.i: ; preds = %bb.dg
  %i.qd = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %bb.do

_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.thread.i.i.i: ; preds = %bb.df, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #23
  %i.qe = call ptr @strncpy(ptr noundef nonnull %i.v, ptr noundef nonnull %i.pp, i64 noundef %i.pu) #23 ; 0 uses
  %i.qf = getelementptr inbounds i8, ptr %i.v, i64 %i.pu
  store i8 0, ptr %i.qf, align 1, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc223 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc223:                                        ; preds = %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.thread.i.i.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 2500, ptr noundef nonnull @.str.208, ptr noundef nonnull %i.v, ptr noundef %i.nr) #24
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %.noexc223
  unreachable

bb.dj:                                            ; preds = %.noexc223
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #23
  br label %.body411

bb.dk:                                            ; preds = %.thread109.i.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !54
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !37
  %i.ql = icmp sgt i32 %i.qk, 1
  br i1 %i.ql, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc224 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc224:                                        ; preds = %bb.dl
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef 2507, ptr noundef nonnull @.str.209, ptr noundef %i.nr) #24
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.noexc224
  unreachable

bb.dn:                                            ; preds = %.noexc224
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %.body411

bb.do:                                            ; preds = %bb.dk, %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.i.i.i
  %.069.i.i.i = phi i32 [ %i.qd, %_ZL22lambda_components_findPK19lambda_components_tPKcm.exit.i.i.i ], [ 0, %bb.dk ] ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i32 %.069.i.i.i, ptr %i.qn, align 8, !tbaa !53
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %_ZL10find_valuePKc.exit.i102._crit_edge.i.i
  %67 = phi i32 [ %.pre114.i.i, %_ZL10find_valuePKc.exit.i102._crit_edge.i.i ], [ %.069.i.i.i, %bb.do ] ; 2 uses
  %68 = phi ptr [ %.pre.i.i, %_ZL10find_valuePKc.exit.i102._crit_edge.i.i ], [ %i.nv, %bb.do ]
  %69 = getelementptr inbounds [32 x i8], ptr %68, i64 %i.la ; 3 uses
  %i.qo = icmp slt i32 %67, 0
  br i1 %i.qo, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.qp = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 3 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !54
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !37 ; 2 uses
  %i.qt = icmp sgt i32 %i.qs, 1
  br i1 %i.qt, label %.thread160.i.i, label %bb.dr

.thread160.i.i:                                   ; preds = %bb.dq
  store i16 40, ptr %i.ac, align 16
  br label %.lr.ph.i108.i.i.preheader

bb.dr:                                            ; preds = %bb.dq
  %i.qu = icmp eq i32 %i.qs, 1
  br i1 %i.qu, label %.lr.ph.i108.i.i.preheader, label %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i

.lr.ph.i108.i.i.preheader:                        ; preds = %bb.dr, %.thread160.i.i
  %.229.i.i.i.ph = phi ptr [ %i.ez, %.thread160.i.i ], [ %i.ac, %bb.dr ]
  br label %.lr.ph.i108.i.i

.lr.ph.i108.i.i:                                  ; preds = %.lr.ph.i108.i.i.preheader, %bb.dt
  %indvars.iv.i109.i.i = phi i64 [ %indvars.iv.next.i110.i.i, %bb.dt ], [ 0, %.lr.ph.i108.i.i.preheader ] ; 3 uses
  %.229.i.i.i = phi ptr [ %.3.i.i.i, %bb.dt ], [ %.229.i.i.i.ph, %.lr.ph.i108.i.i.preheader ] ; 2 uses
  %i.qv = load ptr, ptr %69, align 8, !tbaa !58
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv.i109.i.i
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !56
  %i.qy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.229.i.i.i, ptr noundef nonnull dereferenceable(1) @.str.222, double noundef %i.qx) #23
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds i8, ptr %.229.i.i.i, i64 %i.qz ; 3 uses
  %i.rb = load ptr, ptr %i.qp, align 8, !tbaa !54
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i32, ptr %i.rc, align 8, !tbaa !37 ; 2 uses
  %i.re = add nsw i32 %i.rd, -1
  %i.rf = sext i32 %i.re to i64
  %i.rg = icmp slt i64 %indvars.iv.i109.i.i, %i.rf
  br i1 %i.rg, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph.i108.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ra, ptr noundef nonnull align 1 dereferenceable(3) @.str.223, i64 3, i1 false)
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ra, i64 2
  %.pre35.i.i.i = load ptr, ptr %i.qp, align 8, !tbaa !54
  %.phi.trans.insert36.i.i.i = getelementptr inbounds nuw i8, ptr %.pre35.i.i.i, i64 8
  %.pre37.i.i.i = load i32, ptr %.phi.trans.insert36.i.i.i, align 8, !tbaa !37
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.lr.ph.i108.i.i
  %i.ri = phi i32 [ %.pre37.i.i.i, %bb.ds ], [ %i.rd, %.lr.ph.i108.i.i ] ; 2 uses
  %.3.i.i.i = phi ptr [ %i.rh, %bb.ds ], [ %i.ra, %.lr.ph.i108.i.i ] ; 2 uses
  %indvars.iv.next.i110.i.i = add nuw nsw i64 %indvars.iv.i109.i.i, 1 ; 2 uses
  %i.rj = sext i32 %i.ri to i64
  %i.rk = icmp slt i64 %indvars.iv.next.i110.i.i, %i.rj
  br i1 %i.rk, label %.lr.ph.i108.i.i, label %._crit_edge.i.i.i, !llvm.loop !112

._crit_edge.i.i.i:                                ; preds = %bb.dt
  %i.rl = icmp sgt i32 %i.ri, 1
  br i1 %i.rl, label %bb.du, label %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i

bb.du:                                            ; preds = %._crit_edge.i.i.i
  store i16 41, ptr %.3.i.i.i, align 1
  br label %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i

bb.dv:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.ac, ptr noundef nonnull align 1 dereferenceable(6) @.str.224, i64 6, i1 false)
  %i.rm = getelementptr inbounds nuw i8, ptr %69, i64 16
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !54
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !55
  %i.rp = zext nneg i32 %67 to i64
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %i.rp
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !43 ; 2 uses
  %char0.i106.i.i = load i8, ptr %i.rr, align 1
  %.not.i107.i.i = icmp eq i8 %char0.i106.i.i, 0
  br i1 %.not.i107.i.i, label %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rs = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ey, ptr noundef nonnull dereferenceable(1) @.str.225, ptr noundef nonnull %i.rr) #23 ; 0 uses
  br label %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i

_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i: ; preds = %bb.dw, %bb.dv, %bb.du, %._crit_edge.i.i.i, %bb.dr
  %i.rt = add nsw i32 %.258.i.i, 1
  %.pre115.i.i = load i32, ptr %i.fm, align 8, !tbaa !244
  br label %bb.dx

_ZL13legend2lambdaPKcS0_P12lambda_vec_t.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.ru = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.180, ptr noundef %i.nr, ptr noundef nonnull %i.nu) ; 0 uses
  %i.rv = load i32, ptr %i.fm, align 8, !tbaa !244 ; 5 uses
  %.052.i.i = add nsw i32 %.258.i.i, 1            ; 2 uses
  %i.rw = icmp slt i32 %.052.i.i, %i.rv
  br i1 %i.rw, label %.lr.ph55.i.i, label %._crit_edge56.i.i

.lr.ph55.i.i:                                     ; preds = %_ZL13legend2lambdaPKcS0_P12lambda_vec_t.exit.i.i
  %i.rx = load ptr, ptr %i.fo, align 8, !tbaa !246 ; 10 uses
  %i.ry = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 10 uses
  %i.rz = sext i32 %.052.i.i to i64               ; 2 uses
  %i.sa = xor i32 %.258.i.i, -1
  %i.sb = add i32 %i.rv, %i.sa
  %i.sc = add i32 %i.rv, -2
  %i.sd = sub i32 %i.sc, %.258.i.i
  %xtraiter3854 = and i32 %i.sb, 3                ; 2 uses
  %lcmp.mod3855.not = icmp eq i32 %xtraiter3854, 0
  br i1 %lcmp.mod3855.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph55.i.i, %.prol.preheader
  %indvars.iv106.i.i.prol = phi i64 [ %indvars.iv.next107.i.i.prol, %.prol.preheader ], [ %i.rz, %.lr.ph55.i.i ] ; 5 uses
  %.0.in53.i.i.prol = phi i64 [ %indvars.iv106.i.i.prol, %.prol.preheader ], [ %i.la, %.lr.ph55.i.i ] ; 2 uses
  %prol.iter3856 = phi i32 [ %prol.iter3856.next, %.prol.preheader ], [ 0, %.lr.ph55.i.i ]
  %i.se = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv106.i.i.prol
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !248
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %.0.in53.i.i.prol
  store ptr %i.sf, ptr %i.sg, align 8, !tbaa !248
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv106.i.i.prol
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !43
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %.0.in53.i.i.prol
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !43
  %indvars.iv.next107.i.i.prol = add nsw i64 %indvars.iv106.i.i.prol, 1 ; 2 uses
  %prol.iter3856.next = add i32 %prol.iter3856, 1 ; 2 uses
  %prol.iter3856.cmp.not = icmp eq i32 %prol.iter3856.next, %xtraiter3854
  br i1 %prol.iter3856.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !113

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph55.i.i
  %indvars.iv106.i.i.unr = phi i64 [ %i.rz, %.lr.ph55.i.i ], [ %indvars.iv.next107.i.i.prol, %.prol.preheader ]
  %.0.in53.i.i.unr = phi i64 [ %i.la, %.lr.ph55.i.i ], [ %indvars.iv106.i.i.prol, %.prol.preheader ]
  %i.sk = icmp ult i32 %i.sd, 3
  br i1 %i.sk, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new

.lr.ph55.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph55.i.i.new
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i.3, %.lr.ph55.i.i.new ], [ %indvars.iv106.i.i.unr, %.prol.loopexit ] ; 8 uses
  %.0.in53.i.i = phi i64 [ %indvars.iv.next107.i.i.2, %.lr.ph55.i.i.new ], [ %.0.in53.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.sl = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv106.i.i
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !248
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %.0.in53.i.i
  store ptr %i.sm, ptr %i.sn, align 8, !tbaa !248
  %i.so = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv106.i.i
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !43
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %.0.in53.i.i
  store ptr %i.sp, ptr %i.sq, align 8, !tbaa !43
  %indvars.iv.next107.i.i = add nsw i64 %indvars.iv106.i.i, 1 ; 4 uses
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv.next107.i.i
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !248
  %i.st = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv106.i.i
  store ptr %i.ss, ptr %i.st, align 8, !tbaa !248
  %i.su = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv.next107.i.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !43
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv106.i.i
  store ptr %i.sv, ptr %i.sw, align 8, !tbaa !43
  %indvars.iv.next107.i.i.1 = add nsw i64 %indvars.iv106.i.i, 2 ; 4 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv.next107.i.i.1
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !248
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv.next107.i.i
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !248
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv.next107.i.i.1
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !43
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv.next107.i.i
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !43
  %indvars.iv.next107.i.i.2 = add nsw i64 %indvars.iv106.i.i, 3 ; 3 uses
  %i.td = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv.next107.i.i.2
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !248
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %indvars.iv.next107.i.i.1
  store ptr %i.te, ptr %i.tf, align 8, !tbaa !248
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv.next107.i.i.2
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !43
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %indvars.iv.next107.i.i.1
  store ptr %i.th, ptr %i.ti, align 8, !tbaa !43
  %indvars.iv.next107.i.i.3 = add nsw i64 %indvars.iv106.i.i, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next107.i.i.3 to i32
  %exitcond.3 = icmp eq i32 %i.rv, %lftr.wideiv.3
  br i1 %exitcond.3, label %._crit_edge56.i.i, label %.lr.ph55.i.i.new, !llvm.loop !114

._crit_edge56.i.i:                                ; preds = %.prol.loopexit, %.lr.ph55.i.i.new, %_ZL13legend2lambdaPKcS0_P12lambda_vec_t.exit.i.i
  %i.tj = add nsw i32 %i.rv, -1                   ; 2 uses
  store i32 %i.tj, ptr %i.fm, align 8, !tbaa !244
  br label %bb.dx

bb.dx:                                            ; preds = %._crit_edge56.i.i, %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i
  %.pr.i.i = phi i32 [ %.pre115.i.i, %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i ], [ %i.tj, %._crit_edge56.i.i ] ; 2 uses
  %.3.i.i = phi i32 [ %i.rt, %_ZL16lambda_vec_printPK12lambda_vec_tPcb.exit.i.i ], [ %.258.i.i, %._crit_edge56.i.i ] ; 2 uses
  %i.tk = icmp slt i32 %.3.i.i, %.pr.i.i
  br i1 %i.tk, label %bb.cc, label %.loopexit.i.i, !llvm.loop !115

.loopexit.i.i:                                    ; preds = %bb.dx
  %.pre116.i.i = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %.not88.i.i = icmp eq ptr %.pre116.i.i, null
  br i1 %.not88.i.i, label %_ZL21read_bar_xvg_lowlevelPKcPKfP5xvg_tP19lambda_components_t.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i
  %i.tl = icmp sgt i32 %.pr.i.i, 1
  br i1 %i.tl, label %.lr.ph61.i.i, label %._crit_edge62.i.i

.lr.ph61.i.i:                                     ; preds = %.preheader.i.i, %.noexc225
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.noexc225 ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.tm = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %indvars.iv109.i.i
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !43
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.116, i32 noundef 2743, ptr noundef %i.to)
          to label %.noexc225 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit

.noexc225:                                        ; preds = %.lr.ph61.i.i
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 2 uses
  %i.tp = load i32, ptr %i.fm, align 8, !tbaa !244
  %i.tq = add nsw i32 %i.tp, -1
  %i.tr = sext i32 %i.tq to i64
  %i.ts = icmp slt i64 %indvars.iv.next110.i.i, %i.tr
  br i1 %i.ts, label %.lr.ph61.i.i, label %._crit_edge62.loopexit.i.i, !llvm.loop !116

._crit_edge62.loopexit.i.i:                       ; preds = %.noexc225
  %.pre117.i.i = load ptr, ptr %i.ab, align 8, !tbaa !39
  br label %._crit_edge62.i.i

._crit_edge62.i.i:                                ; preds = %._crit_edge62.loopexit.i.i, %.preheader.i.i, %.preheader5.i.i
  %i.tt = phi ptr [ %.pre117.i.i, %._crit_edge62.loopexit.i.i ], [ %.pre116.i.i, %.preheader.i.i ], [ %i.kn, %.preheader5.i.i ]
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.116, i32 noundef 2745, ptr noundef %i.tt)
          to label %_ZL21read_bar_xvg_lowlevelPKcPKfP5xvg_tP19lambda_components_t.exit.i unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.dy:                                            ; preds = %bb.cb, %bb.bw, %bb.al, %bb.ai, %bb.ac, %bb.ab
  %.pn.i.i = phi { ptr, i32 } [ %i.gx, %bb.ai ], [ %i.hc, %bb.al ], [ %i.ky, %bb.cb ], [ %i.ki, %bb.bw ], [ %i.fy, %bb.ac ], [ %i.fx, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  br label %.body411

_ZL21read_bar_xvg_lowlevelPKcPKfP5xvg_tP19lambda_components_t.exit.i: ; preds = %._crit_edge62.i.i, %.loopexit.i.i, %.loopexit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.tu = load i32, ptr %i.fm, align 8, !tbaa !244
  %i.tv = icmp slt i32 %i.tu, 1
  br i1 %i.tv, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %_ZL21read_bar_xvg_lowlevelPKcPKfP5xvg_tP19lambda_components_t.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %54, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc227 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc227:                                        ; preds = %bb.dz
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 2761, ptr noundef nonnull @.str.165, ptr noundef %i.fk) #24
          to label %bb.ea unwind label %bb.eb

bb.ea:                                            ; preds = %.noexc227
  unreachable

bb.eb:                                            ; preds = %.noexc227
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %54) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %.body411

bb.ec:                                            ; preds = %_ZL21read_bar_xvg_lowlevelPKcPKfP5xvg_tP19lambda_components_t.exit.i
  %i.tx = load float, ptr @_ZZ7gmx_bariPPcE4temp, align 4, !tbaa !252
  %i.ty = fpext float %i.tx to double
  %i.tz = load double, ptr %i.go, align 8, !tbaa !250
  %i.ua = invoke noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef %i.ty, double noundef %i.tz, double noundef f0x3E80000000000000)
          to label %.noexc228 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc228:                                        ; preds = %bb.ec
  %i.ub = load float, ptr @_ZZ7gmx_bariPPcE4temp, align 4
  %i.uc = fcmp ule float %i.ub, 0.000000e+00
  %or.cond.not.i = select i1 %i.ua, i1 true, i1 %i.uc
  br i1 %or.cond.not.i, label %bb.eg, label %bb.ed

bb.ed:                                            ; preds = %.noexc228
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %55, ptr noundef nonnull align 1 dereferenceable(63) @.str.116, i8 noundef zeroext 2)
          to label %.noexc229 unwind label %.loopexit.split-lp751.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc229:                                        ; preds = %bb.ed
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef 2766, ptr noundef nonnull @.str.166, ptr noundef %i.fk) #24
end_hunk_0
