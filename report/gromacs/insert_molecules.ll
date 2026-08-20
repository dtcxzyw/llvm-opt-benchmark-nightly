inline.NumInlined: 1453
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL11insert_molsiiiffP7t_atomsP8t_symtabPSt6vectorIN3gmx11BasicVectorIfEESaIS6_EERKSt3setIiSt4lessIiESaIiEERKS_NS4_8ArrayRefIS6_EE7PbcTypePA3_fRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKf12RotationType:bb.a
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !334
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !332
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hq
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !334
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !332
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.hq
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !334
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.99, double noundef %i.hs, double noundef %i.hw, double noundef %i.ia) #30 ; 0 uses
  %i.ic = add nsw i32 %.012639, 1
  %i.id = add nsw i32 %.011942, 1
  br label %bb.cy, !llvm.loop !335

bb.be:                                            ; preds = %bb.bc
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !332
  %i.ig = sext i32 %.012639 to i64                ; 3 uses
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ig
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !334
  %i.ij = load float, ptr %13, align 4, !tbaa !102
  %i.ik = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %bb.bf unwind label %bb.bb

bb.bf:                                            ; preds = %bb.be
  %i.il = uitofp i64 %i.ik to float
  %i.im = fmul nnan float %i.il, f0x1F800000      ; 2 uses
  %i.in = fcmp oeq float %i.im, 1.000000e+00
  %i.io = call nnan float @llvm.fmuladd.f32(float %i.im, float 2.000000e+00, float -1.000000e+00)
  %i.ip = select i1 %i.in, float -1.000000e+00, float %i.io
  %i.iq = fmul float %i.ij, %i.ip
  %i.ir = fpext float %i.iq to double
  %i.is = fadd double %i.ii, %i.ir
  %i.it = fptrunc double %i.is to float
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !332
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.ig
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !334
  %i.iz = load float, ptr %i.fw, align 4, !tbaa !102
  %i.ja = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %bb.bg unwind label %bb.bb

bb.bg:                                            ; preds = %bb.bf
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !321
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !332
  %i.je = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.ig
  %i.jf = load double, ptr %i.je, align 8, !tbaa !334
  %i.jg = load float, ptr %i.fx, align 4, !tbaa !102
  %i.jh = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %bb.bh unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bg
  %i.ji = insertelement <2 x i64> poison, i64 %i.ja, i64 0
  %i.jj = insertelement <2 x i64> %i.ji, i64 %i.jh, i64 1
  %i.jk = uitofp <2 x i64> %i.jj to <2 x float>
  %i.jl = fmul nnan <2 x float> %i.jk, splat (float f0x1F800000) ; 2 uses
  %i.jm = fcmp oeq <2 x float> %i.jl, splat (float 1.000000e+00)
  %i.jn = call nnan <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  %i.jo = select <2 x i1> %i.jm, <2 x float> splat (float -1.000000e+00), <2 x float> %i.jn
  %i.jp = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.jg, i64 1
  %i.jr = fmul <2 x float> %i.jq, %i.jo
  %i.js = fpext <2 x float> %i.jr to <2 x double>
  %i.jt = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.jf, i64 1
  %i.jv = fadd <2 x double> %i.ju, %i.js
  %i.jw = fptrunc <2 x double> %i.jv to <2 x float>
  br label %bb.bi

bb.bi:                                            ; preds = %bb.aw, %bb.bh
  %.sroa.05.0 = phi float [ %i.gt, %bb.aw ], [ %i.it, %bb.bh ] ; 2 uses
  %i.jx = phi <2 x float> [ %i.hg, %bb.aw ], [ %i.jw, %bb.bh ] ; 4 uses
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !185
  %i.jz = add nsw i32 %.012440, 1                 ; 3 uses
  %i.ka = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jy, ptr noundef nonnull @.str.100, i32 noundef %i.jz) #30 ; 0 uses
  %i.kb = load ptr, ptr @stderr, align 8, !tbaa !185
  %i.kc = call i32 @fflush(ptr noundef %i.kb)     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE13_M_assign_auxINS0_12ArrayRefIterIS2_EEEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr %.0.val, ptr %i.ga)
          to label %.noexc193 unwind label %bb.bb

