Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_comparator?download=true
inline.NumInlined: 1504
inline.NumDeleted: 957
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3jxl12ComputeScoreERKNS_11ImageBundleES2_PNS_10ComparatorERK15JxlCmsInterfacePfPNS_5PlaneIfEEPNS_10ThreadPoolEb:bb.a
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
  %i.kq = mul i64 %i.kk, %i.kp
  %i.kr = shl nsw i64 %.0.i172, 2                 ; 3 uses
  %i.ks = getelementptr i8, ptr %i.ki, i64 %i.kq
  %scevgep = getelementptr i8, ptr %i.ks, i64 %i.kr
  %i.kt = mul i64 %i.kg, %i.kp
  %i.ku = getelementptr i8, ptr %i.ke, i64 %i.kt
  %scevgep227 = getelementptr i8, ptr %i.ku, i64 %i.kr
  %i.kv = mul i64 %i.ko, %i.kp
  %i.kw = getelementptr i8, ptr %i.km, i64 %i.kv
  %scevgep228 = getelementptr i8, ptr %i.kw, i64 %i.kr ; 2 uses
  %min.iters.check = icmp ult i64 %.0.i172, 8
  %bound0 = icmp ult ptr %i.km, %scevgep227
  %bound1 = icmp ult ptr %i.ke, %scevgep228
  %found.conflict = and i1 %bound0, %bound1
  %i.kx = or i64 %i.kg, %i.ko
  %i.ky = icmp slt i64 %i.kx, 0
  %i.kz = or i1 %found.conflict, %i.ky
  %bound0230 = icmp ult ptr %i.km, %scevgep
  %bound1231 = icmp ult ptr %i.ki, %scevgep228
  %found.conflict232 = and i1 %bound0230, %bound1231
  %stride.check233 = icmp slt i64 %i.kk, 0
  %i.la = or i1 %found.conflict232, %stride.check233
  %conflict.rdx = or i1 %i.kz, %i.la
  %n.vec = and i64 %.0.i172, -8                   ; 3 uses
  %cmp.n = icmp eq i64 %.0.i172, %n.vec
  %xtraiter = and i64 %.0.i172, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge
  %.065178.us = phi i64 [ %20, %._crit_edge ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.lb = mul i64 %i.kg, %.065178.us
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.lb ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lc, i64 64) ]
  %i.ld = mul i64 %i.kk, %.065178.us
  %i.le = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ld ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.le, i64 64) ]
  %i.lf = mul i64 %i.ko, %.065178.us
  %i.lg = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.lf ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lg, i64 64) ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load = load <4 x float>, ptr %i.lh, align 32, !tbaa !112, !alias.scope !156 ; 2 uses
  %wide.load234.a = load <4 x float>, ptr %i.lj, align 16, !tbaa !112, !alias.scope !156 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %wide.load235 = load <4 x float>, ptr %i.li, align 32, !tbaa !112, !alias.scope !157 ; 2 uses
  %wide.load236 = load <4 x float>, ptr %i.lk, align 16, !tbaa !112, !alias.scope !157 ; 2 uses
  %i.ll = fcmp olt <4 x float> %wide.load, %wide.load235
  %i.lm = fcmp olt <4 x float> %wide.load234.a, %wide.load236
  %i.ln = select <4 x i1> %i.ll, <4 x float> %wide.load235, <4 x float> %wide.load
  %i.lo = select <4 x i1> %i.lm, <4 x float> %wide.load236, <4 x float> %wide.load234.a
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %index ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <4 x float> %i.ln, ptr %i.lp, align 32, !tbaa !112, !alias.scope !158, !noalias !159
  store <4 x float> %i.lo, ptr %i.lq, align 16, !tbaa !112, !alias.scope !158, !noalias !159
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us, %middle.block
  %.0177.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us ] ; 6 uses
  %.neg = or disjoint i64 %.0177.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0177.us.ph
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.0177.us.ph
  %i.lu = load float, ptr %i.ls, align 32, !tbaa !112 ; 2 uses
  %i.lv = load float, ptr %i.lt, align 32, !tbaa !112 ; 2 uses
  %i.lw = fcmp olt float %i.lu, %i.lv
  %i.lx = select i1 %i.lw, float %i.lv, float %i.lu
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %.0177.us.ph
  store float %i.lx, ptr %i.ly, align 32, !tbaa !112
  %i.lz = or disjoint i64 %.0177.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0177.us.unr = phi i64 [ %.0177.us.ph, %scalar.ph.preheader ], [ %i.lz, %scalar.ph.prol ]
  %i.ma = icmp eq i64 %.0.i172, %.neg
  br i1 %i.ma, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %20 = add nuw i64 %.065178.us, 1                ; 2 uses
  %exitcond185.not = icmp eq i64 %20, %.0.i107
  br i1 %exitcond185.not, label %._crit_edge181, label %.lr.ph.us, !llvm.loop !136

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0177.us = phi i64 [ %i.mq, %scalar.ph ], [ %.0177.us.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.0177.us
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.0177.us
  %i.md = load float, ptr %i.mb, align 4, !tbaa !112 ; 2 uses
  %i.me = load float, ptr %i.mc, align 4, !tbaa !112 ; 2 uses
  %i.mf = fcmp olt float %i.md, %i.me
  %i.mg = select i1 %i.mf, float %i.me, float %i.md
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %.0177.us
  store float %i.mg, ptr %i.mh, align 4, !tbaa !112
  %i.mi = add nuw i64 %.0177.us, 1                ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.mi
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.mi
  %i.ml = load float, ptr %i.mj, align 4, !tbaa !112 ; 2 uses
  %i.mm = load float, ptr %i.mk, align 4, !tbaa !112 ; 2 uses
  %i.mn = fcmp olt float %i.ml, %i.mm
  %i.mo = select i1 %i.mn, float %i.mm, float %i.ml
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.mi
  store float %i.mo, ptr %i.mp, align 4, !tbaa !112
  %i.mq = add nuw i64 %.0177.us, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.mq, %.0.i172
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !137

._crit_edge181:                                   ; preds = %._crit_edge, %.lr.ph180, %bb.ag
  %.pr = load i32, ptr %i.jr, align 8, !tbaa !108
  %i.mr = icmp eq i32 %.pr, 0
  br i1 %i.mr, label %bb.ah, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.ah:                                            ; preds = %._crit_edge181
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.jv) #17
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit:         ; preds = %._crit_edge181, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit105
  %i.ms = load float, ptr %i.c, align 4, !tbaa !112 ; 2 uses
  %i.mt = load float, ptr %i.d, align 4, !tbaa !112 ; 2 uses
  %i.mu = fcmp olt float %i.ms, %i.mt
  %i.mv = select i1 %i.mu, float %i.mt, float %i.ms
  store float %i.mv, ptr %4, align 4, !tbaa !112
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit97, %bb.ai
  %.sroa.0130.0 = phi i32 [ 0, %bb.ai ], [ %i.js, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.thread ], [ %.sroa.0.0.i100170, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit103 ], [ %i.hu, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit99 ], [ %i.hq, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit97 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.mw = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.mw) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit94, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit90, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit, %bb.aj
  %.sroa.0130.1 = phi i32 [ %.sroa.0130.0, %bb.aj ], [ %.sroa.0.0.i91168, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit94 ], [ %i.gs, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit90 ], [ %i.go, %_ZN3jxl8StatusOrINS_11ImageBundleEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.mx) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit: ; preds = %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit88, %_ZN3jxl13ImageMetadataaSERKS0_.exit80, %bb.ak
  %.sroa.0130.2 = phi i32 [ %i.gg, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit88 ], [ %i.fj, %_ZN3jxl13ImageMetadataaSERKS0_.exit80 ], [ %.sroa.0130.1, %bb.ak ], [ %i.gl, %_ZN3jxl12_GLOBAL__N_116ComputeScoreImplERKNS_11ImageBundleES3_PNS_10ComparatorEPNS_5PlaneIfEERf.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.eu) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef 504) #20
  %i.my = load ptr, ptr %i.ci, align 8, !tbaa !72
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(417) %i.ci) #17, !inline_history !138
  br label %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit116

