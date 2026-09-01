Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSConverter?download=true
inline.NumInlined: 961
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6Assimp19Discreet3DSImporter14AddNodeToGraphEP7aiSceneP6aiNodePNS_4D3DS4NodeER12aiMatrix4x4tIfE:_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.u = load ptr, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.p)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.not.i = icmp eq ptr %.sroa.17360.0402, %.sroa.28.0401
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.x = trunc nuw i64 %indvars.iv to i32
  store i32 %i.x, ptr %.sroa.17360.0402, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.17360.0402, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.z = ptrtoint ptr %.sroa.17360.0402 to i64
  %i.aa = ptrtoint ptr %.sroa.0349.0403 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #27
          to label %.noexc254 unwind label %.loopexit.split-lp

.noexc254:                                        ; preds = %bb.e
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #28
          to label %.noexc255 unwind label %.loopexit390 ; 4 uses

.noexc255:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  store i32 %i.al, ptr %i.ak, align 4
  %i.am = icmp sgt i64 %i.ab, 0
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

bb.f:                                             ; preds = %.noexc255
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %.sroa.0349.0403, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.f, %.noexc255
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0349.0403, i64 noundef %i.ab) #26
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

.loopexit390:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.sroa.28.1 = phi ptr [ %.sroa.28.0401, %bb.c ], [ %.sroa.28.0401, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.ao, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.28.0401, %bb.a ] ; 4 uses
  %.sroa.17360.1 = phi ptr [ %i.y, %bb.c ], [ %.sroa.17360.0402, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.17360.0402, %bb.a ] ; 3 uses
  %.sroa.0349.1 = phi ptr [ %.sroa.0349.0403, %bb.c ], [ %.sroa.0349.0403, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0349.0403, %bb.a ] ; 8 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.d, align 8
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.a, label %._crit_edge, !llvm.loop !21

bb.g:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load i32, ptr %.sroa.0349.1, align 4
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i64 64, i1 false)
  %.sroa.5333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 156
  %.sroa.8335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 160 ; 2 uses
  %.sroa.8335.0.copyload = load float, ptr %.sroa.8335.0..sroa_idx, align 8
  %.sroa.11337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 164
  %.sroa.14339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 168 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 172
  %.sroa.18341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 176 ; 2 uses
  %.sroa.18341.0.copyload = load float, ptr %.sroa.18341.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 180
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 184 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 188
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 192 ; 2 uses
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 196
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 204
  %i.bb = load <2 x float>, ptr %i.ba, align 8
  %i.bc = load <2 x float>, ptr %.sroa.14339.0..sroa_idx, align 8
  %i.bd = load <2 x float>, ptr %.sroa.24.0..sroa_idx, align 8
  %i.be = load <2 x float>, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %.sroa.38.0.copyload = load float, ptr %.sroa.38.0..sroa_idx, align 8
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 212
  %i.bf = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %5)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.bh = load <2 x float>, ptr %i.bg, align 8    ; 3 uses
  %.sroa.8330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 240
  %.sroa.8330.0.copyload = load float, ptr %.sroa.8330.0..sroa_idx, align 8 ; 2 uses
  %i.bi = ptrtoint ptr %.sroa.17360.1 to i64
  %i.bj = ptrtoint ptr %.sroa.0349.1 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 2                 ; 3 uses
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1120
  store i32 %i.bm, ptr %i.bn, align 8
  %i.bo = icmp ugt i64 %i.bl, 4611686018427387903
  %i.bp = select i1 %i.bo, i64 -1, i64 %i.bk
  %i.bq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #28
          to label %.lr.ph425 unwind label %bb.j

.lr.ph425:                                        ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 1128 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bw = extractelement <2 x float> %i.bh, i64 0
  %i.bx = fcmp une float %i.bw, 0.000000e+00
  %i.by = extractelement <2 x float> %i.bh, i64 1
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %or.cond = select i1 %i.bx, i1 true, i1 %i.bz
  %i.ca = fcmp une float %.sroa.8330.0.copyload, 0.000000e+00
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ca
  br label %bb.k

