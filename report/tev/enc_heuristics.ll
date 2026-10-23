Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1819
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_110CreateMaskERKNS_5PlaneIfEERS2_:bb.a
.lr.ph17:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %.fr = freeze ptr %i.e                          ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !88     ; 5 uses
  %i.i = zext i32 %i.h to i64                     ; 8 uses
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph17.split.us.preheader

.lr.ph17.split.us.preheader:                      ; preds = %.lr.ph17
  %.not = icmp eq i32 %i.h, 1
  %.in.us.peel.idx = select i1 %.not, i64 0, i64 4
  %exitcond.peel.not = icmp eq i32 %i.h, 1
  %scevgep = getelementptr i8, ptr %.40.val, i64 4 ; 3 uses
  %i.j = add nsw i64 %i.c, -1                     ; 2 uses
  %i.k = mul i64 %.16.val, %i.j
  %i.l = shl nuw nsw i64 %i.i, 2                  ; 4 uses
  %i.m = getelementptr i8, ptr %.40.val, i64 %i.k
  %scevgep32 = getelementptr i8, ptr %i.m, i64 %i.l ; 3 uses
  %scevgep33 = getelementptr i8, ptr %.fr, i64 4
  %scevgep35 = getelementptr i8, ptr %.fr, i64 %i.l
  %scevgep37 = getelementptr i8, ptr %.fr, i64 4
  %scevgep39 = getelementptr i8, ptr %.fr, i64 %i.l
  %i.n = mul i64 %i.g, %i.j
  %i.o = getelementptr i8, ptr %.fr, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 %i.l
  %.fr60 = freeze ptr %i.p
  %scevgep41 = getelementptr i8, ptr %.fr60, i64 4
  %i.q = add nsw i64 %i.i, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 5
  %stride.check = icmp slt i64 %.16.val, 0
  %bound045 = icmp ult ptr %scevgep, %scevgep41
  %bound146 = icmp ult ptr %.fr, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %stride.check48 = icmp slt i64 %i.g, 0
  %i.r = or i1 %found.conflict47, %stride.check48
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.lr.ph17.split.us

.lr.ph17.split.us:                                ; preds = %.lr.ph17.split.us.preheader, %..loopexit_crit_edge.us
  %.016.us = phi i64 [ %i.x, %..loopexit_crit_edge.us ], [ 0, %.lr.ph17.split.us.preheader ] ; 5 uses
  %.not.us = icmp eq i64 %.016.us, 0
  %i.t = add nsw i64 %.016.us, -1
  %i.u = mul i64 %i.g, %i.t
  %.sink.idx = select i1 %.not.us, i64 0, i64 %i.u ; 3 uses
  %.sink = getelementptr inbounds nuw i8, ptr %.fr, i64 %.sink.idx ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink, i64 64) ]
  %i.v = mul i64 %i.g, %.016.us                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.fr, i64 %i.v ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = add nuw nsw i64 %.016.us, 1              ; 4 uses
  %i.y = icmp samesign ult i64 %i.x, %i.c
  %i.z = mul i64 %i.g, %i.x
  %spec.select.us = select i1 %i.y, i64 %i.z, i64 %i.v ; 3 uses
  %i.aa = mul i64 %.016.us, %.16.val
  %i.ab = getelementptr inbounds nuw i8, ptr %.40.val, i64 %i.aa ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ab, i64 64) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.fr, i64 %spec.select.us ; 3 uses
  %i.ad = load float, ptr %i.w, align 64, !tbaa !112 ; 5 uses
  %.in.us.peel = getelementptr inbounds nuw i8, ptr %i.w, i64 %.in.us.peel.idx
  %i.ae = load float, ptr %.in.us.peel, align 4, !tbaa !112
  %i.af = load float, ptr %.sink, align 64, !tbaa !112
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !112
  %i.ah = fsub float %i.ad, %i.ad
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.ah) ; 2 uses
  %i.aj = fsub float %i.ad, %i.ae
  %i.ak = tail call noundef float @llvm.fabs.f32(float %i.aj) ; 4 uses
  %i.al = fsub float %i.ad, %i.af
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.al) ; 4 uses
  %i.an = fsub float %i.ad, %i.ag
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an) ; 3 uses
  %i.ap = fcmp olt float %i.ai, f0x7F7FFFFF
  %.110.us.peel = select i1 %i.ap, float %i.ai, float f0x7F7FFFFF ; 4 uses
  %i.aq = fcmp olt float %i.ak, f0x7F7FFFFF
  br i1 %i.aq, label %bb.b, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

