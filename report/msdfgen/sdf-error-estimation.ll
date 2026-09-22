Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/sdf-error-estimation?download=true
inline.NumInlined: 166
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgen12scanlineMSDFILi3EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE:bb.a
  %i.ic = select i1 %i.ib, float %i.ia, float %i.hs
  %i.id = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ic, i64 1 ; 2 uses
  %i.if = fcmp ogt <2 x float> %i.ie, %i.hz
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hz, <2 x float> %i.ie ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fcmp olt float %i.ih, %i.ii
  %i.ik = select i1 %i.ij, float %i.ii, float %i.ih
  %i.il = extractelement <2 x float> %i.hz, i64 1
  %i.im = fcmp oeq float %i.ik, %i.il
  br i1 %i.im, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.in = fadd double %i.hm, %i.dz
  %i.io = fadd double %i.in, 5.000000e-01
  %i.ip = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.io)
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %bb.y
  %i.iq = zext nneg i32 %.3.1 to i64
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.iq ; 2 uses
  store double %i.ip, ptr %i.ir, align 16, !tbaa !30
  %i.is = fcmp ogt float %i.hk, 0.000000e+00
  %i.it = zext i1 %i.is to i32
  %i.iu = fcmp olt float %i.hk, 0.000000e+00
  %.neg.i.2 = sext i1 %i.iu to i32
  %i.iv = add nsw i32 %.neg.i.2, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !31
  %i.ix = add nuw nsw i32 %.3.1, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.w, %bb.v
  %.3.2 = phi i32 [ %.3.1, %bb.v ], [ %.3.1, %bb.w ], [ %i.ix, %bb.z ], [ %.3.1, %bb.x ] ; 4 uses
  %i.iy = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load double, ptr %7, align 16, !tbaa !30
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jd = load double, ptr %i.cm, align 16, !tbaa !30
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph.preheader

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  %i.jf = load double, ptr %7, align 16, !tbaa !30
  %i.jg = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jh = fcmp ogt double %i.jf, %i.jg
  br i1 %i.jh, label %bb.ag, label %.lr.ph.preheader

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  br label %.lr.ph.preheader

