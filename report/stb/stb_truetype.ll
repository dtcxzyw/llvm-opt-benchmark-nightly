Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__new_active:bb.a
  %i.h = tail call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #30 ; 4 uses
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
define void @stbtt__fill_active_edges_new(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, float noundef %4) local_unnamed_addr #3 {
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
  %5 = insertelement <2 x float> poison, float %4, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph472, %stbtt__handle_clipped_edge.exit351
  %.0293469 = phi ptr [ %3, %.lr.ph472 ], [ %i.afr, %stbtt__handle_clipped_edge.exit351 ] ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0293469, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %.0293469, i64 8
  %i.i = load float, ptr %i.g, align 4, !tbaa !96 ; 3 uses
  %i.j = fcmp oeq float %i.i, 0.000000e+00
  %i.k = load float, ptr %i.h, align 8, !tbaa !98 ; 47 uses
  br i1 %i.j, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.k, %i.b
  br i1 %i.l, label %bb.d, label %stbtt__handle_clipped_edge.exit351

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp ult float %i.k, 0.000000e+00
  br i1 %i.m, label %bb.z, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fptosi float %i.k to i32                 ; 6 uses
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !102 ; 4 uses
  %i.q = fcmp ogt float %4, %i.p
  br i1 %i.q, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.s = load float, ptr %i.r, align 8, !tbaa !101 ; 4 uses
  %i.t = fcmp olt float %i.a, %i.s
  br i1 %i.t, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = fcmp olt float %4, %i.s
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = fsub float %i.k, %i.k
  %i.w = fsub float %i.s, %4
  %i.x = fmul float %i.v, %i.w
  %i.y = fdiv float %i.x, %i.e
  %i.z = fadd float %i.k, %i.y
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.055.i = phi float [ %i.z, %bb.i ], [ %i.k, %bb.h ] ; 4 uses
  %.054.i = phi float [ %i.s, %bb.i ], [ %4, %bb.h ] ; 3 uses
  %i.aa = fcmp ogt float %i.a, %i.p
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = fsub float %i.k, %.055.i
  %i.ac = fsub float %i.p, %i.a
  %i.ad = fmul float %i.ac, %i.ab
  %i.ae = fsub float %i.a, %.054.i
  %i.af = fdiv float %i.ad, %i.ae
  %i.ag = fadd float %i.k, %i.af
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.053.i = phi float [ %i.ag, %bb.k ], [ %i.k, %bb.j ] ; 3 uses
  %.0.i = phi float [ %i.p, %bb.k ], [ %i.a, %bb.j ] ; 2 uses
  %i.ah = sitofp i32 %i.n to float                ; 4 uses
  %i.ai = fcmp ugt float %.055.i, %i.ah
  %i.aj = fcmp ugt float %.053.i, %i.ah
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.al = load float, ptr %i.ak, align 4, !tbaa !100
  %i.am = fsub float %.0.i, %.054.i
  %i.an = zext nneg i32 %i.n to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !80
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.ap)
  store float %i.aq, ptr %i.ao, align 4, !tbaa !80
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ar = add nuw nsw i32 %i.n, 1
  %i.as = sitofp i32 %i.ar to float               ; 2 uses
  %i.at = fcmp ult float %.055.i, %i.as
  %i.au = fcmp ult float %.053.i, %i.as
  %or.cond62.i = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond62.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !100
  %i.ax = fsub float %.0.i, %.054.i
  %i.ay = fmul float %i.ax, %i.aw
  %i.az = fsub float %.055.i, %i.ah
  %i.ba = fsub float %.053.i, %i.ah
  %i.bb = fadd float %i.az, %i.ba
  %i.bc = fmul float %i.bb, 5.000000e-01
  %i.bd = fsub float 1.000000e+00, %i.bc
  %i.be = zext nneg i32 %i.n to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !80
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.bd, float %i.bg)
  store float %i.bh, ptr %i.bf, align 4, !tbaa !80
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.g, %bb.m, %bb.n, %bb.o
  %i.bi = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.bj = load float, ptr %i.o, align 4, !tbaa !102 ; 4 uses
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
  %i.bp = fsub float %i.k, %i.k
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
  %i.ch = zext nneg i32 %i.bi to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ch ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !80
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.cj)
  store float %i.ck, ptr %i.ci, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.x:                                             ; preds = %bb.v
  %i.cl = add nuw nsw i32 %i.n, 2
  %i.cm = sitofp i32 %i.cl to float               ; 2 uses
  %i.cn = fcmp ult float %.055.i345, %i.cm
  %i.co = fcmp ult float %.053.i347, %i.cm
  %or.cond62.i350 = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond62.i350, label %bb.y, label %stbtt__handle_clipped_edge.exit351

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !100
  %i.cr = fsub float %.0.i348, %.054.i346
  %i.cs = fmul float %i.cr, %i.cq
  %i.ct = fsub float %.055.i345, %i.cb
  %i.cu = fsub float %.053.i347, %i.cb
  %i.cv = fadd float %i.ct, %i.cu
  %i.cw = fmul float %i.cv, 5.000000e-01
  %i.cx = fsub float 1.000000e+00, %i.cw
  %i.cy = zext nneg i32 %i.bi to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !80
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cx, float %i.da)
  store float %i.db, ptr %i.cz, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.z:                                             ; preds = %bb.d
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit351, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %.0293469, i64 28
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !102 ; 4 uses
  %i.de = fcmp ogt float %4, %i.dd
  br i1 %i.de, label %stbtt__handle_clipped_edge.exit351, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %.0293469, i64 24
  %i.dg = load float, ptr %i.df, align 8, !tbaa !101 ; 4 uses
  %i.dh = fcmp olt float %i.a, %i.dg
  br i1 %i.dh, label %stbtt__handle_clipped_edge.exit351, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = fcmp olt float %4, %i.dg
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = fsub float %i.k, %i.k
  %i.dk = fsub float %i.dg, %4
  %i.dl = fmul float %i.dj, %i.dk
  %i.dm = fdiv float %i.dl, %i.e
  %i.dn = fadd float %i.k, %i.dm
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.055.i352 = phi float [ %i.dn, %bb.ad ], [ %i.k, %bb.ac ] ; 4 uses
  %.054.i353 = phi float [ %i.dg, %bb.ad ], [ %4, %bb.ac ] ; 3 uses
  %i.do = fcmp ogt float %i.a, %i.dd
  br i1 %i.do, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dp = fsub float %i.k, %.055.i352
  %i.dq = fsub float %i.dd, %i.a
  %i.dr = fmul float %i.dq, %i.dp
  %i.ds = fsub float %i.a, %.054.i353
  %i.dt = fdiv float %i.dr, %i.ds
  %i.du = fadd float %i.k, %i.dt
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.053.i354 = phi float [ %i.du, %bb.af ], [ %i.k, %bb.ae ] ; 3 uses
  %.0.i355 = phi float [ %i.dd, %bb.af ], [ %i.a, %bb.ae ] ; 2 uses
  %i.dv = fcmp ugt float %.055.i352, 0.000000e+00
  %i.dw = fcmp ugt float %.053.i354, 0.000000e+00
  %or.cond.i356 = select i1 %i.dv, i1 true, i1 %i.dw
  br i1 %or.cond.i356, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !100
  %i.dz = fsub float %.0.i355, %.054.i353
  %i.ea = load float, ptr %i.f, align 4, !tbaa !80
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dz, float %i.ea)
  store float %i.eb, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ai:                                            ; preds = %bb.ag
  %i.ec = fcmp ult float %.055.i352, 1.000000e+00
  %i.ed = fcmp ult float %.053.i354, 1.000000e+00
  %or.cond62.i357 = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond62.i357, label %bb.aj, label %stbtt__handle_clipped_edge.exit351

