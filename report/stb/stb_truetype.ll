Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__new_active:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !86
  store ptr %i.j, ptr %i.h, align 8, !tbaa !88
  store ptr %i.h, ptr %0, align 8, !tbaa !86
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %._crit_edge.i
  %i.k = phi ptr [ %i.h, %.thread.i ], [ %.pre.i, %._crit_edge.i ]
  %i.l = phi i32 [ 799, %.thread.i ], [ %i.g, %._crit_edge.i ] ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1.i.ph = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !90
  %i.s = load float, ptr %1, align 4, !tbaa !91   ; 2 uses
  %i.t = fsub float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !92 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !93 ; 3 uses
  %i.y = fsub float %i.v, %i.x
  %i.z = fdiv float %i.t, %i.y                    ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 12
  store float %i.z, ptr %i.aa, align 4, !tbaa !96
  %i.ab = fcmp une float %i.z, 0.000000e+00
  %i.ac = fdiv float 1.000000e+00, %i.z
  %i.ad = select i1 %i.ab, float %i.ac, float 0.000000e+00
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 16
  store float %i.ad, ptr %i.ae, align 8, !tbaa !97
  %i.af = fsub float %3, %i.x
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.z, float %i.af, float %i.s)
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 8
  %i.ai = sitofp i32 %2 to float
  %i.aj = fsub float %i.ag, %i.ai
  store float %i.aj, ptr %i.ah, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !99
  %.not28 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not28, float -1.000000e+00, float 1.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 20
  store float %i.am, ptr %i.an, align 4, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 24
  store float %i.x, ptr %i.ao, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 28
  store float %i.v, ptr %i.ap, align 4, !tbaa !102
  store ptr null, ptr %.1.i.ph, align 8, !tbaa !103
  br label %stbtt__hheap_alloc.exit

