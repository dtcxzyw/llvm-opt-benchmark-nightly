inline.NumInlined: 1765
inline.NumDeleted: 766
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp11DXFImporter21ExpandBlockReferencesERNS_3DXF5BlockERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS2_St4lessISA_ESaISt4pairIKSA_SC_EEE:bb.a
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.n) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ae = sub i64 %i.n, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.e

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.b, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ag = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorIJRA41_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 1 dereferenceable(41) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 1 dereferenceable(11) @.str.23)
  br label %.loopexit127

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.ak, %i.al
  br i1 %.not142, label %.loopexit127, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.e
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph137, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.029136 = phi i64 [ 0, %.lr.ph137 ], [ %i.ia, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
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
  %i.ct = load float, ptr %i.ax, align 8          ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float 0.000000e+00) ; 5 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cs, float 0.000000e+00, float 1.000000e+00) ; 4 uses
  %6 = load float, ptr %i.au, align 4             ; 2 uses
  %7 = load float, ptr %i.aw, align 4             ; 2 uses
  %8 = load float, ptr %.sroa.0121.0139, align 8  ; 3 uses
  %9 = fmul float %7, 0.000000e+00                ; 2 uses
  %10 = fadd float %8, %9
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 3 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00>) ; 2 uses
  %12 = tail call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %7)
  %i.cx = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %10, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %12, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> zeroinitializer, <2 x float> %i.da)
  %i.dc = fsub <2 x float> %i.db, %i.bw           ; 4 uses
  %13 = tail call float @llvm.fmuladd.f32(float %8, float 0.000000e+00, float %9)
  %14 = fadd float %i.ct, %13
  %15 = fsub float %14, %i.ca                     ; 4 uses
  %i.dd = fmul <2 x float> %i.cw, zeroinitializer ; 2 uses
  %i.de = insertelement <2 x float> poison, float %.pre148, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.cv, <2 x float> %i.dd)
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> zeroinitializer, <2 x float> %i.dg)
  %i.di = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.cw, %i.dj
  %i.dl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> zeroinitializer, <2 x float> %i.dk)
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> zeroinitializer, <2 x float> %i.dl)
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> zeroinitializer, <2 x float> %i.dd) ; 2 uses
  %i.do = insertelement <2 x float> poison, float %6, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %11, <2 x float> %i.dn)
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> zeroinitializer, <2 x float> %i.dn)
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.dh)
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.dm)
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dc, <2 x float> zeroinitializer, <2 x float> %i.dq)
  %i.dv = fadd <2 x float> %i.dr, %i.dc
  %i.dw = fmul float %5, 0.000000e+00             ; 2 uses
  %i.dx = tail call float @llvm.fmuladd.f32(float %.pre148, float %5, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.dx)
  %i.dz = tail call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.dy)
  %i.ea = fmul float %5, %i.cq
  %i.eb = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %i.ea)
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.eb)
  %i.ed = tail call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.ec)
  %i.ee = tail call float @llvm.fmuladd.f32(float %5, float 0.000000e+00, float %i.dw) ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %6, float %i.cu, float %i.ee)
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.ef)
  %17 = tail call float @llvm.fmuladd.f32(float %i.cu, float 0.000000e+00, float %i.ee)
  %i.eg = fadd float %17, %15
  %i.eh = load float, ptr %i.av, align 8
  %i.ei = fcmp une float %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ej = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ej, ptr noundef nonnull @.str.25)
          to label %bb.ae unwind label %bb.ad

