Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo?download=true
inline.NumInlined: 7404
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorISt7complexIfESaIS1_EE17_M_default_appendEm:bb.a
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !400
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !386
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt7complexIfEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt7complexIfESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #22

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare <2 x float> @cexpf(<2 x float> noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE7kf_workEiPSt7complexIfEPKS5_mm(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !388
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !51   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !388
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 9 uses
  %i.j = mul i32 %i.i, %i.e                       ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k ; 2 uses
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.a
  %i.n = add nsw i32 %1, 1
  %i.o = sext i32 %i.e to i64
  %i.p = mul i64 %4, %i.o
  %i.q = mul i64 %5, %4
  %i.r = sext i32 %i.i to i64
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.s = mul i64 %5, %4                           ; 9 uses
  %i.t = add nsw i64 %i.k, 2305843009213693951
  %i.u = and i64 %i.t, 2305843009213693951
  %xtraiter = and i64 %i.k, 7
  %i.v = and i32 %i.j, 7
  %lcmp.mod.not = icmp eq i32 %i.v, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %.044.prol = phi ptr [ %i.x, %.prol.preheader ], [ %3, %.preheader ] ; 2 uses
  %.0.prol = phi ptr [ %i.y, %.prol.preheader ], [ %2, %.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.w = load i64, ptr %.044.prol, align 4, !tbaa !103
  store i64 %i.w, ptr %.0.prol, align 4, !tbaa !103
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.044.prol, i64 %i.s ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1105

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %.044.unr = phi ptr [ %3, %.preheader ], [ %i.x, %.prol.preheader ]
  %.0.unr = phi ptr [ %2, %.preheader ], [ %i.y, %.prol.preheader ]
  %i.z = icmp samesign ult i64 %i.u, 7
  br i1 %i.z, label %.loopexit, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.044 = phi ptr [ %i.aw, %.preheader.new ], [ %.044.unr, %.prol.loopexit ] ; 2 uses
  %.0 = phi ptr [ %i.ax, %.preheader.new ], [ %.0.unr, %.prol.loopexit ] ; 9 uses
  %i.aa = load i64, ptr %.044, align 4, !tbaa !103
  store i64 %i.aa, ptr %.0, align 4, !tbaa !103
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %i.s ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ad = load i64, ptr %i.ab, align 4, !tbaa !103
  store i64 %i.ad, ptr %i.ac, align 4, !tbaa !103
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.s ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ag = load i64, ptr %i.ae, align 4, !tbaa !103
  store i64 %i.ag, ptr %i.af, align 4, !tbaa !103
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.s ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aj = load i64, ptr %i.ah, align 4, !tbaa !103
  store i64 %i.aj, ptr %i.ai, align 4, !tbaa !103
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.s ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.am = load i64, ptr %i.ak, align 4, !tbaa !103
  store i64 %i.am, ptr %i.al, align 4, !tbaa !103
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.s ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.ap = load i64, ptr %i.an, align 4, !tbaa !103
  store i64 %i.ap, ptr %i.ao, align 4, !tbaa !103
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.s ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.as = load i64, ptr %i.aq, align 4, !tbaa !103
  store i64 %i.as, ptr %i.ar, align 4, !tbaa !103
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.s ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.av = load i64, ptr %i.at, align 4, !tbaa !103
  store i64 %i.av, ptr %i.au, align 4, !tbaa !103
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.s
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %.not46.7 = icmp eq ptr %i.ax, %i.l
  br i1 %.not46.7, label %.loopexit, label %.preheader.new, !llvm.loop !1106

bb.b:                                             ; preds = %.preheader50, %bb.b
  %.145 = phi ptr [ %i.ay, %bb.b ], [ %3, %.preheader50 ] ; 2 uses
  %.1 = phi ptr [ %i.az, %bb.b ], [ %2, %.preheader50 ] ; 2 uses
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE7kf_workEiPSt7complexIfEPKS5_mm(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.n, ptr noundef %.1, ptr noundef %.145, i64 noundef %i.p, i64 noundef %5)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.145, i64 %i.q
  %i.az = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.r ; 2 uses
  %.not = icmp eq ptr %i.az, %i.l
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1107

.loopexit:                                        ; preds = %bb.b, %.prol.loopexit, %.preheader.new
  switch i32 %i.e, label %bb.o [
    i32 2, label %bb.c
    i32 3, label %bb.g
    i32 4, label %bb.m
    i32 5, label %bb.n
  ]

bb.c:                                             ; preds = %.loopexit
  %i.ba = icmp sgt i32 %i.i, 0
  br i1 %i.ba, label %.lr.ph.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = zext nneg i32 %i.i to i64               ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bc
  %i.bd = shl i64 %4, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %sext.i = mul i64 %i.bd, %indvars.iv.i
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !385
  %i.bf = ashr exact i64 %sext.i, 29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.bg, align 4, !tbaa !103 ; 4 uses
  %i.bh = load <2 x float>, ptr %gep.i, align 4, !tbaa !103 ; 4 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i, i64 1
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bh, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.bh, i64 1
  %i.bi = shufflevector <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fmul <2 x float> %i.bi, %i.bj           ; 2 uses
  %i.bl = shufflevector <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %i.bh           ; 2 uses
  %i.bn = fsub <2 x float> %i.bm, %i.bk           ; 2 uses
  %i.bo = fadd <2 x float> %i.bm, %i.bk           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bq = extractelement <2 x float> %i.bn, i64 0
  %i.br = fcmp uno float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.e, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i, !prof !401

bb.e:                                             ; preds = %bb.d
  %i.bs = extractelement <2 x float> %i.bo, i64 1
  %i.bt = fcmp uno float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.bu = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i, float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i) #32
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i

_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i:           ; preds = %bb.f, %bb.e, %bb.d
  %i.bv = phi <2 x float> [ %i.bp, %bb.d ], [ %i.bp, %bb.e ], [ %i.bu, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bw, align 4    ; 2 uses
  %i.by = fsub <2 x float> %i.bx, %i.bv
  store <2 x float> %i.by, ptr %gep.i, align 4, !tbaa !103
  %i.bz = fadd <2 x float> %i.bv, %i.bx
  store <2 x float> %i.bz, ptr %i.bw, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bc
  br i1 %exitcond.not.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit, label %bb.d, !llvm.loop !1108

bb.g:                                             ; preds = %.loopexit
  %i.ca = sext i32 %i.i to i64                    ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = mul i64 %4, %i.ca
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !385 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cf = load float, ptr %.sroa_idx.i, align 4
  %.idx38.i = shl nsw i64 %i.ca, 4
  %.idx39.i = shl i64 %4, 4
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i, %bb.g
  %.036.i = phi ptr [ %2, %bb.g ], [ %i.eh, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i ] ; 6 uses
  %.035.i = phi i64 [ %i.ca, %bb.g ], [ %i.ei, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i ]
  %.034.i = phi ptr [ %i.cd, %bb.g ], [ %i.dn, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i ] ; 2 uses
  %.0.i = phi ptr [ %i.cd, %bb.g ], [ %i.do, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.036.i, i64 %i.ca ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.036.i, i64 %.idx38.i ; 2 uses
  %i.ck = load <2 x float>, ptr %i.ci, align 4, !tbaa !103 ; 4 uses
  %.sroa.0.0.vec.extract.i.i.i47 = extractelement <2 x float> %i.ck, i64 0
  %.sroa.0.4.vec.extract.i.i.i48 = extractelement <2 x float> %i.ck, i64 1
  %6 = load <2 x float>, ptr %.034.i, align 4     ; 4 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cm = fmul <2 x float> %i.cl, %7              ; 2 uses
  %i.cn = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.cn, %i.ck           ; 2 uses
  %i.cp = fsub <2 x float> %i.co, %i.cm           ; 2 uses
  %i.cq = fadd <2 x float> %i.co, %i.cm           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cp, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cs = extractelement <2 x float> %i.cp, i64 0
  %i.ct = fcmp uno float %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i, !prof !401

bb.i:                                             ; preds = %bb.h
  %i.cu = extractelement <2 x float> %i.cq, i64 1
  %i.cv = fcmp uno float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.j, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i, !prof !401

bb.j:                                             ; preds = %bb.i
  %8 = extractelement <2 x float> %6, i64 0
  %9 = extractelement <2 x float> %6, i64 1
  %i.cw = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.i47, float noundef %.sroa.0.4.vec.extract.i.i.i48, float noundef %8, float noundef %9) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.cx = phi <2 x float> [ %i.cr, %bb.h ], [ %i.cr, %bb.i ], [ %i.cw, %bb.j ] ; 2 uses
  %i.cy = load <2 x float>, ptr %i.cj, align 4, !tbaa !103 ; 4 uses
  %.sroa.0.0.vec.extract.i.i40.i = extractelement <2 x float> %i.cy, i64 0
  %.sroa.0.4.vec.extract.i.i41.i = extractelement <2 x float> %i.cy, i64 1
  %10 = load <2 x float>, ptr %.0.i, align 4      ; 4 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cz, %11             ; 2 uses
  %i.db = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.db, %i.cy           ; 2 uses
  %i.dd = fsub <2 x float> %i.dc, %i.da           ; 2 uses
  %i.de = fadd <2 x float> %i.dc, %i.da           ; 2 uses
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.de, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dg = extractelement <2 x float> %i.dd, i64 0
  %i.dh = fcmp uno float %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.k, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i, !prof !401

bb.k:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i
  %i.di = extractelement <2 x float> %i.de, i64 1
  %i.dj = fcmp uno float %i.di, 0.000000e+00
  br i1 %i.dj, label %bb.l, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i, !prof !401

bb.l:                                             ; preds = %bb.k
  %12 = extractelement <2 x float> %10, i64 0
  %13 = extractelement <2 x float> %10, i64 1
  %i.dk = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i40.i, float noundef %.sroa.0.4.vec.extract.i.i41.i, float noundef %12, float noundef %13) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i: ; preds = %bb.l, %bb.k, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i
  %i.dl = phi <2 x float> [ %i.df, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.i ], [ %i.df, %bb.k ], [ %i.dk, %bb.l ] ; 2 uses
  %i.dm = fadd <2 x float> %i.cx, %i.dl           ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.034.i, i64 %4
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.idx39.i
  %.sroa_idx60.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.dp = load <2 x float>, ptr %.036.i, align 4, !tbaa !161
  %i.dq = fmul <2 x float> %i.dm, splat (float 5.000000e-01)
  %i.dr = fsub <2 x float> %i.dp, %i.dq
  store <2 x float> %i.dr, ptr %i.ci, align 4, !tbaa !103
  %i.ds = load <2 x float>, ptr %.036.i, align 4
  %i.dt = fadd <2 x float> %i.dm, %i.ds
  store <2 x float> %i.dt, ptr %.036.i, align 4
  %i.du = fsub <2 x float> %i.cx, %i.dl
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = fmul <2 x float> %i.ch, %i.dv           ; 4 uses
  %i.dx = load <2 x float>, ptr %i.ci, align 4, !tbaa !161 ; 2 uses
  %i.dy = fadd <2 x float> %i.dx, %i.dw
  %i.dz = fsub <2 x float> %i.dx, %i.dw
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ea, ptr %i.cj, align 4, !tbaa !103
  %i.eb = load float, ptr %i.ci, align 4
  %i.ec = load float, ptr %.sroa_idx60.i, align 4
  %i.ed = extractelement <2 x float> %i.dw, i64 0
  %i.ee = fsub float %i.eb, %i.ed
  %i.ef = extractelement <2 x float> %i.dw, i64 1
  %i.eg = fadd float %i.ef, %i.ec
  store float %i.ee, ptr %i.ci, align 4
  store float %i.eg, ptr %.sroa_idx60.i, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.036.i, i64 8
  %i.ei = add i64 %.035.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit, label %bb.h, !llvm.loop !1109

bb.m:                                             ; preds = %.loopexit
  %i.ej = sext i32 %i.i to i64
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly4EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i64 noundef %i.ej)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

bb.n:                                             ; preds = %.loopexit
  %i.ek = sext i32 %i.i to i64
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i64 noundef %i.ek)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

