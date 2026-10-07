Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingBSplineCurve?download=true
inline.NumInlined: 1494
inline.NumDeleted: 467
begin_hunk_0_@_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl31computeKnotsAndCoefsForRGBCurveERNS0_10KnotsCoefsEi:bb.a
.loopexit.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit190.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.i:                             ; preds = %bb.l
  %lpad.loopexit.split-lp191.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit193.i:                                   ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i78.i
  %lpad.loopexit195.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp194.i:                          ; preds = %bb.q
  %lpad.loopexit.split-lp196.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.t:                                             ; preds = %._crit_edge.i
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.cm
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load float, ptr %.sroa.0165.0.lcssa.i, align 4, !tbaa !39
  store float %i.cn, ptr %i.ck, align 4, !tbaa !39
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !40
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cp = load ptr, ptr %7, align 8, !tbaa !36    ; 4 uses
  %i.cq = ptrtoint ptr %i.ck to i64
  %i.cr = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %.invoke.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.cu = ashr exact i64 %i.cs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 2305843009213693951)
  %i.cy = select i1 %i.cw, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #21
          to label %.noexc88.i unwind label %bb.ac ; 4 uses

.noexc88.i:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  %i.dc = load float, ptr %.sroa.0165.0.lcssa.i, align 4, !tbaa !39
  store float %i.dc, ptr %i.db, align 4, !tbaa !39
  %i.dd = icmp sgt i64 %i.cs, 0
  br i1 %i.dd, label %bb.w, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.w:                                             ; preds = %.noexc88.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %i.cp, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.w, %.noexc88.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.df = load ptr, ptr %i.cl, align 8, !tbaa !37
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dh) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  store ptr %i.da, ptr %7, align 8, !tbaa !36
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !40
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cy ; 2 uses
  store ptr %i.di, ptr %i.cl, align 8, !tbaa !37
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i

_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.u
  %i.dj = phi ptr [ %i.di, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.cm, %bb.u ] ; 2 uses
  %i.dk = phi ptr [ %i.de, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %i.co, %bb.u ] ; 3 uses
  %.not.i89.i = icmp eq ptr %i.dk, %i.dj
  br i1 %.not.i89.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i
  %i.dl = load float, ptr %.sroa.0165.0.lcssa.i, align 4, !tbaa !39
  store float %i.dl, ptr %i.dk, align 4, !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.dm, ptr %i.cj, align 8, !tbaa !40
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.i

bb.z:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit.i
  %i.dn = load ptr, ptr %7, align 8, !tbaa !36    ; 4 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775804
  br i1 %i.dr, label %.invoke.i, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i90.i

.invoke.i:                                        ; preds = %bb.z, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.cont.i unwind label %bb.ac

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i90.i: ; preds = %bb.z
  %i.ds = ashr exact i64 %i.dq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i91.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i91.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951)
  %i.dw = select i1 %i.du, i64 2305843009213693951, i64 %i.dv ; 3 uses
  %.not.i.i.i92.i = icmp ne i64 %i.dw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i92.i)
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #21
          to label %.noexc97.i unwind label %bb.ac ; 4 uses

.noexc97.i:                                       ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i90.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  %i.ea = load float, ptr %.sroa.0165.0.lcssa.i, align 4, !tbaa !39
  store float %i.ea, ptr %i.dz, align 4, !tbaa !39
  %i.eb = icmp sgt i64 %i.dq, 0
  br i1 %i.eb, label %bb.aa, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i93.i

bb.aa:                                            ; preds = %.noexc97.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dy, ptr align 4 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i93.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i93.i: ; preds = %bb.aa, %.noexc97.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %.not.i17.i.i94.i = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i94.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i95.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i93.i
  %i.ed = load ptr, ptr %i.cl, align 8, !tbaa !37
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i95.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i95.i: ; preds = %bb.ab, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i93.i
  store ptr %i.dy, ptr %7, align 8, !tbaa !36
  store ptr %i.ec, ptr %i.cj, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.eg, ptr %i.cl, align 8, !tbaa !37
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i90.i, %.invoke.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ad:                                            ; preds = %._crit_edge259.i, %.preheader.i
  %.061.i = phi i64 [ %i.fe, %._crit_edge259.i ], [ 0, %.preheader.i ] ; 11 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %.061.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !39 ; 2 uses
  %i.ek = icmp ult i64 %.061.i, %i.ar
  br i1 %i.ek, label %.lr.ph248.preheader.i, label %.critedge.i

.lr.ph248.preheader.i:                            ; preds = %bb.ad
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0165.0.lcssa.i, i64 %.061.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !39
  br label %.lr.ph248.i