_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit116: ; preds = %_ZN3jxl13ImageMetadataaSERKS0_.exit, %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit
  %.sroa.0130.3 = phi i32 [ %.sroa.0130.2, %_ZNSt3__110unique_ptrIN3jxl13ImageMetadataENS_14default_deleteIS2_EEED2B8nn180100Ev.exit ], [ %i.cg, %_ZN3jxl13ImageMetadataaSERKS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %i.br) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 504) #20
  %i.nb = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(417) %i.f) #17, !inline_history !138
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
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.k, i8 0, i64 168, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 272
  call void @_ZN3jxl13ColorEncodingC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.l) #17
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 472 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !79
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.r = load i32, ptr %i.q, align 4, !tbaa !106
  %i.s = zext i32 %i.r to i64
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.44") align 8 %6, ptr noundef %i.a, i64 noundef %i.p, i64 noundef %i.s) #18
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !115  ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 %i.u, ptr %i.w, align 8, !tbaa !75
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.x, i8 0, i64 144, i1 false), !alias.scope !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(172) %6, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.z = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y) #17 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !109, !noalias !176
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !109, !alias.scope !176
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #17 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !109, !noalias !176
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !109, !alias.scope !176
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) #17 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !109, !noalias !176
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 160 ; 2 uses
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !109, !alias.scope !176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.k, ptr noundef nonnull align 8 dereferenceable(168) %7, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.au = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.x) #17 ; 0 uses
  %i.av = load i64, ptr %i.ac, align 8, !tbaa !109
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 152
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.az = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.af) #17 ; 0 uses
  %i.ba = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 208
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !109
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %i.am, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.be = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.an) #17 ; 0 uses
  %i.bf = load i64, ptr %i.as, align 8, !tbaa !109
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 264
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !109
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.an) #17
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.af) #17
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !177
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false), !noalias !177
  %i.bi = load <2 x i32>, ptr %i.n, align 8, !tbaa !62, !noalias !177
  %i.bj = zext <2 x i32> %i.bi to <2 x i64>
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !178, !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !177
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false), !noalias !177
  %i.bl = load <2 x i32>, ptr %i.k, align 8, !tbaa !62, !alias.scope !177
  %i.bm = zext <2 x i32> %i.bl to <2 x i64>
  store <2 x i64> %i.bm, ptr %i.bk, align 8, !tbaa !178, !noalias !177
  %i.bn = call i32 @_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_6Image3IT_EES5_PS8_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(168) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.k) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !177
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.critedge33, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK3jxl11ImageBundle4CopyEv:bb.a

bb.f:                                             ; preds = %.critedge35
  %i.eh = icmp ne i32 %i.ed, 0
  %i.ei = icmp ne i32 %i.ea, 0
  %or.cond.not20.i = and i1 %i.ei, %i.eh
  br i1 %or.cond.not20.i, label %.lr.ph.i, label %.critedge37

.lr.ph.i:                                         ; preds = %bb.f
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.055.070, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.055.070, i64 16
  %i.el = load ptr, ptr %i.dm, align 8, !tbaa !110, !alias.scope !181
  %i.em = load i64, ptr %i.dn, align 8, !tbaa !111, !alias.scope !181
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ew, %bb.g ] ; 3 uses
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !110, !noalias !181
  %i.eo = load i64, ptr %i.ek, align 8, !tbaa !111, !noalias !181
  %i.ep = mul i64 %i.eo, %.015.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ep ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eq, i64 64) ]
  %i.er = mul i64 %.015.i, %i.em
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = load i32, ptr %.sroa.055.070, align 8, !tbaa !79, !noalias !181
  %i.eu = zext i32 %i.et to i64
  %i.ev = shl nuw nsw i64 %i.eu, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.es, ptr align 64 %i.eq, i64 %i.ev, i1 false), !noalias !181
  %i.ew = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.ex = load i32, ptr %i.ds, align 4, !tbaa !106, !noalias !181
  %i.ey = zext i32 %i.ex to i64
  %i.ez = icmp samesign ult i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.g, label %.critedge37, !llvm.loop !172

_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit: ; preds = %.critedge35
  store i32 1, ptr %i.dl, align 8, !tbaa !75
  br label %bb.j

.critedge37:                                      ; preds = %bb.g, %bb.f
  %i.fa = load ptr, ptr %i.do, align 8, !tbaa !81 ; 5 uses
  %i.fb = load ptr, ptr %i.dp, align 8, !tbaa !116
  %i.fc = icmp ult ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fa, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 24, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.di) #17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.ff = load i64, ptr %i.dj, align 8, !tbaa !109
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !109
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %.critedge37
  %i.fh = call noundef ptr @_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJS3_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %9) #18
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.fg, %bb.h ], [ %i.fh, %bb.i ]
  store ptr %.0.i, ptr %i.do, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE12emplace_backIJS3_EEERS3_DpOT_.exit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.di) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fi = load i32, ptr %i.dd, align 8, !tbaa !108
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.k, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit42

bb.k:                                             ; preds = %bb.j
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.de) #17
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit42

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit42:       ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.eg, label %bb.c, label %.loopexit