bb.b:                                             ; preds = %.lr.ph17.split.us
  %i.ar = fcmp olt float %i.ak, %.110.us.peel
  br i1 %i.ar, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel, label %.sink.split.i55.sroa.store.us.peel

.sink.split.i55.sroa.store.us.peel:               ; preds = %bb.b
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel: ; preds = %.sink.split.i55.sroa.store.us.peel, %bb.b, %.lr.ph17.split.us
  %.312.us.peel = phi float [ %.110.us.peel, %.lr.ph17.split.us ], [ %.110.us.peel, %.sink.split.i55.sroa.store.us.peel ], [ %i.ak, %bb.b ] ; 4 uses
  %.3.us.peel = phi float [ f0x7F7FFFFF, %.lr.ph17.split.us ], [ %i.ak, %.sink.split.i55.sroa.store.us.peel ], [ %.110.us.peel, %bb.b ] ; 2 uses
  %i.as = fcmp olt float %i.am, %.3.us.peel
  br i1 %i.as, label %bb.c, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

bb.c:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %i.at = fcmp olt float %i.am, %.312.us.peel
  br i1 %i.at, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel, label %.sink.split.i58.sroa.store.us.peel

.sink.split.i58.sroa.store.us.peel:               ; preds = %bb.c
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel: ; preds = %.sink.split.i58.sroa.store.us.peel, %bb.c, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel
  %.514.us.peel = phi float [ %.312.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %.312.us.peel, %.sink.split.i58.sroa.store.us.peel ], [ %i.am, %bb.c ] ; 2 uses
  %.5.us.peel = phi float [ %.3.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us.peel ], [ %i.am, %.sink.split.i58.sroa.store.us.peel ], [ %.312.us.peel, %bb.c ] ; 2 uses
  %i.au = fcmp olt float %i.ao, %.5.us.peel
  br i1 %i.au, label %bb.d, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

bb.d:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %i.av = fcmp olt float %i.ao, %.514.us.peel
  br i1 %i.av, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel, label %.sink.split.i61.sroa.store.us.peel

