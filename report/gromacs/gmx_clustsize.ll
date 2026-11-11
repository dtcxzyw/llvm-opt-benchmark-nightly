Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_clustsize?download=true
inline.NumInlined: 320
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13gmx_clustsizeiPPc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !12
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.jz, i64 noundef %i.kd) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bx
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #15
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn352.i = phi { ptr, i32 } [ %i.kf, %bb.cc ], [ %i.ke, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.body.i

bb.ce:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i, %bb.bj
  %.0320.i = phi i32 [ %i.jw, %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i ], [ 4, %bb.bj ]
  %i.kg = icmp slt i32 %i.fa, 0
  br i1 %i.kg, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kh = uitofp nneg i32 %i.fa to double
  %i.ki = load i32, ptr %i.p, align 4, !tbaa !54
  %i.kj = sitofp i32 %i.ki to double
  %i.kk = fmul nnan double %i.kj, 3.000000e+00
  %i.kl = fdiv double %i.kh, %i.kk
  %i.km = fptrunc double %i.kl to float
  %i.kn = fpext float %i.km to double
  %i.ko = fmul double %i.kn, 3.000000e+00
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0317.i = phi double [ %i.ko, %bb.cf ], [ 3.000000e+00, %bb.ce ]
  %i.kp = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18
          to label %bb.ch unwind label %.body.i.i ; 7 uses

.body.i.i:                                        ; preds = %bb.cg, %bb.x
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ch:                                            ; preds = %bb.cg
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 5 uses
  store i32 0, ptr %i.kp, align 4, !tbaa !54
  br i1 %i.eu, label %bb.ci, label %bb.cr

bb.ci:                                            ; preds = %bb.ch
  %.not354.i = icmp eq ptr %i.dt, null
  br i1 %.not354.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ks = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull %i.dt) ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i, %.loopexit787.i, %_ZN3gmx17RangePartitioningD2Ev.exit.i
  %.sroa.23.0.i = phi ptr [ %.sroa.23.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.23.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.23.1.i, %.loopexit787.i ], [ %i.kz, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %.sroa.0648.0.i = phi ptr [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.0648.1.i, %.loopexit787.i ], [ %i.kv, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.ku = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not355.i = icmp eq ptr %i.ku, null
  br i1 %.not355.i, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10clust_sizePKcS0_S0_S0_S0_S0_S0_S0_S0_S0_bbS0_fii5t_rgbS1_iPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.48, i32 noundef 162) #16
          to label %.noexc460.i unwind label %bb.cp

.noexc460.i:                                      ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%"class.gmx::RangePartitioning") align 8 %22, ptr noundef nonnull align 8 dereferenceable(768) %4)
          to label %_ZN3gmx17RangePartitioningaSEOS0_.exit.i unwind label %bb.cq

_ZN3gmx17RangePartitioningaSEOS0_.exit.i:         ; preds = %bb.cn
  %i.kv = load ptr, ptr %22, align 8, !tbaa !85   ; 4 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !86 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !87 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef 4) #17
  %i.la = load ptr, ptr %22, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx17RangePartitioningD2Ev.exit.i, label %bb.co

bb.co:                                            ; preds = %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  %i.lb = load ptr, ptr %i.ky, align 8, !tbaa !87
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.la to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.la, i64 noundef %i.le) #17
  br label %_ZN3gmx17RangePartitioningD2Ev.exit.i

_ZN3gmx17RangePartitioningD2Ev.exit.i:            ; preds = %bb.co, %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.lf = ptrtoint ptr %i.kx to i64
  %i.lg = ptrtoint ptr %i.kv to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = lshr exact i64 %i.lh, 2
  %i.lj = trunc i64 %i.li to i32
  %i.lk = add nsw i32 %i.lj, -1                   ; 2 uses
  store i32 %i.lk, ptr %i.o, align 4, !tbaa !54
  %i.ll = sext i32 %i.lk to i64
  %i.lm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.48, i32 noundef 167, i64 noundef range(i64 -2147483648, 2147483648) %i.ll, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i unwind label %bb.ck ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit.i
  store ptr %i.lm, ptr %i.n, align 8, !tbaa !77
  %i.ln = load i32, ptr %i.o, align 4, !tbaa !54  ; 2 uses
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph.i, label %.loopexit787.i