bb.aj:                                            ; preds = %bb.ai
  %i.ee = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !100
  %i.eg = fsub float %.0.i355, %.054.i353
  %i.eh = fmul float %i.eg, %i.ef
  %i.ei = fadd float %.055.i352, %.053.i354
  %i.ej = fmul float %i.ei, 5.000000e-01
  %i.ek = fsub float 1.000000e+00, %i.ej
  %i.el = load float, ptr %i.f, align 4, !tbaa !80
  %i.em = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.ek, float %i.el)
  store float %i.em, ptr %i.f, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ak:                                            ; preds = %bb.b
  %i.en = fadd float %i.i, %i.k                   ; 34 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0293469, i64 16
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !97 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0293469, i64 24 ; 16 uses
  %7 = getelementptr inbounds nuw i8, ptr %.0293469, i64 28 ; 15 uses
  %8 = load <2 x float>, ptr %i.eq, align 8, !tbaa !80 ; 3 uses
  %9 = extractelement <2 x float> %8, i64 0       ; 2 uses
  %i.er = fcmp ogt float %9, %4                   ; 2 uses
  %10 = fsub <2 x float> %8, %6
  %11 = insertelement <2 x float> poison, float %i.i, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.k, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %10, <2 x float> %14) ; 2 uses
  %16 = extractelement <2 x float> %15, i64 0
  %.0305 = select i1 %i.er, float %16, float %i.k ; 7 uses
  %.0301 = select i1 %i.er, float %9, float %4    ; 3 uses
  %17 = extractelement <2 x float> %8, i64 1      ; 2 uses
  %18 = fcmp olt float %17, %i.a                  ; 2 uses
  %19 = extractelement <2 x float> %15, i64 1
  %.0303 = select i1 %18, float %19, float %i.en  ; 7 uses
  %.0299 = select i1 %18, float %17, float %i.a   ; 3 uses
  %i.es = fcmp oge float %.0305, 0.000000e+00
  %i.et = fcmp oge float %.0303, 0.000000e+00
  %or.cond = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.eu = fcmp olt float %.0305, %i.b
  %i.ev = fcmp olt float %.0303, %i.b
  %or.cond338 = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond338, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ew = fptosi float %.0305 to i32              ; 5 uses
  %i.ex = fptosi float %.0303 to i32              ; 3 uses
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ez = fsub float %.0299, %.0301
  %i.fa = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !100
  %i.fc = fmul float %i.ez, %i.fb                 ; 2 uses
  %i.fd = sitofp i32 %i.ew to float
  %i.fe = fadd float %i.fd, 1.000000e+00          ; 2 uses
  %i.ff = fsub float %i.fe, %.0305
  %i.fg = fsub float %i.fe, %.0303
  %i.fh = fadd float %i.ff, %i.fg
  %i.fi = fmul float %i.fh, 5.000000e-01
  %i.fj = fmul float %i.fi, %i.fc
  %i.fk = zext nneg i32 %i.ew to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fk ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !80
  %i.fn = fadd float %i.fm, %i.fj
  store float %i.fn, ptr %i.fl, align 4, !tbaa !80
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fk ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !80
  %i.fq = fadd float %i.fc, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ao:                                            ; preds = %bb.am
  %i.fr = fcmp ogt float %.0305, %.0303
  br i1 %i.fr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fs = fsub float %4, %.0301
  %i.ft = fadd float %i.a, %i.fs
  %i.fu = fsub float %4, %.0299
  %i.fv = fadd float %i.a, %i.fu
  %i.fw = fneg float %i.ep
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre-phi478 = phi i32 [ %i.ew, %bb.ap ], [ %i.ex, %bb.ao ] ; 7 uses
  %.pre-phi = phi i32 [ %i.ex, %bb.ap ], [ %i.ew, %bb.ao ] ; 4 uses
  %.0307 = phi float [ %i.en, %bb.ap ], [ %i.k, %bb.ao ] ; 2 uses
  %.1306 = phi float [ %.0303, %bb.ap ], [ %.0305, %bb.ao ]
  %.1304 = phi float [ %.0305, %bb.ap ], [ %.0303, %bb.ao ]
  %.1302 = phi float [ %i.fv, %bb.ap ], [ %.0301, %bb.ao ] ; 2 uses
  %.1300 = phi float [ %i.ft, %bb.ap ], [ %.0299, %bb.ao ] ; 2 uses
  %.0298 = phi float [ %i.fw, %bb.ap ], [ %i.ep, %bb.ao ] ; 3 uses
  %i.fx = add nuw nsw i32 %.pre-phi, 1            ; 3 uses
  %i.fy = uitofp nneg i32 %i.fx to float          ; 2 uses
  %i.fz = fsub float %i.fy, %.0307
  %i.ga = tail call float @llvm.fmuladd.f32(float %.0298, float %i.fz, float %4) ; 2 uses
  %i.gb = uitofp nneg i32 %.pre-phi478 to float   ; 3 uses
  %i.gc = fsub float %i.gb, %.0307
  %i.gd = tail call float @llvm.fmuladd.f32(float %.0298, float %i.gc, float %4) ; 2 uses
  %i.ge = fcmp ogt float %i.ga, %i.a
  %.0296 = select i1 %i.ge, float %i.a, float %i.ga ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0293469, i64 20
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !100 ; 4 uses
  %i.gh = fsub float %.0296, %.1302
  %i.gi = fmul float %i.gg, %i.gh                 ; 5 uses
  %i.gj = fsub nnan float %i.fy, %.1306
  %i.gk = fmul float %i.gj, %i.gi
  %i.gl = fmul float %i.gk, 5.000000e-01
  %i.gm = zext nneg i32 %.pre-phi to i64          ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gm ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !80
  %i.gp = fadd float %i.go, %i.gl
  store float %i.gp, ptr %i.gn, align 4, !tbaa !80
  %i.gq = fcmp ogt float %i.gd, %i.a              ; 2 uses
  %i.gr = fsub float %i.a, %.0296
  %i.gs = sub nsw i32 %.pre-phi478, %i.fx
  %i.gt = sitofp i32 %i.gs to float
  %i.gu = fdiv float %i.gr, %i.gt
  %.1 = select i1 %i.gq, float %i.gu, float %.0298
  %.0295 = select i1 %i.gq, float %i.a, float %i.gd
  %i.gv = fmul float %i.gg, %.1                   ; 4 uses
  %i.gw = icmp slt i32 %i.fx, %.pre-phi478
  br i1 %i.gw, label %.lr.ph467, label %._crit_edge

.lr.ph467:                                        ; preds = %bb.aq
  %i.gx = fmul float %i.gv, 5.000000e-01          ; 3 uses
  %i.gy = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %i.gz = add nsw i32 %.pre-phi478, -2
  %i.ha = sub nsw i32 %.pre-phi, %.pre-phi478
  %i.hb = and i32 %i.ha, 1
  %lcmp.mod.not.not = icmp eq i32 %i.hb, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467
  %i.hc = fadd float %i.gx, %i.gi
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gy ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !80
  %i.hf = fadd float %i.hc, %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !80
  %i.hg = fadd float %i.gv, %i.gi                 ; 2 uses
  %indvars.iv.next476.prol = add nuw nsw i64 %i.gm, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467
  %indvars.iv475.unr = phi i64 [ %i.gy, %.lr.ph467 ], [ %indvars.iv.next476.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.unr = phi float [ %i.gi, %.lr.ph467 ], [ %i.hg, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi float [ poison, %.lr.ph467 ], [ %i.hg, %.prol.loopexit.unr-lcssa ]
  %i.hh = icmp eq i32 %i.gz, %.pre-phi
  br i1 %i.hh, label %._crit_edge, label %.lr.ph467.new

.lr.ph467.new:                                    ; preds = %.prol.loopexit, %.lr.ph467.new
  %indvars.iv475 = phi i64 [ %indvars.iv.next476.1, %.lr.ph467.new ], [ %indvars.iv475.unr, %.prol.loopexit ] ; 3 uses
  %.0294466 = phi float [ %i.hs, %.lr.ph467.new ], [ %.0294466.unr, %.prol.loopexit ] ; 2 uses
  %i.hi = fadd float %i.gx, %.0294466
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !80
  %i.hl = fadd float %i.hi, %i.hk
  store float %i.hl, ptr %i.hj, align 4, !tbaa !80
  %i.hm = fadd float %i.gv, %.0294466             ; 2 uses
  %i.hn = fadd float %i.gx, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv475
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !80
  %i.hr = fadd float %i.hn, %i.hq
  store float %i.hr, ptr %i.hp, align 4, !tbaa !80
  %i.hs = fadd float %i.gv, %i.hm                 ; 2 uses
  %indvars.iv.next476.1 = add nuw nsw i64 %indvars.iv475, 2 ; 2 uses
  %i.ht = trunc nuw i64 %indvars.iv.next476.1 to i32
  %i.hu = icmp sgt i32 %.pre-phi478, %i.ht
  br i1 %i.hu, label %.lr.ph467.new, label %._crit_edge, !llvm.loop !187

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph467.new, %bb.aq
  %.0294.lcssa = phi float [ %i.gi, %bb.aq ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.hs, %.lr.ph467.new ]
  %i.hv = fsub float %.1300, %.0295
  %i.hw = fadd float %i.gb, 1.000000e+00          ; 2 uses
  %i.hx = fsub nnan float %i.hw, %i.gb
  %i.hy = fsub float %i.hw, %.1304
  %i.hz = fadd float %i.hx, %i.hy
  %i.ia = fmul float %i.hz, 5.000000e-01
  %i.ib = fmul float %i.ia, %i.hv
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.ib, float %.0294.lcssa)
  %i.id = zext nneg i32 %.pre-phi478 to i64       ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.id ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !80
  %i.ig = fadd float %i.ic, %i.if
  store float %i.ig, ptr %i.ie, align 4, !tbaa !80
  %i.ih = fsub float %.1300, %.1302
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !80
  %i.ik = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.ih, float %i.ij)
  store float %i.ik, ptr %i.ii, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit351

bb.ar:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.c, label %.lr.ph, label %stbtt__handle_clipped_edge.exit351

.lr.ph:                                           ; preds = %bb.ar
  %i.il = fsub float %i.en, %i.k
  %i.im = getelementptr inbounds nuw i8, ptr %.0293469, i64 20 ; 30 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %stbtt__handle_clipped_edge.exit379
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %stbtt__handle_clipped_edge.exit379 ] ; 32 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.in = trunc nuw nsw i64 %indvars.iv to i32
  %i.io = uitofp nneg i32 %i.in to float          ; 90 uses
  %i.ip = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.iq = uitofp nneg i32 %i.ip to float          ; 60 uses
  %i.ir = insertelement <2 x float> poison, float %i.io, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.iq, i64 1
  %i.it = fsub <2 x float> %i.is, %14             ; 7 uses
  %i.iu = fdiv <2 x float> %i.it, %12             ; 2 uses
  %i.iv = extractelement <2 x float> %i.iu, i64 0
  %i.iw = fadd float %4, %i.iv                    ; 52 uses
  %i.ix = extractelement <2 x float> %i.iu, i64 1
  %i.iy = fadd float %4, %i.ix                    ; 52 uses
  %i.iz = fcmp olt float %i.k, %i.io              ; 2 uses
  %i.ja = fcmp ogt float %i.en, %i.iq             ; 2 uses
  %or.cond339 = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond339, label %bb.at, label %bb.by