.critedge41:                                      ; preds = %bb.c, %.critedge33
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76 ; 2 uses
  %.not67 = icmp eq ptr %i.fl, null
  br i1 %.not67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge41
  %i.fm = call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #16, !noalias !182 ; 2 uses
  call void @_ZN3jxl4jpeg8JPEGDataC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(296) %i.fm, ptr noundef nonnull align 8 dereferenceable(296) %i.fl) #18, !noalias !182
  br label %bb.m

bb.m:                                             ; preds = %.critedge41, %bb.l
  %.sroa.0.0 = phi ptr [ %i.fm, %bb.l ], [ null, %.critedge41 ]
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !76  ; 3 uses
  store ptr %.sroa.0.0, ptr %i.d, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i, label %_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i: ; preds = %bb.m
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(296) %i.fn) #17, !inline_history !175
  br label %_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i, %bb.m
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !66
  store i32 %i.fs, ptr %i.e, align 8, !tbaa !66
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ft, ptr noundef nonnull align 8 dereferenceable(14) %i.fu, i64 14, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.fv, align 8, !tbaa !75
  call void @_ZN3jxl11ImageBundleC2EOS0_(ptr noundef nonnull align 8 dereferenceable(508) %0, ptr noundef nonnull align 8 dereferenceable(504) %5) #17
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit42, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit, %bb.b, %_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit
  %.pr = load i32, ptr %i.t, align 8, !tbaa !115
  %i.fw = icmp eq i32 %.pr, 0
  br i1 %i.fw, label %bb.n, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

bb.n:                                             ; preds = %.loopexit
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ao) #17
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ag) #17
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #17
  br label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit

_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit:        ; preds = %.thread, %.loopexit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_110AlphaBlendEfPNS_11ImageBundleE(float noundef nofpclass(nan inf nzero sub nnorm) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %.not1516.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not1516.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.010.017.i.i = phi ptr [ %i.u, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !70
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.preheader, label %bb.b

_ZNK3jxl11ImageBundle8HasAlphaEv.exit.preheader:  ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.j = fpext float %0 to double                 ; 5 uses
  %i.k = fcmp ole float %0, 0.000000e+00          ; 2 uses
  %i.l = fcmp oge float %0, 1.000000e+00          ; 2 uses
  %i.m = fcmp ole double %i.j, 3.130800e-03
  %i.n = fmul nnan double %i.j, 1.292000e+01
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.q = tail call noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr noundef nonnull align 8 dereferenceable(504) %1) #17 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %.val = load i64, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %i.q, i64 40
  %.val7 = load ptr, ptr %i.s, align 8
  %i.t = or i1 %i.l, %i.m
  %brmerge14 = or i1 %i.t, %i.k                   ; 3 uses
  %.mux = select i1 %i.l, double 1.000000e+00, double %i.n
  %.mux.mux = select i1 %i.k, double 0.000000e+00, double %.mux ; 3 uses
  br i1 %brmerge14, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.017.i.i, i64 96 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.u, %i.f
  br i1 %.not15.i.i, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread, label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.preheader
  %i.v = tail call double @pow(double noundef %i.j, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i

_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i:         ; preds = %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.preheader, %bb.c
  %.0.i38.i = phi double [ %i.w, %bb.c ], [ %.mux.mux, %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.preheader ]
  %i.x = fptrunc double %.0.i38.i to float
  %i.y = load i32, ptr %i.o, align 4, !tbaa !106  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit, label %.lr.ph3.i

.lr.ph3.i:                                        ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !110 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !79  ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.not5.i = icmp eq i32 %i.ad, 0
  br i1 %.not5.i, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph3.i, %._crit_edge.i
  %.02.us.i = phi i64 [ %2, %._crit_edge.i ], [ 0, %.lr.ph3.i ] ; 3 uses
  %i.af = mul i64 %.02.us.i, %.val
  %i.ag = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.af ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ag, i64 64) ]
  %i.ah = mul i64 %.02.us.i, %i.aa
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ai, i64 64) ]
  br label %bb.d

._crit_edge.i:                                    ; preds = %bb.p
  %2 = add nuw nsw i64 %.02.us.i, 1               ; 2 uses
  %exitcond6.not.i = icmp eq i64 %2, %i.z
  br i1 %exitcond6.not.i, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit, label %.lr.ph.us.i, !llvm.loop !183

