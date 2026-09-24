Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_clustsize?download=true
inline.NumInlined: 320
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13gmx_clustsizeiPPc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !12
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #15
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn352.i = phi { ptr, i32 } [ %i.kg, %bb.cd ], [ %i.kf, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.body.i

bb.cf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i, %bb.bk
  %.0320.i = phi i32 [ %i.jx, %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i ], [ 4, %bb.bk ]
  %i.kh = icmp slt i32 %i.fa, 0
  br i1 %i.kh, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ki = uitofp nneg i32 %i.fa to double
  %i.kj = load i32, ptr %i.p, align 4, !tbaa !54
  %i.kk = sitofp i32 %i.kj to double
  %i.kl = fmul nnan double %i.kk, 3.000000e+00
  %i.km = fdiv double %i.ki, %i.kl
  %i.kn = fptrunc double %i.km to float
  %i.ko = fpext float %i.kn to double
  %i.kp = fmul double %i.ko, 3.000000e+00
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0317.i = phi double [ %i.kp, %bb.cg ], [ 3.000000e+00, %bb.cf ]
  %i.kq = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18
          to label %bb.ci unwind label %.body.i.i ; 7 uses

.body.i.i:                                        ; preds = %bb.ch
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ci:                                            ; preds = %bb.ch
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 5 uses
  store i32 0, ptr %i.kq, align 4, !tbaa !54
  br i1 %i.eu, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  %.not354.i = icmp eq ptr %i.dt, null
  br i1 %.not354.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull %i.dt) ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i, %.loopexit787.i, %_ZN3gmx17RangePartitioningD2Ev.exit.i
  %.sroa.23.0.i = phi ptr [ %.sroa.23.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.23.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.23.1.i, %.loopexit787.i ], [ %i.la, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %.sroa.0648.0.i = phi ptr [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.0648.1.i, %.loopexit787.i ], [ %i.kw, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.kv = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not355.i = icmp eq ptr %i.kv, null
  br i1 %.not355.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10clust_sizePKcS0_S0_S0_S0_S0_S0_S0_S0_S0_bbS0_fii5t_rgbS1_iPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.48, i32 noundef 162) #16
          to label %.noexc460.i unwind label %bb.cq

.noexc460.i:                                      ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%"class.gmx::RangePartitioning") align 8 %22, ptr noundef nonnull align 8 dereferenceable(768) %4)
          to label %_ZN3gmx17RangePartitioningaSEOS0_.exit.i unwind label %bb.cr

_ZN3gmx17RangePartitioningaSEOS0_.exit.i:         ; preds = %bb.co
  %i.kw = load ptr, ptr %22, align 8, !tbaa !85   ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !86 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !87 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 4) #17
  %i.lb = load ptr, ptr %22, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx17RangePartitioningD2Ev.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !87
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lf) #17
  br label %_ZN3gmx17RangePartitioningD2Ev.exit.i

_ZN3gmx17RangePartitioningD2Ev.exit.i:            ; preds = %bb.cp, %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.lg = ptrtoint ptr %i.ky to i64
  %i.lh = ptrtoint ptr %i.kw to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = lshr exact i64 %i.li, 2
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = add nsw i32 %i.lk, -1                   ; 2 uses
  store i32 %i.ll, ptr %i.o, align 4, !tbaa !54
  %i.lm = sext i32 %i.ll to i64
  %i.ln = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.48, i32 noundef 167, i64 noundef range(i64 -2147483648, 2147483648) %i.lm, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i unwind label %bb.cl ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit.i
  store ptr %i.ln, ptr %i.n, align 8, !tbaa !77
  %i.lo = load i32, ptr %i.o, align 4, !tbaa !54  ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.i, label %.loopexit787.i

.lr.ph.i:                                         ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i
  %i.lr = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ls = load i32, ptr %i.o, align 4, !tbaa !54  ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %i.lu = icmp slt i64 %indvars.iv.next.i, %i.lt
  br i1 %i.lu, label %.lr.ph.i, label %.loopexit787.i, !llvm.loop !29

