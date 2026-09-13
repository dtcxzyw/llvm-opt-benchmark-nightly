Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__new_active:bb.a
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %stbtt__hheap_alloc.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d
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
  %.0293469 = phi ptr [ %3, %.lr.ph472 ], [ %i.afp, %stbtt__handle_clipped_edge.exit351 ] ; 19 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0293469, i64 8
  %i.j = load <2 x float>, ptr %i.i, align 8, !tbaa !80 ; 10 uses
  %i.k = extractelement <2 x float> %i.j, i64 0   ; 40 uses
  %i.l = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.m = fcmp oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp olt float %i.k, %i.b
  br i1 %i.n, label %bb.d, label %stbtt__handle_clipped_edge.exit351

bb.d:                                             ; preds = %bb.c
  %i.o = fcmp ult float %i.k, 0.000000e+00
  br i1 %i.o, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = fptosi float %i.k to i32                 ; 6 uses
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 2 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !102 ; 4 uses
  %i.s = fcmp ogt float %4, %i.r
  br i1 %i.s, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.u = load float, ptr %i.t, align 8, !tbaa !101 ; 4 uses
  %i.v = fcmp olt float %i.a, %i.u
  br i1 %i.v, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = fcmp olt float %4, %i.u
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop = fsub <2 x float> %i.j, %i.j
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = fsub float %i.u, %4
  %i.z = fmul float %i.x, %i.y
  %i.aa = fdiv float %i.z, %i.e
  %i.ab = fadd float %i.k, %i.aa
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.055.i = phi float [ %i.ab, %bb.i ], [ %i.k, %bb.h ] ; 4 uses
  %.054.i = phi float [ %i.u, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %i.ac = fcmp ogt float %i.a, %i.r
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = fsub float %i.k, %.055.i
  %i.ae = fsub float %i.r, %i.a
  %i.af = fmul float %i.ae, %i.ad
  %i.ag = fsub float %i.a, %.054.i
  %i.ah = fdiv float %i.af, %i.ag
  %i.ai = fadd float %i.k, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.053.i = phi float [ %i.ai, %bb.k ], [ %i.k, %bb.j ] ; 3 uses
  %.0.i = phi float [ %i.r, %bb.k ], [ %i.a, %bb.j ] ; 2 uses
  %i.aj = sitofp i32 %i.p to float                ; 4 uses
  %i.ak = fcmp ugt float %.055.i, %i.aj
  %i.al = fcmp ugt float %.053.i, %i.aj
  %or.cond.i = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !100
  %i.ao = fsub float %.0.i, %.054.i
  %5 = zext nneg i32 %i.p to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !80
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.an, float %i.ao, float %i.aq)
  store float %i.ar, ptr %i.ap, align 4, !tbaa !80
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.as = add nuw nsw i32 %i.p, 1
  %i.at = sitofp i32 %i.as to float               ; 2 uses
  %i.au = fcmp ult float %.055.i, %i.at
  %i.av = fcmp ult float %.053.i, %i.at
  %or.cond62.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond62.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !100
  %i.ay = fsub float %.0.i, %.054.i
  %i.az = fmul float %i.ay, %i.ax
  %i.ba = fsub float %.055.i, %i.aj
  %i.bb = fsub float %.053.i, %i.aj
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = fmul float %i.bc, 5.000000e-01
  %i.be = fsub float 1.000000e+00, %i.bd
  %6 = zext nneg i32 %i.p to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !80
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.az, float %i.be, float %i.bg)
  store float %i.bh, ptr %i.bf, align 4, !tbaa !80
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.m, %bb.n, %bb.o
  %i.bi = add nuw nsw i32 %i.p, 1                 ; 3 uses
  %i.bj = load float, ptr %i.q, align 4, !tbaa !102 ; 4 uses
  %i.bk = fcmp ogt float %4, %i.bj
  br i1 %i.bk, label %stbtt__handle_clipped_edge.exit351, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !101 ; 4 uses
  %i.bn = fcmp olt float %i.a, %i.bm
  br i1 %i.bn, label %stbtt__handle_clipped_edge.exit351, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = fcmp olt float %4, %i.bm
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %foldExtExtBinop561 = fsub <2 x float> %i.j, %i.j
  %i.bp = extractelement <2 x float> %foldExtExtBinop561, i64 0
  %i.bq = fsub float %i.bm, %4
  %i.br = fmul float %i.bp, %i.bq
  %i.bs = fdiv float %i.br, %i.e
  %i.bt = fadd float %i.k, %i.bs
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.055.i345 = phi float [ %i.bt, %bb.s ], [ %i.k, %bb.r ] ; 4 uses
  %.054.i346 = phi float [ %i.bm, %bb.s ], [ %4, %bb.r ] ; 3 uses
  %i.bu = fcmp ogt float %i.a, %i.bj
  br i1 %i.bu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bv = fsub float %i.k, %.055.i345
  %i.bw = fsub float %i.bj, %i.a
  %i.bx = fmul float %i.bw, %i.bv
  %i.by = fsub float %i.a, %.054.i346
  %i.bz = fdiv float %i.bx, %i.by
  %i.ca = fadd float %i.k, %i.bz
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.053.i347 = phi float [ %i.ca, %bb.u ], [ %i.k, %bb.t ] ; 3 uses
  %.0.i348 = phi float [ %i.bj, %bb.u ], [ %i.a, %bb.t ] ; 2 uses
  %i.cb = sitofp i32 %i.bi to float               ; 4 uses
  %i.cc = fcmp ugt float %.055.i345, %i.cb
  %i.cd = fcmp ugt float %.053.i347, %i.cb
  %or.cond.i349 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond.i349, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !100
  %i.cg = fsub float %.0.i348, %.054.i346
  %7 = zext nneg i32 %i.bi to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %7 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !80
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.ci)
  store float %i.cj, ptr %i.ch, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.x:                                             ; preds = %bb.v
  %i.ck = add nuw nsw i32 %i.p, 2
  %i.cl = sitofp i32 %i.ck to float               ; 2 uses
  %i.cm = fcmp ult float %.055.i345, %i.cl
  %i.cn = fcmp ult float %.053.i347, %i.cl
  %or.cond62.i350 = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond62.i350, label %bb.y, label %stbtt__handle_clipped_edge.exit351

