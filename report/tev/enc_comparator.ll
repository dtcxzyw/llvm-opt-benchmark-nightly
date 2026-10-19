Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_comparator?download=true
inline.NumInlined: 1504
inline.NumDeleted: 957
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3jxl12ComputeScoreERKNS_11ImageBundleES2_PNS_10ComparatorERK15JxlCmsInterfacePfPNS_5PlaneIfEEPNS_10ThreadPoolEb:bb.a
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !75 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.t, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit98

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit98:   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.hw = load i32, ptr %i.hp, align 8, !tbaa !75
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.s, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99

bb.s:                                             ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit98
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %14) #17
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99:   ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit98, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZN3jxl11ImageBundleC2EOS0_(ptr noundef nonnull align 8 dereferenceable(504) %17, ptr noundef nonnull align 8 dereferenceable(508) %16) #17
  call fastcc void @_ZN3jxl12_GLOBAL__N_110AlphaBlendEfPNS_11ImageBundleE(float noundef 1.000000e+00, ptr noundef %15) #18
  call fastcc void @_ZN3jxl12_GLOBAL__N_110AlphaBlendEfPNS_11ImageBundleE(float noundef 1.000000e+00, ptr noundef %17) #18
  %i.hy = load ptr, ptr %2, align 8, !tbaa !72
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = call i32 %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(504) %15) #17, !inline_history !128 ; 2 uses
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101, label %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101.thread

_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101: ; preds = %bb.t
  %i.id = load ptr, ptr %2, align 8, !tbaa !72
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call i32 %i.if(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(504) %17, ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #17, !inline_history !128 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %.critedge77, label %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101.thread

_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101.thread: ; preds = %bb.t, %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101
  %.sroa.0.0.i100170 = phi i32 [ %i.ig, %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101 ], [ %i.ib, %bb.t ]
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.ii = load i32, ptr %i.ht, align 8, !tbaa !75
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %bb.u, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit102

bb.u:                                             ; preds = %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101.thread
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %16) #17
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit102

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit102:  ; preds = %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101.thread, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ik = load i32, ptr %i.hp, align 8, !tbaa !75
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.v, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103

bb.v:                                             ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit102
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %14) #17
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103:  ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit102, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aj

.critedge77:                                      ; preds = %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit101
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.im = load i32, ptr %i.ht, align 8, !tbaa !75
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.w, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit104

bb.w:                                             ; preds = %.critedge77
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %16) #17
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit104

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit104:  ; preds = %.critedge77, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.io = load i32, ptr %i.hp, align 8, !tbaa !75
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.x, label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105

bb.x:                                             ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit104
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(508) %14) #17
  br label %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105

_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105:  ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit104, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.ai, label %bb.y

bb.y:                                             ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !76 ; 3 uses
  %.not1.i = icmp eq ptr %i.ir, null
  br i1 %.not1.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.it = load i32, ptr %i.is, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq i32 %i.it, 0
  br i1 %.not.i, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !80 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !81
  %i.iy = icmp eq ptr %i.iv, %i.ix
  br i1 %i.iy, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load i32, ptr %i.iv, align 8, !tbaa !79
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !153
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !154
  %i.jf = sext i32 %i.je to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit

bb.ad:                                            ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i.ph.shrunk = phi i32 [ %i.it, %bb.z ], [ %i.iz, %bb.ab ], [ 0, %bb.aa ]
  %.0.i.ph = zext i32 %.0.i.ph.shrunk to i64      ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !106 ; 2 uses
  %i.ji = zext i32 %i.jh to i64
  %.not.i108 = icmp eq i32 %i.jh, 0
  br i1 %.not.i108, label %bb.ae, label %_ZNK3jxl11ImageBundle5ysizeEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !80 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !81
  %i.jn = icmp eq ptr %i.jk, %i.jm
  br i1 %i.jn, label %_ZNK3jxl11ImageBundle5ysizeEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !106
  %i.jq = zext i32 %i.jp to i64
  br label %_ZNK3jxl11ImageBundle5ysizeEv.exit

