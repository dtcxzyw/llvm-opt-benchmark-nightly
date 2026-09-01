Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__new_active:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !105
  store ptr %i.j, ptr %i.h, align 8, !tbaa !106
  store ptr %i.h, ptr %0, align 8, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %._crit_edge.i
  %i.k = phi ptr [ %i.h, %.thread.i ], [ %.pre.i, %._crit_edge.i ]
  %i.l = phi i32 [ 799, %.thread.i ], [ %i.g, %._crit_edge.i ] ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1.i.ph = phi ptr [ %i.p, %bb.e ], [ %i.b, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !109
  %i.s = load float, ptr %1, align 4, !tbaa !111  ; 2 uses
  %i.t = fsub float %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !112 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !113 ; 3 uses
  %i.y = fsub float %i.v, %i.x
  %i.z = fdiv float %i.t, %i.y                    ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 12
  store float %i.z, ptr %i.aa, align 4, !tbaa !114
  %i.ab = fcmp une float %i.z, 0.000000e+00
  %i.ac = fdiv float 1.000000e+00, %i.z
  %i.ad = select i1 %i.ab, float %i.ac, float 0.000000e+00
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 16
  store float %i.ad, ptr %i.ae, align 8, !tbaa !117
  %i.af = fsub float %3, %i.x
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.z, float %i.af, float %i.s)
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 8
  %i.ai = sitofp i32 %2 to float
  %i.aj = fsub float %i.ag, %i.ai
  store float %i.aj, ptr %i.ah, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !119
  %.not28 = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not28, float -1.000000e+00, float 1.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 20
  store float %i.am, ptr %i.an, align 4, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 24
  store float %i.x, ptr %i.ao, align 8, !tbaa !121
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 28
  store float %i.v, ptr %i.ap, align 4, !tbaa !122
  store ptr null, ptr %.1.i.ph, align 8, !tbaa !123
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
  %i.c = load float, ptr %i.b, align 4, !tbaa !122 ; 4 uses
  %i.d = fcmp ogt float %4, %i.c
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load float, ptr %i.e, align 8, !tbaa !121 ; 4 uses
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
  %i.z = load float, ptr %i.y, align 4, !tbaa !120
  %i.aa = fsub float %.0, %.054
  %i.ab = sext i32 %1 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ab ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !74
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.z, float %i.aa, float %i.ad)
  store float %i.ae, ptr %i.ac, align 4, !tbaa !74
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
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !120
  %i.al = fsub float %.0, %.054
  %i.am = fmul float %i.al, %i.ak
  %i.an = fsub float %.055, %i.v
  %i.ao = fsub float %.053, %i.v
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = fmul float %i.ap, 5.000000e-01
  %i.ar = fsub float 1.000000e+00, %i.aq
  %i.as = sext i32 %1 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %0, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !74
  %i.av = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.au)
  store float %i.av, ptr %i.at, align 4, !tbaa !74
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
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph472, %stbtt__handle_clipped_edge.exit351
  %.0293469 = phi ptr [ %3, %.lr.ph472 ], [ %i.afw, %stbtt__handle_clipped_edge.exit351 ] ; 20 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0293469, i64 12
  %5 = load float, ptr %i.i, align 4, !tbaa !114  ; 3 uses
  %6 = fcmp oeq float %5, 0.000000e+00
  %7 = getelementptr inbounds nuw i8, ptr %.0293469, i64 8
  %8 = load float, ptr %7, align 8, !tbaa !118    ; 47 uses
  br i1 %6, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.j = fcmp olt float %8, %i.b
  br i1 %i.j, label %bb.d, label %stbtt__handle_clipped_edge.exit351

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp ult float %8, 0.000000e+00
  br i1 %i.k, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = fptosi float %8 to i32                   ; 6 uses
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !122 ; 4 uses
  %i.o = fcmp ogt float %4, %i.n
  br i1 %i.o, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !121 ; 4 uses
  %i.r = fcmp olt float %i.a, %i.q
  br i1 %i.r, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = fcmp olt float %4, %i.q
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %9 = fsub float %8, %8
  %i.t = fsub float %i.q, %4
  %i.u = fmul float %9, %i.t
  %i.v = fdiv float %i.u, %i.e
  %i.w = fadd float %8, %i.v
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.055.i = phi float [ %i.w, %bb.i ], [ %8, %bb.h ] ; 4 uses
  %.054.i = phi float [ %i.q, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %i.x = fcmp ogt float %i.a, %i.n
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = fsub float %8, %.055.i
  %i.z = fsub float %i.n, %i.a
  %i.aa = fmul float %i.z, %i.y
  %i.ab = fsub float %i.a, %.054.i
  %i.ac = fdiv float %i.aa, %i.ab
  %i.ad = fadd float %8, %i.ac
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.053.i = phi float [ %i.ad, %bb.k ], [ %8, %bb.j ] ; 3 uses
  %.0.i = phi float [ %i.n, %bb.k ], [ %i.a, %bb.j ] ; 2 uses
  %i.ae = sitofp i32 %i.l to float                ; 4 uses
  %i.af = fcmp ugt float %.055.i, %i.ae
  %i.ag = fcmp ugt float %.053.i, %i.ae
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !120
  %i.aj = fsub float %.0.i, %.054.i
  %i.ak = sext i32 %i.l to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !74
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.aj, float %i.am)
  store float %i.an, ptr %i.al, align 4, !tbaa !74
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ao = add nsw i32 %i.l, 1
  %i.ap = sitofp i32 %i.ao to float               ; 2 uses
  %i.aq = fcmp ult float %.055.i, %i.ap
  %i.ar = fcmp ult float %.053.i, %i.ap
  %or.cond62.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond62.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !120
  %i.au = fsub float %.0.i, %.054.i
  %i.av = fmul float %i.au, %i.at
  %i.aw = fsub float %.055.i, %i.ae
  %i.ax = fsub float %.053.i, %i.ae
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = fmul float %i.ay, 5.000000e-01
  %i.ba = fsub float 1.000000e+00, %i.az
  %i.bb = sext i32 %i.l to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !74
  %i.be = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ba, float %i.bd)
  store float %i.be, ptr %i.bc, align 4, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.m, %bb.n, %bb.o
  %i.bf = add nsw i32 %i.l, 1                     ; 3 uses
  %i.bg = load float, ptr %i.m, align 4, !tbaa !122 ; 4 uses
  %i.bh = fcmp ogt float %4, %i.bg
  br i1 %i.bh, label %stbtt__handle_clipped_edge.exit351, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !121 ; 4 uses
  %i.bk = fcmp olt float %i.a, %i.bj
  br i1 %i.bk, label %stbtt__handle_clipped_edge.exit351, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = fcmp olt float %4, %i.bj
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %10 = fsub float %8, %8
  %i.bm = fsub float %i.bj, %4
  %i.bn = fmul float %10, %i.bm
  %i.bo = fdiv float %i.bn, %i.e
  %i.bp = fadd float %8, %i.bo
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.055.i345 = phi float [ %i.bp, %bb.s ], [ %8, %bb.r ] ; 4 uses
  %.054.i346 = phi float [ %i.bj, %bb.s ], [ %4, %bb.r ] ; 3 uses
  %i.bq = fcmp ogt float %i.a, %i.bg
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.br = fsub float %8, %.055.i345
  %i.bs = fsub float %i.bg, %i.a
  %i.bt = fmul float %i.bs, %i.br
  %i.bu = fsub float %i.a, %.054.i346
  %i.bv = fdiv float %i.bt, %i.bu
  %i.bw = fadd float %8, %i.bv
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.053.i347 = phi float [ %i.bw, %bb.u ], [ %8, %bb.t ] ; 3 uses
  %.0.i348 = phi float [ %i.bg, %bb.u ], [ %i.a, %bb.t ] ; 2 uses
  %i.bx = sitofp i32 %i.bf to float               ; 4 uses
  %i.by = fcmp ugt float %.055.i345, %i.bx
  %i.bz = fcmp ugt float %.053.i347, %i.bx
  %or.cond.i349 = select i1 %i.by, i1 true, i1 %i.bz
  br i1 %or.cond.i349, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !120
  %i.cc = fsub float %.0.i348, %.054.i346
  %i.cd = sext i32 %i.bf to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cd ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !74
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float %i.cf)
  store float %i.cg, ptr %i.ce, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.x:                                             ; preds = %bb.v
  %i.ch = add nsw i32 %i.l, 2
  %i.ci = sitofp i32 %i.ch to float               ; 2 uses
  %i.cj = fcmp ult float %.055.i345, %i.ci
  %i.ck = fcmp ult float %.053.i347, %i.ci
  %or.cond62.i350 = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond62.i350, label %bb.y, label %stbtt__handle_clipped_edge.exit351

