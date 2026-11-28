Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/tsc?download=true
inline.NumInlined: 406
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 339
begin_hunk_0_@check:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next118, 256
  br i1 %exitcond120.not, label %.preheader, label %.preheader86

bb.d:                                             ; preds = %bb.d, %.preheader86
  %indvars.iv113 = phi i64 [ 0, %.preheader86 ], [ %indvars.iv.next114.1, %bb.d ] ; 5 uses
  %.196 = phi float [ %.075100, %.preheader86 ], [ %i.ap, %bb.d ]
  %i.v = phi <2 x float> [ %i.r, %.preheader86 ], [ %i.am, %bb.d ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv113
  %i.x = load float, ptr %i.w, align 8, !tbaa !174
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv113
  %i.z = load float, ptr %i.y, align 8, !tbaa !174
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.x, i64 1
  %i.ac = fadd <2 x float> %i.v, %i.ab
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv113
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !174
  %i.af = fadd float %.196, %i.ae
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next114
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !174
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next114
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !174
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ah, i64 1
  %i.am = fadd <2 x float> %i.ac, %i.al           ; 9 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next114
  %i.ao = load float, ptr %i.an, align 4, !tbaa !174
  %i.ap = fadd float %i.af, %i.ao                 ; 4 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond116.not.1 = icmp eq i64 %indvars.iv.next114.1, 256
  br i1 %exitcond116.not.1, label %bb.c, label %bb.d

bb.e:                                             ; preds = %.preheader
  switch i32 %0, label %bb.w [
    i32 1, label %.sink.split
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 11, label %bb.j
    i32 22, label %bb.k
    i32 33, label %bb.l
    i32 0, label %bb.m
    i32 12, label %bb.n
    i32 25, label %bb.o
    i32 13, label %bb.p
    i32 123, label %bb.q
    i32 1122, label %bb.r
    i32 112233, label %bb.s
    i32 111, label %bb.t
    i32 -1, label %bb.u
    i32 -12, label %bb.v
  ]

.preheader:                                       ; preds = %bb.c, %.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.7, %.preheader ], [ 0, %bb.c ] ; 9 uses
  %.072102 = phi float [ %i.bu, %.preheader ], [ 0.000000e+00, %bb.c ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.ar = load float, ptr %i.aq, align 16, !tbaa !174
  %i.as = fadd float %.072102, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !174
  %i.aw = fadd float %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load float, ptr %i.ay, align 8, !tbaa !174
  %i.ba = fadd float %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !174
  %i.be = fadd float %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load float, ptr %i.bg, align 16, !tbaa !174
  %i.bi = fadd float %i.be, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !174
  %i.bm = fadd float %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !174
  %i.bq = fadd float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @array, i64 %indvars.iv121
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !174
  %i.bu = fadd float %i.bq, %i.bt                 ; 2 uses
  %indvars.iv.next122.7 = add nuw nsw i64 %indvars.iv121, 8 ; 2 uses
  %exitcond124.not.7 = icmp eq i64 %indvars.iv.next122.7, 65536
  br i1 %exitcond124.not.7, label %bb.e, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.bv = extractelement <4 x float> %i.q, i64 3
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.bw = extractelement <4 x float> %i.q, i64 2
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.bx = extractelement <4 x float> %i.q, i64 1
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.by = extractelement <4 x float> %i.q, i64 0
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  %i.bz = extractelement <2 x float> %i.am, i64 1
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  %i.ca = extractelement <2 x float> %i.am, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.e
  br label %.sink.split

bb.m:                                             ; preds = %bb.e
  br label %.sink.split

bb.n:                                             ; preds = %bb.e
  %i.cb = extractelement <4 x float> %i.q, i64 3
  %i.cc = fadd float %i.d, %i.cb
  br label %.sink.split

bb.o:                                             ; preds = %bb.e
  %shift = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.q
  %i.cd = extractelement <4 x float> %foldExtExtBinop, i64 0
  br label %.sink.split

bb.p:                                             ; preds = %bb.e
  %i.ce = extractelement <4 x float> %i.q, i64 2
  %i.cf = fadd float %i.d, %i.ce
  br label %.sink.split

bb.q:                                             ; preds = %bb.e
  %i.cg = extractelement <4 x float> %i.q, i64 3
  %i.ch = fadd float %i.d, %i.cg
  %i.ci = extractelement <4 x float> %i.q, i64 2
  %i.cj = fadd float %i.ch, %i.ci
  br label %.sink.split

bb.r:                                             ; preds = %bb.e
  %shift144 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop145 = fadd <2 x float> %shift144, %i.am
  %i.ck = extractelement <2 x float> %foldExtExtBinop145, i64 0
  br label %.sink.split

bb.s:                                             ; preds = %bb.e
  %shift147 = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop148 = fadd <2 x float> %shift147, %i.am
  %i.cl = extractelement <2 x float> %foldExtExtBinop148, i64 0
  %i.cm = fadd float %i.cl, %i.ap
  br label %.sink.split

bb.t:                                             ; preds = %bb.e
  %i.cn = extractelement <2 x float> %i.am, i64 1
  %i.co = fadd float %i.d, %i.cn
  br label %.sink.split

bb.u:                                             ; preds = %bb.e
  %i.cp = load float, ptr @temp, align 4, !tbaa !174
  br label %.sink.split

bb.v:                                             ; preds = %bb.e
  %i.cq = load float, ptr @temp, align 4, !tbaa !174
  %i.cr = extractelement <4 x float> %i.q, i64 3
  %i.cs = fadd float %i.cr, %i.cq
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.v, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.sink134 = phi float [ %i.cp, %bb.u ], [ %i.co, %bb.t ], [ %i.cm, %bb.s ], [ %i.ck, %bb.r ], [ %i.cj, %bb.q ], [ %i.cf, %bb.p ], [ %i.cd, %bb.o ], [ %i.cc, %bb.n ], [ %i.bu, %bb.m ], [ %i.ap, %bb.l ], [ %i.ca, %bb.k ], [ %i.bz, %bb.j ], [ %i.by, %bb.i ], [ %i.bx, %bb.h ], [ %i.bw, %bb.g ], [ %i.bv, %bb.f ], [ %i.cs, %bb.v ], [ %i.d, %bb.e ]
  %.sink = load i32, ptr @digits, align 4, !tbaa !7
  %i.ct = fpext float %.sink134 to double
  %i.cu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.sink, double noundef %i.ct) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 !guid !494 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.1) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %vector.body5703, label %bb.b