bb.at:                                            ; preds = %bb.as
  %i.jb = fcmp oeq float %4, %i.iw
  br i1 %i.jb, label %stbtt__handle_clipped_edge.exit365, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jc = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.jd = fcmp ogt float %4, %i.jc
  br i1 %i.jd, label %stbtt__handle_clipped_edge.exit365, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.jf = fcmp olt float %i.iw, %i.je
  br i1 %i.jf, label %stbtt__handle_clipped_edge.exit365, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = fcmp olt float %4, %i.je
  br i1 %i.jg, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jh = fsub float %i.je, %4
  %i.ji = extractelement <2 x float> %i.it, i64 0
  %i.jj = fmul float %i.ji, %i.jh
  %i.jk = fsub float %i.iw, %4
  %i.jl = fdiv float %i.jj, %i.jk
  %i.jm = fadd float %i.k, %i.jl
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.055.i359 = phi float [ %i.jm, %bb.ax ], [ %i.k, %bb.aw ] ; 4 uses
  %.054.i360 = phi float [ %i.je, %bb.ax ], [ %4, %bb.aw ] ; 3 uses
  %i.jn = fcmp ogt float %i.iw, %i.jc
  br i1 %i.jn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jo = fsub float %i.io, %.055.i359
  %i.jp = fsub float %i.jc, %i.iw
  %i.jq = fmul float %i.jp, %i.jo
  %i.jr = fsub float %i.iw, %.054.i360
  %i.js = fdiv float %i.jq, %i.jr
  %i.jt = fadd float %i.js, %i.io
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.053.i361 = phi float [ %i.jt, %bb.az ], [ %i.io, %bb.ay ] ; 3 uses
  %.0.i362 = phi float [ %i.jc, %bb.az ], [ %i.iw, %bb.ay ] ; 2 uses
  %i.ju = fcmp ugt float %.055.i359, %i.io
  %i.jv = fcmp ugt float %.053.i361, %i.io
  %or.cond.i363 = select i1 %i.ju, i1 true, i1 %i.jv
  br i1 %or.cond.i363, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jw = load float, ptr %i.im, align 4, !tbaa !100
  %i.jx = fsub float %.0.i362, %.054.i360
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !80
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.jx, float %i.jz)
  store float %i.ka, ptr %i.jy, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

bb.bc:                                            ; preds = %bb.ba
  %i.kb = fcmp ult float %.055.i359, %i.iq
  %i.kc = fcmp ult float %.053.i361, %i.iq
  %or.cond62.i364 = select i1 %i.kb, i1 true, i1 %i.kc
  br i1 %or.cond62.i364, label %bb.bd, label %stbtt__handle_clipped_edge.exit365

bb.bd:                                            ; preds = %bb.bc
  %i.kd = load float, ptr %i.im, align 4, !tbaa !100
  %i.ke = fsub float %.0.i362, %.054.i360
  %i.kf = fmul float %i.ke, %i.kd
  %i.kg = fsub float %.055.i359, %i.io
  %i.kh = fsub float %.053.i361, %i.io
  %i.ki = fadd float %i.kg, %i.kh
  %i.kj = fmul float %i.ki, 5.000000e-01
  %i.kk = fsub float 1.000000e+00, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !80
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kk, float %i.km)
  store float %i.kn, ptr %i.kl, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit365

stbtt__handle_clipped_edge.exit365:               ; preds = %bb.at, %bb.au, %bb.av, %bb.bb, %bb.bc, %bb.bd
  %i.ko = fcmp oeq float %i.iw, %i.iy
  br i1 %i.ko, label %stbtt__handle_clipped_edge.exit372, label %bb.be

bb.be:                                            ; preds = %stbtt__handle_clipped_edge.exit365
  %i.kp = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.kq = fcmp ogt float %i.iw, %i.kp
  br i1 %i.kq, label %stbtt__handle_clipped_edge.exit372, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kr = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.ks = fcmp olt float %i.iy, %i.kr
  br i1 %i.ks, label %stbtt__handle_clipped_edge.exit372, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kt = fcmp olt float %i.iw, %i.kr
  br i1 %i.kt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ku = fsub nnan float %i.iq, %i.io
  %i.kv = fsub float %i.kr, %i.iw
  %i.kw = fmul float %i.ku, %i.kv
  %i.kx = fsub float %i.iy, %i.iw
  %i.ky = fdiv float %i.kw, %i.kx
  %i.kz = fadd float %i.ky, %i.io
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.055.i366 = phi float [ %i.kz, %bb.bh ], [ %i.io, %bb.bg ] ; 4 uses
  %.054.i367 = phi float [ %i.kr, %bb.bh ], [ %i.iw, %bb.bg ] ; 3 uses
  %i.la = fcmp ogt float %i.iy, %i.kp
  br i1 %i.la, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lb = fsub float %i.iq, %.055.i366
  %i.lc = fsub float %i.kp, %i.iy
  %i.ld = fmul float %i.lc, %i.lb
  %i.le = fsub float %i.iy, %.054.i367
  %i.lf = fdiv float %i.ld, %i.le
  %i.lg = fadd float %i.lf, %i.iq
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.053.i368 = phi float [ %i.lg, %bb.bj ], [ %i.iq, %bb.bi ] ; 3 uses
  %.0.i369 = phi float [ %i.kp, %bb.bj ], [ %i.iy, %bb.bi ] ; 2 uses
  %i.lh = fcmp ugt float %.055.i366, %i.io
  %i.li = fcmp ugt float %.053.i368, %i.io
  %or.cond.i370 = select i1 %i.lh, i1 true, i1 %i.li
  br i1 %or.cond.i370, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lj = load float, ptr %i.im, align 4, !tbaa !100
  %i.lk = fsub float %.0.i369, %.054.i367
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !80
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.lj, float %i.lk, float %i.lm)
  store float %i.ln, ptr %i.ll, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

bb.bm:                                            ; preds = %bb.bk
  %i.lo = fcmp ult float %.055.i366, %i.iq
  %i.lp = fcmp ult float %.053.i368, %i.iq
  %or.cond62.i371 = select i1 %i.lo, i1 true, i1 %i.lp
  br i1 %or.cond62.i371, label %bb.bn, label %stbtt__handle_clipped_edge.exit372

bb.bn:                                            ; preds = %bb.bm
  %i.lq = load float, ptr %i.im, align 4, !tbaa !100
  %i.lr = fsub float %.0.i369, %.054.i367
  %i.ls = fmul float %i.lr, %i.lq
  %i.lt = fsub float %.055.i366, %i.io
  %i.lu = fsub float %.053.i368, %i.io
  %i.lv = fadd float %i.lt, %i.lu
  %i.lw = fmul float %i.lv, 5.000000e-01
  %i.lx = fsub float 1.000000e+00, %i.lw
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !80
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.ls, float %i.lx, float %i.lz)
  store float %i.ma, ptr %i.ly, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit372

stbtt__handle_clipped_edge.exit372:               ; preds = %stbtt__handle_clipped_edge.exit365, %bb.be, %bb.bf, %bb.bl, %bb.bm, %bb.bn
  %i.mb = fcmp oeq float %i.iy, %i.a
  br i1 %i.mb, label %stbtt__handle_clipped_edge.exit379, label %bb.bo

bb.bo:                                            ; preds = %stbtt__handle_clipped_edge.exit372
  %i.mc = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.md = fcmp ogt float %i.iy, %i.mc
  br i1 %i.md, label %stbtt__handle_clipped_edge.exit379, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.me = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.mf = fcmp olt float %i.a, %i.me
  br i1 %i.mf, label %stbtt__handle_clipped_edge.exit379, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mg = fcmp olt float %i.iy, %i.me
  br i1 %i.mg, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mh = fsub float %i.en, %i.iq
  %i.mi = fsub float %i.me, %i.iy
  %i.mj = fmul float %i.mh, %i.mi
  %i.mk = fsub float %i.a, %i.iy
  %i.ml = fdiv float %i.mj, %i.mk
  %i.mm = fadd float %i.ml, %i.iq
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.055.i373 = phi float [ %i.mm, %bb.br ], [ %i.iq, %bb.bq ] ; 4 uses
  %.054.i374 = phi float [ %i.me, %bb.br ], [ %i.iy, %bb.bq ] ; 3 uses
  %i.mn = fcmp ogt float %i.a, %i.mc
  br i1 %i.mn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mo = fsub float %i.en, %.055.i373
  %i.mp = fsub float %i.mc, %i.a
  %i.mq = fmul float %i.mp, %i.mo
  %i.mr = fsub float %i.a, %.054.i374
  %i.ms = fdiv float %i.mq, %i.mr
  %i.mt = fadd float %i.en, %i.ms
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.053.i375 = phi float [ %i.mt, %bb.bt ], [ %i.en, %bb.bs ] ; 3 uses
  %.0.i376 = phi float [ %i.mc, %bb.bt ], [ %i.a, %bb.bs ] ; 2 uses
  %i.mu = fcmp ugt float %.055.i373, %i.io
  %i.mv = fcmp ugt float %.053.i375, %i.io
  %or.cond.i377 = select i1 %i.mu, i1 true, i1 %i.mv
  br i1 %or.cond.i377, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mw = load float, ptr %i.im, align 4, !tbaa !100
  %i.mx = fsub float %.0.i376, %.054.i374
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !80
  %i.na = tail call float @llvm.fmuladd.f32(float %i.mw, float %i.mx, float %i.mz)
  store float %i.na, ptr %i.my, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.bw:                                            ; preds = %bb.bu
  %i.nb = fcmp ult float %.055.i373, %i.iq
  %i.nc = fcmp ult float %.053.i375, %i.iq
  %or.cond62.i378 = select i1 %i.nb, i1 true, i1 %i.nc
  br i1 %or.cond62.i378, label %bb.bx, label %stbtt__handle_clipped_edge.exit379

