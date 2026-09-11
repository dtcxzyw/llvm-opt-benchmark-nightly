Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo?download=true
inline.NumInlined: 7404
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly4EPSt7complexIfEmm:bb.a
  %i.bh = shufflevector <2 x float> %.sroa.0.0.copyload.i57, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.bd           ; 2 uses
  %i.bj = fsub <2 x float> %i.bi, %i.bg           ; 2 uses
  %i.bk = fadd <2 x float> %i.bi, %i.bg           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 0
  %i.bn = fcmp uno float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.g, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, !prof !401

bb.g:                                             ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56
  %i.bo = extractelement <2 x float> %i.bk, i64 1
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.h, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, !prof !401

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i58, float noundef %.sroa.0.4.vec.extract.i59, float noundef %.sroa.090.0.vec.extract, float noundef %.sroa.090.4.vec.extract) #32
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64

_ZStmlIfESt7complexIT_ERKS2_S4_.exit64:           ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, %bb.g, %bb.h
  %i.br = phi <2 x float> [ %i.bl, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56 ], [ %i.bl, %bb.g ], [ %i.bq, %bb.h ] ; 2 uses
  %i.bs = load <2 x float>, ptr %i.j, align 4     ; 2 uses
  %i.bt = fadd <2 x float> %i.az, %i.bs           ; 2 uses
  store <2 x float> %i.bt, ptr %i.j, align 4
  %i.bu = fadd <2 x float> %i.af, %i.br           ; 2 uses
  %i.bv = fsub <2 x float> %i.af, %i.br           ; 2 uses
  %i.bw = fsub <2 x float> %i.bt, %i.bu
  store <2 x float> %i.bw, ptr %i.ag, align 4, !tbaa !103
  %i.bx = load <2 x float>, ptr %i.j, align 4
  %i.by = fadd <2 x float> %i.bu, %i.bx
  store <2 x float> %i.by, ptr %i.j, align 4
  %i.bz = fsub <2 x float> %i.bs, %i.az           ; 2 uses
  %i.ca = fneg <2 x float> %i.bv
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.cc = fmul <2 x float> %i.cb, %i.i            ; 2 uses
  %i.cd = fadd <2 x float> %i.bz, %i.cc
  store <2 x float> %i.cd, ptr %i.k, align 4, !tbaa !103
  %i.ce = fsub <2 x float> %i.bz, %i.cc
  store <2 x float> %i.ce, ptr %i.ba, align 4, !tbaa !103
  %i.cf = add nuw i64 %.095, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1110
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 6 uses
  %i.c = shl i64 %2, 1                            ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = mul i64 %i.c, %3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.f = load float, ptr %.sroa_idx, align 4      ; 2 uses
  %i.g = load float, ptr %i.e, align 4
  %i.h = mul i64 %3, %2
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %.sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.j = load float, ptr %.sroa_idx166, align 4   ; 3 uses
  %i.k = load float, ptr %i.i, align 4
  %.idx61 = shl i64 %3, 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx61
  %.idx60 = mul i64 %3, 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx60
  %.idx59 = shl i64 %3, 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx59
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.p = mul i64 %2, 3
  %i.q = shl i64 %2, 2
  %i.r = fneg float %i.j
  %i.s = insertelement <2 x float> poison, float %i.k, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = insertelement <2 x float> poison, float %i.g, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = insertelement <2 x float> poison, float %i.r, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.j, i64 1
  %i.y = insertelement <2 x float> poison, float %i.f, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.f, i64 1 ; 2 uses
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82
  %.0181 = phi ptr [ %1, %.lr.ph ], [ %i.em, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 5 uses
  %.053180 = phi ptr [ %i.o, %.lr.ph ], [ %i.en, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.054179 = phi i64 [ 0, %.lr.ph ], [ %i.er, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 5 uses
  %.055178 = phi ptr [ %i.l, %.lr.ph ], [ %i.eq, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.056177 = phi ptr [ %i.m, %.lr.ph ], [ %i.ep, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.057176 = phi ptr [ %i.n, %.lr.ph ], [ %i.eo, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %i.ad = load <2 x float>, ptr %.0181, align 4, !tbaa !103 ; 2 uses
  %i.ae = mul i64 %.054179, %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ae ; 2 uses
  %i.ag = load <2 x float>, ptr %.053180, align 4, !tbaa !103 ; 4 uses
  %i.ah = load float, ptr %i.af, align 4          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load float, ptr %i.ai, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.ag, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.ag, i64 1
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x float> %i.ap, %i.ag           ; 2 uses
  %i.ar = fsub <2 x float> %i.aq, %i.an           ; 2 uses
  %i.as = fadd <2 x float> %i.aq, %i.an           ; 2 uses
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> %i.as, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = fcmp uno float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.c, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, !prof !401

bb.c:                                             ; preds = %bb.b
  %i.aw = extractelement <2 x float> %i.as, i64 1
  %i.ax = fcmp uno float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.d, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, !prof !401

bb.d:                                             ; preds = %bb.c
  %i.ay = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i, float noundef %i.ah, float noundef %i.aj) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.az = phi <2 x float> [ %i.at, %bb.b ], [ %i.at, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %i.ba = mul i64 %i.c, %.054179
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba ; 2 uses
  %i.bc = load <2 x float>, ptr %.057176, align 4, !tbaa !103 ; 4 uses
  %i.bd = load float, ptr %i.bb, align 4          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bf = load float, ptr %i.be, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i62 = extractelement <2 x float> %i.bc, i64 0
  %.sroa.0.4.vec.extract.i.i63 = extractelement <2 x float> %i.bc, i64 1
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bh, %i.bi           ; 2 uses
  %i.bk = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.bc           ; 2 uses
  %i.bn = fsub <2 x float> %i.bm, %i.bj           ; 2 uses
  %i.bo = fadd <2 x float> %i.bm, %i.bj           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bq = extractelement <2 x float> %i.bn, i64 0
  %i.br = fcmp uno float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.e, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, !prof !401

bb.e:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit
  %i.bs = extractelement <2 x float> %i.bo, i64 1
  %i.bt = fcmp uno float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.bu = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i62, float noundef %.sroa.0.4.vec.extract.i.i63, float noundef %i.bd, float noundef %i.bf) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, %bb.e, %bb.f
  %i.bv = phi <2 x float> [ %i.bp, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit ], [ %i.bp, %bb.e ], [ %i.bu, %bb.f ] ; 2 uses
  %i.bw = mul i64 %i.p, %.054179
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw ; 2 uses
  %i.by = load <2 x float>, ptr %.056177, align 4, !tbaa !103 ; 4 uses
  %i.bz = load float, ptr %i.bx, align 4          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load float, ptr %i.ca, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i69 = extractelement <2 x float> %i.by, i64 0
  %.sroa.0.4.vec.extract.i.i70 = extractelement <2 x float> %i.by, i64 1
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul <2 x float> %i.cd, %i.ce           ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.ch, %i.by           ; 2 uses
  %i.cj = fsub <2 x float> %i.ci, %i.cf           ; 2 uses
  %i.ck = fadd <2 x float> %i.ci, %i.cf           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %i.cn = fcmp uno float %i.cm, 0.000000e+00
  br i1 %i.cn, label %bb.g, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, !prof !401

bb.g:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68
  %i.co = extractelement <2 x float> %i.ck, i64 1
  %i.cp = fcmp uno float %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.h, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, !prof !401

bb.h:                                             ; preds = %bb.g
  %i.cq = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i69, float noundef %.sroa.0.4.vec.extract.i.i70, float noundef %i.bz, float noundef %i.cb) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, %bb.g, %bb.h
  %i.cr = phi <2 x float> [ %i.cl, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68 ], [ %i.cl, %bb.g ], [ %i.cq, %bb.h ] ; 2 uses
  %i.cs = mul i64 %i.q, %.054179
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cs
  %i.cu = load <2 x float>, ptr %.055178, align 4, !tbaa !103 ; 4 uses
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i76 = extractelement <2 x float> %i.cu, i64 0
  %i.cw = load <2 x float>, ptr %i.ct, align 4    ; 4 uses
  %i.cx = fmul <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.cy = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %4 = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 0, i32 2> ; 2 uses
  %5 = shufflevector <2 x float> %i.cx, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cz = fsub <2 x float> %4, %5                 ; 2 uses
  %6 = fadd <2 x float> %4, %5                    ; 2 uses
  %7 = shufflevector <2 x float> %i.cz, <2 x float> %6, <2 x i32> <i32 0, i32 3> ; 2 uses
  %8 = extractelement <2 x float> %i.cz, i64 0
  %9 = fcmp uno float %8, 0.000000e+00
  br i1 %9, label %bb.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, !prof !401

bb.i:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75
  %10 = extractelement <2 x float> %6, i64 1
  %i.da = fcmp uno float %10, 0.000000e+00
  br i1 %i.da, label %bb.j, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, !prof !401

bb.j:                                             ; preds = %bb.i
  %i.db = extractelement <2 x float> %i.cw, i64 0
  %i.dc = extractelement <2 x float> %i.cw, i64 1
  %i.dd = extractelement <2 x float> %i.cu, i64 1
  %i.de = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i76, float noundef %i.dd, float noundef %i.db, float noundef %i.dc) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, %bb.i, %bb.j
  %i.df = phi <2 x float> [ %7, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75 ], [ %7, %bb.i ], [ %i.de, %bb.j ] ; 2 uses
  %i.dg = fadd <2 x float> %i.az, %i.df           ; 3 uses
  %i.dh = fsub <2 x float> %i.az, %i.df           ; 3 uses
  %i.di = fadd <2 x float> %i.bv, %i.cr           ; 3 uses
  %i.dj = fsub <2 x float> %i.bv, %i.cr           ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  %i.dl = load <2 x float>, ptr %.0181, align 4
  %i.dm = fadd <2 x float> %i.dg, %i.dl
  %i.dn = fadd <2 x float> %i.dm, %i.di           ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  store float %i.do, ptr %.0181, align 4
  %i.dp = extractelement <2 x float> %i.dn, i64 1
  store float %i.dp, ptr %i.dk, align 4
  %i.dq = fmul <2 x float> %i.t, %i.dg
  %i.dr = fmul <2 x float> %i.v, %i.di
  %i.ds = fadd <2 x float> %i.dq, %i.dr
  %i.dt = fadd <2 x float> %i.ds, %i.ad           ; 2 uses
  %i.du = fmul <2 x float> %i.x, %i.dh            ; 2 uses
  %i.dv = fmul <2 x float> %i.z, %i.dj            ; 2 uses
  %i.dw = fadd <2 x float> %i.du, %i.dv
  %i.dx = fsub <2 x float> %i.du, %i.dv
  %i.dy = shufflevector <2 x float> %i.dw, <2 x float> %i.dx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dz = fsub <2 x float> %i.dt, %i.dy
  store <2 x float> %i.dz, ptr %.053180, align 4, !tbaa !103
  %i.ea = fadd <2 x float> %i.dt, %i.dy
  store <2 x float> %i.ea, ptr %.055178, align 4, !tbaa !103
  %i.eb = fmul <2 x float> %i.v, %i.dg
  %i.ec = fmul <2 x float> %i.t, %i.di
  %i.ed = fadd <2 x float> %i.eb, %i.ec
  %i.ee = fadd <2 x float> %i.ed, %i.ad           ; 2 uses
  %i.ef = shufflevector <2 x float> %i.dj, <2 x float> %i.dh, <2 x i32> <i32 1, i32 2>
  %i.eg = fmul <2 x float> %i.ab, %i.ef
  %i.eh = shufflevector <2 x float> %i.dj, <2 x float> %i.dh, <2 x i32> <i32 3, i32 0>
  %i.ei = fmul <2 x float> %i.ac, %i.eh
  %i.ej = fsub <2 x float> %i.eg, %i.ei           ; 2 uses
  %i.ek = fadd <2 x float> %i.ee, %i.ej
  store <2 x float> %i.ek, ptr %.057176, align 4, !tbaa !103
  %i.el = fsub <2 x float> %i.ee, %i.ej
  store <2 x float> %i.el, ptr %.056177, align 4, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %.0181, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %.053180, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.057176, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.056177, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.055178, i64 8
  %i.er = add nuw i64 %.054179, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1111

._crit_edge:                                      ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #27 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.c = load i32, ptr %0, align 8, !tbaa !398    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 15 uses
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !400  ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !385  ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorISt7complexIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.n)
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.f, align 8, !tbaa !400
  br label %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPSt7complexIfES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %.preheader52.lr.ph, label %._crit_edge

.preheader52.lr.ph:                               ; preds = %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  %i.r = icmp sgt i32 %4, 0
  %i.s = trunc i64 %2 to i32
  br i1 %i.r, label %.preheader52.lr.ph.split.us, label %._crit_edge

.preheader52.lr.ph.split.us:                      ; preds = %.preheader52.lr.ph
  %.not = icmp eq i32 %4, 1
  %i.t = zext nneg i32 %3 to i64                  ; 9 uses
  br i1 %.not, label %._crit_edge61.split.us67.us.preheader, label %.preheader52.us.us.preheader

._crit_edge61.split.us67.us.preheader:            ; preds = %.preheader52.lr.ph.split.us
  %xtraiter137 = and i64 %i.t, 1
  %i.u = icmp eq i32 %3, 1
  br i1 %i.u, label %._crit_edge61.split.us67.us.epil.preheader, label %._crit_edge61.split.us67.us.preheader.new

._crit_edge61.split.us67.us.preheader.new:        ; preds = %._crit_edge61.split.us67.us.preheader
  %unroll_iter141 = and i64 %i.t, 2147483646
  br label %._crit_edge61.split.us67.us

.preheader52.us.us.preheader:                     ; preds = %.preheader52.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count114 = zext nneg i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count109, 3      ; 3 uses
  %i.v = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count109, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %._crit_edge61.split.us.us.us, %.preheader52.us.us.preheader
  %indvars.iv102 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next103, %._crit_edge61.split.us.us.us ] ; 4 uses
  br i1 %i.v, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us.us ], [ %indvars.iv102, %.lr.ph.us.us.preheader ] ; 2 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv100
  %i.z = load i64, ptr %i.w, align 4, !tbaa !103
  store i64 %i.z, ptr %i.y, align 4, !tbaa !103
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, %i.t ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.aa, align 4, !tbaa !103
  store i64 %i.ae, ptr %i.ad, align 4, !tbaa !103
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv.next105, %i.t ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.1
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.af, align 4, !tbaa !103
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !103
  %indvars.iv.next105.2 = add nuw nsw i64 %indvars.iv.next105.1, %i.t ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next105.2
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load i64, ptr %i.ak, align 4, !tbaa !103
  store i64 %i.ao, ptr %i.an, align 4, !tbaa !103
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv.next105.2, %i.t ; 2 uses
  %indvars.iv.next101.3 = add nuw nsw i64 %indvars.iv100, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph57.us.us.us.preheader.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !1112