bb.o:                                             ; preds = %.loopexit
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i32 noundef %i.i, i32 noundef %i.e)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i, %bb.c, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly4EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #27 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !399, !range !131, !noundef !132
  %i.c = zext nneg i8 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, -2
  %i.e = or disjoint i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.idx47 = shl i64 %3, 4
  %.idx48 = mul i64 %3, 24
  %i.g = sitofp i32 %i.e to float
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64
  %.095 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64 ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %.095 ; 7 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %3 ; 2 uses
  %i.l = mul i64 %.095, %2                        ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %sext = shl i64 %i.l, 32
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !385  ; 3 uses
  %i.o = ashr exact i64 %sext, 29
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.p, align 4, !tbaa !103 ; 4 uses
  %i.q = load <2 x float>, ptr %i.k, align 4, !tbaa !103 ; 4 uses
  %.sroa.092.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %.sroa.092.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.q, i64 1
  %i.r = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.q              ; 2 uses
  %i.w = fsub <2 x float> %i.v, %i.t              ; 2 uses
  %i.x = fadd <2 x float> %i.v, %i.t              ; 2 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.z = extractelement <2 x float> %i.w, i64 0
  %i.aa = fcmp uno float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, !prof !401

bb.c:                                             ; preds = %bb.b
  %i.ab = extractelement <2 x float> %i.x, i64 1
  %i.ac = fcmp uno float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, !prof !401

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, float noundef %.sroa.092.0.vec.extract, float noundef %.sroa.092.4.vec.extract) #32
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !385
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit

_ZStmlIfESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %i.ae = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.af = phi <2 x float> [ %i.y, %bb.b ], [ %i.y, %bb.c ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %.idx47 ; 2 uses
  %i.ah = shl i32 %i.m, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %.sroa.0.0.copyload.i49 = load <2 x float>, ptr %i.aj, align 4, !tbaa !103 ; 4 uses
  %i.ak = load <2 x float>, ptr %i.ag, align 4, !tbaa !103 ; 4 uses
  %.sroa.091.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i49, i64 0
  %.sroa.091.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i49, i64 1
  %.sroa.0.0.vec.extract.i50 = extractelement <2 x float> %i.ak, i64 0
  %.sroa.0.4.vec.extract.i51 = extractelement <2 x float> %i.ak, i64 1
  %i.al = shufflevector <2 x float> %.sroa.0.0.copyload.i49, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fmul <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = shufflevector <2 x float> %.sroa.0.0.copyload.i49, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.ak           ; 2 uses
  %i.aq = fsub <2 x float> %i.ap, %i.an           ; 2 uses
  %i.ar = fadd <2 x float> %i.ap, %i.an           ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 0
  %i.au = fcmp uno float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.e, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, !prof !401

bb.e:                                             ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit
  %i.av = extractelement <2 x float> %i.ar, i64 1
  %i.aw = fcmp uno float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.f, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i50, float noundef %.sroa.0.4.vec.extract.i51, float noundef %.sroa.091.0.vec.extract, float noundef %.sroa.091.4.vec.extract) #32
  %.pre107 = load ptr, ptr %i.f, align 8, !tbaa !385
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56

