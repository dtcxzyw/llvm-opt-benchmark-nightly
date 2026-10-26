Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86_avx?download=true
inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNK4ncnn18GridSample_x86_avx7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  store i32 %i.kl, ptr %i.a, align 4, !tbaa !23
  %i.km = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !37
  %i.ko = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.kq = mul nsw i32 %i.kp, %i.kn
  store i32 %i.kq, ptr %i.b, align 4, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !39
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.jo, i32 %i.ks)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p1ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %i.g, ptr nonnull align 8 dereferenceable(72) %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.dt:                                            ; preds = %bb.do
  br i1 %i.jd, label %bb.du, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.du:                                            ; preds = %bb.dt
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !57
  switch i32 %i.ku, label %_ZNK4ncnn3Mat5emptyEv.exit171.thread [
    i32 1, label %bb.dv
    i32 2, label %bb.dw
  ]

bb.dv:                                            ; preds = %bb.du
  call fastcc void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

bb.dw:                                            ; preds = %bb.du
  call fastcc void @_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZNK4ncnn3Mat5emptyEv.exit171.thread

_ZNK4ncnn3Mat5emptyEv.exit171.thread:             ; preds = %bb.ci, %bb.bu, %bb.br, %bb.bd, %bb.ap, %bb.ab, %bb.y, %bb.dk, %bb.dn, %bb.dm, %bb.dh, %bb.dj, %bb.di, %bb.dg, %bb.dl, %bb.db, %bb.de, %bb.dd, %bb.cy, %bb.da, %bb.cz, %bb.cx, %bb.dc, %bb.dt, %bb.dw, %bb.dv, %bb.dq, %bb.ds, %bb.dr, %.thread, %bb.dp, %bb.du, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit166, %_ZNK4ncnn3Mat5emptyEv.exit167, %_ZNK4ncnn3Mat5emptyEv.exit168, %_ZNK4ncnn3Mat5emptyEv.exit169, %_ZNK4ncnn3Mat5emptyEv.exit170, %_ZNK4ncnn3Mat5emptyEv.exit171, %bb.cv, %bb.ct, %bb.cf, %bb.bo, %bb.ba, %bb.am
  %.0 = phi i32 [ -100, %bb.am ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit171 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit170 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit169 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit168 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit167 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit166 ], [ -100, %bb.cv ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.ct ], [ -100, %bb.cf ], [ -100, %bb.bo ], [ -100, %bb.ba ], [ 0, %bb.du ], [ 0, %bb.dp ], [ 0, %.thread ], [ -100, %bb.bu ], [ 0, %bb.dr ], [ 0, %bb.ds ], [ 0, %bb.dq ], [ 0, %bb.dv ], [ 0, %bb.dw ], [ 0, %bb.dt ], [ 0, %bb.db ], [ 0, %bb.dk ], [ -100, %bb.y ], [ -100, %bb.ab ], [ -100, %bb.ap ], [ -100, %bb.bd ], [ -100, %bb.br ], [ 0, %bb.dc ], [ 0, %bb.cx ], [ 0, %bb.cz ], [ 0, %bb.da ], [ 0, %bb.cy ], [ 0, %bb.dd ], [ 0, %bb.de ], [ 0, %bb.dl ], [ 0, %bb.dg ], [ 0, %bb.di ], [ 0, %bb.dj ], [ 0, %bb.dh ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ -100, %bb.ci ]
  %i.kv = load ptr, ptr %i.v, align 8, !tbaa !51  ; 2 uses
  %.not.i177 = icmp eq ptr %i.kv, null
  br i1 %.not.i177, label %_ZN4ncnn3MatD2Ev.exit173, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171.thread
  %i.kw = atomicrmw add ptr %i.kv, i32 -1 acq_rel, align 4
  %i.kx = icmp eq i32 %i.kw, 1
  br i1 %i.kx, label %bb.dy, label %_ZN4ncnn3MatD2Ev.exit173

bb.dy:                                            ; preds = %bb.dx
  %i.ky = load ptr, ptr %i.y, align 16, !tbaa !52 ; 3 uses
  %.not3.i178 = icmp eq ptr %i.ky, null
  %i.kz = load ptr, ptr %5, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i178, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !22
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef %i.kz)
          to label %_ZN4ncnn3MatD2Ev.exit173 unwind label %bb.ec, !inline_history !48

bb.ea:                                            ; preds = %bb.dy
  %.not.i198 = icmp eq ptr %i.kz, null
  br i1 %.not.i198, label %_ZN4ncnn3MatD2Ev.exit173, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @free(ptr noundef nonnull %i.kz) #11
  br label %_ZN4ncnn3MatD2Ev.exit173

bb.ec:                                            ; preds = %bb.dz
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit173:                         ; preds = %bb.dx, %_ZNK4ncnn3Mat5emptyEv.exit171.thread, %bb.dz, %bb.ea, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.lf = load ptr, ptr %i.r, align 8, !tbaa !51  ; 2 uses
  %.not.i181 = icmp eq ptr %i.lf, null
  br i1 %.not.i181, label %_ZN4ncnn3MatD2Ev.exit172, label %bb.ed

bb.ed:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit173
  %i.lg = atomicrmw add ptr %i.lf, i32 -1 acq_rel, align 4
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.ee, label %_ZN4ncnn3MatD2Ev.exit172

bb.ee:                                            ; preds = %bb.ed
  %i.li = load ptr, ptr %i.s, align 8, !tbaa !52  ; 3 uses
  %.not3.i182 = icmp eq ptr %i.li, null
  %i.lj = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i182, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lj)
          to label %_ZN4ncnn3MatD2Ev.exit172 unwind label %bb.ei, !inline_history !48

bb.eg:                                            ; preds = %bb.ee
  %.not.i196 = icmp eq ptr %i.lj, null
  br i1 %.not.i196, label %_ZN4ncnn3MatD2Ev.exit172, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef nonnull %i.lj) #11
  br label %_ZN4ncnn3MatD2Ev.exit172

bb.ei:                                            ; preds = %bb.ef
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit172:                         ; preds = %bb.ed, %_ZN4ncnn3MatD2Ev.exit173, %bb.ef, %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn18GridSample_x86_avxC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn18GridSample_x86_avxE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !63
  ret void
}

