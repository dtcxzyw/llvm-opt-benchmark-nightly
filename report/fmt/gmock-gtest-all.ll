Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/gmock-gtest-all?download=true
inline.NumInlined: 10506
inline.NumDeleted: 2792
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_:bb.a
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !437
  store i32 2, ptr %i.dt, align 4, !tbaa !440
  %i.du = or disjoint i64 %.080141, 1             ; 3 uses
  %i.dv = uitofp i64 %i.du to double
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !425
  store double %i.dv, ptr %i.dx, align 8, !tbaa !429
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %i.du
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !437
  store i32 2, ptr %i.dz, align 4, !tbaa !440
  %i.ea = add nuw i64 %.080141, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader133.loopexit.unr-lcssa, label %bb.v, !llvm.loop !449

.preheader132:                                    ; preds = %scalar.ph, %middle.block, %.preheader133
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !421 ; 3 uses
  %i.ec = load ptr, ptr %1, align 8, !tbaa !424   ; 4 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3                 ; 2 uses
  %.not158.a = icmp eq ptr %i.eb, %i.ec
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !421 ; 4 uses
  %.pre173.a = load ptr, ptr %2, align 8, !tbaa !424 ; 5 uses
  %.not159 = icmp eq ptr %.pre, %.pre173.a
  %or.cond216 = select i1 %.not158.a, i1 true, i1 %.not159
  br i1 %or.cond216, label %._crit_edge147.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader132
  %i.eh = ptrtoint ptr %.pre to i64
  %i.ei = ptrtoint ptr %.pre173.a to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.079142 = phi i64 [ %i.eo, %scalar.ph ], [ %.079142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.el = uitofp i64 %.079142 to double
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.079142
  store double %i.el, ptr %i.em, align 8, !tbaa !429
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.079142
  store i32 1, ptr %i.en, align 4, !tbaa !440
  %i.eo = add nuw i64 %.079142, 1                 ; 2 uses
  %exitcond168.not = icmp eq i64 %i.eo, %i.cp
  br i1 %exitcond168.not, label %.preheader132, label %scalar.ph, !llvm.loop !450

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.078146 = phi i64 [ %i.er, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.078146
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !46
  %i.er = add nuw i64 %.078146, 1                 ; 4 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.078146 ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.pre175, i64 %i.er
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !437
  br label %bb.w

._crit_edge147.split:                             ; preds = %._crit_edge, %.preheader132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ew = icmp ne ptr %i.eb, %i.ec
  %i.ex = icmp ne ptr %.pre, %.pre173.a
  %i.ey = select i1 %i.ew, i1 true, i1 %i.ex
  br i1 %i.ey, label %.lr.ph155, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph155:                                        ; preds = %._crit_edge147.split
  %i.ez = ptrtoint ptr %.pre173.a to i64
  %i.fa = ptrtoint ptr %.pre to i64
  %i.fb = sub i64 %i.fa, %i.ez
  %i.fc = ashr exact i64 %i.fb, 3
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ad
  %exitcond172.not = icmp eq i64 %i.er, %i.eg
  br i1 %exitcond172.not, label %._crit_edge147.split, label %.preheader, !llvm.loop !451

bb.w:                                             ; preds = %.preheader, %bb.ad
  %.077144 = phi i64 [ 0, %.preheader ], [ %i.fi, %bb.ad ] ; 5 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre173.a, i64 %.077144
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !46
  %i.fh = icmp eq i64 %i.eq, %i.fg
  %i.fi = add nuw i64 %.077144, 1                 ; 7 uses
  br i1 %i.fh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fj = load ptr, ptr %i.et, align 8, !tbaa !425
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.077144
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !429
  %i.fm = load ptr, ptr %i.es, align 8, !tbaa !425
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fi
  store double %i.fl, ptr %i.fn, align 8, !tbaa !429
  br label %bb.ad

bb.y:                                             ; preds = %bb.w
  %i.fo = load ptr, ptr %i.es, align 8, !tbaa !425 ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.077144
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !429 ; 4 uses
  %i.fr = load ptr, ptr %i.et, align 8, !tbaa !425 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fi
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !429 ; 4 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.077144
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !429 ; 3 uses
  %i.fw = fcmp olt double %i.fq, %i.ft
  %i.fx = fcmp olt double %i.fq, %i.fv
  %or.cond = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fy = fadd double %i.fq, 1.000000e+00
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fi
  store double %i.fy, ptr %i.fz, align 8, !tbaa !429
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ga = fcmp olt double %i.ft, %i.fq
  %i.gb = fcmp olt double %i.ft, %i.fv
  %or.cond91 = select i1 %i.ga, i1 %i.gb, i1 false
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fi ; 2 uses
  br i1 %or.cond91, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gd = fadd double %i.ft, 1.000000e+00
  store double %i.gd, ptr %i.gc, align 8, !tbaa !429
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.ge = fadd double %i.fv, 1.000010e+00
  store double %i.ge, ptr %i.gc, align 8, !tbaa !429
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.x
  %.sink = phi i32 [ 1, %bb.z ], [ 3, %bb.ac ], [ 2, %bb.ab ], [ 0, %bb.x ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fi
  store i32 %.sink, ptr %i.gf, align 4, !tbaa !440
  %exitcond170.not = icmp eq i64 %i.fi, %i.ek
  br i1 %exitcond170.not, label %._crit_edge, label %bb.w, !llvm.loop !452

._crit_edge156:                                   ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  store ptr %i.ho, ptr %0, align 8
  %i.gg = icmp ne ptr %i.ho, %i.hm
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.hm, i64 -4 ; 2 uses
  %i.gh = icmp ult ptr %i.ho, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.gg, i1 %i.gh, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge156, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge156 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.gk, %.lr.ph.i.i ], [ %i.ho, %._crit_edge156 ] ; 3 uses
  %i.gi = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !440
  %i.gj = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !440
  store i32 %i.gj, ptr %.sroa.05.09.i.i, align 4, !tbaa !440
  store i32 %i.gi, ptr %.sroa.0.010.i.i, align 4, !tbaa !440
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %.sroa.0.0.i.i
  br i1 %i.gl, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !453

bb.ae:                                            ; preds = %.lr.ph155, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit
  %i.gm = phi ptr [ null, %.lr.ph155 ], [ %i.hl, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.gn = phi ptr [ null, %.lr.ph155 ], [ %i.hm, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.go = phi ptr [ %.pre175, %.lr.ph155 ], [ %i.hn, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.075153 = phi i64 [ %i.fc, %.lr.ph155 ], [ %i.hs, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %.076152 = phi i64 [ %i.eg, %.lr.ph155 ], [ %i.hq, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.gp = phi ptr [ null, %.lr.ph155 ], [ %i.ho, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit ] ; 9 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %.076152
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !437
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %.075153
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !440 ; 4 uses
  %.not.i = icmp eq ptr %i.gn, %i.gm
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.gt, ptr %i.gn, align 4, !tbaa !440
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  store ptr %i.gu, ptr %i.fd, align 8, !tbaa !442
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.gv = ptrtoint ptr %i.gm to i64
  %i.gw = ptrtoint ptr %i.gp to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 7 uses
  %i.gy = icmp eq i64 %i.gx, 9223372036854775804
  br i1 %i.gy, label %bb.ah, label %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.gp, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc113.a unwind label %.loopexit.split-lp

.noexc113.a:                                      ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.gz = ashr exact i64 %i.gx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gz, i64 1)
  %i.ha = add nsw i64 %.sroa.speculated.i.i.i, %i.gz ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %i.gz
  %i.hc = call i64 @llvm.umin.i64(i64 %i.ha, i64 2305843009213693951)
  %i.hd = select i1 %i.hb, i64 2305843009213693951, i64 %i.hc ; 2 uses
  %i.he = shl nuw nsw i64 %i.hd, 2
  %i.hf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #59
          to label %.noexc114 unwind label %.loopexit ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.gx ; 2 uses
  store i32 %i.gt, ptr %i.hg, align 4, !tbaa !440
  %i.hh = icmp sgt i64 %i.gx, 0
  br i1 %i.hh, label %bb.ai, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.ai:                                            ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hf, ptr align 4 %i.gp, i64 %i.gx, i1 false)
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.ai, %.noexc114
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gx) #57
  %.pre174 = load ptr, ptr %5, align 8, !tbaa !443
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.hj = phi ptr [ %.pre174, %bb.aj ], [ %i.go, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i ]
  store ptr %i.hi, ptr %i.fd, align 8, !tbaa !442
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hd ; 2 uses
  store ptr %i.hk, ptr %i.fe, align 8, !tbaa !439
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.af
  %i.hl = phi ptr [ %i.hk, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gm, %bb.af ]
  %i.hm = phi ptr [ %i.hi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gu, %bb.af ] ; 3 uses
  %i.hn = phi ptr [ %i.hj, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.go, %bb.af ] ; 3 uses
  %i.ho = phi ptr [ %i.hf, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.gp, %bb.af ] ; 5 uses
  %i.hp = icmp ne i32 %i.gt, 1
  %.neg = sext i1 %i.hp to i64
  %i.hq = add i64 %.076152, %.neg                 ; 2 uses
  %i.hr = icmp ne i32 %i.gt, 2
  %.neg90 = sext i1 %i.hr to i64
  %i.hs = add i64 %.075153, %.neg90               ; 2 uses
  %i.ht = icmp ne i64 %i.hq, 0
  %i.hu = icmp ne i64 %i.hs, 0
  %i.hv = select i1 %i.ht, i1 true, i1 %i.hu
  br i1 %i.hv, label %bb.ae, label %._crit_edge156, !llvm.loop !454

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gp, ptr %0, align 8
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i125 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, label %bb.ap

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %._crit_edge147.split, %._crit_edge156
  %.pr.i208 = phi ptr [ %.pre175, %._crit_edge147.split ], [ %i.hn, %._crit_edge156 ], [ %i.hn, %.lr.ph.i.i ] ; 5 uses
  %i.hw = load ptr, ptr %i.bo, align 8, !tbaa !447 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i208, %i.hw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i ], [ %.pr.i208, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit ] ; 3 uses
  %i.hx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !437 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !439
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hx to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ic) #57
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.id, %i.hw
  br i1 %.not.i.i.i115, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !455

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i.i, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN7testing8internal13edit_distance8EditTypeESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %.not.i.i1.i = icmp eq ptr %.pr.i208, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ie = load ptr, ptr %i.bq, align 8, !tbaa !446
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %.pr.i208 to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i208, i64 noundef %i.ih) #57
  br label %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %i.ii = load ptr, ptr %3, align 8, !tbaa !432   ; 5 uses
  %i.ij = load ptr, ptr %i.ad, align 8, !tbaa !436 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.ii, %i.ij
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i119 = phi ptr [ %i.iq, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.ii, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit ] ; 3 uses
  %i.ik = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !425 ; 3 uses
  %.not.i.i.i.i.i.i.i120 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i.i120, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i118
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !428
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #57
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.an, %.lr.ph.i.i.i118
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 24 ; 2 uses
  %.not.i.i.i121 = icmp eq ptr %i.iq, %i.ij
  br i1 %.not.i.i.i121, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i118, !llvm.loop !456

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, %_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev.exit
  %.not.i.i1.i123 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i1.i123, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ir = load ptr, ptr %i.af, align 8, !tbaa !435
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.ii to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.iu) #57
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret void

bb.ap:                                            ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gx) #57
  br label %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126

_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126: ; preds = %bb.ak, %bb.ap
  call void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #56
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111
  %.pn86.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit126 ], [ %.pn84, %_ZNSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS3_EED2Ev.exit111 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #56
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZNSt6vectorIdSaIdEED2Ev.exit109
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %bb.aq ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn86.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN7testing8internal13edit_distance8EditTypeESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !443    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !447  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !437 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !439
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #57
  br label %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !455

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !443
  br label %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !446
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #57
  br label %_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN7testing8internal13edit_distance8EditTypeESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !432    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !436  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !425 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !428
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #57
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !456

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !432
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !435
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #57
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.95") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.105", align 8   ; 14 uses
  %4 = alloca %"class.std::vector.105", align 8   ; 14 uses
  %5 = alloca %"class.testing::internal::edit_distance::(anonymous namespace)::InternalStrings", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !457
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !458
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.h = load ptr, ptr %1, align 8, !tbaa !238    ; 2 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

.preheader.loopexit:                              ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.promoted45.pre = load ptr, ptr %4, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.promoted45 = phi ptr [ null, %bb.a ], [ %.promoted45.pre, %.preheader.loopexit ] ; 2 uses
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.an, %.preheader.loopexit ]
  store ptr %.lcssa, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.m = load ptr, ptr %2, align 8, !tbaa !238    ; 2 uses
  %.not52 = icmp eq ptr %i.l, %i.m
  br i1 %.not52, label %._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.al, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.am, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 3 uses
  %i.r = phi ptr [ %i.h, %.lr.ph ], [ %i.aq, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.01444 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %.01444
  %i.u = invoke fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.c unwind label %.loopexit37 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.u, ptr %i.q, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !tbaa !421
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.e:                                             ; preds = %bb.c
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = sub i64 %i.w, %i.x                       ; 6 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %3, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc unwind label %.loopexit.split-lp38

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #59
          to label %.noexc17 unwind label %.loopexit37 ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store i64 %i.u, ptr %i.ah, align 8, !tbaa !46
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.s, i64 %i.y, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %.noexc17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.y) #57
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !421
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae ; 2 uses
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !459
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.d
  %i.al = phi ptr [ %i.ak, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.d ]
  %i.am = phi ptr [ %i.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.v, %bb.d ]
  %i.an = phi ptr [ %i.ag, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.ao = add nuw i64 %.01444, 1                  ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.aq = load ptr, ptr %1, align 8, !tbaa !238   ; 2 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 5
  %i.av = icmp ult i64 %i.ao, %i.au
  br i1 %i.av, label %bb.b, label %.preheader.loopexit, !llvm.loop !460

.loopexit37:                                      ; preds = %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit39 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.s, ptr %3, align 8
  br label %bb.t

.loopexit.split-lp38:                             ; preds = %bb.f
  %lpad.loopexit.split-lp40 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit27, %.preheader
  %i.aw = phi ptr [ %.promoted45, %.preheader ], [ %i.bw, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 5 uses
  store ptr %i.aw, ptr %4, align 8
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !175
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ax)
          to label %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #60
  unreachable

_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  invoke void @_ZN7testing8internal13edit_distance21CalculateOptimalEditsERKSt6vectorImSaImEES6_(ptr dead_on_unwind writable sret(%"class.std::vector.95") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.u

bb.j:                                             ; preds = %.lr.ph50, %_ZNSt6vectorImSaImEE9push_backEOm.exit27
  %i.ba = phi ptr [ %i.m, %.lr.ph50 ], [ %i.bz, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ]
  %.049 = phi i64 [ 0, %.lr.ph50 ], [ %i.bx, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 2 uses
  %i.bb = phi ptr [ %.promoted45, %.lr.ph50 ], [ %i.bw, %_ZNSt6vectorImSaImEE9push_backEOm.exit27 ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %.049
  %i.bd = invoke fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.k unwind label %.loopexit  ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !421 ; 4 uses
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !459
  %.not.i.i18 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i.i18, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !421
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit27

bb.m:                                             ; preds = %bb.k
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19

bb.n:                                             ; preds = %bb.m
  store ptr %i.bb, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc25.a unwind label %.loopexit.split-lp

.noexc25.a:                                       ; preds = %bb.n
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19: ; preds = %bb.m
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i20, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #59
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bj ; 2 uses
  store i64 %i.bd, ptr %i.bs, align 8, !tbaa !46
  %i.bt = icmp sgt i64 %i.bj, 0
  br i1 %i.bt, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22

bb.o:                                             ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr align 8 %i.bb, i64 %i.bj, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22: ; preds = %bb.o, %.noexc26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.not.i17.i.i.i23 = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i.i23, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #57
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i22
  store ptr %i.bu, ptr %i.n, align 8, !tbaa !421
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bv, ptr %i.o, align 8, !tbaa !459
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit27

_ZNSt6vectorImSaImEE9push_backEOm.exit27:         ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24, %bb.l
  %i.bw = phi ptr [ %i.br, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i24 ], [ %i.bb, %bb.l ] ; 2 uses
  %i.bx = add nuw i64 %.049, 1                    ; 2 uses
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.bz = load ptr, ptr %2, align 8, !tbaa !238   ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 5
  %i.ce = icmp ult i64 %i.bx, %i.cd
  br i1 %i.ce, label %bb.j, label %._crit_edge, !llvm.loop !461

.loopexit:                                        ; preds = %bb.j, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i19
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bb, ptr %4, align 8
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !459
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.aw to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cj) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.ck = load ptr, ptr %3, align 8, !tbaa !424   ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit29, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !459
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit29

_ZNSt6vectorImSaImEED2Ev.exit29:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret void

bb.t:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit37, %.loopexit.split-lp38
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp40, %.loopexit.split-lp38 ], [ %lpad.loopexit39, %.loopexit37 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  %.pre = load ptr, ptr %4, align 8, !tbaa !424
  br label %bb.v

bb.u:                                             ; preds = %_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStringsD2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cr = phi ptr [ %.pre, %bb.t ], [ %i.aw, %bb.u ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.cq, %bb.u ]
  %.not.i.i.i30 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorImSaImEED2Ev.exit31, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !459
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cr to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cw) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit31

_ZNSt6vectorImSaImEED2Ev.exit31:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  %i.cx = load ptr, ptr %3, align 8, !tbaa !424   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !459
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit33

_ZNSt6vectorImSaImEED2Ev.exit33:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN7testing8internal13edit_distance12_GLOBAL__N_115InternalStrings5GetIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !462

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE4findERS9_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
end_hunk_0
begin_hunk_1_@_ZN7testing9TestSuiteD2Ev:bb.a
  tail call void @_ZN7testing8TestInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.e) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 272) #57
  br label %_ZN7testing8internalL6DeleteINS_8TestInfoEEEvPT_.exit