_ZStmlIfESt7complexIT_ERKS2_S4_.exit56:           ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, %bb.e, %bb.f
  %i.ay = phi ptr [ %i.ae, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit ], [ %i.ae, %bb.e ], [ %.pre107, %bb.f ]
  %i.az = phi <2 x float> [ %i.as, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit ], [ %i.as, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.j, i64 %.idx48 ; 2 uses
  %sext93 = mul i64 %i.l, 12884901888
  %i.bb = ashr exact i64 %sext93, 29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  %.sroa.0.0.copyload.i57 = load <2 x float>, ptr %i.bc, align 4, !tbaa !103 ; 4 uses
  %i.bd = load <2 x float>, ptr %i.ba, align 4, !tbaa !103 ; 4 uses
  %.sroa.090.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i57, i64 0
  %.sroa.090.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i57, i64 1
  %.sroa.0.0.vec.extract.i58 = extractelement <2 x float> %i.bd, i64 0
  %.sroa.0.4.vec.extract.i59 = extractelement <2 x float> %i.bd, i64 1
  %i.be = shufflevector <2 x float> %.sroa.0.0.copyload.i57, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fmul <2 x float> %i.be, %i.bf           ; 2 uses
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
end_hunk_0
begin_hunk_1_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm:bb.a
  %i.dv = fadd <2 x float> %i.dt, %i.du
  %i.dw = fadd <2 x float> %i.dv, %i.ad           ; 2 uses
  %i.dx = fmul <2 x float> %i.x, %i.dk            ; 2 uses
  %i.dy = fmul <2 x float> %i.z, %i.dm            ; 2 uses
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = fsub <2 x float> %i.dx, %i.dy
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ec = fsub <2 x float> %i.dw, %i.eb
  store <2 x float> %i.ec, ptr %.053180, align 4, !tbaa !103
  %i.ed = fadd <2 x float> %i.dw, %i.eb
  store <2 x float> %i.ed, ptr %.055178, align 4, !tbaa !103
  %i.ee = fmul <2 x float> %i.v, %i.dj
  %i.ef = fmul <2 x float> %i.t, %i.dl
  %i.eg = fadd <2 x float> %i.ee, %i.ef
  %i.eh = fadd <2 x float> %i.eg, %i.ad           ; 2 uses
  %i.ei = shufflevector <2 x float> %i.dm, <2 x float> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.ej = fmul <2 x float> %i.ab, %i.ei
  %i.ek = shufflevector <2 x float> %i.dm, <2 x float> %i.dk, <2 x i32> <i32 3, i32 0>
  %i.el = fmul <2 x float> %i.ac, %i.ek
  %i.em = fsub <2 x float> %i.ej, %i.el           ; 2 uses
  %i.en = fadd <2 x float> %i.eh, %i.em
  store <2 x float> %i.en, ptr %.057176, align 4, !tbaa !103
  %i.eo = fsub <2 x float> %i.eh, %i.em
  store <2 x float> %i.eo, ptr %.056177, align 4, !tbaa !103
  %i.ep = getelementptr inbounds nuw i8, ptr %.0181, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.053180, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %.057176, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.056177, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.055178, i64 8
  %i.eu = add nuw i64 %.054179, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %3
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
  %.14059.us.us.us = phi i32 [ %i.cb, %._crit_edge.us.us.us ], [ 0, %.lr.ph57.us.us.us.preheader ]
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv116 ; 3 uses
  %i.av = load i64, ptr %i.at, align 4, !tbaa !103 ; 3 uses
  store i64 %i.av, ptr %i.au, align 4, !tbaa !103
  %i.aw = trunc nuw i64 %indvars.iv116 to i32
  %i.ax = mul i32 %i.aw, %i.s
  %i.ay = lshr i64 %i.av, 32
  %i.az = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %i.ba = insertelement <2 x i64> %i.az, i64 %i.ay, i64 1
  %i.bb = trunc <2 x i64> %i.ba to <2 x i32>
  %i.bc = bitcast <2 x i32> %i.bb to <2 x float>
  br label %bb.e

bb.e:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, %.lr.ph57.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 1, %.lr.ph57.us.us.us ] ; 2 uses
  %.056.us.us.us = phi i32 [ %spec.select.us.us.us, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 0, %.lr.ph57.us.us.us ]
  %i.bd = phi <2 x float> [ %i.ca, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ %i.bc, %.lr.ph57.us.us.us ] ; 2 uses
  %i.be = add i32 %.056.us.us.us, %i.ax           ; 2 uses
  %.not.us.us.us = icmp slt i32 %i.be, %i.c
  %i.bf = select i1 %.not.us.us.us, i32 0, i32 %i.c
  %spec.select.us.us.us = sub nsw i32 %i.be, %i.bf ; 2 uses
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv111
  %i.bi = sext i32 %spec.select.us.us.us to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bi
  %i.bk = load <2 x float>, ptr %i.bh, align 4, !tbaa !103 ; 4 uses
  %.sroa.0.0.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.bk, i64 0
  %.sroa.0.4.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.bk, i64 1
  %5 = load <2 x float>, ptr %i.bj, align 4       ; 4 uses
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.bl, %6              ; 2 uses
  %i.bn = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bk           ; 2 uses
  %i.bp = fsub <2 x float> %i.bo, %i.bm           ; 2 uses
  %i.bq = fadd <2 x float> %i.bo, %i.bm           ; 2 uses
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> %i.bq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 0
  %i.bt = fcmp uno float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.f, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.f:                                             ; preds = %bb.e
  %i.bu = extractelement <2 x float> %i.bq, i64 1
  %i.bv = fcmp uno float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.g, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !401

bb.g:                                             ; preds = %bb.f
  %7 = extractelement <2 x float> %5, i64 0
  %8 = extractelement <2 x float> %5, i64 1
  %i.bw = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.us.us.us, float noundef %.sroa.0.4.vec.extract.i.i.us.us.us, float noundef %7, float noundef %8) #32
  %i.bx = load <2 x float>, ptr %i.au, align 4
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us: ; preds = %bb.g, %bb.f, %bb.e
  %i.by = phi <2 x float> [ %i.br, %bb.e ], [ %i.br, %bb.f ], [ %i.bw, %bb.g ]
  %i.bz = phi <2 x float> [ %i.bd, %bb.e ], [ %i.bd, %bb.f ], [ %i.bx, %bb.g ]
  %i.ca = fadd <2 x float> %i.by, %i.bz           ; 2 uses
  store <2 x float> %i.ca, ptr %i.au, align 4
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.us.us.us, label %bb.e, !llvm.loop !1114

._crit_edge.us.us.us:                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, %i.t
  %i.cb = add nuw nsw i32 %.14059.us.us.us, 1     ; 2 uses
  %exitcond119.not = icmp eq i32 %i.cb, %4
  br i1 %exitcond119.not, label %._crit_edge61.split.us.us.us, label %.lr.ph57.us.us.us, !llvm.loop !1115

._crit_edge61.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next103, %i.t
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !1116

._crit_edge61.split.us67.us:                      ; preds = %._crit_edge61.split.us67.us, %._crit_edge61.split.us67.us.preheader.new
  %indvars.iv84 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %indvars.iv.next85.1, %._crit_edge61.split.us67.us ] ; 4 uses
  %niter142 = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader.new ], [ %niter142.next.1, %._crit_edge61.split.us67.us ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.cd = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ce = load i64, ptr %i.cc, align 4, !tbaa !103
  store i64 %i.ce, ptr %i.cd, align 4, !tbaa !103
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.ch = load i64, ptr %i.cf, align 4, !tbaa !103
  store i64 %i.ch, ptr %i.cg, align 4, !tbaa !103
  %indvars.iv.next85 = or disjoint i64 %indvars.iv84, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.ck = load i64, ptr %i.ci, align 4, !tbaa !103
  store i64 %i.ck, ptr %i.cj, align 4, !tbaa !103
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next85
  %i.cn = load i64, ptr %i.cl, align 4, !tbaa !103
  store i64 %i.cn, ptr %i.cm, align 4, !tbaa !103
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %niter142.next.1 = add i64 %niter142, 2         ; 2 uses
  %niter142.ncmp.1 = icmp eq i64 %niter142.next.1, %unroll_iter141
  br i1 %niter142.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %._crit_edge61.split.us67.us, !llvm.loop !1116

._crit_edge.loopexit.unr-lcssa:                   ; preds = %._crit_edge61.split.us67.us
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %._crit_edge, label %._crit_edge61.split.us67.us.epil.preheader

._crit_edge61.split.us67.us.epil.preheader:       ; preds = %._crit_edge.loopexit.unr-lcssa, %._crit_edge61.split.us67.us.preheader
  %indvars.iv84.epil.init = phi i64 [ 0, %._crit_edge61.split.us67.us.preheader ], [ %indvars.iv.next85.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod140 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cq = load i64, ptr %i.co, align 4, !tbaa !103
  store i64 %i.cq, ptr %i.cp, align 4, !tbaa !103
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !385
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84.epil.init
  %i.ct = load i64, ptr %i.cr, align 4, !tbaa !103
  store i64 %i.ct, ptr %i.cs, align 4, !tbaa !103
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge61.split.us.us.us, %._crit_edge61.split.us67.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader52.lr.ph, %_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm.exit
  ret void
}

declare <2 x float> @__mulsc3(float, float, float, float) local_unnamed_addr

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39), ptr, i64, i32 noundef, ptr, i64, i8, i8) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 51 uses
  %3 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !77
  %.fr47.i.i.i = freeze i32 %i.d                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.g = load ptr, ptr %0, align 8, !tbaa !1119, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 0, i1 noundef zeroext true)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 10 uses
  %i.p = sext i32 %i.f to i64
  %i.q = icmp sgt i32 %.fr47.i.i.i, 0
  br i1 %i.q, label %.split.us.preheader.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.i.i.i