vector.body5703:                                  ; preds = %bb.a, %vector.body5703
  %index5704 = phi i64 [ %index.next5710, %vector.body5703 ], [ 0, %bb.a ] ; 6 uses
  %vec.ind5709 = phi <4 x i32> [ %vec.ind.next5715, %vector.body5703 ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.a ] ; 6 uses
  %i.b = uitofp nneg <4 x i32> %vec.ind5709 to <4 x float>
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @X, i64 %index5704
  store <4 x float> %i.b, ptr %i.c, align 16, !tbaa !174
  %i.d = add <4 x i32> %vec.ind5709, splat (i32 2)
  %i.e = uitofp nneg <4 x i32> %i.d to <4 x float>
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @Y, i64 %index5704
  store <4 x float> %i.e, ptr %i.f, align 16, !tbaa !174
  %i.g = add <4 x i32> %vec.ind5709, splat (i32 3)
  %i.h = uitofp nneg <4 x i32> %i.g to <4 x float>
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @Z, i64 %index5704
  store <4 x float> %i.h, ptr %i.i, align 16, !tbaa !174
  %i.j = add <4 x i32> %vec.ind5709, splat (i32 4)
  %i.k = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @U, i64 %index5704
  store <4 x float> %i.k, ptr %i.l, align 16, !tbaa !174
  %i.m = add <4 x i32> %vec.ind5709, splat (i32 5)
  %i.n = uitofp nneg <4 x i32> %i.m to <4 x float>
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @V, i64 %index5704
  store <4 x float> %i.n, ptr %i.o, align 16, !tbaa !174
  %index.next5710 = add nuw i64 %index5704, 4     ; 2 uses
  %vec.ind.next5715 = add <4 x i32> %vec.ind5709, splat (i32 4)
  %i.p = icmp eq i64 %index.next5710, 32000
  br i1 %i.p, label %set1d.exit1086, label %vector.body5703, !llvm.loop !191

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.2) #15
  %.not936 = icmp eq i32 %i.q, 0
  br i1 %.not936, label %vector.body5670, label %bb.c

