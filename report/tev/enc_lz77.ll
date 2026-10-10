Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_lz77?download=true
inline.NumInlined: 1422
inline.NumDeleted: 784
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_119SymbolCostEstimatorC2EmbRKNSt3__16vectorINS3_INS_5TokenENS2_9allocatorIS4_EEEENS5_IS7_EEEERKNS_10LZ77ParamsE:bb.a
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 2
  %.sroa.speculated62.epil = tail call i64 @llvm.umax.i64(i64 %.epil.init, i64 %i.ec)
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa, %.lr.ph127.epil.preheader
  %.sroa.speculated62.lcssa = phi i64 [ %.sroa.speculated62.1, %.unr-lcssa ], [ %.sroa.speculated62.epil, %.lr.ph127.epil.preheader ] ; 2 uses
  store i64 %.sroa.speculated62.lcssa, ptr %0, align 8, !tbaa !37
  %i.ed = mul i64 %.sroa.speculated62.lcssa, %1   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !48
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 2                 ; 3 uses
  %i.el = icmp ult i64 %i.ek, %i.ed
  br i1 %i.el, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.em = sub nuw i64 %i.ed, %i.ek
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.em) #19
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.n:                                             ; preds = %.thread, %bb.l
  %i.en = phi i64 [ %i.y, %.thread ], [ %i.ek, %bb.l ]
  %i.eo = phi ptr [ %i.u, %.thread ], [ %i.eg, %bb.l ]
  %i.ep = phi ptr [ %i.s, %.thread ], [ %i.ee, %bb.l ]
  %i.eq = phi i64 [ 0, %.thread ], [ %i.ed, %bb.l ] ; 2 uses
  %i.er = icmp ugt i64 %i.en, %i.eq
  br i1 %i.er, label %bb.o, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.eq
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !48
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 2                 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, %1
  br i1 %i.fa, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56.thread, label %bb.p

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56.thread: ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit
  %i.fb = sub nuw i64 %1, %i.ez
  tail call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fb) #19
  br label %.lr.ph135.preheader

bb.p:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit
  %i.fc = icmp ugt i64 %i.ez, %1
  br i1 %i.fc, label %bb.q, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56

bb.q:                                             ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %1
  store ptr %i.fd, ptr %i.et, align 8, !tbaa !48
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56: ; preds = %bb.p, %bb.q
  br i1 %.not.i, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56.thread, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56
  br label %.lr.ph135

.lr.ph127:                                        ; preds = %.lr.ph127, %.lr.ph127.preheader.new
  %i.fe = phi i64 [ 0, %.lr.ph127.preheader.new ], [ %.sroa.speculated62.1, %.lr.ph127 ]
  %.049125 = phi i64 [ 0, %.lr.ph127.preheader.new ], [ %i.fw, %.lr.ph127 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph127.preheader.new ], [ %niter.next.1, %.lr.ph127 ]
  %i.ff = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %.049125 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !118
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !97
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = ashr exact i64 %i.fl, 2
  %.sroa.speculated62 = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.fm)
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %.pre, i64 %.049125 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !118
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !97
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %.sroa.speculated62.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated62, i64 %i.fv) ; 3 uses
  %i.fw = add nuw i64 %.049125, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph127, !llvm.loop !306

._crit_edge136:                                   ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit56
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %._crit_edge136.thread

._crit_edge136.thread:                            ; preds = %._crit_edge133, %._crit_edge136
  %.pre1.i.i182 = phi ptr [ %.pre, %._crit_edge136 ], [ %i.gu, %._crit_edge133 ] ; 4 uses
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !316 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %.pre1.i.i182, %i.fx
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge136.thread, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.fy, %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i ], [ %i.fx, %._crit_edge136.thread ] ; 3 uses
  %i.fy = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -40 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !97 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ga = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -32
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !118
  %i.gb = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !119
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.fz to i64
  %i.gf = sub i64 %i.gd, %i.ge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gf) #20
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i: ; preds = %bb.r, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.pre1.i.i182, %i.fy
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !307

