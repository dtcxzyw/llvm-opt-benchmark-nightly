Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39752
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 141
loop-unroll.NumUnrolled: 386
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 3 uses
  %i.is = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.it = sub i64 %i.iq, %i.is
  %i.iu = icmp ugt i64 %i.in, %i.it
  br i1 %i.iu, label %bb.ao, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !53

bb.ao:                                            ; preds = %bb.an
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ie, i64 noundef %i.in) #33
  %.pre.i.i.i = load i64, ptr %i.ir, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ao, %bb.an
  %i.iv = phi i64 [ %.pre.i.i.i, %bb.ao ], [ %i.is, %bb.an ] ; 2 uses
  %i.iw = inttoptr i64 %i.iv to ptr               ; 2 uses
  %i.ix = add i64 %i.iv, %i.in
  store i64 %i.ix, ptr %i.ir, align 8
  store ptr %i.iw, ptr %i.if, align 8
  %i.iy = load ptr, ptr %i.gc, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.iz = load ptr, ptr %i.gd, align 8
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.iw, ptr nonnull align 8 %i.iy, i64 %i.jc, i1 false)
  %.pre.i = load ptr, ptr %i.if, align 8
  %.pre228 = load ptr, ptr %i.gd, align 8
  %.pre229 = load ptr, ptr %i.gc, align 8
  %.pre231 = ptrtoint ptr %.pre229 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %.pre-phi = phi i64 [ %i.ij, %bb.ak ], [ %.pre231, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jd = phi ptr [ %i.ii, %bb.ak ], [ %.pre228, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.je = phi ptr [ null, %bb.ak ], [ %.pre.i, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.in
  store ptr %i.jf, ptr %i.ih, align 8
  %i.jg = ptrtoint ptr %i.jd to i64
  %i.jh = sub i64 %i.jg, %.pre-phi
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh
  store ptr %i.ji, ptr %i.ik, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gt, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.jj, ptr noundef nonnull align 8 dereferenceable(65) %i.gf, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #33
  %i.jk = add nuw i64 %.sroa.5.0145, 1            ; 2 uses
  %.not137 = icmp eq i64 %i.jk, %.0.i.i.i206
  br i1 %.not137, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.aq, %bb.z, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  %i.jl = load ptr, ptr %i.x, align 8
  %i.jm = load ptr, ptr %i.ah, align 8
  %i.jn = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.jm) #33, !inline_history !164
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %i.jl, ptr noundef %i.jn) #33, !inline_history !164
  %i.jo = load ptr, ptr %25, align 8
  store ptr %i.jo, ptr %29, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i8 0, i64 24, i1 false)
  %i.jq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %25) #33, !inline_history !164 ; 0 uses
  %i.jr = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull %29, i8 noundef zeroext 0, ptr noundef nonnull %24) #33, !inline_history !164
  br i1 %i.jr, label %bb.ar, label %bb.dd

bb.ar:                                            ; preds = %._crit_edge
  %i.js = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = load ptr, ptr %i.fi, align 8            ; 4 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 2 uses
  %i.jy = icmp eq i64 %i.jx, 168
  br i1 %i.jy, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8            ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8            ; 4 uses
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.ka to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = ashr exact i64 %i.kf, 3                 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.kc, %i.ka
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0813.i.i, i64 8 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.kh, %i.kc
  br i1 %.not.i102.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.as, %bb.at
  %.0813.i.i = phi ptr [ %i.kh, %bb.at ], [ %i.ka, %bb.as ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.ki = load i64, ptr %.0813.i.i, align 8
  store i64 %i.ki, ptr %13, align 8
  %i.kj = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #33, !inline_history !164
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br i1 %i.kj, label %bb.at, label %.lr.ph.i104.i

.loopexit:                                        ; preds = %bb.at, %bb.as
  %i.kk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !55, !noundef !56
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.au, label %.critedge8.i

bb.au:                                            ; preds = %.loopexit
  %i.km = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_30VisitGetNamedPropertyFromSuperEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.ka, i64 %i.kg), !inline_history !164
  br i1 %i.km, label %bb.av, label %.critedge8.i

bb.av:                                            ; preds = %bb.au
  %i.kn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !164
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.dd, label %bb.ay

.critedge8.i:                                     ; preds = %.loopexit, %bb.au
  %i.kp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !164
  %i.kq = icmp eq i64 %i.kp, 1
  br i1 %i.kq, label %bb.dd, label %bb.ay

bb.aw:                                            ; preds = %.lr.ph.i104.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.0814.i.i, i64 8 ; 2 uses
  %.not.i106.i = icmp eq ptr %i.kr, %i.kc
  br i1 %.not.i106.i, label %bb.ax, label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %.lr.ph.i.i, %bb.aw
  %.0814.i.i = phi ptr [ %i.kr, %bb.aw ], [ %i.ka, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ks = load i64, ptr %.0814.i.i, align 8
  store i64 %i.ks, ptr %12, align 8
  %i.kt = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #33, !inline_history !164
  %.not11.i.i = icmp eq i16 %i.kt, 130
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %.not11.i.i, label %bb.aw, label %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i

bb.ax:                                            ; preds = %bb.aw
  %i.ku = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !164
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dd, label %bb.ay

_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i: ; preds = %.lr.ph.i104.i
  %i.kw = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao, ptr %i.ka, i64 %i.kg, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !164
  %i.kx = icmp eq i64 %i.kw, 1
  br i1 %i.kx, label %bb.dd, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i, %bb.ax, %.critedge8.i, %bb.av
  %i.ky = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i107.i = load ptr, ptr %i.ky, align 8
  %i.kz = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20TryBuildPropertyLoadEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.at, ptr noundef %i.ao, ptr %.sroa.0.0.copyload.i107.i, ptr noundef nonnull align 8 dereferenceable(168) %i.ju), !inline_history !165
  br label %bb.dd

bb.az:                                            ; preds = %bb.ar
  %i.la = sdiv exact i64 %i.jx, 168               ; 5 uses
  %i.lb = trunc i64 %i.la to i32                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.ld = load i8, ptr %i.lc, align 8, !range !55, !noundef !56
  %i.le = trunc nuw i8 %i.ld to i1
  %i.lf = icmp sgt i32 %i.lb, 0                   ; 2 uses
  br i1 %i.lf, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %bb.az
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %2, <2 x i64> <i64 24, i64 32>
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.not15.i.i = icmp eq ptr %i.ao, null
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %wide.trip.count = and i64 %i.la, 2147483647
  br label %bb.ba

._crit_edge159:                                   ; preds = %._crit_edge152, %bb.az
  %.0101.i.i.lcssa = phi i1 [ false, %bb.az ], [ %.1102.i.i.lcssa, %._crit_edge152 ] ; 2 uses
  %.0.i.i.lcssa = phi i32 [ -1, %bb.az ], [ %.1.i.i.lcssa, %._crit_edge152 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 1), !inline_history !166
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.ls = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i8 0, ptr %i.ls, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  store i8 0, ptr %i.lt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.lu = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i8 0, ptr %i.lu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.lv = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 5 uses
  store i8 0, ptr %i.lv, align 8
  %i.lw = icmp sgt i32 %.0.i.i.lcssa, -1
  br i1 %i.lw, label %bb.bf, label %bb.bg

bb.ba:                                            ; preds = %.lr.ph158, %._crit_edge152
  %indvars.iv = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next, %._crit_edge152 ] ; 3 uses
  %.0.i.i156 = phi i32 [ -1, %.lr.ph158 ], [ %.1.i.i.lcssa, %._crit_edge152 ] ; 2 uses
  %.0101.i.i155 = phi i1 [ false, %.lr.ph158 ], [ %.1102.i.i.lcssa, %._crit_edge152 ] ; 2 uses
  %i.lx = load ptr, ptr %i.fi, align 8
  %i.ly = getelementptr inbounds nuw [168 x i8], ptr %i.lx, i64 %indvars.iv ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8            ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.mc = load ptr, ptr %i.mb, align 8            ; 2 uses
  %.not114.i.i146 = icmp eq ptr %i.ma, %i.mc
  br i1 %.not114.i.i146, label %._crit_edge152, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %bb.ba
  %i.md = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph151

._crit_edge152:                                   ; preds = %bb.be, %bb.ba
  %.1102.i.i.lcssa = phi i1 [ %.0101.i.i155, %bb.ba ], [ %spec.select.i.i, %bb.be ] ; 2 uses
  %.1.i.i.lcssa = phi i32 [ %.0.i.i156, %bb.ba ], [ %.3.i.i, %bb.be ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge159, label %bb.ba, !llvm.loop !167

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %bb.be
  %.1.i.i149 = phi i32 [ %.3.i.i, %bb.be ], [ %.0.i.i156, %.lr.ph151.preheader ] ; 3 uses
  %.1102.i.i148 = phi i1 [ %spec.select.i.i, %bb.be ], [ %.0101.i.i155, %.lr.ph151.preheader ]
  %.0109.i.i147 = phi ptr [ %i.ns, %bb.be ], [ %i.ma, %.lr.ph151.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.me = load i64, ptr %.0109.i.i147, align 8
  store i64 %i.me, ptr %1, align 8
  %i.mf = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !166
  %spec.select.i.i = select i1 %i.mf, i1 true, i1 %.1102.i.i148 ; 2 uses
  %i.mg = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !166
  br i1 %i.mg, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i, label %bb.be

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i: ; preds = %.lr.ph151
  %i.mh = load ptr, ptr %i.bg, align 8
  %i.mi = load ptr, ptr %i.x, align 8
  %i.mj = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.mh, ptr noundef %i.mi, ptr noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.mk = load i64, ptr %1, align 8
  store ptr %i.lk, ptr %i.li, align 16
  store i64 %i.mk, ptr %i.lg, align 8
  store <2 x ptr> %i.lj, ptr %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ml = load ptr, ptr %i.x, align 8
  %i.mm = load ptr, ptr %i.ah, align 8
  %i.mn = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.mm) #33
  %i.mo = load ptr, ptr %2, align 16              ; 2 uses
  %i.mp = load ptr, ptr %i.lh, align 8
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = ashr exact i64 %i.ms, 3
  store ptr %i.ml, ptr %3, align 8
  store ptr %i.mn, ptr %i.ll, align 8
  store ptr %i.mo, ptr %i.lm, align 8
  store i64 %i.mt, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 1, ptr %i.ln, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.lo, align 8
  store i32 0, ptr %i.lp, align 4
  %i.mu = load ptr, ptr %i.bg, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(352) %i.mu), !inline_history !166
  %.sroa.01.0.copyload.i = load i64, ptr %i.ln, align 8
  %i.mv = icmp eq i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.mv, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i
  %i.mw = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.mx = load ptr, ptr %i.x, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 312
  %i.mz = load ptr, ptr %i.my, align 8            ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i22 = icmp eq ptr %i.mz, null
  br i1 %.not10.i.i.i.i.i.i.i.i22, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i.i.i23:                         ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i.i.i24 = phi ptr [ %.1.i.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %i.mz, %bb.bb ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i25 = phi ptr [ %.19.i.i.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i.i.i23 ], [ %i.na, %bb.bb ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i24, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = icmp ult ptr %i.nc, %i.ao               ; 2 uses
  %.19.i.i.i.i.i.i.i.i26 = select i1 %i.nd, ptr %.0811.i.i.i.i.i.i.i.i25, ptr %.012.i.i.i.i.i.i.i.i24 ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i27 = select i1 %i.nd, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i24, i64 %.1.in.v.i.i.i.i.i.i.i.i27
  %.1.i.i.i.i.i.i.i.i29 = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i28, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i.i.i.i.i29, null
  br i1 %.not.i.i.i.i.i.i.i.i30, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i.i23, !llvm.loop !8

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i.i23
  %i.ne = icmp eq ptr %.19.i.i.i.i.i.i.i.i26, %i.na
  br i1 %i.ne, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31
  %i.nf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i26, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = icmp ult ptr %i.ao, %i.ng
  br i1 %i.nh, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i31, %bb.bb
  %i.ni = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef %i.mx) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i32
  %i.nj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i26, i64 40
  %i.nk = load i32, ptr %i.nj, align 8            ; 2 uses
  %i.nl = load i64, ptr %i.lq, align 8
  %i.nm = and i64 %i.nl, 65535
  %i.nn = icmp ne i64 %i.nm, 142
  %.not.i.i33 = or i1 %.not15.i.i, %i.nn
  br i1 %.not.i.i33, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.no = load i32, ptr %i.lr, align 8
  %i.np = and i32 %i.no, %i.nk
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.bc
  %.011.i.i = phi i32 [ %i.ni, %select.unfold.i.i ], [ %i.np, %bb.bc ], [ %i.nk, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.nq = and i32 %.011.i.i, 1
  %i.nr = icmp eq i32 %i.nq, 0
  %spec.select115.i.i = select i1 %i.nr, i32 %.1.i.i149, i32 %i.md
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i
  %.2.i.i = phi i32 [ %.1.i.i149, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i.i ], [ %spec.select115.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph151
  %.3.i.i = phi i32 [ %.2.i.i, %bb.bd ], [ %.1.i.i149, %.lr.ph151 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.ns = getelementptr inbounds nuw i8, ptr %.0109.i.i147, i64 8 ; 2 uses
  %.not114.i.i = icmp eq ptr %i.ns, %i.mc
  br i1 %.not114.i.i, label %._crit_edge152, label %.lr.ph151

bb.bf:                                            ; preds = %._crit_edge159
  store i8 0, ptr %i.lu, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %4, i32 noundef 2)
  store i8 1, ptr %i.lu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ao, ptr %i.d, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %7, ptr nonnull %i.d, i64 1), !inline_history !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.bj

bb.bg:                                            ; preds = %._crit_edge159
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = and i64 %i.nu, 7696581394432
  switch i64 %i.nv, label %bb.bh [
    i64 0, label %bb.bi
    i64 4398046511104, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 70, ptr %i.b, align 1
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = or i8 %i.nz, 1
  store i8 %i.oa, ptr %i.ny, align 1
  %i.ob = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i"

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  %i.oc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.ao), !inline_history !166
  %i.od = icmp eq i64 %i.oc, 1
  br i1 %i.od, label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i", label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %i.oe = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao), !inline_history !166 ; 2 uses
  br i1 %.0101.i.i.lcssa, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.oe, ptr %i.e, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ao, ptr %i.of, align 8
  %i.og = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder10AddNewNodeINS1_18MigrateMapIfNeededEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.e, i64 2), !inline_history !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0110.i.i = phi ptr [ %i.og, %bb.bk ], [ %i.oe, %bb.bj ]
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = ptrtoint ptr %i.oi to i64
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef %i.os) #33, !inline_history !166
  store i32 %i.ou, ptr %i.ot, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ov, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.596.8..sroa_idx98, i64 14, i1 false)
  store i32 %i.ox, ptr %i.ow, align 8
  store i32 %i.oz, ptr %i.oy, align 4
  %i.pt = load ptr, ptr %i.fi, align 8
  %i.pu = getelementptr inbounds nuw [168 x i8], ptr %i.pt, i64 %indvars.iv170 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 0, ptr %i.pc, align 8
  %i.pv = icmp eq i64 %indvars.iv170, %i.pr       ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.px = load ptr, ptr %i.pw, align 8            ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %i.qd = ashr exact i64 %i.qc, 3                 ; 2 uses
  br i1 %i.pv, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qe = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao, ptr %i.px, i64 %i.qd, ptr undef, i8 0, i1 noundef zeroext %i.le, i1 noundef zeroext %.0101.i.i.lcssa), !inline_history !166
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.qf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ao, ptr noundef %.0110.i.i, ptr %i.px, i64 %i.qd, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(40) %10), !inline_history !166
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %storemerge.i.i = phi i64 [ %i.qf, %bb.bo ], [ %i.qe, %bb.bn ]
  %i.qg = icmp eq i64 %storemerge.i.i, 1
  br i1 %i.qg, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.pk, label %bb.br, label %bb.cr

bb.br:                                            ; preds = %bb.bq
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %9), !inline_history !166
  br label %bb.cr

bb.bs:                                            ; preds = %bb.bp
  %i.qh = icmp eq i64 %indvars.iv170, %i.pq
  br i1 %i.qh, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.qi = load ptr, ptr %4, align 8               ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.qk = load ptr, ptr %i.qj, align 8
  %.not.i215 = icmp eq ptr %i.qk, null
  br i1 %.not.i215, label %bb.bu, label %bb.bv, !prof !53

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bv:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %i.pi, ptr %i.a, align 8
  %i.ql = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.qi, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.qm = load ptr, ptr %4, align 8               ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 728
  %i.qo = load ptr, ptr %i.qn, align 8
  store ptr %i.qo, ptr %i.pg, align 8
  %i.qp = load ptr, ptr %7, align 8               ; 2 uses
  %i.qq = icmp eq ptr %i.qp, null
  %i.qr = load ptr, ptr %i.pf, align 8            ; 2 uses
  br i1 %i.qq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qs = load i32, ptr %i.ph, align 8
  %i.qt = load ptr, ptr %i.ps, align 8
  %i.qu = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.qr, ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i32 noundef 0, i32 noundef %i.qs, ptr noundef %i.ql, ptr noundef %i.qt) #33 ; 2 uses
  store ptr %i.qu, ptr %7, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

bb.bx:                                            ; preds = %bb.bv
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.qp, ptr noundef nonnull %i.qm, ptr noundef nonnull align 8 dereferenceable(52) %i.qr, ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef %i.ql) #33
  %.pre230 = load ptr, ptr %7, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit: ; preds = %bb.bw, %bb.bx
  %i.qv = phi ptr [ %i.qu, %bb.bw ], [ %.pre230, %bb.bx ]
  %i.qw = load ptr, ptr %4, align 8
  %i.qx = load ptr, ptr %i.pg, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 728
  store ptr %i.qx, ptr %i.qy, align 8
  store ptr null, ptr %i.pg, align 8
  %i.qz = load ptr, ptr %i.pf, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull align 8 dereferenceable(52) %i.qz, ptr noundef nonnull align 8 dereferenceable(312) %i.qv, i1 noundef zeroext false, ptr noundef null)
  %i.ra = load ptr, ptr %4, align 8               ; 2 uses
  %i.rb = load ptr, ptr %i.pg, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 728
  store ptr %i.rb, ptr %i.rc, align 8
  store ptr null, ptr %i.pg, align 8
  %i.rd = load ptr, ptr %7, align 8               ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rf = load i32, ptr %i.re, align 8
  %i.rg = load i32, ptr %i.ph, align 8            ; 2 uses
  %i.rh = icmp sgt i32 %i.rg, -1
  %i.ri = icmp eq i32 %i.rg, %i.rf
  %i.rj = and i1 %i.rh, %i.ri
  br i1 %i.rj, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit17, label %bb.by, !prof !52

bb.by:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit17: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.ra, ptr noundef nonnull align 8 dereferenceable(312) %i.rd, ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
  %i.rk = load ptr, ptr %4, align 8
  %i.rl = load ptr, ptr %7, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.rk, ptr noundef null, ptr noundef %i.rl, ptr noundef nonnull align 8 dereferenceable(8) %i.pi)
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit17, %bb.bs
  %.sroa.0.0.copyload.i15 = load ptr, ptr %i.pj, align 8
  %i.rm = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20TryBuildPropertyLoadEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.at, ptr noundef %i.ao, ptr %.sroa.0.0.copyload.i15, ptr noundef nonnull align 8 dereferenceable(168) %i.pu), !inline_history !166 ; 2 uses
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = and i32 %i.rn, 7
  switch i32 %i.ro, label %bb.cl [
    i32 0, label %bb.ca
    i32 2, label %bb.ca
    i32 1, label %bb.cg
    i32 3, label %bb.ci
  ]

bb.ca:                                            ; preds = %bb.bz, %bb.bz
  %i.rp = load i8, ptr %i.lt, align 8, !range !55, !noundef !56
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  %i.rr = trunc nuw nsw i64 %indvars.iv170 to i32
  %i.rs = sub i32 %i.pl, %i.rr
  store i32 %i.rs, ptr %i.f, align 4
  store i32 0, ptr %5, align 4
  store i8 1, ptr %i.ls, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %4, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store ptr %5, ptr %i.h, align 8
  store ptr %i.h, ptr %11, align 8
  store i64 1, ptr %i.pm, align 8
  %i.rt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8optionalIN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelEE7emplaceIJPS4_RKiSt16initializer_listIPNS4_8VariableEEEEENSt9enable_ifIX18is_constructible_vIS5_DpT_EERS5_E4typeEDpOSG_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %11), !inline_history !166 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.ru = inttoptr i64 %i.rm to ptr               ; 2 uses
  br i1 %i.pk, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.rv = load ptr, ptr %i.o, align 8
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 -64
  store ptr %i.ru, ptr %i.rw, align 8
  %i.rx = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %9), !inline_history !166
  %i.ry = icmp eq i64 %i.rx, 1
  br i1 %i.ry, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.rz = load ptr, ptr %i.o, align 8
  %i.sa = getelementptr inbounds i8, ptr %i.rz, i64 -64
  %i.sb = load ptr, ptr %i.sa, align 8
  %.sroa.0.0.copyload.i14 = load i32, ptr %5, align 4
  %i.sc = load ptr, ptr %i.pe, align 8
  %i.sd = sext i32 %.sroa.0.0.copyload.i14 to i64
  %i.se = getelementptr inbounds [8 x i8], ptr %i.sc, i64 %i.sd
  store ptr %i.sb, ptr %i.se, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %6), !inline_history !166
  br label %bb.cm

bb.cf:                                            ; preds = %bb.cc
  %.sroa.0.0.copyload.i13 = load i32, ptr %5, align 4
  %i.sf = load ptr, ptr %i.pe, align 8
  %i.sg = sext i32 %.sroa.0.0.copyload.i13 to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.sf, i64 %i.sg
  store ptr %i.ru, ptr %i.sh, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %6), !inline_history !166
  br label %bb.cm

bb.cg:                                            ; preds = %bb.bz
  br i1 %i.pk, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %9), !inline_history !166
  br label %bb.cm

bb.ci:                                            ; preds = %bb.bz
  %i.si = load i8, ptr %i.lv, align 8, !range !55, !noundef !56
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sk = sub i64 %i.la, %indvars.iv170
  store i8 0, ptr %i.lv, align 8
  %i.sl = trunc i64 %i.sk to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %4, i32 noundef %i.sl)
  store i8 1, ptr %i.lv, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %8), !inline_history !166
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !166
  unreachable

bb.cm:                                            ; preds = %bb.ck, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd
  %i.sm = load i8, ptr %i.pc, align 8, !range !55, !noundef !56
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.so = load ptr, ptr %i.pf, align 8
  %i.sp = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, ptr noundef nonnull align 8 dereferenceable(52) %i.so, ptr noundef nonnull align 8 dereferenceable(312) %i.sp, i1 noundef zeroext false, ptr noundef null)
  %i.sq = load ptr, ptr %4, align 8               ; 2 uses
  %i.sr = load ptr, ptr %i.pg, align 8
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 728
  store ptr %i.sr, ptr %i.ss, align 8
  store ptr null, ptr %i.pg, align 8
  %i.st = load ptr, ptr %10, align 8              ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load i32, ptr %i.su, align 8
  %i.sw = load i32, ptr %i.pn, align 8            ; 2 uses
  %i.sx = icmp sgt i32 %i.sw, -1
  %i.sy = icmp eq i32 %i.sw, %i.sv
  %i.sz = and i1 %i.sx, %i.sy
  br i1 %i.sz, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, label %bb.co, !prof !52

bb.co:                                            ; preds = %bb.cn
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit: ; preds = %bb.cn
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.sq, ptr noundef nonnull align 8 dereferenceable(312) %i.st, ptr noundef nonnull align 8 dereferenceable(8) %i.po)
  %i.ta = load ptr, ptr %4, align 8
  %i.tb = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.ta, ptr noundef null, ptr noundef %i.tb, ptr noundef nonnull align 8 dereferenceable(8) %i.po)
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cm
  br i1 %i.pv, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.loopexit140

bb.cr:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, %bb.cp, %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond174.not = icmp eq i64 %indvars.iv.next171, %i.pp
  br i1 %exitcond174.not, label %.loopexit140, label %bb.bm, !llvm.loop !170

.loopexit140:                                     ; preds = %bb.cr, %bb.bl, %bb.cq
  %i.tc = load i8, ptr %i.lv, align 8, !range !55, !noundef !56
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.cs, label %.critedge.i.i

bb.cs:                                            ; preds = %.loopexit140
  %i.te = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %8), !inline_history !166
  %i.tf = icmp eq i64 %i.te, 1
  br i1 %i.tf, label %.critedge.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tg = call fastcc noundef ptr @"_ZZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEvENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %33), !inline_history !166 ; 3 uses
  %i.th = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.th, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.ti = load ptr, ptr %i.o, align 8
  %i.tj = getelementptr inbounds i8, ptr %i.ti, i64 -64
  store ptr %i.tg, ptr %i.tj, align 8
  %i.tk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %9), !inline_history !166
  %i.tl = load i8, ptr %i.lt, align 8, !range !55, !noundef !56
  %i.tm = trunc nuw i8 %i.tl to i1
  br i1 %i.tm, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.tn = icmp eq i64 %i.tk, 1
  br i1 %i.tn, label %.critedge117.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.to = load ptr, ptr %i.o, align 8
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 -64
  %i.tq = load ptr, ptr %i.tp, align 8
  br label %.critedge117.i.i.sink.split

bb.cx:                                            ; preds = %bb.cu
  %i.tr = load ptr, ptr %i.o, align 8
  %i.ts = getelementptr inbounds i8, ptr %i.tr, i64 -64
  %i.tt = load ptr, ptr %i.ts, align 8
  %i.tu = ptrtoint ptr %i.tt to i64
  br label %bb.dc

bb.cy:                                            ; preds = %bb.ct
  %i.tv = ptrtoint ptr %i.tg to i64
  %i.tw = load i8, ptr %i.lt, align 8, !range !55, !noundef !56
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %.critedge117.i.i.sink.split, label %bb.dc

