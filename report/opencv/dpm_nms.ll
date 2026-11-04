Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_nms?download=true
inline.NumInlined: 448
inline.NumDeleted: 227
begin_hunk_0_@_ZN2cv3dpm21NonMaximumSuppression7processERSt6vectorIS2_IdSaIdEESaIS4_EEd:bb.a
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = add nsw i32 %i.cv, -1                   ; 4 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !16 ; 3 uses
  %.not.i117 = icmp eq ptr %.sroa.11.0407, %.sroa.16.0408
  br i1 %.not.i117, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.cz, ptr %.sroa.11.0407, align 4, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.o:                                             ; preds = %bb.m
  %i.da = ptrtoint ptr %.sroa.16.0408 to i64
  %i.db = ptrtoint ptr %.sroa.0207.0406 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775804
  br i1 %i.dd, label %bb.p, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
          to label %.noexc119 unwind label %.loopexit.split-lp303

.noexc119:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.de = ashr exact i64 %i.dc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 2305843009213693951)
  %i.di = select i1 %i.dg, i64 2305843009213693951, i64 %i.dh ; 3 uses
  %.not.i.i.i118 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i118)
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #13
          to label %.noexc120 unwind label %.loopexit302 ; 4 uses

.noexc120:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i32 %i.cz, ptr %i.dl, align 4, !tbaa !16
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.q, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc120
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dk, ptr align 4 %.sroa.0207.0406, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc120
  %.not.i17.i.i = icmp eq ptr %.sroa.0207.0406, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0406, i64 noundef %i.dc) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.di
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.n
  %.sroa.0207.4 = phi ptr [ %i.dk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0207.0406, %bb.n ] ; 12 uses
  %.pn = phi ptr [ %i.dl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.11.0407, %bb.n ]
  %.sroa.16.4 = phi ptr [ %i.dn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.16.0408, %bb.n ] ; 9 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0410, %.sroa.0192.0409
  %spec.select = select i1 %.not.i.i, ptr %.sroa.13.0410, ptr %.sroa.0192.0409 ; 3 uses
  %.not.i121 = icmp eq ptr %spec.select, %.sroa.22.0411
  br i1 %.not.i121, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.cw, ptr %spec.select, align 4, !tbaa !16
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.do = ptrtoint ptr %.sroa.22.0411 to i64
  %i.dp = ptrtoint ptr %.sroa.0192.0409 to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775804
  br i1 %i.dr, label %bb.u, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
          to label %.noexc128 unwind label %.loopexit.split-lp303

.noexc128:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122: ; preds = %bb.t
  %i.ds = ashr exact i64 %i.dq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i123 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i123, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951)
  %i.dw = select i1 %i.du, i64 2305843009213693951, i64 %i.dv ; 3 uses
  %.not.i.i.i124 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i124)
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #13
          to label %.noexc129 unwind label %.loopexit302 ; 4 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store i32 %i.cw, ptr %i.dz, align 4, !tbaa !16
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i125

bb.v:                                             ; preds = %.noexc129
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %.sroa.0192.0409, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i125

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i125: ; preds = %bb.v, %.noexc129
  %.not.i17.i.i126 = icmp eq ptr %.sroa.0192.0409, null
  br i1 %.not.i17.i.i126, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i125
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.0409, i64 noundef %i.dq) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i125
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130