_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN3jxl9HistogramEEEE7destroyB8nn180100IS3_vEEvRS4_PT_.exit.i.i.i.i, %._crit_edge136.thread
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !315
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %.pre1.i.i182 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  tail call void @_ZdlPvm(ptr noundef %.pre1.i.i182, i64 noundef %i.gj) #20
  br label %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %._crit_edge136, %_ZNSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %._crit_edge133
  %i.gk = phi ptr [ %i.gu, %._crit_edge133 ], [ %.pre, %.lr.ph135.preheader ] ; 3 uses
  %.048134 = phi i64 [ %i.ha, %._crit_edge133 ], [ 0, %.lr.ph135.preheader ] ; 6 uses
  %i.gl = getelementptr inbounds nuw [40 x i8], ptr %i.gk, i64 %.048134 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !320
  %i.go = uitofp i64 %i.gn to float
  %i.gp = fadd float %i.go, f0x322BCC77
  %i.gq = fdiv float 1.000000e+00, %i.gp          ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !118
  %i.gt = load ptr, ptr %i.gl, align 8, !tbaa !97 ; 2 uses
  %.not139 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not139, label %._crit_edge133, label %.lr.ph132

._crit_edge133:                                   ; preds = %bb.v, %.lr.ph135
  %i.gu = phi ptr [ %i.gk, %.lr.ph135 ], [ %i.ig, %bb.v ] ; 2 uses
  %.047.lcssa = phi float [ 0.000000e+00, %.lr.ph135 ], [ %i.im, %bb.v ]
  %i.gv = fneg float %.047.lcssa
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gq, float 6.000000e+00) ; 2 uses
  %i.gx = fcmp ogt float %i.gw, 0.000000e+00
  %.sroa.speculated = select i1 %i.gx, float %i.gw, float 0.000000e+00
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.048134
  store float %.sroa.speculated, ptr %i.gz, align 4, !tbaa !57
  %i.ha = add nuw i64 %.048134, 1                 ; 2 uses
  %exitcond146.not = icmp eq i64 %i.ha, %1
  br i1 %exitcond146.not, label %._crit_edge136.thread, label %.lr.ph135, !llvm.loop !308