declare void @_ZN4ncnn10GridSampleC2Ev(ptr noundef nonnull align 8 dereferenceable(224)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !77 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !78
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !78
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !78
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dl, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dm, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.dm, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dl, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dn, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01) ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01) ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 2 uses
  %i.au = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 2 uses
  %i.av = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.aw = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.ax = and <8 x i1> %i.av, %i.aw               ; 2 uses
  %i.ay = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ba = and <8 x i1> %i.ay, %i.az               ; 2 uses
  %i.bb = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.bd = and <8 x i1> %i.bb, %i.bc
  %i.be = sext <8 x i1> %i.bd to <8 x i32>
  %i.bf = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.am, %i.au
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 2 uses
  %i.bi = bitcast <8 x i32> %i.be to <8 x float>  ; 2 uses
  %i.bj = select <8 x i1> %i.ax, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bk = select <8 x i1> %i.ba, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bl = and <8 x i1> %i.ax, %i.bh
  %i.bm = and <8 x i1> %i.ba, %i.bh
  %i.bn = fmul fast <8 x float> %i.as, %i.ae
  %i.bo = fadd fast <8 x float> %i.bn, %i.ar
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.bo      ; 3 uses
  %i.bu = fadd fast <8 x float> %i.bt, %i.bs
  %i.bv = fmul fast <8 x float> %i.bs, %i.ae
  %i.bw = fadd fast <8 x float> %i.bv, %i.bt      ; 2 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bs
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.bk)
  %i.ca = select <8 x i1> %i.bl, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cb = select <8 x i1> %i.bm, <8 x float> %i.bx, <8 x float> splat (float -1.000000e+00)
  %i.cc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.ch = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.ci = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cs = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.cu = shufflevector <8 x float> %i.cq, <8 x float> %i.cj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cn, <8 x float> %i.cq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>  ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cr, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cp, <8 x float> %i.cr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.db = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dc = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.de = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.da, ptr %.1441, align 1, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.db, ptr %i.dg, align 1, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.dc, ptr %i.dh, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dn = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.do = or disjoint i32 %i.dn, 15
  %i.dp = icmp slt i32 %i.do, %i.e
  br i1 %i.dp, label %.lr.ph442, label %.preheader, !llvm.loop !68

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.fy, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.fx, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.fz, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dq = load <2 x float>, ptr %.1250447, align 4, !tbaa !44
  %i.dr = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.ds = sitofp <2 x i32> %i.dr to <2 x float>
  %i.dt = fmul fast <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.du = fadd fast <2 x float> %i.dt, splat (float 5.000000e-01)
  %i.dv = fmul fast <2 x float> %i.du, %i.ds
  %i.dw = fadd fast <2 x float> %i.dv, splat (float -5.000000e-01) ; 2 uses
  %i.dx = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dw)
  %i.dy = fptosi <2 x float> %i.dx to <2 x i32>   ; 5 uses
  %i.dz = extractelement <2 x i32> %i.dy, i64 0   ; 4 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 3 uses
  %i.eb = extractelement <2 x i32> %i.dy, i64 1   ; 4 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = icmp sgt i32 %i.dz, -2
  %i.ee = extractelement <2 x i32> %i.dr, i64 0   ; 2 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  %i.eg = and i1 %i.ed, %i.ef                     ; 2 uses
  %i.eh = icmp sgt <2 x i32> %i.dy, splat (i32 -1)
  %i.ei = icmp sgt <2 x i32> %i.dr, %i.dy
  %i.ej = and <2 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = icmp sgt i32 %i.eb, -2
  %i.el = extractelement <2 x i32> %i.dr, i64 1
  %i.em = icmp slt i32 %i.ec, %i.el
  %i.en = and i1 %i.ek, %i.em                     ; 2 uses
  %i.eo = extractelement <2 x i1> %i.ej, i64 0    ; 2 uses
  %i.ep = extractelement <2 x i1> %i.ej, i64 1    ; 2 uses
  %i.eq = and i1 %i.eo, %i.ep
  %i.er = and i1 %i.eg, %i.ep
  %i.es = and i1 %i.eo, %i.en
  %i.et = and i1 %i.eg, %i.en
  %i.eu = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.eq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.ev = mul nuw nsw i32 %i.ee, %i.eb
  %i.ew = add nsw i32 %i.ev, %i.dz
  %i.ex = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ey = mul nsw i32 %i.ex, %i.ew
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.ez = phi i32 [ %i.ey, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.ez, ptr %.2448, align 4, !tbaa !23
  br i1 %i.er, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fa = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fb = mul nsw i32 %i.fa, %i.eb
  %i.fc = add nsw i32 %i.fb, %i.ea
  %i.fd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fe = mul nsw i32 %i.fc, %i.fd
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ff = phi i32 [ %i.fe, %bb.c ], [ -1, %bb.b ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !23
  br i1 %i.es, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fh = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fi = mul nsw i32 %i.fh, %i.ec
  %i.fj = add nsw i32 %i.fi, %i.dz
  %i.fk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fl = mul nsw i32 %i.fj, %i.fk
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fm = phi i32 [ %i.fl, %bb.e ], [ -1, %bb.d ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !23
  br i1 %i.et, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fp = mul nsw i32 %i.fo, %i.ec
  %i.fq = add nsw i32 %i.fp, %i.ea
  %i.fr = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fs = mul nsw i32 %i.fq, %i.fr
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ft = phi i32 [ %i.fs, %bb.g ], [ -1, %bb.f ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !23
  %i.fv = sitofp <2 x i32> %i.dy to <2 x float>
  %i.fw = fsub fast <2 x float> %i.dw, %i.fv
  store <2 x float> %i.fw, ptr %i.eu, align 4, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.fz = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.e
  br i1 %i.ga, label %.lr.ph449, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fy, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !70

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.ge = load ptr, ptr %1, align 8, !tbaa !20, !noalias !79 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !19, !noalias !80
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !18, !noalias !80
end_hunk_0
begin_hunk_1_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>
  %i.jg = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>
  %i.ji = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>
  %i.jk = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x i32> %i.jc, <8 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jn = bitcast <8 x i32> %i.jm to <8 x float>  ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jk, <8 x float> %i.jd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jp = shufflevector <8 x float> %i.jh, <8 x float> %i.jk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jq = shufflevector <8 x i32> %i.je, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>  ; 2 uses
  %i.js = shufflevector <8 x float> %i.jl, <8 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jt = shufflevector <8 x float> %i.jj, <8 x float> %i.jl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ju = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jv = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jw = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jx = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jy = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ju, ptr %.3430, align 1, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jv, ptr %i.ka, align 1, !tbaa !41
  %i.kb = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.jw, ptr %i.kb, align 1, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jx, ptr %i.kc, align 1, !tbaa !41
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.jy, ptr %i.kd, align 1, !tbaa !41
  %i.ke = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jz, ptr %i.ke, align 1, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ki = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kj = or disjoint i32 %i.ki, 7
  %i.kk = icmp slt i32 %i.kj, %i.e
  br i1 %i.kk, label %bb.i, label %.preheader425.loopexit, !llvm.loop !75

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mx, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.my, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.mw, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mv, %bb.r ] ; 2 uses
  %i.kl = load float, ptr %.1258434, align 4, !tbaa !44
  %i.km = load float, ptr %.1256435, align 4, !tbaa !44
  %i.kn = load <2 x i32>, ptr %i.gr, align 4, !tbaa !23 ; 4 uses
  %i.ko = sitofp <2 x i32> %i.kn to <2 x float>
  %i.kp = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %i.km, i64 1
  %i.kr = fmul fast <2 x float> %i.kq, splat (float 5.000000e-01)
  %i.ks = fadd fast <2 x float> %i.kr, splat (float 5.000000e-01)
  %i.kt = fmul fast <2 x float> %i.ks, %i.ko
  %i.ku = fadd fast <2 x float> %i.kt, splat (float -5.000000e-01) ; 2 uses
  %i.kv = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ku)
  %i.kw = fptosi <2 x float> %i.kv to <2 x i32>   ; 5 uses
  %i.kx = extractelement <2 x i32> %i.kw, i64 0   ; 4 uses
  %i.ky = add nsw i32 %i.kx, 1                    ; 3 uses
  %i.kz = extractelement <2 x i32> %i.kw, i64 1   ; 4 uses
  %i.la = add nsw i32 %i.kz, 1                    ; 3 uses
  %i.lb = icmp sgt i32 %i.kx, -2
  %i.lc = extractelement <2 x i32> %i.kn, i64 0   ; 2 uses
  %i.ld = icmp slt i32 %i.ky, %i.lc
  %i.le = and i1 %i.lb, %i.ld                     ; 2 uses
  %i.lf = icmp sgt <2 x i32> %i.kw, splat (i32 -1)
  %i.lg = icmp sgt <2 x i32> %i.kn, %i.kw
  %i.lh = and <2 x i1> %i.lf, %i.lg               ; 2 uses
  %i.li = icmp sgt i32 %i.kz, -2
  %i.lj = extractelement <2 x i32> %i.kn, i64 1
  %i.lk = icmp slt i32 %i.la, %i.lj
  %i.ll = and i1 %i.li, %i.lk                     ; 2 uses
  %i.lm = extractelement <2 x i1> %i.lh, i64 0    ; 2 uses
  %i.ln = extractelement <2 x i1> %i.lh, i64 1    ; 2 uses
  %i.lo = and i1 %i.lm, %i.ln
  %i.lp = and i1 %i.le, %i.ln
  %i.lq = and i1 %i.lm, %i.ll
  %i.lr = and i1 %i.le, %i.ll
  %i.ls = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lt = mul nuw nsw i32 %i.lc, %i.kz
  %i.lu = add nsw i32 %i.lt, %i.kx
  %i.lv = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.lw = mul nsw i32 %i.lv, %i.lu
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lx = phi i32 [ %i.lw, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lx, ptr %.4437, align 4, !tbaa !23
  br i1 %i.lp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ly = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.lz = mul nsw i32 %i.ly, %i.kz
  %i.ma = add nsw i32 %i.lz, %i.ky
  %i.mb = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mc = mul nsw i32 %i.ma, %i.mb
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.md = phi i32 [ %i.mc, %bb.m ], [ -1, %bb.l ]
  %i.me = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.md, ptr %i.me, align 4, !tbaa !23
  br i1 %i.lq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mf = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.mg = mul nsw i32 %i.mf, %i.la
  %i.mh = add nsw i32 %i.mg, %i.kx
  %i.mi = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mj = mul nsw i32 %i.mh, %i.mi
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mk = phi i32 [ %i.mj, %bb.o ], [ -1, %bb.n ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !23
  br i1 %i.lr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mm = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.mn = mul nsw i32 %i.mm, %i.la
  %i.mo = add nsw i32 %i.mn, %i.ky
  %i.mp = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mq = mul nsw i32 %i.mo, %i.mp
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mr = phi i32 [ %i.mq, %bb.q ], [ -1, %bb.p ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !23
  %i.mt = sitofp <2 x i32> %i.kw to <2 x float>
  %i.mu = fsub fast <2 x float> %i.ku, %i.mt
  store <2 x float> %i.mu, ptr %i.ls, align 4, !tbaa !44
  %i.mv = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.my = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.my, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !76

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !94 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader424, label %_ZN4ncnn3MatD2Ev.exit259

.preheader424:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader424
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0452 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !95
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !95
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !95
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph442, label %.preheader

.preheader:                                       ; preds = %.lr.ph442, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph442 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dl, %.lr.ph442 ]
  %.1.lcssa = phi ptr [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dm, %.lr.ph442 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph449, label %._crit_edge

.lr.ph442:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph442
  %.1441 = phi ptr [ %i.dm, %.lr.ph442 ], [ %.0452, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249440 = phi ptr [ %i.dl, %.lr.ph442 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251439 = phi i32 [ %i.dn, %.lr.ph442 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249440, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249440, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 2 uses
  %i.au = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 2 uses
  %i.av = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.aw = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.ax = and <8 x i1> %i.av, %i.aw               ; 2 uses
  %i.ay = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ba = and <8 x i1> %i.ay, %i.az               ; 2 uses
  %i.bb = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.bd = and <8 x i1> %i.bb, %i.bc
  %i.be = sext <8 x i1> %i.bd to <8 x i32>
  %i.bf = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.am, %i.au
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 2 uses
  %i.bi = bitcast <8 x i32> %i.be to <8 x float>  ; 2 uses
  %i.bj = select <8 x i1> %i.ax, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bk = select <8 x i1> %i.ba, <8 x float> %i.bi, <8 x float> zeroinitializer
  %i.bl = and <8 x i1> %i.ax, %i.bh
  %i.bm = and <8 x i1> %i.ba, %i.bh
  %i.bn = fmul fast <8 x float> %i.as, %i.ae
  %i.bo = fadd fast <8 x float> %i.bn, %i.ar
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bq = sitofp fast i32 %i.bp to float
  %i.br = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bt = fmul fast <8 x float> %i.bs, %i.bo      ; 3 uses
  %i.bu = fadd fast <8 x float> %i.bt, %i.bs
  %i.bv = fmul fast <8 x float> %i.bs, %i.ae
  %i.bw = fadd fast <8 x float> %i.bv, %i.bt      ; 2 uses
  %i.bx = fadd fast <8 x float> %i.bw, %i.bs
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bt, <8 x float> nofpclass(nan inf) %i.bj)
  %i.bz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bu, <8 x float> nofpclass(nan inf) %i.bk)
  %i.ca = select <8 x i1> %i.bl, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cb = select <8 x i1> %i.bm, <8 x float> %i.bx, <8 x float> splat (float -1.000000e+00)
  %i.cc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.by) ; 2 uses
  %i.cd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bz) ; 2 uses
  %i.ce = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.cf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cb) ; 2 uses
  %i.cg = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.ch = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.ci = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cj = bitcast <8 x i32> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x i32> %i.cc, <8 x i32> %i.cd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cl = bitcast <8 x i32> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.ce, <8 x i32> %i.cf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.cg, <8 x float> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cs = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>  ; 2 uses
  %i.cu = shufflevector <8 x float> %i.cq, <8 x float> %i.cj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.cn, <8 x float> %i.cq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.ck, <8 x i32> %i.co, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>  ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cr, <8 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cp, <8 x float> %i.cr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.da = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.db = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dc = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dd = shufflevector <8 x float> %i.ct, <8 x float> %i.cu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.de = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.df = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.da, ptr %.1441, align 1, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.1441, i64 32
  store <8 x float> %i.db, ptr %i.dg, align 1, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %.1441, i64 64
  store <8 x float> %i.dc, ptr %i.dh, align 1, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %.1441, i64 96
  store <8 x float> %i.dd, ptr %i.di, align 1, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %.1441, i64 128
  store <8 x float> %i.de, ptr %i.dj, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.1441, i64 160
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.0249440, i64 64 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.1441, i64 192 ; 2 uses
  %i.dn = add nuw nsw i32 %.0251439, 16           ; 2 uses
  %i.do = or disjoint i32 %i.dn, 15
  %i.dp = icmp slt i32 %i.do, %i.e
  br i1 %i.dp, label %.lr.ph442, label %.preheader, !llvm.loop !85

.lr.ph449:                                        ; preds = %.preheader, %bb.h
  %.2448 = phi ptr [ %i.fy, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250447 = phi ptr [ %i.fx, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252446 = phi i32 [ %i.fz, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dq = load <2 x float>, ptr %.1250447, align 4, !tbaa !44
  %i.dr = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.ds = fmul fast <2 x float> %i.dq, splat (float 5.000000e-01)
  %i.dt = fadd fast <2 x float> %i.ds, splat (float 5.000000e-01)
  %i.du = add nsw <2 x i32> %i.dr, splat (i32 -1)
  %i.dv = sitofp <2 x i32> %i.du to <2 x float>
  %i.dw = fmul fast <2 x float> %i.dt, %i.dv      ; 2 uses
  %i.dx = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.dw)
  %i.dy = fptosi <2 x float> %i.dx to <2 x i32>   ; 5 uses
  %i.dz = extractelement <2 x i32> %i.dy, i64 0   ; 4 uses
  %i.ea = add nsw i32 %i.dz, 1                    ; 3 uses
  %i.eb = extractelement <2 x i32> %i.dy, i64 1   ; 4 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 3 uses
  %i.ed = icmp sgt i32 %i.dz, -2
  %i.ee = extractelement <2 x i32> %i.dr, i64 0   ; 2 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  %i.eg = and i1 %i.ed, %i.ef                     ; 2 uses
  %i.eh = icmp sgt <2 x i32> %i.dy, splat (i32 -1)
  %i.ei = icmp sgt <2 x i32> %i.dr, %i.dy
  %i.ej = and <2 x i1> %i.eh, %i.ei               ; 2 uses
  %i.ek = icmp sgt i32 %i.eb, -2
  %i.el = extractelement <2 x i32> %i.dr, i64 1
  %i.em = icmp slt i32 %i.ec, %i.el
  %i.en = and i1 %i.ek, %i.em                     ; 2 uses
  %i.eo = extractelement <2 x i1> %i.ej, i64 0    ; 2 uses
  %i.ep = extractelement <2 x i1> %i.ej, i64 1    ; 2 uses
  %i.eq = and i1 %i.eo, %i.ep
  %i.er = and i1 %i.eg, %i.ep
  %i.es = and i1 %i.eo, %i.en
  %i.et = and i1 %i.eg, %i.en
  %i.eu = getelementptr inbounds nuw i8, ptr %.2448, i64 16
  br i1 %i.eq, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph449
  %i.ev = mul nuw nsw i32 %i.ee, %i.eb
  %i.ew = add nsw i32 %i.ev, %i.dz
  %i.ex = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ey = mul nsw i32 %i.ex, %i.ew
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph449, %bb.a
  %i.ez = phi i32 [ %i.ey, %bb.a ], [ -1, %.lr.ph449 ]
  store i32 %i.ez, ptr %.2448, align 4, !tbaa !23
  br i1 %i.er, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fa = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fb = mul nsw i32 %i.fa, %i.eb
  %i.fc = add nsw i32 %i.fb, %i.ea
  %i.fd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fe = mul nsw i32 %i.fc, %i.fd
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ff = phi i32 [ %i.fe, %bb.c ], [ -1, %bb.b ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.2448, i64 4
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !23
  br i1 %i.es, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fh = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fi = mul nsw i32 %i.fh, %i.ec
  %i.fj = add nsw i32 %i.fi, %i.dz
  %i.fk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fl = mul nsw i32 %i.fj, %i.fk
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fm = phi i32 [ %i.fl, %bb.e ], [ -1, %bb.d ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.2448, i64 8
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !23
  br i1 %i.et, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fo = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fp = mul nsw i32 %i.fo, %i.ec
  %i.fq = add nsw i32 %i.fp, %i.ea
  %i.fr = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fs = mul nsw i32 %i.fq, %i.fr
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ft = phi i32 [ %i.fs, %bb.g ], [ -1, %bb.f ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.2448, i64 12
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !23
  %i.fv = sitofp <2 x i32> %i.dy to <2 x float>
  %i.fw = fsub fast <2 x float> %i.dw, %i.fv
  store <2 x float> %i.fw, ptr %i.eu, align 4, !tbaa !44
  %i.fx = getelementptr inbounds nuw i8, ptr %.1250447, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.2448, i64 24 ; 2 uses
  %i.fz = add nuw nsw i32 %.1252446, 2            ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %i.e
  br i1 %i.ga, label %.lr.ph449, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.fy, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %indvars.iv.next, %i.gc
  br i1 %i.gd, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !87

_ZN4ncnn3MatD2Ev.exit259:                         ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.ge = load ptr, ptr %1, align 8, !tbaa !20, !noalias !96 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !19, !noalias !97
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !18, !noalias !97
end_hunk_1
begin_hunk_2_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jf = bitcast <8 x i32> %i.je to <8 x float>
  %i.jg = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jh = bitcast <8 x i32> %i.jg to <8 x float>
  %i.ji = shufflevector <8 x i32> %i.iy, <8 x i32> %i.iz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jj = bitcast <8 x i32> %i.ji to <8 x float>
  %i.jk = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jl = shufflevector <8 x float> %i.ja, <8 x float> %i.jb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jm = shufflevector <8 x i32> %i.jc, <8 x i32> %i.jg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jn = bitcast <8 x i32> %i.jm to <8 x float>  ; 2 uses
  %i.jo = shufflevector <8 x float> %i.jk, <8 x float> %i.jd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jp = shufflevector <8 x float> %i.jh, <8 x float> %i.jk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.jq = shufflevector <8 x i32> %i.je, <8 x i32> %i.ji, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jr = bitcast <8 x i32> %i.jq to <8 x float>  ; 2 uses
  %i.js = shufflevector <8 x float> %i.jl, <8 x float> %i.jf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.jt = shufflevector <8 x float> %i.jj, <8 x float> %i.jl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ju = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jv = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jw = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.jx = shufflevector <8 x float> %i.jn, <8 x float> %i.jo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jy = shufflevector <8 x float> %i.jp, <8 x float> %i.jr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jz = shufflevector <8 x float> %i.js, <8 x float> %i.jt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ju, ptr %.3430, align 1, !tbaa !41
  %i.ka = getelementptr inbounds nuw i8, ptr %.3430, i64 32
  store <8 x float> %i.jv, ptr %i.ka, align 1, !tbaa !41
  %i.kb = getelementptr inbounds nuw i8, ptr %.3430, i64 64
  store <8 x float> %i.jw, ptr %i.kb, align 1, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %.3430, i64 96
  store <8 x float> %i.jx, ptr %i.kc, align 1, !tbaa !41
  %i.kd = getelementptr inbounds nuw i8, ptr %.3430, i64 128
  store <8 x float> %i.jy, ptr %i.kd, align 1, !tbaa !41
  %i.ke = getelementptr inbounds nuw i8, ptr %.3430, i64 160
  store <8 x float> %i.jz, ptr %i.ke, align 1, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %.0257427, i64 32 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0255428, i64 32 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.3430, i64 192 ; 2 uses
  %i.ki = add nuw nsw i32 %.0253429, 8            ; 2 uses
  %i.kj = or disjoint i32 %i.ki, 7
  %i.kk = icmp slt i32 %i.kj, %i.e
  br i1 %i.kk, label %bb.i, label %.preheader425.loopexit, !llvm.loop !92

bb.j:                                             ; preds = %.lr.ph438, %bb.r
  %.4437 = phi ptr [ %.3.lcssa, %.lr.ph438 ], [ %i.mx, %bb.r ] ; 6 uses
  %.1254436 = phi i32 [ %.0253.lcssa, %.lr.ph438 ], [ %i.my, %bb.r ]
  %.1256435 = phi ptr [ %.0255.lcssa, %.lr.ph438 ], [ %i.mw, %bb.r ] ; 2 uses
  %.1258434 = phi ptr [ %.0257.lcssa, %.lr.ph438 ], [ %i.mv, %bb.r ] ; 2 uses
  %i.kl = load float, ptr %.1258434, align 4, !tbaa !44
  %i.km = load float, ptr %.1256435, align 4, !tbaa !44
  %i.kn = load <2 x i32>, ptr %i.gr, align 4, !tbaa !23 ; 4 uses
  %i.ko = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.km, i64 1
  %i.kq = fmul fast <2 x float> %i.kp, splat (float 5.000000e-01)
  %i.kr = fadd fast <2 x float> %i.kq, splat (float 5.000000e-01)
  %i.ks = add nsw <2 x i32> %i.kn, splat (i32 -1)
  %i.kt = sitofp <2 x i32> %i.ks to <2 x float>
  %i.ku = fmul fast <2 x float> %i.kr, %i.kt      ; 2 uses
  %i.kv = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ku)
  %i.kw = fptosi <2 x float> %i.kv to <2 x i32>   ; 5 uses
  %i.kx = extractelement <2 x i32> %i.kw, i64 0   ; 4 uses
  %i.ky = add nsw i32 %i.kx, 1                    ; 3 uses
  %i.kz = extractelement <2 x i32> %i.kw, i64 1   ; 4 uses
  %i.la = add nsw i32 %i.kz, 1                    ; 3 uses
  %i.lb = icmp sgt i32 %i.kx, -2
  %i.lc = extractelement <2 x i32> %i.kn, i64 0   ; 2 uses
  %i.ld = icmp slt i32 %i.ky, %i.lc
  %i.le = and i1 %i.lb, %i.ld                     ; 2 uses
  %i.lf = icmp sgt <2 x i32> %i.kw, splat (i32 -1)
  %i.lg = icmp sgt <2 x i32> %i.kn, %i.kw
  %i.lh = and <2 x i1> %i.lf, %i.lg               ; 2 uses
  %i.li = icmp sgt i32 %i.kz, -2
  %i.lj = extractelement <2 x i32> %i.kn, i64 1
  %i.lk = icmp slt i32 %i.la, %i.lj
  %i.ll = and i1 %i.li, %i.lk                     ; 2 uses
  %i.lm = extractelement <2 x i1> %i.lh, i64 0    ; 2 uses
  %i.ln = extractelement <2 x i1> %i.lh, i64 1    ; 2 uses
  %i.lo = and i1 %i.lm, %i.ln
  %i.lp = and i1 %i.le, %i.ln
  %i.lq = and i1 %i.lm, %i.ll
  %i.lr = and i1 %i.le, %i.ll
  %i.ls = getelementptr inbounds nuw i8, ptr %.4437, i64 16
  br i1 %i.lo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.lt = mul nuw nsw i32 %i.lc, %i.kz
  %i.lu = add nsw i32 %i.lt, %i.kx
  %i.lv = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.lw = mul nsw i32 %i.lv, %i.lu
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.lx = phi i32 [ %i.lw, %bb.k ], [ -1, %bb.j ]
  store i32 %i.lx, ptr %.4437, align 4, !tbaa !23
  br i1 %i.lp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ly = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.lz = mul nsw i32 %i.ly, %i.kz
  %i.ma = add nsw i32 %i.lz, %i.ky
  %i.mb = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mc = mul nsw i32 %i.ma, %i.mb
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.md = phi i32 [ %i.mc, %bb.m ], [ -1, %bb.l ]
  %i.me = getelementptr inbounds nuw i8, ptr %.4437, i64 4
  store i32 %i.md, ptr %i.me, align 4, !tbaa !23
  br i1 %i.lq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mf = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.mg = mul nsw i32 %i.mf, %i.la
  %i.mh = add nsw i32 %i.mg, %i.kx
  %i.mi = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mj = mul nsw i32 %i.mh, %i.mi
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.mk = phi i32 [ %i.mj, %bb.o ], [ -1, %bb.n ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.4437, i64 8
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !23
  br i1 %i.lr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.mm = load i32, ptr %i.gr, align 4, !tbaa !37
  %i.mn = mul nsw i32 %i.mm, %i.la
  %i.mo = add nsw i32 %i.mn, %i.ky
  %i.mp = load i32, ptr %i.gs, align 8, !tbaa !16
  %i.mq = mul nsw i32 %i.mo, %i.mp
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.mr = phi i32 [ %i.mq, %bb.q ], [ -1, %bb.p ]
  %i.ms = getelementptr inbounds nuw i8, ptr %.4437, i64 12
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !23
  %i.mt = sitofp <2 x i32> %i.kw to <2 x float>
  %i.mu = fsub fast <2 x float> %i.ku, %i.mt
  store <2 x float> %i.mu, ptr %i.ls, align 4, !tbaa !44
  %i.mv = getelementptr inbounds nuw i8, ptr %.1258434, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %.1256435, i64 4
  %i.mx = getelementptr inbounds nuw i8, ptr %.4437, i64 24
  %i.my = add nuw nsw i32 %.1254436, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.my, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !93

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader425, %.preheader424
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !111 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !112
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !112
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !112
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dr, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ds, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.ds, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dr, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dt, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01)
  %i.aj = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ak) ; 2 uses
  %i.am = load i32, ptr %i.o, align 8, !tbaa !38
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.aq = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fmul fast <8 x float> %i.ar, %i.ap
  %i.at = fadd fast <8 x float> %i.as, splat (float -5.000000e-01)
  %i.au = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.av) ; 2 uses
  %i.ax = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.al, i32 1) ; 5 uses
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aw, i32 1) ; 5 uses
  %i.az = fadd fast <8 x float> %i.ax, splat (float 1.000000e+00) ; 2 uses
  %i.ba = fadd fast <8 x float> %i.ay, splat (float 1.000000e+00) ; 2 uses
  %i.bb = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.bd = and <8 x i1> %i.bb, %i.bc               ; 2 uses
  %i.be = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bf = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bg = and <8 x i1> %i.be, %i.bf               ; 2 uses
  %i.bh = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ap, %i.ay
  %i.bj = and <8 x i1> %i.bh, %i.bi
  %i.bk = sext <8 x i1> %i.bj to <8 x i32>
  %i.bl = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.ap, %i.ba
  %i.bn = and <8 x i1> %i.bl, %i.bm               ; 2 uses
  %i.bo = bitcast <8 x i32> %i.bk to <8 x float>  ; 2 uses
  %i.bp = select <8 x i1> %i.bd, <8 x float> %i.bo, <8 x float> zeroinitializer
  %i.bq = select <8 x i1> %i.bg, <8 x float> %i.bo, <8 x float> zeroinitializer
  %i.br = and <8 x i1> %i.bd, %i.bn
  %i.bs = and <8 x i1> %i.bg, %i.bn
  %i.bt = fmul fast <8 x float> %i.ay, %i.ae
  %i.bu = fadd fast <8 x float> %i.bt, %i.ax
  %i.bv = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bw = sitofp fast i32 %i.bv to float
  %i.bx = insertelement <8 x float> poison, float %i.bw, i64 0
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bz = fmul fast <8 x float> %i.by, %i.bu      ; 3 uses
  %i.ca = fadd fast <8 x float> %i.bz, %i.by
  %i.cb = fmul fast <8 x float> %i.by, %i.ae
  %i.cc = fadd fast <8 x float> %i.cb, %i.bz      ; 2 uses
  %i.cd = fadd fast <8 x float> %i.cc, %i.by
  %i.ce = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bz, <8 x float> nofpclass(nan inf) %i.bp)
  %i.cf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ca, <8 x float> nofpclass(nan inf) %i.bq)
  %i.cg = select <8 x i1> %i.br, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.ch = select <8 x i1> %i.bs, <8 x float> %i.cd, <8 x float> splat (float -1.000000e+00)
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cm = fsub fast <8 x float> %i.al, %i.ax      ; 2 uses
  %i.cn = fsub fast <8 x float> %i.aw, %i.ay      ; 2 uses
  %i.co = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cy = shufflevector <8 x i32> %i.co, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>  ; 2 uses
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.db = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dc = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>  ; 2 uses
  %i.de = shufflevector <8 x float> %i.cx, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cv, <8 x float> %i.cx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dh = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dj = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <8 x float> %i.db, <8 x float> %i.dd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dl = shufflevector <8 x float> %i.de, <8 x float> %i.df, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.dg, ptr %.1447, align 1, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.di, ptr %i.dn, align 1, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dt = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.du = or disjoint i32 %i.dt, 15
  %i.dv = icmp slt i32 %i.du, %i.e
  br i1 %i.dv, label %.lr.ph448, label %.preheader, !llvm.loop !102

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gh, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gg, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gi, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dw = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dx = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.dy = sitofp <2 x i32> %i.dx to <2 x float>   ; 2 uses
  %i.dz = fmul fast <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.ea = fadd fast <2 x float> %i.dz, splat (float 5.000000e-01)
  %i.eb = fmul fast <2 x float> %i.ea, %i.dy
  %i.ec = fadd fast <2 x float> %i.eb, splat (float -5.000000e-01)
  %i.ed = fadd fast <2 x float> %i.dy, splat (float -1.000000e+00)
  %i.ee = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ec, <2 x float> zeroinitializer)
  %i.ef = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ee, <2 x float> %i.ed) ; 2 uses
  %i.eg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ef)
  %i.eh = fptosi <2 x float> %i.eg to <2 x i32>   ; 5 uses
  %i.ei = extractelement <2 x i32> %i.eh, i64 0   ; 4 uses
  %i.ej = add nsw i32 %i.ei, 1                    ; 3 uses
  %i.ek = extractelement <2 x i32> %i.eh, i64 1   ; 4 uses
  %i.el = add nsw i32 %i.ek, 1                    ; 3 uses
  %i.em = icmp sgt i32 %i.ei, -2
  %i.en = extractelement <2 x i32> %i.dx, i64 0   ; 2 uses
  %i.eo = icmp slt i32 %i.ej, %i.en
  %i.ep = and i1 %i.em, %i.eo                     ; 2 uses
  %i.eq = icmp sgt <2 x i32> %i.eh, splat (i32 -1)
  %i.er = icmp sgt <2 x i32> %i.dx, %i.eh
  %i.es = and <2 x i1> %i.eq, %i.er               ; 2 uses
  %i.et = icmp sgt i32 %i.ek, -2
  %i.eu = extractelement <2 x i32> %i.dx, i64 1
  %i.ev = icmp slt i32 %i.el, %i.eu
  %i.ew = and i1 %i.et, %i.ev                     ; 2 uses
  %i.ex = extractelement <2 x i1> %i.es, i64 0    ; 2 uses
  %i.ey = extractelement <2 x i1> %i.es, i64 1    ; 2 uses
  %i.ez = and i1 %i.ex, %i.ey
  %i.fa = and i1 %i.ep, %i.ey
  %i.fb = and i1 %i.ex, %i.ew
  %i.fc = and i1 %i.ep, %i.ew
  %i.fd = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ez, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fe = mul nuw nsw i32 %i.en, %i.ek
  %i.ff = add nsw i32 %i.fe, %i.ei
  %i.fg = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fh = mul nsw i32 %i.fg, %i.ff
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fi = phi i32 [ %i.fh, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fi, ptr %.2454, align 4, !tbaa !23
  br i1 %i.fa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fj = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fk = mul nsw i32 %i.fj, %i.ek
  %i.fl = add nsw i32 %i.fk, %i.ej
  %i.fm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fn = mul nsw i32 %i.fl, %i.fm
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fo = phi i32 [ %i.fn, %bb.c ], [ -1, %bb.b ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !23
  br i1 %i.fb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fr = mul nsw i32 %i.fq, %i.el
  %i.fs = add nsw i32 %i.fr, %i.ei
  %i.ft = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fu = mul nsw i32 %i.fs, %i.ft
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fv = phi i32 [ %i.fu, %bb.e ], [ -1, %bb.d ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !23
  br i1 %i.fc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fx = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fy = mul nsw i32 %i.fx, %i.el
  %i.fz = add nsw i32 %i.fy, %i.ej
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gb = mul nsw i32 %i.fz, %i.ga
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gc = phi i32 [ %i.gb, %bb.g ], [ -1, %bb.f ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !23
  %i.ge = sitofp <2 x i32> %i.eh to <2 x float>
  %i.gf = fsub fast <2 x float> %i.ef, %i.ge
  store <2 x float> %i.gf, ptr %i.fd, align 4, !tbaa !44
  %i.gg = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gi = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gj = icmp slt i32 %i.gi, %i.e
  br i1 %i.gj, label %.lr.ph455, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gh, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gk = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next, %i.gl
  br i1 %i.gm, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !104

end_hunk_2
begin_hunk_3_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jx = shufflevector <8 x i32> %i.jn, <8 x i32> %i.jo, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jy = bitcast <8 x i32> %i.jx to <8 x float>
  %i.jz = shufflevector <8 x float> %i.jp, <8 x float> %i.jq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ka = shufflevector <8 x float> %i.jp, <8 x float> %i.jq, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x i32> %i.jr, <8 x i32> %i.jv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kc = bitcast <8 x i32> %i.kb to <8 x float>  ; 2 uses
  %i.kd = shufflevector <8 x float> %i.jz, <8 x float> %i.js, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ke = shufflevector <8 x float> %i.jw, <8 x float> %i.jz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kf = shufflevector <8 x i32> %i.jt, <8 x i32> %i.jx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kg = bitcast <8 x i32> %i.kf to <8 x float>  ; 2 uses
  %i.kh = shufflevector <8 x float> %i.ka, <8 x float> %i.ju, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ki = shufflevector <8 x float> %i.jy, <8 x float> %i.ka, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kj = shufflevector <8 x float> %i.kc, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kk = shufflevector <8 x float> %i.ke, <8 x float> %i.kg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kl = shufflevector <8 x float> %i.kh, <8 x float> %i.ki, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.km = shufflevector <8 x float> %i.kc, <8 x float> %i.kd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kn = shufflevector <8 x float> %i.ke, <8 x float> %i.kg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ko = shufflevector <8 x float> %i.kh, <8 x float> %i.ki, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kj, ptr %.3436, align 1, !tbaa !41
  %i.kp = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kk, ptr %i.kp, align 1, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.kl, ptr %i.kq, align 1, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.km, ptr %i.kr, align 1, !tbaa !41
  %i.ks = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kn, ptr %i.ks, align 1, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.ko, ptr %i.kt, align 1, !tbaa !41
  %i.ku = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.kx = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.ky = or disjoint i32 %i.kx, 7
  %i.kz = icmp slt i32 %i.ky, %i.e
  br i1 %i.kz, label %bb.i, label %.preheader431.loopexit, !llvm.loop !109

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.np, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.nq, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.no, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nn, %bb.r ] ; 2 uses
  %i.la = load float, ptr %.1258440, align 4, !tbaa !44
  %i.lb = load float, ptr %.1256441, align 4, !tbaa !44
  %i.lc = load <2 x i32>, ptr %i.ha, align 4, !tbaa !23 ; 4 uses
  %i.ld = sitofp <2 x i32> %i.lc to <2 x float>   ; 2 uses
  %i.le = insertelement <2 x float> poison, float %i.la, i64 0
  %i.lf = insertelement <2 x float> %i.le, float %i.lb, i64 1
  %i.lg = fmul fast <2 x float> %i.lf, splat (float 5.000000e-01)
  %i.lh = fadd fast <2 x float> %i.lg, splat (float 5.000000e-01)
  %i.li = fmul fast <2 x float> %i.lh, %i.ld
  %i.lj = fadd fast <2 x float> %i.li, splat (float -5.000000e-01)
  %i.lk = fadd fast <2 x float> %i.ld, splat (float -1.000000e+00)
  %i.ll = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lj, <2 x float> zeroinitializer)
  %i.lm = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ll, <2 x float> %i.lk) ; 2 uses
  %i.ln = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lm)
  %i.lo = fptosi <2 x float> %i.ln to <2 x i32>   ; 5 uses
  %i.lp = extractelement <2 x i32> %i.lo, i64 0   ; 4 uses
  %i.lq = add nsw i32 %i.lp, 1                    ; 3 uses
  %i.lr = extractelement <2 x i32> %i.lo, i64 1   ; 4 uses
  %i.ls = add nsw i32 %i.lr, 1                    ; 3 uses
  %i.lt = icmp sgt i32 %i.lp, -2
  %i.lu = extractelement <2 x i32> %i.lc, i64 0   ; 2 uses
  %i.lv = icmp slt i32 %i.lq, %i.lu
  %i.lw = and i1 %i.lt, %i.lv                     ; 2 uses
  %i.lx = icmp sgt <2 x i32> %i.lo, splat (i32 -1)
  %i.ly = icmp sgt <2 x i32> %i.lc, %i.lo
  %i.lz = and <2 x i1> %i.lx, %i.ly               ; 2 uses
  %i.ma = icmp sgt i32 %i.lr, -2
  %i.mb = extractelement <2 x i32> %i.lc, i64 1
  %i.mc = icmp slt i32 %i.ls, %i.mb
  %i.md = and i1 %i.ma, %i.mc                     ; 2 uses
  %i.me = extractelement <2 x i1> %i.lz, i64 0    ; 2 uses
  %i.mf = extractelement <2 x i1> %i.lz, i64 1    ; 2 uses
  %i.mg = and i1 %i.me, %i.mf
  %i.mh = and i1 %i.lw, %i.mf
  %i.mi = and i1 %i.me, %i.md
  %i.mj = and i1 %i.lw, %i.md
  %i.mk = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.mg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ml = mul nuw nsw i32 %i.lu, %i.lr
  %i.mm = add nsw i32 %i.ml, %i.lp
  %i.mn = load i32, ptr %i.hb, align 8, !tbaa !16
  %i.mo = mul nsw i32 %i.mn, %i.mm
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mp = phi i32 [ %i.mo, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mp, ptr %.4443, align 4, !tbaa !23
  br i1 %i.mh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mq = load i32, ptr %i.ha, align 4, !tbaa !37
  %i.mr = mul nsw i32 %i.mq, %i.lr
  %i.ms = add nsw i32 %i.mr, %i.lq
  %i.mt = load i32, ptr %i.hb, align 8, !tbaa !16
  %i.mu = mul nsw i32 %i.ms, %i.mt
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mv = phi i32 [ %i.mu, %bb.m ], [ -1, %bb.l ]
  %i.mw = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !23
  br i1 %i.mi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mx = load i32, ptr %i.ha, align 4, !tbaa !37
  %i.my = mul nsw i32 %i.mx, %i.ls
  %i.mz = add nsw i32 %i.my, %i.lp
  %i.na = load i32, ptr %i.hb, align 8, !tbaa !16
  %i.nb = mul nsw i32 %i.mz, %i.na
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.nc = phi i32 [ %i.nb, %bb.o ], [ -1, %bb.n ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !23
  br i1 %i.mj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ne = load i32, ptr %i.ha, align 4, !tbaa !37
  %i.nf = mul nsw i32 %i.ne, %i.ls
  %i.ng = add nsw i32 %i.nf, %i.lq
  %i.nh = load i32, ptr %i.hb, align 8, !tbaa !16
  %i.ni = mul nsw i32 %i.ng, %i.nh
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nj = phi i32 [ %i.ni, %bb.q ], [ -1, %bb.p ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !23
  %i.nl = sitofp <2 x i32> %i.lo to <2 x float>
  %i.nm = fsub fast <2 x float> %i.lm, %i.nl
  store <2 x float> %i.nm, ptr %i.mk, align 4, !tbaa !44
  %i.nn = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.nq = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nq, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !110

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !128 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !129
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !129
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !129
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dp, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dq, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.dq, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dp, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dr, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aj) ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ap = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00) ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.at) ; 2 uses
  %i.av = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ak, i32 1) ; 5 uses
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.au, i32 1) ; 5 uses
  %i.ax = fadd fast <8 x float> %i.av, splat (float 1.000000e+00) ; 2 uses
  %i.ay = fadd fast <8 x float> %i.aw, splat (float 1.000000e+00) ; 2 uses
  %i.az = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 2 uses
  %i.bc = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 2 uses
  %i.bf = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ao, %i.aw
  %i.bh = and <8 x i1> %i.bf, %i.bg
  %i.bi = sext <8 x i1> %i.bh to <8 x i32>
  %i.bj = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 2 uses
  %i.bm = bitcast <8 x i32> %i.bi to <8 x float>  ; 2 uses
  %i.bn = select <8 x i1> %i.bb, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bo = select <8 x i1> %i.be, <8 x float> %i.bm, <8 x float> zeroinitializer
  %i.bp = and <8 x i1> %i.bb, %i.bl
  %i.bq = and <8 x i1> %i.be, %i.bl
  %i.br = fmul fast <8 x float> %i.aw, %i.ae
  %i.bs = fadd fast <8 x float> %i.br, %i.av
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bu = sitofp fast i32 %i.bt to float
  %i.bv = insertelement <8 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <8 x float> %i.bv, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.bx = fmul fast <8 x float> %i.bw, %i.bs      ; 3 uses
  %i.by = fadd fast <8 x float> %i.bx, %i.bw
  %i.bz = fmul fast <8 x float> %i.bw, %i.ae
  %i.ca = fadd fast <8 x float> %i.bz, %i.bx      ; 2 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.bw
  %i.cc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.bx, <8 x float> nofpclass(nan inf) %i.bn)
  %i.cd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.by, <8 x float> nofpclass(nan inf) %i.bo)
  %i.ce = select <8 x i1> %i.bp, <8 x float> %i.ca, <8 x float> splat (float -1.000000e+00)
  %i.cf = select <8 x i1> %i.bq, <8 x float> %i.cb, <8 x float> splat (float -1.000000e+00)
  %i.cg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cd) ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cf) ; 2 uses
  %i.ck = fsub fast <8 x float> %i.ak, %i.av      ; 2 uses
  %i.cl = fsub fast <8 x float> %i.au, %i.aw      ; 2 uses
  %i.cm = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = shufflevector <8 x i32> %i.cg, <8 x i32> %i.ch, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cp = bitcast <8 x i32> %i.co to <8 x float>
  %i.cq = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ci, <8 x i32> %i.cj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>  ; 2 uses
  %i.cy = shufflevector <8 x float> %i.cu, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.cr, <8 x float> %i.cu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.da = shufflevector <8 x i32> %i.co, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.db = bitcast <8 x i32> %i.da to <8 x float>  ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cv, <8 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dd = shufflevector <8 x float> %i.ct, <8 x float> %i.cv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.de = shufflevector <8 x float> %i.cx, <8 x float> %i.cy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.df = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dg = shufflevector <8 x float> %i.dc, <8 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dh = shufflevector <8 x float> %i.cx, <8 x float> %i.cy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.di = shufflevector <8 x float> %i.cz, <8 x float> %i.db, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dj = shufflevector <8 x float> %i.dc, <8 x float> %i.dd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.de, ptr %.1447, align 1, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.df, ptr %i.dk, align 1, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.dg, ptr %i.dl, align 1, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dh, ptr %i.dm, align 1, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.di, ptr %i.dn, align 1, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dr = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.ds = or disjoint i32 %i.dr, 15
  %i.dt = icmp slt i32 %i.ds, %i.e
  br i1 %i.dt, label %.lr.ph448, label %.preheader, !llvm.loop !119

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.gg, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gf, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gh, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.du = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dv = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.dw = fmul fast <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dx = fadd fast <2 x float> %i.dw, splat (float 5.000000e-01)
  %i.dy = add nsw <2 x i32> %i.dv, splat (i32 -1)
  %i.dz = sitofp <2 x i32> %i.dy to <2 x float>
  %i.ea = fmul fast <2 x float> %i.dx, %i.dz
  %i.eb = sitofp <2 x i32> %i.dv to <2 x float>
  %i.ec = fadd fast <2 x float> %i.eb, splat (float -1.000000e+00)
  %i.ed = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ea, <2 x float> zeroinitializer)
  %i.ee = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ed, <2 x float> %i.ec) ; 2 uses
  %i.ef = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ee)
  %i.eg = fptosi <2 x float> %i.ef to <2 x i32>   ; 5 uses
  %i.eh = extractelement <2 x i32> %i.eg, i64 0   ; 4 uses
  %i.ei = add nsw i32 %i.eh, 1                    ; 3 uses
  %i.ej = extractelement <2 x i32> %i.eg, i64 1   ; 4 uses
  %i.ek = add nsw i32 %i.ej, 1                    ; 3 uses
  %i.el = icmp sgt i32 %i.eh, -2
  %i.em = extractelement <2 x i32> %i.dv, i64 0   ; 2 uses
  %i.en = icmp slt i32 %i.ei, %i.em
  %i.eo = and i1 %i.el, %i.en                     ; 2 uses
  %i.ep = icmp sgt <2 x i32> %i.eg, splat (i32 -1)
  %i.eq = icmp sgt <2 x i32> %i.dv, %i.eg
  %i.er = and <2 x i1> %i.ep, %i.eq               ; 2 uses
  %i.es = icmp sgt i32 %i.ej, -2
  %i.et = extractelement <2 x i32> %i.dv, i64 1
  %i.eu = icmp slt i32 %i.ek, %i.et
  %i.ev = and i1 %i.es, %i.eu                     ; 2 uses
  %i.ew = extractelement <2 x i1> %i.er, i64 0    ; 2 uses
  %i.ex = extractelement <2 x i1> %i.er, i64 1    ; 2 uses
  %i.ey = and i1 %i.ew, %i.ex
  %i.ez = and i1 %i.eo, %i.ex
  %i.fa = and i1 %i.ew, %i.ev
  %i.fb = and i1 %i.eo, %i.ev
  %i.fc = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.ey, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fd = mul nuw nsw i32 %i.em, %i.ej
  %i.fe = add nsw i32 %i.fd, %i.eh
  %i.ff = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fg = mul nsw i32 %i.ff, %i.fe
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fh = phi i32 [ %i.fg, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fh, ptr %.2454, align 4, !tbaa !23
  br i1 %i.ez, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fi = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fj = mul nsw i32 %i.fi, %i.ej
  %i.fk = add nsw i32 %i.fj, %i.ei
  %i.fl = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fm = mul nsw i32 %i.fk, %i.fl
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fn = phi i32 [ %i.fm, %bb.c ], [ -1, %bb.b ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !23
  br i1 %i.fa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fp = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fq = mul nsw i32 %i.fp, %i.ek
  %i.fr = add nsw i32 %i.fq, %i.eh
  %i.fs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ft = mul nsw i32 %i.fr, %i.fs
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.fu = phi i32 [ %i.ft, %bb.e ], [ -1, %bb.d ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !23
  br i1 %i.fb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fw = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fx = mul nsw i32 %i.fw, %i.ek
  %i.fy = add nsw i32 %i.fx, %i.ei
  %i.fz = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ga = mul nsw i32 %i.fy, %i.fz
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gb = phi i32 [ %i.ga, %bb.g ], [ -1, %bb.f ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !23
  %i.gd = sitofp <2 x i32> %i.eg to <2 x float>
  %i.ge = fsub fast <2 x float> %i.ee, %i.gd
  store <2 x float> %i.ge, ptr %i.fc, align 4, !tbaa !44
  %i.gf = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gh = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %i.e
  br i1 %i.gi, label %.lr.ph455, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.gg, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gj = load i32, ptr %i.h, align 8, !tbaa !17
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next, %i.gk
  br i1 %i.gl, label %_ZN4ncnn3MatD2Ev.exit260, label %.loopexit, !llvm.loop !121

end_hunk_3
begin_hunk_4_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.jv = bitcast <8 x i32> %i.ju to <8 x float>
  %i.jw = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.jx = shufflevector <8 x float> %i.jm, <8 x float> %i.jn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.jy = shufflevector <8 x i32> %i.jo, <8 x i32> %i.js, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.jz = bitcast <8 x i32> %i.jy to <8 x float>  ; 2 uses
  %i.ka = shufflevector <8 x float> %i.jw, <8 x float> %i.jp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kb = shufflevector <8 x float> %i.jt, <8 x float> %i.jw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kc = shufflevector <8 x i32> %i.jq, <8 x i32> %i.ju, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kd = bitcast <8 x i32> %i.kc to <8 x float>  ; 2 uses
  %i.ke = shufflevector <8 x float> %i.jx, <8 x float> %i.jr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kf = shufflevector <8 x float> %i.jv, <8 x float> %i.jx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kg = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kh = shufflevector <8 x float> %i.kb, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ki = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kj = shufflevector <8 x float> %i.jz, <8 x float> %i.ka, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kk = shufflevector <8 x float> %i.kb, <8 x float> %i.kd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kl = shufflevector <8 x float> %i.ke, <8 x float> %i.kf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.kg, ptr %.3436, align 1, !tbaa !41
  %i.km = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kh, ptr %i.km, align 1, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.ki, ptr %i.kn, align 1, !tbaa !41
  %i.ko = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kj, ptr %i.ko, align 1, !tbaa !41
  %i.kp = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kk, ptr %i.kp, align 1, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kl, ptr %i.kq, align 1, !tbaa !41
  %i.kr = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.ku = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.kv = or disjoint i32 %i.ku, 7
  %i.kw = icmp slt i32 %i.kv, %i.e
  br i1 %i.kw, label %bb.i, label %.preheader431.loopexit, !llvm.loop !126

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.nn, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.no, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.nm, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.nl, %bb.r ] ; 2 uses
  %i.kx = load float, ptr %.1258440, align 4, !tbaa !44
  %i.ky = load float, ptr %.1256441, align 4, !tbaa !44
  %i.kz = load <2 x i32>, ptr %i.gz, align 4, !tbaa !23 ; 5 uses
  %i.la = insertelement <2 x float> poison, float %i.kx, i64 0
  %i.lb = insertelement <2 x float> %i.la, float %i.ky, i64 1
  %i.lc = fmul fast <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fadd fast <2 x float> %i.lc, splat (float 5.000000e-01)
  %i.le = add nsw <2 x i32> %i.kz, splat (i32 -1)
  %i.lf = sitofp <2 x i32> %i.le to <2 x float>
  %i.lg = fmul fast <2 x float> %i.ld, %i.lf
  %i.lh = sitofp <2 x i32> %i.kz to <2 x float>
  %i.li = fadd fast <2 x float> %i.lh, splat (float -1.000000e+00)
  %i.lj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lg, <2 x float> zeroinitializer)
  %i.lk = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lj, <2 x float> %i.li) ; 2 uses
  %i.ll = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.lk)
  %i.lm = fptosi <2 x float> %i.ll to <2 x i32>   ; 5 uses
  %i.ln = extractelement <2 x i32> %i.lm, i64 0   ; 4 uses
  %i.lo = add nsw i32 %i.ln, 1                    ; 3 uses
  %i.lp = extractelement <2 x i32> %i.lm, i64 1   ; 4 uses
  %i.lq = add nsw i32 %i.lp, 1                    ; 3 uses
  %i.lr = icmp sgt i32 %i.ln, -2
  %i.ls = extractelement <2 x i32> %i.kz, i64 0   ; 2 uses
  %i.lt = icmp slt i32 %i.lo, %i.ls
  %i.lu = and i1 %i.lr, %i.lt                     ; 2 uses
  %i.lv = icmp sgt <2 x i32> %i.lm, splat (i32 -1)
  %i.lw = icmp sgt <2 x i32> %i.kz, %i.lm
  %i.lx = and <2 x i1> %i.lv, %i.lw               ; 2 uses
  %i.ly = icmp sgt i32 %i.lp, -2
  %i.lz = extractelement <2 x i32> %i.kz, i64 1
  %i.ma = icmp slt i32 %i.lq, %i.lz
  %i.mb = and i1 %i.ly, %i.ma                     ; 2 uses
  %i.mc = extractelement <2 x i1> %i.lx, i64 0    ; 2 uses
  %i.md = extractelement <2 x i1> %i.lx, i64 1    ; 2 uses
  %i.me = and i1 %i.mc, %i.md
  %i.mf = and i1 %i.lu, %i.md
  %i.mg = and i1 %i.mc, %i.mb
  %i.mh = and i1 %i.lu, %i.mb
  %i.mi = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.me, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mj = mul nuw nsw i32 %i.ls, %i.lp
  %i.mk = add nsw i32 %i.mj, %i.ln
  %i.ml = load i32, ptr %i.ha, align 8, !tbaa !16
  %i.mm = mul nsw i32 %i.ml, %i.mk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.mn = phi i32 [ %i.mm, %bb.k ], [ -1, %bb.j ]
  store i32 %i.mn, ptr %.4443, align 4, !tbaa !23
  br i1 %i.mf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mo = load i32, ptr %i.gz, align 4, !tbaa !37
  %i.mp = mul nsw i32 %i.mo, %i.lp
  %i.mq = add nsw i32 %i.mp, %i.lo
  %i.mr = load i32, ptr %i.ha, align 8, !tbaa !16
  %i.ms = mul nsw i32 %i.mq, %i.mr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.mt = phi i32 [ %i.ms, %bb.m ], [ -1, %bb.l ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !23
  br i1 %i.mg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mv = load i32, ptr %i.gz, align 4, !tbaa !37
  %i.mw = mul nsw i32 %i.mv, %i.lq
  %i.mx = add nsw i32 %i.mw, %i.ln
  %i.my = load i32, ptr %i.ha, align 8, !tbaa !16
  %i.mz = mul nsw i32 %i.mx, %i.my
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.na = phi i32 [ %i.mz, %bb.o ], [ -1, %bb.n ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !23
  br i1 %i.mh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nc = load i32, ptr %i.gz, align 4, !tbaa !37
  %i.nd = mul nsw i32 %i.nc, %i.lq
  %i.ne = add nsw i32 %i.nd, %i.lo
  %i.nf = load i32, ptr %i.ha, align 8, !tbaa !16
  %i.ng = mul nsw i32 %i.ne, %i.nf
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nh = phi i32 [ %i.ng, %bb.q ], [ -1, %bb.p ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !23
  %i.nj = sitofp <2 x i32> %i.lm to <2 x float>
  %i.nk = fsub fast <2 x float> %i.lk, %i.nj
  store <2 x float> %i.nk, ptr %i.mi, align 4, !tbaa !44
  %i.nl = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.nn = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.no = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.no, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !127

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !145 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader437, label %_ZN4ncnn3MatD2Ev.exit259

.preheader437:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader437
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0465 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !146
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !146
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !146
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph455, label %.preheader

.preheader:                                       ; preds = %.lr.ph455, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph455 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dz, %.lr.ph455 ]
  %.1.lcssa = phi ptr [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.ea, %.lr.ph455 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph462, label %._crit_edge

.lr.ph455:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph455
  %.1454 = phi ptr [ %i.ea, %.lr.ph455 ], [ %.0465, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249453 = phi ptr [ %i.dz, %.lr.ph455 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251452 = phi i32 [ %i.eb, %.lr.ph455 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249453, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249453, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ah)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ae
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.an = fsub fast <8 x float> %i.am, %i.al
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.an, <8 x float> zeroinitializer)
  %i.ap = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ao) ; 2 uses
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = insertelement <8 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.au = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.av, %i.at
  %i.ax = fadd fast <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aw)
  %i.az = fsub fast <8 x float> %i.ay, %i.at
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bb = fadd fast <8 x float> %i.at, splat (float -5.000000e-01)
  %i.bc = fsub fast <8 x float> %i.bb, %i.ba
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> zeroinitializer)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.bd) ; 2 uses
  %i.bf = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ap, i32 1) ; 5 uses
  %i.bg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.be, i32 1) ; 5 uses
  %i.bh = fadd fast <8 x float> %i.bf, splat (float 1.000000e+00) ; 2 uses
  %i.bi = fadd fast <8 x float> %i.bg, splat (float 1.000000e+00) ; 2 uses
  %i.bj = fcmp fast ogt <8 x float> %i.bf, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ae, %i.bf
  %i.bl = and <8 x i1> %i.bj, %i.bk               ; 2 uses
  %i.bm = fcmp fast ogt <8 x float> %i.bh, splat (float -1.000000e+00)
  %i.bn = fcmp fast ogt <8 x float> %i.ae, %i.bh
  %i.bo = and <8 x i1> %i.bm, %i.bn               ; 2 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.at, %i.bg
  %i.br = and <8 x i1> %i.bp, %i.bq
  %i.bs = sext <8 x i1> %i.br to <8 x i32>
  %i.bt = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bu = fcmp fast ogt <8 x float> %i.at, %i.bi
  %i.bv = and <8 x i1> %i.bt, %i.bu               ; 2 uses
  %i.bw = bitcast <8 x i32> %i.bs to <8 x float>  ; 2 uses
  %i.bx = select <8 x i1> %i.bl, <8 x float> %i.bw, <8 x float> zeroinitializer
  %i.by = select <8 x i1> %i.bo, <8 x float> %i.bw, <8 x float> zeroinitializer
  %i.bz = and <8 x i1> %i.bl, %i.bv
  %i.ca = and <8 x i1> %i.bo, %i.bv
  %i.cb = fmul fast <8 x float> %i.bg, %i.ae
  %i.cc = fadd fast <8 x float> %i.cb, %i.bf
  %i.cd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ce = sitofp fast i32 %i.cd to float
  %i.cf = insertelement <8 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <8 x float> %i.cf, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ch = fmul fast <8 x float> %i.cg, %i.cc      ; 3 uses
  %i.ci = fadd fast <8 x float> %i.ch, %i.cg
  %i.cj = fmul fast <8 x float> %i.cg, %i.ae
  %i.ck = fadd fast <8 x float> %i.cj, %i.ch      ; 2 uses
  %i.cl = fadd fast <8 x float> %i.ck, %i.cg
  %i.cm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ch, <8 x float> nofpclass(nan inf) %i.bx)
  %i.cn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.ci, <8 x float> nofpclass(nan inf) %i.by)
  %i.co = select <8 x i1> %i.bz, <8 x float> %i.ck, <8 x float> splat (float -1.000000e+00)
  %i.cp = select <8 x i1> %i.ca, <8 x float> %i.cl, <8 x float> splat (float -1.000000e+00)
  %i.cq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cn) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cp) ; 2 uses
  %i.cu = fsub fast <8 x float> %i.ap, %i.bf      ; 2 uses
  %i.cv = fsub fast <8 x float> %i.be, %i.bg      ; 2 uses
  %i.cw = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>
  %i.cy = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cz = bitcast <8 x i32> %i.cy to <8 x float>
  %i.da = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.db = bitcast <8 x i32> %i.da to <8 x float>
  %i.dc = shufflevector <8 x i32> %i.cs, <8 x i32> %i.ct, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dd = bitcast <8 x i32> %i.dc to <8 x float>
  %i.de = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.df = shufflevector <8 x float> %i.cu, <8 x float> %i.cv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dg = shufflevector <8 x i32> %i.cw, <8 x i32> %i.da, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dh = bitcast <8 x i32> %i.dg to <8 x float>  ; 2 uses
  %i.di = shufflevector <8 x float> %i.de, <8 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dj = shufflevector <8 x float> %i.db, <8 x float> %i.de, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.dk = shufflevector <8 x i32> %i.cy, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.dl = bitcast <8 x i32> %i.dk to <8 x float>  ; 2 uses
  %i.dm = shufflevector <8 x float> %i.df, <8 x float> %i.cz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.do = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dp = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dq = shufflevector <8 x float> %i.dm, <8 x float> %i.dn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dr = shufflevector <8 x float> %i.dh, <8 x float> %i.di, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ds = shufflevector <8 x float> %i.dj, <8 x float> %i.dl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dt = shufflevector <8 x float> %i.dm, <8 x float> %i.dn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.do, ptr %.1454, align 1, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %.1454, i64 32
  store <8 x float> %i.dp, ptr %i.du, align 1, !tbaa !41
  %i.dv = getelementptr inbounds nuw i8, ptr %.1454, i64 64
  store <8 x float> %i.dq, ptr %i.dv, align 1, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %.1454, i64 96
  store <8 x float> %i.dr, ptr %i.dw, align 1, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %.1454, i64 128
  store <8 x float> %i.ds, ptr %i.dx, align 1, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %.1454, i64 160
  store <8 x float> %i.dt, ptr %i.dy, align 1, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %.0249453, i64 64 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.1454, i64 192 ; 2 uses
  %i.eb = add nuw nsw i32 %.0251452, 16           ; 2 uses
  %i.ec = or disjoint i32 %i.eb, 15
  %i.ed = icmp slt i32 %i.ec, %i.e
  br i1 %i.ed, label %.lr.ph455, label %.preheader, !llvm.loop !136