bb.bx:                                            ; preds = %bb.bw
  %i.nd = load float, ptr %i.im, align 4, !tbaa !100
  %i.ne = fsub float %.0.i376, %.054.i374
  %i.nf = fmul float %i.ne, %i.nd
  %i.ng = fsub float %.055.i373, %i.io
  %i.nh = fsub float %.053.i375, %i.io
  %i.ni = fadd float %i.ng, %i.nh
  %i.nj = fmul float %i.ni, 5.000000e-01
  %i.nk = fsub float 1.000000e+00, %i.nj
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !80
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.nk, float %i.nm)
  store float %i.nn, ptr %i.nl, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.by:                                            ; preds = %bb.as
  %i.no = fcmp olt float %i.en, %i.io             ; 2 uses
  %i.np = fcmp ogt float %i.k, %i.iq              ; 2 uses
  %or.cond340 = select i1 %i.no, i1 %i.np, i1 false
  br i1 %or.cond340, label %bb.bz, label %bb.de

bb.bz:                                            ; preds = %bb.by
  %i.nq = fcmp oeq float %4, %i.iy
  br i1 %i.nq, label %stbtt__handle_clipped_edge.exit386, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nr = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.ns = fcmp ogt float %4, %i.nr
  br i1 %i.ns, label %stbtt__handle_clipped_edge.exit386, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nt = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.nu = fcmp olt float %i.iy, %i.nt
  br i1 %i.nu, label %stbtt__handle_clipped_edge.exit386, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nv = fcmp olt float %4, %i.nt
  br i1 %i.nv, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.nw = fsub float %i.nt, %4
  %i.nx = extractelement <2 x float> %i.it, i64 1
  %i.ny = fmul float %i.nx, %i.nw
  %i.nz = fsub float %i.iy, %4
  %i.oa = fdiv float %i.ny, %i.nz
  %i.ob = fadd float %i.k, %i.oa
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.055.i380 = phi float [ %i.ob, %bb.cd ], [ %i.k, %bb.cc ] ; 4 uses
  %.054.i381 = phi float [ %i.nt, %bb.cd ], [ %4, %bb.cc ] ; 3 uses
  %i.oc = fcmp ogt float %i.iy, %i.nr
  br i1 %i.oc, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.od = fsub float %i.iq, %.055.i380
  %i.oe = fsub float %i.nr, %i.iy
  %i.of = fmul float %i.oe, %i.od
  %i.og = fsub float %i.iy, %.054.i381
  %i.oh = fdiv float %i.of, %i.og
  %i.oi = fadd float %i.oh, %i.iq
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.053.i382 = phi float [ %i.oi, %bb.cf ], [ %i.iq, %bb.ce ] ; 3 uses
  %.0.i383 = phi float [ %i.nr, %bb.cf ], [ %i.iy, %bb.ce ] ; 2 uses
  %i.oj = fcmp ugt float %.055.i380, %i.io
  %i.ok = fcmp ugt float %.053.i382, %i.io
  %or.cond.i384 = select i1 %i.oj, i1 true, i1 %i.ok
  br i1 %or.cond.i384, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ol = load float, ptr %i.im, align 4, !tbaa !100
  %i.om = fsub float %.0.i383, %.054.i381
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !80
  %i.op = tail call float @llvm.fmuladd.f32(float %i.ol, float %i.om, float %i.oo)
  store float %i.op, ptr %i.on, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit386

bb.ci:                                            ; preds = %bb.cg
  %i.oq = fcmp ult float %.055.i380, %i.iq
  %i.or = fcmp ult float %.053.i382, %i.iq
  %or.cond62.i385 = select i1 %i.oq, i1 true, i1 %i.or
  br i1 %or.cond62.i385, label %bb.cj, label %stbtt__handle_clipped_edge.exit386

bb.cj:                                            ; preds = %bb.ci
  %i.os = load float, ptr %i.im, align 4, !tbaa !100
  %i.ot = fsub float %.0.i383, %.054.i381
  %i.ou = fmul float %i.ot, %i.os
  %i.ov = fsub float %.055.i380, %i.io
  %i.ow = fsub float %.053.i382, %i.io
  %i.ox = fadd float %i.ov, %i.ow
  %i.oy = fmul float %i.ox, 5.000000e-01
  %i.oz = fsub float 1.000000e+00, %i.oy
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !80
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.ou, float %i.oz, float %i.pb)
  store float %i.pc, ptr %i.pa, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit386

stbtt__handle_clipped_edge.exit386:               ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.ch, %bb.ci, %bb.cj
  %i.pd = fcmp oeq float %i.iy, %i.iw
  br i1 %i.pd, label %stbtt__handle_clipped_edge.exit393, label %bb.ck

bb.ck:                                            ; preds = %stbtt__handle_clipped_edge.exit386
  %i.pe = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.pf = fcmp ogt float %i.iy, %i.pe
  br i1 %i.pf, label %stbtt__handle_clipped_edge.exit393, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pg = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.ph = fcmp olt float %i.iw, %i.pg
  br i1 %i.ph, label %stbtt__handle_clipped_edge.exit393, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pi = fcmp olt float %i.iy, %i.pg
  br i1 %i.pi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.pj = fsub nnan float %i.io, %i.iq
  %i.pk = fsub float %i.pg, %i.iy
  %i.pl = fmul float %i.pj, %i.pk
  %i.pm = fsub float %i.iw, %i.iy
  %i.pn = fdiv float %i.pl, %i.pm
  %i.po = fadd float %i.pn, %i.iq
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.055.i387 = phi float [ %i.po, %bb.cn ], [ %i.iq, %bb.cm ] ; 4 uses
  %.054.i388 = phi float [ %i.pg, %bb.cn ], [ %i.iy, %bb.cm ] ; 3 uses
  %i.pp = fcmp ogt float %i.iw, %i.pe
  br i1 %i.pp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.pq = fsub float %i.io, %.055.i387
  %i.pr = fsub float %i.pe, %i.iw
  %i.ps = fmul float %i.pr, %i.pq
  %i.pt = fsub float %i.iw, %.054.i388
  %i.pu = fdiv float %i.ps, %i.pt
  %i.pv = fadd float %i.pu, %i.io
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.053.i389 = phi float [ %i.pv, %bb.cp ], [ %i.io, %bb.co ] ; 3 uses
  %.0.i390 = phi float [ %i.pe, %bb.cp ], [ %i.iw, %bb.co ] ; 2 uses
  %i.pw = fcmp ugt float %.055.i387, %i.io
  %i.px = fcmp ugt float %.053.i389, %i.io
  %or.cond.i391 = select i1 %i.pw, i1 true, i1 %i.px
  br i1 %or.cond.i391, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.py = load float, ptr %i.im, align 4, !tbaa !100
  %i.pz = fsub float %.0.i390, %.054.i388
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !80
  %i.qc = tail call float @llvm.fmuladd.f32(float %i.py, float %i.pz, float %i.qb)
  store float %i.qc, ptr %i.qa, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit393

bb.cs:                                            ; preds = %bb.cq
  %i.qd = fcmp ult float %.055.i387, %i.iq
  %i.qe = fcmp ult float %.053.i389, %i.iq
  %or.cond62.i392 = select i1 %i.qd, i1 true, i1 %i.qe
  br i1 %or.cond62.i392, label %bb.ct, label %stbtt__handle_clipped_edge.exit393

bb.ct:                                            ; preds = %bb.cs
  %i.qf = load float, ptr %i.im, align 4, !tbaa !100
  %i.qg = fsub float %.0.i390, %.054.i388
  %i.qh = fmul float %i.qg, %i.qf
  %i.qi = fsub float %.055.i387, %i.io
  %i.qj = fsub float %.053.i389, %i.io
  %i.qk = fadd float %i.qi, %i.qj
  %i.ql = fmul float %i.qk, 5.000000e-01
  %i.qm = fsub float 1.000000e+00, %i.ql
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !80
  %i.qp = tail call float @llvm.fmuladd.f32(float %i.qh, float %i.qm, float %i.qo)
  store float %i.qp, ptr %i.qn, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit393

stbtt__handle_clipped_edge.exit393:               ; preds = %stbtt__handle_clipped_edge.exit386, %bb.ck, %bb.cl, %bb.cr, %bb.cs, %bb.ct
  %i.qq = fcmp oeq float %i.iw, %i.a
  br i1 %i.qq, label %stbtt__handle_clipped_edge.exit379, label %bb.cu