._crit_edge426:                                   ; preds = %.loopexit389
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %._crit_edge.thread

bb.i:                                             ; preds = %bb.g
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph425, %.loopexit389
  %i.cd = phi i64 [ 0, %.lr.ph425 ], [ %i.ig, %.loopexit389 ] ; 2 uses
  %.0217423 = phi i32 [ 0, %.lr.ph425 ], [ %i.if, %.loopexit389 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0349.1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = load ptr, ptr %i.as, align 8
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8            ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.l, label %.loopexit389

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %.idx = mul nuw nsw i64 %i.cr, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %.not407 = icmp eq i32 %i.cq, 0
  br i1 %.not407, label %._crit_edge412, label %.lr.ph411.preheader

.lr.ph411.preheader:                              ; preds = %bb.l
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %.lr.ph411

.lr.ph411:                                        ; preds = %.lr.ph411.preheader, %.lr.ph411
  %.0218409 = phi ptr [ %i.eg, %.lr.ph411 ], [ %i.co, %.lr.ph411.preheader ] ; 5 uses
  %.0221408 = phi ptr [ %i.eh, %.lr.ph411 ], [ %i.cu, %.lr.ph411.preheader ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0218409, i64 8
  %7 = load <3 x float>, ptr %.0218409, align 4   ; 5 uses
  %i.cw = load float, ptr %.0218409, align 4
  %i.cx = load <8 x float>, ptr %5, align 4       ; 4 uses
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cy = shufflevector <8 x float> %i.cx, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cz = fmul <2 x float> %8, %i.cy
  %i.da = shufflevector <8 x float> %i.cx, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.db = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.db, <2 x float> %i.cz)
  %i.dd = shufflevector <8 x float> %i.cx, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.de = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %9, <2 x float> %i.dc)
  %i.df = shufflevector <8 x float> %i.cx, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.dg = fadd <2 x float> %i.de, %i.df
  %i.dh = load float, ptr %i.bs, align 4
  %i.di = load float, ptr %i.bt, align 4
  %10 = extractelement <3 x float> %7, i64 1
  %i.dj = fmul float %10, %i.di
  %i.dk = call float @llvm.fmuladd.f32(float %i.dh, float %i.cw, float %i.dj)
  %i.dl = load float, ptr %i.bu, align 4
  %11 = extractelement <3 x float> %7, i64 2
  %i.dm = call float @llvm.fmuladd.f32(float %i.dl, float %11, float %i.dk)
  %i.dn = load float, ptr %i.bv, align 4
  %i.do = fadd float %i.dn, %i.dm
  store <2 x float> %i.dg, ptr %.0218409, align 4
  store float %i.do, ptr %i.cv, align 4
  %12 = getelementptr inbounds nuw i8, ptr %.0221408, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.0221408, i64 8 ; 2 uses
  %i.dq = load float, ptr %12, align 4            ; 2 uses
  %13 = load float, ptr %.0221408, align 4        ; 2 uses
  %i.dr = load float, ptr %i.dp, align 4          ; 2 uses
  %i.ds = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x float> %i.bc, %i.dt
  %i.dv = insertelement <2 x float> poison, float %13, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.dw, <2 x float> %i.du)
  %i.dy = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.dz, <2 x float> %i.dx)
  %i.eb = fadd <2 x float> %i.be, %i.ea
  %i.ec = fmul float %.sroa.18341.0.copyload, %i.dq
  %i.ed = call float @llvm.fmuladd.f32(float %.sroa.8335.0.copyload, float %13, float %i.ec)
  %i.ee = call float @llvm.fmuladd.f32(float %.sroa.30.0.copyload, float %i.dr, float %i.ed)
  %i.ef = fadd float %.sroa.38.0.copyload, %i.ee
  store <2 x float> %i.eb, ptr %.0221408, align 4
  store float %i.ef, ptr %i.dp, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.0218409, i64 12 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0221408, i64 12
  %.not = icmp eq ptr %i.eg, %i.cs
  br i1 %.not, label %._crit_edge412, label %.lr.ph411, !llvm.loop !22