_ZN7testing8internalL6DeleteINS_8TestInfoEEEvPT_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i, !llvm.loop !751

_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %_ZN7testing8internalL6DeleteINS_8TestInfoEEEvPT_.exit, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN7testing10TestResultD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.h) #56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !748  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !749
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #57
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_8TestInfoESaIS4_EEPFvS4_EEEvRKT_T0_.exit, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !379  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !750
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #57
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !244  ; 4 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EED2Ev.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS6_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !15
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #57
  br label %_ZNKSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS6_.exit.i

_ZNKSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS6_.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #57
  br label %_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EED2Ev.exit, %_ZNKSt14default_deleteIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS6_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS6_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing9TestSuiteD0Ev(ptr noundef nonnull align 8 dereferenceable(264) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN7testing9TestSuiteD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %0) #56
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK7testing9TestSuite11GetTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !748  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp slt i32 %1, %i.j
  br i1 %.not.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit: ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !379
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !361
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN7testing9TestSuite18GetMutableTestInfoEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !752
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !748  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 2
  %i.j = trunc i64 %i.i to i32
  %.not.i = icmp slt i32 %1, %i.j
  br i1 %.not.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit: ; preds = %bb.b
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = zext nneg i32 %i.m to i64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !379
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !361
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.thread: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing9TestSuite11AddTestInfoEPNS_8TestInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !750
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !361
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !378
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !379  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #59 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !361
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7testing8TestInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !750
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #57
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !379
  store ptr %i.u, ptr %i.b, align 8, !tbaa !378
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !750
  br label %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !752 ; 4 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !748 ; 4 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 4 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !749
  %.not.i.i = icmp eq ptr %i.ab, %i.aj
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !752
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPN7testing8TestInfoESaIS2_EE9push_backERKS2_.exit
  %i.al = icmp eq i64 %i.af, 9223372036854775804
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #59 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.af ; 2 uses
  store i32 %i.ah, ptr %i.as, align 4, !tbaa !22
  %i.at = icmp sgt i64 %i.af, 0
  br i1 %i.at, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !749
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ax) #57
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !748
  store ptr %i.au, ptr %i.aa, align 8, !tbaa !752
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ay, ptr %i.ai, align 8, !tbaa !749
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing9TestSuite3RunEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !344, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN7testing8internal15GetUnitTestImplEv.exit, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !206
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZN7testing8internal15GetUnitTestImplEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.e unwind label %bb.f, !inline_history !206

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !206 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !206
  br label %_ZN7testing8internal15GetUnitTestImplEv.exit

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.o, %bb.j ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8internal15GetUnitTestImplEv.exit:     ; preds = %bb.b, %bb.c, %bb.e
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !52 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 360 ; 2 uses
  store ptr %0, ptr %i.j, align 8, !tbaa !339
  %i.k = load atomic i8, ptr @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %_ZN7testing8UnitTest11GetInstanceEv.exit, !prof !50

bb.g:                                             ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !51
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN7testing8UnitTest11GetInstanceEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7testing8UnitTestC2Ev(ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7testing8UnitTest11GetInstanceEvE8instance)
          to label %bb.i unwind label %bb.j, !inline_history !51

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7testing8UnitTestD2Ev, ptr nonnull @_ZZN7testing8UnitTest11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #56, !inline_history !51 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7testing8UnitTest11GetInstanceEvE8instance) #56, !inline_history !51
  br label %_ZN7testing8UnitTest11GetInstanceEv.exit

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN7testing8UnitTest11GetInstanceEv.exit:         ; preds = %_ZN7testing8internal15GetUnitTestImplEv.exit, %bb.g, %bb.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7testing8UnitTest11GetInstanceEvE8instance, i64 64), align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !340  ; 8 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 528 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge

_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !25
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

bb.k:                                             ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), ptr %i.ab, align 8, !tbaa !25
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !85
  br label %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit

_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit: ; preds = %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge, %bb.k
  %i.ac = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal18OsStackTraceGetterE, i64 16), %bb.k ], [ %.pre, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ad = phi ptr [ %i.ab, %bb.k ], [ %i.z, %_ZN7testing8UnitTest11GetInstanceEv.exit._ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit_crit_edge ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  tail call void @_ZN7testing8internal35HandleExceptionsInMethodIfSupportedINS_9TestSuiteEvEET0_PT_MS4_FS3_vEPKc(ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN7testing9TestSuite17RunSetUpTestSuiteEv to i64), i64 0, ptr noundef nonnull @.str.125)
  %i.ag = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #56
  %i.ah = sdiv i64 %i.ag, 1000000
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !753
  %i.aj = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !378
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !379 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, label %.loopexit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph: ; preds = %_ZN7testing8internal12UnitTestImpl21os_stack_trace_getterEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph, %_ZNK7testing10TestResult6FailedEv.exit.thread
  %indvars.iv50 = phi i64 [ 1, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next51, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %indvars.iv.next, %_ZNK7testing10TestResult6FailedEv.exit.thread ] ; 6 uses
  %i.aw = phi ptr [ %i.an, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.lr.ph ], [ %.pre57, %_ZNK7testing10TestResult6FailedEv.exit.thread ]
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !752
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !748 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %sext = shl i64 %i.bb, 30
  %i.bc = ashr i64 %sext, 32
  %.not.i.i19 = icmp slt i64 %indvars.iv, %i.bc
  tail call void @llvm.assume(i1 %.not.i.i19)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !361
  tail call void @_ZN7testing8TestInfo3RunEv(ptr noundef nonnull align 8 dereferenceable(272) %i.bi)
  %i.bj = load i8, ptr @_ZN7testing21FLAGS_gtest_fail_fastE, align 1, !tbaa !69, !range !70, !noundef !71
  %i.bk = trunc nuw i8 %i.bj to i1
  %.pre57 = load ptr, ptr %i.ak, align 8, !tbaa !379 ; 5 uses
  br i1 %i.bk, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21, label %_ZNK7testing10TestResult6FailedEv.exit.thread

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i21: ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !752
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !748 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %sext61 = shl i64 %i.bp, 30
  %i.bq = ashr i64 %sext61, 32
  %.not.i.i20 = icmp slt i64 %indvars.iv, %i.bq
  tail call void @llvm.assume(i1 %.not.i.i20)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !22 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre57, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !361 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !306
end_hunk_1
begin_hunk_2_@_ZN7testing8internal26BriefUnitTestResultPrinter18OnTestIterationEndERKNS_8UnitTestEi:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.el, %i.ej
  br i1 %.not.i.i.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !357

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i.i: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i.i.i
  %.not.i.i.i45 = icmp eq i32 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i45, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i.i, label %_ZNK7testing8UnitTest6PassedEv.exit

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i.i: ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.cv, i64 432
  %i.en = getelementptr inbounds nuw i8, ptr %i.cv, i64 440
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !306
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !314 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 112               ; 5 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.preheader.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i.i
  %wide.trip.count.i.i.i.i = and i64 %i.et, 2147483647
  br label %.lr.ph.i.i.i.i46

bb.j:                                             ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond16.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond16.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i46, !llvm.loop !365

.lr.ph.i.i.i.i46:                                 ; preds = %bb.j, %.lr.ph.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.j ] ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i.i, %i.et
  br i1 %exitcond.not.i.i.i.i, label %bb.k, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i.i46
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.et, i64 noundef %i.et) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i46
  %i.ew = getelementptr inbounds nuw [112 x i8], ptr %i.ep, i64 %indvars.iv.i.i.i.i
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !328
  %i.ey = add i32 %i.ex, -3
  %spec.select.i.i1.i.i.i = icmp ult i32 %i.ey, -2
  br i1 %spec.select.i.i1.i.i.i, label %bb.j, label %_ZNK7testing8UnitTest6PassedEv.exit

.loopexit:                                        ; preds = %bb.j, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i.i.i
  %putchar15 = call i32 @putchar(i32 10)          ; 0 uses
  br label %_ZNK7testing8UnitTest6PassedEv.exit

_ZNK7testing8UnitTest6PassedEv.exit:              ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i.i.i, %.loopexit
  %i.ez = icmp eq i32 %i.dx, 1
  %i.fa = select i1 %i.ez, ptr @.str.166, ptr @.str.167
  call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 3, ptr noundef nonnull @.str.176, i32 noundef %i.dx, ptr noundef nonnull %i.fa)
  br label %_ZNK7testing8UnitTest30reportable_disabled_test_countEv.exit.thread

