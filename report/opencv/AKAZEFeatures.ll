Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/AKAZEFeatures?download=true
inline.NumInlined: 1054
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK2cv11xfeatures2d35MSURF_Upright_Descriptor_64_Invoker31Get_MSURF_Upright_Descriptor_64ERKNS_8KeyPointEPfi:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.31", align 1 ; 3 uses
  %i.a = icmp eq i32 %3, 64
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1623) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !52     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !160
  %i.m = shl nuw i32 1, %i.l
  %i.n = sitofp i32 %i.m to float                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !161
  %i.q = fmul float %i.p, 5.000000e-01
  %i.r = fdiv float %i.q, %i.n
  %i.s = insertelement <4 x float> poison, float %i.r, i64 0
  %i.t = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.s) ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw [1080 x i8], ptr %i.z, i64 %i.y
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.ac = getelementptr inbounds nuw [1080 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.ad)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ae = fmul float %i.v, f0x3C8EFA35            ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !16
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv <2 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = call noundef float @cosf(float noundef %i.ae) #23
  %i.ak = call noundef float @sinf(float noundef %i.ae) #23
  %i.al = sitofp i32 %i.t to float
  %i.am = fmul nnan float %i.al, 2.500000e+00     ; 2 uses
  %i.an = fmul nnan float %i.am, 2.000000e+00
  %i.ao = fmul float %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.au = load i32, ptr %i.at, align 4
  %i.av = icmp slt i32 %i.au, 2                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp slt i32 %i.bb, 2                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.ak, i64 1 ; 4 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.q
  %indvars.iv263 = phi i32 [ -3, %bb.h ], [ %indvars.iv.next264, %bb.q ] ; 2 uses
  %.0184260 = phi float [ -5.000000e-01, %bb.h ], [ %i.bl, %bb.q ]
  %.0185259 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next267, %bb.q ]
  %.0187258 = phi i32 [ -8, %bb.h ], [ %i.gm, %bb.q ] ; 4 uses
  %.0189257 = phi float [ 0.000000e+00, %bb.h ], [ %i.db, %bb.q ]
  %i.bk = add nsw i32 %.0187258, -4
  %i.bl = fadd float %.0184260, 1.000000e+00      ; 2 uses
  %i.bm = add nsw i32 %.0187258, 1
  %i.bn = mul nsw i32 %i.bm, %i.t
  %i.bo = sitofp i32 %i.bn to float
  %i.bp = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bi, %i.bq
  %i.bs = fadd float %i.bl, -2.000000e+00         ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %indvars.iv266 = phi i64 [ %.0185259, %bb.i ], [ %indvars.iv.next267, %bb.k ] ; 2 uses
  %indvars.iv = phi i32 [ -3, %bb.i ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.0183256 = phi float [ -5.000000e-01, %bb.i ], [ %i.cj, %bb.k ]
  %.0186254 = phi i32 [ -8, %bb.i ], [ %i.dc, %bb.k ] ; 5 uses
  %.1190253 = phi float [ %.0189257, %bb.i ], [ %i.db, %bb.k ]
  %i.bt = add nsw i32 %.0186254, -4
  %i.bu = add nsw i32 %.0186254, 1
  %i.bv = xor i32 %.0186254, -1
  %i.bw = mul nsw i32 %i.t, %i.bv
  %i.bx = mul nsw i32 %i.bu, %i.t
  %i.by = insertelement <2 x i32> poison, i32 %i.bw, i64 0
  %i.bz = insertelement <2 x i32> %i.by, i32 %i.bx, i64 1
  %i.ca = sitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.bj, <2 x float> %i.br)
  %i.cc = fadd <2 x float> %i.ai, %i.cb           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.m
  %.0182252 = phi i32 [ %i.bk, %bb.j ], [ %i.df, %bb.m ] ; 2 uses
  %i.cd = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.gk, %bb.m ]
  %i.ce = mul nsw i32 %.0182252, %i.t
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bi, %i.ch
  br label %bb.n