bb.ah:                                            ; preds = %bb.aa
  %i.ji = icmp eq i32 %.3.2, 1
  br i1 %i.ji, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad, %bb.ah
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %i.jj = phi ptr [ %i.cq, %.lr.ph.preheader ], [ %i.km, %bb.ao ]
  %i.jk = phi ptr [ %i.cr, %.lr.ph.preheader ], [ %i.kn, %bb.ao ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.1101146 = phi i8 [ %.0100148, %.lr.ph.preheader ], [ %.2102, %bb.ao ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !31
  %i.jo = icmp sgt i32 %i.jn, 0
  %i.jp = trunc nuw i8 %.1101146 to i1
  %i.jq = xor i1 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.lr.ph
  %i.jr = load ptr, ptr %i.co, align 8, !tbaa !17
  %.not.i127 = icmp eq ptr %i.jk, %i.jr
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !23
  %i.js = load ptr, ptr %i.cn, align 8, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  store ptr %i.jt, ptr %i.cn, align 8, !tbaa !24
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %6, align 8, !tbaa !16    ; 4 uses
  %i.jv = ptrtoint ptr %i.jk to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 6 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i129, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.kd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i130)
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #11
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !23
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %.not.i17.i.i132 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  store ptr %i.kf, ptr %6, align 8, !tbaa !16
  store ptr %i.ki, ptr %i.cn, align 8, !tbaa !24
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.co, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.kl = xor i8 %.1101146, 1
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.km = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jk, %.lr.ph ] ; 2 uses
  %.2102 = phi i8 [ %i.kl, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101146, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.ko = phi ptr [ %i.cq, %bb.ah ], [ %i.km, %bb.ao ] ; 5 uses
  %i.kp = phi ptr [ %i.cr, %bb.ah ], [ %i.kn, %bb.ao ]
  %.1101.lcssa = phi i8 [ %.0100148, %bb.ah ], [ %.2102, %bb.ao ] ; 4 uses
  %i.kq = fcmp ogt float %i.fn, %i.dl
  %i.kr = select i1 %i.kq, float %i.fn, float %i.dl
  %i.ks = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp ogt <2 x float> %i.kt, %i.du
  %i.kv = select <2 x i1> %i.ku, <2 x float> %i.du, <2 x float> %i.kt ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.kv, i64 1 ; 2 uses
  %i.ky = fcmp olt float %i.kw, %i.kx
  %i.kz = select i1 %i.ky, float %i.kx, float %i.kw ; 2 uses
  %i.la = fcmp ogt float %i.kz, 5.000000e-01
  %8 = trunc nuw i8 %.1101.lcssa to i1
  %9 = xor i1 %i.la, %8
  %i.lb = fcmp une float %i.kz, 5.000000e-01
  %or.cond3 = and i1 %i.lb, %9
  br i1 %or.cond3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.lc = load ptr, ptr %6, align 8, !tbaa !32
  %i.ld = icmp eq ptr %i.lc, %i.ko
  br i1 %i.ld, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.le = getelementptr inbounds i8, ptr %i.ko, i64 -16 ; 3 uses
  store ptr %i.le, ptr %i.cn, align 8, !tbaa !24
  %i.lf = xor i8 %.1101.lcssa, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge
  %i.lg = phi ptr [ %i.ko, %bb.ap ], [ %i.le, %bb.aq ], [ %i.ko, %._crit_edge ]
  %i.lh = phi ptr [ %i.ko, %bb.ap ], [ %i.le, %bb.aq ], [ %i.kp, %._crit_edge ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.ap ], [ %i.lf, %bb.aq ], [ %.1101.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.li = add nuw nsw i32 %.099149, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.lj = load i32, ptr %i.a, align 8, !tbaa !27
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp slt i64 %indvars.iv.next155, %i.lk
  br i1 %i.ll, label %bb.k, label %._crit_edge152, !llvm.loop !40

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge152
  %i.lm = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !17
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.lm to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lr) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  %i.ls = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !17
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi4EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %6 = alloca %"class.std::vector", align 8       ; 17 uses
  %7 = alloca [4 x %"struct.msdfgen::Scanline::Intersection"], align 16 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !34
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7msdfgen8Scanline16setIntersectionsEOSt6vectorINS0_12IntersectionESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.av

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !16     ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.ay

bb.h:                                             ; preds = %bb.b
  %i.t = tail call noundef double @_ZNK7msdfgen10Projection8projectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %3)
  %i.u = fadd double %i.t, -5.000000e-01          ; 4 uses
  %i.v = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.w = add nsw i32 %i.v, -1                     ; 3 uses
  %i.x = sitofp i32 %i.w to double                ; 3 uses
  %i.y = fcmp ult double %i.u, 0.000000e+00
  %i.z = fcmp ugt double %i.u, %i.x
  %or.cond.i = or i1 %i.y, %i.z
  %i.aa = fcmp ogt double %i.u, 0.000000e+00
  %i.ab = uitofp i1 %i.aa to double
  %i.ac = fmul nnan double %i.x, %i.ab
  %i.ad = select i1 %or.cond.i, double %i.ac, double %i.u ; 2 uses
  %i.ae = icmp eq i32 %4, 1
  %i.af = fsub double %i.x, %i.ad
  %.0107 = select i1 %i.ae, double %i.af, double %i.ad ; 2 uses
  %i.ag = tail call double @llvm.floor.f64(double %.0107)
  %i.ah = fptosi double %i.ag to i32              ; 3 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = fsub double %.0107, %i.aj
  %.not = icmp slt i32 %i.ai, %i.v                ; 2 uses
  %.0106 = select i1 %.not, i32 %i.ah, i32 %i.w   ; 2 uses
  %.0105 = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.w) ; 2 uses
  %.0104 = select i1 %.not, double %i.ak, double 1.000000e+00 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %1, align 8, !tbaa !45    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.ao = mul nsw i32 %.0106, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !19
  %i.as = mul nsw i32 %.0105, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !19
  %i.aw = fsub double 1.000000e+00, %.0104        ; 3 uses
  %i.ax = fpext float %i.ar to double
  %i.ay = fpext float %i.av to double
  %i.az = fmul double %.0104, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ax, double %i.az)
  %i.bb = fptrunc double %i.ba to float           ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.be = load <2 x float>, ptr %i.bc, align 4, !tbaa !19
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !19
  %i.bg = fpext <2 x float> %i.be to <2 x double>
  %i.bh = fpext <2 x float> %i.bf to <2 x double>
  %i.bi = insertelement <2 x double> poison, double %.0104, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, %i.bh
  %i.bl = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7msdfgen12scanlineMSDFILi4EEEvRNS_8ScanlineERKNS_18BitmapConstSectionIfXT_EEERKNS_10ProjectionEdNS_16YAxisOrientationE:bb.a
  %i.ic = select i1 %i.ib, float %i.ia, float %i.hs
  %i.id = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.ic, i64 1 ; 2 uses
  %i.if = fcmp ogt <2 x float> %i.ie, %i.hz
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hz, <2 x float> %i.ie ; 2 uses
  %i.ih = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.ii = extractelement <2 x float> %i.ig, i64 1 ; 2 uses
  %i.ij = fcmp olt float %i.ih, %i.ii
  %i.ik = select i1 %i.ij, float %i.ii, float %i.ih
  %i.il = extractelement <2 x float> %i.hz, i64 1
  %i.im = fcmp oeq float %i.ik, %i.il
  br i1 %i.im, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.in = fadd double %i.hm, %i.dz
  %i.io = fadd double %i.in, 5.000000e-01
  %i.ip = invoke noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.io)
          to label %bb.z unwind label %bb.p

