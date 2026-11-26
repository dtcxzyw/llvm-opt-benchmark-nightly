Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/sample_strategy?download=true
inline.NumInlined: 841
inline.NumDeleted: 415
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8LightGBM12GOSSStrategy7BaggingEiPNS_11TreeLearnerEPfS3_:bb.a

_ZNSt14_Function_baseD2Ev.exit9:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107
  call void @_ZN8LightGBM7Dataset6ReSizeEi(ptr noundef nonnull align 8 dereferenceable(864) %i.aj, i32 noundef %i.r)
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !109
  call void @_ZN8LightGBM7Dataset10CopySubrowEPKS0_PKiib(ptr noundef nonnull align 8 dereferenceable(864) %i.ak, ptr noundef %i.am, ptr noundef %i.an, i32 noundef %i.ao, i1 noundef zeroext false)
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !107
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !52
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !109
  %i.as = load ptr, ptr %2, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ap, ptr noundef %i.aq, i32 noundef %i.ar)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12GOSSStrategy17ResetSampleConfigEPKNS_6ConfigEb(ptr noundef nonnull align 8 dereferenceable(289) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = icmp eq ptr %i.d, null
  %spec.store.select = zext i1 %i.e to i8
  store i8 %spec.store.select, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !177 ; 2 uses
  %i.h = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.g)
  %i.i = fcmp ugt double %i.h, 1.000000e+00
  %i.j = extractelement <2 x double> %i.g, i64 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 88)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 480
  %.pre19 = load double, ptr %.phi.trans.insert, align 8, !tbaa !133
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi double [ %.pre19, %bb.b ], [ %i.j, %bb.a ]
  %i.l = phi ptr [ %.pre, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %i.m = fcmp ogt double %i.k, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  %i.o = load double, ptr %i.n, align 8, !tbaa !134
  %i.p = fcmp ogt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 89)
  %.pre20 = load ptr, ptr %i.a, align 8, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre20, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.s = load i32, ptr %i.r, align 8, !tbaa !135
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.v = load double, ptr %i.u, align 8, !tbaa !136
  %i.w = fcmp une double %i.v, 1.000000e+00
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.11)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  tail call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.12)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.x, align 1, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !97
  %i.ab = sext i32 %i.aa to i64                   ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !137 ; 2 uses
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !52  ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = sub nuw nsw i64 %i.ab, %i.ai
  tail call void @_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 noundef %i.ak)
  %.pre21 = load i32, ptr %i.z, align 4, !tbaa !97
  %.pre27 = sext i32 %.pre21 to i64
  br label %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.al = icmp ugt i64 %i.ai, %i.ab
  br i1 %i.al, label %bb.l, label %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ab ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !137
  br label %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit

