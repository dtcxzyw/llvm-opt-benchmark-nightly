Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftbench?download=true
inline.NumInlined: 140
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10polynomialIdE11stretch_fftEv:bb.a
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #14
  resume { ptr, i32 } %i.d

bb.bp:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.c ], [ 8, %bb.d ], [ 16, %bb.e ], [ 32, %bb.f ], [ 64, %bb.g ], [ 128, %bb.h ], [ 256, %bb.i ], [ 512, %bb.j ], [ 1024, %bb.k ], [ 2048, %bb.l ], [ 4096, %bb.m ], [ 8192, %bb.n ], [ 16384, %bb.o ], [ 32768, %bb.p ], [ 65536, %bb.q ], [ 131072, %bb.r ], [ 262144, %bb.s ], [ 524288, %bb.t ], [ 1048576, %bb.u ], [ 2097152, %bb.v ], [ 4194304, %bb.w ], [ 8388608, %bb.x ], [ 16777216, %bb.y ], [ 33554432, %bb.z ], [ 67108864, %bb.aa ], [ 134217728, %bb.ab ], [ 268435456, %bb.ac ], [ 536870912, %bb.ad ], [ 1073741824, %bb.ae ], [ 2147483648, %bb.af ], [ 4294967296, %bb.ag ], [ 8589934592, %bb.ah ], [ 17179869184, %bb.ai ], [ 34359738368, %bb.aj ], [ 68719476736, %bb.ak ], [ 137438953472, %bb.al ], [ 274877906944, %bb.am ], [ 549755813888, %bb.an ], [ 1099511627776, %bb.ao ], [ 2199023255552, %bb.ap ], [ 4398046511104, %bb.aq ], [ 8796093022208, %bb.ar ], [ 17592186044416, %bb.as ], [ 35184372088832, %bb.at ], [ 70368744177664, %bb.au ], [ 140737488355328, %bb.av ], [ 281474976710656, %bb.aw ], [ 562949953421312, %bb.ax ], [ 1125899906842624, %bb.ay ], [ 2251799813685248, %bb.az ], [ 4503599627370496, %bb.ba ], [ 9007199254740992, %bb.bb ], [ 18014398509481984, %bb.bc ], [ 36028797018963968, %bb.bd ], [ 72057594037927936, %bb.be ], [ 144115188075855872, %bb.bf ], [ 288230376151711744, %bb.bg ], [ 576460752303423488, %bb.bh ], [ 1152921504606846976, %bb.bi ], [ 2305843009213693952, %bb.bj ], [ 4611686018427387904, %bb.bk ], [ -9223372036854775808, %bb.bl ] ; 2 uses
  %i.e = shl i64 %.0.lcssa, 1                     ; 4 uses
  %.not13 = icmp eq i64 %i.e, %i.b
  br i1 %.not13, label %_ZN10polynomialIdE7stretchEm.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 7 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !15
  %i.h = icmp ugt i64 %i.e, 2305843009213693951
  %i.i = shl i64 %.0.lcssa, 4
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #15 ; 9 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !16
  %.not15.i = icmp eq i64 %i.b, 0
  br i1 %.not15.i, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bq
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.g to i64
  %min.iters.check = icmp ult i64 %i.b, 8
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !18
  %wide.load21 = load <2 x double>, ptr %i.p, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !18
  store <2 x double> %wide.load21, ptr %i.r, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader22

.lr.ph.i.preheader22:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader22, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.w, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader22 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader22 ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.012.i.prol
  %i.u = load double, ptr %i.t, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i.prol
  store double %i.u, ptr %i.v, align 8, !tbaa !18
  %i.w = add nuw i64 %.012.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !62

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader22
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader22 ], [ %i.w, %.lr.ph.i.prol ]
  %i.x = sub i64 %.012.i.ph, %i.b
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.bq
  %i.z = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.aa = icmp ult i64 %i.b, %i.z
  br i1 %i.aa, label %.lr.ph14.preheader.i, label %_ZN10polynomialIdE7stretchEm.exit