stbtt__hheap_alloc.exit:                          ; preds = %bb.d, %bb.f
  %.1.i32 = phi ptr [ %.1.i.ph, %bb.f ], [ null, %bb.d ]
  ret ptr %.1.i32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt__handle_clipped_edge(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp oeq float %4, %6
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.c = load float, ptr %i.b, align 4, !tbaa !102 ; 4 uses
  %i.d = fcmp ogt float %4, %i.c
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !101 ; 4 uses
  %i.g = fcmp olt float %6, %i.f
  br i1 %i.g, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = fcmp olt float %4, %i.f
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = fsub float %5, %3
  %i.j = fsub float %i.f, %4
  %i.k = fmul float %i.i, %i.j
  %i.l = fsub float %6, %4
  %i.m = fdiv float %i.k, %i.l
  %i.n = fadd float %3, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.055 = phi float [ %i.n, %bb.e ], [ %3, %bb.d ] ; 4 uses
  %.054 = phi float [ %i.f, %bb.e ], [ %4, %bb.d ] ; 3 uses
  %i.o = fcmp ogt float %6, %i.c
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = fsub float %5, %.055
  %i.q = fsub float %i.c, %6
  %i.r = fmul float %i.q, %i.p
  %i.s = fsub float %6, %.054
  %i.t = fdiv float %i.r, %i.s
  %i.u = fadd float %5, %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.053 = phi float [ %i.u, %bb.g ], [ %5, %bb.f ] ; 3 uses
  %.0 = phi float [ %i.c, %bb.g ], [ %6, %bb.f ]  ; 2 uses
  %i.v = sitofp i32 %1 to float                   ; 4 uses
  %i.w = fcmp ugt float %.055, %i.v
  %i.x = fcmp ugt float %.053, %i.v
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !100
  %i.aa = fsub float %.0, %.054
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !80
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.z, float %i.aa, float %i.ad)
  store float %i.ae, ptr %i.ac, align 4, !tbaa !80
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.af = add nsw i32 %1, 1
  %i.ag = sitofp i32 %i.af to float               ; 2 uses
  %i.ah = fcmp ult float %.055, %i.ag
  %i.ai = fcmp ult float %.053, %i.ag
  %or.cond62 = select i1 %i.ah, i1 true, i1 %i.ai
  br i1 %or.cond62, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !100
  %i.al = fsub float %.0, %.054
  %i.am = fmul float %i.al, %i.ak
  %i.an = fsub float %.055, %i.v
  %i.ao = fsub float %.053, %i.v
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = fmul float %i.ap, 5.000000e-01
  %i.ar = fsub float 1.000000e+00, %i.aq
  %i.as = sext i32 %1 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !80
  %i.av = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.au)
  store float %i.av, ptr %i.at, align 4, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c, %bb.b, %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbtt__sized_trapezoid_area(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = fadd float %1, %2
  %i.b = fmul float %i.a, 5.000000e-01
  %i.c = fmul float %0, %i.b
  ret float %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbtt__position_trapezoid_area(float noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub float %2, %1
  %i.b = fsub float %4, %3
  %i.c = fadd float %i.a, %i.b
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fmul float %0, %i.d
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @stbtt__sized_triangle_area(float noundef %0, float noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fmul float %0, %1
  %i.b = fmul float %i.a, 5.000000e-01
  ret float %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt__fill_active_edges_new(ptr nofree noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd float %4, 1.000000e+00              ; 73 uses
  %.not468 = icmp eq ptr %3, null
  br i1 %.not468, label %._crit_edge473, label %.lr.ph472

.lr.ph472:                                        ; preds = %bb.a
  %i.b = sitofp i32 %2 to float                   ; 3 uses
  %i.c = icmp sgt i32 %2, 0
  %i.d = fcmp oeq float %4, %i.a                  ; 3 uses
  %i.e = fsub float %i.a, %4                      ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 -4 ; 6 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.g = insertelement <2 x float> poison, float %4, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph472, %stbtt__handle_clipped_edge.exit351
  %.0293469 = phi ptr [ %3, %.lr.ph472 ], [ %i.afx, %stbtt__handle_clipped_edge.exit351 ] ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0293469, i64 8
  %5 = load <2 x float>, ptr %i.i, align 8, !tbaa !80 ; 10 uses
  %6 = extractelement <2 x float> %5, i64 0       ; 40 uses
  %7 = extractelement <2 x float> %5, i64 1       ; 2 uses
  %i.j = fcmp oeq float %7, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.k = fcmp olt float %6, %i.b
  br i1 %i.k, label %bb.d, label %stbtt__handle_clipped_edge.exit351

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ult float %6, 0.000000e+00
  br i1 %i.l, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = fptosi float %6 to i32                   ; 6 uses
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !102 ; 4 uses
  %i.p = fcmp ogt float %4, %i.o
  br i1 %i.p, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.r = load float, ptr %i.q, align 8, !tbaa !101 ; 4 uses
  %i.s = fcmp olt float %i.a, %i.r
  br i1 %i.s, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = fcmp olt float %4, %i.r
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop = fsub <2 x float> %5, %5
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = fsub float %i.r, %4
  %i.v = fmul float %8, %i.u
  %i.w = fdiv float %i.v, %i.e
  %i.x = fadd float %6, %i.w
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.055.i = phi float [ %i.x, %bb.i ], [ %6, %bb.h ] ; 4 uses
  %.054.i = phi float [ %i.r, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %i.y = fcmp ogt float %i.a, %i.o
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = fsub float %6, %.055.i
  %i.aa = fsub float %i.o, %i.a
  %i.ab = fmul float %i.aa, %i.z
  %i.ac = fsub float %i.a, %.054.i
  %i.ad = fdiv float %i.ab, %i.ac
  %i.ae = fadd float %6, %i.ad
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.053.i = phi float [ %i.ae, %bb.k ], [ %6, %bb.j ] ; 3 uses
  %.0.i = phi float [ %i.o, %bb.k ], [ %i.a, %bb.j ] ; 2 uses
  %i.af = sitofp i32 %i.m to float                ; 4 uses
  %i.ag = fcmp ugt float %.055.i, %i.af
  %i.ah = fcmp ugt float %.053.i, %i.af
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !100
  %i.ak = fsub float %.0.i, %.054.i
  %i.al = zext nneg i32 %i.m to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !80
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ak, float %i.an)
  store float %i.ao, ptr %i.am, align 4, !tbaa !80
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ap = add nuw nsw i32 %i.m, 1
  %i.aq = sitofp i32 %i.ap to float               ; 2 uses
  %i.ar = fcmp ult float %.055.i, %i.aq
  %i.as = fcmp ult float %.053.i, %i.aq
  %or.cond62.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond62.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.au = load float, ptr %i.at, align 4, !tbaa !100
  %i.av = fsub float %.0.i, %.054.i
  %i.aw = fmul float %i.av, %i.au
  %i.ax = fsub float %.055.i, %i.af
  %i.ay = fsub float %.053.i, %i.af
  %i.az = fadd float %i.ax, %i.ay
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = fsub float 1.000000e+00, %i.ba
  %i.bc = zext nneg i32 %i.m to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !80
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.bb, float %i.be)
  store float %i.bf, ptr %i.bd, align 4, !tbaa !80
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.m, %bb.n, %bb.o
  %i.bg = add nuw nsw i32 %i.m, 1                 ; 3 uses
  %i.bh = load float, ptr %i.n, align 4, !tbaa !102 ; 4 uses
  %i.bi = fcmp ogt float %4, %i.bh
  br i1 %i.bi, label %stbtt__handle_clipped_edge.exit351, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !101 ; 4 uses
  %i.bl = fcmp olt float %i.a, %i.bk
  br i1 %i.bl, label %stbtt__handle_clipped_edge.exit351, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = fcmp olt float %4, %i.bk
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop560 = fsub <2 x float> %5, %5
  %9 = extractelement <2 x float> %foldExtExtBinop560, i64 0
  %i.bn = fsub float %i.bk, %4
  %i.bo = fmul float %9, %i.bn
  %i.bp = fdiv float %i.bo, %i.e
  %i.bq = fadd float %6, %i.bp
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.055.i345 = phi float [ %i.bq, %bb.s ], [ %6, %bb.r ] ; 4 uses
  %.054.i346 = phi float [ %i.bk, %bb.s ], [ %4, %bb.r ] ; 3 uses
  %i.br = fcmp ogt float %i.a, %i.bh
  br i1 %i.br, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = fsub float %6, %.055.i345
  %i.bt = fsub float %i.bh, %i.a
  %i.bu = fmul float %i.bt, %i.bs
  %i.bv = fsub float %i.a, %.054.i346
  %i.bw = fdiv float %i.bu, %i.bv
  %i.bx = fadd float %6, %i.bw
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.053.i347 = phi float [ %i.bx, %bb.u ], [ %6, %bb.t ] ; 3 uses
  %.0.i348 = phi float [ %i.bh, %bb.u ], [ %i.a, %bb.t ] ; 2 uses
  %i.by = sitofp i32 %i.bg to float               ; 4 uses
  %i.bz = fcmp ugt float %.055.i345, %i.by
  %i.ca = fcmp ugt float %.053.i347, %i.by
  %or.cond.i349 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i349, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !100
  %i.cd = fsub float %.0.i348, %.054.i346
  %i.ce = zext nneg i32 %i.bg to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ce ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !80
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.cd, float %i.cg)
  store float %i.ch, ptr %i.cf, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.x:                                             ; preds = %bb.v
  %i.ci = add nuw nsw i32 %i.m, 2
  %i.cj = sitofp i32 %i.ci to float               ; 2 uses
  %i.ck = fcmp ult float %.055.i345, %i.cj
  %i.cl = fcmp ult float %.053.i347, %i.cj
  %or.cond62.i350 = select i1 %i.ck, i1 true, i1 %i.cl
  br i1 %or.cond62.i350, label %bb.y, label %stbtt__handle_clipped_edge.exit351

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !100
  %i.co = fsub float %.0.i348, %.054.i346
  %i.cp = fmul float %i.co, %i.cn
  %i.cq = fsub float %.055.i345, %i.by
  %i.cr = fsub float %.053.i347, %i.by
  %i.cs = fadd float %i.cq, %i.cr
  %i.ct = fmul float %i.cs, 5.000000e-01
  %i.cu = fsub float 1.000000e+00, %i.ct
  %i.cv = zext nneg i32 %i.bg to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cv ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !80
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cu, float %i.cx)
  store float %i.cy, ptr %i.cw, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.z:                                             ; preds = %bb.d
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %.0293469, i64 28
  %i.da = load float, ptr %i.cz, align 4, !tbaa !102 ; 4 uses
  %i.db = fcmp ogt float %4, %i.da
  br i1 %i.db, label %stbtt__handle_clipped_edge.exit351, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !101 ; 4 uses
  %i.de = fcmp olt float %i.a, %i.dd
  br i1 %i.de, label %stbtt__handle_clipped_edge.exit351, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = fcmp olt float %4, %i.dd
  br i1 %i.df, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %foldExtExtBinop562 = fsub <2 x float> %5, %5
  %10 = extractelement <2 x float> %foldExtExtBinop562, i64 0
  %i.dg = fsub float %i.dd, %4
  %i.dh = fmul float %10, %i.dg
  %i.di = fdiv float %i.dh, %i.e
  %i.dj = fadd float %6, %i.di
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.055.i352 = phi float [ %i.dj, %bb.ad ], [ %6, %bb.ac ] ; 4 uses
  %.054.i353 = phi float [ %i.dd, %bb.ad ], [ %4, %bb.ac ] ; 3 uses
  %i.dk = fcmp ogt float %i.a, %i.da
  br i1 %i.dk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dl = fsub float %6, %.055.i352
  %i.dm = fsub float %i.da, %i.a
  %i.dn = fmul float %i.dm, %i.dl
  %i.do = fsub float %i.a, %.054.i353
  %i.dp = fdiv float %i.dn, %i.do
  %i.dq = fadd float %6, %i.dp
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i354 = phi float [ %i.dq, %bb.af ], [ %6, %bb.ae ] ; 3 uses
  %.0.i355 = phi float [ %i.da, %bb.af ], [ %i.a, %bb.ae ] ; 2 uses
  %i.dr = fcmp ugt float %.055.i352, 0.000000e+00
  %i.ds = fcmp ugt float %.053.i354, 0.000000e+00
  %or.cond.i356 = select i1 %i.dr, i1 true, i1 %i.ds
  br i1 %or.cond.i356, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.du = load float, ptr %i.dt, align 4, !tbaa !100
  %i.dv = fsub float %.0.i355, %.054.i353
  %i.dw = load float, ptr %i.f, align 4, !tbaa !80
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.du, float %i.dv, float %i.dw)
  store float %i.dx, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ai:                                            ; preds = %bb.ag
  %i.dy = fcmp ult float %.055.i352, 1.000000e+00
  %i.dz = fcmp ult float %.053.i354, 1.000000e+00
  %or.cond62.i357 = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %or.cond62.i357, label %bb.aj, label %stbtt__handle_clipped_edge.exit351

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !100
  %i.ec = fsub float %.0.i355, %.054.i353
  %i.ed = fmul float %i.ec, %i.eb
  %i.ee = fadd float %.055.i352, %.053.i354
  %i.ef = fmul float %i.ee, 5.000000e-01
  %i.eg = fsub float 1.000000e+00, %i.ef
  %i.eh = load float, ptr %i.f, align 4, !tbaa !80
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.eg, float %i.eh)
  store float %i.ei, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ak:                                            ; preds = %bb.b
  %i.ej = fadd float %7, %6                       ; 34 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0293469, i64 16
  %i.el = load float, ptr %i.ek, align 8, !tbaa !97 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0293469, i64 24 ; 16 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 15 uses
  %i.eo = load <2 x float>, ptr %i.em, align 8, !tbaa !80 ; 3 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.eq = fcmp ogt float %i.ep, %4                ; 2 uses
  %i.er = fsub <2 x float> %i.eo, %i.h
  %11 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.es = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.er, <2 x float> %i.es) ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0
  %.0305 = select i1 %i.eq, float %i.eu, float %6 ; 7 uses
  %.0301 = select i1 %i.eq, float %i.ep, float %4 ; 3 uses
  %i.ev = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  %i.ew = fcmp olt float %i.ev, %i.a              ; 2 uses
  %i.ex = extractelement <2 x float> %i.et, i64 1
  %.0303 = select i1 %i.ew, float %i.ex, float %i.ej ; 7 uses
  %.0299 = select i1 %i.ew, float %i.ev, float %i.a ; 3 uses
  %i.ey = fcmp oge float %.0305, 0.000000e+00
  %i.ez = fcmp oge float %.0303, 0.000000e+00
  %or.cond = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.fa = fcmp olt float %.0305, %i.b
  %i.fb = fcmp olt float %.0303, %i.b
  %or.cond338 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond338, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fc = fptosi float %.0305 to i32              ; 5 uses
  %i.fd = fptosi float %.0303 to i32              ; 3 uses
  %i.fe = icmp eq i32 %i.fc, %i.fd
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ff = fsub float %.0299, %.0301
  %i.fg = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !100
  %i.fi = fmul float %i.ff, %i.fh                 ; 2 uses
  %i.fj = sitofp i32 %i.fc to float
  %i.fk = fadd float %i.fj, 1.000000e+00          ; 2 uses
  %i.fl = fsub float %i.fk, %.0305
  %i.fm = fsub float %i.fk, %.0303
  %i.fn = fadd float %i.fl, %i.fm
  %i.fo = fmul float %i.fn, 5.000000e-01
  %i.fp = fmul float %i.fo, %i.fi
  %i.fq = zext nneg i32 %i.fc to i64              ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fq ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !80
  %i.ft = fadd float %i.fs, %i.fp
  store float %i.ft, ptr %i.fr, align 4, !tbaa !80
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fq ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !80
  %i.fw = fadd float %i.fi, %i.fv
  store float %i.fw, ptr %i.fu, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ao:                                            ; preds = %bb.am
  %i.fx = fcmp ogt float %.0305, %.0303
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fy = fsub float %4, %.0301
  %i.fz = fadd float %i.a, %i.fy
  %i.ga = fsub float %4, %.0299
  %i.gb = fadd float %i.a, %i.ga
  %i.gc = fneg float %i.el
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre-phi478 = phi i32 [ %i.fc, %bb.ap ], [ %i.fd, %bb.ao ] ; 7 uses
  %.pre-phi = phi i32 [ %i.fd, %bb.ap ], [ %i.fc, %bb.ao ] ; 4 uses
  %.0307 = phi float [ %i.ej, %bb.ap ], [ %6, %bb.ao ] ; 2 uses
  %.1306 = phi float [ %.0303, %bb.ap ], [ %.0305, %bb.ao ]
  %.1304 = phi float [ %.0305, %bb.ap ], [ %.0303, %bb.ao ]
  %.1302 = phi float [ %i.gb, %bb.ap ], [ %.0301, %bb.ao ] ; 2 uses
  %.1300 = phi float [ %i.fz, %bb.ap ], [ %.0299, %bb.ao ] ; 2 uses
  %.0298 = phi float [ %i.gc, %bb.ap ], [ %i.el, %bb.ao ] ; 3 uses
  %i.gd = add nuw nsw i32 %.pre-phi, 1            ; 3 uses
  %i.ge = uitofp nneg i32 %i.gd to float          ; 2 uses
  %i.gf = fsub float %i.ge, %.0307
  %i.gg = tail call float @llvm.fmuladd.f32(float %.0298, float %i.gf, float %4) ; 2 uses
  %i.gh = uitofp nneg i32 %.pre-phi478 to float   ; 3 uses
  %i.gi = fsub float %i.gh, %.0307
  %i.gj = tail call float @llvm.fmuladd.f32(float %.0298, float %i.gi, float %4) ; 2 uses
  %i.gk = fcmp ogt float %i.gg, %i.a
  %.0296 = select i1 %i.gk, float %i.a, float %i.gg ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !100 ; 4 uses
  %i.gn = fsub float %.0296, %.1302
  %i.go = fmul float %i.gm, %i.gn                 ; 5 uses
  %i.gp = fsub nnan float %i.ge, %.1306
  %i.gq = fmul float %i.gp, %i.go
  %i.gr = fmul float %i.gq, 5.000000e-01
  %i.gs = zext nneg i32 %.pre-phi to i64          ; 3 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !80
  %i.gv = fadd float %i.gu, %i.gr
  store float %i.gv, ptr %i.gt, align 4, !tbaa !80
  %i.gw = fcmp ogt float %i.gj, %i.a              ; 2 uses
  %i.gx = fsub float %i.a, %.0296
  %i.gy = sub nsw i32 %.pre-phi478, %i.gd
  %i.gz = sitofp i32 %i.gy to float
  %i.ha = fdiv float %i.gx, %i.gz
  %.1 = select i1 %i.gw, float %i.ha, float %.0298
  %.0295 = select i1 %i.gw, float %i.a, float %i.gj
  %i.hb = fmul float %i.gm, %.1                   ; 4 uses
  %i.hc = icmp slt i32 %i.gd, %.pre-phi478
  br i1 %i.hc, label %.lr.ph467, label %._crit_edge