bb.y:                                             ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !120
  %i.cn = fsub float %.0.i348, %.054.i346
  %i.co = fmul float %i.cn, %i.cm
  %i.cp = fsub float %.055.i345, %i.bx
  %i.cq = fsub float %.053.i347, %i.bx
  %i.cr = fadd float %i.cp, %i.cq
  %i.cs = fmul float %i.cr, 5.000000e-01
  %i.ct = fsub float 1.000000e+00, %i.cs
  %i.cu = sext i32 %i.bf to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cu ; 2 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !74
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.co, float %i.ct, float %i.cw)
  store float %i.cx, ptr %i.cv, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.z:                                             ; preds = %bb.d
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %.0293469, i64 28
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !122 ; 4 uses
  %i.da = fcmp ogt float %4, %i.cz
  br i1 %i.da, label %stbtt__handle_clipped_edge.exit351, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.dc = load float, ptr %i.db, align 8, !tbaa !121 ; 4 uses
  %i.dd = fcmp olt float %i.a, %i.dc
  br i1 %i.dd, label %stbtt__handle_clipped_edge.exit351, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = fcmp olt float %4, %i.dc
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %11 = fsub float %8, %8
  %i.df = fsub float %i.dc, %4
  %i.dg = fmul float %11, %i.df
  %i.dh = fdiv float %i.dg, %i.e
  %i.di = fadd float %8, %i.dh
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.055.i352 = phi float [ %i.di, %bb.ad ], [ %8, %bb.ac ] ; 4 uses
  %.054.i353 = phi float [ %i.dc, %bb.ad ], [ %4, %bb.ac ] ; 3 uses
  %i.dj = fcmp ogt float %i.a, %i.cz
  br i1 %i.dj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dk = fsub float %8, %.055.i352
  %i.dl = fsub float %i.cz, %i.a
  %i.dm = fmul float %i.dl, %i.dk
  %i.dn = fsub float %i.a, %.054.i353
  %i.do = fdiv float %i.dm, %i.dn
  %i.dp = fadd float %8, %i.do
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i354 = phi float [ %i.dp, %bb.af ], [ %8, %bb.ae ] ; 3 uses
  %.0.i355 = phi float [ %i.cz, %bb.af ], [ %i.a, %bb.ae ] ; 2 uses
  %i.dq = fcmp ugt float %.055.i352, 0.000000e+00
  %i.dr = fcmp ugt float %.053.i354, 0.000000e+00
  %or.cond.i356 = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i356, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !120
  %i.du = fsub float %.0.i355, %.054.i353
  %i.dv = load float, ptr %i.f, align 4, !tbaa !74
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.du, float %i.dv)
  store float %i.dw, ptr %i.f, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.ai:                                            ; preds = %bb.ag
  %i.dx = fcmp ult float %.055.i352, 1.000000e+00
  %i.dy = fcmp ult float %.053.i354, 1.000000e+00
  %or.cond62.i357 = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond62.i357, label %bb.aj, label %stbtt__handle_clipped_edge.exit351

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !120
  %i.eb = fsub float %.0.i355, %.054.i353
  %i.ec = fmul float %i.eb, %i.ea
  %i.ed = fadd float %.055.i352, %.053.i354
  %i.ee = fmul float %i.ed, 5.000000e-01
  %i.ef = fsub float 1.000000e+00, %i.ee
  %i.eg = load float, ptr %i.f, align 4, !tbaa !74
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.ef, float %i.eg)
  store float %i.eh, ptr %i.f, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.ak:                                            ; preds = %bb.b
  %i.ei = fadd float %5, %8                       ; 34 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0293469, i64 16
  %i.ek = load float, ptr %i.ej, align 8, !tbaa !117 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0293469, i64 24 ; 16 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 15 uses
  %i.en = load <2 x float>, ptr %i.el, align 8, !tbaa !74 ; 3 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.ep = fcmp ogt float %i.eo, %4                ; 2 uses
  %i.eq = fsub <2 x float> %i.en, %i.h
  %12 = insertelement <2 x float> poison, float %5, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = insertelement <2 x float> poison, float %8, i64 0
  %i.er = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %i.eq, <2 x float> %i.er) ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  %.0305 = select i1 %i.ep, float %i.et, float %8 ; 7 uses
  %.0301 = select i1 %i.ep, float %i.eo, float %4 ; 3 uses
  %i.eu = extractelement <2 x float> %i.en, i64 1 ; 2 uses
  %i.ev = fcmp olt float %i.eu, %i.a              ; 2 uses
  %i.ew = extractelement <2 x float> %i.es, i64 1
  %.0303 = select i1 %i.ev, float %i.ew, float %i.ei ; 7 uses
  %.0299 = select i1 %i.ev, float %i.eu, float %i.a ; 3 uses
  %i.ex = fcmp oge float %.0305, 0.000000e+00
  %i.ey = fcmp oge float %.0303, 0.000000e+00
  %or.cond = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.ez = fcmp olt float %.0305, %i.b
  %i.fa = fcmp olt float %.0303, %i.b
  %or.cond338 = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %or.cond338, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.fb = fptosi float %.0305 to i32              ; 5 uses
  %i.fc = fptosi float %.0303 to i32              ; 3 uses
  %i.fd = icmp eq i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fe = fsub float %.0299, %.0301
  %i.ff = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !120
  %i.fh = fmul float %i.fe, %i.fg                 ; 2 uses
  %i.fi = sitofp i32 %i.fb to float
  %i.fj = fadd float %i.fi, 1.000000e+00          ; 2 uses
  %i.fk = fsub float %i.fj, %.0305
  %i.fl = fsub float %i.fj, %.0303
  %i.fm = fadd float %i.fk, %i.fl
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = fmul float %i.fn, %i.fh
  %i.fp = sext i32 %i.fb to i64                   ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fp ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !74
  %i.fs = fadd float %i.fr, %i.fo
  store float %i.fs, ptr %i.fq, align 4, !tbaa !74
  %i.ft = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fp ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !74
  %i.fv = fadd float %i.fh, %i.fu
  store float %i.fv, ptr %i.ft, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.ao:                                            ; preds = %bb.am
  %i.fw = fcmp ogt float %.0305, %.0303
  br i1 %i.fw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fx = fsub float %4, %.0301
  %i.fy = fadd float %i.a, %i.fx
  %i.fz = fsub float %4, %.0299
  %i.ga = fadd float %i.a, %i.fz
  %i.gb = fneg float %i.ek
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre-phi479 = phi i32 [ %i.fb, %bb.ap ], [ %i.fc, %bb.ao ] ; 7 uses
  %.pre-phi = phi i32 [ %i.fc, %bb.ap ], [ %i.fb, %bb.ao ] ; 4 uses
  %.0307 = phi float [ %i.ei, %bb.ap ], [ %8, %bb.ao ]
  %.1306 = phi float [ %.0303, %bb.ap ], [ %.0305, %bb.ao ]
  %.1304 = phi float [ %.0305, %bb.ap ], [ %.0303, %bb.ao ]
  %.1302 = phi float [ %i.ga, %bb.ap ], [ %.0301, %bb.ao ] ; 2 uses
  %.1300 = phi float [ %i.fy, %bb.ap ], [ %.0299, %bb.ao ] ; 2 uses
  %.0298 = phi float [ %i.gb, %bb.ap ], [ %i.ek, %bb.ao ] ; 2 uses
  %i.gc = add nsw i32 %.pre-phi, 1                ; 3 uses
  %15 = insertelement <2 x i32> poison, i32 %i.gc, i64 0
  %16 = insertelement <2 x i32> %15, i32 %.pre-phi479, i64 1
  %17 = sitofp <2 x i32> %16 to <2 x float>       ; 3 uses
  %i.gd = insertelement <2 x float> poison, float %.0307, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fsub <2 x float> %17, %i.ge
  %i.gg = insertelement <2 x float> poison, float %.0298, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gf, <2 x float> %i.h) ; 2 uses
  %i.gj = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gk = fcmp ogt float %i.gj, %i.a
  %.0296 = select i1 %i.gk, float %i.a, float %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !120 ; 4 uses
  %i.gn = fsub float %.0296, %.1302
  %i.go = fmul float %i.gm, %i.gn                 ; 5 uses
  %18 = extractelement <2 x float> %17, i64 0
  %i.gp = fsub nnan float %18, %.1306
  %i.gq = fmul float %i.gp, %i.go
  %i.gr = fmul float %i.gq, 5.000000e-01
  %i.gs = sext i32 %.pre-phi to i64               ; 3 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gs ; 2 uses
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !74
  %i.gv = fadd float %i.gu, %i.gr
  store float %i.gv, ptr %i.gt, align 4, !tbaa !74
  %i.gw = extractelement <2 x float> %i.gi, i64 1 ; 2 uses
  %i.gx = fcmp ogt float %i.gw, %i.a              ; 2 uses
  %i.gy = fsub float %i.a, %.0296
  %i.gz = sub nsw i32 %.pre-phi479, %i.gc
  %i.ha = sitofp i32 %i.gz to float
  %i.hb = fdiv float %i.gy, %i.ha
  %.1 = select i1 %i.gx, float %i.hb, float %.0298
  %.0295 = select i1 %i.gx, float %i.a, float %i.gw
  %i.hc = fmul float %i.gm, %.1                   ; 4 uses
  %i.hd = icmp slt i32 %i.gc, %.pre-phi479
  br i1 %i.hd, label %.lr.ph467, label %._crit_edge

.lr.ph467:                                        ; preds = %bb.aq
  %i.he = fmul float %i.hc, 5.000000e-01          ; 3 uses
  %i.hf = add nsw i64 %i.gs, 1                    ; 2 uses
  %i.hg = add i32 %.pre-phi479, -2
  %i.hh = sub i32 %.pre-phi, %.pre-phi479
  %i.hi = and i32 %i.hh, 1
  %lcmp.mod.not.not = icmp eq i32 %i.hi, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467
  %i.hj = fadd float %i.he, %i.go
  %i.hk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hf ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !74
  %i.hm = fadd float %i.hj, %i.hl
  store float %i.hm, ptr %i.hk, align 4, !tbaa !74
  %i.hn = fadd float %i.hc, %i.go                 ; 2 uses
  %indvars.iv.next476.prol = add nsw i64 %i.gs, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467
  %.lcssa.unr = phi float [ poison, %.lr.ph467 ], [ %i.hn, %.prol.loopexit.unr-lcssa ]
  %indvars.iv475.unr = phi i64 [ %i.hf, %.lr.ph467 ], [ %indvars.iv.next476.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.unr = phi float [ %i.go, %.lr.ph467 ], [ %i.hn, %.prol.loopexit.unr-lcssa ]
  %i.ho = icmp eq i32 %i.hg, %.pre-phi
  br i1 %i.ho, label %._crit_edge, label %.lr.ph467.new

.lr.ph467.new:                                    ; preds = %.prol.loopexit, %.lr.ph467.new
  %indvars.iv475 = phi i64 [ %indvars.iv.next476.1, %.lr.ph467.new ], [ %indvars.iv475.unr, %.prol.loopexit ] ; 3 uses
  %.0294466 = phi float [ %i.hz, %.lr.ph467.new ], [ %.0294466.unr, %.prol.loopexit ] ; 2 uses
  %i.hp = fadd float %i.he, %.0294466
  %i.hq = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv475 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !74
  %i.hs = fadd float %i.hp, %i.hr
  store float %i.hs, ptr %i.hq, align 4, !tbaa !74
  %i.ht = fadd float %i.hc, %.0294466             ; 2 uses
  %i.hu = fadd float %i.he, %i.ht
  %i.hv = getelementptr [4 x i8], ptr %0, i64 %indvars.iv475
  %i.hw = getelementptr i8, ptr %i.hv, i64 4      ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !74
  %i.hy = fadd float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !74
  %i.hz = fadd float %i.hc, %i.ht                 ; 2 uses
  %indvars.iv.next476.1 = add nsw i64 %indvars.iv475, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next476.1 to i32
  %exitcond478.not.1 = icmp eq i32 %.pre-phi479, %lftr.wideiv.1
  br i1 %exitcond478.not.1, label %._crit_edge, label %.lr.ph467.new, !llvm.loop !124

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph467.new, %bb.aq
  %.0294.lcssa = phi float [ %i.go, %bb.aq ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hz, %.lr.ph467.new ]
  %i.ia = fsub float %.1300, %.0295
  %19 = extractelement <2 x float> %17, i64 1     ; 2 uses
  %i.ib = fadd float %19, 1.000000e+00            ; 2 uses
  %i.ic = fsub nnan float %i.ib, %19
  %i.id = fsub float %i.ib, %.1304
  %i.ie = fadd float %i.ic, %i.id
  %i.if = fmul float %i.ie, 5.000000e-01
  %i.ig = fmul float %i.if, %i.ia
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.ig, float %.0294.lcssa)
  %i.ii = sext i32 %.pre-phi479 to i64            ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ii ; 2 uses
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !74
  %i.il = fadd float %i.ih, %i.ik
  store float %i.il, ptr %i.ij, align 4, !tbaa !74
  %i.im = fsub float %.1300, %.1302
  %i.in = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ii ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !74
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.im, float %i.io)
  store float %i.ip, ptr %i.in, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit351

bb.ar:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.c, label %.lr.ph, label %stbtt__handle_clipped_edge.exit351

.lr.ph:                                           ; preds = %bb.ar
  %i.iq = fsub float %i.ei, %8
  %i.ir = getelementptr inbounds nuw i8, ptr %.0293469, i64 20 ; 30 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %stbtt__handle_clipped_edge.exit379
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %stbtt__handle_clipped_edge.exit379 ] ; 32 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.it = trunc nuw nsw i64 %indvars.iv to i32
  %i.iu = uitofp nneg i32 %i.is to float          ; 60 uses
  %i.iv = uitofp nneg i32 %i.it to float          ; 90 uses
  %i.iw = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.iu, i64 1
  %i.iy = fsub <2 x float> %i.ix, %i.er           ; 7 uses
  %i.iz = fdiv <2 x float> %i.iy, %13             ; 2 uses
  %i.ja = extractelement <2 x float> %i.iz, i64 0
  %i.jb = fadd float %4, %i.ja                    ; 52 uses
  %i.jc = extractelement <2 x float> %i.iz, i64 1
  %i.jd = fadd float %4, %i.jc                    ; 52 uses
  %i.je = fcmp olt float %8, %i.iv                ; 2 uses
  %i.jf = fcmp ogt float %i.ei, %i.iu             ; 2 uses
  %or.cond339 = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond339, label %bb.at, label %bb.by

bb.at:                                            ; preds = %bb.as
  %i.jg = fcmp oeq float %4, %i.jb
  br i1 %i.jg, label %stbtt__handle_clipped_edge.exit365, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jh = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.ji = fcmp ogt float %4, %i.jh
  br i1 %i.ji, label %stbtt__handle_clipped_edge.exit365, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jj = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.jk = fcmp olt float %i.jb, %i.jj
  br i1 %i.jk, label %stbtt__handle_clipped_edge.exit365, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = fcmp olt float %4, %i.jj
  br i1 %i.jl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jm = fsub float %i.jj, %4
  %i.jn = extractelement <2 x float> %i.iy, i64 0
  %i.jo = fmul float %i.jn, %i.jm
  %i.jp = fsub float %i.jb, %4
  %i.jq = fdiv float %i.jo, %i.jp
  %i.jr = fadd float %8, %i.jq
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.055.i359 = phi float [ %i.jr, %bb.ax ], [ %8, %bb.aw ] ; 4 uses
  %.054.i360 = phi float [ %i.jj, %bb.ax ], [ %4, %bb.aw ] ; 3 uses
  %i.js = fcmp ogt float %i.jb, %i.jh
  br i1 %i.js, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jt = fsub float %i.iv, %.055.i359
  %i.ju = fsub float %i.jh, %i.jb
  %i.jv = fmul float %i.ju, %i.jt
  %i.jw = fsub float %i.jb, %.054.i360
  %i.jx = fdiv float %i.jv, %i.jw
  %i.jy = fadd float %i.jx, %i.iv
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.053.i361 = phi float [ %i.jy, %bb.az ], [ %i.iv, %bb.ay ] ; 3 uses
  %.0.i362 = phi float [ %i.jh, %bb.az ], [ %i.jb, %bb.ay ] ; 2 uses
  %i.jz = fcmp ugt float %.055.i359, %i.iv
  %i.ka = fcmp ugt float %.053.i361, %i.iv
  %or.cond.i363 = select i1 %i.jz, i1 true, i1 %i.ka
  br i1 %or.cond.i363, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kb = load float, ptr %i.ir, align 4, !tbaa !120
  %i.kc = fsub float %.0.i362, %.054.i360
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !74
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.kb, float %i.kc, float %i.ke)
  store float %i.kf, ptr %i.kd, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit365