bb.y:                                             ; preds = %bb.x
  %i.co = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cp = load float, ptr %i.co, align 4, !tbaa !100
  %i.cq = fsub float %.0.i348, %.054.i346
  %i.cr = fmul float %i.cq, %i.cp
  %i.cs = fsub float %.055.i345, %i.cb
  %i.ct = fsub float %.053.i347, %i.cb
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = fmul float %i.cu, 5.000000e-01
  %i.cw = fsub float 1.000000e+00, %i.cv
  %8 = zext nneg i32 %i.bi to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %8 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !80
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cw, float %i.cy)
  store float %i.cz, ptr %i.cx, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.z:                                             ; preds = %bb.d
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %.0293469, i64 28
  %i.db = load float, ptr %i.da, align 4, !tbaa !102 ; 4 uses
  %i.dc = fcmp ogt float %4, %i.db
  br i1 %i.dc, label %stbtt__handle_clipped_edge.exit351, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.de = load float, ptr %i.dd, align 8, !tbaa !101 ; 4 uses
  %i.df = fcmp olt float %i.a, %i.de
  br i1 %i.df, label %stbtt__handle_clipped_edge.exit351, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = fcmp olt float %4, %i.de
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %foldExtExtBinop563 = fsub <2 x float> %i.j, %i.j
  %i.dh = extractelement <2 x float> %foldExtExtBinop563, i64 0
  %i.di = fsub float %i.de, %4
  %i.dj = fmul float %i.dh, %i.di
  %i.dk = fdiv float %i.dj, %i.e
  %i.dl = fadd float %i.k, %i.dk
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.055.i352 = phi float [ %i.dl, %bb.ad ], [ %i.k, %bb.ac ] ; 4 uses
  %.054.i353 = phi float [ %i.de, %bb.ad ], [ %4, %bb.ac ] ; 3 uses
  %i.dm = fcmp ogt float %i.a, %i.db
  br i1 %i.dm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dn = fsub float %i.k, %.055.i352
  %i.do = fsub float %i.db, %i.a
  %i.dp = fmul float %i.do, %i.dn
  %i.dq = fsub float %i.a, %.054.i353
  %i.dr = fdiv float %i.dp, %i.dq
  %i.ds = fadd float %i.k, %i.dr
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i354 = phi float [ %i.ds, %bb.af ], [ %i.k, %bb.ae ] ; 3 uses
  %.0.i355 = phi float [ %i.db, %bb.af ], [ %i.a, %bb.ae ] ; 2 uses
  %i.dt = fcmp ugt float %.055.i352, 0.000000e+00
  %i.du = fcmp ugt float %.053.i354, 0.000000e+00
  %or.cond.i356 = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i356, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !100
  %i.dx = fsub float %.0.i355, %.054.i353
  %i.dy = load float, ptr %i.f, align 4, !tbaa !80
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float %i.dy)
  store float %i.dz, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ai:                                            ; preds = %bb.ag
  %i.ea = fcmp ult float %.055.i352, 1.000000e+00
  %i.eb = fcmp ult float %.053.i354, 1.000000e+00
  %or.cond62.i357 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond62.i357, label %bb.aj, label %stbtt__handle_clipped_edge.exit351

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !100
  %i.ee = fsub float %.0.i355, %.054.i353
  %i.ef = fmul float %i.ee, %i.ed
  %i.eg = fadd float %.055.i352, %.053.i354
  %i.eh = fmul float %i.eg, 5.000000e-01
  %i.ei = fsub float 1.000000e+00, %i.eh
  %i.ej = load float, ptr %i.f, align 4, !tbaa !80
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.ei, float %i.ej)
  store float %i.ek, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ak:                                            ; preds = %bb.b
  %i.el = fadd float %i.l, %i.k                   ; 34 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0293469, i64 16
  %i.en = load float, ptr %i.em, align 8, !tbaa !97 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0293469, i64 24 ; 16 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 15 uses
  %i.eq = load <2 x float>, ptr %i.eo, align 8, !tbaa !80 ; 3 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0 ; 2 uses
  %i.es = fcmp ogt float %i.er, %4                ; 2 uses
  %i.et = fsub <2 x float> %i.eq, %i.h
  %i.eu = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ev = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.et, <2 x float> %i.ev) ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0
  %.0305 = select i1 %i.es, float %i.ex, float %i.k ; 7 uses
  %.0301 = select i1 %i.es, float %i.er, float %4 ; 3 uses
  %i.ey = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.ez = fcmp olt float %i.ey, %i.a              ; 2 uses
  %i.fa = extractelement <2 x float> %i.ew, i64 1
  %.0303 = select i1 %i.ez, float %i.fa, float %i.el ; 7 uses
  %.0299 = select i1 %i.ez, float %i.ey, float %i.a ; 3 uses
  %i.fb = fcmp oge float %.0305, 0.000000e+00
  %i.fc = fcmp oge float %.0303, 0.000000e+00
  %or.cond = select i1 %i.fb, i1 %i.fc, i1 false
  br i1 %or.cond, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.fd = fcmp olt float %.0305, %i.b
  %i.fe = fcmp olt float %.0303, %i.b
  %or.cond338 = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond338, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ff = fptosi float %.0305 to i32              ; 5 uses
  %i.fg = fptosi float %.0303 to i32              ; 3 uses
  %i.fh = icmp eq i32 %i.ff, %i.fg
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fi = fsub float %.0299, %.0301
  %i.fj = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !100
  %i.fl = fmul float %i.fi, %i.fk                 ; 2 uses
  %i.fm = sitofp i32 %i.ff to float
  %i.fn = fadd float %i.fm, 1.000000e+00          ; 2 uses
  %i.fo = fsub float %i.fn, %.0305
  %i.fp = fsub float %i.fn, %.0303
  %i.fq = fadd float %i.fo, %i.fp
  %i.fr = fmul float %i.fq, 5.000000e-01
  %i.fs = fmul float %i.fr, %i.fl
  %9 = zext nneg i32 %i.ff to i64                 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %9 ; 2 uses
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !80
  %i.fv = fadd float %i.fu, %i.fs
  store float %i.fv, ptr %i.ft, align 4, !tbaa !80
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %9 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !80
  %i.fy = fadd float %i.fl, %i.fx
  store float %i.fy, ptr %i.fw, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ao:                                            ; preds = %bb.am
  %i.fz = fcmp ogt float %.0305, %.0303
  br i1 %i.fz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ga = fsub float %4, %.0301
  %i.gb = fadd float %i.a, %i.ga
  %i.gc = fsub float %4, %.0299
  %i.gd = fadd float %i.a, %i.gc
  %i.ge = fneg float %i.en
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre-phi479 = phi i32 [ %i.ff, %bb.ap ], [ %i.fg, %bb.ao ] ; 7 uses
  %.pre-phi = phi i32 [ %i.fg, %bb.ap ], [ %i.ff, %bb.ao ] ; 4 uses
  %.0307 = phi float [ %i.el, %bb.ap ], [ %i.k, %bb.ao ] ; 2 uses
  %.1306 = phi float [ %.0303, %bb.ap ], [ %.0305, %bb.ao ]
  %.1304 = phi float [ %.0305, %bb.ap ], [ %.0303, %bb.ao ]
  %.1302 = phi float [ %i.gd, %bb.ap ], [ %.0301, %bb.ao ] ; 2 uses
  %.1300 = phi float [ %i.gb, %bb.ap ], [ %.0299, %bb.ao ] ; 2 uses
  %.0298 = phi float [ %i.ge, %bb.ap ], [ %i.en, %bb.ao ] ; 3 uses
  %i.gf = add nuw nsw i32 %.pre-phi, 1            ; 3 uses
  %10 = uitofp nneg i32 %i.gf to float            ; 2 uses
  %11 = fsub float %10, %.0307
  %12 = tail call float @llvm.fmuladd.f32(float %.0298, float %11, float %4) ; 2 uses
  %13 = uitofp nneg i32 %.pre-phi479 to float     ; 3 uses
  %14 = fsub float %13, %.0307
  %15 = tail call float @llvm.fmuladd.f32(float %.0298, float %14, float %4) ; 2 uses
  %i.gg = fcmp ogt float %12, %i.a
  %.0296 = select i1 %i.gg, float %i.a, float %12 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !100 ; 4 uses
  %i.gj = fsub float %.0296, %.1302
  %i.gk = fmul float %i.gi, %i.gj                 ; 5 uses
  %i.gl = fsub nnan float %10, %.1306
  %i.gm = fmul float %i.gl, %i.gk
  %i.gn = fmul float %i.gm, 5.000000e-01
  %16 = zext nneg i32 %.pre-phi to i64            ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %16 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !80
  %i.gq = fadd float %i.gp, %i.gn
  store float %i.gq, ptr %i.go, align 4, !tbaa !80
  %i.gr = fcmp ogt float %15, %i.a                ; 2 uses
  %i.gs = fsub float %i.a, %.0296
  %i.gt = sub nsw i32 %.pre-phi479, %i.gf
  %i.gu = sitofp i32 %i.gt to float
  %i.gv = fdiv float %i.gs, %i.gu
  %.1 = select i1 %i.gr, float %i.gv, float %.0298
  %.0295 = select i1 %i.gr, float %i.a, float %15
  %i.gw = fmul float %i.gi, %.1                   ; 4 uses
  %i.gx = icmp slt i32 %i.gf, %.pre-phi479
  br i1 %i.gx, label %.lr.ph467, label %._crit_edge