_ZNK3jxl11ImageBundle5ysizeEv.exit:               ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i172 = phi i64 [ %i.jc, %bb.ac ], [ %.0.i.ph, %bb.ae ], [ %.0.i.ph, %bb.af ], [ %.0.i.ph, %bb.ad ] ; 9 uses
  %.0.i107 = phi i64 [ %i.jf, %bb.ac ], [ 0, %bb.ae ], [ %i.jq, %bb.af ], [ %i.ji, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.37") align 8 %18, ptr noundef %i.e, i64 noundef %.0.i172, i64 noundef %.0.i107, i64 noundef 0) #18
  %i.jr = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !108 ; 2 uses
  %i.jt = icmp eq i32 %i.js, 0
  br i1 %i.jt, label %bb.ag, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread:  ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.aj

bb.ag:                                            ; preds = %_ZNK3jxl11ImageBundle5ysizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(60) %18, i64 24, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull align 8 dereferenceable(24) %i.jv) #17
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !109, !noalias !155
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !109, !alias.scope !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %19, i64 24, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ka = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, ptr noundef nonnull align 8 dereferenceable(24) %i.ju) #17 ; 0 uses
  %i.kb = load i64, ptr %i.jw, align 8, !tbaa !109
  %i.kc = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !109
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ju) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %.not182 = icmp eq i64 %.0.i107, 0
  br i1 %.not182, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.ag
  %i.kd = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !110 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !111 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !110 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !111 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !110 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !111 ; 3 uses
  %.not183 = icmp eq i64 %.0.i172, 0
  br i1 %.not183, label %._crit_edge181, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph180
  %i.kp = add nsw i64 %.0.i107, -1                ; 3 uses
  %i.kq = mul i64 %i.ko, %i.kp
  %i.kr = shl nsw i64 %.0.i172, 2                 ; 3 uses
  %i.ks = getelementptr i8, ptr %i.km, i64 %i.kq
  %scevgep = getelementptr i8, ptr %i.ks, i64 %i.kr ; 2 uses
  %i.kt = mul i64 %i.kg, %i.kp
  %i.ku = getelementptr i8, ptr %i.ke, i64 %i.kt
  %scevgep220 = getelementptr i8, ptr %i.ku, i64 %i.kr
  %i.kv = mul i64 %i.kk, %i.kp
  %i.kw = getelementptr i8, ptr %i.ki, i64 %i.kv
  %scevgep221 = getelementptr i8, ptr %i.kw, i64 %i.kr
  %min.iters.check = icmp ult i64 %.0.i172, 8
  %bound0 = icmp ult ptr %i.km, %scevgep220
  %bound1 = icmp ult ptr %i.ke, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.kx = or i64 %i.kg, %i.ko
  %i.ky = icmp slt i64 %i.kx, 0
  %i.kz = or i1 %found.conflict, %i.ky
  %bound0223 = icmp ult ptr %i.km, %scevgep221
  %bound1224 = icmp ult ptr %i.ki, %scevgep
  %found.conflict225 = and i1 %bound0223, %bound1224
  %i.la = icmp slt i64 %i.kk, 0
  %i.lb = or i1 %found.conflict225, %i.la
  %conflict.rdx = or i1 %i.kz, %i.lb
  %n.vec = and i64 %.0.i172, -8                   ; 3 uses
  %cmp.n = icmp eq i64 %.0.i172, %n.vec
  %xtraiter = and i64 %.0.i172, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.065178.us = phi i64 [ %i.ms, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.lc = mul i64 %i.kg, %.065178.us
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.lc ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ld, i64 64) ]
  %i.le = mul i64 %i.kk, %.065178.us
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.le ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lf, i64 64) ]
  %i.lg = mul i64 %i.ko, %.065178.us
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.lg ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lh, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %index ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %index ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load = load <4 x float>, ptr %i.li, align 32, !tbaa !112, !alias.scope !156 ; 2 uses
  %wide.load228.a = load <4 x float>, ptr %i.lk, align 16, !tbaa !112, !alias.scope !156 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %wide.load229.a = load <4 x float>, ptr %i.lj, align 32, !tbaa !112, !alias.scope !157 ; 2 uses
  %wide.load230 = load <4 x float>, ptr %i.ll, align 16, !tbaa !112, !alias.scope !157 ; 2 uses
  %i.lm = fcmp olt <4 x float> %wide.load, %wide.load229.a
  %i.ln = fcmp olt <4 x float> %wide.load228.a, %wide.load230
  %i.lo = select <4 x i1> %i.lm, <4 x float> %wide.load229.a, <4 x float> %wide.load
  %i.lp = select <4 x i1> %i.ln, <4 x float> %wide.load230, <4 x float> %wide.load228.a
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <4 x float> %i.lo, ptr %i.lq, align 32, !tbaa !112, !alias.scope !158, !noalias !159
  store <4 x float> %i.lp, ptr %i.lr, align 16, !tbaa !112, !alias.scope !158, !noalias !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.0177.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 6 uses
  %.neg = or disjoint i64 %.0177.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.0177.us.ph
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.0177.us.ph
  %i.lv = load float, ptr %i.lt, align 32, !tbaa !112 ; 2 uses
  %i.lw = load float, ptr %i.lu, align 32, !tbaa !112 ; 2 uses
  %i.lx = fcmp olt float %i.lv, %i.lw
  %i.ly = select i1 %i.lx, float %i.lw, float %i.lv
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.0177.us.ph
  store float %i.ly, ptr %i.lz, align 32, !tbaa !112
  %i.ma = or disjoint i64 %.0177.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0177.us.unr = phi i64 [ %.0177.us.ph, %scalar.ph.preheader ], [ %i.ma, %scalar.ph.prol ]
  %i.mb = icmp eq i64 %.0.i172, %.neg
  br i1 %i.mb, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0177.us = phi i64 [ %i.mr, %scalar.ph ], [ %.0177.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %.0177.us
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.0177.us
  %i.me = load float, ptr %i.mc, align 4, !tbaa !112 ; 2 uses
  %i.mf = load float, ptr %i.md, align 4, !tbaa !112 ; 2 uses
  %i.mg = fcmp olt float %i.me, %i.mf
  %i.mh = select i1 %i.mg, float %i.mf, float %i.me
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.0177.us
  store float %i.mh, ptr %i.mi, align 4, !tbaa !112
  %i.mj = add nuw i64 %.0177.us, 1                ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.mj
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.mj
  %i.mm = load float, ptr %i.mk, align 4, !tbaa !112 ; 2 uses
  %i.mn = load float, ptr %i.ml, align 4, !tbaa !112 ; 2 uses
  %i.mo = fcmp olt float %i.mm, %i.mn
  %i.mp = select i1 %i.mo, float %i.mn, float %i.mm
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.mj
  store float %i.mp, ptr %i.mq, align 4, !tbaa !112
  %i.mr = add nuw i64 %.0177.us, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.mr, %.0.i172
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !136

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ms = add nuw i64 %.065178.us, 1              ; 2 uses
  %exitcond186.not = icmp eq i64 %i.ms, %.0.i107
  br i1 %exitcond186.not, label %._crit_edge181, label %.lr.ph.us, !llvm.loop !137

._crit_edge181:                                   ; preds = %._crit_edge.us, %.lr.ph180, %bb.ag
  %.pr = load i32, ptr %i.jr, align 8, !tbaa !108
  %i.mt = icmp eq i32 %.pr, 0
  br i1 %i.mt, label %bb.ah, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.ah:                                            ; preds = %._crit_edge181
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jv) #17
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %._crit_edge181, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105
  %i.mu = load float, ptr %i.c, align 4, !tbaa !112 ; 2 uses
  %i.mv = load float, ptr %i.d, align 4, !tbaa !112 ; 2 uses
  %i.mw = fcmp olt float %i.mu, %i.mv
  %i.mx = select i1 %i.mw, float %i.mv, float %i.mu
  store float %i.mx, ptr %4, align 4, !tbaa !112
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit97, %bb.ai
  %.sroa.0130.0 = phi i32 [ 0, %bb.ai ], [ %i.js, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread ], [ %.sroa.0.0.i100170, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103 ], [ %i.hu, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99 ], [ %i.hq, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.my = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.my) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit94, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit90, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit, %bb.aj
  %.sroa.0130.1 = phi i32 [ %.sroa.0130.0, %bb.aj ], [ %.sroa.0.0.i91168, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit94 ], [ %i.gs, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit90 ], [ %i.go, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.mz) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit88, %_ZN3jxl13ImageMetadataaSERKS0_.exit80, %bb.ak
  %.sroa.0130.2 = phi i32 [ %i.gg, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit88 ], [ %i.fj, %_ZN3jxl13ImageMetadataaSERKS0_.exit80 ], [ %.sroa.0130.1, %bb.ak ], [ %i.gl, %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.eu) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef 504) #20
  %i.na = load ptr, ptr %i.ci, align 8, !tbaa !72
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(417) %i.ci) #17, !inline_history !138
  br label %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit116