bb.d:                                             ; preds = %bb.p, %.lr.ph.us.i
  %.0361.us.i = phi i64 [ 0, %.lr.ph.us.i ], [ %i.bo, %bb.p ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0361.us.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !112 ; 4 uses
  %i.al = fcmp ugt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.am = fcmp ult float %i.ak, 1.000000e+00
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0361.us.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !112
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ap = fsub float 1.000000e+00, %i.ak
  %i.aq = fpext ninf float %i.ak to double
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0361.us.i
  %i.as = load float, ptr %i.ar, align 4, !tbaa !112 ; 3 uses
  %i.at = fpext float %i.as to double             ; 3 uses
  %i.au = fcmp ugt float %i.as, 0.000000e+00
  br i1 %i.au, label %bb.h, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i

bb.h:                                             ; preds = %bb.g
  %i.av = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.av, label %bb.i, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i

bb.i:                                             ; preds = %bb.h
  %i.aw = fcmp ugt double %i.at, 3.130800e-03
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = fmul nnan double %i.at, 1.292000e+01
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i

bb.k:                                             ; preds = %bb.i
  %i.ay = tail call double @pow(double noundef %i.at, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i

_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i:        ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.0.i.us.i = phi double [ %i.az, %bb.k ], [ 0.000000e+00, %bb.g ], [ %i.ax, %bb.j ], [ 1.000000e+00, %bb.h ]
  %i.ba = fmul double %.0.i.us.i, %i.aq
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fmul float %i.ap, %i.x
  %i.bd = fadd float %i.bc, %i.bb                 ; 3 uses
  %i.be = fpext float %i.bd to double             ; 3 uses
  %i.bf = fcmp ugt float %i.bd, 0.000000e+00
  br i1 %i.bf, label %bb.l, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i

bb.l:                                             ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i
  %i.bg = fcmp ugt double %i.be, 4.045000e-02
  br i1 %i.bg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = fdiv double %i.be, 1.292000e+01
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i

bb.n:                                             ; preds = %bb.l
  %i.bi = fcmp ult float %i.bd, 1.000000e+00
  br i1 %i.bi, label %bb.o, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i

bb.o:                                             ; preds = %bb.n
  %i.bj = fadd double %i.be, 5.500000e-02
  %i.bk = fdiv double %i.bj, 1.055000e+00
  %i.bl = tail call double @pow(double noundef %i.bk, double noundef 2.400000e+00) #17
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i

_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i:        ; preds = %bb.o, %bb.n, %bb.m, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i
  %.0.i40.us.i = phi double [ %i.bl, %bb.o ], [ %i.bh, %bb.m ], [ 0.000000e+00, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i ], [ 1.000000e+00, %bb.n ]
  %i.bm = fptrunc double %.0.i40.us.i to float
  br label %bb.p

bb.p:                                             ; preds = %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i, %bb.f, %bb.d
  %.sink.i = phi float [ %i.ao, %bb.f ], [ %i.bm, %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i ], [ %0, %bb.d ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0361.us.i
  store float %.sink.i, ptr %i.bn, align 4, !tbaa !112
  %i.bo = add nuw nsw i64 %.0361.us.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bo, %i.ae
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !184

_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit: ; preds = %._crit_edge.i, %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i, %.lr.ph3.i
  %i.bp = tail call noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr noundef nonnull align 8 dereferenceable(504) %1) #17 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %.val.1 = load i64, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 40
  %.val7.1 = load ptr, ptr %i.br, align 8
  br i1 %brmerge14, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.1, label %bb.q

bb.q:                                             ; preds = %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit
  %i.bs = tail call double @pow(double noundef %i.j, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.1

_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.1:       ; preds = %bb.q, %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit
  %.0.i38.i.1 = phi double [ %i.bt, %bb.q ], [ %.mux.mux, %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit ]
  %i.bu = fptrunc double %.0.i38.i.1 to float
  %i.bv = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %.not.i.1 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.1, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1, label %.lr.ph3.i.1

.lr.ph3.i.1:                                      ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.1
  %i.bx = load i64, ptr %i.p, align 8, !tbaa !111
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !110 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %i.ca = load i32, ptr %i.i, align 8, !tbaa !79  ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %.not5.i.1 = icmp eq i32 %i.ca, 0
  br i1 %.not5.i.1, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1, label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %.lr.ph3.i.1, %._crit_edge.us.i.1
  %.02.us.i.1 = phi i64 [ %i.dm, %._crit_edge.us.i.1 ], [ 0, %.lr.ph3.i.1 ] ; 3 uses
  %i.cc = mul i64 %.02.us.i.1, %.val.1
  %i.cd = getelementptr inbounds nuw i8, ptr %.val7.1, i64 %i.cc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cd, i64 64) ]
  %i.ce = mul i64 %.02.us.i.1, %i.bx
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ce ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  br label %bb.r

bb.r:                                             ; preds = %bb.ad, %.lr.ph.us.i.1
  %.0361.us.i.1 = phi i64 [ 0, %.lr.ph.us.i.1 ], [ %i.dl, %bb.ad ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0361.us.i.1
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !112 ; 4 uses
  %i.ci = fcmp ugt float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.cj = fcmp ult float %i.ch, 1.000000e+00
  br i1 %i.cj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0361.us.i.1
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !112
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.cm = fsub float 1.000000e+00, %i.ch
  %i.cn = fpext ninf float %i.ch to double
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0361.us.i.1
  %i.cp = load float, ptr %i.co, align 4, !tbaa !112 ; 3 uses
  %i.cq = fpext float %i.cp to double             ; 3 uses
  %i.cr = fcmp ugt float %i.cp, 0.000000e+00
  br i1 %i.cr, label %bb.v, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1

bb.v:                                             ; preds = %bb.u
  %i.cs = fcmp ult float %i.cp, 1.000000e+00
  br i1 %i.cs, label %bb.w, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1

bb.w:                                             ; preds = %bb.v
  %i.ct = fcmp ugt double %i.cq, 3.130800e-03
  br i1 %i.ct, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = fmul nnan double %i.cq, 1.292000e+01
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1

bb.y:                                             ; preds = %bb.w
  %i.cv = tail call double @pow(double noundef %i.cq, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cv, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1

_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1:      ; preds = %bb.y, %bb.x, %bb.v, %bb.u
  %.0.i.us.i.1 = phi double [ %i.cw, %bb.y ], [ 0.000000e+00, %bb.u ], [ %i.cu, %bb.x ], [ 1.000000e+00, %bb.v ]
  %i.cx = fmul double %.0.i.us.i.1, %i.cn
  %i.cy = fptrunc double %i.cx to float
  %i.cz = fmul float %i.cm, %i.bu
  %i.da = fadd float %i.cz, %i.cy                 ; 3 uses
  %i.db = fpext float %i.da to double             ; 3 uses
  %i.dc = fcmp ugt float %i.da, 0.000000e+00
  br i1 %i.dc, label %bb.z, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1

bb.z:                                             ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1
  %i.dd = fcmp ugt double %i.db, 4.045000e-02
  br i1 %i.dd, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = fdiv double %i.db, 1.292000e+01
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1

bb.ab:                                            ; preds = %bb.z
  %i.df = fcmp ult float %i.da, 1.000000e+00
  br i1 %i.df, label %bb.ac, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1

bb.ac:                                            ; preds = %bb.ab
  %i.dg = fadd double %i.db, 5.500000e-02
  %i.dh = fdiv double %i.dg, 1.055000e+00
  %i.di = tail call double @pow(double noundef %i.dh, double noundef 2.400000e+00) #17
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1

_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1:      ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1
  %.0.i40.us.i.1 = phi double [ %i.di, %bb.ac ], [ %i.de, %bb.aa ], [ 0.000000e+00, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.1 ], [ 1.000000e+00, %bb.ab ]
  %i.dj = fptrunc double %.0.i40.us.i.1 to float
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1, %bb.t, %bb.r
  %.sink.i.1 = phi float [ %i.cl, %bb.t ], [ %i.dj, %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.1 ], [ %0, %bb.r ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0361.us.i.1
  store float %.sink.i.1, ptr %i.dk, align 4, !tbaa !112
  %i.dl = add nuw nsw i64 %.0361.us.i.1, 1        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.dl, %i.cb
  br i1 %exitcond.not.i.1, label %._crit_edge.us.i.1, label %bb.r, !llvm.loop !184

._crit_edge.us.i.1:                               ; preds = %bb.ad
  %i.dm = add nuw nsw i64 %.02.us.i.1, 1          ; 2 uses
  %exitcond7.not.i.1 = icmp eq i64 %i.dm, %i.bw
  br i1 %exitcond7.not.i.1, label %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1, label %.lr.ph.us.i.1, !llvm.loop !183

_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1: ; preds = %._crit_edge.us.i.1, %.lr.ph3.i.1, %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.1
  %i.dn = tail call noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr noundef nonnull align 8 dereferenceable(504) %1) #17 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 16
  %.val.2 = load i64, ptr %i.do, align 8
  %i.dp = getelementptr i8, ptr %i.dn, i64 40
  %.val7.2 = load ptr, ptr %i.dp, align 8
  br i1 %brmerge14, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.2, label %bb.ae

bb.ae:                                            ; preds = %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1
  %i.dq = tail call double @pow(double noundef %i.j, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.2

_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.2:       ; preds = %bb.ae, %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1
  %.0.i38.i.2 = phi double [ %i.dr, %bb.ae ], [ %.mux.mux, %_ZN3jxl12_GLOBAL__N_110AlphaBlendERKNS_6Image3IfEEmfRKNS_5PlaneIfEEPS2_.exit.1 ]
  %i.ds = fptrunc double %.0.i38.i.2 to float
  %i.dt = load i32, ptr %i.o, align 4, !tbaa !106 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.not.i.2 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.2, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread, label %.lr.ph3.i.2

.lr.ph3.i.2:                                      ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.2
  %i.dv = load i64, ptr %i.p, align 8, !tbaa !111
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !110 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dx, i64 64) ]
  %i.dy = load i32, ptr %i.i, align 8, !tbaa !79  ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %.not5.i.2 = icmp eq i32 %i.dy, 0
  br i1 %.not5.i.2, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread, label %.lr.ph.us.i.2

.lr.ph.us.i.2:                                    ; preds = %.lr.ph3.i.2, %._crit_edge.us.i.2
  %.02.us.i.2 = phi i64 [ %i.fk, %._crit_edge.us.i.2 ], [ 0, %.lr.ph3.i.2 ] ; 3 uses
  %i.ea = mul i64 %.02.us.i.2, %.val.2
  %i.eb = getelementptr inbounds nuw i8, ptr %.val7.2, i64 %i.ea ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eb, i64 64) ]
  %i.ec = mul i64 %.02.us.i.2, %i.dv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ec ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ed, i64 64) ]
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %.lr.ph.us.i.2
  %.0361.us.i.2 = phi i64 [ 0, %.lr.ph.us.i.2 ], [ %i.fj, %bb.ar ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.0361.us.i.2
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !112 ; 4 uses
  %i.eg = fcmp ugt float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.eh = fcmp ult float %i.ef, 1.000000e+00
  br i1 %i.eh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0361.us.i.2
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !112
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.ek = fsub float 1.000000e+00, %i.ef
  %i.el = fpext ninf float %i.ef to double
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0361.us.i.2
  %i.en = load float, ptr %i.em, align 4, !tbaa !112 ; 3 uses
  %i.eo = fpext float %i.en to double             ; 3 uses
  %i.ep = fcmp ugt float %i.en, 0.000000e+00
  br i1 %i.ep, label %bb.aj, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2

bb.aj:                                            ; preds = %bb.ai
  %i.eq = fcmp ult float %i.en, 1.000000e+00
  br i1 %i.eq, label %bb.ak, label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2

bb.ak:                                            ; preds = %bb.aj
  %i.er = fcmp ugt double %i.eo, 3.130800e-03
  br i1 %i.er, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = fmul nnan double %i.eo, 1.292000e+01
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2

bb.am:                                            ; preds = %bb.ak
  %i.et = tail call double @pow(double noundef %i.eo, double noundef f0x3FDAAAAAAAAAAAAB) #17
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.et, double 1.055000e+00, double -5.500000e-02)
  br label %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2