.critedge117.i.i.sink.split:                      ; preds = %bb.cy, %bb.cw
  %.sink = phi ptr [ %i.tq, %bb.cw ], [ %i.tg, %bb.cy ]
  %i.ty = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i12 = load i32, ptr %5, align 4
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = sext i32 %.sroa.0.0.copyload.i12 to i64
  %i.ub = getelementptr inbounds [8 x i8], ptr %i.tz, i64 %i.ua
  store ptr %.sink, ptr %i.ub, align 8
  br label %.critedge117.i.i

.critedge117.i.i:                                 ; preds = %.critedge117.i.i.sink.split, %bb.cv
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %6), !inline_history !166
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.loopexit140, %.critedge117.i.i, %bb.cs
  %i.uc = load i8, ptr %i.lt, align 8, !range !55, !noundef !56
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %.critedge.i.i
  %i.ue = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %6), !inline_history !166
  %i.uf = icmp eq i64 %i.ue, 1
  br i1 %i.uf, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %5, align 4
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = sext i32 %.sroa.0.0.copyload.i to i64
  %i.uj = getelementptr inbounds [8 x i8], ptr %i.uh, i64 %i.ui
  %i.uk = load ptr, ptr %i.uj, align 8
  %i.ul = ptrtoint ptr %i.uk to i64
  br label %bb.dc

bb.db:                                            ; preds = %.critedge.i.i
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i32 noundef %i.os) #33, !inline_history !166
  store i32 %i.ou, ptr %i.ot, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ov, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.596.8..sroa_idx98, i64 14, i1 false)
  store i32 %i.ox, ptr %i.ow, align 8
  store i32 %i.oz, ptr %i.oy, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.cx, %bb.cy, %bb.db, %bb.da
  %.sroa.0108.1 = phi i64 [ %i.tv, %bb.cy ], [ %i.ul, %bb.da ], [ 1, %bb.db ], [ %i.tu, %bb.cx ], [ 1, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.596)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i"

"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i": ; preds = %bb.bi, %bb.dc, %bb.bh
  %.sroa.0108.0 = phi i64 [ %.sroa.0108.1, %bb.dc ], [ 1, %bb.bh ], [ 1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.dd

bb.dd:                                            ; preds = %bb.ay, %bb.av, %.critedge8.i, %bb.ax, %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i, %._crit_edge, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i"
  %.sroa.073.0 = phi i64 [ 3, %._crit_edge ], [ %.sroa.0108.0, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit.i" ], [ 1, %bb.ax ], [ %i.kz, %bb.ay ], [ 1, %bb.av ], [ 1, %.critedge8.i ], [ 1, %_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit": ; preds = %.critedge85.i, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit.i, %bb.q, %bb.v, %bb.y, %bb.dd
  %.sroa.073.5 = phi i64 [ %.sroa.073.0, %bb.dd ], [ 1, %bb.y ], [ 3, %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEE5valueEv.exit.i ], [ %.sroa.073.4, %.critedge85.i ], [ %i.ef, %bb.v ], [ 3, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit": ; preds = %bb.f, %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"
  %.sroa.048.0 = phi i64 [ %i.bd, %bb.f ], [ %.sroa.073.5, %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit" ] ; 4 uses
  %i.um = and i64 %.sroa.048.0, 7
  switch i64 %i.um, label %.thread132 [
    i64 3, label %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit.thread126"
    i64 0, label %bb.de
  ]

bb.de:                                            ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit"
  %i.un = inttoptr i64 %.sroa.048.0 to ptr
  %i.uo = load ptr, ptr %i.o, align 8
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -64
  store ptr %i.un, ptr %i.up, align 8
  br label %.thread132

"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit.thread126": ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit", %_ZNK2v88internal6maglev18MaglevGraphBuilder8feedbackEv.exit
  %i.uq = call fastcc noundef ptr @"_ZZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEvENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(40) %33)
  %i.ur = load ptr, ptr %i.o, align 8
  %i.us = getelementptr inbounds i8, ptr %i.ur, i64 -64
  store ptr %i.uq, ptr %i.us, align 8
  br label %.thread132

.thread132:                                       ; preds = %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit", %bb.de, %.thread128, %"_ZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyIRZNS2_30VisitGetNamedPropertyFromSuperEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_NS0_8compiler7NameRefERNS9_14FeedbackSourceEOT_.exit.thread126"
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS5_17ProcessedFeedbackE:bb.a
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %.critedge90.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ff = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %25) #33
  %i.fg = icmp eq i8 %i.ff, 1
  br i1 %i.fg, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  %i.fh = load ptr, ptr %i.eu, align 8
  %i.fi = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.fh) #33
  store ptr %i.fi, ptr %30, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, i8 0, i64 24, i1 false)
  %i.fk = load ptr, ptr %i.ez, align 8            ; 2 uses
  %i.fl = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not119.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not119.i, label %.thread111.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.v, %._crit_edge.i
  %.082120.i = phi ptr [ %i.gg, %._crit_edge.i ], [ %i.fk, %bb.v ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.082120.i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.082120.i, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %.not85117.i = icmp eq ptr %i.fn, %i.fp
  br i1 %.not85117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph122.i, %bb.z
  %.083118.i = phi ptr [ %i.gf, %bb.z ], [ %i.fn, %.lr.ph122.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.fq = load i64, ptr %.083118.i, align 8
  store i64 %i.fq, ptr %31, align 8
  %i.fr = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #33 ; 3 uses
  %i.fs = trunc i8 %i.fr to i1
  %i.ft = icmp ult i8 %i.fr, 12
  %i.fu = and i1 %i.ft, %i.fs
  %i.fv = icmp eq i8 %i.fr, 13
  %i.fw = or i1 %i.fv, %i.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #33
  br i1 %i.fw, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.fx = call i24 @_ZNK2v88internal8compiler21ElementAccessFeedback10keyed_modeEv(ptr noundef nonnull align 8 dereferenceable(40) %27) #33
  store i24 %i.fx, ptr %32, align 4
  %i.fy = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode10store_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %32) #33
  %i.fz = icmp eq i8 %i.fy, 1
  br i1 %i.fz, label %bb.x, label %.critedge.i

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %i.ga = load ptr, ptr %i.ep, align 8
  %i.gb = call noundef zeroext i1 @_ZN2v88internal8compiler6MapRef43PrototypesElementsDoNotHaveAccessorsOrThrowEPNS1_12JSHeapBrokerEPNS0_10ZoneVectorIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %i.ga, ptr noundef nonnull %30) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br i1 %i.gb, label %bb.y, label %bb.aa

.critedge.i:                                      ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #33
  br label %bb.y

bb.y:                                             ; preds = %.critedge.i, %bb.x
  %i.gc = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #33
  %i.gd = add i16 %i.gc, -2102
  %i.ge = icmp ult i16 %i.gd, 4
  br i1 %i.ge, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  %i.gf = getelementptr inbounds nuw i8, ptr %.083118.i, i64 8 ; 2 uses
  %.not85.i = icmp eq ptr %i.gf, %i.fp
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.z, %.lr.ph122.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.082120.i, i64 88 ; 2 uses
  %.not.i = icmp eq ptr %i.gg, %i.fl
  br i1 %.not.i, label %._crit_edge123.i, label %.lr.ph122.i

._crit_edge123.i:                                 ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.fj, align 8          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %30, i64 16
  %.pre130.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not86124.i = icmp eq ptr %.pre.i, %.pre130.i
  br i1 %.not86124.i, label %.thread111.i, label %.lr.ph127.i

.thread111.i:                                     ; preds = %.lr.ph127.i, %._crit_edge123.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %bb.ab

.lr.ph127.i:                                      ; preds = %._crit_edge123.i, %.lr.ph127.i
  %.084125.i = phi ptr [ %i.gk, %.lr.ph127.i ], [ %.pre.i, %._crit_edge123.i ] ; 2 uses
  %.sroa.021.0.copyload.i = load ptr, ptr %.084125.i, align 8
  %i.gh = load ptr, ptr %i.ep, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8544
  %i.gj = load ptr, ptr %i.gi, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.gj, ptr %.sroa.021.0.copyload.i) #33
  %i.gk = getelementptr inbounds nuw i8, ptr %.084125.i, i64 8 ; 2 uses
  %.not86.i = icmp eq ptr %i.gk, %.pre130.i
  br i1 %.not86.i, label %.thread111.i, label %.lr.ph127.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %.critedge90.i

bb.ab:                                            ; preds = %.thread111.i, %bb.u
  %i.gl = load ptr, ptr %i.fb, align 8
  %i.gm = load ptr, ptr %i.ez, align 8            ; 10 uses
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = icmp eq i64 %i.gp, 88
  br i1 %i.gq, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.gr = load i8, ptr %i.gm, align 8
  %i.gs = add i8 %i.gr, -30
  %i.gt = icmp ult i8 %i.gs, 12
  br i1 %i.gt, label %.critedge90.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 56
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = icmp eq ptr %i.gw, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8            ; 3 uses
  br i1 %i.gz, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.011.0.copyload.i = load ptr, ptr %i.hb, align 8
  %i.hc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1)
  %i.hd = icmp eq i64 %i.hc, 1
  br i1 %i.hd, label %.critedge90.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %1, ptr %i.i, align 8
  %i.he = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.i, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.he, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr %.sroa.011.0.copyload.i)
  %i.hg = and i64 %i.hf, 7
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %.critedge90.i, label %.thread115.i

bb.ag:                                            ; preds = %bb.ad
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hb to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = ashr exact i64 %i.hm, 3
  %i.ho = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %i.hb, i64 %i.hn, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %.critedge90.i, label %.thread115.i

.thread115.i:                                     ; preds = %bb.ag, %bb.af
  %i.hq = load i8, ptr %i.gm, align 8
  %i.hr = add i8 %i.hq, -18
  %i.hs = icmp ult i8 %i.hr, 12
  br i1 %i.hs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread115.i
  %i.ht = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.gm, ptr noundef nonnull align 1 dereferenceable(3) %25)
  br label %.critedge90.i

bb.ai:                                            ; preds = %.thread115.i
  %i.hu = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.gm, ptr noundef nonnull align 1 dereferenceable(3) %25)
  br label %.critedge90.i

bb.aj:                                            ; preds = %bb.ab
  %i.hv = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %25) #33
  %i.hw = icmp eq i8 %i.hv, 0
  br i1 %i.hw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hx = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode9load_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %25) #33
  %i.hy = trunc i8 %i.hx to i1
  br i1 %i.hy, label %.critedge90.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hz = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %25) #33 ; 7 uses
  %i.ia = add i8 %i.hz, -3
  %or.cond.i.i.i = icmp ult i8 %i.ia, -2
  %i.ib = icmp ne i8 %i.hz, 4
  %spec.select.i.not.i.i = and i1 %i.ib, %or.cond.i.i.i
  %i.ic = load ptr, ptr %i.fb, align 8
  %i.id = load ptr, ptr %i.ez, align 8
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = sdiv exact i64 %i.ig, 88                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  %i.ii = zext i1 %spec.select.i.not.i.i to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %i.ii)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 7 uses
  store i8 0, ptr %i.ij, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  %i.ik = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 5 uses
  store i8 0, ptr %i.ik, align 8
  %i.il = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1)
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %.thread104.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = trunc i64 %i.ih to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %1, ptr %i.g, align 8
  %i.io = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ip = icmp sgt i32 %i.in, 0
  br i1 %i.ip, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.am
  %i.iq = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.ir = add nsw i64 %i.ih, 4294967295
  %i.is = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.iv = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.iz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  %i.jd = and i64 %i.ir, 4294967295
  %i.je = and i64 %i.ih, 2147483647
  br label %bb.an

bb.an:                                            ; preds = %bb.bu, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bu ] ; 5 uses
  %i.jf = load ptr, ptr %i.ez, align 8
  %i.jg = getelementptr inbounds nuw [88 x i8], ptr %i.jf, i64 %indvars.iv.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  store i8 0, ptr %i.iq, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 40 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = icmp eq ptr %i.jj, %i.jl                ; 2 uses
  %i.jn = icmp eq i64 %indvars.iv.i.i, %i.jd      ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8            ; 6 uses
  br i1 %i.jn, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %i.jm, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.015.0.copyload.i.i = load ptr, ptr %i.jp, align 8
  %i.jq = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr %.sroa.015.0.copyload.i.i)
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = ptrtoint ptr %i.jp to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 3
  %i.jx = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %i.jp, i64 %i.jw, ptr %i.io, i8 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.au

bb.ar:                                            ; preds = %bb.an
  br i1 %i.jm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.sroa.09.0.copyload.i.i = load ptr, ptr %i.jp, align 8
  %i.jy = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder41BuildTransitionElementsKindAndCompareMapsEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_PNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr %.sroa.09.0.copyload.i.i, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(40) %24)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jp to i64
  %i.kd = sub i64 %i.kb, %i.kc
  %i.ke = ashr exact i64 %i.kd, 3
  %i.kf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.io, ptr %i.jp, i64 %i.ke, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(40) %24)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap
  %.sroa.091.0.i.i = phi i64 [ %i.jx, %bb.aq ], [ %i.jq, %bb.ap ], [ %i.kf, %bb.at ], [ %i.jy, %bb.as ]
  %i.kg = and i64 %.sroa.091.0.i.i, 7
  %i.kh = icmp eq i64 %i.kg, 1
  br i1 %i.kh, label %bb.bu, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ki = load i8, ptr %i.jg, align 8             ; 2 uses
  %i.kj = add i8 %i.ki, -30
  %i.kk = icmp ult i8 %i.kj, 12
  br i1 %i.kk, label %.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kl = add i8 %i.ki, -18
  %i.km = icmp ult i8 %i.kl, 12
  br i1 %i.km, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.jg, ptr noundef nonnull align 1 dereferenceable(3) %25)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ko = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.jg, ptr noundef nonnull align 1 dereferenceable(3) %25)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.088.0.i.i = phi i64 [ %i.ko, %bb.ay ], [ %i.kn, %bb.ax ] ; 2 uses
  %i.kp = trunc i64 %.sroa.088.0.i.i to i32
  %i.kq = and i32 %i.kp, 7
  switch i32 %i.kq, label %bb.bp [
    i32 0, label %bb.ba
    i32 2, label %bb.ba
    i32 3, label %.thread.i.i
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.kr = load i8, ptr %i.ij, align 8, !range !55, !noundef !56
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kt = sub i64 %i.ih, %indvars.iv.i.i
  store i8 0, ptr %i.ij, align 8
  %i.ku = trunc i64 %i.kt to i32
  %i.kv = add i32 %i.ku, 1
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull %21, i32 noundef %i.kv)
  switch i8 %i.hz, label %.lr.ph.i.i.i.i.i.i.i [
    i8 4, label %.thread99.i.i
    i8 2, label %.thread99.i.i
    i8 1, label %.thread99.i.i
  ]

.thread99.i.i:                                    ; preds = %bb.bb, %bb.bb, %bb.bb
  store i8 1, ptr %i.ij, align 8
  br label %bb.be

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bb
  %i.kw = load ptr, ptr %i.is, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load ptr, ptr %i.kx, align 8            ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8
  %i.la = or i64 %i.kz, 2
  store i64 %i.la, ptr %i.ky, align 8
  store i8 1, ptr %i.ij, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  switch i8 %i.hz, label %bb.bd [
    i8 4, label %bb.be
    i8 2, label %bb.be
    i8 1, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i.i.i.i.i.i.i
  %i.lb = inttoptr i64 %.sroa.088.0.i.i to ptr
  %i.lc = load ptr, ptr %i.it, align 8
  store ptr %i.lb, ptr %i.lc, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bc, %bb.bc, %.thread99.i.i
  %i.ld = load ptr, ptr %21, align 8              ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.lf = load ptr, ptr %i.le, align 8
  %.not.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i, label %bb.bf, label %bb.bg, !prof !53

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.iu, ptr %i.e, align 8
  %i.lg = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.ld, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.lh = load ptr, ptr %21, align 8              ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 728
  %i.lj = load ptr, ptr %i.li, align 8
  store ptr %i.lj, ptr %i.iv, align 8
  %i.lk = load ptr, ptr %22, align 8              ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  %i.lm = load ptr, ptr %i.iw, align 8            ; 2 uses
  br i1 %i.ll, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ln = load i32, ptr %i.ix, align 8
  %i.lo = load ptr, ptr %i.is, align 8
  %i.lp = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.it, i32 noundef 0, i32 noundef %i.ln, ptr noundef %i.lg, ptr noundef %i.lo) #33
  store ptr %i.lp, ptr %22, align 8
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %bb.bg
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.lk, ptr noundef nonnull %i.lh, ptr noundef nonnull align 8 dereferenceable(52) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef %i.lg) #33
  br label %.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.az, %bb.av
  %i.lq = load i8, ptr %i.ik, align 8, !range !55, !noundef !56
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i
  %i.ls = sub i64 %i.ih, %indvars.iv.i.i
  store i8 0, ptr %i.ik, align 8
  %i.lt = trunc i64 %i.ls to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull %21, i32 noundef %i.lt)
  store i8 1, ptr %i.ik, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread.i.i
  %i.lu = load ptr, ptr %21, align 8              ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.lw = load ptr, ptr %i.lv, align 8
  %.not.i71.i.i = icmp eq ptr %i.lw, null
  br i1 %.not.i71.i.i, label %bb.bl, label %bb.bm, !prof !53

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.iy, ptr %i.d, align 8
  %i.lx = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.lu, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.ly = load ptr, ptr %21, align 8              ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 728
  %i.ma = load ptr, ptr %i.lz, align 8
  store ptr %i.ma, ptr %i.iv, align 8
  %i.mb = load ptr, ptr %23, align 8              ; 2 uses
  %i.mc = icmp eq ptr %i.mb, null
  %i.md = load ptr, ptr %i.iw, align 8            ; 2 uses
  br i1 %i.mc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.me = load i32, ptr %i.iz, align 8
  %i.mf = load ptr, ptr %i.ja, align 8
  %i.mg = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %i.it, i32 noundef 0, i32 noundef %i.me, ptr noundef %i.lx, ptr noundef %i.mf) #33
  store ptr %i.mg, ptr %23, align 8
  br label %.sink.split.i.i

bb.bo:                                            ; preds = %bb.bm
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.mb, ptr noundef nonnull %i.ly, ptr noundef nonnull align 8 dereferenceable(52) %i.md, ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef %i.lx) #33
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bo, %bb.bn, %bb.bi, %bb.bh
  %i.mh = load ptr, ptr %21, align 8
  %i.mi = load ptr, ptr %i.iv, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 728
  store ptr %i.mi, ptr %i.mj, align 8
  store ptr null, ptr %i.iv, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i.i, %bb.az
  %i.mk = load i8, ptr %i.iq, align 8, !range !55, !noundef !56
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.mm = load ptr, ptr %i.iw, align 8
  %i.mn = load ptr, ptr %24, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(52) %i.mm, ptr noundef nonnull align 8 dereferenceable(312) %i.mn, i1 noundef zeroext false, ptr noundef null)
  %i.mo = load ptr, ptr %21, align 8              ; 2 uses
  %i.mp = load ptr, ptr %i.iv, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 728
  store ptr %i.mp, ptr %i.mq, align 8
  store ptr null, ptr %i.iv, align 8
  %i.mr = load ptr, ptr %24, align 8              ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load i32, ptr %i.ms, align 8
  %i.mu = load i32, ptr %i.jb, align 8            ; 2 uses
  %i.mv = icmp sgt i32 %i.mu, -1
  %i.mw = icmp eq i32 %i.mu, %i.mt
  %i.mx = and i1 %i.mv, %i.mw
  br i1 %i.mx, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, label %bb.br, !prof !52

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i: ; preds = %bb.bq
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.mo, ptr noundef nonnull align 8 dereferenceable(312) %i.mr, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
  %i.my = load ptr, ptr %21, align 8
  %i.mz = load ptr, ptr %24, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.my, ptr noundef null, ptr noundef %i.mz, ptr noundef nonnull align 8 dereferenceable(8) %i.jc)
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  br i1 %i.jn, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %.loopexit.i.i

bb.bu:                                            ; preds = %bb.bs, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.je
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.an, !llvm.loop !172

.loopexit.i.i:                                    ; preds = %bb.bu, %bb.bt, %bb.am
  %i.na = load i8, ptr %i.ik, align 8, !range !55, !noundef !56
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.bv, label %.critedge.i.i

bb.bv:                                            ; preds = %.loopexit.i.i
  %i.nc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull %23)
  %i.nd = icmp eq i64 %i.nc, 1
  br i1 %i.nd, label %.critedge.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ne = call fastcc noundef ptr @"_ZZN2v88internal6maglev18MaglevGraphBuilder21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS5_17ProcessedFeedbackEENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(24) %33) ; 2 uses
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = load i8, ptr %i.ij, align 8, !range !55, !noundef !56
  %i.nh = trunc nuw i8 %i.ng to i1
  br i1 %i.nh, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  switch i8 %i.hz, label %bb.by [
    i8 4, label %.thread104.i.i
    i8 2, label %.thread104.i.i
    i8 1, label %.thread104.i.i
  ]

bb.by:                                            ; preds = %bb.bx
  br label %.thread104.i.i

bb.bz:                                            ; preds = %bb.bw
  switch i8 %i.hz, label %bb.ca [
    i8 4, label %bb.cb
    i8 2, label %bb.cb
    i8 1, label %bb.cb
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  store ptr %i.ne, ptr %i.nj, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.bz
  %i.nk = load ptr, ptr %21, align 8              ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 56
  %i.nm = load ptr, ptr %i.nl, align 8
  %.not.i74.i.i = icmp eq ptr %i.nm, null
  br i1 %.not.i74.i.i, label %bb.cc, label %bb.cd, !prof !53

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.nn = getelementptr inbounds nuw i8, ptr %22, i64 24
  store ptr %i.nn, ptr %i.c, align 8
  %i.no = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.nk, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.np = load ptr, ptr %21, align 8              ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 728
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  store ptr %i.nr, ptr %i.ns, align 8
  %i.nt = load ptr, ptr %22, align 8              ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  %i.nv = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  br i1 %i.nu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ny = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.nz = load i32, ptr %i.ny, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.nw, ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i32 noundef 0, i32 noundef %i.nz, ptr noundef %i.no, ptr noundef %i.ob) #33
  store ptr %i.oc, ptr %22, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.nt, ptr noundef nonnull %i.np, ptr noundef nonnull align 8 dereferenceable(52) %i.nw, ptr noundef nonnull align 8 dereferenceable(16) %i.nx, ptr noundef %i.no) #33
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.od = load ptr, ptr %21, align 8
  %i.oe = load ptr, ptr %i.ns, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 728
  store ptr %i.oe, ptr %i.of, align 8
  store ptr null, ptr %i.ns, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.cg, %bb.bv, %.loopexit.i.i
  %i.og = load i8, ptr %i.ij, align 8, !range !55, !noundef !56
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.ch, label %.thread104.i.i

bb.ch:                                            ; preds = %.critedge.i.i
  %i.oi = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull %22)
  %i.oj = icmp eq i64 %i.oi, 1
  br i1 %i.oj, label %.thread104.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.hz, label %bb.cj [
    i8 4, label %.thread104.i.i
    i8 2, label %.thread104.i.i
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
bb.ak:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.je = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.jg = load ptr, ptr %i.gx, align 8            ; 2 uses
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = sub i64 %i.jh, %i.je                    ; 5 uses
  %.not23.i = icmp eq ptr %i.jg, %i.jb
  br i1 %.not23.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jj = icmp sgt i64 %i.ji, -1
  br i1 %i.jj, label %bb.an, label %bb.am, !prof !52

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jl = load i64, ptr %i.jk, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 3 uses
  %i.jn = load i64, ptr %i.jm, align 8            ; 2 uses
  %i.jo = sub i64 %i.jl, %i.jn
  %i.jp = icmp ugt i64 %i.ji, %i.jo
  br i1 %i.jp, label %bb.ao, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !53

bb.ao:                                            ; preds = %bb.an
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.iz, i64 noundef %i.ji) #33
  %.pre.i.i.i = load i64, ptr %i.jm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ao, %bb.an
  %i.jq = phi i64 [ %.pre.i.i.i, %bb.ao ], [ %i.jn, %bb.an ] ; 2 uses
  %i.jr = inttoptr i64 %i.jq to ptr               ; 2 uses
  %i.js = add i64 %i.jq, %i.ji
  store i64 %i.js, ptr %i.jm, align 8
  store ptr %i.jr, ptr %i.ja, align 8
  %i.jt = load ptr, ptr %i.gv, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.ju = load ptr, ptr %i.gw, align 8
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = ptrtoint ptr %i.jt to i64
  %i.jx = sub i64 %i.jv, %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jr, ptr nonnull align 8 %i.jt, i64 %i.jx, i1 false)
  %.pre.i29 = load ptr, ptr %i.ja, align 8
  %.pre141 = load ptr, ptr %i.gw, align 8
  %.pre142 = load ptr, ptr %i.gv, align 8
  %.pre143 = ptrtoint ptr %.pre142 to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ak, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %.pre-phi = phi i64 [ %i.je, %bb.ak ], [ %.pre143, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jy = phi ptr [ %i.jd, %bb.ak ], [ %.pre141, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ]
  %i.jz = phi ptr [ null, %bb.ak ], [ %.pre.i29, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ji
  store ptr %i.ka, ptr %i.jc, align 8
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.kb, %.pre-phi
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.kc
  store ptr %i.kd, ptr %i.jf, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.ap
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ho, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ke, ptr noundef nonnull align 8 dereferenceable(65) %i.gy, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %i.kf = add nuw i64 %.sroa.651.087, 1           ; 2 uses
  %.not = icmp eq i64 %i.kf, %.0.i.i113
  br i1 %.not, label %.critedge89.i, label %bb.aa

bb.ar:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.dt

.critedge89.i:                                    ; preds = %bb.aq, %bb.y, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #33
  %i.kg = load ptr, ptr %i.r, align 8
  %i.kh = load ptr, ptr %i.ab, align 8
  %i.ki = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.kh) #33
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef %i.kg, ptr noundef %i.ki) #33, !inline_history !177
  %i.kj = load ptr, ptr %23, align 8
  store ptr %i.kj, ptr %27, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i8 0, i64 24, i1 false)
  %i.kl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %23) #33 ; 0 uses
  %i.km = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull %27, i8 noundef zeroext 1, ptr noundef nonnull %22) #33, !inline_history !177
  br i1 %i.km, label %bb.as, label %bb.ds