.lr.ph132:                                        ; preds = %.lr.ph135, %bb.v
  %i.hb = phi ptr [ %i.ii, %bb.v ], [ %i.gt, %.lr.ph135 ]
  %i.hc = phi ptr [ %i.ig, %bb.v ], [ %i.gk, %.lr.ph135 ]
  %.046130 = phi i64 [ %i.in, %bb.v ], [ 0, %.lr.ph135 ] ; 4 uses
  %.047129 = phi float [ %i.im, %bb.v ], [ 0.000000e+00, %.lr.ph135 ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.046130
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !93 ; 2 uses
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %cond = icmp eq i32 %i.he, 0
  br i1 %cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph132
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hc, i64 %.048134
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !320
  %.not52 = icmp eq i64 %i.hi, %i.hf
  br i1 %.not52, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hj = uitofp i64 %i.hf to float
  %i.hk = fmul float %i.gq, %i.hj
  %i.hl = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.hm = bitcast <4 x float> %i.hl to <4 x i32>
  %i.hn = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ho = add <4 x i32> %i.hn, splat (i32 -1059760811) ; 2 uses
  %i.hp = and <4 x i32> %i.ho, <i32 -8388608, i32 poison, i32 poison, i32 poison>
  %i.hq = sub <4 x i32> %i.hn, %i.hp
  %i.hr = bitcast <4 x i32> %i.hq to <4 x float>
  fence acq_rel
  %i.hs = extractelement <4 x float> %i.hr, i64 0
  %i.ht = fadd float %i.hs, -1.000000e+00         ; 4 uses
  %6 = fmul float %i.ht, f0x3F3E11C7
  %.scalar.i.i.i = fadd float %6, f0x3FB6E02B
  %7 = fmul float %i.ht, f0x3E32458C
  fence acq_rel
  %8 = fmul float %i.ht, %.scalar.i.i.i
  %9 = fadd float %7, f0x3F813CED
  %10 = fmul float %i.ht, %9
  fence acq_rel
  %11 = fadd float %10, f0x3F7D8625
  %12 = fadd float %8, f0xB5F85AB0
  %i.hu = fdiv float %12, %11
  %i.hv = extractelement <4 x i32> %i.ho, i64 0
  %i.hw = ashr i32 %i.hv, 23
  %i.hx = sitofp i32 %i.hw to float
  %i.hy = fadd float %i.hu, %i.hx
  %i.hz = fneg float %i.hy                        ; 2 uses
  br i1 %2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ia = tail call noundef float @llvm.ceil.f32(float %i.hz)
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph132, %bb.s, %bb.t, %bb.u
  %.0 = phi float [ %i.ia, %bb.u ], [ %i.hz, %bb.t ], [ 0.000000e+00, %bb.s ], [ 1.200000e+01, %.lr.ph132 ] ; 2 uses
  %i.ib = load i64, ptr %0, align 8, !tbaa !51
  %i.ic = mul i64 %i.ib, %.048134
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %i.ic
  %i.if = getelementptr [4 x i8], ptr %i.ie, i64 %.046130
  store float %.0, ptr %i.if, align 4, !tbaa !57
  %i.ig = load ptr, ptr %5, align 8, !tbaa !314   ; 3 uses
  %i.ih = getelementptr inbounds nuw [40 x i8], ptr %i.ig, i64 %.048134 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !97 ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.046130
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !93
  %i.il = sitofp i32 %i.ik to float
  %i.im = tail call float @llvm.fmuladd.f32(float %.0, float %i.il, float %.047129) ; 2 uses
  %i.in = add nuw i64 %.046130, 1                 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !118
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.ii to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 2
  %i.iu = icmp ult i64 %i.in, %i.it
  br i1 %i.iu, label %.lr.ph132, label %._crit_edge133, !llvm.loop !309
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS0_IN3jxl5TokenENS_9allocatorIS2_EEEENS3_IS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str) #17
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.1, ptr noundef %0) #22
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #5 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.2) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl9HistogramENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str) #17
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not = icmp ult i64 %i.h, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq i64 %1, 0
  br i1 %.not6.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.idx.i = shl i64 %1, 2                         ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 %.idx.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.d, i8 0, i64 %.idx.i, i1 false), !tbaa !57
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.4.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.i, %.lr.ph.preheader.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.c, align 8, !tbaa !48
  br label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add i64 %i.m, %1                         ; 2 uses
  %i.o = icmp ugt i64 %i.n, 4611686018427387903
  br i1 %i.o, label %bb.d, label %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  unreachable

_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit: ; preds = %bb.c
  %i.p = sub i64 %i.e, %i.k                       ; 2 uses
  %.not.i = icmp ult i64 %i.p, 9223372036854775804
  %i.q = ashr exact i64 %i.p, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.n)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 4611686018427387903 ; 4 uses
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit
  %i.s = icmp ugt i64 %.0.i, 4611686018427387903
  br i1 %i.s, label %bb.f, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #17
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i: ; preds = %bb.e
  %i.t = shl nuw i64 %.0.i, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #18
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !48
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !49
  br label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endEm.exit

_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endEm.exit: ; preds = %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i
  %i.v = phi ptr [ %.pre14, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.j, %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit ] ; 6 uses
  %i.w = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ %i.d, %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit ] ; 5 uses
  %storemerge.i = phi ptr [ %i.u, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i ], [ null, %_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.l ; 6 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %storemerge.i, i64 %.0.i
  %.idx.i6 = shl i64 %1, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 %.idx.i6
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i6, i1 false), !tbaa !57
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endEm.exit
  %i.aa = ptrtoaddr ptr %i.w to i64
  %i.ab = ptrtoaddr ptr %i.v to i64
  %i.ac = add i64 %i.aa, -4
  %i.ad = sub i64 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.ag = mul i64 %n.vec, -4                      ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.w, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep19, i64 -16
end_hunk_0
