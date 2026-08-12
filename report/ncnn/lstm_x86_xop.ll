inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined:bb.a
  %i.hc = sext <8 x i8> %i.gu to <8 x i16>
  %i.hd = sext <8 x i8> %i.gw to <8 x i16>
  %i.he = sext <8 x i8> %i.gy to <8 x i16>
  %i.hf = sext <8 x i8> %i.ha to <8 x i16>
  %i.hg = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.hc, <8 x i16> %i.hb, <4 x i32> %i.go) ; 2 uses
  %i.hh = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.hd, <8 x i16> %i.hb, <4 x i32> %i.gp) ; 2 uses
  %i.hi = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.he, <8 x i16> %i.hb, <4 x i32> %i.gq) ; 2 uses
  %i.hj = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.hf, <8 x i16> %i.hb, <4 x i32> %i.gr) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.4290, i64 32 ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 8 ; 2 uses
  %i.hl = or disjoint i64 %indvars.iv.next365, 7
  %i.hm = icmp samesign ult i64 %i.hl, %i.fp
  br i1 %i.hm, label %.lr.ph291, label %._crit_edge292.loopexit, !llvm.loop !63

._crit_edge292.loopexit:                          ; preds = %.lr.ph291
  %i.hn = add nuw i32 %i.fn, 2147483640
  %i.ho = and i32 %i.hn, 2147483640
  %narrow385 = add nuw i32 %i.ho, 8
  br label %._crit_edge292

._crit_edge292:                                   ; preds = %._crit_edge292.loopexit, %.preheader242
  %.lcssa255 = phi <4 x i32> [ zeroinitializer, %.preheader242 ], [ %i.hj, %._crit_edge292.loopexit ] ; 2 uses
  %.lcssa254 = phi <4 x i32> [ zeroinitializer, %.preheader242 ], [ %i.hi, %._crit_edge292.loopexit ] ; 2 uses
  %.lcssa253 = phi <4 x i32> [ zeroinitializer, %.preheader242 ], [ %i.hh, %._crit_edge292.loopexit ] ; 2 uses
  %.lcssa252 = phi <4 x i32> [ zeroinitializer, %.preheader242 ], [ %i.hg, %._crit_edge292.loopexit ] ; 2 uses
  %.4118.lcssa = phi i32 [ 0, %.preheader242 ], [ %narrow385, %._crit_edge292.loopexit ] ; 3 uses
  %.4.lcssa = phi ptr [ %.3.lcssa, %.preheader242 ], [ %i.hk, %._crit_edge292.loopexit ] ; 2 uses
  %i.hp = shufflevector <4 x i32> %.lcssa252, <4 x i32> %.lcssa253, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hq = bitcast <4 x i32> %i.hp to <2 x i64>    ; 2 uses
  %i.hr = shufflevector <4 x i32> %.lcssa252, <4 x i32> %.lcssa253, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.hs = bitcast <4 x i32> %i.hr to <2 x i64>    ; 2 uses
  %i.ht = shufflevector <4 x i32> %.lcssa254, <4 x i32> %.lcssa255, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.hu = bitcast <4 x i32> %i.ht to <2 x i64>    ; 2 uses
  %i.hv = shufflevector <4 x i32> %.lcssa254, <4 x i32> %.lcssa255, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.hw = bitcast <4 x i32> %i.hv to <2 x i64>    ; 2 uses
  %i.hx = shufflevector <2 x i64> %i.hq, <2 x i64> %i.hu, <2 x i32> <i32 0, i32 2>
  %i.hy = shufflevector <2 x i64> %i.hq, <2 x i64> %i.hu, <2 x i32> <i32 1, i32 3>
  %i.hz = shufflevector <2 x i64> %i.hs, <2 x i64> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.ia = shufflevector <2 x i64> %i.hs, <2 x i64> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.ib = bitcast <2 x i64> %i.hx to <4 x i32>
  %i.ic = bitcast <2 x i64> %i.hy to <4 x i32>
  %i.id = add <4 x i32> %i.ib, %i.ic
  %i.ie = bitcast <2 x i64> %i.hz to <4 x i32>
  %i.if = add <4 x i32> %i.id, %i.ie
  %i.ig = bitcast <2 x i64> %i.ia to <4 x i32>
  %i.ih = add <4 x i32> %i.if, %i.ig
  %i.ii = or disjoint i32 %.4118.lcssa, 3
  %i.ij = icmp slt i32 %i.ii, %i.fn
  br i1 %i.ij, label %.lr.ph303.preheader, label %._crit_edge304

.lr.ph303.preheader:                              ; preds = %._crit_edge292
  %i.ik = zext nneg i32 %.4118.lcssa to i64
  br label %.lr.ph303

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %.lr.ph303
  %indvars.iv367 = phi i64 [ %i.ik, %.lr.ph303.preheader ], [ %indvars.iv.next368, %.lr.ph303 ] ; 2 uses
  %.5301 = phi ptr [ %.4.lcssa, %.lr.ph303.preheader ], [ %i.ja, %.lr.ph303 ] ; 3 uses
  %i.il = phi <4 x i32> [ zeroinitializer, %.lr.ph303.preheader ], [ %i.iy, %.lr.ph303 ]
  %i.im = phi <4 x i32> [ zeroinitializer, %.lr.ph303.preheader ], [ %i.iz, %.lr.ph303 ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv367
  %i.io = load float, ptr %i.in, align 1, !tbaa !29
  %i.ip = insertelement <4 x float> poison, float %i.io, i64 0
  %i.iq = load <8 x i8>, ptr %.5301, align 1, !tbaa !29
  %i.ir = getelementptr inbounds nuw i8, ptr %.5301, i64 8
  %i.is = load <8 x i8>, ptr %i.ir, align 1, !tbaa !29
  %i.it = bitcast <4 x float> %i.ip to <16 x i8>
  %i.iu = shufflevector <16 x i8> %i.it, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.iv = sext <8 x i8> %i.iu to <8 x i16>        ; 2 uses
  %i.iw = sext <8 x i8> %i.iq to <8 x i16>
  %i.ix = sext <8 x i8> %i.is to <8 x i16>
  %i.iy = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.iw, <8 x i16> %i.iv, <4 x i32> %i.il) ; 2 uses
  %i.iz = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ix, <8 x i16> %i.iv, <4 x i32> %i.im) ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.5301, i64 16 ; 2 uses
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 4 ; 3 uses
  %i.jb = trunc i64 %indvars.iv.next368 to i32
  %i.jc = or i32 %i.jb, 3
  %i.jd = icmp slt i32 %i.jc, %i.fn
  br i1 %i.jd, label %.lr.ph303, label %._crit_edge304.loopexit, !llvm.loop !64

