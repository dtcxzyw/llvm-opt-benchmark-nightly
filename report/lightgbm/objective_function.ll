Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK8LightGBM16RankingObjective30GetGradientsWithSampledQueriesEPKdiPKiPfS5_.omp_outlined:bb.a
  %i.ao = load ptr, ptr %5, align 8, !tbaa !223, !llvm.access.group !618
  %i.ap = add nsw i64 %indvars.iv, %i.ai          ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !192, !llvm.access.group !618
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !308, !llvm.access.group !618
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ap
  %i.au = load i32, ptr %i.at, align 4, !tbaa !205, !llvm.access.group !618
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !175, !llvm.access.group !618
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !170, !llvm.access.group !618
  %i.az = fpext float %i.ay to double
  %i.ba = fadd double %i.ar, %i.az                ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.7.076, %.sroa.10.077
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store double %i.ba, ptr %.sroa.7.076, align 8, !tbaa !192, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.g:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.10.077 to i64
  %i.bc = ptrtoint ptr %.sroa.0.075 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.h, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #37
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i), !llvm.access.group !618
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #34
          to label %.noexc53 unwind label %.loopexit66 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store double %i.ba, ptr %i.bm, align 8, !tbaa !192, !llvm.access.group !618
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.i, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %.sroa.0.075, i64 %i.bd, i1 false), !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc53
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0.075, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.075, i64 noundef %i.bd) #35, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0.2 = phi ptr [ %i.bl, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.0.075, %bb.f ] ; 4 uses
  %.pn = phi ptr [ %i.bm, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.7.076, %bb.f ]
  %.sroa.10.2 = phi ptr [ %i.bo, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %.sroa.10.077, %bb.f ] ; 3 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !619

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %.pr.pre = load i32, ptr %i.k, align 8, !tbaa !300
  %i.bp = icmp sgt i32 %.pr.pre, 0
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !298, !llvm.access.group !618
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ai ; 2 uses
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %._crit_edge
  %i.bs = phi ptr [ %i.an, %.thread ], [ %i.br, %._crit_edge ]
  %.sroa.10.164 = phi ptr [ null, %.thread ], [ %.sroa.10.2, %._crit_edge ]
  %.sroa.0.162 = phi ptr [ null, %.thread ], [ %.sroa.0.2, %._crit_edge ]
  %i.bt = load ptr, ptr %5, align 8, !tbaa !223, !llvm.access.group !618
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.ai
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.k
  %i.bv = phi ptr [ %i.bs, %bb.k ], [ %i.br, %._crit_edge ], [ %i.al, %._crit_edge.thread ]
  %.sroa.10.163 = phi ptr [ %.sroa.10.164, %bb.k ], [ %.sroa.10.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %.sroa.0.161 = phi ptr [ %.sroa.0.162, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ] ; 3 uses
  %i.bw = phi ptr [ %i.bu, %bb.k ], [ %.sroa.0.2, %._crit_edge ], [ null, %._crit_edge.thread ]
  %i.bx = load ptr, ptr %6, align 8, !tbaa !221, !llvm.access.group !618
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ai
  %i.bz = load ptr, ptr %7, align 8, !tbaa !221, !llvm.access.group !618
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ai
  %i.cb = load ptr, ptr %4, align 8, !tbaa !99, !llvm.access.group !618
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 160
  %i.cd = load ptr, ptr %i.cc, align 8, !llvm.access.group !618
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(112) %4, i32 noundef %i.y, i32 noundef %i.af, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.ca)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit, !llvm.access.group !618

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !307, !llvm.access.group !618 ; 7 uses
  %.not52 = icmp ne ptr %i.ce, null
  %i.cf = icmp sgt i32 %i.af, 0
  %or.cond = select i1 %.not52, i1 %i.cf, i1 false
  br i1 %or.cond, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %bb.m
  %i.cg = load ptr, ptr %6, align 8, !tbaa !221, !llvm.access.group !618 ; 6 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !221, !llvm.access.group !618 ; 6 uses
  %i.ci = sext i32 %i.ac to i64                   ; 6 uses
  %wide.trip.count94 = zext nneg i32 %i.af to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph81
  %i.cj = shl nsw i64 %i.ci, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.cj ; 2 uses
  %i.ck = add nsw i64 %i.ci, %wide.trip.count94
  %i.cl = shl nsw i64 %i.ck, 2                    ; 3 uses
  %scevgep110 = getelementptr i8, ptr %i.cg, i64 %i.cl ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.ch, i64 %i.cj ; 2 uses
  %scevgep112 = getelementptr i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %scevgep113 = getelementptr i8, ptr %i.ce, i64 %i.cj ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.ce, i64 %i.cl ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep112
  %bound1 = icmp ult ptr %scevgep111, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  %bound0115 = icmp ult ptr %scevgep, %scevgep114
  %bound1116 = icmp ult ptr %scevgep113, %scevgep110
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx = or i1 %found.conflict, %found.conflict117
  %bound0118 = icmp ult ptr %scevgep111, %scevgep114
  %bound1119 = icmp ult ptr %scevgep113, %scevgep112
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx, %found.conflict120
  br i1 %conflict.rdx121, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count94, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = add nsw i64 %index, %i.ci               ; 3 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cm ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !tbaa !170, !alias.scope !627, !noalias !628, !llvm.access.group !618
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cm
  %wide.load122 = load <4 x float>, ptr %i.co, align 4, !tbaa !170, !alias.scope !629, !llvm.access.group !618 ; 2 uses
  %i.cp = fmul <4 x float> %wide.load, %wide.load122
  store <4 x float> %i.cp, ptr %i.cn, align 4, !tbaa !170, !alias.scope !627, !noalias !628, !llvm.access.group !618
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cm ; 2 uses
  %wide.load123 = load <4 x float>, ptr %i.cq, align 4, !tbaa !170, !alias.scope !630, !noalias !629, !llvm.access.group !618
  %i.cr = fmul <4 x float> %wide.load123, %wide.load122
  store <4 x float> %i.cr, ptr %i.cq, align 4, !tbaa !170, !alias.scope !630, !noalias !629, !llvm.access.group !618
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count94
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph81, %middle.block
  %indvars.iv91.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph81 ], [ %n.vec, %middle.block ] ; 4 uses
  %xtraiter = and i64 %wide.trip.count94, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ct = add nsw i64 %indvars.iv91.ph, %i.ci     ; 3 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !170, !llvm.access.group !618
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ct ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !170, !llvm.access.group !618
  %i.cy = fmul float %i.cv, %i.cx
  store float %i.cy, ptr %i.cu, align 4, !tbaa !170, !llvm.access.group !618
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ct ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !170, !llvm.access.group !618
  %i.db = load float, ptr %i.cw, align 4, !tbaa !170, !llvm.access.group !618
  %i.dc = fmul float %i.da, %i.db
  store float %i.dc, ptr %i.cz, align 4, !tbaa !170, !llvm.access.group !618
  %indvars.iv.next92.prol = or disjoint i64 %indvars.iv91.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv91.unr = phi i64 [ %indvars.iv91.ph, %scalar.ph.preheader ], [ %indvars.iv.next92.prol, %scalar.ph.prol ]
  %i.dd = add nsw i64 %wide.trip.count94, -1
  %i.de = icmp eq i64 %indvars.iv91.ph, %i.dd
  br i1 %i.de, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %i.ci
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv91 = phi i64 [ %indvars.iv91.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next92.1, %scalar.ph ] ; 3 uses
  %i.df = add nsw i64 %indvars.iv91, %i.ci        ; 3 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.df ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !170, !llvm.access.group !618
  %i.di = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.df ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !170, !llvm.access.group !618
  %i.dk = fmul float %i.dh, %i.dj
  store float %i.dk, ptr %i.dg, align 4, !tbaa !170, !llvm.access.group !618
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.df ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !170, !llvm.access.group !618
  %i.dn = load float, ptr %i.di, align 4, !tbaa !170, !llvm.access.group !618
  %i.do = fmul float %i.dm, %i.dn
  store float %i.do, ptr %i.dl, align 4, !tbaa !170, !llvm.access.group !618
  %.reass = add i64 %indvars.iv91, %invariant.op  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %.reass ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !170, !llvm.access.group !618
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %.reass ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !170, !llvm.access.group !618
  %i.dt = fmul float %i.dq, %i.ds
  store float %i.dt, ptr %i.dp, align 4, !tbaa !170, !llvm.access.group !618
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %.reass ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !170, !llvm.access.group !618
  %i.dw = load float, ptr %i.dr, align 4, !tbaa !170, !llvm.access.group !618
  %i.dx = fmul float %i.dv, %i.dw
  store float %i.dx, ptr %i.du, align 4, !tbaa !170, !llvm.access.group !618
  %indvars.iv.next92.1 = add nuw nsw i64 %indvars.iv91, 2 ; 2 uses
  %exitcond95.not.1 = icmp eq i64 %indvars.iv.next92.1, %wide.trip.count94
  br i1 %exitcond95.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !625

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.m
  %.not.i.i.i = icmp eq ptr %.sroa.0.161, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.dy = ptrtoint ptr %.sroa.10.163 to i64
  %i.dz = ptrtoint ptr %.sroa.0.161 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.161, i64 noundef %i.ea) #35, !llvm.access.group !618
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit, %bb.n
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !205, !llvm.access.group !618
  %i.ec = sext i32 %i.eb to i64
  %.not51.not = icmp slt i64 %indvars.iv96, %i.ec
  br i1 %.not51.not, label %.lr.ph85, label %.loopexit67, !llvm.loop !626