.lr.ph462:                                        ; preds = %.preheader, %bb.h
  %.2461 = phi ptr [ %i.gt, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250460 = phi ptr [ %i.gs, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252459 = phi i32 [ %i.gu, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.ee = load <2 x float>, ptr %.1250460, align 4, !tbaa !44
  %i.ef = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.eg = sitofp <2 x i32> %i.ef to <2 x float>   ; 4 uses
  %i.eh = fmul fast <2 x float> %i.ee, splat (float 5.000000e-01)
  %i.ei = fadd fast <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fmul fast <2 x float> %i.ei, %i.eg
  %i.ek = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ej)
  %i.el = fsub fast <2 x float> %i.ek, %i.eg
  %i.em = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.el)
  %i.en = fadd fast <2 x float> %i.eg, splat (float -5.000000e-01)
  %i.eo = fsub fast <2 x float> %i.en, %i.em
  %i.ep = fadd fast <2 x float> %i.eg, splat (float -1.000000e+00)
  %i.eq = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.eo, <2 x float> zeroinitializer)
  %i.er = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.eq, <2 x float> %i.ep) ; 2 uses
  %i.es = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.er)
  %i.et = fptosi <2 x float> %i.es to <2 x i32>   ; 5 uses
  %i.eu = extractelement <2 x i32> %i.et, i64 0   ; 4 uses
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  %i.ew = extractelement <2 x i32> %i.et, i64 1   ; 4 uses
  %i.ex = add nsw i32 %i.ew, 1                    ; 3 uses
  %i.ey = icmp sgt i32 %i.eu, -2
  %i.ez = extractelement <2 x i32> %i.ef, i64 0   ; 2 uses
  %i.fa = icmp slt i32 %i.ev, %i.ez
  %i.fb = and i1 %i.ey, %i.fa                     ; 2 uses
  %i.fc = icmp sgt <2 x i32> %i.et, splat (i32 -1)
  %i.fd = icmp sgt <2 x i32> %i.ef, %i.et
  %i.fe = and <2 x i1> %i.fc, %i.fd               ; 2 uses
  %i.ff = icmp sgt i32 %i.ew, -2
  %i.fg = extractelement <2 x i32> %i.ef, i64 1
  %i.fh = icmp slt i32 %i.ex, %i.fg
  %i.fi = and i1 %i.ff, %i.fh                     ; 2 uses
  %i.fj = extractelement <2 x i1> %i.fe, i64 0    ; 2 uses
  %i.fk = extractelement <2 x i1> %i.fe, i64 1    ; 2 uses
  %i.fl = and i1 %i.fj, %i.fk
  %i.fm = and i1 %i.fb, %i.fk
  %i.fn = and i1 %i.fj, %i.fi
  %i.fo = and i1 %i.fb, %i.fi
  %i.fp = getelementptr inbounds nuw i8, ptr %.2461, i64 16
  br i1 %i.fl, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph462
  %i.fq = mul nuw nsw i32 %i.ez, %i.ew
  %i.fr = add nsw i32 %i.fq, %i.eu
  %i.fs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ft = mul nsw i32 %i.fs, %i.fr
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph462, %bb.a
  %i.fu = phi i32 [ %i.ft, %bb.a ], [ -1, %.lr.ph462 ]
  store i32 %i.fu, ptr %.2461, align 4, !tbaa !23
  br i1 %i.fm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fv = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fw = mul nsw i32 %i.fv, %i.ew
  %i.fx = add nsw i32 %i.fw, %i.ev
  %i.fy = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fz = mul nsw i32 %i.fx, %i.fy
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ga = phi i32 [ %i.fz, %bb.c ], [ -1, %bb.b ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.2461, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !23
  br i1 %i.fn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gc = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gd = mul nsw i32 %i.gc, %i.ex
  %i.ge = add nsw i32 %i.gd, %i.eu
  %i.gf = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gg = mul nsw i32 %i.ge, %i.gf
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gh = phi i32 [ %i.gg, %bb.e ], [ -1, %bb.d ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.2461, i64 8
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !23
  br i1 %i.fo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gj = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gk = mul nsw i32 %i.gj, %i.ex
  %i.gl = add nsw i32 %i.gk, %i.ev
  %i.gm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gn = mul nsw i32 %i.gl, %i.gm
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.go = phi i32 [ %i.gn, %bb.g ], [ -1, %bb.f ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.2461, i64 12
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !23
  %i.gq = sitofp <2 x i32> %i.et to <2 x float>
  %i.gr = fsub fast <2 x float> %i.er, %i.gq
  store <2 x float> %i.gr, ptr %i.fp, align 4, !tbaa !44
  %i.gs = getelementptr inbounds nuw i8, ptr %.1250460, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %.2461, i64 24 ; 2 uses
  %i.gu = add nuw nsw i32 %.1252459, 2            ; 2 uses
  %i.gv = icmp slt i32 %i.gu, %i.e
  br i1 %i.gv, label %.lr.ph462, label %._crit_edge, !llvm.loop !137

end_hunk_4
begin_hunk_5_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.kv = shufflevector <8 x i32> %i.kl, <8 x i32> %i.kp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kw = bitcast <8 x i32> %i.kv to <8 x float>  ; 2 uses
  %i.kx = shufflevector <8 x float> %i.kt, <8 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.ky = shufflevector <8 x float> %i.kq, <8 x float> %i.kt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.kz = shufflevector <8 x i32> %i.kn, <8 x i32> %i.kr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.la = bitcast <8 x i32> %i.kz to <8 x float>  ; 2 uses
  %i.lb = shufflevector <8 x float> %i.ku, <8 x float> %i.ko, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.lc = shufflevector <8 x float> %i.ks, <8 x float> %i.ku, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ld = shufflevector <8 x float> %i.kw, <8 x float> %i.kx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.le = shufflevector <8 x float> %i.ky, <8 x float> %i.la, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lf = shufflevector <8 x float> %i.lb, <8 x float> %i.lc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.lg = shufflevector <8 x float> %i.kw, <8 x float> %i.kx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lh = shufflevector <8 x float> %i.ky, <8 x float> %i.la, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.li = shufflevector <8 x float> %i.lb, <8 x float> %i.lc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ld, ptr %.3443, align 1, !tbaa !41
  %i.lj = getelementptr inbounds nuw i8, ptr %.3443, i64 32
  store <8 x float> %i.le, ptr %i.lj, align 1, !tbaa !41
  %i.lk = getelementptr inbounds nuw i8, ptr %.3443, i64 64
  store <8 x float> %i.lf, ptr %i.lk, align 1, !tbaa !41
  %i.ll = getelementptr inbounds nuw i8, ptr %.3443, i64 96
  store <8 x float> %i.lg, ptr %i.ll, align 1, !tbaa !41
  %i.lm = getelementptr inbounds nuw i8, ptr %.3443, i64 128
  store <8 x float> %i.lh, ptr %i.lm, align 1, !tbaa !41
  %i.ln = getelementptr inbounds nuw i8, ptr %.3443, i64 160
  store <8 x float> %i.li, ptr %i.ln, align 1, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %.0257440, i64 32 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.0255441, i64 32 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.3443, i64 192 ; 2 uses
  %i.lr = add nuw nsw i32 %.0253442, 8            ; 2 uses
  %i.ls = or disjoint i32 %i.lr, 7
  %i.lt = icmp slt i32 %i.ls, %i.e
  br i1 %i.lt, label %bb.i, label %.preheader438.loopexit, !llvm.loop !143

bb.j:                                             ; preds = %.lr.ph451, %bb.r
  %.4450 = phi ptr [ %.3.lcssa, %.lr.ph451 ], [ %i.on, %bb.r ] ; 6 uses
  %.1254449 = phi i32 [ %.0253.lcssa, %.lr.ph451 ], [ %i.oo, %bb.r ]
  %.1256448 = phi ptr [ %.0255.lcssa, %.lr.ph451 ], [ %i.om, %bb.r ] ; 2 uses
  %.1258447 = phi ptr [ %.0257.lcssa, %.lr.ph451 ], [ %i.ol, %bb.r ] ; 2 uses
  %i.lu = load float, ptr %.1258447, align 4, !tbaa !44
  %i.lv = load float, ptr %.1256448, align 4, !tbaa !44
  %i.lw = load <2 x i32>, ptr %i.hm, align 4, !tbaa !23 ; 4 uses
  %i.lx = sitofp <2 x i32> %i.lw to <2 x float>   ; 4 uses
  %i.ly = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lv, i64 1
  %i.ma = fmul fast <2 x float> %i.lz, splat (float 5.000000e-01)
  %i.mb = fadd fast <2 x float> %i.ma, splat (float 5.000000e-01)
  %i.mc = fmul fast <2 x float> %i.mb, %i.lx
  %i.md = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mc)
  %i.me = fsub fast <2 x float> %i.md, %i.lx
  %i.mf = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.me)
  %i.mg = fadd fast <2 x float> %i.lx, splat (float -5.000000e-01)
  %i.mh = fsub fast <2 x float> %i.mg, %i.mf
  %i.mi = fadd fast <2 x float> %i.lx, splat (float -1.000000e+00)
  %i.mj = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.mh, <2 x float> zeroinitializer)
  %i.mk = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.mj, <2 x float> %i.mi) ; 2 uses
  %i.ml = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.mk)
  %i.mm = fptosi <2 x float> %i.ml to <2 x i32>   ; 5 uses
  %i.mn = extractelement <2 x i32> %i.mm, i64 0   ; 4 uses
  %i.mo = add nsw i32 %i.mn, 1                    ; 3 uses
  %i.mp = extractelement <2 x i32> %i.mm, i64 1   ; 4 uses
  %i.mq = add nsw i32 %i.mp, 1                    ; 3 uses
  %i.mr = icmp sgt i32 %i.mn, -2
  %i.ms = extractelement <2 x i32> %i.lw, i64 0   ; 2 uses
  %i.mt = icmp slt i32 %i.mo, %i.ms
  %i.mu = and i1 %i.mr, %i.mt                     ; 2 uses
  %i.mv = icmp sgt <2 x i32> %i.mm, splat (i32 -1)
  %i.mw = icmp sgt <2 x i32> %i.lw, %i.mm
  %i.mx = and <2 x i1> %i.mv, %i.mw               ; 2 uses
  %i.my = icmp sgt i32 %i.mp, -2
  %i.mz = extractelement <2 x i32> %i.lw, i64 1
  %i.na = icmp slt i32 %i.mq, %i.mz
  %i.nb = and i1 %i.my, %i.na                     ; 2 uses
  %i.nc = extractelement <2 x i1> %i.mx, i64 0    ; 2 uses
  %i.nd = extractelement <2 x i1> %i.mx, i64 1    ; 2 uses
  %i.ne = and i1 %i.nc, %i.nd
  %i.nf = and i1 %i.mu, %i.nd
  %i.ng = and i1 %i.nc, %i.nb
  %i.nh = and i1 %i.mu, %i.nb
  %i.ni = getelementptr inbounds nuw i8, ptr %.4450, i64 16
  br i1 %i.ne, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.nj = mul nuw nsw i32 %i.ms, %i.mp
  %i.nk = add nsw i32 %i.nj, %i.mn
  %i.nl = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.nm = mul nsw i32 %i.nl, %i.nk
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.nn = phi i32 [ %i.nm, %bb.k ], [ -1, %bb.j ]
  store i32 %i.nn, ptr %.4450, align 4, !tbaa !23
  br i1 %i.nf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.no = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.np = mul nsw i32 %i.no, %i.mp
  %i.nq = add nsw i32 %i.np, %i.mo
  %i.nr = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.ns = mul nsw i32 %i.nq, %i.nr
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nt = phi i32 [ %i.ns, %bb.m ], [ -1, %bb.l ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.4450, i64 4
  store i32 %i.nt, ptr %i.nu, align 4, !tbaa !23
  br i1 %i.ng, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nv = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.nw = mul nsw i32 %i.nv, %i.mq
  %i.nx = add nsw i32 %i.nw, %i.mn
  %i.ny = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.nz = mul nsw i32 %i.nx, %i.ny
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.oa = phi i32 [ %i.nz, %bb.o ], [ -1, %bb.n ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.4450, i64 8
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !23
  br i1 %i.nh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.oc = load i32, ptr %i.hm, align 4, !tbaa !37
  %i.od = mul nsw i32 %i.oc, %i.mq
  %i.oe = add nsw i32 %i.od, %i.mo
  %i.of = load i32, ptr %i.hn, align 8, !tbaa !16
  %i.og = mul nsw i32 %i.oe, %i.of
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.oh = phi i32 [ %i.og, %bb.q ], [ -1, %bb.p ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.4450, i64 12
  store i32 %i.oh, ptr %i.oi, align 4, !tbaa !23
  %i.oj = sitofp <2 x i32> %i.mm to <2 x float>
  %i.ok = fsub fast <2 x float> %i.mk, %i.oj
  store <2 x float> %i.ok, ptr %i.ni, align 4, !tbaa !44
  %i.ol = getelementptr inbounds nuw i8, ptr %.1258447, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %.1256448, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %.4450, i64 24
  %i.oo = add nuw nsw i32 %.1254449, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oo, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !144

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader438, %.preheader437
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit261:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !162 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader430, label %_ZN4ncnn3MatD2Ev.exit259

.preheader430:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit261
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit260.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit260.lr.ph:                   ; preds = %.preheader430
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit260

_ZN4ncnn3MatD2Ev.exit260:                         ; preds = %_ZN4ncnn3MatD2Ev.exit260.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0458 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit260.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !163
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !163
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !163
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph448, label %.preheader

.preheader:                                       ; preds = %.lr.ph448, %_ZN4ncnn3MatD2Ev.exit260
  %.0251.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.q, %.lr.ph448 ] ; 2 uses
  %.0249.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.dt, %.lr.ph448 ]
  %.1.lcssa = phi ptr [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ], [ %i.du, %.lr.ph448 ] ; 2 uses
  %i.x = icmp slt i32 %.0251.lcssa, %i.e
  br i1 %i.x, label %.lr.ph455, label %._crit_edge

.lr.ph448:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit260, %.lr.ph448
  %.1447 = phi ptr [ %i.du, %.lr.ph448 ], [ %.0458, %_ZN4ncnn3MatD2Ev.exit260 ] ; 7 uses
  %.0249446 = phi ptr [ %i.dt, %.lr.ph448 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit260 ] ; 3 uses
  %.0251445 = phi i32 [ %i.dv, %.lr.ph448 ], [ 0, %_ZN4ncnn3MatD2Ev.exit260 ]
  %i.y = load <8 x float>, ptr %.0249446, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0249446, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 3 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ah
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = fsub fast <8 x float> %i.ah, %i.al      ; 2 uses
  %i.an = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ao = sitofp fast i32 %i.an to float
  %i.ap = insertelement <8 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <8 x float> %i.ap, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ar = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.at = fadd fast <8 x float> %i.aq, splat (float -1.000000e+00) ; 3 uses
  %i.au = fmul fast <8 x float> %i.at, %i.as
  %i.av = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.au)
  %i.aw = fsub fast <8 x float> %i.av, %i.at
  %i.ax = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aw)
  %i.ay = fsub fast <8 x float> %i.at, %i.ax      ; 2 uses
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.am, i32 1) ; 5 uses
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 5 uses
  %i.bb = fadd fast <8 x float> %i.az, splat (float 1.000000e+00) ; 2 uses
  %i.bc = fadd fast <8 x float> %i.ba, splat (float 1.000000e+00) ; 2 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ae, %i.bb
  %i.bi = and <8 x i1> %i.bg, %i.bh               ; 2 uses
  %i.bj = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.aq, %i.ba
  %i.bl = and <8 x i1> %i.bj, %i.bk
  %i.bm = sext <8 x i1> %i.bl to <8 x i32>
  %i.bn = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.aq, %i.bc
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 2 uses
  %i.bq = bitcast <8 x i32> %i.bm to <8 x float>  ; 2 uses
  %i.br = select <8 x i1> %i.bf, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bs = select <8 x i1> %i.bi, <8 x float> %i.bq, <8 x float> zeroinitializer
  %i.bt = and <8 x i1> %i.bf, %i.bp
  %i.bu = and <8 x i1> %i.bi, %i.bp
  %i.bv = fmul fast <8 x float> %i.ba, %i.ae
  %i.bw = fadd fast <8 x float> %i.bv, %i.az
  %i.bx = load i32, ptr %i.p, align 8, !tbaa !16
  %i.by = sitofp fast i32 %i.bx to float
  %i.bz = insertelement <8 x float> poison, float %i.by, i64 0
  %i.ca = shufflevector <8 x float> %i.bz, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cb = fmul fast <8 x float> %i.ca, %i.bw      ; 3 uses
  %i.cc = fadd fast <8 x float> %i.cb, %i.ca
  %i.cd = fmul fast <8 x float> %i.ca, %i.ae
  %i.ce = fadd fast <8 x float> %i.cd, %i.cb      ; 2 uses
  %i.cf = fadd fast <8 x float> %i.ce, %i.ca
  %i.cg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.br)
  %i.ch = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.blendv.ps.256(<8 x float> nofpclass(nan inf) splat (float -1.000000e+00), <8 x float> nofpclass(nan inf) %i.cc, <8 x float> nofpclass(nan inf) %i.bs)
  %i.ci = select <8 x i1> %i.bt, <8 x float> %i.ce, <8 x float> splat (float -1.000000e+00)
  %i.cj = select <8 x i1> %i.bu, <8 x float> %i.cf, <8 x float> splat (float -1.000000e+00)
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ch) ; 2 uses
  %i.cm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ci) ; 2 uses
  %i.cn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cj) ; 2 uses
  %i.co = fsub fast <8 x float> %i.am, %i.az      ; 2 uses
  %i.cp = fsub fast <8 x float> %i.ay, %i.ba      ; 2 uses
  %i.cq = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x i32> %i.ck, <8 x i32> %i.cl, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ct = bitcast <8 x i32> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = shufflevector <8 x i32> %i.cm, <8 x i32> %i.cn, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.cx = bitcast <8 x i32> %i.cw to <8 x float>
  %i.cy = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.cz = shufflevector <8 x float> %i.co, <8 x float> %i.cp, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.da = shufflevector <8 x i32> %i.cq, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.db = bitcast <8 x i32> %i.da to <8 x float>  ; 2 uses
  %i.dc = shufflevector <8 x float> %i.cy, <8 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dd = shufflevector <8 x float> %i.cv, <8 x float> %i.cy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.de = shufflevector <8 x i32> %i.cs, <8 x i32> %i.cw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.df = bitcast <8 x i32> %i.de to <8 x float>  ; 2 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.dh = shufflevector <8 x float> %i.cx, <8 x float> %i.cz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.di = shufflevector <8 x float> %i.db, <8 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dj = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dk = shufflevector <8 x float> %i.dg, <8 x float> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dl = shufflevector <8 x float> %i.db, <8 x float> %i.dc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dm = shufflevector <8 x float> %i.dd, <8 x float> %i.df, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dn = shufflevector <8 x float> %i.dg, <8 x float> %i.dh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.di, ptr %.1447, align 1, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %.1447, i64 32
  store <8 x float> %i.dj, ptr %i.do, align 1, !tbaa !41
  %i.dp = getelementptr inbounds nuw i8, ptr %.1447, i64 64
  store <8 x float> %i.dk, ptr %i.dp, align 1, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.1447, i64 96
  store <8 x float> %i.dl, ptr %i.dq, align 1, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %.1447, i64 128
  store <8 x float> %i.dm, ptr %i.dr, align 1, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %.1447, i64 160
  store <8 x float> %i.dn, ptr %i.ds, align 1, !tbaa !41
  %i.dt = getelementptr inbounds nuw i8, ptr %.0249446, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.1447, i64 192 ; 2 uses
  %i.dv = add nuw nsw i32 %.0251445, 16           ; 2 uses
  %i.dw = or disjoint i32 %i.dv, 15
  %i.dx = icmp slt i32 %i.dw, %i.e
  br i1 %i.dx, label %.lr.ph448, label %.preheader, !llvm.loop !153

.lr.ph455:                                        ; preds = %.preheader, %bb.h
  %.2454 = phi ptr [ %i.go, %bb.h ], [ %.1.lcssa, %.preheader ] ; 6 uses
  %.1250453 = phi ptr [ %i.gn, %bb.h ], [ %.0249.lcssa, %.preheader ] ; 2 uses
  %.1252452 = phi i32 [ %i.gp, %bb.h ], [ %.0251.lcssa, %.preheader ]
  %i.dy = load <2 x float>, ptr %.1250453, align 4, !tbaa !44
  %i.dz = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 5 uses
  %i.ea = fmul fast <2 x float> %i.dy, splat (float 5.000000e-01)
  %i.eb = fadd fast <2 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = add nsw <2 x i32> %i.dz, splat (i32 -1)
  %i.ed = sitofp <2 x i32> %i.ec to <2 x float>   ; 3 uses
  %i.ee = fmul fast <2 x float> %i.eb, %i.ed
  %i.ef = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ee)
  %i.eg = fsub fast <2 x float> %i.ef, %i.ed
  %i.eh = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eg)
  %i.ei = fsub fast <2 x float> %i.ed, %i.eh
  %i.ej = sitofp <2 x i32> %i.dz to <2 x float>
  %i.ek = fadd fast <2 x float> %i.ej, splat (float -1.000000e+00)
  %i.el = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ei, <2 x float> zeroinitializer)
  %i.em = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.el, <2 x float> %i.ek) ; 2 uses
  %i.en = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.em)
  %i.eo = fptosi <2 x float> %i.en to <2 x i32>   ; 5 uses
  %i.ep = extractelement <2 x i32> %i.eo, i64 0   ; 4 uses
  %i.eq = add nsw i32 %i.ep, 1                    ; 3 uses
  %i.er = extractelement <2 x i32> %i.eo, i64 1   ; 4 uses
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  %i.et = icmp sgt i32 %i.ep, -2
  %i.eu = extractelement <2 x i32> %i.dz, i64 0   ; 2 uses
  %i.ev = icmp slt i32 %i.eq, %i.eu
  %i.ew = and i1 %i.et, %i.ev                     ; 2 uses
  %i.ex = icmp sgt <2 x i32> %i.eo, splat (i32 -1)
  %i.ey = icmp sgt <2 x i32> %i.dz, %i.eo
  %i.ez = and <2 x i1> %i.ex, %i.ey               ; 2 uses
  %i.fa = icmp sgt i32 %i.er, -2
  %i.fb = extractelement <2 x i32> %i.dz, i64 1
  %i.fc = icmp slt i32 %i.es, %i.fb
  %i.fd = and i1 %i.fa, %i.fc                     ; 2 uses
  %i.fe = extractelement <2 x i1> %i.ez, i64 0    ; 2 uses
  %i.ff = extractelement <2 x i1> %i.ez, i64 1    ; 2 uses
  %i.fg = and i1 %i.fe, %i.ff
  %i.fh = and i1 %i.ew, %i.ff
  %i.fi = and i1 %i.fe, %i.fd
  %i.fj = and i1 %i.ew, %i.fd
  %i.fk = getelementptr inbounds nuw i8, ptr %.2454, i64 16
  br i1 %i.fg, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph455
  %i.fl = mul nuw nsw i32 %i.eu, %i.er
  %i.fm = add nsw i32 %i.fl, %i.ep
  %i.fn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fo = mul nsw i32 %i.fn, %i.fm
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph455, %bb.a
  %i.fp = phi i32 [ %i.fo, %bb.a ], [ -1, %.lr.ph455 ]
  store i32 %i.fp, ptr %.2454, align 4, !tbaa !23
  br i1 %i.fh, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fq = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fr = mul nsw i32 %i.fq, %i.er
  %i.fs = add nsw i32 %i.fr, %i.eq
  %i.ft = load i32, ptr %i.p, align 8, !tbaa !16
  %i.fu = mul nsw i32 %i.fs, %i.ft
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.fv = phi i32 [ %i.fu, %bb.c ], [ -1, %bb.b ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.2454, i64 4
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !23
  br i1 %i.fi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fx = load i32, ptr %i.n, align 4, !tbaa !37
  %i.fy = mul nsw i32 %i.fx, %i.es
  %i.fz = add nsw i32 %i.fy, %i.ep
  %i.ga = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gb = mul nsw i32 %i.fz, %i.ga
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gc = phi i32 [ %i.gb, %bb.e ], [ -1, %bb.d ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.2454, i64 8
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !23
  br i1 %i.fj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ge = load i32, ptr %i.n, align 4, !tbaa !37
  %i.gf = mul nsw i32 %i.ge, %i.es
  %i.gg = add nsw i32 %i.gf, %i.eq
  %i.gh = load i32, ptr %i.p, align 8, !tbaa !16
  %i.gi = mul nsw i32 %i.gg, %i.gh
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.gj = phi i32 [ %i.gi, %bb.g ], [ -1, %bb.f ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.2454, i64 12
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !23
  %i.gl = sitofp <2 x i32> %i.eo to <2 x float>
  %i.gm = fsub fast <2 x float> %i.em, %i.gl
  store <2 x float> %i.gm, ptr %i.fk, align 4, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %.1250453, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %.2454, i64 24 ; 2 uses
  %i.gp = add nuw nsw i32 %.1252452, 2            ; 2 uses
  %i.gq = icmp slt i32 %i.gp, %i.e
  br i1 %i.gq, label %.lr.ph455, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.go, %bb.h ]
end_hunk_5
begin_hunk_6_@_ZN4ncnn35gridsample_2d_bilinear_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit261
  %i.ki = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.kj = shufflevector <8 x float> %i.jy, <8 x float> %i.jz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.kk = shufflevector <8 x i32> %i.ka, <8 x i32> %i.ke, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kl = bitcast <8 x i32> %i.kk to <8 x float>  ; 2 uses
  %i.km = shufflevector <8 x float> %i.ki, <8 x float> %i.kb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kn = shufflevector <8 x float> %i.kf, <8 x float> %i.ki, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ko = shufflevector <8 x i32> %i.kc, <8 x i32> %i.kg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.kp = bitcast <8 x i32> %i.ko to <8 x float>  ; 2 uses
  %i.kq = shufflevector <8 x float> %i.kj, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.kr = shufflevector <8 x float> %i.kh, <8 x float> %i.kj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ks = shufflevector <8 x float> %i.kl, <8 x float> %i.km, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kt = shufflevector <8 x float> %i.kn, <8 x float> %i.kp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ku = shufflevector <8 x float> %i.kq, <8 x float> %i.kr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kv = shufflevector <8 x float> %i.kl, <8 x float> %i.km, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kw = shufflevector <8 x float> %i.kn, <8 x float> %i.kp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kx = shufflevector <8 x float> %i.kq, <8 x float> %i.kr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.ks, ptr %.3436, align 1, !tbaa !41
  %i.ky = getelementptr inbounds nuw i8, ptr %.3436, i64 32
  store <8 x float> %i.kt, ptr %i.ky, align 1, !tbaa !41
  %i.kz = getelementptr inbounds nuw i8, ptr %.3436, i64 64
  store <8 x float> %i.ku, ptr %i.kz, align 1, !tbaa !41
  %i.la = getelementptr inbounds nuw i8, ptr %.3436, i64 96
  store <8 x float> %i.kv, ptr %i.la, align 1, !tbaa !41
  %i.lb = getelementptr inbounds nuw i8, ptr %.3436, i64 128
  store <8 x float> %i.kw, ptr %i.lb, align 1, !tbaa !41
  %i.lc = getelementptr inbounds nuw i8, ptr %.3436, i64 160
  store <8 x float> %i.kx, ptr %i.lc, align 1, !tbaa !41
  %i.ld = getelementptr inbounds nuw i8, ptr %.0257433, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.0255434, i64 32 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.3436, i64 192 ; 2 uses
  %i.lg = add nuw nsw i32 %.0253435, 8            ; 2 uses
  %i.lh = or disjoint i32 %i.lg, 7
  %i.li = icmp slt i32 %i.lh, %i.e
  br i1 %i.li, label %bb.i, label %.preheader431.loopexit, !llvm.loop !160

bb.j:                                             ; preds = %.lr.ph444, %bb.r
  %.4443 = phi ptr [ %.3.lcssa, %.lr.ph444 ], [ %i.od, %bb.r ] ; 6 uses
  %.1254442 = phi i32 [ %.0253.lcssa, %.lr.ph444 ], [ %i.oe, %bb.r ]
  %.1256441 = phi ptr [ %.0255.lcssa, %.lr.ph444 ], [ %i.oc, %bb.r ] ; 2 uses
  %.1258440 = phi ptr [ %.0257.lcssa, %.lr.ph444 ], [ %i.ob, %bb.r ] ; 2 uses
  %i.lj = load float, ptr %.1258440, align 4, !tbaa !44
  %i.lk = load float, ptr %.1256441, align 4, !tbaa !44
  %i.ll = load <2 x i32>, ptr %i.hh, align 4, !tbaa !23 ; 5 uses
  %i.lm = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lk, i64 1
  %i.lo = fmul fast <2 x float> %i.ln, splat (float 5.000000e-01)
  %i.lp = fadd fast <2 x float> %i.lo, splat (float 5.000000e-01)
  %i.lq = add nsw <2 x i32> %i.ll, splat (i32 -1)
  %i.lr = sitofp <2 x i32> %i.lq to <2 x float>   ; 3 uses
  %i.ls = fmul fast <2 x float> %i.lp, %i.lr
  %i.lt = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ls)
  %i.lu = fsub fast <2 x float> %i.lt, %i.lr
  %i.lv = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lu)
  %i.lw = fsub fast <2 x float> %i.lr, %i.lv
  %i.lx = sitofp <2 x i32> %i.ll to <2 x float>
  %i.ly = fadd fast <2 x float> %i.lx, splat (float -1.000000e+00)
  %i.lz = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.lw, <2 x float> zeroinitializer)
  %i.ma = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.lz, <2 x float> %i.ly) ; 2 uses
  %i.mb = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ma)
  %i.mc = fptosi <2 x float> %i.mb to <2 x i32>   ; 5 uses
  %i.md = extractelement <2 x i32> %i.mc, i64 0   ; 4 uses
  %i.me = add nsw i32 %i.md, 1                    ; 3 uses
  %i.mf = extractelement <2 x i32> %i.mc, i64 1   ; 4 uses
  %i.mg = add nsw i32 %i.mf, 1                    ; 3 uses
  %i.mh = icmp sgt i32 %i.md, -2
  %i.mi = extractelement <2 x i32> %i.ll, i64 0   ; 2 uses
  %i.mj = icmp slt i32 %i.me, %i.mi
  %i.mk = and i1 %i.mh, %i.mj                     ; 2 uses
  %i.ml = icmp sgt <2 x i32> %i.mc, splat (i32 -1)
  %i.mm = icmp sgt <2 x i32> %i.ll, %i.mc
  %i.mn = and <2 x i1> %i.ml, %i.mm               ; 2 uses
  %i.mo = icmp sgt i32 %i.mf, -2
  %i.mp = extractelement <2 x i32> %i.ll, i64 1
  %i.mq = icmp slt i32 %i.mg, %i.mp
  %i.mr = and i1 %i.mo, %i.mq                     ; 2 uses
  %i.ms = extractelement <2 x i1> %i.mn, i64 0    ; 2 uses
  %i.mt = extractelement <2 x i1> %i.mn, i64 1    ; 2 uses
  %i.mu = and i1 %i.ms, %i.mt
  %i.mv = and i1 %i.mk, %i.mt
  %i.mw = and i1 %i.ms, %i.mr
  %i.mx = and i1 %i.mk, %i.mr
  %i.my = getelementptr inbounds nuw i8, ptr %.4443, i64 16
  br i1 %i.mu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.mz = mul nuw nsw i32 %i.mi, %i.mf
  %i.na = add nsw i32 %i.mz, %i.md
  %i.nb = load i32, ptr %i.hi, align 8, !tbaa !16
  %i.nc = mul nsw i32 %i.nb, %i.na
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.nd = phi i32 [ %i.nc, %bb.k ], [ -1, %bb.j ]
  store i32 %i.nd, ptr %.4443, align 4, !tbaa !23
  br i1 %i.mv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ne = load i32, ptr %i.hh, align 4, !tbaa !37
  %i.nf = mul nsw i32 %i.ne, %i.mf
  %i.ng = add nsw i32 %i.nf, %i.me
  %i.nh = load i32, ptr %i.hi, align 8, !tbaa !16
  %i.ni = mul nsw i32 %i.ng, %i.nh
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.nj = phi i32 [ %i.ni, %bb.m ], [ -1, %bb.l ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.4443, i64 4
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !23
  br i1 %i.mw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.nl = load i32, ptr %i.hh, align 4, !tbaa !37
  %i.nm = mul nsw i32 %i.nl, %i.mg
  %i.nn = add nsw i32 %i.nm, %i.md
  %i.no = load i32, ptr %i.hi, align 8, !tbaa !16
  %i.np = mul nsw i32 %i.nn, %i.no
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.nq = phi i32 [ %i.np, %bb.o ], [ -1, %bb.n ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.4443, i64 8
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !23
  br i1 %i.mx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ns = load i32, ptr %i.hh, align 4, !tbaa !37
  %i.nt = mul nsw i32 %i.ns, %i.mg
  %i.nu = add nsw i32 %i.nt, %i.me
  %i.nv = load i32, ptr %i.hi, align 8, !tbaa !16
  %i.nw = mul nsw i32 %i.nu, %i.nv
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.nx = phi i32 [ %i.nw, %bb.q ], [ -1, %bb.p ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.4443, i64 12
  store i32 %i.nx, ptr %i.ny, align 4, !tbaa !23
  %i.nz = sitofp <2 x i32> %i.mc to <2 x float>
  %i.oa = fsub fast <2 x float> %i.ma, %i.nz
  store <2 x float> %i.oa, ptr %i.my, align 4, !tbaa !44
  %i.ob = getelementptr inbounds nuw i8, ptr %.1258440, i64 4
  %i.oc = getelementptr inbounds nuw i8, ptr %.1256441, i64 4
  %i.od = getelementptr inbounds nuw i8, ptr %.4443, i64 24
  %i.oe = add nuw nsw i32 %.1254442, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.oe, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.j, !llvm.loop !161

.loopexit:                                        ; preds = %bb.r, %._crit_edge, %.preheader431, %.preheader430
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 12 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !179 ; 4 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.m, label %_ZN4ncnn3MatD2Ev.exit122.us.preheader, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split

_ZN4ncnn3MatD2Ev.exit122.us.preheader:            ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.q = and i32 %i.e, 2147483632                 ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.e
  br label %_ZN4ncnn3MatD2Ev.exit122.us

_ZN4ncnn3MatD2Ev.exit122.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit122.us.preheader, %._crit_edge.us
  %indvars.iv267 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %indvars.iv.next268, %._crit_edge.us ] ; 2 uses
  %.0255.us = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.us.preheader ], [ %.2.lcssa.us, %._crit_edge.us ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !20, !noalias !180
  %i.t = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !180
  %i.u = mul i64 %i.t, %indvars.iv267
  %i.v = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !180
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  br label %bb.a

bb.a:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122.us, %bb.a
  %.1244.us = phi ptr [ %.0255.us, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bj, %bb.a ] ; 2 uses
  %.0117243.us = phi ptr [ %i.x, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bi, %bb.a ] ; 3 uses
  %.0119242.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122.us ], [ %i.bk, %bb.a ]
  %i.y = load <8 x float>, ptr %.0117243.us, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !38
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = insertelement <8 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <8 x float> %i.ak, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.am = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.an = fadd fast <8 x float> %i.am, splat (float 5.000000e-01)
  %i.ao = fmul fast <8 x float> %i.an, %i.al
  %i.ap = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ah, i32 1) ; 3 uses
  %i.aq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ao, i32 1) ; 3 uses
  %i.ar = fcmp fast ogt <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.as = fcmp fast ogt <8 x float> %i.ae, %i.ap
  %i.at = and <8 x i1> %i.ar, %i.as
  %i.au = fcmp fast ogt <8 x float> %i.aq, splat (float -1.000000e+00)
  %i.av = fcmp fast ogt <8 x float> %i.al, %i.aq
  %i.aw = and <8 x i1> %i.au, %i.av
  %i.ax = and <8 x i1> %i.at, %i.aw
  %i.ay = fmul fast <8 x float> %i.aq, %i.ae
  %i.az = fadd fast <8 x float> %i.ay, %i.ap
  %i.ba = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bb = sitofp fast i32 %i.ba to float
  %i.bc = insertelement <8 x float> poison, float %i.bb, i64 0
  %i.bd = shufflevector <8 x float> %i.bc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.be = fmul fast <8 x float> %i.bd, %i.az
  %i.bf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.be)
  %i.bg = bitcast <8 x i32> %i.bf to <8 x float>
  %i.bh = select <8 x i1> %i.ax, <8 x float> %i.bg, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bh, ptr %.1244.us, align 1, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.0117243.us, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1244.us, i64 32 ; 3 uses
  %i.bk = add nuw nsw i32 %.0119242.us, 16        ; 2 uses
  %i.bl = or disjoint i32 %i.bk, 15
  %i.bm = icmp slt i32 %i.bl, %i.e
  br i1 %i.bm, label %bb.a, label %..preheader_crit_edge.us, !llvm.loop !170

.lr.ph252.us:                                     ; preds = %..preheader_crit_edge.us, %bb.c
  %.2251.us = phi ptr [ %i.cl, %bb.c ], [ %i.bj, %..preheader_crit_edge.us ] ; 2 uses
  %.1118250.us = phi ptr [ %i.ck, %bb.c ], [ %i.bi, %..preheader_crit_edge.us ] ; 2 uses
  %.1120249.us = phi i32 [ %i.cm, %bb.c ], [ %i.q, %..preheader_crit_edge.us ]
  %i.bn = load <2 x float>, ptr %.1118250.us, align 4, !tbaa !44
  %i.bo = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>
  %i.bq = fmul fast <2 x float> %i.bn, splat (float 5.000000e-01)
  %i.br = fadd fast <2 x float> %i.bq, splat (float 5.000000e-01)
  %i.bs = fmul fast <2 x float> %i.br, %i.bp
  %i.bt = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.bs)
  %i.bu = fptosi <2 x float> %i.bt to <2 x i32>   ; 3 uses
  %i.bv = extractelement <2 x i32> %i.bu, i64 0   ; 2 uses
  %i.bw = extractelement <2 x i32> %i.bu, i64 1   ; 2 uses
  %i.bx = or i32 %i.bw, %i.bv
  %i.by = icmp sgt i32 %i.bx, -1
  %i.bz = icmp sgt <2 x i32> %i.bo, %i.bu         ; 2 uses
  %i.ca = extractelement <2 x i1> %i.bz, i64 0
  %i.cb = and i1 %i.ca, %i.by
  %i.cc = extractelement <2 x i1> %i.bz, i64 1
  %i.cd = and i1 %i.cc, %i.cb
  br i1 %i.cd, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph252.us
  %i.ce = extractelement <2 x i32> %i.bo, i64 0
  %i.cf = mul nuw nsw i32 %i.ce, %i.bw
  %i.cg = add nsw i32 %i.cf, %i.bv
  %i.ch = load i32, ptr %i.p, align 8, !tbaa !16
  %i.ci = mul nsw i32 %i.ch, %i.cg
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph252.us
  %i.cj = phi i32 [ %i.ci, %bb.b ], [ -1, %.lr.ph252.us ]
  store i32 %i.cj, ptr %.2251.us, align 4, !tbaa !23
  %i.ck = getelementptr inbounds nuw i8, ptr %.1118250.us, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.2251.us, i64 4 ; 2 uses
  %i.cm = add nuw nsw i32 %.1120249.us, 2         ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.e
  br i1 %i.cn, label %.lr.ph252.us, label %._crit_edge.us, !llvm.loop !171