bb.cq:                                            ; preds = %bb.cn
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.cr:                                            ; preds = %bb.co
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %.thread.i

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  invoke void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %i.dt, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lx = load ptr, ptr %i.s, align 8, !tbaa !16
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.48, i32 noundef 177, ptr noundef %i.lx)
          to label %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i unwind label %bb.cu

_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i:         ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !54
  br label %.loopexit787.i

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  br label %.thread.i

.loopexit787.i:                                   ; preds = %.lr.ph.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i
  %i.lz = phi i32 [ %.pre.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.lo, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.ls, %.lr.ph.i ]
  %.sroa.23.1.i = phi ptr [ %i.ks, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.la, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.la, %.lr.ph.i ] ; 23 uses
  %.sroa.18.0.i = phi ptr [ %i.ks, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.ky, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.ky, %.lr.ph.i ]
  %.sroa.0648.1.i = phi ptr [ %i.kq, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.kw, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.kw, %.lr.ph.i ] ; 28 uses
  %i.ma = sext i32 %i.lz to i64
  %i.mb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.48, i32 noundef 180, i64 noundef range(i64 -2147483648, 2147483648) %i.ma, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i unwind label %bb.cl ; 12 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i:     ; preds = %.loopexit787.i
  %i.mc = load i32, ptr %i.o, align 4, !tbaa !54
  %i.md = sext i32 %i.mc to i64
  %i.me = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.48, i32 noundef 181, i64 noundef range(i64 -2147483648, 2147483648) %i.md, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i unwind label %bb.cl ; 8 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i:     ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i
  %i.mf = fmul float %i.ex, %i.ex                 ; 3 uses
  %i.mg = load i32, ptr %i.o, align 4, !tbaa !54
  %i.mh = sext i32 %i.mg to i64
  %i.mi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.48, i32 noundef 185, i64 noundef range(i64 -2147483648, 2147483648) %i.mh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i unwind label %bb.cl ; 6 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i
  %i.mj = load i32, ptr %i.o, align 4, !tbaa !54  ; 4 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %iter.check, label %.preheader783.i

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.mj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.mj, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check360 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check360, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ml = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %43 = trunc <8 x i64> %vec.ind to <8 x i32>
  %44 = add <8 x i32> %43, splat (i32 1)
  %45 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mm = add <8 x i32> %45, splat (i32 9)
  %46 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mn = add <8 x i32> %46, splat (i32 17)
  %47 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mo = add <8 x i32> %47, splat (i32 25)
  %i.mp = uitofp nneg <8 x i32> %44 to <8 x float>
  %i.mq = uitofp nneg <8 x i32> %i.mm to <8 x float>
  %i.mr = uitofp nneg <8 x i32> %i.mn to <8 x float>
  %i.ms = uitofp nneg <8 x i32> %i.mo to <8 x float>
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index ; 4 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 96
  store <8 x float> %i.mp, ptr %i.mt, align 4, !tbaa !56
  store <8 x float> %i.mq, ptr %i.mu, align 4, !tbaa !56
  store <8 x float> %i.mr, ptr %i.mv, align 4, !tbaa !56
  store <8 x float> %i.ms, ptr %i.mw, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader783.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec361 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next364, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind363 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next365, %vec.epilog.vector.body ] ; 2 uses
  %48 = trunc <4 x i64> %vec.ind363 to <4 x i32>
  %49 = add <4 x i32> %48, splat (i32 1)
  %50 = uitofp nneg <4 x i32> %49 to <4 x float>
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index362
  store <4 x float> %50, ptr %i.my, align 4, !tbaa !56
  %index.next364 = add nuw i64 %index362, 4       ; 2 uses
  %vec.ind.next365 = add nuw nsw <4 x i64> %vec.ind363, splat (i64 4)
  %i.mz = icmp eq i64 %index.next364, %n.vec361
  br i1 %i.mz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n366 = icmp eq i64 %n.vec361, %wide.trip.count.i
  br i1 %cmp.n366, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv970.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec361, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i