bb.cu:                                            ; preds = %stbtt__handle_clipped_edge.exit393
  %i.qr = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.qs = fcmp ogt float %i.iw, %i.qr
  br i1 %i.qs, label %stbtt__handle_clipped_edge.exit379, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qt = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.qu = fcmp olt float %i.a, %i.qt
  br i1 %i.qu, label %stbtt__handle_clipped_edge.exit379, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qv = fcmp olt float %i.iw, %i.qt
  br i1 %i.qv, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.qw = fsub float %i.en, %i.io
  %i.qx = fsub float %i.qt, %i.iw
  %i.qy = fmul float %i.qw, %i.qx
  %i.qz = fsub float %i.a, %i.iw
  %i.ra = fdiv float %i.qy, %i.qz
  %i.rb = fadd float %i.ra, %i.io
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.055.i394 = phi float [ %i.rb, %bb.cx ], [ %i.io, %bb.cw ] ; 4 uses
  %.054.i395 = phi float [ %i.qt, %bb.cx ], [ %i.iw, %bb.cw ] ; 3 uses
  %i.rc = fcmp ogt float %i.a, %i.qr
  br i1 %i.rc, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rd = fsub float %i.en, %.055.i394
  %i.re = fsub float %i.qr, %i.a
  %i.rf = fmul float %i.re, %i.rd
  %i.rg = fsub float %i.a, %.054.i395
  %i.rh = fdiv float %i.rf, %i.rg
  %i.ri = fadd float %i.en, %i.rh
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.053.i396 = phi float [ %i.ri, %bb.cz ], [ %i.en, %bb.cy ] ; 3 uses
  %.0.i397 = phi float [ %i.qr, %bb.cz ], [ %i.a, %bb.cy ] ; 2 uses
  %i.rj = fcmp ugt float %.055.i394, %i.io
  %i.rk = fcmp ugt float %.053.i396, %i.io
  %or.cond.i398 = select i1 %i.rj, i1 true, i1 %i.rk
  br i1 %or.cond.i398, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rl = load float, ptr %i.im, align 4, !tbaa !100
  %i.rm = fsub float %.0.i397, %.054.i395
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !80
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.rm, float %i.ro)
  store float %i.rp, ptr %i.rn, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.dc:                                            ; preds = %bb.da
  %i.rq = fcmp ult float %.055.i394, %i.iq
  %i.rr = fcmp ult float %.053.i396, %i.iq
  %or.cond62.i399 = select i1 %i.rq, i1 true, i1 %i.rr
  br i1 %or.cond62.i399, label %bb.dd, label %stbtt__handle_clipped_edge.exit379

bb.dd:                                            ; preds = %bb.dc
  %i.rs = load float, ptr %i.im, align 4, !tbaa !100
  %i.rt = fsub float %.0.i397, %.054.i395
  %i.ru = fmul float %i.rt, %i.rs
  %i.rv = fsub float %.055.i394, %i.io
  %i.rw = fsub float %.053.i396, %i.io
  %i.rx = fadd float %i.rv, %i.rw
  %i.ry = fmul float %i.rx, 5.000000e-01
  %i.rz = fsub float 1.000000e+00, %i.ry
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !80
  %i.sc = tail call float @llvm.fmuladd.f32(float %i.ru, float %i.rz, float %i.sb)
  store float %i.sc, ptr %i.sa, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.de:                                            ; preds = %bb.by
  %i.sd = fcmp ogt float %i.en, %i.io
  %or.cond341 = and i1 %i.iz, %i.sd
  br i1 %or.cond341, label %bb.df, label %bb.ea

bb.df:                                            ; preds = %bb.de
  %i.se = fcmp oeq float %4, %i.iw
  br i1 %i.se, label %stbtt__handle_clipped_edge.exit407, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sf = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.sg = fcmp ogt float %4, %i.sf
  br i1 %i.sg, label %stbtt__handle_clipped_edge.exit407, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sh = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.si = fcmp olt float %i.iw, %i.sh
  br i1 %i.si, label %stbtt__handle_clipped_edge.exit407, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sj = fcmp olt float %4, %i.sh
  br i1 %i.sj, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.sk = fsub float %i.sh, %4
  %i.sl = extractelement <2 x float> %i.it, i64 0
  %i.sm = fmul float %i.sl, %i.sk
  %i.sn = fsub float %i.iw, %4
  %i.so = fdiv float %i.sm, %i.sn
  %i.sp = fadd float %i.k, %i.so
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.055.i401 = phi float [ %i.sp, %bb.dj ], [ %i.k, %bb.di ] ; 4 uses
  %.054.i402 = phi float [ %i.sh, %bb.dj ], [ %4, %bb.di ] ; 3 uses
  %i.sq = fcmp ogt float %i.iw, %i.sf
  br i1 %i.sq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.sr = fsub float %i.io, %.055.i401
  %i.ss = fsub float %i.sf, %i.iw
  %i.st = fmul float %i.ss, %i.sr
  %i.su = fsub float %i.iw, %.054.i402
  %i.sv = fdiv float %i.st, %i.su
  %i.sw = fadd float %i.sv, %i.io
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.053.i403 = phi float [ %i.sw, %bb.dl ], [ %i.io, %bb.dk ] ; 3 uses
  %.0.i404 = phi float [ %i.sf, %bb.dl ], [ %i.iw, %bb.dk ] ; 2 uses
  %i.sx = fcmp ugt float %.055.i401, %i.io
  %i.sy = fcmp ugt float %.053.i403, %i.io
  %or.cond.i405 = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond.i405, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sz = load float, ptr %i.im, align 4, !tbaa !100
  %i.ta = fsub float %.0.i404, %.054.i402
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !80
  %i.td = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.ta, float %i.tc)
  store float %i.td, ptr %i.tb, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit407

bb.do:                                            ; preds = %bb.dm
  %i.te = fcmp ult float %.055.i401, %i.iq
  %i.tf = fcmp ult float %.053.i403, %i.iq
  %or.cond62.i406 = select i1 %i.te, i1 true, i1 %i.tf
  br i1 %or.cond62.i406, label %bb.dp, label %stbtt__handle_clipped_edge.exit407

bb.dp:                                            ; preds = %bb.do
  %i.tg = load float, ptr %i.im, align 4, !tbaa !100
  %i.th = fsub float %.0.i404, %.054.i402
  %i.ti = fmul float %i.th, %i.tg
  %i.tj = fsub float %.055.i401, %i.io
  %i.tk = fsub float %.053.i403, %i.io
  %i.tl = fadd float %i.tj, %i.tk
  %i.tm = fmul float %i.tl, 5.000000e-01
  %i.tn = fsub float 1.000000e+00, %i.tm
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.tp = load float, ptr %i.to, align 4, !tbaa !80
  %i.tq = tail call float @llvm.fmuladd.f32(float %i.ti, float %i.tn, float %i.tp)
  store float %i.tq, ptr %i.to, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit407

stbtt__handle_clipped_edge.exit407:               ; preds = %bb.df, %bb.dg, %bb.dh, %bb.dn, %bb.do, %bb.dp
  %i.tr = fcmp oeq float %i.iw, %i.a
  br i1 %i.tr, label %stbtt__handle_clipped_edge.exit379, label %bb.dq

bb.dq:                                            ; preds = %stbtt__handle_clipped_edge.exit407
  %i.ts = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.tt = fcmp ogt float %i.iw, %i.ts
  br i1 %i.tt, label %stbtt__handle_clipped_edge.exit379, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tu = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.tv = fcmp olt float %i.a, %i.tu
  br i1 %i.tv, label %stbtt__handle_clipped_edge.exit379, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tw = fcmp olt float %i.iw, %i.tu
  br i1 %i.tw, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.tx = fsub float %i.en, %i.io
  %i.ty = fsub float %i.tu, %i.iw
  %i.tz = fmul float %i.tx, %i.ty
  %i.ua = fsub float %i.a, %i.iw
  %i.ub = fdiv float %i.tz, %i.ua
  %i.uc = fadd float %i.ub, %i.io
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.055.i408 = phi float [ %i.uc, %bb.dt ], [ %i.io, %bb.ds ] ; 4 uses
  %.054.i409 = phi float [ %i.tu, %bb.dt ], [ %i.iw, %bb.ds ] ; 3 uses
  %i.ud = fcmp ogt float %i.a, %i.ts
  br i1 %i.ud, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.ue = fsub float %i.en, %.055.i408
  %i.uf = fsub float %i.ts, %i.a
  %i.ug = fmul float %i.uf, %i.ue
  %i.uh = fsub float %i.a, %.054.i409
  %i.ui = fdiv float %i.ug, %i.uh
  %i.uj = fadd float %i.en, %i.ui
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.053.i410 = phi float [ %i.uj, %bb.dv ], [ %i.en, %bb.du ] ; 3 uses
  %.0.i411 = phi float [ %i.ts, %bb.dv ], [ %i.a, %bb.du ] ; 2 uses
  %i.uk = fcmp ugt float %.055.i408, %i.io
  %i.ul = fcmp ugt float %.053.i410, %i.io
  %or.cond.i412 = select i1 %i.uk, i1 true, i1 %i.ul
  br i1 %or.cond.i412, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.um = load float, ptr %i.im, align 4, !tbaa !100
  %i.un = fsub float %.0.i411, %.054.i409
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.up = load float, ptr %i.uo, align 4, !tbaa !80
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.um, float %i.un, float %i.up)
  store float %i.uq, ptr %i.uo, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.dy:                                            ; preds = %bb.dw
  %i.ur = fcmp ult float %.055.i408, %i.iq
  %i.us = fcmp ult float %.053.i410, %i.iq
  %or.cond62.i413 = select i1 %i.ur, i1 true, i1 %i.us
  br i1 %or.cond62.i413, label %bb.dz, label %stbtt__handle_clipped_edge.exit379

