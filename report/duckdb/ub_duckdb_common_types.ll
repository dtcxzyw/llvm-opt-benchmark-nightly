inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb11HyperLogLog19EstimateCardinalityEPj:bb.a
  %i.hw = fmul double %i.hv, 5.000000e-01
  %i.hx = uitofp i32 %i.cb to double
  %i.hy = fadd double %i.hw, %i.hx
  %i.hz = fmul double %i.hy, 5.000000e-01
  %i.ia = uitofp i32 %i.cd to double
  %i.ib = fadd double %i.hz, %i.ia
  %i.ic = fmul double %i.ib, 5.000000e-01
  %i.id = uitofp i32 %i.cf to double
  %i.ie = fadd double %i.ic, %i.id
  %i.if = fmul double %i.ie, 5.000000e-01
  %i.ig = uitofp i32 %i.ch to double
  %i.ih = fadd double %i.if, %i.ig
  %i.ii = fmul double %i.ih, 5.000000e-01
  %i.ij = uitofp i32 %i.cj to double
  %i.ik = fadd double %i.ii, %i.ij
  %i.il = fmul double %i.ik, 5.000000e-01
  %i.im = uitofp i32 %i.cl to double
  %i.in = fadd double %i.il, %i.im
  %i.io = fmul double %i.in, 5.000000e-01
  %i.ip = uitofp i32 %i.cn to double
  %i.iq = fadd double %i.io, %i.ip
  %i.ir = fmul double %i.iq, 5.000000e-01
  %i.is = uitofp i32 %i.cp to double
  %i.it = fadd double %i.ir, %i.is
  %i.iu = fmul double %i.it, 5.000000e-01
  %i.iv = uitofp i32 %i.cr to double
  %i.iw = fadd double %i.iu, %i.iv
  %i.ix = fmul double %i.iw, 5.000000e-01
  %i.iy = uitofp i32 %i.ct to double
  %i.iz = fadd double %i.ix, %i.iy
  %i.ja = fmul double %i.iz, 5.000000e-01
  %i.jb = uitofp i32 %i.cv to double
  %i.jc = fadd double %i.ja, %i.jb
  %i.jd = fmul double %i.jc, 5.000000e-01
  %i.je = uitofp i32 %i.cx to double
  %i.jf = fadd double %i.jd, %i.je
  %i.jg = fmul double %i.jf, 5.000000e-01
  %i.jh = uitofp i32 %i.cz to double
  %i.ji = fadd double %i.jg, %i.jh
  %i.jj = fmul double %i.ji, 5.000000e-01
  %i.jk = uitofp i32 %i.db to double
  %i.jl = fadd double %i.jj, %i.jk
  %i.jm = fmul double %i.jl, 5.000000e-01
  %i.jn = uitofp i32 %i.dd to double
  %i.jo = fadd double %i.jm, %i.jn
  %i.jp = fmul double %i.jo, 5.000000e-01
  %i.jq = uitofp i32 %i.df to double
  %i.jr = fadd double %i.jp, %i.jq
  %i.js = fmul double %i.jr, 5.000000e-01
  %i.jt = uitofp i32 %i.dh to double
  %i.ju = fadd double %i.js, %i.jt
  %i.jv = fmul double %i.ju, 5.000000e-01
  %i.jw = uitofp i32 %i.dj to double
  %i.jx = fadd double %i.jv, %i.jw
  %i.jy = fmul double %i.jx, 5.000000e-01
  %i.jz = uitofp i32 %i.dl to double
  %i.ka = fadd double %i.jy, %i.jz
  %i.kb = fmul double %i.ka, 5.000000e-01
  %i.kc = uitofp i32 %i.dn to double
  %i.kd = fadd double %i.kb, %i.kc
  %i.ke = fmul double %i.kd, 5.000000e-01
  %i.kf = uitofp i32 %i.dp to double
  %i.kg = fadd double %i.ke, %i.kf
  %i.kh = fmul double %i.kg, 5.000000e-01
  %i.ki = uitofp i32 %i.dr to double
  %i.kj = fadd double %i.kh, %i.ki
  %i.kk = fmul double %i.kj, 5.000000e-01
  %i.kl = uitofp i32 %i.dt to double
  %i.km = fadd double %i.kk, %i.kl
  %i.kn = fmul double %i.km, 5.000000e-01
  %i.ko = uitofp i32 %i.dv to double
  %i.kp = fadd double %i.kn, %i.ko
  %i.kq = fmul double %i.kp, 5.000000e-01
  %i.kr = uitofp i32 %i.dx to double
  %i.ks = fadd double %i.kq, %i.kr
  %i.kt = fmul double %i.ks, 5.000000e-01
  %i.ku = uitofp i32 %i.dz to double
  %i.kv = fadd double %i.kt, %i.ku
  %i.kw = fmul double %i.kv, 5.000000e-01
  %i.kx = uitofp i32 %i.eb to double
  %i.ky = fadd double %i.kw, %i.kx
  %i.kz = fmul double %i.ky, 5.000000e-01
  %i.la = tail call double @llvm.fmuladd.f64(double %.015.i13, double 6.400000e+01, double %i.kz)
  %i.lb = fdiv double f0x40A71547652B82FE, %i.la
  %i.lc = fpext double %i.lb to x86_fp80
  %i.ld = tail call i64 @llroundl(x86_fp80 noundef %i.lc) #46, !tbaa !3
  ret i64 %i.ld
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6duckdb11HyperLogLog5MergeERKS0_(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(64) %1) local_unnamed_addr #21 align 2 {
vector.memcheck:
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 64
  %scevgep4 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %bound0 = icmp ult ptr %0, %scevgep4
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %0, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  %wide.load5 = load <16 x i8>, ptr %i.a, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load6 = load <16 x i8>, ptr %1, align 1, !tbaa !153, !alias.scope !844
  %wide.load7 = load <16 x i8>, ptr %i.b, align 1, !tbaa !153, !alias.scope !844
  %i.c = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> %wide.load6)
  %i.d = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load5, <16 x i8> %wide.load7)
  store <16 x i8> %i.c, ptr %0, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  store <16 x i8> %i.d, ptr %i.a, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.f, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  %wide.load5.1 = load <16 x i8>, ptr %i.g, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load6.1 = load <16 x i8>, ptr %i.e, align 1, !tbaa !153, !alias.scope !844
  %wide.load7.1 = load <16 x i8>, ptr %i.h, align 1, !tbaa !153, !alias.scope !844
  %i.i = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load.1, <16 x i8> %wide.load6.1)
  %i.j = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load5.1, <16 x i8> %wide.load7.1)
  store <16 x i8> %i.i, ptr %i.f, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  store <16 x i8> %i.j, ptr %i.g, align 1, !tbaa !153, !alias.scope !841, !noalias !844
  br label %middle.block

