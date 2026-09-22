Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/densecrf?download=true
inline.NumInlined: 170
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN22HashTablePermutohedralILi2ELi2EE9growExactEm:bb.a
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !102 ; 5 uses
  br i1 %.not40, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %xtraiter = and i64 %i.b, 1
  %i.ar = icmp eq i64 %i.b, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph38.new

.lr.ph38.new:                                     ; preds = %.lr.ph38
  %unroll_iter = and i64 %i.b, -2
  br label %bb.l

._crit_edge39:                                    ; preds = %.loopexit
  %i.as = icmp eq ptr %.pre, null
  br i1 %i.as, label %bb.r, label %._crit_edge39.thread

bb.l:                                             ; preds = %bb.p, %.lr.ph38.new
  %.01836 = phi i64 [ 0, %.lr.ph38.new ], [ %i.cc, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph38.new ], [ %niter.next.1, %bb.p ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01836
  %i.au = load i32, ptr %i.at, align 4, !tbaa !113 ; 3 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %0, align 8, !tbaa !57
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !106
  %i.ba = zext i32 %i.az to i64
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.bc = and i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !113
  %.not31 = icmp eq i32 %i.be, -1
  br i1 %.not31, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.m, %.lr.ph34
  %.032 = phi i64 [ %i.bg, %.lr.ph34 ], [ %i.bc, %bb.m ]
  %i.bf = add i64 %.032, 1
  %i.bg = and i64 %i.bf, %i.bb                    ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !113
  %.not = icmp eq i32 %i.bi, -1
  br i1 %.not, label %._crit_edge35, label %.lr.ph34, !llvm.loop !220

._crit_edge35:                                    ; preds = %.lr.ph34, %bb.m
  %.0.lcssa = phi i64 [ %i.bc, %bb.m ], [ %i.bg, %.lr.ph34 ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.lcssa
  store i32 %i.au, ptr %i.bj, align 4, !tbaa !26
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %._crit_edge35
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01836
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !113 ; 3 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = load ptr, ptr %0, align 8, !tbaa !57
  %i.bp = sext i32 %i.bm to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !106
  %i.bs = zext i32 %i.br to i64
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.bu = and i64 %i.bt, %i.bs                    ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !113
  %.not31.1 = icmp eq i32 %i.bw, -1
  br i1 %.not31.1, label %._crit_edge35.1, label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %bb.o, %.lr.ph34.1
  %.032.1 = phi i64 [ %i.by, %.lr.ph34.1 ], [ %i.bu, %bb.o ]
  %i.bx = add i64 %.032.1, 1
  %i.by = and i64 %i.bx, %i.bt                    ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !113
  %.not.1 = icmp eq i32 %i.ca, -1
  br i1 %.not.1, label %._crit_edge35.1, label %.lr.ph34.1, !llvm.loop !220

._crit_edge35.1:                                  ; preds = %.lr.ph34.1, %bb.o
  %.0.lcssa.1 = phi i64 [ %i.bu, %bb.o ], [ %i.by, %.lr.ph34.1 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.lcssa.1
  store i32 %i.bm, ptr %i.cb, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge35.1, %bb.n
  %i.cc = add nuw i64 %.01836, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge39.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !221

._crit_edge39.thread.loopexit.unr-lcssa:          ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge39.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge39.thread.loopexit.unr-lcssa, %.lr.ph38
  %.01836.epil.init = phi i64 [ 0, %.lr.ph38 ], [ %i.cc, %._crit_edge39.thread.loopexit.unr-lcssa ]
  %lcmp.mod58 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.01836.epil.init
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !113 ; 3 uses
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %._crit_edge39.thread, label %bb.q

bb.q:                                             ; preds = %.epil.preheader
  %i.cg = load ptr, ptr %0, align 8, !tbaa !57
  %i.ch = sext i32 %i.ce to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !106
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load i64, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.cm = and i64 %i.cl, %i.ck                    ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !113
  %.not31.epil = icmp eq i32 %i.co, -1
  br i1 %.not31.epil, label %._crit_edge35.epil, label %.lr.ph34.epil

.lr.ph34.epil:                                    ; preds = %bb.q, %.lr.ph34.epil
  %.032.epil = phi i64 [ %i.cq, %.lr.ph34.epil ], [ %i.cm, %bb.q ]
  %i.cp = add i64 %.032.epil, 1
  %i.cq = and i64 %i.cp, %i.cl                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !113
  %.not.epil = icmp eq i32 %i.cs, -1
  br i1 %.not.epil, label %._crit_edge35.epil, label %.lr.ph34.epil, !llvm.loop !220

._crit_edge35.epil:                               ; preds = %.lr.ph34.epil, %bb.q
  %.0.lcssa.epil = phi i64 [ %i.cm, %bb.q ], [ %i.cq, %.lr.ph34.epil ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.lcssa.epil
  store i32 %i.ce, ptr %i.ct, align 4, !tbaa !26
  br label %._crit_edge39.thread

._crit_edge39.thread:                             ; preds = %._crit_edge39.thread.loopexit.unr-lcssa, %._crit_edge35.epil, %.epil.preheader, %._crit_edge39
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #18
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge39.thread, %._crit_edge39
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.cu, align 8, !tbaa !102
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !49
  %i.cw = shl i64 %i.cv, 2
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !111
  %i.cy = shl i64 %i.cx, 4
  %i.cz = add i64 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !114
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK20PermutohedralLatticeILi5ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
.lr.ph:
  %i.a = alloca [7 x float], align 16             ; 19 uses
  %5 = alloca %"struct.HashTablePermutohedral<5, 2>::Key", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !14 ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, -5.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load float, ptr %i.g, align 4, !tbaa !14 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !14 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 4.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k
  %i.o = fmul reassoc nsz arcp contract afn float %i.c, 6.000000e+00
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !14 ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, 3.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !14 ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.s
  %i.w = fmul reassoc nsz arcp contract afn float %i.j, 5.000000e+00
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !14 ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, 2.000000e+00
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !14 ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.aa
  %i.ae = fmul reassoc nsz arcp contract afn float %i.r, 4.000000e+00
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.u
  %i.ag = load float, ptr %1, align 4, !tbaa !14  ; 2 uses
  %i.ah = load float, ptr %i.f, align 4, !tbaa !14 ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %i.z, 3.000000e+00
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ac
  %i.al = fmul reassoc nsz arcp contract afn float %i.ag, 2.000000e+00
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, %i.ah
  %i.an = fmul reassoc nsz arcp contract afn float %i.d, %i.h ; 3 uses
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.n
  %i.ap = fadd reassoc nsz arcp contract afn float %i.p, %i.ao ; 3 uses
  %i.aq = fsub reassoc nsz arcp contract afn float %i.ap, %i.v
  %i.ar = fadd reassoc nsz arcp contract afn float %i.x, %i.aq ; 3 uses
  %i.as = fsub reassoc nsz arcp contract afn float %i.ar, %i.ad
  %i.at = fadd reassoc nsz arcp contract afn float %i.af, %i.as ; 3 uses
  %i.au = fsub reassoc nsz arcp contract afn float %i.at, %i.ai
  %i.av = fadd reassoc nsz arcp contract afn float %i.ak, %i.au ; 4 uses
  %i.aw = fadd reassoc nsz arcp contract afn float %i.am, %i.av ; 2 uses
  %i.ax = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.av, i64 1 ; 2 uses
  %i.az = insertelement <4 x float> %i.ay, float %i.at, i64 2 ; 4 uses
  %i.ba = insertelement <4 x float> %i.az, float %i.ar, i64 3 ; 7 uses
  %i.bb = fmul reassoc nsz arcp contract afn <4 x float> %i.ba, splat (float f0x3E2AAAAB) ; 2 uses
  %i.bc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bb) ; 4 uses
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, splat (float 6.000000e+00) ; 4 uses
  %i.bf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.floor.v4f32(<4 x float> %i.bb) ; 4 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bg, splat (float 6.000000e+00) ; 4 uses
  %i.bi = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, <float 6.000000e+00, float 6.000000e+00, float 6.000000e+00, float poison>
  %i.bj = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, splat (float 6.000000e+00)
  %i.bk = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.bl = fsub reassoc nsz arcp contract afn <2 x float> %i.be, %i.bk
  %i.bm = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, <float 6.000000e+00, float 6.000000e+00, float 6.000000e+00, float poison>
  %i.bn = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, splat (float 6.000000e+00)
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bk, %i.bh
  %i.bp = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, splat (float 6.000000e+00) ; 4 uses
  %i.br = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bs = fmul reassoc nsz arcp contract afn <2 x float> %i.br, splat (float 6.000000e+00) ; 4 uses
  %i.bt = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bu = fsub reassoc nsz arcp contract afn <4 x float> %i.bi, %i.az
  %i.bv = fsub reassoc nsz arcp contract afn <4 x float> %i.az, %i.bm
  %i.bw = fsub reassoc nsz arcp contract afn <4 x float> %i.bj, %i.ba
  %i.bx = fsub reassoc nsz arcp contract afn <4 x float> %i.ba, %i.bn
  %i.by = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bl, %i.bo
  %i.bz = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ca = fsub reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bz
  %i.cb = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.bs
  %i.cc = fcmp olt <4 x float> %i.bu, %i.bv
  %i.cd = shufflevector <4 x i1> %i.cc, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ce = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.bw, %i.bx
  %i.cf = select <2 x i1> %i.by, <2 x float> %i.be, <2 x float> %i.bh
  %i.cg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ca, %i.cb
  %i.ch = shufflevector <2 x float> %i.be, <2 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ci = shufflevector <2 x float> %i.bh, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cj = select <4 x i1> %i.cd, <4 x float> %i.ch, <4 x float> %i.ci
  %i.ck = shufflevector <2 x float> %i.be, <2 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cl = shufflevector <2 x float> %i.bh, <2 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = select <4 x i1> %i.ce, <4 x float> %i.ck, <4 x float> %i.cl
  %i.cn = fptosi <2 x float> %i.cf to <2 x i32>   ; 5 uses
  %i.co = select <2 x i1> %i.cg, <2 x float> %i.bq, <2 x float> %i.bs
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cq = fptosi <4 x float> %i.cp to <4 x i32>   ; 5 uses
  %i.cr = fptosi <4 x float> %i.cj to <4 x i32>
  %i.cs = fptosi <4 x float> %i.cm to <4 x i32>
  %i.ct = insertelement <2 x float> poison, float %i.ap, i64 0 ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.an, i64 1 ; 5 uses
  %i.cv = fmul reassoc nsz arcp contract afn <2 x float> %i.cu, splat (float f0x3E2AAAAB) ; 2 uses
  %i.cw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.cv)
  %i.cx = fmul reassoc nsz arcp contract afn <2 x float> %i.cw, splat (float 6.000000e+00) ; 2 uses
  %i.cy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.cv)
  %i.cz = fmul reassoc nsz arcp contract afn <2 x float> %i.cy, splat (float 6.000000e+00) ; 2 uses
  %i.da = fsub reassoc nsz arcp contract afn <2 x float> %i.cx, %i.cu
  %i.db = fsub reassoc nsz arcp contract afn <2 x float> %i.cu, %i.cz
  %i.dc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.da, %i.db
  %i.dd = select <2 x i1> %i.dc, <2 x float> %i.cx, <2 x float> %i.cz
  %i.de = fptosi <2 x float> %i.dd to <2 x i32>   ; 9 uses
  %i.df = extractelement <2 x i32> %i.cn, i64 1   ; 2 uses
  %i.dg = sitofp reassoc nsz arcp contract afn i32 %i.df to float
  %i.dh = fsub reassoc nsz arcp contract afn float %i.av, %i.dg
  %i.di = sitofp <2 x i32> %i.cn to <2 x float>
  %i.dj = sitofp <4 x i32> %i.cr to <4 x float>
  %i.dk = sitofp <4 x i32> %i.cs to <4 x float>
  %i.dl = fsub reassoc nsz arcp contract afn <2 x float> %i.bk, %i.di ; 2 uses
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.dn = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.dj
  %i.do = fsub reassoc nsz arcp contract afn <4 x float> %i.ba, %i.dk ; 2 uses
  %i.dp = extractelement <2 x float> %i.dl, i64 0
  %i.dq = fcmp reassoc nsz arcp contract afn olt float %i.dp, %i.dh
  %i.dr = sitofp <4 x i32> %i.cq to <4 x float>
  %i.ds = sitofp <4 x i32> %i.cq to <4 x float>
  %i.dt = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 3>
  %i.du = fsub reassoc nsz arcp contract afn <4 x float> %i.dt, %i.dr ; 2 uses
  %i.dv = fsub reassoc nsz arcp contract afn <4 x float> %i.ba, %i.ds
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dx = fcmp reassoc nsz arcp contract afn uge <4 x float> %i.dm, %i.du ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.dm, %i.du
  %i.dz = shufflevector <4 x i1> %i.dx, <4 x i1> %i.dy, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ea = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.dn, %i.dw ; 2 uses
  %i.eb = insertelement <4 x i1> poison, i1 %i.dq, i64 0
  %i.ec = shufflevector <4 x i1> %i.eb, <4 x i1> %i.dx, <4 x i32> <i32 0, i32 poison, i32 4, i32 poison>
  %i.ed = shufflevector <4 x i1> %i.ec, <4 x i1> %i.ea, <4 x i32> <i32 0, i32 0, i32 2, i32 4> ; 2 uses
  %i.ee = xor <4 x i1> %i.ed, <i1 false, i1 true, i1 false, i1 false>
  %i.ef = xor <4 x i1> %i.ed, <i1 false, i1 false, i1 false, i1 true>
  %i.eg = shufflevector <2 x i32> %i.de, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = sitofp <4 x i32> %i.eg to <4 x float>
  %i.ei = shufflevector <2 x float> %i.ct, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ej = fsub reassoc nsz arcp contract afn <4 x float> %i.ei, %i.eh
  %i.ek = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.do, %i.ej ; 5 uses
  %i.el = extractelement <4 x i1> %i.ek, i64 0    ; 2 uses
  %i.em = select <4 x i1> %i.ef, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.en = select <4 x i1> %i.ee, <4 x i32> <i32 2, i32 1, i32 2, i32 1>, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.eo = select <4 x i1> %i.dz, <4 x i32> %i.em, <4 x i32> %i.en
  %i.ep = xor <4 x i1> %i.ea, <i1 false, i1 false, i1 false, i1 true>
  %i.eq = zext <4 x i1> %i.ep to <4 x i32>
  %i.er = add nuw nsw <4 x i32> %i.eo, %i.eq
  %i.es = zext <4 x i1> %i.ek to <4 x i32>
  %i.et = add nuw nsw <4 x i32> %i.er, %i.es
  %i.eu = shufflevector <2 x i32> %i.de, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ev = sitofp <4 x i32> %i.eu to <4 x float>
  %6 = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ew = fsub reassoc nsz arcp contract afn <4 x float> %6, %i.ev
  %i.ex = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.do, %i.ew ; 5 uses
  %i.ey = zext <4 x i1> %i.ex to <4 x i32>
  %i.ez = extractelement <4 x i1> %i.ex, i64 0    ; 2 uses
  %i.fa = extractelement <4 x i1> %i.ek, i64 1
  %i.fb = extractelement <4 x i1> %i.ex, i64 1
  %i.fc = extractelement <4 x i1> %i.ek, i64 2
  %i.fd = extractelement <4 x i1> %i.ex, i64 2
  %i.fe = extractelement <4 x i1> %i.ek, i64 3
  %i.ff = add nuw nsw <4 x i32> %i.et, %i.ey      ; 5 uses
  %i.fg = extractelement <4 x i1> %i.ex, i64 3
  %i.fh = sitofp <2 x i32> %i.de to <2 x float>
  %i.fi = fsub reassoc nsz arcp contract afn <2 x float> %i.cu, %i.fh ; 2 uses
  %not.321 = xor i1 %i.ez, true
  %not.320 = xor i1 %i.el, true
  %.sroa.83.10 = zext i1 %not.321 to i32
  %.sroa.67.10 = zext i1 %not.320 to i32
  %i.fj = select i1 %i.ez, i32 1, i32 2
  %i.fk = select i1 %i.el, i32 1, i32 2
  %.sroa.83.9 = select i1 %i.fb, i32 %.sroa.83.10, i32 %i.fj
  %.sroa.67.9 = select i1 %i.fa, i32 %.sroa.67.10, i32 %i.fk
  %not.324 = xor i1 %i.fd, true
  %not.323 = xor i1 %i.fc, true
  %i.fl = zext i1 %not.324 to i32
  %i.fm = zext i1 %not.323 to i32
  %.sroa.83.8 = add nuw nsw i32 %.sroa.83.9, %i.fl
  %.sroa.67.8 = add nuw nsw i32 %.sroa.67.9, %i.fm
  %not.326 = xor i1 %i.fg, true
  %not.325 = xor i1 %i.fe, true
  %i.fn = zext i1 %not.326 to i32
  %i.fo = zext i1 %not.325 to i32
  %.sroa.83.7 = add nuw nsw i32 %.sroa.83.8, %i.fn
  %.sroa.67.4 = add nuw nsw i32 %.sroa.67.8, %i.fo
  %shift = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fp = fcmp olt <2 x float> %i.fi, %shift
  %i.fq = extractelement <2 x i1> %i.fp, i64 0    ; 2 uses
  %not.327 = xor i1 %i.fq, true
  %i.fr = zext i1 %not.327 to i32
  %i.fs = zext i1 %i.fq to i32
  %.sroa.67.6 = add nuw nsw i32 %.sroa.67.4, %i.fs ; 5 uses
  %.sroa.83.5 = add nuw nsw i32 %.sroa.83.7, %i.fr ; 5 uses
  %i.ft = extractelement <2 x i32> %i.cn, i64 0
  %i.fu = shufflevector <2 x i32> %i.de, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fv = shufflevector <4 x i32> %i.fu, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.fw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fv)
  %op.rdx = add i32 %i.fw, %i.df
  %op.rdx329 = add i32 %op.rdx, %i.ft             ; 3 uses
  %i.fx = sdiv i32 %op.rdx329, 6                  ; 10 uses
  %i.fy = icmp sgt i32 %op.rdx329, 5
  br i1 %i.fy, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.fz = sub nsw i32 6, %i.fx                    ; 3 uses
  %i.ga = add nsw i32 %i.fx, -6                   ; 3 uses
  %i.gb = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x i32> %i.gb, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 2 uses
  %i.gd = add nsw <4 x i32> %i.gc, splat (i32 -6)
  %i.ge = insertelement <4 x i32> poison, i32 %i.fz, i64 0
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gg = icmp slt <4 x i32> %i.ff, %i.gf         ; 2 uses
  %i.gh = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %i.gi = shufflevector <4 x i32> %i.gh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gj = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gl = select <4 x i1> %i.gg, <4 x i32> %i.gi, <4 x i32> %i.gk
  %i.gm = select <4 x i1> %i.gg, <4 x i32> %i.gc, <4 x i32> %i.gd
  %i.gn = add nsw <4 x i32> %i.gl, %i.ff
  %.not.5 = icmp slt i32 %.sroa.83.5, %i.fz       ; 2 uses
  %.not.4 = icmp slt i32 %.sroa.67.6, %i.fz       ; 2 uses
  %i.go = add nsw <2 x i32> %i.de, splat (i32 -6)
  %.pn106.4 = select i1 %.not.4, i32 %i.fx, i32 %i.ga
  %storemerge105.4 = add nsw i32 %.pn106.4, %.sroa.67.6
  %i.gp = insertelement <2 x i1> poison, i1 %.not.4, i64 0
  %i.gq = insertelement <2 x i1> %i.gp, i1 %.not.5, i64 1
  %i.gr = select <2 x i1> %i.gq, <2 x i32> %i.de, <2 x i32> %i.go
  %.pn106.5 = select i1 %.not.5, i32 %i.fx, i32 %i.ga
  %storemerge105.5 = add nsw i32 %.pn106.5, %.sroa.83.5
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.gs = icmp slt i32 %op.rdx329, -5
  %i.gt = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gu = shufflevector <4 x i32> %i.gt, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 3 uses
  br i1 %i.gs, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.gv = sub nsw i32 0, %i.fx                    ; 3 uses
  %i.gw = add nsw i32 %i.fx, 6                    ; 3 uses
  %i.gx = add nsw <4 x i32> %i.gu, splat (i32 6)
  %i.gy = insertelement <4 x i32> poison, i32 %i.gv, i64 0
  %i.gz = shufflevector <4 x i32> %i.gy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ha = icmp slt <4 x i32> %i.ff, %i.gz         ; 2 uses
  %i.hb = insertelement <4 x i32> poison, i32 %i.gw, i64 0
  %i.hc = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hd = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %i.he = shufflevector <4 x i32> %i.hd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hf = select <4 x i1> %i.ha, <4 x i32> %i.hc, <4 x i32> %i.he
  %i.hg = select <4 x i1> %i.ha, <4 x i32> %i.gx, <4 x i32> %i.gu
  %i.hh = add nsw <4 x i32> %i.hf, %i.ff
  %i.hi = icmp slt i32 %.sroa.83.5, %i.gv         ; 2 uses
  %i.hj = icmp slt i32 %.sroa.67.6, %i.gv         ; 2 uses
  %i.hk = add nsw <2 x i32> %i.de, splat (i32 6)
  %.pn.4 = select i1 %i.hj, i32 %i.gw, i32 %i.fx
  %storemerge.4 = add nsw i32 %.pn.4, %.sroa.67.6
  %i.hl = insertelement <2 x i1> poison, i1 %i.hj, i64 0
  %i.hm = insertelement <2 x i1> %i.hl, i1 %i.hi, i64 1
  %i.hn = select <2 x i1> %i.hm, <2 x i32> %i.hk, <2 x i32> %i.de
  %.pn.5 = select i1 %i.hi, i32 %i.gw, i32 %i.fx
  %storemerge.5 = add nsw i32 %.pn.5, %.sroa.83.5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %.sroa.67.1 = phi i32 [ %storemerge105.4, %.preheader107 ], [ %storemerge.4, %.preheader108 ], [ %.sroa.67.6, %bb.a ] ; 3 uses
  %.sroa.83.1 = phi i32 [ %storemerge105.5, %.preheader107 ], [ %storemerge.5, %.preheader108 ], [ %.sroa.83.5, %bb.a ] ; 2 uses
  %i.ho = phi <4 x i32> [ %i.gn, %.preheader107 ], [ %i.hh, %.preheader108 ], [ %i.ff, %bb.a ] ; 5 uses
  %i.hp = phi <4 x i32> [ %i.gm, %.preheader107 ], [ %i.hg, %.preheader108 ], [ %i.gu, %bb.a ] ; 2 uses
  %i.hq = phi <2 x i32> [ %i.gr, %.preheader107 ], [ %i.hn, %.preheader108 ], [ %i.de, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.hr = extractelement <4 x i32> %i.ho, i64 0   ; 2 uses
  %i.hs = sub nsw i32 5, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ht ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !14
  %i.hw = sub nsw i32 6, %i.hr
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !14
  %i.ia = extractelement <4 x i32> %i.ho, i64 1   ; 2 uses
  %i.ib = sub nsw i32 5, %i.ia
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ic ; 2 uses
  %i.ie = sub nsw i32 6, %i.ia
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.if ; 2 uses
  %i.ih = extractelement <4 x i32> %i.ho, i64 2   ; 2 uses
  %i.ii = sub nsw i32 5, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ij ; 2 uses
  %i.il = sub nsw i32 6, %i.ih
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.im ; 2 uses
  %i.io = sitofp <4 x i32> %i.hp to <4 x float>   ; 4 uses
  %i.ip = extractelement <4 x float> %i.io, i64 0
  %i.iq = fsub reassoc nsz arcp contract afn float %i.aw, %i.ip
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, f0x3E2AAAAB ; 2 uses
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, %i.hv
  store float %i.is, ptr %i.hu, align 4, !tbaa !14
  %i.it = fsub reassoc nsz arcp contract afn float %i.hz, %i.ir
  store float %i.it, ptr %i.hy, align 4, !tbaa !14
  %i.iu = extractelement <4 x float> %i.io, i64 1
  %i.iv = fsub reassoc nsz arcp contract afn float %i.av, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn float %i.iv, f0x3E2AAAAB ; 2 uses
  %i.ix = load float, ptr %i.id, align 4, !tbaa !14
  %i.iy = fadd reassoc nsz arcp contract afn float %i.iw, %i.ix
  store float %i.iy, ptr %i.id, align 4, !tbaa !14
  %i.iz = load float, ptr %i.ig, align 4, !tbaa !14
  %i.ja = fsub reassoc nsz arcp contract afn float %i.iz, %i.iw
  store float %i.ja, ptr %i.ig, align 4, !tbaa !14
  %i.jb = extractelement <4 x float> %i.io, i64 2
  %i.jc = fsub reassoc nsz arcp contract afn float %i.at, %i.jb
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, f0x3E2AAAAB ; 2 uses
  %i.je = load float, ptr %i.ik, align 4, !tbaa !14
  %i.jf = fadd reassoc nsz arcp contract afn float %i.jd, %i.je
  store float %i.jf, ptr %i.ik, align 4, !tbaa !14
  %i.jg = load float, ptr %i.in, align 4, !tbaa !14
  %i.jh = fsub reassoc nsz arcp contract afn float %i.jg, %i.jd
  store float %i.jh, ptr %i.in, align 4, !tbaa !14
  %i.ji = extractelement <4 x float> %i.io, i64 3
  %i.jj = fsub reassoc nsz arcp contract afn float %i.ar, %i.ji
  %i.jk = fmul reassoc nsz arcp contract afn float %i.jj, f0x3E2AAAAB ; 2 uses
  %i.jl = extractelement <4 x i32> %i.ho, i64 3   ; 2 uses
  %i.jm = sub nsw i32 5, %i.jl
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jn ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !14
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jk, %i.jp
  store float %i.jq, ptr %i.jo, align 4, !tbaa !14
  %i.jr = sub nsw i32 6, %i.jl
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.js ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !14
  %i.jv = fsub reassoc nsz arcp contract afn float %i.ju, %i.jk
  store float %i.jv, ptr %i.jt, align 4, !tbaa !14
  %i.jw = sub nsw i32 5, %.sroa.67.1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jx ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !14
  %i.ka = sub nsw i32 6, %.sroa.67.1
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kb ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !14
  %i.ke = sitofp <2 x i32> %i.hq to <2 x float>   ; 2 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0
  %i.kg = fsub reassoc nsz arcp contract afn float %i.ap, %i.kf
  %i.kh = fmul reassoc nsz arcp contract afn float %i.kg, f0x3E2AAAAB ; 2 uses
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.jz
  store float %i.ki, ptr %i.jy, align 4, !tbaa !14
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kd, %i.kh
  store float %i.kj, ptr %i.kc, align 4, !tbaa !14
  %i.kk = extractelement <2 x float> %i.ke, i64 1
  %i.kl = fsub reassoc nsz arcp contract afn float %i.an, %i.kk
end_hunk_0