.lr.ph467:                                        ; preds = %bb.aq
  %i.hd = fmul float %i.hb, 5.000000e-01          ; 3 uses
  %i.he = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %i.hf = add nsw i32 %.pre-phi478, -2
  %i.hg = sub nsw i32 %.pre-phi, %.pre-phi478
  %i.hh = and i32 %i.hg, 1
  %lcmp.mod.not.not = icmp eq i32 %i.hh, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467
  %i.hi = fadd float %i.hd, %i.go
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.he ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !80
  %i.hl = fadd float %i.hi, %i.hk
  store float %i.hl, ptr %i.hj, align 4, !tbaa !80
  %i.hm = fadd float %i.hb, %i.go                 ; 2 uses
  %indvars.iv.next476.prol = add nuw nsw i64 %i.gs, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467
  %indvars.iv475.unr = phi i64 [ %i.he, %.lr.ph467 ], [ %indvars.iv.next476.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.unr = phi float [ %i.go, %.lr.ph467 ], [ %i.hm, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph467 ], [ %i.hm, %.prol.loopexit.unr-lcssa ]
  %i.hn = icmp eq i32 %i.hf, %.pre-phi
  br i1 %i.hn, label %._crit_edge, label %.lr.ph467.new

.lr.ph467.new:                                    ; preds = %.prol.loopexit, %.lr.ph467.new
  %indvars.iv475 = phi i64 [ %indvars.iv.next476.1, %.lr.ph467.new ], [ %indvars.iv475.unr, %.prol.loopexit ] ; 3 uses
  %.0294466 = phi float [ %i.hy, %.lr.ph467.new ], [ %.0294466.unr, %.prol.loopexit ] ; 2 uses
  %i.ho = fadd float %i.hd, %.0294466
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !80
  %i.hr = fadd float %i.ho, %i.hq
  store float %i.hr, ptr %i.hp, align 4, !tbaa !80
  %i.hs = fadd float %i.hb, %.0294466             ; 2 uses
  %i.ht = fadd float %i.hd, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !80
  %i.hx = fadd float %i.ht, %i.hw
  store float %i.hx, ptr %i.hv, align 4, !tbaa !80
  %i.hy = fadd float %i.hb, %i.hs                 ; 2 uses
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475, 2 ; 2 uses
  %i.hz = trunc nuw i64 %indvars.iv.next476.1 to i32
  %i.ia = icmp sgt i32 %.pre-phi478, %i.hz
  br i1 %i.ia, label %.lr.ph467.new, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph467.new, %bb.aq
  %.0294.lcssa = phi float [ %i.go, %bb.aq ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hy, %.lr.ph467.new ]
  %i.ib = fsub float %.1300, %.0295
  %i.ic = fadd float %i.gh, 1.000000e+00          ; 2 uses
  %i.id = fsub nnan float %i.ic, %i.gh
  %i.ie = fsub float %i.ic, %.1304
  %i.if = fadd float %i.id, %i.ie
  %i.ig = fmul float %i.if, 5.000000e-01
  %i.ih = fmul float %i.ig, %i.ib
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.ih, float %.0294.lcssa)
  %i.ij = zext nneg i32 %.pre-phi478 to i64       ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ij ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !80
  %i.im = fadd float %i.ii, %i.il
  store float %i.im, ptr %i.ik, align 4, !tbaa !80
  %i.in = fsub float %.1300, %.1302
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ij ; 2 uses
  %i.ip = load float, ptr %i.io, align 4, !tbaa !80
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.in, float %i.ip)
  store float %i.iq, ptr %i.io, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ar:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.c, label %.lr.ph, label %stbtt__handle_clipped_edge.exit351