bb.bc:                                            ; preds = %bb.ba
  %i.kg = fcmp ult float %.055.i359, %i.iu
  %i.kh = fcmp ult float %.053.i361, %i.iu
  %or.cond62.i364 = select i1 %i.kg, i1 true, i1 %i.kh
  br i1 %or.cond62.i364, label %bb.bd, label %stbtt__handle_clipped_edge.exit365

bb.bd:                                            ; preds = %bb.bc
  %i.ki = load float, ptr %i.ir, align 4, !tbaa !120
  %i.kj = fsub float %.0.i362, %.054.i360
  %i.kk = fmul float %i.kj, %i.ki
  %i.kl = fsub float %.055.i359, %i.iv
  %i.km = fsub float %.053.i361, %i.iv
  %i.kn = fadd float %i.kl, %i.km
  %i.ko = fmul float %i.kn, 5.000000e-01
  %i.kp = fsub float 1.000000e+00, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !74
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.kk, float %i.kp, float %i.kr)
  store float %i.ks, ptr %i.kq, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit365

stbtt__handle_clipped_edge.exit365:               ; preds = %bb.at, %bb.au, %bb.av, %bb.bb, %bb.bc, %bb.bd
  %i.kt = fcmp oeq float %i.jb, %i.jd
  br i1 %i.kt, label %stbtt__handle_clipped_edge.exit372, label %bb.be

bb.be:                                            ; preds = %stbtt__handle_clipped_edge.exit365
  %i.ku = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.kv = fcmp ogt float %i.jb, %i.ku
  br i1 %i.kv, label %stbtt__handle_clipped_edge.exit372, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kw = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.kx = fcmp olt float %i.jd, %i.kw
  br i1 %i.kx, label %stbtt__handle_clipped_edge.exit372, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ky = fcmp olt float %i.jb, %i.kw
  br i1 %i.ky, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kz = fsub nnan float %i.iu, %i.iv
  %i.la = fsub float %i.kw, %i.jb
  %i.lb = fmul float %i.kz, %i.la
  %i.lc = fsub float %i.jd, %i.jb
  %i.ld = fdiv float %i.lb, %i.lc
  %i.le = fadd float %i.ld, %i.iv
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.055.i366 = phi float [ %i.le, %bb.bh ], [ %i.iv, %bb.bg ] ; 4 uses
  %.054.i367 = phi float [ %i.kw, %bb.bh ], [ %i.jb, %bb.bg ] ; 3 uses
  %i.lf = fcmp ogt float %i.jd, %i.ku
  br i1 %i.lf, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lg = fsub float %i.iu, %.055.i366
  %i.lh = fsub float %i.ku, %i.jd
  %i.li = fmul float %i.lh, %i.lg
  %i.lj = fsub float %i.jd, %.054.i367
  %i.lk = fdiv float %i.li, %i.lj
  %i.ll = fadd float %i.lk, %i.iu
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.053.i368 = phi float [ %i.ll, %bb.bj ], [ %i.iu, %bb.bi ] ; 3 uses
  %.0.i369 = phi float [ %i.ku, %bb.bj ], [ %i.jd, %bb.bi ] ; 2 uses
  %i.lm = fcmp ugt float %.055.i366, %i.iv
  %i.ln = fcmp ugt float %.053.i368, %i.iv
  %or.cond.i370 = select i1 %i.lm, i1 true, i1 %i.ln
  br i1 %or.cond.i370, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lo = load float, ptr %i.ir, align 4, !tbaa !120
  %i.lp = fsub float %.0.i369, %.054.i367
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !74
  %i.ls = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.lp, float %i.lr)
  store float %i.ls, ptr %i.lq, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit372

bb.bm:                                            ; preds = %bb.bk
  %i.lt = fcmp ult float %.055.i366, %i.iu
  %i.lu = fcmp ult float %.053.i368, %i.iu
  %or.cond62.i371 = select i1 %i.lt, i1 true, i1 %i.lu
  br i1 %or.cond62.i371, label %bb.bn, label %stbtt__handle_clipped_edge.exit372

bb.bn:                                            ; preds = %bb.bm
  %i.lv = load float, ptr %i.ir, align 4, !tbaa !120
  %i.lw = fsub float %.0.i369, %.054.i367
  %i.lx = fmul float %i.lw, %i.lv
  %i.ly = fsub float %.055.i366, %i.iv
  %i.lz = fsub float %.053.i368, %i.iv
  %i.ma = fadd float %i.ly, %i.lz
  %i.mb = fmul float %i.ma, 5.000000e-01
  %i.mc = fsub float 1.000000e+00, %i.mb
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !74
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.mc, float %i.me)
  store float %i.mf, ptr %i.md, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit372

stbtt__handle_clipped_edge.exit372:               ; preds = %stbtt__handle_clipped_edge.exit365, %bb.be, %bb.bf, %bb.bl, %bb.bm, %bb.bn
  %i.mg = fcmp oeq float %i.jd, %i.a
  br i1 %i.mg, label %stbtt__handle_clipped_edge.exit379, label %bb.bo

bb.bo:                                            ; preds = %stbtt__handle_clipped_edge.exit372
  %i.mh = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.mi = fcmp ogt float %i.jd, %i.mh
  br i1 %i.mi, label %stbtt__handle_clipped_edge.exit379, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mj = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.mk = fcmp olt float %i.a, %i.mj
  br i1 %i.mk, label %stbtt__handle_clipped_edge.exit379, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ml = fcmp olt float %i.jd, %i.mj
  br i1 %i.ml, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mm = fsub float %i.ei, %i.iu
  %i.mn = fsub float %i.mj, %i.jd
  %i.mo = fmul float %i.mm, %i.mn
  %i.mp = fsub float %i.a, %i.jd
  %i.mq = fdiv float %i.mo, %i.mp
  %i.mr = fadd float %i.mq, %i.iu
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.055.i373 = phi float [ %i.mr, %bb.br ], [ %i.iu, %bb.bq ] ; 4 uses
  %.054.i374 = phi float [ %i.mj, %bb.br ], [ %i.jd, %bb.bq ] ; 3 uses
  %i.ms = fcmp ogt float %i.a, %i.mh
  br i1 %i.ms, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mt = fsub float %i.ei, %.055.i373
  %i.mu = fsub float %i.mh, %i.a
  %i.mv = fmul float %i.mu, %i.mt
  %i.mw = fsub float %i.a, %.054.i374
  %i.mx = fdiv float %i.mv, %i.mw
  %i.my = fadd float %i.ei, %i.mx
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.053.i375 = phi float [ %i.my, %bb.bt ], [ %i.ei, %bb.bs ] ; 3 uses
  %.0.i376 = phi float [ %i.mh, %bb.bt ], [ %i.a, %bb.bs ] ; 2 uses
  %i.mz = fcmp ugt float %.055.i373, %i.iv
  %i.na = fcmp ugt float %.053.i375, %i.iv
  %or.cond.i377 = select i1 %i.mz, i1 true, i1 %i.na
  br i1 %or.cond.i377, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nb = load float, ptr %i.ir, align 4, !tbaa !120
  %i.nc = fsub float %.0.i376, %.054.i374
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !74
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.nc, float %i.ne)
  store float %i.nf, ptr %i.nd, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.bw:                                            ; preds = %bb.bu
  %i.ng = fcmp ult float %.055.i373, %i.iu
  %i.nh = fcmp ult float %.053.i375, %i.iu
  %or.cond62.i378 = select i1 %i.ng, i1 true, i1 %i.nh
  br i1 %or.cond62.i378, label %bb.bx, label %stbtt__handle_clipped_edge.exit379

bb.bx:                                            ; preds = %bb.bw
  %i.ni = load float, ptr %i.ir, align 4, !tbaa !120
  %i.nj = fsub float %.0.i376, %.054.i374
  %i.nk = fmul float %i.nj, %i.ni
  %i.nl = fsub float %.055.i373, %i.iv
  %i.nm = fsub float %.053.i375, %i.iv
  %i.nn = fadd float %i.nl, %i.nm
  %i.no = fmul float %i.nn, 5.000000e-01
  %i.np = fsub float 1.000000e+00, %i.no
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !74
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.np, float %i.nr)
  store float %i.ns, ptr %i.nq, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.by:                                            ; preds = %bb.as
  %i.nt = fcmp olt float %i.ei, %i.iv             ; 2 uses
  %i.nu = fcmp ogt float %8, %i.iu                ; 2 uses
  %or.cond340 = select i1 %i.nt, i1 %i.nu, i1 false
  br i1 %or.cond340, label %bb.bz, label %bb.de

bb.bz:                                            ; preds = %bb.by
  %i.nv = fcmp oeq float %4, %i.jd
  br i1 %i.nv, label %stbtt__handle_clipped_edge.exit386, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nw = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.nx = fcmp ogt float %4, %i.nw
  br i1 %i.nx, label %stbtt__handle_clipped_edge.exit386, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ny = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.nz = fcmp olt float %i.jd, %i.ny
  br i1 %i.nz, label %stbtt__handle_clipped_edge.exit386, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.oa = fcmp olt float %4, %i.ny
  br i1 %i.oa, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ob = fsub float %i.ny, %4
  %i.oc = extractelement <2 x float> %i.iy, i64 1
  %i.od = fmul float %i.oc, %i.ob
  %i.oe = fsub float %i.jd, %4
  %i.of = fdiv float %i.od, %i.oe
  %i.og = fadd float %8, %i.of
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.055.i380 = phi float [ %i.og, %bb.cd ], [ %8, %bb.cc ] ; 4 uses
  %.054.i381 = phi float [ %i.ny, %bb.cd ], [ %4, %bb.cc ] ; 3 uses
  %i.oh = fcmp ogt float %i.jd, %i.nw
  br i1 %i.oh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oi = fsub float %i.iu, %.055.i380
  %i.oj = fsub float %i.nw, %i.jd
  %i.ok = fmul float %i.oj, %i.oi
  %i.ol = fsub float %i.jd, %.054.i381
  %i.om = fdiv float %i.ok, %i.ol
  %i.on = fadd float %i.om, %i.iu
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.053.i382 = phi float [ %i.on, %bb.cf ], [ %i.iu, %bb.ce ] ; 3 uses
  %.0.i383 = phi float [ %i.nw, %bb.cf ], [ %i.jd, %bb.ce ] ; 2 uses
  %i.oo = fcmp ugt float %.055.i380, %i.iv
  %i.op = fcmp ugt float %.053.i382, %i.iv
  %or.cond.i384 = select i1 %i.oo, i1 true, i1 %i.op
  br i1 %or.cond.i384, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.oq = load float, ptr %i.ir, align 4, !tbaa !120
  %i.or = fsub float %.0.i383, %.054.i381
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ot = load float, ptr %i.os, align 4, !tbaa !74
  %i.ou = tail call float @llvm.fmuladd.f32(float %i.oq, float %i.or, float %i.ot)
  store float %i.ou, ptr %i.os, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit386

bb.ci:                                            ; preds = %bb.cg
  %i.ov = fcmp ult float %.055.i380, %i.iu
  %i.ow = fcmp ult float %.053.i382, %i.iu
  %or.cond62.i385 = select i1 %i.ov, i1 true, i1 %i.ow
  br i1 %or.cond62.i385, label %bb.cj, label %stbtt__handle_clipped_edge.exit386

bb.cj:                                            ; preds = %bb.ci
  %i.ox = load float, ptr %i.ir, align 4, !tbaa !120
  %i.oy = fsub float %.0.i383, %.054.i381
  %i.oz = fmul float %i.oy, %i.ox
  %i.pa = fsub float %.055.i380, %i.iv
  %i.pb = fsub float %.053.i382, %i.iv
  %i.pc = fadd float %i.pa, %i.pb
  %i.pd = fmul float %i.pc, 5.000000e-01
  %i.pe = fsub float 1.000000e+00, %i.pd
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !74
  %i.ph = tail call float @llvm.fmuladd.f32(float %i.oz, float %i.pe, float %i.pg)
  store float %i.ph, ptr %i.pf, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit386

stbtt__handle_clipped_edge.exit386:               ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.ch, %bb.ci, %bb.cj
  %i.pi = fcmp oeq float %i.jd, %i.jb
  br i1 %i.pi, label %stbtt__handle_clipped_edge.exit393, label %bb.ck