.sink.split.i61.sroa.store.us.peel:               ; preds = %bb.d
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel: ; preds = %.sink.split.i61.sroa.store.us.peel, %bb.d, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel
  %.7.us.peel = phi float [ %.5.us.peel, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us.peel ], [ %i.ao, %.sink.split.i61.sroa.store.us.peel ], [ %.514.us.peel, %bb.d ]
  store float %.7.us.peel, ptr %i.ab, align 64, !tbaa !112
  br i1 %exitcond.peel.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader: ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  br i1 %min.iters.check, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %spec.select.us
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %spec.select.us
  %scevgep38 = getelementptr i8, ptr %scevgep37, i64 %.sink.idx
  %scevgep40 = getelementptr i8, ptr %scevgep39, i64 %.sink.idx
  %bound0 = icmp ult ptr %scevgep, %scevgep36
  %bound1 = icmp ult ptr %scevgep34, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.aw = or i1 %found.conflict, %stride.check
  %bound042 = icmp ult ptr %scevgep, %scevgep40
  %bound143 = icmp ult ptr %scevgep38, %scevgep32
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %i.aw, %found.conflict44
  %conflict.rdx49 = or i1 %conflict.rdx, %i.r
  br i1 %conflict.rdx49, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 9 uses
  %i.ax = or disjoint i64 %index, 1               ; 4 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = getelementptr [4 x i8], ptr %i.w, i64 %index
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !112, !alias.scope !719 ; 4 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 -4
  %wide.load50 = load <4 x float>, ptr %i.bf, align 16, !tbaa !112, !alias.scope !719
  %i.bg = or disjoint i64 %index, 2               ; 2 uses
  %i.bh = or disjoint i64 %index, 3               ; 2 uses
  %i.bi = add nuw nsw i64 %index, 4               ; 2 uses
  %i.bj = add i64 %index, 5                       ; 2 uses
  %i.bk = icmp samesign ult i64 %i.bg, %i.i
  %i.bl = icmp samesign ult i64 %i.bh, %i.i
  %i.bm = icmp samesign ult i64 %i.bi, %i.i
  %i.bn = icmp samesign ult i64 %i.bj, %i.i
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bg
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bh
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bi
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bj
  %i.bs = select i1 %i.bk, ptr %i.bo, ptr %i.ay
  %i.bt = select i1 %i.bl, ptr %i.bp, ptr %i.ba
  %i.bu = select i1 %i.bm, ptr %i.bq, ptr %i.bc
  %i.bv = select i1 %i.bn, ptr %i.br, ptr %i.be
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !112, !alias.scope !719
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !112, !alias.scope !719
  %i.by = load float, ptr %i.bu, align 4, !tbaa !112, !alias.scope !719
  %i.bz = load float, ptr %i.bv, align 4, !tbaa !112, !alias.scope !719
  %i.ca = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 1
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 2
  %i.cd = insertelement <4 x float> %i.cc, float %i.bz, i64 3
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.ax
  %wide.load51 = load <4 x float>, ptr %i.ce, align 4, !tbaa !112, !alias.scope !720
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ax
  %wide.load52 = load <4 x float>, ptr %i.cf, align 4, !tbaa !112, !alias.scope !721
  %i.cg = fsub <4 x float> %wide.load, %wide.load50
  %i.ch = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cg) ; 2 uses
  %i.ci = fsub <4 x float> %wide.load, %i.cd
  %i.cj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ci) ; 4 uses
  %i.ck = fsub <4 x float> %wide.load, %wide.load51
  %i.cl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ck) ; 4 uses
  %i.cm = fsub <4 x float> %wide.load, %wide.load52
  %i.cn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cm) ; 3 uses
  %i.co = fcmp olt <4 x float> %i.ch, splat (float f0x7F7FFFFF)
  %i.cp = select <4 x i1> %i.co, <4 x float> %i.ch, <4 x float> splat (float f0x7F7FFFFF) ; 3 uses
  %i.cq = fcmp olt <4 x float> %i.cj, splat (float f0x7F7FFFFF) ; 2 uses
  %i.cr = fcmp olt <4 x float> %i.cj, %i.cp
  %i.cs = select <4 x i1> %i.cq, <4 x i1> %i.cr, <4 x i1> zeroinitializer ; 2 uses
  %predphi = select <4 x i1> %i.cs, <4 x float> %i.cj, <4 x float> %i.cp ; 3 uses
  %predphi53 = select <4 x i1> %i.cs, <4 x float> %i.cp, <4 x float> %i.cj
  %predphi54 = select <4 x i1> %i.cq, <4 x float> %predphi53, <4 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %i.ct = fcmp olt <4 x float> %i.cl, %predphi54  ; 2 uses
  %i.cu = fcmp olt <4 x float> %i.cl, %predphi
  %i.cv = select <4 x i1> %i.ct, <4 x i1> %i.cu, <4 x i1> zeroinitializer ; 2 uses
  %predphi55 = select <4 x i1> %i.cv, <4 x float> %i.cl, <4 x float> %predphi ; 2 uses
  %predphi56 = select <4 x i1> %i.cv, <4 x float> %predphi, <4 x float> %i.cl
  %predphi57 = select <4 x i1> %i.ct, <4 x float> %predphi56, <4 x float> %predphi54 ; 2 uses
  %i.cw = fcmp olt <4 x float> %i.cn, %predphi57
  %i.cx = fcmp olt <4 x float> %i.cn, %predphi55
  %predphi58 = select <4 x i1> %i.cx, <4 x float> %predphi55, <4 x float> %i.cn
  %predphi59 = select <4 x i1> %i.cw, <4 x float> %predphi58, <4 x float> %predphi57
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ax
  store <4 x float> %predphi59, ptr %i.cy, align 4, !tbaa !112, !alias.scope !722, !noalias !723
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !716

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61: ; preds = %vector.memcheck, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader, %middle.block
  %.05115.us.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader ], [ %i.s, %middle.block ]
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us:   ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us
  %.05115.us = phi i64 [ %i.de, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us ], [ %.05115.us.ph, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us.preheader61 ] ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05115.us ; 3 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !112 ; 4 uses
  %i.dc = getelementptr i8, ptr %i.da, i64 -4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !112
  %i.de = add nuw nsw i64 %.05115.us, 1           ; 4 uses
  %i.df = icmp samesign ult i64 %i.de, %i.i
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.de
  %.in.us = select i1 %i.df, ptr %i.dg, ptr %i.da
  %i.dh = load float, ptr %.in.us, align 4, !tbaa !112
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %.05115.us
  %i.dj = load float, ptr %i.di, align 4, !tbaa !112
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05115.us
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !112
  %i.dm = fsub float %i.db, %i.dd
  %i.dn = tail call noundef float @llvm.fabs.f32(float %i.dm) ; 2 uses
  %i.do = fsub float %i.db, %i.dh
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do) ; 4 uses
  %i.dq = fsub float %i.db, %i.dj
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq) ; 4 uses
  %i.ds = fsub float %i.db, %i.dl
  %i.dt = tail call noundef float @llvm.fabs.f32(float %i.ds) ; 3 uses
  %i.du = fcmp olt float %i.dn, f0x7F7FFFFF
  %.110.us = select i1 %i.du, float %i.dn, float f0x7F7FFFFF ; 4 uses
  %i.dv = fcmp olt float %i.dp, f0x7F7FFFFF
  br i1 %i.dv, label %bb.e, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