.lr.ph.i:                                         ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ] ; 3 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %indvars.iv.i
  %i.lq = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !54
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lr = load i32, ptr %i.o, align 4, !tbaa !54  ; 2 uses
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %indvars.iv.next.i, %i.ls
  br i1 %i.lt, label %.lr.ph.i, label %.loopexit787.i, !llvm.loop !29

bb.cp:                                            ; preds = %bb.cm
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.cq:                                            ; preds = %bb.cn
  %i.lv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %.thread.i

bb.cr:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  invoke void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %i.dt, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lw = load ptr, ptr %i.s, align 8, !tbaa !16
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.48, i32 noundef 177, ptr noundef %i.lw)
          to label %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i unwind label %bb.ct

_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i:         ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !54
  br label %.loopexit787.i

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  br label %.thread.i

.loopexit787.i:                                   ; preds = %.lr.ph.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i
  %i.ly = phi i32 [ %.pre.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.ln, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.lr, %.lr.ph.i ]
  %.sroa.23.1.i = phi ptr [ %i.kr, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.kz, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.kz, %.lr.ph.i ] ; 13 uses
  %.sroa.18.0.i = phi ptr [ %i.kr, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.kx, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.kx, %.lr.ph.i ]
  %.sroa.0648.1.i = phi ptr [ %i.kp, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.kv, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.kv, %.lr.ph.i ] ; 18 uses
  %i.lz = sext i32 %i.ly to i64
  %i.ma = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.48, i32 noundef 180, i64 noundef range(i64 -2147483648, 2147483648) %i.lz, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i unwind label %bb.ck ; 12 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i:     ; preds = %.loopexit787.i
  %i.mb = load i32, ptr %i.o, align 4, !tbaa !54
  %i.mc = sext i32 %i.mb to i64
  %i.md = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.48, i32 noundef 181, i64 noundef range(i64 -2147483648, 2147483648) %i.mc, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i unwind label %bb.ck ; 8 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i:     ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i
  %i.me = fmul float %i.ex, %i.ex                 ; 3 uses
  %i.mf = load i32, ptr %i.o, align 4, !tbaa !54
  %i.mg = sext i32 %i.mf to i64
  %i.mh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.48, i32 noundef 185, i64 noundef range(i64 -2147483648, 2147483648) %i.mg, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i unwind label %bb.ck ; 6 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i
  %i.mi = load i32, ptr %i.o, align 4, !tbaa !54  ; 4 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %iter.check, label %.preheader783.i

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.mi to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.mi, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check390 = icmp ult i32 %i.mi, 32
  br i1 %min.iters.check390, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mk = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %43 = trunc <8 x i64> %vec.ind to <8 x i32>
  %44 = add <8 x i32> %43, splat (i32 1)
  %45 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.ml = add <8 x i32> %45, splat (i32 9)
  %46 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mm = add <8 x i32> %46, splat (i32 17)
  %47 = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mn = add <8 x i32> %47, splat (i32 25)
  %i.mo = uitofp nneg <8 x i32> %44 to <8 x float>
  %i.mp = uitofp nneg <8 x i32> %i.ml to <8 x float>
  %i.mq = uitofp nneg <8 x i32> %i.mm to <8 x float>
  %i.mr = uitofp nneg <8 x i32> %i.mn to <8 x float>
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 4 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 96
  store <8 x float> %i.mo, ptr %i.ms, align 4, !tbaa !56
  store <8 x float> %i.mp, ptr %i.mt, align 4, !tbaa !56
  store <8 x float> %i.mq, ptr %i.mu, align 4, !tbaa !56
  store <8 x float> %i.mr, ptr %i.mv, align 4, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader783.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mk, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec391 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index392 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next394, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind393 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next395, %vec.epilog.vector.body ] ; 2 uses
  %48 = trunc <4 x i64> %vec.ind393 to <4 x i32>
  %49 = add <4 x i32> %48, splat (i32 1)
  %50 = uitofp nneg <4 x i32> %49 to <4 x float>
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index392
  store <4 x float> %50, ptr %i.mx, align 4, !tbaa !56
  %index.next394 = add nuw i64 %index392, 4       ; 2 uses
  %vec.ind.next395 = add nuw nsw <4 x i64> %vec.ind393, splat (i64 4)
  %i.my = icmp eq i64 %index.next394, %n.vec391
  br i1 %i.my, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n396 = icmp eq i64 %n.vec391, %wide.trip.count.i
  br i1 %cmp.n396, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv978.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec391, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i