vector.body5670:                                  ; preds = %bb.b, %vector.body5670
  %index5671 = phi i64 [ %index.next5672.4, %vector.body5670 ], [ 0, %bb.b ] ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5671 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.r, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.s, align 16, !tbaa !174
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5671 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.u, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.v, align 16, !tbaa !174
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5671 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.x, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.y, align 16, !tbaa !174
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5671 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.aa, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.ab, align 16, !tbaa !174
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5671 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.ad, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.ae, align 16, !tbaa !174
  %index.next5672.4 = add nuw nsw i64 %index5671, 40 ; 2 uses
  %i.af = icmp eq i64 %index.next5672.4, 32000
  br i1 %i.af, label %vector.body5675, label %vector.body5670, !llvm.loop !192

vector.body5675:                                  ; preds = %vector.body5670, %vector.body5675
  %index5676 = phi i64 [ %index.next5678, %vector.body5675 ], [ 0, %vector.body5670 ] ; 2 uses
  %vec.ind5677 = phi <4 x i64> [ %vec.ind.next5679, %vector.body5675 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5670 ] ; 2 uses
  %i.ag = add nuw nsw <4 x i64> %vec.ind5677, splat (i64 1) ; 2 uses
  %i.ah = mul nuw nsw <4 x i64> %i.ag, %i.ag
  %i.ai = trunc nuw <4 x i64> %i.ah to <4 x i32>
  %i.aj = uitofp nneg <4 x i32> %i.ai to <4 x float>
  %i.ak = fdiv <4 x float> splat (float 1.000000e+00), %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 128016), i64 %index5676
  store <4 x float> %i.ak, ptr %i.al, align 16, !tbaa !174
  %index.next5678 = add nuw i64 %index5676, 4     ; 2 uses
  %vec.ind.next5679 = add nuw nsw <4 x i64> %vec.ind5677, splat (i64 4)
  %i.am = icmp eq i64 %index.next5678, 32000
  br i1 %i.am, label %vector.body5682, label %vector.body5675, !llvm.loop !193

vector.body5682:                                  ; preds = %vector.body5675, %vector.body5682
  %index5683 = phi i64 [ %index.next5685, %vector.body5682 ], [ 0, %vector.body5675 ] ; 2 uses
  %vec.ind5684 = phi <4 x i64> [ %vec.ind.next5686, %vector.body5682 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5675 ] ; 2 uses
  %i.an = add nuw nsw <4 x i64> %vec.ind5684, splat (i64 1) ; 2 uses
  %i.ao = mul nuw nsw <4 x i64> %i.an, %i.an
  %i.ap = trunc nuw <4 x i64> %i.ao to <4 x i32>
  %i.aq = uitofp nneg <4 x i32> %i.ap to <4 x float>
  %i.ar = fdiv <4 x float> splat (float 1.000000e+00), %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 256048), i64 %index5683
  store <4 x float> %i.ar, ptr %i.as, align 16, !tbaa !174
  %index.next5685 = add nuw i64 %index5683, 4     ; 2 uses
  %vec.ind.next5686 = add nuw nsw <4 x i64> %vec.ind5684, splat (i64 4)
  %i.at = icmp eq i64 %index.next5685, 32000
  br i1 %i.at, label %vector.body5689, label %vector.body5682, !llvm.loop !194