bb.ck:                                            ; preds = %stbtt__handle_clipped_edge.exit386
  %i.pj = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.pk = fcmp ogt float %i.jd, %i.pj
  br i1 %i.pk, label %stbtt__handle_clipped_edge.exit393, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pl = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.pm = fcmp olt float %i.jb, %i.pl
  br i1 %i.pm, label %stbtt__handle_clipped_edge.exit393, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pn = fcmp olt float %i.jd, %i.pl
  br i1 %i.pn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.po = fsub nnan float %i.iv, %i.iu
  %i.pp = fsub float %i.pl, %i.jd
  %i.pq = fmul float %i.po, %i.pp
  %i.pr = fsub float %i.jb, %i.jd
  %i.ps = fdiv float %i.pq, %i.pr
  %i.pt = fadd float %i.ps, %i.iu
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.055.i387 = phi float [ %i.pt, %bb.cn ], [ %i.iu, %bb.cm ] ; 4 uses
  %.054.i388 = phi float [ %i.pl, %bb.cn ], [ %i.jd, %bb.cm ] ; 3 uses
  %i.pu = fcmp ogt float %i.jb, %i.pj
  br i1 %i.pu, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.pv = fsub float %i.iv, %.055.i387
  %i.pw = fsub float %i.pj, %i.jb
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fsub float %i.jb, %.054.i388
  %i.pz = fdiv float %i.px, %i.py
  %i.qa = fadd float %i.pz, %i.iv
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.053.i389 = phi float [ %i.qa, %bb.cp ], [ %i.iv, %bb.co ] ; 3 uses
  %.0.i390 = phi float [ %i.pj, %bb.cp ], [ %i.jb, %bb.co ] ; 2 uses
  %i.qb = fcmp ugt float %.055.i387, %i.iv
  %i.qc = fcmp ugt float %.053.i389, %i.iv
  %or.cond.i391 = select i1 %i.qb, i1 true, i1 %i.qc
  br i1 %or.cond.i391, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qd = load float, ptr %i.ir, align 4, !tbaa !120
  %i.qe = fsub float %.0.i390, %.054.i388
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !74
  %i.qh = tail call float @llvm.fmuladd.f32(float %i.qd, float %i.qe, float %i.qg)
  store float %i.qh, ptr %i.qf, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit393

bb.cs:                                            ; preds = %bb.cq
  %i.qi = fcmp ult float %.055.i387, %i.iu
  %i.qj = fcmp ult float %.053.i389, %i.iu
  %or.cond62.i392 = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond62.i392, label %bb.ct, label %stbtt__handle_clipped_edge.exit393

bb.ct:                                            ; preds = %bb.cs
  %i.qk = load float, ptr %i.ir, align 4, !tbaa !120
  %i.ql = fsub float %.0.i390, %.054.i388
  %i.qm = fmul float %i.ql, %i.qk
  %i.qn = fsub float %.055.i387, %i.iv
  %i.qo = fsub float %.053.i389, %i.iv
  %i.qp = fadd float %i.qn, %i.qo
  %i.qq = fmul float %i.qp, 5.000000e-01
  %i.qr = fsub float 1.000000e+00, %i.qq
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !74
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.qm, float %i.qr, float %i.qt)
  store float %i.qu, ptr %i.qs, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit393

stbtt__handle_clipped_edge.exit393:               ; preds = %stbtt__handle_clipped_edge.exit386, %bb.ck, %bb.cl, %bb.cr, %bb.cs, %bb.ct
  %i.qv = fcmp oeq float %i.jb, %i.a
  br i1 %i.qv, label %stbtt__handle_clipped_edge.exit379, label %bb.cu

bb.cu:                                            ; preds = %stbtt__handle_clipped_edge.exit393
  %i.qw = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.qx = fcmp ogt float %i.jb, %i.qw
  br i1 %i.qx, label %stbtt__handle_clipped_edge.exit379, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qy = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.qz = fcmp olt float %i.a, %i.qy
  br i1 %i.qz, label %stbtt__handle_clipped_edge.exit379, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ra = fcmp olt float %i.jb, %i.qy
  br i1 %i.ra, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.rb = fsub float %i.ei, %i.iv
  %i.rc = fsub float %i.qy, %i.jb
  %i.rd = fmul float %i.rb, %i.rc
  %i.re = fsub float %i.a, %i.jb
  %i.rf = fdiv float %i.rd, %i.re
  %i.rg = fadd float %i.rf, %i.iv
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i394 = phi float [ %i.rg, %bb.cx ], [ %i.iv, %bb.cw ] ; 4 uses
  %.054.i395 = phi float [ %i.qy, %bb.cx ], [ %i.jb, %bb.cw ] ; 3 uses
  %i.rh = fcmp ogt float %i.a, %i.qw
  br i1 %i.rh, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ri = fsub float %i.ei, %.055.i394
  %i.rj = fsub float %i.qw, %i.a
  %i.rk = fmul float %i.rj, %i.ri
  %i.rl = fsub float %i.a, %.054.i395
  %i.rm = fdiv float %i.rk, %i.rl
  %i.rn = fadd float %i.ei, %i.rm
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.053.i396 = phi float [ %i.rn, %bb.cz ], [ %i.ei, %bb.cy ] ; 3 uses
  %.0.i397 = phi float [ %i.qw, %bb.cz ], [ %i.a, %bb.cy ] ; 2 uses
  %i.ro = fcmp ugt float %.055.i394, %i.iv
  %i.rp = fcmp ugt float %.053.i396, %i.iv
  %or.cond.i398 = select i1 %i.ro, i1 true, i1 %i.rp
  br i1 %or.cond.i398, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rq = load float, ptr %i.ir, align 4, !tbaa !120
  %i.rr = fsub float %.0.i397, %.054.i395
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !74
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rq, float %i.rr, float %i.rt)
  store float %i.ru, ptr %i.rs, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.dc:                                            ; preds = %bb.da
  %i.rv = fcmp ult float %.055.i394, %i.iu
  %i.rw = fcmp ult float %.053.i396, %i.iu
  %or.cond62.i399 = select i1 %i.rv, i1 true, i1 %i.rw
  br i1 %or.cond62.i399, label %bb.dd, label %stbtt__handle_clipped_edge.exit379

bb.dd:                                            ; preds = %bb.dc
  %i.rx = load float, ptr %i.ir, align 4, !tbaa !120
  %i.ry = fsub float %.0.i397, %.054.i395
  %i.rz = fmul float %i.ry, %i.rx
  %i.sa = fsub float %.055.i394, %i.iv
  %i.sb = fsub float %.053.i396, %i.iv
  %i.sc = fadd float %i.sa, %i.sb
  %i.sd = fmul float %i.sc, 5.000000e-01
  %i.se = fsub float 1.000000e+00, %i.sd
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !74
  %i.sh = tail call float @llvm.fmuladd.f32(float %i.rz, float %i.se, float %i.sg)
  store float %i.sh, ptr %i.sf, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.de:                                            ; preds = %bb.by
  %i.si = fcmp ogt float %i.ei, %i.iv
  %or.cond341 = and i1 %i.je, %i.si
  br i1 %or.cond341, label %bb.df, label %bb.ea

bb.df:                                            ; preds = %bb.de
  %i.sj = fcmp oeq float %4, %i.jb
  br i1 %i.sj, label %stbtt__handle_clipped_edge.exit407, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sk = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.sl = fcmp ogt float %4, %i.sk
  br i1 %i.sl, label %stbtt__handle_clipped_edge.exit407, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sm = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.sn = fcmp olt float %i.jb, %i.sm
  br i1 %i.sn, label %stbtt__handle_clipped_edge.exit407, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.so = fcmp olt float %4, %i.sm
  br i1 %i.so, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.sp = fsub float %i.sm, %4
  %i.sq = extractelement <2 x float> %i.iy, i64 0
  %i.sr = fmul float %i.sq, %i.sp
  %i.ss = fsub float %i.jb, %4
  %i.st = fdiv float %i.sr, %i.ss
  %i.su = fadd float %8, %i.st
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.055.i401 = phi float [ %i.su, %bb.dj ], [ %8, %bb.di ] ; 4 uses
  %.054.i402 = phi float [ %i.sm, %bb.dj ], [ %4, %bb.di ] ; 3 uses
  %i.sv = fcmp ogt float %i.jb, %i.sk
  br i1 %i.sv, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.sw = fsub float %i.iv, %.055.i401
  %i.sx = fsub float %i.sk, %i.jb
  %i.sy = fmul float %i.sx, %i.sw
  %i.sz = fsub float %i.jb, %.054.i402
  %i.ta = fdiv float %i.sy, %i.sz
  %i.tb = fadd float %i.ta, %i.iv
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.053.i403 = phi float [ %i.tb, %bb.dl ], [ %i.iv, %bb.dk ] ; 3 uses
  %.0.i404 = phi float [ %i.sk, %bb.dl ], [ %i.jb, %bb.dk ] ; 2 uses
  %i.tc = fcmp ugt float %.055.i401, %i.iv
  %i.td = fcmp ugt float %.053.i403, %i.iv
  %or.cond.i405 = select i1 %i.tc, i1 true, i1 %i.td
  br i1 %or.cond.i405, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.te = load float, ptr %i.ir, align 4, !tbaa !120
  %i.tf = fsub float %.0.i404, %.054.i402
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.th = load float, ptr %i.tg, align 4, !tbaa !74
  %i.ti = tail call float @llvm.fmuladd.f32(float %i.te, float %i.tf, float %i.th)
  store float %i.ti, ptr %i.tg, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit407

bb.do:                                            ; preds = %bb.dm
  %i.tj = fcmp ult float %.055.i401, %i.iu
  %i.tk = fcmp ult float %.053.i403, %i.iu
  %or.cond62.i406 = select i1 %i.tj, i1 true, i1 %i.tk
  br i1 %or.cond62.i406, label %bb.dp, label %stbtt__handle_clipped_edge.exit407

bb.dp:                                            ; preds = %bb.do
  %i.tl = load float, ptr %i.ir, align 4, !tbaa !120
  %i.tm = fsub float %.0.i404, %.054.i402
  %i.tn = fmul float %i.tm, %i.tl
  %i.to = fsub float %.055.i401, %i.iv
  %i.tp = fsub float %.053.i403, %i.iv
  %i.tq = fadd float %i.to, %i.tp
  %i.tr = fmul float %i.tq, 5.000000e-01
  %i.ts = fsub float 1.000000e+00, %i.tr
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.tu = load float, ptr %i.tt, align 4, !tbaa !74
  %i.tv = tail call float @llvm.fmuladd.f32(float %i.tn, float %i.ts, float %i.tu)
  store float %i.tv, ptr %i.tt, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit407

stbtt__handle_clipped_edge.exit407:               ; preds = %bb.df, %bb.dg, %bb.dh, %bb.dn, %bb.do, %bb.dp
  %i.tw = fcmp oeq float %i.jb, %i.a
  br i1 %i.tw, label %stbtt__handle_clipped_edge.exit379, label %bb.dq

bb.dq:                                            ; preds = %stbtt__handle_clipped_edge.exit407
  %i.tx = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.ty = fcmp ogt float %i.jb, %i.tx
  br i1 %i.ty, label %stbtt__handle_clipped_edge.exit379, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tz = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.ua = fcmp olt float %i.a, %i.tz
  br i1 %i.ua, label %stbtt__handle_clipped_edge.exit379, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ub = fcmp olt float %i.jb, %i.tz
  br i1 %i.ub, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.uc = fsub float %i.ei, %i.iv
  %i.ud = fsub float %i.tz, %i.jb
  %i.ue = fmul float %i.uc, %i.ud
  %i.uf = fsub float %i.a, %i.jb
  %i.ug = fdiv float %i.ue, %i.uf
  %i.uh = fadd float %i.ug, %i.iv
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.055.i408 = phi float [ %i.uh, %bb.dt ], [ %i.iv, %bb.ds ] ; 4 uses
  %.054.i409 = phi float [ %i.tz, %bb.dt ], [ %i.jb, %bb.ds ] ; 3 uses
  %i.ui = fcmp ogt float %i.a, %i.tx
  br i1 %i.ui, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.uj = fsub float %i.ei, %.055.i408
  %i.uk = fsub float %i.tx, %i.a
  %i.ul = fmul float %i.uk, %i.uj
  %i.um = fsub float %i.a, %.054.i409
  %i.un = fdiv float %i.ul, %i.um
  %i.uo = fadd float %i.ei, %i.un
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.053.i410 = phi float [ %i.uo, %bb.dv ], [ %i.ei, %bb.du ] ; 3 uses
  %.0.i411 = phi float [ %i.tx, %bb.dv ], [ %i.a, %bb.du ] ; 2 uses
  %i.up = fcmp ugt float %.055.i408, %i.iv
  %i.uq = fcmp ugt float %.053.i410, %i.iv
  %or.cond.i412 = select i1 %i.up, i1 true, i1 %i.uq
  br i1 %or.cond.i412, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ur = load float, ptr %i.ir, align 4, !tbaa !120
  %i.us = fsub float %.0.i411, %.054.i409
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !74
  %i.uv = tail call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.uu)
  store float %i.uv, ptr %i.ut, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.dy:                                            ; preds = %bb.dw
  %i.uw = fcmp ult float %.055.i408, %i.iu
  %i.ux = fcmp ult float %.053.i410, %i.iu
  %or.cond62.i413 = select i1 %i.uw, i1 true, i1 %i.ux
  br i1 %or.cond62.i413, label %bb.dz, label %stbtt__handle_clipped_edge.exit379

