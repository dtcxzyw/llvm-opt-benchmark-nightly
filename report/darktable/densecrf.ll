Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/densecrf?download=true
inline.NumInlined: 170
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN22HashTablePermutohedralILi2ELi2EE9growExactEm:bb.a
.lr.ph34.1:                                       ; preds = %bb.o, %.lr.ph34.1
  %.032.1 = phi i64 [ %i.by, %.lr.ph34.1 ], [ %i.bu, %bb.o ]
  %i.bx = add i64 %.032.1, 1
  %i.by = and i64 %i.bx, %i.bt                    ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !113
  %.not.1 = icmp eq i32 %i.ca, -1
  br i1 %.not.1, label %._crit_edge35.1, label %.lr.ph34.1, !llvm.loop !219

._crit_edge35.1:                                  ; preds = %.lr.ph34.1, %bb.o
  %.0.lcssa.1 = phi i64 [ %i.bu, %bb.o ], [ %i.by, %.lr.ph34.1 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.0.lcssa.1
  store i32 %i.bm, ptr %i.cb, align 4, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge35.1, %bb.n
  %i.cc = add nuw i64 %.01836, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge39.thread.loopexit.unr-lcssa, label %bb.l, !llvm.loop !220

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
  br i1 %.not.epil, label %._crit_edge35.epil, label %.lr.ph34.epil, !llvm.loop !219

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
  %i.an = fmul reassoc nsz arcp contract afn float %i.d, %i.h ; 4 uses
  %i.ao = fsub reassoc nsz arcp contract afn float %i.an, %i.n
  %i.ap = fadd reassoc nsz arcp contract afn float %i.p, %i.ao ; 4 uses
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
  %i.ct = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.an, i64 1 ; 4 uses
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
  %i.ei = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = fsub reassoc nsz arcp contract afn <4 x float> %i.ej, %i.eh
  %i.el = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.do, %i.ek ; 5 uses
  %i.em = extractelement <4 x i1> %i.el, i64 0    ; 2 uses
  %i.en = select <4 x i1> %i.ef, <4 x i32> splat (i32 1), <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.eo = select <4 x i1> %i.ee, <4 x i32> <i32 2, i32 1, i32 2, i32 1>, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.ep = select <4 x i1> %i.dz, <4 x i32> %i.en, <4 x i32> %i.eo
  %i.eq = xor <4 x i1> %i.ea, <i1 false, i1 false, i1 false, i1 true>
  %i.er = zext <4 x i1> %i.eq to <4 x i32>
  %i.es = add nuw nsw <4 x i32> %i.ep, %i.er
  %i.et = zext <4 x i1> %i.el to <4 x i32>
  %i.eu = add nuw nsw <4 x i32> %i.es, %i.et
  %i.ev = shufflevector <2 x i32> %i.de, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ew = sitofp <4 x i32> %i.ev to <4 x float>
  %i.ex = insertelement <4 x float> poison, float %i.an, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = fsub reassoc nsz arcp contract afn <4 x float> %i.ey, %i.ew
  %i.fa = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.do, %i.ez ; 5 uses
  %i.fb = zext <4 x i1> %i.fa to <4 x i32>
  %i.fc = extractelement <4 x i1> %i.fa, i64 0    ; 2 uses
  %i.fd = extractelement <4 x i1> %i.el, i64 1
  %i.fe = extractelement <4 x i1> %i.fa, i64 1
  %i.ff = extractelement <4 x i1> %i.el, i64 2
  %i.fg = extractelement <4 x i1> %i.fa, i64 2
  %i.fh = extractelement <4 x i1> %i.el, i64 3
  %i.fi = add nuw nsw <4 x i32> %i.eu, %i.fb      ; 5 uses
  %i.fj = extractelement <4 x i1> %i.fa, i64 3
  %i.fk = sitofp <2 x i32> %i.de to <2 x float>
  %i.fl = fsub reassoc nsz arcp contract afn <2 x float> %i.cu, %i.fk ; 2 uses
  %not.320 = xor i1 %i.em, true
  %.sroa.67.10 = zext i1 %not.320 to i32
  %not.321 = xor i1 %i.fc, true
  %.sroa.83.10 = zext i1 %not.321 to i32
  %i.fm = select i1 %i.em, i32 1, i32 2
  %.sroa.67.9 = select i1 %i.fd, i32 %.sroa.67.10, i32 %i.fm
  %i.fn = select i1 %i.fc, i32 1, i32 2
  %.sroa.83.9 = select i1 %i.fe, i32 %.sroa.83.10, i32 %i.fn
  %not.323 = xor i1 %i.ff, true
  %i.fo = zext i1 %not.323 to i32
  %.sroa.67.8 = add nuw nsw i32 %.sroa.67.9, %i.fo
  %not.324 = xor i1 %i.fg, true
  %i.fp = zext i1 %not.324 to i32
  %.sroa.83.8 = add nuw nsw i32 %.sroa.83.9, %i.fp
  %not.325 = xor i1 %i.fh, true
  %i.fq = zext i1 %not.325 to i32
  %.sroa.67.4 = add nuw nsw i32 %.sroa.67.8, %i.fq
  %not.326 = xor i1 %i.fj, true
  %i.fr = zext i1 %not.326 to i32
  %.sroa.83.7 = add nuw nsw i32 %.sroa.83.8, %i.fr
  %shift = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fs = fcmp olt <2 x float> %i.fl, %shift
  %i.ft = extractelement <2 x i1> %i.fs, i64 0    ; 2 uses
  %i.fu = zext i1 %i.ft to i32
  %.sroa.67.6 = add nuw nsw i32 %.sroa.67.4, %i.fu ; 5 uses
  %not.327 = xor i1 %i.ft, true
  %i.fv = zext i1 %not.327 to i32
  %.sroa.83.5 = add nuw nsw i32 %.sroa.83.7, %i.fv ; 5 uses
  %i.fw = extractelement <2 x i32> %i.cn, i64 0
  %i.fx = shufflevector <2 x i32> %i.de, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.fz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fy)
  %op.rdx = add i32 %i.fz, %i.df
  %op.rdx329 = add i32 %op.rdx, %i.fw             ; 3 uses
  %i.ga = sdiv i32 %op.rdx329, 6                  ; 10 uses
  %i.gb = icmp sgt i32 %op.rdx329, 5
  br i1 %i.gb, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.gc = sub nsw i32 6, %i.ga                    ; 3 uses
  %i.gd = add nsw i32 %i.ga, -6                   ; 3 uses
  %i.ge = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x i32> %i.ge, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 2 uses
  %i.gg = add nsw <4 x i32> %i.gf, splat (i32 -6)
  %i.gh = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %i.gi = shufflevector <4 x i32> %i.gh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gj = icmp slt <4 x i32> %i.fi, %i.gi         ; 2 uses
  %i.gk = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %i.gl = shufflevector <4 x i32> %i.gk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gm = insertelement <4 x i32> poison, i32 %i.gd, i64 0
  %i.gn = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.go = select <4 x i1> %i.gj, <4 x i32> %i.gl, <4 x i32> %i.gn
  %i.gp = select <4 x i1> %i.gj, <4 x i32> %i.gf, <4 x i32> %i.gg
  %i.gq = add nsw <4 x i32> %i.go, %i.fi
  %.not.4 = icmp slt i32 %.sroa.67.6, %i.gc       ; 2 uses
  %i.gr = add nsw <2 x i32> %i.de, splat (i32 -6)
  %.pn106.4 = select i1 %.not.4, i32 %i.ga, i32 %i.gd
  %storemerge105.4 = add nsw i32 %.pn106.4, %.sroa.67.6
  %.not.5 = icmp slt i32 %.sroa.83.5, %i.gc       ; 2 uses
  %i.gs = insertelement <2 x i1> poison, i1 %.not.4, i64 0
  %i.gt = insertelement <2 x i1> %i.gs, i1 %.not.5, i64 1
  %i.gu = select <2 x i1> %i.gt, <2 x i32> %i.de, <2 x i32> %i.gr
  %.pn106.5 = select i1 %.not.5, i32 %i.ga, i32 %i.gd
  %storemerge105.5 = add nsw i32 %.pn106.5, %.sroa.83.5
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.gv = icmp slt i32 %op.rdx329, -5
  %i.gw = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x i32> %i.gw, <4 x i32> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 7> ; 3 uses
  br i1 %i.gv, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.gy = sub nsw i32 0, %i.ga                    ; 3 uses
  %i.gz = add nsw i32 %i.ga, 6                    ; 3 uses
  %i.ha = add nsw <4 x i32> %i.gx, splat (i32 6)
  %i.hb = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %i.hc = shufflevector <4 x i32> %i.hb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hd = icmp slt <4 x i32> %i.fi, %i.hc         ; 2 uses
  %i.he = insertelement <4 x i32> poison, i32 %i.gz, i64 0
  %i.hf = shufflevector <4 x i32> %i.he, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hg = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %i.hh = shufflevector <4 x i32> %i.hg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hi = select <4 x i1> %i.hd, <4 x i32> %i.hf, <4 x i32> %i.hh
  %i.hj = select <4 x i1> %i.hd, <4 x i32> %i.ha, <4 x i32> %i.gx
  %i.hk = add nsw <4 x i32> %i.hi, %i.fi
  %i.hl = icmp slt i32 %.sroa.67.6, %i.gy         ; 2 uses
  %i.hm = add nsw <2 x i32> %i.de, splat (i32 6)
  %.pn.4 = select i1 %i.hl, i32 %i.gz, i32 %i.ga
  %storemerge.4 = add nsw i32 %.pn.4, %.sroa.67.6
  %i.hn = icmp slt i32 %.sroa.83.5, %i.gy         ; 2 uses
  %i.ho = insertelement <2 x i1> poison, i1 %i.hl, i64 0
  %i.hp = insertelement <2 x i1> %i.ho, i1 %i.hn, i64 1
  %i.hq = select <2 x i1> %i.hp, <2 x i32> %i.hm, <2 x i32> %i.de
  %.pn.5 = select i1 %i.hn, i32 %i.gz, i32 %i.ga
  %storemerge.5 = add nsw i32 %.pn.5, %.sroa.83.5
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %.sroa.67.1 = phi i32 [ %storemerge105.4, %.preheader107 ], [ %storemerge.4, %.preheader108 ], [ %.sroa.67.6, %bb.a ] ; 3 uses
  %.sroa.83.1 = phi i32 [ %storemerge105.5, %.preheader107 ], [ %storemerge.5, %.preheader108 ], [ %.sroa.83.5, %bb.a ] ; 2 uses
  %i.hr = phi <4 x i32> [ %i.gq, %.preheader107 ], [ %i.hk, %.preheader108 ], [ %i.fi, %bb.a ] ; 5 uses
  %i.hs = phi <4 x i32> [ %i.gp, %.preheader107 ], [ %i.hj, %.preheader108 ], [ %i.gx, %bb.a ] ; 2 uses
  %i.ht = phi <2 x i32> [ %i.gu, %.preheader107 ], [ %i.hq, %.preheader108 ], [ %i.de, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  %i.hu = extractelement <4 x i32> %i.hr, i64 0   ; 2 uses
  %i.hv = sub nsw i32 5, %i.hu
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hw ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !14
  %i.hz = sub nsw i32 6, %i.hu
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ia ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !14
  %i.id = extractelement <4 x i32> %i.hr, i64 1   ; 2 uses
  %i.ie = sub nsw i32 5, %i.id
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.if ; 2 uses
  %i.ih = sub nsw i32 6, %i.id
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ii ; 2 uses
  %i.ik = extractelement <4 x i32> %i.hr, i64 2   ; 2 uses
  %i.il = sub nsw i32 5, %i.ik
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.im ; 2 uses
  %i.io = sub nsw i32 6, %i.ik
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ip ; 2 uses
  %i.ir = sitofp <4 x i32> %i.hs to <4 x float>   ; 4 uses
  %i.is = extractelement <4 x float> %i.ir, i64 0
  %i.it = fsub reassoc nsz arcp contract afn float %i.aw, %i.is
  %i.iu = fmul reassoc nsz arcp contract afn float %i.it, f0x3E2AAAAB ; 2 uses
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, %i.hy
  store float %i.iv, ptr %i.hx, align 4, !tbaa !14
  %i.iw = fsub reassoc nsz arcp contract afn float %i.ic, %i.iu
  store float %i.iw, ptr %i.ib, align 4, !tbaa !14
  %i.ix = extractelement <4 x float> %i.ir, i64 1
  %i.iy = fsub reassoc nsz arcp contract afn float %i.av, %i.ix
  %i.iz = fmul reassoc nsz arcp contract afn float %i.iy, f0x3E2AAAAB ; 2 uses
  %i.ja = load float, ptr %i.ig, align 4, !tbaa !14
  %i.jb = fadd reassoc nsz arcp contract afn float %i.iz, %i.ja
  store float %i.jb, ptr %i.ig, align 4, !tbaa !14
  %i.jc = load float, ptr %i.ij, align 4, !tbaa !14
  %i.jd = fsub reassoc nsz arcp contract afn float %i.jc, %i.iz
  store float %i.jd, ptr %i.ij, align 4, !tbaa !14
  %i.je = extractelement <4 x float> %i.ir, i64 2
  %i.jf = fsub reassoc nsz arcp contract afn float %i.at, %i.je
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, f0x3E2AAAAB ; 2 uses
  %i.jh = load float, ptr %i.in, align 4, !tbaa !14
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jg, %i.jh
  store float %i.ji, ptr %i.in, align 4, !tbaa !14
  %i.jj = load float, ptr %i.iq, align 4, !tbaa !14
  %i.jk = fsub reassoc nsz arcp contract afn float %i.jj, %i.jg
  store float %i.jk, ptr %i.iq, align 4, !tbaa !14
  %i.jl = extractelement <4 x float> %i.ir, i64 3
  %i.jm = fsub reassoc nsz arcp contract afn float %i.ar, %i.jl
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, f0x3E2AAAAB ; 2 uses
  %i.jo = extractelement <4 x i32> %i.hr, i64 3   ; 2 uses
  %i.jp = sub nsw i32 5, %i.jo
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jq ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !14
  %i.jt = fadd reassoc nsz arcp contract afn float %i.jn, %i.js
  store float %i.jt, ptr %i.jr, align 4, !tbaa !14
  %i.ju = sub nsw i32 6, %i.jo
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.jv ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !14
  %i.jy = fsub reassoc nsz arcp contract afn float %i.jx, %i.jn
  store float %i.jy, ptr %i.jw, align 4, !tbaa !14
  %i.jz = sub nsw i32 5, %.sroa.67.1
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ka ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !14
  %i.kd = sub nsw i32 6, %.sroa.67.1
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ke ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !14
  %i.kh = sitofp <2 x i32> %i.ht to <2 x float>   ; 2 uses
  %i.ki = extractelement <2 x float> %i.kh, i64 0
  %i.kj = fsub reassoc nsz arcp contract afn float %i.ap, %i.ki
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, f0x3E2AAAAB ; 2 uses
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kk, %i.kc
  store float %i.kl, ptr %i.kb, align 4, !tbaa !14
  %i.km = fsub reassoc nsz arcp contract afn float %i.kg, %i.kk
  store float %i.km, ptr %i.kf, align 4, !tbaa !14
  %i.kn = extractelement <2 x float> %i.kh, i64 1
  %i.ko = fsub reassoc nsz arcp contract afn float %i.an, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, f0x3E2AAAAB ; 2 uses
  %i.kq = sub nsw i32 5, %.sroa.83.1
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kr ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !14
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kp, %i.kt
  store float %i.ku, ptr %i.ks, align 4, !tbaa !14
  %i.kv = sub nsw i32 6, %.sroa.83.1
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kw ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !14
  %i.kz = fsub reassoc nsz arcp contract afn float %i.ky, %i.kp
  store float %i.kz, ptr %i.kx, align 4, !tbaa !14
  %i.la = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.lb = load float, ptr %i.la, align 8, !tbaa !14
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, 1.000000e+00
  %i.ld = load float, ptr %i.a, align 16, !tbaa !14
  %i.le = fadd reassoc nsz arcp contract afn float %i.lc, %i.ld
  store float %i.le, ptr %i.a, align 16, !tbaa !14
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !44 ; 2 uses
  %i.lh = getelementptr inbounds nuw [52 x i8], ptr %i.lg, i64 %3
  store i32 %4, ptr %i.lh, align 4, !tbaa !128
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ll = sext i32 %4 to i64                      ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load ptr, ptr %i.lk, align 8, !tbaa !42
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.lo = extractelement <2 x i32> %i.ht, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.loopexit, %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.lp = phi ptr [ %i.lg, %.loopexit ], [ %i.oy, %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ]
  %i.lq = phi ptr [ %.pre, %.loopexit ], [ %i.oz, %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i ] ; 5 uses
  %i.lr = load ptr, ptr %i.li, align 8, !tbaa !53 ; 2 uses
  %i.ls = trunc i64 %indvars.iv to i32
  %i.lt = mul i32 %i.ls, 6                        ; 2 uses
  %i.lu = insertelement <4 x i32> poison, i32 %i.lt, i64 0
  %i.lv = shufflevector <4 x i32> %i.lu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.lw = add nsw <4 x i32> %i.hr, %i.lv
  %i.lx = sext <4 x i32> %i.lw to <4 x i64>
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.lr, <4 x i64> %i.lx
  %i.lz = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.ly, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !26
  %i.ma = add nsw <4 x i32> %i.lz, %i.hs          ; 4 uses
  %i.mb = trunc <4 x i32> %i.ma to <4 x i16>
  store <4 x i16> %i.mb, ptr %i.lj, align 4, !tbaa !104
  %i.mc = add nsw i32 %.sroa.67.1, %i.lt
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !26
  %i.mg = add nsw i32 %i.mf, %i.lo                ; 2 uses
  %i.mh = trunc i32 %i.mg to i16
  store i16 %i.mh, ptr %i.ln, align 4, !tbaa !104
  %i.mi = shufflevector <4 x i32> %i.ma, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.mj = shl <2 x i32> %i.mi, splat (i32 16)
  %i.mk = ashr exact <2 x i32> %i.mj, splat (i32 16) ; 2 uses
  %i.ml = extractelement <2 x i32> %i.mk, i64 0
  %i.mm = mul i32 %i.ml, 2531011
  %i.mn = extractelement <2 x i32> %i.mk, i64 1
  %i.mo = add i32 %i.mm, %i.mn
  %i.mp = mul i32 %i.mo, 2531011
  %i.mq = extractelement <4 x i32> %i.ma, i64 2
  %sext310 = shl i32 %i.mq, 16
  %i.mr = ashr exact i32 %sext310, 16
  %i.ms = add i32 %i.mp, %i.mr
  %i.mt = mul i32 %i.ms, 2531011
  %i.mu = extractelement <4 x i32> %i.ma, i64 3
  %sext311 = shl i32 %i.mu, 16
  %i.mv = ashr exact i32 %sext311, 16
  %i.mw = add i32 %i.mt, %i.mv
  %i.mx = mul i32 %i.mw, 2531011
  %sext312 = shl i32 %i.mg, 16
  %i.my = ashr exact i32 %sext312, 16
  %i.mz = add i32 %i.mx, %i.my
  %i.na = mul i32 %i.mz, 2531011                  ; 3 uses
  store i32 %i.na, ptr %5, align 4, !tbaa !110
  %i.nb = getelementptr inbounds [80 x i8], ptr %i.lq, i64 %i.ll ; 10 uses
  %i.nc = zext i32 %i.na to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 48
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !56 ; 2 uses
  %i.nf = and i64 %i.ne, %i.nc                    ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !108 ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nf
  %.sroa.0.0.copyload22.i.i = load i32, ptr %i.ni, align 4, !tbaa !26 ; 2 uses
  %i.nj = icmp eq i32 %.sroa.0.0.copyload22.i.i, -1
  br i1 %i.nj, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

.lr.ph.i.i:                                       ; preds = %.preheader
  %i.nk = load ptr, ptr %i.nb, align 8, !tbaa !107
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.preheader
  %.011.lcssa.i.i = phi i64 [ %i.nf, %.preheader ], [ %i.ov, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nb, i64 32 ; 4 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !43 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !116
  %.not.i.i = icmp ult i64 %i.nm, %i.no
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.nb, i64 72 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !129
  %i.nr = add i64 %i.nq, 1
  store i64 %i.nr, ptr %i.np, align 8, !tbaa !129
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !55
  tail call void @_ZN22HashTablePermutohedralILi5ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.nb, i64 noundef %i.nt)
  %.pre.i.i = load i64, ptr %i.nl, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %i.nu = phi i64 [ %.pre.i.i, %bb.c ], [ %i.nm, %._crit_edge.i.i ]
  %i.nv = load ptr, ptr %i.nb, align 8, !tbaa !107
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.nw, ptr noundef nonnull align 4 dereferenceable(14) %5, i64 14, i1 false), !tbaa.struct !130
  %i.nx = load i64, ptr %i.nl, align 8, !tbaa !43 ; 2 uses
  %i.ny = trunc i64 %i.nx to i32                  ; 2 uses
  %i.nz = load ptr, ptr %i.ng, align 8, !tbaa !108
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %.011.lcssa.i.i
  store i32 %i.ny, ptr %i.oa, align 4, !tbaa !118
  %i.ob = add i64 %i.nx, 1
  store i64 %i.ob, ptr %i.nl, align 8, !tbaa !43
  %.pre306 = load ptr, ptr %i.lk, align 8, !tbaa !42
  %.pre307 = load ptr, ptr %i.lf, align 8, !tbaa !44
  br label %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.e:                                             ; preds = %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i, %.lr.ph.i.i
  %.sroa.0.0.copyload24.i.i = phi i32 [ %.sroa.0.0.copyload22.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i ] ; 2 uses
  %.01123.i.i = phi i64 [ %i.nf, %.lr.ph.i.i ], [ %i.ov, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i ]
  %i.oc = sext i32 %.sroa.0.0.copyload24.i.i to i64
  %i.od = getelementptr inbounds [16 x i8], ptr %i.nk, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !110
  %.not.i.i.i = icmp eq i32 %i.oe, %i.na
  br i1 %.not.i.i.i, label %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i, label %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i: ; preds = %bb.e
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  %i.og = load i64, ptr %i.of, align 1
  %i.oh = load i64, ptr %i.lj, align 1
  %i.oi = xor i64 %i.og, %i.oh
  %i.oj = getelementptr i8, ptr %i.of, i64 8
  %i.ok = getelementptr i8, ptr %i.lj, i64 8
  %i.ol = load i16, ptr %i.oj, align 1
  %i.om = load i16, ptr %i.ok, align 1
  %i.on = zext i16 %i.ol to i64
  %i.oo = zext i16 %i.om to i64
  %i.op = xor i64 %i.on, %i.oo
  %i.oq = or i64 %i.oi, %i.op
  %i.or = icmp ne i64 %i.oq, 0
  %i.os = zext i1 %i.or to i32
  %i.ot = icmp eq i32 %i.os, 0
  br i1 %i.ot, label %_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i, label %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i

