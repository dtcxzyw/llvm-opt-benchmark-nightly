Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseGenMatrix?download=true
inline.NumInlined: 625
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5Ipopt14DenseGenMatrix23HighRankUpdateTransposeEdRKNS_17MultiVectorMatrixES3_d:bb.a
  %i.gr = sub i64 %i.gp, %i.gq
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gr) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i93

_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i93:             ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.gs = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i7.i94 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i7.i94, label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i95, label %bb.af

bb.ad:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.gt = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i97, label %.noexc79, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #20
  br label %.noexc79

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i93
  %i.gy = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gs to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef %i.hb) #20
  br label %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i95

_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i95: ; preds = %bb.af, %_ZNSt6vectorIdSaIdEED2Ev.exit5.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body99

.noexc79:                                         ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.gg, label %.noexc81, label %bb.ag

bb.ag:                                            ; preds = %.noexc79
  %i.hc = load ptr, ptr %.0.i4.i61, align 8, !tbaa !8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = invoke noundef double %i.he(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i61, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i68)
          to label %.noexc80 unwind label %bb.al, !inline_history !81

.noexc80:                                         ; preds = %bb.ag
  store double %i.hf, ptr %i.a, align 8, !tbaa !52
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i61, ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i68)
          to label %.noexc81 unwind label %bb.al

.noexc81:                                         ; preds = %.noexc80, %.noexc79
  %i.hg = load double, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc81, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i74
  %.0.i72 = phi double [ %i.gb, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i74 ], [ %i.hg, %.noexc81 ]
  %i.hh = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.hi = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !36
  %i.hl = mul nsw i32 %i.hk, %i.er
  %i.hm = trunc nuw nsw i64 %indvars.iv to i32
  %i.hn = add nsw i32 %i.hl, %i.hm
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ho ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !52
  %i.hr = fmul double %4, %i.hq
  %i.hs = call double @llvm.fmuladd.f64(double %1, double %.0.i72, double %i.hr)
  store double %i.hs, ptr %i.hp, align 8, !tbaa !52
  %.not.i.i83 = icmp eq ptr %.0.i4.i68, null
  br i1 %.not.i.i83, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i4.i68, i64 8 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !14
  %i.hv = add nsw i32 %i.hu, -1                   ; 2 uses
  store i32 %i.hv, ptr %i.ht, align 8, !tbaa !14
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.aj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84

bb.aj:                                            ; preds = %bb.ai
  %i.hx = load ptr, ptr %.0.i4.i68, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i68) #18, !inline_history !92
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84:      ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i4.i61, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !14
  %i.ic = add nsw i32 %i.ib, -1                   ; 2 uses
  store i32 %i.ic, ptr %i.ia, align 8, !tbaa !14
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.ak, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit86

bb.ak:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84
  %i.ie = load ptr, ptr %.0.i4.i61, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i61) #18, !inline_history !92
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit86

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit86:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit84, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ih = load ptr, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !36
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next, %i.ik
  br i1 %i.il, label %bb.v, label %._crit_edge, !llvm.loop !101

bb.al:                                            ; preds = %bb.y, %.noexc80, %bb.ag, %bb.x
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %.body99

.body99:                                          ; preds = %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i95, %bb.al
  %eh.lpad-body100 = phi { ptr, i32 } [ %i.im, %bb.al ], [ %i.gm, %_ZNSt6vectorIPKN5Ipopt12TaggedObjectESaIS3_EED2Ev.exit8.i95 ] ; 3 uses
  %.not.i.i87 = icmp eq ptr %.0.i4.i68, null
  br i1 %.not.i.i87, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88, label %bb.am

bb.am:                                            ; preds = %.body99
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i4.i68, i64 8 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !14
  %i.ip = add nsw i32 %i.io, -1                   ; 2 uses
  store i32 %i.ip, ptr %i.in, align 8, !tbaa !14
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.an, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88