.lr.ph467:                                        ; preds = %bb.aq
  %i.gy = fmul float %i.gw, 5.000000e-01          ; 3 uses
  %i.gz = add nuw nsw i64 %16, 1                  ; 2 uses
  %i.ha = add nsw i32 %.pre-phi479, -2
  %i.hb = sub nsw i32 %.pre-phi, %.pre-phi479
  %i.hc = and i32 %i.hb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.hc, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467
  %i.hd = fadd float %i.gy, %i.gk
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gz ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !80
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !80
  %i.hh = fadd float %i.gw, %i.gk                 ; 2 uses
  %indvars.iv.next476.prol = add nuw nsw i64 %16, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467
  %indvars.iv475.unr = phi i64 [ %i.gz, %.lr.ph467 ], [ %indvars.iv.next476.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.unr = phi float [ %i.gk, %.lr.ph467 ], [ %i.hh, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph467 ], [ %i.hh, %.prol.loopexit.unr-lcssa ]
  %i.hi = icmp eq i32 %i.ha, %.pre-phi
  br i1 %i.hi, label %._crit_edge, label %.lr.ph467.new

.lr.ph467.new:                                    ; preds = %.prol.loopexit, %.lr.ph467.new
  %indvars.iv475 = phi i64 [ %indvars.iv.next476.1, %.lr.ph467.new ], [ %indvars.iv475.unr, %.prol.loopexit ] ; 3 uses
  %.0294466 = phi float [ %i.ht, %.lr.ph467.new ], [ %.0294466.unr, %.prol.loopexit ] ; 2 uses
  %i.hj = fadd float %i.gy, %.0294466
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475 ; 2 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !80
  %i.hm = fadd float %i.hj, %i.hl
  store float %i.hm, ptr %i.hk, align 4, !tbaa !80
  %i.hn = fadd float %i.gw, %.0294466             ; 2 uses
  %i.ho = fadd float %i.gy, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !80
  %i.hs = fadd float %i.ho, %i.hr
  store float %i.hs, ptr %i.hq, align 4, !tbaa !80
  %i.ht = fadd float %i.gw, %i.hn                 ; 2 uses
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475, 2 ; 2 uses
  %lftr.wideiv.1 = trunc nuw i64 %indvars.iv.next476.1 to i32
  %17 = icmp sgt i32 %.pre-phi479, %lftr.wideiv.1
  br i1 %17, label %.lr.ph467.new, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph467.new, %bb.aq
  %.0294.lcssa = phi float [ %i.gk, %bb.aq ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ht, %.lr.ph467.new ]
  %i.hu = fsub float %.1300, %.0295
  %i.hv = fadd float %13, 1.000000e+00            ; 2 uses
  %i.hw = fsub nnan float %i.hv, %13
  %i.hx = fsub float %i.hv, %.1304
  %i.hy = fadd float %i.hw, %i.hx
  %i.hz = fmul float %i.hy, 5.000000e-01
  %i.ia = fmul float %i.hz, %i.hu
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.ia, float %.0294.lcssa)
  %18 = zext nneg i32 %.pre-phi479 to i64         ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %18 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !80
  %i.ie = fadd float %i.ib, %i.id
  store float %i.ie, ptr %i.ic, align 4, !tbaa !80
  %i.if = fsub float %.1300, %.1302
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %18 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !80
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.if, float %i.ih)
  store float %i.ii, ptr %i.ig, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ar:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.c, label %.lr.ph, label %stbtt__handle_clipped_edge.exit351

