inline.NumInlined: 1765
inline.NumDeleted: 766
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11DXFImporter21ExpandBlockReferencesERNS_3DXF5BlockERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS2_St4lessISA_ESaISt4pairIKSA_SC_EEE:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph137, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.029136 = phi i64 [ 0, %.lr.ph137 ], [ %i.il, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = load ptr, ptr %i.ai, align 8
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.029136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  store ptr %i.ba, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.g, align 8
  %.not.i.i.i39 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i39, label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.bd, align 4
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.bi = phi ptr [ %i.ba, %bb.f ], [ %i.ba, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %.not125 = icmp eq ptr %i.bi, null
  br i1 %.not125, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit
  %i.bj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.au unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bl = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #27
          to label %bb.n unwind label %bb.ab      ; 10 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp3DXF8PolyLineC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.bl, ptr noundef nonnull align 8 dereferenceable(168) %i.bi)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  store ptr %i.bl, ptr %4, align 8
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.t unwind label %bb.p       ; 7 uses

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #26 ; 0 uses
  tail call void @_ZN6Assimp3DXF8PolyLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.bl) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 168) #30
  invoke void @__cxa_rethrow() #28
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #29
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 7 uses
  store i32 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 1, ptr %i.bu, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bm, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bl, ptr %i.bv, align 8
  store ptr %i.bm, ptr %i.h, align 8
  %i.bw = load <2 x float>, ptr %i.aq, align 8    ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.bw, %i.bw
  %i.bx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.by = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = load float, ptr %i.ar, align 8          ; 4 uses
  %i.cb = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = fcmp une float %i.cb, 0.000000e+00
  %.pre148 = load float, ptr %i.as, align 4       ; 3 uses
  br i1 %i.cc, label %._crit_edge149, label %bb.u

._crit_edge149:                                   ; preds = %bb.t
  %.pre150 = load float, ptr %i.at, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cd = fcmp une float %.pre148, 1.000000e+00
  %.pre151 = load float, ptr %i.at, align 8       ; 2 uses
  %i.ce = fcmp une float %.pre151, 1.000000e+00
  %or.cond = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = load float, ptr %i.au, align 4
  %i.cg = fcmp une float %i.cf, 1.000000e+00
  br i1 %i.cg, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = load float, ptr %i.av, align 8
  %i.ci = fcmp une float %i.ch, 0.000000e+00
  br i1 %i.ci, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load float, ptr %.sroa.0121.0139, align 8 ; 2 uses
  %i.ck = load float, ptr %i.aw, align 4          ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.cl)
  %i.cn = load float, ptr %i.ax, align 8          ; 2 uses
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cm)
  %i.cp = fcmp une float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %._crit_edge149, %bb.u, %bb.v, %bb.w, %bb.x
  %i.cq = phi float [ %.pre150, %._crit_edge149 ], [ %.pre151, %bb.u ], [ 1.000000e+00, %bb.x ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %bb.w ] ; 2 uses
  %i.cr = fneg <2 x float> %i.bw                  ; 3 uses
  %i.cs = fneg float %i.ca                        ; 2 uses
  %i.ct = load float, ptr %.sroa.0121.0139, align 8 ; 3 uses
  %i.cu = load float, ptr %i.aw, align 4          ; 2 uses
  %i.cv = load float, ptr %i.ax, align 8          ; 2 uses
  %i.cw = fmul float %i.cu, 0.000000e+00          ; 2 uses
  %i.cx = fadd float %i.ct, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.ct, float 0.000000e+00, float %i.cu)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float 0.000000e+00) ; 5 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float 1.000000e+00) ; 4 uses
  %i.db = tail call float @llvm.fmuladd.f32(float %i.ct, float 0.000000e+00, float %i.cw)
  %i.dc = fadd float %i.cv, %i.db
  %i.dd = fsub float %i.dc, %i.ca                 ; 4 uses
  %i.de = load float, ptr %i.au, align 4          ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 3 uses
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00>) ; 2 uses
  %i.di = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.cy, i64 1
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> zeroinitializer, <2 x float> %i.dl)
  %i.dn = fsub <2 x float> %i.dm, %i.bw           ; 4 uses
  %i.do = fmul <2 x float> %i.dh, zeroinitializer ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %.pre148, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dg, <2 x float> %i.do)
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.dr)
  %i.dt = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.dh, %i.du
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> zeroinitializer, <2 x float> %i.dv)
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.dw)
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> zeroinitializer, <2 x float> %i.do) ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.df, <2 x float> %i.dy)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> zeroinitializer, <2 x float> %i.dy)
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> %i.ds)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> %i.dx)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> zeroinitializer, <2 x float> %i.eb)
  %i.eg = fadd <2 x float> %i.ec, %i.dn
  %i.eh = fmul float %i.cz, 0.000000e+00          ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %.pre148, float %i.cz, float %i.eh)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.da, float 0.000000e+00, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.ej)
  %i.el = fmul float %i.cz, %i.cq
  %i.em = tail call float @llvm.fmuladd.f32(float %i.cz, float 0.000000e+00, float %i.el)
  %i.en = tail call float @llvm.fmuladd.f32(float %i.da, float 0.000000e+00, float %i.em)
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.dd, float 0.000000e+00, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.cz, float 0.000000e+00, float %i.eh) ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.de, float %i.da, float %i.ep)
  %5 = insertelement <2 x float> poison, float %i.dd, i64 0
  %6 = insertelement <2 x float> %5, float %i.da, i64 1
  %7 = insertelement <2 x float> poison, float %i.eq, i64 0
  %8 = insertelement <2 x float> %7, float %i.ep, i64 1
  %9 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> zeroinitializer, <2 x float> %8) ; 2 uses
  %10 = extractelement <2 x float> %9, i64 1
  %i.er = fadd float %10, %i.dd
  %i.es = load float, ptr %i.av, align 8
  %i.et = fcmp une float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.eu = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.eu, ptr noundef nonnull @.str.25)
          to label %bb.ae unwind label %bb.ad