middle.block:                                     ; preds = %scalar.ph, %vector.body
  ret void

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %storemerge3 = phi i64 [ %i.v, %scalar.ph ], [ 0, %vector.memcheck ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %storemerge3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !153
  %i.n = load i8, ptr %i.k, align 1, !tbaa !153
  %i.o = tail call noundef i8 @llvm.umax.i8(i8 %i.m, i8 %i.n)
  store i8 %i.o, ptr %i.l, align 1, !tbaa !153
  %i.p = or disjoint i64 %storemerge3, 1          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.p ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !153
  %i.t = load i8, ptr %i.q, align 1, !tbaa !153
  %i.u = tail call noundef i8 @llvm.umax.i8(i8 %i.s, i8 %i.t)
  store i8 %i.u, ptr %i.r, align 1, !tbaa !153
  %i.v = add nuw nsw i64 %storemerge3, 2          ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.v, 64
  br i1 %exitcond.not.1, label %middle.block, label %scalar.ph, !llvm.loop !846
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #23

; Function Attrs: nounwind
declare i64 @llroundl(x86_fp80 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11HyperLogLog6UpdateERNS_6VectorES2_m(ptr nofree noundef nonnull align 1 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %5 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeImEEvv(ptr noundef nonnull align 8 dereferenceable(73) %5)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !774  ; 5 uses
  %i.c = load i8, ptr %2, align 8, !tbaa !483
  %i.d = icmp eq i8 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !519  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null                ; 2 uses
  br i1 %i.d, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %bb.f
  %i.g = load i64, ptr %i.f, align 8, !tbaa !108
  %i.h = and i64 %i.g, 1
  %.not50 = icmp eq i64 %i.h, 0
  br i1 %.not50, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %bb.f, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.i = load i64, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.j = and i64 %i.i, 63
  %i.k = lshr i64 %i.i, 6
  %i.l = or disjoint i64 %i.k, 288230376151711744
  %i.m = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i8
  %i.o = add nuw nsw i8 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !153
  %i.r = call noundef i8 @llvm.umax.i8(i8 %i.q, i8 %i.o)
  store i8 %i.r, ptr %i.p, align 1, !tbaa !153
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.h:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.j:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.k:                                             ; preds = %bb.e
  %.not57 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.k
  br i1 %.not57, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader51
  %i.w = load ptr, ptr %4, align 8, !tbaa !773
  br label %bb.l

.preheader:                                       ; preds = %bb.k
  br i1 %.not57, label %.loopexit, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %3, 1
  %i.x = icmp eq i64 %3, 1
  br i1 %i.x, label %.lr.ph55.epil.preheader, label %.lr.ph55.preheader.new

.lr.ph55.preheader.new:                           ; preds = %.lr.ph55.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55, %.lr.ph55.preheader.new
  %.02754 = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %i.av, %.lr.ph55 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph55.preheader.new ], [ %niter.next.1, %.lr.ph55 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02754
  %i.z = load i64, ptr %i.y, align 8, !tbaa !108  ; 2 uses
  %i.aa = and i64 %i.z, 63
  %i.ab = lshr i64 %i.z, 6
  %i.ac = or disjoint i64 %i.ab, 288230376151711744
  %i.ad = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ac, i1 true)
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = add nuw nsw i8 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153
  %i.ai = call noundef i8 @llvm.umax.i8(i8 %i.ah, i8 %i.af)
  store i8 %i.ai, ptr %i.ag, align 1, !tbaa !153
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02754
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !108 ; 2 uses
  %i.am = and i64 %i.al, 63
  %i.an = lshr i64 %i.al, 6
  %i.ao = or disjoint i64 %i.an, 288230376151711744
  %i.ap = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ao, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i8
  %i.ar = add nuw nsw i8 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.am ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !153
  %i.au = call noundef i8 @llvm.umax.i8(i8 %i.at, i8 %i.ar)
  store i8 %i.au, ptr %i.as, align 1, !tbaa !153
  %i.av = add nuw i64 %.02754, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph55, !llvm.loop !847

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %.02153 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.p ] ; 4 uses
  %i.aw = load ptr, ptr %i.w, align 8, !tbaa !389 ; 2 uses
  %.not.i35 = icmp eq ptr %i.aw, null
  br i1 %.not.i35, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.02153
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ba = phi i64 [ %i.az, %bb.m ], [ %.02153, %bb.l ] ; 2 uses
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = and i64 %i.ba, 63
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bb
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !108
  %i.bf = shl nuw i64 1, %i.bc
  %i.bg = and i64 %i.bf, %i.be
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02153
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.bj = and i64 %i.bi, 63
  %i.bk = lshr i64 %i.bi, 6
  %i.bl = or disjoint i64 %i.bk, 288230376151711744
  %i.bm = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = add nuw nsw i8 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !153
  %i.br = call noundef i8 @llvm.umax.i8(i8 %i.bq, i8 %i.bo)
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !153
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = add nuw i64 %.02153, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !848

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph55
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph55.epil.preheader

.lr.ph55.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55.preheader
  %.02754.epil.init = phi i64 [ 0, %.lr.ph55.preheader ], [ %i.av, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod71 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.02754.epil.init
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !108 ; 2 uses
  %i.bv = and i64 %i.bu, 63
  %i.bw = lshr i64 %i.bu, 6
  %i.bx = or disjoint i64 %i.bw, 288230376151711744
  %i.by = call noundef range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i8
  %i.ca = add nuw nsw i8 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !153
  %i.cd = call noundef i8 @llvm.umax.i8(i8 %i.cc, i8 %i.ca)
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !153
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %.lr.ph55.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader51, %.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cg, align 8, !tbaa !409
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !411
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !412
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #46, !inline_history !849
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !412
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.t ], [ %i.ct, %bb.u ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.v, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !88

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.r, %.loopexit
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.cx, align 8, !tbaa !409
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !411
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !412
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46, !inline_history !850
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !412
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.aa:                                            ; preds = %bb.y
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.da, %bb.z ], [ %i.dk, %bb.aa ]
  %i.dl = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.dl, label %bb.ab, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i39, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i43, label %bb.ac

bb.ac:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.do, align 8, !tbaa !409
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !411
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !412
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #46, !inline_history !849
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !412
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i43

bb.ae:                                            ; preds = %bb.ac
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i40 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i40, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i41

bb.ag:                                            ; preds = %bb.ae
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i41: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i42 = phi i32 [ %i.dr, %bb.af ], [ %i.eb, %bb.ag ]
  %i.ec = icmp eq i32 %.0.i.i.i.i.i.i.i42, 1
  br i1 %i.ec, label %bb.ah, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i43, !prof !88

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i43

_ZN6duckdb15SelectionVectorD2Ev.exit.i43:         ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i41, %bb.ad, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i1.i44 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i1.i44, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit48, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i43
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.ef, align 8, !tbaa !409
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !411
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !412
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #46, !inline_history !850
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !412
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit48

bb.ak:                                            ; preds = %bb.ai
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i45 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i.i2.i45, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i46

bb.am:                                            ; preds = %bb.ak
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i46

end_hunk_0