.lr.ph:                                           ; preds = %bb.ar
  %i.ij = fsub float %i.el, %i.k
  %i.ik = getelementptr inbounds nuw i8, ptr %.0293469, i64 20 ; 30 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %stbtt__handle_clipped_edge.exit379
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %stbtt__handle_clipped_edge.exit379 ] ; 32 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.il = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.im = trunc nuw nsw i64 %indvars.iv to i32
  %i.in = uitofp nneg i32 %i.il to float          ; 60 uses
  %i.io = uitofp nneg i32 %i.im to float          ; 90 uses
  %i.ip = insertelement <2 x float> poison, float %i.io, i64 0
  %i.iq = insertelement <2 x float> %i.ip, float %i.in, i64 1
  %i.ir = fsub <2 x float> %i.iq, %i.ev           ; 7 uses
  %i.is = fdiv <2 x float> %i.ir, %i.eu           ; 2 uses
  %i.it = extractelement <2 x float> %i.is, i64 0
  %i.iu = fadd float %4, %i.it                    ; 52 uses
  %i.iv = extractelement <2 x float> %i.is, i64 1
  %i.iw = fadd float %4, %i.iv                    ; 52 uses
  %i.ix = fcmp olt float %i.k, %i.io              ; 2 uses
  %i.iy = fcmp ogt float %i.el, %i.in             ; 2 uses
  %or.cond339 = select i1 %i.ix, i1 %i.iy, i1 false
  br i1 %or.cond339, label %bb.at, label %bb.by

bb.at:                                            ; preds = %bb.as
  %i.iz = fcmp oeq float %4, %i.iu
  br i1 %i.iz, label %stbtt__handle_clipped_edge.exit365, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ja = load float, ptr %i.ep, align 4, !tbaa !102 ; 4 uses
  %i.jb = fcmp ogt float %4, %i.ja
  br i1 %i.jb, label %stbtt__handle_clipped_edge.exit365, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jc = load float, ptr %i.eo, align 8, !tbaa !101 ; 4 uses
  %i.jd = fcmp olt float %i.iu, %i.jc
  br i1 %i.jd, label %stbtt__handle_clipped_edge.exit365, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.je = fcmp olt float %4, %i.jc
  br i1 %i.je, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jf = fsub float %i.jc, %4
  %i.jg = extractelement <2 x float> %i.ir, i64 0
  %i.jh = fmul float %i.jg, %i.jf
  %i.ji = fsub float %i.iu, %4
  %i.jj = fdiv float %i.jh, %i.ji
  %i.jk = fadd float %i.k, %i.jj
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.055.i359 = phi float [ %i.jk, %bb.ax ], [ %i.k, %bb.aw ] ; 4 uses
  %.054.i360 = phi float [ %i.jc, %bb.ax ], [ %4, %bb.aw ] ; 3 uses
  %i.jl = fcmp ogt float %i.iu, %i.ja
  br i1 %i.jl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jm = fsub float %i.io, %.055.i359
  %i.jn = fsub float %i.ja, %i.iu
  %i.jo = fmul float %i.jn, %i.jm
  %i.jp = fsub float %i.iu, %.054.i360
  %i.jq = fdiv float %i.jo, %i.jp
  %i.jr = fadd float %i.jq, %i.io
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.053.i361 = phi float [ %i.jr, %bb.az ], [ %i.io, %bb.ay ] ; 3 uses
  %.0.i362 = phi float [ %i.ja, %bb.az ], [ %i.iu, %bb.ay ] ; 2 uses
  %i.js = fcmp ugt float %.055.i359, %i.io
  %i.jt = fcmp ugt float %.053.i361, %i.io
  %or.cond.i363 = select i1 %i.js, i1 true, i1 %i.jt
  br i1 %or.cond.i363, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ju = load float, ptr %i.ik, align 4, !tbaa !100
  %i.jv = fsub float %.0.i362, %.054.i360
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !80
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.jv, float %i.jx)
  store float %i.jy, ptr %i.jw, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

bb.bc:                                            ; preds = %bb.ba
  %i.jz = fcmp ult float %.055.i359, %i.in
  %i.ka = fcmp ult float %.053.i361, %i.in
  %or.cond62.i364 = select i1 %i.jz, i1 true, i1 %i.ka
  br i1 %or.cond62.i364, label %bb.bd, label %stbtt__handle_clipped_edge.exit365

bb.bd:                                            ; preds = %bb.bc
  %i.kb = load float, ptr %i.ik, align 4, !tbaa !100
  %i.kc = fsub float %.0.i362, %.054.i360
  %i.kd = fmul float %i.kc, %i.kb
  %i.ke = fsub float %.055.i359, %i.io
  %i.kf = fsub float %.053.i361, %i.io
  %i.kg = fadd float %i.ke, %i.kf
  %i.kh = fmul float %i.kg, 5.000000e-01
  %i.ki = fsub float 1.000000e+00, %i.kh
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !80
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kd, float %i.ki, float %i.kk)
  store float %i.kl, ptr %i.kj, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

stbtt__handle_clipped_edge.exit365:               ; preds = %bb.at, %bb.au, %bb.av, %bb.bb, %bb.bc, %bb.bd
  %i.km = fcmp oeq float %i.iu, %i.iw
  br i1 %i.km, label %stbtt__handle_clipped_edge.exit372, label %bb.be

bb.be:                                            ; preds = %stbtt__handle_clipped_edge.exit365
  %i.kn = load float, ptr %i.ep, align 4, !tbaa !102 ; 4 uses
  %i.ko = fcmp ogt float %i.iu, %i.kn
  br i1 %i.ko, label %stbtt__handle_clipped_edge.exit372, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kp = load float, ptr %i.eo, align 8, !tbaa !101 ; 4 uses
  %i.kq = fcmp olt float %i.iw, %i.kp
  br i1 %i.kq, label %stbtt__handle_clipped_edge.exit372, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kr = fcmp olt float %i.iu, %i.kp
  br i1 %i.kr, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ks = fsub nnan float %i.in, %i.io
  %i.kt = fsub float %i.kp, %i.iu
  %i.ku = fmul float %i.ks, %i.kt
  %i.kv = fsub float %i.iw, %i.iu
  %i.kw = fdiv float %i.ku, %i.kv
  %i.kx = fadd float %i.kw, %i.io
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.055.i366 = phi float [ %i.kx, %bb.bh ], [ %i.io, %bb.bg ] ; 4 uses
  %.054.i367 = phi float [ %i.kp, %bb.bh ], [ %i.iu, %bb.bg ] ; 3 uses
  %i.ky = fcmp ogt float %i.iw, %i.kn
  br i1 %i.ky, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.kz = fsub float %i.in, %.055.i366
  %i.la = fsub float %i.kn, %i.iw
  %i.lb = fmul float %i.la, %i.kz
  %i.lc = fsub float %i.iw, %.054.i367
  %i.ld = fdiv float %i.lb, %i.lc
  %i.le = fadd float %i.ld, %i.in
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.053.i368 = phi float [ %i.le, %bb.bj ], [ %i.in, %bb.bi ] ; 3 uses
  %.0.i369 = phi float [ %i.kn, %bb.bj ], [ %i.iw, %bb.bi ] ; 2 uses
  %i.lf = fcmp ugt float %.055.i366, %i.io
  %i.lg = fcmp ugt float %.053.i368, %i.io
  %or.cond.i370 = select i1 %i.lf, i1 true, i1 %i.lg
  br i1 %or.cond.i370, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lh = load float, ptr %i.ik, align 4, !tbaa !100
  %i.li = fsub float %.0.i369, %.054.i367
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !80
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.li, float %i.lk)
  store float %i.ll, ptr %i.lj, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