_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2:      ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai
  %.0.i.us.i.2 = phi double [ %i.eu, %bb.am ], [ 0.000000e+00, %bb.ai ], [ %i.es, %bb.al ], [ 1.000000e+00, %bb.aj ]
  %i.ev = fmul double %.0.i.us.i.2, %i.el
  %i.ew = fptrunc double %i.ev to float
  %i.ex = fmul float %i.ek, %i.ds
  %i.ey = fadd float %i.ex, %i.ew                 ; 3 uses
  %i.ez = fpext float %i.ey to double             ; 3 uses
  %i.fa = fcmp ugt float %i.ey, 0.000000e+00
  br i1 %i.fa, label %bb.an, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2

bb.an:                                            ; preds = %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2
  %i.fb = fcmp ugt double %i.ez, 4.045000e-02
  br i1 %i.fb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = fdiv double %i.ez, 1.292000e+01
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2

bb.ap:                                            ; preds = %bb.an
  %i.fd = fcmp ult float %i.ey, 1.000000e+00
  br i1 %i.fd, label %bb.aq, label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2

bb.aq:                                            ; preds = %bb.ap
  %i.fe = fadd double %i.ez, 5.500000e-02
  %i.ff = fdiv double %i.fe, 1.055000e+00
  %i.fg = tail call double @pow(double noundef %i.ff, double noundef 2.400000e+00) #17
  br label %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2

_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2:      ; preds = %bb.aq, %bb.ap, %bb.ao, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2
  %.0.i40.us.i.2 = phi double [ %i.fg, %bb.aq ], [ %i.fc, %bb.ao ], [ 0.000000e+00, %_ZN3jxlL19LinearToSrgb8DirectEd.exit.us.i.2 ], [ 1.000000e+00, %bb.ap ]
  %i.fh = fptrunc double %.0.i40.us.i.2 to float
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2, %bb.ah, %bb.af
  %.sink.i.2 = phi float [ %i.ej, %bb.ah ], [ %i.fh, %_ZN3jxlL19Srgb8ToLinearDirectEd.exit.us.i.2 ], [ %0, %bb.af ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0361.us.i.2
  store float %.sink.i.2, ptr %i.fi, align 4, !tbaa !112
  %i.fj = add nuw nsw i64 %.0361.us.i.2, 1        ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %i.fj, %i.dz
  br i1 %exitcond.not.i.2, label %._crit_edge.us.i.2, label %bb.af, !llvm.loop !184

._crit_edge.us.i.2:                               ; preds = %bb.ar
  %i.fk = add nuw nsw i64 %.02.us.i.2, 1          ; 2 uses
  %exitcond7.not.i.2 = icmp eq i64 %i.fk, %i.du
  br i1 %exitcond7.not.i.2, label %_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread, label %.lr.ph.us.i.2, !llvm.loop !183

_ZNK3jxl11ImageBundle8HasAlphaEv.exit.thread:     ; preds = %bb.b, %._crit_edge.us.i.2, %_ZN3jxlL19LinearToSrgb8DirectEd.exit39.i.2, %.lr.ph3.i.2, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl11ImageBundleD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -56 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #17
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !185

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, %bb.b
  %i.g = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #20
  br label %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEED2B8nn180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl13ColorEncodingE, i64 16), ptr %i.m, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60   ; 4 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i1, label %_ZN3jxl13ColorEncodingD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEED2B8nn180100Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.o, ptr %i.p, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #20
  br label %_ZN3jxl13ColorEncodingD2Ev.exit