._crit_edge304.loopexit:                          ; preds = %.lr.ph303
  %i.je = trunc nuw i64 %indvars.iv.next368 to i32
  br label %._crit_edge304

._crit_edge304:                                   ; preds = %._crit_edge304.loopexit, %._crit_edge292
  %.lcssa257 = phi <4 x i32> [ zeroinitializer, %._crit_edge292 ], [ %i.iz, %._crit_edge304.loopexit ]
  %.lcssa256 = phi <4 x i32> [ zeroinitializer, %._crit_edge292 ], [ %i.iy, %._crit_edge304.loopexit ]
  %.5119.lcssa = phi i32 [ %.4118.lcssa, %._crit_edge292 ], [ %i.je, %._crit_edge304.loopexit ] ; 3 uses
  %.5.lcssa = phi ptr [ %.4.lcssa, %._crit_edge292 ], [ %i.ja, %._crit_edge304.loopexit ] ; 2 uses
  %i.jf = call <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32> %.lcssa256, <4 x i32> %.lcssa257)
  %i.jg = add <4 x i32> %i.ih, %i.jf              ; 2 uses
  %i.jh = or disjoint i32 %.5119.lcssa, 1
  %i.ji = icmp slt i32 %i.jh, %i.fn
  br i1 %i.ji, label %.lr.ph313.preheader, label %.preheader

.lr.ph313.preheader:                              ; preds = %._crit_edge304
  %i.jj = zext i32 %.5119.lcssa to i64
  br label %.lr.ph313

.preheader.loopexit:                              ; preds = %.lr.ph313
  %i.jk = trunc nuw i64 %indvars.iv.next371 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge304
  %.0240.in.lcssa = phi <4 x i32> [ %i.jg, %._crit_edge304 ], [ %i.kh, %.preheader.loopexit ] ; 3 uses
  %.6120.lcssa = phi i32 [ %.5119.lcssa, %._crit_edge304 ], [ %i.jk, %.preheader.loopexit ] ; 4 uses
  %.6.lcssa = phi ptr [ %.5.lcssa, %._crit_edge304 ], [ %i.ki, %.preheader.loopexit ] ; 3 uses
  %i.jl = icmp slt i32 %.6120.lcssa, %i.fn
  br i1 %i.jl, label %.lr.ph319.preheader, label %._crit_edge320

.lr.ph319.preheader:                              ; preds = %.preheader
  %i.jm = zext i32 %.6120.lcssa to i64            ; 3 uses
  %i.jn = sub i32 %i.fn, %.6120.lcssa
  %.neg455 = add i32 %.6120.lcssa, 1
  %xtraiter452 = and i32 %i.jn, 1
  %lcmp.mod453.not = icmp eq i32 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph319.prol.loopexit, label %.lr.ph319.prol

.lr.ph319.prol:                                   ; preds = %.lr.ph319.preheader
  %i.jo = load <8 x i8>, ptr %.6.lcssa, align 1, !tbaa !29
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.jm
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.jr = sext i8 %i.jq to i16
  %i.js = insertelement <8 x i16> poison, i16 %i.jr, i64 0
  %i.jt = shufflevector <8 x i16> %i.js, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ju = shufflevector <8 x i8> %i.jo, <8 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.jv = sext <8 x i8> %i.ju to <8 x i16>
  %i.jw = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.jv, <8 x i16> %i.jt, <4 x i32> %.0240.in.lcssa) ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.6.lcssa, i64 4
  %indvars.iv.next374.prol = add nuw nsw i64 %i.jm, 1
  br label %.lr.ph319.prol.loopexit

.lr.ph319.prol.loopexit:                          ; preds = %.lr.ph319.prol, %.lr.ph319.preheader
  %indvars.iv373.unr = phi i64 [ %i.jm, %.lr.ph319.preheader ], [ %indvars.iv.next374.prol, %.lr.ph319.prol ]
  %.7318.unr = phi ptr [ %.6.lcssa, %.lr.ph319.preheader ], [ %i.jx, %.lr.ph319.prol ]
  %.unr454 = phi <4 x i32> [ %.0240.in.lcssa, %.lr.ph319.preheader ], [ %i.jw, %.lr.ph319.prol ]
  %.lcssa451.unr = phi <4 x i32> [ poison, %.lr.ph319.preheader ], [ %i.jw, %.lr.ph319.prol ]
  %i.jy = icmp eq i32 %i.fn, %.neg455
  br i1 %i.jy, label %._crit_edge320, label %.lr.ph319

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %indvars.iv370 = phi i64 [ %i.jj, %.lr.ph313.preheader ], [ %indvars.iv.next371, %.lr.ph313 ] ; 2 uses
  %.6311 = phi ptr [ %.5.lcssa, %.lr.ph313.preheader ], [ %i.ki, %.lr.ph313 ] ; 2 uses
  %.0240.in309 = phi <4 x i32> [ %i.jg, %.lr.ph313.preheader ], [ %i.kh, %.lr.ph313 ]
  %i.jz = load <8 x i8>, ptr %.6311, align 1, !tbaa !29
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv370
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !59
  %i.kc = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %i.kd = sext <8 x i8> %i.jz to <8 x i16>
  %i.ke = bitcast <8 x i16> %i.kc to <16 x i8>
  %i.kf = shufflevector <16 x i8> %i.ke, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.kg = sext <8 x i8> %i.kf to <8 x i16>
  %i.kh = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.kd, <8 x i16> %i.kg, <4 x i32> %.0240.in309) ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.6311, i64 8 ; 2 uses
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 2 ; 3 uses
  %i.kj = trunc i64 %indvars.iv.next371 to i32
  %i.kk = or i32 %i.kj, 1
  %i.kl = icmp slt i32 %i.kk, %i.fn
  br i1 %i.kl, label %.lr.ph313, label %.preheader.loopexit, !llvm.loop !65