bb.an:                                            ; preds = %bb.am
  %i.ir = load ptr, ptr %.0.i4.i68, align 8, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i68) #18, !inline_history !92
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88:      ; preds = %bb.an, %bb.am, %.body99
  %.not.i.i89 = icmp eq ptr %.0.i4.i61, null
  br i1 %.not.i.i89, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.i4.i61, i64 8 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !14
  %i.iw = add nsw i32 %i.iv, -1                   ; 2 uses
  store i32 %i.iw, ptr %i.iu, align 8, !tbaa !14
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge130, %.preheader.lr.ph, %.preheader114.lr.ph, %.preheader115, %.preheader113
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.iy, align 8, !tbaa !38
  call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57.sink.split: ; preds = %bb.ao, %bb.u
  %.0.i4.i61182.sink188 = phi ptr [ %.0.i4.i, %bb.u ], [ %.0.i4.i61, %bb.ao ] ; 2 uses
  %.pn37.pn.ph = phi { ptr, i32 } [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body100, %bb.ao ]
  %i.iz = load ptr, ptr %.0.i4.i61182.sink188, align 8, !tbaa !8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i61182.sink188) #18
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57.sink.split, %bb.ao, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88, %bb.u, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit55
  %.pn37.pn = phi { ptr, i32 } [ %eh.lpad-body100, %bb.ao ], [ %eh.lpad-body, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit55 ], [ %eh.lpad-body, %bb.u ], [ %eh.lpad-body100, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit88 ], [ %.pn37.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit57.sink.split ]
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt14DenseGenMatrix21ComputeCholeskyFactorERKNS_14DenseSymMatrixE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 8 uses
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 7 uses
  %i.h = icmp sgt i32 %i.e, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 8 uses
  br i1 %i.h, label %.preheader34.lr.ph, label %._crit_edge