bb.dz:                                            ; preds = %bb.dy
  %i.uy = load float, ptr %i.ir, align 4, !tbaa !120
  %i.uz = fsub float %.0.i411, %.054.i409
  %i.va = fmul float %i.uz, %i.uy
  %i.vb = fsub float %.055.i408, %i.iv
  %i.vc = fsub float %.053.i410, %i.iv
  %i.vd = fadd float %i.vb, %i.vc
  %i.ve = fmul float %i.vd, 5.000000e-01
  %i.vf = fsub float 1.000000e+00, %i.ve
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !74
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.va, float %i.vf, float %i.vh)
  store float %i.vi, ptr %i.vg, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.ea:                                            ; preds = %bb.de
  %i.vj = fcmp ogt float %8, %i.iv
  %or.cond342 = and i1 %i.nt, %i.vj
  br i1 %or.cond342, label %bb.eb, label %bb.ew

bb.eb:                                            ; preds = %bb.ea
  %i.vk = fcmp oeq float %4, %i.jb
  br i1 %i.vk, label %stbtt__handle_clipped_edge.exit421, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vl = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.vm = fcmp ogt float %4, %i.vl
  br i1 %i.vm, label %stbtt__handle_clipped_edge.exit421, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vn = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.vo = fcmp olt float %i.jb, %i.vn
  br i1 %i.vo, label %stbtt__handle_clipped_edge.exit421, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vp = fcmp olt float %4, %i.vn
  br i1 %i.vp, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.vq = fsub float %i.vn, %4
  %i.vr = extractelement <2 x float> %i.iy, i64 0
  %i.vs = fmul float %i.vr, %i.vq
  %i.vt = fsub float %i.jb, %4
  %i.vu = fdiv float %i.vs, %i.vt
  %i.vv = fadd float %8, %i.vu
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.055.i415 = phi float [ %i.vv, %bb.ef ], [ %8, %bb.ee ] ; 4 uses
  %.054.i416 = phi float [ %i.vn, %bb.ef ], [ %4, %bb.ee ] ; 3 uses
  %i.vw = fcmp ogt float %i.jb, %i.vl
  br i1 %i.vw, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.vx = fsub float %i.iv, %.055.i415
  %i.vy = fsub float %i.vl, %i.jb
  %i.vz = fmul float %i.vy, %i.vx
  %i.wa = fsub float %i.jb, %.054.i416
  %i.wb = fdiv float %i.vz, %i.wa
  %i.wc = fadd float %i.wb, %i.iv
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.053.i417 = phi float [ %i.wc, %bb.eh ], [ %i.iv, %bb.eg ] ; 3 uses
  %.0.i418 = phi float [ %i.vl, %bb.eh ], [ %i.jb, %bb.eg ] ; 2 uses
  %i.wd = fcmp ugt float %.055.i415, %i.iv
  %i.we = fcmp ugt float %.053.i417, %i.iv
  %or.cond.i419 = select i1 %i.wd, i1 true, i1 %i.we
  br i1 %or.cond.i419, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wf = load float, ptr %i.ir, align 4, !tbaa !120
  %i.wg = fsub float %.0.i418, %.054.i416
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !74
  %i.wj = tail call float @llvm.fmuladd.f32(float %i.wf, float %i.wg, float %i.wi)
  store float %i.wj, ptr %i.wh, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit421

bb.ek:                                            ; preds = %bb.ei
  %i.wk = fcmp ult float %.055.i415, %i.iu
  %i.wl = fcmp ult float %.053.i417, %i.iu
  %or.cond62.i420 = select i1 %i.wk, i1 true, i1 %i.wl
  br i1 %or.cond62.i420, label %bb.el, label %stbtt__handle_clipped_edge.exit421

bb.el:                                            ; preds = %bb.ek
  %i.wm = load float, ptr %i.ir, align 4, !tbaa !120
  %i.wn = fsub float %.0.i418, %.054.i416
  %i.wo = fmul float %i.wn, %i.wm
  %i.wp = fsub float %.055.i415, %i.iv
  %i.wq = fsub float %.053.i417, %i.iv
  %i.wr = fadd float %i.wp, %i.wq
  %i.ws = fmul float %i.wr, 5.000000e-01
  %i.wt = fsub float 1.000000e+00, %i.ws
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !74
  %i.ww = tail call float @llvm.fmuladd.f32(float %i.wo, float %i.wt, float %i.wv)
  store float %i.ww, ptr %i.wu, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit421

stbtt__handle_clipped_edge.exit421:               ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.ej, %bb.ek, %bb.el
  %i.wx = fcmp oeq float %i.jb, %i.a
  br i1 %i.wx, label %stbtt__handle_clipped_edge.exit379, label %bb.em

bb.em:                                            ; preds = %stbtt__handle_clipped_edge.exit421
  %i.wy = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.wz = fcmp ogt float %i.jb, %i.wy
  br i1 %i.wz, label %stbtt__handle_clipped_edge.exit379, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.xa = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.xb = fcmp olt float %i.a, %i.xa
  br i1 %i.xb, label %stbtt__handle_clipped_edge.exit379, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.xc = fcmp olt float %i.jb, %i.xa
  br i1 %i.xc, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.xd = fsub float %i.ei, %i.iv
  %i.xe = fsub float %i.xa, %i.jb
  %i.xf = fmul float %i.xd, %i.xe
  %i.xg = fsub float %i.a, %i.jb
  %i.xh = fdiv float %i.xf, %i.xg
  %i.xi = fadd float %i.xh, %i.iv
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.055.i422 = phi float [ %i.xi, %bb.ep ], [ %i.iv, %bb.eo ] ; 4 uses
  %.054.i423 = phi float [ %i.xa, %bb.ep ], [ %i.jb, %bb.eo ] ; 3 uses
  %i.xj = fcmp ogt float %i.a, %i.wy
  br i1 %i.xj, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.xk = fsub float %i.ei, %.055.i422
  %i.xl = fsub float %i.wy, %i.a
  %i.xm = fmul float %i.xl, %i.xk
  %i.xn = fsub float %i.a, %.054.i423
  %i.xo = fdiv float %i.xm, %i.xn
  %i.xp = fadd float %i.ei, %i.xo
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.053.i424 = phi float [ %i.xp, %bb.er ], [ %i.ei, %bb.eq ] ; 3 uses
  %.0.i425 = phi float [ %i.wy, %bb.er ], [ %i.a, %bb.eq ] ; 2 uses
  %i.xq = fcmp ugt float %.055.i422, %i.iv
  %i.xr = fcmp ugt float %.053.i424, %i.iv
  %or.cond.i426 = select i1 %i.xq, i1 true, i1 %i.xr
  br i1 %or.cond.i426, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.xs = load float, ptr %i.ir, align 4, !tbaa !120
  %i.xt = fsub float %.0.i425, %.054.i423
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !74
  %i.xw = tail call float @llvm.fmuladd.f32(float %i.xs, float %i.xt, float %i.xv)
  store float %i.xw, ptr %i.xu, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.eu:                                            ; preds = %bb.es
  %i.xx = fcmp ult float %.055.i422, %i.iu
  %i.xy = fcmp ult float %.053.i424, %i.iu
  %or.cond62.i427 = select i1 %i.xx, i1 true, i1 %i.xy
  br i1 %or.cond62.i427, label %bb.ev, label %stbtt__handle_clipped_edge.exit379

bb.ev:                                            ; preds = %bb.eu
  %i.xz = load float, ptr %i.ir, align 4, !tbaa !120
  %i.ya = fsub float %.0.i425, %.054.i423
  %i.yb = fmul float %i.ya, %i.xz
  %i.yc = fsub float %.055.i422, %i.iv
  %i.yd = fsub float %.053.i424, %i.iv
  %i.ye = fadd float %i.yc, %i.yd
  %i.yf = fmul float %i.ye, 5.000000e-01
  %i.yg = fsub float 1.000000e+00, %i.yf
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !74
  %i.yj = tail call float @llvm.fmuladd.f32(float %i.yb, float %i.yg, float %i.yi)
  store float %i.yj, ptr %i.yh, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.ew:                                            ; preds = %bb.ea
  %i.yk = fcmp olt float %8, %i.iu
  %or.cond343 = and i1 %i.yk, %i.jf
  br i1 %or.cond343, label %bb.ex, label %bb.fs

bb.ex:                                            ; preds = %bb.ew
  %i.yl = fcmp oeq float %4, %i.jd
  br i1 %i.yl, label %stbtt__handle_clipped_edge.exit435, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ym = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.yn = fcmp ogt float %4, %i.ym
  br i1 %i.yn, label %stbtt__handle_clipped_edge.exit435, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yo = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.yp = fcmp olt float %i.jd, %i.yo
  br i1 %i.yp, label %stbtt__handle_clipped_edge.exit435, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yq = fcmp olt float %4, %i.yo
  br i1 %i.yq, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.yr = fsub float %i.yo, %4
  %i.ys = extractelement <2 x float> %i.iy, i64 1
  %i.yt = fmul float %i.ys, %i.yr
  %i.yu = fsub float %i.jd, %4
  %i.yv = fdiv float %i.yt, %i.yu
  %i.yw = fadd float %8, %i.yv
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.055.i429 = phi float [ %i.yw, %bb.fb ], [ %8, %bb.fa ] ; 4 uses
  %.054.i430 = phi float [ %i.yo, %bb.fb ], [ %4, %bb.fa ] ; 3 uses
  %i.yx = fcmp ogt float %i.jd, %i.ym
  br i1 %i.yx, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.yy = fsub float %i.iu, %.055.i429
  %i.yz = fsub float %i.ym, %i.jd
  %i.za = fmul float %i.yz, %i.yy
  %i.zb = fsub float %i.jd, %.054.i430
  %i.zc = fdiv float %i.za, %i.zb
  %i.zd = fadd float %i.zc, %i.iu
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.053.i431 = phi float [ %i.zd, %bb.fd ], [ %i.iu, %bb.fc ] ; 3 uses
  %.0.i432 = phi float [ %i.ym, %bb.fd ], [ %i.jd, %bb.fc ] ; 2 uses
  %i.ze = fcmp ugt float %.055.i429, %i.iv
  %i.zf = fcmp ugt float %.053.i431, %i.iv
  %or.cond.i433 = select i1 %i.ze, i1 true, i1 %i.zf
  br i1 %or.cond.i433, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.zg = load float, ptr %i.ir, align 4, !tbaa !120
  %i.zh = fsub float %.0.i432, %.054.i430
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !74
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zg, float %i.zh, float %i.zj)
  store float %i.zk, ptr %i.zi, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit435

bb.fg:                                            ; preds = %bb.fe
  %i.zl = fcmp ult float %.055.i429, %i.iu
  %i.zm = fcmp ult float %.053.i431, %i.iu
  %or.cond62.i434 = select i1 %i.zl, i1 true, i1 %i.zm
  br i1 %or.cond62.i434, label %bb.fh, label %stbtt__handle_clipped_edge.exit435

bb.fh:                                            ; preds = %bb.fg
  %i.zn = load float, ptr %i.ir, align 4, !tbaa !120
  %i.zo = fsub float %.0.i432, %.054.i430
  %i.zp = fmul float %i.zo, %i.zn
  %i.zq = fsub float %.055.i429, %i.iv
  %i.zr = fsub float %.053.i431, %i.iv
  %i.zs = fadd float %i.zq, %i.zr
  %i.zt = fmul float %i.zs, 5.000000e-01
  %i.zu = fsub float 1.000000e+00, %i.zt
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !74
  %i.zx = tail call float @llvm.fmuladd.f32(float %i.zp, float %i.zu, float %i.zw)
  store float %i.zx, ptr %i.zv, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit435

stbtt__handle_clipped_edge.exit435:               ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.ff, %bb.fg, %bb.fh
  %i.zy = fcmp oeq float %i.jd, %i.a
  br i1 %i.zy, label %stbtt__handle_clipped_edge.exit379, label %bb.fi