._crit_edge412:                                   ; preds = %.lr.ph411, %bb.l
  %i.ei = load float, ptr %i.ba, align 8          ; 3 uses
  %i.ej = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 3 uses
  %i.ek = fmul float %i.ei, %i.ej                 ; 2 uses
  %i.el = load float, ptr %.sroa.30.0..sroa_idx, align 8 ; 4 uses
  %i.em = fmul float %i.ek, %i.el
  %i.en = load float, ptr %.sroa.40.0..sroa_idx, align 4 ; 6 uses
  %i.eo = load float, ptr %.sroa.31.0..sroa_idx, align 4 ; 5 uses
  %i.ep = fmul float %i.ek, %i.eo
  %i.eq = load float, ptr %.sroa.38.0..sroa_idx, align 8 ; 6 uses
  %i.er = fneg float %i.eq
  %i.es = fmul float %i.ep, %i.er
  %i.et = call float @llvm.fmuladd.f32(float %i.em, float %i.en, float %i.es)
  %i.eu = load float, ptr %.sroa.18341.0..sroa_idx, align 8 ; 3 uses
  %i.ev = fmul float %i.ei, %i.eu                 ; 2 uses
  %i.ew = fmul float %i.eo, %i.ev
  %i.ex = load float, ptr %.sroa.36.0..sroa_idx, align 4 ; 6 uses
  %i.ey = call float @llvm.fmuladd.f32(float %i.ew, float %i.ex, float %i.et)
  %i.ez = load float, ptr %.sroa.27.0..sroa_idx, align 4 ; 4 uses
  %i.fa = fneg float %i.ez                        ; 3 uses
  %i.fb = fmul float %i.ev, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.fb, float %i.en, float %i.ey)
  %i.fd = load float, ptr %.sroa.21.0..sroa_idx, align 4 ; 3 uses
  %i.fe = fmul float %i.ei, %i.fd                 ; 2 uses
  %i.ff = fmul float %i.ez, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %i.eq, float %i.fc)
  %i.fh = fneg float %i.el                        ; 3 uses
  %i.fi = fmul float %i.fe, %i.fh
  %i.fj = call float @llvm.fmuladd.f32(float %i.fi, float %i.ex, float %i.fg)
  %i.fk = load float, ptr %.sroa.5333.0..sroa_idx, align 4 ; 3 uses
  %i.fl = fmul float %i.eu, %i.fk                 ; 2 uses
  %i.fm = load float, ptr %.sroa.34.0..sroa_idx, align 8 ; 6 uses
  %i.fn = fneg float %i.eo                        ; 2 uses
  %i.fo = fmul float %i.fl, %i.fn
  %i.fp = call float @llvm.fmuladd.f32(float %i.fo, float %i.fm, float %i.fj)
  %i.fq = load float, ptr %.sroa.24.0..sroa_idx, align 8 ; 4 uses
  %i.fr = fmul float %i.fl, %i.fq
  %i.fs = call float @llvm.fmuladd.f32(float %i.fr, float %i.en, float %i.fp)
  %i.ft = fmul float %i.fd, %i.fk                 ; 2 uses
  %i.fu = fneg float %i.fq                        ; 3 uses
  %i.fv = fmul float %i.ft, %i.fu
  %i.fw = call float @llvm.fmuladd.f32(float %i.fv, float %i.eq, float %i.fs)
  %i.fx = fmul float %i.el, %i.ft
  %i.fy = call float @llvm.fmuladd.f32(float %i.fx, float %i.fm, float %i.fw)
  %i.fz = load float, ptr %.sroa.14339.0..sroa_idx, align 8 ; 3 uses
  %i.ga = fmul float %i.fk, %i.fz                 ; 2 uses
  %i.gb = fmul float %i.ga, %i.fh
  %i.gc = call float @llvm.fmuladd.f32(float %i.gb, float %i.en, float %i.fy)
  %i.gd = fmul float %i.eo, %i.ga
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float %i.eq, float %i.gc)
  %i.gf = load float, ptr %.sroa.8335.0..sroa_idx, align 8 ; 3 uses
  %i.gg = fmul float %i.fd, %i.gf                 ; 2 uses
  %i.gh = fmul float %i.fq, %i.gg
  %i.gi = call float @llvm.fmuladd.f32(float %i.gh, float %i.ex, float %i.ge)
  %i.gj = fmul float %i.gg, %i.fa
  %i.gk = call float @llvm.fmuladd.f32(float %i.gj, float %i.fm, float %i.gi)
  %i.gl = fmul float %i.fz, %i.gf                 ; 2 uses
  %i.gm = fmul float %i.ez, %i.gl
  %i.gn = call float @llvm.fmuladd.f32(float %i.gm, float %i.en, float %i.gk)
  %i.go = fmul float %i.gl, %i.fn
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.ex, float %i.gn)
  %i.gq = fmul float %i.ej, %i.gf                 ; 2 uses
  %i.gr = fmul float %i.eo, %i.gq
  %i.gs = call float @llvm.fmuladd.f32(float %i.gr, float %i.fm, float %i.gp)
  %i.gt = fmul float %i.gq, %i.fu
  %i.gu = call float @llvm.fmuladd.f32(float %i.gt, float %i.en, float %i.gs)
  %i.gv = load float, ptr %.sroa.11337.0..sroa_idx, align 4 ; 3 uses
  %i.gw = fmul float %i.fz, %i.gv                 ; 2 uses
  %i.gx = fmul float %i.gw, %i.fa
  %i.gy = call float @llvm.fmuladd.f32(float %i.gx, float %i.eq, float %i.gu)
  %i.gz = fmul float %i.el, %i.gw
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.ex, float %i.gy)
  %i.hb = fmul float %i.ej, %i.gv                 ; 2 uses
  %i.hc = fmul float %i.hb, %i.fh
  %i.hd = call float @llvm.fmuladd.f32(float %i.hc, float %i.fm, float %i.ha)
  %i.he = fmul float %i.fq, %i.hb
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float %i.eq, float %i.hd)
  %i.hg = fmul float %i.eu, %i.gv                 ; 2 uses
  %i.hh = fmul float %i.hg, %i.fu
  %i.hi = call float @llvm.fmuladd.f32(float %i.hh, float %i.ex, float %i.hf)
  %i.hj = fmul float %i.ez, %i.hg
  %i.hk = call noundef float @llvm.fmuladd.f32(float %i.hj, float %i.fm, float %i.hi)
  %i.hl = fcmp olt float %i.hk, 0.000000e+00
  br i1 %i.hl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %._crit_edge412
  %i.hm = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not231413 = icmp eq ptr %i.hm, %i.cs
  br i1 %.not231413, label %._crit_edge418, label %.lr.ph417.preheader