.lr.ph57.us.us.us.preheader.unr-lcssa:            ; preds = %.lr.ph.us.us
  br i1 %lcmp.mod.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %.lr.ph57.us.us.us.preheader.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv104.epil.init = phi i64 [ %indvars.iv102, %.lr.ph.us.us.preheader ], [ %indvars.iv.next105.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  %indvars.iv100.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next101.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %indvars.iv100.epil = phi i64 [ %indvars.iv100.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next101.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.us.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.us.epil ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv104.epil
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv100.epil
  %i.as = load i64, ptr %i.ap, align 4, !tbaa !103
  store i64 %i.as, ptr %i.ar, align 4, !tbaa !103
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, %i.t
  %indvars.iv.next101.epil = add nuw nsw i64 %indvars.iv100.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil, !llvm.loop !1113

.lr.ph57.us.us.us.preheader:                      ; preds = %.lr.ph.us.us.epil, %.lr.ph57.us.us.us.preheader.unr-lcssa
  br label %.lr.ph57.us.us.us

.lr.ph57.us.us.us:                                ; preds = %.lr.ph57.us.us.us.preheader, %._crit_edge.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge.us.us.us ], [ %indvars.iv102, %.lr.ph57.us.us.us.preheader ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !217
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8, !tbaa !213
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !214
  ret void

bb.d:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN11OpenImageIO4v3_18ImageBufEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #33
  invoke void @__cxa_rethrow() #36
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ah

bb.g:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #35
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN11OpenImageIO4v3_18ImageBufEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !189
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #34
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !191
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !421
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #32 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 16) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #36
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.ctlz.v4i32(<4 x i32>, i1 immarg) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn nounwind }
attributes #36 = { noreturn }
attributes #37 = { cold nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { nounwind allocsize(0) }

!llvm.module.flags = !{!45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!51}

!0 = distinct !{!0, !88}
!1 = distinct !{!1, !88}
!2 = distinct !{!2, !88}
!3 = distinct !{!3, !88}
!4 = distinct !{null, null}
!5 = distinct !{!5, !88}
!6 = distinct !{!6, !88}
!7 = distinct !{!7, !88}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !88}
!12 = distinct !{!12, !88}
!13 = distinct !{!13, !88}
!14 = distinct !{!14, !88}
!15 = distinct !{null, null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !88}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{!20, !88}
!21 = distinct !{!21, !88}
!22 = distinct !{!22, !88}
!23 = distinct !{!23, !88}
!24 = distinct !{null, null, null, null}
!25 = distinct !{!25, !88}
!26 = distinct !{null, null}
!27 = distinct !{null}
!28 = distinct !{null, null}
!29 = distinct !{!29, !88}
!30 = distinct !{!30, !88}
!31 = distinct !{!31, !88}
!32 = distinct !{null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !88}
!37 = distinct !{!37, !88}
!38 = distinct !{null, null, null, null}
!39 = distinct !{null, null, null, null, null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{!42, !88}
!43 = distinct !{!43, !88}
!44 = distinct !{!44, !88}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"omnipotent char", !48, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28}
!53 = !{!52, !50, i64 0}
!54 = !{!52, !50, i64 28}
!55 = !{!52, !50, i64 24}
!56 = !{i64 0, i64 4, !51, i64 4, i64 4, !51, i64 8, i64 4, !51, i64 12, i64 4, !51, i64 16, i64 4, !51, i64 20, i64 4, !51, i64 24, i64 4, !51, i64 28, i64 4, !51}
!57 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !49, i64 0, !49, i64 1, !49, i64 2, !49, i64 3, !50, i64 4}
!58 = !{!"any pointer", !49, i64 0}
!59 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !58, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !62, i64 0}
!64 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !58, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !67, i64 0}
!69 = !{!"bool", !49, i64 0}
!70 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !58, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !73, i64 0}
!75 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !74, i64 0}
!76 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !57, i64 64, !63, i64 72, !68, i64 96, !50, i64 120, !50, i64 124, !69, i64 128, !75, i64 136}
!77 = !{!76, !50, i64 60}
!78 = !{!76, !50, i64 120}
!79 = !{!76, !50, i64 124}
!80 = !{!65, !64, i64 8}
!81 = !{!65, !64, i64 0}
!82 = !{!"p1 omnipotent char", !58, i64 0}
!83 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !82, i64 0}
!84 = !{!"long", !49, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !83, i64 0, !84, i64 8, !49, i64 16}
!86 = !{!85, !84, i64 8}
!87 = !{!85, !82, i64 0}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!57, !49, i64 0}
!90 = !{!57, !49, i64 1}
!91 = !{!57, !49, i64 2}
!92 = !{!57, !50, i64 4}
!93 = !{!76, !50, i64 48}
!94 = !{!76, !50, i64 52}
!95 = !{!76, !50, i64 56}
!96 = !{!71, !70, i64 0}
!97 = !{!71, !70, i64 8}
!98 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !82, i64 0, !84, i64 8}
!99 = !{!98, !82, i64 0}
!100 = !{!98, !84, i64 8}
!101 = !{!83, !82, i64 0}
!102 = !{!84, !84, i64 0}
!103 = !{!49, !49, i64 0}
!104 = !{!71, !70, i64 16}
!105 = !{!65, !64, i64 16}
!106 = !{!60, !59, i64 0}
!107 = !{!60, !59, i64 16}
!108 = !{!76, !50, i64 20}
!109 = !{!"p1 _ZTSN11OpenImageIO4v3_18ImageBufE", !58, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!69, !69, i64 0}
!112 = !{!"_ZTSN11OpenImageIO4v3_16paropt11ParStrategyE", !49, i64 0}
!113 = !{!"_ZTSN11OpenImageIO4v3_16paropt8SplitDirE", !49, i64 0}
!114 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !58, i64 0}
!115 = !{!"_ZTSN11OpenImageIO4v3_16paroptE", !50, i64 0, !112, i64 4, !113, i64 6, !84, i64 8, !114, i64 16, !69, i64 24}
!116 = !{!115, !50, i64 0}
!117 = !{!115, !112, i64 4}
!118 = !{!115, !113, i64 6}
!119 = !{!115, !84, i64 8}
!120 = !{!115, !114, i64 16}
!121 = !{!115, !69, i64 24}
!122 = !{!"p1 _ZTSN11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEEEEE", !58, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"p1 bool", !58, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!58, !58, i64 0}
!127 = !{!"_ZTSSt14_Function_base", !49, i64 0, !58, i64 16}
!128 = !{!"_ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !127, i64 0, !58, i64 24}
!129 = !{!128, !58, i64 24}
!130 = !{!127, !58, i64 16}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!52, !50, i64 4}
!134 = !{!52, !50, i64 12}
!135 = !{!52, !50, i64 8}
!136 = !{!52, !50, i64 20}
!137 = !{!52, !50, i64 16}
!138 = !{!"p1 _ZTSSt8functionIFvN11OpenImageIO4v3_13ROIEEE", !58, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!"p1 _ZTSN11OpenImageIO4v3_13ROIE", !58, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!"p1 _ZTSN11OpenImageIO4v3_113function_viewIFbNS0_4spanIfLm18446744073709551615EEENS2_IKfLm18446744073709551615EEES5_EEE", !58, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!145 = !{!"p1 _ZTS8_IO_FILE", !58, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"_ZTSN11OpenImageIO4v3_15TimerE", !69, i64 0, !69, i64 1, !84, i64 8, !84, i64 16, !82, i64 24}
!148 = !{!147, !69, i64 0}
end_hunk_1
