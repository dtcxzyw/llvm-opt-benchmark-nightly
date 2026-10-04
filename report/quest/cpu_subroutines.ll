Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/cpu_subroutines?download=true
inline.NumInlined: 18129
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 1435
loop-unroll.NumUnrolled: 1524
begin_hunk_0_@_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE:bb.a
  %.pre3 = load ptr, ptr %i.r, align 8, !tbaa !45
  %.pre4 = ptrtoint ptr %.pre3 to i64
  %.pre5 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi6 = phi i64 [ %.pre5, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.v, %bb.a ]
  %.pre-phi = phi i64 [ %.pre4, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.u, %bb.a ]
  %i.z = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.t, %bb.a ] ; 2 uses
  %i.aa = phi ptr [ %i.y, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.aa, ptr %2, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !58
  %i.ae = sub i64 %.pre-phi, %.pre-phi6           ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 4
  br i1 %i.af, label %bb.d, label %bb.e, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp eq i64 %i.ae, 4
  br i1 %i.ag, label %bb.f, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.z, align 4, !tbaa !28
  store i32 %i.ah, ptr %i.aa, align 4, !tbaa !28
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ae
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !48
  %i.aj = invoke noundef i64 @_Z15util_getBitMaskSt6vectorIiSaIiEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.ak = load ptr, ptr %2, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  store i64 %i.aj, ptr %i.f, align 8, !tbaa !25
  %i.ap = load i32, ptr %0, align 8, !tbaa !27
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.m

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %2, align 8, !tbaa !49    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  resume { ptr, i32 } %i.aq

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.h)
  store i32 %i.h, ptr %i.g, align 4, !tbaa !28
  call void @_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE.omp_outlined(ptr nonnull %i.g, ptr nonnull poison, ptr %i.c, ptr %i.e, ptr %i.d, ptr %i.f, ptr %0, ptr %i.a, ptr %i.b) #5
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.h)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.aw = load double, ptr %i.a, align 8, !tbaa !71
  %i.ax = load double, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.fca.0.insert = insertvalue { double, double } poison, double %i.aw, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ax, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 12 uses
  %i.f = alloca double, align 8                   ; 12 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !71
  %i.k = load i32, ptr %0, align 4, !tbaa !28     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25
  %i.m = call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j) ; 6 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !25
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %.not24 = icmp sgt i64 %i.n, %i.m
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = load i64, ptr %3, align 8, !tbaa !25     ; 5 uses
  %i.p = load i64, ptr %4, align 8, !tbaa !25     ; 3 uses
  %i.q = add nsw i64 %i.p, 1                      ; 7 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !25     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22   ; 7 uses
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.o ; 5 uses
  %i.v = add i64 %i.m, 1
  %i.w = sub i64 %i.v, %i.n                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 26
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.x = sub i64 %i.m, %i.n                       ; 2 uses
  %i.y = shl i64 %i.p, 4                          ; 2 uses
  %i.z = add i64 %i.y, 16                         ; 4 uses
  %i.aa = sub nuw nsw i64 -16, %i.y               ; 2 uses
  %i.ab = mul i64 %i.n, %i.q
  %i.ac = shl i64 %i.ab, 4                        ; 2 uses
  %i.ad = shl i64 %i.o, 4                         ; 2 uses
  %i.ae = getelementptr i8, ptr %i.t, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ad ; 4 uses
  %i.af = icmp slt i64 %i.z, 0                    ; 2 uses
  %i.ag = select i1 %i.af, i64 %i.aa, i64 %i.z
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.x) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ah = sub i64 0, %mul.result
  %i.ai = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.aj = getelementptr i8, ptr %scevgep, i64 %i.ah
  %i.ak = icmp ult ptr %i.ai, %scevgep
  %i.al = icmp ugt ptr %i.aj, %scevgep
  %i.am = select i1 %i.af, i1 %i.al, i1 %i.ak
  %i.an = or i1 %i.am, %mul.overflow
  %i.ao = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ad
  %scevgep28 = getelementptr i8, ptr %i.ap, i64 8 ; 4 uses
  %i.aq = icmp slt i64 %i.z, 0                    ; 2 uses
  %i.ar = select i1 %i.aq, i64 %i.aa, i64 %i.z
  %mul29 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ar, i64 %i.x) ; 2 uses
  %mul.result30 = extractvalue { i64, i1 } %mul29, 0 ; 2 uses
  %mul.overflow31 = extractvalue { i64, i1 } %mul29, 1
  %i.as = sub i64 0, %mul.result30
  %i.at = getelementptr i8, ptr %scevgep28, i64 %mul.result30
  %i.au = getelementptr i8, ptr %scevgep28, i64 %i.as
  %i.av = icmp ult ptr %i.at, %scevgep28
  %i.aw = icmp ugt ptr %i.au, %scevgep28
  %i.ax = select i1 %i.aq, i1 %i.aw, i1 %i.av
  %i.ay = or i1 %i.ax, %mul.overflow31
  %i.az = or i1 %i.an, %i.ay
  br i1 %i.az, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep32 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %scevgep33 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.ba = mul i64 %i.n, %i.q
  %i.bb = shl i64 %i.ba, 4                        ; 2 uses
  %i.bc = sub i64 %i.m, %i.n
  %i.bd = shl i64 %i.p, 4
  %i.be = add i64 %i.bd, 16
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = shl i64 %i.o, 4                         ; 2 uses
  %9 = add i64 %i.bb, %i.bf
  %10 = add i64 %9, %i.bg                         ; 2 uses
  %i.bh = getelementptr i8, ptr %i.t, i64 %10
  %scevgep34 = getelementptr i8, ptr %i.bh, i64 8 ; 4 uses
  %11 = add i64 %i.bb, %i.bg                      ; 2 uses
  %i.bi = getelementptr i8, ptr %i.t, i64 %11
  %scevgep35 = getelementptr i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bj = icmp ult ptr %scevgep34, %scevgep35
  %umin = select i1 %i.bj, ptr %scevgep34, ptr %scevgep35 ; 2 uses
  %i.bk = icmp ugt ptr %scevgep34, %scevgep35
  %umax = select i1 %i.bk, ptr %scevgep34, ptr %scevgep35
  %scevgep37 = getelementptr i8, ptr %umax, i64 8 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.t, i64 %10     ; 4 uses
  %scevgep38 = getelementptr i8, ptr %i.t, i64 %11 ; 4 uses
  %i.bm = icmp ult ptr %i.bl, %scevgep38
  %umin39 = select i1 %i.bm, ptr %i.bl, ptr %scevgep38 ; 2 uses
  %i.bn = icmp ugt ptr %i.bl, %scevgep38
  %umax40 = select i1 %i.bn, ptr %i.bl, ptr %scevgep38
  %scevgep41 = getelementptr i8, ptr %umax40, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep33
  %bound1 = icmp ult ptr %i.f, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.e, %scevgep37
  %bound143 = icmp ult ptr %umin, %scevgep32
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %i.e, %scevgep41
  %bound146 = icmp ult ptr %umin39, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  %bound049 = icmp ult ptr %i.f, %scevgep37
  %bound150 = icmp ult ptr %umin, %scevgep33
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound053 = icmp ult ptr %i.f, %scevgep41
  %bound154 = icmp ult ptr %umin39, %scevgep33
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  br i1 %conflict.rdx56, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.bo = add i64 %i.n, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat58 = shufflevector <2 x i64> %broadcast.splatinsert57, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <2 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat60 = shufflevector <2 x i64> %broadcast.splatinsert59, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat60, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi61 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi62 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dq, %vector.body ]
  %vec.phi63 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dr, %vector.body ]
  %i.bp = add i64 %i.n, %index                    ; 4 uses
  %i.bq = add i64 %i.bp, 1
  %i.br = add i64 %i.bp, 2
  %i.bs = add i64 %i.bp, 3
  %i.bt = mul nsw i64 %i.q, %i.bp
  %i.bu = mul nsw i64 %i.q, %i.bq
  %i.bv = mul nsw i64 %i.q, %i.br
  %i.bw = mul nsw i64 %i.q, %i.bs
  %i.bx = add nsw <2 x i64> %broadcast.splat, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.by = and <2 x i64> %broadcast.splat58, %i.bx
  %i.bz = and <2 x i64> %broadcast.splat58, %.reass
  %i.ca = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.by)
  %i.cb = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bz)
  %i.cc = trunc nuw nsw <2 x i64> %i.ca to <2 x i32>
  %i.cd = trunc nuw nsw <2 x i64> %i.cb to <2 x i32>
  %i.ce = shl nuw nsw <2 x i32> %i.cc, splat (i32 1)
  %i.cf = shl nuw nsw <2 x i32> %i.cd, splat (i32 1)
  %i.cg = and <2 x i32> %i.ce, splat (i32 2)
  %i.ch = and <2 x i32> %i.cf, splat (i32 2)
  %i.ci = sub nsw <2 x i32> splat (i32 1), %i.cg
  %i.cj = sub nsw <2 x i32> splat (i32 1), %i.ch
  %i.ck = getelementptr [16 x i8], ptr %i.u, i64 %i.bt ; 2 uses
  %i.cl = getelementptr [16 x i8], ptr %i.u, i64 %i.bu ; 2 uses
  %i.cm = getelementptr [16 x i8], ptr %i.u, i64 %i.bv ; 2 uses
  %i.cn = getelementptr [16 x i8], ptr %i.u, i64 %i.bw ; 2 uses
  %i.co = load double, ptr %i.ck, align 8, !tbaa !71, !alias.scope !1051
  %i.cp = load double, ptr %i.cl, align 8, !tbaa !71, !alias.scope !1051
  %i.cq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cp, i64 1
  %i.cs = load double, ptr %i.cm, align 8, !tbaa !71, !alias.scope !1051
  %i.ct = load double, ptr %i.cn, align 8, !tbaa !71, !alias.scope !1051
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = getelementptr i8, ptr %i.ck, i64 8
  %i.cx = getelementptr i8, ptr %i.cl, i64 8
  %i.cy = getelementptr i8, ptr %i.cm, i64 8
  %i.cz = getelementptr i8, ptr %i.cn, i64 8
  %i.da = load double, ptr %i.cw, align 8, !tbaa !71, !alias.scope !1052
  %i.db = load double, ptr %i.cx, align 8, !tbaa !71, !alias.scope !1052
  %i.dc = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.db, i64 1
  %i.de = load double, ptr %i.cy, align 8, !tbaa !71, !alias.scope !1052
  %i.df = load double, ptr %i.cz, align 8, !tbaa !71, !alias.scope !1052
  %i.dg = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dh = insertelement <2 x double> %i.dg, double %i.df, i64 1
  %i.di = sitofp fast <2 x i32> %i.ci to <2 x double> ; 2 uses
  %i.dj = sitofp fast <2 x i32> %i.cj to <2 x double> ; 2 uses
  %i.dk = fmul fast <2 x double> %i.cr, %i.di
  %i.dl = fmul fast <2 x double> %i.cv, %i.dj
  %i.dm = fmul fast <2 x double> %i.dd, %i.di
  %i.dn = fmul fast <2 x double> %i.dh, %i.dj
  %i.do = fadd fast <2 x double> %i.dk, %vec.phi  ; 2 uses
  %i.dp = fadd fast <2 x double> %i.dl, %vec.phi61 ; 2 uses
  %i.dq = fadd fast <2 x double> %i.dm, %vec.phi62 ; 2 uses
  %i.dr = fadd fast <2 x double> %i.dn, %vec.phi63 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1047

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %i.dp, %i.do
  %i.dt = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %bin.rdx64 = fadd fast <2 x double> %i.dr, %i.dq
  %i.du = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx64) ; 2 uses
  store double %i.dt, ptr %i.e, align 8, !tbaa !71, !alias.scope !1053, !noalias !1054
  store double %i.du, ptr %i.f, align 8, !tbaa !71, !alias.scope !1055, !noalias !1056
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %i.dv = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.025.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph ], [ %i.bo, %middle.block ]
  %.ph = phi <2 x double> [ zeroinitializer, %vector.memcheck ], [ zeroinitializer, %vector.scevcheck ], [ zeroinitializer, %.lr.ph ], [ %i.dw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.025 = phi i64 [ %i.ep, %scalar.ph ], [ %.025.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dx = phi <2 x double> [ %i.em, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.dy = mul nsw i64 %i.q, %.025
  %i.dz = add nsw i64 %i.o, %.025
  %i.ea = and i64 %i.r, %i.dz
  %i.eb = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ea)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = and i32 %i.ed, 2
  %i.ef = sub nsw i32 1, %i.ee
  %i.eg = getelementptr [16 x i8], ptr %i.u, i64 %i.dy
  %i.eh = sitofp fast i32 %i.ef to double
  %i.ei = load <2 x double>, ptr %i.eg, align 8, !tbaa !71
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul fast <2 x double> %i.ei, %i.ek
  %i.em = fadd fast <2 x double> %i.el, %i.dx     ; 3 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = extractelement <2 x double> %i.em, i64 1
  %i.ep = add i64 %.025, 1
  %exitcond.not = icmp eq i64 %.025, %i.m
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !1050

._crit_edge.loopexit:                             ; preds = %scalar.ph
  store double %i.en, ptr %i.e, align 8, !tbaa !71
  store double %i.eo, ptr %i.f, align 8, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.eq, align 8
  %i.er = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.er, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.es = load double, ptr %7, align 8, !tbaa !71
  %i.et = load double, ptr %i.e, align 8, !tbaa !71
  %i.eu = fadd fast double %i.et, %i.es
  store double %i.eu, ptr %7, align 8, !tbaa !71
  %i.ev = load double, ptr %8, align 8, !tbaa !71
  %i.ew = load double, ptr %i.f, align 8, !tbaa !71
  %i.ex = fadd fast double %i.ew, %i.ev
  store double %i.ex, ptr %8, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.ey = load double, ptr %i.e, align 8, !tbaa !71
  %i.ez = atomicrmw fadd ptr %7, double %i.ey monotonic, align 8 ; 0 uses
  %i.fa = load double, ptr %i.f, align 8, !tbaa !71
  %i.fb = atomicrmw fadd ptr %8, double %i.fa monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z34cpu_densmatr_calcExpecAnyTargZ_sub5QuregSt6vectorIiSaIiEE.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !71
  %i.h = load double, ptr %i.a, align 8, !tbaa !71
  %i.i = fadd fast double %i.h, %i.g
  store double %i.i, ptr %i.b, align 8, !tbaa !71
  %i.j = load double, ptr %i.f, align 8, !tbaa !71
  %i.k = load double, ptr %i.d, align 8, !tbaa !71
  %i.l = fadd fast double %i.k, %i.j
  store double %i.l, ptr %i.f, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_Z43cpu_statevec_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined:bb.a
  %i.bv = fadd fast double %i.bu, %i.bt
  store double %i.bv, ptr %5, align 8, !tbaa !71
  %i.bw = load double, ptr %6, align 8, !tbaa !71
  %i.bx = load double, ptr %i.f, align 8, !tbaa !71
  %i.by = fadd fast double %i.bx, %i.bw
  store double %i.by, ptr %6, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bz = load double, ptr %i.e, align 8, !tbaa !71
  %i.ca = atomicrmw fadd ptr %5, double %i.bz monotonic, align 8 ; 0 uses
  %i.cb = load double, ptr %i.f, align 8, !tbaa !71
  %i.cc = atomicrmw fadd ptr %6, double %i.cb monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z43cpu_statevec_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !71
  %i.h = load double, ptr %i.a, align 8, !tbaa !71
  %i.i = fadd fast double %i.h, %i.g
  store double %i.i, ptr %i.b, align 8, !tbaa !71
  %i.j = load double, ptr %i.f, align 8, !tbaa !71
  %i.k = load double, ptr %i.d, align 8, !tbaa !71
  %i.l = fadd fast double %i.k, %i.j
  store double %i.l, ptr %i.f, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr { double, double } @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"class.std::complex", align 8      ; 4 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store double %2, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %3, ptr %i.h, align 8
  tail call void @_Z47assert_quregAndFullStateDiagMatrHaveSameDistrib5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEbb(double %2, double %3, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !83
  %i.k = and i64 %i.j, 4294967295
  %i.l = shl nuw i64 1, %i.k
  store i64 %i.l, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw i64 1, %i.o
  store i64 %i.p, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.q = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  store i64 %i.q, ptr %i.e, align 8, !tbaa !25
  %i.r = load i32, ptr %0, align 8, !tbaa !27
  %i.s = icmp ne i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.c, ptr %1, ptr %4, ptr %i.e, ptr %i.d, ptr %0, ptr %i.a, ptr %i.b) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = load double, ptr %i.a, align 8, !tbaa !71
  %i.x = load double, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.fca.0.insert = insertvalue { double, double } poison, double %i.w, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.x, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %9) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 15 uses
  %i.f = alloca double, align 8                   ; 15 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !71
  %i.k = load i32, ptr %0, align 4, !tbaa !28     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25
  %i.m = call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j) ; 9 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !25
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %.not25 = icmp sgt i64 %i.n, %i.m
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 9 uses
  %i.q = load double, ptr %4, align 8, !tbaa !71  ; 7 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !25     ; 3 uses
  %i.s = load i64, ptr %6, align 8, !tbaa !25     ; 3 uses
  %i.t = add nsw i64 %i.s, 1                      ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22   ; 6 uses
  %i.w = getelementptr [16 x i8], ptr %i.v, i64 %i.r ; 7 uses
  %i.x = add i64 %i.m, 1
  %i.y = sub i64 %i.x, %i.n                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 43
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.z = sub i64 %i.m, %i.n
  %i.aa = shl i64 %i.s, 4                         ; 2 uses
  %i.ab = add i64 %i.aa, 16                       ; 2 uses
  %i.ac = sub nuw nsw i64 -16, %i.aa
  %i.ad = mul i64 %i.n, %i.t
  %i.ae = add i64 %i.ad, %i.r
  %i.af = shl i64 %i.ae, 4
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %i.ag = icmp slt i64 %i.ab, 0                   ; 2 uses
  %i.ah = select i1 %i.ag, i64 %i.ac, i64 %i.ab
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ah, i64 %i.z) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ai = sub i64 0, %mul.result
  %i.aj = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ak = getelementptr i8, ptr %scevgep, i64 %i.ai
  %i.al = icmp ult ptr %i.aj, %scevgep
  %i.am = icmp ugt ptr %i.ak, %scevgep
  %i.an = select i1 %i.ag, i1 %i.am, i1 %i.al
  %i.ao = or i1 %i.an, %mul.overflow
  br i1 %i.ao, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep29 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %scevgep30 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ap = shl i64 %i.n, 4
  %scevgep31 = getelementptr i8, ptr %i.p, i64 %i.ap ; 2 uses
  %i.aq = shl i64 %i.m, 4
  %i.ar = getelementptr i8, ptr %i.p, i64 %i.aq
  %scevgep32 = getelementptr i8, ptr %i.ar, i64 8 ; 2 uses
  %i.as = mul i64 %i.n, %i.t
  %i.at = shl i64 %i.as, 4                        ; 2 uses
  %i.au = sub i64 %i.m, %i.n
  %i.av = shl i64 %i.s, 4
  %i.aw = add i64 %i.av, 16
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = shl i64 %i.r, 4                         ; 2 uses
  %10 = add i64 %i.at, %i.ax
  %11 = add i64 %10, %i.ay                        ; 2 uses
  %i.az = getelementptr i8, ptr %i.v, i64 %11
  %scevgep33 = getelementptr i8, ptr %i.az, i64 8 ; 4 uses
  %12 = add i64 %i.at, %i.ay                      ; 2 uses
  %i.ba = getelementptr i8, ptr %i.v, i64 %12
  %scevgep34 = getelementptr i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bb = icmp ult ptr %scevgep33, %scevgep34
  %umin = select i1 %i.bb, ptr %scevgep33, ptr %scevgep34 ; 2 uses
  %i.bc = icmp ugt ptr %scevgep33, %scevgep34
  %umax = select i1 %i.bc, ptr %scevgep33, ptr %scevgep34
  %scevgep36 = getelementptr i8, ptr %umax, i64 8 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.v, i64 %11     ; 4 uses
  %scevgep37 = getelementptr i8, ptr %i.v, i64 %12 ; 4 uses
  %i.be = icmp ult ptr %i.bd, %scevgep37
  %umin38 = select i1 %i.be, ptr %i.bd, ptr %scevgep37 ; 2 uses
  %i.bf = icmp ugt ptr %i.bd, %scevgep37
  %umax39 = select i1 %i.bf, ptr %i.bd, ptr %scevgep37
  %scevgep40 = getelementptr i8, ptr %umax39, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep30
  %bound1 = icmp ult ptr %i.f, %scevgep29
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %i.e, %scevgep32
  %bound142 = icmp ult ptr %scevgep31, %scevgep29
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  %bound044 = icmp ult ptr %i.e, %scevgep36
  %bound145 = icmp ult ptr %umin, %scevgep29
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx, %found.conflict46
  %bound048 = icmp ult ptr %i.e, %scevgep40
  %bound149 = icmp ult ptr %umin38, %scevgep29
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx47, %found.conflict50
  %bound052 = icmp ult ptr %i.f, %scevgep32
  %bound153 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx51, %found.conflict54
  %bound056 = icmp ult ptr %i.f, %scevgep36
  %bound157 = icmp ult ptr %umin, %scevgep30
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx55, %found.conflict58
  %bound060 = icmp ult ptr %i.f, %scevgep40
  %bound161 = icmp ult ptr %umin38, %scevgep30
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %i.y, 3                         ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 4, i64 %i.bg
  %n.vec = sub i64 %i.y, %i.bi                    ; 2 uses
  %i.bj = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi64 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi65 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi66 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.bk = add i64 %i.n, %index                    ; 5 uses
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = add i64 %i.bk, 2                        ; 2 uses
  %i.bn = add i64 %i.bk, 3                        ; 2 uses
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bk
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bl
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bm
  %i.br = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bn
  %i.bs = load double, ptr %i.bo, align 8, !alias.scope !1101
  %i.bt = load double, ptr %i.bp, align 8, !alias.scope !1101
  %i.bu = load double, ptr %i.bq, align 8, !alias.scope !1101
  %i.bv = load double, ptr %i.br, align 8, !alias.scope !1101
  %i.bw = call fast double @llvm.pow.f64(double %i.bs, double %i.q)
  %i.bx = call fast double @llvm.pow.f64(double %i.bt, double %i.q)
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1 ; 2 uses
  %i.ca = call fast double @llvm.pow.f64(double %i.bu, double %i.q)
  %i.cb = call fast double @llvm.pow.f64(double %i.bv, double %i.q)
  %i.cc = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1 ; 2 uses
  %i.ce = mul nsw i64 %i.t, %i.bk
  %i.cf = mul nsw i64 %i.t, %i.bl
  %i.cg = mul nsw i64 %i.t, %i.bm
  %i.ch = mul nsw i64 %i.t, %i.bn
  %i.ci = getelementptr [16 x i8], ptr %i.w, i64 %i.ce ; 2 uses
  %i.cj = getelementptr [16 x i8], ptr %i.w, i64 %i.cf ; 2 uses
  %i.ck = getelementptr [16 x i8], ptr %i.w, i64 %i.cg ; 2 uses
  %i.cl = getelementptr [16 x i8], ptr %i.w, i64 %i.ch ; 2 uses
  %i.cm = load double, ptr %i.ci, align 8, !alias.scope !1102
  %i.cn = load double, ptr %i.cj, align 8, !alias.scope !1102
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = load double, ptr %i.ck, align 8, !alias.scope !1102
  %i.cr = load double, ptr %i.cl, align 8, !alias.scope !1102
  %i.cs = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cy = load double, ptr %i.cu, align 8, !alias.scope !1103
  %i.cz = load double, ptr %i.cv, align 8, !alias.scope !1103
  %i.da = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cz, i64 1
  %i.dc = load double, ptr %i.cw, align 8, !alias.scope !1103
  %i.dd = load double, ptr %i.cx, align 8, !alias.scope !1103
  %i.de = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = fmul fast <2 x double> %i.cp, %i.bz
  %i.dh = fmul fast <2 x double> %i.ct, %i.cd
  %i.di = fmul fast <2 x double> %i.db, %i.bz
  %i.dj = fmul fast <2 x double> %i.df, %i.cd
  %i.dk = fadd fast <2 x double> %vec.phi, %i.dg  ; 2 uses
  %i.dl = fadd fast <2 x double> %vec.phi64, %i.dh ; 2 uses
  %i.dm = fadd fast <2 x double> %vec.phi65, %i.di ; 2 uses
  %i.dn = fadd fast <2 x double> %vec.phi66, %i.dj ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !1097

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %i.dl, %i.dk
  %i.dp = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %bin.rdx67 = fadd fast <2 x double> %i.dn, %i.dm
  %i.dq = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx67) ; 2 uses
  store double %i.dp, ptr %i.e, align 8, !tbaa !71, !alias.scope !1104, !noalias !1105
  store double %i.dq, ptr %i.f, align 8, !tbaa !71, !alias.scope !1106, !noalias !1107
  %i.dr = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 1
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.026.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph ], [ %i.bj, %middle.block ] ; 6 uses
  %.ph = phi <2 x double> [ zeroinitializer, %vector.memcheck ], [ zeroinitializer, %vector.scevcheck ], [ zeroinitializer, %.lr.ph ], [ %i.ds, %middle.block ] ; 2 uses
  %i.dt = add i64 %i.m, %.026.ph
  %i.du = and i64 %i.dt, 1
  %lcmp.mod.not.not = icmp eq i64 %i.du, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.p, i64 %.026.ph
  %.sroa.023.0.copyload.prol = load double, ptr %i.dv, align 8
  %i.dw = call fast double @llvm.pow.f64(double %.sroa.023.0.copyload.prol, double %i.q)
  %i.dx = mul nsw i64 %i.t, %.026.ph
  %i.dy = getelementptr [16 x i8], ptr %i.w, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 8
  %i.ea = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul fast <2 x double> %i.dz, %i.eb
  %i.ed = fadd fast <2 x double> %.ph, %i.ec      ; 3 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  store double %i.ee, ptr %i.e, align 8, !tbaa !71
  %i.ef = extractelement <2 x double> %i.ed, i64 1
  store double %i.ef, ptr %i.f, align 8, !tbaa !71
  %i.eg = add i64 %.026.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.026.unr = phi i64 [ %.026.ph, %scalar.ph.preheader ], [ %i.eg, %scalar.ph.prol ]
  %.unr = phi <2 x double> [ %.ph, %scalar.ph.preheader ], [ %i.ed, %scalar.ph.prol ]
  %i.eh = icmp eq i64 %i.m, %.026.ph
  br i1 %i.eh, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi i64 [ %i.fg, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ei = phi <2 x double> [ %i.fd, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.p, i64 %.026
  %.sroa.023.0.copyload = load double, ptr %i.ej, align 8
  %i.ek = call fast double @llvm.pow.f64(double %.sroa.023.0.copyload, double %i.q)
  %i.el = mul nsw i64 %i.t, %.026
  %i.em = getelementptr [16 x i8], ptr %i.w, i64 %i.el
  %i.en = load <2 x double>, ptr %i.em, align 8
  %i.eo = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul fast <2 x double> %i.en, %i.ep
  %i.er = fadd fast <2 x double> %i.ei, %i.eq     ; 3 uses
  %i.es = extractelement <2 x double> %i.er, i64 0
  store double %i.es, ptr %i.e, align 8, !tbaa !71
  %i.et = extractelement <2 x double> %i.er, i64 1
  store double %i.et, ptr %i.f, align 8, !tbaa !71
  %i.eu = add i64 %.026, 1                        ; 3 uses
  %i.ev = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.eu
  %.sroa.023.0.copyload.1 = load double, ptr %i.ev, align 8
  %i.ew = call fast double @llvm.pow.f64(double %.sroa.023.0.copyload.1, double %i.q)
  %i.ex = mul nsw i64 %i.t, %i.eu
  %i.ey = getelementptr [16 x i8], ptr %i.w, i64 %i.ex
  %i.ez = load <2 x double>, ptr %i.ey, align 8
  %i.fa = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fmul fast <2 x double> %i.ez, %i.fb
  %i.fd = fadd fast <2 x double> %i.er, %i.fc     ; 3 uses
  %i.fe = extractelement <2 x double> %i.fd, i64 0
  store double %i.fe, ptr %i.e, align 8, !tbaa !71
  %i.ff = extractelement <2 x double> %i.fd, i64 1
  store double %i.ff, ptr %i.f, align 8, !tbaa !71
  %i.fg = add i64 %.026, 2
  %exitcond.not.1 = icmp eq i64 %i.eu, %i.m
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !1100

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.fh, align 8
  %i.fi = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.fi, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.fj = load double, ptr %8, align 8, !tbaa !71
  %i.fk = load double, ptr %i.e, align 8, !tbaa !71
  %i.fl = fadd fast double %i.fk, %i.fj
  store double %i.fl, ptr %8, align 8, !tbaa !71
  %i.fm = load double, ptr %9, align 8, !tbaa !71
  %i.fn = load double, ptr %i.f, align 8, !tbaa !71
  %i.fo = fadd fast double %i.fn, %i.fm
  store double %i.fo, ptr %9, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.fp = load double, ptr %i.e, align 8, !tbaa !71
  %i.fq = atomicrmw fadd ptr %8, double %i.fp monotonic, align 8 ; 0 uses
  %i.fr = load double, ptr %i.f, align 8, !tbaa !71
  %i.fs = atomicrmw fadd ptr %9, double %i.fr monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f
end_hunk_1
begin_hunk_2_@_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined:bb.a
  ]

bb.d:                                             ; preds = %._crit_edge
  %i.av = load double, ptr %8, align 8, !tbaa !71
  %i.aw = load double, ptr %i.e, align 8, !tbaa !71
  %i.ax = fadd fast double %i.aw, %i.av
  store double %i.ax, ptr %8, align 8, !tbaa !71
  %i.ay = load double, ptr %9, align 8, !tbaa !71
  %i.az = load double, ptr %i.f, align 8, !tbaa !71
  %i.ba = fadd fast double %i.az, %i.ay
  store double %i.ba, ptr %9, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.bb = load double, ptr %i.e, align 8, !tbaa !71
  %i.bc = atomicrmw fadd ptr %8, double %i.bb monotonic, align 8 ; 0 uses
  %i.bd = load double, ptr %i.f, align 8, !tbaa !71
  %i.be = atomicrmw fadd ptr %9, double %i.bd monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb1ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !71
  %i.h = load double, ptr %i.a, align 8, !tbaa !71
  %i.i = fadd fast double %i.h, %i.g
  store double %i.i, ptr %i.b, align 8, !tbaa !71
  %i.j = load double, ptr %i.f, align 8, !tbaa !71
  %i.k = load double, ptr %i.d, align 8, !tbaa !71
  %i.l = fadd fast double %i.k, %i.j
  store double %i.l, ptr %i.f, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr { double, double } @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z47assert_quregAndFullStateDiagMatrHaveSameDistrib5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEbb(double %2, double %3, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83
  %i.j = and i64 %i.i, 4294967295
  %i.k = shl nuw i64 1, %i.j
  store i64 %i.k, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  store i64 %i.o, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.p = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  store i64 %i.p, ptr %i.e, align 8, !tbaa !25
  %i.q = load i32, ptr %0, align 8, !tbaa !27
  %i.r = icmp ne i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.c, ptr %1, ptr %i.e, ptr %i.d, ptr %0, ptr %i.a, ptr %i.b) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load double, ptr %i.a, align 8, !tbaa !71
  %i.w = load double, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.fca.0.insert = insertvalue { double, double } poison, double %i.v, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.w, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 13 uses
  %i.f = alloca double, align 8                   ; 13 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !71
  %i.k = load i32, ptr %0, align 4, !tbaa !28     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25
  %i.m = call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j) ; 7 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !25
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %.not23 = icmp sgt i64 %i.n, %i.m
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 5 uses
  %i.q = load i64, ptr %4, align 8, !tbaa !25     ; 3 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !25     ; 3 uses
  %i.s = add nsw i64 %i.r, 1                      ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 6 uses
  %i.v = getelementptr [16 x i8], ptr %i.u, i64 %i.q ; 5 uses
  %i.w = add i64 %i.m, 1
  %i.x = sub i64 %i.w, %i.n                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.y = sub i64 %i.m, %i.n
  %i.z = shl i64 %i.r, 4                          ; 2 uses
  %i.aa = add i64 %i.z, 16                        ; 2 uses
  %i.ab = sub nuw nsw i64 -16, %i.z
  %i.ac = mul i64 %i.n, %i.s
  %i.ad = add i64 %i.ac, %i.q
  %i.ae = shl i64 %i.ad, 4
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %i.af = icmp slt i64 %i.aa, 0                   ; 2 uses
  %i.ag = select i1 %i.af, i64 %i.ab, i64 %i.aa
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.y) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ah = sub i64 0, %mul.result
  %i.ai = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.aj = getelementptr i8, ptr %scevgep, i64 %i.ah
  %i.ak = icmp ult ptr %i.ai, %scevgep
  %i.al = icmp ugt ptr %i.aj, %scevgep
  %i.am = select i1 %i.af, i1 %i.al, i1 %i.ak
  %i.an = or i1 %i.am, %mul.overflow
  br i1 %i.an, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %scevgep28 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ao = shl i64 %i.n, 4
  %scevgep29 = getelementptr i8, ptr %i.p, i64 %i.ao ; 2 uses
  %i.ap = shl i64 %i.m, 4
  %i.aq = getelementptr i8, ptr %i.p, i64 %i.ap
  %scevgep30 = getelementptr i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ar = mul i64 %i.n, %i.s
  %i.as = shl i64 %i.ar, 4                        ; 2 uses
  %i.at = sub i64 %i.m, %i.n
  %i.au = shl i64 %i.r, 4
  %i.av = add i64 %i.au, 16
  %i.aw = mul i64 %i.at, %i.av
  %i.ax = shl i64 %i.q, 4                         ; 2 uses
  %9 = add i64 %i.as, %i.aw
  %10 = add i64 %9, %i.ax                         ; 2 uses
  %i.ay = getelementptr i8, ptr %i.u, i64 %10
  %scevgep31 = getelementptr i8, ptr %i.ay, i64 8 ; 4 uses
  %11 = add i64 %i.as, %i.ax                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.u, i64 %11
  %scevgep32 = getelementptr i8, ptr %i.az, i64 8 ; 4 uses
  %i.ba = icmp ult ptr %scevgep31, %scevgep32
  %umin = select i1 %i.ba, ptr %scevgep31, ptr %scevgep32 ; 2 uses
  %i.bb = icmp ugt ptr %scevgep31, %scevgep32
  %umax = select i1 %i.bb, ptr %scevgep31, ptr %scevgep32
  %scevgep34 = getelementptr i8, ptr %umax, i64 8 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.u, i64 %10     ; 4 uses
  %scevgep35 = getelementptr i8, ptr %i.u, i64 %11 ; 4 uses
  %i.bd = icmp ult ptr %i.bc, %scevgep35
  %umin36 = select i1 %i.bd, ptr %i.bc, ptr %scevgep35 ; 2 uses
  %i.be = icmp ugt ptr %i.bc, %scevgep35
  %umax37 = select i1 %i.be, ptr %i.bc, ptr %scevgep35
  %scevgep38 = getelementptr i8, ptr %umax37, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep28
  %bound1 = icmp ult ptr %i.f, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  %bound039 = icmp ult ptr %i.e, %scevgep30
  %bound140 = icmp ult ptr %scevgep29, %scevgep27
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  %bound042 = icmp ult ptr %i.e, %scevgep34
  %bound143 = icmp ult ptr %umin, %scevgep27
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx, %found.conflict44
  %bound046 = icmp ult ptr %i.e, %scevgep38
  %bound147 = icmp ult ptr %umin36, %scevgep27
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  %bound050 = icmp ult ptr %i.f, %scevgep30
  %bound151 = icmp ult ptr %scevgep29, %scevgep28
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx49, %found.conflict52
  %bound054 = icmp ult ptr %i.f, %scevgep34
  %bound155 = icmp ult ptr %umin, %scevgep28
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx53, %found.conflict56
  %bound058 = icmp ult ptr %i.f, %scevgep38
  %bound159 = icmp ult ptr %umin36, %scevgep28
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.bf = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi62 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi63 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi64 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %i.bg = add i64 %i.n, %index                    ; 5 uses
  %i.bh = add i64 %i.bg, 1
  %i.bi = add i64 %i.bg, 2                        ; 2 uses
  %i.bj = add i64 %i.bg, 3
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bg
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bi
  %wide.vec = load <4 x double>, ptr %i.bk, align 8, !alias.scope !1116 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec65 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %wide.vec66 = load <4 x double>, ptr %i.bl, align 8, !alias.scope !1116 ; 2 uses
  %strided.vec67 = shufflevector <4 x double> %wide.vec66, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec68 = shufflevector <4 x double> %wide.vec66, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = mul nsw i64 %i.s, %i.bg
  %i.bn = mul nsw i64 %i.s, %i.bh
  %i.bo = mul nsw i64 %i.s, %i.bi
  %i.bp = mul nsw i64 %i.s, %i.bj
  %i.bq = getelementptr [16 x i8], ptr %i.v, i64 %i.bm ; 2 uses
  %i.br = getelementptr [16 x i8], ptr %i.v, i64 %i.bn ; 2 uses
  %i.bs = getelementptr [16 x i8], ptr %i.v, i64 %i.bo ; 2 uses
  %i.bt = getelementptr [16 x i8], ptr %i.v, i64 %i.bp ; 2 uses
  %i.bu = load double, ptr %i.bq, align 8, !alias.scope !1117
  %i.bv = load double, ptr %i.br, align 8, !alias.scope !1117
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 2 uses
  %i.by = load double, ptr %i.bs, align 8, !alias.scope !1117
  %i.bz = load double, ptr %i.bt, align 8, !alias.scope !1117
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cg = load double, ptr %i.cc, align 8, !alias.scope !1118
  %i.ch = load double, ptr %i.cd, align 8, !alias.scope !1118
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1 ; 2 uses
  %i.ck = load double, ptr %i.ce, align 8, !alias.scope !1118
  %i.cl = load double, ptr %i.cf, align 8, !alias.scope !1118
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1 ; 2 uses
  %i.co = fmul fast <2 x double> %i.bx, %strided.vec
  %i.cp = fmul fast <2 x double> %i.cb, %strided.vec67
  %i.cq = fmul fast <2 x double> %i.cj, %strided.vec
  %i.cr = fmul fast <2 x double> %i.cn, %strided.vec67
  %i.cs = fmul fast <2 x double> %i.bx, %strided.vec65
  %i.ct = fmul fast <2 x double> %i.cb, %strided.vec68
  %i.cu = fadd fast <2 x double> %i.cq, %i.cs
  %i.cv = fadd fast <2 x double> %i.cr, %i.ct
  %i.cw = fadd fast <2 x double> %i.co, %vec.phi
  %i.cx = fadd fast <2 x double> %i.cp, %vec.phi62
  %i.cy = fmul fast <2 x double> %strided.vec65, %i.cj
  %i.cz = fmul fast <2 x double> %strided.vec68, %i.cn
  %i.da = fsub fast <2 x double> %i.cw, %i.cy     ; 2 uses
  %i.db = fsub fast <2 x double> %i.cx, %i.cz     ; 2 uses
  %i.dc = fadd fast <2 x double> %i.cu, %vec.phi63 ; 2 uses
  %i.dd = fadd fast <2 x double> %i.cv, %vec.phi64 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1112

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %i.db, %i.da
  %i.df = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %bin.rdx69 = fadd fast <2 x double> %i.dd, %i.dc
  %i.dg = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx69) ; 2 uses
  store double %i.df, ptr %i.e, align 8, !tbaa !71, !alias.scope !1119, !noalias !1120
  store double %i.dg, ptr %i.f, align 8, !tbaa !71, !alias.scope !1121, !noalias !1122
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.024.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph ], [ %i.bf, %middle.block ]
  %.ph = phi double [ 0.000000e+00, %vector.memcheck ], [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %.lr.ph ], [ %i.df, %middle.block ]
  %.ph71 = phi double [ 0.000000e+00, %vector.memcheck ], [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %.lr.ph ], [ %i.dg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.dx, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dh = phi double [ %i.dv, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.di = phi double [ %i.dw, %scalar.ph ], [ %.ph71, %scalar.ph.preheader ]
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.p, i64 %.024 ; 2 uses
  %.sroa.020.0.copyload = load double, ptr %i.dj, align 8 ; 2 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.421.0.copyload = load double, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.dk = mul nsw i64 %i.s, %.024
  %i.dl = getelementptr [16 x i8], ptr %i.v, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8         ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load double, ptr %i.dn, align 8         ; 2 uses
  %i.dp = fmul fast double %i.dm, %.sroa.020.0.copyload
  %i.dq = fmul fast double %i.do, %.sroa.020.0.copyload
  %i.dr = fmul fast double %i.dm, %.sroa.421.0.copyload
  %i.ds = fadd fast double %i.dq, %i.dr
  %i.dt = fadd fast double %i.dp, %i.dh
  %i.du = fmul fast double %.sroa.421.0.copyload, %i.do
  %i.dv = fsub fast double %i.dt, %i.du           ; 2 uses
  store double %i.dv, ptr %i.e, align 8, !tbaa !71
  %i.dw = fadd fast double %i.ds, %i.di           ; 2 uses
  store double %i.dw, ptr %i.f, align 8, !tbaa !71
  %i.dx = add i64 %.024, 1
  %exitcond.not = icmp eq i64 %.024, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1115

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.dy, align 8
  %i.dz = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.dz, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.ea = load double, ptr %7, align 8, !tbaa !71
  %i.eb = load double, ptr %i.e, align 8, !tbaa !71
  %i.ec = fadd fast double %i.eb, %i.ea
  store double %i.ec, ptr %7, align 8, !tbaa !71
  %i.ed = load double, ptr %8, align 8, !tbaa !71
  %i.ee = load double, ptr %i.f, align 8, !tbaa !71
  %i.ef = fadd fast double %i.ee, %i.ed
  store double %i.ef, ptr %8, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.eg = load double, ptr %i.e, align 8, !tbaa !71
  %i.eh = atomicrmw fadd ptr %7, double %i.eg monotonic, align 8 ; 0 uses
  %i.ei = load double, ptr %i.f, align 8, !tbaa !71
  %i.ej = atomicrmw fadd ptr %8, double %i.ei monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb0EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !71
  %i.h = load double, ptr %i.a, align 8, !tbaa !71
  %i.i = fadd fast double %i.h, %i.g
  store double %i.i, ptr %i.b, align 8, !tbaa !71
  %i.j = load double, ptr %i.f, align 8, !tbaa !71
  %i.k = load double, ptr %i.d, align 8, !tbaa !71
  %i.l = fadd fast double %i.k, %i.j
  store double %i.l, ptr %i.f, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr { double, double } @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_(ptr noundef byval(%struct.Qureg) align 8 %0, ptr noundef byval(%struct.FullStateDiagMatr) align 8 %1, double %2, double %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  tail call void @_Z47assert_quregAndFullStateDiagMatrHaveSameDistrib5Qureg17FullStateDiagMatr(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %1)
  tail call void @_Z35assert_exponentMatchesTemplateParamSt7complexIdEbb(double %2, double %3, i1 noundef zeroext false, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83
  %i.j = and i64 %i.i, 4294967295
  %i.k = shl nuw i64 1, %i.j
  store i64 %i.k, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  store i64 %i.o, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.p = tail call noundef i64 @_Z36util_getLocalIndexOfFirstDiagonalAmp5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  store i64 %i.p, ptr %i.e, align 8, !tbaa !25
  %i.q = load i32, ptr %0, align 8, !tbaa !27
  %i.r = icmp ne i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp ne i32 %i.t, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !28
  call void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.c, ptr %1, ptr %i.e, ptr %i.d, ptr %0, ptr %i.a, ptr %i.b) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load double, ptr %i.a, align 8, !tbaa !71
  %i.w = load double, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.fca.0.insert = insertvalue { double, double } poison, double %i.v, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.w, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %6, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca double, align 8                   ; 13 uses
  %i.f = alloca double, align 8                   ; 13 uses
  %i.g = alloca [2 x ptr], align 8                ; 3 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.j, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !71
  %i.k = load i32, ptr %0, align 4, !tbaa !28     ; 4 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.l = load i64, ptr %i.b, align 8, !tbaa !25
  %i.m = call i64 @llvm.smin.i64(i64 %i.l, i64 %i.j) ; 7 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !25
  %i.n = load i64, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %.not23 = icmp sgt i64 %i.n, %i.m
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 5 uses
  %i.q = load i64, ptr %4, align 8, !tbaa !25     ; 3 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !25     ; 3 uses
  %i.s = add nsw i64 %i.r, 1                      ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 6 uses
  %i.v = getelementptr [16 x i8], ptr %i.u, i64 %i.q ; 5 uses
  %i.w = add i64 %i.m, 1
  %i.x = sub i64 %i.w, %i.n                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.y = sub i64 %i.m, %i.n
  %i.z = shl i64 %i.r, 4                          ; 2 uses
  %i.aa = add i64 %i.z, 16                        ; 2 uses
  %i.ab = sub nuw nsw i64 -16, %i.z
  %i.ac = mul i64 %i.n, %i.s
  %i.ad = add i64 %i.ac, %i.q
  %i.ae = shl i64 %i.ad, 4
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %i.af = icmp slt i64 %i.aa, 0                   ; 2 uses
  %i.ag = select i1 %i.af, i64 %i.ab, i64 %i.aa
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.y) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ah = sub i64 0, %mul.result
  %i.ai = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.aj = getelementptr i8, ptr %scevgep, i64 %i.ah
  %i.ak = icmp ult ptr %i.ai, %scevgep
  %i.al = icmp ugt ptr %i.aj, %scevgep
  %i.am = select i1 %i.af, i1 %i.al, i1 %i.ak
  %i.an = or i1 %i.am, %mul.overflow
  br i1 %i.an, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %scevgep28 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ao = shl i64 %i.n, 4
  %scevgep29 = getelementptr i8, ptr %i.p, i64 %i.ao ; 2 uses
  %i.ap = shl i64 %i.m, 4
  %i.aq = getelementptr i8, ptr %i.p, i64 %i.ap
  %scevgep30 = getelementptr i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ar = mul i64 %i.n, %i.s
  %i.as = shl i64 %i.ar, 4                        ; 2 uses
  %i.at = sub i64 %i.m, %i.n
  %i.au = shl i64 %i.r, 4
  %i.av = add i64 %i.au, 16
  %i.aw = mul i64 %i.at, %i.av
  %i.ax = shl i64 %i.q, 4                         ; 2 uses
  %9 = add i64 %i.as, %i.aw
  %10 = add i64 %9, %i.ax                         ; 2 uses
  %i.ay = getelementptr i8, ptr %i.u, i64 %10
  %scevgep31 = getelementptr i8, ptr %i.ay, i64 8 ; 4 uses
  %11 = add i64 %i.as, %i.ax                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.u, i64 %11
  %scevgep32 = getelementptr i8, ptr %i.az, i64 8 ; 4 uses
  %i.ba = icmp ult ptr %scevgep31, %scevgep32
  %umin = select i1 %i.ba, ptr %scevgep31, ptr %scevgep32 ; 2 uses
  %i.bb = icmp ugt ptr %scevgep31, %scevgep32
  %umax = select i1 %i.bb, ptr %scevgep31, ptr %scevgep32
  %scevgep34 = getelementptr i8, ptr %umax, i64 8 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.u, i64 %10     ; 4 uses
  %scevgep35 = getelementptr i8, ptr %i.u, i64 %11 ; 4 uses
  %i.bd = icmp ult ptr %i.bc, %scevgep35
  %umin36 = select i1 %i.bd, ptr %i.bc, ptr %scevgep35 ; 2 uses
  %i.be = icmp ugt ptr %i.bc, %scevgep35
  %umax37 = select i1 %i.be, ptr %i.bc, ptr %scevgep35
  %scevgep38 = getelementptr i8, ptr %umax37, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep28
  %bound1 = icmp ult ptr %i.f, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  %bound039 = icmp ult ptr %i.e, %scevgep30
  %bound140 = icmp ult ptr %scevgep29, %scevgep27
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx = or i1 %found.conflict, %found.conflict41
  %bound042 = icmp ult ptr %i.e, %scevgep34
  %bound143 = icmp ult ptr %umin, %scevgep27
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx, %found.conflict44
  %bound046 = icmp ult ptr %i.e, %scevgep38
  %bound147 = icmp ult ptr %umin36, %scevgep27
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  %bound050 = icmp ult ptr %i.f, %scevgep30
  %bound151 = icmp ult ptr %scevgep29, %scevgep28
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx49, %found.conflict52
  %bound054 = icmp ult ptr %i.f, %scevgep34
  %bound155 = icmp ult ptr %umin, %scevgep28
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx53, %found.conflict56
  %bound058 = icmp ult ptr %i.f, %scevgep38
  %bound159 = icmp ult ptr %umin36, %scevgep28
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, -4                       ; 3 uses
  %i.bf = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi62 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi63 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %vec.phi64 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %i.dd, %vector.body ]
  %i.bg = add i64 %i.n, %index                    ; 5 uses
  %i.bh = add i64 %i.bg, 1
  %i.bi = add i64 %i.bg, 2                        ; 2 uses
  %i.bj = add i64 %i.bg, 3
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bg
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.bi
  %wide.vec = load <4 x double>, ptr %i.bk, align 8, !alias.scope !1131 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec65 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %wide.vec66 = load <4 x double>, ptr %i.bl, align 8, !alias.scope !1131 ; 2 uses
  %strided.vec67 = shufflevector <4 x double> %wide.vec66, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec68 = shufflevector <4 x double> %wide.vec66, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = mul nsw i64 %i.s, %i.bg
  %i.bn = mul nsw i64 %i.s, %i.bh
  %i.bo = mul nsw i64 %i.s, %i.bi
  %i.bp = mul nsw i64 %i.s, %i.bj
  %i.bq = getelementptr [16 x i8], ptr %i.v, i64 %i.bm ; 2 uses
  %i.br = getelementptr [16 x i8], ptr %i.v, i64 %i.bn ; 2 uses
  %i.bs = getelementptr [16 x i8], ptr %i.v, i64 %i.bo ; 2 uses
  %i.bt = getelementptr [16 x i8], ptr %i.v, i64 %i.bp ; 2 uses
  %i.bu = load double, ptr %i.bq, align 8, !alias.scope !1132
  %i.bv = load double, ptr %i.br, align 8, !alias.scope !1132
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1 ; 2 uses
  %i.by = load double, ptr %i.bs, align 8, !alias.scope !1132
  %i.bz = load double, ptr %i.bt, align 8, !alias.scope !1132
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cg = load double, ptr %i.cc, align 8, !alias.scope !1133
  %i.ch = load double, ptr %i.cd, align 8, !alias.scope !1133
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1 ; 2 uses
  %i.ck = load double, ptr %i.ce, align 8, !alias.scope !1133
  %i.cl = load double, ptr %i.cf, align 8, !alias.scope !1133
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cl, i64 1 ; 2 uses
  %i.co = fmul fast <2 x double> %i.bx, %strided.vec
  %i.cp = fmul fast <2 x double> %i.cb, %strided.vec67
  %i.cq = fmul fast <2 x double> %i.cj, %strided.vec
  %i.cr = fmul fast <2 x double> %i.cn, %strided.vec67
  %i.cs = fmul fast <2 x double> %i.bx, %strided.vec65
  %i.ct = fmul fast <2 x double> %i.cb, %strided.vec68
  %i.cu = fadd fast <2 x double> %i.cq, %i.cs
  %i.cv = fadd fast <2 x double> %i.cr, %i.ct
  %i.cw = fadd fast <2 x double> %i.co, %vec.phi
  %i.cx = fadd fast <2 x double> %i.cp, %vec.phi62
  %i.cy = fmul fast <2 x double> %strided.vec65, %i.cj
  %i.cz = fmul fast <2 x double> %strided.vec68, %i.cn
  %i.da = fsub fast <2 x double> %i.cw, %i.cy     ; 2 uses
  %i.db = fsub fast <2 x double> %i.cx, %i.cz     ; 2 uses
  %i.dc = fadd fast <2 x double> %i.cu, %vec.phi63 ; 2 uses
  %i.dd = fadd fast <2 x double> %i.cv, %vec.phi64 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !1127

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %i.db, %i.da
  %i.df = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx) ; 2 uses
  %bin.rdx69 = fadd fast <2 x double> %i.dd, %i.dc
  %i.dg = call fast double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %bin.rdx69) ; 2 uses
  store double %i.df, ptr %i.e, align 8, !tbaa !71, !alias.scope !1134, !noalias !1135
  store double %i.dg, ptr %i.f, align 8, !tbaa !71, !alias.scope !1136, !noalias !1137
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.024.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %vector.scevcheck ], [ %i.n, %.lr.ph ], [ %i.bf, %middle.block ]
  %.ph = phi double [ 0.000000e+00, %vector.memcheck ], [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %.lr.ph ], [ %i.df, %middle.block ]
  %.ph71 = phi double [ 0.000000e+00, %vector.memcheck ], [ 0.000000e+00, %vector.scevcheck ], [ 0.000000e+00, %.lr.ph ], [ %i.dg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.024 = phi i64 [ %i.dx, %scalar.ph ], [ %.024.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dh = phi double [ %i.dv, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.di = phi double [ %i.dw, %scalar.ph ], [ %.ph71, %scalar.ph.preheader ]
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.p, i64 %.024 ; 2 uses
  %.sroa.020.0.copyload = load double, ptr %i.dj, align 8 ; 2 uses
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.421.0.copyload = load double, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.dk = mul nsw i64 %i.s, %.024
  %i.dl = getelementptr [16 x i8], ptr %i.v, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8         ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load double, ptr %i.dn, align 8         ; 2 uses
  %i.dp = fmul fast double %i.dm, %.sroa.020.0.copyload
  %i.dq = fmul fast double %i.do, %.sroa.020.0.copyload
  %i.dr = fmul fast double %i.dm, %.sroa.421.0.copyload
  %i.ds = fadd fast double %i.dq, %i.dr
  %i.dt = fadd fast double %i.dp, %i.dh
  %i.du = fmul fast double %.sroa.421.0.copyload, %i.do
  %i.dv = fsub fast double %i.dt, %i.du           ; 2 uses
  store double %i.dv, ptr %i.e, align 8, !tbaa !71
  %i.dw = fadd fast double %i.ds, %i.di           ; 2 uses
  store double %i.dw, ptr %i.f, align 8, !tbaa !71
  %i.dx = add i64 %.024, 1
  %exitcond.not = icmp eq i64 %.024, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1130

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.g, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.dy, align 8
  %i.dz = call i32 @__kmpc_reduce_nowait(ptr nonnull @4, i32 %i.k, i32 2, i64 16, ptr nonnull %i.g, ptr nonnull @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.dz, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.ea = load double, ptr %7, align 8, !tbaa !71
  %i.eb = load double, ptr %i.e, align 8, !tbaa !71
  %i.ec = fadd fast double %i.eb, %i.ea
  store double %i.ec, ptr %7, align 8, !tbaa !71
  %i.ed = load double, ptr %8, align 8, !tbaa !71
  %i.ee = load double, ptr %i.f, align 8, !tbaa !71
  %i.ef = fadd fast double %i.ee, %i.ed
  store double %i.ef, ptr %8, align 8, !tbaa !71
  call void @__kmpc_end_reduce_nowait(ptr nonnull @4, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.eg = load double, ptr %i.e, align 8, !tbaa !71
  %i.eh = atomicrmw fadd ptr %7, double %i.eg monotonic, align 8 ; 0 uses
  %i.ei = load double, ptr %i.f, align 8, !tbaa !71
  %i.ej = atomicrmw fadd ptr %8, double %i.ei monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_Z43cpu_densmatr_calcExpecFullStateDiagMatr_subILb0ELb1EESt7complexIdE5Qureg17FullStateDiagMatrS1_.omp_outlined.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load double, ptr %i.b, align 8, !tbaa !71
  %i.h = load double, ptr %i.a, align 8, !tbaa !71
  %i.i = fadd fast double %i.h, %i.g
  store double %i.i, ptr %i.b, align 8, !tbaa !71
  %i.j = load double, ptr %i.f, align 8, !tbaa !71
  %i.k = load double, ptr %i.d, align 8, !tbaa !71
  %i.l = fadd fast double %i.k, %i.j
  store double %i.l, ptr %i.f, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_Z36cpu_statevec_multiQubitProjector_subILi0EEv5QuregSt6vectorIiSaIiEES3_d(ptr noundef byval(%struct.Qureg) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef align 8 dereferenceable(24) %2, double noundef nofpclass(nan inf) %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = load ptr, ptr %1, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
end_hunk_2
