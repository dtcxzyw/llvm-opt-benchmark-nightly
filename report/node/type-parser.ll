Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-parser?download=true
inline.NumInlined: 1888
inline.NumDeleted: 883
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft10TypeParser8ParseSetINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ad = add i64 %i.v, 1
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load ptr, ptr %2, align 8               ; 7 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 5 uses
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %bb.k, label %bb.l, !prof !9

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = icmp ult i64 %i.ak, 9
  br i1 %i.al, label %bb.n, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp samesign ult i64 %i.ak, 3
  br i1 %i.ao, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ap = load double, ptr %i.ag, align 8, !noalias !34 ; 2 uses
  %i.aq = call noundef i1 @llvm.is.fpclass.f64(double %i.ap, /* (nzero) */ i32 32)
  br i1 %i.aq, label %bb.p, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i, !prof !9

bb.p:                                             ; preds = %bb.o
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.016.0.i.i = phi double [ 0.000000e+00, %bb.p ], [ %i.ap, %bb.o ]
  %.0.i.i.i = phi i32 [ 2, %bb.p ], [ 0, %bb.o ]  ; 2 uses
  %i.ar = icmp eq i64 %i.aj, 16
  br i1 %i.ar, label %bb.q, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.at = load double, ptr %i.as, align 8, !noalias !34 ; 2 uses
  %i.au = call noundef i1 @llvm.is.fpclass.f64(double %i.at, /* (nzero) */ i32 32)
  br i1 %i.au, label %bb.r, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i, !prof !9

bb.r:                                             ; preds = %bb.q
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i: ; preds = %bb.r, %bb.q, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %.sroa.6.0.i.i = phi double [ undef, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ], [ 0.000000e+00, %bb.r ], [ %i.at, %bb.q ]
  %.010.i.i = phi i32 [ %.0.i.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ], [ 2, %bb.r ], [ %.0.i.i.i, %bb.q ]
  %i.av = bitcast double %.sroa.016.0.i.i to i64
  %i.aw = bitcast double %.sroa.6.0.i.i to i64
  br label %bb.y

bb.s:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !noalias !34 ; 2 uses
  %i.bb = sub i64 %i.ay, %i.ba
  %i.bc = icmp ugt i64 %i.aj, %i.bb
  br i1 %i.bc, label %bb.t, label %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i, !prof !9