.lr.ph319:                                        ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319
  %indvars.iv373 = phi i64 [ %indvars.iv.next374.1, %.lr.ph319 ], [ %indvars.iv373.unr, %.lr.ph319.prol.loopexit ] ; 3 uses
  %.7318 = phi ptr [ %i.lh, %.lr.ph319 ], [ %.7318.unr, %.lr.ph319.prol.loopexit ] ; 3 uses
  %i.km = phi <4 x i32> [ %i.lg, %.lr.ph319 ], [ %.unr454, %.lr.ph319.prol.loopexit ]
  %i.kn = load <8 x i8>, ptr %.7318, align 1, !tbaa !29
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv373
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !29
  %i.kq = sext i8 %i.kp to i16
  %i.kr = insertelement <8 x i16> poison, i16 %i.kq, i64 0
  %i.ks = shufflevector <8 x i16> %i.kr, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.kt = shufflevector <8 x i8> %i.kn, <8 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ku = sext <8 x i8> %i.kt to <8 x i16>
  %i.kv = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ku, <8 x i16> %i.ks, <4 x i32> %i.km)
  %i.kw = getelementptr inbounds nuw i8, ptr %.7318, i64 4
  %i.kx = load <8 x i8>, ptr %i.kw, align 1, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv373
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !29
  %i.lb = sext i8 %i.la to i16
  %i.lc = insertelement <8 x i16> poison, i16 %i.lb, i64 0
  %i.ld = shufflevector <8 x i16> %i.lc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.le = shufflevector <8 x i8> %i.kx, <8 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.lf = sext <8 x i8> %i.le to <8 x i16>
  %i.lg = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.lf, <8 x i16> %i.ld, <4 x i32> %i.kv) ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.7318, i64 8
  %indvars.iv.next374.1 = add nuw nsw i64 %indvars.iv373, 2 ; 2 uses
  %i.li = trunc nuw i64 %indvars.iv.next374.1 to i32
  %i.lj = icmp sgt i32 %i.fn, %i.li
  br i1 %i.lj, label %.lr.ph319, label %._crit_edge320, !llvm.loop !66

._crit_edge320:                                   ; preds = %.lr.ph319.prol.loopexit, %.lr.ph319, %.preheader
  %.lcssa258 = phi <4 x i32> [ %.0240.in.lcssa, %.preheader ], [ %.lcssa451.unr, %.lr.ph319.prol.loopexit ], [ %i.lg, %.lr.ph319 ]
  %i.lk = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = insertelement <4 x float> poison, float %i.al, i64 0
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lo = load <4 x float>, ptr %i.ap, align 1, !tbaa !29
  %i.lp = load <4 x float>, ptr %i.be, align 1, !tbaa !29
  %i.lq = sitofp fast <4 x i32> %.lcssa250 to <4 x float>
  %i.lr = fmul fast <4 x float> %i.ll, %i.lq
  %i.ls = fmul fast <4 x float> %i.lr, %i.lp
  %i.lt = fadd fast <4 x float> %i.lo, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.lv = load <4 x float>, ptr %i.lu, align 1, !tbaa !29
  %i.lw = sitofp fast <4 x i32> %.lcssa258 to <4 x float>
  %i.lx = fmul fast <4 x float> %i.ln, %i.lw
  %i.ly = fmul fast <4 x float> %i.lx, %i.lv
  %i.lz = fadd fast <4 x float> %i.ly, %i.lt
  store <4 x float> %i.lz, ptr %i.bl, align 1, !tbaa !29
  %i.ma = add nuw i32 %.0322, 1
  %exitcond.not = icmp eq i32 %.0322, %i.l
  br i1 %exitcond.not, label %._crit_edge325, label %bb.c