_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit116: ; preds = %_ZN3jxl13ImageMetadataaSERKS0_.exit, %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %.sroa.0130.3 = phi i32 [ %.sroa.0130.2, %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit ], [ %i.cg, %_ZN3jxl13ImageMetadataaSERKS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.br) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 504) #20
  %i.nd = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(417) %i.f) #17, !inline_history !138
  ret i32 %.sroa.0130.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @_ZN3jxl17TransformIfNeededERKNS_11ImageBundleERKNS_13ColorEncodingERK15JxlCmsInterfacePNS_10ThreadPoolEPS0_PPS1_(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding10LinearSRGBEb(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK3jxl11ImageBundle4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(504) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.jxl::Plane", align 8        ; 7 uses
  %3 = alloca %"class.jxl::RectT", align 8        ; 5 uses
  %4 = alloca %"class.jxl::RectT", align 8        ; 5 uses
  %5 = alloca %"class.jxl::ImageBundle", align 8  ; 35 uses
  %6 = alloca %"class.jxl::StatusOr.44", align 8  ; 13 uses
  %7 = alloca %"class.jxl::Image3", align 8       ; 12 uses
  %8 = alloca %"class.jxl::StatusOr.37", align 8  ; 8 uses
  %9 = alloca %"class.jxl::Plane", align 8        ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !50     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  store ptr %i.a, ptr %5, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 1, ptr %i.e, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl22YCbCrChromaSubsamplingC1Ev(ptr noundef nonnull align 8 dereferenceable(22) %i.f) #17
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.g, i8 0, i64 18, i1 false)
  store i32 2, ptr %i.h, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.c, ptr %i.j, align 8, !tbaa !51
end_hunk_0