.lr.ph:                                           ; preds = %bb.ar
  %i.ir = fsub float %i.ej, %6
  %i.is = getelementptr inbounds nuw i8, ptr %.0293469, i64 20 ; 30 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %stbtt__handle_clipped_edge.exit379
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %stbtt__handle_clipped_edge.exit379 ] ; 32 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.it = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.iu = trunc nuw nsw i64 %indvars.iv to i32
  %i.iv = uitofp nneg i32 %i.it to float          ; 60 uses
  %i.iw = uitofp nneg i32 %i.iu to float          ; 90 uses
  %i.ix = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.iv, i64 1
  %i.iz = fsub <2 x float> %i.iy, %i.es           ; 7 uses
  %i.ja = fdiv <2 x float> %i.iz, %11             ; 2 uses
  %i.jb = extractelement <2 x float> %i.ja, i64 0
  %i.jc = fadd float %4, %i.jb                    ; 52 uses
  %i.jd = extractelement <2 x float> %i.ja, i64 1
  %i.je = fadd float %4, %i.jd                    ; 52 uses
  %i.jf = fcmp olt float %6, %i.iw                ; 2 uses
  %i.jg = fcmp ogt float %i.ej, %i.iv             ; 2 uses
  %or.cond339 = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %or.cond339, label %bb.at, label %bb.by