_ZNK7testing8UnitTest30reportable_disabled_test_countEv.exit.thread: ; preds = %bb.g, %_ZNK7testing8UnitTest6PassedEv.exit, %_ZNK7testing8UnitTest30reportable_disabled_test_countEv.exit
  %i.fb = load ptr, ptr @stdout, align 8, !tbaa !37
  %i.fc = call i32 @fflush(ptr noundef %i.fb)     ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7testing8internal17TestEventRepeaterD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7testing8internal17TestEventRepeaterE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !817  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !817  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit
  %.sroa.02.06.i.i = phi ptr [ %i.j, %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.06.i.i, align 8, !tbaa !819 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #56, !inline_history !820
  br label %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit

_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !821

_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split: ; preds = %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !822
  br label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit

_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit: ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !824
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EED2Ev.exit: ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7testing8internal17TestEventRepeaterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7testing8internal17TestEventRepeaterE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !817  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !817  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not5.i.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i
  %.sroa.02.06.i.i.i = phi ptr [ %i.j, %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.02.06.i.i.i, align 8, !tbaa !819 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #56, !inline_history !825
  br label %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i

_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !821

_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split.i: ; preds = %_ZN7testing8internalL6DeleteINS_17TestEventListenerEEEvPT_.exit.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !822
  br label %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit.i

_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit.i: ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal17TestEventRepeaterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !824
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #57, !inline_history !826
  br label %_ZN7testing8internal17TestEventRepeaterD2Ev.exit

_ZN7testing8internal17TestEventRepeaterD2Ev.exit: ; preds = %_ZN7testing8internal7ForEachISt6vectorIPNS_17TestEventListenerESaIS4_EEPFvS4_EEEvRKT_T0_.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #57
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal17TestEventRepeater6AppendEPNS_17TestEventListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !827  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !824
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8, !tbaa !819
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !827
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !822  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #59 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store ptr %1, ptr %i.s, align 8, !tbaa !819
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !824
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !822
  store ptr %i.u, ptr %i.b, align 8, !tbaa !827
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.y, ptr %i.d, align 8, !tbaa !824
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN7testing8internal17TestEventRepeater7ReleaseEPNS_17TestEventListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readnone captures(address, ret: address, provenance) %1) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !827  ; 6 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !822  ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.0921 = phi i64 [ %i.t, %bb.g ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0921
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !819
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %sext = shl i64 %.0921, 32
  %i.l = ashr exact i64 %sext, 29
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.e, %i.o                       ; 3 uses
  %i.q = icmp sgt i64 %i.p, 8
  br i1 %i.q, label %bb.d, label %bb.e, !prof !828

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !827
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 8
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !819
  store ptr %i.s, ptr %i.m, align 8, !tbaa !819
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.t = add nuw i64 %.0921, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !829

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.u = phi ptr [ %i.c, %bb.f ], [ %i.c, %bb.e ], [ %.pre.i.i, %bb.d ], [ %i.c, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -8
  store ptr %i.v, ptr %i.b, align 8, !tbaa !827
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.h
  %i.w = phi ptr [ %1, %bb.h ], [ null, %bb.a ], [ null, %bb.g ]
  ret ptr %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal17TestEventRepeater18OnTestProgramStartERKNS_8UnitTestE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !830, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !827
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !822  ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi ptr [ %i.p, %.lr.ph ], [ %i.g, %.preheader ]
  %.04 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !819  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !827
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !822  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !836

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal17TestEventRepeater24OnEnvironmentsSetUpStartERKNS_8UnitTestE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !830, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !827
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !822  ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi ptr [ %i.p, %.lr.ph ], [ %i.g, %.preheader ]
  %.04 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !819  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %i.n = add nuw i64 %.04, 1                      ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !827
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !822  ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = icmp ult i64 %i.n, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !837

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7testing8internal17TestEventRepeater15OnTestCaseStartERKNS_9TestSuiteE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !830, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !827
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !822  ; 2 uses
  %.not = icmp eq ptr %i.f, %i.g
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.h = phi ptr [ %i.p, %.lr.ph ], [ %i.g, %.preheader ]
  %.04 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.04
end_hunk_2
begin_hunk_3_@_ZN7testing8internal17StreamingListener12SocketWriter14MakeConnectionEv:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ad = phi ptr [ %.pre32, %._crit_edge.loopexit ], [ %.030, %bb.i ]
  call void @freeaddrinfo(ptr noundef %i.ad) #56
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !1155
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.m, label %bb.o

.lr.ph:                                           ; preds = %bb.i, %bb.l
  %.031 = phi ptr [ %.0, %bb.l ], [ %.030, %bb.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1163
  %i.ai = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1158
  %i.ak = getelementptr inbounds nuw i8, ptr %.031, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1164
  %i.am = call i32 @socket(i32 noundef %i.ah, i32 noundef %i.aj, i32 noundef %i.al) #56 ; 3 uses
  store i32 %i.am, ptr %i.b, align 8, !tbaa !1155
  %.not18 = icmp eq i32 %i.am, -1
  br i1 %.not18, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.031, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1165
  %i.ap = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1166
  %i.ar = call i32 @connect(i32 noundef %i.am, ptr noundef %i.ao, i32 noundef %i.aq)
  %i.as = icmp eq i32 %i.ar, -1
  %.pre = load i32, ptr %i.b, align 8, !tbaa !1155 ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = call i32 @close(i32 noundef %.pre)      ; 0 uses
  store i32 -1, ptr %i.b, align 8, !tbaa !1155
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k, %bb.j
  %i.au = phi i32 [ -1, %.lr.ph ], [ -1, %bb.k ], [ %.pre, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %.0 = load ptr, ptr %i.av, align 8, !tbaa !1162 ; 2 uses
  %i.aw = icmp eq i32 %i.au, -1
  %i.ax = icmp ne ptr %.0, null
  %i.ay = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %i.ay, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1167

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef 6419)
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.277, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %bb.m
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ba, i64 noundef %i.bc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.188, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bf = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !17
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf, i64 noundef %i.bh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #56
  br label %bb.p

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.p:                                             ; preds = %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.n ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #30

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare ptr @gai_strerror(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #22

declare i32 @close(i32 noundef) local_unnamed_addr #22

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7testing8internal18OsStackTraceGetter17CurrentStackTraceB5cxx11Eii(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 %2, i32 %3) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN7testing8internal18OsStackTraceGetter16UponLeavingGTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing18TestEventListenersC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #59 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7testing8internal17TestEventRepeaterE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !830
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !340
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing18TestEventListenersD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !340    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !340    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !827  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !824
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.d, align 8, !tbaa !819
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.c, align 8, !tbaa !827
  br label %_ZN7testing8internal17TestEventRepeater6AppendEPNS_17TestEventListenerE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !822  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #59 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !819
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !824
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !822
  store ptr %i.v, ptr %i.c, align 8, !tbaa !827
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.e, align 8, !tbaa !824
  br label %_ZN7testing8internal17TestEventRepeater6AppendEPNS_17TestEventListenerE.exit

_ZN7testing8internal17TestEventRepeater6AppendEPNS_17TestEventListenerE.exit: ; preds = %bb.b, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(address, ret: address, provenance) %1) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1168
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1168
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1169
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !1169
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !340    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !827  ; 6 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !822  ; 4 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %_ZN7testing8internal17TestEventRepeater7ReleaseEPNS_17TestEventListenerE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %.0921.i = phi i64 [ %i.aa, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0921.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !819
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i
  %sext.i = shl i64 %.0921.i, 32
  %i.s = ashr exact i64 %sext.i, 29
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 %i.s ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not.i.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.l, %i.v                       ; 3 uses
  %i.x = icmp sgt i64 %i.w, 8
  br i1 %i.x, label %bb.h, label %bb.i, !prof !828

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !827
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.w, 8
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !819
  store ptr %i.z, ptr %i.t, align 8, !tbaa !819
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i64 %.0921.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.o
  br i1 %exitcond.not.i, label %_ZN7testing8internal17TestEventRepeater7ReleaseEPNS_17TestEventListenerE.exit, label %.lr.ph.i, !llvm.loop !829

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.ab = phi ptr [ %i.j, %bb.j ], [ %i.j, %bb.i ], [ %.pre.i.i.i, %bb.h ], [ %i.j, %bb.f ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !827
  br label %_ZN7testing8internal17TestEventRepeater7ReleaseEPNS_17TestEventListenerE.exit

_ZN7testing8internal17TestEventRepeater7ReleaseEPNS_17TestEventListenerE.exit: ; preds = %bb.k, %bb.e, %bb.l
  %i.ad = phi ptr [ %1, %bb.l ], [ null, %bb.e ], [ null, %bb.k ]
  ret ptr %i.ad
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing18TestEventListeners23SetDefaultResultPrinterEPNS_17TestEventListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1168 ; 5 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !1168
  %i.c = load ptr, ptr %0, align 8, !tbaa !340    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !827  ; 6 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !822  ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.preheader.i.i
  %.0921.i.i = phi i64 [ %i.w, %bb.h ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0921.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !819
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph.i.i
  %sext.i.i = shl i64 %.0921.i.i, 32
  %i.o = ashr exact i64 %sext.i.i, 29
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i.i.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.h, %i.r                       ; 3 uses
  %i.t = icmp sgt i64 %i.s, 8
  br i1 %i.t, label %bb.e, label %bb.f, !prof !828

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !827
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.s, 8
  br i1 %i.u, label %bb.g, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !819
  store ptr %i.v, ptr %i.p, align 8, !tbaa !819
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw i64 %.0921.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.k
  br i1 %exitcond.not.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %.lr.ph.i.i, !llvm.loop !829

_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.x = phi ptr [ %i.f, %bb.g ], [ %i.f, %bb.f ], [ %.pre.i.i.i.i, %bb.e ], [ %i.f, %bb.c ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  store ptr %i.y, ptr %i.e, align 8, !tbaa !827
  %i.z = icmp eq ptr %i.b, null
  br i1 %i.z, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #56
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread

_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread: ; preds = %bb.h, %bb.b, %bb.i, %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !1168
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread
  %i.ad = load ptr, ptr %0, align 8, !tbaa !340   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !827 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !824
  %.not.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %1, ptr %i.ag, align 8, !tbaa !819
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !827
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !822 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #59 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %1, ptr %i.aw, align 8, !tbaa !819
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.n, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.n:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.n, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !824
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.av, ptr %i.ae, align 8, !tbaa !822
  store ptr %i.ay, ptr %i.af, align 8, !tbaa !827
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.ah, align 8, !tbaa !824
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit: ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.k, %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing18TestEventListeners22SetDefaultXmlGeneratorEPNS_17TestEventListenerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1169 ; 6 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1168
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !1168
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !1169
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !340    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !827  ; 6 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !822  ; 4 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.preheader.i.i
  %.0921.i.i = phi i64 [ %i.z, %bb.k ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.0921.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !819
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph.i.i
  %sext.i.i = shl i64 %.0921.i.i, 32
  %i.r = ashr exact i64 %sext.i.i, 29
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.i
  br i1 %.not.i.i.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.k, %i.u                       ; 3 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.h, label %bb.i, !prof !828

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr nonnull align 8 %i.t, i64 %i.v, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !827
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.i:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.j, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !819
  store ptr %i.y, ptr %i.s, align 8, !tbaa !819
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = add nuw i64 %.0921.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.n
  br i1 %exitcond.not.i.i, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %.lr.ph.i.i, !llvm.loop !829

_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %i.aa = phi ptr [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre.i.i.i.i, %bb.h ], [ %i.i, %bb.f ]
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !827
  %i.ac = icmp eq ptr %i.b, null
  br i1 %i.ac, label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #56
  br label %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread

_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread: ; preds = %bb.k, %bb.e, %bb.l, %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !1169
  %.not7 = icmp eq ptr %1, null
  br i1 %.not7, label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread
  %i.ag = load ptr, ptr %0, align 8, !tbaa !340   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !827 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !824
  %.not.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %1, ptr %i.aj, align 8, !tbaa !819
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !827
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

bb.o:                                             ; preds = %bb.m
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !822 ; 4 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.p, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.o
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #59 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %1, ptr %i.az, align 8, !tbaa !819
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.q, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.q, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !824
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.be) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !822
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !827
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bf, ptr %i.ak, align 8, !tbaa !824
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit: ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.n, %_ZN7testing18TestEventListeners7ReleaseEPNS_17TestEventListenerE.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7testing18TestEventListeners22EventForwardingEnabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !340
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !830, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN7testing18TestEventListeners23SuppressEventForwardingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !340
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !830
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest27successful_test_suite_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i
  %i.g = phi ptr [ %i.o, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ %i.f, %bb.a ]
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ 0, %bb.a ]
  %.sroa.04.08.i.i = phi ptr [ %i.q, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !343 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !344, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.h)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !342
  br label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i

_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.o = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.p = phi i32 [ 0, %.lr.ph.i.i ], [ %i.n, %bb.b ]
  %spec.select.i.i = add nuw nsw i32 %i.p, %.09.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit, label %.lr.ph.i.i, !llvm.loop !357

_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit: ; preds = %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ]
  ret i32 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest23failed_test_suite_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i
  %i.g = phi ptr [ %i.n, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i ], [ %i.f, %bb.a ]
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i ], [ 0, %bb.a ]
  %.sroa.04.08.i.i = phi ptr [ %i.p, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !343 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !344, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.h)
  %i.m = zext i1 %i.l to i32
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !342
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.n = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.o = phi i32 [ 0, %.lr.ph.i.i ], [ %i.m, %bb.b ]
  %spec.select.i.i = add nuw nsw i32 %i.o, %.09.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit, label %.lr.ph.i.i, !llvm.loop !357

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i ]
  ret i32 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest26successful_test_case_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i
  %i.g = phi ptr [ %i.o, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ %i.f, %bb.a ]
  %.09.i.i = phi i32 [ %spec.select.i.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ 0, %bb.a ]
  %.sroa.04.08.i.i = phi ptr [ %i.q, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !343 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !344, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.h)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !342
  br label %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i

_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.o = phi ptr [ %i.g, %.lr.ph.i.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.p = phi i32 [ 0, %.lr.ph.i.i ], [ %i.n, %bb.b ]
  %spec.select.i.i = add nuw nsw i32 %i.p, %.09.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.o
  br i1 %.not.i.i, label %_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit, label %.lr.ph.i.i, !llvm.loop !357

_ZNK7testing8internal12UnitTestImpl27successful_test_suite_countEv.exit: ; preds = %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %spec.select.i.i, %_ZN7testing8internalL15TestSuitePassedEPKNS_9TestSuiteE.exit.i ]
  ret i32 %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK7testing8UnitTest22failed_test_case_countEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i
end_hunk_3
begin_hunk_4_@_ZNK7testing8UnitTest6FailedEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !342  ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i
  %i.g = phi ptr [ %i.n, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i ], [ %i.f, %bb.a ]
  %.09.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i ], [ 0, %bb.a ]
  %.sroa.04.08.i.i.i = phi ptr [ %i.p, %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !343 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !344, !range !70, !noundef !71
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = tail call noundef zeroext i1 @_ZNK7testing9TestSuite6FailedEv(ptr noundef nonnull align 8 dereferenceable(264) %i.h)
  %i.m = zext i1 %i.l to i32
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !342
  br label %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i

_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.n = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.o = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.m, %bb.b ]
  %spec.select.i.i.i = add nuw nsw i32 %i.o, %.09.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !357

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i: ; preds = %_ZN7testing8internalL15TestSuiteFailedEPKNS_9TestSuiteE.exit.i.i
  %.not.i = icmp eq i32 %spec.select.i.i.i, 0
  br i1 %.not.i, label %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i, label %_ZNK7testing8internal12UnitTestImpl6FailedEv.exit

_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i: ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !306
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !314  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 112                 ; 5 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %_ZNK7testing8internal12UnitTestImpl6FailedEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i
  %wide.trip.count.i.i = and i64 %i.x, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.x
  br i1 %exitcond.not.i.i, label %bb.c, label %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.605, i64 noundef %i.x, i64 noundef %i.x) #58
  unreachable

_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.t, i64 %indvars.iv.i.i
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !328
  %i.ac = add i32 %i.ab, -1
  %spec.select.i.i1.i = icmp ult i32 %i.ac, 2     ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond16.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  %or.cond = select i1 %spec.select.i.i1.i, i1 true, i1 %exitcond16.not.i.i
  br i1 %or.cond, label %_ZNK7testing8internal12UnitTestImpl6FailedEv.exit, label %.lr.ph.i.i, !llvm.loop !365

_ZNK7testing8internal12UnitTestImpl6FailedEv.exit: ; preds = %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i
  %i.ad = phi i1 [ true, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.i ], [ false, %_ZNK7testing8internal12UnitTestImpl23failed_test_suite_countEv.exit.thread.i ], [ %spec.select.i.i1.i, %_ZNK7testing10TestResult17GetTestPartResultEi.exit.i.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK7testing8UnitTest11GetTestCaseEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %_ZNK7testing8internal12UnitTestImpl11GetTestCaseEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !752
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !748  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %.not.i.i.i = icmp slt i32 %1, %i.l
  br i1 %.not.i.i.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, label %_ZNK7testing8internal12UnitTestImpl11GetTestCaseEi.exit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i: ; preds = %bb.b
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK7testing8internal12UnitTestImpl11GetTestCaseEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !359
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !343
  br label %_ZNK7testing8internal12UnitTestImpl11GetTestCaseEi.exit

_ZNK7testing8internal12UnitTestImpl11GetTestCaseEi.exit: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i.i ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN7testing8UnitTest19GetMutableTestSuiteEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %_ZN7testing8internal12UnitTestImpl19GetMutableSuiteCaseEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !752
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !748  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %.not.i.i = icmp slt i32 %1, %i.l
  br i1 %.not.i.i, label %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, label %_ZN7testing8internal12UnitTestImpl19GetMutableSuiteCaseEi.exit

_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i: ; preds = %bb.b
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZN7testing8internal12UnitTestImpl19GetMutableSuiteCaseEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.r = zext nneg i32 %i.o to i64
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !359
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !343
  br label %_ZN7testing8internal12UnitTestImpl19GetMutableSuiteCaseEi.exit

_ZN7testing8internal12UnitTestImpl19GetMutableSuiteCaseEi.exit: ; preds = %bb.a, %bb.b, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i, %bb.c
  %i.v = phi ptr [ %i.u, %bb.c ], [ null, %_ZN7testing8internal12GetElementOrIiEET_RKSt6vectorIS2_SaIS2_EEiS2_.exit.i ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7testing8UnitTest14AddEnvironmentEPNS_11EnvironmentE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef returned %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1170 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1171
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.f, align 8, !tbaa !1172
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !1170
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !1174 ; 4 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 5 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.e, label %_ZNKSt6vectorIPN7testing11EnvironmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing11EnvironmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #59 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !1172
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.f, label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN7testing11EnvironmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.j, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN7testing11EnvironmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.not.i17.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !1171
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aa) #57
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !1174
  store ptr %i.x, ptr %i.e, align 8, !tbaa !1170
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !1171
  br label %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7testing11EnvironmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret ptr %1
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl14RecordPropertyERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17
  store i8 0, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.209, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !338
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  br label %bb.g

bb.c:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !15
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %i.h

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !339
  %.not4 = icmp eq ptr %i.n, null
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.198, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5: ; preds = %bb.e
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !339
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.233, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6 unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.0 = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6 ]
  invoke void @_ZN7testing10TestResult14RecordPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_12TestPropertyE(ptr noundef nonnull align 8 dereferenceable(128) %.0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.h
  %i.v = load i64, ptr %i.a, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing12TestPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = load ptr, ptr %1, align 8, !tbaa !9      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i64 %i.f, ptr %i.b, align 8, !tbaa !46
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !9
  %i.i = load i64, ptr %i.b, align 8, !tbaa !46
  store i64 %i.i, ptr %i.c, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !15
  store i8 %i.k, ptr %i.j, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = load ptr, ptr %0, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !16
  %i.r = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.t, ptr %i.a, align 8, !tbaa !46
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.v, ptr %i.p, align 8, !tbaa !9
  %i.w = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.w, ptr %i.q, align 8, !tbaa !15
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.x = phi ptr [ %i.v, %.noexc ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.t, label %bb.e [
    i64 1, label %bb.d
end_hunk_4
begin_hunk_5_@_ZN7testing8internal12UnitTestImpl18ConfigureXmlOutputEv:bb.a

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread48: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread48
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret void

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.h, %bb.r, %bb.f
  %.pn19.pn = phi { ptr, i32 } [ %.pn1943, %bb.h ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.v, %bb.f ], [ %.pn1747, %bb.n ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %bb.r ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ]
  %i.bf = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.s
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !15
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7testing8internal12UnitTestImpl24ConfigureStreamingOutputEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !17
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i8 noundef signext 58, i64 noundef 0) #56 ; 4 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.g = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #59 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !17, !noalias !1222
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !16, !alias.scope !1222
  %i.j = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !9, !noalias !1222 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56, !noalias !1222
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !46, !noalias !1222
  %i.k = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.k, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.l, ptr %1, align 8, !tbaa !9, !alias.scope !1222
  %i.m = load i64, ptr %i.b, align 8, !tbaa !46, !noalias !1222
  store i64 %i.m, ptr %i.i, align 8, !tbaa !15, !alias.scope !1222
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.j, align 1, !tbaa !15
  store i8 %i.o, ptr %i.n, align 1, !tbaa !15
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.j, i64 %spec.select.i.i.i, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !46, !noalias !1222 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !17, !alias.scope !1222
  %i.r = load ptr, ptr %1, align 8, !tbaa !9, !alias.scope !1222
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56, !noalias !1222
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.t = add nuw i64 %i.e, 1                      ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !17, !noalias !1225 ; 3 uses
  %.not51 = icmp ult i64 %i.e, %i.u
  br i1 %.not51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.592, ptr noundef nonnull @.str.597, i64 noundef %i.t, i64 noundef %i.u) #58
          to label %.noexc19 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread

.noexc19:                                         ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !16, !alias.scope !1225
  %i.w = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !9, !noalias !1225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  %i.y = sub nuw i64 %i.u, %i.t                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56, !noalias !1225
  store i64 %i.y, ptr %i.a, align 8, !tbaa !46, !noalias !1225
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc10.i.i18, label %._crit_edge.i.i.i17

.noexc10.i.i18:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc20 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ; 2 uses

.noexc20:                                         ; preds = %.noexc10.i.i18
  store ptr %i.aa, ptr %2, align 8, !tbaa !9, !alias.scope !1225
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !1225
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !15, !alias.scope !1225
  br label %._crit_edge.i.i.i17

._crit_edge.i.i.i17:                              ; preds = %.noexc20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ac = phi ptr [ %i.aa, %.noexc20 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.y, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i17
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !15
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !15
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i17
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !1225 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !17, !alias.scope !1225
  %i.ag = load ptr, ptr %2, align 8, !tbaa !9, !alias.scope !1225
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56, !noalias !1225
  invoke void @_ZN7testing8internal17StreamingListenerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !340 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !827 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !824
  %.not.i.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.g, ptr %i.al, align 8, !tbaa !819
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !827
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !822 ; 4 uses
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.n, label %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc22 unwind label %bb.q

.noexc22:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #59
          to label %.noexc23 unwind label %bb.q   ; 4 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !819
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.o, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.o:                                             ; preds = %.noexc23
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.o, %.noexc23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.be = load ptr, ptr %i.am, align 8, !tbaa !824
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bg) #57
  br label %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !822
  store ptr %i.bd, ptr %i.ak, align 8, !tbaa !827
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !824
  br label %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit

_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit: ; preds = %_ZNSt6vectorIPN7testing17TestEventListenerESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.l
  %i.bi = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.v
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit
  %i.bk = load i64, ptr %i.v, align 8, !tbaa !15
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing18TestEventListeners6AppendEPNS_17TestEventListenerE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.bm = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.i
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load i64, ptr %i.i, align 8, !tbaa !15
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread: ; preds = %.noexc10.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.n, %bb.j
  %.0 = phi i1 [ false, %_ZNKSt6vectorIPN7testing17TestEventListenerESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ true, %bb.j ], [ false, %bb.n ] ; 2 uses
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bs = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.v
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.q
  %i.bu = load i64, ptr %i.v, align 8, !tbaa !15
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.bw = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.g, %.noexc10.i.i18
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  %i.bz = load ptr, ptr %1, align 8, !tbaa !9     ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.i
  br i1 %i.ca, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !15
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #57
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !15
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ce) #57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br i1 %.0, label %bb.r, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br i1 %.0, label %bb.r, label %bb.u

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.thread
  %.pn.pn39.ph = phi { ptr, i32 } [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.thread ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.thread ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn.pn39 = phi { ptr, i32 } [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn.pn39.ph, %.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 16) #57
  br label %bb.u

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef 7100)
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.286, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.cg = load ptr, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, align 8, !tbaa !9
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing28FLAGS_gtest_stream_result_toB5cxx11E, i64 8), align 8, !tbaa !17
  %i.ci = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.cg, i64 noundef %i.ch)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.t

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull @.str.285, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %bb.v