._crit_edge325:                                   ; preds = %._crit_edge320, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge325, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4u(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !67 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !15
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !15
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %.not303 = icmp sgt i32 %i.k, %i.j
  br i1 %.not303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0304 = phi i32 [ %i.k, %.lr.ph ], [ %i.hi, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !15
  %i.o = shl nsw i32 %.0304, 3
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !25
  %i.r = load i32, ptr %i.l, align 4, !tbaa !9
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !53
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 4 uses
  %i.y = load <8 x float>, ptr %i.x, align 1, !tbaa !29 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.aa = load <8 x float>, ptr %i.z, align 1, !tbaa !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load <8 x float>, ptr %i.ab, align 1, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ae = load <8 x float>, ptr %i.ad, align 1, !tbaa !29 ; 2 uses
  %i.af = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ag = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ah = shufflevector <8 x float> %i.y, <8 x float> %i.ac, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ai = shufflevector <8 x float> %i.aa, <8 x float> %i.ae, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ak = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.al = shufflevector <8 x float> %i.af, <8 x float> %i.ag, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.am = shufflevector <8 x float> %i.ah, <8 x float> %i.ai, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.an = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.ao = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ap = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.aq = shufflevector <8 x float> %i.al, <8 x float> %i.am, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.ar = fneg fast <8 x float> %i.an
  %i.as = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ar, <8 x float> splat (float f0x42B0C0A5))
  %i.at = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.as, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.au = fmul fast <8 x float> %i.at, splat (float f0x3FB8AA3B)
  %i.av = fadd fast <8 x float> %i.au, splat (float 5.000000e-01) ; 2 uses
  %i.aw = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.av, i32 1) ; 2 uses
  %i.ax = fcmp fast ogt <8 x float> %i.aw, %i.av
  %i.ay = select <8 x i1> %i.ax, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.az = fsub fast <8 x float> %i.aw, %i.ay      ; 2 uses
  %i.ba = fmul fast <8 x float> %i.az, splat (float f0x3F317218)
  %i.bb = fsub fast <8 x float> %i.at, %i.ba      ; 8 uses
  %i.bc = fmul fast <8 x float> %i.bb, %i.bb
  %i.bd = fmul fast <8 x float> %i.bb, splat (float f0x39506967)
  %i.be = fadd fast <8 x float> %i.bd, splat (float f0x3AB743CE)
  %i.bf = fmul fast <8 x float> %i.be, %i.bb
  %i.bg = fadd fast <8 x float> %i.bf, splat (float f0x3C088908)
  %i.bh = fmul fast <8 x float> %i.bg, %i.bb
  %i.bi = fadd fast <8 x float> %i.bh, splat (float f0x3D2AA9C1)
  %i.bj = fmul fast <8 x float> %i.bi, %i.bb
  %i.bk = fadd fast <8 x float> %i.bj, splat (float f0x3E2AAAAA)
  %i.bl = fmul fast <8 x float> %i.bk, %i.bb
  %i.bm = fadd fast <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bn = fmul fast <8 x float> %i.bc, %i.bm
  %i.bo = fadd fast <8 x float> %i.bb, %i.bn
  %i.bp = fadd fast <8 x float> %i.bo, splat (float 1.000000e+00)
  %i.bq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.az)
  %i.br = shl <8 x i32> %i.bq, splat (i32 23)
  %i.bs = add <8 x i32> %i.br, splat (i32 1065353216)
  %i.bt = bitcast <8 x i32> %i.bs to <8 x float>
  %i.bu = fmul fast <8 x float> %i.bp, %i.bt
  %i.bv = fadd fast <8 x float> %i.bu, splat (float 1.000000e+00)
  %i.bw = fneg fast <8 x float> %i.ao
  %i.bx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.bw, <8 x float> splat (float f0x42B0C0A5))
  %i.by = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.bx, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bz = fmul fast <8 x float> %i.by, splat (float f0x3FB8AA3B)
  %i.ca = fadd fast <8 x float> %i.bz, splat (float 5.000000e-01) ; 2 uses
  %i.cb = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ca, i32 1) ; 2 uses
  %i.cc = fcmp fast ogt <8 x float> %i.cb, %i.ca
  %i.cd = select <8 x i1> %i.cc, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ce = fsub fast <8 x float> %i.cb, %i.cd      ; 2 uses
  %i.cf = fmul fast <8 x float> %i.ce, splat (float f0x3F317218)
  %i.cg = fsub fast <8 x float> %i.by, %i.cf      ; 8 uses
  %i.ch = fmul fast <8 x float> %i.cg, %i.cg
  %i.ci = fmul fast <8 x float> %i.cg, splat (float f0x39506967)
  %i.cj = fadd fast <8 x float> %i.ci, splat (float f0x3AB743CE)
  %i.ck = fmul fast <8 x float> %i.cj, %i.cg
  %i.cl = fadd fast <8 x float> %i.ck, splat (float f0x3C088908)
  %i.cm = fmul fast <8 x float> %i.cl, %i.cg
  %i.cn = fadd fast <8 x float> %i.cm, splat (float f0x3D2AA9C1)
  %i.co = fmul fast <8 x float> %i.cn, %i.cg
  %i.cp = fadd fast <8 x float> %i.co, splat (float f0x3E2AAAAA)
  %i.cq = fmul fast <8 x float> %i.cp, %i.cg
  %i.cr = fadd fast <8 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = fmul fast <8 x float> %i.ch, %i.cr
  %i.ct = fadd fast <8 x float> %i.cg, %i.cs
  %i.cu = fadd fast <8 x float> %i.ct, splat (float 1.000000e+00)
  %i.cv = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ce)
  %i.cw = shl <8 x i32> %i.cv, splat (i32 23)
  %i.cx = add <8 x i32> %i.cw, splat (i32 1065353216)
  %i.cy = bitcast <8 x i32> %i.cx to <8 x float>
  %i.cz = fmul fast <8 x float> %i.cu, %i.cy
  %i.da = fadd fast <8 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = fneg fast <8 x float> %i.ap
  %i.dc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.db, <8 x float> splat (float f0x42B0C0A5))
  %i.dd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dc, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.de = fmul fast <8 x float> %i.dd, splat (float f0x3FB8AA3B)
  %i.df = fadd fast <8 x float> %i.de, splat (float 5.000000e-01) ; 2 uses
  %i.dg = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.df, i32 1) ; 2 uses
  %i.dh = fcmp fast ogt <8 x float> %i.dg, %i.df
  %i.di = select <8 x i1> %i.dh, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.dj = fsub fast <8 x float> %i.dg, %i.di      ; 2 uses
  %i.dk = fmul fast <8 x float> %i.dj, splat (float f0x3F317218)
  %i.dl = fsub fast <8 x float> %i.dd, %i.dk      ; 8 uses
  %i.dm = fmul fast <8 x float> %i.dl, %i.dl
  %i.dn = fmul fast <8 x float> %i.dl, splat (float f0x39506967)
  %i.do = fadd fast <8 x float> %i.dn, splat (float f0x3AB743CE)
  %i.dp = fmul fast <8 x float> %i.do, %i.dl
  %i.dq = fadd fast <8 x float> %i.dp, splat (float f0x3C088908)
  %i.dr = fmul fast <8 x float> %i.dq, %i.dl
  %i.ds = fadd fast <8 x float> %i.dr, splat (float f0x3D2AA9C1)
  %i.dt = fmul fast <8 x float> %i.ds, %i.dl
  %i.du = fadd fast <8 x float> %i.dt, splat (float f0x3E2AAAAA)
  %i.dv = fmul fast <8 x float> %i.du, %i.dl
  %i.dw = fadd fast <8 x float> %i.dv, splat (float 5.000000e-01)
  %i.dx = fmul fast <8 x float> %i.dm, %i.dw
  %i.dy = fadd fast <8 x float> %i.dl, %i.dx
  %i.dz = fadd fast <8 x float> %i.dy, splat (float 1.000000e+00)
  %i.ea = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.dj)
  %i.eb = shl <8 x i32> %i.ea, splat (i32 23)
  %i.ec = add <8 x i32> %i.eb, splat (i32 1065353216)
  %i.ed = bitcast <8 x i32> %i.ec to <8 x float>
  %i.ee = fmul fast <8 x float> %i.dz, %i.ed
  %i.ef = fadd fast <8 x float> %i.ee, splat (float 1.000000e+00)
  %i.eg = fmul fast <8 x float> %i.aq, splat (float -2.000000e+00)
  %i.eh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.eg, <8 x float> splat (float f0x42B0C0A5))
  %i.ei = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.eh, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ej = fmul fast <8 x float> %i.ei, splat (float f0x3FB8AA3B)
  %i.ek = fadd fast <8 x float> %i.ej, splat (float 5.000000e-01) ; 2 uses
  %i.el = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ek, i32 1) ; 2 uses
  %i.em = fcmp fast ogt <8 x float> %i.el, %i.ek
  %i.en = select <8 x i1> %i.em, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.eo = fsub fast <8 x float> %i.el, %i.en      ; 2 uses
  %i.ep = fmul fast <8 x float> %i.eo, splat (float f0x3F317218)
  %i.eq = fsub fast <8 x float> %i.ei, %i.ep      ; 8 uses
  %i.er = fmul fast <8 x float> %i.eq, %i.eq
  %i.es = fmul fast <8 x float> %i.eq, splat (float f0x39506967)
  %i.et = fadd fast <8 x float> %i.es, splat (float f0x3AB743CE)
  %i.eu = fmul fast <8 x float> %i.et, %i.eq
  %i.ev = fadd fast <8 x float> %i.eu, splat (float f0x3C088908)
  %i.ew = fmul fast <8 x float> %i.ev, %i.eq
  %i.ex = fadd fast <8 x float> %i.ew, splat (float f0x3D2AA9C1)
  %i.ey = fmul fast <8 x float> %i.ex, %i.eq
  %i.ez = fadd fast <8 x float> %i.ey, splat (float f0x3E2AAAAA)
  %i.fa = fmul fast <8 x float> %i.ez, %i.eq
  %i.fb = fadd fast <8 x float> %i.fa, splat (float 5.000000e-01)
  %i.fc = fmul fast <8 x float> %i.er, %i.fb
  %i.fd = fadd fast <8 x float> %i.eq, %i.fc
  %i.fe = fadd fast <8 x float> %i.fd, splat (float 1.000000e+00)
  %i.ff = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.eo)
  %i.fg = shl <8 x i32> %i.ff, splat (i32 23)
  %i.fh = add <8 x i32> %i.fg, splat (i32 1065353216)
  %i.fi = bitcast <8 x i32> %i.fh to <8 x float>
  %i.fj = fmul fast <8 x float> %i.fe, %i.fi
  %i.fk = fadd fast <8 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fdiv fast <8 x float> splat (float 2.000000e+00), %i.fk
  %i.fm = fadd fast <8 x float> %i.fl, splat (float -1.000000e+00)
  %i.fn = load ptr, ptr %5, align 8, !tbaa !54
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.t ; 2 uses
  %i.fp = load <8 x float>, ptr %i.fo, align 1, !tbaa !29
  %i.fq = fdiv fast <8 x float> %i.fp, %i.da
  %i.fr = fdiv fast <8 x float> %i.fm, %i.bv
  %i.fs = fadd fast <8 x float> %i.fr, %i.fq      ; 2 uses
  %i.ft = fmul fast <8 x float> %i.fs, splat (float -2.000000e+00)
  %i.fu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ft, <8 x float> splat (float f0x42B0C0A5))
  %i.fv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.fu, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fw = fmul fast <8 x float> %i.fv, splat (float f0x3FB8AA3B)
  %i.fx = fadd fast <8 x float> %i.fw, splat (float 5.000000e-01) ; 2 uses
  %i.fy = call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.fx, i32 1) ; 2 uses
  %i.fz = fcmp fast ogt <8 x float> %i.fy, %i.fx
  %i.ga = select <8 x i1> %i.fz, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gb = fsub fast <8 x float> %i.fy, %i.ga      ; 2 uses
  %i.gc = fmul fast <8 x float> %i.gb, splat (float f0x3F317218)
  %i.gd = fsub fast <8 x float> %i.fv, %i.gc      ; 8 uses
  %i.ge = fmul fast <8 x float> %i.gd, %i.gd
  %i.gf = fmul fast <8 x float> %i.gd, splat (float f0x39506967)
  %i.gg = fadd fast <8 x float> %i.gf, splat (float f0x3AB743CE)
  %i.gh = fmul fast <8 x float> %i.gg, %i.gd
  %i.gi = fadd fast <8 x float> %i.gh, splat (float f0x3C088908)
  %i.gj = fmul fast <8 x float> %i.gi, %i.gd
  %i.gk = fadd fast <8 x float> %i.gj, splat (float f0x3D2AA9C1)
  %i.gl = fmul fast <8 x float> %i.gk, %i.gd
  %i.gm = fadd fast <8 x float> %i.gl, splat (float f0x3E2AAAAA)
  %i.gn = fmul fast <8 x float> %i.gm, %i.gd
  %i.go = fadd fast <8 x float> %i.gn, splat (float 5.000000e-01)
  %i.gp = fmul fast <8 x float> %i.ge, %i.go
  %i.gq = fadd fast <8 x float> %i.gd, %i.gp
  %i.gr = fadd fast <8 x float> %i.gq, splat (float 1.000000e+00)
  %i.gs = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gb)
  %i.gt = shl <8 x i32> %i.gs, splat (i32 23)
  %i.gu = add <8 x i32> %i.gt, splat (i32 1065353216)
  %i.gv = bitcast <8 x i32> %i.gu to <8 x float>
  %i.gw = fmul fast <8 x float> %i.gr, %i.gv
  %i.gx = fadd fast <8 x float> %i.gw, splat (float 1.000000e+00)
  %i.gy = fdiv fast <8 x float> splat (float 2.000000e+00), %i.gx
  %i.gz = fadd fast <8 x float> %i.gy, splat (float -1.000000e+00)
  %i.ha = fdiv fast <8 x float> %i.gz, %i.ef      ; 2 uses
  store <8 x float> %i.fs, ptr %i.fo, align 1, !tbaa !29
  %i.hb = load i32, ptr %6, align 4, !tbaa !15
  %i.hc = load i32, ptr %7, align 4, !tbaa !15
  %i.hd = icmp eq i32 %i.hb, %i.hc
  br i1 %i.hd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.he = load ptr, ptr %8, align 8, !tbaa !54
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.t
  store <8 x float> %i.ha, ptr %i.hf, align 1, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.hg = load ptr, ptr %.sink, align 8, !tbaa !54
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.t
  store <8 x float> %i.ha, ptr %i.hh, align 1, !tbaa !29
  %i.hi = add i32 %.0304, 1
  %exitcond.not = icmp eq i32 %.0304, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !15
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !15
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %.not188 = icmp sgt i32 %i.k, %i.j
  br i1 %.not188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.0189 = phi i32 [ %i.k, %.lr.ph ], [ %i.hj, %bb.e ] ; 3 uses
  %i.n = load i32, ptr %3, align 4, !tbaa !15
  %i.o = shl nsw i32 %.0189, 2
  %i.p = add nsw i32 %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !25
  %i.r = load i32, ptr %i.l, align 4, !tbaa !9
  %i.s = sext i32 %i.r to i64
  %i.t = sext i32 %i.p to i64                     ; 4 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = load i64, ptr %i.m, align 8, !tbaa !53
  %i.w = mul i64 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.w ; 4 uses
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !29 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !tbaa !29 ; 2 uses
  %i.af = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ai = shufflevector <4 x float> %i.ac, <4 x float> %i.ae, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.aj = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ak = shufflevector <4 x float> %i.ag, <4 x float> %i.af, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.al = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.am = shufflevector <4 x float> %i.ai, <4 x float> %i.ah, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.an = fneg fast <4 x float> %i.aj
  %i.ao = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.an, <4 x float> splat (float f0x42B0C0A5))
  %i.ap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ao, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.aq = fmul fast <4 x float> %i.ap, splat (float f0x3FB8AA3B)
  %i.ar = fadd fast <4 x float> %i.aq, splat (float 5.000000e-01) ; 2 uses
  %i.as = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ar)
  %i.at = sitofp fast <4 x i32> %i.as to <4 x float> ; 2 uses
  %i.au = fcmp fast olt <4 x float> %i.ar, %i.at
  %i.av = select <4 x i1> %i.au, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.aw = fsub fast <4 x float> %i.at, %i.av      ; 2 uses
  %i.ax = fmul fast <4 x float> %i.aw, splat (float f0x3F317218)
  %i.ay = fsub fast <4 x float> %i.ap, %i.ax      ; 8 uses
  %i.az = fmul fast <4 x float> %i.ay, %i.ay
  %i.ba = fmul fast <4 x float> %i.ay, splat (float f0x39506967)
  %i.bb = fadd fast <4 x float> %i.ba, splat (float f0x3AB743CE)
  %i.bc = fmul fast <4 x float> %i.bb, %i.ay
  %i.bd = fadd fast <4 x float> %i.bc, splat (float f0x3C088908)
  %i.be = fmul fast <4 x float> %i.bd, %i.ay
  %i.bf = fadd fast <4 x float> %i.be, splat (float f0x3D2AA9C1)
  %i.bg = fmul fast <4 x float> %i.bf, %i.ay
  %i.bh = fadd fast <4 x float> %i.bg, splat (float f0x3E2AAAAA)
  %i.bi = fmul fast <4 x float> %i.bh, %i.ay
  %i.bj = fadd fast <4 x float> %i.bi, splat (float 5.000000e-01)
  %i.bk = fmul fast <4 x float> %i.az, %i.bj
  %i.bl = fadd fast <4 x float> %i.ay, %i.bk
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.aw)
  %i.bo = shl <4 x i32> %i.bn, splat (i32 23)
  %i.bp = add <4 x i32> %i.bo, splat (i32 1065353216)
  %i.bq = bitcast <4 x i32> %i.bp to <4 x float>
  %i.br = fmul fast <4 x float> %i.bm, %i.bq
  %i.bs = fadd fast <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bt = fneg fast <4 x float> %i.ak
  %i.bu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.bt, <4 x float> splat (float f0x42B0C0A5))
  %i.bv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.bu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.bw = fmul fast <4 x float> %i.bv, splat (float f0x3FB8AA3B)
  %i.bx = fadd fast <4 x float> %i.bw, splat (float 5.000000e-01) ; 2 uses
  %i.by = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.bx)
  %i.bz = sitofp fast <4 x i32> %i.by to <4 x float> ; 2 uses
  %i.ca = fcmp fast olt <4 x float> %i.bx, %i.bz
  %i.cb = select <4 x i1> %i.ca, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.cc = fsub fast <4 x float> %i.bz, %i.cb      ; 2 uses
  %i.cd = fmul fast <4 x float> %i.cc, splat (float f0x3F317218)
  %i.ce = fsub fast <4 x float> %i.bv, %i.cd      ; 8 uses
  %i.cf = fmul fast <4 x float> %i.ce, %i.ce
  %i.cg = fmul fast <4 x float> %i.ce, splat (float f0x39506967)
  %i.ch = fadd fast <4 x float> %i.cg, splat (float f0x3AB743CE)
  %i.ci = fmul fast <4 x float> %i.ch, %i.ce
  %i.cj = fadd fast <4 x float> %i.ci, splat (float f0x3C088908)
  %i.ck = fmul fast <4 x float> %i.cj, %i.ce
  %i.cl = fadd fast <4 x float> %i.ck, splat (float f0x3D2AA9C1)
  %i.cm = fmul fast <4 x float> %i.cl, %i.ce
  %i.cn = fadd fast <4 x float> %i.cm, splat (float f0x3E2AAAAA)
  %i.co = fmul fast <4 x float> %i.cn, %i.ce
  %i.cp = fadd fast <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cq = fmul fast <4 x float> %i.cf, %i.cp
  %i.cr = fadd fast <4 x float> %i.ce, %i.cq
  %i.cs = fadd fast <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.cc)
  %i.cu = shl <4 x i32> %i.ct, splat (i32 23)
  %i.cv = add <4 x i32> %i.cu, splat (i32 1065353216)
  %i.cw = bitcast <4 x i32> %i.cv to <4 x float>
  %i.cx = fmul fast <4 x float> %i.cs, %i.cw
  %i.cy = fadd fast <4 x float> %i.cx, splat (float 1.000000e+00)
  %i.cz = fneg fast <4 x float> %i.al
  %i.da = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.cz, <4 x float> splat (float f0x42B0C0A5))
  %i.db = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.da, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.dc = fmul fast <4 x float> %i.db, splat (float f0x3FB8AA3B)
  %i.dd = fadd fast <4 x float> %i.dc, splat (float 5.000000e-01) ; 2 uses
  %i.de = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.dd)
  %i.df = sitofp fast <4 x i32> %i.de to <4 x float> ; 2 uses
  %i.dg = fcmp fast olt <4 x float> %i.dd, %i.df
  %i.dh = select <4 x i1> %i.dg, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.di = fsub fast <4 x float> %i.df, %i.dh      ; 2 uses
  %i.dj = fmul fast <4 x float> %i.di, splat (float f0x3F317218)
  %i.dk = fsub fast <4 x float> %i.db, %i.dj      ; 8 uses
  %i.dl = fmul fast <4 x float> %i.dk, %i.dk
  %i.dm = fmul fast <4 x float> %i.dk, splat (float f0x39506967)
  %i.dn = fadd fast <4 x float> %i.dm, splat (float f0x3AB743CE)
  %i.do = fmul fast <4 x float> %i.dn, %i.dk
  %i.dp = fadd fast <4 x float> %i.do, splat (float f0x3C088908)
  %i.dq = fmul fast <4 x float> %i.dp, %i.dk
  %i.dr = fadd fast <4 x float> %i.dq, splat (float f0x3D2AA9C1)
  %i.ds = fmul fast <4 x float> %i.dr, %i.dk
  %i.dt = fadd fast <4 x float> %i.ds, splat (float f0x3E2AAAAA)
  %i.du = fmul fast <4 x float> %i.dt, %i.dk
  %i.dv = fadd fast <4 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fmul fast <4 x float> %i.dl, %i.dv
  %i.dx = fadd fast <4 x float> %i.dk, %i.dw
  %i.dy = fadd fast <4 x float> %i.dx, splat (float 1.000000e+00)
  %i.dz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.di)
  %i.ea = shl <4 x i32> %i.dz, splat (i32 23)
  %i.eb = add <4 x i32> %i.ea, splat (i32 1065353216)
  %i.ec = bitcast <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.dy, %i.ec
  %i.ee = fadd fast <4 x float> %i.ed, splat (float 1.000000e+00)
  %i.ef = fmul fast <4 x float> %i.am, splat (float -2.000000e+00)
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> splat (float f0x42B0C0A5))
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eg, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ei = fmul fast <4 x float> %i.eh, splat (float f0x3FB8AA3B)
  %i.ej = fadd fast <4 x float> %i.ei, splat (float 5.000000e-01) ; 2 uses
  %i.ek = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ej)
  %i.el = sitofp fast <4 x i32> %i.ek to <4 x float> ; 2 uses
  %i.em = fcmp fast olt <4 x float> %i.ej, %i.el
  %i.en = select <4 x i1> %i.em, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.eo = fsub fast <4 x float> %i.el, %i.en      ; 2 uses
  %i.ep = fmul fast <4 x float> %i.eo, splat (float f0x3F317218)
  %i.eq = fsub fast <4 x float> %i.eh, %i.ep      ; 8 uses
  %i.er = fmul fast <4 x float> %i.eq, %i.eq
  %i.es = fmul fast <4 x float> %i.eq, splat (float f0x39506967)
  %i.et = fadd fast <4 x float> %i.es, splat (float f0x3AB743CE)
  %i.eu = fmul fast <4 x float> %i.et, %i.eq
  %i.ev = fadd fast <4 x float> %i.eu, splat (float f0x3C088908)
  %i.ew = fmul fast <4 x float> %i.ev, %i.eq
  %i.ex = fadd fast <4 x float> %i.ew, splat (float f0x3D2AA9C1)
  %i.ey = fmul fast <4 x float> %i.ex, %i.eq
  %i.ez = fadd fast <4 x float> %i.ey, splat (float f0x3E2AAAAA)
  %i.fa = fmul fast <4 x float> %i.ez, %i.eq
  %i.fb = fadd fast <4 x float> %i.fa, splat (float 5.000000e-01)
  %i.fc = fmul fast <4 x float> %i.er, %i.fb
  %i.fd = fadd fast <4 x float> %i.eq, %i.fc
  %i.fe = fadd fast <4 x float> %i.fd, splat (float 1.000000e+00)
  %i.ff = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.eo)
  %i.fg = shl <4 x i32> %i.ff, splat (i32 23)
  %i.fh = add <4 x i32> %i.fg, splat (i32 1065353216)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>
  %i.fj = fmul fast <4 x float> %i.fe, %i.fi
  %i.fk = fadd fast <4 x float> %i.fj, splat (float 1.000000e+00)
  %i.fl = fdiv fast <4 x float> splat (float 2.000000e+00), %i.fk
  %i.fm = fadd fast <4 x float> %i.fl, splat (float -1.000000e+00)
  %i.fn = load ptr, ptr %5, align 8, !tbaa !54
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.t ; 2 uses
  %i.fp = load <4 x float>, ptr %i.fo, align 1, !tbaa !29
  %i.fq = fdiv fast <4 x float> %i.fp, %i.cy
  %i.fr = fdiv fast <4 x float> %i.fm, %i.bs
  %i.fs = fadd fast <4 x float> %i.fr, %i.fq      ; 2 uses
  %i.ft = fmul fast <4 x float> %i.fs, splat (float -2.000000e+00)
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ft, <4 x float> splat (float f0x42B0C0A5))
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.fw = fmul fast <4 x float> %i.fv, splat (float f0x3FB8AA3B)
  %i.fx = fadd fast <4 x float> %i.fw, splat (float 5.000000e-01) ; 2 uses
  %i.fy = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fx)
  %i.fz = sitofp fast <4 x i32> %i.fy to <4 x float> ; 2 uses
  %i.ga = fcmp fast olt <4 x float> %i.fx, %i.fz
  %i.gb = select <4 x i1> %i.ga, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gc = fsub fast <4 x float> %i.fz, %i.gb      ; 2 uses
  %i.gd = fmul fast <4 x float> %i.gc, splat (float f0x3F317218)
  %i.ge = fsub fast <4 x float> %i.fv, %i.gd      ; 8 uses
  %i.gf = fmul fast <4 x float> %i.ge, %i.ge
  %i.gg = fmul fast <4 x float> %i.ge, splat (float f0x39506967)
  %i.gh = fadd fast <4 x float> %i.gg, splat (float f0x3AB743CE)
  %i.gi = fmul fast <4 x float> %i.gh, %i.ge
  %i.gj = fadd fast <4 x float> %i.gi, splat (float f0x3C088908)
  %i.gk = fmul fast <4 x float> %i.gj, %i.ge
  %i.gl = fadd fast <4 x float> %i.gk, splat (float f0x3D2AA9C1)
  %i.gm = fmul fast <4 x float> %i.gl, %i.ge
  %i.gn = fadd fast <4 x float> %i.gm, splat (float f0x3E2AAAAA)
  %i.go = fmul fast <4 x float> %i.gn, %i.ge
  %i.gp = fadd fast <4 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fmul fast <4 x float> %i.gf, %i.gp
  %i.gr = fadd fast <4 x float> %i.ge, %i.gq
  %i.gs = fadd fast <4 x float> %i.gr, splat (float 1.000000e+00)
  %i.gt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gc)
  %i.gu = shl <4 x i32> %i.gt, splat (i32 23)
  %i.gv = add <4 x i32> %i.gu, splat (i32 1065353216)
  %i.gw = bitcast <4 x i32> %i.gv to <4 x float>
  %i.gx = fmul fast <4 x float> %i.gs, %i.gw
  %i.gy = fadd fast <4 x float> %i.gx, splat (float 1.000000e+00)
  %i.gz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.gy
  %i.ha = fadd fast <4 x float> %i.gz, splat (float -1.000000e+00)
  %i.hb = fdiv fast <4 x float> %i.ha, %i.ee      ; 2 uses
  store <4 x float> %i.fs, ptr %i.fo, align 1, !tbaa !29
  %i.hc = load i32, ptr %6, align 4, !tbaa !15
  %i.hd = load i32, ptr %7, align 4, !tbaa !15
  %i.he = icmp eq i32 %i.hc, %i.hd
  br i1 %i.he, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.hf = load ptr, ptr %8, align 8, !tbaa !54
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.t
  store <4 x float> %i.hb, ptr %i.hg, align 1, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %9, %bb.d ], [ %10, %bb.c ]
  %i.hh = load ptr, ptr %.sink, align 8, !tbaa !54
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.t
  store <4 x float> %i.hb, ptr %i.hi, align 1, !tbaa !29
  %i.hj = add i32 %.0189, 1
  %exitcond.not = icmp eq i32 %.0189, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !15     ; 3 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.i, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.j = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !15
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !15
  %i.m = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !54
  %i.w = load i32, ptr %6, align 4, !tbaa !15
  %i.x = load i32, ptr %2, align 4, !tbaa !15
  %i.y = icmp eq i32 %i.w, %i.x
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.045 = phi i32 [ %i.m, %.lr.ph ], [ %i.bd, %bb.e ] ; 3 uses
  %i.z = add i32 %.045, %i.e
  %i.aa = sext i32 %i.z to i64                    ; 4 uses
  %.reass = mul i64 %factor.op.mul, %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !21
  %i.ag = fneg fast float %i.ac
  %i.ah = call fast float @llvm.exp.f32(float %i.ag)
  %i.ai = fadd fast float %i.ah, 1.000000e+00
  %i.aj = load <2 x float>, ptr %i.ad, align 4, !tbaa !21
  %i.ak = fneg fast <2 x float> %i.aj             ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = call fast float @llvm.exp.f32(float %i.al)
  %i.an = fadd fast float %i.am, 1.000000e+00
  %i.ao = extractelement <2 x float> %i.ak, i64 1
  %i.ap = call fast float @llvm.exp.f32(float %i.ao)
  %i.aq = fadd fast float %i.ap, 1.000000e+00
  %i.ar = call fast float @llvm.tanh.f32(float %i.af)
  %i.as = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aa ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !21
  %i.au = fdiv fast float %i.at, %i.an
  %i.av = fdiv fast float %i.ar, %i.ai
  %i.aw = fadd fast float %i.au, %i.av            ; 2 uses
  %i.ax = call fast float @llvm.tanh.f32(float %i.aw)
  %i.ay = fdiv fast float %i.ax, %i.aq            ; 2 uses
  store float %i.aw, ptr %i.as, align 4, !tbaa !21
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %7, align 8, !tbaa !54
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.aa
  store float %i.ay, ptr %i.ba, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %8, %bb.d ], [ %9, %bb.c ]
  %i.bb = load ptr, ptr %.sink, align 8, !tbaa !54
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aa
  store float %i.ay, ptr %i.bc, align 4, !tbaa !21
  %i.bd = add nuw i32 %.045, 1
  %exitcond.not = icmp eq i32 %.045, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL9lstm_int8ERKNS_3MatES2_RS0_iS2_S2_S2_S2_S3_S3_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !15     ; 10 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !15     ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = xor i32 %i.e, -1
  %i.i = add i32 %i.f, %i.h                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.i, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.j = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_4u(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !15
  %i.l = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.i) ; 8 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !15
  %i.m = load i32, ptr %i.a, align 4, !tbaa !15   ; 10 uses
  %i.n = add i32 %i.l, 1
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.b
  %i.p = load ptr, ptr %4, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53
  %factor.op.mul = mul i64 %i.u, %i.s
  %i.v = load ptr, ptr %5, align 8, !tbaa !25     ; 3 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !15     ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = load ptr, ptr %7, align 8, !tbaa !54     ; 7 uses
  %i.z = ptrtoaddr ptr %i.y to i64
end_hunk_0