bb.at:                                            ; preds = %bb.as
  %i.jh = fcmp oeq float %4, %i.jc
  br i1 %i.jh, label %stbtt__handle_clipped_edge.exit365, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ji = load float, ptr %i.en, align 4, !tbaa !102 ; 4 uses
  %i.jj = fcmp ogt float %4, %i.ji
  br i1 %i.jj, label %stbtt__handle_clipped_edge.exit365, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jk = load float, ptr %i.em, align 8, !tbaa !101 ; 4 uses
  %i.jl = fcmp olt float %i.jc, %i.jk
  br i1 %i.jl, label %stbtt__handle_clipped_edge.exit365, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = fcmp olt float %4, %i.jk
  br i1 %i.jm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jn = fsub float %i.jk, %4
  %i.jo = extractelement <2 x float> %i.iz, i64 0
  %i.jp = fmul float %i.jo, %i.jn
  %i.jq = fsub float %i.jc, %4
  %i.jr = fdiv float %i.jp, %i.jq
  %i.js = fadd float %6, %i.jr
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.055.i359 = phi float [ %i.js, %bb.ax ], [ %6, %bb.aw ] ; 4 uses
  %.054.i360 = phi float [ %i.jk, %bb.ax ], [ %4, %bb.aw ] ; 3 uses
  %i.jt = fcmp ogt float %i.jc, %i.ji
  br i1 %i.jt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ju = fsub float %i.iw, %.055.i359
  %i.jv = fsub float %i.ji, %i.jc
  %i.jw = fmul float %i.jv, %i.ju
  %i.jx = fsub float %i.jc, %.054.i360
  %i.jy = fdiv float %i.jw, %i.jx
  %i.jz = fadd float %i.jy, %i.iw
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.053.i361 = phi float [ %i.jz, %bb.az ], [ %i.iw, %bb.ay ] ; 3 uses
  %.0.i362 = phi float [ %i.ji, %bb.az ], [ %i.jc, %bb.ay ] ; 2 uses
  %i.ka = fcmp ugt float %.055.i359, %i.iw
  %i.kb = fcmp ugt float %.053.i361, %i.iw
  %or.cond.i363 = select i1 %i.ka, i1 true, i1 %i.kb
  br i1 %or.cond.i363, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kc = load float, ptr %i.is, align 4, !tbaa !100
  %i.kd = fsub float %.0.i362, %.054.i360
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !80
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.kd, float %i.kf)
  store float %i.kg, ptr %i.ke, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