bb.t:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.r, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn39, %bb.r ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.ck, %bb.t ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ]
  resume { ptr, i32 } %.pn.pn.pn

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal17StreamingListenerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN7testing8internal17StreamingListenerE, i64 16), ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #59 ; 3 uses
  invoke void @_ZN7testing8internal17StreamingListener12SocketWriterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.b, align 8, !tbaa !1228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 36, ptr %i.a, align 8, !tbaa !46
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  store ptr %i.e, ptr %3, align 8, !tbaa !9
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.e, ptr noundef nonnull align 1 dereferenceable(36) @.str.501, i64 36, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1228
  invoke void @_ZN7testing8internal17StreamingListener20AbstractSocketWriter6SendLnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN7testing8internal17StreamingListener6SendLnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.c

_ZN7testing8internal17StreamingListener6SendLnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %.noexc
  %i.j = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal17StreamingListener6SendLnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #57
end_hunk_5
begin_hunk_6_@_ZN7testing8internal12UnitTestImpl12GetTestSuiteEPKcS3_PFvvES5_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  invoke void @_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing9TestSuiteESt6vectorIS5_SaIS5_EEEEENS3_8internal15TestSuiteNameIsEET_SE_SE_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !15
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #57
  br label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit

_ZN7testing8internal15TestSuiteNameIsD2Ev.exit:   ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.i
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit
  %i.am = load i64, ptr %i.i, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !342, !noalias !1239
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %5, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i, %i.ao
  br i1 %.not, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !343
  br label %bb.ah

bb.l:                                             ; preds = %.noexc.i, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.m:                                             ; preds = %.noexc.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25

bb.n:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.u
  br i1 %i.av, label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.n
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #57
  br label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25

_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23, %bb.m
  %.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23 ], [ %i.at, %bb.n ] ; 2 uses
  %i.ay = load ptr, ptr %9, align 8, !tbaa !9     ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.i
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25
  %i.ba = load i64, ptr %i.i, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #56
  br label %bb.ai

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #56
  %i.bc = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #59 ; 5 uses
  invoke void @_ZN7testing9TestSuiteC2EPKcS2_PFvvES4_(ptr noundef nonnull align 8 dereferenceable(264) %i.bc, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #56
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.bd, ptr %10, align 8, !tbaa !16
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.be, ptr %i.a, align 8, !tbaa !46
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %.noexc.i30, label %._crit_edge.i.i29

.noexc.i30:                                       ; preds = %bb.p
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc32 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ; 2 uses

.noexc32:                                         ; preds = %.noexc.i30
  store ptr %i.bg, ptr %10, align 8, !tbaa !9
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.bh, ptr %i.bd, align 8, !tbaa !15
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc32, %bb.p
  %i.bi = phi ptr [ %i.bg, %.noexc32 ], [ %i.bd, %bb.p ] ; 2 uses
  switch i64 %i.be, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i29
  %i.bj = load i8, ptr %1, align 1, !tbaa !15
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr nonnull align 1 %1, i64 %i.be, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i29
  %i.bk = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !17
  %i.bm = load ptr, ptr %10, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.bo = call noundef zeroext i1 @_ZN7testing8internal15UnitTestOptions13MatchesFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @_ZN7testingL21kDeathTestSuiteFilterE)
  %i.bp = load ptr, ptr %10, align 8, !tbaa !9    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.s
  %i.br = load i64, ptr %i.bd, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #56
  br i1 %i.bo, label %bb.t, label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1178
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !1178
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !342
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = call ptr @_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit

bb.u:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 264) #57
  br label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %.noexc.i30
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #56
  br label %bb.ag

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !358 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1210
  %.not.i = icmp eq ptr %i.cc, %i.ce
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bc, ptr %i.cc, align 8, !tbaa !343
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cf, ptr %i.f, align 8, !tbaa !358
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit

bb.x:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !359 ; 4 uses
  %i.ch = ptrtoint ptr %i.cc to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 5 uses
  %i.ck = icmp eq i64 %i.cj, 9223372036854775800
  br i1 %i.ck, label %bb.y, label %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.cl = ashr exact i64 %i.cj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 1)
  %i.cm = add nsw i64 %.sroa.speculated.i.i.i, %i.cl ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.cl
  %i.co = call i64 @llvm.umin.i64(i64 %i.cm, i64 1152921504606846975)
  %i.cp = select i1 %i.cn, i64 1152921504606846975, i64 %i.co ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cp, 3
  %i.cr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #59 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %i.cj ; 2 uses
  store ptr %i.bc, ptr %i.cs, align 8, !tbaa !343
  %i.ct = icmp sgt i64 %i.cj, 0
  br i1 %i.ct, label %bb.z, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.z:                                             ; preds = %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr align 8 %i.cg, i64 %i.cj, i1 false)
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.z, %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.cv = load ptr, ptr %i.cd, align 8, !tbaa !1210
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cx) #57
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.cr, ptr %i.e, align 8, !tbaa !359
  store ptr %i.cu, ptr %i.f, align 8, !tbaa !358
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cy, ptr %i.cd, align 8, !tbaa !1210
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.w, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !752 ; 4 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !748 ; 4 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = sub i64 %i.dd, %i.de                    ; 5 uses
  %i.dg = ashr exact i64 %i.df, 2                 ; 4 uses
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !749
  %.not.i.i = icmp eq ptr %i.db, %i.dj
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit
  store i32 %i.dh, ptr %i.db, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.dk, ptr %i.da, align 8, !tbaa !752
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE9push_backERKS2_.exit
  %i.dl = icmp eq i64 %i.df, 9223372036854775804
  br i1 %i.dl, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dg ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dg
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 2305843009213693951)
  %i.dp = select i1 %i.dn, i64 2305843009213693951, i64 %i.do ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 2
  %i.dr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #59 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.df ; 2 uses
  store i32 %i.dh, ptr %i.ds, align 4, !tbaa !22
  %i.dt = icmp sgt i64 %i.df, 0
  br i1 %i.dt, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dr, ptr align 4 %i.dc, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.dv = load ptr, ptr %i.di, align 8, !tbaa !749
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dx) #57
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dr, ptr %i.cz, align 8, !tbaa !748
  store ptr %i.du, ptr %i.da, align 8, !tbaa !752
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.dy, ptr %i.di, align 8, !tbaa !749
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %bb.u
  %.pn17.pn = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.ca, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #56
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %bb.k
  %.0 = phi ptr [ %i.aq, %bb.k ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  ret ptr %.0

bb.ai:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ag ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #56
  resume { ptr, i32 } %.pn17.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing9TestSuiteESt6vectorIS5_SaIS5_EEEEENS3_8internal15TestSuiteNameIsEET_SE_SE_T0_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dereferenceable(32) %3) local_unnamed_addr #24 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 4 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.400", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_pred.400", align 8 ; 7 uses
  %8 = alloca %"class.testing::internal::TestSuiteNameIs", align 8 ; 10 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !342
  %i.d = load i64, ptr %2, align 8, !tbaa !342
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !16
  %i.f = load ptr, ptr %3, align 8, !tbaa !9      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #56
  store i64 %i.h, ptr %i.b, align 8, !tbaa !46
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !9
  %i.k = load i64, ptr %i.b, align 8, !tbaa !46
  store i64 %i.k, ptr %i.e, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !15
  store i8 %i.m, ptr %i.l, align 1, !tbaa !15
  br label %_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit

_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !17
  %i.p = load ptr, ptr %8, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.r = load ptr, ptr %8, align 8, !tbaa !9, !noalias !1242 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br i1 %i.s, label %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.thread.i, label %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.i

_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.thread.i: ; preds = %_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !1242 ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 1
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.v, i1 false)
  br label %bb.d

_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.i: ; preds = %_ZN7testing8internal15TestSuiteNameIsC2ERKS1_.exit
  %i.x = load i64, ptr %i.e, align 8, !tbaa !15, !noalias !1242
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !1242
  store i64 %i.x, ptr %i.t, align 8, !tbaa !15, !alias.scope !1242
  br label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.i, %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.thread.i
  %.sink = phi ptr [ %i.t, %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.thread.i ], [ %i.r, %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.i ] ; 3 uses
  %i.y = phi i64 [ %i.u, %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.thread.i ], [ %.pre.i, %_ZN7testing8internal15TestSuiteNameIsC2EOS1_.exit.i ] ; 5 uses
  store ptr %i.e, ptr %8, align 8, !tbaa !9, !noalias !1242
  store i64 0, ptr %i.o, align 8, !tbaa !17, !noalias !1242
  store i8 0, ptr %i.e, align 8, !tbaa !15, !noalias !1242
  store ptr %.sink, ptr %7, align 8, !tbaa !16, !alias.scope !1242
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !17, !alias.scope !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.c, ptr %4, align 8, !tbaa !342, !noalias !1245
  store i64 %i.d, ptr %5, align 8, !tbaa !342, !noalias !1245
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.aa, ptr %6, align 8, !tbaa !16, !noalias !1245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56, !noalias !1245
  store i64 %i.y, ptr %i.a, align 8, !tbaa !46, !noalias !1245
  %i.ab = icmp ugt i64 %i.y, 15
  br i1 %i.ab, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.ac, ptr %6, align 8, !tbaa !9, !noalias !1245
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !1245
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !15, !noalias !1245
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.d
  %i.ae = phi ptr [ %i.ac, %.noexc ], [ %i.aa, %bb.d ] ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.af = load i8, ptr %.sink, align 1, !tbaa !15, !noalias !1245
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !15, !noalias !1245
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %.sink, i64 %i.y, i1 false), !noalias !1245
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !1245 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !17, !noalias !1245
  %i.ai = load ptr, ptr %6, align 8, !tbaa !9, !noalias !1245
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !15, !noalias !1245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56, !noalias !1245
  invoke void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPPN7testing9TestSuiteESt6vectorIS5_SaIS5_EEEEENS1_5__ops10_Iter_predINS3_8internal15TestSuiteNameIsEEEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8 %0, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i
  %i.ak = load ptr, ptr %6, align 8, !tbaa !9, !noalias !1245 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.aa
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !15, !noalias !1245
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEEC2ERKS5_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %6, align 8, !tbaa !9, !noalias !1245 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.aa
  br i1 %i.aq, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.aa, align 8, !tbaa !15, !noalias !1245
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #57
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.at = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #57
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ay = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.e
  br i1 %i.az, label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #57
  br label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit

_ZN7testing8internal15TestSuiteNameIsD2Ev.exit:   ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1.i ], [ %i.ao, %bb.h ]
  %i.bd = load ptr, ptr %7, align 8, !tbaa !9     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %.body
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #57
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit5

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bi = load ptr, ptr %8, align 8, !tbaa !9     ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.e
  br i1 %i.bj, label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit5
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !15
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #57
  br label %_ZN7testing8internal15TestSuiteNameIsD2Ev.exit8

_ZN7testing8internal15TestSuiteNameIsD2Ev.exit8:  ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal15TestSuiteNameIsEED2Ev.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !342    ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !358  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1210
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !343
  store ptr %i.j, ptr %i.f, align 8, !tbaa !343
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !358
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !343
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343
  store ptr %i.o, ptr %i.f, align 8, !tbaa !343
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.p, ptr %i.e, align 8, !tbaa !358
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.b                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !828

bb.e:                                             ; preds = %bb.d
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.l, i64 %i.r, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !359
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.r, 8
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !343
  store ptr %i.x, ptr %i.n, align 8, !tbaa !343
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pre = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.f ], [ %.pre.pre, %bb.e ]
  store ptr %i.m, ptr %i.l, align 8, !tbaa !343
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #59 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !343
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !343
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.k, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %bb.k, %_ZNKSt6vectorIPN7testing9TestSuiteESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

bb.l:                                             ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i: ; preds = %bb.l, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !1210
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #57
  br label %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i, %bb.m
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !359
  store ptr %i.as, ptr %i.e, align 8, !tbaa !358
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !1210
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.h, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %bb.h ], [ %i.ai, %_ZNSt6vectorIPN7testing9TestSuiteESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7testing8internalL18GTestIsInitializedEv() unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !241, !noalias !1248 ; 3 uses
  %i.b = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !238, !noalias !1248 ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.e, 9223372036854775776
  br i1 %i.f, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58, !noalias !1248
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #59, !noalias !1248
  %.pre.i = load ptr, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, align 8, !tbaa !244, !noalias !1248
  %.pre1.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internalL7g_argvsB5cxx11E, i64 8), align 8, !tbaa !244, !noalias !1248
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.h = phi ptr [ %i.a, %bb.a ], [ %.pre1.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ]
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ]
  %i.j = phi ptr [ null, %bb.a ], [ %i.g, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  %i.k = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.i, ptr %i.h, ptr noundef %i.j)
          to label %_ZN7testing8internal8GetArgvsB5cxx11Ev.exit unwind label %bb.d, !noalias !1248 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.e) #57, !noalias !1248
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.l