.preheader783.i:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %i.na = icmp eq i32 %i.ey, 0
  %i.nb = icmp sgt i32 %i.ey, 0
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.nf = ptrtoint ptr %.sroa.18.0.i to i64
  %i.ng = ptrtoint ptr %.sroa.0648.1.i to i64     ; 2 uses
  %i.nh = sub i64 %i.nf, %i.ng
  %.fr934.i = freeze i64 %i.nh
  %i.ni = lshr i64 %.fr934.i, 2
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = icmp sgt i32 %i.nj, 1                   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.nu = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.cv

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i
  %indvars.iv970.i = phi i64 [ %indvars.iv.next971.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i ], [ %indvars.iv970.i.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader ] ; 2 uses
  %indvars.iv.next971.i = add nuw nsw i64 %indvars.iv970.i, 1 ; 3 uses
  %i.nv = trunc nuw nsw i64 %indvars.iv.next971.i to i32
  %i.nw = uitofp nneg i32 %i.nv to float
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv970.i
  store float %i.nw, ptr %i.nx, align 4, !tbaa !56
  %exitcond.not.i = icmp eq i64 %indvars.iv.next971.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, !llvm.loop !32

bb.cv:                                            ; preds = %bb.fc, %.preheader783.i
  %.0751.i = phi i32 [ %.3754.i, %bb.fc ], [ 0, %.preheader783.i ] ; 6 uses
  %.0747.i = phi i32 [ %.3750.i, %bb.fc ], [ 0, %.preheader783.i ] ; 5 uses
  %.0743.i = phi ptr [ %.1744.i, %bb.fc ], [ null, %.preheader783.i ] ; 3 uses
  %.0742.i = phi ptr [ %.1.i, %bb.fc ], [ null, %.preheader783.i ] ; 3 uses
  %.0321.i = phi i1 [ %.1322.i, %bb.fc ], [ true, %.preheader783.i ] ; 4 uses
  %.0290.i = phi i32 [ %i.aah, %bb.fc ], [ 0, %.preheader783.i ] ; 2 uses
  %.0286.i = phi i32 [ %.1287.i, %bb.fc ], [ 0, %.preheader783.i ] ; 4 uses
  %.0282.i = phi i32 [ %.3285.i, %bb.fc ], [ 1, %.preheader783.i ] ; 2 uses
  %.0278.i = phi i32 [ %.3281.i, %bb.fc ], [ -1, %.preheader783.i ] ; 2 uses
  %.0272.i = phi i32 [ %.2274.i, %bb.fc ], [ 0, %.preheader783.i ] ; 5 uses
  %.0269.i = phi float [ %.2271.i, %bb.fc ], [ undef, %.preheader783.i ] ; 2 uses
  br i1 %i.na, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.nb, label %bb.cx, label %bb.ep

bb.cx:                                            ; preds = %bb.cw
  %i.ny = urem i32 %.0290.i, %i.ey
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.cy, label %bb.ep

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  br i1 %i.ew, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %2, i32 noundef %.0320.i, ptr noundef nonnull %i.nc)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph931.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.dr
  %lpad.loopexit779.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fb, %_ZL15gmx_srenew_implIPfEvPKcS2_iRPT_m.exit.i, %bb.ef, %._crit_edge.i, %bb.cz
  %lpad.loopexit784.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit609.i, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i, %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %bb.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555.i, %._crit_edge898.i, %._crit_edge885.i, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %lpad.loopexit.split-lp785.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.oa = load i32, ptr %i.o, align 4, !tbaa !54
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph804.i, label %._crit_edge.i

.preheader782.i:                                  ; preds = %.lr.ph804.i
  %i.oc = icmp sgt i32 %i.og, 0
  br i1 %i.oc, label %.lr.ph857.i, label %._crit_edge.i