.preheader783.i:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %i.mz = icmp eq i32 %i.ey, 0
  %i.na = icmp sgt i32 %i.ey, 0
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.nc = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.ne = ptrtoint ptr %.sroa.18.0.i to i64
  %i.nf = ptrtoint ptr %.sroa.0648.1.i to i64     ; 2 uses
  %i.ng = sub i64 %i.ne, %i.nf
  %.fr934.i = freeze i64 %i.ng
  %i.nh = lshr i64 %.fr934.i, 2
  %i.ni = trunc i64 %i.nh to i32
  %i.nj = icmp sgt i32 %i.ni, 1                   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.nq = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.nr = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.cu

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i
  %indvars.iv978.i = phi i64 [ %indvars.iv.next979.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i ], [ %indvars.iv978.i.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader ] ; 2 uses
  %indvars.iv.next979.i = add nuw nsw i64 %indvars.iv978.i, 1 ; 3 uses
  %i.nu = trunc nuw nsw i64 %indvars.iv.next979.i to i32
  %i.nv = uitofp nneg i32 %i.nu to float
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv978.i
  store float %i.nv, ptr %i.nw, align 4, !tbaa !56
  %exitcond.not.i = icmp eq i64 %indvars.iv.next979.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, !llvm.loop !32

bb.cu:                                            ; preds = %bb.ew, %.preheader783.i
  %.0751.i = phi i32 [ %.3754.i, %bb.ew ], [ 0, %.preheader783.i ] ; 6 uses
  %.0747.i = phi i32 [ %.3750.i, %bb.ew ], [ 0, %.preheader783.i ] ; 5 uses
  %.0743.i = phi ptr [ %.1744.i, %bb.ew ], [ null, %.preheader783.i ] ; 3 uses
  %.0742.i = phi ptr [ %.1.i, %bb.ew ], [ null, %.preheader783.i ] ; 3 uses
  %.0321.i = phi i1 [ %.1322.i, %bb.ew ], [ true, %.preheader783.i ] ; 4 uses
  %.0290.i = phi i32 [ %i.aab, %bb.ew ], [ 0, %.preheader783.i ] ; 2 uses
  %.0286.i = phi i32 [ %.1287.i, %bb.ew ], [ 0, %.preheader783.i ] ; 4 uses
  %.0282.i = phi i32 [ %.3285.i, %bb.ew ], [ 1, %.preheader783.i ] ; 2 uses
  %.0278.i = phi i32 [ %.3281.i, %bb.ew ], [ -1, %.preheader783.i ] ; 2 uses
  %.0272.i = phi i32 [ %.2274.i, %bb.ew ], [ 0, %.preheader783.i ] ; 5 uses
  %.0269.i = phi float [ %.2271.i, %bb.ew ], [ undef, %.preheader783.i ] ; 2 uses
  br i1 %i.mz, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.na, label %bb.cw, label %bb.ej

bb.cw:                                            ; preds = %bb.cv
  %i.nx = urem i32 %.0290.i, %i.ey
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.cx, label %bb.ej

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  br i1 %i.ew, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %2, i32 noundef %.0320.i, ptr noundef nonnull %i.nb)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.nz = load i32, ptr %i.o, align 4, !tbaa !54
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %.lr.ph804.i, label %._crit_edge.i

.preheader782.i:                                  ; preds = %.lr.ph804.i
  %i.ob = icmp sgt i32 %i.of, 0
  br i1 %i.ob, label %.lr.ph857.i, label %._crit_edge.i