.lr.ph248.i:                                      ; preds = %bb.ae, %.lr.ph248.preheader.i
  %i.el = phi float [ %i.eo, %bb.ae ], [ %.pre.i, %.lr.ph248.preheader.i ]
  %.059246.i = phi float [ %i.eu, %bb.ae ], [ %i.ej, %.lr.ph248.preheader.i ] ; 2 uses
  %.060245.i = phi i64 [ %i.em, %bb.ae ], [ %.061.i, %.lr.ph248.preheader.i ] ; 2 uses
  %i.em = add nuw i64 %.060245.i, 1               ; 4 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0165.0.lcssa.i, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !39 ; 2 uses
  %i.ep = fsub float %i.eo, %i.el
  %i.eq = tail call noundef float @llvm.fabs.f32(float %i.ep)
  %i.er = fcmp olt float %i.eq, f0x358637BD
  br i1 %i.er, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %.lr.ph248.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %i.em
  %i.et = load float, ptr %i.es, align 4, !tbaa !39
  %i.eu = fadd float %.059246.i, %i.et            ; 2 uses
  %exitcond284.not.i = icmp eq i64 %i.em, %i.ar
  br i1 %exitcond284.not.i, label %.critedge.i, label %.lr.ph248.i, !llvm.loop !112

.critedge.i:                                      ; preds = %bb.ae, %.lr.ph248.i, %bb.ad
  %.060.lcssa.i = phi i64 [ %.061.i, %bb.ad ], [ %.060245.i, %.lr.ph248.i ], [ %i.ar, %bb.ae ] ; 5 uses
  %.059.lcssa.i = phi float [ %i.ej, %bb.ad ], [ %.059246.i, %.lr.ph248.i ], [ %i.eu, %bb.ae ] ; 2 uses
  %.not256.i = icmp ugt i64 %.061.i, %.060.lcssa.i
  br i1 %.not256.i, label %._crit_edge259.i, label %.lr.ph258.i.preheader

.lr.ph258.i.preheader:                            ; preds = %.critedge.i
  %i.ev = add i64 %.061.i, 1
  %i.ew = add i64 %.060.lcssa.i, 1
  %i.ex = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 %i.ew)
  %i.ey = sub i64 %i.ex, %.061.i                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.ey, 8
  br i1 %min.iters.check, label %.lr.ph258.i.preheader302, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph258.i.preheader
  %n.vec = and i64 %i.ey, -8                      ; 3 uses
  %i.ez = add i64 %.061.i, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.059.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fa = getelementptr [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %.061.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x float> %broadcast.splat, ptr %i.fb, align 4, !tbaa !39
  store <4 x float> %broadcast.splat, ptr %i.fc, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ey, %n.vec
  br i1 %cmp.n, label %._crit_edge259.i, label %.lr.ph258.i.preheader302

.lr.ph258.i.preheader302:                         ; preds = %.lr.ph258.i.preheader, %middle.block
  %.058257.i.ph = phi i64 [ %.061.i, %.lr.ph258.i.preheader ], [ %i.ez, %middle.block ]
  br label %.lr.ph258.i

._crit_edge259.i:                                 ; preds = %.lr.ph258.i, %middle.block, %.critedge.i
  %.not71.i = icmp ult i64 %.060.lcssa.i, %i.aq
  %i.fe = add nuw i64 %.060.lcssa.i, 1
  br i1 %.not71.i, label %bb.ad, label %bb.af

.lr.ph258.i:                                      ; preds = %.lr.ph258.i.preheader302, %.lr.ph258.i
  %.058257.i = phi i64 [ %i.fg, %.lr.ph258.i ], [ %.058257.i.ph, %.lr.ph258.i.preheader302 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa.i, i64 %.058257.i
  store float %.059.lcssa.i, ptr %i.ff, align 4, !tbaa !39
  %i.fg = add i64 %.058257.i, 1                   ; 2 uses
  %.not.i = icmp ugt i64 %i.fg, %.060.lcssa.i
  br i1 %.not.i, label %._crit_edge259.i, label %.lr.ph258.i, !llvm.loop !114

bb.af:                                            ; preds = %._crit_edge259.i
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !37 ; 2 uses
  %.not.i.i99.i = icmp eq ptr %i.fi, %i.fk
  br i1 %.not.i.i99.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store float 0.000000e+00, ptr %i.fi, align 4, !tbaa !39
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 4 ; 2 uses
  store ptr %i.fl, ptr %i.fh, align 8, !tbaa !40
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i

bb.ah:                                            ; preds = %bb.af
  %i.fm = load ptr, ptr %7, align 8, !tbaa !36    ; 4 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 5 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775804
  br i1 %i.fq, label %bb.ai, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc106.i unwind label %bb.ap

.noexc106.i:                                      ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100.i: ; preds = %bb.ah
  %i.fr = ashr exact i64 %i.fp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i101.i = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i101.i, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 2305843009213693951)
  %i.fv = select i1 %i.ft, i64 2305843009213693951, i64 %i.fu ; 3 uses
  %.not.i.i.i.i102.i = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i102.i)
  %i.fw = shl nuw nsw i64 %i.fv, 2
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #21
          to label %.noexc107.i unwind label %bb.ap ; 4 uses