bb.as:                                            ; preds = %.critedge89.i
  %i.kn = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 168
  br i1 %i.kt, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kv = load ptr, ptr %i.ku, align 8            ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8            ; 3 uses
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = ashr exact i64 %i.la, 3                 ; 3 uses
  %.not12.i = icmp eq ptr %i.kx, %i.kv
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

bb.au:                                            ; preds = %.lr.ph.i
  %i.lc = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.lc, %i.kx
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %bb.au
  %.0813.i = phi ptr [ %i.lc, %bb.au ], [ %i.kv, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.ld = load i64, ptr %.0813.i, align 8
  store i64 %i.ld, ptr %12, align 8
  %i.le = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.le, label %bb.au, label %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit

.loopexit:                                        ; preds = %bb.au, %bb.at
  %i.lf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !55, !noundef !56
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.av, label %.critedge8.i

bb.av:                                            ; preds = %.loopexit
  %i.lh = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_21VisitSetNamedPropertyEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.kv, i64 %i.lb), !inline_history !177
  br i1 %i.lh, label %bb.aw, label %.critedge8.i

bb.aw:                                            ; preds = %bb.av
  %i.li = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !177
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.ds, label %bb.az

.critedge8.i:                                     ; preds = %.loopexit, %bb.av
  %i.lk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !177
  %i.ll = icmp eq i64 %i.lk, 1
  br i1 %i.ll, label %bb.ds, label %bb.az

_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit: ; preds = %.lr.ph.i
  %i.lm = call noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %i.kv, i64 %i.lb), !inline_history !177
  br i1 %i.lm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.ln = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !177
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %bb.ds, label %bb.az

bb.ay:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.lp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.kv, i64 %i.lb, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !177
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.ds, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %.critedge8.i, %bb.aw
  %i.lr = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.lr, align 8
  %i.ls = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(168) %i.kp, i8 noundef zeroext 1), !inline_history !178
  br label %bb.ds

bb.ba:                                            ; preds = %bb.as
  %i.lt = sdiv exact i64 %i.ks, 168               ; 5 uses
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.lw = load i8, ptr %i.lv, align 8, !range !55, !noundef !56
  %i.lx = trunc nuw i8 %i.lw to i1
  %i.ly = icmp sgt i32 %i.lu, 0                   ; 2 uses
  br i1 %i.ly, label %.lr.ph213.i, label %._crit_edge214.i

.lr.ph213.i:                                      ; preds = %bb.ba
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %4, <2 x i64> <i64 24, i64 32>
  %i.mf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 44
  %.not15.i.i.i = icmp eq ptr %i.q, null
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count.i = and i64 %i.lt, 2147483647
  br label %bb.bb

._crit_edge214.i:                                 ; preds = %._crit_edge.i, %bb.ba
  %.0102.lcssa.i = phi i1 [ false, %bb.ba ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ -1, %bb.ba ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 0), !inline_history !179
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.mm = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.mm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.mn = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.mn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.mo = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store i8 0, ptr %i.mo, align 8
  %i.mp = icmp sgt i32 %.0.lcssa.i, -1
  br i1 %i.mp, label %bb.bo, label %bb.bp

bb.bb:                                            ; preds = %._crit_edge.i, %.lr.ph213.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph213.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.0211.i = phi i32 [ -1, %.lr.ph213.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0102210.i = phi i1 [ false, %.lr.ph213.i ], [ %.1103.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.mq = load ptr, ptr %i.gb, align 8
  %i.mr = getelementptr inbounds nuw [168 x i8], ptr %i.mq, i64 %indvars.iv.i ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8            ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8            ; 2 uses
  %.not115204.i = icmp eq ptr %i.mt, %i.mv
  br i1 %.not115204.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bb
  %i.mw = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.i121

._crit_edge.i:                                    ; preds = %bb.bn, %bb.bb
  %.1103.lcssa.i = phi i1 [ %.0102210.i, %bb.bb ], [ %spec.select.i, %bb.bn ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.0211.i, %bb.bb ], [ %.3.i, %bb.bn ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge214.i, label %bb.bb, !llvm.loop !180

.lr.ph.i121:                                      ; preds = %bb.bn, %.lr.ph.preheader.i
  %.1207.i = phi i32 [ %.3.i, %bb.bn ], [ %.0211.i, %.lr.ph.preheader.i ] ; 3 uses
  %.1103206.i = phi i1 [ %spec.select.i, %bb.bn ], [ %.0102210.i, %.lr.ph.preheader.i ]
  %.0110205.i = phi ptr [ %i.qu, %bb.bn ], [ %i.mt, %.lr.ph.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.mx = load i64, ptr %.0110205.i, align 8
  store i64 %i.mx, ptr %3, align 8
  %i.my = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !179
  %spec.select.i = select i1 %i.my, i1 true, i1 %.1103206.i ; 2 uses
  %i.mz = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !179
  br i1 %i.mz, label %bb.bc, label %bb.bn

bb.bc:                                            ; preds = %.lr.ph.i121
  %i.na = load ptr, ptr %i.au, align 8            ; 5 uses
  %i.nb = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 312 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 304 ; 5 uses
  %.not10.i.i.i.i.i141.i = icmp eq ptr %i.nd, null
  br i1 %.not10.i.i.i.i.i141.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %.lr.ph.i.i.i.i.i142.i

.lr.ph.i.i.i.i.i142.i:                            ; preds = %bb.bc, %.lr.ph.i.i.i.i.i142.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i142.i ], [ %i.nd, %bb.bc ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i142.i ], [ %i.ne, %bb.bc ]
  %i.nf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = icmp ult ptr %i.ng, %i.q                ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.nh, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.nh, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i143.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i143.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i142.i, !llvm.loop !8

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i142.i
  %i.ni = icmp eq ptr %.19.i.i.i.i.i.i, %i.ne
  br i1 %i.ni, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = icmp ult ptr %i.q, %i.nk
  br i1 %i.nl, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, %bb.bc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 288
  %i.nn = load ptr, ptr %i.nm, align 8            ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load i64, ptr %i.no, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 16 ; 3 uses
  %i.nr = load i64, ptr %i.nq, align 8            ; 2 uses
  %i.ns = sub i64 %i.np, %i.nr
  %i.nt = icmp ult i64 %i.ns, 96
  br i1 %i.nt, label %bb.bd, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i, !prof !53

bb.bd:                                            ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.nn, i64 noundef 96) #33, !inline_history !179
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.nq, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i: ; preds = %bb.bd, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i
  %i.nu = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.nr, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i.i ] ; 2 uses
  %i.nv = inttoptr i64 %i.nu to ptr               ; 6 uses
  %i.nw = add i64 %i.nu, 96
  store i64 %i.nw, ptr %i.nq, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 32
  store ptr %i.q, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  store i64 262143, ptr %i.ny, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nv, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, i8 0, i64 40, i1 false)
  %.02022.i.i.i = load ptr, ptr %i.nc, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i ] ; 5 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8            ; 2 uses
  %i.ob = icmp ult ptr %i.q, %i.oa                ; 2 uses
  %.in.v.i.i.i = select i1 %i.ob, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i147.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i147.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !21

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.ob, label %._crit_edge.thread.i.i.i, label %bb.bf

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ne, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i.i ] ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.na, i64 320
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = icmp eq ptr %.019.lcssa29.i.i.i, %i.od
  br i1 %i.oe, label %select.unfold.i.i, label %bb.be

bb.be:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.of = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34, !inline_history !179 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge.i.i.i
  %i.og = phi ptr [ %.pre.i.i, %bb.be ], [ %i.oa, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.be ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %.sroa.05.0.i.i.i = phi ptr [ %i.of, %bb.be ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.oh = icmp ult ptr %i.og, %i.q
  br i1 %i.oh, label %select.unfold.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i

select.unfold.i.i:                                ; preds = %bb.bf, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.bf ] ; 3 uses
  %i.oi = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ne
  br i1 %i.oi, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %select.unfold.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ok = load ptr, ptr %i.oj, align 8
  %i.ol = icmp ult ptr %i.q, %i.ok
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i: ; preds = %bb.bg, %select.unfold.i.i
  %i.om = phi i1 [ %i.ol, %bb.bg ], [ true, %select.unfold.i.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.om, ptr noundef nonnull %i.nv, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ne) #33, !inline_history !179
  %i.on = getelementptr inbounds nuw i8, ptr %i.na, i64 336 ; 2 uses
  %i.oo = load i64, ptr %i.on, align 8
  %i.op = add i64 %i.oo, 1
  store i64 %i.op, ptr %i.on, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i, %bb.bf
  %.sroa.08.0.i.i = phi ptr [ %i.nv, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i.i ], [ %.sroa.05.0.i.i.i, %bb.bf ] ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 40 ; 4 uses
  %i.or = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef %i.nb) #33, !inline_history !179
  %i.os = load i32, ptr %i.oq, align 8
  %i.ot = and i32 %i.os, %i.or
  store i32 %i.ot, ptr %i.oq, align 8
  %i.ou = load i64, ptr %i.lz, align 8
  %i.ov = and i64 %i.ou, 65535
  %.not.i122 = icmp eq i64 %i.ov, 99
  br i1 %.not.i122, label %bb.bh, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i

bb.bh:                                            ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i
  %i.ow = load ptr, ptr %i.ma, align 8            ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 36
  %i.oy = load i8, ptr %i.ox, align 4
  %.not20.i.i = icmp eq i8 %i.oy, 3
  br i1 %.not20.i.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i, !prof !53

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32, !inline_history !179
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i: ; preds = %bb.bi
  store ptr %i.pa, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.pa, ptr %1, align 8
  %i.pb = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33, !inline_history !179
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.pc = ptrtoint ptr %i.pb to i64
  %i.pd = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33, !inline_history !179
  %i.pe = xor i1 %i.pd, true
  %.sroa.0.0.copyload.i146.i = load ptr, ptr %2, align 8
  %i.pf = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i146.i, ptr noundef %i.nb), !inline_history !179
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %i.so = load i64, ptr %i.rg, align 8
  %i.sp = and i64 %i.so, 7696581394432
  %i.sq = icmp eq i64 %i.sp, 0
  br i1 %i.sq, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i
  %i.sr = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.q, i32 noundef 0), !inline_history !181
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1.i

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1.i: ; preds = %bb.ca, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i
  %.0.i.i.i.1.i = phi ptr [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i ], [ %i.sr, %bb.ca ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1.i, i64 16 ; 2 uses
  %i.st = load i32, ptr %i.ss, align 8
  %i.su = add nsw i32 %i.st, 1
  store i32 %i.su, ptr %i.ss, align 8
  %i.sv = getelementptr inbounds i8, ptr %i.sc, i64 -16
  store ptr %.0.i.i.i.1.i, ptr %i.sv, align 8
  %i.sw = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_18MigrateMapIfNeededEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.sc), !inline_history !179
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1.i, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i
  %.0111.i = phi ptr [ %i.sw, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1.i ], [ %.0.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i ]
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = ptrtoint ptr %i.sy to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.te = load i32, ptr %i.td, align 4
  %i.tf = zext i32 %i.te to i64
  %i.tg = add i64 %i.tc, %i.tf
  %i.th = sub i64 %i.tb, %i.tg
  %i.ti = trunc i64 %i.th to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.tk = load i32, ptr %i.tj, align 8, !noalias !185 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(14) %i.tl, i64 14, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.tn = load i32, ptr %i.tm, align 8, !noalias !185 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.tp = load i32, ptr %i.to, align 4, !noalias !185 ; 2 uses
  br i1 %i.ly, label %.lr.ph221.i, label %.loopexit.i

.lr.ph221.i:                                      ; preds = %bb.cb
  %i.tq = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.tr = add nsw i64 %i.lt, 4294967295
  %i.ts = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 11 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.tz = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ua = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ub = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.uc = add nuw i32 %i.lu, 1
  %i.ud = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ue = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.uh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.ui = and i64 %i.tr, 4294967295
  %i.uj = zext i32 %.0.lcssa.i to i64
  %i.uk = and i64 %i.lt, 2147483647
  br label %bb.cc

bb.cc:                                            ; preds = %bb.di, %.lr.ph221.i
  %indvars.iv224.i = phi i64 [ 0, %.lr.ph221.i ], [ %indvars.iv.next225.i, %bb.di ] ; 6 uses
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.ti) #33, !inline_history !179
  store i32 %i.tk, ptr %i.tj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.tl, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx.i, i64 14, i1 false)
  store i32 %i.tn, ptr %i.tm, align 8
  store i32 %i.tp, ptr %i.to, align 4
  %i.ul = load ptr, ptr %i.gb, align 8
  %i.um = getelementptr inbounds nuw [168 x i8], ptr %i.ul, i64 %indvars.iv224.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 0, ptr %i.tq, align 8
  %i.un = icmp eq i64 %indvars.iv224.i, %i.ui     ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.up = load ptr, ptr %i.uo, align 8            ; 3 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8
  %i.us = ptrtoint ptr %i.ur to i64
  %i.ut = ptrtoint ptr %i.up to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = ashr exact i64 %i.uu, 3                 ; 2 uses
  br i1 %i.un, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.uw = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.up, i64 %i.uv, ptr undef, i8 0, i1 noundef zeroext %i.lx, i1 noundef zeroext %.0102.lcssa.i), !inline_history !179
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.ux = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr noundef %.0111.i, ptr %i.up, i64 %i.uv, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(40) %10), !inline_history !179
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %storemerge.i = phi i64 [ %i.ux, %bb.ce ], [ %i.uw, %bb.cd ]
  %i.uy = icmp eq i64 %storemerge.i, 1
  br i1 %i.uy, label %bb.di, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.uz = icmp eq i64 %indvars.iv224.i, %i.uj
  br i1 %i.uz, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  %i.va = load ptr, ptr %6, align 8               ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 56
  %i.vc = load ptr, ptr %i.vb, align 8
  %.not.i.i = icmp eq ptr %i.vc, null
  br i1 %.not.i.i, label %bb.ci, label %bb.cj, !prof !53

bb.ci:                                            ; preds = %bb.ch
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !179
  unreachable

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ts, ptr %i.d, align 8
  %i.vd = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.va, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.ve = load ptr, ptr %6, align 8               ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 728
  %i.vg = load ptr, ptr %i.vf, align 8
  store ptr %i.vg, ptr %i.tt, align 8
  %i.vh = load ptr, ptr %8, align 8               ; 2 uses
  %i.vi = icmp eq ptr %i.vh, null
  %i.vj = load ptr, ptr %i.tu, align 8            ; 2 uses
  br i1 %i.vi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.vk = load i32, ptr %i.tw, align 8
  %i.vl = load ptr, ptr %i.tx, align 8
  %i.vm = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.vj, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i32 noundef 0, i32 noundef %i.vk, ptr noundef %i.vd, ptr noundef %i.vl) #33, !inline_history !179 ; 2 uses
  store ptr %i.vm, ptr %8, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i

bb.cl:                                            ; preds = %bb.cj
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.vh, ptr noundef nonnull %i.ve, ptr noundef nonnull align 8 dereferenceable(52) %i.vj, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef %i.vd) #33, !inline_history !179
  %.pre.i119 = load ptr, ptr %8, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i: ; preds = %bb.cl, %bb.ck
  %i.vn = phi ptr [ %i.vm, %bb.ck ], [ %.pre.i119, %bb.cl ]
  %i.vo = load ptr, ptr %6, align 8
  %i.vp = load ptr, ptr %i.tt, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vo, i64 728
  store ptr %i.vp, ptr %i.vq, align 8
  store ptr null, ptr %i.tt, align 8
  %i.vr = load ptr, ptr %i.tu, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef nonnull align 8 dereferenceable(52) %i.vr, ptr noundef nonnull align 8 dereferenceable(312) %i.vn, i1 noundef zeroext false, ptr noundef null), !inline_history !179
  %i.vs = load ptr, ptr %6, align 8               ; 2 uses
  %i.vt = load ptr, ptr %i.tt, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 728
  store ptr %i.vt, ptr %i.vu, align 8
  store ptr null, ptr %i.tt, align 8
  %i.vv = load ptr, ptr %8, align 8               ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = load i32, ptr %i.tw, align 8            ; 2 uses
  %i.vz = icmp sgt i32 %i.vy, -1
  %i.wa = icmp eq i32 %i.vy, %i.vx
  %i.wb = and i1 %i.vz, %i.wa
  br i1 %i.wb, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i, label %bb.cm, !prof !52

bb.cm:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32, !inline_history !179
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.vs, ptr noundef nonnull align 8 dereferenceable(312) %i.vv, ptr noundef nonnull align 8 dereferenceable(8) %i.ts), !inline_history !179
  %i.wc = load ptr, ptr %6, align 8
  %i.wd = load ptr, ptr %8, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.wc, ptr noundef null, ptr noundef %i.wd, ptr noundef nonnull align 8 dereferenceable(8) %i.ts), !inline_history !179
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i, %bb.cg
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ty, align 8
  %i.we = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(168) %i.um, i8 noundef zeroext 1), !inline_history !179
  %i.wf = trunc i64 %i.we to i32
  %i.wg = and i32 %i.wf, 7
  switch i32 %i.wg, label %bb.dc [
    i32 0, label %bb.co
    i32 2, label %bb.co
    i32 1, label %bb.dd
    i32 3, label %bb.cv
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.wh = load i8, ptr %i.mm, align 8, !range !55, !noundef !56
  %i.wi = trunc nuw i8 %i.wh to i1
  br i1 %i.wi, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.wj = trunc nuw nsw i64 %indvars.iv224.i to i32
  %i.wk = sub i32 %i.uc, %i.wj
  store i8 0, ptr %i.mm, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %6, i32 noundef %i.wk), !inline_history !179
  store i8 1, ptr %i.mm, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.wl = load ptr, ptr %6, align 8               ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 56
  %i.wn = load ptr, ptr %i.wm, align 8
  %.not.i125.i = icmp eq ptr %i.wn, null
  br i1 %.not.i125.i, label %bb.cr, label %bb.cs, !prof !53

bb.cr:                                            ; preds = %bb.cq
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !179
  unreachable

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.ud, ptr %i.c, align 8
  %i.wo = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.wl, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.wp = load ptr, ptr %6, align 8               ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 728
  %i.wr = load ptr, ptr %i.wq, align 8
  store ptr %i.wr, ptr %i.tt, align 8
  %i.ws = load ptr, ptr %7, align 8               ; 2 uses
  %i.wt = icmp eq ptr %i.ws, null
  %i.wu = load ptr, ptr %i.tu, align 8            ; 2 uses
  br i1 %i.wt, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.wv = load i32, ptr %i.ue, align 8
  %i.ww = load ptr, ptr %i.uf, align 8
  %i.wx = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.wu, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i32 noundef 0, i32 noundef %i.wv, ptr noundef %i.wo, ptr noundef %i.ww) #33, !inline_history !179
  store ptr %i.wx, ptr %7, align 8
  br label %.sink.split.i

bb.cu:                                            ; preds = %bb.cs
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.ws, ptr noundef nonnull %i.wp, ptr noundef nonnull align 8 dereferenceable(52) %i.wu, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef %i.wo) #33, !inline_history !179
  br label %.sink.split.i

bb.cv:                                            ; preds = %bb.cn
  %i.wy = load i8, ptr %i.mo, align 8, !range !55, !noundef !56
  %i.wz = trunc nuw i8 %i.wy to i1
  br i1 %i.wz, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xa = sub i64 %i.lt, %indvars.iv224.i
  store i8 0, ptr %i.mo, align 8
  %i.xb = trunc i64 %i.xa to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %6, i32 noundef %i.xb), !inline_history !179
  store i8 1, ptr %i.mo, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.xc = load ptr, ptr %6, align 8               ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 56
  %i.xe = load ptr, ptr %i.xd, align 8
  %.not.i133.i = icmp eq ptr %i.xe, null
  br i1 %.not.i133.i, label %bb.cy, label %bb.cz, !prof !53

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !179
  unreachable

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.tz, ptr %i.b, align 8
  %i.xf = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.xc, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.xg = load ptr, ptr %6, align 8               ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 728
  %i.xi = load ptr, ptr %i.xh, align 8
  store ptr %i.xi, ptr %i.tt, align 8
  %i.xj = load ptr, ptr %9, align 8               ; 2 uses
  %i.xk = icmp eq ptr %i.xj, null
  %i.xl = load ptr, ptr %i.tu, align 8            ; 2 uses
  br i1 %i.xk, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.xm = load i32, ptr %i.ua, align 8
  %i.xn = load ptr, ptr %i.ub, align 8
  %i.xo = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.xl, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, i32 noundef 0, i32 noundef %i.xm, ptr noundef %i.xf, ptr noundef %i.xn) #33, !inline_history !179
  store ptr %i.xo, ptr %9, align 8
  br label %.sink.split.i

bb.db:                                            ; preds = %bb.cz
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.xj, ptr noundef nonnull %i.xg, ptr noundef nonnull align 8 dereferenceable(52) %i.xl, ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef %i.xf) #33, !inline_history !179
  br label %.sink.split.i

bb.dc:                                            ; preds = %bb.cn
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !179
  unreachable

.sink.split.i:                                    ; preds = %bb.db, %bb.da, %bb.cu, %bb.ct
  %i.xp = load ptr, ptr %6, align 8
  %i.xq = load ptr, ptr %i.tt, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 728
  store ptr %i.xq, ptr %i.xr, align 8
  store ptr null, ptr %i.tt, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split.i, %bb.cn
  %i.xs = load i8, ptr %i.tq, align 8, !range !55, !noundef !56
  %i.xt = trunc nuw i8 %i.xs to i1
  br i1 %i.xt, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.xu = load ptr, ptr %i.tu, align 8
  %i.xv = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.tv, ptr noundef nonnull align 8 dereferenceable(52) %i.xu, ptr noundef nonnull align 8 dereferenceable(312) %i.xv, i1 noundef zeroext false, ptr noundef null), !inline_history !179
  %i.xw = load ptr, ptr %6, align 8               ; 2 uses
  %i.xx = load ptr, ptr %i.tt, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 728
  store ptr %i.xx, ptr %i.xy, align 8
  store ptr null, ptr %i.tt, align 8
  %i.xz = load ptr, ptr %10, align 8              ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load i32, ptr %i.ya, align 8
  %i.yc = load i32, ptr %i.ug, align 8            ; 2 uses
  %i.yd = icmp sgt i32 %i.yc, -1
  %i.ye = icmp eq i32 %i.yc, %i.yb
  %i.yf = and i1 %i.yd, %i.ye
  br i1 %i.yf, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i, label %bb.df, !prof !52

bb.df:                                            ; preds = %bb.de
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32, !inline_history !179
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i: ; preds = %bb.de
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.xw, ptr noundef nonnull align 8 dereferenceable(312) %i.xz, ptr noundef nonnull align 8 dereferenceable(8) %i.uh), !inline_history !179
  %i.yg = load ptr, ptr %6, align 8
  %i.yh = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.yg, ptr noundef null, ptr noundef %i.yh, ptr noundef nonnull align 8 dereferenceable(8) %i.uh), !inline_history !179
  br label %bb.di

bb.dg:                                            ; preds = %bb.dd
  br i1 %i.un, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.loopexit.i

bb.di:                                            ; preds = %bb.dg, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv224.i, 1 ; 2 uses
  %exitcond228.not.i = icmp eq i64 %indvars.iv.next225.i, %i.uk
  br i1 %exitcond228.not.i, label %.loopexit.i, label %bb.cc, !llvm.loop !184

.loopexit.i:                                      ; preds = %bb.di, %bb.dh, %bb.cb
  %i.yi = load i8, ptr %i.mo, align 8, !range !55, !noundef !56
  %i.yj = trunc nuw i8 %i.yi to i1
  br i1 %i.yj, label %bb.dj, label %.critedge.i118

bb.dj:                                            ; preds = %.loopexit.i
  %i.yk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %9), !inline_history !179
  %i.yl = icmp eq i64 %i.yk, 1
  br i1 %i.yl, label %.critedge.i118, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ym = call fastcc i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEvENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(32) %31), !inline_history !179 ; 0 uses
  %i.yn = load i8, ptr %i.mm, align 8, !range !55, !noundef !56
  %i.yo = trunc nuw i8 %i.yn to i1
  br i1 %i.yo, label %.critedge118.i, label %bb.dr

.critedge118.i:                                   ; preds = %bb.dk
  %i.yp = load ptr, ptr %6, align 8               ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 56
  %i.yr = load ptr, ptr %i.yq, align 8
  %.not.i138.i = icmp eq ptr %i.yr, null
  br i1 %.not.i138.i, label %bb.dl, label %bb.dm, !prof !53

bb.dl:                                            ; preds = %.critedge118.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !179
  unreachable

bb.dm:                                            ; preds = %.critedge118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ys = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.ys, ptr %i.a, align 8
  %i.yt = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.yp, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !179 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.yu = load ptr, ptr %6, align 8               ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 728
  %i.yw = load ptr, ptr %i.yv, align 8
  %i.yx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.yw, ptr %i.yx, align 8
  %i.yy = load ptr, ptr %7, align 8               ; 2 uses
  %i.yz = icmp eq ptr %i.yy, null
  %i.za = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.zb = load ptr, ptr %i.za, align 8            ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.yz, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.zd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ze = load i32, ptr %i.zd, align 8
  %i.zf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8
  %i.zh = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.zb, ptr noundef nonnull align 8 dereferenceable(16) %i.zc, i32 noundef 0, i32 noundef %i.ze, ptr noundef %i.yt, ptr noundef %i.zg) #33, !inline_history !179
  store ptr %i.zh, ptr %7, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i