.lr.ph417.preheader:                              ; preds = %bb.m
  %i.hn = load ptr, ptr %i.ct, align 8
  br label %.lr.ph417

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %.lr.ph417
  %.1219415 = phi ptr [ %i.hs, %.lr.ph417 ], [ %i.hm, %.lr.ph417.preheader ] ; 3 uses
  %.1222414 = phi ptr [ %i.ht, %.lr.ph417 ], [ %i.hn, %.lr.ph417.preheader ] ; 3 uses
  %i.ho = load float, ptr %.1219415, align 4
  %i.hp = fneg float %i.ho
  store float %i.hp, ptr %.1219415, align 4
  %i.hq = load float, ptr %.1222414, align 4
  %i.hr = fneg float %i.hq
  store float %i.hr, ptr %.1222414, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %.1219415, i64 12 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.1222414, i64 12
  %.not231 = icmp eq ptr %i.hs, %i.cs
  br i1 %.not231, label %._crit_edge418, label %.lr.ph417, !llvm.loop !23

bb.n:                                             ; preds = %bb.o, %._crit_edge418
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge418:                                   ; preds = %.lr.ph417, %bb.m
  %i.hv = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %._crit_edge418
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hv, ptr noundef nonnull @.str.25)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o, %._crit_edge412
  br i1 %or.cond5, label %bb.q, label %.loopexit389