bb.fi:                                            ; preds = %stbtt__handle_clipped_edge.exit435
  %i.zz = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.aaa = fcmp ogt float %i.jd, %i.zz
  br i1 %i.aaa, label %stbtt__handle_clipped_edge.exit379, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.aab = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.aac = fcmp olt float %i.a, %i.aab
  br i1 %i.aac, label %stbtt__handle_clipped_edge.exit379, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aad = fcmp olt float %i.jd, %i.aab
  br i1 %i.aad, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aae = fsub float %i.ei, %i.iu
  %i.aaf = fsub float %i.aab, %i.jd
  %i.aag = fmul float %i.aae, %i.aaf
  %i.aah = fsub float %i.a, %i.jd
  %i.aai = fdiv float %i.aag, %i.aah
  %i.aaj = fadd float %i.aai, %i.iu
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.055.i436 = phi float [ %i.aaj, %bb.fl ], [ %i.iu, %bb.fk ] ; 4 uses
  %.054.i437 = phi float [ %i.aab, %bb.fl ], [ %i.jd, %bb.fk ] ; 3 uses
  %i.aak = fcmp ogt float %i.a, %i.zz
  br i1 %i.aak, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aal = fsub float %i.ei, %.055.i436
  %i.aam = fsub float %i.zz, %i.a
  %i.aan = fmul float %i.aam, %i.aal
  %i.aao = fsub float %i.a, %.054.i437
  %i.aap = fdiv float %i.aan, %i.aao
  %i.aaq = fadd float %i.ei, %i.aap
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.053.i438 = phi float [ %i.aaq, %bb.fn ], [ %i.ei, %bb.fm ] ; 3 uses
  %.0.i439 = phi float [ %i.zz, %bb.fn ], [ %i.a, %bb.fm ] ; 2 uses
  %i.aar = fcmp ugt float %.055.i436, %i.iv
  %i.aas = fcmp ugt float %.053.i438, %i.iv
  %or.cond.i440 = select i1 %i.aar, i1 true, i1 %i.aas
  br i1 %or.cond.i440, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aat = load float, ptr %i.ir, align 4, !tbaa !120
  %i.aau = fsub float %.0.i439, %.054.i437
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !74
  %i.aax = tail call float @llvm.fmuladd.f32(float %i.aat, float %i.aau, float %i.aaw)
  store float %i.aax, ptr %i.aav, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.fq:                                            ; preds = %bb.fo
  %i.aay = fcmp ult float %.055.i436, %i.iu
  %i.aaz = fcmp ult float %.053.i438, %i.iu
  %or.cond62.i441 = select i1 %i.aay, i1 true, i1 %i.aaz
  br i1 %or.cond62.i441, label %bb.fr, label %stbtt__handle_clipped_edge.exit379

bb.fr:                                            ; preds = %bb.fq
  %i.aba = load float, ptr %i.ir, align 4, !tbaa !120
  %i.abb = fsub float %.0.i439, %.054.i437
  %i.abc = fmul float %i.abb, %i.aba
  %i.abd = fsub float %.055.i436, %i.iv
  %i.abe = fsub float %.053.i438, %i.iv
  %i.abf = fadd float %i.abd, %i.abe
  %i.abg = fmul float %i.abf, 5.000000e-01
  %i.abh = fsub float 1.000000e+00, %i.abg
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !74
  %i.abk = tail call float @llvm.fmuladd.f32(float %i.abc, float %i.abh, float %i.abj)
  store float %i.abk, ptr %i.abi, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.fs:                                            ; preds = %bb.ew
  %i.abl = fcmp olt float %i.ei, %i.iu
  %or.cond344 = and i1 %i.abl, %i.nu
  br i1 %or.cond344, label %bb.ft, label %bb.go

bb.ft:                                            ; preds = %bb.fs
  %i.abm = fcmp oeq float %4, %i.jd
  br i1 %i.abm, label %stbtt__handle_clipped_edge.exit449, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.abn = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.abo = fcmp ogt float %4, %i.abn
  br i1 %i.abo, label %stbtt__handle_clipped_edge.exit449, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abp = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.abq = fcmp olt float %i.jd, %i.abp
  br i1 %i.abq, label %stbtt__handle_clipped_edge.exit449, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abr = fcmp olt float %4, %i.abp
  br i1 %i.abr, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.abs = fsub float %i.abp, %4
  %i.abt = extractelement <2 x float> %i.iy, i64 1
  %i.abu = fmul float %i.abt, %i.abs
  %i.abv = fsub float %i.jd, %4
  %i.abw = fdiv float %i.abu, %i.abv
  %i.abx = fadd float %8, %i.abw
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.055.i443 = phi float [ %i.abx, %bb.fx ], [ %8, %bb.fw ] ; 4 uses
  %.054.i444 = phi float [ %i.abp, %bb.fx ], [ %4, %bb.fw ] ; 3 uses
  %i.aby = fcmp ogt float %i.jd, %i.abn
  br i1 %i.aby, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.abz = fsub float %i.iu, %.055.i443
  %i.aca = fsub float %i.abn, %i.jd
  %i.acb = fmul float %i.aca, %i.abz
  %i.acc = fsub float %i.jd, %.054.i444
  %i.acd = fdiv float %i.acb, %i.acc
  %i.ace = fadd float %i.acd, %i.iu
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.053.i445 = phi float [ %i.ace, %bb.fz ], [ %i.iu, %bb.fy ] ; 3 uses
  %.0.i446 = phi float [ %i.abn, %bb.fz ], [ %i.jd, %bb.fy ] ; 2 uses
  %i.acf = fcmp ugt float %.055.i443, %i.iv
  %i.acg = fcmp ugt float %.053.i445, %i.iv
  %or.cond.i447 = select i1 %i.acf, i1 true, i1 %i.acg
  br i1 %or.cond.i447, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ach = load float, ptr %i.ir, align 4, !tbaa !120
  %i.aci = fsub float %.0.i446, %.054.i444
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !74
  %i.acl = tail call float @llvm.fmuladd.f32(float %i.ach, float %i.aci, float %i.ack)
  store float %i.acl, ptr %i.acj, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit449

bb.gc:                                            ; preds = %bb.ga
  %i.acm = fcmp ult float %.055.i443, %i.iu
  %i.acn = fcmp ult float %.053.i445, %i.iu
  %or.cond62.i448 = select i1 %i.acm, i1 true, i1 %i.acn
  br i1 %or.cond62.i448, label %bb.gd, label %stbtt__handle_clipped_edge.exit449

bb.gd:                                            ; preds = %bb.gc
  %i.aco = load float, ptr %i.ir, align 4, !tbaa !120
  %i.acp = fsub float %.0.i446, %.054.i444
  %i.acq = fmul float %i.acp, %i.aco
  %i.acr = fsub float %.055.i443, %i.iv
  %i.acs = fsub float %.053.i445, %i.iv
  %i.act = fadd float %i.acr, %i.acs
  %i.acu = fmul float %i.act, 5.000000e-01
  %i.acv = fsub float 1.000000e+00, %i.acu
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !74
  %i.acy = tail call float @llvm.fmuladd.f32(float %i.acq, float %i.acv, float %i.acx)
  store float %i.acy, ptr %i.acw, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit449

stbtt__handle_clipped_edge.exit449:               ; preds = %bb.ft, %bb.fu, %bb.fv, %bb.gb, %bb.gc, %bb.gd
  %i.acz = fcmp oeq float %i.jd, %i.a
  br i1 %i.acz, label %stbtt__handle_clipped_edge.exit379, label %bb.ge

bb.ge:                                            ; preds = %stbtt__handle_clipped_edge.exit449
  %i.ada = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.adb = fcmp ogt float %i.jd, %i.ada
  br i1 %i.adb, label %stbtt__handle_clipped_edge.exit379, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.adc = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.add = fcmp olt float %i.a, %i.adc
  br i1 %i.add, label %stbtt__handle_clipped_edge.exit379, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ade = fcmp olt float %i.jd, %i.adc
  br i1 %i.ade, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.adf = fsub float %i.ei, %i.iu
  %i.adg = fsub float %i.adc, %i.jd
  %i.adh = fmul float %i.adf, %i.adg
  %i.adi = fsub float %i.a, %i.jd
  %i.adj = fdiv float %i.adh, %i.adi
  %i.adk = fadd float %i.adj, %i.iu
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.055.i450 = phi float [ %i.adk, %bb.gh ], [ %i.iu, %bb.gg ] ; 4 uses
  %.054.i451 = phi float [ %i.adc, %bb.gh ], [ %i.jd, %bb.gg ] ; 3 uses
  %i.adl = fcmp ogt float %i.a, %i.ada
  br i1 %i.adl, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.adm = fsub float %i.ei, %.055.i450
  %i.adn = fsub float %i.ada, %i.a
  %i.ado = fmul float %i.adn, %i.adm
  %i.adp = fsub float %i.a, %.054.i451
  %i.adq = fdiv float %i.ado, %i.adp
  %i.adr = fadd float %i.ei, %i.adq
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.053.i452 = phi float [ %i.adr, %bb.gj ], [ %i.ei, %bb.gi ] ; 3 uses
  %.0.i453 = phi float [ %i.ada, %bb.gj ], [ %i.a, %bb.gi ] ; 2 uses
  %i.ads = fcmp ugt float %.055.i450, %i.iv
  %i.adt = fcmp ugt float %.053.i452, %i.iv
  %or.cond.i454 = select i1 %i.ads, i1 true, i1 %i.adt
  br i1 %or.cond.i454, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.adu = load float, ptr %i.ir, align 4, !tbaa !120
  %i.adv = fsub float %.0.i453, %.054.i451
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !74
  %i.ady = tail call float @llvm.fmuladd.f32(float %i.adu, float %i.adv, float %i.adx)
  store float %i.ady, ptr %i.adw, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.gm:                                            ; preds = %bb.gk
  %i.adz = fcmp ult float %.055.i450, %i.iu
  %i.aea = fcmp ult float %.053.i452, %i.iu
  %or.cond62.i455 = select i1 %i.adz, i1 true, i1 %i.aea
  br i1 %or.cond62.i455, label %bb.gn, label %stbtt__handle_clipped_edge.exit379

bb.gn:                                            ; preds = %bb.gm
  %i.aeb = load float, ptr %i.ir, align 4, !tbaa !120
  %i.aec = fsub float %.0.i453, %.054.i451
  %i.aed = fmul float %i.aec, %i.aeb
  %i.aee = fsub float %.055.i450, %i.iv
  %i.aef = fsub float %.053.i452, %i.iv
  %i.aeg = fadd float %i.aee, %i.aef
  %i.aeh = fmul float %i.aeg, 5.000000e-01
  %i.aei = fsub float 1.000000e+00, %i.aeh
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !74
  %i.ael = tail call float @llvm.fmuladd.f32(float %i.aed, float %i.aei, float %i.aek)
  store float %i.ael, ptr %i.aej, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.go:                                            ; preds = %bb.fs
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit379, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aem = load float, ptr %i.em, align 4, !tbaa !122 ; 4 uses
  %i.aen = fcmp ogt float %4, %i.aem
  br i1 %i.aen, label %stbtt__handle_clipped_edge.exit379, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aeo = load float, ptr %i.el, align 8, !tbaa !121 ; 4 uses
  %i.aep = fcmp olt float %i.a, %i.aeo
  br i1 %i.aep, label %stbtt__handle_clipped_edge.exit379, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aeq = fcmp olt float %4, %i.aeo              ; 2 uses
  %i.aer = fsub float %i.aeo, %4
  %i.aes = fmul float %i.iq, %i.aer
  %i.aet = fdiv float %i.aes, %i.e
  %i.aeu = fadd float %8, %i.aet
  %.055.i457 = select i1 %i.aeq, float %i.aeu, float %8 ; 4 uses
  %.054.i458 = select i1 %i.aeq, float %i.aeo, float %4 ; 3 uses
  %i.aev = fcmp ogt float %i.a, %i.aem
  br i1 %i.aev, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aew = fsub float %i.ei, %.055.i457
  %i.aex = fsub float %i.aem, %i.a
  %i.aey = fmul float %i.aex, %i.aew
  %i.aez = fsub float %i.a, %.054.i458
  %i.afa = fdiv float %i.aey, %i.aez
  %i.afb = fadd float %i.ei, %i.afa
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.053.i459 = phi float [ %i.afb, %bb.gs ], [ %i.ei, %bb.gr ] ; 3 uses
  %.0.i460 = phi float [ %i.aem, %bb.gs ], [ %i.a, %bb.gr ] ; 2 uses
  %i.afc = fcmp ugt float %.055.i457, %i.iv
  %i.afd = fcmp ugt float %.053.i459, %i.iv
  %or.cond.i461 = select i1 %i.afc, i1 true, i1 %i.afd
  br i1 %or.cond.i461, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.afe = load float, ptr %i.ir, align 4, !tbaa !120
  %i.aff = fsub float %.0.i460, %.054.i458
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !74
  %i.afi = tail call float @llvm.fmuladd.f32(float %i.afe, float %i.aff, float %i.afh)
  store float %i.afi, ptr %i.afg, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

bb.gv:                                            ; preds = %bb.gt
  %i.afj = fcmp ult float %.055.i457, %i.iu
  %i.afk = fcmp ult float %.053.i459, %i.iu
  %or.cond62.i462 = select i1 %i.afj, i1 true, i1 %i.afk
  br i1 %or.cond62.i462, label %bb.gw, label %stbtt__handle_clipped_edge.exit379