bb.do:                                            ; preds = %bb.dm
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.yy, ptr noundef nonnull %i.yu, ptr noundef nonnull align 8 dereferenceable(52) %i.zb, ptr noundef nonnull align 8 dereferenceable(16) %i.zc, ptr noundef %i.yt) #33, !inline_history !179
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i: ; preds = %bb.do, %bb.dn
  %i.zi = load ptr, ptr %6, align 8
  %i.zj = load ptr, ptr %i.yx, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 728
  store ptr %i.zj, ptr %i.zk, align 8
  store ptr null, ptr %i.yx, align 8
  br label %.critedge.i118

.critedge.i118:                                   ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i, %bb.dj, %.loopexit.i
  %i.zl = load i8, ptr %i.mm, align 8, !range !55, !noundef !56
  %i.zm = trunc nuw i8 %i.zl to i1
  br i1 %i.zm, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge.i118
  %i.zn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %7), !inline_history !179
  %i.zo = icmp eq i64 %i.zn, 1
  %spec.select196.i = select i1 %i.zo, i64 1, i64 2
  br label %bb.dr

bb.dq:                                            ; preds = %.critedge.i118
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.ti) #33, !inline_history !179
  store i32 %i.tk, ptr %i.tj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.tl, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx.i, i64 14, i1 false)
  store i32 %i.tn, ptr %i.tm, align 8
  store i32 %i.tp, ptr %i.to, align 4
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.dk
  %.sroa.0183.2.i = phi i64 [ 2, %bb.dk ], [ %spec.select196.i, %bb.dp ], [ 1, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit": ; preds = %bb.bq, %bb.br, %bb.dr
  %.sroa.0183.3.i = phi i64 [ %.sroa.0183.2.i, %bb.dr ], [ 1, %bb.bq ], [ 1, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.ds

bb.ds:                                            ; preds = %bb.az, %bb.aw, %.critedge8.i, %bb.ax, %bb.ay, %.critedge89.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"
  %.sroa.062.2 = phi i64 [ 3, %.critedge89.i ], [ %.sroa.0183.3.i, %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21VisitSetNamedPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit" ], [ 1, %bb.ax ], [ %i.ls, %bb.az ], [ 1, %bb.aw ], [ 1, %.critedge8.i ], [ 1, %bb.ay ]
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a

bb.ae:                                            ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit
  %i.he = ptrtoint ptr %i.hb to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.hg = load ptr, ptr %i.ex, align 8            ; 2 uses
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.he                    ; 5 uses
  %.not23.i = icmp eq ptr %i.hg, %i.hb
  br i1 %.not23.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = icmp sgt i64 %i.hi, -1
  br i1 %i.hj, label %bb.ah, label %bb.ag, !prof !52

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.164) #32
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = sub i64 %i.hl, %i.hn
  %i.hp = icmp ugt i64 %i.hi, %i.ho
  br i1 %i.hp, label %bb.ai, label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i, !prof !53

bb.ai:                                            ; preds = %bb.ah
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.gz, i64 noundef %i.hi) #33
  %.pre.i.i.i = load i64, ptr %i.hm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i: ; preds = %bb.ai, %bb.ah
  %i.hq = phi i64 [ %.pre.i.i.i, %bb.ai ], [ %i.hn, %bb.ah ] ; 2 uses
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %i.hs = add i64 %i.hq, %i.hi
  store i64 %i.hs, ptr %i.hm, align 8
  store ptr %i.hr, ptr %i.ha, align 8
  %i.ht = load ptr, ptr %i.ev, align 8, !nonnull !56, !noundef !56 ; 2 uses
  %i.hu = load ptr, ptr %i.ew, align 8
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.ht to i64
  %i.hx = sub i64 %i.hv, %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hr, ptr nonnull align 8 %i.ht, i64 %i.hx, i1 false)
  %.pre.i36 = load ptr, ptr %i.ha, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ae, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i
  %i.hy = phi ptr [ %.pre.i36, %_ZN2v88internal4Zone13AllocateArrayIPKNS0_8compiler21CompilationDependencyEA_S6_EEPT_m.exit.i ], [ null, %bb.ae ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hi
  store ptr %i.hz, ptr %i.hc, align 8
  %i.ia = load ptr, ptr %i.ew, align 8
  %i.ib = load ptr, ptr %i.ev, align 8
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ie
  store ptr %i.if, ptr %i.hf, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler6MapRefEEaSERKS4_.exit, %bb.aj
  %i.ig = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ig, ptr noundef nonnull align 8 dereferenceable(65) %i.ey, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #33
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEaSERKS6_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #33
  %i.ih = add nuw i64 %.sroa.556.0137, 1          ; 2 uses
  %.not = icmp eq i64 %i.ih, %.0.i.i18201
  br i1 %.not, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.ak, %bb.t, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.ii = load ptr, ptr %i.r, align 8
  %i.ij = load ptr, ptr %i.ab, align 8
  %i.ik = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ij) #33
  call void @_ZN2v88internal8compiler17AccessInfoFactoryC1EPNS1_12JSHeapBrokerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %i.ii, ptr noundef %i.ik) #33, !inline_history !187
  %i.il = load ptr, ptr %21, align 8
  store ptr %i.il, ptr %25, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %i.in = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal10ZoneVectorINS0_8compiler18PropertyAccessInfoEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %21) #33 ; 0 uses
  %i.io = call noundef zeroext i1 @_ZNK2v88internal8compiler17AccessInfoFactory27FinalizePropertyAccessInfosENS0_10ZoneVectorINS1_18PropertyAccessInfoEEENS1_10AccessModeEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull %25, i8 noundef zeroext 4, ptr noundef nonnull %20) #33, !inline_history !187
  br i1 %i.io, label %bb.al, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread118"

"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread118": ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %.thread124.sink.split

bb.al:                                            ; preds = %._crit_edge
  %i.ip = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = load ptr, ptr %i.eb, align 8            ; 4 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 168
  br i1 %i.iv, label %bb.am, label %bb.at

bb.am:                                            ; preds = %bb.al
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8            ; 6 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8            ; 3 uses
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 3                 ; 3 uses
  %.not12.i = icmp eq ptr %i.iz, %i.ix
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.i

bb.an:                                            ; preds = %.lr.ph.i
  %i.je = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %.not.i14 = icmp eq ptr %i.je, %i.iz
  br i1 %.not.i14, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.am, %bb.an
  %.0813.i = phi ptr [ %i.je, %bb.an ], [ %i.ix, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.jf = load i64, ptr %.0813.i, align 8
  store i64 %i.jf, ptr %2, align 8
  %i.jg = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef11IsStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %i.jg, label %bb.an, label %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit

.loopexit:                                        ; preds = %bb.an, %bb.am
  %i.jh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 164), align 4, !range !55, !noundef !56
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %bb.ao, label %.critedge8.i

bb.ao:                                            ; preds = %.loopexit
  %i.jj = call fastcc noundef zeroext i1 @"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_27VisitDefineNamedOwnPropertyEvE3$_0EENS8_17MaybeReduceResultEPNS8_9ValueNodeESF_RKNS4_19NamedAccessFeedbackERKNS4_14FeedbackSourceENS4_10AccessModeEOT_EUlS5_E_EEbRKSN_RKT0_"(ptr %i.ix, i64 %i.jd), !inline_history !187
  br i1 %i.jj, label %bb.ap, label %.critedge8.i

bb.ap:                                            ; preds = %bb.ao
  %i.jk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckSeqOneByteStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !187
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

.critedge8.i:                                     ; preds = %.loopexit, %bb.ao
  %i.jm = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckStringEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !187
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit: ; preds = %.lr.ph.i
  %i.jo = call noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %i.ix, i64 %i.jd), !inline_history !187
  br i1 %i.jo, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.jp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q), !inline_history !187
  %i.jq = icmp eq i64 %i.jp, 1
  br i1 %i.jq, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

bb.ar:                                            ; preds = %_ZN2v88internal6maglev17HasOnlyStringMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE.exit
  %i.jr = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.ix, i64 %i.jd, ptr undef, i8 0, i1 noundef zeroext %.1.i, i1 noundef zeroext false), !inline_history !187
  %i.js = icmp eq i64 %i.jr, 1
  br i1 %i.js, label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116", label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.critedge8.i, %bb.ap
  %i.jt = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.jt, align 8
  %i.ju = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(168) %i.ir, i8 noundef zeroext 4), !inline_history !188
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"

bb.at:                                            ; preds = %bb.al
  %i.jv = sdiv exact i64 %i.iu, 168               ; 5 uses
  %i.jw = trunc i64 %i.jv to i32                  ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.jy = load i8, ptr %i.jx, align 8, !range !55, !noundef !56
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = icmp sgt i32 %i.jw, 0                   ; 2 uses
  br i1 %i.ka, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.at
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.kg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.kj = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.kk = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not15.i.i.i = icmp eq ptr %i.q, null
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count = and i64 %i.jv, 2147483647
  %i.km = getelementptr inbounds nuw i8, ptr %4, <2 x i64> <i64 24, i64 32>
  br label %bb.au

._crit_edge151:                                   ; preds = %._crit_edge144, %bb.at
  %.0102.i.lcssa = phi i1 [ false, %bb.at ], [ %.1103.i.lcssa, %._crit_edge144 ] ; 2 uses
  %.0.i.lcssa = phi i32 [ -1, %bb.at ], [ %.1.i13.lcssa, %._crit_edge144 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef 0), !inline_history !189
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.kn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 6 uses
  store i8 0, ptr %i.kn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store i8 0, ptr %i.ko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.kp = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store i8 0, ptr %i.kp, align 8
  %i.kq = icmp sgt i32 %.0.i.lcssa, -1
  br i1 %i.kq, label %bb.az, label %bb.ba

bb.au:                                            ; preds = %.lr.ph150, %._crit_edge144
  %indvars.iv = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next, %._crit_edge144 ] ; 3 uses
  %.0.i148 = phi i32 [ -1, %.lr.ph150 ], [ %.1.i13.lcssa, %._crit_edge144 ] ; 2 uses
  %.0102.i147 = phi i1 [ false, %.lr.ph150 ], [ %.1103.i.lcssa, %._crit_edge144 ] ; 2 uses
  %i.kr = load ptr, ptr %i.eb, align 8
  %i.ks = getelementptr inbounds nuw [168 x i8], ptr %i.kr, i64 %indvars.iv ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %.not115.i138 = icmp eq ptr %i.ku, %i.kw
  br i1 %.not115.i138, label %._crit_edge144, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %bb.au
  %i.kx = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph143

._crit_edge144:                                   ; preds = %bb.ay, %bb.au
  %.1103.i.lcssa = phi i1 [ %.0102.i147, %bb.au ], [ %spec.select.i, %bb.ay ] ; 2 uses
  %.1.i13.lcssa = phi i32 [ %.0.i148, %bb.au ], [ %.3.i, %bb.ay ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge151, label %bb.au, !llvm.loop !190

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.ay
  %.1.i13141 = phi i32 [ %.3.i, %bb.ay ], [ %.0.i148, %.lr.ph143.preheader ] ; 3 uses
  %.1103.i140 = phi i1 [ %spec.select.i, %bb.ay ], [ %.0102.i147, %.lr.ph143.preheader ]
  %.0110.i139 = phi ptr [ %i.mm, %bb.ay ], [ %i.ku, %.lr.ph143.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ky = load i64, ptr %.0110.i139, align 8
  store i64 %i.ky, ptr %3, align 8
  %i.kz = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !189
  %spec.select.i = select i1 %i.kz, i1 true, i1 %.1103.i140 ; 2 uses
  %i.la = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33, !inline_history !189
  br i1 %i.la, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i, label %bb.ay

_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i: ; preds = %.lr.ph143
  %i.lb = load ptr, ptr %i.au, align 8
  %i.lc = load ptr, ptr %i.r, align 8
  %i.ld = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.lb, ptr noundef %i.lc, ptr noundef %i.q), !inline_history !189 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.le = load i64, ptr %3, align 8
  store ptr %i.ke, ptr %i.kd, align 16
  store i64 %i.le, ptr %i.kb, align 8
  store <2 x ptr> %i.km, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.lf = load ptr, ptr %i.r, align 8
  %i.lg = load ptr, ptr %i.ab, align 8
  %i.lh = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.lg) #33, !inline_history !189
  %i.li = load ptr, ptr %4, align 16              ; 2 uses
  %i.lj = load ptr, ptr %i.kc, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = ashr exact i64 %i.lm, 3
  store ptr %i.lf, ptr %5, align 8
  store ptr %i.lh, ptr %i.kf, align 8
  store ptr %i.li, ptr %i.kg, align 8
  store i64 %i.ln, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  store i64 1, ptr %i.kh, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ki, align 8
  store i32 0, ptr %i.kj, align 4
  %i.lo = load ptr, ptr %i.au, align 8
  call fastcc void @_ZN2v88internal6maglev12_GLOBAL__N_115KnownMapsMerger29IntersectWithKnownNodeAspectsEPNS1_9ValueNodeERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(352) %i.lo), !inline_history !189
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.kh, align 8
  %i.lp = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  br i1 %i.lp, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %i.lq = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.lr = load ptr, ptr %i.r, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 312
  %i.lt = load ptr, ptr %i.ls, align 8            ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.av, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.lt, %bb.av ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.lu, %bb.av ]
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = icmp ult ptr %i.lw, %i.q                ; 2 uses
  %.19.i.i.i.i.i.i.i.i.i = select i1 %i.lx, ptr %.0811.i.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.lx, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !8

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ly = icmp eq ptr %.19.i.i.i.i.i.i.i.i.i, %i.lu
  br i1 %i.ly, label %select.unfold.i.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i
  %i.lz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = icmp ult ptr %i.q, %i.ma
  br i1 %i.mb, label %select.unfold.i.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i

select.unfold.i.i.i:                              ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i.i, %bb.av
  %i.mc = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef %i.lr) #33, !inline_history !189
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i, i64 40
  %i.me = load i32, ptr %i.md, align 8            ; 2 uses
  %i.mf = load i64, ptr %i.kk, align 8
  %i.mg = and i64 %i.mf, 65535
  %i.mh = icmp ne i64 %i.mg, 142
  %.not.i.i.i = or i1 %.not15.i.i.i, %i.mh
  br i1 %.not.i.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i
  %i.mi = load i32, ptr %i.kl, align 8
  %i.mj = and i32 %i.mi, %i.me
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i: ; preds = %bb.aw, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i, %select.unfold.i.i.i
  %.011.i.i.i = phi i32 [ %i.mc, %select.unfold.i.i.i ], [ %i.mj, %bb.aw ], [ %i.me, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i.i ]
  %i.mk = and i32 %.011.i.i.i, 1
  %i.ml = icmp eq i32 %i.mk, 0
  %spec.select116.i = select i1 %i.ml, i32 %.1.i13141, i32 %i.kx
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i
  %.2.i = phi i32 [ %.1.i13141, %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i ], [ %spec.select116.i, %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !189
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph143
  %.3.i = phi i32 [ %.2.i, %bb.ax ], [ %.1.i13141, %.lr.ph143 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.mm = getelementptr inbounds nuw i8, ptr %.0110.i139, i64 8 ; 2 uses
  %.not115.i = icmp eq ptr %i.mm, %i.kw
  br i1 %.not115.i, label %._crit_edge144, label %.lr.ph143

bb.az:                                            ; preds = %._crit_edge151
  store i8 0, ptr %i.ko, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %6, i32 noundef 2), !inline_history !189
  store i8 1, ptr %i.ko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %i.q, ptr %i.i, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder10GotoIfTrueINS1_11BranchIfSmiEJEEEvPNS3_5LabelESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %8, ptr nonnull %i.i, i64 1), !inline_history !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  br label %bb.bd

bb.ba:                                            ; preds = %._crit_edge151
  %i.mn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.mo = load i64, ptr %i.mn, align 8
  %i.mp = and i64 %i.mo, 7696581394432
  switch i64 %i.mp, label %bb.bb [
    i64 0, label %bb.bc
    i64 4398046511104, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 70, ptr %i.h, align 1
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1 ; 2 uses
  %i.mt = load i8, ptr %i.ms, align 1
  %i.mu = or i8 %i.mt, 1
  store i8 %i.mu, ptr %i.ms, align 1
  %i.mv = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.h), !inline_history !189 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

bb.bc:                                            ; preds = %bb.ba, %bb.ba
  %i.mw = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.q), !inline_history !189
  %i.mx = icmp eq i64 %i.mw, 1
  br i1 %i.mx, label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit", label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.my = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8
  %i.na = and i64 %i.mz, 7696581394432
  switch i64 %i.na, label %bb.be [
    i64 0, label %bb.bh
    i64 4398046511104, label %bb.bh
  ]

bb.be:                                            ; preds = %bb.bd
  %i.nb = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 368 ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8            ; 2 uses
  %.not.i.i119.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i119.i, label %bb.bf, label %_ZN2v88internal8compiler12JSHeapBroker15heap_number_mapEv.exit.i.i

bb.bf:                                            ; preds = %bb.be
  call void @_ZN2v88internal8compiler12JSHeapBroker17InitHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8560) %i.nb) #33, !inline_history !189
  %.pr.i.i.i = load ptr, ptr %i.nc, align 8       ; 2 uses
  %.not.i.i.i.i.i.i.i12 = icmp eq ptr %.pr.i.i.i, null
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a
  %i.og = load i64, ptr %i.my, align 8
  %i.oh = and i64 %i.og, 7696581394432
  %i.oi = icmp eq i64 %i.oh, 0
  br i1 %i.oi, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i.1, label %bb.bl

bb.bl:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i
  %i.oj = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.q, i32 noundef 0), !inline_history !191
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i.1

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i.1: ; preds = %bb.bl, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i
  %.0.i.i.i.i.1 = phi ptr [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i ], [ %i.oj, %bb.bl ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.1, i64 16 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8
  %i.om = add nsw i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 8
  %i.on = getelementptr inbounds i8, ptr %i.nu, i64 -16
  store ptr %.0.i.i.i.i.1, ptr %i.on, align 8
  %i.oo = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_18MigrateMapIfNeededEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %i.nu), !inline_history !189
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i.1, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i
  %.0111.i = phi ptr [ %i.oo, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.i.1 ], [ %.0.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit.i ]
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = ptrtoint ptr %i.oq to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.ow = load i32, ptr %i.ov, align 4
  %i.ox = zext i32 %i.ow to i64
  %i.oy = add i64 %i.ou, %i.ox
  %i.oz = sub i64 %i.ot, %i.oy
  %i.pa = trunc i64 %i.oz to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.584)
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.pc = load i32, ptr %i.pb, align 8, !noalias !195 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.sroa.584.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.584, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.584.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(14) %i.pd, i64 14, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.pf = load i32, ptr %i.pe, align 8, !noalias !195 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !195 ; 2 uses
  br i1 %i.ka, label %.lr.ph158, label %.loopexit132

.lr.ph158:                                        ; preds = %bb.bm
  %i.pi = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.pj = add nsw i64 %i.jv, 4294967295
  %i.pk = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 11 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.po = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.pq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pu = add nuw i32 %i.jw, 1
  %i.pv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.pw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pz = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.qa = and i64 %i.jv, 2147483647
  %i.qb = zext i32 %.0.i.lcssa to i64
  %i.qc = and i64 %i.pj, 4294967295
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph158, %bb.ct
  %indvars.iv162 = phi i64 [ 0, %.lr.ph158 ], [ %indvars.iv.next163, %bb.ct ] ; 6 uses
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.pa) #33, !inline_history !189
  store i32 %i.pc, ptr %i.pb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.pd, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.584.8..sroa_idx, i64 14, i1 false)
  store i32 %i.pf, ptr %i.pe, align 8
  store i32 %i.ph, ptr %i.pg, align 4
  %i.qd = load ptr, ptr %i.eb, align 8
  %i.qe = getelementptr inbounds nuw [168 x i8], ptr %i.qd, i64 %indvars.iv162 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i8 0, ptr %i.pi, align 8
  %i.qf = icmp eq i64 %indvars.iv162, %i.qc       ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8            ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = ptrtoint ptr %i.qj to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = ashr exact i64 %i.qm, 3                 ; 2 uses
  br i1 %i.qf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qo = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr %i.qh, i64 %i.qn, ptr undef, i8 0, i1 noundef zeroext %i.jz, i1 noundef zeroext %.0102.i.lcssa), !inline_history !189
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.qp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr noundef %.0111.i, ptr %i.qh, i64 %i.qn, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(40) %10), !inline_history !189
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %storemerge.i = phi i64 [ %i.qp, %bb.bp ], [ %i.qo, %bb.bo ]
  %i.qq = icmp eq i64 %storemerge.i, 1
  br i1 %i.qq, label %bb.ct, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qr = icmp eq i64 %indvars.iv162, %i.qb
  br i1 %i.qr, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.qs = load ptr, ptr %6, align 8               ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8
  %.not.i.i = icmp eq ptr %i.qu, null
  br i1 %.not.i.i, label %bb.bt, label %bb.bu, !prof !53

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !189
  unreachable

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.pk, ptr %i.e, align 8
  %i.qv = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.qs, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.qw = load ptr, ptr %6, align 8               ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 728
  %i.qy = load ptr, ptr %i.qx, align 8
  store ptr %i.qy, ptr %i.pl, align 8
  %i.qz = load ptr, ptr %8, align 8               ; 2 uses
  %i.ra = icmp eq ptr %i.qz, null
  %i.rb = load ptr, ptr %i.pm, align 8            ; 2 uses
  br i1 %i.ra, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.rc = load i32, ptr %i.po, align 8
  %i.rd = load ptr, ptr %i.pp, align 8
  %i.re = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.rb, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i32 noundef 0, i32 noundef %i.rc, ptr noundef %i.qv, ptr noundef %i.rd) #33, !inline_history !189 ; 2 uses
  store ptr %i.re, ptr %8, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i

bb.bw:                                            ; preds = %bb.bu
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.qz, ptr noundef nonnull %i.qw, ptr noundef nonnull align 8 dereferenceable(52) %i.rb, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef %i.qv) #33, !inline_history !189
  %.pre = load ptr, ptr %8, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i: ; preds = %bb.bw, %bb.bv
  %i.rf = phi ptr [ %.pre, %bb.bw ], [ %i.re, %bb.bv ]
  %i.rg = load ptr, ptr %6, align 8
  %i.rh = load ptr, ptr %i.pl, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 728
  store ptr %i.rh, ptr %i.ri, align 8
  store ptr null, ptr %i.pl, align 8
  %i.rj = load ptr, ptr %i.pm, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef nonnull align 8 dereferenceable(52) %i.rj, ptr noundef nonnull align 8 dereferenceable(312) %i.rf, i1 noundef zeroext false, ptr noundef null), !inline_history !189
  %i.rk = load ptr, ptr %6, align 8               ; 2 uses
  %i.rl = load ptr, ptr %i.pl, align 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 728
  store ptr %i.rl, ptr %i.rm, align 8
  store ptr null, ptr %i.pl, align 8
  %i.rn = load ptr, ptr %8, align 8               ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load i32, ptr %i.ro, align 8
  %i.rq = load i32, ptr %i.po, align 8            ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, -1
  %i.rs = icmp eq i32 %i.rq, %i.rp
  %i.rt = and i1 %i.rr, %i.rs
  br i1 %i.rt, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i, label %bb.bx, !prof !52

bb.bx:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32, !inline_history !189
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit.i
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.rk, ptr noundef nonnull align 8 dereferenceable(312) %i.rn, ptr noundef nonnull align 8 dereferenceable(8) %i.pk), !inline_history !189
  %i.ru = load ptr, ptr %6, align 8
  %i.rv = load ptr, ptr %8, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.ru, ptr noundef null, ptr noundef %i.rv, ptr noundef nonnull align 8 dereferenceable(8) %i.pk), !inline_history !189
  br label %bb.by

bb.by:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i, %bb.br
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.pq, align 8
  %i.rw = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21TryBuildPropertyStoreEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoENS5_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.q, ptr poison, ptr %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(168) %i.qe, i8 noundef zeroext 4), !inline_history !189
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = and i32 %i.rx, 7
  switch i32 %i.ry, label %bb.cn [
    i32 0, label %bb.bz
    i32 2, label %bb.bz
    i32 1, label %bb.co
    i32 3, label %bb.cg
  ]

bb.bz:                                            ; preds = %bb.by, %bb.by
  %i.rz = load i8, ptr %i.kn, align 8, !range !55, !noundef !56
  %i.sa = trunc nuw i8 %i.rz to i1
  br i1 %i.sa, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sb = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.sc = sub i32 %i.pu, %i.sb
  store i8 0, ptr %i.kn, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %6, i32 noundef %i.sc), !inline_history !189
  store i8 1, ptr %i.kn, align 8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.sd = load ptr, ptr %6, align 8               ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 56
  %i.sf = load ptr, ptr %i.se, align 8
  %.not.i125.i = icmp eq ptr %i.sf, null
  br i1 %.not.i125.i, label %bb.cc, label %bb.cd, !prof !53

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !189
  unreachable

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.pv, ptr %i.d, align 8
  %i.sg = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.sd, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.sh = load ptr, ptr %6, align 8               ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 728
  %i.sj = load ptr, ptr %i.si, align 8
  store ptr %i.sj, ptr %i.pl, align 8
  %i.sk = load ptr, ptr %7, align 8               ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null
  %i.sm = load ptr, ptr %i.pm, align 8            ; 2 uses
  br i1 %i.sl, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sn = load i32, ptr %i.pw, align 8
  %i.so = load ptr, ptr %i.px, align 8
  %i.sp = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.sm, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i32 noundef 0, i32 noundef %i.sn, ptr noundef %i.sg, ptr noundef %i.so) #33, !inline_history !189
  store ptr %i.sp, ptr %7, align 8
  br label %.sink.split