bb.z:                                             ; preds = %bb.y
  %i.iq = zext nneg i32 %.3.1 to i64
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.iq ; 2 uses
  store double %i.ip, ptr %i.ir, align 16, !tbaa !30
  %i.is = fcmp ogt float %i.hk, 0.000000e+00
  %i.it = zext i1 %i.is to i32
  %i.iu = fcmp olt float %i.hk, 0.000000e+00
  %.neg.i.2 = sext i1 %i.iu to i32
  %i.iv = add nsw i32 %.neg.i.2, %i.it
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i32 %i.iv, ptr %i.iw, align 8, !tbaa !31
  %i.ix = add nuw nsw i32 %.3.1, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z, %bb.w, %bb.v
  %.3.2 = phi i32 [ %.3.1, %bb.v ], [ %.3.1, %bb.w ], [ %i.ix, %bb.z ], [ %.3.1, %bb.x ] ; 4 uses
  %i.iy = icmp samesign ugt i32 %.3.2, 1
  br i1 %i.iy, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.iz = load double, ptr %7, align 16, !tbaa !30
  %i.ja = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jb = fcmp ogt double %i.iz, %i.ja
  br i1 %i.jb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not119 = icmp eq i32 %.3.2, 2
  br i1 %.not119, label %.lr.ph.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jd = load double, ptr %i.cm, align 16, !tbaa !30
  %i.je = fcmp ogt double %i.jc, %i.jd
  br i1 %i.je, label %bb.af, label %.lr.ph.preheader

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  %i.jf = load double, ptr %7, align 16, !tbaa !30
  %i.jg = load double, ptr %i.ck, align 16, !tbaa !30
  %i.jh = fcmp ogt double %i.jf, %i.jg
  br i1 %i.jh, label %bb.ag, label %.lr.ph.preheader

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ck, ptr noundef nonnull align 16 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !23
  br label %.lr.ph.preheader

bb.ah:                                            ; preds = %bb.aa
  %i.ji = icmp eq i32 %.3.2, 1
  br i1 %i.ji, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.af, %bb.ag, %bb.ae, %bb.ad, %bb.ah
  %wide.trip.count = zext nneg i32 %.3.2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %i.jj = phi ptr [ %i.cq, %.lr.ph.preheader ], [ %i.km, %bb.ao ]
  %i.jk = phi ptr [ %i.cr, %.lr.ph.preheader ], [ %i.kn, %bb.ao ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 2 uses
  %.1101146 = phi i8 [ %.0100148, %.lr.ph.preheader ], [ %.2102, %bb.ao ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !31
  %i.jo = icmp sgt i32 %i.jn, 0
  %i.jp = trunc nuw i8 %.1101146 to i1
  %i.jq = xor i1 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %.lr.ph
  %i.jr = load ptr, ptr %i.co, align 8, !tbaa !17
  %.not.i127 = icmp eq ptr %i.jk, %i.jr
  br i1 %.not.i127, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !23
  %i.js = load ptr, ptr %i.cn, align 8, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  store ptr %i.jt, ptr %i.cn, align 8, !tbaa !24
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

bb.ak:                                            ; preds = %bb.ai
  %i.ju = load ptr, ptr %6, align 8, !tbaa !16    ; 4 uses
  %i.jv = ptrtoint ptr %i.jk to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw                    ; 6 uses
  %i.jy = icmp eq i64 %i.jx, 9223372036854775792
  br i1 %i.jy, label %bb.al, label %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
          to label %.noexc134 unwind label %.loopexit.split-lp

.noexc134:                                        ; preds = %bb.al
  unreachable

_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128: ; preds = %bb.ak
  %i.jz = ashr exact i64 %i.jx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i129 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 1)
  %i.ka = add nsw i64 %.sroa.speculated.i.i.i129, %i.jz ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.jz
  %i.kc = tail call i64 @llvm.umin.i64(i64 %i.ka, i64 576460752303423487)
  %i.kd = select i1 %i.kb, i64 576460752303423487, i64 %i.kc ; 3 uses
  %.not.i.i.i130 = icmp ne i64 %i.kd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i130)
  %i.ke = shl nuw nsw i64 %i.kd, 4
  %i.kf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ke) #11
          to label %.noexc135 unwind label %.loopexit ; 4 uses