.lr.ph14.preheader.i:                             ; preds = %.preheader.i
  %i.ab = shl i64 %i.b, 3
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.ab
  %i.ac = sub nuw i64 %i.z, %i.b
  %i.ad = shl i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ad, i1 false), !tbaa !18
  br label %_ZN10polynomialIdE7stretchEm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.at, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.012.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i
  store double %i.af, ptr %i.ag, align 8, !tbaa !18
  %i.ah = add nuw i64 %.012.i, 1                  ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah
  store double %i.aj, ptr %i.ak, align 8, !tbaa !18
  %i.al = add nuw i64 %.012.i, 2                  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.al
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = add nuw i64 %.012.i, 3                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  store double %i.ar, ptr %i.as, align 8, !tbaa !18
  %i.at = add nuw i64 %.012.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.at, %i.b
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !63

_ZN10polynomialIdE7stretchEm.exit:                ; preds = %.lr.ph14.preheader.i, %.preheader.i, %bb.bp
  %i.au = sub i64 %i.e, %i.b
  ret i64 %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE3fftERKS0_(ptr dead_on_unwind noalias writable sret(%class.polynomial.0) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call noundef i64 @_ZN10polynomialIdE4log2Em(i64 noundef %i.b) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !70
  %i.e = tail call noundef i64 @_ZN10polynomialIdE4log2Em(i64 noundef %i.d), !noalias !70
  %i.f = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !70 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV10polynomialISt7complexIdEE, i64 16), ptr %0, align 8, !tbaa !11, !alias.scope !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !tbaa !28, !alias.scope !70
  %i.i = icmp ugt i64 %i.f, 1152921504606846975
  %i.j = shl i64 %i.f, 4                          ; 2 uses
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #15, !noalias !70 ; 5 uses
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_ZN10polynomialISt7complexIdEEC2Em.exit.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.j, i1 false), !noalias !70
  br label %_ZN10polynomialISt7complexIdEEC2Em.exit.i