_ZN3jxl13ColorEncodingD2Ev.exit:                  ; preds = %_ZNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEED2B8nn180100Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.w) #17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.x) #17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118
  %i.ad = load i64, ptr %i.y, align 8
  %i.ae = and i64 %i.ad, -2
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #20
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %_ZN3jxl13ColorEncodingD2Ev.exit, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !76 ; 3 uses
  store ptr null, ptr %i.af, align 8, !tbaa !76
  %.not.i.i2 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i2, label %_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit, label %_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i

_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(296) %i.ag) #17, !inline_history !186
  br label %_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit

_ZNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %_ZNKSt3__114default_deleteIN3jxl4jpeg8JPEGDataEEclB8nn180100EPS3_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm(ptr dead_on_unwind noalias writable sret(%"class.jxl::StatusOr.37") align 8 %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.jxl::Plane", align 8        ; 8 uses
  %i.a = trunc nuw i64 %2 to i32
  %i.b = trunc nuw i64 %3 to i32
  %i.c = icmp ult i64 %2, 4294967296
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.d, align 8, !tbaa !108
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i64 %3, 4294967296
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.f, align 8, !tbaa !108
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #17
  %i.g = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i64 noundef %4) #17 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.h, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.g, ptr %i.i, align 8, !tbaa !108
  br label %bb.g

.critedge:                                        ; preds = %bb.e
  store i32 0, ptr %i.i, align 8, !tbaa !108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !109
  store i64 %i.n, ptr %i.l, align 8, !tbaa !109
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8nn180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 3 uses
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPhS1_EET0_T_S3_S2_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
end_hunk_1
begin_hunk_2_@_ZN3jxl22YCbCrChromaSubsampling11VisitFieldsEPNS_7VisitorE:bb.a

declare noundef ptr @_ZN3jxl11ImageBundle5alphaEv(ptr noundef nonnull align 8 dereferenceable(504)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl6FieldsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #12

declare i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, i64 noundef) unnamed_addr #2