.lr.ph804.i:                                      ; preds = %bb.da, %.lr.ph804.i
  %indvars.iv973.i = phi i64 [ %indvars.iv.next974.i, %.lr.ph804.i ], [ 0, %bb.da ] ; 4 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv973.i
  %i.oe = trunc nuw nsw i64 %indvars.iv973.i to i32
  store i32 %i.oe, ptr %i.od, align 4, !tbaa !54
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv973.i
  store i32 1, ptr %i.of, align 4, !tbaa !54
  %indvars.iv.next974.i = add nuw nsw i64 %indvars.iv973.i, 1 ; 2 uses
  %i.og = load i32, ptr %i.o, align 4, !tbaa !54  ; 3 uses
  %i.oh = sext i32 %i.og to i64
  %i.oi = icmp slt i64 %indvars.iv.next974.i, %i.oh
  br i1 %i.oi, label %.lr.ph804.i, label %.preheader782.i, !llvm.loop !33

.loopexit778.i:                                   ; preds = %.critedge.thread.i, %.critedge.thread.us.i, %.critedge.thread.us.us.i, %.lr.ph857.i
  %i.oj = phi i32 [ %i.om, %.critedge.thread.us.i ], [ %i.rx, %.critedge.thread.us.us.i ], [ %i.om, %.lr.ph857.i ], [ %i.ul, %.critedge.thread.i ] ; 2 uses
  %i.ok = sext i32 %i.oj to i64
  %i.ol = icmp slt i64 %indvars.iv.next1013.i, %i.ok
  %indvars.iv.next980.i = add nuw nsw i64 %indvars.iv979.i, 1
  br i1 %i.ol, label %.lr.ph857.i, label %._crit_edge.i, !llvm.loop !34

.lr.ph857.i:                                      ; preds = %.preheader782.i, %.loopexit778.i
  %i.om = phi i32 [ %i.oj, %.loopexit778.i ], [ %i.og, %.preheader782.i ] ; 8 uses
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %.loopexit778.i ], [ 0, %.preheader782.i ] ; 3 uses
  %indvars.iv979.i = phi i64 [ %indvars.iv.next980.i, %.loopexit778.i ], [ 1, %.preheader782.i ] ; 4 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1012.i
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !54 ; 6 uses
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1 ; 3 uses
  %i.op = sext i32 %i.om to i64
  %i.oq = icmp slt i64 %indvars.iv.next1013.i, %i.op
  br i1 %i.oq, label %.lr.ph826.i, label %.loopexit778.i

.lr.ph826.i:                                      ; preds = %.lr.ph857.i
  %i.or = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv1012.i
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !54
  %i.ou = sext i32 %i.ot to i64                   ; 2 uses
  %i.ov = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %i.ou ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = getelementptr [4 x i8], ptr %.sroa.0648.1.i, i64 %i.ou ; 3 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 4      ; 2 uses
  %i.oz = sext i32 %i.oo to i64
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.oz ; 4 uses
  br i1 %i.eu, label %.lr.ph826.split.us.i, label %.lr.ph826.split.i

.lr.ph826.split.us.i:                             ; preds = %.lr.ph826.i
  br i1 %i.nk, label %.lr.ph826.split.us.split.us.i, label %.lr.ph826.split.us.split.i

.lr.ph826.split.us.split.us.i:                    ; preds = %.lr.ph826.split.us.i, %.critedge.thread.us.us.i
  %i.pb = phi i32 [ %i.rx, %.critedge.thread.us.us.i ], [ %i.om, %.lr.ph826.split.us.i ] ; 5 uses
  %i.pc = phi i32 [ %i.ry, %.critedge.thread.us.us.i ], [ %i.om, %.lr.ph826.split.us.i ] ; 5 uses
  %indvars.iv1009.i = phi i64 [ %indvars.iv.next1010.i, %.critedge.thread.us.us.i ], [ %indvars.iv979.i, %.lr.ph826.split.us.i ] ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1009.i
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !54 ; 4 uses
  %.not378.us.us.i = icmp eq i32 %i.oo, %i.pe
  br i1 %.not378.us.us.i, label %.critedge.thread.us.us.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph826.split.us.split.us.i
  %i.pf = load i32, ptr %i.ox, align 4, !tbaa !54 ; 3 uses
  %i.pg = load i32, ptr %i.oy, align 4, !tbaa !54 ; 4 uses
  %.not.i.i.us.us.i = icmp sgt i32 %i.pf, %i.pg
  br i1 %.not.i.i.us.us.i, label %.split839.us.i, label %.preheader776.us.us.i