bb.gw:                                            ; preds = %bb.gv
  %i.afl = load float, ptr %i.ir, align 4, !tbaa !120
  %i.afm = fsub float %.0.i460, %.054.i458
  %i.afn = fmul float %i.afm, %i.afl
  %i.afo = fsub float %.055.i457, %i.iv
  %i.afp = fsub float %.053.i459, %i.iv
  %i.afq = fadd float %i.afo, %i.afp
  %i.afr = fmul float %i.afq, 5.000000e-01
  %i.afs = fsub float 1.000000e+00, %i.afr
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !74
  %i.afv = tail call float @llvm.fmuladd.f32(float %i.afn, float %i.afs, float %i.afu)
  store float %i.afv, ptr %i.aft, align 4, !tbaa !74
  br label %stbtt__handle_clipped_edge.exit379

stbtt__handle_clipped_edge.exit379:               ; preds = %bb.gw, %bb.gv, %bb.gu, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gf, %bb.ge, %stbtt__handle_clipped_edge.exit449, %bb.fr, %bb.fq, %bb.fp, %bb.fj, %bb.fi, %stbtt__handle_clipped_edge.exit435, %bb.ev, %bb.eu, %bb.et, %bb.en, %bb.em, %stbtt__handle_clipped_edge.exit421, %bb.dz, %bb.dy, %bb.dx, %bb.dr, %bb.dq, %stbtt__handle_clipped_edge.exit407, %bb.dd, %bb.dc, %bb.db, %bb.cv, %bb.cu, %stbtt__handle_clipped_edge.exit393, %bb.bx, %bb.bw, %bb.bv, %bb.bp, %bb.bo, %stbtt__handle_clipped_edge.exit372
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %stbtt__handle_clipped_edge.exit351, label %bb.as, !llvm.loop !125

stbtt__handle_clipped_edge.exit351:               ; preds = %stbtt__handle_clipped_edge.exit379, %bb.ar, %bb.e, %bb.aj, %bb.ai, %bb.ah, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %._crit_edge, %bb.an, %bb.c
  %i.afw = load ptr, ptr %.0293469, align 8, !tbaa !123 ; 2 uses
  %.not = icmp eq ptr %i.afw, null
  br i1 %.not, label %._crit_edge473, label %bb.b, !llvm.loop !126

._crit_edge473:                                   ; preds = %stbtt__handle_clipped_edge.exit351, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbtt__rasterize_sorted_edges(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [129 x float], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = load i32, ptr %0, align 8, !tbaa !128    ; 4 uses
  %i.d = icmp sgt i32 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 %i.c, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.080 = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 6 uses
  %i.j = sext i32 %i.c to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %.080, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !130  ; 2 uses
  %i.n = add nsw i32 %i.m, %5
  %i.o = sitofp i32 %i.n to float
  %i.p = fadd float %i.o, 1.000000e+00
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [20 x i8], ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %i.p, ptr %i.s, align 4, !tbaa !113
  %i.t = icmp sgt i32 %i.m, 0
  br i1 %i.t, label %.lr.ph128, label %stbtt__hheap_cleanup.exit

.lr.ph128:                                        ; preds = %bb.c
  %i.u = sitofp i32 %4 to float
  %i.v = icmp ne i32 %5, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph128, %._crit_edge120
  %i.z = phi i32 [ %i.c, %.lr.ph128 ], [ %i.ch, %._crit_edge120 ] ; 5 uses
  %.0. = phi ptr [ null, %.lr.ph128 ], [ %.0..0..0..0.82, %._crit_edge120 ] ; 2 uses
  %.0126 = phi ptr [ %1, %.lr.ph128 ], [ %.1.lcssa, %._crit_edge120 ] ; 3 uses
  %.075125 = phi i32 [ %5, %.lr.ph128 ], [ %i.dj, %._crit_edge120 ] ; 2 uses
  %.076124 = phi i32 [ 0, %.lr.ph128 ], [ %i.dk, %._crit_edge120 ] ; 3 uses
  %.sroa.11.0123 = phi i32 [ 0, %.lr.ph128 ], [ %.sroa.11.1.lcssa, %._crit_edge120 ] ; 2 uses
  %.sroa.7.0122 = phi ptr [ null, %.lr.ph128 ], [ %.sroa.7.3.lcssa, %._crit_edge120 ] ; 2 uses
  %.sroa.0.0121 = phi ptr [ null, %.lr.ph128 ], [ %.sroa.0.1.lcssa, %._crit_edge120 ] ; 2 uses
  %i.aa = sitofp i32 %.075125 to float            ; 6 uses
  %i.ab = fadd float %i.aa, 1.000000e+00          ; 2 uses
  %i.ac = sext i32 %i.z to i64
  %i.ad = shl nsw i64 %i.ac, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.080, i8 0, i64 %i.ad, i1 false)
  %i.ae = add nsw i32 %i.z, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.ag, i1 false)
  %.not90102 = icmp eq ptr %.0., null
  br i1 %.not90102, label %.preheader101, label %.lr.ph

.preheader101:                                    ; preds = %bb.f, %bb.d
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0122, %bb.d ], [ %.sroa.7.2, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0126, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !113 ; 2 uses
  %i.aj = fcmp ugt float %i.ai, %i.ab
  br i1 %i.aj, label %._crit_edge, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader101
  %i.ak = icmp eq i32 %.076124, 0
  %or.cond = and i1 %i.v, %i.ak
  br label %bb.g

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %i.al = phi ptr [ %i.ar, %bb.f ], [ %.0., %bb.d ] ; 6 uses
  %.078104 = phi ptr [ %.179, %bb.f ], [ %i.a, %bb.d ] ; 2 uses
  %.sroa.7.1103 = phi ptr [ %.sroa.7.2, %bb.f ], [ %.sroa.7.0122, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.an = load float, ptr %i.am, align 4, !tbaa !122
  %i.ao = fcmp ugt float %i.an, %i.aa
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !123
  store ptr %i.ap, ptr %.078104, align 8, !tbaa !127
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !120
  store ptr %.sroa.7.1103, ptr %i.al, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.7.2 = phi ptr [ %.sroa.7.1103, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.179 = phi ptr [ %i.al, %.lr.ph ], [ %.078104, %bb.e ] ; 2 uses
  %i.ar = load ptr, ptr %.179, align 8, !tbaa !127 ; 2 uses
  %.not90 = icmp eq ptr %i.ar, null
  br i1 %.not90, label %.preheader101, label %.lr.ph, !llvm.loop !131

bb.g:                                             ; preds = %.lr.ph109, %stbtt__new_active.exit.thread
  %i.as = phi float [ %i.ai, %.lr.ph109 ], [ %i.ce, %stbtt__new_active.exit.thread ] ; 4 uses
  %.1108 = phi ptr [ %.0126, %.lr.ph109 ], [ %i.cc, %stbtt__new_active.exit.thread ] ; 6 uses
  %.sroa.11.1107 = phi i32 [ %.sroa.11.0123, %.lr.ph109 ], [ %.sroa.11.2, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.7.3106 = phi ptr [ %.sroa.7.1.lcssa, %.lr.ph109 ], [ %.sroa.7.4, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.0.1105 = phi ptr [ %.sroa.0.0121, %.lr.ph109 ], [ %.sroa.0.2, %stbtt__new_active.exit.thread ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1108, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !112 ; 4 uses
  %i.av = fcmp une float %i.as, %i.au
  br i1 %i.av, label %bb.h, label %stbtt__new_active.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %.sroa.7.3106, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %.sroa.7.3106, align 8, !tbaa !46
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ax = icmp eq i32 %.sroa.11.1107, 0
  br i1 %i.ax, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.j
  %i.ay = add nsw i32 %.sroa.11.1107, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #30 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %stbtt__new_active.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k
  store ptr %.sroa.0.1105, ptr %i.az, align 8, !tbaa !106
  br label %bb.l
end_hunk_0
begin_hunk_1_@stbtt_PackFontRange:bb.a
  store float %3, ptr %7, align 8, !tbaa !204
  %i.e = call i32 @stbtt_PackFontRanges(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbtt_GetScaledFontVMetrics(ptr noundef %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.stbtt_fontinfo, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %1)
  %i.b = call range(i32 0, 2) i32 @stbtt_InitFont_internal(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %i.a) ; 0 uses
  %i.c = fcmp ogt float %2, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i16
  %i.q = or disjoint i16 %i.m, %i.p               ; 2 uses
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = zext i8 %i.t to i16
  %i.v = shl nuw i16 %i.u, 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i16
  %i.z = or disjoint i16 %i.v, %i.y               ; 2 uses
  %i.aa = sext i16 %i.z to i32
  %i.ab = sub nsw i32 %i.r, %i.aa
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = fdiv float %2, %i.ac
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = fneg float %2
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 18
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 19
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = uitofp i16 %i.as to float
  %i.au = fdiv float %i.ae, %i.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !30
  %.phi.trans.insert13 = sext i32 %.pre to i64    ; 2 uses
  %.phi.trans.insert14 = getelementptr inbounds i8, ptr %i.ag, i64 %.phi.trans.insert13 ; 4 uses
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 4
  %.pre16 = load i8, ptr %.phi.trans.insert15, align 1, !tbaa !14
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 5
  %.pre18 = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !14
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 6
  %.pre20 = load i8, ptr %.phi.trans.insert19, align 1, !tbaa !14
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert14, i64 7
  %.pre22 = load i8, ptr %.phi.trans.insert21, align 1, !tbaa !14
  %.pre23 = zext i8 %.pre16 to i16
  %.pre25 = shl nuw i16 %.pre23, 8
  %.pre27 = zext i8 %.pre18 to i16
  %.pre29 = or disjoint i16 %.pre25, %.pre27
  %.pre31 = zext i8 %.pre20 to i16
  %.pre33 = shl nuw i16 %.pre31, 8
  %.pre35 = zext i8 %.pre22 to i16
  %.pre37 = or disjoint i16 %.pre33, %.pre35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi38 = phi i16 [ %.pre37, %bb.c ], [ %i.z, %bb.b ]
  %.pre-phi30 = phi i16 [ %.pre29, %bb.c ], [ %i.q, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert13, %bb.c ], [ %i.h, %bb.b ]
  %i.av = phi ptr [ %i.ag, %bb.c ], [ %i.e, %bb.b ]
  %i.aw = phi float [ %i.au, %bb.c ], [ %i.ad, %bb.b ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %.pre-phi ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = zext i8 %i.az to i16
  %i.bb = shl nuw i16 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14
  %i.be = zext i8 %i.bd to i16
  %i.bf = or disjoint i16 %i.bb, %i.be
  %i.bg = sitofp i16 %.pre-phi30 to float
  %i.bh = fmul float %i.aw, %i.bg
  store float %i.bh, ptr %3, align 4, !tbaa !74
  %i.bi = sitofp i16 %.pre-phi38 to float
  %i.bj = fmul float %i.aw, %i.bi
  store float %i.bj, ptr %4, align 4, !tbaa !74
  %i.bk = sitofp i16 %i.bf to float
  %i.bl = fmul float %i.aw, %i.bk
  store float %i.bl, ptr %5, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt_GetPackedQuad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [28 x i8], ptr %0, i64 %i.a ; 9 uses
  %.not = icmp eq i32 %7, 0
  %i.c = load float, ptr %4, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !230 ; 2 uses
  %i.f = fadd float %i.c, %i.e                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %5, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !231 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fadd <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.m)
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 2 uses
  store <2 x float> %i.p, ptr %6, align 4, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !74
  %i.t = fadd <2 x float> %i.s, %i.p              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fsub float %i.u, %i.e
  store float %i.v, ptr %i.r, align 4, !tbaa !232
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fsub float %i.w, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float %i.f, ptr %6, align 4, !tbaa !234
  %i.y = load float, ptr %5, align 4, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !231
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !235
  %i.ad = load float, ptr %4, align 4, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !236
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.ag, ptr %i.ah, align 4, !tbaa !232
  %i.ai = load float, ptr %5, align 4, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !219
  %i.al = fadd float %i.ai, %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.al, %bb.c ], [ %i.x, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.sink, ptr %i.am, align 4, !tbaa !237
  %i.an = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %2, i64 1
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = fdiv <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.as = load <2 x i16>, ptr %i.b, align 4, !tbaa !59
  %i.at = uitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ar, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load <2 x i16>, ptr %i.av, align 4, !tbaa !59
  %i.ay = uitofp <2 x i16> %i.ax to <2 x float>
  %i.az = fmul <2 x float> %i.ar, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 4, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !238
  %i.bc = load float, ptr %4, align 4, !tbaa !74
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %4, align 4, !tbaa !74
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @stbtt__ray_intersect_bezier(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #25 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !74
  %i.d = fneg float %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !74 ; 2 uses
  %i.h = load <2 x float>, ptr %3, align 4, !tbaa !74 ; 2 uses
  %i.i = load <2 x float>, ptr %4, align 4, !tbaa !74
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !74
  %i.k = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.l = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.m = shufflevector <4 x float> %i.k, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.n = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.o = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.p = insertelement <4 x float> poison, float %i.d, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = fmul <4 x float> %i.o, %i.q
  %i.s = shufflevector <2 x float> %i.g, <2 x float> %i.h, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.t = shufflevector <4 x float> %i.s, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.u = shufflevector <4 x float> %i.t, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.v = insertelement <4 x float> poison, float %i.a, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %i.x = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.w, <4 x float> %i.r) ; 5 uses
  %i.y = extractelement <4 x float> %i.x, i64 0   ; 2 uses
  %i.z = extractelement <4 x float> %i.x, i64 1   ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float -2.000000e+00, float %i.y)
  %i.ab = extractelement <4 x float> %i.x, i64 2
  %i.ac = fadd float %i.aa, %i.ab                 ; 4 uses
  %i.ad = fsub float %i.z, %i.y                   ; 6 uses
  %shift = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fsub <4 x float> %i.x, %shift
  %i.ae = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.af = fcmp une float %i.ac, 0.000000e+00
  br i1 %i.af, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ag = fneg float %i.ae
  %i.ah = fmul float %i.ac, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ah) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 0.000000e+00
  br i1 %i.aj, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ak = fdiv float -1.000000e+00, %i.ac         ; 2 uses
  %sqrtf = tail call float @sqrtf(float noundef %i.ai) #29 ; 3 uses
  %i.al = fadd float %i.ad, %sqrtf
  %i.am = fmul float %i.ak, %i.al                 ; 4 uses
  %i.an = fsub float %i.ad, %sqrtf
  %i.ao = fmul float %i.ak, %i.an                 ; 5 uses
  %i.ap = fcmp oge float %i.am, 0.000000e+00
  %i.aq = fcmp ole float %i.am, 1.000000e+00
  %or.cond.not.not.not = and i1 %i.ap, %i.aq      ; 3 uses
  %i.ar = fcmp ule float %sqrtf, 0.000000e+00
  %i.as = fcmp ult float %i.ao, 0.000000e+00
  %i.at = fcmp ugt float %i.ao, 1.000000e+00
  %i.au = or i1 %i.as, %i.at
  %or.cond118 = select i1 %i.ar, i1 true, i1 %i.au
  br i1 %or.cond118, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0107 = select i1 %or.cond.not.not.not, float %i.am, float %i.ao
  br label %.thread124

bb.e:                                             ; preds = %bb.a
  %i.av = fmul float %i.ad, -2.000000e+00
  %i.aw = fdiv float %i.ae, %i.av                 ; 3 uses
  %i.ax = fcmp ult float %i.aw, 0.000000e+00
  %i.ay = fcmp ugt float %i.aw, 1.000000e+00
  %or.cond119 = or i1 %i.ax, %i.ay
  br i1 %or.cond119, label %.thread, label %.thread124

bb.f:                                             ; preds = %bb.c
  br i1 %or.cond.not.not.not, label %.thread124, label %.thread

.thread124:                                       ; preds = %bb.d, %bb.e, %bb.f
  %.3130 = phi i1 [ false, %bb.f ], [ %or.cond.not.not.not, %bb.d ], [ false, %bb.e ]
  %.1106129 = phi float [ %i.ao, %bb.f ], [ %i.ao, %bb.d ], [ 0.000000e+00, %bb.e ] ; 5 uses
  %.3110128 = phi float [ %i.am, %bb.f ], [ %.0107, %bb.d ], [ %i.aw, %bb.e ] ; 5 uses
  %6 = load float, ptr %1, align 4, !tbaa !74     ; 3 uses
  %7 = load float, ptr %i.b, align 4, !tbaa !74   ; 3 uses
  %8 = fmul float %7, %7
  %i.az = tail call float @llvm.fmuladd.f32(float %6, float %6, float %8)
  %i.ba = fdiv float 1.000000e+00, %i.az          ; 2 uses
  %9 = fmul float %6, %i.ba                       ; 3 uses
  %10 = fmul float %7, %i.ba                      ; 3 uses
  %i.bb = load <2 x float>, ptr %2, align 4, !tbaa !74 ; 2 uses
  %i.bc = load <2 x float>, ptr %3, align 4, !tbaa !74 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 1, i32 3>
  %11 = insertelement <2 x float> poison, float %10, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %12
  %i.bf = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <2 x i32> <i32 0, i32 2>
  %13 = insertelement <2 x float> poison, float %9, i64 0
  %i.bg = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.bg, <2 x float> %i.be) ; 2 uses
  %i.bi = load float, ptr %4, align 4, !tbaa !74
  %i.bj = load float, ptr %i.e, align 4, !tbaa !74
  %i.bk = fmul float %10, %i.bj
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bi, float %9, float %i.bk)
  %i.bm = load float, ptr %0, align 4, !tbaa !74
  %i.bn = load float, ptr %i.f, align 4, !tbaa !74
  %i.bo = fmul float %10, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bm, float %9, float %i.bo)
  %i.bq = extractelement <2 x float> %i.bh, i64 0
  %i.br = extractelement <2 x float> %i.bh, i64 1 ; 3 uses
  %i.bs = fsub float %i.bq, %i.br                 ; 2 uses
  %i.bt = fsub float %i.bl, %i.br
  %i.bu = fsub float %i.br, %i.bp                 ; 2 uses
  %i.bv = tail call float @llvm.fmuladd.f32(float %.3110128, float -2.000000e+00, float 2.000000e+00)
  %i.bw = fmul float %.3110128, %i.bv
  %i.bx = fmul float %.3110128, %.3110128
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.bs, float %i.bu)
  %i.bz = insertelement <2 x float> poison, float %i.ac, i64 1 ; 2 uses
  %i.ca = insertelement <2 x float> %i.bz, float %i.bx, i64 0
  %i.cb = insertelement <2 x float> poison, float %i.bt, i64 0 ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %.3110128, i64 1
  %i.cd = insertelement <2 x float> poison, float %i.ad, i64 1 ; 2 uses
  %i.ce = insertelement <2 x float> %i.cd, float %i.by, i64 0
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cc, <2 x float> %i.ce)
  store <2 x float> %i.cf, ptr %5, align 4, !tbaa !74
  br i1 %.3130, label %bb.g, label %.thread