bb.ab:                                            ; preds = %bb.m
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.n
  %i.el = landingpad { ptr, i32 }
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
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ae:                                            ; preds = %bb.aa, %bb.y
  %i.en = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not126134 = icmp eq ptr %i.en, %i.ep
  br i1 %.not126134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %.lr.ph
  %.sroa.066.0135 = phi ptr [ %i.fj, %.lr.ph ], [ %i.en, %bb.ae ] ; 5 uses
  %i.eq = load float, ptr %.sroa.066.0135, align 4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 4
  %i.es = load float, ptr %i.er, align 4          ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 8 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4          ; 2 uses
  %i.ev = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul <2 x float> %i.dt, %i.ew
  %i.ey = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.ez, <2 x float> %i.ex)
  %i.fb = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.fc, <2 x float> %i.fa)
  %i.fe = fadd <2 x float> %i.dv, %i.fd
  %i.ff = fmul float %i.ed, %i.es
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.eq, float %i.ff)
  %i.fh = tail call float @llvm.fmuladd.f32(float %16, float %i.eu, float %i.fg)
  %i.fi = fadd float %i.eg, %i.fh
  store <2 x float> %i.fe, ptr %.sroa.066.0135, align 4
  store float %i.fi, ptr %i.et, align 4
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 12 ; 2 uses
  %.not126 = icmp eq ptr %i.fj, %i.ep
  br i1 %.not126, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.ae, %bb.x
  %i.fk = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.fl = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.loopexit
  store ptr %i.bl, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.bm, ptr %i.fm, align 8
  %i.fn = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i54 = icmp eq i8 %i.fn, 0
  br i1 %.not.i.i.i.i.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fo = load i32, ptr %i.bt, align 8
  %i.fp = add nsw i32 %i.fo, 1
  store i32 %i.fp, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.fq = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i: ; preds = %bb.ah, %bb.ag
  %i.fr = load ptr, ptr %i.i, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store ptr %i.fs, ptr %i.i, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %.loopexit
  %i.ft = load ptr, ptr %1, align 8               ; 5 uses
  %i.fu = ptrtoint ptr %i.fk to i64
  %i.fv = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775792
  br i1 %i.fx, label %bb.aj, label %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ai
  %i.fy = ashr exact i64 %i.fw, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 576460752303423487)
  %i.gc = select i1 %i.ga, i64 576460752303423487, i64 %i.gb ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.gc, 0
  tail call void @llvm.assume(i1 %.not.i.i60)
  %i.gd = shl nuw nsw i64 %i.gc, 4
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #27
          to label %bb.ak unwind label %.loopexit128 ; 5 uses

bb.ak:                                            ; preds = %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw ; 2 uses
  store ptr %i.bl, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.bm, ptr %i.gg, align 8
  %i.gh = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i62 = icmp eq i8 %i.gh, 0
  br i1 %.not.i.i.i.i.i62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = load i32, ptr %i.bt, align 8
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

bb.am:                                            ; preds = %bb.ak
  %i.gk = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63: ; preds = %bb.am, %bb.al
  %.not10.i.i.i.i = icmp eq ptr %i.ft, %i.fk
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i.i ], [ %i.ge, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i.i ], [ %i.ft, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.gm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  store ptr null, ptr %i.gl, align 8, !alias.scope !39, !noalias !36
  store <2 x ptr> %i.gm, ptr %.012.i.i.i.i, align 8, !alias.scope !36, !noalias !39
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !39, !noalias !36
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %i.gn, %i.fk
  br i1 %.not.i.i.i16.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ge, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ], [ %i.go, %.lr.ph.i.i.i.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i24.i = icmp eq ptr %i.ft, null
  br i1 %.not.i24.i, label %.noexc, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  %i.gq = load ptr, ptr %i.j, align 8
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.fv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.gs) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.an, %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  store ptr %i.ge, ptr %1, align 8
  store ptr %i.gp, ptr %i.i, align 8
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gt, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i
  %i.gu = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.gv, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4
  %i.ha = load ptr, ptr %i.gu, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  tail call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !42
  %i.hd = load ptr, ptr %i.gu, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  tail call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !42
  br label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hg = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i55 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i55, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i = phi i32 [ %i.gy, %bb.ar ], [ %i.hi, %bb.as ]
  %i.hj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.hj, label %bb.at, label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26
  br label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.k, %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hk = load ptr, ptr %i.g, align 8             ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 4 uses
  %i.hm = load atomic i64, ptr %i.hl acquire, align 8 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 4294967297
  %i.ho = trunc i64 %i.hm to i32                  ; 2 uses
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hl, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  store i32 0, ptr %i.hp, align 4
  %i.hq = load ptr, ptr %i.hk, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #26, !inline_history !23
  %i.ht = load ptr, ptr %i.hk, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  tail call void %i.hv(ptr noundef nonnull align 8 dereferenceable(16) %i.hk) #26, !inline_history !23
end_hunk_0