.preheader776.us.us.i:                            ; preds = %bb.db
  %i.ph = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv1009.i
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !54
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr [4 x i8], ptr %.sroa.0648.1.i, i64 %i.pk ; 4 uses
  %i.pm = getelementptr i8, ptr %i.pl, i64 4      ; 3 uses
  %i.pn = sext i32 %i.pf to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph66, label %.preheader776.split.us827.split.us.preheader.i

.preheader776.split.us827.split.us.preheader.i:   ; preds = %.preheader776.us.us.i
  %wide.trip.count999.i = sext i32 %i.pg to i64
  %exitcond1000.not.i62 = icmp eq i32 %i.pf, %i.pg
  br i1 %exitcond1000.not.i62, label %.critedge.thread.us.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader776.split.us827.split.us.preheader.i
  %i.po = load i32, ptr %i.pl, align 4, !tbaa !54 ; 3 uses
  %i.pp = load i32, ptr %i.pm, align 4, !tbaa !54 ; 3 uses
  %.not.i.i477.us830.us.i = icmp sgt i32 %i.po, %i.pp
  %i.pq = sext i32 %i.po to i64
  br i1 %.not.i.i477.us830.us.i, label %.split821.us.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.pr = icmp slt i32 %i.po, %i.pp
  br i1 %i.pr, label %.preheader772.split.split.us.us.us.i, label %.critedge.thread.us.us.i

.preheader772.split.split.us.us.us.i:             ; preds = %.lr.ph.split, %.critedge2.split.us.us.i.loopexit
  %indvars.iv996.i63 = phi i64 [ %indvars.iv.next997.i, %.critedge2.split.us.us.i.loopexit ], [ %i.pn, %.lr.ph.split ] ; 2 uses
  %i.ps = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv996.i63 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  br label %.lr.ph814.us.us.i