._crit_edge.us:                                   ; preds = %bb.c, %..preheader_crit_edge.us
  %.2.lcssa.us = phi ptr [ %i.bj, %..preheader_crit_edge.us ], [ %i.cl, %bb.c ]
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %i.co = load i32, ptr %i.h, align 8, !tbaa !17
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next268, %i.cp
  br i1 %i.cq, label %_ZN4ncnn3MatD2Ev.exit122.us, label %.loopexit, !llvm.loop !172

..preheader_crit_edge.us:                         ; preds = %bb.a
  br i1 %i.r, label %.lr.ph252.us, label %._crit_edge.us

_ZN4ncnn3MatD2Ev.exit122.lr.ph.split:             ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph
  %i.cr = icmp sgt i32 %i.e, 0
  br i1 %i.cr, label %_ZN4ncnn3MatD2Ev.exit122.preheader, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.preheader:               ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  %.pre = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !180
  %.pre270 = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !180
  %i.cs = load ptr, ptr %1, align 8, !tbaa !20, !noalias !180
  %factor.op.mul = mul i64 %.pre, %.pre270
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.preheader ], [ %i.ds, %._crit_edge ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.reass
  br label %bb.d

bb.d:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit122, %bb.f
  %.2251 = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.ds, %bb.f ] ; 2 uses
  %.1118250 = phi ptr [ %i.ct, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dr, %bb.f ] ; 2 uses
  %.1120249 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.dt, %bb.f ]
  %i.cu = load <2 x float>, ptr %.1118250, align 4, !tbaa !44
  %i.cv = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.cw = sitofp <2 x i32> %i.cv to <2 x float>
  %i.cx = fmul fast <2 x float> %i.cu, splat (float 5.000000e-01)
  %i.cy = fadd fast <2 x float> %i.cx, splat (float 5.000000e-01)
  %i.cz = fmul fast <2 x float> %i.cy, %i.cw
  %i.da = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cz)
  %i.db = fptosi <2 x float> %i.da to <2 x i32>   ; 3 uses
  %i.dc = extractelement <2 x i32> %i.db, i64 0   ; 2 uses
  %i.dd = extractelement <2 x i32> %i.db, i64 1   ; 2 uses
  %i.de = or i32 %i.dd, %i.dc
  %i.df = icmp sgt i32 %i.de, -1
  %i.dg = icmp sgt <2 x i32> %i.cv, %i.db         ; 2 uses
  %i.dh = extractelement <2 x i1> %i.dg, i64 0
  %i.di = and i1 %i.dh, %i.df
  %i.dj = extractelement <2 x i1> %i.dg, i64 1
  %i.dk = and i1 %i.dj, %i.di
  br i1 %i.dk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dl = extractelement <2 x i32> %i.cv, i64 0
  %i.dm = mul nuw nsw i32 %i.dl, %i.dd
  %i.dn = add nsw i32 %i.dm, %i.dc
  %i.do = load i32, ptr %i.p, align 8, !tbaa !16
  %i.dp = mul nsw i32 %i.do, %i.dn
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dq = phi i32 [ %i.dp, %bb.e ], [ -1, %bb.d ]
  store i32 %i.dq, ptr %.2251, align 4, !tbaa !23
  %i.dr = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.dt = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.du = icmp slt i32 %i.dt, %i.e
  br i1 %i.du, label %bb.d, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next, %i.dw
  br i1 %i.dx, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !172

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dy = load ptr, ptr %1, align 8, !tbaa !20, !noalias !181 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !19, !noalias !182
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !18, !noalias !182
  %i.ed = mul i64 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i32 %i.e, 7
  br i1 %i.ef, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

.preheader228.loopexit:                           ; preds = %bb.g
  %i.ej = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dy, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fw, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.ee, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fx, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ej, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fy, %.preheader228.loopexit ]
  %i.ek = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ek, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.fy, %bb.g ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.fz, %bb.g ]
  %.0112231 = phi ptr [ %i.ee, %.lr.ph ], [ %i.fx, %bb.g ] ; 2 uses
  %.0114230 = phi ptr [ %i.dy, %.lr.ph ], [ %i.fw, %bb.g ] ; 2 uses
  %i.en = load <8 x float>, ptr %.0114230, align 1, !tbaa !41
  %i.eo = load <8 x float>, ptr %.0112231, align 1, !tbaa !41
  %i.ep = load i32, ptr %i.eg, align 4, !tbaa !37
  %i.eq = sitofp fast i32 %i.ep to float
  %i.er = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <8 x float> %i.er, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.et = fmul fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.eu = fadd fast <8 x float> %i.et, splat (float 5.000000e-01)
  %i.ev = fmul fast <8 x float> %i.eu, %i.es
  %i.ew = load i32, ptr %i.eh, align 8, !tbaa !38
  %i.ex = sitofp fast i32 %i.ew to float
  %i.ey = insertelement <8 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <8 x float> %i.ey, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fa = fmul fast <8 x float> %i.eo, splat (float 5.000000e-01)
  %i.fb = fadd fast <8 x float> %i.fa, splat (float 5.000000e-01)
  %i.fc = fmul fast <8 x float> %i.fb, %i.ez
  %i.fd = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ev, i32 1) ; 3 uses
  %i.fe = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fc, i32 1) ; 3 uses
  %i.ff = fcmp fast ogt <8 x float> %i.fd, splat (float -1.000000e+00)
  %i.fg = fcmp fast ogt <8 x float> %i.es, %i.fd
  %i.fh = and <8 x i1> %i.ff, %i.fg
  %i.fi = fcmp fast ogt <8 x float> %i.fe, splat (float -1.000000e+00)
  %i.fj = fcmp fast ogt <8 x float> %i.ez, %i.fe
  %i.fk = and <8 x i1> %i.fi, %i.fj
  %i.fl = and <8 x i1> %i.fh, %i.fk
  %i.fm = fmul fast <8 x float> %i.fe, %i.es
  %i.fn = fadd fast <8 x float> %i.fm, %i.fd
  %i.fo = load i32, ptr %i.ei, align 8, !tbaa !16
  %i.fp = sitofp fast i32 %i.fo to float
  %i.fq = insertelement <8 x float> poison, float %i.fp, i64 0
  %i.fr = shufflevector <8 x float> %i.fq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fs = fmul fast <8 x float> %i.fr, %i.fn
  %i.ft = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fs)
  %i.fu = bitcast <8 x i32> %i.ft to <8 x float>
  %i.fv = select <8 x i1> %i.fl, <8 x float> %i.fu, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fv, ptr %.3233, align 1, !tbaa !41
  %i.fw = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.fz = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.ga = or disjoint i32 %i.fz, 7
  %i.gb = icmp slt i32 %i.ga, %i.e
  br i1 %i.gb, label %bb.g, label %.preheader228.loopexit, !llvm.loop !177

bb.h:                                             ; preds = %.lr.ph241, %bb.j
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.he, %bb.j ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.hf, %bb.j ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.hd, %bb.j ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.hc, %bb.j ] ; 2 uses
  %i.gc = load float, ptr %.1115237, align 4, !tbaa !44
  %i.gd = load float, ptr %.1113238, align 4, !tbaa !44
  %i.ge = load <2 x i32>, ptr %i.el, align 4, !tbaa !23 ; 3 uses
  %i.gf = sitofp <2 x i32> %i.ge to <2 x float>
  %i.gg = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.gd, i64 1
  %i.gi = fmul fast <2 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fadd fast <2 x float> %i.gi, splat (float 5.000000e-01)
  %i.gk = fmul fast <2 x float> %i.gj, %i.gf
  %i.gl = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gk)
  %i.gm = fptosi <2 x float> %i.gl to <2 x i32>   ; 3 uses
  %i.gn = extractelement <2 x i32> %i.gm, i64 0   ; 2 uses
  %i.go = extractelement <2 x i32> %i.gm, i64 1   ; 2 uses
  %i.gp = or i32 %i.go, %i.gn
  %i.gq = icmp sgt i32 %i.gp, -1
  %i.gr = icmp sgt <2 x i32> %i.ge, %i.gm         ; 2 uses
  %i.gs = extractelement <2 x i1> %i.gr, i64 0
  %i.gt = and i1 %i.gs, %i.gq
  %i.gu = extractelement <2 x i1> %i.gr, i64 1
  %i.gv = and i1 %i.gu, %i.gt
  br i1 %i.gv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gw = extractelement <2 x i32> %i.ge, i64 0
  %i.gx = mul nuw nsw i32 %i.gw, %i.go
  %i.gy = add nsw i32 %i.gx, %i.gn
  %i.gz = load i32, ptr %i.em, align 8, !tbaa !16
  %i.ha = mul nsw i32 %i.gz, %i.gy
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.hb = phi i32 [ %i.ha, %bb.i ], [ -1, %bb.h ]
  store i32 %i.hb, ptr %.4240, align 4, !tbaa !23
  %i.hc = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.hf = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hf, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !178

.loopexit:                                        ; preds = %bb.j, %._crit_edge, %._crit_edge.us, %.preheader228, %.preheader227, %_ZN4ncnn3MatD2Ev.exit122.lr.ph.split
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !196 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader227, label %_ZN4ncnn3MatD2Ev.exit121

.preheader227:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader227
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0255 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !197
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !197
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !197
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph245, label %.preheader

.preheader:                                       ; preds = %.lr.ph245, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph245 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bm, %.lr.ph245 ]
  %.1.lcssa = phi ptr [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bn, %.lr.ph245 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph252, label %._crit_edge

.lr.ph245:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph245
  %.1244 = phi ptr [ %i.bn, %.lr.ph245 ], [ %.0255, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117243 = phi ptr [ %i.bm, %.lr.ph245 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119242 = phi i32 [ %i.bo, %.lr.ph245 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117243, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117243, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao
  %i.ar = fadd fast <8 x float> %i.ai, splat (float 5.000000e-01)
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ar, i32 1) ; 3 uses
  %i.at = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.au = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.at, i32 1) ; 3 uses
  %i.av = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.aw = fcmp fast ogt <8 x float> %i.ae, %i.as
  %i.ax = and <8 x i1> %i.av, %i.aw
  %i.ay = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.az = fcmp fast ogt <8 x float> %i.am, %i.au
  %i.ba = and <8 x i1> %i.ay, %i.az
  %i.bb = and <8 x i1> %i.ax, %i.ba
  %i.bc = fmul fast <8 x float> %i.au, %i.ae
  %i.bd = fadd fast <8 x float> %i.bc, %i.as
  %i.be = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bf = sitofp fast i32 %i.be to float
  %i.bg = insertelement <8 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bi = fmul fast <8 x float> %i.bh, %i.bd
  %i.bj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bi)
  %i.bk = bitcast <8 x i32> %i.bj to <8 x float>
  %i.bl = select <8 x i1> %i.bb, <8 x float> %i.bk, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bl, ptr %.1244, align 1, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.0117243, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1244, i64 32 ; 2 uses
  %i.bo = add nuw nsw i32 %.0119242, 16           ; 2 uses
  %i.bp = or disjoint i32 %i.bo, 15
  %i.bq = icmp slt i32 %i.bp, %i.e
  br i1 %i.bq, label %.lr.ph245, label %.preheader, !llvm.loop !187

.lr.ph252:                                        ; preds = %.preheader, %bb.b
  %.2251 = phi ptr [ %i.cr, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118250 = phi ptr [ %i.cq, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120249 = phi i32 [ %i.cs, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.br = load <2 x float>, ptr %.1118250, align 4, !tbaa !44
  %i.bs = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bt = fmul fast <2 x float> %i.br, splat (float 5.000000e-01)
  %i.bu = fadd fast <2 x float> %i.bt, splat (float 5.000000e-01)
  %i.bv = add nsw <2 x i32> %i.bs, splat (i32 -1)
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = fmul fast <2 x float> %i.bu, %i.bw
  %i.by = fadd fast <2 x float> %i.bx, splat (float 5.000000e-01)
  %i.bz = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.by)
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>   ; 3 uses
  %i.cb = extractelement <2 x i32> %i.ca, i64 0   ; 2 uses
  %i.cc = extractelement <2 x i32> %i.ca, i64 1   ; 2 uses
  %i.cd = or i32 %i.cc, %i.cb
  %i.ce = icmp sgt i32 %i.cd, -1
  %i.cf = icmp sgt <2 x i32> %i.bs, %i.ca         ; 2 uses
  %i.cg = extractelement <2 x i1> %i.cf, i64 0
  %i.ch = and i1 %i.cg, %i.ce
  %i.ci = extractelement <2 x i1> %i.cf, i64 1
  %i.cj = and i1 %i.ci, %i.ch
  br i1 %i.cj, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph252
  %i.ck = extractelement <2 x i32> %i.bs, i64 0
  %i.cl = mul nuw nsw i32 %i.ck, %i.cc
  %i.cm = add nsw i32 %i.cl, %i.cb
  %i.cn = load i32, ptr %i.p, align 8, !tbaa !16
  %i.co = mul nsw i32 %i.cn, %i.cm
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.a
  %i.cp = phi i32 [ %i.co, %bb.a ], [ -1, %.lr.ph252 ]
  store i32 %i.cp, ptr %.2251, align 4, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %.1118250, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.2251, i64 4 ; 2 uses
  %i.cs = add nuw nsw i32 %.1120249, 2            ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.e
  br i1 %i.ct, label %.lr.ph252, label %._crit_edge, !llvm.loop !188

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cr, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !17
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !189

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.cx = load ptr, ptr %1, align 8, !tbaa !20, !noalias !198 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !19, !noalias !199
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !18, !noalias !199
  %i.dc = mul i64 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dc ; 2 uses
  %i.de = icmp sgt i32 %i.e, 7
  br i1 %i.de, label %.lr.ph, label %.preheader228

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader228.loopexit:                           ; preds = %bb.c
  %i.di = and i32 %i.e, 2147483640
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.cx, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ez, %.preheader228.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dd, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fa, %.preheader228.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.di, %.preheader228.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fb, %.preheader228.loopexit ]
  %i.dj = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dj, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %.preheader228
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3233 = phi ptr [ %i.f, %.lr.ph ], [ %i.fb, %bb.c ] ; 2 uses
  %.0110232 = phi i32 [ 0, %.lr.ph ], [ %i.fc, %bb.c ]
  %.0112231 = phi ptr [ %i.dd, %.lr.ph ], [ %i.fa, %bb.c ] ; 2 uses
  %.0114230 = phi ptr [ %i.cx, %.lr.ph ], [ %i.ez, %bb.c ] ; 2 uses
  %i.dm = load <8 x float>, ptr %.0114230, align 1, !tbaa !41
  %i.dn = load <8 x float>, ptr %.0112231, align 1, !tbaa !41
  %i.do = load i32, ptr %i.df, align 4, !tbaa !37
  %i.dp = sitofp fast i32 %i.do to float
  %i.dq = insertelement <8 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <8 x float> %i.dq, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ds = fmul fast <8 x float> %i.dm, splat (float 5.000000e-01)
  %i.dt = fadd fast <8 x float> %i.ds, splat (float 5.000000e-01)
  %i.du = fadd fast <8 x float> %i.dr, splat (float -1.000000e+00)
  %i.dv = fmul fast <8 x float> %i.du, %i.dt
  %i.dw = load i32, ptr %i.dg, align 8, !tbaa !38
  %i.dx = sitofp fast i32 %i.dw to float
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ea = fmul fast <8 x float> %i.dn, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fadd fast <8 x float> %i.dz, splat (float -1.000000e+00)
  %i.ed = fmul fast <8 x float> %i.ec, %i.eb
  %i.ee = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.ef = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ee, i32 1) ; 3 uses
  %i.eg = fadd fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.eh = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eg, i32 1) ; 3 uses
  %i.ei = fcmp fast ogt <8 x float> %i.ef, splat (float -1.000000e+00)
  %i.ej = fcmp fast ogt <8 x float> %i.dr, %i.ef
  %i.ek = and <8 x i1> %i.ei, %i.ej
  %i.el = fcmp fast ogt <8 x float> %i.eh, splat (float -1.000000e+00)
  %i.em = fcmp fast ogt <8 x float> %i.dz, %i.eh
  %i.en = and <8 x i1> %i.el, %i.em
  %i.eo = and <8 x i1> %i.ek, %i.en
  %i.ep = fmul fast <8 x float> %i.eh, %i.dr
  %i.eq = fadd fast <8 x float> %i.ep, %i.ef
  %i.er = load i32, ptr %i.dh, align 8, !tbaa !16
  %i.es = sitofp fast i32 %i.er to float
  %i.et = insertelement <8 x float> poison, float %i.es, i64 0
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ev = fmul fast <8 x float> %i.eu, %i.eq
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ev)
  %i.ex = bitcast <8 x i32> %i.ew to <8 x float>
  %i.ey = select <8 x i1> %i.eo, <8 x float> %i.ex, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.ey, ptr %.3233, align 1, !tbaa !41
  %i.ez = getelementptr inbounds nuw i8, ptr %.0114230, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0112231, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.3233, i64 32 ; 2 uses
  %i.fc = add nuw nsw i32 %.0110232, 8            ; 2 uses
  %i.fd = or disjoint i32 %i.fc, 7
  %i.fe = icmp slt i32 %i.fd, %i.e
  br i1 %i.fe, label %bb.c, label %.preheader228.loopexit, !llvm.loop !194

bb.d:                                             ; preds = %.lr.ph241, %bb.f
  %.4240 = phi ptr [ %.3.lcssa, %.lr.ph241 ], [ %i.gj, %bb.f ] ; 2 uses
  %.1111239 = phi i32 [ %.0110.lcssa, %.lr.ph241 ], [ %i.gk, %bb.f ]
  %.1113238 = phi ptr [ %.0112.lcssa, %.lr.ph241 ], [ %i.gi, %bb.f ] ; 2 uses
  %.1115237 = phi ptr [ %.0114.lcssa, %.lr.ph241 ], [ %i.gh, %bb.f ] ; 2 uses
  %i.ff = load float, ptr %.1115237, align 4, !tbaa !44
  %i.fg = load float, ptr %.1113238, align 4, !tbaa !44
  %i.fh = load <2 x i32>, ptr %i.dk, align 4, !tbaa !23 ; 3 uses
  %i.fi = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.fg, i64 1
  %i.fk = fmul fast <2 x float> %i.fj, splat (float 5.000000e-01)
  %i.fl = fadd fast <2 x float> %i.fk, splat (float 5.000000e-01)
  %i.fm = add nsw <2 x i32> %i.fh, splat (i32 -1)
  %i.fn = sitofp <2 x i32> %i.fm to <2 x float>
  %i.fo = fmul fast <2 x float> %i.fl, %i.fn
  %i.fp = fadd fast <2 x float> %i.fo, splat (float 5.000000e-01)
  %i.fq = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.fp)
  %i.fr = fptosi <2 x float> %i.fq to <2 x i32>   ; 3 uses
  %i.fs = extractelement <2 x i32> %i.fr, i64 0   ; 2 uses
  %i.ft = extractelement <2 x i32> %i.fr, i64 1   ; 2 uses
  %i.fu = or i32 %i.ft, %i.fs
  %i.fv = icmp sgt i32 %i.fu, -1
  %i.fw = icmp sgt <2 x i32> %i.fh, %i.fr         ; 2 uses
  %i.fx = extractelement <2 x i1> %i.fw, i64 0
  %i.fy = and i1 %i.fx, %i.fv
  %i.fz = extractelement <2 x i1> %i.fw, i64 1
  %i.ga = and i1 %i.fz, %i.fy
  br i1 %i.ga, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gb = extractelement <2 x i32> %i.fh, i64 0
  %i.gc = mul nuw nsw i32 %i.gb, %i.ft
  %i.gd = add nsw i32 %i.gc, %i.fs
  %i.ge = load i32, ptr %i.dl, align 8, !tbaa !16
  %i.gf = mul nsw i32 %i.ge, %i.gd
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gg = phi i32 [ %i.gf, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gg, ptr %.4240, align 4, !tbaa !23
  %i.gh = getelementptr inbounds nuw i8, ptr %.1115237, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.1113238, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %.4240, i64 4
  %i.gk = add nuw nsw i32 %.1111239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gk, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !195

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader228, %.preheader227
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !213 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !214
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !214
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !214
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bs, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bt, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.bt, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bs, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.bu, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01)
  %i.aj = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.al = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aj, <8 x float> nofpclass(nan inf) %i.ak)
  %i.am = load i32, ptr %i.o, align 8, !tbaa !38
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aq = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fmul fast <8 x float> %i.ar, %i.ap
  %i.at = fadd fast <8 x float> %i.as, splat (float -5.000000e-01)
  %i.au = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00)
  %i.av = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> nofpclass(nan inf) %i.av)
  %i.ax = fadd fast <8 x float> %i.al, splat (float 5.000000e-01)
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 3 uses
  %i.az = fadd fast <8 x float> %i.aw, splat (float 5.000000e-01)
  %i.ba = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.az, i32 1) ; 3 uses
  %i.bb = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bc = fcmp fast ogt <8 x float> %i.ae, %i.ay
  %i.bd = and <8 x i1> %i.bb, %i.bc
  %i.be = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bf = fcmp fast ogt <8 x float> %i.ap, %i.ba
  %i.bg = and <8 x i1> %i.be, %i.bf
  %i.bh = and <8 x i1> %i.bd, %i.bg
  %i.bi = fmul fast <8 x float> %i.ba, %i.ae
  %i.bj = fadd fast <8 x float> %i.bi, %i.ay
  %i.bk = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bl = sitofp fast i32 %i.bk to float
  %i.bm = insertelement <8 x float> poison, float %i.bl, i64 0
  %i.bn = shufflevector <8 x float> %i.bm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bo = fmul fast <8 x float> %i.bn, %i.bj
  %i.bp = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bo)
  %i.bq = bitcast <8 x i32> %i.bp to <8 x float>
  %i.br = select <8 x i1> %i.bh, <8 x float> %i.bq, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.br, ptr %.1250, align 1, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.bu = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bv = or disjoint i32 %i.bu, 15
  %i.bw = icmp slt i32 %i.bv, %i.e
  br i1 %i.bw, label %.lr.ph251, label %.preheader, !llvm.loop !204

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.da, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.cz, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.db, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bx = load <2 x float>, ptr %.1118256, align 4, !tbaa !44
  %i.by = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.bz = sitofp <2 x i32> %i.by to <2 x float>   ; 2 uses
  %i.ca = fmul fast <2 x float> %i.bx, splat (float 5.000000e-01)
  %i.cb = fadd fast <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = fmul fast <2 x float> %i.cb, %i.bz
  %i.cd = fadd fast <2 x float> %i.cc, splat (float -5.000000e-01)
  %i.ce = fadd fast <2 x float> %i.bz, splat (float -1.000000e+00)
  %i.cf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cd, <2 x float> zeroinitializer)
  %i.cg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cf, <2 x float> %i.ce)
  %i.ch = fadd fast <2 x float> %i.cg, splat (float 5.000000e-01)
  %i.ci = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ch)
  %i.cj = fptosi <2 x float> %i.ci to <2 x i32>   ; 3 uses
  %i.ck = extractelement <2 x i32> %i.cj, i64 0   ; 2 uses
  %i.cl = extractelement <2 x i32> %i.cj, i64 1   ; 2 uses
  %i.cm = or i32 %i.cl, %i.ck
  %i.cn = icmp sgt i32 %i.cm, -1
  %i.co = icmp sgt <2 x i32> %i.by, %i.cj         ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = and i1 %i.cp, %i.cn
  %i.cr = extractelement <2 x i1> %i.co, i64 1
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.ct = extractelement <2 x i32> %i.by, i64 0
  %i.cu = mul nuw nsw i32 %i.ct, %i.cl
  %i.cv = add nsw i32 %i.cu, %i.ck
  %i.cw = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cx = mul nsw i32 %i.cw, %i.cv
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.cy = phi i32 [ %i.cx, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.cy, ptr %.2257, align 4, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.db = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.dc = icmp slt i32 %i.db, %i.e
  br i1 %i.dc, label %.lr.ph258, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.da, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !17
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next, %i.de
  br i1 %i.df, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !206

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !215 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !19, !noalias !216
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !18, !noalias !216
  %i.dl = mul i64 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dl ; 2 uses
  %i.dn = icmp sgt i32 %i.e, 7
  br i1 %i.dn, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.dr = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dg, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fo, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dm, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fp, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dr, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fq, %.preheader234.loopexit ]
  %i.ds = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ds, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fq, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fr, %bb.c ]
  %.0112237 = phi ptr [ %i.dm, %.lr.ph ], [ %i.fp, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.dg, %.lr.ph ], [ %i.fo, %bb.c ] ; 2 uses
  %i.dv = load <8 x float>, ptr %.0114236, align 1, !tbaa !41
  %i.dw = load <8 x float>, ptr %.0112237, align 1, !tbaa !41
  %i.dx = load i32, ptr %i.do, align 4, !tbaa !37
  %i.dy = sitofp fast i32 %i.dx to float
  %i.dz = insertelement <8 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <8 x float> %i.dz, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.eb = fmul fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.ec = fadd fast <8 x float> %i.eb, splat (float 5.000000e-01)
  %i.ed = fmul fast <8 x float> %i.ec, %i.ea
  %i.ee = fadd fast <8 x float> %i.ed, splat (float -5.000000e-01)
  %i.ef = fadd fast <8 x float> %i.ea, splat (float -1.000000e+00)
  %i.eg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ee, <8 x float> zeroinitializer)
  %i.eh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ef, <8 x float> nofpclass(nan inf) %i.eg)
  %i.ei = load i32, ptr %i.dp, align 8, !tbaa !38
  %i.ej = sitofp fast i32 %i.ei to float
  %i.ek = insertelement <8 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <8 x float> %i.ek, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.em = fmul fast <8 x float> %i.dw, splat (float 5.000000e-01)
  %i.en = fadd fast <8 x float> %i.em, splat (float 5.000000e-01)
  %i.eo = fmul fast <8 x float> %i.en, %i.el
  %i.ep = fadd fast <8 x float> %i.eo, splat (float -5.000000e-01)
  %i.eq = fadd fast <8 x float> %i.el, splat (float -1.000000e+00)
  %i.er = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ep, <8 x float> zeroinitializer)
  %i.es = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.er)
  %i.et = fadd fast <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.eu = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.et, i32 1) ; 3 uses
  %i.ev = fadd fast <8 x float> %i.es, splat (float 5.000000e-01)
  %i.ew = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ev, i32 1) ; 3 uses
  %i.ex = fcmp fast ogt <8 x float> %i.eu, splat (float -1.000000e+00)
  %i.ey = fcmp fast ogt <8 x float> %i.ea, %i.eu
  %i.ez = and <8 x i1> %i.ex, %i.ey
  %i.fa = fcmp fast ogt <8 x float> %i.ew, splat (float -1.000000e+00)
  %i.fb = fcmp fast ogt <8 x float> %i.el, %i.ew
  %i.fc = and <8 x i1> %i.fa, %i.fb
  %i.fd = and <8 x i1> %i.ez, %i.fc
  %i.fe = fmul fast <8 x float> %i.ew, %i.ea
  %i.ff = fadd fast <8 x float> %i.fe, %i.eu
  %i.fg = load i32, ptr %i.dq, align 8, !tbaa !16
  %i.fh = sitofp fast i32 %i.fg to float
  %i.fi = insertelement <8 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <8 x float> %i.fi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fk = fmul fast <8 x float> %i.fj, %i.ff
  %i.fl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fk)
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = select <8 x i1> %i.fd, <8 x float> %i.fm, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fn, ptr %.3239, align 1, !tbaa !41
  %i.fo = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fr = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fs = or disjoint i32 %i.fr, 7
  %i.ft = icmp slt i32 %i.fs, %i.e
  br i1 %i.ft, label %bb.c, label %.preheader234.loopexit, !llvm.loop !211

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.hb, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.hc, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.ha, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gz, %bb.f ] ; 2 uses
  %i.fu = load float, ptr %.1115243, align 4, !tbaa !44
  %i.fv = load float, ptr %.1113244, align 4, !tbaa !44
  %i.fw = load <2 x i32>, ptr %i.dt, align 4, !tbaa !23 ; 3 uses
  %i.fx = sitofp <2 x i32> %i.fw to <2 x float>   ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fv, i64 1
  %i.ga = fmul fast <2 x float> %i.fz, splat (float 5.000000e-01)
  %i.gb = fadd fast <2 x float> %i.ga, splat (float 5.000000e-01)
  %i.gc = fmul fast <2 x float> %i.gb, %i.fx
  %i.gd = fadd fast <2 x float> %i.gc, splat (float -5.000000e-01)
  %i.ge = fadd fast <2 x float> %i.fx, splat (float -1.000000e+00)
  %i.gf = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gd, <2 x float> zeroinitializer)
  %i.gg = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gf, <2 x float> %i.ge)
  %i.gh = fadd fast <2 x float> %i.gg, splat (float 5.000000e-01)
  %i.gi = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gh)
  %i.gj = fptosi <2 x float> %i.gi to <2 x i32>   ; 3 uses
  %i.gk = extractelement <2 x i32> %i.gj, i64 0   ; 2 uses
  %i.gl = extractelement <2 x i32> %i.gj, i64 1   ; 2 uses
  %i.gm = or i32 %i.gl, %i.gk
  %i.gn = icmp sgt i32 %i.gm, -1
  %i.go = icmp sgt <2 x i32> %i.fw, %i.gj         ; 2 uses
  %i.gp = extractelement <2 x i1> %i.go, i64 0
  %i.gq = and i1 %i.gp, %i.gn
  %i.gr = extractelement <2 x i1> %i.go, i64 1
  %i.gs = and i1 %i.gr, %i.gq
  br i1 %i.gs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gt = extractelement <2 x i32> %i.fw, i64 0
  %i.gu = mul nuw nsw i32 %i.gt, %i.gl
  %i.gv = add nsw i32 %i.gu, %i.gk
  %i.gw = load i32, ptr %i.du, align 8, !tbaa !16
  %i.gx = mul nsw i32 %i.gw, %i.gv
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gy = phi i32 [ %i.gx, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gy, ptr %.4246, align 4, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.hc = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !212

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !230 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader233, label %_ZN4ncnn3MatD2Ev.exit121

.preheader233:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader233
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0261 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !231
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !231
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !231
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph251, label %.preheader

.preheader:                                       ; preds = %.lr.ph251, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph251 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bq, %.lr.ph251 ]
  %.1.lcssa = phi ptr [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.br, %.lr.ph251 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph258, label %._crit_edge

.lr.ph251:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph251
  %.1250 = phi ptr [ %i.br, %.lr.ph251 ], [ %.0261, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117249 = phi ptr [ %i.bq, %.lr.ph251 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119248 = phi i32 [ %i.bs, %.lr.ph251 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117249, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117249, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> zeroinitializer)
  %i.ak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aj)
  %i.al = load i32, ptr %i.o, align 8, !tbaa !38
  %i.am = sitofp fast i32 %i.al to float
  %i.an = insertelement <8 x float> poison, float %i.am, i64 0
  %i.ao = shufflevector <8 x float> %i.an, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.aq = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.ao, splat (float -1.000000e+00) ; 2 uses
  %i.as = fmul fast <8 x float> %i.ar, %i.aq
  %i.at = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.au = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> nofpclass(nan inf) %i.at)
  %i.av = fadd fast <8 x float> %i.ak, splat (float 5.000000e-01)
  %i.aw = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 3 uses
  %i.ax = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.ay = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ax, i32 1) ; 3 uses
  %i.az = fcmp fast ogt <8 x float> %i.aw, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.aw
  %i.bb = and <8 x i1> %i.az, %i.ba
  %i.bc = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ao, %i.ay
  %i.be = and <8 x i1> %i.bc, %i.bd
  %i.bf = and <8 x i1> %i.bb, %i.be
  %i.bg = fmul fast <8 x float> %i.ay, %i.ae
  %i.bh = fadd fast <8 x float> %i.bg, %i.aw
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bm = fmul fast <8 x float> %i.bl, %i.bh
  %i.bn = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bm)
  %i.bo = bitcast <8 x i32> %i.bn to <8 x float>
  %i.bp = select <8 x i1> %i.bf, <8 x float> %i.bo, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bp, ptr %.1250, align 1, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %.0117249, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1250, i64 32 ; 2 uses
  %i.bs = add nuw nsw i32 %.0119248, 16           ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 15
  %i.bu = icmp slt i32 %i.bt, %i.e
  br i1 %i.bu, label %.lr.ph251, label %.preheader, !llvm.loop !221

.lr.ph258:                                        ; preds = %.preheader, %bb.b
  %.2257 = phi ptr [ %i.cz, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118256 = phi ptr [ %i.cy, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120255 = phi i32 [ %i.da, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bv = load <2 x float>, ptr %.1118256, align 4, !tbaa !44
  %i.bw = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.bx = fmul fast <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.by = fadd fast <2 x float> %i.bx, splat (float 5.000000e-01)
  %i.bz = add nsw <2 x i32> %i.bw, splat (i32 -1)
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = fmul fast <2 x float> %i.by, %i.ca
  %i.cc = sitofp <2 x i32> %i.bw to <2 x float>
  %i.cd = fadd fast <2 x float> %i.cc, splat (float -1.000000e+00)
  %i.ce = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cb, <2 x float> zeroinitializer)
  %i.cf = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.ce, <2 x float> %i.cd)
  %i.cg = fadd fast <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.cg)
  %i.ci = fptosi <2 x float> %i.ch to <2 x i32>   ; 3 uses
  %i.cj = extractelement <2 x i32> %i.ci, i64 0   ; 2 uses
  %i.ck = extractelement <2 x i32> %i.ci, i64 1   ; 2 uses
  %i.cl = or i32 %i.ck, %i.cj
  %i.cm = icmp sgt i32 %i.cl, -1
  %i.cn = icmp sgt <2 x i32> %i.bw, %i.ci         ; 2 uses
  %i.co = extractelement <2 x i1> %i.cn, i64 0
  %i.cp = and i1 %i.co, %i.cm
  %i.cq = extractelement <2 x i1> %i.cn, i64 1
  %i.cr = and i1 %i.cq, %i.cp
  br i1 %i.cr, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph258
  %i.cs = extractelement <2 x i32> %i.bw, i64 0
  %i.ct = mul nuw nsw i32 %i.cs, %i.ck
  %i.cu = add nsw i32 %i.ct, %i.cj
  %i.cv = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cw = mul nsw i32 %i.cv, %i.cu
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph258, %bb.a
  %i.cx = phi i32 [ %i.cw, %bb.a ], [ -1, %.lr.ph258 ]
  store i32 %i.cx, ptr %.2257, align 4, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %.1118256, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.2257, i64 4 ; 2 uses
  %i.da = add nuw nsw i32 %.1120255, 2            ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.e
  br i1 %i.db, label %.lr.ph258, label %._crit_edge, !llvm.loop !222

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.cz, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next, %i.dd
  br i1 %i.de, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !223

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.df = load ptr, ptr %1, align 8, !tbaa !20, !noalias !232 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !19, !noalias !233
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !18, !noalias !233
  %i.dk = mul i64 %i.dj, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk ; 2 uses
  %i.dm = icmp sgt i32 %i.e, 7
  br i1 %i.dm, label %.lr.ph, label %.preheader234

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader234.loopexit:                           ; preds = %bb.c
  %i.dq = and i32 %i.e, 2147483640
  br label %.preheader234