bb.e:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %i.dw = fcmp olt float %i.dp, %.110.us
  br i1 %i.dw, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us, label %.sink.split.i55.sroa.store.us

.sink.split.i55.sroa.store.us:                    ; preds = %bb.e
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us: ; preds = %.sink.split.i55.sroa.store.us, %bb.e, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us
  %.312.us = phi float [ %.110.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %.110.us, %.sink.split.i55.sroa.store.us ], [ %i.dp, %bb.e ] ; 4 uses
  %.3.us = phi float [ f0x7F7FFFFF, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us ], [ %i.dp, %.sink.split.i55.sroa.store.us ], [ %.110.us, %bb.e ] ; 2 uses
  %i.dx = fcmp olt float %i.dr, %.3.us
  br i1 %i.dx, label %bb.f, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

bb.f:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %i.dy = fcmp olt float %i.dr, %.312.us
  br i1 %i.dy, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us, label %.sink.split.i58.sroa.store.us

.sink.split.i58.sroa.store.us:                    ; preds = %bb.f
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us: ; preds = %.sink.split.i58.sroa.store.us, %bb.f, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us
  %.514.us = phi float [ %.312.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %.312.us, %.sink.split.i58.sroa.store.us ], [ %i.dr, %bb.f ] ; 2 uses
  %.5.us = phi float [ %.3.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit57.us ], [ %i.dr, %.sink.split.i58.sroa.store.us ], [ %.312.us, %bb.f ] ; 2 uses
  %i.dz = fcmp olt float %i.dt, %.5.us
  br i1 %i.dz, label %bb.g, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

bb.g:                                             ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %i.ea = fcmp olt float %i.dt, %.514.us
  br i1 %i.ea, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, label %.sink.split.i61.sroa.store.us

.sink.split.i61.sroa.store.us:                    ; preds = %bb.g
  br label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us

_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us: ; preds = %.sink.split.i61.sroa.store.us, %bb.g, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us
  %.7.us = phi float [ %.5.us, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit60.us ], [ %i.dt, %.sink.split.i61.sroa.store.us ], [ %.514.us, %bb.g ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.05115.us
  store float %.7.us, ptr %i.eb, align 4, !tbaa !112
  %exitcond.not = icmp eq i64 %i.de, %i.i
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit.us, !llvm.loop !717

..loopexit_crit_edge.us:                          ; preds = %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us, %middle.block, %_ZN3jxl12_GLOBAL__N_19StoreMin2EfRfS1_.exit63.us.peel
  %exitcond22.not = icmp eq i64 %i.x, %i.c
  br i1 %exitcond22.not, label %._crit_edge, label %.lr.ph17.split.us, !llvm.loop !718

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph17, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN3jxl12_GLOBAL__N_112AntiUpsampleERKNS_5PlaneIfEEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !88
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !89
  %i.e = zext i32 %i.d to i64
  %i.f = load i32, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !89   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %.not88 = icmp eq i32 %i.f, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = load i64, ptr %i.p, align 8
  br i1 %.not88, label %._crit_edge84, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph83
  %i.s = shl nuw nsw i64 %i.g, 2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05480.us = phi i64 [ %i.ce, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 4 uses
  %i.t = mul i64 %i.n, %.05480.us
  %i.u = getelementptr i8, ptr %i.l, i64 %i.t     ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.u, i64 64) ]
  %i.v = shl nuw nsw i64 %.05480.us, 1            ; 2 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.v, i64 4)
  %spec.store.select1.us = add nsw i64 %i.w, -4   ; 2 uses
  %i.x = add nuw nsw i64 %i.v, 6
  %.051.us = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.e) ; 2 uses
  %i.y = icmp slt i64 %spec.store.select1.us, %.051.us
  br i1 %i.y, label %.lr.ph65.us.us, label %.lr.ph.split.us85.preheader