.preheader34.lr.ph:                               ; preds = %bb.a
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = ptrtoaddr ptr %i.g to i64
  %i.m = zext nneg i32 %i.e to i64                ; 6 uses
  %i.n = sub i64 %i.l, %i.k
  %diff.check = icmp ugt i64 %i.n, -32
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader34.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %2 = mul nuw nsw i64 %indvars.iv, %i.m          ; 6 uses
  %3 = sub nsw i64 %i.m, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader34
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.o = add i64 %indvars.iv, %n.vec
  %invariant.op = add nuw i64 %indvars.iv, %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !52
  %wide.load54 = load <2 x double>, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.reass ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %wide.load, ptr %i.r, align 8, !tbaa !52
  store <2 x double> %wide.load54, ptr %i.s, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader34, %middle.block
  %indvars.iv41.ph = phi i64 [ %indvars.iv, %.preheader34 ], [ %i.o, %middle.block ] ; 4 uses
  %i.u = sub i64 %i.m, %indvars.iv41.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv41.prol = phi i64 [ %indvars.iv.next42.prol, %scalar.ph.prol ], [ %indvars.iv41.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = add nuw nsw i64 %indvars.iv41.prol, %2   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  store double %i.x, ptr %i.y, align 8, !tbaa !52
  %indvars.iv.next42.prol = add nuw nsw i64 %indvars.iv41.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !111

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv41.unr = phi i64 [ %indvars.iv41.ph, %scalar.ph.preheader ], [ %indvars.iv.next42.prol, %scalar.ph.prol ]
  %i.z = sub i64 %indvars.iv41.ph, %i.m
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op58 = add nuw nsw i64 1, %2
  %invariant.op60 = add nuw nsw i64 2, %2
  %invariant.op62 = add nuw nsw i64 3, %2
  br label %scalar.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZN5Ipopt13IpLapackPotrfEiPdiRi(i32 noundef %i.e, ptr noundef %i.j, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !58
  %.not = icmp eq i32 %i.ac, 0                    ; 2 uses
  br i1 %.not, label %.preheader33, label %bb.b

.preheader33:                                     ; preds = %._crit_edge
  %i.ad = icmp sgt i32 %i.e, 1
  br i1 %i.ad, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %.preheader33
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 5 uses
  %i.af = zext nneg i32 %i.e to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 5 uses
  %i.ah = add nsw i32 %i.e, -1
  %wide.trip.count50 = zext nneg i32 %i.ah to i64 ; 2 uses
  %xtraiter55 = and i64 %wide.trip.count50, 3     ; 3 uses
  %i.ai = add nsw i32 %i.e, -2
  %i.aj = icmp ult i32 %i.ai, 3
  br i1 %i.aj, label %.preheader.epil.preheader, label %.preheader.lr.ph.new

.preheader.lr.ph.new:                             ; preds = %.preheader.lr.ph
  %unroll_iter = and i64 %wide.trip.count50, 2147483644
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond46.not, label %._crit_edge, label %.preheader34, !llvm.loop !112

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv41 = phi i64 [ %indvars.iv41.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next42.3, %scalar.ph ] ; 5 uses
  %i.ak = add nuw nsw i64 %indvars.iv41, %2       ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ak
  store double %i.am, ptr %i.an, align 8, !tbaa !52
  %.reass59 = add nuw nsw i64 %indvars.iv41, %invariant.op58 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass59
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.reass59
  store double %i.ap, ptr %i.aq, align 8, !tbaa !52
  %.reass61 = add nuw nsw i64 %indvars.iv41, %invariant.op60 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass61
  %i.as = load double, ptr %i.ar, align 8, !tbaa !52
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.reass61
  store double %i.as, ptr %i.at, align 8, !tbaa !52
  %.reass63 = add nuw nsw i64 %indvars.iv41, %invariant.op62 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass63
  %i.av = load double, ptr %i.au, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.reass63
  store double %i.av, ptr %i.aw, align 8, !tbaa !52
  %indvars.iv.next42.3 = add nuw nsw i64 %indvars.iv41, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next42.3, %i.m
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !113

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph.new
  %indvar = phi i64 [ 0, %.preheader.lr.ph.new ], [ %indvar.next.3, %.preheader ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.lr.ph.new ], [ %niter.next.3, %.preheader ]
  %i.ax = or disjoint i64 %indvar, 1
  %i.ay = mul i64 %i.ag, %i.ax
  %scevgep = getelementptr i8, ptr %i.ae, i64 %i.ay
  %i.az = shl nuw nsw i64 %indvar, 3
  %i.ba = or disjoint i64 %i.az, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ba, i1 false), !tbaa !52
  %i.bb = or disjoint i64 %indvar, 2
  %i.bc = mul i64 %i.ag, %i.bb
  %scevgep.1 = getelementptr i8, ptr %i.ae, i64 %i.bc
  %indvar.next = shl i64 %indvar, 3
  %i.bd = or disjoint i64 %indvar.next, 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.1, i8 0, i64 %i.bd, i1 false), !tbaa !52
  %i.be = or disjoint i64 %indvar, 3
  %i.bf = mul i64 %i.ag, %i.be
  %scevgep.2 = getelementptr i8, ptr %i.ae, i64 %i.bf
  %indvar.next.1 = shl i64 %indvar, 3
  %i.bg = or disjoint i64 %indvar.next.1, 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.2, i8 0, i64 %i.bg, i1 false), !tbaa !52
  %i.bh = add nuw i64 %indvar, 4
  %i.bi = mul i64 %i.ag, %i.bh
  %scevgep.3 = getelementptr i8, ptr %i.ae, i64 %i.bi
  %indvar.next.2 = shl i64 %indvar, 3
  %i.bj = add nuw nsw i64 %indvar.next.2, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.3, i8 0, i64 %i.bj, i1 false), !tbaa !52
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge39.loopexit.unr-lcssa, label %.preheader, !llvm.loop !114