bb.k:                                             ; preds = %bb.m
  %i.cj = fadd float %.0183256, 1.000000e+00      ; 2 uses
  %i.ck = fadd float %i.cj, -2.000000e+00         ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = call float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.cl)
  %i.cn = fdiv float %i.cm, -4.500000e+00
  %i.co = call noundef float @expf(float noundef %i.cn) #23 ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv266
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 4 ; 3 uses
  %i.cq = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fmul <4 x float> %i.gk, %i.cr
  store <4 x float> %i.cs, ptr %i.cp, align 4, !tbaa !16
  %foldExtExtBinop = fmul <4 x float> %i.gk, %i.gk
  %i.ct = extractelement <4 x float> %foldExtExtBinop, i64 1
  %i.cu = extractelement <4 x float> %i.gk, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float %i.cu, float %i.ct)
  %i.cw = extractelement <4 x float> %i.gk, i64 2 ; 2 uses
  %i.cx = call float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cv)
  %i.cy = extractelement <4 x float> %i.gk, i64 3 ; 2 uses
  %i.cz = call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.cx)
  %i.da = fmul float %i.cz, %i.co
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float %i.co, float %.1190253) ; 3 uses
  %i.dc = add nsw i32 %.0186254, 5
  %i.dd = icmp slt i32 %.0186254, 7
  %indvars.iv.next = add nsw i32 %indvars.iv, 5
  br i1 %i.dd, label %bb.j, label %bb.q, !llvm.loop !263

bb.l:                                             ; preds = %bb.g
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.p
  %i.df = add nsw i32 %.0182252, 1                ; 2 uses
  %exitcond265.not = icmp eq i32 %i.df, %indvars.iv263
  br i1 %exitcond265.not, label %bb.k, label %.preheader, !llvm.loop !264