.noexc135:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %i.jx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 16 dereferenceable(16) %i.jl, i64 16, i1 false), !tbaa.struct !23
  %i.kh = icmp sgt i64 %i.jx, 0
  br i1 %i.kh, label %bb.am, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

bb.am:                                            ; preds = %.noexc135
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kf, ptr align 8 %i.ju, i64 %i.jx, i1 false)
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131: ; preds = %bb.am, %.noexc135
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %.not.i17.i.i132 = icmp eq ptr %i.ju, null
  br i1 %.not.i17.i.i132, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jx) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133: ; preds = %bb.an, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i131
  store ptr %i.kf, ptr %6, align 8, !tbaa !16
  store ptr %i.ki, ptr %i.cn, align 8, !tbaa !24
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.kf, i64 %i.kd
  store ptr %i.kj, ptr %i.co, align 8, !tbaa !17
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136: ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133, %bb.aj
  %i.kk = phi ptr [ %i.ki, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i133 ], [ %i.jt, %bb.aj ] ; 2 uses
  %i.kl = xor i8 %.1101146, 1
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE12_M_check_lenEmPKc.exit.i.i128
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp:                               ; preds = %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ao:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136
  %i.km = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jj, %.lr.ph ] ; 2 uses
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %i.jk, %.lr.ph ] ; 2 uses
  %.2102 = phi i8 [ %i.kl, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EE9push_backERKS2_.exit136 ], [ %.1101146, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.ao, %bb.ah
  %i.ko = phi ptr [ %i.cq, %bb.ah ], [ %i.km, %bb.ao ] ; 5 uses
  %i.kp = phi ptr [ %i.cr, %bb.ah ], [ %i.kn, %bb.ao ]
  %.1101.lcssa = phi i8 [ %.0100148, %bb.ah ], [ %.2102, %bb.ao ] ; 4 uses
  %i.kq = fcmp ogt float %i.fn, %i.dl
  %i.kr = select i1 %i.kq, float %i.fn, float %i.dl
  %i.ks = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.kt = insertelement <2 x float> %i.ks, float %i.kr, i64 1 ; 2 uses
  %i.ku = fcmp ogt <2 x float> %i.kt, %i.du
  %i.kv = select <2 x i1> %i.ku, <2 x float> %i.du, <2 x float> %i.kt ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 2 uses
  %i.kx = extractelement <2 x float> %i.kv, i64 1 ; 2 uses
  %i.ky = fcmp olt float %i.kw, %i.kx
  %i.kz = select i1 %i.ky, float %i.kx, float %i.kw ; 2 uses
  %i.la = fcmp ogt float %i.kz, 5.000000e-01
  %8 = trunc nuw i8 %.1101.lcssa to i1
  %9 = xor i1 %i.la, %8
  %i.lb = fcmp une float %i.kz, 5.000000e-01
  %or.cond3 = and i1 %i.lb, %9
  br i1 %or.cond3, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %._crit_edge
  %i.lc = load ptr, ptr %6, align 8, !tbaa !32
  %i.ld = icmp eq ptr %i.lc, %i.ko
  br i1 %i.ld, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.le = getelementptr inbounds i8, ptr %i.ko, i64 -16 ; 3 uses
  store ptr %i.le, ptr %i.cn, align 8, !tbaa !24
  %i.lf = xor i8 %.1101.lcssa, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %._crit_edge
  %i.lg = phi ptr [ %i.ko, %bb.ap ], [ %i.le, %bb.aq ], [ %i.ko, %._crit_edge ]
  %i.lh = phi ptr [ %i.ko, %bb.ap ], [ %i.le, %bb.aq ], [ %i.kp, %._crit_edge ]
  %.3103 = phi i8 [ %.1101.lcssa, %bb.ap ], [ %i.lf, %bb.aq ], [ %.1101.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.li = add nuw nsw i32 %.099149, 1
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.lj = load i32, ptr %i.a, align 8, !tbaa !34
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp slt i64 %indvars.iv.next155, %i.lk
  br i1 %i.ll, label %bb.k, label %._crit_edge152, !llvm.loop !44

bb.as:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %.pn = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge152
  %i.lm = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i137 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i137, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ln = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !17
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = ptrtoint ptr %i.lm to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lr) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit138, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit
  ret void

bb.aw:                                            ; preds = %bb.as, %bb.j, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.as ], [ %i.cf, %bb.i ], [ %i.cg, %bb.j ]
  %i.ls = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i139 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !17
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #10
  br label %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140