_ZN7testing8internal8GetArgvsB5cxx11Ev.exit:      ; preds = %bb.c
  %.not4.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal8GetArgvsB5cxx11Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.j, %_ZN7testing8internal8GetArgvsB5cxx11Ev.exit ] ; 3 uses
  %i.m = load ptr, ptr %.05.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !15
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #57
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !242

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZN7testing8internal8GetArgvsB5cxx11Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.e) #57
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  %i.s = icmp ne ptr %i.k, %i.j
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7testing8internal30WriteToShardStatusFileIfNeededEv() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @getenv(ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE) #56 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.289) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_ZN7testing8internalL13ColoredPrintfENS0_12_GLOBAL__N_110GTestColorEPKcz(i32 noundef 1, ptr noundef nonnull @.str.290, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN7testingL20kTestShardStatusFileE)
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !37
  %i.e = tail call i32 @fflush(ptr noundef %i.d)  ; 0 uses
  tail call void @exit(i32 noundef 1) #63
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7testing8internal12UnitTestImpl11FilterTestsENS1_18ReactionToShardingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(601) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef nonnull @_ZN7testingL16kTestTotalShardsE, i32 noundef -1)
  %i.e = tail call noundef i32 @_ZN7testing8internal17Int32FromEnvOrDieEPKci(ptr noundef nonnull @_ZN7testingL15kTestShardIndexE, i32 noundef -1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  %i.g = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !342  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !342  ; 2 uses
  %.not138200 = icmp eq ptr %i.i, %i.k
  br i1 %.not138200, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not = icmp eq i32 %1, 1
  br label %bb.d

._crit_edge206:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.045.lcssa = phi i32 [ 0, %bb.c ], [ %.146.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i32 %.045.lcssa

bb.d:                                             ; preds = %.lr.ph205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.045203 = phi i32 [ 0, %.lr.ph205 ], [ %.146.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.047202 = phi i32 [ 0, %.lr.ph205 ], [ %.148.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.0134.0201 = phi ptr [ %i.i, %.lr.ph205 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.0134.0201, align 8, !tbaa !343 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9    ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !16
end_hunk_6
begin_hunk_7_@_ZN7testing8internal22MaxBipartiteMatchState7ComputeEv:bb.a

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #56
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

bb.i:                                             ; preds = %bb.c, %_ZNSolsEm.exit19
  %i.ab = phi ptr [ %i.m, %bb.c ], [ %.pre, %_ZNSolsEm.exit19 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !2000 ; 10 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !2001
  %i.af = load ptr, ptr %2, align 8, !tbaa !2002  ; 6 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp slt i64 %i.ad, 0
  br i1 %i.ak, label %bb.k, label %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.477) #58
          to label %.noexc26.a unwind label %.loopexit.split-lp39

.noexc26.a:                                       ; preds = %bb.k
  unreachable

_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i:          ; preds = %bb.j
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #59
          to label %.noexc27 unwind label %.loopexit38 ; 3 uses

.noexc27:                                         ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.al, i8 0, i64 %i.ad, i1 false)
  %i.an = load ptr, ptr %2, align 8, !tbaa !2002  ; 3 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !2001
  store ptr %i.al, ptr %2, align 8, !tbaa !2002
  store ptr %i.am, ptr %i.e, align 8, !tbaa !2003
  store ptr %i.am, ptr %i.d, align 8, !tbaa !2001
  %.not.i.i.i.i25 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i25, label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit, label %bb.l

bb.l:                                             ; preds = %.noexc27
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #57
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

bb.m:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !2003 ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = sub i64 %i.at, %i.ah                    ; 2 uses
  %i.av = icmp ugt i64 %i.ad, %i.au
  br i1 %i.av, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i11.i = icmp eq ptr %i.as, %i.af
  br i1 %.not.i.i.i.i11.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.au, i1 false)
  %.pre14.i = load ptr, ptr %i.e, align 8, !tbaa !2003 ; 2 uses
  %.pre15.i = load ptr, ptr %2, align 8, !tbaa !2002
  %.pre16.i = ptrtoint ptr %.pre14.i to i64
  %.pre17.i = ptrtoint ptr %.pre15.i to i64
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i: ; preds = %bb.o, %bb.n
  %.pre-phi18.i = phi i64 [ %i.ah, %bb.n ], [ %.pre17.i, %bb.o ]
  %.pre-phi.i = phi i64 [ %i.at, %bb.n ], [ %.pre16.i, %bb.o ]
  %i.aw = phi ptr [ %i.as, %bb.n ], [ %.pre14.i, %bb.o ] ; 3 uses
  %.neg.i = sub i64 %.pre-phi18.i, %.pre-phi.i
  %i.ax = add i64 %.neg.i, %i.ad                  ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.ax, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i

_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i: ; preds = %bb.p, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEcEvT_S7_RKT0_.exit.i ], [ %i.az, %bb.p ]
  store ptr %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !2003
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

bb.q:                                             ; preds = %bb.m
  %i.ba = icmp eq i64 %i.ad, 0
  br i1 %i.ba, label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 0, i64 %i.ad, i1 false)
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !2003
  br label %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i

_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i:            ; preds = %bb.r, %bb.q
  %i.bc = phi ptr [ %i.as, %bb.q ], [ %.pre.i, %bb.r ]
  %.0.i.i.i = phi ptr [ %i.af, %bb.q ], [ %i.bb, %bb.r ] ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.bc, %.0.i.i.i
  br i1 %.not.i.i24, label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i
  store ptr %.0.i.i.i, ptr %i.e, align 8, !tbaa !2003
  br label %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit

_ZNSt6vectorIcSaIcEE6assignEmRKc.exit:            ; preds = %.noexc27, %bb.l, %_ZSt24__uninitialized_fill_n_aIPcmccET_S1_T0_RKT1_RSaIT2_E.exit.i, %_ZSt6fill_nIPcmcET_S1_T0_RKT1_.exit.i, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.bd = invoke noundef zeroext i1 @_ZN7testing8internal22MaxBipartiteMatchState10TryAugmentEmPSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %.01249, ptr noundef nonnull %2)
          to label %bb.s unwind label %bb.b       ; 0 uses

bb.s:                                             ; preds = %_ZNSt6vectorIcSaIcEE6assignEmRKc.exit
  %i.be = add nuw i64 %.01249, 1                  ; 2 uses
  %i.bf = load ptr, ptr %1, align 8, !tbaa !1988  ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1994
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.c, label %._crit_edge, !llvm.loop !2004

.loopexit38:                                      ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKcRKS0_.exit.i
  %lpad.loopexit40 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

.loopexit.split-lp39:                             ; preds = %bb.k
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

._crit_edge56:                                    ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, %._crit_edge
  %.lcssa50 = phi ptr [ null, %._crit_edge ], [ %i.cn, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ]
  store ptr %.lcssa50, ptr %0, align 8
  %i.bi = load ptr, ptr %2, align 8, !tbaa !2002  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge56
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2001
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge56, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.u:                                             ; preds = %.lr.ph55, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit
  %i.bo = phi ptr [ null, %.lr.ph55 ], [ %i.cm, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 8 uses
  %i.bp = phi ptr [ %i.i, %.lr.ph55 ], [ %i.cq, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ]
  %storemerge53 = phi i64 [ 0, %.lr.ph55 ], [ %i.co, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  %i.bq = phi ptr [ null, %.lr.ph55 ], [ %i.cn, %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %storemerge53
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !46 ; 3 uses
  %i.bt = icmp eq i64 %i.bs, -1
  br i1 %i.bt, label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !2005
  %.not.i.i = icmp eq ptr %i.bo, %i.bu
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %storemerge53, ptr %i.bo, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.j, align 8, !tbaa !2008
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 5 uses
  %i.bz = icmp eq i64 %i.by, 9223372036854775792
  br i1 %i.bz, label %bb.y, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  store ptr %i.bq, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.ca = ashr exact i64 %i.by, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1)
  %i.cb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ca
  %i.cd = call i64 @llvm.umin.i64(i64 %i.cb, i64 576460752303423487)
  %i.ce = select i1 %i.cc, i64 576460752303423487, i64 %i.cd ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 4
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #59
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by ; 2 uses
  store i64 %storemerge53, ptr %i.ch, align 8
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx29, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bo
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i ], [ %i.cg, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %i.bq, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !2009
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.bo
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2013

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cg, %.noexc20 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.by) #57
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !2008
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.cl, ptr %i.k, align 8, !tbaa !2005
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.w, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.u
  %i.cm = phi ptr [ %i.bv, %bb.w ], [ %i.ck, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bo, %bb.u ]
  %i.cn = phi ptr [ %i.bq, %bb.w ], [ %i.cg, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bq, %bb.u ] ; 2 uses
  %i.co = add nuw i64 %storemerge53, 1            ; 2 uses
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !421
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !424 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3
  %i.cv = icmp ult i64 %i.co, %i.cu
  br i1 %i.cv, label %bb.u, label %._crit_edge56, !llvm.loop !2014

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bq, ptr %0, align 8
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.by) #57
  br label %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit:        ; preds = %.loopexit38, %.loopexit.split-lp39, %bb.ab, %bb.aa, %bb.b, %bb.h
  %.pn14.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.l, %bb.b ], [ %lpad.phi, %bb.ab ], [ %lpad.phi, %bb.aa ], [ %lpad.loopexit40, %.loopexit38 ], [ %lpad.loopexit.split-lp41, %.loopexit.split-lp39 ]
  %i.cw = load ptr, ptr %2, align 8, !tbaa !2002  ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIcSaIcEED2Ev.exit23, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2001
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #57
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit23

_ZNSt6vectorIcSaIcEED2Ev.exit23:                  ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal22MaxBipartiteMatchStateD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !424  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !459
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !424  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !459
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #57
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN7testing8internal11MatchMatrix9NextGraphEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #29 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1994   ; 2 uses
  %.not27 = icmp eq i64 %i.a, 0
  br i1 %.not27, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !2000 ; 2 uses
  %.not28 = icmp eq i64 %i.d, 0
  br i1 %.not28, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.e = phi i64 [ %i.o, %._crit_edge ], [ %i.a, %.preheader.lr.ph ]
  %i.f = phi i64 [ %i.p, %._crit_edge ], [ %i.d, %.preheader.lr.ph ] ; 2 uses
  %.01526 = phi i64 [ %i.q, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not24.not = icmp eq i64 %i.f, 0
  br i1 %.not24.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw i64 %.025, 1                     ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !2000 ; 3 uses
  %.not = icmp ult i64 %i.g, %i.h
  br i1 %.not, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2015

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.i = phi i64 [ %i.h, %bb.b ], [ %i.f, %.preheader ]
  %.025 = phi i64 [ %i.g, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.j = mul i64 %i.i, %.01526
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !2002
  %i.l = getelementptr i8, ptr %i.k, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 %.025    ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !15
  %.not.not = icmp eq i8 %i.n, 0                  ; 2 uses
  %. = zext i1 %.not.not to i8
  store i8 %., ptr %i.m, align 1, !tbaa !15
  br i1 %.not.not, label %.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !tbaa !1994
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.o = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.e, %.preheader ] ; 2 uses
  %i.p = phi i64 [ %i.h, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.q = add nuw i64 %.01526, 1                   ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.o
  br i1 %i.r, label %.preheader, label %.loopexit, !llvm.loop !2016

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph, %.preheader.lr.ph, %bb.a
  %i.s = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ false, %.preheader.lr.ph ], [ false, %._crit_edge ]
  ret i1 %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7testing8internal11MatchMatrix9RandomizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !1994   ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge10, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !2000 ; 2 uses
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %._crit_edge10, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.e = phi i64 [ %i.g, %._crit_edge ], [ %i.a, %.preheader.lr.ph ]
  %i.f = phi i64 [ %i.h, %._crit_edge ], [ %i.d, %.preheader.lr.ph ] ; 2 uses
  %.09 = phi i64 [ %i.i, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN7testing8internal15ExpectationBase22RetireAllPreRequisitesEv:bb.a
  %i.ai = invoke noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit49, !inline_history !1859

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc1.i, %bb.d
  %.0.i.i.i.i = phi i8 [ %i.ae, %bb.d ], [ %i.ai, %.noexc1.i ]
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc3.i unwind label %.loopexit49

.noexc3.i:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit49 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc3.i
  %i.al = load i32, ptr %2, align 4, !tbaa !1855
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.f, label %_ZN7testing8internal8GTestLogD2Ev.exit

bb.f:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ao = tail call i32 @fflush(ptr noundef %i.an) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #58
  unreachable

.loopexit49:                                      ; preds = %bb.e, %.noexc1.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc3.i
  %lpad.loopexit51 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp50:                             ; preds = %bb.c
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp50, %.loopexit49
  %lpad.phi53 = phi { ptr, i32 } [ %lpad.loopexit51, %.loopexit49 ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp50 ]
  %i.ap = extractvalue { ptr, i32 } %lpad.phi53, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #60
  unreachable

_ZN7testing8internal8GTestLogD2Ev.exit:           ; preds = %_ZNSolsEPFRSoS_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc13
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.b, %_ZN7testing8internal8GTestLogD2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 132 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !2106, !range !70, !noundef !71
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE9push_backERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 40), align 8, !tbaa !649, !range !70, !noundef !71
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.k, label %.thread.i14

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 48), align 8, !tbaa !2119
  %i.ax = tail call i64 @pthread_self() #62
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.r, label %.thread.i14

.thread.i14:                                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 1917)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %.thread.i14
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.577, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i15 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i15: ; preds = %.noexc18
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.578, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i16 unwind label %bb.q ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i16: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i15
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZNSolsEPKv.exit.i17 unwind label %bb.q ; 0 uses

_ZNSolsEPKv.exit.i17:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i16
  %i.bc = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !627 ; 6 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i22, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i23

bb.l:                                             ; preds = %_ZNSolsEPKv.exit.i17
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc.i30 unwind label %.loopexit.split-lp55

.noexc.i30:                                       ; preds = %bb.l
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i23: ; preds = %_ZNSolsEPKv.exit.i17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !628
  %.not.i1.i.i.i24 = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i25

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i23
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
          to label %.noexc1.i29 unwind label %.loopexit54

.noexc1.i29:                                      ; preds = %bb.n
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i25 unwind label %.loopexit54, !inline_history !1859

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i25: ; preds = %.noexc1.i29, %bb.m
  %.0.i.i.i.i26 = phi i8 [ %i.bl, %bb.m ], [ %i.bp, %.noexc1.i29 ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i26)
          to label %.noexc3.i27 unwind label %.loopexit54

.noexc3.i27:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i25
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %_ZNSolsEPFRSoS_E.exit.i28 unwind label %.loopexit54 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i28:                        ; preds = %.noexc3.i27
  %i.bs = load i32, ptr %1, align 4, !tbaa !1855
  %i.bt = icmp eq i32 %i.bs, 3
  br i1 %i.bt, label %bb.o, label %_ZN7testing8internal8GTestLogD2Ev.exit31

bb.o:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i28
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.bv = tail call i32 @fflush(ptr noundef %i.bu) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #58
  unreachable

.loopexit54:                                      ; preds = %bb.n, %.noexc1.i29, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i25, %.noexc3.i27
  %lpad.loopexit56 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

.loopexit.split-lp55:                             ; preds = %bb.l
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp55, %.loopexit54
  %lpad.phi58 = phi { ptr, i32 } [ %lpad.loopexit56, %.loopexit54 ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp55 ]
  %i.bw = extractvalue { ptr, i32 } %lpad.phi58, 0
  tail call void @__clang_call_terminate(ptr %i.bw) #60
  unreachable

_ZN7testing8internal8GTestLogD2Ev.exit31:         ; preds = %_ZNSolsEPFRSoS_E.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.r

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i16, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i15, %.noexc18
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit

bb.r:                                             ; preds = %bb.k, %_ZN7testing8internal8GTestLogD2Ev.exit31
  store i8 1, ptr %i.ar, align 4, !tbaa !2106
  %.not.i = icmp eq ptr %.sroa.10.1115, %.sroa.18.1114
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.m, ptr %.sroa.10.1115, align 8, !tbaa !2114
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.10.1115, i64 8
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE9push_backERKS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bz = ptrtoint ptr %.sroa.10.1115 to i64
  %i.ca = ptrtoint ptr %.sroa.039.1117 to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 6 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.u, label %_ZNKSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.u
  unreachable

_ZNKSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 2 uses
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #59
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %i.cb ; 2 uses
  store ptr %i.m, ptr %i.ck, align 8, !tbaa !2114
  %i.cl = icmp sgt i64 %i.cb, 0
  br i1 %i.cl, label %bb.v, label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