bb.q:                                             ; preds = %bb.p
  %i.hw = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not234419 = icmp eq ptr %i.hw, %i.cs
  br i1 %.not234419, label %.loopexit389, label %.lr.ph422

.lr.ph422:                                        ; preds = %bb.q, %.lr.ph422
  %.2220420 = phi ptr [ %i.ic, %.lr.ph422 ], [ %i.hw, %bb.q ] ; 4 uses
  %i.hx = load <2 x float>, ptr %.2220420, align 4
  %i.hy = fsub <2 x float> %i.hx, %i.bh
  store <2 x float> %i.hy, ptr %.2220420, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.2220420, i64 8 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4
  %i.ib = fsub float %i.ia, %.sroa.8330.0.copyload
  store float %i.ib, ptr %i.hz, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.2220420, i64 12 ; 2 uses
  %.not234 = icmp eq ptr %i.ic, %i.cs
  br i1 %.not234, label %.loopexit389, label %.lr.ph422, !llvm.loop !24

.loopexit389:                                     ; preds = %.lr.ph422, %bb.q, %bb.k, %bb.p
  store ptr inttoptr (i64 1 to ptr), ptr %i.ck, align 8
  %i.id = load ptr, ptr %i.br, align 8
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.cd
  store i32 %i.cf, ptr %i.ie, align 4
  %i.if = add i32 %.0217423, 1                    ; 2 uses
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = icmp ugt i64 %i.bl, %i.ig
  br i1 %i.ih, label %bb.k, label %._crit_edge426, !llvm.loop !25

bb.r:                                             ; preds = %bb.j, %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.i ], [ %i.hu, %bb.n ], [ %i.cc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit278

._crit_edge.thread:                               ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %._crit_edge426, %._crit_edge
  %.sroa.0349.0.lcssa534 = phi ptr [ %.sroa.0349.1, %._crit_edge ], [ %.sroa.0349.1, %._crit_edge426 ], [ %i.b, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 8 uses
  %.sroa.28.0.lcssa530 = phi ptr [ %.sroa.28.1, %._crit_edge ], [ %.sroa.28.1, %._crit_edge426 ], [ %i.c, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ] ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ij = load i32, ptr %i.ii, align 8            ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %bb.s
  %.02653.i.i = phi i1 [ %or.cond3.i.i, %bb.u ], [ false, %bb.s ]
  %.02752.i.i = phi i32 [ %i.iu, %bb.u ], [ 1000000000, %bb.s ] ; 5 uses
  %.13051.i.i = phi i32 [ %.231.i.i, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.13350.i.i = phi i32 [ %.234.i.i, %bb.u ], [ %i.ij, %bb.s ] ; 3 uses
  %.13749.i.i = phi ptr [ %.238.i.i, %bb.u ], [ %i.a, %bb.s ] ; 3 uses
  %i.il = sdiv i32 %.13350.i.i, %.02752.i.i       ; 3 uses
  %.recomposed = srem i32 %.13350.i.i, %.02752.i.i
  %i.im = icmp ne i32 %i.il, 0
  %i.in = icmp eq i32 %.02752.i.i, 1              ; 2 uses
  %i.io = or i1 %i.in, %i.im
  %or.cond3.i.i = select i1 %.02653.i.i, i1 true, i1 %i.io ; 2 uses
  br i1 %or.cond3.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.ip = trunc i32 %i.il to i8
  %i.iq = add i8 %i.ip, 48
  %i.ir = getelementptr inbounds nuw i8, ptr %.13749.i.i, i64 1 ; 2 uses
  store i8 %i.iq, ptr %.13749.i.i, align 1
  %i.is = add nuw nsw i32 %.13051.i.i, 1
  %i.it = mul i32 %i.il, %.02752.i.i              ; 0 uses
  br i1 %i.in, label %_ZN6Assimp13ASSIMP_itoa10ILm12EEEjRAT__ci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.238.i.i = phi ptr [ %i.ir, %bb.t ], [ %.13749.i.i, %.lr.ph.i.i ] ; 2 uses
end_hunk_0