bb.dz:                                            ; preds = %bb.dy
  %i.ut = load float, ptr %i.im, align 4, !tbaa !100
  %i.uu = fsub float %.0.i411, %.054.i409
  %i.uv = fmul float %i.uu, %i.ut
  %i.uw = fsub float %.055.i408, %i.io
  %i.ux = fsub float %.053.i410, %i.io
  %i.uy = fadd float %i.uw, %i.ux
  %i.uz = fmul float %i.uy, 5.000000e-01
  %i.va = fsub float 1.000000e+00, %i.uz
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !80
  %i.vd = tail call float @llvm.fmuladd.f32(float %i.uv, float %i.va, float %i.vc)
  store float %i.vd, ptr %i.vb, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.ea:                                            ; preds = %bb.de
  %i.ve = fcmp ogt float %i.k, %i.io
  %or.cond342 = and i1 %i.no, %i.ve
  br i1 %or.cond342, label %bb.eb, label %bb.ew

bb.eb:                                            ; preds = %bb.ea
  %i.vf = fcmp oeq float %4, %i.iw
  br i1 %i.vf, label %stbtt__handle_clipped_edge.exit421, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.vg = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.vh = fcmp ogt float %4, %i.vg
  br i1 %i.vh, label %stbtt__handle_clipped_edge.exit421, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.vi = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.vj = fcmp olt float %i.iw, %i.vi
  br i1 %i.vj, label %stbtt__handle_clipped_edge.exit421, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vk = fcmp olt float %4, %i.vi
  br i1 %i.vk, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.vl = fsub float %i.vi, %4
  %i.vm = extractelement <2 x float> %i.it, i64 0
  %i.vn = fmul float %i.vm, %i.vl
  %i.vo = fsub float %i.iw, %4
  %i.vp = fdiv float %i.vn, %i.vo
  %i.vq = fadd float %i.k, %i.vp
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.055.i415 = phi float [ %i.vq, %bb.ef ], [ %i.k, %bb.ee ] ; 4 uses
  %.054.i416 = phi float [ %i.vi, %bb.ef ], [ %4, %bb.ee ] ; 3 uses
  %i.vr = fcmp ogt float %i.iw, %i.vg
  br i1 %i.vr, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.vs = fsub float %i.io, %.055.i415
  %i.vt = fsub float %i.vg, %i.iw
  %i.vu = fmul float %i.vt, %i.vs
  %i.vv = fsub float %i.iw, %.054.i416
  %i.vw = fdiv float %i.vu, %i.vv
  %i.vx = fadd float %i.vw, %i.io
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.053.i417 = phi float [ %i.vx, %bb.eh ], [ %i.io, %bb.eg ] ; 3 uses
  %.0.i418 = phi float [ %i.vg, %bb.eh ], [ %i.iw, %bb.eg ] ; 2 uses
  %i.vy = fcmp ugt float %.055.i415, %i.io
  %i.vz = fcmp ugt float %.053.i417, %i.io
  %or.cond.i419 = select i1 %i.vy, i1 true, i1 %i.vz
  br i1 %or.cond.i419, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.wa = load float, ptr %i.im, align 4, !tbaa !100
  %i.wb = fsub float %.0.i418, %.054.i416
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !80
  %i.we = tail call float @llvm.fmuladd.f32(float %i.wa, float %i.wb, float %i.wd)
  store float %i.we, ptr %i.wc, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit421

bb.ek:                                            ; preds = %bb.ei
  %i.wf = fcmp ult float %.055.i415, %i.iq
  %i.wg = fcmp ult float %.053.i417, %i.iq
  %or.cond62.i420 = select i1 %i.wf, i1 true, i1 %i.wg
  br i1 %or.cond62.i420, label %bb.el, label %stbtt__handle_clipped_edge.exit421

bb.el:                                            ; preds = %bb.ek
  %i.wh = load float, ptr %i.im, align 4, !tbaa !100
  %i.wi = fsub float %.0.i418, %.054.i416
  %i.wj = fmul float %i.wi, %i.wh
  %i.wk = fsub float %.055.i415, %i.io
  %i.wl = fsub float %.053.i417, %i.io
  %i.wm = fadd float %i.wk, %i.wl
  %i.wn = fmul float %i.wm, 5.000000e-01
  %i.wo = fsub float 1.000000e+00, %i.wn
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !80
  %i.wr = tail call float @llvm.fmuladd.f32(float %i.wj, float %i.wo, float %i.wq)
  store float %i.wr, ptr %i.wp, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit421

stbtt__handle_clipped_edge.exit421:               ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.ej, %bb.ek, %bb.el
  %i.ws = fcmp oeq float %i.iw, %i.a
  br i1 %i.ws, label %stbtt__handle_clipped_edge.exit379, label %bb.em

bb.em:                                            ; preds = %stbtt__handle_clipped_edge.exit421
  %i.wt = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.wu = fcmp ogt float %i.iw, %i.wt
  br i1 %i.wu, label %stbtt__handle_clipped_edge.exit379, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wv = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.ww = fcmp olt float %i.a, %i.wv
  br i1 %i.ww, label %stbtt__handle_clipped_edge.exit379, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.wx = fcmp olt float %i.iw, %i.wv
  br i1 %i.wx, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.wy = fsub float %i.en, %i.io
  %i.wz = fsub float %i.wv, %i.iw
  %i.xa = fmul float %i.wy, %i.wz
  %i.xb = fsub float %i.a, %i.iw
  %i.xc = fdiv float %i.xa, %i.xb
  %i.xd = fadd float %i.xc, %i.io
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.055.i422 = phi float [ %i.xd, %bb.ep ], [ %i.io, %bb.eo ] ; 4 uses
  %.054.i423 = phi float [ %i.wv, %bb.ep ], [ %i.iw, %bb.eo ] ; 3 uses
  %i.xe = fcmp ogt float %i.a, %i.wt
  br i1 %i.xe, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.xf = fsub float %i.en, %.055.i422
  %i.xg = fsub float %i.wt, %i.a
  %i.xh = fmul float %i.xg, %i.xf
  %i.xi = fsub float %i.a, %.054.i423
  %i.xj = fdiv float %i.xh, %i.xi
  %i.xk = fadd float %i.en, %i.xj
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.053.i424 = phi float [ %i.xk, %bb.er ], [ %i.en, %bb.eq ] ; 3 uses
  %.0.i425 = phi float [ %i.wt, %bb.er ], [ %i.a, %bb.eq ] ; 2 uses
  %i.xl = fcmp ugt float %.055.i422, %i.io
  %i.xm = fcmp ugt float %.053.i424, %i.io
  %or.cond.i426 = select i1 %i.xl, i1 true, i1 %i.xm
  br i1 %or.cond.i426, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.xn = load float, ptr %i.im, align 4, !tbaa !100
  %i.xo = fsub float %.0.i425, %.054.i423
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !80
  %i.xr = tail call float @llvm.fmuladd.f32(float %i.xn, float %i.xo, float %i.xq)
  store float %i.xr, ptr %i.xp, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.eu:                                            ; preds = %bb.es
  %i.xs = fcmp ult float %.055.i422, %i.iq
  %i.xt = fcmp ult float %.053.i424, %i.iq
  %or.cond62.i427 = select i1 %i.xs, i1 true, i1 %i.xt
  br i1 %or.cond62.i427, label %bb.ev, label %stbtt__handle_clipped_edge.exit379

bb.ev:                                            ; preds = %bb.eu
  %i.xu = load float, ptr %i.im, align 4, !tbaa !100
  %i.xv = fsub float %.0.i425, %.054.i423
  %i.xw = fmul float %i.xv, %i.xu
  %i.xx = fsub float %.055.i422, %i.io
  %i.xy = fsub float %.053.i424, %i.io
  %i.xz = fadd float %i.xx, %i.xy
  %i.ya = fmul float %i.xz, 5.000000e-01
  %i.yb = fsub float 1.000000e+00, %i.ya
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !80
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.xw, float %i.yb, float %i.yd)
  store float %i.ye, ptr %i.yc, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.ew:                                            ; preds = %bb.ea
  %i.yf = fcmp olt float %i.k, %i.iq
  %or.cond343 = and i1 %i.yf, %i.ja
  br i1 %or.cond343, label %bb.ex, label %bb.fs

bb.ex:                                            ; preds = %bb.ew
  %i.yg = fcmp oeq float %4, %i.iy
  br i1 %i.yg, label %stbtt__handle_clipped_edge.exit435, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.yh = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.yi = fcmp ogt float %4, %i.yh
  br i1 %i.yi, label %stbtt__handle_clipped_edge.exit435, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yj = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.yk = fcmp olt float %i.iy, %i.yj
  br i1 %i.yk, label %stbtt__handle_clipped_edge.exit435, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yl = fcmp olt float %4, %i.yj
  br i1 %i.yl, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ym = fsub float %i.yj, %4
  %i.yn = extractelement <2 x float> %i.it, i64 1
  %i.yo = fmul float %i.yn, %i.ym
  %i.yp = fsub float %i.iy, %4
  %i.yq = fdiv float %i.yo, %i.yp
  %i.yr = fadd float %i.k, %i.yq
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.055.i429 = phi float [ %i.yr, %bb.fb ], [ %i.k, %bb.fa ] ; 4 uses
  %.054.i430 = phi float [ %i.yj, %bb.fb ], [ %4, %bb.fa ] ; 3 uses
  %i.ys = fcmp ogt float %i.iy, %i.yh
  br i1 %i.ys, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.yt = fsub float %i.iq, %.055.i429
  %i.yu = fsub float %i.yh, %i.iy
  %i.yv = fmul float %i.yu, %i.yt
  %i.yw = fsub float %i.iy, %.054.i430
  %i.yx = fdiv float %i.yv, %i.yw
  %i.yy = fadd float %i.yx, %i.iq
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.053.i431 = phi float [ %i.yy, %bb.fd ], [ %i.iq, %bb.fc ] ; 3 uses
  %.0.i432 = phi float [ %i.yh, %bb.fd ], [ %i.iy, %bb.fc ] ; 2 uses
  %i.yz = fcmp ugt float %.055.i429, %i.io
  %i.za = fcmp ugt float %.053.i431, %i.io
  %or.cond.i433 = select i1 %i.yz, i1 true, i1 %i.za
  br i1 %or.cond.i433, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.zb = load float, ptr %i.im, align 4, !tbaa !100
  %i.zc = fsub float %.0.i432, %.054.i430
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !80
  %i.zf = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zc, float %i.ze)
  store float %i.zf, ptr %i.zd, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit435

