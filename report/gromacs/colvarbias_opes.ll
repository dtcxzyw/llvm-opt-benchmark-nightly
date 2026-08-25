Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarbias_opes?download=true
inline.NumInlined: 4208
inline.NumDeleted: 972
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_:bb.a
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %.noexc28

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.loopexit32

.noexc28:                                         ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 3 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !168
  %i.n = add i64 %i.g, -8
  %i.o = sub i64 %i.n, %i.h
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.q, i1 false), !tbaa !76
  br label %.loopexit32

.loopexit32:                                      ; preds = %.noexc28, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.l, %.noexc28 ]
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !167
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 403
  %i.t = load i8, ptr %i.s, align 1, !tbaa !181, !range !78, !noundef !79
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !186  ; 4 uses
  %i.x = icmp eq i64 %i.w, 1                      ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.loopexit32
  br i1 %i.x, label %._crit_edge41, label %bb.c

._crit_edge41:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !210
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 8, !tbaa !211
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !210 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !211 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 56
  %i.ag = shl i64 %i.w, 1
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %._crit_edge41, %bb.c
  %i.ai = phi ptr [ %.pre43, %._crit_edge41 ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %._crit_edge41 ], [ %i.aa, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 576
  %.not = icmp eq ptr %i.aj, %i.ai
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.am = phi ptr [ %i.at, %bb.e ], [ %i.ai, %bb.d ]
  %.02233 = phi i64 [ %i.ar, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %.02233
  %i.ao = invoke noundef double @_ZNK15colvarbias_opes14evaluateKernelERKNS_6kernelERKSt6vectorIdSaIdEERS5_S8_(ptr noundef nonnull align 8 dereferenceable(1898) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load double, ptr %i.a, align 8, !tbaa !76
  %i.aq = fadd double %i.ao, %i.ap
  store double %i.aq, ptr %i.a, align 8, !tbaa !76
  %i.ar = add nuw i64 %.02233, 1                  ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !210
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !211 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 56
  %i.ay = icmp ult i64 %i.ar, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.loopexit, !llvm.loop !610

bb.f:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.g:                                             ; preds = %.loopexit32
  br i1 %i.x, label %._crit_edge44, label %bb.h

._crit_edge44:                                    ; preds = %bb.g
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.pre46 = load ptr, ptr %.phi.trans.insert45, align 8, !tbaa !419
  %.phi.trans.insert47 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.pre48 = load ptr, ptr %.phi.trans.insert47, align 8, !tbaa !417
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !419 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !417 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = shl i64 %i.w, 1
  %i.bj = icmp ult i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %._crit_edge44, %bb.h
  %i.bk = phi ptr [ %.pre48, %._crit_edge44 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bl = phi ptr [ %.pre46, %._crit_edge44 ], [ %i.bc, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.not38 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not38, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph35, %bb.k
  %i.bp = phi ptr [ %i.bk, %.lr.ph35 ], [ %i.bz, %bb.k ]
  %.02134 = phi i64 [ 0, %.lr.ph35 ], [ %i.bx, %bb.k ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.02134
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !17
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %i.br
  %i.bu = invoke noundef double @_ZNK15colvarbias_opes14evaluateKernelERKNS_6kernelERKSt6vectorIdSaIdEERS5_S8_(ptr noundef nonnull align 8 dereferenceable(1898) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bv = load double, ptr %i.a, align 8, !tbaa !76
  %i.bw = fadd double %i.bu, %i.bv
  store double %i.bw, ptr %i.a, align 8, !tbaa !76
  %i.bx = add nuw i64 %.02134, 1                  ; 2 uses
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !419
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !417 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  %i.ce = icmp ult i64 %i.bx, %i.cd
  br i1 %i.ce, label %bb.j, label %.loopexit, !llvm.loop !611

bb.l:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.sink.split:                             ; preds = %bb.h, %bb.c
  %_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_.omp_outlined.104.sink = phi ptr [ @_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_.omp_outlined, %bb.c ], [ @_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_.omp_outlined.104, %bb.h ]
  %i.cg = trunc i64 %i.w to i32
  tail call void @__kmpc_push_num_threads(ptr nonnull @3, i32 %i.b, i32 %i.cg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @3, i32 5, ptr nonnull %_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_.omp_outlined.104.sink, ptr nonnull %2, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %1, ptr nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.k, %.loopexit.sink.split, %bb.d, %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 8 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !205
  %i.cj = load double, ptr %i.a, align 8, !tbaa !76
  %i.ck = fdiv double %i.cj, %i.ci                ; 2 uses
  store double %i.ck, ptr %i.a, align 8, !tbaa !76
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !14  ; 2 uses
  %.not39 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not39, label %._crit_edge, label %.lr.ph37

.lr.ph37:                                         ; preds = %.loopexit
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = ashr exact i64 %i.cp, 3                 ; 6 uses
  %i.cr = load ptr, ptr %2, align 8, !tbaa !82    ; 8 uses
  %min.iters.check = icmp ult i64 %i.cq, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph37
  %scevgep = getelementptr i8, ptr %i.cr, i64 %i.cp
  %scevgep60 = getelementptr inbounds nuw i8, ptr %0, i64 544
  %bound0 = icmp ult ptr %i.cr, %scevgep60
  %bound1 = icmp ult ptr %i.ch, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cq, -2                      ; 3 uses
  %4 = load double, ptr %i.ch, align 8, !tbaa !205, !alias.scope !612
  %broadcast.splatinsert = insertelement <2 x double> poison, double %4, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cs, align 8, !tbaa !76, !alias.scope !615, !noalias !612
  %i.ct = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ct, ptr %i.cs, align 8, !tbaa !76, !alias.scope !615, !noalias !612
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph37, %middle.block
  %.036.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph37 ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cv = sub nsw i64 %i.cq, %.036.ph
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.036.prol = phi i64 [ %i.da, %scalar.ph.prol ], [ %.036.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = load double, ptr %i.ch, align 8, !tbaa !205
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.036.prol ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !76
  %i.cz = fdiv double %i.cy, %i.cw
  store double %i.cz, ptr %i.cx, align 8, !tbaa !76
  %i.da = add nuw i64 %.036.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !618

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.036.unr = phi i64 [ %.036.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = sub nsw i64 %.036.ph, %i.cq
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre49 = load double, ptr %i.a, align 8, !tbaa !76
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %i.dd = phi double [ %.pre49, %._crit_edge.loopexit ], [ %i.ck, %.loopexit ]
  %i.de = load ptr, ptr %3, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !168
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dj) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret double %i.dd

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.036 = phi i64 [ %i.ed, %scalar.ph ], [ %.036.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dk = load double, ptr %i.ch, align 8, !tbaa !205
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.036 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !76
  %i.dn = fdiv double %i.dm, %i.dk
  store double %i.dn, ptr %i.dl, align 8, !tbaa !76
  %i.do = load double, ptr %i.ch, align 8, !tbaa !205
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.036
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !76
  %i.ds = fdiv double %i.dr, %i.do
  store double %i.ds, ptr %i.dq, align 8, !tbaa !76
  %i.dt = load double, ptr %i.ch, align 8, !tbaa !205
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.036
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !76
  %i.dx = fdiv double %i.dw, %i.dt
  store double %i.dx, ptr %i.dv, align 8, !tbaa !76
  %i.dy = load double, ptr %i.ch, align 8, !tbaa !205
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.036
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !76
  %i.ec = fdiv double %i.eb, %i.dy
  store double %i.ec, ptr %i.ea, align 8, !tbaa !76
  %i.ed = add nuw i64 %.036, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ed, %i.cq
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !620

bb.n:                                             ; preds = %bb.l, %bb.f
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.l ], [ %i.az, %bb.f ]
  %i.ee = load ptr, ptr %3, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIdSaIdEED2Ev.exit30, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !168
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit30

_ZNSt6vectorIdSaIdEED2Ev.exit30:                  ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK15colvarbias_opes21getProbAndDerivativesERKSt6vectorIdSaIdEERS2_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) #23 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.49", align 8    ; 7 uses
  %8 = alloca %"class.std::vector.49", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca [1 x ptr], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.l, 9223372036854775800
  br i1 %i.m, label %.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.invoke:                                          ; preds = %.loopexit43, %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i, label %bb.b

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit43

bb.b:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #36
          to label %.noexc34 unwind label %.loopexit.split-lp ; 4 uses

.noexc34:                                         ; preds = %bb.b
  store ptr %i.n, ptr %7, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !168
  %i.q = add i64 %i.j, -8
  %i.r = sub i64 %i.q, %i.k
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.t, i1 false), !tbaa !76
  br label %.loopexit43

.loopexit43:                                      ; preds = %.noexc34, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i
  %i.u = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.n, %.noexc34 ] ; 11 uses
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i ], [ %i.o, %.noexc34 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9    ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !14  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %.invoke, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i35

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i35: ; preds = %.loopexit43
  %.not.i.i.i.i36 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i36, label %_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i37, label %bb.c

_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_.exit.thread.i37: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i35
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #36
          to label %.noexc39 unwind label %.loopexit.split-lp ; 6 uses

.noexc39:                                         ; preds = %bb.c
  store ptr %i.ag, ptr %8, align 8, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !168
  store double 0.000000e+00, ptr %i.ag, align 8, !tbaa !76
  %i.aj = getelementptr i8, ptr %i.ag, i64 8      ; 3 uses
  %i.ak = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN15colvarbias_opes11update_opesEv:bb.a
  %.pre1776 = load i64, ptr %i.nq, align 8, !tbaa !189
  %.pre1777 = load double, ptr %i.h, align 8, !tbaa !76
  %.pre1778 = load double, ptr %i.i, align 8, !tbaa !76
  %.pre1779 = load double, ptr %i.nl, align 8, !tbaa !97
  br label %bb.fw

.thread1610:                                      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit965
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.xt

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit963, %bb.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit945, %bb.eh, %bb.du
  %.pn578 = phi { ptr, i32 } [ %i.vw, %bb.du ], [ %.pn573.pn.pn, %bb.fh ], [ %.pn569, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit963 ], [ %.pn563.pn.pn, %bb.eh ], [ %.pn559, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit945 ] ; 2 uses
  %.not.i.i.i966 = icmp eq ptr %.sroa.01463.0, null
  br i1 %.not.i.i.i966, label %_ZNSt6vectorIdSaIdEED2Ev.exit967, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.abh = ptrtoint ptr %.sroa.01463.0 to i64
  %i.abi = sub i64 %.sroa.12.0, %i.abh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01463.0, i64 noundef %i.abi) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit967

_ZNSt6vectorIdSaIdEED2Ev.exit967:                 ; preds = %bb.ds, %bb.dt, %bb.ft, %bb.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917, %bb.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895, %bb.cf, %bb.br
  %.pn578.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit895 ], [ %i.ov, %bb.br ], [ %.pn553.pn.pn, %bb.dd ], [ %.pn549, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917 ], [ %.pn543.pn.pn, %bb.cf ], [ %i.vu, %bb.ds ], [ %i.vv, %bb.dt ], [ %.pn578, %bb.ft ], [ %.pn578, %bb.fu ] ; 2 uses
  %.not.i.i.i968 = icmp eq ptr %.sroa.01476.0, null
  br i1 %.not.i.i.i968, label %_ZNSt6vectorIdSaIdEED2Ev.exit969, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit967
  %i.abj = ptrtoint ptr %.sroa.01476.0 to i64
  %i.abk = sub i64 %.sroa.121481.0, %i.abj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01476.0, i64 noundef %i.abk) #34
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit969

bb.fw:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit
  %i.abl = phi double [ %.pre1779, %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge ], [ %i.nm, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit ]
  %i.abm = phi double [ %.pre1778, %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge ], [ %i.np, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit ]
  %i.abn = phi double [ %.pre1777, %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge ], [ %i.no, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit ]
  %i.abo = phi i64 [ %.pre1776, %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge ], [ %i.nr, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit ]
  %.12 = phi i32 [ %.111510, %_ZNSt6vectorIdSaIdEED2Ev.exit965._crit_edge ], [ 0, %_ZNSt6vectorIN15colvarbias_opes6kernelESaIS1_EE5clearEv.exit ] ; 6 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !204
  %i.abr = add i64 %i.abq, %i.abo                 ; 2 uses
  store i64 %i.abr, ptr %i.abp, align 8, !tbaa !204
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !174
  %i.abu = fadd double %i.abn, %i.abt             ; 4 uses
  store double %i.abu, ptr %i.abs, align 8, !tbaa !174
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.abw = load double, ptr %i.abv, align 8, !tbaa !175
  %i.abx = fadd double %i.abm, %i.abw             ; 2 uses
  store double %i.abx, ptr %i.abv, align 8, !tbaa !175
  %i.aby = fadd double %i.abu, 1.000000e+00       ; 2 uses
  %i.abz = fmul double %i.aby, %i.aby
  %i.aca = fadd double %i.abx, 1.000000e+00
  %i.acb = fdiv double %i.abz, %i.aca             ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  store double %i.acb, ptr %i.acc, align 8, !tbaa !694
  %i.acd = uitofp i64 %i.abr to double            ; 2 uses
  %i.ace = fdiv double %i.abu, %i.acd
  %i.acf = call noundef double @log(double noundef %i.ace) #24
  %i.acg = fmul double %i.abl, %i.acf             ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %0, i64 552
  store double %i.acg, ptr %i.ach, align 8, !tbaa !695
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 1280
  store double %i.acb, ptr %i.acj, align 8, !tbaa !209
  store double %i.acg, ptr %i.aci, align 8, !tbaa !207
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 3 uses
  %i.acl = load i8, ptr %i.ack, align 8, !tbaa !163, !range !78, !noundef !79
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !76
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %.sink = phi double [ %i.acd, %bb.fx ], [ %i.abu, %bb.fw ]
  store double %.sink, ptr %i.mf, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !167 ; 2 uses
  %i.acq = load ptr, ptr %i.acn, align 8, !tbaa !82 ; 3 uses
  %i.acr = ptrtoint ptr %i.acp to i64             ; 2 uses
  %i.acs = ptrtoint ptr %i.acq to i64             ; 2 uses
  %i.act = sub i64 %i.acr, %i.acs                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %.not.i.i.i.i970 = icmp eq ptr %i.acp, %i.acq
  br i1 %.not.i.i.i.i970, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.acu = icmp ugt i64 %i.act, 9223372036854775800
  br i1 %i.acu, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !422

.noexc.i.i:                                       ; preds = %bb.fz
  call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.fz
  %i.acv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #36
  %.pre1780 = load ptr, ptr %i.acn, align 8, !tbaa !182 ; 2 uses
  %.pre1781 = load ptr, ptr %i.aco, align 8, !tbaa !182
  %.pre1804 = ptrtoint ptr %.pre1781 to i64
  %.pre1805 = ptrtoint ptr %.pre1780 to i64
  br label %bb.ga

bb.ga:                                            ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %bb.fy
  %.pre-phi1806 = phi i64 [ %.pre1805, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.acs, %bb.fy ]
  %.pre-phi = phi i64 [ %.pre1804, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.acr, %bb.fy ]
  %i.acw = phi ptr [ %.pre1780, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ %i.acq, %bb.fy ] ; 12 uses
  %i.acx = phi ptr [ %i.acv, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.fy ] ; 16 uses
  store ptr %i.acx, ptr %24, align 8, !tbaa !82
  %i.acy = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store ptr %i.acx, ptr %i.acy, align 8, !tbaa !167
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.act
  %i.ada = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store ptr %i.acz, ptr %i.ada, align 8, !tbaa !168
  %i.adb = sub i64 %.pre-phi, %.pre-phi1806       ; 4 uses
  %i.adc = icmp sgt i64 %i.adb, 8
  br i1 %i.adc, label %bb.gb, label %bb.gc, !prof !423

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.acx, ptr align 8 %i.acw, i64 %i.adb, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.gc:                                            ; preds = %bb.ga
  %i.add = icmp eq i64 %i.adb, 8
  br i1 %i.add, label %bb.gd, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.gd:                                            ; preds = %bb.gc
  %i.ade = load double, ptr %i.acw, align 8, !tbaa !76
  store double %i.ade, ptr %i.acx, align 8, !tbaa !76
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.gb, %bb.gc, %bb.gd
  %i.adf = getelementptr inbounds i8, ptr %i.acx, i64 %i.adb
  store ptr %i.adf, ptr %i.acy, align 8, !tbaa !167
  %i.adg = load i8, ptr %i.ah, align 8, !tbaa !169, !range !78, !noundef !79
  %i.adh = trunc nuw i8 %i.adg to i1
  br i1 %i.adh, label %bb.ge, label %.thread1514

bb.ge:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  %i.adi = load i8, ptr %i.ack, align 8, !tbaa !163, !range !78, !noundef !79
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.adl = load double, ptr %i.adk, align 8, !tbaa !161
  br label %bb.gg

bb.gg:                                            ; preds = %bb.ge, %bb.gf
  %i.adm = phi double [ %i.adl, %bb.gf ], [ 1.000000e+00, %bb.ge ] ; 6 uses
  %i.adn = load i64, ptr %i.abp, align 8, !tbaa !204
  %i.ado = load i64, ptr %i.nq, align 8, !tbaa !189
  %i.adp = add i64 %i.ado, 1
  %i.adq = icmp eq i64 %i.adn, %i.adp
  br i1 %i.adq, label %.preheader1637, label %..loopexit1635_crit_edge

..loopexit1635_crit_edge:                         ; preds = %bb.gg
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre1782 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !9 ; 2 uses
  %.phi.trans.insert1783 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre1784 = load ptr, ptr %.phi.trans.insert1783, align 8, !tbaa !14 ; 2 uses
  %.pre1807 = ptrtoint ptr %.pre1782 to i64
  %.pre1809 = ptrtoint ptr %.pre1784 to i64
  br label %.loopexit1635

.preheader1637:                                   ; preds = %bb.gg
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !9 ; 6 uses
  %i.adu = load ptr, ptr %i.adr, align 8, !tbaa !14 ; 6 uses
  %i.adv = ptrtoint ptr %i.adt to i64             ; 5 uses
  %i.adw = ptrtoint ptr %i.adu to i64             ; 5 uses
  %i.adx = sub i64 %i.adv, %i.adw                 ; 7 uses
  %i.ady = ashr exact i64 %i.adx, 3               ; 14 uses
  %.not1734 = icmp eq ptr %i.adt, %i.adu
  br i1 %.not1734, label %._crit_edge1673, label %.lr.ph1670

.lr.ph1670:                                       ; preds = %.preheader1637
  %i.adz = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 7 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !82 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ady, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1670
  %scevgep = getelementptr i8, ptr %i.aeb, i64 %i.adx
  %scevgep2463 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %bound0 = icmp ult ptr %i.aeb, %scevgep2463
  %bound1 = icmp ult ptr %i.adz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ady, -4                     ; 3 uses
  %89 = load double, ptr %i.adz, align 8, !tbaa !161, !alias.scope !696
  %broadcast.splatinsert = insertelement <2 x double> poison, double %89, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %index ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aec, align 8, !tbaa !76, !alias.scope !699, !noalias !696
  %wide.load2464 = load <2 x double>, ptr %i.aed, align 8, !tbaa !76, !alias.scope !699, !noalias !696
  %i.aee = fmul <2 x double> %broadcast.splat, %wide.load
  %i.aef = fmul <2 x double> %broadcast.splat, %wide.load2464
  store <2 x double> %i.aee, ptr %i.aec, align 8, !tbaa !76, !alias.scope !699, !noalias !696
  store <2 x double> %i.aef, ptr %i.aed, align 8, !tbaa !76, !alias.scope !699, !noalias !696
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aeg = icmp eq i64 %index.next, %n.vec
  br i1 %i.aeg, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ady, %n.vec
  br i1 %cmp.n, label %.lr.ph1672, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1670, %middle.block
  %.05241669.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph1670 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ady, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05241669.prol = phi i64 [ %i.ael, %scalar.ph.prol ], [ %.05241669.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aeh = load double, ptr %i.adz, align 8, !tbaa !161
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %.05241669.prol ; 2 uses
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !76
  %i.aek = fmul double %i.aeh, %i.aej
  store double %i.aek, ptr %i.aei, align 8, !tbaa !76
  %i.ael = add nuw i64 %.05241669.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !702

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05241669.unr = phi i64 [ %.05241669.ph, %scalar.ph.preheader ], [ %i.ael, %scalar.ph.prol ]
  %i.aem = sub nsw i64 %.05241669.ph, %i.ady
  %i.aen = icmp ugt i64 %i.aem, -4
  br i1 %i.aen, label %.lr.ph1672, label %scalar.ph

.lr.ph1672:                                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !82 ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.aer = load i64, ptr %i.aeq, align 8, !tbaa !683
  %i.aes = sitofp i64 %i.aer to double            ; 3 uses
  %i.aet = icmp eq i64 %i.adx, 8
  br i1 %i.aet, label %.epil.preheader, label %.lr.ph1672.new

.lr.ph1672.new:                                   ; preds = %.lr.ph1672
  %unroll_iter = and i64 %i.ady, -2
  br label %bb.gh

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05241669 = phi i64 [ %i.afn, %scalar.ph ], [ %.05241669.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aeu = load double, ptr %i.adz, align 8, !tbaa !161
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %.05241669 ; 2 uses
  %i.aew = load double, ptr %i.aev, align 8, !tbaa !76
  %i.aex = fmul double %i.aeu, %i.aew
  store double %i.aex, ptr %i.aev, align 8, !tbaa !76
  %i.aey = load double, ptr %i.adz, align 8, !tbaa !161
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %.05241669
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 8 ; 2 uses
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !76
  %i.afc = fmul double %i.aey, %i.afb
  store double %i.afc, ptr %i.afa, align 8, !tbaa !76
  %i.afd = load double, ptr %i.adz, align 8, !tbaa !161
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %.05241669
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16 ; 2 uses
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !76
  %i.afh = fmul double %i.afd, %i.afg
  store double %i.afh, ptr %i.aff, align 8, !tbaa !76
  %i.afi = load double, ptr %i.adz, align 8, !tbaa !161
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.aeb, i64 %.05241669
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 24 ; 2 uses
  %i.afl = load double, ptr %i.afk, align 8, !tbaa !76
  %i.afm = fmul double %i.afi, %i.afl
  store double %i.afm, ptr %i.afk, align 8, !tbaa !76
  %i.afn = add nuw i64 %.05241669, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.afn, %i.ady
  br i1 %exitcond.not.3, label %.lr.ph1672, label %scalar.ph, !llvm.loop !703

._crit_edge1673:                                  ; preds = %.preheader1637
  %i.afo = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !167
  %i.afr = load ptr, ptr %i.afo, align 8, !tbaa !82
  %i.afs = icmp eq ptr %i.afq, %i.afr
  br i1 %i.afs, label %bb.gi, label %.thread1514

._crit_edge1673.thread.unr-lcssa:                 ; preds = %bb.gh
  %i.aft = and i64 %i.adx, 8
  %lcmp.mod2584.not = icmp eq i64 %i.aft, 0
  br i1 %lcmp.mod2584.not, label %._crit_edge1673.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1673.thread.unr-lcssa, %.lr.ph1672
  %.05251671.epil.init = phi i64 [ 0, %.lr.ph1672 ], [ %i.ahk, %._crit_edge1673.thread.unr-lcssa ] ; 2 uses
  %lcmp.mod2585 = trunc i64 %i.ady to i1
  call void @llvm.assume(i1 %lcmp.mod2585)
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %.05251671.epil.init
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !76
  %i.afw = fdiv double %i.afv, %i.aes
  %i.afx = fdiv double %i.afw, %i.adm
  %i.afy = call double @sqrt(double noundef %i.afx) #24
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %.05251671.epil.init
  store double %i.afy, ptr %i.afz, align 8, !tbaa !76
  br label %._crit_edge1673.thread

._crit_edge1673.thread:                           ; preds = %._crit_edge1673.thread.unr-lcssa, %.epil.preheader
  %i.aga = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.agb = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !167
  %i.agd = load ptr, ptr %i.aga, align 8, !tbaa !82 ; 7 uses
  %i.age = icmp eq ptr %i.agc, %i.agd
  br i1 %i.age, label %.lr.ph1680.preheader, label %.lr.ph1675.preheader

.lr.ph1675.preheader:                             ; preds = %._crit_edge1673.thread
  %min.iters.check2472 = icmp ult i64 %i.ady, 4
  br i1 %min.iters.check2472, label %.lr.ph1675.preheader2580, label %vector.memcheck2465

vector.memcheck2465:                              ; preds = %.lr.ph1675.preheader
  %scevgep2466 = getelementptr i8, ptr %i.acw, i64 %i.adx
  %scevgep2467 = getelementptr i8, ptr %i.agd, i64 %i.adx
  %bound02468 = icmp ult ptr %i.acw, %scevgep2467
  %bound12469 = icmp ult ptr %i.agd, %scevgep2466
  %found.conflict2470 = and i1 %bound02468, %bound12469
  br i1 %found.conflict2470, label %.lr.ph1675.preheader2580, label %vector.ph2473

vector.ph2473:                                    ; preds = %vector.memcheck2465
  %n.vec2474 = and i64 %i.ady, -4                 ; 3 uses
  br label %vector.body2475

vector.body2475:                                  ; preds = %vector.body2475, %vector.ph2473
  %index2476 = phi i64 [ 0, %vector.ph2473 ], [ %index.next2481, %vector.body2475 ] ; 3 uses
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index2476 ; 3 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %index2476 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 16 ; 2 uses
  %wide.load2477 = load <2 x double>, ptr %i.agf, align 8, !tbaa !76, !alias.scope !704, !noalias !707 ; 2 uses
  %wide.load2478 = load <2 x double>, ptr %i.agh, align 8, !tbaa !76, !alias.scope !704, !noalias !707 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %wide.load2479 = load <2 x double>, ptr %i.agg, align 8, !tbaa !76, !alias.scope !707 ; 2 uses
  %wide.load2480 = load <2 x double>, ptr %i.agi, align 8, !tbaa !76, !alias.scope !707 ; 2 uses
  %i.agj = fcmp olt <2 x double> %wide.load2477, %wide.load2479
  %i.agk = fcmp olt <2 x double> %wide.load2478, %wide.load2480
  %i.agl = select <2 x i1> %i.agj, <2 x double> %wide.load2479, <2 x double> %wide.load2477
  %i.agm = select <2 x i1> %i.agk, <2 x double> %wide.load2480, <2 x double> %wide.load2478
  store <2 x double> %i.agl, ptr %i.agf, align 8, !tbaa !76, !alias.scope !704, !noalias !707
  store <2 x double> %i.agm, ptr %i.agh, align 8, !tbaa !76, !alias.scope !704, !noalias !707
  %index.next2481 = add nuw i64 %index2476, 4     ; 2 uses
  %i.agn = icmp eq i64 %index.next2481, %n.vec2474
  br i1 %i.agn, label %middle.block2482, label %vector.body2475, !llvm.loop !709

middle.block2482:                                 ; preds = %vector.body2475
  %cmp.n2483 = icmp eq i64 %i.ady, %n.vec2474
  br i1 %cmp.n2483, label %.loopexit1635, label %.lr.ph1675.preheader2580

.lr.ph1675.preheader2580:                         ; preds = %vector.memcheck2465, %.lr.ph1675.preheader, %middle.block2482
  %.05261674.ph = phi i64 [ 0, %vector.memcheck2465 ], [ 0, %.lr.ph1675.preheader ], [ %n.vec2474, %middle.block2482 ] ; 5 uses
  %.neg = or disjoint i64 %.05261674.ph, 1
  %i.ago = and i64 %i.adx, 8
  %lcmp.mod2587.not = icmp eq i64 %i.ago, 0
  br i1 %lcmp.mod2587.not, label %.lr.ph1675.prol.loopexit, label %.lr.ph1675.prol

.lr.ph1675.prol:                                  ; preds = %.lr.ph1675.preheader2580
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %.05261674.ph ; 2 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %.05261674.ph
  %i.agr = load double, ptr %i.agp, align 8, !tbaa !76 ; 2 uses
  %i.ags = load double, ptr %i.agq, align 8, !tbaa !76 ; 2 uses
  %i.agt = fcmp olt double %i.agr, %i.ags
  %i.agu = select i1 %i.agt, double %i.ags, double %i.agr
  store double %i.agu, ptr %i.agp, align 8, !tbaa !76
  %i.agv = or disjoint i64 %.05261674.ph, 1
  br label %.lr.ph1675.prol.loopexit

.lr.ph1675.prol.loopexit:                         ; preds = %.lr.ph1675.prol, %.lr.ph1675.preheader2580
  %.05261674.unr = phi i64 [ %.05261674.ph, %.lr.ph1675.preheader2580 ], [ %i.agv, %.lr.ph1675.prol ]
  %i.agw = icmp eq i64 %i.ady, %.neg
  br i1 %i.agw, label %.loopexit1635, label %.lr.ph1675

bb.gh:                                            ; preds = %bb.gh, %.lr.ph1672.new
  %.05251671 = phi i64 [ 0, %.lr.ph1672.new ], [ %i.ahk, %bb.gh ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1672.new ], [ %niter.next.1, %bb.gh ]
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %.05251671
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !76
  %i.agz = fdiv double %i.agy, %i.aes
  %i.aha = fdiv double %i.agz, %i.adm
  %i.ahb = call double @sqrt(double noundef %i.aha) #24
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %.05251671
  store double %i.ahb, ptr %i.ahc, align 8, !tbaa !76
  %i.ahd = or disjoint i64 %.05251671, 1          ; 2 uses
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.aep, i64 %i.ahd
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !76
  %i.ahg = fdiv double %i.ahf, %i.aes
  %i.ahh = fdiv double %i.ahg, %i.adm
  %i.ahi = call double @sqrt(double noundef %i.ahh) #24
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %i.ahd
  store double %i.ahi, ptr %i.ahj, align 8, !tbaa !76
  %i.ahk = add nuw i64 %.05251671, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1673.thread.unr-lcssa, label %bb.gh, !llvm.loop !710

bb.gi:                                            ; preds = %._crit_edge1673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  br label %._crit_edge1681

.lr.ph1680.preheader:                             ; preds = %._crit_edge1673.thread
end_hunk_1