.lr.ph814.us.us.i:                                ; preds = %bb.dc, %.preheader772.split.split.us.us.us.i
  %indvars.iv987.i = phi i64 [ %i.pq, %.preheader772.split.split.us.us.us.i ], [ %indvars.iv.next988.i, %bb.dc ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare noundef zeroext i1 @_Z16read_first_framePK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEP10t_trxframei(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare void @_Z13readTpxHeaderRKNSt10filesystem7__cxx114pathEb(ptr dead_on_unwind writable sret(%struct.TpxFileHeader) align 8, ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_Z8read_tpxRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind writable sret(%"class.gmx::RangePartitioning") align 8, ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #3

declare void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

declare noundef zeroext i1 @_Z15read_next_framePK16gmx_output_env_tP11t_trxstatusP10t_trxframe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

declare void @_Z10done_frameP10t_trxframe(ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768)) unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !24}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!11, !11, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!18 = !{!17, !11, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !13, i64 8, !6, i64 16}
!20 = !{!19, !13, i64 8}
!21 = !{!19, !11, i64 0}
!22 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!13, !13, i64 0}
!26 = !{!15, !14, i64 0}
!27 = !{!15, !14, i64 8}
!28 = !{!15, !14, i64 16}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24, !88, !89}
!31 = distinct !{!31, !24, !88, !89}
!32 = distinct !{!32, !24, !89, !88}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24}
!39 = distinct !{!39, !24}
!40 = distinct !{!40, !24}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !130}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !130}
!49 = distinct !{!49, !24}
!50 = distinct !{!50, !24}
!51 = distinct !{!51, !130}
!52 = distinct !{!52, !24}
!53 = distinct !{!53, !24}
!54 = !{!7, !7, i64 0}
!55 = !{!"float", !6, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"bool", !6, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTS7t_pargs", !11, i64 0, !57, i64 8, !7, i64 12, !6, i64 16, !11, i64 24}
!60 = !{!59, !11, i64 0}
!61 = !{!59, !57, i64 8}
!62 = !{!59, !7, i64 12}
!63 = !{!59, !11, i64 24}
!64 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !15, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !65, i64 0}
!67 = !{!"_ZTS8t_filenm", !7, i64 0, !11, i64 8, !11, i64 16, !13, i64 24, !66, i64 32}
!68 = !{!67, !7, i64 0}
!69 = !{!67, !11, i64 8}
!70 = !{!67, !11, i64 16}
!71 = !{!67, !13, i64 24}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!"p1 _ZTS16gmx_output_env_t", !10, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"p1 int", !10, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p1 _ZTS7t_atoms", !10, i64 0}
!79 = !{!"p1 float", !10, i64 0}
!80 = !{!"_ZTS7PbcType", !6, i64 0}
!81 = !{!"_ZTS10t_trxframe", !7, i64 0, !57, i64 4, !7, i64 8, !57, i64 12, !13, i64 16, !57, i64 24, !55, i64 28, !57, i64 32, !57, i64 33, !55, i64 36, !7, i64 40, !57, i64 44, !78, i64 48, !57, i64 56, !55, i64 60, !57, i64 64, !79, i64 72, !57, i64 80, !79, i64 88, !57, i64 96, !79, i64 104, !57, i64 112, !6, i64 116, !57, i64 152, !80, i64 156, !57, i64 160, !76, i64 168}
!82 = !{!81, !7, i64 8}
!83 = !{!81, !79, i64 72}
!84 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!85 = !{!84, !76, i64 0}
!86 = !{!84, !76, i64 8}
!87 = !{!84, !76, i64 16}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!"branch_weights", i32 4, i32 28}
!91 = !{!81, !57, i64 24}
!92 = !{!81, !55, i64 28}
!93 = !{!81, !57, i64 12}
!94 = !{!81, !13, i64 16}
!95 = !{!79, !79, i64 0}
!96 = !{!81, !57, i64 80}
!97 = !{!81, !79, i64 88}
!98 = !{!"_ZTS20MoleculeBlockIndices", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!99 = !{!98, !7, i64 4}
!100 = !{!98, !7, i64 8}
!101 = !{!98, !7, i64 0}
!102 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !10, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !105, i64 0}
!107 = !{!"_ZTS14gmx_molblock_t", !7, i64 0, !7, i64 4, !106, i64 8, !106, i64 32}
!108 = !{!107, !7, i64 0}
!109 = !{!"any p2 pointer", !10, i64 0}
!110 = !{!"p2 omnipotent char", !109, i64 0}
!111 = !{!"p1 _ZTS6t_atom", !10, i64 0}
!112 = !{!"any p3 pointer", !109, i64 0}
!113 = !{!"p3 omnipotent char", !112, i64 0}
!114 = !{!"p1 _ZTS9t_resinfo", !10, i64 0}
!115 = !{!"p1 _ZTS9t_pdbinfo", !10, i64 0}
!116 = !{!"_ZTS7t_atoms", !7, i64 0, !111, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !7, i64 40, !114, i64 48, !115, i64 56, !57, i64 64, !57, i64 65, !57, i64 66, !57, i64 67, !57, i64 68}
!117 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEE", !6, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !84, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorIiSaIiEE", !119, i64 0}
!121 = !{!"_ZTSN3gmx11ListOfListsIiEE", !120, i64 0, !120, i64 24}
!122 = !{!"_ZTS13gmx_moltype_t", !110, i64 0, !116, i64 8, !117, i64 80, !121, i64 2360}
!123 = !{!122, !111, i64 16}
!124 = !{!"short", !6, i64 0}
!125 = !{!"_ZTS12ParticleType", !6, i64 0}
!126 = !{!"_ZTS6t_atom", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !124, i64 16, !124, i64 18, !125, i64 20, !7, i64 24, !7, i64 28, !6, i64 32}
!127 = !{!126, !55, i64 0}
!128 = !{!"p1 _ZTS11t_trxstatus", !10, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!"llvm.loop.unroll.disable"}
!131 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"double", !6, i64 0}
!134 = !{!133, !133, i64 0}
end_hunk_1