_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre27, %bb.j ], [ %i.ab, %bb.k ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138 ; 2 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !105 ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 3 uses
  %i.av = icmp ult i64 %i.au, %.pre-phi
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit
  %i.aw = sub nuw nsw i64 %.pre-phi, %i.au
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.aw)
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.o:                                             ; preds = %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit
  %i.ax = icmp ugt i64 %i.au, %.pre-phi
  br i1 %i.ax, label %bb.p, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.pre-phi ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ay
  br i1 %.not.i.i.i, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.p
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !138
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit: ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i.i6, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !139
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit: ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit, %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.bd = phi ptr [ %i.bc, %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit ], [ %i.ba, %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.bf = load i32, ptr %i.z, align 4, !tbaa !97  ; 3 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !49 ; 3 uses
  %i.bh = add i32 %i.bf, -1
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = sdiv i32 %i.bi, %i.bg
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre22 = load ptr, ptr %i.bl, align 8, !tbaa !51
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit
  %.lcssa15 = phi i32 [ %i.bf, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit ], [ %i.dk, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 0, ptr %i.bm, align 8, !tbaa !130
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 480
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !tbaa !177
  %i.bq = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bp) ; 2 uses
  %i.br = fcmp ugt double %i.bq, 5.000000e-01
  br i1 %i.br, label %bb.y, label %bb.v

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.bs = phi i32 [ %i.bg, %.lr.ph ], [ %i.dj, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.bt = phi i32 [ %i.bf, %.lr.ph ], [ %i.dk, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.bu = phi ptr [ %i.ba, %.lr.ph ], [ %i.dl, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 8 uses
  %i.bv = phi ptr [ %.pre22, %.lr.ph ], [ %i.dm, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 5 uses
  %i.bw = phi ptr [ %i.bd, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 3 uses
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.do, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 348
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !140
  %i.ca = add nsw i32 %i.bz, %.017                ; 2 uses
  %.not.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !142
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  store ptr %i.cb, ptr %i.bb, align 8, !tbaa !139
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.bu to i64               ; 4 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775804
  br i1 %i.cf, label %bb.t, label %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.cg = ashr exact i64 %i.ce, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 2305843009213693951)
  %i.ck = select i1 %i.ci, i64 2305843009213693951, i64 %i.cj ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #28 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i32 %i.ca, ptr %i.cn, align 4, !tbaa !142
  %.not10.i.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = ptrtoaddr ptr %i.cm to i64
  %i.cp = add i64 %i.cc, -4
  %i.cq = sub i64 %i.cp, %i.cd                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 28
  %i.ct = sub i64 %i.cd, %i.co
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 3 uses
  %i.cu = shl i64 %n.vec, 2                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.bu, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cx ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.bu, i64 %i.cx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.cy = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep46, align 4, !tbaa !143, !alias.scope !179
  %wide.load47 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !143, !alias.scope !179
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !143, !alias.scope !178
  store <4 x i32> %wide.load47, ptr %i.cz, align 4, !tbaa !143, !alias.scope !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader49

.lr.ph.i.i.i.i.i.preheader49:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader49, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader49 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.db = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !143, !alias.scope !179
  store i32 %i.db, ptr %.012.i.i.i.i.i, align 4, !tbaa !143, !alias.scope !178
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.bv
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !175

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cm, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.df = load ptr, ptr %i.bl, align 8, !tbaa !51
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.dh) #29
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.cm, ptr %i.az, align 8, !tbaa !50
  store ptr %i.de, ptr %i.bb, align 8, !tbaa !139
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  store ptr %i.di, ptr %i.bl, align 8, !tbaa !51
  %.pre23 = load i32, ptr %i.z, align 4, !tbaa !97
  %.pre24 = load i32, ptr %i.be, align 4, !tbaa !49
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.r, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.dj = phi i32 [ %i.bs, %bb.r ], [ %.pre24, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.dk = phi i32 [ %i.bt, %bb.r ], [ %.pre23, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.dl = phi ptr [ %i.bu, %bb.r ], [ %i.cm, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.dm = phi ptr [ %i.bv, %bb.r ], [ %i.di, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.dn = phi ptr [ %i.cb, %bb.r ], [ %i.de, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.do = add nuw nsw i32 %.017, 1                ; 2 uses
  %i.dp = add i32 %i.dk, -1
  %i.dq = add i32 %i.dp, %i.dj
  %i.dr = sdiv i32 %i.dq, %i.dj
  %i.ds = icmp slt i32 %i.do, %i.dr
  br i1 %i.ds, label %bb.q, label %._crit_edge, !llvm.loop !176

bb.v:                                             ; preds = %._crit_edge
  %i.dt = sitofp i32 %.lcssa15 to double
  %i.du = fmul double %i.bq, %i.dt
  %i.dv = fptosi double %i.du to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 1)
  %i.dw = tail call noalias noundef nonnull dereferenceable(864) ptr @_Znwm(i64 noundef 864) #28 ; 4 uses
  invoke void @_ZN8LightGBM7DatasetC1Ei(ptr noundef nonnull align 8 dereferenceable(864) %i.dw, i32 noundef %.sroa.speculated)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !107 ; 3 uses
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !107
  %.not.i.i8 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i8, label %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i: ; preds = %bb.w
  tail call void @_ZN8LightGBM7DatasetD1Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %i.dy) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 864) #29
  %.pre25 = load ptr, ptr %i.dx, align 8, !tbaa !107
  br label %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.w, %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i
  %i.dz = phi ptr [ %i.dw, %bb.w ], [ %.pre25, %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !55
  tail call void @_ZN8LightGBM7Dataset21CopyFeatureMapperFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(864) %i.dz, ptr noundef %i.eb)
  store i8 1, ptr %i.bm, align 8, !tbaa !130
  %.pre26 = load i32, ptr %i.z, align 4, !tbaa !97
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef 864) #29
  resume { ptr, i32 } %i.ec

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit, %._crit_edge
  %i.ed = phi i32 [ %.pre26, %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %.lcssa15, %._crit_edge ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8LightGBM12GOSSStrategy15IsHessianChangeEv(ptr noundef nonnull align 8 dereferenceable(289) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK8LightGBM14SampleStrategy19num_sampled_queriesEv(ptr noundef nonnull align 8 dereferenceable(289) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM14SampleStrategy21sampled_query_indicesEv(ptr noundef nonnull align 8 dereferenceable(289) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM23ParallelPartitionRunnerIiLb0EEC2Eii(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  %i.i = invoke i32 @OMP_NUM_THREADS()
          to label %bb.b unwind label %bb.u       ; 4 uses

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %0, align 8, !tbaa !148
  %i.j = sext i32 %1 to i64                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138  ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = sub nuw nsw i64 %i.j, %i.q
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.s)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.u

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.c
  %.pre = load i32, ptr %0, align 8, !tbaa !148
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ugt i64 %i.q, %i.j
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.u, ptr %i.k, align 8, !tbaa !138
end_hunk_0
begin_hunk_1_@_ZN8LightGBM21BaggingSampleStrategy17ResetSampleConfigEPKNS_6ConfigEb:bb.a
  %i.cd = sext i32 %i.cb to i64                   ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !138 ; 2 uses
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !105 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cd
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cm = sub nuw nsw i64 %i.cd, %i.ck
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 noundef %i.cm)
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.y:                                             ; preds = %bb.w
  %i.cn = icmp ugt i64 %i.ck, %i.cd
  br i1 %i.cn, label %bb.z, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cd ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i.i, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.z
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !138
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE6resizeEm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !100 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cs = sext i32 %i.cq to i64                   ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !138 ; 2 uses
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !105 ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.cs
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = sub nuw nsw i64 %i.cs, %i.cz
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 noundef %i.db)
  %.pre58 = load i32, ptr %i.cp, align 8, !tbaa !100
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37

bb.ac:                                            ; preds = %bb.aa
  %i.dc = icmp ugt i64 %i.cz, %i.cs
  br i1 %i.dc, label %bb.ad, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cs ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %i.cu, %i.dd
  br i1 %.not.i.i.i35, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i36

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i36:    ; preds = %bb.ad
  store ptr %i.dd, ptr %i.ct, align 8, !tbaa !138
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37

_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37: ; preds = %bb.ab, %bb.ac, %bb.ad, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i36
  %i.de = phi i32 [ %.pre58, %bb.ab ], [ %i.cq, %bb.ac ], [ %i.cq, %bb.ad ], [ %i.cq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i36 ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.dg = add nsw i32 %i.de, 1
  %i.dh = sext i32 %i.dg to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !143
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !138 ; 3 uses
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !105 ; 2 uses
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = ashr exact i64 %i.dn, 2                 ; 3 uses
  %i.dp = icmp ult i64 %i.do, %i.dh
  br i1 %i.dp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37
  %i.dq = sub nuw nsw i64 %i.dh, %i.do
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr %i.dj, i64 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.af:                                            ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit37
  %i.dr = icmp ugt i64 %i.do, %i.dh
  br i1 %i.dr, label %bb.ag, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.ag:                                            ; preds = %bb.af
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dh ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.dj, %i.ds
  br i1 %.not.i.i38, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ag
  store ptr %i.ds, ptr %i.di, align 8, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !104
  %i.dw = sext i32 %i.dv to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4, !tbaa !143
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !138 ; 3 uses
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !105 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 2                 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.dw
  br i1 %i.ee, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.ef = sub nuw nsw i64 %i.dw, %i.ed
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr %i.dy, i64 noundef %i.ef, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.eg = icmp ugt i64 %i.ed, %i.dw
  br i1 %i.eg, label %bb.aj, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41

bb.aj:                                            ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.dy, %i.eh
  br i1 %.not.i.i39, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i40

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i40:      ; preds = %bb.aj
  store ptr %i.eh, ptr %i.dx, align 8, !tbaa !138
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41:          ; preds = %bb.ah, %bb.ai, %bb.aj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ej = load i32, ptr %i.bk, align 4, !tbaa !97
  %i.ek = sext i32 %i.ej to i64                   ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !137 ; 2 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !52 ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2                 ; 3 uses
  %i.es = icmp ult i64 %i.er, %i.ek
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41
  %i.et = sub nuw nsw i64 %i.ek, %i.er
  call void @_ZNSt6vectorIiN8LightGBM6Common18AlignmentAllocatorIiLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, i64 noundef %i.et)
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit41
  %i.eu = icmp ugt i64 %i.er, %i.ek
  br i1 %i.eu, label %bb.am, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

bb.am:                                            ; preds = %bb.al
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ek ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.em, %i.ev
  br i1 %.not.i.i42, label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ev, ptr %i.el, align 8, !tbaa !137
  br label %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit

_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit: ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.z, %bb.y, %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !50 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !139 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.ez, %i.ex
  br i1 %.not.i.i44, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !139
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit: ; preds = %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit, %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.fa = phi ptr [ %i.ez, %_ZN8LightGBM23ParallelPartitionRunnerIiLb0EE6ReSizeEi.exit ], [ %i.ex, %_ZSt8_DestroyIPN8LightGBM6RandomES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.fc = load i32, ptr %i.bk, align 4, !tbaa !97 ; 3 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !49 ; 3 uses
  %i.fe = add i32 %i.fc, -1
  %i.ff = add i32 %i.fe, %i.fd
  %i.fg = sdiv i32 %i.ff, %i.fd
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.pre59 = load ptr, ptr %i.fi, align 8, !tbaa !51
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit
  %i.fj = phi i32 [ %i.fd, %.lr.ph ], [ %i.ha, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.fk = phi i32 [ %i.fc, %.lr.ph ], [ %i.hb, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.fl = phi ptr [ %i.ex, %.lr.ph ], [ %i.hc, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 8 uses
  %i.fm = phi ptr [ %.pre59, %.lr.ph ], [ %i.hd, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 5 uses
  %i.fn = phi ptr [ %i.fa, %.lr.ph ], [ %i.he, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 3 uses
  %.02756 = phi i32 [ 0, %.lr.ph ], [ %i.hf, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ] ; 2 uses
  %i.fo = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 348
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !140
  %i.fr = add nsw i32 %i.fq, %.02756              ; 2 uses
  %.not.i = icmp eq ptr %i.fn, %i.fm
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.fr, ptr %i.fn, align 4, !tbaa !142
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  store ptr %i.fs, ptr %i.ey, align 8, !tbaa !139
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ft = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fu = ptrtoint ptr %i.fl to i64               ; 4 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775804
  br i1 %i.fw, label %bb.ar, label %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aq
  %i.fx = ashr exact i64 %i.fv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 2305843009213693951)
  %i.gb = select i1 %i.fz, i64 2305843009213693951, i64 %i.ga ; 3 uses
  %.not.i.i.i45 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i45)
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %i.gd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #28 ; 9 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  store i32 %i.fr, ptr %i.ge, align 4, !tbaa !142
  %.not10.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gf = ptrtoaddr ptr %i.gd to i64
  %i.gg = add i64 %i.ft, -4
  %i.gh = sub i64 %i.gg, %i.fu                    ; 2 uses
  %i.gi = lshr i64 %i.gh, 2
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gh, 28
  %i.gk = sub i64 %i.fu, %i.gf
  %diff.check = icmp ugt i64 %i.gk, -32
  %or.cond111 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond111, label %.lr.ph.i.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gj, 9223372036854775800     ; 3 uses
  %i.gl = shl i64 %n.vec, 2                       ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gd, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.fl, i64 %i.gl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.go = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gd, i64 %i.go ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.fl, i64 %i.go ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.gp = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep108, align 4, !tbaa !143, !alias.scope !226
  %wide.load109 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !143, !alias.scope !226
  %i.gq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !143, !alias.scope !225
  store <4 x i32> %wide.load109, ptr %i.gq, align 4, !tbaa !143, !alias.scope !225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i.preheader112

.lr.ph.i.i.i.i.i.preheader112:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gm, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader112 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader112 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.gs = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !143, !alias.scope !226
  store i32 %i.gs, ptr %.012.i.i.i.i.i, align 4, !tbaa !143, !alias.scope !225
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gt, %i.fm
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !223

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gd, %_ZNKSt6vectorIN8LightGBM6RandomESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gm, %middle.block ], [ %i.gu, %.lr.ph.i.i.i.i.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i33.i.i, label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  %i.gw = load ptr, ptr %i.fi, align 8, !tbaa !51
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.gy) #29
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32.i.i
  store ptr %i.gd, ptr %i.ew, align 8, !tbaa !50
  store ptr %i.gv, ptr %i.ey, align 8, !tbaa !139
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.gb ; 2 uses
  store ptr %i.gz, ptr %i.fi, align 8, !tbaa !51
  %.pre60 = load i32, ptr %i.bk, align 4, !tbaa !97
  %.pre61 = load i32, ptr %i.fb, align 4, !tbaa !49
  br label %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit

_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit: ; preds = %bb.ap, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ha = phi i32 [ %i.fj, %bb.ap ], [ %.pre61, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.hb = phi i32 [ %i.fk, %bb.ap ], [ %.pre60, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.hc = phi ptr [ %i.fl, %bb.ap ], [ %i.gd, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.hd = phi ptr [ %i.fm, %bb.ap ], [ %i.gz, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.he = phi ptr [ %i.fs, %bb.ap ], [ %i.gv, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.hf = add nuw nsw i32 %.02756, 1              ; 2 uses
  %i.hg = add i32 %i.hb, -1
  %i.hh = add i32 %i.hg, %i.ha
  %i.hi = sdiv i32 %i.hh, %i.ha
  %i.hj = icmp slt i32 %i.hf, %i.hi
  br i1 %i.hj, label %bb.ao, label %._crit_edge, !llvm.loop !224

._crit_edge:                                      ; preds = %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit
  %.lcssa54 = phi i32 [ %i.fc, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE5clearEv.exit ], [ %i.hb, %_ZNSt6vectorIN8LightGBM6RandomESaIS1_EE12emplace_backIJiEEERS1_DpOT_.exit ]
  %i.hk = load i32, ptr %i.bi, align 8, !tbaa !109
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = sitofp i32 %.lcssa54 to double
  %i.hn = fdiv double %i.hl, %i.hm
  %i.ho = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 344
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !135
  %i.hr = sitofp i32 %i.hq to double
  %i.hs = fdiv double %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i8 0, ptr %i.ht, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.hu, ptr %3, align 8, !tbaa !13
  store i32 1633973603, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4, ptr %i.hv, align 8, !tbaa !16
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 0, ptr %i.hw, align 4, !tbaa !17
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 264
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !16
  %i.hz = icmp eq i64 %i.hy, 4
  br i1 %i.hz, label %bb.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.at:                                            ; preds = %._crit_edge
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 256
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !18
  %i.ic = load i32, ptr %i.ib, align 1
  %i.id = load i32, ptr %i.hu, align 1
  %i.ie = icmp ne i32 %i.ic, %i.id
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at, %._crit_edge
  %.not33 = phi i1 [ false, %._crit_edge ], [ %i.ig, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.ih = fcmp ugt double %i.hs, 5.000000e-01
  %or.cond34 = select i1 %.not33, i1 true, i1 %i.ih
  br i1 %or.cond34, label %.thread, label %bb.au

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !55
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 432
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !227
  %i.im = icmp slt i32 %i.il, 100
  br i1 %i.im, label %bb.av, label %.thread

bb.av:                                            ; preds = %bb.au
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !107
  %.not.i46 = icmp eq ptr %i.io, null
  %or.cond3 = or i1 %2, %.not.i46
  br i1 %or.cond3, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.ip = call noalias noundef nonnull dereferenceable(864) ptr @_Znwm(i64 noundef 864) #28 ; 4 uses
  %i.iq = load i32, ptr %i.bi, align 8, !tbaa !109
  invoke void @_ZN8LightGBM7DatasetC1Ei(ptr noundef nonnull align 8 dereferenceable(864) %i.ip, i32 noundef %i.iq)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ir = load ptr, ptr %i.in, align 8, !tbaa !107 ; 3 uses
  store ptr %i.ip, ptr %i.in, align 8, !tbaa !107
  %.not.i.i47 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i47, label %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i: ; preds = %bb.ax
  call void @_ZN8LightGBM7DatasetD1Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %i.ir) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef 864) #29
  %.pre62 = load ptr, ptr %i.in, align 8, !tbaa !107
  br label %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit

_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.ax, %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i
  %i.is = phi ptr [ %i.ip, %bb.ax ], [ %.pre62, %_ZNKSt14default_deleteIN8LightGBM7DatasetEEclEPS1_.exit.i.i ]
  %i.it = load ptr, ptr %i.ii, align 8, !tbaa !55
  call void @_ZN8LightGBM7Dataset21CopyFeatureMapperFromEPKS0_(ptr noundef nonnull align 8 dereferenceable(864) %i.is, ptr noundef %i.it)
  br label %bb.ay

.thread:                                          ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br label %bb.be

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN8LightGBM7DatasetESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.av
  store i8 1, ptr %i.ht, align 8, !tbaa !130
  call void (ptr, ...) @_ZN8LightGBM3Log5DebugEPKcz(ptr noundef nonnull @.str.20)
  %.pre63 = load i8, ptr %i.ht, align 8, !tbaa !130, !range !131
  %i.iu = trunc nuw i8 %.pre63 to i1
  store i8 1, ptr %i.x, align 1, !tbaa !99
  br i1 %i.iu, label %bb.az, label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.iv = load i32, ptr %i.bi, align 8, !tbaa !109
  %i.iw = load i32, ptr %i.bk, align 4, !tbaa !97
  %i.ix = icmp slt i32 %i.iv, %i.iw
  br i1 %i.ix, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  store i8 1, ptr %i.c, align 8, !tbaa !53
  br label %bb.be

bb.bb:                                            ; preds = %bb.aw
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 864) #29
  resume { ptr, i32 } %i.iy

bb.bc:                                            ; preds = %bb.f, %bb.g
end_hunk_1