bb.bc:                                            ; preds = %bb.ba
  %i.kh = fcmp ult float %.055.i359, %i.iv
  %i.ki = fcmp ult float %.053.i361, %i.iv
  %or.cond62.i364 = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond62.i364, label %bb.bd, label %stbtt__handle_clipped_edge.exit365

bb.bd:                                            ; preds = %bb.bc
  %i.kj = load float, ptr %i.is, align 4, !tbaa !100
  %i.kk = fsub float %.0.i362, %.054.i360
  %i.kl = fmul float %i.kk, %i.kj
  %i.km = fsub float %.055.i359, %i.iw
  %i.kn = fsub float %.053.i361, %i.iw
  %i.ko = fadd float %i.km, %i.kn
  %i.kp = fmul float %i.ko, 5.000000e-01
  %i.kq = fsub float 1.000000e+00, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !80
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.kq, float %i.ks)
  store float %i.kt, ptr %i.kr, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

stbtt__handle_clipped_edge.exit365:               ; preds = %bb.at, %bb.au, %bb.av, %bb.bb, %bb.bc, %bb.bd
  %i.ku = fcmp oeq float %i.jc, %i.je
  br i1 %i.ku, label %stbtt__handle_clipped_edge.exit372, label %bb.be

bb.be:                                            ; preds = %stbtt__handle_clipped_edge.exit365
  %i.kv = load float, ptr %i.en, align 4, !tbaa !102 ; 4 uses
  %i.kw = fcmp ogt float %i.jc, %i.kv
  br i1 %i.kw, label %stbtt__handle_clipped_edge.exit372, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kx = load float, ptr %i.em, align 8, !tbaa !101 ; 4 uses
  %i.ky = fcmp olt float %i.je, %i.kx
  br i1 %i.ky, label %stbtt__handle_clipped_edge.exit372, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kz = fcmp olt float %i.jc, %i.kx
  br i1 %i.kz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.la = fsub nnan float %i.iv, %i.iw
  %i.lb = fsub float %i.kx, %i.jc
  %i.lc = fmul float %i.la, %i.lb
  %i.ld = fsub float %i.je, %i.jc
  %i.le = fdiv float %i.lc, %i.ld
  %i.lf = fadd float %i.le, %i.iw
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.055.i366 = phi float [ %i.lf, %bb.bh ], [ %i.iw, %bb.bg ] ; 4 uses
  %.054.i367 = phi float [ %i.kx, %bb.bh ], [ %i.jc, %bb.bg ] ; 3 uses
  %i.lg = fcmp ogt float %i.je, %i.kv
  br i1 %i.lg, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lh = fsub float %i.iv, %.055.i366
  %i.li = fsub float %i.kv, %i.je
  %i.lj = fmul float %i.li, %i.lh
  %i.lk = fsub float %i.je, %.054.i367
  %i.ll = fdiv float %i.lj, %i.lk
  %i.lm = fadd float %i.ll, %i.iv
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.053.i368 = phi float [ %i.lm, %bb.bj ], [ %i.iv, %bb.bi ] ; 3 uses
  %.0.i369 = phi float [ %i.kv, %bb.bj ], [ %i.je, %bb.bi ] ; 2 uses
  %i.ln = fcmp ugt float %.055.i366, %i.iw
  %i.lo = fcmp ugt float %.053.i368, %i.iw
  %or.cond.i370 = select i1 %i.ln, i1 true, i1 %i.lo
  br i1 %or.cond.i370, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lp = load float, ptr %i.is, align 4, !tbaa !100
  %i.lq = fsub float %.0.i369, %.054.i367
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !80
  %i.lt = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.lq, float %i.ls)
  store float %i.lt, ptr %i.lr, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