.split.us.preheader.i.i.i:                        ; preds = %bb.a
  %wide.trip.count.i.i.i = zext nneg i32 %.fr47.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i.backedge, %.split.us.preheader.i.i.i
  %i.at = load i8, ptr %i.h, align 8, !tbaa !175, !range !131, !noundef !132
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.av = load i32, ptr %i.i, align 4, !tbaa !176
  %i.aw = load i32, ptr %i.j, align 4, !tbaa !178
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !177
  %i.az = load i32, ptr %i.l, align 4, !tbaa !188
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i: ; preds = %bb.c
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !179
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !180
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %.split41.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us.i.i.i, %bb.c, %bb.b, %.split.us.i.i.i
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.p
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !161 ; 2 uses
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  br i1 %i.bh, label %.preheader.us.i.i.i, label %..loopexit_crit_edge.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %bb.e
  %i.bi = phi ptr [ %i.bp, %bb.e ], [ %i.be, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !161
  %i.bl = fdiv float %i.bk, %i.bg
  %i.bm = load ptr, ptr %2, align 8, !tbaa !184
  %i.bn = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %.noexc.us.i.i.i unwind label %.split43.us.i.i.i

.noexc.us.i.i.i:                                  ; preds = %.preheader.us.i.i.i
  %i.bo = icmp eq i32 %i.bn, 3
  br i1 %i.bo, label %bb.d, label %bb.e, !prof !185

bb.d:                                             ; preds = %.noexc.us.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %bb.e unwind label %.split43.us.i.i.i

bb.e:                                             ; preds = %bb.d, %.noexc.us.i.i.i
  %i.bp = load ptr, ptr %i.o, align 8, !tbaa !186 ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.i.i
  store float %i.bl, ptr %i.bq, align 4, !tbaa !161
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %..loopexit_crit_edge.us.i.i.i, label %.preheader.us.i.i.i, !llvm.loop !1117

end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.ai, %bb.ah, %.noexc3.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.aj:                                            ; preds = %bb.j, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.l, %bb.k
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.t, %bb.q
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.fg, %bb.al ], [ %i.fe, %bb.aj ], [ %i.ff, %bb.ak ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.i
  %.pn24.pn.i.i.i = phi { ptr, i32 } [ %.pn24.i.i.i, %bb.am ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn24.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS0_8ImageBufERKS2_NS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !229
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !419
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIffEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #22

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIfhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1497, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1498, !nonnull !132, !align !226
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !175, !range !131, !noundef !132
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !176
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !178
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !188
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.be = load i32, ptr %i.j, align 8, !tbaa !180
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !181
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !181
  %.not.i27.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i27.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIfhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIfhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.bo = load <2 x i8>, ptr %i.bn, align 1, !tbaa !103
  %i.bp = uitofp <2 x i8> %i.bo to <2 x float>    ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul nnan float %i.bq, f0x3B808081      ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fmul nnan float %i.bs, f0x3B808081      ; 2 uses
  %i.bu = call noundef float @llvm.atan2.f32(float %i.bt, float %i.br) ; 3 uses
  %5 = fcmp olt float %i.bu, 0.000000e+00
  %6 = fadd float %i.bu, f0x40C90FDB
  %.018.i.i.i = select i1 %5, float %6, float %i.bu
  %i.bv = call float @hypotf(float noundef %i.br, float noundef %i.bt) #39
  %i.bw = load ptr, ptr %3, align 8, !tbaa !184
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !185

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !186
  store float %i.bv, ptr %i.bz, align 4, !tbaa !161
  %i.ca = load ptr, ptr %3, align 8, !tbaa !184
  %i.cb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %.noexc32.i.i.i unwind label %bb.ak

.noexc32.i.i.i:                                   ; preds = %bb.k
  %i.cc = icmp eq i32 %i.cb, 3
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !185

bb.l:                                             ; preds = %.noexc32.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc32.i.i.i
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !186 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %.018.i.i.i, ptr %i.ce, align 4, !tbaa !161
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !176
  %i.cg = add nsw i32 %i.cf, 1                    ; 7 uses
  store i32 %i.cg, ptr %i.e, align 4, !tbaa !176
  %i.ch = load i32, ptr %i.m, align 8, !tbaa !193
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %i.o, align 1, !tbaa !194, !range !131, !noundef !132
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !177
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.p, align 1, !tbaa !195, !range !131, !noundef !132
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cn = load i64, ptr %i.r, align 8, !tbaa !196
  %i.co = getelementptr inbounds i8, ptr %i.cd, i64 %i.cn
  store ptr %i.co, ptr %i.l, align 8, !tbaa !186
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !197
  %.not.i.i12.i.i = icmp slt i32 %i.cg, %i.cp
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.cq = load i8, ptr %i.q, align 2, !tbaa !198, !range !131, !noundef !132
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !196
  %i.ct = getelementptr inbounds i8, ptr %i.cd, i64 %i.cs
  store ptr %i.ct, ptr %i.l, align 8, !tbaa !186
  %i.cu = load i32, ptr %i.s, align 8, !tbaa !197
  %i.cv = icmp slt i32 %i.cg, %i.cu               ; 3 uses
  %i.cw = load i32, ptr %i.t, align 4
  %i.cx = icmp sge i32 %i.cg, %i.cw
  %not..i.i10.i.i = xor i1 %i.cv, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cx, !prof !199
  %i.cy = load ptr, ptr %i.u, align 8
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.cz, !prof !199
  br i1 %i.da, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !185

bb.t:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %3, align 8, !tbaa !184
  %i.dc = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.de = load i32, ptr %i.z, align 8, !tbaa !200
  %i.df = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i32 noundef %i.cg, i32 noundef %i.dc, i32 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.cv, i32 noundef %i.de)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dg = zext i1 %i.cv to i8
  store ptr %i.df, ptr %i.l, align 8, !tbaa !186
  store i8 %i.dg, ptr %i.o, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !178 ; 3 uses
  store i32 %i.dh, ptr %i.e, align 4, !tbaa !176
  %i.di = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dj = add nsw i32 %i.di, 1                    ; 3 uses
  store i32 %i.dj, ptr %i.g, align 8, !tbaa !177
  %i.dk = load i32, ptr %i.n, align 8, !tbaa !201
  %.not.i5.i.i = icmp slt i32 %i.dj, %i.dk
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = load i32, ptr %i.h, align 4, !tbaa !188 ; 2 uses
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !177
  %i.dm = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dm, ptr %i.i, align 4, !tbaa !179
  %i.dn = load i32, ptr %i.j, align 8, !tbaa !180
  %.not1.i6.i.i = icmp slt i32 %i.dm, %i.dn
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.do = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dm, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dp = phi i32 [ %i.dj, %bb.u ], [ %i.dl, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.dq = phi i32 [ %i.dh, %bb.u ], [ %i.dh, %bb.v ], [ %i.cg, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.do)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.dr = load i32, ptr %i.aa, align 4, !tbaa !176
  %i.ds = add nsw i32 %i.dr, 1                    ; 7 uses
  store i32 %i.ds, ptr %i.aa, align 4, !tbaa !176
  %i.dt = load i32, ptr %i.ab, align 8, !tbaa !193
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.dv = load i8, ptr %i.aj, align 1, !tbaa !194, !range !131, !noundef !132
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !177
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !179
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.dx = load i8, ptr %i.ak, align 1, !tbaa !195, !range !131, !noundef !132
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i64, ptr %i.am, align 8, !tbaa !196
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dz
  store ptr %i.eb, ptr %i.k, align 8, !tbaa !186
  %i.ec = load i32, ptr %i.an, align 8, !tbaa !197
  %.not.i.i2.i.i = icmp slt i32 %i.ds, %i.ec
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !144

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %i.al, align 2, !tbaa !198, !range !131, !noundef !132
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load i64, ptr %i.am, align 8, !tbaa !196
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.ef
  store ptr %i.eh, ptr %i.k, align 8, !tbaa !186
  %i.ei = load i32, ptr %i.an, align 8, !tbaa !197
  %i.ej = icmp slt i32 %i.ds, %i.ei               ; 3 uses
  %i.ek = load i32, ptr %i.ao, align 4
  %i.el = icmp sge i32 %i.ds, %i.ek
  %not..i.i.i.i = xor i1 %i.ej, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.el, !prof !199
  %i.em = load ptr, ptr %i.ap, align 8
  %i.en = icmp eq ptr %i.em, null
  %i.eo = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.en, !prof !199
  br i1 %i.eo, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !185

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %2, align 8, !tbaa !184
  %i.eq = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.er = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.es = load i32, ptr %i.au, align 8, !tbaa !200
  %i.et = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i32 noundef %i.ds, i32 noundef %i.eq, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ej, i32 noundef %i.es)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.eu = zext i1 %i.ej to i8
  store ptr %i.et, ptr %i.k, align 8, !tbaa !186
  store i8 %i.eu, ptr %i.aj, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ev = load i32, ptr %i.ac, align 4, !tbaa !178 ; 3 uses
  store i32 %i.ev, ptr %i.aa, align 4, !tbaa !176
  %i.ew = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.ex = add nsw i32 %i.ew, 1                    ; 3 uses
  store i32 %i.ex, ptr %i.ad, align 8, !tbaa !177
  %i.ey = load i32, ptr %i.ae, align 8, !tbaa !201
  %.not.i.i.i = icmp slt i32 %i.ex, %i.ey
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = load i32, ptr %i.af, align 4, !tbaa !188 ; 2 uses
  store i32 %i.ez, ptr %i.ad, align 8, !tbaa !177
  %i.fa = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fa, ptr %i.ag, align 4, !tbaa !179
  %i.fb = load i32, ptr %i.ah, align 8, !tbaa !180
  %.not1.i.i.i = icmp slt i32 %i.fa, %i.fb
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.fc = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.fa, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.fd = phi i32 [ %i.ex, %bb.af ], [ %i.ez, %bb.ag ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.fe = phi i32 [ %i.ev, %bb.af ], [ %i.ev, %bb.ag ], [ %i.ds, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fe, i32 noundef %i.fd, i32 noundef %i.fc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.gj = phi i32 [ %.pre19.i.i, %bb.ar ], [ %i.gh, %bb.as ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.gk = phi i32 [ %i.ge, %bb.ar ], [ %i.gg, %bb.as ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.gl = phi i32 [ %i.gc, %bb.ar ], [ %i.gc, %bb.as ], [ %i.ez, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.gl, i32 noundef %i.gk, i32 noundef %i.gj)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.ax

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.au, %bb.at, %.noexc3.i.i, %bb.ap, %bb.ao, %bb.an, %bb.am
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.av:                                            ; preds = %bb.v, %bb.u
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %bb.x, %bb.w
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au, %bb.aq, %bb.an, %bb.aj, %bb.af, %bb.ac
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.go, %bb.ax ], [ %i.gm, %bb.av ], [ %i.gn, %bb.aw ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.i
  %.pn24.pn.i.i.i = phi { ptr, i32 } [ %.pn24.i.i.i, %bb.ay ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn24.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS0_8ImageBufERKS4_NS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !229
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !419
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIfN9Imath_3_14halfEEEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1503, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1504, !nonnull !132, !align !226
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !175, !range !131, !noundef !132
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !176
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !178
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !188
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.be = load i32, ptr %i.j, align 8, !tbaa !180
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !181
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !181
  %.not.i27.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i27.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.bo = load <2 x i16>, ptr %i.bn, align 2, !tbaa !415
  %i.bp = uitofp <2 x i16> %i.bo to <2 x float>   ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul nnan float %i.bq, f0x37800080      ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fmul nnan float %i.bs, f0x37800080      ; 2 uses
  %i.bu = call noundef float @llvm.atan2.f32(float %i.bt, float %i.br) ; 3 uses
  %5 = fcmp olt float %i.bu, 0.000000e+00
  %6 = fadd float %i.bu, f0x40C90FDB
  %.018.i.i.i = select i1 %5, float %6, float %i.bu
  %i.bv = call float @hypotf(float noundef %i.br, float noundef %i.bt) #39
  %i.bw = load ptr, ptr %3, align 8, !tbaa !184
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !185

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !186
  store float %i.bv, ptr %i.bz, align 4, !tbaa !161
  %i.ca = load ptr, ptr %3, align 8, !tbaa !184
  %i.cb = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %.noexc32.i.i.i unwind label %bb.ak

.noexc32.i.i.i:                                   ; preds = %bb.k
  %i.cc = icmp eq i32 %i.cb, 3
  br i1 %i.cc, label %bb.l, label %bb.m, !prof !185

bb.l:                                             ; preds = %.noexc32.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc32.i.i.i
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !186 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store float %.018.i.i.i, ptr %i.ce, align 4, !tbaa !161
  %i.cf = load i32, ptr %i.e, align 4, !tbaa !176
  %i.cg = add nsw i32 %i.cf, 1                    ; 7 uses
  store i32 %i.cg, ptr %i.e, align 4, !tbaa !176
  %i.ch = load i32, ptr %i.m, align 8, !tbaa !193
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cj = load i8, ptr %i.o, align 1, !tbaa !194, !range !131, !noundef !132
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !177
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cl = load i8, ptr %i.p, align 1, !tbaa !195, !range !131, !noundef !132
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cn = load i64, ptr %i.r, align 8, !tbaa !196
  %i.co = getelementptr inbounds i8, ptr %i.cd, i64 %i.cn
  store ptr %i.co, ptr %i.l, align 8, !tbaa !186
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !197
  %.not.i.i12.i.i = icmp slt i32 %i.cg, %i.cp
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.cq = load i8, ptr %i.q, align 2, !tbaa !198, !range !131, !noundef !132
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !196
  %i.ct = getelementptr inbounds i8, ptr %i.cd, i64 %i.cs
  store ptr %i.ct, ptr %i.l, align 8, !tbaa !186
  %i.cu = load i32, ptr %i.s, align 8, !tbaa !197
  %i.cv = icmp slt i32 %i.cg, %i.cu               ; 3 uses
  %i.cw = load i32, ptr %i.t, align 4
  %i.cx = icmp sge i32 %i.cg, %i.cw
  %not..i.i10.i.i = xor i1 %i.cv, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.cx, !prof !199
  %i.cy = load ptr, ptr %i.u, align 8
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.cz, !prof !199
  br i1 %i.da, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !185

bb.t:                                             ; preds = %bb.s
  %i.db = load ptr, ptr %3, align 8, !tbaa !184
  %i.dc = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.de = load i32, ptr %i.z, align 8, !tbaa !200
  %i.df = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i32 noundef %i.cg, i32 noundef %i.dc, i32 noundef %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.cv, i32 noundef %i.de)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dg = zext i1 %i.cv to i8
  store ptr %i.df, ptr %i.l, align 8, !tbaa !186
  store i8 %i.dg, ptr %i.o, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.f, align 4, !tbaa !178 ; 3 uses
  store i32 %i.dh, ptr %i.e, align 4, !tbaa !176
  %i.di = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dj = add nsw i32 %i.di, 1                    ; 3 uses
  store i32 %i.dj, ptr %i.g, align 8, !tbaa !177
  %i.dk = load i32, ptr %i.n, align 8, !tbaa !201
  %.not.i5.i.i = icmp slt i32 %i.dj, %i.dk
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = load i32, ptr %i.h, align 4, !tbaa !188 ; 2 uses
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !177
  %i.dm = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dm, ptr %i.i, align 4, !tbaa !179
  %i.dn = load i32, ptr %i.j, align 8, !tbaa !180
  %.not1.i6.i.i = icmp slt i32 %i.dm, %i.dn
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.do = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dm, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dp = phi i32 [ %i.dj, %bb.u ], [ %i.dl, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.dq = phi i32 [ %i.dh, %bb.u ], [ %i.dh, %bb.v ], [ %i.cg, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.dq, i32 noundef %i.dp, i32 noundef %i.do)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.dr = load i32, ptr %i.aa, align 4, !tbaa !176
  %i.ds = add nsw i32 %i.dr, 1                    ; 7 uses
  store i32 %i.ds, ptr %i.aa, align 4, !tbaa !176
  %i.dt = load i32, ptr %i.ab, align 8, !tbaa !193
  %i.du = icmp slt i32 %i.ds, %i.dt
  br i1 %i.du, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.dv = load i8, ptr %i.aj, align 1, !tbaa !194, !range !131, !noundef !132
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !177
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !179
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.dx = load i8, ptr %i.ak, align 1, !tbaa !195, !range !131, !noundef !132
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i64, ptr %i.am, align 8, !tbaa !196
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dz
  store ptr %i.eb, ptr %i.k, align 8, !tbaa !186
  %i.ec = load i32, ptr %i.an, align 8, !tbaa !197
  %.not.i.i2.i.i = icmp slt i32 %i.ds, %i.ec
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !144

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ed = load i8, ptr %i.al, align 2, !tbaa !198, !range !131, !noundef !132
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load i64, ptr %i.am, align 8, !tbaa !196
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.ef
  store ptr %i.eh, ptr %i.k, align 8, !tbaa !186
  %i.ei = load i32, ptr %i.an, align 8, !tbaa !197
  %i.ej = icmp slt i32 %i.ds, %i.ei               ; 3 uses
  %i.ek = load i32, ptr %i.ao, align 4
  %i.el = icmp sge i32 %i.ds, %i.ek
  %not..i.i.i.i = xor i1 %i.ej, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.el, !prof !199
  %i.em = load ptr, ptr %i.ap, align 8
  %i.en = icmp eq ptr %i.em, null
  %i.eo = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.en, !prof !199
  br i1 %i.eo, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !185

bb.ae:                                            ; preds = %bb.ad
  %i.ep = load ptr, ptr %2, align 8, !tbaa !184
  %i.eq = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.er = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.es = load i32, ptr %i.au, align 8, !tbaa !200
  %i.et = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i32 noundef %i.ds, i32 noundef %i.eq, i32 noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ej, i32 noundef %i.es)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.eu = zext i1 %i.ej to i8
  store ptr %i.et, ptr %i.k, align 8, !tbaa !186
  store i8 %i.eu, ptr %i.aj, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ev = load i32, ptr %i.ac, align 4, !tbaa !178 ; 3 uses
  store i32 %i.ev, ptr %i.aa, align 4, !tbaa !176
  %i.ew = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.ex = add nsw i32 %i.ew, 1                    ; 3 uses
  store i32 %i.ex, ptr %i.ad, align 8, !tbaa !177
  %i.ey = load i32, ptr %i.ae, align 8, !tbaa !201
  %.not.i.i.i = icmp slt i32 %i.ex, %i.ey
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = load i32, ptr %i.af, align 4, !tbaa !188 ; 2 uses
  store i32 %i.ez, ptr %i.ad, align 8, !tbaa !177
  %i.fa = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fa, ptr %i.ag, align 4, !tbaa !179
  %i.fb = load i32, ptr %i.ah, align 8, !tbaa !180
  %.not1.i.i.i = icmp slt i32 %i.fa, %i.fb
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.fc = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.fa, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.fd = phi i32 [ %i.ex, %bb.af ], [ %i.ez, %bb.ag ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.fe = phi i32 [ %i.ev, %bb.af ], [ %i.ev, %bb.ag ], [ %i.ds, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.fe, i32 noundef %i.fd, i32 noundef %i.fc)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.ai, %bb.ah, %.noexc3.i.i, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.aj:                                            ; preds = %bb.j, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.l, %bb.k
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ae, %bb.ab, %bb.x, %bb.t, %bb.q
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.fh, %bb.al ], [ %i.ff, %bb.aj ], [ %i.fg, %bb.ak ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.i
  %.pn24.pn.i.i.i = phi { ptr, i32 } [ %.pn24.i.i.i, %bb.am ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn24.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS0_8ImageBufERKS2_NS0_3ROIEiEUlS6_E_, ptr %0, align 8, !tbaa !229
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !419
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIftEEbRNS2_8ImageBufERKS4_NS2_3ROIEiEUlS8_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.157", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.169", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1506, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1507, !nonnull !132, !align !226
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !175, !range !131, !noundef !132
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !176
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !178
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !188
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.be = load i32, ptr %i.j, align 8, !tbaa !180
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !181
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !181
  %.not.i27.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i27.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIhhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIhhEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.bo = load <2 x i8>, ptr %i.bn, align 1, !tbaa !103
  %i.bp = uitofp <2 x i8> %i.bo to <2 x float>    ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul nnan float %i.bq, f0x3B808081      ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fmul nnan float %i.bs, f0x3B808081      ; 2 uses
  %i.bu = call noundef float @llvm.atan2.f32(float %i.bt, float %i.br) ; 3 uses
  %5 = fcmp olt float %i.bu, 0.000000e+00
  %6 = fadd nnan float %i.bu, f0x40C90FDB
  %.018.i.i.i = select i1 %5, float %6, float %i.bu
  %i.bv = call float @hypotf(float noundef %i.br, float noundef %i.bt) #39
  %i.bw = load ptr, ptr %3, align 8, !tbaa !184
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !185

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.ca = fmul float %i.bv, 2.550000e+02          ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cd, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cd, float 0.000000e+00 ; 2 uses
  %i.ce = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !103
  %i.cg = load ptr, ptr %3, align 8, !tbaa !184
  %i.ch = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %.noexc35.i.i.i unwind label %bb.ak

.noexc35.i.i.i:                                   ; preds = %bb.k
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %bb.l, label %bb.m, !prof !185

bb.l:                                             ; preds = %.noexc35.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc35.i.i.i
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cl = fmul nnan float %.018.i.i.i, 2.550000e+02 ; 2 uses
  %7 = fcmp olt float %i.cl, 0.000000e+00
  %8 = select i1 %7, float -5.000000e-01, float 5.000000e-01
  %i.cm = fadd float %i.cl, %8                    ; 2 uses
  %.inv.i.i.i.i.i32.i.i.i = fcmp oge float %i.cm, 0.000000e+00
  %.0.i.i.i.i.i.i33.i.i.i = select i1 %.inv.i.i.i.i.i32.i.i.i, float %i.cm, float 0.000000e+00 ; 2 uses
  %i.cn = fcmp ogt float %.0.i.i.i.i.i.i33.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.i34.i.i.i = select i1 %i.cn, float 2.550000e+02, float %.0.i.i.i.i.i.i33.i.i.i
  %i.co = fptoui float %.1.i.i.i.i.i.i34.i.i.i to i8
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !103
  %i.cp = load i32, ptr %i.e, align 4, !tbaa !176
  %i.cq = add nsw i32 %i.cp, 1                    ; 7 uses
  store i32 %i.cq, ptr %i.e, align 4, !tbaa !176
  %i.cr = load i32, ptr %i.m, align 8, !tbaa !193
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ct = load i8, ptr %i.o, align 1, !tbaa !194, !range !131, !noundef !132
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !177
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cv = load i8, ptr %i.p, align 1, !tbaa !195, !range !131, !noundef !132
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !196
  %i.cy = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cx
  store ptr %i.cz, ptr %i.l, align 8, !tbaa !186
  %i.da = load i32, ptr %i.s, align 8, !tbaa !197
  %.not.i.i12.i.i = icmp slt i32 %i.cq, %i.da
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.db = load i8, ptr %i.q, align 2, !tbaa !198, !range !131, !noundef !132
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = load i64, ptr %i.r, align 8, !tbaa !196
  %i.de = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.dd
  store ptr %i.df, ptr %i.l, align 8, !tbaa !186
  %i.dg = load i32, ptr %i.s, align 8, !tbaa !197
  %i.dh = icmp slt i32 %i.cq, %i.dg               ; 3 uses
  %i.di = load i32, ptr %i.t, align 4
  %i.dj = icmp sge i32 %i.cq, %i.di
  %not..i.i10.i.i = xor i1 %i.dh, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.dj, !prof !199
  %i.dk = load ptr, ptr %i.u, align 8
  %i.dl = icmp eq ptr %i.dk, null
  %i.dm = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.dl, !prof !199
  br i1 %i.dm, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !185

bb.t:                                             ; preds = %bb.s
  %i.dn = load ptr, ptr %3, align 8, !tbaa !184
  %i.do = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dp = load i32, ptr %i.i, align 4, !tbaa !179
  %i.dq = load i32, ptr %i.z, align 8, !tbaa !200
  %i.dr = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i32 noundef %i.cq, i32 noundef %i.do, i32 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.dh, i32 noundef %i.dq)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.ds = zext i1 %i.dh to i8
  store ptr %i.dr, ptr %i.l, align 8, !tbaa !186
  store i8 %i.ds, ptr %i.o, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.dt = load i32, ptr %i.f, align 4, !tbaa !178 ; 3 uses
  store i32 %i.dt, ptr %i.e, align 4, !tbaa !176
  %i.du = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dv = add nsw i32 %i.du, 1                    ; 3 uses
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !177
  %i.dw = load i32, ptr %i.n, align 8, !tbaa !201
  %.not.i5.i.i = icmp slt i32 %i.dv, %i.dw
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = load i32, ptr %i.h, align 4, !tbaa !188 ; 2 uses
  store i32 %i.dx, ptr %i.g, align 8, !tbaa !177
  %i.dy = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dy, ptr %i.i, align 4, !tbaa !179
  %i.dz = load i32, ptr %i.j, align 8, !tbaa !180
  %.not1.i6.i.i = icmp slt i32 %i.dy, %i.dz
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.ea = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dy, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.eb = phi i32 [ %i.dv, %bb.u ], [ %i.dx, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ec = phi i32 [ %i.dt, %bb.u ], [ %i.dt, %bb.v ], [ %i.cq, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ec, i32 noundef %i.eb, i32 noundef %i.ea)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ed = load i32, ptr %i.aa, align 4, !tbaa !176
  %i.ee = add nsw i32 %i.ed, 1                    ; 7 uses
  store i32 %i.ee, ptr %i.aa, align 4, !tbaa !176
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !193
  %i.eg = icmp slt i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.eh = load i8, ptr %i.aj, align 1, !tbaa !194, !range !131, !noundef !132
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !177
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !179
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ej = load i8, ptr %i.ak, align 1, !tbaa !195, !range !131, !noundef !132
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.el = load i64, ptr %i.am, align 8, !tbaa !196
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.el
  store ptr %i.en, ptr %i.k, align 8, !tbaa !186
  %i.eo = load i32, ptr %i.an, align 8, !tbaa !197
  %.not.i.i2.i.i = icmp slt i32 %i.ee, %i.eo
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !144

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.ep = load i8, ptr %i.al, align 2, !tbaa !198, !range !131, !noundef !132
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = load i64, ptr %i.am, align 8, !tbaa !196
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.er
  store ptr %i.et, ptr %i.k, align 8, !tbaa !186
  %i.eu = load i32, ptr %i.an, align 8, !tbaa !197
  %i.ev = icmp slt i32 %i.ee, %i.eu               ; 3 uses
  %i.ew = load i32, ptr %i.ao, align 4
  %i.ex = icmp sge i32 %i.ee, %i.ew
  %not..i.i.i.i = xor i1 %i.ev, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ex, !prof !199
  %i.ey = load ptr, ptr %i.ap, align 8
  %i.ez = icmp eq ptr %i.ey, null
  %i.fa = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ez, !prof !199
  br i1 %i.fa, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !185

bb.ae:                                            ; preds = %bb.ad
  %i.fb = load ptr, ptr %2, align 8, !tbaa !184
  %i.fc = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.fd = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.fe = load i32, ptr %i.au, align 8, !tbaa !200
  %i.ff = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, i32 noundef %i.ee, i32 noundef %i.fc, i32 noundef %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.ev, i32 noundef %i.fe)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.fg = zext i1 %i.ev to i8
  store ptr %i.ff, ptr %i.k, align 8, !tbaa !186
  store i8 %i.fg, ptr %i.aj, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.fh = load i32, ptr %i.ac, align 4, !tbaa !178 ; 3 uses
  store i32 %i.fh, ptr %i.aa, align 4, !tbaa !176
  %i.fi = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.fj = add nsw i32 %i.fi, 1                    ; 3 uses
  store i32 %i.fj, ptr %i.ad, align 8, !tbaa !177
  %i.fk = load i32, ptr %i.ae, align 8, !tbaa !201
  %.not.i.i.i = icmp slt i32 %i.fj, %i.fk
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load i32, ptr %i.af, align 4, !tbaa !188 ; 2 uses
  store i32 %i.fl, ptr %i.ad, align 8, !tbaa !177
  %i.fm = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fm, ptr %i.ag, align 4, !tbaa !179
  %i.fn = load i32, ptr %i.ah, align 8, !tbaa !180
  %.not1.i.i.i = icmp slt i32 %i.fm, %i.fn
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.fo = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.fm, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.jp = phi i32 [ %.pre28.i.i, %bb.bk ], [ %i.jn, %bb.bl ], [ %.pre27.i.i, %._crit_edge.i.i.i ]
  %i.jq = phi i32 [ %i.jk, %bb.bk ], [ %i.jm, %bb.bl ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.jr = phi i32 [ %i.ji, %bb.bk ], [ %i.ji, %bb.bl ], [ %i.if, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.jr, i32 noundef %i.jq, i32 noundef %i.jp)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.bq

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge: ; preds = %bb.bn, %bb.bm, %.noexc3.i.i, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.bo:                                            ; preds = %bb.v, %bb.u
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %bb.ah, %bb.ag
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn, %bb.bj, %bb.bg, %bb.bc, %bb.ay, %bb.av
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %.pn24.i.i.i = phi { ptr, i32 } [ %i.ju, %bb.bq ], [ %i.js, %bb.bo ], [ %i.jt, %bb.bp ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.i
  %.pn24.pn.i.i.i = phi { ptr, i32 } [ %.pn24.i.i.i, %bb.br ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn24.pn.i.i.i

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES4_EEbRNS1_8ImageBufERKS5_NS1_3ROIEiEUlS9_E_JS9_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESD_E4typeEOSE_DpOSF_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES3_EEbRNS0_8ImageBufERKS4_NS0_3ROIEiEUlS8_E_, ptr %0, align 8, !tbaa !229
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !126
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !419
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L21complex_to_polar_implIN9Imath_3_14halfES5_EEbRNS2_8ImageBufERKS6_NS2_3ROIEiEUlSA_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.165", align 8 ; 31 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.179", align 8 ; 35 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %0, align 8, !tbaa !1512, !nonnull !132, !align !226
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1513, !nonnull !132, !align !226
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i unwind label %bb.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 120
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader.i.i.i
  %i.av = load i8, ptr %i.d, align 8, !tbaa !175, !range !131, !noundef !132
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.b, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !176
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !178
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.c, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !177
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !188
  %i.bc = icmp eq i32 %i.ba, %i.bb
  br i1 %i.bc, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i: ; preds = %bb.c
  %i.bd = load i32, ptr %i.i, align 4, !tbaa !179
  %i.be = load i32, ptr %i.j, align 8, !tbaa !180
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !181
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #35
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !181
  %.not.i27.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i27.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIttEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L21complex_to_polar_implIttEEbRNS1_8ImageBufERKS3_NS1_3ROIEiEUlS7_E_JS7_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #35
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.bo = load <2 x i16>, ptr %i.bn, align 2, !tbaa !415
  %i.bp = uitofp <2 x i16> %i.bo to <2 x float>   ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = fmul nnan float %i.bq, f0x37800080      ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 1
  %i.bt = fmul nnan float %i.bs, f0x37800080      ; 2 uses
  %i.bu = call noundef float @llvm.atan2.f32(float %i.bt, float %i.br) ; 3 uses
  %5 = fcmp olt float %i.bu, 0.000000e+00
  %6 = fadd nnan float %i.bu, f0x40C90FDB
  %.018.i.i.i = select i1 %5, float %6, float %i.bu
  %i.bv = call float @hypotf(float noundef %i.br, float noundef %i.bt) #39
  %i.bw = load ptr, ptr %3, align 8, !tbaa !184
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj

.noexc.i.i.i:                                     ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.by = icmp eq i32 %i.bx, 3
  br i1 %i.by, label %bb.j, label %bb.k, !prof !185

bb.j:                                             ; preds = %.noexc.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.k unwind label %bb.aj

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !186
  %i.ca = fmul float %i.bv, 6.553500e+04          ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp oge float %i.cd, 0.000000e+00
  %.0.i.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, float %i.cd, float 0.000000e+00 ; 2 uses
  %i.ce = fcmp ogt float %.0.i.i.i.i.i.i.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.cf, ptr %i.bz, align 2, !tbaa !415
  %i.cg = load ptr, ptr %3, align 8, !tbaa !184
  %i.ch = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg)
          to label %.noexc35.i.i.i unwind label %bb.ak

.noexc35.i.i.i:                                   ; preds = %bb.k
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %bb.l, label %bb.m, !prof !185

bb.l:                                             ; preds = %.noexc35.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %bb.m unwind label %bb.ak

bb.m:                                             ; preds = %bb.l, %.noexc35.i.i.i
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !186 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = fmul nnan float %.018.i.i.i, 6.553500e+04 ; 2 uses
  %7 = fcmp olt float %i.cl, 0.000000e+00
  %8 = select i1 %7, float -5.000000e-01, float 5.000000e-01
  %i.cm = fadd float %i.cl, %8                    ; 2 uses
  %.inv.i.i.i.i.i32.i.i.i = fcmp oge float %i.cm, 0.000000e+00
  %.0.i.i.i.i.i.i33.i.i.i = select i1 %.inv.i.i.i.i.i32.i.i.i, float %i.cm, float 0.000000e+00 ; 2 uses
  %i.cn = fcmp ogt float %.0.i.i.i.i.i.i33.i.i.i, 6.553500e+04
  %.1.i.i.i.i.i.i34.i.i.i = select i1 %i.cn, float 6.553500e+04, float %.0.i.i.i.i.i.i33.i.i.i
  %i.co = fptoui float %.1.i.i.i.i.i.i34.i.i.i to i16
  store i16 %i.co, ptr %i.ck, align 2, !tbaa !415
  %i.cp = load i32, ptr %i.e, align 4, !tbaa !176
  %i.cq = add nsw i32 %i.cp, 1                    ; 7 uses
  store i32 %i.cq, ptr %i.e, align 4, !tbaa !176
  %i.cr = load i32, ptr %i.m, align 8, !tbaa !193
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ct = load i8, ptr %i.o, align 1, !tbaa !194, !range !131, !noundef !132
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.o, label %._crit_edge.i7.i.i

._crit_edge.i7.i.i:                               ; preds = %bb.n
  %.pre.i9.i.i = load i32, ptr %i.g, align 8, !tbaa !177
  %.pre.i.i = load i32, ptr %i.i, align 4, !tbaa !179
  br label %bb.x

bb.o:                                             ; preds = %bb.n
  %i.cv = load i8, ptr %i.p, align 1, !tbaa !195, !range !131, !noundef !132
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cx = load i64, ptr %i.r, align 8, !tbaa !196
  %i.cy = getelementptr inbounds i8, ptr %i.cj, i64 %i.cx
  store ptr %i.cy, ptr %i.l, align 8, !tbaa !186
  %i.cz = load i32, ptr %i.s, align 8, !tbaa !197
  %.not.i.i12.i.i = icmp slt i32 %i.cq, %i.cz
  br i1 %.not.i.i12.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.q, !prof !144

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.da = load i8, ptr %i.q, align 2, !tbaa !198, !range !131, !noundef !132
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !196
  %i.dd = getelementptr inbounds i8, ptr %i.cj, i64 %i.dc
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !186
  %i.de = load i32, ptr %i.s, align 8, !tbaa !197
  %i.df = icmp slt i32 %i.cq, %i.de               ; 3 uses
  %i.dg = load i32, ptr %i.t, align 4
  %i.dh = icmp sge i32 %i.cq, %i.dg
  %not..i.i10.i.i = xor i1 %i.df, true
  %or.cond.i.i11.i.i = select i1 %not..i.i10.i.i, i1 true, i1 %i.dh, !prof !199
  %i.di = load ptr, ptr %i.u, align 8
  %i.dj = icmp eq ptr %i.di, null
  %i.dk = select i1 %or.cond.i.i11.i.i, i1 true, i1 %i.dj, !prof !199
  br i1 %i.dk, label %bb.t, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i, !prof !185

bb.t:                                             ; preds = %bb.s
  %i.dl = load ptr, ptr %3, align 8, !tbaa !184
  %i.dm = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dn = load i32, ptr %i.i, align 4, !tbaa !179
  %i.do = load i32, ptr %i.z, align 8, !tbaa !200
  %i.dp = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i32 noundef %i.cq, i32 noundef %i.dm, i32 noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %i.y, i1 noundef zeroext %i.df, i32 noundef %i.do)
          to label %.noexc14.i.i unwind label %bb.al

.noexc14.i.i:                                     ; preds = %bb.t
  %i.dq = zext i1 %i.df to i8
  store ptr %i.dp, ptr %i.l, align 8, !tbaa !186
  store i8 %i.dq, ptr %i.o, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.u:                                             ; preds = %bb.m
  %i.dr = load i32, ptr %i.f, align 4, !tbaa !178 ; 3 uses
  store i32 %i.dr, ptr %i.e, align 4, !tbaa !176
  %i.ds = load i32, ptr %i.g, align 8, !tbaa !177
  %i.dt = add nsw i32 %i.ds, 1                    ; 3 uses
  store i32 %i.dt, ptr %i.g, align 8, !tbaa !177
  %i.du = load i32, ptr %i.n, align 8, !tbaa !201
  %.not.i5.i.i = icmp slt i32 %i.dt, %i.du
  %.pre17.i.i = load i32, ptr %i.i, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i5.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load i32, ptr %i.h, align 4, !tbaa !188 ; 2 uses
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !177
  %i.dw = add nsw i32 %.pre17.i.i, 1              ; 3 uses
  store i32 %i.dw, ptr %i.i, align 4, !tbaa !179
  %i.dx = load i32, ptr %i.j, align 8, !tbaa !180
  %.not1.i6.i.i = icmp slt i32 %i.dw, %i.dx
  br i1 %.not1.i6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i

bb.x:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i7.i.i
  %i.dy = phi i32 [ %.pre17.i.i, %bb.u ], [ %i.dw, %bb.v ], [ %.pre.i.i, %._crit_edge.i7.i.i ]
  %i.dz = phi i32 [ %i.dt, %bb.u ], [ %i.dv, %bb.v ], [ %.pre.i9.i.i, %._crit_edge.i7.i.i ]
  %i.ea = phi i32 [ %i.dr, %bb.u ], [ %i.dr, %bb.v ], [ %i.cq, %._crit_edge.i7.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.ea, i32 noundef %i.dz, i32 noundef %i.dy)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i unwind label %bb.al

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i: ; preds = %bb.x, %bb.w, %.noexc14.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.eb = load i32, ptr %i.aa, align 4, !tbaa !176
  %i.ec = add nsw i32 %i.eb, 1                    ; 7 uses
  store i32 %i.ec, ptr %i.aa, align 4, !tbaa !176
  %i.ed = load i32, ptr %i.ab, align 8, !tbaa !193
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ef = load i8, ptr %i.aj, align 1, !tbaa !194, !range !131, !noundef !132
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.z, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.y
  %.pre.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !177
  %.pre18.i.i = load i32, ptr %i.ag, align 4, !tbaa !179
  br label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.eh = load i8, ptr %i.ak, align 1, !tbaa !195, !range !131, !noundef !132
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i64, ptr %i.am, align 8, !tbaa !196
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ej
  store ptr %i.el, ptr %i.k, align 8, !tbaa !186
  %i.em = load i32, ptr %i.an, align 8, !tbaa !197
  %.not.i.i2.i.i = icmp slt i32 %i.ec, %i.em
  br i1 %.not.i.i2.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ab, !prof !144

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge unwind label %bb.al

bb.ac:                                            ; preds = %bb.z
  %i.en = load i8, ptr %i.al, align 2, !tbaa !198, !range !131, !noundef !132
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load i64, ptr %i.am, align 8, !tbaa !196
  %i.eq = load ptr, ptr %i.k, align 8, !tbaa !186
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ep
  store ptr %i.er, ptr %i.k, align 8, !tbaa !186
  %i.es = load i32, ptr %i.an, align 8, !tbaa !197
  %i.et = icmp slt i32 %i.ec, %i.es               ; 3 uses
  %i.eu = load i32, ptr %i.ao, align 4
  %i.ev = icmp sge i32 %i.ec, %i.eu
  %not..i.i.i.i = xor i1 %i.et, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.ev, !prof !199
  %i.ew = load ptr, ptr %i.ap, align 8
  %i.ex = icmp eq ptr %i.ew, null
  %i.ey = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.ex, !prof !199
  br i1 %i.ey, label %bb.ae, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge, !prof !185

bb.ae:                                            ; preds = %bb.ad
  %i.ez = load ptr, ptr %2, align 8, !tbaa !184
  %i.fa = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.fb = load i32, ptr %i.ag, align 4, !tbaa !179
  %i.fc = load i32, ptr %i.au, align 8, !tbaa !200
  %i.fd = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i32 noundef %i.ec, i32 noundef %i.fa, i32 noundef %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %i.at, i1 noundef zeroext %i.et, i32 noundef %i.fc)
          to label %.noexc3.i.i unwind label %bb.al

.noexc3.i.i:                                      ; preds = %bb.ae
  %i.fe = zext i1 %i.et to i8
  store ptr %i.fd, ptr %i.k, align 8, !tbaa !186
  store i8 %i.fe, ptr %i.aj, align 1, !tbaa !194
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit16.i.i
  %i.ff = load i32, ptr %i.ac, align 4, !tbaa !178 ; 3 uses
  store i32 %i.ff, ptr %i.aa, align 4, !tbaa !176
  %i.fg = load i32, ptr %i.ad, align 8, !tbaa !177
  %i.fh = add nsw i32 %i.fg, 1                    ; 3 uses
  store i32 %i.fh, ptr %i.ad, align 8, !tbaa !177
  %i.fi = load i32, ptr %i.ae, align 8, !tbaa !201
  %.not.i.i.i = icmp slt i32 %i.fh, %i.fi
  %.pre19.i.i = load i32, ptr %i.ag, align 4, !tbaa !179 ; 2 uses
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fj = load i32, ptr %i.af, align 4, !tbaa !188 ; 2 uses
  store i32 %i.fj, ptr %i.ad, align 8, !tbaa !177
  %i.fk = add nsw i32 %.pre19.i.i, 1              ; 3 uses
  store i32 %i.fk, ptr %i.ag, align 4, !tbaa !179
  %i.fl = load i32, ptr %i.ah, align 8, !tbaa !180
  %.not1.i.i.i = icmp slt i32 %i.fk, %i.fl
  br i1 %.not1.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ai, align 8, !tbaa !175
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i.backedge

bb.ai:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i
  %i.fm = phi i32 [ %.pre19.i.i, %bb.af ], [ %i.fk, %bb.ag ], [ %.pre18.i.i, %._crit_edge.i.i.i ]
  %i.fn = phi i32 [ %i.fh, %bb.af ], [ %i.fj, %bb.ag ], [ %.pre.i.i.i, %._crit_edge.i.i.i ]
  %i.fo = phi i32 [ %i.ff, %bb.af ], [ %i.ff, %bb.ag ], [ %i.ec, %._crit_edge.i.i.i ]
end_hunk_4