bb.fg:                                            ; preds = %bb.fe
  %i.zg = fcmp ult float %.055.i429, %i.iq
  %i.zh = fcmp ult float %.053.i431, %i.iq
  %or.cond62.i434 = select i1 %i.zg, i1 true, i1 %i.zh
  br i1 %or.cond62.i434, label %bb.fh, label %stbtt__handle_clipped_edge.exit435

bb.fh:                                            ; preds = %bb.fg
  %i.zi = load float, ptr %i.im, align 4, !tbaa !100
  %i.zj = fsub float %.0.i432, %.054.i430
  %i.zk = fmul float %i.zj, %i.zi
  %i.zl = fsub float %.055.i429, %i.io
  %i.zm = fsub float %.053.i431, %i.io
  %i.zn = fadd float %i.zl, %i.zm
  %i.zo = fmul float %i.zn, 5.000000e-01
  %i.zp = fsub float 1.000000e+00, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !80
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.zk, float %i.zp, float %i.zr)
  store float %i.zs, ptr %i.zq, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit435

stbtt__handle_clipped_edge.exit435:               ; preds = %bb.ex, %bb.ey, %bb.ez, %bb.ff, %bb.fg, %bb.fh
  %i.zt = fcmp oeq float %i.iy, %i.a
  br i1 %i.zt, label %stbtt__handle_clipped_edge.exit379, label %bb.fi

bb.fi:                                            ; preds = %stbtt__handle_clipped_edge.exit435
  %i.zu = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.zv = fcmp ogt float %i.iy, %i.zu
  br i1 %i.zv, label %stbtt__handle_clipped_edge.exit379, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.zw = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.zx = fcmp olt float %i.a, %i.zw
  br i1 %i.zx, label %stbtt__handle_clipped_edge.exit379, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zy = fcmp olt float %i.iy, %i.zw
  br i1 %i.zy, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.zz = fsub float %i.en, %i.iq
  %i.aaa = fsub float %i.zw, %i.iy
  %i.aab = fmul float %i.zz, %i.aaa
  %i.aac = fsub float %i.a, %i.iy
  %i.aad = fdiv float %i.aab, %i.aac
  %i.aae = fadd float %i.aad, %i.iq
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.055.i436 = phi float [ %i.aae, %bb.fl ], [ %i.iq, %bb.fk ] ; 4 uses
  %.054.i437 = phi float [ %i.zw, %bb.fl ], [ %i.iy, %bb.fk ] ; 3 uses
  %i.aaf = fcmp ogt float %i.a, %i.zu
  br i1 %i.aaf, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.aag = fsub float %i.en, %.055.i436
  %i.aah = fsub float %i.zu, %i.a
  %i.aai = fmul float %i.aah, %i.aag
  %i.aaj = fsub float %i.a, %.054.i437
  %i.aak = fdiv float %i.aai, %i.aaj
  %i.aal = fadd float %i.en, %i.aak
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.053.i438 = phi float [ %i.aal, %bb.fn ], [ %i.en, %bb.fm ] ; 3 uses
  %.0.i439 = phi float [ %i.zu, %bb.fn ], [ %i.a, %bb.fm ] ; 2 uses
  %i.aam = fcmp ugt float %.055.i436, %i.io
  %i.aan = fcmp ugt float %.053.i438, %i.io
  %or.cond.i440 = select i1 %i.aam, i1 true, i1 %i.aan
  br i1 %or.cond.i440, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.aao = load float, ptr %i.im, align 4, !tbaa !100
  %i.aap = fsub float %.0.i439, %.054.i437
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !80
  %i.aas = tail call float @llvm.fmuladd.f32(float %i.aao, float %i.aap, float %i.aar)
  store float %i.aas, ptr %i.aaq, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.fq:                                            ; preds = %bb.fo
  %i.aat = fcmp ult float %.055.i436, %i.iq
  %i.aau = fcmp ult float %.053.i438, %i.iq
  %or.cond62.i441 = select i1 %i.aat, i1 true, i1 %i.aau
  br i1 %or.cond62.i441, label %bb.fr, label %stbtt__handle_clipped_edge.exit379

bb.fr:                                            ; preds = %bb.fq
  %i.aav = load float, ptr %i.im, align 4, !tbaa !100
  %i.aaw = fsub float %.0.i439, %.054.i437
  %i.aax = fmul float %i.aaw, %i.aav
  %i.aay = fsub float %.055.i436, %i.io
  %i.aaz = fsub float %.053.i438, %i.io
  %i.aba = fadd float %i.aay, %i.aaz
  %i.abb = fmul float %i.aba, 5.000000e-01
  %i.abc = fsub float 1.000000e+00, %i.abb
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !80
  %i.abf = tail call float @llvm.fmuladd.f32(float %i.aax, float %i.abc, float %i.abe)
  store float %i.abf, ptr %i.abd, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.fs:                                            ; preds = %bb.ew
  %i.abg = fcmp olt float %i.en, %i.iq
  %or.cond344 = and i1 %i.abg, %i.np
  br i1 %or.cond344, label %bb.ft, label %bb.go

bb.ft:                                            ; preds = %bb.fs
  %i.abh = fcmp oeq float %4, %i.iy
  br i1 %i.abh, label %stbtt__handle_clipped_edge.exit449, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.abi = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.abj = fcmp ogt float %4, %i.abi
  br i1 %i.abj, label %stbtt__handle_clipped_edge.exit449, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.abk = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.abl = fcmp olt float %i.iy, %i.abk
  br i1 %i.abl, label %stbtt__handle_clipped_edge.exit449, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.abm = fcmp olt float %4, %i.abk
  br i1 %i.abm, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.abn = fsub float %i.abk, %4
  %i.abo = extractelement <2 x float> %i.it, i64 1
  %i.abp = fmul float %i.abo, %i.abn
  %i.abq = fsub float %i.iy, %4
  %i.abr = fdiv float %i.abp, %i.abq
  %i.abs = fadd float %i.k, %i.abr
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.055.i443 = phi float [ %i.abs, %bb.fx ], [ %i.k, %bb.fw ] ; 4 uses
  %.054.i444 = phi float [ %i.abk, %bb.fx ], [ %4, %bb.fw ] ; 3 uses
  %i.abt = fcmp ogt float %i.iy, %i.abi
  br i1 %i.abt, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.abu = fsub float %i.iq, %.055.i443
  %i.abv = fsub float %i.abi, %i.iy
  %i.abw = fmul float %i.abv, %i.abu
  %i.abx = fsub float %i.iy, %.054.i444
  %i.aby = fdiv float %i.abw, %i.abx
  %i.abz = fadd float %i.aby, %i.iq
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.053.i445 = phi float [ %i.abz, %bb.fz ], [ %i.iq, %bb.fy ] ; 3 uses
  %.0.i446 = phi float [ %i.abi, %bb.fz ], [ %i.iy, %bb.fy ] ; 2 uses
  %i.aca = fcmp ugt float %.055.i443, %i.io
  %i.acb = fcmp ugt float %.053.i445, %i.io
  %or.cond.i447 = select i1 %i.aca, i1 true, i1 %i.acb
  br i1 %or.cond.i447, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.acc = load float, ptr %i.im, align 4, !tbaa !100
  %i.acd = fsub float %.0.i446, %.054.i444
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !80
  %i.acg = tail call float @llvm.fmuladd.f32(float %i.acc, float %i.acd, float %i.acf)
  store float %i.acg, ptr %i.ace, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit449

bb.gc:                                            ; preds = %bb.ga
  %i.ach = fcmp ult float %.055.i443, %i.iq
  %i.aci = fcmp ult float %.053.i445, %i.iq
  %or.cond62.i448 = select i1 %i.ach, i1 true, i1 %i.aci
  br i1 %or.cond62.i448, label %bb.gd, label %stbtt__handle_clipped_edge.exit449

bb.gd:                                            ; preds = %bb.gc
  %i.acj = load float, ptr %i.im, align 4, !tbaa !100
  %i.ack = fsub float %.0.i446, %.054.i444
  %i.acl = fmul float %i.ack, %i.acj
  %i.acm = fsub float %.055.i443, %i.io
  %i.acn = fsub float %.053.i445, %i.io
  %i.aco = fadd float %i.acm, %i.acn
  %i.acp = fmul float %i.aco, 5.000000e-01
  %i.acq = fsub float 1.000000e+00, %i.acp
  %i.acr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !80
  %i.act = tail call float @llvm.fmuladd.f32(float %i.acl, float %i.acq, float %i.acs)
  store float %i.act, ptr %i.acr, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit449