_ZNSt6vectorIiSaIiEE9push_backERKi.exit130:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127, %bb.s
  %.sroa.0192.5 = phi ptr [ %i.dy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127 ], [ %.sroa.0192.0409, %bb.s ] ; 2 uses
  %.pn287 = phi ptr [ %i.dz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127 ], [ %spec.select, %bb.s ]
  %.sroa.22.5 = phi ptr [ %i.eb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i127 ], [ %.sroa.22.0411, %bb.s ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn287, i64 4 ; 2 uses
  %.not93.not392 = icmp sgt i32 %i.cv, 1
  br i1 %.not93.not392, label %.lr.ph397, label %._crit_edge398

.lr.ph397:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130
  %i.ec = sext i32 %i.cz to i64
  %wide.trip.count497 = zext nneg i32 %i.cw to i64
  br label %bb.y

._crit_edge398:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130
  %.sroa.0192.1.lcssa = phi ptr [ %.sroa.0192.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130 ], [ %.sroa.0192.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 9 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130 ], [ %.sroa.13.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 3 uses
  %.sroa.22.1.lcssa = phi ptr [ %.sroa.22.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit130 ], [ %.sroa.22.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.ed = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ee = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %.not423 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not423, label %._crit_edge404, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge398
  %i.ef = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.eg = ptrtoint ptr %.sroa.0192.1.lcssa to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 2
  %.not424 = icmp eq ptr %.sroa.13.1.lcssa, %.sroa.0192.1.lcssa
  br label %.preheader

bb.x:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit174

.loopexit302:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122
  %.sroa.0207.1.ph = phi ptr [ %.sroa.0207.0406, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0207.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122 ]
  %.sroa.16.1.ph = phi ptr [ %.sroa.16.0408, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.16.4, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i122 ]
  %lpad.loopexit306 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp303:                            ; preds = %bb.p, %bb.u
  %.sroa.0207.1.ph304 = phi ptr [ %.sroa.0207.4, %bb.u ], [ %.sroa.0207.0406, %bb.p ]
  %.sroa.16.1.ph305 = phi ptr [ %.sroa.16.4, %bb.u ], [ %.sroa.16.0408, %bb.p ]
  %lpad.loopexit.split-lp307 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.y:                                             ; preds = %.lr.ph397, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143
  %indvars.iv494 = phi i64 [ 0, %.lr.ph397 ], [ %indvars.iv.next495, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 4 uses
  %.sroa.22.1395 = phi ptr [ %.sroa.22.5, %.lr.ph397 ], [ %.sroa.22.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 6 uses
  %.sroa.13.1394 = phi ptr [ %.sroa.13.4, %.lr.ph397 ], [ %.sroa.13.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 5 uses
  %.sroa.0192.1393 = phi ptr [ %.sroa.0192.5, %.lr.ph397 ], [ %.sroa.0192.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143 ] ; 8 uses
  %i.ek = load ptr, ptr %3, align 8, !tbaa !25
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv494
  %i.em = load i32, ptr %i.el, align 4, !tbaa !16
  %i.en = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.ec
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %i.eq = sext i32 %i.em to i64                   ; 2 uses
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !14 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load <2 x double>, ptr %i.ep, align 8, !tbaa !18 ; 2 uses
  %i.ew = load <2 x double>, ptr %i.es, align 8, !tbaa !18 ; 2 uses
  %i.ex = fcmp olt <2 x double> %i.ev, %i.ew
  %i.ey = select <2 x i1> %i.ex, <2 x double> %i.ew, <2 x double> %i.ev
  %i.ez = load <2 x double>, ptr %i.eu, align 8, !tbaa !18 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.et, align 8, !tbaa !18 ; 2 uses
  %i.fb = fcmp olt <2 x double> %i.ez, %i.fa
  %i.fc = select <2 x i1> %i.fb, <2 x double> %i.ez, <2 x double> %i.fa
  %i.fd = fsub <2 x double> %i.fc, %i.ey
  %.fr729 = freeze <2 x double> %i.fd
  %6 = fadd <2 x double> %.fr729, splat (double 1.000000e+00) ; 3 uses
  %7 = fcmp ule <2 x double> %6, zeroinitializer
  %8 = bitcast <2 x i1> %7 to i2
  %or.cond = icmp eq i2 %8, 0
  br i1 %or.cond, label %bb.z, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143

bb.z:                                             ; preds = %bb.y
  %shift726 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop727 = fmul nnan <2 x double> %6, %shift726
  %i.fe = extractelement <2 x double> %foldExtExtBinop727, i64 0
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.0242250, i64 %i.eq
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18
  %i.fh = fdiv double %i.fe, %i.fg
  %i.fi = fcmp ogt double %i.fh, %2
  br i1 %i.fi, label %bb.aa, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143

bb.aa:                                            ; preds = %bb.z
  %.not.i134 = icmp eq ptr %.sroa.13.1394, %.sroa.22.1395
  br i1 %.not.i134, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fj = trunc nuw nsw i64 %indvars.iv494 to i32
  store i32 %i.fj, ptr %.sroa.13.1394, align 4, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.13.1394, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143

bb.ac:                                            ; preds = %bb.aa
  %i.fl = ptrtoint ptr %.sroa.22.1395 to i64
  %i.fm = ptrtoint ptr %.sroa.0192.1393 to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 6 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775804
  br i1 %i.fo, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i135

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
          to label %.noexc141 unwind label %.loopexit.split-lp298.loopexit.split-lp

.noexc141:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i135: ; preds = %bb.ac
  %i.fp = ashr exact i64 %i.fn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i136 = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i136, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 2305843009213693951)
  %i.ft = select i1 %i.fr, i64 2305843009213693951, i64 %i.fs ; 3 uses
  %.not.i.i.i137 = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i.i137)
  %i.fu = shl nuw nsw i64 %i.ft, 2
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #13
          to label %.noexc142 unwind label %.loopexit.split-lp298.loopexit.split-lp ; 4 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i135
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fn ; 2 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv494 to i32
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !16
  %i.fy = icmp sgt i64 %i.fn, 0
  br i1 %i.fy, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i138

bb.ae:                                            ; preds = %.noexc142
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %.sroa.0192.1393, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i138

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i138: ; preds = %bb.ae, %.noexc142
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.not.i17.i.i139 = icmp eq ptr %.sroa.0192.1393, null
  br i1 %.not.i17.i.i139, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i138
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0192.1393, i64 noundef %i.fn) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i138
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ft
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit143

.loopexit.split-lp298.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i135, %bb.ad
  %lpad.loopexit.split-lp732 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_ZNSt6vectorIiSaIiEE9push_backERKi.exit143:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140, %bb.ab, %bb.z, %bb.y
  %.sroa.0192.2 = phi ptr [ %.sroa.0192.1393, %bb.y ], [ %.sroa.0192.1393, %bb.z ], [ %i.fv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140 ], [ %.sroa.0192.1393, %bb.ab ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1394, %bb.y ], [ %.sroa.13.1394, %bb.z ], [ %i.fz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140 ], [ %i.fk, %bb.ab ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1395, %bb.y ], [ %.sroa.22.1395, %bb.z ], [ %i.ga, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i140 ], [ %.sroa.22.1395, %bb.ab ] ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge398, label %bb.y, !llvm.loop !35

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153
  %i.gb = phi ptr [ %i.ed, %.preheader.lr.ph ], [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ] ; 2 uses
  %i.gc = phi ptr [ null, %.preheader.lr.ph ], [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ] ; 6 uses
  %i.gd = phi ptr [ null, %.preheader.lr.ph ], [ %i.hn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ] ; 4 uses
  %i.ge = phi ptr [ null, %.preheader.lr.ph ], [ %i.ho, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ] ; 4 uses
  %i.gf = phi ptr [ %i.ee, %.preheader.lr.ph ], [ %i.hr, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ]
  %i.gg = phi i64 [ 0, %.preheader.lr.ph ], [ %i.hq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ]
  %.072403 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.hp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153 ] ; 2 uses
  br i1 %.not424, label %.critedge, label %.lr.ph402

._crit_edge404:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153, %._crit_edge398
  %i.gh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.am unwind label %.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ag:                                            ; preds = %.lr.ph402
  %i.gi = add i32 %.070401, 1                     ; 2 uses
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = icmp ugt i64 %i.ei, %i.gj
  br i1 %i.gk, label %.lr.ph402, label %.critedge, !llvm.loop !36

.lr.ph402:                                        ; preds = %.preheader, %bb.ag
  %i.gl = phi i64 [ %i.gj, %bb.ag ], [ 0, %.preheader ]
  %.070401 = phi i32 [ %i.gi, %bb.ag ], [ 0, %.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0192.1.lcssa, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.go = icmp eq i32 %.072403, %i.gn
  br i1 %i.go, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153, label %bb.ag

.critedge:                                        ; preds = %bb.ag, %.preheader
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gg ; 2 uses
  %.not.i144 = icmp eq ptr %i.ge, %i.gd
  br i1 %.not.i144, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !16
  store i32 %i.gq, ptr %i.ge, align 4, !tbaa !16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  store ptr %i.gr, ptr %i.cn, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153

bb.ai:                                            ; preds = %.critedge
  %i.gs = ptrtoint ptr %i.gd to i64
  %i.gt = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775804
  br i1 %i.gv, label %bb.aj, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i145

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #15
          to label %.noexc151 unwind label %.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc151:                                        ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i145: ; preds = %bb.ai
  %i.gw = ashr exact i64 %i.gu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i146 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add nsw i64 %.sroa.speculated.i.i.i146, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 2305843009213693951)
  %i.ha = select i1 %i.gy, i64 2305843009213693951, i64 %i.gz ; 3 uses
  %.not.i.i.i147 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i147)
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #13
          to label %.noexc152 unwind label %.loopexit.split-lp293.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc152:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i145
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  %i.he = load i32, ptr %i.gp, align 4, !tbaa !16
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !16
  %i.hf = icmp sgt i64 %i.gu, 0
  br i1 %i.hf, label %bb.ak, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i148

bb.ak:                                            ; preds = %.noexc152
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.gc, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i148

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i148: ; preds = %bb.ak, %.noexc152
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 2 uses
  %.not.i17.i.i149 = icmp eq ptr %i.gc, null
  br i1 %.not.i17.i.i149, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i148
  %i.hh = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.hj) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150: ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i148
  store ptr %i.hc, ptr %4, align 8, !tbaa !25
  store ptr %i.hg, ptr %i.cn, align 8, !tbaa !27
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha ; 2 uses
  store ptr %i.hk, ptr %i.co, align 8, !tbaa !26
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !27
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit153

_ZNSt6vectorIiSaIiEE9push_backERKi.exit153:       ; preds = %.lr.ph402, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150, %bb.ah
  %i.hl = phi ptr [ %i.gb, %bb.ah ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150 ], [ %i.gb, %.lr.ph402 ] ; 2 uses
  %i.hm = phi ptr [ %i.gc, %bb.ah ], [ %i.hc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150 ], [ %i.gc, %.lr.ph402 ]
  %i.hn = phi ptr [ %i.gd, %bb.ah ], [ %i.hk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150 ], [ %i.gd, %.lr.ph402 ]
  %i.ho = phi ptr [ %i.gr, %bb.ah ], [ %i.hg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i150 ], [ %i.ge, %.lr.ph402 ]
  %i.hp = add i32 %.072403, 1                     ; 2 uses
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.hs = ptrtoint ptr %i.hl to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 2
  %i.hw = icmp ugt i64 %i.hv, %i.hq
  br i1 %i.hw, label %.preheader, label %._crit_edge404, !llvm.loop !37

bb.am:                                            ; preds = %._crit_edge404
end_hunk_0