bb.v:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %.sroa.039.1117, i64 %i.cb, i1 false)
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.v, %.noexc9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.1117, i64 noundef %i.cb) #57
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE9push_backERKS3_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.thread.i, %.thread.i14
  %.sroa.18.1114.lcssa = phi ptr [ %.sroa.10.1115, %_ZNKSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.1114, %.thread.i ], [ %.sroa.18.1114, %.thread.i14 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit

_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.s, %bb.i
  %.sroa.18.2 = phi ptr [ %.sroa.18.1114, %bb.i ], [ %i.cn, %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.18.1114, %bb.s ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.1115, %bb.i ], [ %i.cm, %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.by, %bb.s ] ; 2 uses
  %.sroa.039.2 = phi ptr [ %.sroa.039.1117, %bb.i ], [ %i.cj, %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.039.1117, %bb.s ] ; 2 uses
  %i.co = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.034.0116) #61 ; 2 uses
  %.not = icmp eq ptr %i.co, %i.k
  br i1 %.not, label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit, label %.lr.ph, !llvm.loop !2120

bb.w:                                             ; preds = %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EEC2EmRKS3_RKS4_.exit.loopexit
  %i.cp = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.cq = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.1.lcssa, i64 noundef %i.cr) #57
  br label %_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit12

_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit12: ; preds = %bb.w, %bb.a
  ret void

_ZNSt6vectorIPN7testing8internal15ExpectationBaseESaIS3_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.h
  %.sroa.18.1114133 = phi ptr [ %.sroa.18.1114, %bb.h ], [ %.sroa.18.1114, %bb.q ], [ %.sroa.18.1114.lcssa, %.loopexit ], [ %.sroa.10.1115, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.h ], [ %i.bx, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cs = ptrtoint ptr %.sroa.18.1114133 to i64
  %i.ct = ptrtoint ptr %.sroa.039.1117 to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.1117, i64 noundef %i.cu) #57
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK7testing8internal15ExpectationBase28AllPrerequisitesAreSatisfiedEv(ptr noundef nonnull align 8 dereferenceable(232) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !2114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit: ; preds = %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.0100, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ], [ %.sroa.18.4, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.10.1.lcssa = phi ptr [ %i.d, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ], [ %.sroa.10.3, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.031.1.lcssa = phi ptr [ %.sroa.031.0102, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ], [ %.sroa.031.4, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.c = icmp eq ptr %.sroa.031.1.lcssa, %.sroa.10.1.lcssa
  br i1 %i.c, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit23, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader: ; preds = %.noexc, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit
  %.sroa.031.0102 = phi ptr [ %.sroa.031.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ], [ %i.a, %.noexc ] ; 2 uses
  %.sroa.10.0101 = phi ptr [ %.sroa.10.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ], [ %i.b, %.noexc ]
  %.sroa.18.0100 = phi ptr [ %.sroa.18.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ], [ %i.b, %.noexc ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.10.0101, i64 -8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2114 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %.not93 = icmp eq ptr %i.g, %i.h
  br i1 %.not93, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit
  %.sroa.031.197 = phi ptr [ %.sroa.031.4, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.031.0102, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ] ; 7 uses
  %.sroa.026.096 = phi ptr [ %i.bk, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %i.g, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ] ; 2 uses
  %.sroa.10.195 = phi ptr [ %.sroa.10.3, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %i.d, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ] ; 6 uses
  %.sroa.18.194 = phi ptr [ %.sroa.18.4, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.18.0100, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.preheader ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.026.096, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2117 ; 4 uses
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 40), align 8, !tbaa !649, !range !70, !noundef !71
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.a, label %.thread.i

bb.a:                                             ; preds = %.lr.ph
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 48), align 8, !tbaa !2119
  %i.n = tail call i64 @pthread_self() #62
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %.noexc17, label %.thread.i

.thread.i:                                        ; preds = %bb.a, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 1917)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %.thread.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.577, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc24
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.578, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZNSolsEPKv.exit.i unwind label %bb.g ; 0 uses

_ZNSolsEPKv.exit.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i
  %i.s = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !627  ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.b:                                             ; preds = %_ZNSolsEPKv.exit.i
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc.i unwind label %.loopexit.split-lp42

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZNSolsEPKv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8, !tbaa !628
  %.not.i1.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x)
          to label %.noexc1.i unwind label %.loopexit41

.noexc1.i:                                        ; preds = %bb.d
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit41, !inline_history !1859

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc1.i, %bb.c
  %.0.i.i.i.i = phi i8 [ %i.ab, %bb.c ], [ %i.af, %.noexc1.i ]
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc3.i unwind label %.loopexit41

.noexc3.i:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit41 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc3.i
  %i.ai = load i32, ptr %1, align 4, !tbaa !1855
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.e, label %_ZN7testing8internal8GTestLogD2Ev.exit

bb.e:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.al = tail call i32 @fflush(ptr noundef %i.ak) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #58
  unreachable

.loopexit41:                                      ; preds = %bb.d, %.noexc1.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc3.i
  %lpad.loopexit43 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp42:                             ; preds = %bb.b
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp42, %.loopexit41
  %lpad.phi45 = phi { ptr, i32 } [ %lpad.loopexit43, %.loopexit41 ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp42 ]
  %i.am = extractvalue { ptr, i32 } %lpad.phi45, 0
  tail call void @__clang_call_terminate(ptr %i.am) #60
  unreachable

_ZN7testing8internal8GTestLogD2Ev.exit:           ; preds = %_ZNSolsEPFRSoS_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %.noexc17

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc24
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

.noexc17:                                         ; preds = %_ZN7testing8internal8GTestLogD2Ev.exit, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2105
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !1949 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %i.aq)
          to label %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit unwind label %.loopexit, !inline_history !2121

_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit: ; preds = %.noexc17
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit23, !llvm.loop !2122

.loopexit:                                        ; preds = %.noexc17, %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.thread.i
  %.sroa.18.194.lcssa = phi ptr [ %.sroa.18.194, %.noexc17 ], [ %.sroa.10.195, %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.194, %.thread.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

bb.h:                                             ; preds = %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit
  %.not.i = icmp eq ptr %.sroa.10.195, %.sroa.18.194
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.j, ptr %.sroa.10.195, align 8, !tbaa !2114
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %.sroa.10.195 to i64
  %i.ax = ptrtoint ptr %.sroa.031.197 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.k, label %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc20.a unwind label %.loopexit.split-lp

.noexc20.a:                                       ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #59
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.j, ptr %i.bh, align 8, !tbaa !2114
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.l, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

bb.l:                                             ; preds = %.noexc21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %.sroa.031.197, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.l, %.noexc21
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.031.197, i64 noundef %i.ay) #57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.i, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.sroa.18.4 = phi ptr [ %i.bj, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.18.194, %bb.i ] ; 2 uses
  %.pn = phi ptr [ %i.bh, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.195, %bb.i ]
  %.sroa.031.4 = phi ptr [ %i.bg, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.031.197, %bb.i ] ; 2 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.026.096) #61 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.h
  br i1 %.not, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit, label %.lr.ph, !llvm.loop !2123

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit23: ; preds = %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit, %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit
  %i.bl = phi i1 [ false, %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit ], [ true, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ]
  %.sroa.18.3 = phi ptr [ %.sroa.18.194, %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit ], [ %.sroa.18.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ]
  %.sroa.031.3 = phi ptr [ %.sroa.031.197, %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit ], [ %.sroa.031.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ] ; 2 uses
  %i.bm = ptrtoint ptr %.sroa.18.3 to i64
  %i.bn = ptrtoint ptr %.sroa.031.3 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.031.3, i64 noundef %i.bo) #57
  ret i1 %i.bl

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.sroa.18.194111 = phi ptr [ %.sroa.18.194, %bb.g ], [ %.sroa.18.194.lcssa, %.loopexit ], [ %.sroa.10.195, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bp = ptrtoint ptr %.sroa.18.194111 to i64
  %i.bq = ptrtoint ptr %.sroa.031.197 to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.031.197, i64 noundef %i.br) #57
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !649, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2119
  %i.f = tail call i64 @pthread_self() #62
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 1917)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.577, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.thread
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.578, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0)
          to label %_ZNSolsEPKv.exit unwind label %bb.c ; 0 uses

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.thread
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b, %_ZNSolsEPKv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7testing8internal15ExpectationBase28FindUnsatisfiedPrerequisitesEPNS_14ExpectationSetE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #59 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !2114
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br label %bb.a

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit: ; preds = %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit, %bb.a
  %.sroa.18.1.lcssa = phi ptr [ %.sroa.18.083, %bb.a ], [ %.sroa.18.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.10.1.lcssa = phi ptr [ %i.h, %bb.a ], [ %.sroa.10.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.085, %bb.a ], [ %.sroa.026.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.g = icmp eq ptr %.sroa.026.1.lcssa, %.sroa.10.1.lcssa
  br i1 %i.g, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit14, label %bb.a, !llvm.loop !2124

bb.a:                                             ; preds = %.noexc, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit
  %.sroa.026.085 = phi ptr [ %i.a, %.noexc ], [ %.sroa.026.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ] ; 2 uses
  %.sroa.10.084 = phi ptr [ %i.b, %.noexc ], [ %.sroa.10.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ]
  %.sroa.18.083 = phi ptr [ %i.b, %.noexc ], [ %.sroa.18.1.lcssa, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit ] ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.10.084, i64 -8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2114 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %.not76 = icmp eq ptr %i.k, %i.l
  br i1 %.not76, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit
  %.sroa.026.180 = phi ptr [ %.sroa.026.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.026.085, %bb.a ] ; 9 uses
  %.sroa.020.079 = phi ptr [ %i.cu, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %i.k, %bb.a ] ; 3 uses
  %.sroa.10.178 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %i.h, %bb.a ] ; 9 uses
  %.sroa.18.177 = phi ptr [ %.sroa.18.2, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.18.083, %bb.a ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.020.079, i64 32 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2117 ; 4 uses
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 40), align 8, !tbaa !649, !range !70, !noundef !71
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN7testing8internal13g_gmock_mutexE, i64 48), align 8, !tbaa !2119
  %i.r = tail call i64 @pthread_self() #62
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %.noexc7, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  invoke void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 1917)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %.thread.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.577, i64 noundef 70)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc15
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.578, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @_ZN7testing8internal13g_gmock_mutexE)
          to label %_ZNSolsEPKv.exit.i unwind label %bb.h ; 0 uses

_ZNSolsEPKv.exit.i:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i
  %i.w = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !25
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !627 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %_ZNSolsEPKv.exit.i
  invoke void @_ZSt16__throw_bad_castv() #58
          to label %.noexc.i unwind label %.loopexit.split-lp37

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %_ZNSolsEPKv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !628
  %.not.i1.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i1.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 67
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ab)
          to label %.noexc1.i unwind label %.loopexit36

.noexc1.i:                                        ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(570) %i.ab, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i unwind label %.loopexit36, !inline_history !1859

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc1.i, %bb.d
  %.0.i.i.i.i = phi i8 [ %i.af, %bb.d ], [ %i.aj, %.noexc1.i ]
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i)
          to label %.noexc3.i unwind label %.loopexit36

.noexc3.i:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %_ZNSolsEPFRSoS_E.exit.i unwind label %.loopexit36 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i:                          ; preds = %.noexc3.i
  %i.am = load i32, ptr %2, align 4, !tbaa !1855
  %i.an = icmp eq i32 %i.am, 3
  br i1 %i.an, label %bb.f, label %_ZN7testing8internal8GTestLogD2Ev.exit

bb.f:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.i
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ap = tail call i32 @fflush(ptr noundef %i.ao) ; 0 uses
  tail call void @_ZN7testing8internal5posix5AbortEv() #58
  unreachable

.loopexit36:                                      ; preds = %bb.e, %.noexc1.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc3.i
  %lpad.loopexit38 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp37:                             ; preds = %bb.c
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp37, %.loopexit36
  %lpad.phi40 = phi { ptr, i32 } [ %lpad.loopexit38, %.loopexit36 ], [ %lpad.loopexit.split-lp39, %.loopexit.split-lp37 ]
  %i.aq = extractvalue { ptr, i32 } %lpad.phi40, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #60
  unreachable

_ZN7testing8internal8GTestLogD2Ev.exit:           ; preds = %_ZNSolsEPFRSoS_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %.noexc7

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit2.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc15
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

.noexc7:                                          ; preds = %_ZN7testing8internal8GTestLogD2Ev.exit, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !2105
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !1949 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %i.au)
          to label %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit unwind label %.loopexit, !inline_history !2121

_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit: ; preds = %.noexc7
  br i1 %i.az, label %bb.i, label %bb.o

bb.i:                                             ; preds = %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit
  %i.ba = load i32, ptr %i.at, align 8, !tbaa !2105
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.j, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr %.sroa.10.178, %.sroa.18.177
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.n, ptr %.sroa.10.178, align 8, !tbaa !2114
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.10.178, i64 8
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = ptrtoint ptr %.sroa.10.178 to i64
  %i.be = ptrtoint ptr %.sroa.026.180 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.m, label %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
          to label %.noexc9 unwind label %.loopexit.split-lp

.noexc9:                                          ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #59
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store ptr %i.n, ptr %i.bo, align 8, !tbaa !2114
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.n, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

bb.n:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %.sroa.026.180, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %.noexc10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.180, i64 noundef %i.bf) #57
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

.loopexit:                                        ; preds = %.noexc7, %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.thread.i, %bb.t
  %.sroa.18.177.lcssa = phi ptr [ %.sroa.18.177, %.noexc7 ], [ %.sroa.10.178, %_ZNKSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.177, %.thread.i ], [ %.sroa.18.177, %bb.t ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit

bb.o:                                             ; preds = %_ZNK7testing8internal15ExpectationBase11IsSatisfiedEv.exit
  %.02022.i.i = load ptr, ptr %i.c, align 8, !tbaa !176 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !2117 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.p ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !2117 ; 2 uses
  %i.bv = icmp ult ptr %i.bs, %i.bu               ; 2 uses
  %.in.v.i.i = select i1 %i.bv, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.p, !llvm.loop !2125

._crit_edge.i.i:                                  ; preds = %bb.p
  br i1 %i.bv, label %._crit_edge.thread.i.i, label %bb.r

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.o
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.d, %bb.o ] ; 4 uses
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.bx = icmp eq ptr %.019.lcssa29.i.i, %i.bw
  br i1 %i.bx, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i.i
  %i.by = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #61
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2117
  %.pre18.i = load ptr, ptr %i.m, align 8, !tbaa !2117
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i
  %i.bz = phi ptr [ %.pre18.i, %bb.q ], [ %i.bs, %._crit_edge.i.i ]
  %i.ca = phi ptr [ %.pre.i, %bb.q ], [ %i.bu, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.q ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.cb = icmp ult ptr %i.ca, %i.bz
  br i1 %i.cb, label %select.unfold.i, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

select.unfold.i:                                  ; preds = %bb.r, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.r ] ; 3 uses
  %i.cc = icmp eq ptr %.sroa.4.0.i.ph.i, %i.d
  br i1 %i.cc, label %bb.t, label %bb.s

bb.s:                                             ; preds = %select.unfold.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !2117
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !2117
  %i.cg = icmp ult ptr %i.ce, %i.cf
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %select.unfold.i
  %i.ch = phi i1 [ %i.cg, %bb.s ], [ true, %select.unfold.i ]
  %i.ci = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #59
          to label %.noexc17 unwind label %.loopexit ; 2 uses