bb.bm:                                            ; preds = %bb.bk
  %i.lm = fcmp ult float %.055.i366, %i.in
  %i.ln = fcmp ult float %.053.i368, %i.in
  %or.cond62.i371 = select i1 %i.lm, i1 true, i1 %i.ln
  br i1 %or.cond62.i371, label %bb.bn, label %stbtt__handle_clipped_edge.exit372

bb.bn:                                            ; preds = %bb.bm
  %i.lo = load float, ptr %i.ik, align 4, !tbaa !100
  %i.lp = fsub float %.0.i369, %.054.i367
  %i.lq = fmul float %i.lp, %i.lo
  %i.lr = fsub float %.055.i366, %i.io
  %i.ls = fsub float %.053.i368, %i.io
  %i.lt = fadd float %i.lr, %i.ls
  %i.lu = fmul float %i.lt, 5.000000e-01
  %i.lv = fsub float 1.000000e+00, %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !80
  %i.ly = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.lv, float %i.lx)
  store float %i.ly, ptr %i.lw, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

stbtt__handle_clipped_edge.exit372:               ; preds = %stbtt__handle_clipped_edge.exit365, %bb.be, %bb.bf, %bb.bl, %bb.bm, %bb.bn
  %i.lz = fcmp oeq float %i.iw, %i.a
  br i1 %i.lz, label %stbtt__handle_clipped_edge.exit379, label %bb.bo

bb.bo:                                            ; preds = %stbtt__handle_clipped_edge.exit372
  %i.ma = load float, ptr %i.ep, align 4, !tbaa !102 ; 4 uses
  %i.mb = fcmp ogt float %i.iw, %i.ma