bb.n:                                             ; preds = %.preheader, %bb.p
  %.0247 = phi i32 [ %i.bt, %.preheader ], [ %i.gl, %bb.p ] ; 2 uses
  %i.dg = phi <4 x float> [ %i.cd, %.preheader ], [ %i.gk, %bb.p ] ; 2 uses
  %i.dh = mul i32 %.0247, %i.t                    ; 2 uses
  %i.di = sub i32 0, %i.dh
  %i.dj = insertelement <2 x i32> poison, i32 %i.di, i64 0
  %i.dk = insertelement <2 x i32> %i.dj, i32 %i.dh, i64 1
  %i.dl = sitofp <2 x i32> %i.dk to <2 x float>
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.bj, <2 x float> %i.ci)
  %i.dn = fadd <2 x float> %i.ai, %i.dm           ; 5 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %foldExtExtBinop282 = fsub <2 x float> %i.cc, %i.dn
  %i.dp = extractelement <2 x float> %foldExtExtBinop282, i64 0 ; 2 uses
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %foldExtExtBinop284 = fsub <2 x float> %i.cc, %i.dn ; 2 uses
  %foldExtExtBinop286 = fmul <2 x float> %foldExtExtBinop284, %foldExtExtBinop284
  %i.dr = extractelement <2 x float> %foldExtExtBinop286, i64 1
  %i.ds = call float @llvm.fmuladd.f32(float %i.dp, float %i.dp, float %i.dr)
  %i.dt = fneg float %i.ds
  %i.du = fdiv float %i.dt, %i.ao
  %i.dv = call noundef float @expf(float noundef %i.du) #23
  %i.dw = call float @llvm.floor.f32(float %i.dq)
  %i.dx = call float @llvm.floor.f32(float %i.do)
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dw, i64 1
  %i.ea = fptosi <2 x float> %i.dz to <2 x i32>   ; 3 uses
  %i.eb = extractelement <2 x i32> %i.ea, i64 1   ; 3 uses
  %i.ec = add nsw i32 %i.eb, 1                    ; 2 uses
  %i.ed = extractelement <2 x i32> %i.ea, i64 0   ; 3 uses
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = or i32 %i.ed, %i.eb
  %or.cond.not = icmp sgt i32 %i.ef, -1
  %.not = icmp slt i32 %i.ee, %i.aq
  %or.cond = select i1 %or.cond.not, i1 %.not, i1 false
  %.not218 = icmp slt i32 %i.ec, %i.as
  %or.cond225 = select i1 %or.cond, i1 %.not218, i1 false
  br i1 %or.cond225, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = uitofp <2 x i32> %i.ea to <2 x float>
  %i.eh = fsub <2 x float> %i.dn, %i.eg           ; 3 uses
  %i.ei = sext i32 %i.eb to i64                   ; 2 uses
  %i.ej = mul i64 %i.az, %i.ei
  %.sink.idx.i = select i1 %i.av, i64 0, i64 %i.ej
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i ; 2 uses
  %i.ek = sext i32 %i.ed to i64                   ; 4 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !16
  %i.en = sext i32 %i.ee to i64                   ; 4 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !16
  %i.eq = sext i32 %i.ec to i64                   ; 2 uses
  %i.er = mul i64 %i.az, %i.eq
  %.sink.idx.i228 = select i1 %i.av, i64 0, i64 %i.er
  %.sink.i229 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i228 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.sink.i229, i64 %i.ek
  %i.et = load float, ptr %i.es, align 4, !tbaa !16
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sink.i229, i64 %i.en
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !16
  %i.ew = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %i.ex = extractelement <2 x float> %i.eh, i64 1 ; 2 uses
  %i.ey = fsub <2 x float> splat (float 1.000000e+00), %i.eh ; 2 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0 ; 2 uses
  %i.fa = extractelement <2 x float> %i.ey, i64 1 ; 2 uses
  %i.fb = fmul float %i.ez, %i.fa                 ; 2 uses
  %i.fc = fmul float %i.ew, %i.fa                 ; 2 uses
  %i.fd = fmul float %i.fc, %i.ep
  %i.fe = call float @llvm.fmuladd.f32(float %i.fb, float %i.em, float %i.fd)
  %i.ff = fmul float %i.ex, %i.ez                 ; 2 uses
  %i.fg = call float @llvm.fmuladd.f32(float %i.ff, float %i.et, float %i.fe)
  %i.fh = fmul float %i.ew, %i.ex                 ; 2 uses
  %i.fi = call float @llvm.fmuladd.f32(float %i.fh, float %i.ev, float %i.fg) ; 2 uses
  %i.fj = mul i64 %i.bg, %i.ei
  %.sink.idx.i232 = select i1 %i.bc, i64 0, i64 %i.fj
  %.sink.i233 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i232 ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %.sink.i233, i64 %i.ek
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !16
  %i.fm = getelementptr inbounds [4 x i8], ptr %.sink.i233, i64 %i.en
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !16
  %i.fo = mul i64 %i.bg, %i.eq
  %.sink.idx.i236 = select i1 %i.bc, i64 0, i64 %i.fo
  %.sink.i237 = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink.idx.i236 ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %.sink.i237, i64 %i.ek
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !16
  %i.fr = getelementptr inbounds [4 x i8], ptr %.sink.i237, i64 %i.en
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !16
  %i.ft = fmul float %i.fc, %i.fn
  %i.fu = call float @llvm.fmuladd.f32(float %i.fb, float %i.fl, float %i.ft)
  %i.fv = call float @llvm.fmuladd.f32(float %i.ff, float %i.fq, float %i.fu)
  %i.fw = call float @llvm.fmuladd.f32(float %i.fh, float %i.fs, float %i.fv)
  %i.fx = fneg float %i.fi
  %i.fy = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x float> %i.bi, %i.fz
  %i.gb = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fi, i64 1
  %i.gd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.bj, <2 x float> %i.ga)
  %i.ge = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = fmul <2 x float> %i.gf, %i.gd           ; 2 uses
  %i.gh = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.gg)
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gj = fadd <4 x float> %i.dg, %i.gi
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gk = phi <4 x float> [ %i.dg, %bb.n ], [ %i.gj, %bb.o ] ; 8 uses
  %i.gl = add nsw i32 %.0247, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.gl, %indvars.iv
  br i1 %exitcond.not, label %bb.m, label %bb.n, !llvm.loop !265