.preheader234:                                    ; preds = %.preheader234.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.df, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fl, %.preheader234.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dl, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fm, %.preheader234.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dq, %.preheader234.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fn, %.preheader234.loopexit ]
  %i.dr = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dr, label %.lr.ph247, label %.loopexit

.lr.ph247:                                        ; preds = %.preheader234
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3239 = phi ptr [ %i.f, %.lr.ph ], [ %i.fn, %bb.c ] ; 2 uses
  %.0110238 = phi i32 [ 0, %.lr.ph ], [ %i.fo, %bb.c ]
  %.0112237 = phi ptr [ %i.dl, %.lr.ph ], [ %i.fm, %bb.c ] ; 2 uses
  %.0114236 = phi ptr [ %i.df, %.lr.ph ], [ %i.fl, %bb.c ] ; 2 uses
  %i.du = load <8 x float>, ptr %.0114236, align 1, !tbaa !41
  %i.dv = load <8 x float>, ptr %.0112237, align 1, !tbaa !41
  %i.dw = load i32, ptr %i.dn, align 4, !tbaa !37
  %i.dx = sitofp fast i32 %i.dw to float
  %i.dy = insertelement <8 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.ea = fmul fast <8 x float> %i.du, splat (float 5.000000e-01)
  %i.eb = fadd fast <8 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fadd fast <8 x float> %i.dz, splat (float -1.000000e+00) ; 2 uses
  %i.ed = fmul fast <8 x float> %i.ec, %i.eb
  %i.ee = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ed, <8 x float> zeroinitializer)
  %i.ef = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ec, <8 x float> nofpclass(nan inf) %i.ee)
  %i.eg = load i32, ptr %i.do, align 8, !tbaa !38
  %i.eh = sitofp fast i32 %i.eg to float
  %i.ei = insertelement <8 x float> poison, float %i.eh, i64 0
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.el = fadd fast <8 x float> %i.ek, splat (float 5.000000e-01)
  %i.em = fadd fast <8 x float> %i.ej, splat (float -1.000000e+00) ; 2 uses
  %i.en = fmul fast <8 x float> %i.em, %i.el
  %i.eo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.en, <8 x float> zeroinitializer)
  %i.ep = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.em, <8 x float> nofpclass(nan inf) %i.eo)
  %i.eq = fadd fast <8 x float> %i.ef, splat (float 5.000000e-01)
  %i.er = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.eq, i32 1) ; 3 uses
  %i.es = fadd fast <8 x float> %i.ep, splat (float 5.000000e-01)
  %i.et = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.es, i32 1) ; 3 uses
  %i.eu = fcmp fast ogt <8 x float> %i.er, splat (float -1.000000e+00)
  %i.ev = fcmp fast ogt <8 x float> %i.dz, %i.er
  %i.ew = and <8 x i1> %i.eu, %i.ev
  %i.ex = fcmp fast ogt <8 x float> %i.et, splat (float -1.000000e+00)
  %i.ey = fcmp fast ogt <8 x float> %i.ej, %i.et
  %i.ez = and <8 x i1> %i.ex, %i.ey
  %i.fa = and <8 x i1> %i.ew, %i.ez
  %i.fb = fmul fast <8 x float> %i.et, %i.dz
  %i.fc = fadd fast <8 x float> %i.fb, %i.er
  %i.fd = load i32, ptr %i.dp, align 8, !tbaa !16
  %i.fe = sitofp fast i32 %i.fd to float
  %i.ff = insertelement <8 x float> poison, float %i.fe, i64 0
  %i.fg = shufflevector <8 x float> %i.ff, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fh = fmul fast <8 x float> %i.fg, %i.fc
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fh)
  %i.fj = bitcast <8 x i32> %i.fi to <8 x float>
  %i.fk = select <8 x i1> %i.fa, <8 x float> %i.fj, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fk, ptr %.3239, align 1, !tbaa !41
  %i.fl = getelementptr inbounds nuw i8, ptr %.0114236, i64 32 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0112237, i64 32 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.3239, i64 32 ; 2 uses
  %i.fo = add nuw nsw i32 %.0110238, 8            ; 2 uses
  %i.fp = or disjoint i32 %i.fo, 7
  %i.fq = icmp slt i32 %i.fp, %i.e
  br i1 %i.fq, label %bb.c, label %.preheader234.loopexit, !llvm.loop !228

bb.d:                                             ; preds = %.lr.ph247, %bb.f
  %.4246 = phi ptr [ %.3.lcssa, %.lr.ph247 ], [ %i.gz, %bb.f ] ; 2 uses
  %.1111245 = phi i32 [ %.0110.lcssa, %.lr.ph247 ], [ %i.ha, %bb.f ]
  %.1113244 = phi ptr [ %.0112.lcssa, %.lr.ph247 ], [ %i.gy, %bb.f ] ; 2 uses
  %.1115243 = phi ptr [ %.0114.lcssa, %.lr.ph247 ], [ %i.gx, %bb.f ] ; 2 uses
  %i.fr = load float, ptr %.1115243, align 4, !tbaa !44
  %i.fs = load float, ptr %.1113244, align 4, !tbaa !44
  %i.ft = load <2 x i32>, ptr %i.ds, align 4, !tbaa !23 ; 4 uses
  %i.fu = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = fmul fast <2 x float> %i.fv, splat (float 5.000000e-01)
  %i.fx = fadd fast <2 x float> %i.fw, splat (float 5.000000e-01)
  %i.fy = add nsw <2 x i32> %i.ft, splat (i32 -1)
  %i.fz = sitofp <2 x i32> %i.fy to <2 x float>
  %i.ga = fmul fast <2 x float> %i.fx, %i.fz
  %i.gb = sitofp <2 x i32> %i.ft to <2 x float>
  %i.gc = fadd fast <2 x float> %i.gb, splat (float -1.000000e+00)
  %i.gd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ga, <2 x float> zeroinitializer)
  %i.ge = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gd, <2 x float> %i.gc)
  %i.gf = fadd fast <2 x float> %i.ge, splat (float 5.000000e-01)
  %i.gg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gf)
  %i.gh = fptosi <2 x float> %i.gg to <2 x i32>   ; 3 uses
  %i.gi = extractelement <2 x i32> %i.gh, i64 0   ; 2 uses
  %i.gj = extractelement <2 x i32> %i.gh, i64 1   ; 2 uses
  %i.gk = or i32 %i.gj, %i.gi
  %i.gl = icmp sgt i32 %i.gk, -1
  %i.gm = icmp sgt <2 x i32> %i.ft, %i.gh         ; 2 uses
  %i.gn = extractelement <2 x i1> %i.gm, i64 0
  %i.go = and i1 %i.gn, %i.gl
  %i.gp = extractelement <2 x i1> %i.gm, i64 1
  %i.gq = and i1 %i.gp, %i.go
  br i1 %i.gq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gr = extractelement <2 x i32> %i.ft, i64 0
  %i.gs = mul nuw nsw i32 %i.gr, %i.gj
  %i.gt = add nsw i32 %i.gs, %i.gi
  %i.gu = load i32, ptr %i.dt, align 8, !tbaa !16
  %i.gv = mul nsw i32 %i.gu, %i.gt
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.gw = phi i32 [ %i.gv, %bb.e ], [ -1, %bb.d ]
  store i32 %i.gw, ptr %.4246, align 4, !tbaa !23
  %i.gx = getelementptr inbounds nuw i8, ptr %.1115243, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.1113244, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.4246, i64 4
  %i.ha = add nuw nsw i32 %.1111245, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !229

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader234, %.preheader233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !247 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader240, label %_ZN4ncnn3MatD2Ev.exit121

.preheader240:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader240
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0268 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !248
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !248
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !248
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph258, label %.preheader

.preheader:                                       ; preds = %.lr.ph258, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph258 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.ca, %.lr.ph258 ]
  %.1.lcssa = phi ptr [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.cb, %.lr.ph258 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph265, label %._crit_edge

.lr.ph258:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph258
  %.1257 = phi ptr [ %i.cb, %.lr.ph258 ], [ %.0268, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117256 = phi ptr [ %i.ca, %.lr.ph258 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119255 = phi i32 [ %i.cc, %.lr.ph258 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117256, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117256, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ah)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ae
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.an = fsub fast <8 x float> %i.am, %i.al
  %i.ao = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.an, <8 x float> zeroinitializer)
  %i.ap = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ai, <8 x float> nofpclass(nan inf) %i.ao)
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = insertelement <8 x float> poison, float %i.ar, i64 0
  %i.at = shufflevector <8 x float> %i.as, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.au = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fmul fast <8 x float> %i.av, %i.at
  %i.ax = fadd fast <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aw)
  %i.az = fsub fast <8 x float> %i.ay, %i.at
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.az)
  %i.bb = fadd fast <8 x float> %i.at, splat (float -5.000000e-01)
  %i.bc = fsub fast <8 x float> %i.bb, %i.ba
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bc, <8 x float> zeroinitializer)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ax, <8 x float> nofpclass(nan inf) %i.bd)
  %i.bf = fadd fast <8 x float> %i.ap, splat (float 5.000000e-01)
  %i.bg = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bf, i32 1) ; 3 uses
  %i.bh = fadd fast <8 x float> %i.be, splat (float 5.000000e-01)
  %i.bi = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bh, i32 1) ; 3 uses
  %i.bj = fcmp fast ogt <8 x float> %i.bg, splat (float -1.000000e+00)
  %i.bk = fcmp fast ogt <8 x float> %i.ae, %i.bg
  %i.bl = and <8 x i1> %i.bj, %i.bk
  %i.bm = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.bn = fcmp fast ogt <8 x float> %i.at, %i.bi
  %i.bo = and <8 x i1> %i.bm, %i.bn
  %i.bp = and <8 x i1> %i.bl, %i.bo
  %i.bq = fmul fast <8 x float> %i.bi, %i.ae
  %i.br = fadd fast <8 x float> %i.bq, %i.bg
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bw = fmul fast <8 x float> %i.bv, %i.br
  %i.bx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bw)
  %i.by = bitcast <8 x i32> %i.bx to <8 x float>
  %i.bz = select <8 x i1> %i.bp, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bz, ptr %.1257, align 1, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %.0117256, i64 64 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1257, i64 32 ; 2 uses
  %i.cc = add nuw nsw i32 %.0119255, 16           ; 2 uses
  %i.cd = or disjoint i32 %i.cc, 15
  %i.ce = icmp slt i32 %i.cd, %i.e
  br i1 %i.ce, label %.lr.ph258, label %.preheader, !llvm.loop !238

.lr.ph265:                                        ; preds = %.preheader, %bb.b
  %.2264 = phi ptr [ %i.dm, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118263 = phi ptr [ %i.dl, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120262 = phi i32 [ %i.dn, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.cf = load <2 x float>, ptr %.1118263, align 4, !tbaa !44
  %i.cg = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 3 uses
  %i.ch = sitofp <2 x i32> %i.cg to <2 x float>   ; 4 uses
  %i.ci = fmul fast <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.cj = fadd fast <2 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = fmul fast <2 x float> %i.cj, %i.ch
  %i.cl = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ck)
  %i.cm = fsub fast <2 x float> %i.cl, %i.ch
  %i.cn = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cm)
  %i.co = fadd fast <2 x float> %i.ch, splat (float -5.000000e-01)
  %i.cp = fsub fast <2 x float> %i.co, %i.cn
  %i.cq = fadd fast <2 x float> %i.ch, splat (float -1.000000e+00)
  %i.cr = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cp, <2 x float> zeroinitializer)
  %i.cs = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = fadd fast <2 x float> %i.cs, splat (float 5.000000e-01)
  %i.cu = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.ct)
  %i.cv = fptosi <2 x float> %i.cu to <2 x i32>   ; 3 uses
  %i.cw = extractelement <2 x i32> %i.cv, i64 0   ; 2 uses
  %i.cx = extractelement <2 x i32> %i.cv, i64 1   ; 2 uses
  %i.cy = or i32 %i.cx, %i.cw
  %i.cz = icmp sgt i32 %i.cy, -1
  %i.da = icmp sgt <2 x i32> %i.cg, %i.cv         ; 2 uses
  %i.db = extractelement <2 x i1> %i.da, i64 0
  %i.dc = and i1 %i.db, %i.cz
  %i.dd = extractelement <2 x i1> %i.da, i64 1
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph265
  %i.df = extractelement <2 x i32> %i.cg, i64 0
  %i.dg = mul nuw nsw i32 %i.df, %i.cx
  %i.dh = add nsw i32 %i.dg, %i.cw
  %i.di = load i32, ptr %i.p, align 8, !tbaa !16
  %i.dj = mul nsw i32 %i.di, %i.dh
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph265, %bb.a
  %i.dk = phi i32 [ %i.dj, %bb.a ], [ -1, %.lr.ph265 ]
  store i32 %i.dk, ptr %.2264, align 4, !tbaa !23
  %i.dl = getelementptr inbounds nuw i8, ptr %.1118263, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.2264, i64 4 ; 2 uses
  %i.dn = add nuw nsw i32 %.1120262, 2            ; 2 uses
  %i.do = icmp slt i32 %i.dn, %i.e
  br i1 %i.do, label %.lr.ph265, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dm, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !240

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.ds = load ptr, ptr %1, align 8, !tbaa !20, !noalias !249 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !19, !noalias !250
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !18, !noalias !250
  %i.dx = mul i64 %i.dw, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dx ; 2 uses
  %i.dz = icmp sgt i32 %i.e, 7
  br i1 %i.dz, label %.lr.ph, label %.preheader241

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader241.loopexit:                           ; preds = %bb.c
  %i.ed = and i32 %i.e, 2147483640
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.ds, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gi, %.preheader241.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dy, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gj, %.preheader241.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.ed, %.preheader241.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.gk, %.preheader241.loopexit ]
  %i.ee = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.ee, label %.lr.ph254, label %.loopexit

.lr.ph254:                                        ; preds = %.preheader241
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3246 = phi ptr [ %i.f, %.lr.ph ], [ %i.gk, %bb.c ] ; 2 uses
  %.0110245 = phi i32 [ 0, %.lr.ph ], [ %i.gl, %bb.c ]
  %.0112244 = phi ptr [ %i.dy, %.lr.ph ], [ %i.gj, %bb.c ] ; 2 uses
  %.0114243 = phi ptr [ %i.ds, %.lr.ph ], [ %i.gi, %bb.c ] ; 2 uses
  %i.eh = load <8 x float>, ptr %.0114243, align 1, !tbaa !41
  %i.ei = load <8 x float>, ptr %.0112244, align 1, !tbaa !41
  %i.ej = load i32, ptr %i.ea, align 4, !tbaa !37
  %i.ek = sitofp fast i32 %i.ej to float
  %i.el = insertelement <8 x float> poison, float %i.ek, i64 0
  %i.em = shufflevector <8 x float> %i.el, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.en = fmul fast <8 x float> %i.eh, splat (float 5.000000e-01)
  %i.eo = fadd fast <8 x float> %i.en, splat (float 5.000000e-01)
  %i.ep = fmul fast <8 x float> %i.eo, %i.em
  %i.eq = fadd fast <8 x float> %i.em, splat (float -1.000000e+00)
  %i.er = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ep)
  %i.es = fsub fast <8 x float> %i.er, %i.em
  %i.et = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.es)
  %i.eu = fadd fast <8 x float> %i.em, splat (float -5.000000e-01)
  %i.ev = fsub fast <8 x float> %i.eu, %i.et
  %i.ew = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ev, <8 x float> zeroinitializer)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eq, <8 x float> nofpclass(nan inf) %i.ew)
  %i.ey = load i32, ptr %i.eb, align 8, !tbaa !38
  %i.ez = sitofp fast i32 %i.ey to float
  %i.fa = insertelement <8 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <8 x float> %i.fa, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.fc = fmul fast <8 x float> %i.ei, splat (float 5.000000e-01)
  %i.fd = fadd fast <8 x float> %i.fc, splat (float 5.000000e-01)
  %i.fe = fmul fast <8 x float> %i.fd, %i.fb
  %i.ff = fadd fast <8 x float> %i.fb, splat (float -1.000000e+00)
  %i.fg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fe)
  %i.fh = fsub fast <8 x float> %i.fg, %i.fb
  %i.fi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fh)
  %i.fj = fadd fast <8 x float> %i.fb, splat (float -5.000000e-01)
  %i.fk = fsub fast <8 x float> %i.fj, %i.fi
  %i.fl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fk, <8 x float> zeroinitializer)
  %i.fm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ff, <8 x float> nofpclass(nan inf) %i.fl)
  %i.fn = fadd fast <8 x float> %i.ex, splat (float 5.000000e-01)
  %i.fo = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fn, i32 1) ; 3 uses
  %i.fp = fadd fast <8 x float> %i.fm, splat (float 5.000000e-01)
  %i.fq = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fp, i32 1) ; 3 uses
  %i.fr = fcmp fast ogt <8 x float> %i.fo, splat (float -1.000000e+00)
  %i.fs = fcmp fast ogt <8 x float> %i.em, %i.fo
  %i.ft = and <8 x i1> %i.fr, %i.fs
  %i.fu = fcmp fast ogt <8 x float> %i.fq, splat (float -1.000000e+00)
  %i.fv = fcmp fast ogt <8 x float> %i.fb, %i.fq
  %i.fw = and <8 x i1> %i.fu, %i.fv
  %i.fx = and <8 x i1> %i.ft, %i.fw
  %i.fy = fmul fast <8 x float> %i.fq, %i.em
  %i.fz = fadd fast <8 x float> %i.fy, %i.fo
  %i.ga = load i32, ptr %i.ec, align 8, !tbaa !16
  %i.gb = sitofp fast i32 %i.ga to float
  %i.gc = insertelement <8 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <8 x float> %i.gc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ge = fmul fast <8 x float> %i.gd, %i.fz
  %i.gf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ge)
  %i.gg = bitcast <8 x i32> %i.gf to <8 x float>
  %i.gh = select <8 x i1> %i.fx, <8 x float> %i.gg, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.gh, ptr %.3246, align 1, !tbaa !41
  %i.gi = getelementptr inbounds nuw i8, ptr %.0114243, i64 32 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0112244, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.3246, i64 32 ; 2 uses
  %i.gl = add nuw nsw i32 %.0110245, 8            ; 2 uses
  %i.gm = or disjoint i32 %i.gl, 7
  %i.gn = icmp slt i32 %i.gm, %i.e
  br i1 %i.gn, label %bb.c, label %.preheader241.loopexit, !llvm.loop !245

bb.d:                                             ; preds = %.lr.ph254, %bb.f
  %.4253 = phi ptr [ %.3.lcssa, %.lr.ph254 ], [ %i.hz, %bb.f ] ; 2 uses
  %.1111252 = phi i32 [ %.0110.lcssa, %.lr.ph254 ], [ %i.ia, %bb.f ]
  %.1113251 = phi ptr [ %.0112.lcssa, %.lr.ph254 ], [ %i.hy, %bb.f ] ; 2 uses
  %.1115250 = phi ptr [ %.0114.lcssa, %.lr.ph254 ], [ %i.hx, %bb.f ] ; 2 uses
  %i.go = load float, ptr %.1115250, align 4, !tbaa !44
  %i.gp = load float, ptr %.1113251, align 4, !tbaa !44
  %i.gq = load <2 x i32>, ptr %i.ef, align 4, !tbaa !23 ; 3 uses
  %i.gr = sitofp <2 x i32> %i.gq to <2 x float>   ; 4 uses
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = insertelement <2 x float> %i.gs, float %i.gp, i64 1
  %i.gu = fmul fast <2 x float> %i.gt, splat (float 5.000000e-01)
  %i.gv = fadd fast <2 x float> %i.gu, splat (float 5.000000e-01)
  %i.gw = fmul fast <2 x float> %i.gv, %i.gr
  %i.gx = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gw)
  %i.gy = fsub fast <2 x float> %i.gx, %i.gr
  %i.gz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gy)
  %i.ha = fadd fast <2 x float> %i.gr, splat (float -5.000000e-01)
  %i.hb = fsub fast <2 x float> %i.ha, %i.gz
  %i.hc = fadd fast <2 x float> %i.gr, splat (float -1.000000e+00)
  %i.hd = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hb, <2 x float> zeroinitializer)
  %i.he = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hd, <2 x float> %i.hc)
  %i.hf = fadd fast <2 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.hf)
  %i.hh = fptosi <2 x float> %i.hg to <2 x i32>   ; 3 uses
  %i.hi = extractelement <2 x i32> %i.hh, i64 0   ; 2 uses
  %i.hj = extractelement <2 x i32> %i.hh, i64 1   ; 2 uses
  %i.hk = or i32 %i.hj, %i.hi
  %i.hl = icmp sgt i32 %i.hk, -1
  %i.hm = icmp sgt <2 x i32> %i.gq, %i.hh         ; 2 uses
  %i.hn = extractelement <2 x i1> %i.hm, i64 0
  %i.ho = and i1 %i.hn, %i.hl
  %i.hp = extractelement <2 x i1> %i.hm, i64 1
  %i.hq = and i1 %i.hp, %i.ho
  br i1 %i.hq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.hr = extractelement <2 x i32> %i.gq, i64 0
  %i.hs = mul nuw nsw i32 %i.hr, %i.hj
  %i.ht = add nsw i32 %i.hs, %i.hi
  %i.hu = load i32, ptr %i.eg, align 8, !tbaa !16
  %i.hv = mul nsw i32 %i.hu, %i.ht
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.hw = phi i32 [ %i.hv, %bb.e ], [ -1, %bb.d ]
  store i32 %i.hw, ptr %.4253, align 4, !tbaa !23
  %i.hx = getelementptr inbounds nuw i8, ptr %.1115250, i64 4
  %i.hy = getelementptr inbounds nuw i8, ptr %.1113251, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.4253, i64 4
  %i.ia = add nuw nsw i32 %.1111252, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ia, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !246

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader241, %.preheader240
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_nearest_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit123:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !264 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader236, label %_ZN4ncnn3MatD2Ev.exit121

.preheader236:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit122.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit122.lr.ph:                   ; preds = %.preheader236
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit122

_ZN4ncnn3MatD2Ev.exit122:                         ; preds = %_ZN4ncnn3MatD2Ev.exit122.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0264 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit122.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !265
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !265
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !265
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph254, label %.preheader

.preheader:                                       ; preds = %.lr.ph254, %_ZN4ncnn3MatD2Ev.exit122
  %.0119.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.q, %.lr.ph254 ] ; 2 uses
  %.0117.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bu, %.lr.ph254 ]
  %.1.lcssa = phi ptr [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.bv, %.lr.ph254 ] ; 2 uses
  %i.x = icmp slt i32 %.0119.lcssa, %i.e
  br i1 %i.x, label %.lr.ph261, label %._crit_edge

.lr.ph254:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit122, %.lr.ph254
  %.1253 = phi ptr [ %i.bv, %.lr.ph254 ], [ %.0264, %_ZN4ncnn3MatD2Ev.exit122 ] ; 2 uses
  %.0117252 = phi ptr [ %i.bu, %.lr.ph254 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit122 ] ; 3 uses
  %.0119251 = phi i32 [ %i.bw, %.lr.ph254 ], [ 0, %_ZN4ncnn3MatD2Ev.exit122 ]
  %i.y = load <8 x float>, ptr %.0117252, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0117252, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 2 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag
  %i.aj = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ai)
  %i.ak = fsub fast <8 x float> %i.aj, %i.ah
  %i.al = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ak)
  %i.am = load i32, ptr %i.o, align 8, !tbaa !38
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.aq = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ar = fadd fast <8 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = fadd fast <8 x float> %i.ap, splat (float -1.000000e+00) ; 2 uses
  %i.at = fmul fast <8 x float> %i.as, %i.ar
  %i.au = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.at)
  %i.av = fsub fast <8 x float> %i.au, %i.as
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.av)
  %i.ax = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01)
  %i.ay = fsub fast <8 x float> %i.ax, %i.al
  %i.az = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ay, i32 1) ; 3 uses
  %i.ba = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01)
  %i.bb = fsub fast <8 x float> %i.ba, %i.aw
  %i.bc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.bb, i32 1) ; 3 uses
  %i.bd = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.be = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bf = and <8 x i1> %i.bd, %i.be
  %i.bg = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bh = fcmp fast ogt <8 x float> %i.ap, %i.bc
  %i.bi = and <8 x i1> %i.bg, %i.bh
  %i.bj = and <8 x i1> %i.bf, %i.bi
  %i.bk = fmul fast <8 x float> %i.bc, %i.ae
  %i.bl = fadd fast <8 x float> %i.bk, %i.az
  %i.bm = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bn = sitofp fast i32 %i.bm to float
  %i.bo = insertelement <8 x float> poison, float %i.bn, i64 0
  %i.bp = shufflevector <8 x float> %i.bo, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bq = fmul fast <8 x float> %i.bp, %i.bl
  %i.br = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.bq)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = select <8 x i1> %i.bj, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.bt, ptr %.1253, align 1, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %.0117252, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1253, i64 32 ; 2 uses
  %i.bw = add nuw nsw i32 %.0119251, 16           ; 2 uses
  %i.bx = or disjoint i32 %i.bw, 15
  %i.by = icmp slt i32 %i.bx, %i.e
  br i1 %i.by, label %.lr.ph254, label %.preheader, !llvm.loop !255

.lr.ph261:                                        ; preds = %.preheader, %bb.b
  %.2260 = phi ptr [ %i.dh, %bb.b ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.1118259 = phi ptr [ %i.dg, %bb.b ], [ %.0117.lcssa, %.preheader ] ; 2 uses
  %.1120258 = phi i32 [ %i.di, %bb.b ], [ %.0119.lcssa, %.preheader ]
  %i.bz = load <2 x float>, ptr %.1118259, align 4, !tbaa !44
  %i.ca = load <2 x i32>, ptr %i.n, align 4, !tbaa !23 ; 4 uses
  %i.cb = fmul fast <2 x float> %i.bz, splat (float 5.000000e-01)
  %i.cc = fadd fast <2 x float> %i.cb, splat (float 5.000000e-01)
  %i.cd = add nsw <2 x i32> %i.ca, splat (i32 -1)
  %i.ce = sitofp <2 x i32> %i.cd to <2 x float>   ; 3 uses
  %i.cf = fmul fast <2 x float> %i.cc, %i.ce
  %i.cg = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cf)
  %i.ch = fsub fast <2 x float> %i.cg, %i.ce
  %i.ci = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ch)
  %i.cj = fsub fast <2 x float> %i.ce, %i.ci
  %i.ck = sitofp <2 x i32> %i.ca to <2 x float>
  %i.cl = fadd fast <2 x float> %i.ck, splat (float -1.000000e+00)
  %i.cm = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.cj, <2 x float> zeroinitializer)
  %i.cn = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.cm, <2 x float> %i.cl)
  %i.co = fadd fast <2 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.co)
  %i.cq = fptosi <2 x float> %i.cp to <2 x i32>   ; 3 uses
  %i.cr = extractelement <2 x i32> %i.cq, i64 0   ; 2 uses
  %i.cs = extractelement <2 x i32> %i.cq, i64 1   ; 2 uses
  %i.ct = or i32 %i.cs, %i.cr
  %i.cu = icmp sgt i32 %i.ct, -1
  %i.cv = icmp sgt <2 x i32> %i.ca, %i.cq         ; 2 uses
  %i.cw = extractelement <2 x i1> %i.cv, i64 0
  %i.cx = and i1 %i.cw, %i.cu
  %i.cy = extractelement <2 x i1> %i.cv, i64 1
  %i.cz = and i1 %i.cy, %i.cx
  br i1 %i.cz, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph261
  %i.da = extractelement <2 x i32> %i.ca, i64 0
  %i.db = mul nuw nsw i32 %i.da, %i.cs
  %i.dc = add nsw i32 %i.db, %i.cr
  %i.dd = load i32, ptr %i.p, align 8, !tbaa !16
  %i.de = mul nsw i32 %i.dd, %i.dc
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph261, %bb.a
  %i.df = phi i32 [ %i.de, %bb.a ], [ -1, %.lr.ph261 ]
  store i32 %i.df, ptr %.2260, align 4, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %.1118259, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.2260, i64 4 ; 2 uses
  %i.di = add nuw nsw i32 %.1120258, 2            ; 2 uses
  %i.dj = icmp slt i32 %i.di, %i.e
  br i1 %i.dj, label %.lr.ph261, label %._crit_edge, !llvm.loop !256

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.2.lcssa = phi ptr [ %.1.lcssa, %.preheader ], [ %i.dh, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !17
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %_ZN4ncnn3MatD2Ev.exit122, label %.loopexit, !llvm.loop !257

_ZN4ncnn3MatD2Ev.exit121:                         ; preds = %_ZN4ncnn3MatD2Ev.exit123
  %i.dn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !266 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !19, !noalias !267
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !18, !noalias !267
  %i.ds = mul i64 %i.dr, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ds ; 2 uses
  %i.du = icmp sgt i32 %i.e, 7
  br i1 %i.du, label %.lr.ph, label %.preheader237

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit121
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

.preheader237.loopexit:                           ; preds = %bb.c
  %i.dy = and i32 %i.e, 2147483640
  br label %.preheader237

.preheader237:                                    ; preds = %.preheader237.loopexit, %_ZN4ncnn3MatD2Ev.exit121
  %.0114.lcssa = phi ptr [ %i.dn, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fx, %.preheader237.loopexit ]
  %.0112.lcssa = phi ptr [ %i.dt, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fy, %.preheader237.loopexit ]
  %.0110.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.dy, %.preheader237.loopexit ] ; 2 uses
  %.3.lcssa = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit121 ], [ %i.fz, %.preheader237.loopexit ]
  %i.dz = icmp slt i32 %.0110.lcssa, %i.e
  br i1 %i.dz, label %.lr.ph250, label %.loopexit

.lr.ph250:                                        ; preds = %.preheader237
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.3242 = phi ptr [ %i.f, %.lr.ph ], [ %i.fz, %bb.c ] ; 2 uses
  %.0110241 = phi i32 [ 0, %.lr.ph ], [ %i.ga, %bb.c ]
  %.0112240 = phi ptr [ %i.dt, %.lr.ph ], [ %i.fy, %bb.c ] ; 2 uses
  %.0114239 = phi ptr [ %i.dn, %.lr.ph ], [ %i.fx, %bb.c ] ; 2 uses
  %i.ec = load <8 x float>, ptr %.0114239, align 1, !tbaa !41
  %i.ed = load <8 x float>, ptr %.0112240, align 1, !tbaa !41
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !37
  %i.ef = sitofp fast i32 %i.ee to float
  %i.eg = insertelement <8 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <8 x float> %i.eg, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ei = fmul fast <8 x float> %i.ec, splat (float 5.000000e-01)
  %i.ej = fadd fast <8 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = fadd fast <8 x float> %i.eh, splat (float -1.000000e+00) ; 2 uses
  %i.el = fmul fast <8 x float> %i.ek, %i.ej
  %i.em = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.el)
  %i.en = fsub fast <8 x float> %i.em, %i.ek
  %i.eo = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.en)
  %i.ep = load i32, ptr %i.dw, align 8, !tbaa !38
  %i.eq = sitofp fast i32 %i.ep to float
  %i.er = insertelement <8 x float> poison, float %i.eq, i64 0
  %i.es = shufflevector <8 x float> %i.er, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.et = fmul fast <8 x float> %i.ed, splat (float 5.000000e-01)
  %i.eu = fadd fast <8 x float> %i.et, splat (float 5.000000e-01)
  %i.ev = fadd fast <8 x float> %i.es, splat (float -1.000000e+00) ; 2 uses
  %i.ew = fmul fast <8 x float> %i.ev, %i.eu
  %i.ex = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ew)
  %i.ey = fsub fast <8 x float> %i.ex, %i.ev
  %i.ez = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ey)
  %i.fa = fadd fast <8 x float> %i.eh, splat (float -5.000000e-01)
  %i.fb = fsub fast <8 x float> %i.fa, %i.eo
  %i.fc = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fb, i32 1) ; 3 uses
  %i.fd = fadd fast <8 x float> %i.es, splat (float -5.000000e-01)
  %i.fe = fsub fast <8 x float> %i.fd, %i.ez
  %i.ff = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fe, i32 1) ; 3 uses
  %i.fg = fcmp fast ogt <8 x float> %i.fc, splat (float -1.000000e+00)
  %i.fh = fcmp fast ogt <8 x float> %i.eh, %i.fc
  %i.fi = and <8 x i1> %i.fg, %i.fh
  %i.fj = fcmp fast ogt <8 x float> %i.ff, splat (float -1.000000e+00)
  %i.fk = fcmp fast ogt <8 x float> %i.es, %i.ff
  %i.fl = and <8 x i1> %i.fj, %i.fk
  %i.fm = and <8 x i1> %i.fi, %i.fl
  %i.fn = fmul fast <8 x float> %i.ff, %i.eh
  %i.fo = fadd fast <8 x float> %i.fn, %i.fc
  %i.fp = load i32, ptr %i.dx, align 8, !tbaa !16
  %i.fq = sitofp fast i32 %i.fp to float
  %i.fr = insertelement <8 x float> poison, float %i.fq, i64 0
  %i.fs = shufflevector <8 x float> %i.fr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ft = fmul fast <8 x float> %i.fs, %i.fo
  %i.fu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ft)
  %i.fv = bitcast <8 x i32> %i.fu to <8 x float>
  %i.fw = select <8 x i1> %i.fm, <8 x float> %i.fv, <8 x float> splat (float -1.000000e+00)
  store <8 x float> %i.fw, ptr %.3242, align 1, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %.0114239, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0112240, i64 32 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.3242, i64 32 ; 2 uses
  %i.ga = add nuw nsw i32 %.0110241, 8            ; 2 uses
  %i.gb = or disjoint i32 %i.ga, 7
  %i.gc = icmp slt i32 %i.gb, %i.e
  br i1 %i.gc, label %bb.c, label %.preheader237.loopexit, !llvm.loop !262