declare void @_ZN3jxl13ImageMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(417)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { noreturn "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #17 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #18 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #21 = { noreturn "no-builtin-fread" "no-builtin-fwrite" }
attributes #22 = { noreturn nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !113}
!1 = distinct !{!1, !113}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !11, i64 0}
!13 = !{!"p1 _ZTSN3jxl4jpeg8JPEGDataE", !11, i64 0}
!14 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg8JPEGDataELi0ELb0EEE", !13, i64 0}
!15 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !14, i64 0}
!16 = !{!"_ZTSNSt3__110unique_ptrIN3jxl4jpeg8JPEGDataENS_14default_deleteIS3_EEEE", !15, i64 0}
!17 = !{!"_ZTSN3jxl14ColorTransformE", !7, i64 0}
!18 = !{!"_ZTSN3jxl6FieldsE"}
!19 = !{!"_ZTSN3jxl22YCbCrChromaSubsamplingE", !18, i64 0, !7, i64 8, !7, i64 20, !7, i64 21}
!20 = !{!"_ZTSN3jxl11FrameOriginE", !8, i64 0, !8, i64 4}
!21 = !{!"bool", !7, i64 0}
!22 = !{!"_ZTSN3jxl9BlendModeE", !7, i64 0}
!23 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !7, i64 0}
!24 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !23, i64 0}
!25 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !24, i64 0}
!26 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !25, i64 0}
!27 = !{!"p1 _ZTSN3jxl13ImageMetadataE", !11, i64 0}
!28 = !{!"_ZTSN3jxl6Image3IfEE", !7, i64 0}
!29 = !{!"_ZTSN3jxl3cms10WhitePointE", !7, i64 0}
!30 = !{!"_ZTSN3jxl3cms9PrimariesE", !7, i64 0}
!31 = !{!"_ZTSN3jxl3cms15RenderingIntentE", !7, i64 0}
!32 = !{!"p1 omnipotent char", !11, i64 0}
!33 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !32, i64 0}
!34 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !33, i64 0}
!35 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !32, i64 0, !32, i64 8, !34, i64 16}
!36 = !{!"_ZTSN3jxl3cms10ColorSpaceE", !7, i64 0}
!37 = !{!"_ZTSN3jxl3cms16TransferFunctionE", !7, i64 0}
!38 = !{!"_ZTSN3jxl3cms22CustomTransferFunctionE", !21, i64 0, !8, i64 4, !37, i64 8}
!39 = !{!"_ZTSN3jxl3cms8CustomxyE", !8, i64 0, !8, i64 4}
!40 = !{!"_ZTSN3jxl3cms13ColorEncodingE", !29, i64 0, !30, i64 4, !31, i64 8, !21, i64 12, !35, i64 16, !36, i64 40, !21, i64 44, !38, i64 48, !39, i64 60, !39, i64 68, !39, i64 76, !39, i64 84}
!41 = !{!"_ZTSN3jxl8CustomxyE", !18, i64 0, !39, i64 8}
!42 = !{!"_ZTSN3jxl22CustomTransferFunctionE", !18, i64 0, !36, i64 8, !38, i64 12}
!43 = !{!"_ZTSN3jxl13ColorEncodingE", !18, i64 0, !21, i64 8, !21, i64 9, !40, i64 16, !41, i64 112, !42, i64 128, !41, i64 152, !41, i64 168, !41, i64 184}
!44 = !{!"p1 _ZTSN3jxl5PlaneIfEE", !11, i64 0}
!45 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl5PlaneIfEELi0ELb0EEE", !44, i64 0}
!46 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !45, i64 0}
!47 = !{!"_ZTSNSt3__16vectorIN3jxl5PlaneIfEENS_9allocatorIS3_EEEE", !44, i64 0, !44, i64 8, !46, i64 16}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTSN3jxl11ImageBundleE", !12, i64 0, !16, i64 8, !17, i64 16, !19, i64 24, !20, i64 48, !8, i64 56, !8, i64 60, !21, i64 64, !21, i64 65, !22, i64 68, !26, i64 72, !27, i64 96, !28, i64 104, !43, i64 272, !47, i64 472, !48, i64 496}
!50 = !{!49, !12, i64 0}
!51 = !{!49, !27, i64 96}
!52 = !{!"_ZTSN3jxl8BitDepthE", !18, i64 0, !21, i64 8, !8, i64 12, !8, i64 16}
!53 = !{!"float", !7, i64 0}
!54 = !{!"p1 _ZTSN3jxl16ExtraChannelInfoE", !11, i64 0}
!55 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl16ExtraChannelInfoELi0ELb0EEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__16vectorIN3jxl16ExtraChannelInfoENS_9allocatorIS2_EEEE", !54, i64 0, !54, i64 8, !56, i64 16}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!35, !32, i64 0}
!61 = !{!35, !32, i64 8}
!62 = !{!8, !8, i64 0}
!63 = !{!57, !54, i64 0}
!64 = !{!57, !54, i64 8}
!65 = !{!14, !13, i64 0}
!66 = !{!49, !17, i64 16}
!67 = !{!49, !22, i64 68}
!68 = !{!"_ZTSN3jxl12ExtraChannelE", !7, i64 0}
!69 = !{!"_ZTSN3jxl16ExtraChannelInfoE", !18, i64 0, !21, i64 8, !68, i64 12, !52, i64 16, !8, i64 40, !26, i64 48, !21, i64 72, !7, i64 76, !8, i64 92}
!70 = !{!69, !68, i64 12}
!71 = !{!"vtable pointer", !6, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN3jxl10StatusCodeE", !7, i64 0}
!74 = !{!"_ZTSN3jxl8StatusOrINS_11ImageBundleEEE", !7, i64 0, !73, i64 504}
!75 = !{!74, !73, i64 504}
!76 = !{!13, !13, i64 0}
!77 = !{!"_ZTSN3jxl13AlignedMemoryE", !11, i64 0, !12, i64 8, !11, i64 16}
!78 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !48, i64 16, !77, i64 24, !48, i64 48}
!79 = !{!78, !8, i64 0}
!80 = !{!47, !44, i64 0}
!81 = !{!47, !44, i64 8}
!82 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !11, i64 0}
!83 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !82, i64 0}
!84 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !82, i64 0, !82, i64 8, !84, i64 16}
!86 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg13AppMarkerTypeELi0ELb0EEE", !11, i64 0}
!87 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !86, i64 0}
!88 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg13AppMarkerTypeENS_9allocatorIS3_EEEE", !11, i64 0, !11, i64 8, !87, i64 16}
!89 = !{!"p1 _ZTSN3jxl4jpeg14JPEGQuantTableE", !11, i64 0}
!90 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg14JPEGQuantTableELi0ELb0EEE", !89, i64 0}
!91 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg14JPEGQuantTableENS_9allocatorIS3_EEEE", !89, i64 0, !89, i64 8, !91, i64 16}
!93 = !{!"p1 _ZTSN3jxl4jpeg15JPEGHuffmanCodeE", !11, i64 0}
!94 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg15JPEGHuffmanCodeELi0ELb0EEE", !93, i64 0}
!95 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !94, i64 0}
!96 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg15JPEGHuffmanCodeENS_9allocatorIS3_EEEE", !93, i64 0, !93, i64 8, !95, i64 16}
!97 = !{!"p1 _ZTSN3jxl4jpeg13JPEGComponentE", !11, i64 0}
!98 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg13JPEGComponentELi0ELb0EEE", !97, i64 0}
!99 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEEE", !98, i64 0}
!100 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg13JPEGComponentENS_9allocatorIS3_EEEE", !97, i64 0, !97, i64 8, !99, i64 16}
!101 = !{!"p1 _ZTSN3jxl4jpeg12JPEGScanInfoE", !11, i64 0}
!102 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg12JPEGScanInfoELi0ELb0EEE", !101, i64 0}
!103 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !102, i64 0}
!104 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg12JPEGScanInfoENS_9allocatorIS3_EEEE", !101, i64 0, !101, i64 8, !103, i64 16}
!105 = !{!"_ZTSN3jxl4jpeg8JPEGDataE", !18, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !85, i64 24, !88, i64 48, !85, i64 72, !92, i64 96, !96, i64 120, !100, i64 144, !104, i64 168, !35, i64 192, !85, i64 216, !35, i64 240, !21, i64 264, !35, i64 272}
!106 = !{!78, !8, i64 4}
!107 = !{!"_ZTSN3jxl8StatusOrINS_5PlaneIfEEEE", !7, i64 0, !73, i64 56}
!108 = !{!107, !73, i64 56}
!109 = !{!78, !48, i64 48}
!110 = !{!77, !11, i64 16}
!111 = !{!78, !48, i64 16}
!112 = !{!53, !53, i64 0}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !{!"_ZTSN3jxl8StatusOrINS_6Image3IfEEEE", !7, i64 0, !73, i64 168}
!115 = !{!114, !73, i64 168}
!116 = !{!44, !44, i64 0}
!117 = !{!32, !32, i64 0}
!118 = !{!7, !7, i64 0}
!119 = !{!11, !11, i64 0}
!120 = distinct !{!120, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13ImageMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!121 = distinct !{!121, !120, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13ImageMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!122 = distinct !{!122, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructPNS1_13ImageMetadataEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!123 = distinct !{!123, !122, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructPNS1_13ImageMetadataEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13ImageMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!125 = distinct !{!125, !124, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl13ImageMetadataEJEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructPNS1_13ImageMetadataEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!127 = distinct !{!127, !126, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl11ImageBundleEJRP22JxlMemoryManagerStructPNS1_13ImageMetadataEEEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!128 = distinct !{null}
!129 = distinct !{!129, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!130 = distinct !{!130, !129, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!131 = distinct !{!131, i1 false, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !131}
!135 = distinct !{!135, !113, !160, !161}
!136 = distinct !{!136, !113}
!137 = distinct !{!137, !113, !160}
!138 = distinct !{null, null, null}
!139 = !{!121}
!140 = !{!"_ZTSN3jxl10SizeHeaderE", !18, i64 0, !21, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!141 = !{!"_ZTSN3jxl11ToneMappingE", !18, i64 0, !21, i64 8, !53, i64 12, !53, i64 16, !21, i64 20, !53, i64 24}
!142 = !{!"_ZTSN3jxl13PreviewHeaderE", !18, i64 0, !21, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!143 = !{!"_ZTSN3jxl15AnimationHeaderE", !18, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !21, i64 20}
!144 = !{!"_ZTSN3jxl13ImageMetadataE", !18, i64 0, !21, i64 8, !52, i64 16, !21, i64 40, !21, i64 41, !43, i64 48, !8, i64 248, !21, i64 252, !21, i64 253, !21, i64 254, !140, i64 256, !141, i64 288, !8, i64 320, !57, i64 328, !142, i64 352, !143, i64 384, !48, i64 408, !21, i64 416}
!145 = !{!144, !21, i64 8}
!146 = !{!144, !8, i64 320}
!147 = !{!123}
!148 = !{!43, !36, i64 56}
!149 = !{!125}
!150 = !{!127}
!151 = !{!"p1 _ZTSN3jxl11ImageBundleE", !11, i64 0}
!152 = !{!151, !151, i64 0}
!153 = !{!105, !8, i64 8}
!154 = !{!105, !8, i64 12}
!155 = !{!130}
!156 = !{!132}
!157 = !{!133}
!158 = !{!134}
!159 = !{!132, !133}
!160 = !{!"llvm.loop.isvectorized", i32 1}
!161 = !{!"llvm.loop.unroll.runtime.disable"}
!162 = distinct !{!162, i1 true, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev"}
!163 = distinct !{!163, !162, !"_ZNO3jxl8StatusOrINS_6Image3IfEEE6value_Ev: argument 0"}
!164 = distinct !{!164, i1 true, !"_ZN3jxl11CopyImageToINS_6Image3IfEEEENS_6StatusERKT_PS4_"}
!165 = distinct !{!165, !164, !"_ZN3jxl11CopyImageToINS_6Image3IfEEEENS_6StatusERKT_PS4_: argument 0"}
!166 = distinct !{!166, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!167 = distinct !{!167, !166, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!168 = distinct !{!168, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!169 = distinct !{!169, !168, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!170 = distinct !{!170, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_"}
!171 = distinct !{!171, !170, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5PlaneIT_EEPS4_: argument 0"}
!172 = distinct !{!172, !113}
!173 = distinct !{!173, i1 true, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl4jpeg8JPEGDataEJRS3_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_"}
!174 = distinct !{!174, !173, !"_ZNSt3__111make_uniqueB8nn180100IN3jxl4jpeg8JPEGDataEJRS3_EEENS_11__unique_ifIT_E15__unique_singleEDpOT0_: argument 0"}
!175 = distinct !{null, null, null}
!176 = !{!163}
!177 = !{!165}
!178 = !{!48, !48, i64 0}
!179 = !{!167}
!180 = !{!169}
!181 = !{!171}
!182 = !{!174}
!183 = distinct !{!183, !113}
!184 = distinct !{!184, !113}
!185 = distinct !{!185, !113}
!186 = distinct !{null, null, null}
!187 = distinct !{!187, !113}
!188 = distinct !{!188, !113}
!189 = distinct !{null, null, null, null}
!190 = distinct !{!190, !113}
!191 = distinct !{null, null, null, null, null, null}
!192 = !{!54, !54, i64 0}
!193 = !{!69, !8, i64 40}
!194 = !{i64 0, i64 24, !118}
!195 = distinct !{!195, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!196 = distinct !{!196, !195, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!197 = distinct !{!197, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!198 = distinct !{!198, !197, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!199 = distinct !{!199, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!200 = distinct !{!200, !199, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!201 = distinct !{!201, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!202 = distinct !{!202, !201, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!203 = distinct !{!203, i1 true, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm"}
!204 = distinct !{!204, !203, !"_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm: argument 0"}
!205 = distinct !{!205, i1 true, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev"}
!206 = distinct !{!206, !205, !"_ZNO3jxl8StatusOrINS_5PlaneIfEEE6value_Ev: argument 0"}
!207 = !{!196}
!208 = !{!198}
!209 = !{!200}
!210 = !{!202}
!211 = !{!204}
!212 = !{!206}
!213 = distinct !{!213, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!214 = distinct !{!214, !213, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0"}
!215 = distinct !{!215, !113}
!216 = distinct !{!216, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!217 = distinct !{!217, !216, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0:It1"}
!218 = distinct !{!218, i1 true, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_"}
!219 = distinct !{!219, !218, !"_ZN3jxl11CopyImageToIfEENS_6StatusERKNS_5RectTImEERKNS_5PlaneIT_EES5_PS8_: argument 0:It2"}
!220 = !{!"_ZTSN3jxl5RectTImEE", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24}
!221 = !{!220, !48, i64 16}
!222 = !{!214}
!223 = !{!220, !48, i64 0}
!224 = !{!220, !48, i64 8}
!225 = !{!220, !48, i64 24}
!226 = !{!217}
!227 = !{!219}
!228 = distinct !{!228, !113}
!229 = !{!85, !82, i64 0}
!230 = !{!85, !82, i64 8}
!231 = !{!82, !82, i64 0}
!232 = !{!88, !11, i64 0}
!233 = !{!88, !11, i64 8}
!234 = !{!92, !89, i64 0}
!235 = !{!92, !89, i64 8}
!236 = !{!89, !89, i64 0}
!237 = !{!96, !93, i64 0}
!238 = !{!96, !93, i64 8}
!239 = !{!93, !93, i64 0}
!240 = !{!104, !101, i64 0}
!241 = !{!104, !101, i64 8}
!242 = !{!101, !101, i64 0}
!243 = !{!105, !21, i64 264}
!244 = distinct !{!244, !113}
!245 = !{!100, !97, i64 0}
!246 = !{!100, !97, i64 8}
!247 = !{!97, !97, i64 0}
!248 = !{!"p1 short", !11, i64 0}
!249 = !{!"_ZTSNSt3__122__compressed_pair_elemIPsLi0ELb0EEE", !248, i64 0}
!250 = !{!"_ZTSNSt3__117__compressed_pairIPsNS_9allocatorIsEEEE", !249, i64 0}
!251 = !{!"_ZTSNSt3__16vectorIsNS_9allocatorIsEEEE", !248, i64 0, !248, i64 8, !250, i64 16}
!252 = !{!251, !248, i64 0}
!253 = !{!251, !248, i64 8}
!254 = !{!248, !248, i64 0}
!255 = distinct !{!255, !113}
!256 = !{!"p1 int", !11, i64 0}
!257 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !256, i64 0}
!258 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !257, i64 0}
!259 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !256, i64 0, !256, i64 8, !258, i64 16}
!260 = !{!259, !256, i64 0}
!261 = !{!259, !256, i64 8}
!262 = !{!256, !256, i64 0}
!263 = !{!"p1 _ZTSN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoE", !11, i64 0}
!264 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoELi0ELb0EEE", !263, i64 0}
!265 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEEE", !264, i64 0}
!266 = !{!"_ZTSNSt3__16vectorIN3jxl4jpeg12JPEGScanInfo16ExtraZeroRunInfoENS_9allocatorIS4_EEEE", !263, i64 0, !263, i64 8, !265, i64 16}
!267 = !{!266, !263, i64 0}
!268 = !{!266, !263, i64 8}
!269 = !{!263, !263, i64 0}
!270 = !{!49, !48, i64 496}
!271 = !{!19, !7, i64 20}
!272 = !{!19, !7, i64 21}
end_hunk_2