.lr.ph804.i:                                      ; preds = %bb.cz, %.lr.ph804.i
  %indvars.iv981.i = phi i64 [ %indvars.iv.next982.i, %.lr.ph804.i ], [ 0, %bb.cz ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv981.i
  %i.od = trunc nuw nsw i64 %indvars.iv981.i to i32
  store i32 %i.od, ptr %i.oc, align 4, !tbaa !54
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv981.i
  store i32 1, ptr %i.oe, align 4, !tbaa !54
  %indvars.iv.next982.i = add nuw nsw i64 %indvars.iv981.i, 1 ; 2 uses
  %i.of = load i32, ptr %i.o, align 4, !tbaa !54  ; 3 uses
  %i.og = sext i32 %i.of to i64
  %i.oh = icmp slt i64 %indvars.iv.next982.i, %i.og
  br i1 %i.oh, label %.lr.ph804.i, label %.preheader782.i, !llvm.loop !33

.loopexit778.i:                                   ; preds = %.critedge.thread.i, %.critedge.thread.us.i, %.critedge.thread.us.us.i, %.lr.ph857.i
  %i.oi = phi i32 [ %i.ol, %.critedge.thread.us.i ], [ %i.rw, %.critedge.thread.us.us.i ], [ %i.ol, %.lr.ph857.i ], [ %i.uf, %.critedge.thread.i ] ; 2 uses
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp slt i64 %indvars.iv.next1021.i, %i.oj
  %indvars.iv.next988.i = add nuw nsw i64 %indvars.iv987.i, 1
  br i1 %i.ok, label %.lr.ph857.i, label %._crit_edge.i, !llvm.loop !34

.lr.ph857.i:                                      ; preds = %.preheader782.i, %.loopexit778.i
  %i.ol = phi i32 [ %i.oi, %.loopexit778.i ], [ %i.of, %.preheader782.i ] ; 8 uses
  %indvars.iv1020.i = phi i64 [ %indvars.iv.next1021.i, %.loopexit778.i ], [ 0, %.preheader782.i ] ; 3 uses
  %indvars.iv987.i = phi i64 [ %indvars.iv.next988.i, %.loopexit778.i ], [ 1, %.preheader782.i ] ; 4 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv1020.i
  %i.on = load i32, ptr %i.om, align 4, !tbaa !54 ; 6 uses
  %indvars.iv.next1021.i = add nuw nsw i64 %indvars.iv1020.i, 1 ; 3 uses
  %i.oo = sext i32 %i.ol to i64
  %i.op = icmp slt i64 %indvars.iv.next1021.i, %i.oo
  br i1 %i.op, label %.lr.ph826.i, label %.loopexit778.i

.lr.ph826.i:                                      ; preds = %.lr.ph857.i
  %i.oq = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv1020.i
  %i.os = load i32, ptr %i.or, align 4, !tbaa !54
  %i.ot = sext i32 %i.os to i64                   ; 2 uses
  %i.ou = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %i.ot ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = getelementptr [4 x i8], ptr %.sroa.0648.1.i, i64 %i.ot ; 3 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 4      ; 2 uses
  %i.oy = sext i32 %i.on to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.oy ; 4 uses
  br i1 %i.eu, label %.lr.ph826.split.us.i, label %.lr.ph826.split.i

.lr.ph826.split.us.i:                             ; preds = %.lr.ph826.i
  br i1 %i.nj, label %.lr.ph826.split.us.split.us.i, label %.lr.ph826.split.us.split.i

.lr.ph826.split.us.split.us.i:                    ; preds = %.lr.ph826.split.us.i, %.critedge.thread.us.us.i
  %i.pa = phi i32 [ %i.rw, %.critedge.thread.us.us.i ], [ %i.ol, %.lr.ph826.split.us.i ] ; 5 uses
  %i.pb = phi i32 [ %i.rx, %.critedge.thread.us.us.i ], [ %i.ol, %.lr.ph826.split.us.i ] ; 5 uses
  %indvars.iv1017.i = phi i64 [ %indvars.iv.next1018.i, %.critedge.thread.us.us.i ], [ %indvars.iv987.i, %.lr.ph826.split.us.i ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv1017.i
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !54 ; 4 uses
  %.not378.us.us.i = icmp eq i32 %i.on, %i.pd
  br i1 %.not378.us.us.i, label %.critedge.thread.us.us.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph826.split.us.split.us.i
  %i.pe = load i32, ptr %i.ow, align 4, !tbaa !54 ; 3 uses
  %i.pf = load i32, ptr %i.ox, align 4, !tbaa !54 ; 4 uses
  %.not.i.i.us.us.i = icmp sgt i32 %i.pe, %i.pf
  br i1 %.not.i.i.us.us.i, label %.split821.us.invoke.i, label %.preheader776.us.us.i

.preheader776.us.us.i:                            ; preds = %bb.da
  %i.pg = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv1017.i
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !54
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr [4 x i8], ptr %.sroa.0648.1.i, i64 %i.pj ; 4 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 4      ; 3 uses
  %i.pm = sext i32 %i.pe to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph77, label %.preheader776.split.us827.split.us.preheader.i

.preheader776.split.us827.split.us.preheader.i:   ; preds = %.preheader776.us.us.i
  %wide.trip.count1007.i = sext i32 %i.pf to i64
  %exitcond1008.not.i73 = icmp eq i32 %i.pe, %i.pf
  br i1 %exitcond1008.not.i73, label %.critedge.thread.us.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader776.split.us827.split.us.preheader.i
  %i.pn = load i32, ptr %i.pk, align 4, !tbaa !54 ; 3 uses
  %i.po = load i32, ptr %i.pl, align 4, !tbaa !54 ; 3 uses
  %.not.i.i477.us830.us.i = icmp sgt i32 %i.pn, %i.po
  %i.pp = sext i32 %i.pn to i64
  br i1 %.not.i.i477.us830.us.i, label %.split821.us.invoke.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.pq = icmp slt i32 %i.pn, %i.po
  br i1 %i.pq, label %.preheader772.split.split.us.us.us.i, label %.critedge.thread.us.us.i

.preheader772.split.split.us.us.us.i:             ; preds = %.lr.ph.split, %.critedge2.split.us.us.i.loopexit
  %indvars.iv1004.i74 = phi i64 [ %indvars.iv.next1005.i, %.critedge2.split.us.us.i.loopexit ], [ %i.pm, %.lr.ph.split ] ; 2 uses
  %i.pr = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %indvars.iv1004.i74 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  br label %.lr.ph814.us.us.i

.lr.ph814.us.us.i:                                ; preds = %bb.db, %.preheader772.split.split.us.us.us.i
  %indvars.iv995.i = phi i64 [ %i.pp, %.preheader772.split.split.us.us.us.i ], [ %indvars.iv.next996.i, %bb.db ] ; 2 uses
  %i.pt = getelementptr inbounds [12 x i8], ptr %i.jh, i64 %indvars.iv995.i ; 2 uses
  %i.pu = load float, ptr %i.ps, align 4, !tbaa !56
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !56
  %i.px = fsub float %i.pu, %i.pw                 ; 3 uses
  %i.py = load <2 x float>, ptr %i.pr, align 4, !tbaa !56
  %i.pz = load <2 x float>, ptr %i.pt, align 4, !tbaa !56
  %i.qa = fsub <2 x float> %i.py, %i.pz           ; 4 uses
  store <2 x float> %i.qa, ptr %i.r, align 8, !tbaa !56
  store float %i.px, ptr %i.nd, align 8, !tbaa !56
  %foldExtExtBinop = fmul <2 x float> %i.qa, %i.qa
  %i.qb = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.qc = extractelement <2 x float> %i.qa, i64 0 ; 2 uses
  %i.qd = call float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %i.qb)
  %i.qe = call noundef float @llvm.fmuladd.f32(float %i.px, float %i.px, float %i.qd)
  %i.qf = fcmp olt float %i.qe, %i.me
  br i1 %i.qf, label %.critedge766.preheader.loopexit.us.us.i, label %bb.db, !llvm.loop !35

bb.db:                                            ; preds = %.lr.ph814.us.us.i
  %indvars.iv.next996.i = add nsw i64 %indvars.iv995.i, 1 ; 2 uses
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