bb.d:                                             ; preds = %.lr.ph250, %bb.f
  %.4249 = phi ptr [ %.3.lcssa, %.lr.ph250 ], [ %i.hp, %bb.f ] ; 2 uses
  %.1111248 = phi i32 [ %.0110.lcssa, %.lr.ph250 ], [ %i.hq, %bb.f ]
  %.1113247 = phi ptr [ %.0112.lcssa, %.lr.ph250 ], [ %i.ho, %bb.f ] ; 2 uses
  %.1115246 = phi ptr [ %.0114.lcssa, %.lr.ph250 ], [ %i.hn, %bb.f ] ; 2 uses
  %i.gd = load float, ptr %.1115246, align 4, !tbaa !44
  %i.ge = load float, ptr %.1113247, align 4, !tbaa !44
  %i.gf = load <2 x i32>, ptr %i.ea, align 4, !tbaa !23 ; 4 uses
  %i.gg = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.ge, i64 1
  %i.gi = fmul fast <2 x float> %i.gh, splat (float 5.000000e-01)
  %i.gj = fadd fast <2 x float> %i.gi, splat (float 5.000000e-01)
  %i.gk = add nsw <2 x i32> %i.gf, splat (i32 -1)
  %i.gl = sitofp <2 x i32> %i.gk to <2 x float>   ; 3 uses
  %i.gm = fmul fast <2 x float> %i.gj, %i.gl
  %i.gn = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gm)
  %i.go = fsub fast <2 x float> %i.gn, %i.gl
  %i.gp = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.go)
  %i.gq = fsub fast <2 x float> %i.gl, %i.gp
  %i.gr = sitofp <2 x i32> %i.gf to <2 x float>
  %i.gs = fadd fast <2 x float> %i.gr, splat (float -1.000000e+00)
  %i.gt = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gq, <2 x float> zeroinitializer)
  %i.gu = tail call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gt, <2 x float> %i.gs)
  %i.gv = fadd fast <2 x float> %i.gu, splat (float 5.000000e-01)
  %i.gw = tail call fast <2 x float> @llvm.floor.v2f32(<2 x float> %i.gv)
  %i.gx = fptosi <2 x float> %i.gw to <2 x i32>   ; 3 uses
  %i.gy = extractelement <2 x i32> %i.gx, i64 0   ; 2 uses
  %i.gz = extractelement <2 x i32> %i.gx, i64 1   ; 2 uses
  %i.ha = or i32 %i.gz, %i.gy
  %i.hb = icmp sgt i32 %i.ha, -1
  %i.hc = icmp sgt <2 x i32> %i.gf, %i.gx         ; 2 uses
  %i.hd = extractelement <2 x i1> %i.hc, i64 0
  %i.he = and i1 %i.hd, %i.hb
  %i.hf = extractelement <2 x i1> %i.hc, i64 1
  %i.hg = and i1 %i.hf, %i.he
  br i1 %i.hg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.hh = extractelement <2 x i32> %i.gf, i64 0
  %i.hi = mul nuw nsw i32 %i.hh, %i.gz
  %i.hj = add nsw i32 %i.hi, %i.gy
  %i.hk = load i32, ptr %i.eb, align 8, !tbaa !16
  %i.hl = mul nsw i32 %i.hk, %i.hj
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.hm = phi i32 [ %i.hl, %bb.e ], [ -1, %bb.d ]
  store i32 %i.hm, ptr %.4249, align 4, !tbaa !23
  %i.hn = getelementptr inbounds nuw i8, ptr %.1115246, i64 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.1113247, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.4249, i64 4
  %i.hq = add nuw nsw i32 %.1111248, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hq, %i.e
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !263

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %.preheader237, %.preheader236
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !281 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !282
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !282
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !282
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.il, %.lr.ph520 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ik, %.lr.ph520 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533, label %._crit_edge

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.ik, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.im, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.il, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01) ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01) ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 10 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 7 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00) ; 6 uses
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 6 uses
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00) ; 6 uses
  %i.aw = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ax = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ay = and <8 x i1> %i.aw, %i.ax               ; 4 uses
  %i.az = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 4 uses
  %i.bc = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.au
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 4 uses
  %i.bf = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 4 uses
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bm = fadd fast <8 x float> %i.as, splat (float -1.000000e+00) ; 3 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.am, %i.bm
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 4 uses
  %i.bq = fmul fast <8 x float> %i.bm, %i.ae      ; 4 uses
  %i.br = fadd fast <8 x float> %i.bq, %i.at
  %i.bs = fmul fast <8 x float> %i.bl, %i.br
  %i.bt = fadd fast <8 x float> %i.bq, %i.ar
  %i.bu = fmul fast <8 x float> %i.bl, %i.bt
  %i.bv = fadd fast <8 x float> %i.bq, %i.au
  %i.bw = fmul fast <8 x float> %i.bl, %i.bv
  %i.bx = fadd fast <8 x float> %i.bq, %i.av
  %i.by = fmul fast <8 x float> %i.bl, %i.bx
  %i.bz = and <8 x i1> %i.ay, %i.bp
  %i.ca = select <8 x i1> %i.bz, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  %i.cb = and <8 x i1> %i.bb, %i.bp
  %i.cc = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.cd = and <8 x i1> %i.be, %i.bp
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cf = and <8 x i1> %i.bh, %i.bp
  %i.cg = select <8 x i1> %i.cf, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 4 uses
  %i.co = fmul fast <8 x float> %i.as, %i.ae      ; 4 uses
  %i.cp = fadd fast <8 x float> %i.co, %i.at
  %i.cq = fmul fast <8 x float> %i.bl, %i.cp
  %i.cr = fadd fast <8 x float> %i.co, %i.ar
  %i.cs = fmul fast <8 x float> %i.bl, %i.cr
  %i.ct = fadd fast <8 x float> %i.co, %i.au
  %i.cu = fmul fast <8 x float> %i.bl, %i.ct
  %i.cv = fadd fast <8 x float> %i.co, %i.av
  %i.cw = fmul fast <8 x float> %i.bl, %i.cv
  %i.cx = and <8 x i1> %i.ay, %i.cn
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bb, %i.cn
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = and <8 x i1> %i.be, %i.cn
  %i.dc = select <8 x i1> %i.db, <8 x float> %i.cu, <8 x float> splat (float -1.000000e+00)
  %i.dd = and <8 x i1> %i.bh, %i.cn
  %i.de = select <8 x i1> %i.dd, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  %i.df = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.dg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.dh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.di = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dj = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 3 uses
  %i.dk = fcmp fast ogt <8 x float> %i.dj, splat (float -1.000000e+00)
  %i.dl = fcmp fast ogt <8 x float> %i.am, %i.dj
  %i.dm = and <8 x i1> %i.dk, %i.dl               ; 4 uses
  %i.dn = fmul fast <8 x float> %i.dj, %i.ae      ; 4 uses
  %i.do = fadd fast <8 x float> %i.dn, %i.at
  %i.dp = fmul fast <8 x float> %i.bl, %i.do
  %i.dq = fadd fast <8 x float> %i.dn, %i.ar
  %i.dr = fmul fast <8 x float> %i.bl, %i.dq
  %i.ds = fadd fast <8 x float> %i.dn, %i.au
  %i.dt = fmul fast <8 x float> %i.bl, %i.ds
  %i.du = fadd fast <8 x float> %i.dn, %i.av
  %i.dv = fmul fast <8 x float> %i.bl, %i.du
  %i.dw = and <8 x i1> %i.ay, %i.dm
  %i.dx = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> splat (float -1.000000e+00)
  %i.dy = and <8 x i1> %i.bb, %i.dm
  %i.dz = select <8 x i1> %i.dy, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = and <8 x i1> %i.be, %i.dm
  %i.eb = select <8 x i1> %i.ea, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = and <8 x i1> %i.bh, %i.dm
  %i.ed = select <8 x i1> %i.ec, <8 x float> %i.dv, <8 x float> splat (float -1.000000e+00)
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ei = fadd fast <8 x float> %i.as, splat (float 2.000000e+00) ; 3 uses
  %i.ej = fcmp fast ogt <8 x float> %i.ei, splat (float -1.000000e+00)
  %i.ek = fcmp fast ogt <8 x float> %i.am, %i.ei
  %i.el = and <8 x i1> %i.ej, %i.ek               ; 4 uses
  %i.em = fmul fast <8 x float> %i.ei, %i.ae      ; 4 uses
  %i.en = fadd fast <8 x float> %i.em, %i.at
  %i.eo = fmul fast <8 x float> %i.bl, %i.en
  %i.ep = fadd fast <8 x float> %i.em, %i.ar
  %i.eq = fmul fast <8 x float> %i.bl, %i.ep
  %i.er = fadd fast <8 x float> %i.em, %i.au
  %i.es = fmul fast <8 x float> %i.bl, %i.er
  %i.et = fadd fast <8 x float> %i.em, %i.av
  %i.eu = fmul fast <8 x float> %i.bl, %i.et
  %i.ev = and <8 x i1> %i.ay, %i.el
  %i.ew = select <8 x i1> %i.ev, <8 x float> %i.eo, <8 x float> splat (float -1.000000e+00)
  %i.ex = and <8 x i1> %i.bb, %i.el
  %i.ey = select <8 x i1> %i.ex, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
  %i.ez = and <8 x i1> %i.be, %i.el
  %i.fa = select <8 x i1> %i.ez, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = and <8 x i1> %i.bh, %i.el
  %i.fc = select <8 x i1> %i.fb, <8 x float> %i.eu, <8 x float> splat (float -1.000000e+00)
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 2 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 2 uses
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fc) ; 2 uses
  %i.fh = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.fi = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.fj = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fk = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fl = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fq = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fs = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.gc, <8 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fk, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.fy, <8 x i32> %i.ga, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>  ; 2 uses
  %i.gw = shufflevector <8 x float> %i.ge, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hc = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hd = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hh = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hi = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hk = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hn = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hp = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hr = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hb, ptr %.1519, align 1, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.hc, ptr %i.ht, align 1, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.hd, ptr %i.hu, align 1, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.he, ptr %i.hv, align 1, !tbaa !41
  %i.hw = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.hf, ptr %i.hw, align 1, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.hg, ptr %i.hx, align 1, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.hh, ptr %i.hy, align 1, !tbaa !41
end_hunk_6
begin_hunk_7_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.ajp = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !23
  br i1 %i.aiy, label %bb.bz, label %.split.2

bb.bz:                                            ; preds = %bb.by
  %i.ajq = extractelement <4 x i32> %i.adb, i64 1
  %i.ajr = add nsw i32 %i.ais, %i.ajq
  %i.ajs = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.ajt = mul nsw i32 %i.ajs, %i.ajr
  br label %.split.2

.split.2:                                         ; preds = %.thread773, %bb.bz, %bb.by
  %i.aju = phi i32 [ %i.ajt, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread773 ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %.6512, i64 36
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !23
  %i.ajw = getelementptr inbounds nuw i8, ptr %.6512, i64 40 ; 2 uses
  %i.ajx = add i32 %i.air, 1
  %i.ajy = sitofp fast i32 %i.ajx to float
  %i.ajz = fptosi float %i.ajy to i32             ; 3 uses
  %i.aka = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.akb = mul nsw i32 %i.aka, %i.ajz             ; 4 uses
  %i.akc = icmp sgt i32 %i.ajz, -1
  %i.akd = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.ake = icmp sgt i32 %i.akd, %i.ajz
  %i.akf = and i1 %i.akc, %i.ake                  ; 3 uses
  %i.akg = and i1 %i.adi, %i.akf
  %i.akh = and i1 %i.adj, %i.akf
  br i1 %i.akf, label %bb.ca, label %.thread776

.thread776:                                       ; preds = %.split.2
  store i32 -1, ptr %i.ajw, align 4, !tbaa !23
  %i.aki = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 -1, ptr %i.aki, align 4, !tbaa !23
  %i.akj = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 -1, ptr %i.akj, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.akk = extractelement <4 x i32> %i.adb, i64 3
  %i.akl = add nsw i32 %i.akb, %i.akk
  %i.akm = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akn = mul nsw i32 %i.akm, %i.akl
  store i32 %i.akn, ptr %i.ajw, align 4, !tbaa !23
  br i1 %i.acx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ako = add nsw i32 %i.akb, %i.acr
  %i.akp = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akq = mul nsw i32 %i.akp, %i.ako
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.akr = phi i32 [ %i.akq, %bb.cb ], [ -1, %bb.ca ]
  %i.aks = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 %i.akr, ptr %i.aks, align 4, !tbaa !23
  br i1 %i.akg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.akt = extractelement <4 x i32> %i.adb, i64 2
  %i.aku = add nsw i32 %i.akb, %i.akt
  %i.akv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akw = mul nsw i32 %i.akv, %i.aku
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.akx = phi i32 [ %i.akw, %bb.cd ], [ -1, %bb.cc ]
  %i.aky = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 %i.akx, ptr %i.aky, align 4, !tbaa !23
  br i1 %i.akh, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.akz = extractelement <4 x i32> %i.adb, i64 1
  %i.ala = add nsw i32 %i.akb, %i.akz
  %i.alb = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alc = mul nsw i32 %i.alb, %i.ala
  br label %.split.3

.split.3:                                         ; preds = %.thread776, %bb.cf, %bb.ce
  %i.ald = phi i32 [ %i.alc, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread776 ]
  %i.ale = getelementptr inbounds nuw i8, ptr %.6512, i64 52
  store i32 %i.ald, ptr %i.ale, align 4, !tbaa !23
  %i.alf = getelementptr inbounds nuw i8, ptr %.6512, i64 56 ; 2 uses
  %i.alg = add i32 %i.air, 2
  %i.alh = sitofp fast i32 %i.alg to float
  %i.ali = fptosi float %i.alh to i32             ; 3 uses
  %i.alj = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.alk = mul nsw i32 %i.alj, %i.ali             ; 4 uses
  %i.all = icmp sgt i32 %i.ali, -1
  %i.alm = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.aln = icmp sgt i32 %i.alm, %i.ali
  %i.alo = and i1 %i.all, %i.aln                  ; 3 uses
  %i.alp = and i1 %i.adi, %i.alo
  %i.alq = and i1 %i.adj, %i.alo
  br i1 %i.alo, label %bb.cg, label %.thread779

.thread779:                                       ; preds = %.split.3
  store i32 -1, ptr %i.alf, align 4, !tbaa !23
  %i.alr = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 -1, ptr %i.alr, align 4, !tbaa !23
  %i.als = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 -1, ptr %i.als, align 4, !tbaa !23
  br label %.split508.us

bb.cg:                                            ; preds = %.split.3
  %i.alt = extractelement <4 x i32> %i.adb, i64 3
  %i.alu = add nsw i32 %i.alk, %i.alt
  %i.alv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alw = mul nsw i32 %i.alv, %i.alu
  store i32 %i.alw, ptr %i.alf, align 4, !tbaa !23
  br i1 %i.acx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.alx = add nsw i32 %i.alk, %i.acr
  %i.aly = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alz = mul nsw i32 %i.aly, %i.alx
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ama = phi i32 [ %i.alz, %bb.ch ], [ -1, %bb.cg ]
  %i.amb = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !23
  br i1 %i.alp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.amc = extractelement <4 x i32> %i.adb, i64 2
  %i.amd = add nsw i32 %i.alk, %i.amc
  %i.ame = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.amf = mul nsw i32 %i.ame, %i.amd
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.amg = phi i32 [ %i.amf, %bb.cj ], [ -1, %bb.ci ]
  %i.amh = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 %i.amg, ptr %i.amh, align 4, !tbaa !23
  br i1 %i.alq, label %bb.cl, label %.split508.us

bb.cl:                                            ; preds = %bb.ck
  %i.ami = extractelement <4 x i32> %i.adb, i64 1
  %i.amj = add nsw i32 %i.alk, %i.ami
  %i.amk = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.aml = mul nsw i32 %i.amk, %i.amj
  br label %.split508.us

.loopexit:                                        ; preds = %.split508.us, %._crit_edge, %.preheader493, %.preheader492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !298 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader492, label %_ZN4ncnn3MatD2Ev.exit397

.preheader492:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader492
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380536 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !299
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !299
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !299
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph520, label %.preheader

.preheader:                                       ; preds = %.lr.ph520, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.il, %.lr.ph520 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph520 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ik, %.lr.ph520 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph533, label %._crit_edge

.lr.ph520:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph520
  %.1519 = phi ptr [ %i.ik, %.lr.ph520 ], [ %.0380536, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393518 = phi i32 [ %i.im, %.lr.ph520 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395517 = phi ptr [ %i.il, %.lr.ph520 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395517, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395517, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00)
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00)
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 10 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 7 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00) ; 6 uses
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00) ; 6 uses
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00) ; 6 uses
  %i.aw = fcmp fast ogt <8 x float> %i.at, splat (float -1.000000e+00)
  %i.ax = fcmp fast ogt <8 x float> %i.ae, %i.at
  %i.ay = and <8 x i1> %i.aw, %i.ax               ; 4 uses
  %i.az = fcmp fast ogt <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.ba = fcmp fast ogt <8 x float> %i.ae, %i.ar
  %i.bb = and <8 x i1> %i.az, %i.ba               ; 4 uses
  %i.bc = fcmp fast ogt <8 x float> %i.au, splat (float -1.000000e+00)
  %i.bd = fcmp fast ogt <8 x float> %i.ae, %i.au
  %i.be = and <8 x i1> %i.bc, %i.bd               ; 4 uses
  %i.bf = fcmp fast ogt <8 x float> %i.av, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ae, %i.av
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 4 uses
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bj = sitofp fast i32 %i.bi to float
  %i.bk = insertelement <8 x float> poison, float %i.bj, i64 0
  %i.bl = shufflevector <8 x float> %i.bk, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bm = fadd fast <8 x float> %i.as, splat (float -1.000000e+00) ; 3 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bm, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.am, %i.bm
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 4 uses
  %i.bq = fmul fast <8 x float> %i.bm, %i.ae      ; 4 uses
  %i.br = fadd fast <8 x float> %i.bq, %i.at
  %i.bs = fmul fast <8 x float> %i.bl, %i.br
  %i.bt = fadd fast <8 x float> %i.bq, %i.ar
  %i.bu = fmul fast <8 x float> %i.bl, %i.bt
  %i.bv = fadd fast <8 x float> %i.bq, %i.au
  %i.bw = fmul fast <8 x float> %i.bl, %i.bv
  %i.bx = fadd fast <8 x float> %i.bq, %i.av
  %i.by = fmul fast <8 x float> %i.bl, %i.bx
  %i.bz = and <8 x i1> %i.ay, %i.bp
  %i.ca = select <8 x i1> %i.bz, <8 x float> %i.bs, <8 x float> splat (float -1.000000e+00)
  %i.cb = and <8 x i1> %i.bb, %i.bp
  %i.cc = select <8 x i1> %i.cb, <8 x float> %i.bu, <8 x float> splat (float -1.000000e+00)
  %i.cd = and <8 x i1> %i.be, %i.bp
  %i.ce = select <8 x i1> %i.cd, <8 x float> %i.bw, <8 x float> splat (float -1.000000e+00)
  %i.cf = and <8 x i1> %i.bh, %i.bp
  %i.cg = select <8 x i1> %i.cf, <8 x float> %i.by, <8 x float> splat (float -1.000000e+00)
  %i.ch = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ca) ; 2 uses
  %i.ci = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cc) ; 2 uses
  %i.cj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce) ; 2 uses
  %i.ck = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cg) ; 2 uses
  %i.cl = fcmp fast ogt <8 x float> %i.as, splat (float -1.000000e+00)
  %i.cm = fcmp fast ogt <8 x float> %i.am, %i.as
  %i.cn = and <8 x i1> %i.cl, %i.cm               ; 4 uses
  %i.co = fmul fast <8 x float> %i.as, %i.ae      ; 4 uses
  %i.cp = fadd fast <8 x float> %i.co, %i.at
  %i.cq = fmul fast <8 x float> %i.bl, %i.cp
  %i.cr = fadd fast <8 x float> %i.co, %i.ar
  %i.cs = fmul fast <8 x float> %i.bl, %i.cr
  %i.ct = fadd fast <8 x float> %i.co, %i.au
  %i.cu = fmul fast <8 x float> %i.bl, %i.ct
  %i.cv = fadd fast <8 x float> %i.co, %i.av
  %i.cw = fmul fast <8 x float> %i.bl, %i.cv
  %i.cx = and <8 x i1> %i.ay, %i.cn
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bb, %i.cn
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = and <8 x i1> %i.be, %i.cn
  %i.dc = select <8 x i1> %i.db, <8 x float> %i.cu, <8 x float> splat (float -1.000000e+00)
  %i.dd = and <8 x i1> %i.bh, %i.cn
  %i.de = select <8 x i1> %i.dd, <8 x float> %i.cw, <8 x float> splat (float -1.000000e+00)
  %i.df = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.dg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.dh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dc) ; 2 uses
  %i.di = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.de) ; 2 uses
  %i.dj = fadd fast <8 x float> %i.as, splat (float 1.000000e+00) ; 3 uses
  %i.dk = fcmp fast ogt <8 x float> %i.dj, splat (float -1.000000e+00)
  %i.dl = fcmp fast ogt <8 x float> %i.am, %i.dj
  %i.dm = and <8 x i1> %i.dk, %i.dl               ; 4 uses
  %i.dn = fmul fast <8 x float> %i.dj, %i.ae      ; 4 uses
  %i.do = fadd fast <8 x float> %i.dn, %i.at
  %i.dp = fmul fast <8 x float> %i.bl, %i.do
  %i.dq = fadd fast <8 x float> %i.dn, %i.ar
  %i.dr = fmul fast <8 x float> %i.bl, %i.dq
  %i.ds = fadd fast <8 x float> %i.dn, %i.au
  %i.dt = fmul fast <8 x float> %i.bl, %i.ds
  %i.du = fadd fast <8 x float> %i.dn, %i.av
  %i.dv = fmul fast <8 x float> %i.bl, %i.du
  %i.dw = and <8 x i1> %i.ay, %i.dm
  %i.dx = select <8 x i1> %i.dw, <8 x float> %i.dp, <8 x float> splat (float -1.000000e+00)
  %i.dy = and <8 x i1> %i.bb, %i.dm
  %i.dz = select <8 x i1> %i.dy, <8 x float> %i.dr, <8 x float> splat (float -1.000000e+00)
  %i.ea = and <8 x i1> %i.be, %i.dm
  %i.eb = select <8 x i1> %i.ea, <8 x float> %i.dt, <8 x float> splat (float -1.000000e+00)
  %i.ec = and <8 x i1> %i.bh, %i.dm
  %i.ed = select <8 x i1> %i.ec, <8 x float> %i.dv, <8 x float> splat (float -1.000000e+00)
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dx) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dz) ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eb) ; 2 uses
  %i.eh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ed) ; 2 uses
  %i.ei = fadd fast <8 x float> %i.as, splat (float 2.000000e+00) ; 3 uses
  %i.ej = fcmp fast ogt <8 x float> %i.ei, splat (float -1.000000e+00)
  %i.ek = fcmp fast ogt <8 x float> %i.am, %i.ei
  %i.el = and <8 x i1> %i.ej, %i.ek               ; 4 uses
  %i.em = fmul fast <8 x float> %i.ei, %i.ae      ; 4 uses
  %i.en = fadd fast <8 x float> %i.em, %i.at
  %i.eo = fmul fast <8 x float> %i.bl, %i.en
  %i.ep = fadd fast <8 x float> %i.em, %i.ar
  %i.eq = fmul fast <8 x float> %i.bl, %i.ep
  %i.er = fadd fast <8 x float> %i.em, %i.au
  %i.es = fmul fast <8 x float> %i.bl, %i.er
  %i.et = fadd fast <8 x float> %i.em, %i.av
  %i.eu = fmul fast <8 x float> %i.bl, %i.et
  %i.ev = and <8 x i1> %i.ay, %i.el
  %i.ew = select <8 x i1> %i.ev, <8 x float> %i.eo, <8 x float> splat (float -1.000000e+00)
  %i.ex = and <8 x i1> %i.bb, %i.el
  %i.ey = select <8 x i1> %i.ex, <8 x float> %i.eq, <8 x float> splat (float -1.000000e+00)
  %i.ez = and <8 x i1> %i.be, %i.el
  %i.fa = select <8 x i1> %i.ez, <8 x float> %i.es, <8 x float> splat (float -1.000000e+00)
  %i.fb = and <8 x i1> %i.bh, %i.el
  %i.fc = select <8 x i1> %i.fb, <8 x float> %i.eu, <8 x float> splat (float -1.000000e+00)
  %i.fd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ew) ; 2 uses
  %i.fe = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ey) ; 2 uses
  %i.ff = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fa) ; 2 uses
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fc) ; 2 uses
  %i.fh = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.fi = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.fj = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fk = shufflevector <8 x float> %i.fh, <8 x float> %i.fi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fl = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fm = bitcast <8 x i32> %i.fl to <8 x float>
  %i.fn = shufflevector <8 x i32> %i.ch, <8 x i32> %i.ci, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fo = bitcast <8 x i32> %i.fn to <8 x float>
  %i.fp = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fq = shufflevector <8 x i32> %i.cj, <8 x i32> %i.ck, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fs = shufflevector <8 x i32> %i.df, <8 x i32> %i.dg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fu = shufflevector <8 x i32> %i.dh, <8 x i32> %i.di, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fv = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fw = shufflevector <8 x i32> %i.ee, <8 x i32> %i.ef, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fx = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.fy = shufflevector <8 x i32> %i.eg, <8 x i32> %i.eh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fz = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.ff, <8 x i32> %i.fg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x float> %i.fj, <8 x float> %i.fm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gh = bitcast <8 x i32> %i.gg to <8 x float>  ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x float> %i.gc, <8 x float> %i.fj, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.fl, <8 x i32> %i.fp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>  ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.fr, <8 x i32> %i.ft, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.fz, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.gq = bitcast <8 x i32> %i.gp to <8 x float>  ; 2 uses
  %i.gr = shufflevector <8 x float> %i.fk, <8 x float> %i.fo, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fq, <8 x i32> %i.fs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.fu, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gu = shufflevector <8 x i32> %i.fy, <8 x i32> %i.ga, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>  ; 2 uses
  %i.gw = shufflevector <8 x float> %i.ge, <8 x float> %i.fk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.fs, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.fw, <8 x i32> %i.fy, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hc = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hd = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.he = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hf = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hh = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hi = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hj = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hk = shufflevector <8 x float> %i.gf, <8 x float> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hm = shufflevector <8 x float> %i.gk, <8 x float> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hn = shufflevector <8 x i32> %i.gn, <8 x i32> %i.go, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <8 x float> %i.gq, <8 x float> %i.gr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hp = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hq = shufflevector <8 x float> %i.gv, <8 x float> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hr = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.hb, ptr %.1519, align 1, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %.1519, i64 32
  store <8 x i32> %i.hc, ptr %i.ht, align 1, !tbaa !41
  %i.hu = getelementptr inbounds nuw i8, ptr %.1519, i64 64
  store <8 x float> %i.hd, ptr %i.hu, align 1, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %.1519, i64 96
  store <8 x i32> %i.he, ptr %i.hv, align 1, !tbaa !41
  %i.hw = getelementptr inbounds nuw i8, ptr %.1519, i64 128
  store <8 x float> %i.hf, ptr %i.hw, align 1, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %.1519, i64 160
  store <8 x i32> %i.hg, ptr %i.hx, align 1, !tbaa !41
  %i.hy = getelementptr inbounds nuw i8, ptr %.1519, i64 192
  store <8 x float> %i.hh, ptr %i.hy, align 1, !tbaa !41
end_hunk_7
begin_hunk_8_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE1ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.ajp = getelementptr inbounds nuw i8, ptr %.6512, i64 32
  store i32 %i.ajo, ptr %i.ajp, align 4, !tbaa !23
  br i1 %i.aiy, label %bb.bz, label %.split.2

bb.bz:                                            ; preds = %bb.by
  %i.ajq = extractelement <4 x i32> %i.adb, i64 1
  %i.ajr = add nsw i32 %i.ais, %i.ajq
  %i.ajs = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.ajt = mul nsw i32 %i.ajs, %i.ajr
  br label %.split.2

.split.2:                                         ; preds = %.thread773, %bb.bz, %bb.by
  %i.aju = phi i32 [ %i.ajt, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread773 ]
  %i.ajv = getelementptr inbounds nuw i8, ptr %.6512, i64 36
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !23
  %i.ajw = getelementptr inbounds nuw i8, ptr %.6512, i64 40 ; 2 uses
  %i.ajx = add i32 %i.air, 1
  %i.ajy = sitofp fast i32 %i.ajx to float
  %i.ajz = fptosi float %i.ajy to i32             ; 3 uses
  %i.aka = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.akb = mul nsw i32 %i.aka, %i.ajz             ; 4 uses
  %i.akc = icmp sgt i32 %i.ajz, -1
  %i.akd = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.ake = icmp sgt i32 %i.akd, %i.ajz
  %i.akf = and i1 %i.akc, %i.ake                  ; 3 uses
  %i.akg = and i1 %i.adi, %i.akf
  %i.akh = and i1 %i.adj, %i.akf
  br i1 %i.akf, label %bb.ca, label %.thread776

.thread776:                                       ; preds = %.split.2
  store i32 -1, ptr %i.ajw, align 4, !tbaa !23
  %i.aki = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 -1, ptr %i.aki, align 4, !tbaa !23
  %i.akj = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 -1, ptr %i.akj, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.akk = extractelement <4 x i32> %i.adb, i64 3
  %i.akl = add nsw i32 %i.akb, %i.akk
  %i.akm = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akn = mul nsw i32 %i.akm, %i.akl
  store i32 %i.akn, ptr %i.ajw, align 4, !tbaa !23
  br i1 %i.acx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ako = add nsw i32 %i.akb, %i.acr
  %i.akp = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akq = mul nsw i32 %i.akp, %i.ako
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.akr = phi i32 [ %i.akq, %bb.cb ], [ -1, %bb.ca ]
  %i.aks = getelementptr inbounds nuw i8, ptr %.6512, i64 44
  store i32 %i.akr, ptr %i.aks, align 4, !tbaa !23
  br i1 %i.akg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.akt = extractelement <4 x i32> %i.adb, i64 2
  %i.aku = add nsw i32 %i.akb, %i.akt
  %i.akv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.akw = mul nsw i32 %i.akv, %i.aku
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.akx = phi i32 [ %i.akw, %bb.cd ], [ -1, %bb.cc ]
  %i.aky = getelementptr inbounds nuw i8, ptr %.6512, i64 48
  store i32 %i.akx, ptr %i.aky, align 4, !tbaa !23
  br i1 %i.akh, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.akz = extractelement <4 x i32> %i.adb, i64 1
  %i.ala = add nsw i32 %i.akb, %i.akz
  %i.alb = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alc = mul nsw i32 %i.alb, %i.ala
  br label %.split.3

.split.3:                                         ; preds = %.thread776, %bb.cf, %bb.ce
  %i.ald = phi i32 [ %i.alc, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread776 ]
  %i.ale = getelementptr inbounds nuw i8, ptr %.6512, i64 52
  store i32 %i.ald, ptr %i.ale, align 4, !tbaa !23
  %i.alf = getelementptr inbounds nuw i8, ptr %.6512, i64 56 ; 2 uses
  %i.alg = add i32 %i.air, 2
  %i.alh = sitofp fast i32 %i.alg to float
  %i.ali = fptosi float %i.alh to i32             ; 3 uses
  %i.alj = load i32, ptr %i.tk, align 4, !tbaa !37
  %i.alk = mul nsw i32 %i.alj, %i.ali             ; 4 uses
  %i.all = icmp sgt i32 %i.ali, -1
  %i.alm = load i32, ptr %i.tl, align 8, !tbaa !38
  %i.aln = icmp sgt i32 %i.alm, %i.ali
  %i.alo = and i1 %i.all, %i.aln                  ; 3 uses
  %i.alp = and i1 %i.adi, %i.alo
  %i.alq = and i1 %i.adj, %i.alo
  br i1 %i.alo, label %bb.cg, label %.thread779

.thread779:                                       ; preds = %.split.3
  store i32 -1, ptr %i.alf, align 4, !tbaa !23
  %i.alr = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 -1, ptr %i.alr, align 4, !tbaa !23
  %i.als = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 -1, ptr %i.als, align 4, !tbaa !23
  br label %.split508.us

bb.cg:                                            ; preds = %.split.3
  %i.alt = extractelement <4 x i32> %i.adb, i64 3
  %i.alu = add nsw i32 %i.alk, %i.alt
  %i.alv = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alw = mul nsw i32 %i.alv, %i.alu
  store i32 %i.alw, ptr %i.alf, align 4, !tbaa !23
  br i1 %i.acx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.alx = add nsw i32 %i.alk, %i.acr
  %i.aly = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.alz = mul nsw i32 %i.aly, %i.alx
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ama = phi i32 [ %i.alz, %bb.ch ], [ -1, %bb.cg ]
  %i.amb = getelementptr inbounds nuw i8, ptr %.6512, i64 60
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !23
  br i1 %i.alp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.amc = extractelement <4 x i32> %i.adb, i64 2
  %i.amd = add nsw i32 %i.alk, %i.amc
  %i.ame = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.amf = mul nsw i32 %i.ame, %i.amd
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.amg = phi i32 [ %i.amf, %bb.cj ], [ -1, %bb.ci ]
  %i.amh = getelementptr inbounds nuw i8, ptr %.6512, i64 64
  store i32 %i.amg, ptr %i.amh, align 4, !tbaa !23
  br i1 %i.alq, label %bb.cl, label %.split508.us

bb.cl:                                            ; preds = %bb.ck
  %i.ami = extractelement <4 x i32> %i.adb, i64 1
  %i.amj = add nsw i32 %i.alk, %i.ami
  %i.amk = load i32, ptr %i.tm, align 8, !tbaa !16
  %i.aml = mul nsw i32 %i.amk, %i.amj
  br label %.split508.us

.loopexit:                                        ; preds = %.split508.us, %._crit_edge, %.preheader493, %.preheader492
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !315 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader512, label %_ZN4ncnn3MatD2Ev.exit397

.preheader512:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380556 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !316
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !316
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !316
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph540, label %.preheader