_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.thread.i.i: ; preds = %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i, %bb.e
  %i.ou = add i64 %.01123.i.i, 1
  %i.ov = and i64 %i.ou, %i.ne                    ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ov
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ow, align 4, !tbaa !26 ; 2 uses
  %i.ox = icmp eq i32 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.ox, label %._crit_edge.i.i, label %bb.e, !llvm.loop !1

_ZN22HashTablePermutohedralILi5ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i: ; preds = %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i, %bb.d
  %i.oy = phi ptr [ %.pre307, %bb.d ], [ %i.lp, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %i.oz = phi ptr [ %.pre306, %bb.d ], [ %i.lq, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %.113.ph.i.i = phi i32 [ %i.ny, %bb.d ], [ %.sroa.0.0.copyload24.i.i, %_ZNK22HashTablePermutohedralILi5ELi2EE3KeyeqERKS1_.exit.i.i ] ; 2 uses
  %i.pa = icmp sgt i32 %.113.ph.i.i, -1
  tail call void @llvm.assume(i1 %i.pa)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !30
  %i.pd = zext nneg i32 %.113.ph.i.i to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.pd ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !14 ; 3 uses
  %i.ph = load float, ptr %2, align 4, !tbaa !14
  %i.pi = fmul reassoc nsz arcp contract afn float %i.ph, %i.pg
  %i.pj = load float, ptr %i.pe, align 4, !tbaa !14
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pj, %i.pi
  store float %i.pk, ptr %i.pe, align 4, !tbaa !14
  %i.pl = load float, ptr %i.lm, align 4, !tbaa !14
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pl, %i.pg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 2 uses
end_hunk_0
