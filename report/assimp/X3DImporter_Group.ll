Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Group?download=true
inline.NumInlined: 283
inline.NumDeleted: 129
begin_hunk_0_@_ZN6Assimp11X3DImporter18startReadTransformERN4pugi8xml_nodeE:bb.a
  %i.n = load i64, ptr %i.j, align 8
  %i.o = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #19
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull %i.m, i64 noundef %i.o)
          to label %bb.c unwind label %bb.l       ; 0 uses

bb.c:                                             ; preds = %.noexc35, %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = invoke ptr @_ZNK4pugi8xml_node9attributeEPKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1)
          to label %.noexc39 unwind label %bb.l

.noexc39:                                         ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8
  %i.r = invoke noundef zeroext i1 @_ZNK4pugi13xml_attribute5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc40 unwind label %bb.l

.noexc40:                                         ; preds = %.noexc39
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc40
  %i.s = invoke noundef ptr @_ZNK4pugi13xml_attribute9as_stringEPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.18)
          to label %.noexc41 unwind label %bb.l   ; 2 uses

.noexc41:                                         ; preds = %bb.d
  %i.t = load i64, ptr %i.h, align 8
  %i.u = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #19
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull %i.s, i64 noundef %i.u)
          to label %bb.e unwind label %bb.l       ; 0 uses

bb.e:                                             ; preds = %.noexc40, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.w = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.f unwind label %bb.l       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(12) %5)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.y = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper20getVector3DAttributeERN4pugi8xml_nodeEPKcR10aiVector3tIfE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(12) %6)
          to label %bb.h unwind label %bb.l       ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.z = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.j, label %_ZNSt6vectorIfSaIfEE5clearEv.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %9, align 8               ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, 16
  br i1 %.not, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull @.str.7)
          to label %.invoke unwind label %bb.n

bb.l:                                             ; preds = %.noexc41, %bb.d, %.noexc39, %bb.c, %.noexc36, %bb.b, %.noexc, %bb.a, %bb.g, %bb.f, %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.m:                                             ; preds = %.invoke, %bb.ac, %bb.af, %bb.ad, %bb.aa, %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.n:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #19
  br label %bb.ai

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.8.0.copyload18 = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ak = load <2 x float>, ptr %i.ac, align 4
  %i.al = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store ptr %i.ac, ptr %i.aa, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.i
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.8.0.copyload18, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.an = phi <2 x float> [ zeroinitializer, %bb.i ], [ %i.ak, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ao = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.i ], [ %i.am, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.ap = invoke noundef zeroext i1 @_ZN6Assimp12X3DXmlHelper22getFloatArrayAttributeERN4pugi8xml_nodeEPKcRSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  br i1 %i.ap, label %bb.p, label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %9, align 8               ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not32 = icmp eq i64 %i.av, 16
  br i1 %.not32, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull @.str.9)
          to label %.invoke unwind label %bb.r

.invoke:                                          ; preds = %bb.k, %bb.q
  %i.ax = phi ptr [ %i.aw, %bb.q ], [ %i.ag, %bb.k ]
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aw) #19
  br label %bb.ai

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45:      ; preds = %bb.p
  %i.az = load <3 x float>, ptr %i.as, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.sroa.11.0.copyload11 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  store ptr %i.as, ptr %i.aq, align 8
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit46

_ZNSt6vectorIfSaIfEE5clearEv.exit46:              ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45, %bb.o
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.o ], [ %.sroa.11.0.copyload11, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 3 uses
  %i.ba = phi <3 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.az, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i45 ] ; 10 uses
  %i.bb = load i64, ptr %i.h, align 8
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, null                 ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bh = invoke noundef ptr @_ZN6Assimp11X3DImporter23MACRO_USE_CHECKANDAPPLYERN4pugi8xml_nodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_11X3DElemTypeP18X3DNodeElementBase(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 0, ptr noundef null)
          to label %bb.w unwind label %bb.u       ; 0 uses

bb.w:                                             ; preds = %bb.v
  br i1 %i.bf, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bi = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.y unwind label %bb.u

bb.y:                                             ; preds = %bb.x
  br i1 %i.bi, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6Assimp11X3DImporter21ParseHelper_Node_ExitEv(ptr noundef nonnull align 8 dereferenceable(120) %0)
          to label %bb.ag unwind label %bb.u