.noexc107.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100.i
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.fp ; 2 uses
  store float 0.000000e+00, ptr %i.fy, align 4, !tbaa !39
  %i.fz = icmp sgt i64 %i.fp, 0
  br i1 %i.fz, label %bb.aj, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103.i

bb.aj:                                            ; preds = %.noexc107.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fx, ptr align 4 %i.fm, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103.i: ; preds = %bb.aj, %.noexc107.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 2 uses
  %.not.i17.i.i.i104.i = icmp eq ptr %i.fm, null
  br i1 %.not.i17.i.i.i104.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103.i
  %i.gb = load ptr, ptr %i.fj, align 8, !tbaa !37
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.gd) #22
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i: ; preds = %bb.ak, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i103.i
  store ptr %i.fx, ptr %7, align 8, !tbaa !36
  store ptr %i.ga, ptr %i.fh, align 8, !tbaa !40
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fv ; 2 uses
  store ptr %i.ge, ptr %i.fj, align 8, !tbaa !37
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i

_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i:      ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i, %bb.ag
  %i.gf = phi ptr [ %i.ge, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i ], [ %i.fk, %bb.ag ] ; 2 uses
  %i.gg = phi ptr [ %i.ga, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i105.i ], [ %i.fl, %bb.ag ] ; 2 uses
  %i.gh = icmp ugt i64 %i.ao, 1
  br i1 %i.gh, label %.lr.ph261.i, label %._crit_edge262.i

._crit_edge262.i:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i
  %i.gi = phi ptr [ %i.gf, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i ], [ %i.iw, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ] ; 2 uses
  %i.gj = phi ptr [ %i.gg, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i ], [ %i.ix, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0165.0.lcssa.i, i64 %i.ar
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !39
  %i.gm = load ptr, ptr %7, align 8, !tbaa !36    ; 5 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.ar
  %i.go = load float, ptr %i.gn, align 4, !tbaa !39
  %i.gp = fneg float %i.go
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gl, float 3.000000e+00, float %i.gp)
  %i.gr = fmul float %i.gq, 5.000000e-01          ; 3 uses
  %i.gs = fcmp ogt float %i.gr, f0x3C23D70A       ; 2 uses
  %.not.i109.i = icmp eq ptr %i.gj, %i.gi
  br i1 %.not.i109.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge262.i
  %.sroa.speculated141.i = select i1 %i.gs, float %i.gr, float f0x3C23D70A
  store float %.sroa.speculated141.i, ptr %i.gj, align 4, !tbaa !39
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store ptr %i.gt, ptr %i.fh, align 8, !tbaa !40
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.thread.i

bb.am:                                            ; preds = %._crit_edge262.i
  %i.gu = ptrtoint ptr %i.gi to i64
  %i.gv = ptrtoint ptr %i.gm to i64               ; 2 uses
  %i.gw = sub i64 %i.gu, %i.gv                    ; 5 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775804
  br i1 %i.gx, label %bb.an, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i110.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.95) #24
          to label %.noexc116.i unwind label %bb.aw

.noexc116.i:                                      ; preds = %bb.an
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i110.i: ; preds = %bb.am
  %i.gy = ashr exact i64 %i.gw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i111.i = tail call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i111.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = tail call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951)
  %i.hc = select i1 %i.ha, i64 2305843009213693951, i64 %i.hb ; 3 uses
  %.not.i.i.i112.i = icmp ne i64 %i.hc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i112.i)
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #21
          to label %.noexc117.i unwind label %bb.aw ; 5 uses

.noexc117.i:                                      ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i110.i
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  %.sroa.speculated138.i = select i1 %i.gs, float %i.gr, float f0x3C23D70A
  store float %.sroa.speculated138.i, ptr %i.hf, align 4, !tbaa !39
  %i.hg = icmp sgt i64 %i.gw, 0
  br i1 %i.hg, label %bb.ao, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i

bb.ao:                                            ; preds = %.noexc117.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr nonnull align 4 %i.gm, i64 %i.gw, i1 false)
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i115.i: ; preds = %bb.ao, %.noexc117.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hi = load ptr, ptr %i.fj, align 8, !tbaa !37
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.hk) #22
  store ptr %i.he, ptr %7, align 8, !tbaa !36
  store ptr %i.hh, ptr %i.fh, align 8, !tbaa !40
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %i.hc
  store ptr %i.hl, ptr %i.fj, align 8, !tbaa !37
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit98.thread.i

bb.ap:                                            ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i100.i, %bb.ai
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph261.i:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i
  %i.hn = phi ptr [ %i.iw, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit128.i ], [ %i.gf, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit108.i ] ; 3 uses
end_hunk_0