end_hunk_0
begin_hunk_1_@stbtt__rasterize_sorted_edges:bb.a
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
  %.075125 = phi i32 [ %5, %.lr.ph128 ], [ %i.dh, %._crit_edge120 ] ; 2 uses
  %.076124 = phi i32 [ 0, %.lr.ph128 ], [ %i.di, %._crit_edge120 ] ; 3 uses
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
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !93 ; 2 uses
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
  %i.an = load float, ptr %i.am, align 4, !tbaa !102
  %i.ao = fcmp ugt float %i.an, %i.aa
  br i1 %i.ao, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !103
  store ptr %i.ap, ptr %.078104, align 8, !tbaa !195
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store float 0.000000e+00, ptr %i.aq, align 4, !tbaa !100
  store ptr %.sroa.7.1103, ptr %i.al, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.7.2 = phi ptr [ %.sroa.7.1103, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.179 = phi ptr [ %i.al, %.lr.ph ], [ %.078104, %bb.e ] ; 2 uses
  %i.ar = load ptr, ptr %.179, align 8, !tbaa !195 ; 2 uses
  %.not90 = icmp eq ptr %i.ar, null
  br i1 %.not90, label %.preheader101, label %.lr.ph, !llvm.loop !190

bb.g:                                             ; preds = %.lr.ph109, %stbtt__new_active.exit.thread
  %i.as = phi float [ %i.ai, %.lr.ph109 ], [ %i.ce, %stbtt__new_active.exit.thread ] ; 4 uses
  %.1108 = phi ptr [ %.0126, %.lr.ph109 ], [ %i.cc, %stbtt__new_active.exit.thread ] ; 6 uses
  %.sroa.11.1107 = phi i32 [ %.sroa.11.0123, %.lr.ph109 ], [ %.sroa.11.2, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.7.3106 = phi ptr [ %.sroa.7.1.lcssa, %.lr.ph109 ], [ %.sroa.7.4, %stbtt__new_active.exit.thread ] ; 4 uses
  %.sroa.0.1105 = phi ptr [ %.sroa.0.0121, %.lr.ph109 ], [ %.sroa.0.2, %stbtt__new_active.exit.thread ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1108, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !92 ; 4 uses
  %i.av = fcmp une float %i.as, %i.au
  br i1 %i.av, label %bb.h, label %stbtt__new_active.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %.sroa.7.3106, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %.sroa.7.3106, align 8, !tbaa !61
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
  store ptr %.sroa.0.1105, ptr %i.az, align 8, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i, %._crit_edge.i.i
  %.sroa.0.4 = phi ptr [ %i.az, %.thread.i.i ], [ %.sroa.0.1105, %._crit_edge.i.i ] ; 2 uses
  %i.bb = phi i32 [ 799, %.thread.i.i ], [ %i.ay, %._crit_edge.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 8
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.0.3 = phi ptr [ %.sroa.0.4, %bb.l ], [ %.sroa.0.1105, %bb.i ]
  %.sroa.7.5 = phi ptr [ null, %bb.l ], [ %i.aw, %bb.i ]
  %.sroa.11.3 = phi i32 [ %i.bb, %bb.l ], [ %.sroa.11.1107, %bb.i ]
  %.1.i.ph.i = phi ptr [ %i.bf, %bb.l ], [ %.sroa.7.3106, %bb.i ] ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1108, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !90
  %i.bi = load float, ptr %.1108, align 4, !tbaa !91 ; 2 uses
  %i.bj = fsub float %i.bh, %i.bi
  %i.bk = fsub float %i.au, %i.as
  %i.bl = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 12
  store float %i.bl, ptr %i.bm, align 4, !tbaa !96
  %i.bn = fcmp une float %i.bl, 0.000000e+00
  %i.bo = fdiv float 1.000000e+00, %i.bl
  %i.bp = select i1 %i.bn, float %i.bo, float 0.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 16
  store float %i.bp, ptr %i.bq, align 8, !tbaa !97
  %i.br = fsub float %i.aa, %i.as
  %i.bs = call float @llvm.fmuladd.f32(float %i.bl, float %i.br, float %i.bi)
  %i.bt = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 8
  %i.bu = fsub float %i.bs, %i.u
  store float %i.bu, ptr %i.bt, align 8, !tbaa !98
  %i.bv = getelementptr inbounds nuw i8, ptr %.1108, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !99
  %.not28.i = icmp eq i32 %i.bw, 0
  %i.bx = select i1 %.not28.i, float -1.000000e+00, float 1.000000e+00
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 20
  store float %i.bx, ptr %i.by, align 4, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 24
  store float %i.as, ptr %i.bz, align 8, !tbaa !101
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.ph.i, i64 28 ; 2 uses
  store float %i.au, ptr %i.ca, align 4, !tbaa !102
  store ptr null, ptr %.1.i.ph.i, align 8, !tbaa !103
  %i.cb = fcmp olt float %i.au, %i.aa
  %or.cond147 = select i1 %or.cond, i1 %i.cb, i1 false
  br i1 %or.cond147, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.aa, ptr %i.ca, align 4, !tbaa !102
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !195
  store ptr %.0..0..0..0., ptr %.1.i.ph.i, align 8, !tbaa !103
  store ptr %.1.i.ph.i, ptr %i.a, align 8, !tbaa !195
  br label %stbtt__new_active.exit.thread

stbtt__new_active.exit.thread:                    ; preds = %bb.k, %bb.o, %bb.g
  %.sroa.0.2 = phi ptr [ %.sroa.0.1105, %bb.g ], [ %.sroa.0.3, %bb.o ], [ %.sroa.0.1105, %bb.k ] ; 2 uses
  %.sroa.7.4 = phi ptr [ %.sroa.7.3106, %bb.g ], [ %.sroa.7.5, %bb.o ], [ null, %bb.k ] ; 2 uses
  %.sroa.11.2 = phi i32 [ %.sroa.11.1107, %bb.g ], [ %.sroa.11.3, %bb.o ], [ 0, %bb.k ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1108, i64 20 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.1108, i64 24
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !93 ; 2 uses
  %i.cf = fcmp ugt float %i.ce, %i.ab
  br i1 %i.cf, label %._crit_edge, label %bb.g, !llvm.loop !191

._crit_edge:                                      ; preds = %stbtt__new_active.exit.thread, %.preheader101
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0121, %.preheader101 ], [ %.sroa.0.2, %stbtt__new_active.exit.thread ] ; 3 uses
  %.sroa.7.3.lcssa = phi ptr [ %.sroa.7.1.lcssa, %.preheader101 ], [ %.sroa.7.4, %stbtt__new_active.exit.thread ]
  %.sroa.11.1.lcssa = phi i32 [ %.sroa.11.0123, %.preheader101 ], [ %.sroa.11.2, %stbtt__new_active.exit.thread ]
  %.1.lcssa = phi ptr [ %.0126, %.preheader101 ], [ %i.cc, %stbtt__new_active.exit.thread ]
  %.0..0..0..0.82 = load ptr, ptr %i.a, align 8, !tbaa !195 ; 4 uses
  %.not91 = icmp eq ptr %.0..0..0..0.82, null     ; 2 uses
  br i1 %.not91, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @stbtt__fill_active_edges_new(ptr noundef %.080, ptr noundef nonnull %i.w, i32 noundef %i.z, ptr noundef nonnull %.0..0..0..0.82, float noundef %i.aa)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.cg = icmp sgt i32 %i.z, 0
  br i1 %i.cg, label %.lr.ph117, label %.preheader

.preheader:                                       ; preds = %.lr.ph117, %bb.q
  %i.ch = phi i32 [ %i.z, %bb.q ], [ %i.cz, %.lr.ph117 ]
  br i1 %.not91, label %._crit_edge120, label %.lr.ph119

.lr.ph117:                                        ; preds = %bb.q, %.lr.ph117
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph117 ], [ 0, %bb.q ] ; 4 uses
  %.077115 = phi float [ %i.ck, %.lr.ph117 ], [ 0.000000e+00, %bb.q ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !80
  %i.ck = fadd float %.077115, %i.cj              ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %indvars.iv
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !80
  %i.cn = fadd float %i.cm, %i.ck
  %i.co = call float @llvm.fabs.f32(float %i.cn)
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float 2.550000e+02, float 5.000000e-01)
  %i.cq = fptosi float %i.cp to i32
  %spec.store.select = call i32 @llvm.umin.i32(i32 %i.cq, i32 255)
  %i.cr = trunc nuw i32 %spec.store.select to i8
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.ct = load i32, ptr %i.y, align 8, !tbaa !108
  %i.cu = mul nsw i32 %i.ct, %.076124
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = add nsw i32 %i.cu, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.cs, i64 %i.cx
  store i8 %i.cr, ptr %i.cy, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %.lr.ph117, label %.preheader, !llvm.loop !192

.lr.ph119:                                        ; preds = %.preheader, %.lr.ph119
  %i.dc = phi ptr [ %i.dg, %.lr.ph119 ], [ %.0..0..0..0.82, %.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load <2 x float>, ptr %i.dd, align 8, !tbaa !80
  %i.df = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.de)
  store float %i.df, ptr %i.dd, align 8, !tbaa !98
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !195 ; 2 uses
  %.not92 = icmp eq ptr %i.dg, null
  br i1 %.not92, label %._crit_edge120, label %.lr.ph119, !llvm.loop !193

._crit_edge120:                                   ; preds = %.lr.ph119, %.preheader
  %i.dh = add nsw i32 %.075125, 1
  %i.di = add nuw nsw i32 %.076124, 1             ; 2 uses
  %i.dj = load i32, ptr %i.l, align 4, !tbaa !106
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %bb.d, label %._crit_edge129, !llvm.loop !194

._crit_edge129:                                   ; preds = %._crit_edge120
  %.not5.i = icmp eq ptr %.sroa.0.1.lcssa, null
  br i1 %.not5.i, label %stbtt__hheap_cleanup.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge129, %.lr.ph.i
  %.06.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.sroa.0.1.lcssa, %._crit_edge129 ] ; 2 uses
  %i.dl = load ptr, ptr %.06.i, align 8, !tbaa !88 ; 2 uses
  call void @free(ptr noundef nonnull %.06.i) #29
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %stbtt__hheap_cleanup.exit, label %.lr.ph.i, !llvm.loop !5

stbtt__hheap_cleanup.exit:                        ; preds = %.lr.ph.i, %bb.c, %._crit_edge129
  %.not = icmp eq ptr %.080, %i.b
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %stbtt__hheap_cleanup.exit
  call void @free(ptr noundef %.080) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %stbtt__hheap_cleanup.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges_ins_sort(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %.sroa.5 = alloca { float, float, i32 }, align 8 ; 4 uses
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.b = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !80
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i64 12, i1 false), !tbaa.struct !109
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv31 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next32, %bb.c ] ; 4 uses
  %i.d = getelementptr [20 x i8], ptr %0, i64 %indvars.iv31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %i.f = load float, ptr %i.e, align 4, !tbaa !93
  %i.g = fcmp olt float %.sroa.4.0.copyload, %i.f
  br i1 %i.g, label %bb.c, label %.thread.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.h, i64 20, i1 false), !tbaa.struct !110
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, -1
  %i.i = icmp sgt i64 %indvars.iv31, 1
  br i1 %i.i, label %bb.b, label %.thread