vector.body5689:                                  ; preds = %vector.body5682, %vector.body5689
  %index5690 = phi i64 [ %index.next5692, %vector.body5689 ], [ 0, %vector.body5682 ] ; 2 uses
  %vec.ind5691 = phi <4 x i64> [ %vec.ind.next5693, %vector.body5689 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5682 ] ; 2 uses
  %i.au = add nuw nsw <4 x i64> %vec.ind5691, splat (i64 1) ; 2 uses
  %i.av = mul nuw nsw <4 x i64> %i.au, %i.au
  %i.aw = trunc nuw <4 x i64> %i.av to <4 x i32>
  %i.ax = uitofp nneg <4 x i32> %i.aw to <4 x float>
  %i.ay = fdiv <4 x float> splat (float 1.000000e+00), %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 384080), i64 %index5690
  store <4 x float> %i.ay, ptr %i.az, align 16, !tbaa !174
  %index.next5692 = add nuw i64 %index5690, 4     ; 2 uses
  %vec.ind.next5693 = add nuw nsw <4 x i64> %vec.ind5691, splat (i64 4)
  %i.ba = icmp eq i64 %index.next5692, 32000
  br i1 %i.ba, label %vector.body5696, label %vector.body5689, !llvm.loop !195

vector.body5696:                                  ; preds = %vector.body5689, %vector.body5696
  %index5697 = phi i64 [ %index.next5699, %vector.body5696 ], [ 0, %vector.body5689 ] ; 2 uses
  %vec.ind5698 = phi <4 x i64> [ %vec.ind.next5700, %vector.body5696 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5689 ] ; 2 uses
  %i.bb = add nuw nsw <4 x i64> %vec.ind5698, splat (i64 1) ; 2 uses
  %i.bc = mul nuw nsw <4 x i64> %i.bb, %i.bb
  %i.bd = trunc nuw <4 x i64> %i.bc to <4 x i32>
  %i.be = uitofp nneg <4 x i32> %i.bd to <4 x float>
  %i.bf = fdiv <4 x float> splat (float 1.000000e+00), %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 512128), i64 %index5697
  store <4 x float> %i.bf, ptr %i.bg, align 16, !tbaa !174
  %index.next5699 = add nuw i64 %index5697, 4     ; 2 uses
  %vec.ind.next5700 = add nuw nsw <4 x i64> %vec.ind5698, splat (i64 4)
  %i.bh = icmp eq i64 %index.next5699, 32000
  br i1 %i.bh, label %set1d.exit1086, label %vector.body5696, !llvm.loop !196

bb.c:                                             ; preds = %bb.b
  %i.bi = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.3) #15
  %.not937 = icmp eq i32 %i.bi, 0
  br i1 %.not937, label %vector.body5658, label %bb.d