_ZN10polynomialISt7complexIdEEC2Em.exit.i:        ; preds = %.loopexit.loopexit.i.i.i, %bb.a
  store ptr %i.l, ptr %i.g, align 8, !tbaa !26, !alias.scope !70
  %i.n = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !70 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN10polynomialIdE11bit_reverseERKS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN10polynomialISt7complexIdEEC2Em.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16, !noalias !70
  %i.q = trunc i64 %i.e to i32
  %i.r = add i32 %i.q, -1
  %i.s = shl nuw i32 1, %i.r
  %i.t = sext i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN10polynomialIdE9flip_bitsEmm.exit.i, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ac, %_ZN10polynomialIdE9flip_bitsEmm.exit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.09.i
  %i.v = load double, ptr %i.u, align 8, !tbaa !18, !noalias !70
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.014.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ]
  %.0913.i.i = phi i64 [ 1, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.01012.i.i = phi i64 [ %i.t, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.w = and i64 %.0913.i.i, %.09.i
  %.not11.i.i = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not11.i.i, i64 0, i64 %.01012.i.i
  %spec.select.i.i = or i64 %i.x, %.014.i.i       ; 2 uses
  %i.y = lshr i64 %.01012.i.i, 1                  ; 2 uses
  %i.z = shl i64 %.0913.i.i, 1
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZN10polynomialIdE9flip_bitsEmm.exit.i, label %bb.c, !llvm.loop !0

_ZN10polynomialIdE9flip_bitsEmm.exit.i:           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %spec.select.i.i
  %i.ab = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.v, i64 0
  store <2 x double> %i.ab, ptr %i.aa, align 8, !noalias !70
  %i.ac = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.n
  br i1 %exitcond.not.i, label %_ZN10polynomialIdE11bit_reverseERKS0_.exit, label %bb.b, !llvm.loop !66

_ZN10polynomialIdE11bit_reverseERKS0_.exit:       ; preds = %_ZN10polynomialIdE9flip_bitsEmm.exit.i, %_ZN10polynomialISt7complexIdEEC2Em.exit.i
  %.not67 = icmp eq i64 %i.c, 0
  br i1 %.not67, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %_ZN10polynomialIdE11bit_reverseERKS0_.exit, %bb.i
  %.03164 = phi i64 [ %i.bw, %bb.i ], [ 0, %_ZN10polynomialIdE11bit_reverseERKS0_.exit ]
  %.03263 = phi i64 [ %i.bv, %bb.i ], [ 1, %_ZN10polynomialIdE11bit_reverseERKS0_.exit ] ; 3 uses
  %.03362 = phi i64 [ %i.bu, %bb.i ], [ 2, %_ZN10polynomialIdE11bit_reverseERKS0_.exit ] ; 3 uses
  %i.ad = uitofp i64 %.03362 to double
  %i.ae = tail call noundef { double, double } @__divdc3(double noundef 0.000000e+00, double noundef f0x401921FB54442D18, double noundef %i.ad, double noundef 0.000000e+00) #14 ; 2 uses
  %i.af = extractvalue { double, double } %i.ae, 0
  %i.ag = extractvalue { double, double } %i.ae, 1
  %i.ah = tail call noundef { double, double } @cexp(double noundef %i.af, double noundef %i.ag) #14 ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0 ; 3 uses
  %i.aj = extractvalue { double, double } %i.ah, 1 ; 3 uses
  %i.ak = add i64 %.03263, -1
  %invariant.gep = getelementptr [16 x i8], ptr %i.l, i64 %.03263
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph65, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
  %.03561 = phi i64 [ 0, %.lr.ph65 ], [ %i.bt, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 3 uses
  %.sroa.055.060 = phi double [ 1.000000e+00, %.lr.ph65 ], [ %12, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 5 uses
  %.sroa.8.059 = phi double [ 0.000000e+00, %.lr.ph65 ], [ %13, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 5 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.am = add i64 %i.al, -1
  %.not3657 = icmp ugt i64 %.03561, %i.am
  br i1 %.not3657, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %2 = insertelement <2 x double> poison, double %.sroa.055.060, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %.sroa.8.059, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.an = phi i64 [ %i.bg, %bb.f ], [ %i.al, %.lr.ph.preheader ] ; 2 uses
  %.03458 = phi i64 [ %i.bm, %bb.f ], [ %.03561, %.lr.ph.preheader ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.03458 ; 2 uses
  %i.ao = load <2 x double>, ptr %gep, align 8    ; 4 uses
  %i.ap = fmul <2 x double> %3, %i.ao             ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fmul <2 x double> %5, %i.aq             ; 2 uses
  %i.as = fsub <2 x double> %i.ap, %i.ar          ; 2 uses
  %i.at = fadd <2 x double> %i.ap, %i.ar          ; 2 uses
  %i.au = shufflevector <2 x double> %i.as, <2 x double> %i.at, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.av = extractelement <2 x double> %i.as, i64 0
  %i.aw = fcmp uno double %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.d, label %bb.f, !prof !27

bb.d:                                             ; preds = %.lr.ph
  %i.ax = extractelement <2 x double> %i.at, i64 1
  %i.ay = fcmp uno double %i.ax, 0.000000e+00
  br i1 %i.ay, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.az = extractelement <2 x double> %i.ao, i64 0
  %i.ba = extractelement <2 x double> %i.ao, i64 1
  %i.bb = tail call noundef { double, double } @__muldc3(double noundef %.sroa.055.060, double noundef %.sroa.8.059, double noundef %i.az, double noundef %i.ba) #14 ; 2 uses
  %i.bc = extractvalue { double, double } %i.bb, 0
  %i.bd = extractvalue { double, double } %i.bb, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !15
  %i.be = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.bg = phi i64 [ %i.an, %.lr.ph ], [ %i.an, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bh = phi <2 x double> [ %i.au, %.lr.ph ], [ %i.au, %bb.d ], [ %i.bf, %bb.e ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.03458 ; 2 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 8   ; 2 uses
  %i.bk = fadd <2 x double> %i.bh, %i.bj
  store <2 x double> %i.bk, ptr %i.bi, align 8
  %i.bl = fsub <2 x double> %i.bj, %i.bh
  store <2 x double> %i.bl, ptr %gep, align 8
  %i.bm = add i64 %.03458, %.03362                ; 2 uses
  %i.bn = add i64 %i.bg, -1
  %.not36 = icmp ugt i64 %i.bm, %i.bn
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %6 = fmul double %i.ai, %.sroa.055.060
  %7 = fmul double %i.aj, %.sroa.8.059
  %8 = fmul double %i.aj, %.sroa.055.060
  %9 = fmul double %i.ai, %.sroa.8.059
  %10 = fadd double %9, %8                        ; 3 uses
  %11 = fsub double %6, %7                        ; 3 uses
  %i.bo = fcmp uno double %11, 0.000000e+00
  br i1 %i.bo, label %bb.g, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.g:                                             ; preds = %._crit_edge
  %i.bp = fcmp uno double %10, 0.000000e+00
  br i1 %i.bp, label %bb.h, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call noundef { double, double } @__muldc3(double noundef %.sroa.055.060, double noundef %.sroa.8.059, double noundef %i.ai, double noundef %i.aj) #14 ; 2 uses
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  br label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit

_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit:          ; preds = %._crit_edge, %bb.g, %bb.h
  %12 = phi double [ %11, %._crit_edge ], [ %11, %bb.g ], [ %i.br, %bb.h ]
  %13 = phi double [ %10, %._crit_edge ], [ %10, %bb.g ], [ %i.bs, %bb.h ]
  %i.bt = add i64 %.03561, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.bt, %i.ak
  br i1 %.not, label %bb.i, label %.preheader, !llvm.loop !68

bb.i:                                             ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
  %i.bu = shl i64 %.03362, 1
  %i.bv = shl i64 %.03263, 1
  %i.bw = add nuw i64 %.03164, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.c
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !69

._crit_edge66:                                    ; preds = %bb.i, %_ZN10polynomialIdE11bit_reverseERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE(ptr dead_on_unwind noalias writable sret(%class.polynomial.0) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = tail call noundef i64 @_ZN10polynomialIdE4log2Em(i64 noundef %i.b) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !78
  %i.e = tail call noundef i64 @_ZN10polynomialIdE4log2Em(i64 noundef %i.d), !noalias !78
  %i.f = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !78 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV10polynomialISt7complexIdEE, i64 16), ptr %0, align 8, !tbaa !11, !alias.scope !78
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.h, align 8, !tbaa !28, !alias.scope !78
  %i.i = icmp ugt i64 %i.f, 1152921504606846975
  %i.j = shl i64 %i.f, 4                          ; 2 uses
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #15, !noalias !78 ; 8 uses
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %_ZN10polynomialISt7complexIdEEC2Em.exit.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.j, i1 false), !noalias !78
  br label %_ZN10polynomialISt7complexIdEEC2Em.exit.i

_ZN10polynomialISt7complexIdEEC2Em.exit.i:        ; preds = %.loopexit.loopexit.i.i.i, %bb.a
  store ptr %i.l, ptr %i.g, align 8, !tbaa !26, !alias.scope !78
  %i.n = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !78 ; 3 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN10polynomialISt7complexIdEEC2Em.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26, !noalias !78
  %i.q = trunc i64 %i.e to i32
  %i.r = add i32 %i.q, -1
  %i.s = shl nuw i32 1, %i.r
  %i.t = sext i32 %i.s to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN10polynomialIdE9flip_bitsEmm.exit.i, %.lr.ph.i
  %.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %_ZN10polynomialIdE9flip_bitsEmm.exit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.09.i
  %i.v = load <2 x double>, ptr %i.u, align 8, !noalias !78
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.014.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %bb.c ]
  %.0913.i.i = phi i64 [ 1, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  %.01012.i.i = phi i64 [ %i.t, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.w = and i64 %.0913.i.i, %.09.i
  %.not11.i.i = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not11.i.i, i64 0, i64 %.01012.i.i
  %spec.select.i.i = or i64 %i.x, %.014.i.i       ; 2 uses
  %i.y = lshr i64 %.01012.i.i, 1                  ; 2 uses
  %i.z = shl i64 %.0913.i.i, 1
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZN10polynomialIdE9flip_bitsEmm.exit.i, label %bb.c, !llvm.loop !0

_ZN10polynomialIdE9flip_bitsEmm.exit.i:           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %spec.select.i.i
  store <2 x double> %i.v, ptr %i.aa, align 8, !noalias !78
  %i.ab = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not.i, label %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit, label %bb.b, !llvm.loop !73

_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit: ; preds = %_ZN10polynomialIdE9flip_bitsEmm.exit.i, %_ZN10polynomialISt7complexIdEEC2Em.exit.i
  %.not85 = icmp eq i64 %i.c, 0
  br i1 %.not85, label %.preheader, label %.lr.ph81

.preheader.loopexit:                              ; preds = %bb.i
  %.pre88 = load i64, ptr %i.a, align 8, !tbaa !28
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit
  %i.ac = phi i64 [ %.pre88, %.preheader.loopexit ], [ %i.n, %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit ] ; 4 uses
  %.not86 = icmp eq i64 %i.ac, 0
  br i1 %.not86, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader
  %i.ad = uitofp i64 %i.ac to double              ; 2 uses
  %min.iters.check = icmp eq i64 %i.ac, 1
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph83
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ae, align 8
  %i.af = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.af, ptr %i.ae, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %i.ac
  br i1 %i.ag, label %._crit_edge84, label %vector.body, !llvm.loop !74

.lr.ph81:                                         ; preds = %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit, %bb.i
  %.03780 = phi i64 [ %i.ca, %bb.i ], [ 0, %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit ]
  %.03879 = phi i64 [ %i.bz, %bb.i ], [ 1, %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit ] ; 3 uses
  %.03978 = phi i64 [ %i.by, %bb.i ], [ 2, %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit ] ; 3 uses
  %i.ah = uitofp i64 %.03978 to double
  %i.ai = tail call noundef { double, double } @__divdc3(double noundef -0.000000e+00, double noundef f0xC01921FB54442D18, double noundef %i.ah, double noundef 0.000000e+00) #14 ; 2 uses
  %i.aj = extractvalue { double, double } %i.ai, 0
  %i.ak = extractvalue { double, double } %i.ai, 1
  %i.al = tail call noundef { double, double } @cexp(double noundef %i.aj, double noundef %i.ak) #14 ; 2 uses
  %i.am = extractvalue { double, double } %i.al, 0 ; 3 uses
  %i.an = extractvalue { double, double } %i.al, 1 ; 3 uses
  %i.ao = add i64 %.03879, -1
  %invariant.gep = getelementptr [16 x i8], ptr %i.l, i64 %.03879
  br label %.preheader72

.preheader72:                                     ; preds = %.lr.ph81, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
  %.04177 = phi i64 [ 0, %.lr.ph81 ], [ %i.bx, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 3 uses
  %.sroa.070.076 = phi double [ 1.000000e+00, %.lr.ph81 ], [ %12, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 5 uses
  %.sroa.8.075 = phi double [ 0.000000e+00, %.lr.ph81 ], [ %13, %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit ] ; 5 uses
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.aq = add i64 %i.ap, -1
  %.not4473 = icmp ugt i64 %.04177, %i.aq
  br i1 %.not4473, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader72
  %2 = insertelement <2 x double> poison, double %.sroa.070.076, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x double> poison, double %.sroa.8.075, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ar = phi i64 [ %i.bk, %bb.f ], [ %i.ap, %.lr.ph.preheader ] ; 2 uses
  %.04074 = phi i64 [ %i.bq, %bb.f ], [ %.04177, %.lr.ph.preheader ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.04074 ; 2 uses
  %i.as = load <2 x double>, ptr %gep, align 8    ; 4 uses
  %i.at = fmul <2 x double> %3, %i.as             ; 2 uses
  %i.au = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = fmul <2 x double> %5, %i.au             ; 2 uses
  %i.aw = fsub <2 x double> %i.at, %i.av          ; 2 uses
  %i.ax = fadd <2 x double> %i.at, %i.av          ; 2 uses
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = extractelement <2 x double> %i.aw, i64 0
  %i.ba = fcmp uno double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.d, label %bb.f, !prof !27

bb.d:                                             ; preds = %.lr.ph
  %i.bb = extractelement <2 x double> %i.ax, i64 1
  %i.bc = fcmp uno double %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.e, label %bb.f, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.bd = extractelement <2 x double> %i.as, i64 0
  %i.be = extractelement <2 x double> %i.as, i64 1
  %i.bf = tail call noundef { double, double } @__muldc3(double noundef %.sroa.070.076, double noundef %.sroa.8.075, double noundef %i.bd, double noundef %i.be) #14 ; 2 uses
  %i.bg = extractvalue { double, double } %i.bf, 0
  %i.bh = extractvalue { double, double } %i.bf, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !28
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bh, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.bk = phi i64 [ %i.ar, %.lr.ph ], [ %i.ar, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bl = phi <2 x double> [ %i.ay, %.lr.ph ], [ %i.ay, %bb.d ], [ %i.bj, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.04074 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bm, align 8   ; 2 uses
  %i.bo = fadd <2 x double> %i.bl, %i.bn
  store <2 x double> %i.bo, ptr %i.bm, align 8
  %i.bp = fsub <2 x double> %i.bn, %i.bl
  store <2 x double> %i.bp, ptr %gep, align 8
  %i.bq = add i64 %.04074, %.03978                ; 2 uses
  %i.br = add i64 %i.bk, -1
  %.not44 = icmp ugt i64 %i.bq, %i.br
  br i1 %.not44, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.f, %.preheader72
  %6 = fmul double %i.am, %.sroa.070.076
  %7 = fmul double %i.an, %.sroa.8.075
  %8 = fmul double %i.an, %.sroa.070.076
  %9 = fmul double %i.am, %.sroa.8.075
  %10 = fadd double %9, %8                        ; 3 uses
  %11 = fsub double %6, %7                        ; 3 uses
  %i.bs = fcmp uno double %11, 0.000000e+00
  br i1 %i.bs, label %bb.g, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.g:                                             ; preds = %._crit_edge
  %i.bt = fcmp uno double %10, 0.000000e+00
  br i1 %i.bt, label %bb.h, label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit, !prof !27

bb.h:                                             ; preds = %bb.g
  %i.bu = tail call noundef { double, double } @__muldc3(double noundef %.sroa.070.076, double noundef %.sroa.8.075, double noundef %i.am, double noundef %i.an) #14 ; 2 uses
  %i.bv = extractvalue { double, double } %i.bu, 0
  %i.bw = extractvalue { double, double } %i.bu, 1
  br label %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit

_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit:          ; preds = %._crit_edge, %bb.g, %bb.h
  %12 = phi double [ %11, %._crit_edge ], [ %11, %bb.g ], [ %i.bv, %bb.h ]
  %13 = phi double [ %10, %._crit_edge ], [ %10, %bb.g ], [ %i.bw, %bb.h ]
  %i.bx = add i64 %.04177, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.bx, %i.ao
  br i1 %.not, label %bb.i, label %.preheader72, !llvm.loop !76

bb.i:                                             ; preds = %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
  %i.by = shl i64 %.03978, 1
  %i.bz = shl i64 %.03879, 1
  %i.ca = add nuw i64 %.03780, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.c
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph81, !llvm.loop !77

scalar.ph:                                        ; preds = %.lr.ph83
  %i.cb = load <2 x double>, ptr %i.l, align 8
  %i.cc = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x double> %i.cb, %i.cd
  store <2 x double> %i.ce, ptr %i.l, align 8
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %vector.body, %scalar.ph, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10polynomialISt7complexIdEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV10polynomialISt7complexIdEE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN10polynomialISt7complexIdEE7releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #16
  br label %_ZN10polynomialISt7complexIdEE7releaseEv.exit

_ZN10polynomialISt7complexIdEE7releaseEv.exit:    ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt14overflow_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt14overflow_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN10polynomialIdE4log2Em(i64 noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %0, 1
  br i1 %i.a, label %bb.b, label %bb.bm

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %0, 2
  br i1 %.not, label %bb.bm, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %0, 4
  br i1 %i.b, label %bb.d, label %bb.bm

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %0, 8
  br i1 %i.c, label %bb.e, label %bb.bm

bb.e:                                             ; preds = %bb.d
  %i.d = icmp ugt i64 %0, 16
  br i1 %i.d, label %bb.f, label %bb.bm

bb.f:                                             ; preds = %bb.e
  %i.e = icmp ugt i64 %0, 32
  br i1 %i.e, label %bb.g, label %bb.bm

bb.g:                                             ; preds = %bb.f
  %i.f = icmp ugt i64 %0, 64
  br i1 %i.f, label %bb.h, label %bb.bm

bb.h:                                             ; preds = %bb.g
  %i.g = icmp ugt i64 %0, 128
  br i1 %i.g, label %bb.i, label %bb.bm

bb.i:                                             ; preds = %bb.h
  %i.h = icmp ugt i64 %0, 256
  br i1 %i.h, label %bb.j, label %bb.bm

bb.j:                                             ; preds = %bb.i
  %i.i = icmp ugt i64 %0, 512
  br i1 %i.i, label %bb.k, label %bb.bm

bb.k:                                             ; preds = %bb.j
  %i.j = icmp ugt i64 %0, 1024
  br i1 %i.j, label %bb.l, label %bb.bm

bb.l:                                             ; preds = %bb.k
  %i.k = icmp ugt i64 %0, 2048
  br i1 %i.k, label %bb.m, label %bb.bm

bb.m:                                             ; preds = %bb.l
  %i.l = icmp ugt i64 %0, 4096
  br i1 %i.l, label %bb.n, label %bb.bm

bb.n:                                             ; preds = %bb.m
  %i.m = icmp ugt i64 %0, 8192
  br i1 %i.m, label %bb.o, label %bb.bm

bb.o:                                             ; preds = %bb.n
  %i.n = icmp ugt i64 %0, 16384
  br i1 %i.n, label %bb.p, label %bb.bm

bb.p:                                             ; preds = %bb.o
  %i.o = icmp ugt i64 %0, 32768
  br i1 %i.o, label %bb.q, label %bb.bm

bb.q:                                             ; preds = %bb.p
  %i.p = icmp ugt i64 %0, 65536
  br i1 %i.p, label %bb.r, label %bb.bm

bb.r:                                             ; preds = %bb.q
  %i.q = icmp ugt i64 %0, 131072
  br i1 %i.q, label %bb.s, label %bb.bm

bb.s:                                             ; preds = %bb.r
  %i.r = icmp ugt i64 %0, 262144
  br i1 %i.r, label %bb.t, label %bb.bm

bb.t:                                             ; preds = %bb.s
  %i.s = icmp ugt i64 %0, 524288
  br i1 %i.s, label %bb.u, label %bb.bm

bb.u:                                             ; preds = %bb.t
  %i.t = icmp ugt i64 %0, 1048576
  br i1 %i.t, label %bb.v, label %bb.bm

bb.v:                                             ; preds = %bb.u
  %i.u = icmp ugt i64 %0, 2097152
  br i1 %i.u, label %bb.w, label %bb.bm

bb.w:                                             ; preds = %bb.v
  %i.v = icmp ugt i64 %0, 4194304
  br i1 %i.v, label %bb.x, label %bb.bm

bb.x:                                             ; preds = %bb.w
  %i.w = icmp ugt i64 %0, 8388608
  br i1 %i.w, label %bb.y, label %bb.bm

bb.y:                                             ; preds = %bb.x
  %i.x = icmp ugt i64 %0, 16777216
  br i1 %i.x, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %bb.y
  %i.y = icmp ugt i64 %0, 33554432
  br i1 %i.y, label %bb.aa, label %bb.bm

bb.aa:                                            ; preds = %bb.z
  %i.z = icmp ugt i64 %0, 67108864
  br i1 %i.z, label %bb.ab, label %bb.bm

bb.ab:                                            ; preds = %bb.aa
  %i.aa = icmp ugt i64 %0, 134217728
  br i1 %i.aa, label %bb.ac, label %bb.bm

bb.ac:                                            ; preds = %bb.ab
  %i.ab = icmp ugt i64 %0, 268435456
  br i1 %i.ab, label %bb.ad, label %bb.bm

bb.ad:                                            ; preds = %bb.ac
  %i.ac = icmp ugt i64 %0, 536870912
  br i1 %i.ac, label %bb.ae, label %bb.bm

bb.ae:                                            ; preds = %bb.ad
  %i.ad = icmp ugt i64 %0, 1073741824
  br i1 %i.ad, label %bb.af, label %bb.bm

bb.af:                                            ; preds = %bb.ae
  %i.ae = icmp ugt i64 %0, 2147483648
  br i1 %i.ae, label %bb.ag, label %bb.bm

bb.ag:                                            ; preds = %bb.af
  %i.af = icmp ugt i64 %0, 4294967296
  br i1 %i.af, label %bb.ah, label %bb.bm

bb.ah:                                            ; preds = %bb.ag
  %i.ag = icmp ugt i64 %0, 8589934592
  br i1 %i.ag, label %bb.ai, label %bb.bm

bb.ai:                                            ; preds = %bb.ah
  %i.ah = icmp ugt i64 %0, 17179869184
  br i1 %i.ah, label %bb.aj, label %bb.bm

bb.aj:                                            ; preds = %bb.ai
  %i.ai = icmp ugt i64 %0, 34359738368
  br i1 %i.ai, label %bb.ak, label %bb.bm

bb.ak:                                            ; preds = %bb.aj
  %i.aj = icmp ugt i64 %0, 68719476736
end_hunk_0