.noexc193:                                        ; preds = %bb.bi
  switch i32 %14, label %bb.bk [
    i32 0, label %bb.bj
    i32 1, label %bb.bq
    i32 2, label %.noexc197
  ]

bb.bj:                                            ; preds = %.noexc193
  %i.kd = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %.noexc194 unwind label %bb.bb

.noexc194:                                        ; preds = %bb.bj
  %i.ke = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %.noexc195 unwind label %bb.bb

.noexc195:                                        ; preds = %.noexc194
  %i.kf = insertelement <2 x i64> poison, i64 %i.kd, i64 0
  %i.kg = insertelement <2 x i64> %i.kf, i64 %i.ke, i64 1
  %i.kh = uitofp <2 x i64> %i.kg to <2 x float>
  %i.ki = fmul nnan <2 x float> %i.kh, splat (float f0x1F800000) ; 2 uses
  %i.kj = fcmp oeq <2 x float> %i.ki, splat (float 1.000000e+00)
  %i.kk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> splat (float f0x40C90FDB), <2 x float> zeroinitializer)
  %i.kl = select <2 x i1> %i.kj, <2 x float> zeroinitializer, <2 x float> %i.kk
  br label %bb.bq

bb.bk:                                            ; preds = %.noexc193
  %i.km = call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.113)
          to label %bb.bl unwind label %.thread.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(56) %19)
          to label %bb.bm unwind label %.thread49.i

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %18, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %20, align 8, !tbaa !9
  %i.kn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @__PRETTY_FUNCTION__._ZL19generate_trial_confN3gmx8ArrayRefINS_11BasicVectorIfEEEEPKf12RotationTypePNS_16ThreeFry2x64FastILj64EEEPSt6vectorIS2_SaIS2_EE, ptr %i.kn, align 8, !tbaa !181
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.80, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !181
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 144, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !127
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.km, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr %i.km, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #27
          to label %bb.br unwind label %bb.bo

.thread.i:                                        ; preds = %bb.bk
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread49.i:                                      ; preds = %bb.bl
  %i.kp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #26
  br label %.sink.split.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.023.i = phi i1 [ false, %bb.bn ], [ true, %bb.bm ]
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.023.i, label %bb.bp, label %.body

.sink.split.i:                                    ; preds = %.thread49.i, %.thread.i
  %.pn.pn48.ph.i = phi { ptr, i32 } [ %i.kp, %.thread49.i ], [ %i.ko, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i, %bb.bo
  %.pn.pn48.i = phi { ptr, i32 } [ %i.kq, %bb.bo ], [ %.pn.pn48.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.km) #26
  br label %.body

bb.bq:                                            ; preds = %.noexc195, %.noexc193
  %i.kr = phi <2 x float> [ %i.kl, %.noexc195 ], [ zeroinitializer, %.noexc193 ] ; 2 uses
  %i.ks = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %25)
          to label %.noexc196 unwind label %bb.bb

.noexc196:                                        ; preds = %bb.bq
  %i.kt = uitofp i64 %i.ks to float
  %i.ku = fmul nnan float %i.kt, f0x1F800000      ; 2 uses
  %i.kv = fcmp oeq float %i.ku, 1.000000e+00
  %i.kw = call float @llvm.fmuladd.f32(float %i.ku, float f0x40C90FDB, float 0.000000e+00)
  %i.kx = select i1 %i.kv, float 0.000000e+00, float %i.kw
  %i.ky = load ptr, ptr %i.fq, align 8, !tbaa !200
  %i.kz = load ptr, ptr %31, align 8, !tbaa !108  ; 2 uses
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = sdiv exact i64 %i.lc, 12
  %i.le = trunc i64 %i.ld to i32
  %i.lf = extractelement <2 x float> %i.kr, i64 0
  %i.lg = extractelement <2 x float> %i.kr, i64 1
  invoke void @_Z11rotate_confiPA3_fS0_fff(i32 noundef %i.le, ptr noundef %i.kz, ptr noundef null, float noundef %i.lf, float noundef %i.lg, float noundef %i.kx)
          to label %.noexc197 unwind label %bb.bb