.lr.ph.split.us85.preheader:                      ; preds = %.lr.ph.us
  tail call void @llvm.memset.p0.i64(ptr align 64 %i.u, i8 0, i64 %i.s, i1 false), !tbaa !112
  br label %._crit_edge.us

.lr.ph65.us.us:                                   ; preds = %.lr.ph.us, %._crit_edge66.us.us
  %.05375.us.us = phi i64 [ %i.cd, %._crit_edge66.us.us ], [ 0, %.lr.ph.us ] ; 5 uses
  %i.z = shl nuw nsw i64 %.05375.us.us, 1         ; 2 uses
  %i.aa = add nuw i64 %i.z, 6
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.b) ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 4)
  %i.ab = add nuw nsw i64 %umin, 3
  %i.ac = shl nuw nsw i64 %.05375.us.us, 1        ; 2 uses
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 4) ; 2 uses
  %spec.store.select.us.us = add nsw i64 %i.ad, -4 ; 4 uses
  %i.ae = add nuw nsw i64 %i.ac, 6
  %spec.select.us.us = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.b) ; 3 uses
  %i.af = icmp slt i64 %spec.store.select.us.us, %spec.select.us.us
  br i1 %i.af, label %.lr.ph.us.us.us.preheader, label %._crit_edge66.us.us

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph65.us.us
  %xtraiter = and i64 %umin, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.ad, -3
  %i.ah = icmp eq i64 %i.ab, %smax
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.04962.us.us.us = phi i64 [ %i.ca, %._crit_edge.us.us.us ], [ %spec.store.select1.us, %.lr.ph.us.us.us.preheader ] ; 5 uses
  %.05061.us.us.us = phi float [ %.us-phi.us.us.us, %._crit_edge.us.us.us ], [ 0.000000e+00, %.lr.ph.us.us.us.preheader ] ; 3 uses
  %i.ai = mul i64 %i.r, %.04962.us.us.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ai ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aj, i64 64) ]
  %.neg27.i.us.us.us = sdiv i64 %.04962.us.us.us, -2
  %i.ak = add i64 %.neg27.i.us.us.us, %.05480.us
  %.fr89 = freeze i64 %i.ak                       ; 2 uses
  %i.al = add i64 %.fr89, -3
  %i.am = icmp ult i64 %i.al, -5
  %i.an = and i64 %.04962.us.us.us, 1
  %.not25.i.us.us.us = icmp eq i64 %i.an, 0
  %spec.select.i.us.us.us = select i1 %.not25.i.us.us.us, ptr @_ZN3jxl12_GLOBAL__N_18kernel00E, ptr @_ZN3jxl12_GLOBAL__N_18kernel01E
  %.idx.i.us.us.us = mul nsw i64 %.fr89, 20
  br i1 %i.am, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader, label %.lr.ph.split.us68.us.us

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader: ; preds = %.lr.ph.us.us.us
  br i1 %lcmp.mod.not, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol: ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %spec.store.select.us.us
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !112
  %i.aq = fpext float %i.ap to double
  %i.ar = fpext float %.05061.us.us.us to double
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aq, double 0.000000e+00, double %i.ar)
  %i.at = fptrunc double %i.as to float           ; 2 uses
  br label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit

_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol.loopexit: ; preds = %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader
  %.060.us.us.us.us.unr = phi i64 [ %spec.store.select.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.ag, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  %.159.us.us.us.us.unr = phi float [ %.05061.us.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.at, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  %.lcssa105.unr = phi float [ poison, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.preheader ], [ %i.at, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us.prol ]
  br i1 %i.ah, label %._crit_edge.us.us.us, label %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us.us.us.us

.lr.ph.split.us68.us.us:                          ; preds = %.lr.ph.us.us.us, %_ZN3jxl12_GLOBAL__N_114UpsamplerDerivEllll.exit.us71.us.us
end_hunk_0