.preheader:                                       ; preds = %.lr.ph540, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jd, %.lr.ph540 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph540 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jc, %.lr.ph540 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph553, label %._crit_edge

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.jc, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.je, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.jd, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 10 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01) ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01) ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00)
  %i.aw = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 4 uses
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.ax) ; 6 uses
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.az) ; 6 uses
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> zeroinitializer)
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.bb) ; 6 uses
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.be = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.aw, <8 x float> nofpclass(nan inf) %i.bd) ; 6 uses
  %i.bf = fcmp fast ogt <8 x float> %i.ay, splat (float -1.000000e+00)
  %i.bg = fcmp fast ogt <8 x float> %i.ae, %i.ay
  %i.bh = and <8 x i1> %i.bf, %i.bg               ; 4 uses
  %i.bi = fcmp fast ogt <8 x float> %i.ba, splat (float -1.000000e+00)
  %i.bj = fcmp fast ogt <8 x float> %i.ae, %i.ba
  %i.bk = and <8 x i1> %i.bi, %i.bj               ; 4 uses
  %i.bl = fcmp fast ogt <8 x float> %i.bc, splat (float -1.000000e+00)
  %i.bm = fcmp fast ogt <8 x float> %i.ae, %i.bc
  %i.bn = and <8 x i1> %i.bl, %i.bm               ; 4 uses
  %i.bo = fcmp fast ogt <8 x float> %i.be, splat (float -1.000000e+00)
  %i.bp = fcmp fast ogt <8 x float> %i.ae, %i.be
  %i.bq = and <8 x i1> %i.bo, %i.bp               ; 4 uses
  %i.br = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 4 uses
  %i.bs = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bt = sitofp fast i32 %i.bs to float
  %i.bu = insertelement <8 x float> poison, float %i.bt, i64 0
  %i.bv = shufflevector <8 x float> %i.bu, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bw = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> zeroinitializer)
  %i.by = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.bx) ; 3 uses
  %i.bz = fcmp fast ogt <8 x float> %i.by, splat (float -1.000000e+00)
  %i.ca = fcmp fast ogt <8 x float> %i.am, %i.by
  %i.cb = and <8 x i1> %i.bz, %i.ca               ; 4 uses
  %i.cc = fmul fast <8 x float> %i.by, %i.ae      ; 4 uses
  %i.cd = fadd fast <8 x float> %i.cc, %i.ay
  %i.ce = fmul fast <8 x float> %i.bv, %i.cd
  %i.cf = fadd fast <8 x float> %i.cc, %i.ba
  %i.cg = fmul fast <8 x float> %i.bv, %i.cf
  %i.ch = fadd fast <8 x float> %i.cc, %i.bc
  %i.ci = fmul fast <8 x float> %i.bv, %i.ch
  %i.cj = fadd fast <8 x float> %i.cc, %i.be
  %i.ck = fmul fast <8 x float> %i.bv, %i.cj
  %i.cl = and <8 x i1> %i.bh, %i.cb
  %i.cm = select <8 x i1> %i.cl, <8 x float> %i.ce, <8 x float> splat (float -1.000000e+00)
  %i.cn = and <8 x i1> %i.bk, %i.cb
  %i.co = select <8 x i1> %i.cn, <8 x float> %i.cg, <8 x float> splat (float -1.000000e+00)
  %i.cp = and <8 x i1> %i.bn, %i.cb
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.ci, <8 x float> splat (float -1.000000e+00)
  %i.cr = and <8 x i1> %i.bq, %i.cb
  %i.cs = select <8 x i1> %i.cr, <8 x float> %i.ck, <8 x float> splat (float -1.000000e+00)
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cs) ; 2 uses
  %i.cx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.cy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.cx) ; 3 uses
  %i.cz = fcmp fast ogt <8 x float> %i.cy, splat (float -1.000000e+00)
  %i.da = fcmp fast ogt <8 x float> %i.am, %i.cy
  %i.db = and <8 x i1> %i.cz, %i.da               ; 4 uses
  %i.dc = fmul fast <8 x float> %i.cy, %i.ae      ; 4 uses
  %i.dd = fadd fast <8 x float> %i.dc, %i.ay
  %i.de = fmul fast <8 x float> %i.bv, %i.dd
  %i.df = fadd fast <8 x float> %i.dc, %i.ba
  %i.dg = fmul fast <8 x float> %i.bv, %i.df
  %i.dh = fadd fast <8 x float> %i.dc, %i.bc
  %i.di = fmul fast <8 x float> %i.bv, %i.dh
  %i.dj = fadd fast <8 x float> %i.dc, %i.be
  %i.dk = fmul fast <8 x float> %i.bv, %i.dj
  %i.dl = and <8 x i1> %i.bh, %i.db
  %i.dm = select <8 x i1> %i.dl, <8 x float> %i.de, <8 x float> splat (float -1.000000e+00)
  %i.dn = and <8 x i1> %i.bk, %i.db
  %i.do = select <8 x i1> %i.dn, <8 x float> %i.dg, <8 x float> splat (float -1.000000e+00)
  %i.dp = and <8 x i1> %i.bn, %i.db
  %i.dq = select <8 x i1> %i.dp, <8 x float> %i.di, <8 x float> splat (float -1.000000e+00)
  %i.dr = and <8 x i1> %i.bq, %i.db
  %i.ds = select <8 x i1> %i.dr, <8 x float> %i.dk, <8 x float> splat (float -1.000000e+00)
  %i.dt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.du = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.dv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ds) ; 2 uses
  %i.dx = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.dy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dx, <8 x float> zeroinitializer)
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.dy) ; 3 uses
  %i.ea = fcmp fast ogt <8 x float> %i.dz, splat (float -1.000000e+00)
  %i.eb = fcmp fast ogt <8 x float> %i.am, %i.dz
  %i.ec = and <8 x i1> %i.ea, %i.eb               ; 4 uses
  %i.ed = fmul fast <8 x float> %i.dz, %i.ae      ; 4 uses
  %i.ee = fadd fast <8 x float> %i.ed, %i.ay
  %i.ef = fmul fast <8 x float> %i.bv, %i.ee
  %i.eg = fadd fast <8 x float> %i.ed, %i.ba
  %i.eh = fmul fast <8 x float> %i.bv, %i.eg
  %i.ei = fadd fast <8 x float> %i.ed, %i.bc
  %i.ej = fmul fast <8 x float> %i.bv, %i.ei
  %i.ek = fadd fast <8 x float> %i.ed, %i.be
  %i.el = fmul fast <8 x float> %i.bv, %i.ek
  %i.em = and <8 x i1> %i.bh, %i.ec
  %i.en = select <8 x i1> %i.em, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = and <8 x i1> %i.bk, %i.ec
  %i.ep = select <8 x i1> %i.eo, <8 x float> %i.eh, <8 x float> splat (float -1.000000e+00)
  %i.eq = and <8 x i1> %i.bn, %i.ec
  %i.er = select <8 x i1> %i.eq, <8 x float> %i.ej, <8 x float> splat (float -1.000000e+00)
  %i.es = and <8 x i1> %i.bq, %i.ec
  %i.et = select <8 x i1> %i.es, <8 x float> %i.el, <8 x float> splat (float -1.000000e+00)
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 2 uses
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.et) ; 2 uses
  %i.ey = fadd fast <8 x float> %i.as, splat (float 2.000000e+00)
  %i.ez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ey, <8 x float> zeroinitializer)
  %i.fa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.br, <8 x float> nofpclass(nan inf) %i.ez) ; 3 uses
  %i.fb = fcmp fast ogt <8 x float> %i.fa, splat (float -1.000000e+00)
  %i.fc = fcmp fast ogt <8 x float> %i.am, %i.fa
  %i.fd = and <8 x i1> %i.fb, %i.fc               ; 4 uses
  %i.fe = fmul fast <8 x float> %i.fa, %i.ae      ; 4 uses
  %i.ff = fadd fast <8 x float> %i.fe, %i.ay
  %i.fg = fmul fast <8 x float> %i.bv, %i.ff
  %i.fh = fadd fast <8 x float> %i.fe, %i.ba
  %i.fi = fmul fast <8 x float> %i.bv, %i.fh
  %i.fj = fadd fast <8 x float> %i.fe, %i.bc
  %i.fk = fmul fast <8 x float> %i.bv, %i.fj
  %i.fl = fadd fast <8 x float> %i.fe, %i.be
  %i.fm = fmul fast <8 x float> %i.bv, %i.fl
  %i.fn = and <8 x i1> %i.bh, %i.fd
  %i.fo = select <8 x i1> %i.fn, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  %i.fp = and <8 x i1> %i.bk, %i.fd
  %i.fq = select <8 x i1> %i.fp, <8 x float> %i.fi, <8 x float> splat (float -1.000000e+00)
  %i.fr = and <8 x i1> %i.bn, %i.fd
  %i.fs = select <8 x i1> %i.fr, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  %i.ft = and <8 x i1> %i.bq, %i.fd
  %i.fu = select <8 x i1> %i.ft, <8 x float> %i.fm, <8 x float> splat (float -1.000000e+00)
  %i.fv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo) ; 2 uses
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fq) ; 2 uses
  %i.fx = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.fy = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fu) ; 2 uses
  %i.fz = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.ga = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.gb = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = shufflevector <8 x float> %i.fz, <8 x float> %i.ga, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gd = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gg = bitcast <8 x i32> %i.gf to <8 x float>
  %i.gh = shufflevector <8 x i32> %i.cv, <8 x i32> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.cv, <8 x i32> %i.cw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.dv, <8 x i32> %i.dw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gt = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gw = bitcast <8 x i32> %i.gv to <8 x float>
  %i.gx = shufflevector <8 x float> %i.gb, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gj, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gz = bitcast <8 x i32> %i.gy to <8 x float>  ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gp, <8 x i32> %i.gr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hc = shufflevector <8 x float> %i.gu, <8 x float> %i.gb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.gd, <8 x i32> %i.gh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.he = bitcast <8 x i32> %i.hd to <8 x float>  ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gl, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hg = shufflevector <8 x i32> %i.gn, <8 x i32> %i.gp, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hh = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hi = bitcast <8 x i32> %i.hh to <8 x float>  ; 2 uses
  %i.hj = shufflevector <8 x float> %i.gc, <8 x float> %i.gg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hl = shufflevector <8 x i32> %i.gm, <8 x i32> %i.go, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hm = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hn = bitcast <8 x i32> %i.hm to <8 x float>  ; 2 uses
  %i.ho = shufflevector <8 x float> %i.gw, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gi, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hq = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x i32> %i.go, <8 x i32> %i.gq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hs = shufflevector <8 x i32> %i.gs, <8 x i32> %i.gv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x float> %i.gx, <8 x float> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hu = shufflevector <8 x i32> %i.ha, <8 x i32> %i.hb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hv = shufflevector <8 x float> %i.hc, <8 x float> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hw = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hx = shufflevector <8 x float> %i.hi, <8 x float> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hy = shufflevector <8 x i32> %i.hk, <8 x i32> %i.hl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hz = shufflevector <8 x float> %i.hn, <8 x float> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ia = shufflevector <8 x i32> %i.hp, <8 x i32> %i.hq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ib = shufflevector <8 x i32> %i.hr, <8 x i32> %i.hs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ic = shufflevector <8 x float> %i.gx, <8 x float> %i.gz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.id = shufflevector <8 x i32> %i.ha, <8 x i32> %i.hb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ie = shufflevector <8 x float> %i.hc, <8 x float> %i.he, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.if = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_8
begin_hunk_9_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399

.split.2:                                         ; preds = %.thread797, %bb.bz, %bb.by
  %i.amw = phi i32 [ %i.amv, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread797 ]
  %i.amx = getelementptr inbounds nuw i8, ptr %.6532, i64 36
  store i32 %i.amw, ptr %i.amx, align 4, !tbaa !23
  %i.amy = getelementptr inbounds nuw i8, ptr %.6532, i64 40 ; 2 uses
  %i.amz = add nsw i32 %i.als, 1
  %i.ana = load i32, ptr %i.vc, align 8, !tbaa !38 ; 2 uses
  %i.anb = sitofp fast i32 %i.amz to float
  %i.anc = sitofp fast i32 %i.ana to float
  %i.and = fadd fast float %i.anc, -1.000000e+00
  %i.ane = icmp slt i32 %i.als, -1
  %.sroa.speculated4.i437.2 = select i1 %i.ane, float 0.000000e+00, float %i.anb
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.2, float %i.and)
  %i.anf = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.ang = load i32, ptr %i.vb, align 4, !tbaa !37
  %i.anh = mul nsw i32 %i.ang, %i.anf             ; 4 uses
  %i.ani = icmp sgt i32 %i.anf, -1
  %i.anj = icmp sgt i32 %i.ana, %i.anf
  %i.ank = and i1 %i.ani, %i.anj                  ; 3 uses
  %i.anl = and i1 %i.afy, %i.ank
  %i.anm = and i1 %i.afz, %i.ank
  br i1 %i.ank, label %bb.ca, label %.thread800

.thread800:                                       ; preds = %.split.2
  store i32 -1, ptr %i.amy, align 4, !tbaa !23
  %i.ann = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 -1, ptr %i.ann, align 4, !tbaa !23
  %i.ano = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 -1, ptr %i.ano, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.anp = extractelement <4 x i32> %i.afr, i64 2
  %i.anq = add nsw i32 %i.anh, %i.anp
  %i.anr = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.ans = mul nsw i32 %i.anr, %i.anq
  store i32 %i.ans, ptr %i.amy, align 4, !tbaa !23
  br i1 %i.afl, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ant = add nsw i32 %i.anh, %i.afi
  %i.anu = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.anv = mul nsw i32 %i.anu, %i.ant
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.anw = phi i32 [ %i.anv, %bb.cb ], [ -1, %bb.ca ]
  %i.anx = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 %i.anw, ptr %i.anx, align 4, !tbaa !23
  br i1 %i.anl, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.any = extractelement <4 x i32> %i.afr, i64 3
  %i.anz = add nsw i32 %i.anh, %i.any
  %i.aoa = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.aob = mul nsw i32 %i.aoa, %i.anz
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.aoc = phi i32 [ %i.aob, %bb.cd ], [ -1, %bb.cc ]
  %i.aod = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 %i.aoc, ptr %i.aod, align 4, !tbaa !23
  br i1 %i.anm, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.aoe = extractelement <4 x i32> %i.afr, i64 0
  %i.aof = add nsw i32 %i.anh, %i.aoe
  %i.aog = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.aoh = mul nsw i32 %i.aog, %i.aof
  br label %.split.3

.split.3:                                         ; preds = %.thread800, %bb.cf, %bb.ce
  %i.aoi = phi i32 [ %i.aoh, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread800 ]
  %i.aoj = getelementptr inbounds nuw i8, ptr %.6532, i64 52
  store i32 %i.aoi, ptr %i.aoj, align 4, !tbaa !23
  %i.aok = getelementptr inbounds nuw i8, ptr %.6532, i64 56 ; 2 uses
  %i.aol = add nsw i32 %i.als, 2
  %i.aom = load i32, ptr %i.vc, align 8, !tbaa !38 ; 2 uses
  %i.aon = sitofp fast i32 %i.aol to float
  %i.aoo = sitofp fast i32 %i.aom to float
  %i.aop = fadd fast float %i.aoo, -1.000000e+00
  %i.aoq = icmp slt i32 %i.als, -2
  %.sroa.speculated4.i437.3 = select i1 %i.aoq, float 0.000000e+00, float %i.aon
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.3, float %i.aop)
  %i.aor = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.aos = load i32, ptr %i.vb, align 4, !tbaa !37
  %i.aot = mul nsw i32 %i.aos, %i.aor             ; 4 uses
  %i.aou = icmp sgt i32 %i.aor, -1
  %i.aov = icmp sgt i32 %i.aom, %i.aor
  %i.aow = and i1 %i.aou, %i.aov                  ; 3 uses
  %i.aox = and i1 %i.afy, %i.aow
  %i.aoy = and i1 %i.afz, %i.aow
  br i1 %i.aow, label %bb.cg, label %.thread803

.thread803:                                       ; preds = %.split.3
  store i32 -1, ptr %i.aok, align 4, !tbaa !23
  %i.aoz = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 -1, ptr %i.aoz, align 4, !tbaa !23
  %i.apa = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 -1, ptr %i.apa, align 4, !tbaa !23
  br label %.split528.us

bb.cg:                                            ; preds = %.split.3
  %i.apb = extractelement <4 x i32> %i.afr, i64 2
  %i.apc = add nsw i32 %i.aot, %i.apb
  %i.apd = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.ape = mul nsw i32 %i.apd, %i.apc
  store i32 %i.ape, ptr %i.aok, align 4, !tbaa !23
  br i1 %i.afl, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.apf = add nsw i32 %i.aot, %i.afi
  %i.apg = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.aph = mul nsw i32 %i.apg, %i.apf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.api = phi i32 [ %i.aph, %bb.ch ], [ -1, %bb.cg ]
  %i.apj = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 %i.api, ptr %i.apj, align 4, !tbaa !23
  br i1 %i.aox, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.apk = extractelement <4 x i32> %i.afr, i64 3
  %i.apl = add nsw i32 %i.aot, %i.apk
  %i.apm = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.apn = mul nsw i32 %i.apm, %i.apl
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.apo = phi i32 [ %i.apn, %bb.cj ], [ -1, %bb.ci ]
  %i.app = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 %i.apo, ptr %i.app, align 4, !tbaa !23
  br i1 %i.aoy, label %bb.cl, label %.split528.us

bb.cl:                                            ; preds = %bb.ck
  %i.apq = extractelement <4 x i32> %i.afr, i64 0
  %i.apr = add nsw i32 %i.aot, %i.apq
  %i.aps = load i32, ptr %i.vd, align 8, !tbaa !16
  %i.apt = mul nsw i32 %i.aps, %i.apr
  br label %.split528.us

.loopexit:                                        ; preds = %.split528.us, %._crit_edge, %.preheader513, %.preheader512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !332 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader512, label %_ZN4ncnn3MatD2Ev.exit397

.preheader512:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader512
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380556 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !333
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !333
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !333
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph540, label %.preheader

.preheader:                                       ; preds = %.lr.ph540, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jb, %.lr.ph540 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph540 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.ja, %.lr.ph540 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph553, label %._crit_edge

.lr.ph540:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph540
  %.1539 = phi ptr [ %i.ja, %.lr.ph540 ], [ %.0380556, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393538 = phi i32 [ %i.jc, %.lr.ph540 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395537 = phi ptr [ %i.jb, %.lr.ph540 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395537, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395537, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 5 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 5 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00)
  %i.aw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> zeroinitializer)
  %i.ax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.aw) ; 6 uses
  %i.ay = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> zeroinitializer)
  %i.az = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.ay) ; 6 uses
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.au, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.ba) ; 6 uses
  %i.bc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.av, <8 x float> zeroinitializer)
  %i.bd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ah, <8 x float> nofpclass(nan inf) %i.bc) ; 6 uses
  %i.be = fcmp fast ogt <8 x float> %i.ax, splat (float -1.000000e+00)
  %i.bf = fcmp fast ogt <8 x float> %i.ae, %i.ax
  %i.bg = and <8 x i1> %i.be, %i.bf               ; 4 uses
  %i.bh = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bi = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bj = and <8 x i1> %i.bh, %i.bi               ; 4 uses
  %i.bk = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.bl = fcmp fast ogt <8 x float> %i.ae, %i.bb
  %i.bm = and <8 x i1> %i.bk, %i.bl               ; 4 uses
  %i.bn = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bo = fcmp fast ogt <8 x float> %i.ae, %i.bd
  %i.bp = and <8 x i1> %i.bn, %i.bo               ; 4 uses
  %i.bq = load i32, ptr %i.p, align 8, !tbaa !16
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = insertelement <8 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <8 x float> %i.bs, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.bu = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> zeroinitializer)
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.bv) ; 3 uses
  %i.bx = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.by = fcmp fast ogt <8 x float> %i.am, %i.bw
  %i.bz = and <8 x i1> %i.bx, %i.by               ; 4 uses
  %i.ca = fmul fast <8 x float> %i.bw, %i.ae      ; 4 uses
  %i.cb = fadd fast <8 x float> %i.ca, %i.ax
  %i.cc = fmul fast <8 x float> %i.bt, %i.cb
  %i.cd = fadd fast <8 x float> %i.ca, %i.az
  %i.ce = fmul fast <8 x float> %i.bt, %i.cd
  %i.cf = fadd fast <8 x float> %i.ca, %i.bb
  %i.cg = fmul fast <8 x float> %i.bt, %i.cf
  %i.ch = fadd fast <8 x float> %i.ca, %i.bd
  %i.ci = fmul fast <8 x float> %i.bt, %i.ch
  %i.cj = and <8 x i1> %i.bg, %i.bz
  %i.ck = select <8 x i1> %i.cj, <8 x float> %i.cc, <8 x float> splat (float -1.000000e+00)
  %i.cl = and <8 x i1> %i.bj, %i.bz
  %i.cm = select <8 x i1> %i.cl, <8 x float> %i.ce, <8 x float> splat (float -1.000000e+00)
  %i.cn = and <8 x i1> %i.bm, %i.bz
  %i.co = select <8 x i1> %i.cn, <8 x float> %i.cg, <8 x float> splat (float -1.000000e+00)
  %i.cp = and <8 x i1> %i.bp, %i.bz
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.ci, <8 x float> splat (float -1.000000e+00)
  %i.cr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ck) ; 2 uses
  %i.cs = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cm) ; 2 uses
  %i.ct = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.co) ; 2 uses
  %i.cu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cq) ; 2 uses
  %i.cv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> zeroinitializer)
  %i.cw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.cv) ; 3 uses
  %i.cx = fcmp fast ogt <8 x float> %i.cw, splat (float -1.000000e+00)
  %i.cy = fcmp fast ogt <8 x float> %i.am, %i.cw
  %i.cz = and <8 x i1> %i.cx, %i.cy               ; 4 uses
  %i.da = fmul fast <8 x float> %i.cw, %i.ae      ; 4 uses
  %i.db = fadd fast <8 x float> %i.da, %i.ax
  %i.dc = fmul fast <8 x float> %i.bt, %i.db
  %i.dd = fadd fast <8 x float> %i.da, %i.az
  %i.de = fmul fast <8 x float> %i.bt, %i.dd
  %i.df = fadd fast <8 x float> %i.da, %i.bb
  %i.dg = fmul fast <8 x float> %i.bt, %i.df
  %i.dh = fadd fast <8 x float> %i.da, %i.bd
  %i.di = fmul fast <8 x float> %i.bt, %i.dh
  %i.dj = and <8 x i1> %i.bg, %i.cz
  %i.dk = select <8 x i1> %i.dj, <8 x float> %i.dc, <8 x float> splat (float -1.000000e+00)
  %i.dl = and <8 x i1> %i.bj, %i.cz
  %i.dm = select <8 x i1> %i.dl, <8 x float> %i.de, <8 x float> splat (float -1.000000e+00)
  %i.dn = and <8 x i1> %i.bm, %i.cz
  %i.do = select <8 x i1> %i.dn, <8 x float> %i.dg, <8 x float> splat (float -1.000000e+00)
  %i.dp = and <8 x i1> %i.bp, %i.cz
  %i.dq = select <8 x i1> %i.dp, <8 x float> %i.di, <8 x float> splat (float -1.000000e+00)
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dk) ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dm) ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.do) ; 2 uses
  %i.du = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dq) ; 2 uses
  %i.dv = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.dw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dv, <8 x float> zeroinitializer)
  %i.dx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.dw) ; 3 uses
  %i.dy = fcmp fast ogt <8 x float> %i.dx, splat (float -1.000000e+00)
  %i.dz = fcmp fast ogt <8 x float> %i.am, %i.dx
  %i.ea = and <8 x i1> %i.dy, %i.dz               ; 4 uses
  %i.eb = fmul fast <8 x float> %i.dx, %i.ae      ; 4 uses
  %i.ec = fadd fast <8 x float> %i.eb, %i.ax
  %i.ed = fmul fast <8 x float> %i.bt, %i.ec
  %i.ee = fadd fast <8 x float> %i.eb, %i.az
  %i.ef = fmul fast <8 x float> %i.bt, %i.ee
  %i.eg = fadd fast <8 x float> %i.eb, %i.bb
  %i.eh = fmul fast <8 x float> %i.bt, %i.eg
  %i.ei = fadd fast <8 x float> %i.eb, %i.bd
  %i.ej = fmul fast <8 x float> %i.bt, %i.ei
  %i.ek = and <8 x i1> %i.bg, %i.ea
  %i.el = select <8 x i1> %i.ek, <8 x float> %i.ed, <8 x float> splat (float -1.000000e+00)
  %i.em = and <8 x i1> %i.bj, %i.ea
  %i.en = select <8 x i1> %i.em, <8 x float> %i.ef, <8 x float> splat (float -1.000000e+00)
  %i.eo = and <8 x i1> %i.bm, %i.ea
  %i.ep = select <8 x i1> %i.eo, <8 x float> %i.eh, <8 x float> splat (float -1.000000e+00)
  %i.eq = and <8 x i1> %i.bp, %i.ea
  %i.er = select <8 x i1> %i.eq, <8 x float> %i.ej, <8 x float> splat (float -1.000000e+00)
  %i.es = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.el) ; 2 uses
  %i.et = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.en) ; 2 uses
  %i.eu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ep) ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.er) ; 2 uses
  %i.ew = fadd fast <8 x float> %i.as, splat (float 2.000000e+00)
  %i.ex = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ew, <8 x float> zeroinitializer)
  %i.ey = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ap, <8 x float> nofpclass(nan inf) %i.ex) ; 3 uses
  %i.ez = fcmp fast ogt <8 x float> %i.ey, splat (float -1.000000e+00)
  %i.fa = fcmp fast ogt <8 x float> %i.am, %i.ey
  %i.fb = and <8 x i1> %i.ez, %i.fa               ; 4 uses
  %i.fc = fmul fast <8 x float> %i.ey, %i.ae      ; 4 uses
  %i.fd = fadd fast <8 x float> %i.fc, %i.ax
  %i.fe = fmul fast <8 x float> %i.bt, %i.fd
  %i.ff = fadd fast <8 x float> %i.fc, %i.az
  %i.fg = fmul fast <8 x float> %i.bt, %i.ff
  %i.fh = fadd fast <8 x float> %i.fc, %i.bb
  %i.fi = fmul fast <8 x float> %i.bt, %i.fh
  %i.fj = fadd fast <8 x float> %i.fc, %i.bd
  %i.fk = fmul fast <8 x float> %i.bt, %i.fj
  %i.fl = and <8 x i1> %i.bg, %i.fb
  %i.fm = select <8 x i1> %i.fl, <8 x float> %i.fe, <8 x float> splat (float -1.000000e+00)
  %i.fn = and <8 x i1> %i.bj, %i.fb
  %i.fo = select <8 x i1> %i.fn, <8 x float> %i.fg, <8 x float> splat (float -1.000000e+00)
  %i.fp = and <8 x i1> %i.bm, %i.fb
  %i.fq = select <8 x i1> %i.fp, <8 x float> %i.fi, <8 x float> splat (float -1.000000e+00)
  %i.fr = and <8 x i1> %i.bp, %i.fb
  %i.fs = select <8 x i1> %i.fr, <8 x float> %i.fk, <8 x float> splat (float -1.000000e+00)
  %i.ft = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fm) ; 2 uses
  %i.fu = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fo) ; 2 uses
  %i.fv = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fq) ; 2 uses
  %i.fw = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fs) ; 2 uses
  %i.fx = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.fy = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.fz = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ga = shufflevector <8 x float> %i.fx, <8 x float> %i.fy, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gc = bitcast <8 x i32> %i.gb to <8 x float>
  %i.gd = shufflevector <8 x i32> %i.cr, <8 x i32> %i.cs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ge = bitcast <8 x i32> %i.gd to <8 x float>
  %i.gf = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gg = shufflevector <8 x i32> %i.ct, <8 x i32> %i.cu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gh = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ds, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gj = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gk = shufflevector <8 x i32> %i.dt, <8 x i32> %i.du, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gl = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gm = shufflevector <8 x i32> %i.es, <8 x i32> %i.et, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gn = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.go = shufflevector <8 x i32> %i.eu, <8 x i32> %i.ev, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gp = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x i32> %i.ft, <8 x i32> %i.fu, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = shufflevector <8 x i32> %i.fv, <8 x i32> %i.fw, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x float> %i.fz, <8 x float> %i.gc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.gx = bitcast <8 x i32> %i.gw to <8 x float>  ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gl, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.gn, <8 x i32> %i.gp, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x float> %i.gs, <8 x float> %i.fz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hc = bitcast <8 x i32> %i.hb to <8 x float>  ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.gh, <8 x i32> %i.gj, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gp, <8 x i32> %i.gr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hg = bitcast <8 x i32> %i.hf to <8 x float>  ; 2 uses
  %i.hh = shufflevector <8 x float> %i.ga, <8 x float> %i.ge, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hi = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hj = shufflevector <8 x i32> %i.gk, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hk = shufflevector <8 x i32> %i.go, <8 x i32> %i.gq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hl = bitcast <8 x i32> %i.hk to <8 x float>  ; 2 uses
  %i.hm = shufflevector <8 x float> %i.gu, <8 x float> %i.ga, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hn = shufflevector <8 x i32> %i.gd, <8 x i32> %i.gg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ho = shufflevector <8 x i32> %i.gi, <8 x i32> %i.gk, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.gm, <8 x i32> %i.go, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hq = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hs = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ht = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hu = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hv = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hw = shufflevector <8 x i32> %i.hi, <8 x i32> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hx = shufflevector <8 x float> %i.hl, <8 x float> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hy = shufflevector <8 x i32> %i.hn, <8 x i32> %i.ho, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.hz = shufflevector <8 x i32> %i.hp, <8 x i32> %i.hq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ia = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ib = shufflevector <8 x i32> %i.gy, <8 x i32> %i.gz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ic = shufflevector <8 x float> %i.ha, <8 x float> %i.hc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.id = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ie = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.if = shufflevector <8 x i32> %i.hi, <8 x i32> %i.hj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_9
begin_hunk_10_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE2ELb1EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399

.split.2:                                         ; preds = %.thread797, %bb.bz, %bb.by
  %i.ams = phi i32 [ %i.amr, %bb.bz ], [ -1, %bb.by ], [ -1, %.thread797 ]
  %i.amt = getelementptr inbounds nuw i8, ptr %.6532, i64 36
  store i32 %i.ams, ptr %i.amt, align 4, !tbaa !23
  %i.amu = getelementptr inbounds nuw i8, ptr %.6532, i64 40 ; 2 uses
  %i.amv = add nsw i32 %i.alo, 1
  %i.amw = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.amx = sitofp fast i32 %i.amv to float
  %i.amy = sitofp fast i32 %i.amw to float
  %i.amz = fadd fast float %i.amy, -1.000000e+00
  %i.ana = icmp slt i32 %i.alo, -1
  %.sroa.speculated4.i437.2 = select i1 %i.ana, float 0.000000e+00, float %i.amx
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.2, float %i.amz)
  %i.anb = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.anc = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.and = mul nsw i32 %i.anc, %i.anb             ; 4 uses
  %i.ane = icmp sgt i32 %i.anb, -1
  %i.anf = icmp sgt i32 %i.amw, %i.anb
  %i.ang = and i1 %i.ane, %i.anf                  ; 3 uses
  %i.anh = and i1 %i.afu, %i.ang
  %i.ani = and i1 %i.afv, %i.ang
  br i1 %i.ang, label %bb.ca, label %.thread800

.thread800:                                       ; preds = %.split.2
  store i32 -1, ptr %i.amu, align 4, !tbaa !23
  %i.anj = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 -1, ptr %i.anj, align 4, !tbaa !23
  %i.ank = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 -1, ptr %i.ank, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.anl = extractelement <4 x i32> %i.afo, i64 2
  %i.anm = add nsw i32 %i.and, %i.anl
  %i.ann = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.ano = mul nsw i32 %i.ann, %i.anm
  store i32 %i.ano, ptr %i.amu, align 4, !tbaa !23
  br i1 %i.afi, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.anp = add nsw i32 %i.and, %i.afe
  %i.anq = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anr = mul nsw i32 %i.anq, %i.anp
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ans = phi i32 [ %i.anr, %bb.cb ], [ -1, %bb.ca ]
  %i.ant = getelementptr inbounds nuw i8, ptr %.6532, i64 44
  store i32 %i.ans, ptr %i.ant, align 4, !tbaa !23
  br i1 %i.anh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.anu = extractelement <4 x i32> %i.afo, i64 3
  %i.anv = add nsw i32 %i.and, %i.anu
  %i.anw = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.anx = mul nsw i32 %i.anw, %i.anv
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.any = phi i32 [ %i.anx, %bb.cd ], [ -1, %bb.cc ]
  %i.anz = getelementptr inbounds nuw i8, ptr %.6532, i64 48
  store i32 %i.any, ptr %i.anz, align 4, !tbaa !23
  br i1 %i.ani, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.aoa = extractelement <4 x i32> %i.afo, i64 0
  %i.aob = add nsw i32 %i.and, %i.aoa
  %i.aoc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.aod = mul nsw i32 %i.aoc, %i.aob
  br label %.split.3

.split.3:                                         ; preds = %.thread800, %bb.cf, %bb.ce
  %i.aoe = phi i32 [ %i.aod, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread800 ]
  %i.aof = getelementptr inbounds nuw i8, ptr %.6532, i64 52
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !23
  %i.aog = getelementptr inbounds nuw i8, ptr %.6532, i64 56 ; 2 uses
  %i.aoh = add nsw i32 %i.alo, 2
  %i.aoi = load i32, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.aoj = sitofp fast i32 %i.aoh to float
  %i.aok = sitofp fast i32 %i.aoi to float
  %i.aol = fadd fast float %i.aok, -1.000000e+00
  %i.aom = icmp slt i32 %i.alo, -2
  %.sroa.speculated4.i437.3 = select i1 %i.aom, float 0.000000e+00, float %i.aoj
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated4.i437.3, float %i.aol)
  %i.aon = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.aoo = load i32, ptr %i.uz, align 4, !tbaa !37
  %i.aop = mul nsw i32 %i.aoo, %i.aon             ; 4 uses
  %i.aoq = icmp sgt i32 %i.aon, -1
  %i.aor = icmp sgt i32 %i.aoi, %i.aon
  %i.aos = and i1 %i.aoq, %i.aor                  ; 3 uses
  %i.aot = and i1 %i.afu, %i.aos
  %i.aou = and i1 %i.afv, %i.aos
  br i1 %i.aos, label %bb.cg, label %.thread803

.thread803:                                       ; preds = %.split.3
  store i32 -1, ptr %i.aog, align 4, !tbaa !23
  %i.aov = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 -1, ptr %i.aov, align 4, !tbaa !23
  %i.aow = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 -1, ptr %i.aow, align 4, !tbaa !23
  br label %.split528.us

bb.cg:                                            ; preds = %.split.3
  %i.aox = extractelement <4 x i32> %i.afo, i64 2
  %i.aoy = add nsw i32 %i.aop, %i.aox
  %i.aoz = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apa = mul nsw i32 %i.aoz, %i.aoy
  store i32 %i.apa, ptr %i.aog, align 4, !tbaa !23
  br i1 %i.afi, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.apb = add nsw i32 %i.aop, %i.afe
  %i.apc = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apd = mul nsw i32 %i.apc, %i.apb
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ape = phi i32 [ %i.apd, %bb.ch ], [ -1, %bb.cg ]
  %i.apf = getelementptr inbounds nuw i8, ptr %.6532, i64 60
  store i32 %i.ape, ptr %i.apf, align 4, !tbaa !23
  br i1 %i.aot, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.apg = extractelement <4 x i32> %i.afo, i64 3
  %i.aph = add nsw i32 %i.aop, %i.apg
  %i.api = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.apj = mul nsw i32 %i.api, %i.aph
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.apk = phi i32 [ %i.apj, %bb.cj ], [ -1, %bb.ci ]
  %i.apl = getelementptr inbounds nuw i8, ptr %.6532, i64 64
  store i32 %i.apk, ptr %i.apl, align 4, !tbaa !23
  br i1 %i.aou, label %bb.cl, label %.split528.us

bb.cl:                                            ; preds = %bb.ck
  %i.apm = extractelement <4 x i32> %i.afo, i64 0
  %i.apn = add nsw i32 %i.aop, %i.apm
  %i.apo = load i32, ptr %i.vb, align 8, !tbaa !16
  %i.app = mul nsw i32 %i.apo, %i.apn
  br label %.split528.us

.loopexit:                                        ; preds = %.split528.us, %._crit_edge, %.preheader513, %.preheader512
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !349 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader521, label %_ZN4ncnn3MatD2Ev.exit397

.preheader521:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader521
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380565 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !350
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !350
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !350
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph549, label %.preheader

.preheader:                                       ; preds = %.lr.ph549, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.kn, %.lr.ph549 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph549 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380565, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.km, %.lr.ph549 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph562, label %._crit_edge