bb.cf:                                            ; preds = %bb.cd
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.sk, ptr noundef nonnull %i.sh, ptr noundef nonnull align 8 dereferenceable(52) %i.sm, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef %i.sg) #33, !inline_history !189
  br label %.sink.split

bb.cg:                                            ; preds = %bb.by
  %i.sq = load i8, ptr %i.kp, align 8, !range !55, !noundef !56
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ss = sub i64 %i.jv, %indvars.iv162
  store i8 0, ptr %i.kp, align 8
  %i.st = trunc i64 %i.ss to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %6, i32 noundef %i.st), !inline_history !189
  store i8 1, ptr %i.kp, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.su = load ptr, ptr %6, align 8               ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 56
  %i.sw = load ptr, ptr %i.sv, align 8
  %.not.i133.i = icmp eq ptr %i.sw, null
  br i1 %.not.i133.i, label %bb.cj, label %bb.ck, !prof !53

bb.cj:                                            ; preds = %bb.ci
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !189
  unreachable

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.pr, ptr %i.c, align 8
  %i.sx = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.su, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.sy = load ptr, ptr %6, align 8               ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 728
  %i.ta = load ptr, ptr %i.sz, align 8
  store ptr %i.ta, ptr %i.pl, align 8
  %i.tb = load ptr, ptr %9, align 8               ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null
  %i.td = load ptr, ptr %i.pm, align 8            ; 2 uses
  br i1 %i.tc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.te = load i32, ptr %i.ps, align 8
  %i.tf = load ptr, ptr %i.pt, align 8
  %i.tg = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.td, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i32 noundef 0, i32 noundef %i.te, ptr noundef %i.sx, ptr noundef %i.tf) #33, !inline_history !189
  store ptr %i.tg, ptr %9, align 8
  br label %.sink.split

bb.cm:                                            ; preds = %bb.ck
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.tb, ptr noundef nonnull %i.sy, ptr noundef nonnull align 8 dereferenceable(52) %i.td, ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef %i.sx) #33, !inline_history !189
  br label %.sink.split

bb.cn:                                            ; preds = %bb.by
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32, !inline_history !189
  unreachable

.sink.split:                                      ; preds = %bb.cl, %bb.cm, %bb.ce, %bb.cf
  %i.th = load ptr, ptr %6, align 8
  %i.ti = load ptr, ptr %i.pl, align 8
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 728
  store ptr %i.ti, ptr %i.tj, align 8
  store ptr null, ptr %i.pl, align 8
  br label %bb.co

bb.co:                                            ; preds = %.sink.split, %bb.by
  %i.tk = load i8, ptr %i.pi, align 8, !range !55, !noundef !56
  %i.tl = trunc nuw i8 %i.tk to i1
  br i1 %i.tl, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.tm = load ptr, ptr %i.pm, align 8
  %i.tn = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, ptr noundef nonnull align 8 dereferenceable(52) %i.tm, ptr noundef nonnull align 8 dereferenceable(312) %i.tn, i1 noundef zeroext false, ptr noundef null), !inline_history !189
  %i.to = load ptr, ptr %6, align 8               ; 2 uses
  %i.tp = load ptr, ptr %i.pl, align 8
  %i.tq = getelementptr inbounds nuw i8, ptr %i.to, i64 728
  store ptr %i.tp, ptr %i.tq, align 8
  store ptr null, ptr %i.pl, align 8
  %i.tr = load ptr, ptr %10, align 8              ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 8
  %i.tu = load i32, ptr %i.py, align 8            ; 2 uses
  %i.tv = icmp sgt i32 %i.tu, -1
  %i.tw = icmp eq i32 %i.tu, %i.tt
  %i.tx = and i1 %i.tv, %i.tw
  br i1 %i.tx, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i, label %bb.cq, !prof !52

bb.cq:                                            ; preds = %bb.cp
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32, !inline_history !189
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i: ; preds = %bb.cp
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.to, ptr noundef nonnull align 8 dereferenceable(312) %i.tr, ptr noundef nonnull align 8 dereferenceable(8) %i.pz), !inline_history !189
  %i.ty = load ptr, ptr %6, align 8
  %i.tz = load ptr, ptr %10, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.ty, ptr noundef null, ptr noundef %i.tz, ptr noundef nonnull align 8 dereferenceable(8) %i.pz), !inline_history !189
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  br i1 %i.qf, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.loopexit132

bb.ct:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit135.i, %bb.cr, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %i.qa
  br i1 %exitcond166.not, label %.loopexit132, label %bb.bn, !llvm.loop !194

.loopexit132:                                     ; preds = %bb.ct, %bb.bm, %bb.cs
  %i.ua = load i8, ptr %i.kp, align 8, !range !55, !noundef !56
  %i.ub = trunc nuw i8 %i.ua to i1
  br i1 %i.ub, label %bb.cu, label %.critedge.i11

bb.cu:                                            ; preds = %.loopexit132
  %i.uc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %9), !inline_history !189
  %i.ud = icmp eq i64 %i.uc, 1
  br i1 %i.ud, label %.critedge.i11, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ue = call fastcc i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEvENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(32) %29), !inline_history !189 ; 0 uses
  %i.uf = load i8, ptr %i.kn, align 8, !range !55, !noundef !56
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %.critedge118.i, label %bb.dc

.critedge118.i:                                   ; preds = %bb.cv
  %i.uh = load ptr, ptr %6, align 8               ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 56
  %i.uj = load ptr, ptr %i.ui, align 8
  %.not.i138.i = icmp eq ptr %i.uj, null
  br i1 %.not.i138.i, label %bb.cw, label %bb.cx, !prof !53

bb.cw:                                            ; preds = %.critedge118.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32, !inline_history !189
  unreachable

bb.cx:                                            ; preds = %.critedge118.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.uk = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.uk, ptr %i.b, align 8
  %i.ul = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.uh, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !189 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.um = load ptr, ptr %6, align 8               ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 728
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.uo, ptr %i.up, align 8
  %i.uq = load ptr, ptr %7, align 8               ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  %i.us = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ut = load ptr, ptr %i.us, align 8            ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %i.ur, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.uv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.uw = load i32, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8
  %i.uz = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.ut, ptr noundef nonnull align 8 dereferenceable(16) %i.uu, i32 noundef 0, i32 noundef %i.uw, ptr noundef %i.ul, ptr noundef %i.uy) #33, !inline_history !189
  store ptr %i.uz, ptr %7, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i

bb.cz:                                            ; preds = %bb.cx
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.uq, ptr noundef nonnull %i.um, ptr noundef nonnull align 8 dereferenceable(52) %i.ut, ptr noundef nonnull align 8 dereferenceable(16) %i.uu, ptr noundef %i.ul) #33, !inline_history !189
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i: ; preds = %bb.cz, %bb.cy
  %i.va = load ptr, ptr %6, align 8
  %i.vb = load ptr, ptr %i.up, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 728
  store ptr %i.vb, ptr %i.vc, align 8
  store ptr null, ptr %i.up, align 8
  br label %.critedge.i11

.critedge.i11:                                    ; preds = %.loopexit132, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit139.i, %bb.cu
  %i.vd = load i8, ptr %i.kn, align 8, !range !55, !noundef !56
  %i.ve = trunc nuw i8 %i.vd to i1
  br i1 %i.ve, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.critedge.i11
  %i.vf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %7), !inline_history !189
  %i.vg = icmp eq i64 %i.vf, 1
  %spec.select = select i1 %i.vg, i64 1, i64 2
  br label %bb.dc

bb.db:                                            ; preds = %.critedge.i11
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.pa) #33, !inline_history !189
  store i32 %i.pc, ptr %i.pb, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.pd, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.584.8..sroa_idx, i64 14, i1 false)
  store i32 %i.pf, ptr %i.pe, align 8
  store i32 %i.ph, ptr %i.pg, align 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.da, %bb.cv, %bb.db
  %.sroa.099.0 = phi i64 [ 2, %bb.cv ], [ %spec.select, %bb.da ], [ 1, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.584)
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackENS9_10AccessModeERKNS0_10ZoneVectorINS9_18PropertyAccessInfoEEEOT_.exit": ; preds = %bb.bc, %bb.bb, %bb.dc
  %.sroa.099.3 = phi i64 [ %.sroa.099.0, %bb.dc ], [ 1, %bb.bb ], [ 1, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit"

"_ZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS2_27VisitDefineNamedOwnPropertyEvE3$_0EENS1_17MaybeReduceResultEPNS1_9ValueNodeES8_RKNS0_8compiler19NamedAccessFeedbackERKNS9_14FeedbackSourceENS9_10AccessModeEOT_.exit.thread116": ; preds = %bb.aq, %bb.ap, %.critedge8.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetKeyedPropertyEv:bb.a
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %.critedge90.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fr = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.fs = icmp eq i8 %i.fr, 1
  br i1 %i.fs, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.ft = load ptr, ptr %i.q, align 8
  %i.fu = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ft) #33
  store ptr %i.fu, ptr %10, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i8 0, i64 24, i1 false)
  %i.fw = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fx = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not119.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not119.i, label %.thread111.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.w, %._crit_edge.i
  %.082120.i = phi ptr [ %i.gs, %._crit_edge.i ], [ %i.fw, %bb.w ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.082120.i, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8            ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.082120.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not85117.i = icmp eq ptr %i.fz, %i.gb
  br i1 %.not85117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph122.i, %bb.aa
  %.083118.i = phi ptr [ %i.gr, %bb.aa ], [ %i.fz, %.lr.ph122.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gc = load i64, ptr %.083118.i, align 8
  store i64 %i.gc, ptr %11, align 8
  %i.gd = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #33 ; 3 uses
  %i.ge = trunc i8 %i.gd to i1
  %i.gf = icmp ult i8 %i.gd, 12
  %i.gg = and i1 %i.gf, %i.ge
  %i.gh = icmp eq i8 %i.gd, 13
  %i.gi = or i1 %i.gh, %i.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  br i1 %i.gi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.gj = call i24 @_ZNK2v88internal8compiler21ElementAccessFeedback10keyed_modeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #33
  store i24 %i.gj, ptr %12, align 4
  %i.gk = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode10store_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %12) #33
  %i.gl = icmp eq i8 %i.gk, 1
  br i1 %i.gl, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x, %.lr.ph.i
  %i.gm = load ptr, ptr %i.w, align 8
  %i.gn = call noundef zeroext i1 @_ZN2v88internal8compiler6MapRef43PrototypesElementsDoNotHaveAccessorsOrThrowEPNS1_12JSHeapBrokerEPNS0_10ZoneVectorIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.gm, ptr noundef nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.gn, label %bb.z, label %bb.ab

.critedge.i:                                      ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i, %bb.y
  %i.go = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #33
  %i.gp = add i16 %i.go, -2102
  %i.gq = icmp ult i16 %i.gp, 4
  br i1 %i.gq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.gr = getelementptr inbounds nuw i8, ptr %.083118.i, i64 8 ; 2 uses
  %.not85.i = icmp eq ptr %i.gr, %i.gb
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.aa, %.lr.ph122.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.082120.i, i64 88 ; 2 uses
  %.not.i = icmp eq ptr %i.gs, %i.fx
  br i1 %.not.i, label %._crit_edge123.i, label %.lr.ph122.i

._crit_edge123.i:                                 ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.fv, align 8          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre130.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not86124.i = icmp eq ptr %.pre.i, %.pre130.i
  br i1 %.not86124.i, label %.thread111.i, label %.lr.ph127.i

.thread111.i:                                     ; preds = %.lr.ph127.i, %._crit_edge123.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ac

.lr.ph127.i:                                      ; preds = %._crit_edge123.i, %.lr.ph127.i
  %.084125.i = phi ptr [ %i.gw, %.lr.ph127.i ], [ %.pre.i, %._crit_edge123.i ] ; 2 uses
  %.sroa.021.0.copyload.i = load ptr, ptr %.084125.i, align 8
  %i.gt = load ptr, ptr %i.w, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8544
  %i.gv = load ptr, ptr %i.gu, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.gv, ptr %.sroa.021.0.copyload.i) #33
  %i.gw = getelementptr inbounds nuw i8, ptr %.084125.i, i64 8 ; 2 uses
  %.not86.i = icmp eq ptr %i.gw, %.pre130.i
  br i1 %.not86.i, label %.thread111.i, label %.lr.ph127.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.critedge90.i

bb.ac:                                            ; preds = %.thread111.i, %bb.v
  %i.gx = load ptr, ptr %i.fn, align 8
  %i.gy = load ptr, ptr %i.fl, align 8            ; 10 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp eq i64 %i.hb, 88
  br i1 %i.hc, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.hd = load i8, ptr %i.gy, align 8
  %i.he = add i8 %i.hd, -30
  %i.hf = icmp ult i8 %i.he, 12
  br i1 %i.hf, label %.critedge90.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = icmp eq ptr %i.hi, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8            ; 3 uses
  br i1 %i.hl, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.011.0.copyload.i = load ptr, ptr %i.hn, align 8
  %i.ho = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o)
  %i.hp = icmp eq i64 %i.ho, 1
  br i1 %i.hp, label %.critedge90.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.o, ptr %i.g, align 8
  %i.hq = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hr = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr %.sroa.011.0.copyload.i)
  %i.hs = and i64 %i.hr, 7
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %.critedge90.i, label %.thread115.i

bb.ah:                                            ; preds = %bb.ae
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hn to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 3
  %i.ia = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr %i.hn, i64 %i.hz, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ib = icmp eq i64 %i.ia, 1
  br i1 %i.ib, label %.critedge90.i, label %.thread115.i

.thread115.i:                                     ; preds = %bb.ah, %bb.ag
  %i.ic = load i8, ptr %i.gy, align 8
  %i.id = add i8 %i.ic, -18
  %i.ie = icmp ult i8 %i.id, 12
  br i1 %i.ie, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread115.i
  %i.if = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.gy, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %.critedge90.i

bb.aj:                                            ; preds = %.thread115.i
  %i.ig = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.gy, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %.critedge90.i

bb.ak:                                            ; preds = %bb.ac
  %i.ih = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ij = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode9load_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.ik = trunc i8 %i.ij to i1
  br i1 %i.ik, label %.critedge90.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.il = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33 ; 7 uses
  %i.im = add i8 %i.il, -3
  %or.cond.i.i.i = icmp ult i8 %i.im, -2
  %i.in = icmp ne i8 %i.il, 4
  %spec.select.i.not.i.i = and i1 %i.in, %or.cond.i.i.i
  %i.io = load ptr, ptr %i.fn, align 8
  %i.ip = load ptr, ptr %i.fl, align 8
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = sdiv exact i64 %i.is, 88                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.iu = zext i1 %spec.select.i.not.i.i to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %i.iu)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store i8 0, ptr %i.iv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store i8 0, ptr %i.iw, align 8
  %i.ix = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o)
  %i.iy = icmp eq i64 %i.ix, 1
  br i1 %i.iy, label %.thread105.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iz = trunc i64 %i.it to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.o, ptr %i.e, align 8
  %i.ja = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jb = icmp sgt i32 %i.iz, 0
  br i1 %i.jb, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.an
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.jd = add nsw i64 %i.it, 4294967295
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.jp = and i64 %i.jd, 4294967295
  %i.jq = and i64 %i.it, 2147483647
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bv ] ; 5 uses
  %i.jr = load ptr, ptr %i.fl, align 8
  %i.js = getelementptr inbounds nuw [88 x i8], ptr %i.jr, i64 %indvars.iv.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i8 0, ptr %i.jc, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = icmp eq ptr %i.jv, %i.jx                ; 2 uses
  %i.jz = icmp eq i64 %indvars.iv.i.i, %i.jp      ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8            ; 6 uses
  br i1 %i.jz, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.jy, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.kb, align 8
  %i.kc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr %.sroa.016.0.copyload.i.i)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kb to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = ashr exact i64 %i.kh, 3
  %i.kj = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr %i.kb, i64 %i.ki, ptr %i.ja, i8 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.av

bb.as:                                            ; preds = %bb.ao
  br i1 %i.jy, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.kb, align 8
  %i.kk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder41BuildTransitionElementsKindAndCompareMapsEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_PNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %i.jt, ptr %.sroa.010.0.copyload.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.kl = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kb to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = ashr exact i64 %i.kp, 3
  %i.kr = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.ja, ptr %i.kb, i64 %i.kq, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %.sroa.092.0.i.i = phi i64 [ %i.kj, %bb.ar ], [ %i.kc, %bb.aq ], [ %i.kr, %bb.au ], [ %i.kk, %bb.at ]
  %i.ks = and i64 %.sroa.092.0.i.i, 7
  %i.kt = icmp eq i64 %i.ks, 1
  br i1 %i.kt, label %bb.bv, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ku = load i8, ptr %i.js, align 8             ; 2 uses
  %i.kv = add i8 %i.ku, -30
  %i.kw = icmp ult i8 %i.kv, 12
  br i1 %i.kw, label %.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kx = add i8 %i.ku, -18
  %i.ky = icmp ult i8 %i.kx, 12
  br i1 %i.ky, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kz = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.js, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.la = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(88) %i.js, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.089.0.i.i = phi i64 [ %i.la, %bb.az ], [ %i.kz, %bb.ay ] ; 2 uses
  %i.lb = trunc i64 %.sroa.089.0.i.i to i32
  %i.lc = and i32 %i.lb, 7
  switch i32 %i.lc, label %bb.bq [
    i32 0, label %bb.bb
    i32 2, label %bb.bb
    i32 3, label %.thread.i.i
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.ld = load i8, ptr %i.iv, align 8, !range !55, !noundef !56
  %i.le = trunc nuw i8 %i.ld to i1
  br i1 %i.le, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lf = sub i64 %i.it, %indvars.iv.i.i
  store i8 0, ptr %i.iv, align 8
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = add i32 %i.lg, 1
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i32 noundef %i.lh)
  switch i8 %i.il, label %.lr.ph.i.i.i.i.i.i.i [
    i8 4, label %.thread100.i.i
    i8 2, label %.thread100.i.i
    i8 1, label %.thread100.i.i
  ]

.thread100.i.i:                                   ; preds = %bb.bc, %bb.bc, %bb.bc
  store i8 1, ptr %i.iv, align 8
  br label %bb.bf

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bc
  %i.li = load ptr, ptr %i.je, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8            ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = or i64 %i.ll, 2
  store i64 %i.lm, ptr %i.lk, align 8
  store i8 1, ptr %i.iv, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  switch i8 %i.il, label %bb.be [
    i8 4, label %bb.bf
    i8 2, label %bb.bf
    i8 1, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.i.i
  %i.ln = inttoptr i64 %.sroa.089.0.i.i to ptr
  %i.lo = load ptr, ptr %i.jf, align 8
  store ptr %i.ln, ptr %i.lo, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bd, %bb.bd, %.thread100.i.i
  %i.lp = load ptr, ptr %1, align 8               ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  %i.lr = load ptr, ptr %i.lq, align 8
  %.not.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bh, !prof !53

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.jg, ptr %i.c, align 8
  %i.ls = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.lp, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.lt = load ptr, ptr %1, align 8               ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 728
  %i.lv = load ptr, ptr %i.lu, align 8
  store ptr %i.lv, ptr %i.jh, align 8
  %i.lw = load ptr, ptr %2, align 8               ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  %i.ly = load ptr, ptr %i.ji, align 8            ; 2 uses
  br i1 %i.lx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lz = load i32, ptr %i.jj, align 8
  %i.ma = load ptr, ptr %i.je, align 8
  %i.mb = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i32 noundef 0, i32 noundef %i.lz, ptr noundef %i.ls, ptr noundef %i.ma) #33
  store ptr %i.mb, ptr %2, align 8
  br label %.sink.split.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.lw, ptr noundef nonnull %i.lt, ptr noundef nonnull align 8 dereferenceable(52) %i.ly, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef %i.ls) #33
  br label %.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ba, %bb.aw
  %i.mc = load i8, ptr %i.iw, align 8, !range !55, !noundef !56
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread.i.i
  %i.me = sub i64 %i.it, %indvars.iv.i.i
  store i8 0, ptr %i.iw, align 8
  %i.mf = trunc i64 %i.me to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, i32 noundef %i.mf)
  store i8 1, ptr %i.iw, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.i.i
  %i.mg = load ptr, ptr %1, align 8               ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load ptr, ptr %i.mh, align 8
  %.not.i72.i.i = icmp eq ptr %i.mi, null
  br i1 %.not.i72.i.i, label %bb.bm, label %bb.bn, !prof !53

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.jk, ptr %i.b, align 8
  %i.mj = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.mg, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.mk = load ptr, ptr %1, align 8               ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 728
  %i.mm = load ptr, ptr %i.ml, align 8
  store ptr %i.mm, ptr %i.jh, align 8
  %i.mn = load ptr, ptr %3, align 8               ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  %i.mp = load ptr, ptr %i.ji, align 8            ; 2 uses
  br i1 %i.mo, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mq = load i32, ptr %i.jl, align 8
  %i.mr = load ptr, ptr %i.jm, align 8
  %i.ms = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i32 noundef 0, i32 noundef %i.mq, ptr noundef %i.mj, ptr noundef %i.mr) #33
  store ptr %i.ms, ptr %3, align 8
  br label %.sink.split.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.mn, ptr noundef nonnull %i.mk, ptr noundef nonnull align 8 dereferenceable(52) %i.mp, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef %i.mj) #33
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bp, %bb.bo, %bb.bj, %bb.bi
  %i.mt = load ptr, ptr %1, align 8
  %i.mu = load ptr, ptr %i.jh, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 728
  store ptr %i.mu, ptr %i.mv, align 8
  store ptr null, ptr %i.jh, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i.i, %bb.ba
  %i.mw = load i8, ptr %i.jc, align 8, !range !55, !noundef !56
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.my = load ptr, ptr %i.ji, align 8
  %i.mz = load ptr, ptr %4, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(52) %i.my, ptr noundef nonnull align 8 dereferenceable(312) %i.mz, i1 noundef zeroext false, ptr noundef null)
  %i.na = load ptr, ptr %1, align 8               ; 2 uses
  %i.nb = load ptr, ptr %i.jh, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 728
  store ptr %i.nb, ptr %i.nc, align 8
  store ptr null, ptr %i.jh, align 8
  %i.nd = load ptr, ptr %4, align 8               ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load i32, ptr %i.ne, align 8
  %i.ng = load i32, ptr %i.jn, align 8            ; 2 uses
  %i.nh = icmp sgt i32 %i.ng, -1
  %i.ni = icmp eq i32 %i.ng, %i.nf
  %i.nj = and i1 %i.nh, %i.ni
  br i1 %i.nj, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, label %bb.bs, !prof !52

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i: ; preds = %bb.br
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.na, ptr noundef nonnull align 8 dereferenceable(312) %i.nd, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
  %i.nk = load ptr, ptr %1, align 8
  %i.nl = load ptr, ptr %4, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.nk, ptr noundef null, ptr noundef %i.nl, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  br i1 %i.jz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit.i.i

bb.bv:                                            ; preds = %bb.bt, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.jq
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ao, !llvm.loop !196

.loopexit.i.i:                                    ; preds = %bb.bv, %bb.bu, %bb.an
  %i.nm = load i8, ptr %i.iw, align 8, !range !55, !noundef !56
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bw, label %.critedge.i.i

bb.bw:                                            ; preds = %.loopexit.i.i
  %i.no = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %3)
  %i.np = icmp eq i64 %i.no, 1
  br i1 %i.np, label %.critedge.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nq = call fastcc i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder21VisitSetKeyedPropertyEvENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(24) %15) ; 2 uses
  %i.nr = load i8, ptr %i.iv, align 8, !range !55, !noundef !56
  %i.ns = trunc nuw i8 %i.nr to i1
  br i1 %i.ns, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i8 %i.il, label %bb.bz [
    i8 4, label %.thread105.i.i
    i8 2, label %.thread105.i.i
    i8 1, label %.thread105.i.i
  ]

bb.bz:                                            ; preds = %bb.by
  br label %.thread105.i.i

bb.ca:                                            ; preds = %bb.bx
  switch i8 %i.il, label %bb.cb [
    i8 4, label %bb.cc
    i8 2, label %bb.cc
    i8 1, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.nt = inttoptr i64 %i.nq to ptr
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8
  store ptr %i.nt, ptr %i.nv, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.ca, %bb.ca
  %i.nw = load ptr, ptr %1, align 8               ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 56
  %i.ny = load ptr, ptr %i.nx, align 8
  %.not.i75.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i75.i.i, label %bb.cd, label %bb.ce, !prof !53

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.nz, ptr %i.a, align 8
  %i.oa = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.nw, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ob = load ptr, ptr %1, align 8               ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 728
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.od, ptr %i.oe, align 8
  %i.of = load ptr, ptr %2, align 8               ; 2 uses
  %i.og = icmp eq ptr %i.of, null
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8            ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.og, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ol = load i32, ptr %i.ok, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.oi, ptr noundef nonnull align 8 dereferenceable(16) %i.oj, i32 noundef 0, i32 noundef %i.ol, ptr noundef %i.oa, ptr noundef %i.on) #33
  store ptr %i.oo, ptr %2, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.of, ptr noundef nonnull %i.ob, ptr noundef nonnull align 8 dereferenceable(52) %i.oi, ptr noundef nonnull align 8 dereferenceable(16) %i.oj, ptr noundef %i.oa) #33
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.op = load ptr, ptr %1, align 8
  %i.oq = load ptr, ptr %i.oe, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 728
  store ptr %i.oq, ptr %i.or, align 8
  store ptr null, ptr %i.oe, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ch, %bb.bw, %.loopexit.i.i
  %i.os = load i8, ptr %i.iv, align 8, !range !55, !noundef !56
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.ci, label %.thread105.i.i