bb.t:                                             ; preds = %bb.s
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 noundef %i.aj) #13, !noalias !34
  %.pre.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !34
  br label %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i: ; preds = %bb.t, %bb.s
  %i.bd = phi i64 [ %.pre.i.i.i.i, %bb.t ], [ %i.ba, %bb.s ] ; 3 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = add i64 %i.bd, %i.aj
  store i64 %i.bf, ptr %i.az, align 8, !noalias !34
  %unroll_iter = and i64 %i.ak, 14
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i
  %.026.i.i = phi i64 [ 0, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i ], [ %i.br, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1 ] ; 4 uses
  %.125.i.i = phi i32 [ 0, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i ], [ %.0.i13.i.i.1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %_ZN2v88internal4Zone13AllocateArrayIdA_dEEPT_m.exit.i.i ], [ %niter.next.1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.026.i.i
  %i.bh = load double, ptr %i.bg, align 8, !noalias !34 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.026.i.i
  %i.bj = call noundef i1 @llvm.is.fpclass.f64(double %i.bh, /* (nzero) */ i32 32)
  br i1 %i.bj, label %bb.v, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.bk = or i32 %.125.i.i, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i: ; preds = %bb.v, %bb.u
  %storemerge.i.i = phi double [ 0.000000e+00, %bb.v ], [ %i.bh, %bb.u ]
  %.0.i13.i.i = phi i32 [ %i.bk, %bb.v ], [ %.125.i.i, %bb.u ] ; 2 uses
  store double %storemerge.i.i, ptr %i.bi, align 8, !noalias !34
  %i.bl = or disjoint i64 %.026.i.i, 1            ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !noalias !34 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  %i.bp = call noundef i1 @llvm.is.fpclass.f64(double %i.bn, /* (nzero) */ i32 32)
  br i1 %i.bp, label %bb.w, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1, !prof !9

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i
  %i.bq = or i32 %.0.i13.i.i, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1: ; preds = %bb.w, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i
  %storemerge.i.i.1 = phi double [ 0.000000e+00, %bb.w ], [ %i.bn, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i ]
  %.0.i13.i.i.1 = phi i32 [ %i.bq, %bb.w ], [ %.0.i13.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i ] ; 4 uses
  store double %storemerge.i.i.1, ptr %i.bo, align 8, !noalias !34
  %i.br = add nuw i64 %.026.i.i, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit.unr-lcssa, label %bb.u, !llvm.loop !39

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit.unr-lcssa: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.1
  %i.bs = and i64 %i.aj, 8
  %lcmp.mod.not = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit.unr-lcssa
  %lcmp.mod70 = trunc i64 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.br
  %i.bu = load double, ptr %i.bt, align 8, !noalias !34 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.br
  %i.bw = call noundef i1 @llvm.is.fpclass.f64(double %i.bu, /* (nzero) */ i32 32)
  br i1 %i.bw, label %bb.x, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.epil, !prof !9

bb.x:                                             ; preds = %.epil.preheader
  %i.bx = or i32 %.0.i13.i.i.1, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.epil

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.epil: ; preds = %bb.x, %.epil.preheader
  %storemerge.i.i.epil = phi double [ 0.000000e+00, %bb.x ], [ %i.bu, %.epil.preheader ]
  %.0.i13.i.i.epil = phi i32 [ %i.bx, %bb.x ], [ %.0.i13.i.i.1, %.epil.preheader ]
  store double %storemerge.i.i.epil, ptr %i.bv, align 8, !noalias !34
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit: ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit.unr-lcssa, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.epil
  %.0.i13.i.i.lcssa = phi i32 [ %.0.i13.i.i.1, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit.unr-lcssa ], [ %.0.i13.i.i.epil, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit14.i.i.epil ]
  %.pre.pre = load i8, ptr %i.o, align 8, !range !7
  %i.by = trunc nuw i8 %.pre.pre to i1
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit
  %.pre = phi i1 [ true, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %i.by, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.15.0 = phi i64 [ %i.aw, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ 0, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.13.0 = phi i64 [ %i.av, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %i.bd, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.11.0 = phi i32 [ %.010.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit12.i.i ], [ %.0.i13.i.i.lcssa, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE3SetERKSt6vectorIdSaIdEEPNS0_4ZoneE.exit.loopexit ]
  %.sroa.7.0 = trunc nuw nsw i64 %i.ak to i8
  store i8 5, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bz, align 8
  store i8 0, ptr %i.o, align 8
  br i1 %.pre, label %bb.z, label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit

bb.z:                                             ; preds = %.thread, %bb.y
  %i.ca = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #15
  br label %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit: ; preds = %.thread46, %bb.y, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Optional_baseISt6vectorIdSaIdEELb0ELb0EED2Ev.exit, %.loopexit20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser10ParseRangeINS2_9FloatTypeILm64EEEEESt8optionalIT_Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.13 = alloca double, align 8              ; 6 uses
  %.sroa.15 = alloca double, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8    ; 2 uses
  %i.c = icmp ult i64 %.promoted.i.i, %i.b
  br i1 %i.c, label %.lr.ph.i.i, label %.loopexit43

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.f = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit43, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 91
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %.loopexit43

.loopexit43:                                      ; preds = %bb.c, %bb.d, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.m, align 8
  br label %bb.y

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %i.f, 1
  store i64 %i.n, ptr %i.a, align 8
  %i.o = tail call { double, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIdEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.p = extractvalue { double, i8 } %i.o, 0      ; 3 uses
  %i.q = extractvalue { double, i8 } %i.o, 1
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.s, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i.i1 = load i64, ptr %i.a, align 8   ; 2 uses
  %i.u = icmp ult i64 %.promoted.i.i1, %i.t
  br i1 %i.u, label %.lr.ph.i.i3, label %.loopexit42

.lr.ph.i.i3:                                      ; preds = %bb.g
  %i.v = load ptr, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i3
  %i.w = phi i64 [ %.promoted.i.i1, %.lr.ph.i.i3 ], [ %i.aa, %bb.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp eq i8 %i.y, 32
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8
  %exitcond.not.i.i10 = icmp eq i64 %i.aa, %i.t
  br i1 %exitcond.not.i.i10, label %.loopexit42, label %bb.h, !llvm.loop !5

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp ne i64 %i.t, %i.w
  %i.ac = icmp eq i8 %i.y, 44
  %or.cond87 = and i1 %i.ab, %i.ac
  br i1 %or.cond87, label %bb.k, label %.loopexit42

.loopexit42:                                      ; preds = %bb.i, %bb.j, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ad, align 8
  br label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ae = add i64 %i.w, 1
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = tail call { double, i8 } @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIdEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ag = extractvalue { double, i8 } %i.af, 0    ; 3 uses
  %i.ah = extractvalue { double, i8 } %i.af, 1
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.aj, align 8
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %1, align 8               ; 3 uses
  %.promoted.i.i12 = load i64, ptr %i.a, align 8  ; 2 uses
  %i.al = icmp ult i64 %.promoted.i.i12, %i.ak
  br i1 %i.al, label %.lr.ph.i.i14, label %.loopexit

.lr.ph.i.i14:                                     ; preds = %bb.m
  %i.am = load ptr, ptr %i.d, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i14
  %i.an = phi i64 [ %.promoted.i.i12, %.lr.ph.i.i14 ], [ %i.ar, %bb.o ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = icmp eq i8 %i.ap, 32
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = add i64 %i.an, 1                        ; 3 uses
  store i64 %i.ar, ptr %i.a, align 8
  %exitcond.not.i.i21 = icmp eq i64 %i.ar, %i.ak
  br i1 %exitcond.not.i.i21, label %.loopexit, label %bb.n, !llvm.loop !5

bb.p:                                             ; preds = %bb.n
  %i.as = icmp ne i64 %i.ak, %i.an
  %i.at = icmp eq i8 %i.ap, 93
  %or.cond88 = and i1 %i.as, %i.at
  br i1 %or.cond88, label %bb.q, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.au, align 8
  br label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.av = add i64 %i.an, 1
  store i64 %i.av, ptr %i.a, align 8
  %i.aw = fcmp ugt double %i.p, %i.ag
  br i1 %i.aw, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) #14
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.ax = tail call noundef i1 @llvm.is.fpclass.f64(double %i.p, /* (nzero) */ i32 32)
  br i1 %i.ax, label %bb.t, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i, !prof !9

bb.t:                                             ; preds = %bb.s
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i = phi double [ 0.000000e+00, %bb.t ], [ %i.p, %bb.s ] ; 4 uses
  %.0.i.i.i = phi i32 [ 2, %bb.t ], [ 0, %bb.s ]
  %i.ay = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ag, /* (nzero) */ i32 32)
  br i1 %i.ay, label %bb.u, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !9

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.u, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i
  %.014.i.i = phi double [ 0.000000e+00, %bb.u ], [ %i.ag, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ] ; 2 uses
  %.0.i4.i.i = phi i32 [ 2, %bb.u ], [ %.0.i.i.i, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit.i.i ] ; 2 uses
  %i.az = fcmp oeq double %.0.i.i, %.014.i.i
  br i1 %i.az, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  %i.ba = tail call noundef i1 @llvm.is.fpclass.f64(double %.0.i.i, /* (nzero) */ i32 32)
  br i1 %i.ba, label %bb.w, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit, !prof !9

bb.w:                                             ; preds = %bb.v
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  store double %.0.i.i, ptr %.sroa.13, align 8, !alias.scope !40
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit: ; preds = %bb.v, %bb.w, %bb.x
  %.sroa.11.0 = phi i32 [ %.0.i4.i.i, %bb.x ], [ 2, %bb.w ], [ %.0.i4.i.i, %bb.v ]
  %.sroa.7.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %.sink5.i.sroa.phi = phi ptr [ %.sroa.15, %bb.x ], [ %.sroa.13, %bb.w ], [ %.sroa.13, %bb.v ]
  %.sroa.016.0.i.sink.i = phi double [ %.014.i.i, %bb.x ], [ 0.000000e+00, %bb.w ], [ %.0.i.i, %bb.v ]
  store double %.sroa.016.0.i.sink.i, ptr %.sink5.i.sroa.phi, align 8, !alias.scope !45
  store i8 5, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload = load double, ptr %.sroa.13, align 8
  store double %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload = load double, ptr %.sroa.15, align 8
  store double %.sroa.15.0..sroa.15.0..sroa.15.0..sroa.15.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  br label %bb.y

bb.y:                                             ; preds = %bb.f, %.loopexit42, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE5RangeEddPNS0_4ZoneE.exit, %.loopexit, %bb.l, %.loopexit43
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft10TypeParser16ParseSetElementsIjEESt8optionalISt6vectorIT_SaIS7_EEEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional.34") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %1, align 8                ; 3 uses
  %.promoted.i = load i64, ptr %i.a, align 8      ; 2 uses
  %i.c = icmp ult i64 %.promoted.i, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.f = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.j, ptr %i.a, align 8
  %exitcond.not.i = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not.i, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.b, !llvm.loop !5

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ne i64 %i.b, %i.f
  %i.l = icmp eq i8 %i.h, 125
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.c, %bb.a, %bb.d
  %i.m = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.n = and i64 %i.m, 4294967296
  %.not109 = icmp eq i64 %i.n, 0
  br i1 %.not109, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.p, align 8
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.f:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13
  %.sroa.023.0.extract.trunc113.in = phi i64 [ %i.m, %.lr.ph ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13 ]
  %.sroa.027.0112 = phi ptr [ null, %.lr.ph ], [ %.sroa.027.3, %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13 ] ; 5 uses
  %.sroa.13.0111 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.2, %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13 ] ; 4 uses
  %.sroa.25.0110 = phi ptr [ null, %.lr.ph ], [ %.sroa.25.3, %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13 ] ; 2 uses
  %.sroa.023.0.extract.trunc113 = trunc i64 %.sroa.023.0.extract.trunc113.in to i32 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0111, %.sroa.25.0110
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.sroa.023.0.extract.trunc113, ptr %.sroa.13.0111, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.h:                                             ; preds = %bb.f
  %i.q = ptrtoint ptr %.sroa.13.0111 to i64
  %i.r = ptrtoint ptr %.sroa.027.0112 to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775804
  br i1 %i.t, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.u = ashr exact i64 %i.s, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2305843009213693951)
  %i.y = select i1 %i.w, i64 2305843009213693951, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #16 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %i.s ; 2 uses
  store i32 %.sroa.023.0.extract.trunc113, ptr %i.ab, align 4
  %i.ac = icmp sgt i64 %i.s, 0
  br i1 %i.ac, label %bb.j, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aa, ptr align 4 %.sroa.027.0112, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.027.0112, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.0112, i64 noundef %i.s) #15
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %.sroa.25.3 = phi ptr [ %i.ad, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.25.0110, %bb.g ] ; 8 uses
  %.pn = phi ptr [ %i.ab, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.13.0111, %bb.g ] ; 4 uses
  %.sroa.027.3 = phi ptr [ %i.aa, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.027.0112, %bb.g ] ; 14 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 9 uses
  %i.ae = load i64, ptr %1, align 8               ; 6 uses
  %.promoted.i3 = load i64, ptr %i.a, align 8     ; 3 uses
  %i.af = icmp ult i64 %.promoted.i3, %i.ae
  br i1 %i.af, label %.lr.ph.i5, label %.loopexit72

.lr.ph.i5:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.ag = load ptr, ptr %i.o, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i5
  %i.ah = phi i64 [ %.promoted.i3, %.lr.ph.i5 ], [ %i.al, %bb.m ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 32
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.al, ptr %i.a, align 8
  %exitcond.not.i12 = icmp eq i64 %i.al, %i.ae
  br i1 %exitcond.not.i12, label %._crit_edge, label %bb.l, !llvm.loop !5

bb.n:                                             ; preds = %bb.l
  %i.am = icmp eq i64 %i.ae, %i.ah
  br i1 %i.am, label %._crit_edge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i7

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i7: ; preds = %bb.n
  %i.an = icmp eq i8 %i.aj, 125
  br i1 %i.an, label %bb.r, label %.loopexit72

.loopexit72:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.promoted.i.i = phi i64 [ %.promoted.i3, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i7 ] ; 2 uses
  %i.ao = icmp ult i64 %.promoted.i.i, %i.ae
  br i1 %i.ao, label %.lr.ph.i.i, label %._crit_edge

.lr.ph.i.i:                                       ; preds = %.loopexit72
  %i.ap = load ptr, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.aq = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.au, %bb.p ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = icmp eq i8 %i.as, 32
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.au, ptr %i.a, align 8
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.ae
  br i1 %exitcond.not.i.i, label %._crit_edge, label %bb.o, !llvm.loop !5

bb.q:                                             ; preds = %bb.o
  %i.av = icmp ne i64 %i.ae, %i.aq
  %i.aw = icmp eq i8 %i.as, 44
  %or.cond185 = and i1 %i.av, %i.aw
  br i1 %or.cond185, label %_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13, label %._crit_edge

_ZN2v88internal8compiler10turboshaft10TypeParser6IsNextERKSt17basic_string_viewIcSt11char_traitsIcEE.exit13: ; preds = %bb.q
  %i.ax = add i64 %i.aq, 1
  store i64 %i.ax, ptr %i.a, align 8
  %i.ay = tail call i64 @_ZN2v88internal8compiler10turboshaft10TypeParser9ReadValueIjEESt8optionalIT_Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.az = and i64 %i.ay, 4294967296
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %._crit_edge, label %bb.f

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i7
  %i.ba = icmp eq ptr %.sroa.027.3, %.sroa.13.2
  br i1 %i.ba, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %_ZN2v84base4sortISt6vectorIjSaIjEEEEvRT_.exit

_ZN2v84base4sortISt6vectorIjSaIjEEEEvRT_.exit:    ; preds = %bb.r
  %i.bb = ptrtoint ptr %.sroa.13.2 to i64
  %i.bc = ptrtoint ptr %.sroa.027.3 to i64        ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
end_hunk_0