_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit140 ], [ %i.m, %_ZNSt6vectorIN7msdfgen8Scanline12IntersectionESaIS2_EED2Ev.exit124 ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7msdfgen16estimateSDFErrorERKNS_18BitmapConstSectionIfLi1EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4)
  ret double %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7msdfgen21estimateSDFErrorInnerILi1EEEdRKNS_18BitmapConstSectionIfXT_EEERKNS_5ShapeERKNS_10ProjectionEiNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %6 = alloca %"class.msdfgen::Scanline", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = icmp slt i32 %i.e, 2
  %i.g = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = uitofp nneg i32 %3 to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef 5.000000e-01) ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !12
  %i.l = sitofp i32 %i.k to double
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = tail call noundef double @_ZNK7msdfgen10Projection10unprojectXEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.m) ; 2 uses
  %i.o = fsub double %i.n, %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  invoke void @_ZN7msdfgen8ScanlineC1Ev(ptr noundef nonnull align 8 dereferenceable(28) %6)
          to label %.preheader51 unwind label %bb.l

.preheader51:                                     ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.q = add nsw i32 %i.p, -1
  %i.r = icmp sgt i32 %i.p, 1
  br i1 %i.r, label %.preheader.us.preheader, label %._crit_edge59

.preheader.us.preheader:                          ; preds = %.preheader51
  %i.s = fdiv double -1.000000e+00, %i.o
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.03758.us = phi i32 [ %i.af, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.04057.us = phi double [ %i.ad, %._crit_edge.us ], [ 0.000000e+00, %.preheader.us.preheader ]
  %i.t = uitofp nneg i32 %.03758.us to double
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.i
  %.056.us = phi i32 [ 0, %.preheader.us ], [ %i.ae, %bb.i ] ; 2 uses
  %.155.us = phi double [ %.04057.us, %.preheader.us ], [ %i.ad, %bb.i ]
  %i.u = uitofp nneg i32 %.056.us to double
  %i.v = fadd nnan double %i.u, 5.000000e-01
  %i.w = fmul double %i.i, %i.v
  %i.x = fadd double %i.w, %i.t
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = invoke noundef double @_ZNK7msdfgen10Projection10unprojectYEd(ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.y)
          to label %bb.e unwind label %.split.us  ; 2 uses

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7msdfgen5Shape8scanlineERNS_8ScanlineEd(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(28) %5, double noundef %i.z)
          to label %bb.f unwind label %.split.us

bb.f:                                             ; preds = %bb.e
  %i.aa = invoke noundef i32 @_ZNK7msdfgen5Shape19getYAxisOrientationEv(ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7msdfgen11scanlineSDFERNS_8ScanlineERKNS_18BitmapConstSectionIfLi1EEERKNS_10ProjectionEdNS_16YAxisOrientationE(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, double noundef %i.z, i32 noundef %i.aa)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef double @_ZN7msdfgen8Scanline7overlapERKS0_S2_ddNS_8FillRuleE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef nonnull align 8 dereferenceable(28) %6, double noundef %i.j, double noundef %i.n, i32 noundef %4)
          to label %bb.i unwind label %.split.us

bb.i:                                             ; preds = %bb.h
  %i.ac = call double @llvm.fmuladd.f64(double %i.s, double %i.ab, double 1.000000e+00)
  %i.ad = fadd double %.155.us, %i.ac             ; 3 uses
  %i.ae = add nuw nsw i32 %.056.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !47

._crit_edge.us:                                   ; preds = %bb.i
  %i.af = add nuw nsw i32 %.03758.us, 1           ; 2 uses
  %i.ag = load i32, ptr %i.d, align 4, !tbaa !13
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = icmp slt i32 %i.af, %i.ah
  br i1 %i.ai, label %.preheader.us, label %._crit_edge59, !llvm.loop !48

.split.us:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i47, label %_ZN7msdfgen8ScanlineD2Ev.exit48, label %bb.m

._crit_edge59:                                    ; preds = %._crit_edge.us, %.preheader51
  %.040.lcssa = phi double [ 0.000000e+00, %.preheader51 ], [ %i.ad, %._crit_edge.us ]
  %.lcssa = phi i32 [ %i.q, %.preheader51 ], [ %i.ah, %._crit_edge.us ]
  %i.al = mul nsw i32 %.lcssa, %3
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %.040.lcssa, %i.am
  %i.ao = load ptr, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %_ZN7msdfgen8ScanlineD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge59
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #10
  br label %_ZN7msdfgen8ScanlineD2Ev.exit

end_hunk_1