stbtt__handle_clipped_edge.exit449:               ; preds = %bb.ft, %bb.fu, %bb.fv, %bb.gb, %bb.gc, %bb.gd
  %i.acu = fcmp oeq float %i.iy, %i.a
  br i1 %i.acu, label %stbtt__handle_clipped_edge.exit379, label %bb.ge

bb.ge:                                            ; preds = %stbtt__handle_clipped_edge.exit449
  %i.acv = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.acw = fcmp ogt float %i.iy, %i.acv
  br i1 %i.acw, label %stbtt__handle_clipped_edge.exit379, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.acx = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.acy = fcmp olt float %i.a, %i.acx
  br i1 %i.acy, label %stbtt__handle_clipped_edge.exit379, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.acz = fcmp olt float %i.iy, %i.acx
  br i1 %i.acz, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.ada = fsub float %i.en, %i.iq
  %i.adb = fsub float %i.acx, %i.iy
  %i.adc = fmul float %i.ada, %i.adb
  %i.add = fsub float %i.a, %i.iy
  %i.ade = fdiv float %i.adc, %i.add
  %i.adf = fadd float %i.ade, %i.iq
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.055.i450 = phi float [ %i.adf, %bb.gh ], [ %i.iq, %bb.gg ] ; 4 uses
  %.054.i451 = phi float [ %i.acx, %bb.gh ], [ %i.iy, %bb.gg ] ; 3 uses
  %i.adg = fcmp ogt float %i.a, %i.acv
  br i1 %i.adg, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.adh = fsub float %i.en, %.055.i450
  %i.adi = fsub float %i.acv, %i.a
  %i.adj = fmul float %i.adi, %i.adh
  %i.adk = fsub float %i.a, %.054.i451
  %i.adl = fdiv float %i.adj, %i.adk
  %i.adm = fadd float %i.en, %i.adl
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.053.i452 = phi float [ %i.adm, %bb.gj ], [ %i.en, %bb.gi ] ; 3 uses
  %.0.i453 = phi float [ %i.acv, %bb.gj ], [ %i.a, %bb.gi ] ; 2 uses
  %i.adn = fcmp ugt float %.055.i450, %i.io
  %i.ado = fcmp ugt float %.053.i452, %i.io
  %or.cond.i454 = select i1 %i.adn, i1 true, i1 %i.ado
  br i1 %or.cond.i454, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.adp = load float, ptr %i.im, align 4, !tbaa !100
  %i.adq = fsub float %.0.i453, %.054.i451
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !80
  %i.adt = tail call float @llvm.fmuladd.f32(float %i.adp, float %i.adq, float %i.ads)
  store float %i.adt, ptr %i.adr, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.gm:                                            ; preds = %bb.gk
  %i.adu = fcmp ult float %.055.i450, %i.iq
  %i.adv = fcmp ult float %.053.i452, %i.iq
  %or.cond62.i455 = select i1 %i.adu, i1 true, i1 %i.adv
  br i1 %or.cond62.i455, label %bb.gn, label %stbtt__handle_clipped_edge.exit379

bb.gn:                                            ; preds = %bb.gm
  %i.adw = load float, ptr %i.im, align 4, !tbaa !100
  %i.adx = fsub float %.0.i453, %.054.i451
  %i.ady = fmul float %i.adx, %i.adw
  %i.adz = fsub float %.055.i450, %i.io
  %i.aea = fsub float %.053.i452, %i.io
  %i.aeb = fadd float %i.adz, %i.aea
  %i.aec = fmul float %i.aeb, 5.000000e-01
  %i.aed = fsub float 1.000000e+00, %i.aec
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !80
  %i.aeg = tail call float @llvm.fmuladd.f32(float %i.ady, float %i.aed, float %i.aef)
  store float %i.aeg, ptr %i.aee, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.go:                                            ; preds = %bb.fs
  br i1 %i.d, label %stbtt__handle_clipped_edge.exit379, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aeh = load float, ptr %7, align 4, !tbaa !102 ; 4 uses
  %i.aei = fcmp ogt float %4, %i.aeh
  br i1 %i.aei, label %stbtt__handle_clipped_edge.exit379, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aej = load float, ptr %i.eq, align 8, !tbaa !101 ; 4 uses
  %i.aek = fcmp olt float %i.a, %i.aej
  br i1 %i.aek, label %stbtt__handle_clipped_edge.exit379, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ael = fcmp olt float %4, %i.aej              ; 2 uses
  %i.aem = fsub float %i.aej, %4
  %i.aen = fmul float %i.il, %i.aem
  %i.aeo = fdiv float %i.aen, %i.e
  %i.aep = fadd float %i.k, %i.aeo
  %.055.i457 = select i1 %i.ael, float %i.aep, float %i.k ; 4 uses
  %.054.i458 = select i1 %i.ael, float %i.aej, float %4 ; 3 uses
  %i.aeq = fcmp ogt float %i.a, %i.aeh
  br i1 %i.aeq, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aer = fsub float %i.en, %.055.i457
  %i.aes = fsub float %i.aeh, %i.a
  %i.aet = fmul float %i.aes, %i.aer
  %i.aeu = fsub float %i.a, %.054.i458
  %i.aev = fdiv float %i.aet, %i.aeu
  %i.aew = fadd float %i.en, %i.aev
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.053.i459 = phi float [ %i.aew, %bb.gs ], [ %i.en, %bb.gr ] ; 3 uses
  %.0.i460 = phi float [ %i.aeh, %bb.gs ], [ %i.a, %bb.gr ] ; 2 uses
  %i.aex = fcmp ugt float %.055.i457, %i.io
  %i.aey = fcmp ugt float %.053.i459, %i.io
  %or.cond.i461 = select i1 %i.aex, i1 true, i1 %i.aey
  br i1 %or.cond.i461, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aez = load float, ptr %i.im, align 4, !tbaa !100
  %i.afa = fsub float %.0.i460, %.054.i458
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !80
  %i.afd = tail call float @llvm.fmuladd.f32(float %i.aez, float %i.afa, float %i.afc)
  store float %i.afd, ptr %i.afb, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

bb.gv:                                            ; preds = %bb.gt
  %i.afe = fcmp ult float %.055.i457, %i.iq
  %i.aff = fcmp ult float %.053.i459, %i.iq
  %or.cond62.i462 = select i1 %i.afe, i1 true, i1 %i.aff
  br i1 %or.cond62.i462, label %bb.gw, label %stbtt__handle_clipped_edge.exit379

bb.gw:                                            ; preds = %bb.gv
  %i.afg = load float, ptr %i.im, align 4, !tbaa !100
  %i.afh = fsub float %.0.i460, %.054.i458
  %i.afi = fmul float %i.afh, %i.afg
  %i.afj = fsub float %.055.i457, %i.io
  %i.afk = fsub float %.053.i459, %i.io
  %i.afl = fadd float %i.afj, %i.afk
  %i.afm = fmul float %i.afl, 5.000000e-01
  %i.afn = fsub float 1.000000e+00, %i.afm
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !80
  %i.afq = tail call float @llvm.fmuladd.f32(float %i.afi, float %i.afn, float %i.afp)
  store float %i.afq, ptr %i.afo, align 4, !tbaa !80
  br label %stbtt__handle_clipped_edge.exit379

stbtt__handle_clipped_edge.exit379:               ; preds = %bb.gw, %bb.gv, %bb.gu, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gf, %bb.ge, %stbtt__handle_clipped_edge.exit449, %bb.fr, %bb.fq, %bb.fp, %bb.fj, %bb.fi, %stbtt__handle_clipped_edge.exit435, %bb.ev, %bb.eu, %bb.et, %bb.en, %bb.em, %stbtt__handle_clipped_edge.exit421, %bb.dz, %bb.dy, %bb.dx, %bb.dr, %bb.dq, %stbtt__handle_clipped_edge.exit407, %bb.dd, %bb.dc, %bb.db, %bb.cv, %bb.cu, %stbtt__handle_clipped_edge.exit393, %bb.bx, %bb.bw, %bb.bv, %bb.bp, %bb.bo, %stbtt__handle_clipped_edge.exit372
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %stbtt__handle_clipped_edge.exit351, label %bb.as, !llvm.loop !188

stbtt__handle_clipped_edge.exit351:               ; preds = %stbtt__handle_clipped_edge.exit379, %bb.ar, %bb.e, %bb.aj, %bb.ai, %bb.ah, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.q, %bb.p, %._crit_edge, %bb.an, %bb.c
  %i.afr = load ptr, ptr %.0293469, align 8, !tbaa !103 ; 2 uses
  %.not = icmp eq ptr %i.afr, null
  br i1 %.not, label %._crit_edge473, label %bb.b, !llvm.loop !189

._crit_edge473:                                   ; preds = %stbtt__handle_clipped_edge.exit351, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbtt__rasterize_sorted_edges(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 %3, i32 noundef %4, i32 noundef %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #21 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [129 x float], align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = load i32, ptr %0, align 8, !tbaa !105    ; 4 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !106  ; 2 uses
  %i.n = add nsw i32 %i.m, %5
  %i.o = sitofp i32 %i.n to float
  %i.p = fadd float %i.o, 1.000000e+00
  %i.q = sext i32 %2 to i64
  %i.r = getelementptr inbounds [20 x i8], ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store float %i.p, ptr %i.s, align 4, !tbaa !93
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
end_hunk_0