bb.ab:                                            ; preds = %bb.m
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.n
  %i.ew = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 168) #30
  br label %.body

.loopexit128:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ae:                                            ; preds = %bb.aa, %bb.y
  %i.ey = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8            ; 2 uses
  %.not126134 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not126134, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ae
  %11 = extractelement <2 x float> %9, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.066.0135 = phi ptr [ %i.fu, %.lr.ph ], [ %i.ey, %.lr.ph.preheader ] ; 5 uses
  %i.fb = load float, ptr %.sroa.066.0135, align 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 4
  %i.fd = load float, ptr %i.fc, align 4          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 8 ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4          ; 2 uses
  %i.fg = insertelement <2 x float> poison, float %i.fd, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.ee, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.fk, <2 x float> %i.fi)
  %i.fm = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fn, <2 x float> %i.fl)
  %i.fp = fadd <2 x float> %i.eg, %i.fo
  %i.fq = fmul float %i.eo, %i.fd
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.ek, float %i.fb, float %i.fq)
  %i.fs = tail call float @llvm.fmuladd.f32(float %11, float %i.ff, float %i.fr)
  %i.ft = fadd float %i.er, %i.fs
  store <2 x float> %i.fp, ptr %.sroa.066.0135, align 4
  store float %i.ft, ptr %i.fe, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 12 ; 2 uses
  %.not126 = icmp eq ptr %i.fu, %i.fa
  br i1 %.not126, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.ae, %bb.x
  %i.fv = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.fw = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.fv, %i.fw
  br i1 %.not.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.loopexit
  store ptr %i.bl, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.bm, ptr %i.fx, align 8
  %i.fy = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i54 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i32, ptr %i.bt, align 8
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gb = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i: ; preds = %bb.ah, %bb.ag
  %i.gc = load ptr, ptr %i.i, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.gd, ptr %i.i, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %.loopexit
  %i.ge = load ptr, ptr %1, align 8               ; 5 uses
  %i.gf = ptrtoint ptr %i.fv to i64
  %i.gg = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775792
  br i1 %i.gi, label %bb.aj, label %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ai
  %i.gj = ashr exact i64 %i.gh, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.umin.i64(i64 %i.gk, i64 576460752303423487)
  %i.gn = select i1 %i.gl, i64 576460752303423487, i64 %i.gm ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.gn, 0
  tail call void @llvm.assume(i1 %.not.i.i60)
  %i.go = shl nuw nsw i64 %i.gn, 4
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #27
          to label %bb.ak unwind label %.loopexit128 ; 5 uses

bb.ak:                                            ; preds = %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gh ; 2 uses
  store ptr %i.bl, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.bm, ptr %i.gr, align 8
  %i.gs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i62 = icmp eq i8 %i.gs, 0
  br i1 %.not.i.i.i.i.i62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gt = load i32, ptr %i.bt, align 8
  %i.gu = add nsw i32 %i.gt, 1
  store i32 %i.gu, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

bb.am:                                            ; preds = %bb.ak
  %i.gv = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63: ; preds = %bb.am, %bb.al
  %.not10.i.i.i.i = icmp eq ptr %i.ge, %i.fv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i ], [ %i.gp, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i.i ], [ %i.ge, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.gx = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  store ptr null, ptr %i.gw, align 8, !alias.scope !39, !noalias !36
  store <2 x ptr> %i.gx, ptr %.012.i.i.i.i, align 8, !alias.scope !36, !noalias !39
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  %i.gy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %i.gy, %i.fv
  br i1 %.not.i.i.i16.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gp, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ], [ %i.gz, %.lr.ph.i.i.i.i ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i24.i = icmp eq ptr %i.ge, null
  br i1 %.not.i24.i, label %.noexc, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  %i.hb = load ptr, ptr %i.j, align 8
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = sub i64 %i.hc, %i.gg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.hd) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.an, %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  store ptr %i.gp, ptr %1, align 8
  store ptr %i.ha, ptr %i.i, align 8
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.gn
  store ptr %i.he, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i
  %i.hf = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 4 uses
  %i.hh = load atomic i64, ptr %i.hg acquire, align 8 ; 2 uses
  %i.hi = icmp eq i64 %i.hh, 4294967297
  %i.hj = trunc i64 %i.hh to i32                  ; 2 uses
  br i1 %i.hi, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hg, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 12
  store i32 0, ptr %i.hk, align 4
  %i.hl = load ptr, ptr %i.hf, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #26, !inline_history !42
  %i.ho = load ptr, ptr %i.hf, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #26, !inline_history !42
  br label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hr = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i55 = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i55, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hs = add nsw i32 %i.hj, -1
  store i32 %i.hs, ptr %i.hg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ht = atomicrmw volatile add ptr %i.hg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i = phi i32 [ %i.hj, %bb.ar ], [ %i.ht, %bb.as ]
  %i.hu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hu, label %bb.at, label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hf) #26
  br label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.k, %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hv = load ptr, ptr %i.g, align 8             ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 4 uses
  %i.hx = load atomic i64, ptr %i.hw acquire, align 8 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 4294967297
  %i.hz = trunc i64 %i.hx to i32                  ; 2 uses
  br i1 %i.hy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hw, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 12
  store i32 0, ptr %i.ia, align 4
  %i.ib = load ptr, ptr %i.hv, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  tail call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #26, !inline_history !23
  %i.ie = load ptr, ptr %i.hv, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  %i.ig = load ptr, ptr %i.if, align 8
  tail call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hv) #26, !inline_history !23
end_hunk_0