.noexc17:                                         ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.020.079, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !1954 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %i.m, align 8, !tbaa !2126
  store <2 x ptr> %i.cm, ptr %i.cj, align 8, !tbaa !2126
  %.not.i.i.i.i.i.i.i.i.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16, label %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %.noexc17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !22
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !22
  br label %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i: ; preds = %bb.w, %bb.v, %.noexc17
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ch, ptr noundef nonnull %i.ci, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #56
  %i.cs = load i64, ptr %i.f, align 8, !tbaa !174
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.f, align 8, !tbaa !174
  br label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.r, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.k, %bb.i
  %.sroa.18.2 = phi ptr [ %.sroa.18.177, %bb.k ], [ %.sroa.18.177, %bb.i ], [ %i.br, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.18.177, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i ], [ %.sroa.18.177, %bb.r ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %i.bc, %bb.k ], [ %.sroa.10.178, %bb.i ], [ %i.bq, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.178, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i ], [ %.sroa.10.178, %bb.r ] ; 2 uses
  %.sroa.026.2 = phi ptr [ %.sroa.026.180, %bb.k ], [ %.sroa.026.180, %bb.i ], [ %i.bn, %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.026.180, %_ZNSt8_Rb_treeIN7testing11ExpectationES1_St9_IdentityIS1_ENS1_4LessESaIS1_EE10_M_insert_IRKS1_NS6_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSE_OT_RT0_.exit.i ], [ %.sroa.026.180, %bb.r ] ; 2 uses
  %i.cu = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.020.079) #61 ; 2 uses
  %.not = icmp eq ptr %i.cu, %i.l
  br i1 %.not, label %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit, label %.lr.ph, !llvm.loop !2127

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit14: ; preds = %_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EEC2EmRKS4_RKS5_.exit.loopexit
  %i.cv = ptrtoint ptr %.sroa.18.1.lcssa to i64
  %i.cw = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.cx = sub i64 %i.cv, %i.cw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.1.lcssa, i64 noundef %i.cx) #57
  ret void

_ZNSt6vectorIPKN7testing8internal15ExpectationBaseESaIS4_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.sroa.18.17793 = phi ptr [ %.sroa.18.177, %bb.h ], [ %.sroa.18.177.lcssa, %.loopexit ], [ %.sroa.10.178, %.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cy = ptrtoint ptr %.sroa.18.17793 to i64
  %i.cz = ptrtoint ptr %.sroa.026.180 to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.026.180, i64 noundef %i.da) #57
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7testing8internal15ExpectationBase19DescribeCallCountToEPSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.421, i64 noundef 25) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1949 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %1), !inline_history !2128
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.422, i64 noundef 20) ; 0 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2105
  tail call void @_ZN7testing11Cardinality25DescribeActualCallCountToEiPSo(i32 noundef %i.i, ptr noundef nonnull %1)
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.423, i64 noundef 3) ; 0 uses
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.k = load i32, ptr %i.h, align 8, !tbaa !2105 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1949 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.k), !inline_history !2129
  br i1 %i.p, label %_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit, label %_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit.thread

_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit: ; preds = %bb.a
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !1949 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.k), !inline_history !2129
  br i1 %i.u, label %_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit.thread, label %bb.c

_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit.thread: ; preds = %bb.a, %_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.v = load i32, ptr %i.h, align 8, !tbaa !2105
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1949 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef %i.v), !inline_history !2130
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal15ExpectationBase15IsOverSaturatedEv.exit.thread
  tail call void @_ZNK7testing8internal9MutexBase10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal13g_gmock_mutexE)
  %i.ab = load i32, ptr %i.h, align 8, !tbaa !2105
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !1949 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i32 noundef %i.ab), !inline_history !2131
end_hunk_8
begin_hunk_9_@_ZN7testing8internal17StreamingListener20AbstractSocketWriter6SendLnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !9, !alias.scope !2465 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.d, align 8, !tbaa !15, !alias.scope !2465
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #57
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5
  %common.resume.op = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.v = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.d
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.d, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret void

bb.e:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !9     ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.d
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !15
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %common.resume
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal5posix6FDOpenEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef %1) #56
  ret ptr %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1287 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1291
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1287
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1291
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.d, !inline_history !1293

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #60, !inline_history !1294
  unreachable

_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #57
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPcSaIS0_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1600   ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1599 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1598
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8, !tbaa !510
  store ptr %i.j, ptr %i.f, align 8, !tbaa !510
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1599
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !510
  store ptr %i.n, ptr %i.f, align 8, !tbaa !510
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !1599
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !828

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.l, i64 %i.q, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !1595
  br label %_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.q, 8
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !510
  store ptr %i.w, ptr %i.m, align 8, !tbaa !510
  br label %_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit

_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !510
  store ptr %i.x, ptr %i.l, align 8, !tbaa !510
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #59 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load ptr, ptr %2, align 8, !tbaa !510
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !510
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !1598
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #57
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit: ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !1595
  store ptr %i.as, ptr %i.e, align 8, !tbaa !1599
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !1598
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %_ZNSt6vectorIPcSaIS0_EE13_M_insert_auxIS0_EEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEOT_.exit ], [ %i.ai, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #35

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @clone(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress noreturn uwtable
define internal noundef i32 @_ZN7testing8internalL22ExecDeathTestChildMainEPv(ptr nofree noundef readonly captures(none) %0) #36 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1604
  %i.d = tail call i32 @close(i32 noundef %i.c)
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %.critedge59

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #62
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %.critedge, !llvm.loop !2468

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #56
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 19, ptr %i.a, align 8, !tbaa !46
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.z     ; 2 uses

.noexc:                                           ; preds = %.critedge
  store ptr %i.j, ptr %7, align 8, !tbaa !9
  %i.k = load i64, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  store i64 %i.k, ptr %i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.j, ptr noundef nonnull align 1 dereferenceable(19) @.str.318, i64 19, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %7, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  call void @llvm.experimental.noalias.scope.decl(metadata !2469)
  %i.o = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !2469
  %i.p = add i64 %i.o, -4611686018427387851
  %i.q = icmp ult i64 %i.p, 53
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.463) #58
          to label %.noexc60 unwind label %bb.aa

.noexc60:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.37, i64 noundef 53)
          to label %.noexc61 unwind label %bb.aa  ; 6 uses

.noexc61:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.s, ptr %6, align 8, !tbaa !16, !alias.scope !2469
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc61
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc61
  store ptr %i.t, ptr %6, align 8, !tbaa !9, !alias.scope !2469
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !15
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !15, !alias.scope !2469
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ab = phi i64 [ %i.x, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !17, !alias.scope !2469
  store ptr %i.u, ptr %i.r, align 8, !tbaa !9
  store i64 0, ptr %i.ac, align 8, !tbaa !17
  store i8 0, ptr %i.u, align 8, !tbaa !15
  call void @llvm.experimental.noalias.scope.decl(metadata !2472)
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17, !noalias !2472
  %i.af = add i64 %i.ae, -4611686018427387897
  %i.ag = icmp ult i64 %i.af, 7
  br i1 %i.ag, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.463) #58
          to label %.noexc66 unwind label %bb.ab

.noexc66:                                         ; preds = %bb.g
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62: ; preds = %bb.f
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.319, i64 noundef 7)
          to label %.noexc67 unwind label %bb.ab  ; 6 uses

.noexc67:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ai, ptr %5, align 8, !tbaa !16, !alias.scope !2472
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
end_hunk_9
begin_hunk_10_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a
  store i64 %i.h, ptr %i.b, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !15
  store i8 %i.j, ptr %i.i, align 1, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !17
  %i.m = load ptr, ptr %.014, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2557

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #56 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #58
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #60
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE16GetOrCreateValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1200
  %i.b = tail call ptr @pthread_getspecific(i32 noundef %i.a) #56 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_(ptr noundef nonnull %i.b)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1204 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 3 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !1200
  %i.k = tail call i32 @pthread_setspecific(i32 noundef %i.j, ptr noundef %i.i) #56 ; 2 uses
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 2060)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.493, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.470, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.k)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.pn = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.c ]
  %.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE11ValueHolderENS0_26ThreadLocalValueHolderBaseEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !25
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2362 ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE11ValueHolderE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread4, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(86) @_ZTSN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE11ValueHolderE) #56
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread4

_ZNKSt9type_infoeqERKS_.exit.thread4:             ; preds = %bb.d, %_ZNKSt9type_infoeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @_ZN7testing8internal8GTestLogC2ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.468, i32 noundef 1367)
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.494, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread4
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  br label %_ZNKSt9type_infoeqERKS_.exit.thread

bb.e:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread4
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  resume { ptr, i32 } %i.l

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7testing8internal26ThreadLocalValueHolderBaseE, ptr nonnull @_ZTIN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE11ValueHolderE, i64 0) #56
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !238    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !16
  %i.s = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !9
  %i.z = load i64, ptr %i.t, align 8, !tbaa !15
  store i64 %i.z, ptr %i.r, align 8, !tbaa !15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !17
  store ptr %i.t, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.ab, align 8, !tbaa !17
  store i8 0, ptr %i.t, align 8, !tbaa !15
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !2558, !noalias !2561
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !9, !alias.scope !2561, !noalias !2558 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17, !alias.scope !2561, !noalias !2558 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !2563
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !2558, !noalias !2561
  %i.al = load i64, ptr %i.af, align 8, !tbaa !15, !alias.scope !2561, !noalias !2558
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !15, !alias.scope !2558, !noalias !2561
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !2561, !noalias !2558
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !17, !alias.scope !2558, !noalias !2561
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !9, !alias.scope !2561, !noalias !2558
  store i64 0, ptr %i.an, align 8, !tbaa !17, !alias.scope !2561, !noalias !2558
  store i8 0, ptr %i.af, align 8, !tbaa !15, !alias.scope !2561, !noalias !2558
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !2564

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !16, !alias.scope !2565, !noalias !2568
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !9, !alias.scope !2568, !noalias !2565 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !17, !alias.scope !2568, !noalias !2565 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !2570
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !9, !alias.scope !2565, !noalias !2568
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !15, !alias.scope !2568, !noalias !2565
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !15, !alias.scope !2565, !noalias !2568
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !17, !alias.scope !2568, !noalias !2565
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !17, !alias.scope !2565, !noalias !2568
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !9, !alias.scope !2568, !noalias !2565
  store i64 0, ptr %i.bc, align 8, !tbaa !17, !alias.scope !2568, !noalias !2565
  store i8 0, ptr %i.au, align 8, !tbaa !15, !alias.scope !2568, !noalias !2565
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !2564

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !243
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #57
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !238
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !241
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !243
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIdSaIdEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !425
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.b = phi ptr [ %.pre, %.lr.ph ], [ %i.m, %bb.g ] ; 2 uses
  %.018 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.g ] ; 6 uses
  %.01117 = phi i64 [ %1, %.lr.ph ], [ %i.v, %bb.g ]
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !431  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i.i.i.i, label %.noexc12, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !21

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.i = phi ptr [ null, %bb.b ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !425
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !431
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !428
  %i.m = load ptr, ptr %2, align 8, !tbaa !2571   ; 4 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2571
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
end_hunk_10
begin_hunk_11_@_ZN7testing15AssertionResultlsIPKwEERS0_RKT_:bb.a
  store ptr %i.k, ptr %2, align 8, !tbaa !16, !alias.scope !2574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @.str.90, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.l, align 8, !tbaa !17, !alias.scope !2574
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 22
  store i8 0, ptr %i.m, align 2, !tbaa !15, !alias.scope !2574
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i

bb.c:                                             ; preds = %_ZN7testing7MessageC2Ev.exit
  invoke void @_ZN7testing8internal16WideStringToUtf8B5cxx11EPKwi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull readonly %i.i, i32 noundef -1)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !9
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre6.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i

_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i: ; preds = %.noexc, %._crit_edge.i.i.i.i
  %i.n = phi i64 [ 6, %._crit_edge.i.i.i.i ], [ %.pre6.i, %.noexc ]
  %i.o = phi ptr [ %i.k, %._crit_edge.i.i.i.i ], [ %.pre.i, %.noexc ]
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.o, i64 noundef %i.n)
          to label %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i: ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i
  %i.q = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !15
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZN7testing8internal6String15ShowWideCStringB5cxx11EPKw.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %2, align 8, !tbaa !9      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #57
  br label %.body.thread

.body.thread:                                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN7testing7MessagelsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS0_RKT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #56, !inline_history !36
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  ret ptr %0

.body:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %.not.i.i3 = icmp eq ptr %.pre, null
  br i1 %.not.i.i3, label %_ZN7testing7MessageD2Ev.exit5, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4: ; preds = %.body.thread, %.body
  %eh.lpad-body14 = phi { ptr, i32 } [ %i.v, %.body.thread ], [ %i.af, %.body ]
  %i.ag = phi ptr [ %i.a, %.body.thread ], [ %.pre, %.body ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #56, !inline_history !36
  br label %_ZN7testing7MessageD2Ev.exit5

_ZN7testing7MessageD2Ev.exit5:                    ; preds = %.body, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.af, %.body ], [ %eh.lpad-body14, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br label %common.resume
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @wcsstr(ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN7testing15AssertionResultlsINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #56
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 4 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.n, %_ZN7testing7MessageD2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 17, ptr %i.h, align 8, !tbaa !27
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing7MessagelsERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %_ZN7testing7MessageC2Ev.exit
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #56, !inline_history !36
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.d, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  ret ptr %0

bb.e:                                             ; preds = %bb.c, %_ZN7testing7MessageC2Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %2, align 8, !tbaa !23     ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.o, null
  br i1 %.not.i.i3, label %_ZN7testing7MessageD2Ev.exit5, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4: ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(128) %i.o) #56, !inline_history !36
  br label %_ZN7testing7MessageD2Ev.exit5

_ZN7testing7MessageD2Ev.exit5:                    ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #56
  br label %common.resume
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4findEPKwmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !306  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !314    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 112                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7testing14TestPartResultC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.k

_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7testing14TestPartResultESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  %i.r = load i32, ptr %.0911.i.i.i, align 8, !tbaa !328, !alias.scope !2580, !noalias !2577
  store i32 %i.r, ptr %.012.i.i.i, align 8, !tbaa !328, !alias.scope !2577, !noalias !2580
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !16, !alias.scope !2577, !noalias !2580
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !2582
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !9, !alias.scope !2577, !noalias !2580
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !15, !alias.scope !2577, !noalias !2580
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ad = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !17, !alias.scope !2577, !noalias !2580
  store ptr %i.w, ptr %i.t, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577
  store i64 0, ptr %i.ae, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  store i8 0, ptr %i.w, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !707, !alias.scope !2580, !noalias !2577
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !707, !alias.scope !2577, !noalias !2580
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !16, !alias.scope !2577, !noalias !2580
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !2582
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !9, !alias.scope !2577, !noalias !2580
  %i.at = load i64, ptr %i.an, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  store i64 %i.at, ptr %i.al, align 8, !tbaa !15, !alias.scope !2577, !noalias !2580
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i, %bb.d
  %i.au = phi i64 [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !17, !alias.scope !2577, !noalias !2580
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577
  store i64 0, ptr %i.av, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  store i8 0, ptr %i.an, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 3 uses
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !16, !alias.scope !2577, !noalias !2580
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 5 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bg, i1 false), !alias.scope !2582
  br label %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !9, !alias.scope !2577, !noalias !2580
  %i.bh = load i64, ptr %i.bb, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  store i64 %i.bh, ptr %i.az, align 8, !tbaa !15, !alias.scope !2577, !noalias !2580
  %.phi.trans.insert7.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %.pre8.i.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i.i, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  br label %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i, %bb.e
  %i.bi = phi i64 [ %i.be, %bb.e ], [ %.pre8.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !17, !alias.scope !2577, !noalias !2580
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !9, !alias.scope !2580, !noalias !2577
  store i64 0, ptr %i.bj, align 8, !tbaa !17, !alias.scope !2580, !noalias !2577
  store i8 0, ptr %i.bb, align 8, !tbaa !15, !alias.scope !2580, !noalias !2577
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2583

_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7testing14TestPartResultEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.bm, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 112 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit44, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i41
  %.012.i.i.i28 = phi ptr [ %i.dj, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i41 ], [ %i.bn, %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 12 uses
  %.0911.i.i.i29 = phi ptr [ %i.di, %_ZSt19__relocate_object_aIN7testing14TestPartResultES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i41 ], [ %1, %_ZNSt6vectorIN7testing14TestPartResultESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  %i.bo = load i32, ptr %.0911.i.i.i29, align 8, !tbaa !328, !alias.scope !2587, !noalias !2584
  store i32 %i.bo, ptr %.012.i.i.i28, align 8, !tbaa !328, !alias.scope !2584, !noalias !2587
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24 ; 3 uses
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !16, !alias.scope !2584, !noalias !2587
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !9, !alias.scope !2587, !noalias !2584 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 5 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.f:                                             ; preds = %.lr.ph.i.i.i27
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !17, !alias.scope !2587, !noalias !2584 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.br, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.by, i1 false), !alias.scope !2589
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !9, !alias.scope !2584, !noalias !2587
  %i.bz = load i64, ptr %i.bt, align 8, !tbaa !15, !alias.scope !2587, !noalias !2584
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !15, !alias.scope !2584, !noalias !2587
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !17, !alias.scope !2587, !noalias !2584
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.f
  %i.ca = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.bw, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !17, !alias.scope !2584, !noalias !2587
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !9, !alias.scope !2587, !noalias !2584
  store i64 0, ptr %i.cb, align 8, !tbaa !17, !alias.scope !2587, !noalias !2584
  store i8 0, ptr %i.bt, align 8, !tbaa !15, !alias.scope !2587, !noalias !2584
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !707, !alias.scope !2587, !noalias !2584
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !707, !alias.scope !2584, !noalias !2587
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64 ; 3 uses
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !16, !alias.scope !2584, !noalias !2587
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !9, !alias.scope !2587, !noalias !2584 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i34

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !17, !alias.scope !2587, !noalias !2584 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false), !alias.scope !2589
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !9, !alias.scope !2584, !noalias !2587
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !15, !alias.scope !2587, !noalias !2584
end_hunk_11
begin_hunk_12_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN7testing12TestPropertyESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predINS2_8internal17TestPropertyKeyIsEEEET_SE_SE_T0_St26random_access_iterator_tag:bb.a
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit59, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42.us

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42.us: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41.us
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.067.us, i64 256
  %i.w = add nsw i64 %.068.us, -1
  %i.x = icmp sgt i64 %.068.us, 1
  br i1 %i.x, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !2590

.lr.ph.split.split.split:                         ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42
  %.068 = phi i64 [ %i.as, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42 ], [ %i.d, %.lr.ph ] ; 2 uses
  %.sroa.030.067 = phi ptr [ %i.ar, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42 ], [ %0, %.lr.ph ] ; 9 uses
  %i.y = load ptr, ptr %.sroa.030.067, align 8, !tbaa !9 ; 2 uses
  %i.z = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #56
  %i.aa = icmp eq i64 %.fr142, %i.z
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit: ; preds = %.lr.ph.split.split.split
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.i, ptr nonnull %i.y, i64 %.fr142)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39: ; preds = %.lr.ph.split.split.split, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !9  ; 2 uses
  %i.ae = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #56
  %i.af = icmp eq i64 %.fr142, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39
  %bcmp.i.i.i.i16 = tail call i32 @bcmp(ptr %i.i, ptr nonnull %i.ad, i64 %.fr142)
  %i.ag = icmp eq i32 %bcmp.i.i.i.i16, 0
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit47, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9  ; 2 uses
  %i.aj = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #56
  %i.ak = icmp eq i64 %.fr142, %i.aj
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40
  %bcmp.i.i.i.i18 = tail call i32 @bcmp(ptr %i.i, ptr nonnull %i.ai, i64 %.fr142)
  %i.al = icmp eq i32 %bcmp.i.i.i.i18, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit49, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 192
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9  ; 2 uses
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #56
  %i.ap = icmp eq i64 %.fr142, %i.ao
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41
  %bcmp.i.i.i.i20 = tail call i32 @bcmp(ptr %i.i, ptr nonnull %i.an, i64 %.fr142)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i20, 0
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit51, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 256
  %i.as = add nsw i64 %.068, -1
  %i.at = icmp sgt i64 %.068, 1
  br i1 %i.at, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !2590

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42.us, %bb.a
  %.sroa.030.0.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep190, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42.us ], [ %scevgep190, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21.thread42 ] ; 7 uses
  %i.au = ptrtoint ptr %.sroa.030.0.lcssa to i64
  %i.av = sub i64 %i.a, %i.au
  %i.aw = ashr exact i64 %i.av, 6
  switch i64 %i.aw, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread [
    i64 3, label %bb.b
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge191
  ]