bb.bm:                                            ; preds = %bb.bk
  %i.lu = fcmp ult float %.055.i366, %i.iv
  %i.lv = fcmp ult float %.053.i368, %i.iv
  %or.cond62.i371 = select i1 %i.lu, i1 true, i1 %i.lv
  br i1 %or.cond62.i371, label %bb.bn, label %stbtt__handle_clipped_edge.exit372

bb.bn:                                            ; preds = %bb.bm
  %i.lw = load float, ptr %i.is, align 4, !tbaa !100
  %i.lx = fsub float %.0.i369, %.054.i367
  %i.ly = fmul float %i.lx, %i.lw
  %i.lz = fsub float %.055.i366, %i.iw
  %i.ma = fsub float %.053.i368, %i.iw
  %i.mb = fadd float %i.lz, %i.ma
  %i.mc = fmul float %i.mb, 5.000000e-01
  %i.md = fsub float 1.000000e+00, %i.mc
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !80
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.md, float %i.mf)
  store float %i.mg, ptr %i.me, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

stbtt__handle_clipped_edge.exit372:               ; preds = %stbtt__handle_clipped_edge.exit365, %bb.be, %bb.bf, %bb.bl, %bb.bm, %bb.bn
  %i.mh = fcmp oeq float %i.je, %i.a
  br i1 %i.mh, label %stbtt__handle_clipped_edge.exit379, label %bb.bo