bb.ci:                                            ; preds = %.critedge.i.i
  %i.ou = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2)
  %i.ov = icmp eq i64 %i.ou, 1
  br i1 %i.ov, label %.thread105.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  switch i8 %i.il, label %bb.ck [
    i8 4, label %.thread105.i.i
    i8 2, label %.thread105.i.i
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder22VisitStaInArrayLiteralEv:bb.a
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %.critedge90.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fs = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.ft = icmp eq i8 %i.fs, 1
  br i1 %i.ft, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.fu = load ptr, ptr %i.v, align 8
  %i.fv = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.fu) #33
  store ptr %i.fv, ptr %10, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, i8 0, i64 24, i1 false)
  %i.fx = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fy = load ptr, ptr %i.fo, align 8            ; 2 uses
  %.not119.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not119.i, label %.thread111.i, label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.w, %._crit_edge.i
  %.082120.i = phi ptr [ %i.gt, %._crit_edge.i ], [ %i.fx, %bb.w ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.082120.i, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.082120.i, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not85117.i = icmp eq ptr %i.ga, %i.gc
  br i1 %.not85117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph122.i, %bb.aa
  %.083118.i = phi ptr [ %i.gs, %bb.aa ], [ %i.ga, %.lr.ph122.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gd = load i64, ptr %.083118.i, align 8
  store i64 %i.gd, ptr %11, align 8
  %i.ge = call noundef zeroext i8 @_ZNK2v88internal8compiler6MapRef13elements_kindEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #33 ; 3 uses
  %i.gf = trunc i8 %i.ge to i1
  %i.gg = icmp ult i8 %i.ge, 12
  %i.gh = and i1 %i.gg, %i.gf
  %i.gi = icmp eq i8 %i.ge, 13
  %i.gj = or i1 %i.gi, %i.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  br i1 %i.gj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.gk = call i24 @_ZNK2v88internal8compiler21ElementAccessFeedback10keyed_modeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #33
  store i24 %i.gk, ptr %12, align 4
  %i.gl = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode10store_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %12) #33
  %i.gm = icmp eq i8 %i.gl, 1
  br i1 %i.gm, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x, %.lr.ph.i
  %i.gn = load ptr, ptr %i.ab, align 8
  %i.go = call noundef zeroext i1 @_ZN2v88internal8compiler6MapRef43PrototypesElementsDoNotHaveAccessorsOrThrowEPNS1_12JSHeapBrokerEPNS0_10ZoneVectorIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %i.gn, ptr noundef nonnull %10) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br i1 %i.go, label %bb.z, label %bb.ab

.critedge.i:                                      ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i, %bb.y
  %i.gp = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #33
  %i.gq = add i16 %i.gp, -2102
  %i.gr = icmp ult i16 %i.gq, 4
  br i1 %i.gr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.gs = getelementptr inbounds nuw i8, ptr %.083118.i, i64 8 ; 2 uses
  %.not85.i = icmp eq ptr %i.gs, %i.gc
  br i1 %.not85.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.aa, %.lr.ph122.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.082120.i, i64 88 ; 2 uses
  %.not.i = icmp eq ptr %i.gt, %i.fy
  br i1 %.not.i, label %._crit_edge123.i, label %.lr.ph122.i

._crit_edge123.i:                                 ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr %i.fw, align 8          ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre130.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %.not86124.i = icmp eq ptr %.pre.i, %.pre130.i
  br i1 %.not86124.i, label %.thread111.i, label %.lr.ph127.i

.thread111.i:                                     ; preds = %.lr.ph127.i, %._crit_edge123.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.ac

.lr.ph127.i:                                      ; preds = %._crit_edge123.i, %.lr.ph127.i
  %.084125.i = phi ptr [ %i.gx, %.lr.ph127.i ], [ %.pre.i, %._crit_edge123.i ] ; 2 uses
  %.sroa.021.0.copyload.i = load ptr, ptr %.084125.i, align 8
  %i.gu = load ptr, ptr %i.ab, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8544
  %i.gw = load ptr, ptr %i.gv, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.gw, ptr %.sroa.021.0.copyload.i) #33
  %i.gx = getelementptr inbounds nuw i8, ptr %.084125.i, i64 8 ; 2 uses
  %.not86.i = icmp eq ptr %i.gx, %.pre130.i
  br i1 %.not86.i, label %.thread111.i, label %.lr.ph127.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %.critedge90.i

bb.ac:                                            ; preds = %.thread111.i, %bb.v
  %i.gy = load ptr, ptr %i.fo, align 8
  %i.gz = load ptr, ptr %i.fm, align 8            ; 10 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = icmp eq i64 %i.hc, 88
  br i1 %i.hd, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.he = load i8, ptr %i.gz, align 8
  %i.hf = add i8 %i.he, -30
  %i.hg = icmp ult i8 %i.hf, 12
  br i1 %i.hg, label %.critedge90.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = icmp eq ptr %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8            ; 3 uses
  br i1 %i.hm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.011.0.copyload.i = load ptr, ptr %i.ho, align 8
  %i.hp = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o)
  %i.hq = icmp eq i64 %i.hp, 1
  br i1 %i.hq, label %.critedge90.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.o, ptr %i.g, align 8
  %i.hr = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.hs = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %i.hh, ptr %.sroa.011.0.copyload.i)
  %i.ht = and i64 %i.hs, 7
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %.critedge90.i, label %.thread115.i

bb.ah:                                            ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.ho to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 3
  %i.ib = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr %i.ho, i64 %i.ia, ptr undef, i8 0, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.ic = icmp eq i64 %i.ib, 1
  br i1 %i.ic, label %.critedge90.i, label %.thread115.i

.thread115.i:                                     ; preds = %bb.ah, %bb.ag
  %i.id = load i8, ptr %i.gz, align 8
  %i.ie = add i8 %i.id, -18
  %i.if = icmp ult i8 %i.ie, 12
  br i1 %i.if, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread115.i
  %i.ig = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.gz, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %.critedge90.i

bb.aj:                                            ; preds = %.thread115.i
  %i.ih = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.gz, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %.critedge90.i

bb.ak:                                            ; preds = %bb.ac
  %i.ii = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ik = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode9load_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33
  %i.il = trunc i8 %i.ik to i1
  br i1 %i.il, label %.critedge90.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.im = call noundef zeroext i8 @_ZNK2v88internal8compiler15KeyedAccessMode11access_modeEv(ptr noundef nonnull align 1 dereferenceable(3) %5) #33 ; 7 uses
  %i.in = add i8 %i.im, -3
  %or.cond.i.i.i = icmp ult i8 %i.in, -2
  %i.io = icmp ne i8 %i.im, 4
  %spec.select.i.not.i.i = and i1 %i.io, %or.cond.i.i.i
  %i.ip = load ptr, ptr %i.fo, align 8
  %i.iq = load ptr, ptr %i.fm, align 8
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = sdiv exact i64 %i.it, 88                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.iv = zext i1 %spec.select.i.not.i.i to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(953) %0, i32 noundef %i.iv)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 7 uses
  store i8 0, ptr %i.iw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store i8 0, ptr %i.ix, align 8
  %i.iy = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildCheckHeapObjectEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o)
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %.thread105.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = trunc i64 %i.iu to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.o, ptr %i.e, align 8
  %i.jb = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_15LoadTaggedFieldEJRjEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.jc = icmp sgt i32 %i.ja, 0
  br i1 %i.jc, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.je = add nsw i64 %i.iu, 4294967295
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.jq = and i64 %i.je, 4294967295
  %i.jr = and i64 %i.iu, 2147483647
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bv ] ; 5 uses
  %i.js = load ptr, ptr %i.fm, align 8
  %i.jt = getelementptr inbounds nuw [88 x i8], ptr %i.js, i64 %indvars.iv.i.i ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i8 0, ptr %i.jd, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 40 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = icmp eq ptr %i.jw, %i.jy                ; 2 uses
  %i.ka = icmp eq i64 %indvars.iv.i.i, %i.jq      ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.kc = load ptr, ptr %i.kb, align 8            ; 6 uses
  br i1 %i.ka, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.jz, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.kc, align 8
  %i.kd = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildTransitionElementsKindOrCheckMapEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %i.ju, ptr %.sroa.016.0.copyload.i.i)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kc to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 3
  %i.kk = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr %i.kc, i64 %i.kj, ptr %i.jb, i8 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.av

bb.as:                                            ; preds = %bb.ao
  br i1 %i.jz, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.sroa.010.0.copyload.i.i = load ptr, ptr %i.kc, align 8
  %i.kl = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder41BuildTransitionElementsKindAndCompareMapsEPNS1_9ValueNodeES4_RKNS0_10ZoneVectorINS0_8compiler6MapRefEEES7_PNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.jb, ptr noundef nonnull align 8 dereferenceable(32) %i.ju, ptr %.sroa.010.0.copyload.i.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.km = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.kc to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = ashr exact i64 %i.kq, 3
  %i.ks = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.jb, ptr %i.kc, i64 %i.kr, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %.sroa.092.0.i.i = phi i64 [ %i.kk, %bb.ar ], [ %i.kd, %bb.aq ], [ %i.ks, %bb.au ], [ %i.kl, %bb.at ]
  %i.kt = and i64 %.sroa.092.0.i.i, 7
  %i.ku = icmp eq i64 %i.kt, 1
  br i1 %i.ku, label %bb.bv, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kv = load i8, ptr %i.jt, align 8             ; 2 uses
  %i.kw = add i8 %i.kv, -30
  %i.kx = icmp ult i8 %i.kw, 12
  br i1 %i.kx, label %.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ky = add i8 %i.kv, -18
  %i.kz = icmp ult i8 %i.ky, 12
  br i1 %i.kz, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.la = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildElementAccessOnTypedArrayEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.jt, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.lb = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder40TryBuildElementAccessOnJSArrayOrJSObjectEPNS1_9ValueNodeES4_RKNS0_8compiler17ElementAccessInfoERKNS5_15KeyedAccessModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.o, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.jt, ptr noundef nonnull align 1 dereferenceable(3) %5)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.089.0.i.i = phi i64 [ %i.lb, %bb.az ], [ %i.la, %bb.ay ] ; 2 uses
  %i.lc = trunc i64 %.sroa.089.0.i.i to i32
  %i.ld = and i32 %i.lc, 7
  switch i32 %i.ld, label %bb.bq [
    i32 0, label %bb.bb
    i32 2, label %bb.bb
    i32 3, label %.thread.i.i
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.le = load i8, ptr %i.iw, align 8, !range !55, !noundef !56
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lg = sub i64 %i.iu, %indvars.iv.i.i
  store i8 0, ptr %i.iw, align 8
  %i.lh = trunc i64 %i.lg to i32
  %i.li = add i32 %i.lh, 1
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %1, i32 noundef %i.li)
  switch i8 %i.im, label %.lr.ph.i.i.i.i.i.i.i [
    i8 4, label %.thread100.i.i
    i8 2, label %.thread100.i.i
    i8 1, label %.thread100.i.i
  ]

.thread100.i.i:                                   ; preds = %bb.bc, %bb.bc, %bb.bc
  store i8 1, ptr %i.iw, align 8
  br label %bb.bf

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bc
  %i.lj = load ptr, ptr %i.jf, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8            ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = or i64 %i.lm, 2
  store i64 %i.ln, ptr %i.ll, align 8
  store i8 1, ptr %i.iw, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  switch i8 %i.im, label %bb.be [
    i8 4, label %bb.bf
    i8 2, label %bb.bf
    i8 1, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i.i.i.i
  %i.lo = inttoptr i64 %.sroa.089.0.i.i to ptr
  %i.lp = load ptr, ptr %i.jg, align 8
  store ptr %i.lo, ptr %i.lp, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bd, %bb.bd, %.thread100.i.i
  %i.lq = load ptr, ptr %1, align 8               ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 56
  %i.ls = load ptr, ptr %i.lr, align 8
  %.not.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bh, !prof !53

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.jh, ptr %i.c, align 8
  %i.lt = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.lq, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.lu = load ptr, ptr %1, align 8               ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 728
  %i.lw = load ptr, ptr %i.lv, align 8
  store ptr %i.lw, ptr %i.ji, align 8
  %i.lx = load ptr, ptr %2, align 8               ; 2 uses
  %i.ly = icmp eq ptr %i.lx, null
  %i.lz = load ptr, ptr %i.jj, align 8            ; 2 uses
  br i1 %i.ly, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ma = load i32, ptr %i.jk, align 8
  %i.mb = load ptr, ptr %i.jf, align 8
  %i.mc = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.lz, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i32 noundef 0, i32 noundef %i.ma, ptr noundef %i.lt, ptr noundef %i.mb) #33
  store ptr %i.mc, ptr %2, align 8
  br label %.sink.split.i.i

bb.bj:                                            ; preds = %bb.bh
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.lx, ptr noundef nonnull %i.lu, ptr noundef nonnull align 8 dereferenceable(52) %i.lz, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef %i.lt) #33
  br label %.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ba, %bb.aw
  %i.md = load i8, ptr %i.ix, align 8, !range !55, !noundef !56
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.thread.i.i
  %i.mf = sub i64 %i.iu, %indvars.iv.i.i
  store i8 0, ptr %i.ix, align 8
  %i.mg = trunc i64 %i.mf to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %1, i32 noundef %i.mg)
  store i8 1, ptr %i.ix, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread.i.i
  %i.mh = load ptr, ptr %1, align 8               ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8
  %.not.i72.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i72.i.i, label %bb.bm, label %bb.bn, !prof !53

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.jl, ptr %i.b, align 8
  %i.mk = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.mh, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.ml = load ptr, ptr %1, align 8               ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 728
  %i.mn = load ptr, ptr %i.mm, align 8
  store ptr %i.mn, ptr %i.ji, align 8
  %i.mo = load ptr, ptr %3, align 8               ; 2 uses
  %i.mp = icmp eq ptr %i.mo, null
  %i.mq = load ptr, ptr %i.jj, align 8            ; 2 uses
  br i1 %i.mp, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mr = load i32, ptr %i.jm, align 8
  %i.ms = load ptr, ptr %i.jn, align 8
  %i.mt = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i32 noundef 0, i32 noundef %i.mr, ptr noundef %i.mk, ptr noundef %i.ms) #33
  store ptr %i.mt, ptr %3, align 8
  br label %.sink.split.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.mo, ptr noundef nonnull %i.ml, ptr noundef nonnull align 8 dereferenceable(52) %i.mq, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef %i.mk) #33
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bp, %bb.bo, %bb.bj, %bb.bi
  %i.mu = load ptr, ptr %1, align 8
  %i.mv = load ptr, ptr %i.ji, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 728
  store ptr %i.mv, ptr %i.mw, align 8
  store ptr null, ptr %i.ji, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i.i, %bb.ba
  %i.mx = load i8, ptr %i.jd, align 8, !range !55, !noundef !56
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.mz = load ptr, ptr %i.jj, align 8
  %i.na = load ptr, ptr %4, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(52) %i.mz, ptr noundef nonnull align 8 dereferenceable(312) %i.na, i1 noundef zeroext false, ptr noundef null)
  %i.nb = load ptr, ptr %1, align 8               ; 2 uses
  %i.nc = load ptr, ptr %i.ji, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 728
  store ptr %i.nc, ptr %i.nd, align 8
  store ptr null, ptr %i.ji, align 8
  %i.ne = load ptr, ptr %4, align 8               ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i32, ptr %i.nf, align 8
  %i.nh = load i32, ptr %i.jo, align 8            ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, -1
  %i.nj = icmp eq i32 %i.nh, %i.ng
  %i.nk = and i1 %i.ni, %i.nj
  br i1 %i.nk, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, label %bb.bs, !prof !52

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i: ; preds = %bb.br
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.nb, ptr noundef nonnull align 8 dereferenceable(312) %i.ne, ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
  %i.nl = load ptr, ptr %1, align 8
  %i.nm = load ptr, ptr %4, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.nl, ptr noundef null, ptr noundef %i.nm, ptr noundef nonnull align 8 dereferenceable(8) %i.jp)
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  br i1 %i.ka, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.loopexit.i.i

bb.bv:                                            ; preds = %bb.bt, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.jr
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.ao, !llvm.loop !197

.loopexit.i.i:                                    ; preds = %bb.bv, %bb.bu, %bb.an
  %i.nn = load i8, ptr %i.ix, align 8, !range !55, !noundef !56
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.bw, label %.critedge.i.i

bb.bw:                                            ; preds = %.loopexit.i.i
  %i.np = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %3)
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %.critedge.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nr = call fastcc i64 @"_ZZN2v88internal6maglev18MaglevGraphBuilder22VisitStaInArrayLiteralEvENK3$_0clEv"(ptr noundef nonnull readonly align 8 dereferenceable(32) %15) ; 2 uses
  %i.ns = load i8, ptr %i.iw, align 8, !range !55, !noundef !56
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  switch i8 %i.im, label %bb.bz [
    i8 4, label %.thread105.i.i
    i8 2, label %.thread105.i.i
    i8 1, label %.thread105.i.i
  ]

bb.bz:                                            ; preds = %bb.by
  br label %.thread105.i.i

bb.ca:                                            ; preds = %bb.bx
  switch i8 %i.im, label %bb.cb [
    i8 4, label %bb.cc
    i8 2, label %bb.cc
    i8 1, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.nu = inttoptr i64 %i.nr to ptr
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8
  store ptr %i.nu, ptr %i.nw, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.ca, %bb.ca
  %i.nx = load ptr, ptr %1, align 8               ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 56
  %i.nz = load ptr, ptr %i.ny, align 8
  %.not.i75.i.i = icmp eq ptr %i.nz, null
  br i1 %.not.i75.i.i, label %bb.cd, label %bb.ce, !prof !53

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.oa, ptr %i.a, align 8
  %i.ob = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.nx, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.oc = load ptr, ptr %1, align 8               ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 728
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.oe, ptr %i.of, align 8
  %i.og = load ptr, ptr %2, align 8               ; 2 uses
  %i.oh = icmp eq ptr %i.og, null
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8            ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.oh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.om = load i32, ptr %i.ol, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i32 noundef 0, i32 noundef %i.om, ptr noundef %i.ob, ptr noundef %i.oo) #33
  store ptr %i.op, ptr %2, align 8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.og, ptr noundef nonnull %i.oc, ptr noundef nonnull align 8 dereferenceable(52) %i.oj, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, ptr noundef %i.ob) #33
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.oq = load ptr, ptr %1, align 8
  %i.or = load ptr, ptr %i.of, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 728
  store ptr %i.or, ptr %i.os, align 8
  store ptr null, ptr %i.of, align 8
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ch, %bb.bw, %.loopexit.i.i
  %i.ot = load i8, ptr %i.iw, align 8, !range !55, !noundef !56
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ci, label %.thread105.i.i