bb.q:                                             ; preds = %bb.k
  %i.gm = add nsw i32 %.0187258, 5
  %i.gn = icmp slt i32 %.0187258, 7
  %indvars.iv.next264 = add nsw i32 %indvars.iv263, 5
  br i1 %i.gn, label %bb.i, label %bb.r, !llvm.loop !266

bb.r:                                             ; preds = %bb.q
  %i.go = icmp eq i64 %indvars.iv.next267, 64
  br i1 %i.go, label %vector.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv11xfeatures2d27MSURF_Descriptor_64_Invoker23Get_MSURF_Descriptor_64ERKNS_8KeyPointEPfi, ptr noundef nonnull @.str.1, i32 noundef 1736) #25
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

bb.w:                                             ; preds = %bb.t
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240: ; preds = %bb.w
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !53
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240, %bb.v
  %.pn216 = phi { ptr, i32 } [ %i.gp, %bb.v ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240 ], [ %i.gq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #23
  br label %bb.x

vector.ph:                                        ; preds = %bb.r
  %i.gw = call noundef float @sqrtf(float noundef %i.db) #23
  %i.gx = fdiv float 1.000000e+00, %i.gw
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 16 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !16
  %wide.load280 = load <4 x float>, ptr %i.gy, align 4, !tbaa !16
  %i.gz = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load280
  store <4 x float> %i.gz, ptr %2, align 4, !tbaa !16
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !16
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.hb, align 4, !tbaa !16
  %wide.load280.1 = load <4 x float>, ptr %i.hc, align 4, !tbaa !16
  %i.hd = fmul <4 x float> %broadcast.splat, %wide.load.1
  %i.he = fmul <4 x float> %broadcast.splat, %wide.load280.1
  store <4 x float> %i.hd, ptr %i.hb, align 4, !tbaa !16
  store <4 x float> %i.he, ptr %i.hc, align 4, !tbaa !16
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.hf, align 4, !tbaa !16
  %wide.load280.2 = load <4 x float>, ptr %i.hg, align 4, !tbaa !16
  %i.hh = fmul <4 x float> %broadcast.splat, %wide.load.2
  %i.hi = fmul <4 x float> %broadcast.splat, %wide.load280.2
  store <4 x float> %i.hh, ptr %i.hf, align 4, !tbaa !16
  store <4 x float> %i.hi, ptr %i.hg, align 4, !tbaa !16
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.hj, align 4, !tbaa !16
  %wide.load280.3 = load <4 x float>, ptr %i.hk, align 4, !tbaa !16
  %i.hl = fmul <4 x float> %broadcast.splat, %wide.load.3
  %i.hm = fmul <4 x float> %broadcast.splat, %wide.load280.3
  store <4 x float> %i.hl, ptr %i.hj, align 4, !tbaa !16
  store <4 x float> %i.hm, ptr %i.hk, align 4, !tbaa !16
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.hn, align 4, !tbaa !16
  %wide.load280.4 = load <4 x float>, ptr %i.ho, align 4, !tbaa !16
  %i.hp = fmul <4 x float> %broadcast.splat, %wide.load.4
  %i.hq = fmul <4 x float> %broadcast.splat, %wide.load280.4
  store <4 x float> %i.hp, ptr %i.hn, align 4, !tbaa !16
  store <4 x float> %i.hq, ptr %i.ho, align 4, !tbaa !16
end_hunk_0