._crit_edge._crit_edge191:                        ; preds = %._crit_edge
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre193 = load i64, ptr %.phi.trans.insert192, align 8, !tbaa !17
  br label %bb.f

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.ax = load ptr, ptr %.sroa.030.0.lcssa, align 8, !tbaa !9 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17 ; 4 uses
  %i.ba = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ax) #56
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.c, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43

bb.c:                                             ; preds = %bb.b
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23: ; preds = %bb.c
  %i.bd = load ptr, ptr %2, align 8, !tbaa !9
  %bcmp.i.i.i.i22 = tail call i32 @bcmp(ptr %i.bd, ptr nonnull %i.ax, i64 %i.az)
  %i.be = icmp eq i32 %bcmp.i.i.i.i22, 0
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.030.0.lcssa, i64 64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge._crit_edge, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43
  %i.bg = phi i64 [ %i.az, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43 ], [ %.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.sroa.030.1 = phi ptr [ %i.bf, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23.thread43 ], [ %.sroa.030.0.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.bh = load ptr, ptr %.sroa.030.1, align 8, !tbaa !9 ; 2 uses
  %i.bi = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bh) #56
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.e, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44

bb.e:                                             ; preds = %bb.d
  %i.bk = icmp eq i64 %i.bg, 0
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25: ; preds = %bb.e
  %i.bl = load ptr, ptr %2, align 8, !tbaa !9
  %bcmp.i.i.i.i24 = tail call i32 @bcmp(ptr %i.bl, ptr nonnull %i.bh, i64 %i.bg)
  %i.bm = icmp eq i32 %bcmp.i.i.i.i24, 0
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.030.1, i64 64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge._crit_edge191, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44
  %i.bo = phi i64 [ %i.bg, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44 ], [ %.pre193, %._crit_edge._crit_edge191 ] ; 3 uses
  %.sroa.030.2 = phi ptr [ %i.bn, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25.thread44 ], [ %.sroa.030.0.lcssa, %._crit_edge._crit_edge191 ] ; 3 uses
  %i.bp = load ptr, ptr %.sroa.030.2, align 8, !tbaa !9 ; 2 uses
  %i.bq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bp) #56
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.g, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread45

bb.g:                                             ; preds = %bb.f
  %i.bs = icmp eq i64 %i.bo, 0
  br i1 %i.bs, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27: ; preds = %bb.g
  %i.bt = load ptr, ptr %2, align 8, !tbaa !9
  %bcmp.i.i.i.i26 = tail call i32 @bcmp(ptr %i.bt, ptr nonnull %i.bp, i64 %i.bo)
  %i.bu = icmp eq i32 %bcmp.i.i.i.i26, 0
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread, label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread45

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread45: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit47: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 64
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit49: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 128
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit51: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit21
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.030.067, i64 192
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit55: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread39.us
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.030.067.us, i64 64
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit57: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit17.thread40.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.030.067.us, i64 128
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit59: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit19.thread41.us
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.030.067.us, i64 192
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread

_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit, %.lr.ph.split.us, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit47, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit49, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit51, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit55, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit57, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit59, %bb.g, %bb.e, %bb.c, %._crit_edge, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread45, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.030.1, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit25 ], [ %1, %._crit_edge ], [ %.sroa.030.1, %bb.e ], [ %.sroa.030.0.lcssa, %bb.c ], [ %.sroa.030.2, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27 ], [ %.sroa.030.2, %bb.g ], [ %.sroa.030.0.lcssa, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit23 ], [ %1, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit27.thread45 ], [ %i.bz, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit57 ], [ %i.by, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit55 ], [ %.sroa.030.067.us, %.lr.ph.split.us ], [ %i.bx, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit51 ], [ %i.bw, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit49 ], [ %i.bv, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit47 ], [ %i.ca, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit59 ], [ %.sroa.030.067, %_ZN9__gnu_cxx5__ops10_Iter_predIN7testing8internal17TestPropertyKeyIsEEclINS_17__normal_iteratorIPNS2_12TestPropertyESt6vectorIS8_SaIS8_EEEEEEbT_.exit ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !651  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !650    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing12TestPropertyESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIN7testing12TestPropertyESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 6                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #59 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN7testing12TestPropertyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7testing12TestPropertyESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !2591, !noalias !2594
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !9, !alias.scope !2594, !noalias !2591 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !2596
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !2591, !noalias !2594
  %i.z = load i64, ptr %i.t, align 8, !tbaa !15, !alias.scope !2594, !noalias !2591
  store i64 %i.z, ptr %i.r, align 8, !tbaa !15, !alias.scope !2591, !noalias !2594
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !17, !alias.scope !2591, !noalias !2594
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !9, !alias.scope !2594, !noalias !2591
  store i64 0, ptr %i.ab, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591
  store i8 0, ptr %i.t, align 8, !tbaa !15, !alias.scope !2594, !noalias !2591
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !16, !alias.scope !2591, !noalias !2594
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !9, !alias.scope !2594, !noalias !2591 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !2596
  br label %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !9, !alias.scope !2591, !noalias !2594
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !15, !alias.scope !2594, !noalias !2591
  store i64 %i.an, ptr %i.af, align 8, !tbaa !15, !alias.scope !2591, !noalias !2594
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591
  br label %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !17, !alias.scope !2591, !noalias !2594
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !9, !alias.scope !2594, !noalias !2591
  store i64 0, ptr %i.ap, align 8, !tbaa !17, !alias.scope !2594, !noalias !2591
  store i8 0, ptr %i.ah, align 8, !tbaa !15, !alias.scope !2594, !noalias !2591
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2597

_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7testing12TestPropertyEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.as, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.at, %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i29 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2601)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !16, !alias.scope !2598, !noalias !2601
  %i.av = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !9, !alias.scope !2601, !noalias !2598 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !2603
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.av, ptr %.012.i.i.i28, align 8, !tbaa !9, !alias.scope !2598, !noalias !2601
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !15, !alias.scope !2601, !noalias !2598
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !15, !alias.scope !2598, !noalias !2601
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bd = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.az, %bb.e ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !17, !alias.scope !2598, !noalias !2601
  store ptr %i.aw, ptr %.0911.i.i.i29, align 8, !tbaa !9, !alias.scope !2601, !noalias !2598
  store i64 0, ptr %i.be, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598
  store i8 0, ptr %i.aw, align 8, !tbaa !15, !alias.scope !2601, !noalias !2598
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !16, !alias.scope !2598, !noalias !2601
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !9, !alias.scope !2601, !noalias !2598 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.bp, i1 false), !alias.scope !2603
  br label %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !9, !alias.scope !2598, !noalias !2601
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !15, !alias.scope !2601, !noalias !2598
  store i64 %i.bq, ptr %i.bi, align 8, !tbaa !15, !alias.scope !2598, !noalias !2601
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598
  br label %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34, %bb.f
  %i.br = phi i64 [ %i.bn, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i34 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !17, !alias.scope !2598, !noalias !2601
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !9, !alias.scope !2601, !noalias !2598
  store i64 0, ptr %i.bs, align 8, !tbaa !17, !alias.scope !2601, !noalias !2598
  store i8 0, ptr %i.bk, align 8, !tbaa !15, !alias.scope !2601, !noalias !2598
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !2597

_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40: ; preds = %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.at, %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN7testing12TestPropertyES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !653
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #57
  br label %_ZNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7testing12TestPropertyESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7testing12TestPropertyESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !650
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !651
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !653
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIN7testing12TestPropertyESaIS1_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #56 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #57
end_hunk_12
begin_hunk_13_@_ZN7testing8internal14GTestFlagSaverD2Ev:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5 unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !705, !range !70, !noundef !71
  store i8 %i.ag, ptr @_ZN7testing28FLAGS_gtest_throw_on_failureE, align 1, !tbaa !69
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !9  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !9   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !15
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !9   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
  %i.au = load i64, ptr %i.as, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !9   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.bf = add i64 %i.be, 1
  tail call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.bg = load ptr, ptr %i.f, align 8, !tbaa !9   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  tail call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #60
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #51

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7testing8internalL25FormatCxxExceptionMessageB5cxx11EPKcS2_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #59 ; 8 uses
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.a)
          to label %_ZN7testing7MessageC2Ev.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZN7testing7MessageD2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 392) #57
  br label %common.resume

_ZN7testing7MessageC2Ev.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 17, ptr %i.h, align 8, !tbaa !27
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.invoke, label %bb.c

bb.c:                                             ; preds = %_ZN7testing7MessageC2Ev.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.606, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %1, i64 noundef %i.j)
          to label %.invoke unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessageD2Ev.exit:                     ; preds = %.invoke, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10, %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8, %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #56, !inline_history !36
  br label %common.resume

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZN7testing7MessageC2Ev.exit
  %i.p = phi ptr [ @.str.607, %_ZN7testing7MessageC2Ev.exit ], [ @.str.87, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  %i.q = phi i64 [ 21, %_ZN7testing7MessageC2Ev.exit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ]
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.p, i64 noundef %i.q)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit:        ; preds = %.invoke
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.608, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit:       ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit
  %i.t = icmp eq ptr %2, null
  br i1 %i.t, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit
  %i.u = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #56
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke: ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5
  %i.v = phi ptr [ %2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 ], [ @.str.90, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.w = phi i64 [ %i.u, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5 ], [ 6, %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit ]
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8 unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8:        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i5.invoke
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.57, i64 noundef 1)
          to label %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10 unwind label %_ZN7testing7MessageD2Ev.exit ; 0 uses

_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10:      ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit8
  invoke void @_ZN7testing8internal20StringStreamToStringEPNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %i.a)
          to label %_ZN7testing7MessageD2Ev.exit14 unwind label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit14:                   ; preds = %_ZN7testing7MessagelsIA2_cEERS0_RKT_.exit10
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #56, !inline_history !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.535) #58
  unreachable

_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %i.p = mul nuw nsw i64 %i.m, 48                 ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #59 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !16
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !9    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i64 %i.x, ptr %i.a, align 8, !tbaa !46
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !9
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !46
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !15
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNKSt6vectorIN7testing8internal9TraceInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.x, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !15
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !15
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 12, i1 false), !alias.scope !2610
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 3 uses
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !16, !alias.scope !2605, !noalias !2608
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9, !alias.scope !2608, !noalias !2605 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17, !alias.scope !2608, !noalias !2605 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !2610
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !9, !alias.scope !2605, !noalias !2608
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !15, !alias.scope !2608, !noalias !2605
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !15, !alias.scope !2605, !noalias !2608
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !17, !alias.scope !2608, !noalias !2605
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.as = phi i64 [ %i.ao, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store i64 %i.as, ptr %i.au, align 8, !tbaa !17, !alias.scope !2605, !noalias !2608
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !9, !alias.scope !2608, !noalias !2605
  store i64 0, ptr %i.at, align 8, !tbaa !17, !alias.scope !2608, !noalias !2605
  store i8 0, ptr %i.al, align 8, !tbaa !15, !alias.scope !2608, !noalias !2605
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !2611

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aw, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2612)
  call void @llvm.experimental.noalias.scope.decl(metadata !2615)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i28, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i29, i64 12, i1 false), !alias.scope !2617
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !16, !alias.scope !2612, !noalias !2615
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9, !alias.scope !2615, !noalias !2612 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 5 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !17, !alias.scope !2615, !noalias !2612 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !2617
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !9, !alias.scope !2612, !noalias !2615
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !15, !alias.scope !2615, !noalias !2612
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !15, !alias.scope !2612, !noalias !2615
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !17, !alias.scope !2615, !noalias !2612
  br label %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.g
  %i.bj = phi i64 [ %i.bf, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !17, !alias.scope !2612, !noalias !2615
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !9, !alias.scope !2615, !noalias !2612
  store i64 0, ptr %i.bk, align 8, !tbaa !17, !alias.scope !2615, !noalias !2612
  store i8 0, ptr %i.bc, align 8, !tbaa !15, !alias.scope !2615, !noalias !2612
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bm, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !2611

_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ax, %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN7testing8internal9TraceInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1199
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.br) #57
  br label %_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7testing8internal9TraceInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7testing8internal9TraceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !58
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !1199
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = call ptr @__cxa_begin_catch(ptr %i.bv) #56 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #57
  invoke void @__cxa_rethrow() #58
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bt

bb.l:                                             ; preds = %bb.i
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #60
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN7testing8internal11ThreadLocalIPNS_31TestPartResultReporterInterfaceEE9CreateKeyEv() local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_13