.thread.split.loop.exit:                          ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv31 to i32
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.split.loop.exit
  %.021.lcssa = phi i32 [ %i.j, %.thread.split.loop.exit ], [ 0, %bb.c ] ; 2 uses
  %i.k = zext i32 %.021.lcssa to i64
  %.not = icmp eq i64 %indvars.iv, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.l = sext i32 %.021.lcssa to i64
  %i.m = getelementptr inbounds [20 x i8], ptr %0, i64 %i.l ; 2 uses
  store <2 x float> %i.c, ptr %i.m, align 4, !tbaa !80
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5, i64 12, i1 false), !tbaa.struct !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbtt__sort_edges_quicksort(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 {
bb.a:
  %2 = alloca %struct.stbtt__edge, align 4        ; 8 uses
  %i.a = icmp sgt i32 %1, 12
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.078 = phi ptr [ %.1, %bb.l ], [ %0, %bb.a ]   ; 10 uses
  %.06977 = phi i32 [ %.170, %bb.l ], [ %1, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = lshr i32 %.06977, 1
  %i.c = getelementptr inbounds nuw i8, ptr %.078, i64 4 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !93 ; 2 uses
  %i.i = add nsw i32 %.06977, -1                  ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !93 ; 2 uses
  %i.n = fcmp olt float %i.h, %i.m                ; 2 uses
  %i.o = fcmp uge float %i.d, %i.h
  %.not = xor i1 %i.o, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = fcmp uge float %i.d, %i.m
  %i.q = xor i1 %i.p, %i.n
  %i.r = select i1 %i.q, i64 0, i64 %i.j
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %.078, i64 %i.r ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.s, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.078, i64 20, i1 false), !tbaa.struct !110
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.078, ptr noundef nonnull align 4 dereferenceable(20) %i.f, i64 20, i1 false), !tbaa.struct !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !110
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %.067 = phi i64 [ 1, %bb.c ], [ %i.af, %bb.h ]
  %.065 = phi i32 [ %i.i, %bb.c ], [ %i.ag, %bb.h ]
  %i.t = load float, ptr %i.c, align 4, !tbaa !93 ; 2 uses
  %sext = shl i64 %.067, 32
  %i.u = ashr exact i64 %sext, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.u, %bb.d ] ; 5 uses
  %i.v = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !93
  %i.y = fcmp olt float %i.x, %i.t
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.y, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.z = sext i32 %.065 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.f ], [ %i.z, %.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds [20 x i8], ptr %.078, i64 %indvars.iv81 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !93
  %i.ad = fcmp olt float %i.t, %i.ac
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nsw i64 %indvars.iv81 to i32      ; 4 uses
  %.not74 = icmp slt i64 %indvars.iv, %indvars.iv81
  br i1 %.not74, label %bb.h, label %bb.i

end_hunk_1
begin_hunk_2_@stbtt__matches:bb.a
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = icmp eq i8 %i.ar, 97
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = icmp eq i8 %i.au, 109
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37
  %i.ay = icmp eq i8 %i.ax, 101
  br i1 %i.ay, label %stbtt__find_table.exit56, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i50
  br i1 %exitcond.not.i54, label %stbtt__find_table.exit56.thread, label %bb.k, !llvm.loop !3

stbtt__find_table.exit56:                         ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ba = load i32, ptr %i.az, align 1            ; 2 uses
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba) ; 6 uses
  %.not41 = icmp eq i32 %i.ba, 0
  br i1 %.not41, label %stbtt__find_table.exit56.thread, label %bb.p

bb.p:                                             ; preds = %stbtt__find_table.exit56
  br i1 %.not39, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 16, i32 noundef -1)
  %.not45 = icmp eq i32 %i.bc, 0
  br i1 %.not45, label %bb.r, label %stbtt__find_table.exit56.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 1, i32 noundef -1)
  %.not46 = icmp eq i32 %i.bd, 0
  br i1 %.not46, label %bb.s, label %stbtt__find_table.exit56.thread

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not47 = icmp eq i32 %i.be, 0
  br i1 %.not47, label %bb.w, label %stbtt__find_table.exit56.thread

bb.t:                                             ; preds = %bb.p
  %i.bf = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 16, i32 noundef 17)
  %.not42 = icmp eq i32 %i.bf, 0
  br i1 %.not42, label %bb.u, label %stbtt__find_table.exit56.thread

bb.u:                                             ; preds = %bb.t
  %i.bg = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 1, i32 noundef 2)
  %.not43 = icmp eq i32 %i.bg, 0
  br i1 %.not43, label %bb.v, label %stbtt__find_table.exit56.thread

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call i32 @stbtt__matchpair(ptr noundef nonnull %0, i32 noundef %i.bb, ptr noundef nonnull %2, i32 noundef %i.b, i32 noundef 3, i32 noundef -1)
  %.not44 = icmp eq i32 %i.bh, 0
  br i1 %.not44, label %bb.w, label %stbtt__find_table.exit56.thread

bb.w:                                             ; preds = %bb.v, %bb.s
  br label %stbtt__find_table.exit56.thread