.noexc197:                                        ; preds = %.noexc196, %.noexc193
  %i.lh = load ptr, ptr %i.fq, align 8, !tbaa !200 ; 2 uses
  %i.li = load ptr, ptr %31, align 8, !tbaa !108  ; 4 uses
  %.not.i = icmp eq ptr %i.lh, %i.li
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc197
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = sdiv exact i64 %i.ll, 12                ; 4 uses
  %min.iters.check = icmp ult i64 %i.lm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.lm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.sroa.05.0, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat82 = shufflevector <2 x float> %i.jx, <2 x float> poison, <8 x i32> zeroinitializer
  %i.ln = shufflevector <2 x float> %i.jx, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.li, i64 %index ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.lo, align 4, !tbaa !102 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec85 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.lp = fadd <8 x float> %broadcast.splat, %strided.vec
  %i.lq = fadd <8 x float> %broadcast.splat82, %strided.vec85
  %i.lr = shufflevector <8 x float> %i.lp, <8 x float> %i.lq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ls = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lt = fadd <16 x float> %i.ln, %i.ls
  %interleaved.vec = shufflevector <16 x float> %i.lr, <16 x float> %i.lt, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.lo, align 4, !tbaa !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !336

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.060.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %i.lv = extractelement <2 x float> %i.jx, i64 1
  %i.lw = insertelement <2 x float> poison, float %.sroa.05.0, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> %i.jx, <2 x i32> <i32 0, i32 2>
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.060.i = phi i64 [ %i.me, %scalar.ph ], [ %.060.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [12 x i8], ptr %i.li, i64 %.060.i ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !102
  %i.mb = fadd float %i.lv, %i.ma
  %i.mc = load <2 x float>, ptr %i.ly, align 4, !tbaa !102
  %i.md = fadd <2 x float> %i.lx, %i.mc
  store <2 x float> %i.md, ptr %i.ly, align 4, !tbaa !102
  store float %i.mb, ptr %i.lz, align 4, !tbaa !102
  %i.me = add nuw i64 %.060.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.me, %i.lm
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !337

bb.br:                                            ; preds = %bb.bn
  unreachable

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %.noexc197
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #26
  %i.mf = load ptr, ptr %i.gb, align 8, !tbaa !200
  %i.mg = load ptr, ptr %7, align 8, !tbaa !108   ; 2 uses
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = sdiv exact i64 %i.mj, 12
  %i.ml = trunc i64 %i.mk to i32
  store i32 %i.ml, ptr %32, align 8, !tbaa !338
  store i32 -1, ptr %i.gc, align 4, !tbaa !340
  store ptr %i.mg, ptr %i.gd, align 8, !tbaa !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  invoke void @_ZN3gmx20AnalysisNeighborhood10initSearchEPK5t_pbcRKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodSearch") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %26, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bs unwind label %bb.cn

bb.bs:                                            ; preds = %.loopexit
  %.val = load ptr, ptr %31, align 8, !tbaa !108  ; 2 uses
  %.val160 = load ptr, ptr %i.fq, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.mm = ptrtoint ptr %.val160 to i64
  %i.mn = ptrtoint ptr %.val to i64
  %i.mo = sub i64 %i.mm, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 12
  %i.mq = trunc i64 %i.mp to i32
  store i32 %i.mq, ptr %15, align 8, !tbaa !338
  store i32 -1, ptr %i.gf, align 4, !tbaa !340
  store ptr %.val, ptr %i.gg, align 8, !tbaa !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNK3gmx26AnalysisNeighborhoodSearch15startPairSearchERKNS_29AnalysisNeighborhoodPositionsE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::AnalysisNeighborhoodPairSearch") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %.noexc203 unwind label %bb.co

.noexc203:                                        ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store i32 -1, ptr %17, align 4, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gi, i8 0, i64 20, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %.backedge, %.noexc203
  %i.mr = invoke noundef zeroext i1 @_ZN3gmx30AnalysisNeighborhoodPairSearch12findNextPairEPNS_24AnalysisNeighborhoodPairE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %17)
          to label %bb.bu unwind label %bb.bx     ; 2 uses

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.mr, label %bb.bv, label %.critedge.i