.lr.ph549:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph549
  %.1548 = phi ptr [ %i.km, %.lr.ph549 ], [ %.0380565, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393547 = phi i32 [ %i.ko, %.lr.ph549 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395546 = phi ptr [ %i.kn, %.lr.ph549 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395546, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395546, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 15 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fmul fast <8 x float> %i.ag, %i.ae
  %i.ai = fadd fast <8 x float> %i.ah, splat (float -5.000000e-01) ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 11 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fmul fast <8 x float> %i.ao, %i.am
  %i.aq = fadd fast <8 x float> %i.ap, splat (float -5.000000e-01) ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 4 uses
  %i.au = fadd fast <8 x float> %i.ar, splat (float -5.000000e-01)
  %i.av = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.au)
  %i.aw = fsub fast <8 x float> %i.av, %i.ae
  %i.ax = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.aw)
  %i.ay = fadd fast <8 x float> %i.ae, splat (float -5.000000e-01) ; 4 uses
  %i.az = fsub fast <8 x float> %i.ay, %i.ax
  %i.ba = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.az, <8 x float> zeroinitializer)
  %i.bb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.ba) ; 6 uses
  %i.bc = fadd fast <8 x float> %i.ar, splat (float 5.000000e-01)
  %i.bd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bc)
  %i.be = fsub fast <8 x float> %i.bd, %i.ae
  %i.bf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.be)
  %i.bg = fsub fast <8 x float> %i.ay, %i.bf
  %i.bh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bg, <8 x float> zeroinitializer)
  %i.bi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.bh) ; 6 uses
  %i.bj = fadd fast <8 x float> %i.ar, splat (float 1.500000e+00)
  %i.bk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bl = fsub fast <8 x float> %i.bk, %i.ae
  %i.bm = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bl)
  %i.bn = fsub fast <8 x float> %i.ay, %i.bm
  %i.bo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bn, <8 x float> zeroinitializer)
  %i.bp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.bo) ; 6 uses
  %i.bq = fadd fast <8 x float> %i.ar, splat (float 2.500000e+00)
  %i.br = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bq)
  %i.bs = fsub fast <8 x float> %i.br, %i.ae
  %i.bt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bs)
  %i.bu = fsub fast <8 x float> %i.ay, %i.bt
  %i.bv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bu, <8 x float> zeroinitializer)
  %i.bw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.at, <8 x float> nofpclass(nan inf) %i.bv) ; 6 uses
  %i.bx = fcmp fast ogt <8 x float> %i.bb, splat (float -1.000000e+00)
  %i.by = fcmp fast ogt <8 x float> %i.ae, %i.bb
  %i.bz = and <8 x i1> %i.bx, %i.by               ; 4 uses
  %i.ca = fcmp fast ogt <8 x float> %i.bi, splat (float -1.000000e+00)
  %i.cb = fcmp fast ogt <8 x float> %i.ae, %i.bi
  %i.cc = and <8 x i1> %i.ca, %i.cb               ; 4 uses
  %i.cd = fcmp fast ogt <8 x float> %i.bp, splat (float -1.000000e+00)
  %i.ce = fcmp fast ogt <8 x float> %i.ae, %i.bp
  %i.cf = and <8 x i1> %i.cd, %i.ce               ; 4 uses
  %i.cg = fcmp fast ogt <8 x float> %i.bw, splat (float -1.000000e+00)
  %i.ch = fcmp fast ogt <8 x float> %i.ae, %i.bw
  %i.ci = and <8 x i1> %i.cg, %i.ch               ; 4 uses
  %i.cj = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 4 uses
  %i.ck = fadd fast <8 x float> %i.am, splat (float -5.000000e-01) ; 4 uses
  %i.cl = load i32, ptr %i.p, align 8, !tbaa !16
  %i.cm = sitofp fast i32 %i.cl to float
  %i.cn = insertelement <8 x float> poison, float %i.cm, i64 0
  %i.co = shufflevector <8 x float> %i.cn, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.cp = fadd fast <8 x float> %i.as, splat (float -5.000000e-01)
  %i.cq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cp)
  %i.cr = fsub fast <8 x float> %i.cq, %i.am
  %i.cs = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cr)
  %i.ct = fsub fast <8 x float> %i.ck, %i.cs
  %i.cu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ct, <8 x float> zeroinitializer)
  %i.cv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.cu) ; 3 uses
  %i.cw = fcmp fast ogt <8 x float> %i.cv, splat (float -1.000000e+00)
  %i.cx = fcmp fast ogt <8 x float> %i.am, %i.cv
  %i.cy = and <8 x i1> %i.cw, %i.cx               ; 4 uses
  %i.cz = fmul fast <8 x float> %i.cv, %i.ae      ; 4 uses
  %i.da = fadd fast <8 x float> %i.cz, %i.bb
  %i.db = fmul fast <8 x float> %i.co, %i.da
  %i.dc = fadd fast <8 x float> %i.cz, %i.bi
  %i.dd = fmul fast <8 x float> %i.co, %i.dc
  %i.de = fadd fast <8 x float> %i.cz, %i.bp
  %i.df = fmul fast <8 x float> %i.co, %i.de
  %i.dg = fadd fast <8 x float> %i.cz, %i.bw
  %i.dh = fmul fast <8 x float> %i.co, %i.dg
  %i.di = and <8 x i1> %i.bz, %i.cy
  %i.dj = select <8 x i1> %i.di, <8 x float> %i.db, <8 x float> splat (float -1.000000e+00)
  %i.dk = and <8 x i1> %i.cc, %i.cy
  %i.dl = select <8 x i1> %i.dk, <8 x float> %i.dd, <8 x float> splat (float -1.000000e+00)
  %i.dm = and <8 x i1> %i.cf, %i.cy
  %i.dn = select <8 x i1> %i.dm, <8 x float> %i.df, <8 x float> splat (float -1.000000e+00)
  %i.do = and <8 x i1> %i.ci, %i.cy
  %i.dp = select <8 x i1> %i.do, <8 x float> %i.dh, <8 x float> splat (float -1.000000e+00)
  %i.dq = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dj) ; 2 uses
  %i.dr = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dl) ; 2 uses
  %i.ds = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dn) ; 2 uses
  %i.dt = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dp) ; 2 uses
  %i.du = fadd fast <8 x float> %i.as, splat (float 5.000000e-01)
  %i.dv = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.du)
  %i.dw = fsub fast <8 x float> %i.dv, %i.am
  %i.dx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dw)
  %i.dy = fsub fast <8 x float> %i.ck, %i.dx
  %i.dz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dy, <8 x float> zeroinitializer)
  %i.ea = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.dz) ; 3 uses
  %i.eb = fcmp fast ogt <8 x float> %i.ea, splat (float -1.000000e+00)
  %i.ec = fcmp fast ogt <8 x float> %i.am, %i.ea
  %i.ed = and <8 x i1> %i.eb, %i.ec               ; 4 uses
  %i.ee = fmul fast <8 x float> %i.ea, %i.ae      ; 4 uses
  %i.ef = fadd fast <8 x float> %i.ee, %i.bb
  %i.eg = fmul fast <8 x float> %i.co, %i.ef
  %i.eh = fadd fast <8 x float> %i.ee, %i.bi
  %i.ei = fmul fast <8 x float> %i.co, %i.eh
  %i.ej = fadd fast <8 x float> %i.ee, %i.bp
  %i.ek = fmul fast <8 x float> %i.co, %i.ej
  %i.el = fadd fast <8 x float> %i.ee, %i.bw
  %i.em = fmul fast <8 x float> %i.co, %i.el
  %i.en = and <8 x i1> %i.bz, %i.ed
  %i.eo = select <8 x i1> %i.en, <8 x float> %i.eg, <8 x float> splat (float -1.000000e+00)
  %i.ep = and <8 x i1> %i.cc, %i.ed
  %i.eq = select <8 x i1> %i.ep, <8 x float> %i.ei, <8 x float> splat (float -1.000000e+00)
  %i.er = and <8 x i1> %i.cf, %i.ed
  %i.es = select <8 x i1> %i.er, <8 x float> %i.ek, <8 x float> splat (float -1.000000e+00)
  %i.et = and <8 x i1> %i.ci, %i.ed
  %i.eu = select <8 x i1> %i.et, <8 x float> %i.em, <8 x float> splat (float -1.000000e+00)
  %i.ev = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo) ; 2 uses
  %i.ew = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eq) ; 2 uses
  %i.ex = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.es) ; 2 uses
  %i.ey = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eu) ; 2 uses
  %i.ez = fadd fast <8 x float> %i.as, splat (float 1.500000e+00)
  %i.fa = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ez)
  %i.fb = fsub fast <8 x float> %i.fa, %i.am
  %i.fc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fb)
  %i.fd = fsub fast <8 x float> %i.ck, %i.fc
  %i.fe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fd, <8 x float> zeroinitializer)
  %i.ff = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.fe) ; 3 uses
  %i.fg = fcmp fast ogt <8 x float> %i.ff, splat (float -1.000000e+00)
  %i.fh = fcmp fast ogt <8 x float> %i.am, %i.ff
  %i.fi = and <8 x i1> %i.fg, %i.fh               ; 4 uses
  %i.fj = fmul fast <8 x float> %i.ff, %i.ae      ; 4 uses
  %i.fk = fadd fast <8 x float> %i.fj, %i.bb
  %i.fl = fmul fast <8 x float> %i.co, %i.fk
  %i.fm = fadd fast <8 x float> %i.fj, %i.bi
  %i.fn = fmul fast <8 x float> %i.co, %i.fm
  %i.fo = fadd fast <8 x float> %i.fj, %i.bp
  %i.fp = fmul fast <8 x float> %i.co, %i.fo
  %i.fq = fadd fast <8 x float> %i.fj, %i.bw
  %i.fr = fmul fast <8 x float> %i.co, %i.fq
  %i.fs = and <8 x i1> %i.bz, %i.fi
  %i.ft = select <8 x i1> %i.fs, <8 x float> %i.fl, <8 x float> splat (float -1.000000e+00)
  %i.fu = and <8 x i1> %i.cc, %i.fi
  %i.fv = select <8 x i1> %i.fu, <8 x float> %i.fn, <8 x float> splat (float -1.000000e+00)
  %i.fw = and <8 x i1> %i.cf, %i.fi
  %i.fx = select <8 x i1> %i.fw, <8 x float> %i.fp, <8 x float> splat (float -1.000000e+00)
  %i.fy = and <8 x i1> %i.ci, %i.fi
  %i.fz = select <8 x i1> %i.fy, <8 x float> %i.fr, <8 x float> splat (float -1.000000e+00)
  %i.ga = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ft) ; 2 uses
  %i.gb = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fv) ; 2 uses
  %i.gc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fx) ; 2 uses
  %i.gd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fz) ; 2 uses
  %i.ge = fadd fast <8 x float> %i.as, splat (float 2.500000e+00)
  %i.gf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ge)
  %i.gg = fsub fast <8 x float> %i.gf, %i.am
  %i.gh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gg)
  %i.gi = fsub fast <8 x float> %i.ck, %i.gh
  %i.gj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gi, <8 x float> zeroinitializer)
  %i.gk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.cj, <8 x float> nofpclass(nan inf) %i.gj) ; 3 uses
  %i.gl = fcmp fast ogt <8 x float> %i.gk, splat (float -1.000000e+00)
  %i.gm = fcmp fast ogt <8 x float> %i.am, %i.gk
  %i.gn = and <8 x i1> %i.gl, %i.gm               ; 4 uses
  %i.go = fmul fast <8 x float> %i.gk, %i.ae      ; 4 uses
  %i.gp = fadd fast <8 x float> %i.go, %i.bb
  %i.gq = fmul fast <8 x float> %i.co, %i.gp
  %i.gr = fadd fast <8 x float> %i.go, %i.bi
  %i.gs = fmul fast <8 x float> %i.co, %i.gr
  %i.gt = fadd fast <8 x float> %i.go, %i.bp
  %i.gu = fmul fast <8 x float> %i.co, %i.gt
  %i.gv = fadd fast <8 x float> %i.go, %i.bw
  %i.gw = fmul fast <8 x float> %i.co, %i.gv
  %i.gx = and <8 x i1> %i.bz, %i.gn
  %i.gy = select <8 x i1> %i.gx, <8 x float> %i.gq, <8 x float> splat (float -1.000000e+00)
  %i.gz = and <8 x i1> %i.cc, %i.gn
  %i.ha = select <8 x i1> %i.gz, <8 x float> %i.gs, <8 x float> splat (float -1.000000e+00)
  %i.hb = and <8 x i1> %i.cf, %i.gn
  %i.hc = select <8 x i1> %i.hb, <8 x float> %i.gu, <8 x float> splat (float -1.000000e+00)
  %i.hd = and <8 x i1> %i.ci, %i.gn
  %i.he = select <8 x i1> %i.hd, <8 x float> %i.gw, <8 x float> splat (float -1.000000e+00)
  %i.hf = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gy) ; 2 uses
  %i.hg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ha) ; 2 uses
  %i.hh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.hc) ; 2 uses
  %i.hi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.he) ; 2 uses
  %i.hj = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.hk = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.hl = shufflevector <8 x float> %i.hj, <8 x float> %i.hk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hm = shufflevector <8 x float> %i.hj, <8 x float> %i.hk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hn = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ho = bitcast <8 x i32> %i.hn to <8 x float>
  %i.hp = shufflevector <8 x i32> %i.dq, <8 x i32> %i.dr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hq = bitcast <8 x i32> %i.hp to <8 x float>
  %i.hr = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hs = shufflevector <8 x i32> %i.ds, <8 x i32> %i.dt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ht = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hu = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hv = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hw = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ey, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hx = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hz = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ib = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ic = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.id = shufflevector <8 x i32> %i.hh, <8 x i32> %i.hi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ie = bitcast <8 x i32> %i.id to <8 x float>
  %i.if = shufflevector <8 x i32> %i.hh, <8 x i32> %i.hi, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb0EEEvRKNS_3MatES5_RS3_i:_ZN4ncnn3MatD2Ev.exit399
  %i.atb = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.ata)
  %i.atc = sitofp fast i32 %i.asy to float        ; 3 uses
  %i.atd = fsub fast float %i.atb, %i.atc
  %i.ate = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.atd)
  %i.atf = fadd fast float %i.atc, -5.000000e-01
  %i.atg = fsub fast float %i.atf, %i.ate
  %i.ath = fadd fast float %i.atc, -1.000000e+00
  %.sroa.speculated6.i437.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.atg, float 0.000000e+00)
  %.sroa.speculated.i438.2 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.2, float %i.ath)
  %i.ati = fptosi float %.sroa.speculated.i438.2 to i32 ; 3 uses
  %i.atj = load i32, ptr %i.yf, align 4, !tbaa !37
  %i.atk = mul nsw i32 %i.atj, %i.ati             ; 4 uses
  %i.atl = icmp sgt i32 %i.ati, -1
  %i.atm = icmp sgt i32 %i.asy, %i.ati
  %i.atn = and i1 %i.atl, %i.atm                  ; 3 uses
  %i.ato = and i1 %i.aky, %i.atn
  %i.atp = and i1 %i.akz, %i.atn
  br i1 %i.atn, label %bb.ca, label %.thread805

.thread805:                                       ; preds = %.split.2
  store i32 -1, ptr %i.asv, align 4, !tbaa !23
  %i.atq = getelementptr inbounds nuw i8, ptr %.6541, i64 44
  store i32 -1, ptr %i.atq, align 4, !tbaa !23
  %i.atr = getelementptr inbounds nuw i8, ptr %.6541, i64 48
  store i32 -1, ptr %i.atr, align 4, !tbaa !23
  br label %.split.3

bb.ca:                                            ; preds = %.split.2
  %i.ats = extractelement <4 x i32> %i.akr, i64 2
  %i.att = add nsw i32 %i.atk, %i.ats
  %i.atu = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.atv = mul nsw i32 %i.atu, %i.att
  store i32 %i.atv, ptr %i.asv, align 4, !tbaa !23
  br i1 %i.akh, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.atw = add nsw i32 %i.atk, %i.ake
  %i.atx = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.aty = mul nsw i32 %i.atx, %i.atw
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.atz = phi i32 [ %i.aty, %bb.cb ], [ -1, %bb.ca ]
  %i.aua = getelementptr inbounds nuw i8, ptr %.6541, i64 44
  store i32 %i.atz, ptr %i.aua, align 4, !tbaa !23
  br i1 %i.ato, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aub = extractelement <4 x i32> %i.akr, i64 3
  %i.auc = add nsw i32 %i.atk, %i.aub
  %i.aud = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.aue = mul nsw i32 %i.aud, %i.auc
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.auf = phi i32 [ %i.aue, %bb.cd ], [ -1, %bb.cc ]
  %i.aug = getelementptr inbounds nuw i8, ptr %.6541, i64 48
  store i32 %i.auf, ptr %i.aug, align 4, !tbaa !23
  br i1 %i.atp, label %bb.cf, label %.split.3

bb.cf:                                            ; preds = %bb.ce
  %i.auh = extractelement <4 x i32> %i.akr, i64 0
  %i.aui = add nsw i32 %i.atk, %i.auh
  %i.auj = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.auk = mul nsw i32 %i.auj, %i.aui
  br label %.split.3

.split.3:                                         ; preds = %.thread805, %bb.cf, %bb.ce
  %i.aul = phi i32 [ %i.auk, %bb.cf ], [ -1, %bb.ce ], [ -1, %.thread805 ]
  %i.aum = getelementptr inbounds nuw i8, ptr %.6541, i64 52
  store i32 %i.aul, ptr %i.aum, align 4, !tbaa !23
  %i.aun = getelementptr inbounds nuw i8, ptr %.6541, i64 56 ; 2 uses
  %i.auo = add i32 %i.asw, 2
  %i.aup = load i32, ptr %i.yg, align 8, !tbaa !38 ; 2 uses
  %i.auq = sitofp fast i32 %i.auo to float
  %i.aur = fadd fast float %i.auq, 5.000000e-01
  %i.aus = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.aur)
  %i.aut = sitofp fast i32 %i.aup to float        ; 3 uses
  %i.auu = fsub fast float %i.aus, %i.aut
  %i.auv = tail call fast noundef nofpclass(nan inf) float @llvm.fabs.f32(float nofpclass(nan inf) %i.auu)
  %i.auw = fadd fast float %i.aut, -5.000000e-01
  %i.aux = fsub fast float %i.auw, %i.auv
  %i.auy = fadd fast float %i.aut, -1.000000e+00
  %.sroa.speculated6.i437.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.aux, float 0.000000e+00)
  %.sroa.speculated.i438.3 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.sroa.speculated6.i437.3, float %i.auy)
  %i.auz = fptosi float %.sroa.speculated.i438.3 to i32 ; 3 uses
  %i.ava = load i32, ptr %i.yf, align 4, !tbaa !37
  %i.avb = mul nsw i32 %i.ava, %i.auz             ; 4 uses
  %i.avc = icmp sgt i32 %i.auz, -1
  %i.avd = icmp sgt i32 %i.aup, %i.auz
  %i.ave = and i1 %i.avc, %i.avd                  ; 3 uses
  %i.avf = and i1 %i.aky, %i.ave
  %i.avg = and i1 %i.akz, %i.ave
  br i1 %i.ave, label %bb.cg, label %.thread808

.thread808:                                       ; preds = %.split.3
  store i32 -1, ptr %i.aun, align 4, !tbaa !23
  %i.avh = getelementptr inbounds nuw i8, ptr %.6541, i64 60
  store i32 -1, ptr %i.avh, align 4, !tbaa !23
  %i.avi = getelementptr inbounds nuw i8, ptr %.6541, i64 64
  store i32 -1, ptr %i.avi, align 4, !tbaa !23
  br label %.split537.us

bb.cg:                                            ; preds = %.split.3
  %i.avj = extractelement <4 x i32> %i.akr, i64 2
  %i.avk = add nsw i32 %i.avb, %i.avj
  %i.avl = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.avm = mul nsw i32 %i.avl, %i.avk
  store i32 %i.avm, ptr %i.aun, align 4, !tbaa !23
  br i1 %i.akh, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.avn = add nsw i32 %i.avb, %i.ake
  %i.avo = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.avp = mul nsw i32 %i.avo, %i.avn
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.avq = phi i32 [ %i.avp, %bb.ch ], [ -1, %bb.cg ]
  %i.avr = getelementptr inbounds nuw i8, ptr %.6541, i64 60
  store i32 %i.avq, ptr %i.avr, align 4, !tbaa !23
  br i1 %i.avf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.avs = extractelement <4 x i32> %i.akr, i64 3
  %i.avt = add nsw i32 %i.avb, %i.avs
  %i.avu = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.avv = mul nsw i32 %i.avu, %i.avt
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.avw = phi i32 [ %i.avv, %bb.cj ], [ -1, %bb.ci ]
  %i.avx = getelementptr inbounds nuw i8, ptr %.6541, i64 64
  store i32 %i.avw, ptr %i.avx, align 4, !tbaa !23
  br i1 %i.avg, label %bb.cl, label %.split537.us

bb.cl:                                            ; preds = %bb.ck
  %i.avy = extractelement <4 x i32> %i.akr, i64 0
  %i.avz = add nsw i32 %i.avb, %i.avy
  %i.awa = load i32, ptr %i.yh, align 8, !tbaa !16
  %i.awb = mul nsw i32 %i.awa, %i.avz
  br label %.split537.us

.loopexit:                                        ; preds = %.split537.us, %._crit_edge, %.preheader522, %.preheader521
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4ncnn34gridsample_2d_bicubic_compute_blobILNS_10GridSample11PaddingModeE3ELb1EEEvRKNS_3MatES5_RS3_i(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
_ZN4ncnn3MatD2Ev.exit399:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = mul i32 %i.d, %i.b                       ; 10 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !20, !noalias !366 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.preheader510, label %_ZN4ncnn3MatD2Ev.exit397

.preheader510:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit399
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN4ncnn3MatD2Ev.exit398.lr.ph, label %.loopexit

_ZN4ncnn3MatD2Ev.exit398.lr.ph:                   ; preds = %.preheader510
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = icmp sgt i32 %i.e, 15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.q = and i32 %i.e, -16
  br label %_ZN4ncnn3MatD2Ev.exit398

_ZN4ncnn3MatD2Ev.exit398:                         ; preds = %_ZN4ncnn3MatD2Ev.exit398.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.0380554 = phi ptr [ %i.f, %_ZN4ncnn3MatD2Ev.exit398.lr.ph ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20, !noalias !367
  %i.s = load i64, ptr %i.k, align 8, !tbaa !19, !noalias !367
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !367
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  br i1 %i.m, label %.lr.ph538, label %.preheader

.preheader:                                       ; preds = %.lr.ph538, %_ZN4ncnn3MatD2Ev.exit398
  %.0395.lcssa = phi ptr [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jr, %.lr.ph538 ]
  %.0393.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.q, %.lr.ph538 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0380554, %_ZN4ncnn3MatD2Ev.exit398 ], [ %i.jq, %.lr.ph538 ] ; 2 uses
  %i.x = icmp slt i32 %.0393.lcssa, %i.e
  br i1 %i.x, label %.lr.ph551, label %._crit_edge

.lr.ph538:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit398, %.lr.ph538
  %.1537 = phi ptr [ %i.jq, %.lr.ph538 ], [ %.0380554, %_ZN4ncnn3MatD2Ev.exit398 ] ; 19 uses
  %.0393536 = phi i32 [ %i.js, %.lr.ph538 ], [ 0, %_ZN4ncnn3MatD2Ev.exit398 ]
  %.0395535 = phi ptr [ %i.jr, %.lr.ph538 ], [ %i.w, %_ZN4ncnn3MatD2Ev.exit398 ] ; 3 uses
  %i.y = load <8 x float>, ptr %.0395535, align 1, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0395535, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !41 ; 2 uses
  %4 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %5 = shufflevector <8 x float> %i.y, <8 x float> %i.aa, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %6 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %7 = shufflevector <8 x float> %4, <8 x float> %5, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.ab = load i32, ptr %i.n, align 4, !tbaa !37
  %i.ac = sitofp fast i32 %i.ab to float
  %i.ad = insertelement <8 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> zeroinitializer ; 9 uses
  %i.af = fmul fast <8 x float> %6, splat (float 5.000000e-01)
  %i.ag = fadd fast <8 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd fast <8 x float> %i.ae, splat (float -1.000000e+00) ; 9 uses
  %i.ai = fmul fast <8 x float> %i.ah, %i.ag      ; 2 uses
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !38
  %i.ak = sitofp fast i32 %i.aj to float
  %i.al = insertelement <8 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <8 x float> %i.al, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.an = fmul fast <8 x float> %7, splat (float 5.000000e-01)
  %i.ao = fadd fast <8 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = fadd fast <8 x float> %i.am, splat (float -1.000000e+00) ; 9 uses
  %i.aq = fmul fast <8 x float> %i.ap, %i.ao      ; 2 uses
  %i.ar = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ai, i32 1) ; 5 uses
  %i.as = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.aq, i32 1) ; 5 uses
  %i.at = fadd fast <8 x float> %i.ar, splat (float -1.000000e+00)
  %i.au = fadd fast <8 x float> %i.ar, splat (float 1.000000e+00)
  %i.av = fadd fast <8 x float> %i.ar, splat (float 2.000000e+00)
  %i.aw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.at)
  %i.ax = fsub fast <8 x float> %i.aw, %i.ah
  %i.ay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ax)
  %i.az = fsub fast <8 x float> %i.ah, %i.ay      ; 6 uses
  %i.ba = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.ar)
  %i.bb = fsub fast <8 x float> %i.ba, %i.ah
  %i.bc = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bb)
  %i.bd = fsub fast <8 x float> %i.ah, %i.bc      ; 6 uses
  %i.be = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.au)
  %i.bf = fsub fast <8 x float> %i.be, %i.ah
  %i.bg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bf)
  %i.bh = fsub fast <8 x float> %i.ah, %i.bg      ; 6 uses
  %i.bi = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.av)
  %i.bj = fsub fast <8 x float> %i.bi, %i.ah
  %i.bk = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bj)
  %i.bl = fsub fast <8 x float> %i.ah, %i.bk      ; 6 uses
  %i.bm = fcmp fast ogt <8 x float> %i.az, splat (float -1.000000e+00)
  %i.bn = fcmp fast ogt <8 x float> %i.ae, %i.az
  %i.bo = and <8 x i1> %i.bm, %i.bn               ; 4 uses
  %i.bp = fcmp fast ogt <8 x float> %i.bd, splat (float -1.000000e+00)
  %i.bq = fcmp fast ogt <8 x float> %i.ae, %i.bd
  %i.br = and <8 x i1> %i.bp, %i.bq               ; 4 uses
  %i.bs = fcmp fast ogt <8 x float> %i.bh, splat (float -1.000000e+00)
  %i.bt = fcmp fast ogt <8 x float> %i.ae, %i.bh
  %i.bu = and <8 x i1> %i.bs, %i.bt               ; 4 uses
  %i.bv = fcmp fast ogt <8 x float> %i.bl, splat (float -1.000000e+00)
  %i.bw = fcmp fast ogt <8 x float> %i.ae, %i.bl
  %i.bx = and <8 x i1> %i.bv, %i.bw               ; 4 uses
  %i.by = load i32, ptr %i.p, align 8, !tbaa !16
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = insertelement <8 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <8 x float> %i.ca, <8 x float> poison, <8 x i32> zeroinitializer ; 16 uses
  %i.cc = fadd fast <8 x float> %i.as, splat (float -1.000000e+00)
  %i.cd = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.cc)
  %i.ce = fsub fast <8 x float> %i.cd, %i.ap
  %i.cf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ce)
  %i.cg = fsub fast <8 x float> %i.ap, %i.cf      ; 3 uses
  %i.ch = fcmp fast ogt <8 x float> %i.cg, splat (float -1.000000e+00)
  %i.ci = fcmp fast ogt <8 x float> %i.am, %i.cg
  %i.cj = and <8 x i1> %i.ch, %i.ci               ; 4 uses
  %i.ck = fmul fast <8 x float> %i.cg, %i.ae      ; 4 uses
  %i.cl = fadd fast <8 x float> %i.ck, %i.az
  %i.cm = fmul fast <8 x float> %i.cb, %i.cl
  %i.cn = fadd fast <8 x float> %i.ck, %i.bd
  %i.co = fmul fast <8 x float> %i.cb, %i.cn
  %i.cp = fadd fast <8 x float> %i.ck, %i.bh
  %i.cq = fmul fast <8 x float> %i.cb, %i.cp
  %i.cr = fadd fast <8 x float> %i.ck, %i.bl
  %i.cs = fmul fast <8 x float> %i.cb, %i.cr
  %i.ct = and <8 x i1> %i.bo, %i.cj
  %i.cu = select <8 x i1> %i.ct, <8 x float> %i.cm, <8 x float> splat (float -1.000000e+00)
  %i.cv = and <8 x i1> %i.br, %i.cj
  %i.cw = select <8 x i1> %i.cv, <8 x float> %i.co, <8 x float> splat (float -1.000000e+00)
  %i.cx = and <8 x i1> %i.bu, %i.cj
  %i.cy = select <8 x i1> %i.cx, <8 x float> %i.cq, <8 x float> splat (float -1.000000e+00)
  %i.cz = and <8 x i1> %i.bx, %i.cj
  %i.da = select <8 x i1> %i.cz, <8 x float> %i.cs, <8 x float> splat (float -1.000000e+00)
  %i.db = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cu) ; 2 uses
  %i.dc = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cw) ; 2 uses
  %i.dd = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.cy) ; 2 uses
  %i.de = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.da) ; 2 uses
  %i.df = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.as)
  %i.dg = fsub fast <8 x float> %i.df, %i.ap
  %i.dh = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.dg)
  %i.di = fsub fast <8 x float> %i.ap, %i.dh      ; 3 uses
  %i.dj = fcmp fast ogt <8 x float> %i.di, splat (float -1.000000e+00)
  %i.dk = fcmp fast ogt <8 x float> %i.am, %i.di
  %i.dl = and <8 x i1> %i.dj, %i.dk               ; 4 uses
  %i.dm = fmul fast <8 x float> %i.di, %i.ae      ; 4 uses
  %i.dn = fadd fast <8 x float> %i.dm, %i.az
  %i.do = fmul fast <8 x float> %i.cb, %i.dn
  %i.dp = fadd fast <8 x float> %i.dm, %i.bd
  %i.dq = fmul fast <8 x float> %i.cb, %i.dp
  %i.dr = fadd fast <8 x float> %i.dm, %i.bh
  %i.ds = fmul fast <8 x float> %i.cb, %i.dr
  %i.dt = fadd fast <8 x float> %i.dm, %i.bl
  %i.du = fmul fast <8 x float> %i.cb, %i.dt
  %i.dv = and <8 x i1> %i.bo, %i.dl
  %i.dw = select <8 x i1> %i.dv, <8 x float> %i.do, <8 x float> splat (float -1.000000e+00)
  %i.dx = and <8 x i1> %i.br, %i.dl
  %i.dy = select <8 x i1> %i.dx, <8 x float> %i.dq, <8 x float> splat (float -1.000000e+00)
  %i.dz = and <8 x i1> %i.bu, %i.dl
  %i.ea = select <8 x i1> %i.dz, <8 x float> %i.ds, <8 x float> splat (float -1.000000e+00)
  %i.eb = and <8 x i1> %i.bx, %i.dl
  %i.ec = select <8 x i1> %i.eb, <8 x float> %i.du, <8 x float> splat (float -1.000000e+00)
  %i.ed = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dw) ; 2 uses
  %i.ee = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dy) ; 2 uses
  %i.ef = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ea) ; 2 uses
  %i.eg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ec) ; 2 uses
  %i.eh = fadd fast <8 x float> %i.as, splat (float 1.000000e+00)
  %i.ei = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.eh)
  %i.ej = fsub fast <8 x float> %i.ei, %i.ap
  %i.ek = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ej)
  %i.el = fsub fast <8 x float> %i.ap, %i.ek      ; 3 uses
  %i.em = fcmp fast ogt <8 x float> %i.el, splat (float -1.000000e+00)
  %i.en = fcmp fast ogt <8 x float> %i.am, %i.el
  %i.eo = and <8 x i1> %i.em, %i.en               ; 4 uses
  %i.ep = fmul fast <8 x float> %i.el, %i.ae      ; 4 uses
  %i.eq = fadd fast <8 x float> %i.ep, %i.az
  %i.er = fmul fast <8 x float> %i.cb, %i.eq
  %i.es = fadd fast <8 x float> %i.ep, %i.bd
  %i.et = fmul fast <8 x float> %i.cb, %i.es
  %i.eu = fadd fast <8 x float> %i.ep, %i.bh
  %i.ev = fmul fast <8 x float> %i.cb, %i.eu
  %i.ew = fadd fast <8 x float> %i.ep, %i.bl
  %i.ex = fmul fast <8 x float> %i.cb, %i.ew
  %i.ey = and <8 x i1> %i.bo, %i.eo
  %i.ez = select <8 x i1> %i.ey, <8 x float> %i.er, <8 x float> splat (float -1.000000e+00)
  %i.fa = and <8 x i1> %i.br, %i.eo
  %i.fb = select <8 x i1> %i.fa, <8 x float> %i.et, <8 x float> splat (float -1.000000e+00)
  %i.fc = and <8 x i1> %i.bu, %i.eo
  %i.fd = select <8 x i1> %i.fc, <8 x float> %i.ev, <8 x float> splat (float -1.000000e+00)
  %i.fe = and <8 x i1> %i.bx, %i.eo
  %i.ff = select <8 x i1> %i.fe, <8 x float> %i.ex, <8 x float> splat (float -1.000000e+00)
  %i.fg = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ez) ; 2 uses
  %i.fh = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fb) ; 2 uses
  %i.fi = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.fd) ; 2 uses
  %i.fj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ff) ; 2 uses
  %i.fk = fadd fast <8 x float> %i.as, splat (float 2.000000e+00)
  %i.fl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> nofpclass(nan inf) %i.fk)
  %i.fm = fsub fast <8 x float> %i.fl, %i.ap
  %i.fn = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fo = fsub fast <8 x float> %i.ap, %i.fn      ; 3 uses
  %i.fp = fcmp fast ogt <8 x float> %i.fo, splat (float -1.000000e+00)
  %i.fq = fcmp fast ogt <8 x float> %i.am, %i.fo
  %i.fr = and <8 x i1> %i.fp, %i.fq               ; 4 uses
  %i.fs = fmul fast <8 x float> %i.fo, %i.ae      ; 4 uses
  %i.ft = fadd fast <8 x float> %i.fs, %i.az
  %i.fu = fmul fast <8 x float> %i.cb, %i.ft
  %i.fv = fadd fast <8 x float> %i.fs, %i.bd
  %i.fw = fmul fast <8 x float> %i.cb, %i.fv
  %i.fx = fadd fast <8 x float> %i.fs, %i.bh
  %i.fy = fmul fast <8 x float> %i.cb, %i.fx
  %i.fz = fadd fast <8 x float> %i.fs, %i.bl
  %i.ga = fmul fast <8 x float> %i.cb, %i.fz
  %i.gb = and <8 x i1> %i.bo, %i.fr
  %i.gc = select <8 x i1> %i.gb, <8 x float> %i.fu, <8 x float> splat (float -1.000000e+00)
  %i.gd = and <8 x i1> %i.br, %i.fr
  %i.ge = select <8 x i1> %i.gd, <8 x float> %i.fw, <8 x float> splat (float -1.000000e+00)
  %i.gf = and <8 x i1> %i.bu, %i.fr
  %i.gg = select <8 x i1> %i.gf, <8 x float> %i.fy, <8 x float> splat (float -1.000000e+00)
  %i.gh = and <8 x i1> %i.bx, %i.fr
  %i.gi = select <8 x i1> %i.gh, <8 x float> %i.ga, <8 x float> splat (float -1.000000e+00)
  %i.gj = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gc) ; 2 uses
  %i.gk = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ge) ; 2 uses
  %i.gl = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gg) ; 2 uses
  %i.gm = tail call <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gi) ; 2 uses
  %i.gn = fsub fast <8 x float> %i.ai, %i.ar      ; 2 uses
  %i.go = fsub fast <8 x float> %i.aq, %i.as      ; 2 uses
  %i.gp = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gq = shufflevector <8 x float> %i.gn, <8 x float> %i.go, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gr = shufflevector <8 x i32> %i.db, <8 x i32> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gs = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gt = shufflevector <8 x i32> %i.db, <8 x i32> %i.dc, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gu = bitcast <8 x i32> %i.gt to <8 x float>
  %i.gv = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gw = shufflevector <8 x i32> %i.dd, <8 x i32> %i.de, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gx = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.gy = shufflevector <8 x i32> %i.ed, <8 x i32> %i.ee, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gz = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hc = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hd = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.he = shufflevector <8 x i32> %i.fi, <8 x i32> %i.fj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hg = shufflevector <8 x i32> %i.gj, <8 x i32> %i.gk, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hh = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.hi = bitcast <8 x i32> %i.hh to <8 x float>
  %i.hj = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.hk = bitcast <8 x i32> %i.hj to <8 x float>
  %i.hl = shufflevector <8 x float> %i.gp, <8 x float> %i.gs, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hm = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.hn = bitcast <8 x i32> %i.hm to <8 x float>  ; 2 uses
  %i.ho = shufflevector <8 x i32> %i.gz, <8 x i32> %i.hb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hp = shufflevector <8 x i32> %i.hd, <8 x i32> %i.hf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hq = shufflevector <8 x float> %i.hi, <8 x float> %i.gp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.hr = shufflevector <8 x i32> %i.gr, <8 x i32> %i.gv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hs = bitcast <8 x i32> %i.hr to <8 x float>  ; 2 uses
  %i.ht = shufflevector <8 x i32> %i.gx, <8 x i32> %i.gz, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hu = shufflevector <8 x i32> %i.hb, <8 x i32> %i.hd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.hv = shufflevector <8 x i32> %i.hf, <8 x i32> %i.hh, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.hw = bitcast <8 x i32> %i.hv to <8 x float>  ; 2 uses
  %i.hx = shufflevector <8 x float> %i.gq, <8 x float> %i.gu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hy = shufflevector <8 x i32> %i.gw, <8 x i32> %i.gy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.hz = shufflevector <8 x i32> %i.ha, <8 x i32> %i.hc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.ia = shufflevector <8 x i32> %i.he, <8 x i32> %i.hg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.ib = bitcast <8 x i32> %i.ia to <8 x float>  ; 2 uses
  %i.ic = shufflevector <8 x float> %i.hk, <8 x float> %i.gq, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15> ; 2 uses
  %i.id = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gw, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.ie = shufflevector <8 x i32> %i.gy, <8 x i32> %i.ha, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.if = shufflevector <8 x i32> %i.hc, <8 x i32> %i.he, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
end_hunk_11