stbtt__find_table.exit56.thread:                  ; preds = %bb.o, %bb.j, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %stbtt__find_table.exit56, %stbtt__find_table.exit, %bb.a, %bb.w
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %stbtt__find_table.exit56 ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.w ], [ 1, %bb.s ], [ 1, %bb.t ], [ 1, %bb.u ], [ 0, %stbtt__find_table.exit ], [ 1, %bb.v ], [ 0, %bb.j ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.01118, 1               ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef %0, i32 noundef %i.f, ptr noundef %1, i32 noundef %2)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %.lr.ph ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @stbtt_BakeFontBitmap(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call i32 @stbtt_BakeFontBitmap_internal(ptr noundef %0, i32 noundef %1, float noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @stbtt_GetNumberOfFonts(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @stbtt__isfont(ptr noundef readonly %0)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %stbtt_GetNumberOfFonts_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !37
  %i.c = icmp eq i8 %i.b, 116
  br i1 %i.c, label %bb.c, label %stbtt_GetNumberOfFonts_internal.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !37
  %i.f = icmp eq i8 %i.e, 116
  br i1 %i.f, label %bb.d, label %stbtt_GetNumberOfFonts_internal.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37
  %i.i = icmp eq i8 %i.h, 99
  br i1 %i.i, label %bb.e, label %stbtt_GetNumberOfFonts_internal.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = icmp eq i8 %i.k, 102
  br i1 %i.l, label %bb.f, label %stbtt_GetNumberOfFonts_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  switch i32 %i.o, label %stbtt_GetNumberOfFonts_internal.exit [
    i32 65536, label %bb.g
    i32 131072, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 1
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  br label %stbtt_GetNumberOfFonts_internal.exit

stbtt_GetNumberOfFonts_internal.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 1, %bb.a ], [ %i.r, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @stbtt_FindMatchingFont(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef 0) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add nuw nsw i32 %.01118.i, 1             ; 2 uses
  %i.d = tail call i32 @stbtt_GetFontOffsetForIndex_internal(ptr noundef readonly %0, i32 noundef %i.c) ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %stbtt_FindMatchingFont_internal.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %.01118.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = tail call i32 @stbtt__matches(ptr noundef readonly %0, i32 noundef %i.f, ptr noundef readonly %1, i32 noundef %2)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %stbtt_FindMatchingFont_internal.exit

stbtt_FindMatchingFont_internal.exit:             ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.f, %.lr.ph.i ], [ %i.d, %bb.b ]
  ret i32 %.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define range(i32 0, 2) i32 @stbtt_CompareUTF8toUTF16_bigendian(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, i32 noundef %3)
  %i.b = icmp eq i32 %1, %i.a
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}
!llvm.errno.tbaa = !{!30}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = distinct !{!8, !38}
!9 = distinct !{!9, !38}
!10 = distinct !{!10, !38}
!11 = distinct !{!11, !38}
!12 = distinct !{!12, !38}
!13 = distinct !{!13, !38}
!14 = distinct !{!14, !38}
!15 = distinct !{!15, !38}
!16 = distinct !{!16, !38}
!17 = distinct !{!17, !38}
!18 = distinct !{!18, !38}
!19 = distinct !{!19, !38}
!20 = distinct !{!20, !38}
!21 = distinct !{!21, !38}
!22 = distinct !{!22, !38}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"omnipotent char", !26, i64 0}
!28 = !{!"int", !27, i64 0}
!29 = !{!"__libc_errno", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !{!"p1 omnipotent char", !31, i64 0}
!33 = !{!"", !32, i64 0, !28, i64 8, !28, i64 12}
!34 = !{!33, !28, i64 8}
!35 = !{!33, !28, i64 12}
!36 = !{!33, !32, i64 0}
!37 = !{!27, !27, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!28, !28, i64 0}
!40 = !{!32, !32, i64 0}
!41 = !{!"stbtt_fontinfo", !31, i64 0, !32, i64 8, !28, i64 16, !28, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !28, i64 40, !28, i64 44, !28, i64 48, !28, i64 52, !28, i64 56, !28, i64 60, !33, i64 64, !33, i64 80, !33, i64 96, !33, i64 112, !33, i64 128, !33, i64 144}
!42 = !{!41, !28, i64 52}
!43 = !{!41, !32, i64 8}
!44 = !{!41, !28, i64 16}
!45 = !{!41, !28, i64 24}
!46 = !{!41, !28, i64 28}
!47 = !{!41, !28, i64 32}
!48 = !{!41, !28, i64 36}
!49 = !{!41, !28, i64 40}
!50 = !{!41, !28, i64 44}
!51 = !{!41, !28, i64 48}
!52 = !{i64 0, i64 8, !40, i64 8, i64 4, !39, i64 12, i64 4, !39}
!53 = !{!41, !28, i64 20}
!54 = !{!41, !28, i64 56}
!55 = !{!41, !28, i64 60}
!56 = !{!41, !28, i64 76}
!57 = !{ptr @stbtt_GetGlyphShape}
!58 = !{!"float", !27, i64 0}
!59 = !{!"", !28, i64 0, !28, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !28, i64 24, !28, i64 28, !28, i64 32, !28, i64 36, !31, i64 40, !28, i64 48}
!60 = !{!59, !28, i64 48}
!61 = !{!31, !31, i64 0}
!62 = !{!59, !31, i64 40}
!63 = !{!"short", !27, i64 0}
!64 = !{!"", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !63, i64 8, !63, i64 10, !27, i64 12, !27, i64 13}
!65 = !{!64, !27, i64 12}
!66 = !{!64, !63, i64 0}
!67 = !{!64, !63, i64 2}
!68 = !{!64, !63, i64 4}
!69 = !{!64, !63, i64 6}
!70 = !{!63, !63, i64 0}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = !{!59, !28, i64 28}
!74 = !{!59, !28, i64 4}
!75 = !{!59, !28, i64 36}
!76 = !{!59, !28, i64 24}
!77 = !{!59, !28, i64 32}
!78 = !{!59, !28, i64 0}
!79 = !{!59, !58, i64 16}
!80 = !{!58, !58, i64 0}
!81 = !{!59, !58, i64 20}
!82 = !{!"p1 _ZTS18stbtt__hheap_chunk", !31, i64 0}
!83 = !{!"stbtt__hheap", !82, i64 0, !31, i64 8, !28, i64 16}
!84 = !{!83, !31, i64 8}
!85 = !{!83, !28, i64 16}
!86 = !{!83, !82, i64 0}
!87 = !{!"stbtt__hheap_chunk", !82, i64 0}
!88 = !{!87, !82, i64 0}
!89 = !{!"stbtt__edge", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !28, i64 16}
!90 = !{!89, !58, i64 8}
!91 = !{!89, !58, i64 0}
!92 = !{!89, !58, i64 12}
!93 = !{!89, !58, i64 4}
!94 = !{!"p1 _ZTS18stbtt__active_edge", !31, i64 0}
!95 = !{!"stbtt__active_edge", !94, i64 0, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28}
!96 = !{!95, !58, i64 12}
!97 = !{!95, !58, i64 16}
!98 = !{!95, !58, i64 8}
!99 = !{!89, !28, i64 16}
!100 = !{!95, !58, i64 20}
!101 = !{!95, !58, i64 24}
!102 = !{!95, !58, i64 28}
!103 = !{!95, !94, i64 0}
!104 = !{!"", !28, i64 0, !28, i64 4, !28, i64 8, !32, i64 16}
!105 = !{!104, !28, i64 0}
!106 = !{!104, !28, i64 4}
!107 = !{!104, !32, i64 16}
!108 = !{!104, !28, i64 8}
!109 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !39}
!110 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80, i64 16, i64 4, !39}
!111 = !{!"", !58, i64 0, !58, i64 4}
!112 = !{!111, !58, i64 4}
!113 = !{!111, !58, i64 0}
!114 = !{!"p1 int", !31, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!41, !31, i64 0}
!117 = !{!"", !63, i64 0, !63, i64 2, !63, i64 4, !63, i64 6, !58, i64 8, !58, i64 12, !58, i64 16}
!118 = !{!117, !58, i64 16}
end_hunk_2