bb.ci:                                            ; preds = %.critedge.i.i
  %i.ov = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2)
  %i.ow = icmp eq i64 %i.ov, 1
  br i1 %i.ow, label %.thread105.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  switch i8 %i.im, label %bb.ck [
    i8 4, label %.thread105.i.i
    i8 2, label %.thread105.i.i
end_hunk_8
begin_hunk_9_@"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_25TryBuildLoadNamedPropertyEPNS8_9ValueNodeENS4_7NameRefERNS4_14FeedbackSourceEE3$_0EENS8_17MaybeReduceResultESC_SC_RKNS4_19NamedAccessFeedbackERKSE_NS4_10AccessModeEOT_EUlS5_E_EEbRKSP_RKT0_":bb.a

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i": ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.q, label %bb.e, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 32 ; 3 uses
  %i.s = add nsw i64 %.062.i.i.i.i, -1
  %i.t = icmp sgt i64 %.062.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !556

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %i.r to i64
  %.pre71.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i
  %i.u = ashr exact i64 %.pre71.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi72.i.i.i.i = phi i64 [ %i.u, %._crit_edge.loopexit.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 6 uses
  switch i64 %.pre-phi72.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.029.val.i.i.i.i, ptr %2, align 8
  %i.v = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i": ; preds = %bb.f
  %i.w = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.w, label %bb.g, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.1.val.i.i.i.i, ptr %1, align 8
  %i.y = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i": ; preds = %bb.h
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.z, label %bb.i, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %.2.val.i.i.i.i, ptr %0, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i": ; preds = %bb.j
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.ac, label %bb.k, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", %._crit_edge.i.i.i.i
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.i.i.i.i"
  %i.af = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i", %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.i.i.i.i" ], [ %i.p, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit35.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.thread.i.i.i.i" ], [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit37.thread.i.i.i.i" ], [ %i.a, %bb.k ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit36.i.i.i.i" ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit38.i.i.i.i" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.thread.i.i.i.i" ], [ %i.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit33.thread.i.i.i.i" ], [ %i.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit34.thread.i.i.i.i" ], [ %i.af, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit51" ], [ %i.ad, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit" ], [ %i.ae, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_25TryBuildLoadNamedPropertyEPNS6_9ValueNodeENS2_7NameRefERNS2_14FeedbackSourceEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackERKSC_NS2_10AccessModeEOT_EUlS3_E_EbSN_SN_T0_.exit.loopexit.split.loop.exit49" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_25TryBuildLoadNamedPropertyEPNS4_9ValueNodeENS3_8compiler7NameRefERNS9_14FeedbackSourceEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackERKSB_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSO_EEbSM_.exit.i.i.i.i" ]
  %i.ag = icmp eq ptr %i.a, %.028.i.i.i.i
  ret i1 %i.ag
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6maglev17HasOnlyNumberMapsENS_4base6VectorIKNS0_8compiler6MapRefEEE(ptr %0, i64 %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %.idx = shl nuw nsw i64 %1, 3
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not13 = icmp eq i64 %1, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0814 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = load i64, ptr %.0814, align 8
  store i64 %i.b, ptr %2, align 8
  %i.c = call noundef zeroext i16 @_ZNK2v88internal8compiler6MapRef13instance_typeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  %.not11 = icmp eq i16 %i.c, 130                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.d = getelementptr inbounds nuw i8, ptr %.0814, i64 8 ; 2 uses
  %.not = icmp ne ptr %i.d, %i.a
  %or.cond.not = select i1 %.not11, i1 %.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not11, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_"(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 10 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
  %13 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %14 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.5 = alloca [18 x i8], align 4            ; 3 uses
  %15 = alloca %"class.std::optional.888", align 8 ; 10 uses
  %16 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 168                 ; 5 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !55, !noundef !56
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph218, label %._crit_edge219

.lr.ph218:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, <2 x i64> <i64 24, i64 32>
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.not15.i.i = icmp eq ptr %2, null
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  br label %bb.b

._crit_edge219:                                   ; preds = %._crit_edge, %bb.a
  %.0101.lcssa = phi i1 [ false, %bb.a ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 8 uses
  store i8 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  store i8 0, ptr %i.ao, align 8
  %i.ap = icmp sgt i32 %.0.lcssa, -1
  br i1 %i.ap, label %bb.o, label %bb.p

bb.b:                                             ; preds = %.lr.ph218, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0216 = phi i32 [ -1, %.lr.ph218 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0101215 = phi i1 [ false, %.lr.ph218 ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %i.aq = load ptr, ptr %i.l, align 8
  %i.ar = getelementptr inbounds nuw [168 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not114209 = icmp eq ptr %i.at, %i.av
  br i1 %.not114209, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.1102.lcssa = phi i1 [ %.0101215, %bb.b ], [ %spec.select, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0216, %bb.b ], [ %.3, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge219, label %bb.b, !llvm.loop !557

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.1212 = phi i32 [ %.3, %bb.n ], [ %.0216, %.lr.ph.preheader ] ; 3 uses
  %.1102211 = phi i1 [ %spec.select, %bb.n ], [ %.0101215, %.lr.ph.preheader ]
  %.0109210 = phi ptr [ %i.eu, %bb.n ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ax = load i64, ptr %.0109210, align 8
  store i64 %i.ax, ptr %8, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  %spec.select = select i1 %i.ay, i1 true, i1 %.1102211 ; 2 uses
  %i.az = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  br i1 %i.az, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.bb = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 312 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 304 ; 5 uses
  %.not10.i.i.i.i.i144 = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i.i.i144, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %.lr.ph.i.i.i.i.i145

.lr.ph.i.i.i.i.i145:                              ; preds = %bb.c, %.lr.ph.i.i.i.i.i145
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i145 ], [ %i.bd, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i145 ], [ %i.be, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp ult ptr %i.bg, %2                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bh, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i146 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i146, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i145, !llvm.loop !8

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i145
  %i.bi = icmp eq ptr %.19.i.i.i.i.i, %i.be
  br i1 %i.bi, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp ult ptr %2, %i.bk
  br i1 %i.bl, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = icmp ult i64 %i.bs, 96
  br i1 %i.bt, label %bb.d, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, !prof !53

bb.d:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 noundef 96) #33
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.br, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i ] ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 6 uses
  %i.bw = add i64 %i.bu, 96
  store i64 %i.bw, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 262143, ptr %i.by, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  %.02022.i.i = load ptr, ptr %i.bc, align 8      ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ult ptr %2, %i.ca                  ; 2 uses
  %.in.v.i.i = select i1 %i.cb, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i150 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i150, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.cb, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.be, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 320
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp eq ptr %.019.lcssa29.i.i, %i.cd
  br i1 %i.ce, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.cg = phi ptr [ %.pre.i, %bb.e ], [ %i.ca, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.cf, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.ch = icmp ult ptr %i.cg, %2
  br i1 %i.ch, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

select.unfold.i:                                  ; preds = %bb.f, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.ci = icmp eq ptr %.sroa.4.0.i.ph.i, %i.be
  br i1 %i.ci, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp ult ptr %2, %i.ck
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i: ; preds = %bb.g, %select.unfold.i
  %i.cm = phi i1 [ %i.cl, %bb.g ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cm, ptr noundef nonnull %i.bv, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 336 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i
  %.sroa.08.0.i = phi ptr [ %i.bv, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i ], [ %.sroa.05.0.i.i, %bb.f ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 40 ; 4 uses
  %i.cr = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.bb) #33
  %i.cs = load i32, ptr %i.cq, align 8
  %i.ct = and i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.cq, align 8
  %i.cu = load i64, ptr %i.y, align 8
  %i.cv = and i64 %i.cu, 65535
  %.not = icmp eq i64 %i.cv, 99
  br i1 %.not, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit
  %i.cw = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i8, ptr %i.cx, align 4
  %.not20.i = icmp eq i8 %i.cy, 3
  br i1 %.not20.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, !prof !53

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i: ; preds = %bb.i
  store ptr %i.da, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.da, ptr %6, align 8
  %i.db = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #33
  %i.de = xor i1 %i.dd, true
  %.sroa.0.0.copyload.i149 = load ptr, ptr %7, align 8
  %i.df = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i149, ptr noundef %i.bb)
end_hunk_9
begin_hunk_10_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
bb.ab:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit
  %.0110 = phi ptr [ %i.gx, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1 ], [ %.0.i, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 5 uses
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add i64 %i.he, %i.hh
  %i.hj = sub i64 %i.hd, %i.hi
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !noalias !561 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(14) %i.hn, i64 14, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8, !noalias !561 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 4, !noalias !561 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ht = call { i64, i8 } @_ZN2v88internal6maglev18MaglevGraphBuilder42FindContinuationForPolymorphicPropertyLoadEv(ptr noundef nonnull align 8 dereferenceable(953) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.ht, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.ht, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %15, align 8
  store i8 %.fca.1.extract, ptr %i.hs, align 8
  br i1 %i.v, label %.lr.ph226, label %.loopexit

.lr.ph226:                                        ; preds = %bb.ab
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.hv = add nsw i64 %i.q, 4294967295
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 16 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ig = trunc nuw i8 %.fca.1.extract to i1      ; 3 uses
  %i.ih = add nuw i32 %i.r, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.io = and i64 %i.hv, 4294967295
  %i.ip = zext i32 %.0.lcssa to i64
  %i.iq = and i64 %i.q, 2147483647
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph226, %bb.bw
  %indvars.iv229 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next230, %bb.bw ] ; 6 uses
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.gy, i32 noundef %i.hk) #33
  store i32 %i.hm, ptr %i.hl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.hn, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx, i64 14, i1 false)
  store i32 %i.hp, ptr %i.ho, align 8
  store i32 %i.hr, ptr %i.hq, align 4
  %i.iu = load ptr, ptr %i.l, align 8
  %i.iv = getelementptr inbounds nuw [168 x i8], ptr %i.iu, i64 %indvars.iv229 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store i8 0, ptr %i.hu, align 8
  %i.iw = icmp eq i64 %indvars.iv229, %i.io       ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8            ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3                 ; 2 uses
  br i1 %i.iw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, ptr %i.iy, i64 %i.je, ptr undef, i8 0, i1 noundef zeroext %i.u, i1 noundef zeroext %.0101.lcssa)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jg = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, ptr noundef %.0110, ptr %i.iy, i64 %i.je, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %storemerge = phi i64 [ %i.jg, %bb.ae ], [ %i.jf, %bb.ad ]
  %i.jh = icmp eq i64 %storemerge, 1
  br i1 %i.jh, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ig, label %bb.ah, label %bb.bw

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %15)
  br label %bb.bw

bb.ai:                                            ; preds = %bb.af
  %i.ji = icmp eq i64 %indvars.iv229, %i.ip
  br i1 %i.ji, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.jj = load ptr, ptr %11, align 8              ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8
  %.not.i = icmp eq ptr %i.jl, null
  br i1 %.not.i, label %bb.ak, label %bb.al, !prof !53

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.hw, ptr %i.e, align 8
  %i.jm = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.jj, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.jn = load ptr, ptr %11, align 8              ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 728
  %i.jp = load ptr, ptr %i.jo, align 8
  store ptr %i.jp, ptr %i.hx, align 8
  %i.jq = load ptr, ptr %13, align 8              ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  %i.js = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.jr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jt = load i32, ptr %i.ia, align 8
  %i.ju = load ptr, ptr %i.ib, align 8
  %i.jv = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.jt, ptr noundef %i.jm, ptr noundef %i.ju) #33 ; 2 uses
  store ptr %i.jv, ptr %13, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

bb.an:                                            ; preds = %bb.al
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.jq, ptr noundef nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(52) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.jm) #33
  %.pre = load ptr, ptr %13, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit: ; preds = %bb.am, %bb.an
  %i.jw = phi ptr [ %i.jv, %bb.am ], [ %.pre, %bb.an ]
  %i.jx = load ptr, ptr %11, align 8
  %i.jy = load ptr, ptr %i.hx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 728
  store ptr %i.jy, ptr %i.jz, align 8
  store ptr null, ptr %i.hx, align 8
  %i.ka = load ptr, ptr %i.hy, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(52) %i.ka, ptr noundef nonnull align 8 dereferenceable(312) %i.jw, i1 noundef zeroext false, ptr noundef null)
  %i.kb = load ptr, ptr %11, align 8              ; 2 uses
  %i.kc = load ptr, ptr %i.hx, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 728
  store ptr %i.kc, ptr %i.kd, align 8
  store ptr null, ptr %i.hx, align 8
  %i.ke = load ptr, ptr %13, align 8              ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 8
  %i.kh = load i32, ptr %i.ia, align 8            ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, -1
  %i.kj = icmp eq i32 %i.kh, %i.kg
  %i.kk = and i1 %i.ki, %i.kj
  br i1 %i.kk, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, label %bb.ao, !prof !52

bb.ao:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.kb, ptr noundef nonnull align 8 dereferenceable(312) %i.ke, ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  %i.kl = load ptr, ptr %11, align 8
  %i.km = load ptr, ptr %13, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.kl, ptr noundef null, ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, %bb.ai
  %.sroa.0.0.copyload.i123 = load ptr, ptr %i.ic, align 8
  %i.kn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20TryBuildPropertyLoadEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr %.sroa.0.0.copyload.i123, ptr noundef nonnull align 8 dereferenceable(168) %i.iv) ; 2 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.ko, 7
  switch i32 %i.kp, label %bb.bq [
    i32 0, label %bb.aq
    i32 2, label %bb.aq
    i32 1, label %bb.bh
    i32 3, label %bb.bj
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.kq = load i8, ptr %i.am, align 8, !range !55, !noundef !56
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.ar, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq
  %i.ks = trunc nuw nsw i64 %indvars.iv229 to i32
  %i.kt = sub i32 %i.ih, %i.ks
  store i8 0, ptr %i.am, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %11, i32 noundef %i.kt)
  %i.ku = load ptr, ptr %i.ii, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = or i64 %i.kx, 2
  store i64 %i.ky, ptr %i.kw, align 8
  store i8 1, ptr %i.am, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i.i
  %i.kz = inttoptr i64 %i.kn to ptr               ; 2 uses
  br i1 %i.ig, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.la = load ptr, ptr %i.il, align 8
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -64
  store ptr %i.kz, ptr %i.lb, align 8
  %i.lc = load i8, ptr %i.ir, align 8, !range !55, !noundef !56 ; 2 uses
  store i8 1, ptr %i.ir, align 8
  %i.ld = load i32, ptr %15, align 8
  br label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %bb.as
  %i.le = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.lf = load ptr, ptr %i.hb, align 8
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = load i32, ptr %i.hf, align 4
  %i.lj = zext i32 %i.li to i64
  %i.lk = add i64 %i.lh, %i.lj
  %i.ll = sub i64 %i.lg, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = icmp sgt i32 %i.ld, %i.lm
  br i1 %i.ln, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.lo = load i8, ptr %i.le, align 1
  %i.lp = load i8, ptr %i.is, align 8
  %i.lq = lshr i8 %i.lp, 1
  %i.lr = zext nneg i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.lr
  %i.lt = zext i8 %i.lo to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lw ; 4 uses
  store ptr %i.lx, ptr %i.gz, align 8
  %i.ly = load ptr, ptr %i.it, align 8
  %.not.i.i.i = icmp ult ptr %i.lx, %i.ly
  br i1 %.not.i.i.i, label %bb.av, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i

bb.av:                                            ; preds = %bb.au
  %i.lz = load i8, ptr %i.lx, align 1             ; 2 uses
  %switch.selectcmp.i.i.i.i = icmp ult i8 %i.lz, 4
  br i1 %switch.selectcmp.i.i.i.i, label %switch.lookup, label %bb.aw

switch.lookup:                                    ; preds = %bb.av
  %i.ma = shl nuw nsw i8 %i.lz, 3
  %switch.shiftamt = zext nneg i8 %i.ma to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.is, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  store ptr %i.mb, ptr %i.gz, align 8
  br label %.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.is, align 8
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aw, %switch.lookup
  %.sink.i.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.aw ]
  store i32 %.sink.i.i.i, ptr %i.hf, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i: ; preds = %.sink.split.i.i.i, %bb.au
  %i.mc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(953) %0), !inline_history !78
  %i.md = and i64 %i.mc, 7
  %i.me = icmp eq i64 %i.md, 1
  br i1 %i.me, label %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread, label %bb.at, !llvm.loop !20

_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull readonly align 4 dereferenceable(8) %15), !inline_history !78
  store i8 %i.lc, ptr %i.ir, align 8
  br label %bb.br

bb.ax:                                            ; preds = %bb.at
  store i8 %i.lc, ptr %i.ir, align 8
  %i.mf = load ptr, ptr %i.il, align 8
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -64
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = load ptr, ptr %i.hz, align 8
  store ptr %i.mh, ptr %i.mi, align 8
  %i.mj = load ptr, ptr %11, align 8              ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8
  %.not.i127 = icmp eq ptr %i.ml, null
  br i1 %.not.i127, label %bb.ay, label %bb.az, !prof !53

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ij, ptr %i.d, align 8
  %i.mm = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.mj, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.mn = load ptr, ptr %11, align 8              ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 728
  %i.mp = load ptr, ptr %i.mo, align 8
  store ptr %i.mp, ptr %i.hx, align 8
  %i.mq = load ptr, ptr %12, align 8              ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  %i.ms = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.mr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mt = load i32, ptr %i.ik, align 8
  %i.mu = load ptr, ptr %i.ii, align 8
  %i.mv = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.mt, ptr noundef %i.mm, ptr noundef %i.mu) #33
  store ptr %i.mv, ptr %12, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128

bb.bb:                                            ; preds = %bb.az
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.mq, ptr noundef nonnull %i.mn, ptr noundef nonnull align 8 dereferenceable(52) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.mm) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128: ; preds = %bb.ba, %bb.bb
  %i.mw = load ptr, ptr %11, align 8
  %i.mx = load ptr, ptr %i.hx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 728
  store ptr %i.mx, ptr %i.my, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bc:                                            ; preds = %bb.ar
  %i.mz = load ptr, ptr %i.hz, align 8
  store ptr %i.kz, ptr %i.mz, align 8
  %i.na = load ptr, ptr %11, align 8              ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  %i.nc = load ptr, ptr %i.nb, align 8
  %.not.i130 = icmp eq ptr %i.nc, null
  br i1 %.not.i130, label %bb.bd, label %bb.be, !prof !53

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.ij, ptr %i.c, align 8
  %i.nd = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.na, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.ne = load ptr, ptr %11, align 8              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 728
  %i.ng = load ptr, ptr %i.nf, align 8
  store ptr %i.ng, ptr %i.hx, align 8
  %i.nh = load ptr, ptr %12, align 8              ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  %i.nj = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.ni, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.nk = load i32, ptr %i.ik, align 8
  %i.nl = load ptr, ptr %i.ii, align 8
  %i.nm = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.nk, ptr noundef %i.nd, ptr noundef %i.nl) #33
  store ptr %i.nm, ptr %12, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131

bb.bg:                                            ; preds = %bb.be
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.nh, ptr noundef nonnull %i.ne, ptr noundef nonnull align 8 dereferenceable(52) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.nd) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131: ; preds = %bb.bf, %bb.bg
  %i.nn = load ptr, ptr %11, align 8
  %i.no = load ptr, ptr %i.hx, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 728
  store ptr %i.no, ptr %i.np, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bh:                                            ; preds = %bb.ap
  br i1 %i.ig, label %bb.bi, label %bb.br

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %15)
  br label %bb.br

bb.bj:                                            ; preds = %bb.ap
  %i.nq = load i8, ptr %i.ao, align 8, !range !55, !noundef !56
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ns = sub i64 %i.q, %indvars.iv229
  store i8 0, ptr %i.ao, align 8
  %i.nt = trunc i64 %i.ns to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %11, i32 noundef %i.nt)
  store i8 1, ptr %i.ao, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.nu = load ptr, ptr %11, align 8              ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8
  %.not.i132 = icmp eq ptr %i.nw, null
  br i1 %.not.i132, label %bb.bm, label %bb.bn, !prof !53

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.id, ptr %i.b, align 8
  %i.nx = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.nu, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.ny = load ptr, ptr %11, align 8              ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 728
  %i.oa = load ptr, ptr %i.nz, align 8
  store ptr %i.oa, ptr %i.hx, align 8
  %i.ob = load ptr, ptr %14, align 8              ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  %i.od = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.oc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.oe = load i32, ptr %i.ie, align 8
  %i.of = load ptr, ptr %i.if, align 8
  %i.og = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.oe, ptr noundef %i.nx, ptr noundef %i.of) #33
  store ptr %i.og, ptr %14, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133

bb.bp:                                            ; preds = %bb.bn
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.ob, ptr noundef nonnull %i.ny, ptr noundef nonnull align 8 dereferenceable(52) %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.nx) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133: ; preds = %bb.bo, %bb.bp
  %i.oh = load ptr, ptr %11, align 8
  %i.oi = load ptr, ptr %i.hx, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 728
  store ptr %i.oi, ptr %i.oj, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

bb.br:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread, %bb.bh, %bb.bi, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133
  %i.ok = load i8, ptr %i.hu, align 8, !range !55, !noundef !56
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.om = load ptr, ptr %i.hy, align 8
  %i.on = load ptr, ptr %16, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(52) %i.om, ptr noundef nonnull align 8 dereferenceable(312) %i.on, i1 noundef zeroext false, ptr noundef null)
  %i.oo = load ptr, ptr %11, align 8              ; 2 uses
  %i.op = load ptr, ptr %i.hx, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 728
  store ptr %i.op, ptr %i.oq, align 8
  store ptr null, ptr %i.hx, align 8
  %i.or = load ptr, ptr %16, align 8              ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load i32, ptr %i.os, align 8
  %i.ou = load i32, ptr %i.im, align 8            ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, -1
  %i.ow = icmp eq i32 %i.ou, %i.ot
  %i.ox = and i1 %i.ov, %i.ow
  br i1 %i.ox, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134, label %bb.bt, !prof !52

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134: ; preds = %bb.bs
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.oo, ptr noundef nonnull align 8 dereferenceable(312) %i.or, ptr noundef nonnull align 8 dereferenceable(8) %i.in)
  %i.oy = load ptr, ptr %11, align 8
  %i.oz = load ptr, ptr %16, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.oy, ptr noundef null, ptr noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(8) %i.in)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.br
  br i1 %i.iw, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %.loopexit

bb.bw:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134, %bb.bu, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next230, %i.iq
  br i1 %exitcond233.not, label %.loopexit, label %bb.ac, !llvm.loop !560

.loopexit:                                        ; preds = %bb.bw, %bb.ab, %bb.bv
  %i.pa = load i8, ptr %i.ao, align 8, !range !55, !noundef !56
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %.loopexit
  %i.pc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %14)
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %.critedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pe = load ptr, ptr %5, align 8               ; 5 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 720
  %i.pg = load ptr, ptr %i.pf, align 8
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -48
  %i.pi = load ptr, ptr %i.ph, align 8            ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !nonnull !56, !align !64
  %i.pl = load ptr, ptr %i.pk, align 8            ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !nonnull !56, !align !64
  %i.po = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.pp = load ptr, ptr %i.po, align 8, !nonnull !56, !align !64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8            ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  %i.pt = load i64, ptr %i.ps, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 16 ; 3 uses
  %i.pv = load i64, ptr %i.pu, align 8            ; 2 uses
  %i.pw = sub i64 %i.pt, %i.pv
  %i.px = icmp ult i64 %i.pw, 152
  br i1 %i.px, label %bb.bz, label %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i, !prof !53

bb.bz:                                            ; preds = %bb.by
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.pr, i64 noundef 152) #33
  %.pre.i.i.i.i.i138 = load i64, ptr %i.pu, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i: ; preds = %bb.bz, %bb.by
  %i.py = phi i64 [ %.pre.i.i.i.i.i138, %bb.bz ], [ %i.pv, %bb.by ] ; 2 uses
  %i.pz = add i64 %i.py, 152
  store i64 %i.pz, ptr %i.pu, align 8
  %i.qa = add i64 %i.py, 104
  %i.qb = inttoptr i64 %i.qa to ptr               ; 8 uses
  %.sroa.0.0.copyload.i.i.i.i135 = load ptr, ptr %i.pn, align 8
  store ptr null, ptr %i.qb, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store i64 536871043203, ptr %i.qc, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store i32 0, ptr %i.qd, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  store ptr %.sroa.0.0.copyload.i.i.i.i135, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i64 16, i1 false)
  %i.qg = getelementptr inbounds i8, ptr %i.qb, i64 -8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = and i64 %i.qi, 7696581394432
  %i.qk = icmp eq i64 %i.qj, 0
  br i1 %i.qk, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136, label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i
  %i.ql = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %i.pe, ptr noundef nonnull %i.pi, i32 noundef 0), !inline_history !60
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136: ; preds = %bb.ca, %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i
  %.0.i.i.i137 = phi ptr [ %i.pi, %_ZN2v88internal6maglev8NodeBase3NewINS1_16LoadNamedGenericEJRNS0_8compiler7NameRefERNS5_14FeedbackSourceEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i ], [ %i.ql, %bb.ca ] ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i.i.i137, i64 16 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 8
  %i.qo = add nsw i32 %i.qn, 1
  store i32 %i.qo, ptr %i.qm, align 8
  store ptr %.0.i.i.i137, ptr %i.qg, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.qq = load i64, ptr %i.qp, align 8
  %i.qr = and i64 %i.qq, 7696581394432
  %i.qs = icmp eq i64 %i.qr, 0
  br i1 %i.qs, label %"_ZZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS5_14FeedbackSourceEENK3$_0clEv.exit", label %bb.cb

bb.cb:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136
  %i.qt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(953) %i.pe, ptr noundef nonnull %i.pl, i32 noundef 0), !inline_history !60
  br label %"_ZZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS5_14FeedbackSourceEENK3$_0clEv.exit"

"_ZZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS5_14FeedbackSourceEENK3$_0clEv.exit": ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136, %bb.cb
  %.0.i.i.1.i = phi ptr [ %i.pl, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i136 ], [ %i.qt, %bb.cb ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i.i.1.i, i64 16 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 8
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.qu, align 8
  %i.qx = getelementptr inbounds i8, ptr %i.qb, i64 -16
  store ptr %.0.i.i.1.i, ptr %i.qx, align 8
  %i.qy = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE28AttachExtraInfoAndAddToGraphINS1_16LoadNamedGenericEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(953) %i.pe, ptr noundef nonnull %i.qb) ; 3 uses
  %i.qz = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.qz, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %"_ZZN2v88internal6maglev18MaglevGraphBuilder25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS5_14FeedbackSourceEENK3$_0clEv.exit"
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds i8, ptr %i.rb, i64 -64
  store ptr %i.qy, ptr %i.rc, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
end_hunk_10
begin_hunk_11_@"_ZN2v84base6all_ofINS0_6VectorIKNS_8internal8compiler6MapRefEEEZNS3_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS9_21BuildGetKeyedPropertyEPNS8_9ValueNodeERKNS4_14FeedbackSourceERKNS4_17ProcessedFeedbackEE3$_0EENS8_17MaybeReduceResultESC_SC_RKNS4_19NamedAccessFeedbackESF_NS4_10AccessModeEOT_EUlS5_E_EEbRKSQ_RKT0_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.val30.i.i.i.i, ptr %4, align 8
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.k, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i": ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i": ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %i.m, label %bb.d, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i"
  %i.n = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %.val.i.i.i.i, ptr %3, align 8
  %i.o = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i": ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i": ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.q, label %bb.e, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i"
  %i.r = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 32 ; 3 uses
  %i.s = add nsw i64 %.062.i.i.i.i, -1
  %i.t = icmp sgt i64 %.062.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !570

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %.pre.i.i.i.i = ptrtoint ptr %i.r to i64
  %.pre71.i.i.i.i = sub i64 %i.b, %.pre.i.i.i.i
  %i.u = ashr exact i64 %.pre71.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi72.i.i.i.i = phi i64 [ %i.u, %._crit_edge.loopexit.i.i.i.i ], [ %.8.val, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.r, %._crit_edge.loopexit.i.i.i.i ], [ %.0.val, %bb.a ] ; 6 uses
  switch i64 %.pre-phi72.i.i.i.i, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.029.val.i.i.i.i, ptr %2, align 8
  %i.v = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i": ; preds = %bb.f
  %i.w = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.w, label %bb.g, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i = load ptr, ptr %.1.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %.1.val.i.i.i.i, ptr %1, align 8
  %i.y = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  br i1 %i.y, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i": ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i": ; preds = %bb.h
  %i.z = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %i.z, label %bb.i, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i = load ptr, ptr %.2.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr %.2.val.i.i.i.i, ptr %0, align 8
  %i.ab = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef14IsSeqStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i": ; preds = %bb.j
  %i.ac = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef18IsOneByteStringMapEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  br i1 %i.ac, label %bb.k, label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", %._crit_edge.i.i.i.i
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.i.i.i.i"
  %i.ad = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 8
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 16
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.i.i.i.i"
  %i.af = getelementptr inbounds nuw i8, ptr %.02961.i.i.i.i, i64 24
  br label %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit"