vector.body5658:                                  ; preds = %bb.c, %vector.body5658
  %index5659 = phi i64 [ %index.next5660.4, %vector.body5658 ], [ 0, %bb.c ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5659 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.bj, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.bk, align 16, !tbaa !174
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5659 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.bm, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.bn, align 16, !tbaa !174
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5659 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.bp, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.bq, align 16, !tbaa !174
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5659 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.bs, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.bt, align 16, !tbaa !174
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5659 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 128
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.bv, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.bw, align 16, !tbaa !174
  %index.next5660.4 = add nuw nsw i64 %index5659, 40 ; 2 uses
  %i.bx = icmp eq i64 %index.next5660.4, 32000
  br i1 %i.bx, label %vector.body5663, label %vector.body5658, !llvm.loop !197

vector.body5663:                                  ; preds = %vector.body5658, %vector.body5663
  %index5664 = phi i64 [ %index.next5666, %vector.body5663 ], [ 0, %vector.body5658 ] ; 2 uses
  %vec.ind5665 = phi <4 x i64> [ %vec.ind.next5667, %vector.body5663 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5658 ] ; 2 uses
  %i.by = add nuw nsw <4 x i64> %vec.ind5665, splat (i64 1) ; 2 uses
  %i.bz = mul nuw nsw <4 x i64> %i.by, %i.by
  %i.ca = trunc nuw <4 x i64> %i.bz to <4 x i32>
  %i.cb = uitofp nneg <4 x i32> %i.ca to <4 x float>
  %i.cc = fdiv <4 x float> splat (float 1.000000e+00), %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 128016), i64 %index5664
  store <4 x float> %i.cc, ptr %i.cd, align 16, !tbaa !174
  %index.next5666 = add nuw i64 %index5664, 4     ; 2 uses
  %vec.ind.next5667 = add nuw nsw <4 x i64> %vec.ind5665, splat (i64 4)
  %i.ce = icmp eq i64 %index.next5666, 32000
  br i1 %i.ce, label %set1d.exit1086, label %vector.body5663, !llvm.loop !198

bb.d:                                             ; preds = %bb.c
  %i.cf = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.4) #15
  %.not938 = icmp eq i32 %i.cf, 0
  br i1 %.not938, label %vector.body5646, label %bb.e

vector.body5646:                                  ; preds = %bb.d, %vector.body5646
  %index5647 = phi i64 [ %index.next5648.4, %vector.body5646 ], [ 0, %bb.d ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5647 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.cg, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.ch, align 16, !tbaa !174
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5647 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store <4 x float> splat (float 1.000000e+00), ptr %i.cj, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.ck, align 16, !tbaa !174
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5647 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store <4 x float> splat (float 1.000000e+00), ptr %i.cm, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.cn, align 16, !tbaa !174
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5647 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  store <4 x float> splat (float 1.000000e+00), ptr %i.cp, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.cq, align 16, !tbaa !174
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @global_data, i64 %index5647 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 128
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 144
  store <4 x float> splat (float 1.000000e+00), ptr %i.cs, align 16, !tbaa !174
  store <4 x float> splat (float 1.000000e+00), ptr %i.ct, align 16, !tbaa !174
  %index.next5648.4 = add nuw nsw i64 %index5647, 40 ; 2 uses
  %i.cu = icmp eq i64 %index.next5648.4, 32000
  br i1 %i.cu, label %vector.body5651, label %vector.body5646, !llvm.loop !199

vector.body5651:                                  ; preds = %vector.body5646, %vector.body5651
  %index5652 = phi i64 [ %index.next5654, %vector.body5651 ], [ 0, %vector.body5646 ] ; 2 uses
  %vec.ind5653 = phi <4 x i64> [ %vec.ind.next5655, %vector.body5651 ], [ <i64 0, i64 1, i64 2, i64 3>, %vector.body5646 ] ; 2 uses
  %i.cv = add nuw nsw <4 x i64> %vec.ind5653, splat (i64 1) ; 2 uses
  %i.cw = mul nuw nsw <4 x i64> %i.cv, %i.cv
  %i.cx = trunc nuw <4 x i64> %i.cw to <4 x i32>
  %i.cy = uitofp nneg <4 x i32> %i.cx to <4 x float>
  %i.cz = fdiv <4 x float> splat (float 1.000000e+00), %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 128016), i64 %index5652
  store <4 x float> %i.cz, ptr %i.da, align 16, !tbaa !174
  %index.next5654 = add nuw i64 %index5652, 4     ; 2 uses
  %vec.ind.next5655 = add nuw nsw <4 x i64> %vec.ind5653, splat (i64 4)
  %i.db = icmp eq i64 %index.next5654, 32000
  br i1 %i.db, label %set1d.exit1086, label %vector.body5651, !llvm.loop !200

bb.e:                                             ; preds = %bb.d
end_hunk_0