bb.aa:                                            ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit46
  invoke void @_ZN6Assimp11X3DImporter23ParseHelper_Group_BeginEb(ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.m

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i64, ptr %i.j, align 8
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.m

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bo = load float, ptr %6, align 8
  %i.bp = load <2 x float>, ptr %i.e, align 4     ; 2 uses
  %i.bq = load float, ptr %i.f, align 8
  %i.br = load <2 x float>, ptr %4, align 8       ; 4 uses
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 1, i32 1>
  %10 = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x float> <float 1.000000e+00, float poison, float 0.000000e+00, float 1.000000e+00>, <4 x float> %10, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.bu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> zeroinitializer, <4 x float> %i.bt) ; 6 uses
  %i.bv = call noundef float @cosf(float noundef %.sroa.8.0) #19 ; 4 uses
  %i.bw = call noundef float @sinf(float noundef %.sroa.8.0) #19 ; 2 uses
  %i.bx = fsub float 1.000000e+00, %i.bv          ; 2 uses
  %i.by = extractelement <4 x float> %i.ao, i64 3
  %i.bz = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.an, %i.ca           ; 3 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.cd = extractelement <2 x float> %i.cb, i64 0
  %i.ce = extractelement <2 x float> %i.an, i64 0
  %i.cf = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.an, %i.cg           ; 2 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.cj = fneg <2 x float> %i.ch
  %i.ck = fmul float %i.by, %i.bx
  %i.cl = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float %i.ck, i64 3
  %i.cn = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.co = insertelement <4 x float> %i.ci, float %i.bv, i64 3
  %i.cp = shufflevector <2 x float> %i.cj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.cn, <4 x float> %i.cq) ; 7 uses
  %i.cs = extractelement <4 x float> %i.cr, i64 1 ; 2 uses
  %i.ct = extractelement <4 x float> %i.cr, i64 0 ; 3 uses
  %i.cu = extractelement <4 x float> %i.cr, i64 3 ; 3 uses
  %i.cv = extractelement <4 x float> %i.bu, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.bu, %i.cr
  %i.cw = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cx = extractelement <4 x float> %i.bu, i64 2 ; 4 uses
  %i.cy = extractelement <4 x float> %i.bu, i64 3 ; 2 uses
  %i.cz = fmul float %i.cx, %i.ct
  %i.da = fmul float %i.cx, 0.000000e+00
  %i.db = call float @llvm.fmuladd.f32(float %i.cx, float 0.000000e+00, float %i.da)
  %i.dc = call float @llvm.fmuladd.f32(float %i.cy, float 0.000000e+00, float %i.db)
  %i.dd = extractelement <3 x float> %i.ba, i64 2 ; 3 uses
  %i.de = extractelement <3 x float> %i.ba, i64 1
  %i.df = call noundef float @cosf(float noundef %.sroa.11.0) #19 ; 4 uses
  %i.dg = call noundef float @sinf(float noundef %.sroa.11.0) #19 ; 2 uses
  %i.dh = fsub float 1.000000e+00, %i.df          ; 2 uses
  %i.di = fmul float %i.ct, 0.000000e+00
  %i.dj = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.dk = shufflevector <4 x float> %i.cr, <4 x float> %i.dj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dl = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dm = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.do = fmul <4 x float> %i.dm, %i.dn           ; 3 uses
  %i.dp = shufflevector <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x float> %i.do, <4 x i32> <i32 0, i32 4, i32 4, i32 4>
  %i.dq = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.dq, %i.ds           ; 3 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dv = fneg <2 x float> %i.dt
  %i.dw = shufflevector <3 x float> %i.ba, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dy = extractelement <4 x float> %i.do, i64 1
  %i.dz = extractelement <2 x float> %i.dt, i64 1
  %i.ea = fmul float %i.dd, %i.dh
  %i.eb = load float, ptr %5, align 8             ; 3 uses
  %i.ec = load float, ptr %i.c, align 4           ; 4 uses
  %i.ed = load float, ptr %i.d, align 8           ; 3 uses
  %i.ee = fneg float %.sroa.11.0                  ; 2 uses
  %i.ef = call noundef float @cosf(float noundef %i.ee) #19 ; 4 uses
  %i.eg = call noundef float @sinf(float noundef %i.ee) #19 ; 2 uses
  %i.eh = fsub float 1.000000e+00, %i.ef
  %i.ei = fmul float %i.de, %i.eg                 ; 2 uses
  %i.ej = shufflevector <4 x float> %i.ao, <4 x float> %i.dj, <4 x i32> <i32 3, i32 6, i32 6, i32 4>
  %i.ek = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.dg, i64 1
  %i.em = insertelement <4 x float> %i.el, float %i.eg, i64 2
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.eo = fmul <4 x float> %i.ej, %i.en           ; 5 uses
  %i.ep = fneg <4 x float> %i.eo                  ; 4 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.er = insertelement <4 x float> %i.eq, float %i.bv, i64 2
  %i.es = shufflevector <4 x float> %i.er, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.et = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.ao, <4 x float> %i.es) ; 5 uses
  %i.eu = extractelement <4 x float> %i.et, i64 1 ; 2 uses
  %i.ev = extractelement <4 x float> %i.et, i64 3 ; 4 uses
  %i.ew = fmul float %i.cv, %i.eu
  %i.ex = call float @llvm.fmuladd.f32(float %i.ev, float %i.cx, float %i.cz)
  %i.ey = call float @llvm.fmuladd.f32(float %i.ev, float 0.000000e+00, float %i.di)
  %i.ez = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fa = insertelement <4 x float> %i.ez, float %i.df, i64 1
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.dk, <4 x float> %i.fc) ; 4 uses
  %i.fe = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ff = insertelement <4 x float> %i.fe, float %i.df, i64 1
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> %i.dx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dw, <4 x float> %i.fg) ; 6 uses
  %i.fi = extractelement <4 x float> %i.fh, i64 0 ; 2 uses
  %i.fj = extractelement <4 x float> %i.fd, i64 1 ; 4 uses
  %i.fk = extractelement <4 x float> %i.fh, i64 2 ; 4 uses
  %i.fl = extractelement <4 x float> %i.fh, i64 1
  %i.fm = extractelement <4 x float> %i.fd, i64 2 ; 4 uses
  %i.fn = extractelement <4 x float> %i.fh, i64 3 ; 2 uses
  %i.fo = extractelement <4 x float> %i.fd, i64 3 ; 4 uses
  %i.fp = fneg float %i.ei
  %i.fq = load float, ptr %i.b, align 8           ; 4 uses
  %i.fr = load float, ptr %i.a, align 4           ; 2 uses
  %i.fs = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.ft = fmul float %i.cv, 0.000000e+00
  %i.fu = fmul float %i.fr, 0.000000e+00          ; 2 uses
  %11 = fadd float %i.fs, %i.fu
  %12 = call float @llvm.fmuladd.f32(float %i.fs, float 0.000000e+00, float %i.fu) ; 2 uses
  %i.fv = fadd float %i.fq, %12
  %i.fw = call float @llvm.fmuladd.f32(float %i.cd, float %i.ce, float %i.bv) ; 3 uses
  %i.fx = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.fy = insertelement <4 x float> poison, float %12, i64 0
  %i.fz = call float @llvm.fmuladd.f32(float %i.dy, float %i.dd, float %i.dz) ; 4 uses
  %i.ga = call float @llvm.fmuladd.f32(float %i.ea, float %i.dd, float %i.df) ; 4 uses
  %i.gb = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gc = insertelement <2 x float> %i.gb, float %i.bo, i64 0 ; 3 uses
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0 ; 6 uses
  %i.gf = fmul float %i.ge, 0.000000e+00
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 2 uses
  %i.gh = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.gk = insertelement <2 x float> %i.gj, float %11, i64 0
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> zeroinitializer, <2 x float> %i.gk)
  %i.gm = fadd <2 x float> %i.gc, %i.gl           ; 3 uses
  %13 = extractelement <2 x float> %i.gd, i64 1   ; 6 uses
  %14 = call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %i.ft)
  %15 = extractelement <2 x float> %i.gg, i64 0   ; 3 uses
  %16 = call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.gf)
  %i.gn = fmul float %i.ge, %i.eu
  %i.go = shufflevector <4 x float> %i.bu, <4 x float> poison, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.gp = shufflevector <2 x float> %i.gd, <2 x float> %i.go, <2 x i32> <i32 0, i32 3>
  %i.gq = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.gr = fmul <2 x float> %i.gp, %i.gq
  %17 = fmul float %i.ge, %i.ct
  %i.gs = call float @llvm.fmuladd.f32(float %i.fw, float %13, float %i.ew)
  %i.gt = call float @llvm.fmuladd.f32(float %i.fw, float %15, float %i.gn)
  %i.gu = call float @llvm.fmuladd.f32(float %i.cs, float %13, float %i.gs)
  %i.gv = call float @llvm.fmuladd.f32(float %i.cs, float %i.ge, float %i.gt)
  %i.gw = extractelement <2 x float> %i.gm, i64 1 ; 3 uses
  %i.gx = call float @llvm.fmuladd.f32(float %i.gw, float 0.000000e+00, float %i.gu) ; 4 uses
  %i.gy = extractelement <2 x float> %i.gm, i64 0 ; 3 uses
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float 0.000000e+00, float %i.gv) ; 4 uses
  %i.ha = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gg, <2 x float> %i.gr)
  %i.hc = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.gd, <2 x float> %i.hb)
  %i.he = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> zeroinitializer, <2 x float> %i.hd) ; 3 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.hg = call float @llvm.fmuladd.f32(float %i.ev, float %13, float %i.cw)
  %i.hh = call float @llvm.fmuladd.f32(float %i.ev, float %15, float %17)
  %18 = call float @llvm.fmuladd.f32(float %i.cu, float %13, float %i.hg)
  %19 = call float @llvm.fmuladd.f32(float %i.cu, float %i.ge, float %i.hh)
  %20 = call float @llvm.fmuladd.f32(float %i.gw, float 0.000000e+00, float %18) ; 4 uses
  %21 = call float @llvm.fmuladd.f32(float %i.gy, float 0.000000e+00, float %19) ; 4 uses
  %22 = call float @llvm.fmuladd.f32(float %13, float 0.000000e+00, float %14)
  %23 = call float @llvm.fmuladd.f32(float %i.ge, float 0.000000e+00, float %16)
  %i.hi = extractelement <2 x float> %i.he, i64 0
  %i.hj = fmul float %i.hi, 0.000000e+00
  %i.hk = call float @llvm.fmuladd.f32(float %i.gz, float 0.000000e+00, float %i.hj)
  %24 = extractelement <2 x float> %i.he, i64 1   ; 3 uses
  %25 = fmul float %24, 0.000000e+00
  %i.hl = call float @llvm.fmuladd.f32(float %i.gx, float 0.000000e+00, float %25)
  %26 = insertelement <4 x float> %i.fx, float %21, i64 1
  %27 = insertelement <4 x float> %26, float %20, i64 3
  %i.hm = insertelement <4 x float> %i.fy, float %i.hk, i64 1
  %i.hn = insertelement <4 x float> %i.hm, float %i.hl, i64 3
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.hn)
  %29 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ho = fadd float %22, %i.gw                   ; 4 uses
  %i.hp = fadd float %23, %i.gy                   ; 4 uses
  %i.hq = fmul float %i.fi, %24
  %i.hr = call float @llvm.fmuladd.f32(float %i.fj, float %i.gx, float %i.hq)
  %i.hs = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ht = fmul <4 x float> %i.hs, %i.hf           ; 4 uses
  %i.hu = extractelement <4 x float> %i.ht, i64 0
  %i.hv = call float @llvm.fmuladd.f32(float %i.fj, float %i.gz, float %i.hu)
  %i.hw = call float @llvm.fmuladd.f32(float %i.fk, float %20, float %i.hr)
  %i.hx = call float @llvm.fmuladd.f32(float %i.fk, float %21, float %i.hv)
  %i.hy = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.hp, i64 1
  %i.hz = insertelement <4 x float> %i.hy, float %i.ho, i64 3
  %i.ia = fadd <4 x float> %i.hz, %29             ; 6 uses
  %i.ib = extractelement <4 x float> %i.ia, i64 0 ; 2 uses
  %i.ic = extractelement <4 x float> %i.ht, i64 3
  %i.id = call float @llvm.fmuladd.f32(float %i.fo, float %i.gz, float %i.ic)
  %i.ie = call float @llvm.fmuladd.f32(float %i.ga, float %21, float %i.id)
  %i.if = extractelement <4 x float> %i.ht, i64 1
  %i.ig = call float @llvm.fmuladd.f32(float %i.fm, float %i.gx, float %i.if)
  %i.ih = extractelement <4 x float> %i.ht, i64 2
  %i.ii = call float @llvm.fmuladd.f32(float %i.fm, float %i.gz, float %i.ih)
  %i.ij = call float @llvm.fmuladd.f32(float %i.fz, float %20, float %i.ig)
  %i.ik = call float @llvm.fmuladd.f32(float %i.fz, float %21, float %i.ii)
  %i.il = call float @llvm.fmuladd.f32(float %i.ho, float 0.000000e+00, float %i.ij) ; 2 uses
  %i.im = call float @llvm.fmuladd.f32(float %i.hp, float 0.000000e+00, float %i.ik) ; 2 uses
  %i.in = fmul float %i.fn, %24
  %i.io = call float @llvm.fmuladd.f32(float %i.fo, float %i.gx, float %i.in)
  %i.ip = call float @llvm.fmuladd.f32(float %i.ga, float %20, float %i.io)
  %i.iq = fmul float %i.ec, %i.im
  %i.ir = extractelement <4 x float> %i.ia, i64 1 ; 2 uses
  %i.is = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.it = fmul float %i.ec, %i.il
  %i.iu = extractelement <4 x float> %i.ia, i64 3 ; 2 uses
  %i.iv = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ed, i64 0
  %i.iw = call float @llvm.fmuladd.f32(float %i.hp, float 0.000000e+00, float %i.ie) ; 4 uses
  %i.ix = call float @llvm.fmuladd.f32(float %i.ho, float 0.000000e+00, float %i.hw) ; 3 uses
  %i.iy = call float @llvm.fmuladd.f32(float %i.hp, float 0.000000e+00, float %i.hx) ; 3 uses
  %i.iz = call float @llvm.fmuladd.f32(float %i.ho, float 0.000000e+00, float %i.ip) ; 4 uses
  %i.ja = call float @llvm.fmuladd.f32(float %i.iy, float 0.000000e+00, float %i.iq)
  %i.jb = call float @llvm.fmuladd.f32(float %i.iw, float 0.000000e+00, float %i.ja)
  %i.jc = call float @llvm.fmuladd.f32(float %i.ir, float 0.000000e+00, float %i.jb) ; 2 uses
  %i.jd = fmul float %i.il, 0.000000e+00          ; 2 uses
  %i.je = fmul float %i.im, 0.000000e+00          ; 2 uses
  %i.jf = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %i.eb, i64 2
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.jh = insertelement <4 x float> poison, float %i.iy, i64 0
  %i.ji = insertelement <4 x float> %i.jh, float %i.ix, i64 1
  %i.jj = insertelement <4 x float> poison, float %i.je, i64 0
  %i.jk = insertelement <4 x float> %i.jj, float %i.jd, i64 1
  %i.jl = call float @llvm.fmuladd.f32(float %i.eb, float %i.ix, float %i.jd)
  %i.jm = call float @llvm.fmuladd.f32(float %i.eb, float %i.iy, float %i.je)
  %i.jn = insertelement <4 x float> %i.is, float %i.iw, i64 1
  %i.jo = call float @llvm.fmuladd.f32(float %i.ix, float 0.000000e+00, float %i.it)
  %i.jp = call float @llvm.fmuladd.f32(float %i.iz, float 0.000000e+00, float %i.jo)
  %i.jq = call float @llvm.fmuladd.f32(float %i.iu, float 0.000000e+00, float %i.jp) ; 2 uses
  %i.jr = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.ed, i64 0
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jt = shufflevector <4 x float> %i.ia, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ju = fmul float %i.jc, 0.000000e+00
  %i.jv = fneg float %i.fr
  %i.jw = fneg float %i.fq
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jy = load ptr, ptr %i.jx, align 8            ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 76
  %i.ka = insertelement <3 x float> poison, float %i.eh, i64 0
  %i.kb = shufflevector <3 x float> %i.ka, <3 x float> poison, <3 x i32> zeroinitializer
  %i.kc = fmul <3 x float> %i.ba, %i.kb           ; 3 uses
  %i.kd = shufflevector <3 x float> %i.kc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ke = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.kf = shufflevector <4 x float> %i.ke, <4 x float> %i.ep, <3 x i32> <i32 0, i32 6, i32 poison>
  %i.kg = insertelement <3 x float> %i.kf, float %i.ei, i64 2
  %i.kh = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kd, <3 x float> %i.ba, <3 x float> %i.kg) ; 4 uses
  %i.ki = shufflevector <3 x float> %i.kc, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.kj = shufflevector <3 x float> %i.ba, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 2>
  %i.kk = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <3 x i32> <i32 6, i32 poison, i32 3>
  %i.kl = insertelement <3 x float> %i.kk, float %i.ef, i64 1
  %i.km = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ki, <3 x float> %i.kj, <3 x float> %i.kl) ; 4 uses
  %i.kn = shufflevector <3 x float> %i.ba, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ko = shufflevector <4 x float> %i.eo, <4 x float> poison, <3 x i32> <i32 poison, i32 3, i32 poison>
  %i.kp = insertelement <3 x float> %i.ko, float %i.fp, i64 0
  %i.kq = insertelement <3 x float> %i.kp, float %i.ef, i64 2
  %i.kr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kc, <3 x float> %i.kn, <3 x float> %i.kq) ; 4 uses
  %i.ks = insertelement <3 x float> poison, float %i.jc, i64 0
  %i.kt = shufflevector <3 x float> %i.ks, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ku = fmul <3 x float> %i.km, %i.kt
  %i.kv = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.jv, i64 1 ; 4 uses
  %i.kw = fneg <2 x float> %i.br
  %i.kx = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.kw, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ky = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float poison>, float %i.jw, i64 3 ; 4 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 92
  %i.kz = insertelement <3 x float> poison, float %i.jq, i64 0
  %i.la = shufflevector <3 x float> %i.kz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.lb = fmul <3 x float> %i.km, %i.la
  %i.lc = call float @llvm.fmuladd.f32(float %i.cu, float %i.cy, float %i.ex)
  %i.ld = fadd float %i.bq, %i.fv                 ; 2 uses
  %i.le = fadd float %i.dc, %i.ld                 ; 4 uses
  %i.lf = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lg = insertelement <2 x float> %i.gj, float 0.000000e+00, i64 1 ; 4 uses
  %i.lh = fmul <2 x float> %i.lf, %i.lg
  %i.li = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.lg, <2 x float> %i.lh)
  %i.ll = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lm = insertelement <2 x float> %i.go, float 0.000000e+00, i64 1 ; 2 uses
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.lm, <2 x float> %i.lk)
  %i.lo = shufflevector <4 x float> %i.ia, <4 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.lp = insertelement <2 x float> %i.lo, float %i.ld, i64 0 ; 3 uses
  %i.lq = shufflevector <4 x float> %i.fd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lr = insertelement <2 x float> %i.lq, float %i.lc, i64 0
  %i.ls = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> zeroinitializer, <2 x float> %i.lr) ; 4 uses
  %i.lt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> zeroinitializer, <2 x float> %i.ln) ; 3 uses
  %i.lu = fmul <2 x float> %i.gq, %i.lg
  %i.lv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.lg, <2 x float> %i.lu)
  %i.lw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.lm, <2 x float> %i.lv)
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> zeroinitializer, <2 x float> %i.lw) ; 3 uses
  %i.ly = extractelement <2 x float> %i.lt, i64 0 ; 3 uses
  %i.lz = extractelement <2 x float> %i.ls, i64 0 ; 3 uses
  %i.ma = insertelement <4 x float> %i.fh, float %i.jq, i64 2
  %i.mb = shufflevector <2 x float> %i.lx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 0>
  %i.mc = insertelement <4 x float> %i.mb, float 0.000000e+00, i64 2
  %i.md = fmul <4 x float> %i.ma, %i.mc           ; 4 uses
  %i.me = extractelement <4 x float> %i.md, i64 0
  %i.mf = call float @llvm.fmuladd.f32(float %i.fj, float %i.ly, float %i.me)
  %i.mg = call float @llvm.fmuladd.f32(float %i.fk, float %i.lz, float %i.mf)
  %i.mh = extractelement <4 x float> %i.md, i64 1
  %i.mi = call float @llvm.fmuladd.f32(float %i.fm, float %i.ly, float %i.mh)
  %i.mj = call float @llvm.fmuladd.f32(float %i.fz, float %i.lz, float %i.mi)
  %i.mk = call float @llvm.fmuladd.f32(float %i.le, float 0.000000e+00, float %i.mj) ; 2 uses
  %i.ml = extractelement <4 x float> %i.md, i64 3
  %i.mm = call float @llvm.fmuladd.f32(float %i.fo, float %i.ly, float %i.ml)
  %i.mn = call float @llvm.fmuladd.f32(float %i.ga, float %i.lz, float %i.mm)
  %i.mo = extractelement <2 x float> %i.lx, i64 1 ; 3 uses
  %i.mp = fmul float %i.fi, %i.mo
  %i.mq = extractelement <2 x float> %i.lt, i64 1 ; 3 uses
  %i.mr = call float @llvm.fmuladd.f32(float %i.fj, float %i.mq, float %i.mp)
  %i.ms = extractelement <2 x float> %i.ls, i64 1 ; 2 uses
  %i.mt = call float @llvm.fmuladd.f32(float %i.fk, float %i.ms, float %i.mr)
  %i.mu = fmul float %i.fl, %i.mo
  %i.mv = call float @llvm.fmuladd.f32(float %i.fm, float %i.mq, float %i.mu)
  %i.mw = call float @llvm.fmuladd.f32(float %i.fz, float %i.ms, float %i.mv)
  %i.mx = call float @llvm.fmuladd.f32(float %i.ib, float 0.000000e+00, float %i.mw) ; 2 uses
  %i.my = fmul <2 x float> %i.lx, zeroinitializer
  %i.mz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lt, <2 x float> zeroinitializer, <2 x float> %i.my)
  %i.na = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> zeroinitializer, <2 x float> %i.mz)
  %i.nb = insertelement <2 x float> %i.lo, float %i.le, i64 0
  %i.nc = fadd <2 x float> %i.nb, %i.na           ; 4 uses
  %i.nd = fmul float %i.fn, %i.mo
  %i.ne = call float @llvm.fmuladd.f32(float %i.fo, float %i.mq, float %i.nd)
  %i.nf = insertelement <4 x float> poison, float %i.ne, i64 0
  %i.ng = fmul float %i.ec, %i.mk
  %i.nh = fmul float %i.ec, %i.mx
  %i.ni = call float @llvm.fmuladd.f32(float %i.le, float 0.000000e+00, float %i.mg) ; 3 uses
  %i.nj = call float @llvm.fmuladd.f32(float %i.le, float 0.000000e+00, float %i.mn) ; 4 uses
  %i.nk = call float @llvm.fmuladd.f32(float %i.ib, float 0.000000e+00, float %i.mt) ; 3 uses
  %i.nl = fmul float %i.mk, 0.000000e+00          ; 2 uses
  %i.nm = fmul float %i.mx, 0.000000e+00          ; 2 uses
  %i.nn = insertelement <4 x float> %i.ji, float %i.ni, i64 2
  %i.no = insertelement <4 x float> %i.nn, float %i.nk, i64 3
  %i.np = insertelement <4 x float> %i.jk, float %i.nl, i64 2
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 3
  %i.nr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %i.no, <4 x float> %i.nq) ; 3 uses
  %i.ns = extractelement <4 x float> %i.nr, i64 0
  %i.nt = call float @llvm.fmuladd.f32(float %i.iw, float 0.000000e+00, float %i.ns)
  %i.nu = fadd float %i.ir, %i.nt                 ; 2 uses
  %i.nv = shufflevector <2 x float> %i.ls, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nw = shufflevector <4 x float> %i.jn, <4 x float> %i.nv, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %i.nx = insertelement <4 x float> %i.nw, float %i.iz, i64 3
  %i.ny = shufflevector <4 x float> %i.nw, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 5, i32 0, i32 7>
  %i.nz = insertelement <4 x float> %i.nf, float %i.jm, i64 1
  %i.oa = insertelement <4 x float> %i.nz, float %i.jl, i64 3
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.oc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nx, <4 x float> %i.ny, <4 x float> %i.ob)
  %i.od = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ia, <4 x float> zeroinitializer, <4 x float> %i.oc) ; 5 uses
  %i.oe = extractelement <4 x float> %i.nr, i64 1
  %i.of = call float @llvm.fmuladd.f32(float %i.iz, float 0.000000e+00, float %i.oe)
  %i.og = fadd float %i.iu, %i.of                 ; 2 uses
  %i.oh = call float @llvm.fmuladd.f32(float %i.ni, float 0.000000e+00, float %i.nl) ; 2 uses
  %i.oi = call float @llvm.fmuladd.f32(float %i.ed, float %i.nj, float %i.oh)
  %i.oj = call float @llvm.fmuladd.f32(float %i.nj, float 0.000000e+00, float %i.oh)
  %i.ok = extractelement <2 x float> %i.nc, i64 0 ; 2 uses
  %i.ol = fadd float %i.ok, %i.oj                 ; 2 uses
  %i.om = extractelement <4 x float> %i.od, i64 0
  %i.on = shufflevector <4 x float> %i.od, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.oo = insertelement <4 x float> %i.on, float %i.iw, i64 0
  %i.op = insertelement <4 x float> %i.oo, float %i.iz, i64 1
  %i.oq = insertelement <4 x float> %i.op, float %i.nj, i64 2
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oq, <4 x float> %i.js, <4 x float> %i.nr)
  %i.os = shufflevector <2 x float> %i.nc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ot = shufflevector <4 x float> %i.jt, <4 x float> %i.os, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ou = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ot, <4 x float> zeroinitializer, <4 x float> %i.or) ; 5 uses
  %i.ov = call float @llvm.fmuladd.f32(float %i.nk, float 0.000000e+00, float %i.nm)
  %i.ow = insertelement <4 x float> poison, float %i.ov, i64 0
  %i.ox = insertelement <4 x float> %i.ow, float %i.ju, i64 1
  %i.oy = shufflevector <4 x float> %i.ox, <4 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 0, i32 6>
  %i.oz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iv, <4 x float> %i.od, <4 x float> %i.oy) ; 3 uses
  %i.pa = call float @llvm.fmuladd.f32(float %i.nk, float 0.000000e+00, float %i.nh)
  %i.pb = call float @llvm.fmuladd.f32(float %i.ni, float 0.000000e+00, float %i.ng)
  %i.pc = call float @llvm.fmuladd.f32(float %i.om, float 0.000000e+00, float %i.pa)
  %i.pd = call float @llvm.fmuladd.f32(float %i.nj, float 0.000000e+00, float %i.pb)
  %i.pe = extractelement <2 x float> %i.nc, i64 1 ; 2 uses
  %i.pf = call float @llvm.fmuladd.f32(float %i.pe, float 0.000000e+00, float %i.pc) ; 2 uses
  %i.pg = call float @llvm.fmuladd.f32(float %i.ok, float 0.000000e+00, float %i.pd) ; 2 uses
  %i.ph = shufflevector <4 x float> %i.oz, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pi = insertelement <2 x float> %i.ph, float %i.oi, i64 0
  %i.pj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nc, <2 x float> zeroinitializer, <2 x float> %i.pi) ; 3 uses
  %i.pk = extractelement <4 x float> %i.oz, i64 2
  %i.pl = fadd float %i.pe, %i.pk                 ; 2 uses
  %i.pm = shufflevector <4 x float> %i.oz, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.pn = insertelement <4 x float> %i.pm, float %i.pg, i64 2
  %i.po = insertelement <4 x float> %i.pn, float %i.pf, i64 3
  %i.pp = fmul <4 x float> %i.po, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.pq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ou, <4 x float> zeroinitializer, <4 x float> %i.pp) ; 3 uses
  %i.pr = extractelement <4 x float> %i.pq, i64 0
  %i.ps = fadd float %i.nu, %i.pr
  %i.pt = extractelement <4 x float> %i.pq, i64 1
  %i.pu = fadd float %i.og, %i.pt
  %i.pv = shufflevector <4 x float> %i.od, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.pw = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kh, <3 x float> %i.pv, <3 x float> %i.ku)
  %i.px = shufflevector <4 x float> %i.ou, <4 x float> poison, <3 x i32> zeroinitializer
  %i.py = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kr, <3 x float> %i.px, <3 x float> %i.pw)
  %i.pz = insertelement <3 x float> poison, float %i.nu, i64 0
  %i.qa = shufflevector <3 x float> %i.pz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.qb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.qa, <3 x float> zeroinitializer, <3 x float> %i.py) ; 6 uses
  %i.qc = shufflevector <4 x float> %i.od, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.qd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kh, <3 x float> %i.qc, <3 x float> %i.lb)
  %i.qe = shufflevector <4 x float> %i.ou, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.qf = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kr, <3 x float> %i.qe, <3 x float> %i.qd)
  %i.qg = insertelement <3 x float> poison, float %i.og, i64 0
  %i.qh = shufflevector <3 x float> %i.qg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.qi = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.qh, <3 x float> zeroinitializer, <3 x float> %i.qf) ; 6 uses
  %i.qj = shufflevector <3 x float> %i.qb, <3 x float> %i.qi, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.qk = shufflevector <2 x float> %i.pj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.qj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qm = shufflevector <3 x float> %i.qb, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x float> %i.pq, <4 x float> %i.qm, <4 x i32> <i32 2, i32 3, i32 5, i32 poison>
  %i.qo = shufflevector <3 x float> %i.qi, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x float> %i.qn, <4 x float> %i.qo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.qq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ql, <4 x float> zeroinitializer, <4 x float> %i.qp) ; 4 uses
  %i.qr = extractelement <4 x float> %i.qq, i64 0
  %i.qs = fadd float %i.ol, %i.qr
  %i.qt = shufflevector <3 x float> %i.qb, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.qu = fmul <2 x float> %i.qt, %i.kv           ; 2 uses
  %i.qv = shufflevector <3 x float> %i.qb, <3 x float> poison, <2 x i32> zeroinitializer
  %i.qw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.qv, <2 x float> %i.qu)
  %i.qx = shufflevector <3 x float> %i.qb, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.qy = shufflevector <2 x float> %i.qw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qz = insertelement <4 x float> poison, float %i.ps, i64 0
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rb = shufflevector <3 x float> %i.qi, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rc = fmul <2 x float> %i.rb, %i.kv           ; 2 uses
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.re = shufflevector <3 x float> %i.qi, <3 x float> poison, <2 x i32> zeroinitializer
  %i.rf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.re, <2 x float> %i.rc)
  %i.rg = shufflevector <3 x float> %i.qi, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.rh = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ri = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 108
  %i.rk = insertelement <3 x float> poison, float %i.pg, i64 0
  %i.rl = shufflevector <3 x float> %i.rk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rm = fmul <3 x float> %i.km, %i.rl
  %i.rn = shufflevector <4 x float> %i.ou, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.ro = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kh, <3 x float> %i.rn, <3 x float> %i.rm)
  %i.rp = shufflevector <2 x float> %i.pj, <2 x float> poison, <3 x i32> zeroinitializer
  %i.rq = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kr, <3 x float> %i.rp, <3 x float> %i.ro)
  %i.rr = insertelement <3 x float> poison, float %i.ol, i64 0
  %i.rs = shufflevector <3 x float> %i.rr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.rt = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.rs, <3 x float> zeroinitializer, <3 x float> %i.rq) ; 6 uses
  %i.ru = shufflevector <3 x float> %i.rt, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rv = shufflevector <3 x float> %i.rt, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rw = fmul <2 x float> %i.rv, %i.kv           ; 2 uses
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ry = shufflevector <3 x float> %i.qb, <3 x float> %i.qi, <4 x i32> <i32 poison, i32 0, i32 3, i32 poison>
  %i.rz = insertelement <4 x float> %i.ry, float %i.pl, i64 0
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> %i.ru, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sb = shufflevector <2 x float> %i.qu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.sc = shufflevector <4 x float> %i.qq, <4 x float> %i.sb, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> %i.rd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.se = shufflevector <4 x float> %i.sd, <4 x float> %i.rx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sf = fadd <4 x float> %i.sa, %i.se           ; 4 uses
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> %i.qq, <4 x i32> <i32 1, i32 6, i32 poison, i32 poison>
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> %i.qy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.si = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %i.qx, <4 x float> %i.sh)
  %i.sj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.si)
  store <4 x float> %i.sj, ptr %i.jz, align 4
  %i.sk = shufflevector <4 x float> %i.sf, <4 x float> %i.qq, <4 x i32> <i32 2, i32 7, i32 poison, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> %i.rh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.sm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ky, <4 x float> %i.rg, <4 x float> %i.sl)
  %i.sn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.sm)
  store <4 x float> %i.sn, ptr %.sroa.57.0..sroa_idx, align 4
  %i.so = shufflevector <3 x float> %i.rt, <3 x float> poison, <2 x i32> zeroinitializer
  %i.sp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.so, <2 x float> %i.rw)
  %i.sq = shufflevector <3 x float> %i.rt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.sr = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ss = shufflevector <2 x float> %i.sp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_0