._crit_edge89:                                    ; preds = %.loopexit67, %bb.b
  call void @__kmpc_dispatch_deinit(ptr nonnull @2, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge89, %bb.a
  ret void

.loopexit66:                                      ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.l
  %lpad.loopexit68 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit66
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit66 ], [ %lpad.loopexit68, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ed = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.ed) #36, !llvm.access.group !618
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_4(ptr, i32, i32, i32, i32, i32, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_4(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #18 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 2
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #39 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 5 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !259

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  invoke void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %i.o, ptr %1, ptr noundef %.sroa.12.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.q) #12
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEC2ES6_l.exit
  %i.r = icmp eq ptr %.sroa.12.0, null
  br i1 %i.r, label %bb.f, label %bb.g, !prof !260

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2)
          to label %bb.h unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.5.0, ptr %2)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.s = shl i64 %.sroa.5.0, 2
  tail call void @_ZdlPvm(ptr noundef %.sroa.12.0, i64 noundef %i.s) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_SI_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef 7, ptr %4)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.020.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.020.i, ptr %4)
  %i.g = shl nuw nsw i64 %.020.i, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g, ptr %4)
  %i.h = shl nsw i64 %.020.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit, !llvm.loop !632

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_(ptr %1, ptr %2, i64 noundef 7, ptr %4)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit15

.lr.ph.i13:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit, %.lr.ph.i13
  %.020.i14 = phi i64 [ %i.p, %.lr.ph.i13 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_lNS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.020.i14, ptr %4)
  %i.o = shl nuw nsw i64 %.020.i14, 1
  tail call void @_ZSt17__merge_sort_loopIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEElNS1_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o, ptr %4)
  %i.p = shl nsw i64 %.020.i14, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i13, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit15, !llvm.loop !632

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit15: ; preds = %.lr.ph.i13, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_T1_.exit
  %i.r = ptrtoint ptr %4 to i64
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_SI_T0_SJ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3, i64 %i.r)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8LightGBM14LambdarankNDCG23GetGradientsForOneQueryEiiPKfPKdPfSF_EUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
end_hunk_0