bb.g:                                             ; preds = %.thread124
  %i.cg = tail call float @llvm.fmuladd.f32(float %.1106129, float -2.000000e+00, float 2.000000e+00)
  %i.ch = fmul float %.1106129, %i.cg
  %i.ci = fmul float %.1106129, %.1106129
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bs, float %i.bu)
  %i.cl = insertelement <2 x float> %i.bz, float %i.ci, i64 0
  %i.cm = insertelement <2 x float> %i.cb, float %.1106129, i64 1
  %i.cn = insertelement <2 x float> %i.cd, float %i.ck, i64 0
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.cn)
  store <2 x float> %i.co, ptr %i.cj, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %bb.g, %.thread124, %bb.f
  %.1112 = phi i32 [ 0, %bb.f ], [ 2, %bb.g ], [ 1, %.thread124 ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.1112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !74
  %i.b = load float, ptr %1, align 4, !tbaa !74
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !74
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define i32 @stbtt__compute_crossings_x(float noundef %0, float noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = alloca [2 x float], align 8              ; 4 uses
  %i.e = alloca [2 x float], align 8              ; 4 uses
  %i.f = alloca [2 x [2 x float]], align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 1065353216, ptr %i.b, align 8
  %i.g = fpext float %1 to double
  %i.h = tail call double @fmod(double noundef %i.g, double noundef 1.000000e+00) #29 ; 2 uses
  %i.i = fcmp olt double %i.h, f0x3F847AE130000000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = fadd float %1, f0x3C23D70A
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp ogt double %i.h, f0x3FEFAE1490000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fadd float %1, f0xBC23D70A
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0150 = phi float [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %1, %bb.c ] ; 9 uses
  store float %0, ptr %i.a, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.0150, ptr %i.m, align 4, !tbaa !74
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0172 = phi i32 [ 0, %.lr.ph ], [ %.9, %.thread ] ; 11 uses
  %i.o = getelementptr inbounds nuw [14 x i8], ptr %3, i64 %indvars.iv ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i8, ptr %i.p, align 2, !tbaa !48
  switch i8 %i.q, label %.thread [
    i8 2, label %bb.g
    i8 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.o, i64 -14
  %i.s = load <2 x i16>, ptr %i.r, align 2, !tbaa !59 ; 3 uses
  %i.t = extractelement <2 x i16> %i.s, i64 1     ; 4 uses
  %i.u = extractelement <2 x i16> %i.s, i64 0
  %i.v = sext i16 %i.u to i32                     ; 2 uses
  %i.w = sext i16 %i.t to i32
  %i.x = load i16, ptr %i.o, align 2, !tbaa !51
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !52  ; 4 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i16 %i.t, %i.aa
  %i.ad = tail call i16 @llvm.smin.i16(i16 %i.t, i16 %i.aa)
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fcmp ogt float %.0150, %i.ae
  br i1 %i.af, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i16 @llvm.smax.i16(i16 %i.t, i16 %i.aa)
  %i.ah = sitofp i16 %i.ag to float
  %i.ai = fcmp olt float %.0150, %i.ah
  br i1 %i.ai, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.y)
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fcmp ogt float %0, %i.ak
  br i1 %i.al, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = sitofp <2 x i16> %i.s to <2 x float>    ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  %i.ao = fsub float %.0150, %i.an
  %i.ap = sub nsw i32 %i.ab, %i.w
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = sub nsw i32 %i.y, %i.v
  %i.at = sitofp i32 %i.as to float
  %i.au = extractelement <2 x float> %i.am, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.au)
  %i.aw = fcmp olt float %i.av, %0
  %i.ax = select i1 %i.ac, i32 1, i32 -1
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 0
  %.1 = add nsw i32 %i.ay, %.0172
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %i.o, i64 -14
  %i.ba = load <2 x i16>, ptr %i.az, align 2, !tbaa !59 ; 3 uses
  %i.bb = extractelement <2 x i16> %i.ba, i64 1   ; 6 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.be = load <2 x i16>, ptr %i.bd, align 2, !tbaa !59 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.o, align 2, !tbaa !59 ; 3 uses
  %i.bg = extractelement <2 x i16> %i.bf, i64 1   ; 6 uses
  %i.bh = extractelement <2 x i16> %i.be, i64 0
  %i.bi = extractelement <2 x i16> %i.bf, i64 0   ; 2 uses
  %i.bj = tail call i16 @llvm.smin.i16(i16 %i.bh, i16 %i.bi)
  %i.bk = extractelement <2 x i16> %i.ba, i64 0   ; 2 uses
  %. = tail call i16 @llvm.smin.i16(i16 %i.bj, i16 %i.bk)
  %i.bl = extractelement <2 x i16> %i.be, i64 1   ; 2 uses
  %i.bm = tail call i16 @llvm.smin.i16(i16 %i.bl, i16 %i.bg)
  %i.bn = tail call i16 @llvm.smin.i16(i16 %i.bb, i16 %i.bm)
  %i.bo = tail call i16 @llvm.smax.i16(i16 %i.bl, i16 %i.bg)
  %i.bp = tail call i16 @llvm.smax.i16(i16 %i.bb, i16 %i.bo)
  %i.bq = sitofp i16 %i.bn to float
  %i.br = fcmp ogt float %.0150, %i.bq
  %i.bs = sitofp i16 %i.bp to float
  %i.bt = fcmp olt float %.0150, %i.bs
  %or.cond162 = and i1 %i.br, %i.bt
  %i.bu = sitofp i16 %. to float
  %i.bv = fcmp ogt float %0, %i.bu
  %or.cond164 = select i1 %or.cond162, i1 %i.bv, i1 false
  br i1 %or.cond164, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bw = sitofp <2 x i16> %i.ba to <2 x float>   ; 3 uses
  store <2 x float> %i.bw, ptr %i.c, align 8, !tbaa !74
  %i.bx = sitofp <2 x i16> %i.be to <2 x float>   ; 3 uses
  store <2 x float> %i.bx, ptr %i.d, align 8, !tbaa !74
  %i.by = sitofp <2 x i16> %i.bf to <2 x float>   ; 3 uses
  store <2 x float> %i.by, ptr %i.e, align 8, !tbaa !74
  %i.bz = extractelement <2 x float> %i.bw, i64 0 ; 2 uses
  %i.ca = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
end_hunk_1