"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49", %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i", %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.i.i.i.i" ], [ %i.p, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit35.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.thread.i.i.i.i" ], [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit37.thread.i.i.i.i" ], [ %i.a, %bb.k ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.thread.i.i.i.i" ], [ %.029.lcssa.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit36.i.i.i.i" ], [ %.2.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit38.i.i.i.i" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.thread.i.i.i.i" ], [ %i.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit33.thread.i.i.i.i" ], [ %i.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit34.thread.i.i.i.i" ], [ %i.af, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit51" ], [ %i.ad, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit" ], [ %i.ae, %"_ZSt6all_ofIPKN2v88internal8compiler6MapRefEZNS1_6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS7_21BuildGetKeyedPropertyEPNS6_9ValueNodeERKNS2_14FeedbackSourceERKNS2_17ProcessedFeedbackEE3$_0EENS6_17MaybeReduceResultESA_SA_RKNS2_19NamedAccessFeedbackESD_NS2_10AccessModeEOT_EUlS3_E_EbSO_SO_T0_.exit.loopexit.split.loop.exit49" ], [ %.02961.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN2v88internal6maglev18MaglevGraphBuilder19TryBuildNamedAccessIRZNS5_21BuildGetKeyedPropertyEPNS4_9ValueNodeERKNS3_8compiler14FeedbackSourceERKNS9_17ProcessedFeedbackEE3$_0EENS4_17MaybeReduceResultES8_S8_RKNS9_19NamedAccessFeedbackESC_NS9_10AccessModeEOT_EUlNS9_6MapRefEE_EclIPKSP_EEbSN_.exit.i.i.i.i" ]
  %i.ag = icmp eq ptr %i.a, %.028.i.i.i.i
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_"(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 10 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
  %13 = alloca %"class.std::optional.636", align 8 ; 13 uses
  %14 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %.sroa.5 = alloca [18 x i8], align 4            ; 3 uses
  %15 = alloca %"class.std::optional.888", align 8 ; 10 uses
  %16 = alloca %"class.std::optional.636", align 8 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 168                 ; 5 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load i8, ptr %i.s, align 8, !range !55, !noundef !56
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp sgt i32 %i.r, 0                     ; 2 uses
  br i1 %i.v, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, <2 x i64> <i64 24, i64 32>
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 44
  %.not15.i.i = icmp eq ptr %2, null
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge, %bb.a
  %.0101.lcssa = phi i1 [ false, %bb.a ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %.0.lcssa = phi i32 [ -1, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilderC2EPS2_i(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 8 uses
  store i8 0, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i8 0, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  store i8 0, ptr %i.ao, align 8
  %i.ap = icmp sgt i32 %.0.lcssa, -1
  br i1 %i.ap, label %bb.o, label %bb.p

bb.b:                                             ; preds = %.lr.ph214, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.0212 = phi i32 [ -1, %.lr.ph214 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.0101211 = phi i1 [ false, %.lr.ph214 ], [ %.1102.lcssa, %._crit_edge ] ; 2 uses
  %i.aq = load ptr, ptr %i.l, align 8
  %i.ar = getelementptr inbounds nuw [168 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not114205 = icmp eq ptr %i.at, %i.av
  br i1 %.not114205, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.1102.lcssa = phi i1 [ %.0101211, %bb.b ], [ %spec.select, %bb.n ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0212, %bb.b ], [ %.3, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge215, label %bb.b, !llvm.loop !571

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.1208 = phi i32 [ %.3, %bb.n ], [ %.0212, %.lr.ph.preheader ] ; 3 uses
  %.1102207 = phi i1 [ %spec.select, %bb.n ], [ %.0101211, %.lr.ph.preheader ]
  %.0109206 = phi ptr [ %i.eu, %bb.n ], [ %i.at, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ax = load i64, ptr %.0109206, align 8
  store i64 %i.ax, ptr %8, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef19is_migration_targetEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  %spec.select = select i1 %i.ay, i1 true, i1 %.1102207 ; 2 uses
  %i.az = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef15IsHeapNumberMapEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  br i1 %i.az, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.bb = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 312 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 304 ; 5 uses
  %.not10.i.i.i.i.i140 = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i.i.i140, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %.lr.ph.i.i.i.i.i141

.lr.ph.i.i.i.i.i141:                              ; preds = %bb.c, %.lr.ph.i.i.i.i.i141
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i141 ], [ %i.bd, %bb.c ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i141 ], [ %i.be, %bb.c ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = icmp ult ptr %i.bg, %2                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.bh, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i142 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i142, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i141, !llvm.loop !8

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i141
  %i.bi = icmp eq ptr %.19.i.i.i.i.i, %i.be
  br i1 %i.bi, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp ult ptr %2, %i.bk
  br i1 %i.bl, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bn = load ptr, ptr %i.bm, align 8            ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = sub i64 %i.bp, %i.br
  %i.bt = icmp ult i64 %i.bs, 96
  br i1 %i.bt, label %bb.d, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, !prof !53

bb.d:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 noundef 96) #33
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i: ; preds = %bb.d, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i
  %i.bu = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.br, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.thread.i ] ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr               ; 6 uses
  %i.bw = add i64 %i.bu, 96
  store i64 %i.bw, ptr %i.bq, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store ptr %2, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 262143, ptr %i.by, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, i8 0, i64 40, i1 false)
  %.02022.i.i = load ptr, ptr %i.bc, align 8      ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = icmp ult ptr %2, %i.ca                  ; 2 uses
  %.in.v.i.i = select i1 %i.cb, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8     ; 2 uses
  %.not.i.i146 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i146, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.cb, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.be, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_nodeC2IJRS4_S7_EEERSF_DpOT_.exit.i ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 320
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp eq ptr %.019.lcssa29.i.i, %i.cd
  br i1 %i.ce, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.cf = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.cg = phi ptr [ %.pre.i, %bb.e ], [ %i.ca, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.cf, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.ch = icmp ult ptr %i.cg, %2
  br i1 %i.ch, label %select.unfold.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

select.unfold.i:                                  ; preds = %bb.f, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.ci = icmp eq ptr %.sroa.4.0.i.ph.i, %i.be
  br i1 %i.ci, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = icmp ult ptr %2, %i.ck
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i: ; preds = %bb.g, %select.unfold.i
  %i.cm = phi i1 [ %i.cl, %bb.g ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cm, ptr noundef nonnull %i.bv, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 336 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.cn, align 8
  br label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit: ; preds = %bb.f, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i
  %.sroa.08.0.i = phi ptr [ %i.bv, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE10_Auto_node9_M_insertES5_IPSt18_Rb_tree_node_baseSI_E.exit.i ], [ %.sroa.05.0.i.i, %bb.f ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 40 ; 4 uses
  %i.cr = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef %i.bb) #33
  %i.cs = load i32, ptr %i.cq, align 8
  %i.ct = and i32 %i.cs, %i.cr
  store i32 %i.ct, ptr %i.cq, align 8
  %i.cu = load i64, ptr %i.y, align 8
  %i.cv = and i64 %i.cu, 65535
  %.not = icmp eq i64 %i.cv, 99
  br i1 %.not, label %bb.h, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit
  %i.cw = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i8, ptr %i.cx, align 4
  %.not20.i = icmp eq i8 %i.cy, 3
  br i1 %.not20.i, label %_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, !prof !53

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i: ; preds = %bb.i
  store ptr %i.da, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.da, ptr %6, align 8
  %i.db = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #33
  %i.de = xor i1 %i.dd, true
  %.sroa.0.0.copyload.i145 = load ptr, ptr %7, align 8
  %i.df = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.0.0.copyload.i145, ptr noundef %i.bb)
end_hunk_11
begin_hunk_12_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
bb.ab:                                            ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit
  %.0110 = phi ptr [ %i.gx, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit.i.i.1 ], [ %.0.i, %_ZN2v88internal6maglev18MaglevGraphBuilder12BuildLoadMapEPNS1_9ValueNodeE.exit ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 5 uses
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add i64 %i.he, %i.hh
  %i.hj = sub i64 %i.hd, %i.hi
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 8, !noalias !575 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(14) %i.hn, i64 14, i1 false)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8, !noalias !575 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 436 ; 3 uses
  %i.hr = load i32, ptr %i.hq, align 4, !noalias !575 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ht = call { i64, i8 } @_ZN2v88internal6maglev18MaglevGraphBuilder42FindContinuationForPolymorphicPropertyLoadEv(ptr noundef nonnull align 8 dereferenceable(953) %0) ; 2 uses
  %.fca.0.extract = extractvalue { i64, i8 } %i.ht, 0
  %.fca.1.extract = extractvalue { i64, i8 } %i.ht, 1 ; 3 uses
  store i64 %.fca.0.extract, ptr %15, align 8
  store i8 %.fca.1.extract, ptr %i.hs, align 8
  br i1 %i.v, label %.lr.ph222, label %.loopexit

.lr.ph222:                                        ; preds = %bb.ab
  %i.hu = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.hv = add nsw i64 %i.q, 4294967295
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 16 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ig = trunc nuw i8 %.fca.1.extract to i1      ; 3 uses
  %i.ih = add nuw i32 %i.r, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.io = and i64 %i.hv, 4294967295
  %i.ip = zext i32 %.0.lcssa to i64
  %i.iq = and i64 %i.q, 2147483647
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph222, %bb.bw
  %indvars.iv225 = phi i64 [ 0, %.lr.ph222 ], [ %indvars.iv.next226, %bb.bw ] ; 6 uses
  call void @_ZN2v88internal11interpreter21BytecodeArrayIterator9SetOffsetEi(ptr noundef nonnull align 8 dereferenceable(48) %i.gy, i32 noundef %i.hk) #33
  store i32 %i.hm, ptr %i.hl, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.hn, ptr noundef nonnull align 4 dereferenceable(14) %.sroa.5.8..sroa_idx, i64 14, i1 false)
  store i32 %i.hp, ptr %i.ho, align 8
  store i32 %i.hr, ptr %i.hq, align 4
  %i.iu = load ptr, ptr %i.l, align 8
  %i.iv = getelementptr inbounds nuw [168 x i8], ptr %i.iu, i64 %indvars.iv225 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store i8 0, ptr %i.hu, align 8
  %i.iw = icmp eq i64 %indvars.iv225, %i.io       ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8            ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3                 ; 2 uses
  br i1 %i.iw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jf = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder14BuildCheckMapsEPNS1_9ValueNodeENS_4base6VectorIKNS0_8compiler6MapRefEEESt8optionalIS4_Ebb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, ptr %i.iy, i64 %i.je, ptr undef, i8 0, i1 noundef zeroext %i.u, i1 noundef zeroext %.0101.lcssa)
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.jg = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCompareMapsEPNS1_9ValueNodeES4_NS_4base6VectorIKNS0_8compiler6MapRefEEEPNS2_21MaglevSubGraphBuilderERSt8optionalINSB_5LabelEE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %2, ptr noundef %.0110, ptr %i.iy, i64 %i.je, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %storemerge = phi i64 [ %i.jg, %bb.ae ], [ %i.jf, %bb.ad ]
  %i.jh = icmp eq i64 %storemerge, 1
  br i1 %i.jh, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  br i1 %i.ig, label %bb.ah, label %bb.bw

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %15)
  br label %bb.bw

bb.ai:                                            ; preds = %bb.af
  %i.ji = icmp eq i64 %indvars.iv225, %i.ip
  br i1 %i.ji, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.jj = load ptr, ptr %11, align 8              ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 56
  %i.jl = load ptr, ptr %i.jk, align 8
  %.not.i = icmp eq ptr %i.jl, null
  br i1 %.not.i, label %bb.ak, label %bb.al, !prof !53

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.hw, ptr %i.e, align 8
  %i.jm = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.jj, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  %i.jn = load ptr, ptr %11, align 8              ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 728
  %i.jp = load ptr, ptr %i.jo, align 8
  store ptr %i.jp, ptr %i.hx, align 8
  %i.jq = load ptr, ptr %13, align 8              ; 2 uses
  %i.jr = icmp eq ptr %i.jq, null
  %i.js = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.jr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jt = load i32, ptr %i.ia, align 8
  %i.ju = load ptr, ptr %i.ib, align 8
  %i.jv = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.jt, ptr noundef %i.jm, ptr noundef %i.ju) #33 ; 2 uses
  store ptr %i.jv, ptr %13, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

bb.an:                                            ; preds = %bb.al
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.jq, ptr noundef nonnull %i.jn, ptr noundef nonnull align 8 dereferenceable(52) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.jm) #33
  %.pre = load ptr, ptr %13, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit: ; preds = %bb.am, %bb.an
  %i.jw = phi ptr [ %i.jv, %bb.am ], [ %.pre, %bb.an ]
  %i.jx = load ptr, ptr %11, align 8
  %i.jy = load ptr, ptr %i.hx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 728
  store ptr %i.jy, ptr %i.jz, align 8
  store ptr null, ptr %i.hx, align 8
  %i.ka = load ptr, ptr %i.hy, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(52) %i.ka, ptr noundef nonnull align 8 dereferenceable(312) %i.jw, i1 noundef zeroext false, ptr noundef null)
  %i.kb = load ptr, ptr %11, align 8              ; 2 uses
  %i.kc = load ptr, ptr %i.hx, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 728
  store ptr %i.kc, ptr %i.kd, align 8
  store ptr null, ptr %i.hx, align 8
  %i.ke = load ptr, ptr %13, align 8              ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load i32, ptr %i.kf, align 8
  %i.kh = load i32, ptr %i.ia, align 8            ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, -1
  %i.kj = icmp eq i32 %i.kh, %i.kg
  %i.kk = and i1 %i.ki, %i.kj
  br i1 %i.kk, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, label %bb.ao, !prof !52

bb.ao:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit: ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.kb, ptr noundef nonnull align 8 dereferenceable(312) %i.ke, ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  %i.kl = load ptr, ptr %11, align 8
  %i.km = load ptr, ptr %13, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.kl, ptr noundef null, ptr noundef %i.km, ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit, %bb.ai
  %.sroa.0.0.copyload.i123 = load ptr, ptr %i.ic, align 8
  %i.kn = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder20TryBuildPropertyLoadEPNS1_9ValueNodeES4_NS0_8compiler7NameRefERKNS5_18PropertyAccessInfoE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, ptr %.sroa.0.0.copyload.i123, ptr noundef nonnull align 8 dereferenceable(168) %i.iv) ; 2 uses
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.ko, 7
  switch i32 %i.kp, label %bb.bq [
    i32 0, label %bb.aq
    i32 2, label %bb.aq
    i32 1, label %bb.bh
    i32 3, label %bb.bj
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.kq = load i8, ptr %i.am, align 8, !range !55, !noundef !56
  %i.kr = trunc nuw i8 %i.kq to i1
  br i1 %i.kr, label %bb.ar, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq
  %i.ks = trunc nuw nsw i64 %indvars.iv225 to i32
  %i.kt = sub i32 %i.ih, %i.ks
  store i8 0, ptr %i.am, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %11, i32 noundef %i.kt)
  %i.ku = load ptr, ptr %i.ii, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8            ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = or i64 %i.kx, 2
  store i64 %i.ky, ptr %i.kw, align 8
  store i8 1, ptr %i.am, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i.i
  %i.kz = inttoptr i64 %i.kn to ptr               ; 2 uses
  br i1 %i.ig, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.la = load ptr, ptr %i.il, align 8
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -64
  store ptr %i.kz, ptr %i.lb, align 8
  %i.lc = load i8, ptr %i.ir, align 8, !range !55, !noundef !56 ; 2 uses
  store i8 1, ptr %i.ir, align 8
  %i.ld = load i32, ptr %15, align 8
  br label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i, %bb.as
  %i.le = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.lf = load ptr, ptr %i.hb, align 8
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = load i32, ptr %i.hf, align 4
  %i.lj = zext i32 %i.li to i64
  %i.lk = add i64 %i.lh, %i.lj
  %i.ll = sub i64 %i.lg, %i.lk
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = icmp sgt i32 %i.ld, %i.lm
  br i1 %i.ln, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.lo = load i8, ptr %i.le, align 1
  %i.lp = load i8, ptr %i.is, align 8
  %i.lq = lshr i8 %i.lp, 1
  %i.lr = zext nneg i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.lr
  %i.lt = zext i8 %i.lo to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lw ; 4 uses
  store ptr %i.lx, ptr %i.gz, align 8
  %i.ly = load ptr, ptr %i.it, align 8
  %.not.i.i.i = icmp ult ptr %i.lx, %i.ly
  br i1 %.not.i.i.i, label %bb.av, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i

bb.av:                                            ; preds = %bb.au
  %i.lz = load i8, ptr %i.lx, align 1             ; 2 uses
  %switch.selectcmp.i.i.i.i = icmp ult i8 %i.lz, 4
  br i1 %switch.selectcmp.i.i.i.i, label %switch.lookup, label %bb.aw

switch.lookup:                                    ; preds = %bb.av
  %i.ma = shl nuw nsw i8 %i.lz, 3
  %switch.shiftamt = zext nneg i8 %i.ma to i32
  %switch.downshift = lshr i32 67240962, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.is, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  store ptr %i.mb, ptr %i.gz, align 8
  br label %.sink.split.i.i.i

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.is, align 8
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aw, %switch.lookup
  %.sink.i.i.i = phi i32 [ 1, %switch.lookup ], [ 0, %bb.aw ]
  store i32 %.sink.i.i.i, ptr %i.hf, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i: ; preds = %.sink.split.i.i.i, %bb.au
  %i.mc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(953) %0), !inline_history !78
  %i.md = and i64 %i.mc, 7
  %i.me = icmp eq i64 %i.md, 1
  br i1 %i.me, label %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread, label %bb.at, !llvm.loop !20

_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull readonly align 4 dereferenceable(8) %15), !inline_history !78
  store i8 %i.lc, ptr %i.ir, align 8
  br label %bb.br

bb.ax:                                            ; preds = %bb.at
  store i8 %i.lc, ptr %i.ir, align 8
  %i.mf = load ptr, ptr %i.il, align 8
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -64
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = load ptr, ptr %i.hz, align 8
  store ptr %i.mh, ptr %i.mi, align 8
  %i.mj = load ptr, ptr %11, align 8              ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8
  %.not.i127 = icmp eq ptr %i.ml, null
  br i1 %.not.i127, label %bb.ay, label %bb.az, !prof !53

bb.ay:                                            ; preds = %bb.ax
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.ij, ptr %i.d, align 8
  %i.mm = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.mj, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.mn = load ptr, ptr %11, align 8              ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 728
  %i.mp = load ptr, ptr %i.mo, align 8
  store ptr %i.mp, ptr %i.hx, align 8
  %i.mq = load ptr, ptr %12, align 8              ; 2 uses
  %i.mr = icmp eq ptr %i.mq, null
  %i.ms = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.mr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mt = load i32, ptr %i.ik, align 8
  %i.mu = load ptr, ptr %i.ii, align 8
  %i.mv = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.mt, ptr noundef %i.mm, ptr noundef %i.mu) #33
  store ptr %i.mv, ptr %12, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128

bb.bb:                                            ; preds = %bb.az
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.mq, ptr noundef nonnull %i.mn, ptr noundef nonnull align 8 dereferenceable(52) %i.ms, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.mm) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128: ; preds = %bb.ba, %bb.bb
  %i.mw = load ptr, ptr %11, align 8
  %i.mx = load ptr, ptr %i.hx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 728
  store ptr %i.mx, ptr %i.my, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bc:                                            ; preds = %bb.ar
  %i.mz = load ptr, ptr %i.hz, align 8
  store ptr %i.kz, ptr %i.mz, align 8
  %i.na = load ptr, ptr %11, align 8              ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  %i.nc = load ptr, ptr %i.nb, align 8
  %.not.i130 = icmp eq ptr %i.nc, null
  br i1 %.not.i130, label %bb.bd, label %bb.be, !prof !53

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %i.ij, ptr %i.c, align 8
  %i.nd = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.na, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %i.ne = load ptr, ptr %11, align 8              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 728
  %i.ng = load ptr, ptr %i.nf, align 8
  store ptr %i.ng, ptr %i.hx, align 8
  %i.nh = load ptr, ptr %12, align 8              ; 2 uses
  %i.ni = icmp eq ptr %i.nh, null
  %i.nj = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.ni, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.nk = load i32, ptr %i.ik, align 8
  %i.nl = load ptr, ptr %i.ii, align 8
  %i.nm = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.nk, ptr noundef %i.nd, ptr noundef %i.nl) #33
  store ptr %i.nm, ptr %12, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131

bb.bg:                                            ; preds = %bb.be
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.nh, ptr noundef nonnull %i.ne, ptr noundef nonnull align 8 dereferenceable(52) %i.nj, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.nd) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131: ; preds = %bb.bf, %bb.bg
  %i.nn = load ptr, ptr %11, align 8
  %i.no = load ptr, ptr %i.hx, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 728
  store ptr %i.no, ptr %i.np, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bh:                                            ; preds = %bb.ap
  br i1 %i.ig, label %bb.bi, label %bb.br

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull align 4 dereferenceable(8) %15)
  br label %bb.br

bb.bj:                                            ; preds = %bb.ap
  %i.nq = load i8, ptr %i.ao, align 8, !range !55, !noundef !56
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ns = sub i64 %i.q, %indvars.iv225
  store i8 0, ptr %i.ao, align 8
  %i.nt = trunc i64 %i.ns to i32
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder5LabelC2EPS3_i(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %11, i32 noundef %i.nt)
  store i8 1, ptr %i.ao, align 8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.nu = load ptr, ptr %11, align 8              ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8
  %.not.i132 = icmp eq ptr %i.nw, null
  br i1 %.not.i132, label %bb.bm, label %bb.bn, !prof !53

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #32
  unreachable

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.id, ptr %i.b, align 8
  %i.nx = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_4JumpEJPNS1_13BasicBlockRefEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.nu, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.ny = load ptr, ptr %11, align 8              ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 728
  %i.oa = load ptr, ptr %i.nz, align 8
  store ptr %i.oa, ptr %i.hx, align 8
  %i.ob = load ptr, ptr %14, align 8              ; 2 uses
  %i.oc = icmp eq ptr %i.ob, null
  %i.od = load ptr, ptr %i.hy, align 8            ; 2 uses
  br i1 %i.oc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.oe = load i32, ptr %i.ie, align 8
  %i.of = load ptr, ptr %i.if, align 8
  %i.og = call noundef ptr @_ZN2v88internal6maglev31MergePointInterpreterFrameState3NewERKNS1_21MaglevCompilationUnitERKNS1_21InterpreterFrameStateEiiPNS1_10BasicBlockEPKNS0_8compiler21BytecodeLivenessStateE(ptr noundef nonnull align 8 dereferenceable(52) %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef 0, i32 noundef %i.oe, ptr noundef %i.nx, ptr noundef %i.of) #33
  store ptr %i.og, ptr %14, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133

bb.bp:                                            ; preds = %bb.bn
  call void @_ZN2v88internal6maglev31MergePointInterpreterFrameState5MergeEPNS1_18MaglevGraphBuilderERNS1_21MaglevCompilationUnitERNS1_21InterpreterFrameStateEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(312) %i.ob, ptr noundef nonnull %i.ny, ptr noundef nonnull align 8 dereferenceable(52) %i.od, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef %i.nx) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133: ; preds = %bb.bo, %bb.bp
  %i.oh = load ptr, ptr %11, align 8
  %i.oi = load ptr, ptr %i.hx, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 728
  store ptr %i.oi, ptr %i.oj, align 8
  store ptr null, ptr %i.hx, align 8
  br label %bb.br

bb.bq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

bb.br:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit.thread, %bb.bh, %bb.bi, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit128, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit131, %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4GotoEPNS3_5LabelE.exit133
  %i.ok = load i8, ptr %i.hu, align 8, !range !55, !noundef !56
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.om = load ptr, ptr %i.hy, align 8
  %i.on = load ptr, ptr %16, align 8
  call void @_ZN2v88internal6maglev21InterpreterFrameState8CopyFromERKNS1_21MaglevCompilationUnitERNS1_31MergePointInterpreterFrameStateEbPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 8 dereferenceable(52) %i.om, ptr noundef nonnull align 8 dereferenceable(312) %i.on, i1 noundef zeroext false, ptr noundef null)
  %i.oo = load ptr, ptr %11, align 8              ; 2 uses
  %i.op = load ptr, ptr %i.hx, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 728
  store ptr %i.op, ptr %i.oq, align 8
  store ptr null, ptr %i.hx, align 8
  %i.or = load ptr, ptr %16, align 8              ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load i32, ptr %i.os, align 8
  %i.ou = load i32, ptr %i.im, align 8            ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, -1
  %i.ow = icmp eq i32 %i.ou, %i.ot
  %i.ox = and i1 %i.ov, %i.ow
  br i1 %i.ox, label %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134, label %bb.bt, !prof !52

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #32
  unreachable

_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134: ; preds = %bb.bs
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder29ProcessMergePointPredecessorsERNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.oo, ptr noundef nonnull align 8 dereferenceable(312) %i.or, ptr noundef nonnull align 8 dereferenceable(8) %i.in)
  %i.oy = load ptr, ptr %11, align 8
  %i.oz = load ptr, ptr %16, align 8
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder13StartNewBlockEPNS1_10BasicBlockEPNS1_31MergePointInterpreterFrameStateERNS1_13BasicBlockRefE(ptr noundef nonnull align 8 dereferenceable(953) %i.oy, ptr noundef null, ptr noundef %i.oz, ptr noundef nonnull align 8 dereferenceable(8) %i.in)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.br
  br i1 %i.iw, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  br label %.loopexit

bb.bw:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder4BindEPNS3_5LabelE.exit134, %bb.bu, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %i.iq
  br i1 %exitcond229.not, label %.loopexit, label %bb.ac, !llvm.loop !574

.loopexit:                                        ; preds = %bb.bw, %bb.ab, %bb.bv
  %i.pa = load i8, ptr %i.ao, align 8, !range !55, !noundef !56
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %.loopexit
  %i.pc = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21MaglevSubGraphBuilder23TrimPredecessorsAndBindEPNS3_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %14)
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %.critedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pe = call fastcc noundef ptr @"_ZZN2v88internal6maglev18MaglevGraphBuilder21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS5_17ProcessedFeedbackEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 3 uses
  %i.pf = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.pf, label %bb.bz, label %bb.cf

bb.bz:                                            ; preds = %bb.by
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 -64
  store ptr %i.pe, ptr %i.pi, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.pk = load i8, ptr %i.pj, align 8, !range !55, !noundef !56 ; 2 uses
  store i8 1, ptr %i.pj, align 8
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.pn = load i32, ptr %15, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i256, %bb.bz
  %i.po = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.pp = load ptr, ptr %i.hb, align 8
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = load i32, ptr %i.hf, align 4
  %i.pt = zext i32 %i.ps to i64
  %i.pu = add i64 %i.pr, %i.pt
  %i.pv = sub i64 %i.pq, %i.pu
  %i.pw = trunc i64 %i.pv to i32
  %i.px = icmp sgt i32 %i.pn, %i.pw
  br i1 %i.px, label %bb.cb, label %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit263.thread

bb.cb:                                            ; preds = %bb.ca
  %i.py = load i8, ptr %i.po, align 1
  %i.pz = load i8, ptr %i.pl, align 8
  %i.qa = lshr i8 %i.pz, 1
  %i.qb = zext nneg i8 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [212 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes14kBytecodeSizesE, i64 %i.qb
  %i.qd = zext i8 %i.py to i64
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qd
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.qg ; 4 uses
  store ptr %i.qh, ptr %i.gz, align 8
  %i.qi = load ptr, ptr %i.pm, align 8
  %.not.i.i.i255 = icmp ult ptr %i.qh, %i.qi
  br i1 %.not.i.i.i255, label %bb.cc, label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i256

bb.cc:                                            ; preds = %bb.cb
  %i.qj = load i8, ptr %i.qh, align 1             ; 2 uses
  %switch.selectcmp.i.i.i.i257 = icmp ult i8 %i.qj, 4
  br i1 %switch.selectcmp.i.i.i.i257, label %switch.lookup4, label %bb.cd

switch.lookup4:                                   ; preds = %bb.cc
  %i.qk = shl nuw nsw i8 %i.qj, 3
  %switch.shiftamt6 = zext nneg i8 %i.qk to i32
  %switch.downshift7 = lshr i32 67240962, %switch.shiftamt6
  %switch.masked8 = trunc i32 %switch.downshift7 to i8
  store i8 %switch.masked8, ptr %i.pl, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  store ptr %i.ql, ptr %i.gz, align 8
  br label %.sink.split.i.i.i258

bb.cd:                                            ; preds = %bb.cc
  store i8 1, ptr %i.pl, align 8
  br label %.sink.split.i.i.i258

.sink.split.i.i.i258:                             ; preds = %bb.cd, %switch.lookup4
  %.sink.i.i.i259 = phi i32 [ 1, %switch.lookup4 ], [ 0, %bb.cd ]
  store i32 %.sink.i.i.i259, ptr %i.hf, align 4
  br label %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i256

_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i256: ; preds = %.sink.split.i.i.i258, %bb.cb
  %i.qm = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder19VisitSingleBytecodeEv(ptr noundef nonnull align 8 dereferenceable(953) %0), !inline_history !78
  %i.qn = and i64 %i.qm, 7
  %i.qo = icmp eq i64 %i.qn, 1
  br i1 %i.qo, label %_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit263, label %bb.ca, !llvm.loop !20

_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit263: ; preds = %_ZN2v88internal11interpreter21BytecodeArrayIterator7AdvanceEv.exit.i256
  call void @_ZN2v88internal6maglev18MaglevGraphBuilder52AdvanceThroughContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull readonly align 4 dereferenceable(8) %15), !inline_history !78
  store i8 %i.pk, ptr %i.pj, align 8
  %i.qp = load i8, ptr %i.am, align 8, !range !55, !noundef !56
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %.critedge117, label %bb.ce

_ZN2v88internal6maglev18MaglevGraphBuilder43BuildContinuationForPolymorphicPropertyLoadERKNS2_19ContinuationOffsetsE.exit263.thread: ; preds = %bb.ca
  store i8 %i.pk, ptr %i.pj, align 8
  %i.qr = load i8, ptr %i.am, align 8, !range !55, !noundef !56
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %.thread, label %bb.ce

end_hunk_12