bb.bv:                                            ; preds = %bb.bu
  %i.ms = load i32, ptr %17, align 4, !tbaa !342  ; 4 uses
  %i.mt = sext i32 %i.ms to i64
  %i.mu = load ptr, ptr %22, align 8, !tbaa !330
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mt
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !102
  %i.mx = load i32, ptr %i.gi, align 4, !tbaa !344
  %i.my = sext i32 %i.mx to i64
  %i.mz = load ptr, ptr %23, align 8, !tbaa !330
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.my
  %i.nb = load float, ptr %i.na, align 4, !tbaa !102
  %i.nc = load float, ptr %i.gj, align 4, !tbaa !345
  %i.nd = fadd float %i.mw, %i.nb                 ; 2 uses
  %i.ne = fmul float %i.nd, %i.nd
  %i.nf = fcmp olt float %i.nc, %i.ne
  br i1 %i.nf, label %bb.bw, label %.backedge

bb.bw:                                            ; preds = %bb.bv
  %i.ng = load ptr, ptr %i.gk, align 8, !tbaa !195 ; 2 uses
  %.not10.i.i.i.i198 = icmp eq ptr %i.ng, null
  br i1 %.not10.i.i.i.i198, label %.critedge.i, label %.lr.ph.i.i.i.i199

.lr.ph.i.i.i.i199:                                ; preds = %bb.bw, %.lr.ph.i.i.i.i199
  %.012.i.i.i.i200 = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i199 ], [ %i.ng, %bb.bw ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i199 ], [ %i.gl, %bb.bw ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 32
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !127
  %i.nj = icmp slt i32 %i.ni, %i.ms               ; 2 uses
  %.19.i.i.i.i = select i1 %i.nj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i200 ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.nj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i200, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i201, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, label %.lr.ph.i.i.i.i199, !llvm.loop !346

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i199
  %i.nk = icmp eq ptr %.19.i.i.i.i, %i.gl
  br i1 %i.nk, label %.critedge.i, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i:    ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !127
  %.not.i202 = icmp slt i32 %i.ms, %i.nm
  br i1 %.not.i202, label %.critedge.i, label %bb.bz

bb.bx:                                            ; preds = %bb.bt
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.by:                                            ; preds = %bb.bz
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bz:                                            ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i
  invoke void @_ZN3gmx12AtomsRemover11markResidueERK7t_atomsib(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ms, i1 noundef zeroext true)
          to label %.backedge unwind label %bb.by

.backedge:                                        ; preds = %bb.bz, %bb.bv
  br label %bb.bt, !llvm.loop !347

.critedge.i:                                      ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i, %bb.bw, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.np = load ptr, ptr %i.gm, align 8, !tbaa !123 ; 8 uses
  %.not.i.i.i19.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i19.i, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %.critedge.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.nq, align 8, !tbaa !118
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !120
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !9
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #26, !inline_history !348
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !9
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #26, !inline_history !348
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !127
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i = phi i32 [ %i.nt, %bb.cd ], [ %i.od, %bb.ce ]
  %i.oe = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.oe, label %bb.cf, label %bb.ch, !prof !129

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #26
  br label %bb.ch

bb.cg:                                            ; preds = %bb.by, %bb.bx
  %.pn.pn.i = phi { ptr, i32 } [ %i.nn, %bb.bx ], [ %i.no, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body204

bb.ch:                                            ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cb, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br i1 %i.mr, label %bb.cr, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.of = load ptr, ptr %i.gb, align 8, !tbaa !349
  %i.og = load ptr, ptr %31, align 8, !tbaa !349
  %i.oh = load ptr, ptr %i.fq, align 8, !tbaa !349
  %i.oi = load ptr, ptr %7, align 8, !tbaa !349   ; 2 uses
  %i.oj = ptrtoint ptr %i.of to i64
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = sub i64 %i.oj, %i.ok
  %i.om = getelementptr inbounds i8, ptr %i.oi, i64 %i.ol
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.om, ptr %i.og, ptr %i.oh)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.on = load ptr, ptr %i.s, align 8, !tbaa !184
  %i.oo = load ptr, ptr %23, align 8, !tbaa !184
  %i.op = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.oq = load ptr, ptr %22, align 8, !tbaa !184  ; 2 uses
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = ptrtoint ptr %i.oq to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = getelementptr inbounds i8, ptr %i.oq, i64 %i.ot
  invoke void @_ZNSt6vectorIfSaIfEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKfS1_EEEEvNS4_IPfS1_EET_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr %i.ou, ptr %i.oo, ptr %i.op)
end_hunk_0