bb.bo:                                            ; preds = %stbtt__handle_clipped_edge.exit372
  %i.mi = load float, ptr %i.en, align 4, !tbaa !102 ; 4 uses
  %i.mj = fcmp ogt float %i.je, %i.mi
  br i1 %i.mj, label %stbtt__handle_clipped_edge.exit379, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mk = load float, ptr %i.em, align 8, !tbaa !101 ; 4 uses
  %i.ml = fcmp olt float %i.a, %i.mk
  br i1 %i.ml, label %stbtt__handle_clipped_edge.exit379, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mm = fcmp olt float %i.je, %i.mk
  br i1 %i.mm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mn = fsub float %i.ej, %i.iv
  %i.mo = fsub float %i.mk, %i.je
  %i.mp = fmul float %i.mn, %i.mo
  %i.mq = fsub float %i.a, %i.je
  %i.mr = fdiv float %i.mp, %i.mq
  %i.ms = fadd float %i.mr, %i.iv
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.055.i373 = phi float [ %i.ms, %bb.br ], [ %i.iv, %bb.bq ] ; 4 uses
  %.054.i374 = phi float [ %i.mk, %bb.br ], [ %i.je, %bb.bq ] ; 3 uses
  %i.mt = fcmp ogt float %i.a, %i.mi
end_hunk_0