._crit_edge39.loopexit.unr-lcssa:                 ; preds = %.preheader
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %._crit_edge39, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge39.loopexit.unr-lcssa, %.preheader.lr.ph
  %indvar.epil.init = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next.3, %._crit_edge39.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter55, 0
  call void @llvm.assume(i1 %lcmp.mod57)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.bk = add nuw i64 %indvar.epil, 1
  %i.bl = mul i64 %i.ag, %i.bk
  %scevgep.epil = getelementptr i8, ptr %i.ae, i64 %i.bl
  %i.bm = shl nuw nsw i64 %indvar.epil, 3
  %i.bn = add nuw nsw i64 %i.bm, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.bn, i1 false), !tbaa !52
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter55
  br i1 %epil.iter.cmp.not, label %._crit_edge39, label %.preheader.epil, !llvm.loop !115

._crit_edge39:                                    ; preds = %._crit_edge39.loopexit.unr-lcssa, %.preheader.epil, %.preheader33
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 2, ptr %i.bo, align 4, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge39
  %.sink = phi i8 [ 1, %._crit_edge39 ], [ 0, %._crit_edge ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %.sink, ptr %i.bp, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not
}

declare void @_ZN5Ipopt13IpLapackPotrfEiPdiRi(i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt14DenseGenMatrix19ComputeEigenVectorsERKNS_14DenseSymMatrixERNS_11DenseVectorE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(97) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 7 uses
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = zext nneg i32 %i.e to i64                ; 6 uses
  %i.n = sub i64 %i.i, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %3 = mul nuw nsw i64 %indvars.iv, %i.m          ; 6 uses
  %4 = sub nsw i64 %i.m, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %4, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.o = add i64 %indvars.iv, %n.vec
  %invariant.op = add nuw i64 %indvars.iv, %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !tbaa !52
  %wide.load35 = load <2 x double>, ptr %i.q, align 8, !tbaa !52
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.reass ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %wide.load, ptr %i.r, align 8, !tbaa !52
  store <2 x double> %wide.load35, ptr %i.s, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv26.ph = phi i64 [ %indvars.iv, %.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %i.u = sub i64 %i.m, %indvars.iv26.ph
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv26.prol = phi i64 [ %indvars.iv.next27.prol, %scalar.ph.prol ], [ %indvars.iv26.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = add nuw nsw i64 %indvars.iv26.prol, %3   ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !52
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.v
  store double %i.x, ptr %i.y, align 8, !tbaa !52
  %indvars.iv.next27.prol = add nuw nsw i64 %indvars.iv26.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !117

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv26.unr = phi i64 [ %indvars.iv26.ph, %scalar.ph.preheader ], [ %indvars.iv.next27.prol, %scalar.ph.prol ]
  %i.z = sub i64 %indvars.iv26.ph, %i.m
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %.loopexit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op36 = add nuw nsw i64 1, %3
  %invariant.op38 = add nuw nsw i64 2, %3
  %invariant.op40 = add nuw nsw i64 3, %3
  br label %scalar.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !118, !range !119, !noundef !120
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 233 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !range !119
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %2)
  store i8 1, ptr %i.ab, align 8, !tbaa !118
  store i8 0, ptr %i.ae, align 1, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !123 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #19
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.ar, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.ah, align 8, !tbaa !43
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.as = phi ptr [ %i.ai, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  call void @_ZN5Ipopt12IpLapackSyevEbiPdiS0_Ri(i1 noundef zeroext true, i32 noundef %i.e, ptr noundef %i.au, i32 noundef %i.e, ptr noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.av = load i32, ptr %i.a, align 4, !tbaa !58
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %i.ax, align 8, !tbaa !38
  call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.az = load i32, ptr %i.a, align 4, !tbaa !58
  %i.ba = icmp eq i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %i.ba

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond31.not, label %._crit_edge, label %.preheader, !llvm.loop !125

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv26 = phi i64 [ %indvars.iv26.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next27.3, %scalar.ph ] ; 5 uses
  %i.bb = add nuw nsw i64 %indvars.iv26, %3       ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bb
  store double %i.bd, ptr %i.be, align 8, !tbaa !52
  %.reass37 = add nuw nsw i64 %indvars.iv26, %invariant.op36 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass37
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.reass37
  store double %i.bg, ptr %i.bh, align 8, !tbaa !52
  %.reass39 = add nuw nsw i64 %indvars.iv26, %invariant.op38 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass39
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.reass39
  store double %i.bj, ptr %i.bk, align 8, !tbaa !52
  %.reass41 = add nuw nsw i64 %indvars.iv26, %invariant.op40 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.reass41
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !52
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.reass41
  store double %i.bm, ptr %i.bn, align 8, !tbaa !52
  %indvars.iv.next27.3 = add nuw nsw i64 %indvars.iv26, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next27.3, %i.m
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !126
}

declare void @_ZN5Ipopt12IpLapackSyevEbiPdiS0_Ri(i1 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseGenMatrix23CholeskyBackSolveMatrixEbdRS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i1 noundef zeroext %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(104) initializes((88, 89)) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i8 1, ptr %i.k, align 8, !tbaa !38
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  tail call void @_ZN5Ipopt10IpBlasTrsmEbiidPKdiPdi(i1 noundef zeroext %1, i32 noundef %i.d, i32 noundef %i.h, double noundef %2, ptr noundef %i.j, i32 noundef %i.d, ptr noundef %i.m, i32 noundef %i.p)
  ret void
}

declare void @_ZN5Ipopt10IpBlasTrsmEbiidPKdiPdi(i1 noundef zeroext, i32 noundef, i32 noundef, double noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseGenMatrix19CholeskySolveVectorERNS_11DenseVectorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !118, !range !119, !noundef !120
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 233 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !119
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %1)
  store i8 1, ptr %i.g, align 8, !tbaa !118
  store i8 0, ptr %i.j, align 1, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Ipopt11DenseVector6ValuesEv.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !123  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #19
  br label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !43
  br label %_ZN5Ipopt11DenseVector6ValuesEv.exit

_ZN5Ipopt11DenseVector6ValuesEv.exit:             ; preds = %bb.c, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.x = phi ptr [ %i.n, %bb.c ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !123
  tail call void @_ZN5Ipopt13IpLapackPotrsEiiPKdiPdi(i32 noundef %i.d, i32 noundef 1, ptr noundef %i.f, i32 noundef %i.d, ptr noundef %i.x, i32 noundef %i.ab)
  ret void
}

declare void @_ZN5Ipopt13IpLapackPotrsEiiPKdiPdi(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt14DenseGenMatrix19CholeskySolveMatrixERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) initializes((88, 89)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 1, ptr %i.k, align 8, !tbaa !38
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  tail call void @_ZN5Ipopt13IpLapackPotrsEiiPKdiPdi(i32 noundef %i.d, i32 noundef %i.h, ptr noundef %i.j, i32 noundef %i.d, ptr noundef %i.m, i32 noundef %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt14DenseGenMatrix22ComputeLUFactorInPlaceEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 4 uses
  tail call void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.f, align 8, !tbaa !40
  %i.i = sext i32 %i.e to i64
  %i.j = icmp slt i32 %i.e, 0
  %i.k = shl nsw i64 %i.i, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #19 ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  call void @_ZN5Ipopt13IpLapackGetrfEiPdPiiRi(i32 noundef %i.e, ptr noundef %i.o, ptr noundef nonnull %i.m, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.p = load i32, ptr %i.a, align 4, !tbaa !58
  %.not = icmp eq i32 %i.p, 0                     ; 2 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr null, ptr %i.f, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.s, align 8, !tbaa !38
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.t, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.u, align 4, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not
}
end_hunk_0
