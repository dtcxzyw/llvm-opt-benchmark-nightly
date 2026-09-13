Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn57convolution_im2col_gemm_transform_kernel_bf16s_avx512bf16ERKNS_3MatERS0_iiiiRKNS_6OptionE:bb.a
  %i.be = and i32 %2, 3
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, i32 4, i32 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i
  %.059.i = phi i32 [ 1, %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i ], [ 16, %bb.e ], [ %i.bg, %bb.g ], [ 8, %bb.f ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store i64 0, ptr %i.bo, align 16, !tbaa !16
  %i.bp = icmp eq i32 %i.g, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %7, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bk, i8 0, i64 28, i1 false)
  br i1 %i.bp, label %bb.i, label %bb.ag

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  invoke void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.h, i32 noundef %3, ptr noundef null)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 2 uses
  %.not.i111.i = icmp eq ptr %i.br, null
  br i1 %.not.i111.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = atomicrmw add ptr %i.br, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = atomicrmw add ptr %i.bt, i32 -1 acq_rel, align 4
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i.i.i = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx)
          to label %bb.r unwind label %bb.z, !inline_history !348

bb.p:                                             ; preds = %bb.n
  %.not.i18.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.bx) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 2 uses
  %i.cc = load <2 x ptr>, ptr %8, align 16, !tbaa !361
  store <2 x ptr> %i.cc, ptr %7, align 16, !tbaa !361
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ce = load i64, ptr %i.cd, align 16, !tbaa !17
  store i64 %i.ce, ptr %i.bi, align 16, !tbaa !17
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !32
  store i32 %i.cg, ptr %i.bj, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !46
  store ptr %i.ci, ptr %i.bk, align 16, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ck = load <4 x i32>, ptr %i.cj, align 8, !tbaa !30
  store <4 x i32> %i.ck, ptr %i.bl, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !33
  store i32 %i.cm, ptr %i.bn, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.co = load i64, ptr %i.cn, align 16, !tbaa !16
  store i64 %i.co, ptr %i.bo, align 16, !tbaa !16
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZN4ncnn3MatD2Ev.exit72.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit72.i

bb.t:                                             ; preds = %bb.s
  %i.cr = load ptr, ptr %i.ch, align 16, !tbaa !46 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %8, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %_ZN4ncnn3MatD2Ev.exit72.i unwind label %bb.x, !inline_history !0

bb.v:                                             ; preds = %bb.t
  %.not.i109.i = icmp eq ptr %i.cs, null
  br i1 %.not.i109.i, label %_ZN4ncnn3MatD2Ev.exit72.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.cs) #10
  br label %_ZN4ncnn3MatD2Ev.exit72.i

bb.x:                                             ; preds = %bb.u
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit72.i:                        ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.aw

bb.y:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.z:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.da = load ptr, ptr %i.bq, align 8, !tbaa !45 ; 2 uses
  %.not.i74.i = icmp eq ptr %i.da, null
  br i1 %.not.i74.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = atomicrmw add ptr %i.da, i32 -1 acq_rel, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit71.i

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !46 ; 3 uses
  %.not3.i75.i = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %8, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i75.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit71.i unwind label %bb.af, !inline_history !0

bb.ad:                                            ; preds = %bb.ab
  %.not.i107.i = icmp eq ptr %i.df, null
  br i1 %.not.i107.i, label %_ZN4ncnn3MatD2Ev.exit71.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.df) #10
  br label %_ZN4ncnn3MatD2Ev.exit71.i

bb.af:                                            ; preds = %bb.ac
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit71.i:                        ; preds = %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.ae, %bb.y
  %.pn63.i = phi { ptr, i32 } [ %i.cy, %bb.y ], [ %i.cz, %bb.ae ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ac ], [ %i.cz, %bb.aa ], [ %i.cz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.bf

bb.ag:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.g, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.h, i32 noundef %3, i64 noundef 4, ptr noundef null)
          to label %.preheader121.i unwind label %bb.ap

.preheader121.i:                                  ; preds = %bb.ah
  %i.dl = icmp sgt i32 %3, 0
  br i1 %i.dl, label %.lr.ph.i, label %._crit_edge.split.i

.lr.ph.i:                                         ; preds = %.preheader121.i
  %i.dm = load ptr, ptr %7, align 16, !tbaa !15
  %i.dn = load i32, ptr %i.bm, align 4, !tbaa !31
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i64, ptr %i.bi, align 16, !tbaa !17
  %factor.op.mul130.i = mul i64 %i.dp, %i.do
  %10 = add nsw i32 %.059.i, -1
  %.not.i = icmp sle i32 %.059.i, %2
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dt = icmp sgt i32 %i.g, 0
  %or.cond.i = and i1 %i.dt, %.not.i
  br i1 %or.cond.i, label %.preheader120.lr.ph.us.preheader.i, label %._crit_edge.split.i

.preheader120.lr.ph.us.preheader.i:               ; preds = %.lr.ph.i
  %i.du = zext nneg i32 %.059.i to i64            ; 9 uses
  %wide.trip.count147.i = zext nneg i32 %3 to i64
  %wide.trip.count139.i = zext nneg i32 %i.g to i64
  %i.dv = add nsw i64 %i.du, -1                   ; 2 uses
  %i.dw = shl nuw nsw i64 %i.du, 2
  %min.iters.check = icmp samesign ult i32 %.059.i, 4
  %min.iters.check36 = icmp samesign ult i32 %.059.i, 16
  %n.vec = and i64 %i.du, 16                      ; 2 uses
  %i.dx = shl nuw nsw i64 %n.vec, 2
  %n.vec39 = and i64 %i.du, 12                    ; 3 uses
  %i.dy = shl nuw nsw i64 %n.vec39, 2
  %i.dz = icmp eq i64 %n.vec39, 4
  %i.ea = icmp eq i64 %n.vec39, 8
  %xtraiter = and i64 %i.du, 1
  %i.eb = icmp samesign ult i32 %.059.i, 4
  %unroll_iter = and i64 %i.du, 28
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod60 = trunc i32 %.059.i to i1
  br label %.preheader120.lr.ph.us.i

.preheader120.lr.ph.us.i:                         ; preds = %._crit_edge128.split.us.us.i, %.preheader120.lr.ph.us.preheader.i
  %indvars.iv144.i = phi i64 [ 0, %.preheader120.lr.ph.us.preheader.i ], [ %indvars.iv.next145.i, %._crit_edge128.split.us.us.i ] ; 4 uses
  %.reass.us131.i = mul i64 %factor.op.mul130.i, %indvars.iv144.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.reass.us131.i
  %i.ed = load i32, ptr %i.dq, align 4
  %i.ee = load ptr, ptr %9, align 8               ; 4 uses
  %i.ef = load i64, ptr %i.dr, align 8            ; 2 uses
  %i.eg = mul i64 %i.ef, %indvars.iv144.i
  %i.eh = load i64, ptr %i.ds, align 8            ; 6 uses
  %i.ei = mul i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ei
  %i.ek = sext i32 %i.ed to i64                   ; 5 uses
  %factor.op.mul.us.i = mul i64 %i.eh, %i.ek      ; 9 uses
  %i.el = mul i64 %i.eh, %i.ek
  %i.em = sub i64 0, %i.el
  %i.en = mul i64 %i.eh, %i.du
  %i.eo = mul i64 %i.en, %i.ek
  %i.ep = mul i64 %i.eh, %i.du
  %i.eq = mul i64 %i.ep, %i.ek
  %i.er = mul i64 %i.ef, %indvars.iv144.i
  %i.es = mul nsw i64 %i.dv, %i.ek
  %i.et = add i64 %i.er, %i.es
  %i.eu = mul i64 %i.eh, %i.et
  %i.ev = getelementptr i8, ptr %i.ee, i64 %i.ei
  %i.ew = getelementptr i8, ptr %i.ee, i64 %i.eu
  %i.ex = getelementptr i8, ptr %i.ee, i64 %i.ei
  %i.ey = icmp slt i64 %factor.op.mul.us.i, 0     ; 2 uses
  %i.ez = select i1 %i.ey, i64 %i.em, i64 %factor.op.mul.us.i
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ez, i64 %i.dv) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fa = sub i64 0, %mul.result
  %broadcast.splatinsert37 = insertelement <16 x i64> poison, i64 %factor.op.mul.us.i, i64 0
  %broadcast.splat38 = shufflevector <16 x i64> %broadcast.splatinsert37, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x i64> poison, i64 %factor.op.mul.us.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i64> %broadcast.splatinsert42, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.lr.ph.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.us.i ], [ 0, %.preheader120.lr.ph.us.i ] ; 3 uses
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %._crit_edge.us.us.i ], [ 0, %.preheader120.lr.ph.us.i ] ; 8 uses
  %.050126.us.us.i = phi ptr [ %.lcssa, %._crit_edge.us.us.i ], [ %i.ec, %.preheader120.lr.ph.us.i ]
  %i.fb = mul i64 %i.eq, %indvar                  ; 2 uses
  %i.fc = mul i64 %i.eo, %indvar
  %i.fd = getelementptr i8, ptr %i.ev, i64 %i.fb
  %i.fe = getelementptr i8, ptr %i.ew, i64 %i.fb
  %i.ff = getelementptr i8, ptr %i.ex, i64 %i.fc
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv141.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x i64> poison, i64 %indvars.iv141.i, i64 0
  %broadcast.splat41 = shufflevector <4 x i64> %broadcast.splatinsert40, <4 x i64> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.fg = add nuw nsw <4 x i64> %broadcast.splat41, <i64 0, i64 1, i64 2, i64 3>
  %i.fh = mul <4 x i64> %broadcast.splat43, %i.fg
  %i.fi = add nuw nsw <4 x i64> %broadcast.splat41, <i64 4, i64 5, i64 6, i64 7>
  %i.fj = mul <4 x i64> %broadcast.splat43, %i.fi
  %i.fk = add nuw nsw <4 x i64> %broadcast.splat41, <i64 8, i64 9, i64 10, i64 11>
  %i.fl = mul <4 x i64> %broadcast.splat43, %i.fk
  br label %iter.check

iter.check:                                       ; preds = %middle.block, %.preheader120.us.us.i
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i, %middle.block ], [ 0, %.preheader120.us.us.i ] ; 4 uses
  %.1124.us.us.i = phi ptr [ %.lcssa, %middle.block ], [ %.050126.us.us.i, %.preheader120.us.us.i ] ; 10 uses
  %i.fm = shl nuw nsw i64 %indvars.iv136.i, 2     ; 2 uses
  %scevgep33 = getelementptr i8, ptr %i.fd, i64 %i.fm ; 4 uses
  %scevgep34 = getelementptr i8, ptr %i.fe, i64 %i.fm ; 4 uses
  %i.fn = icmp ult ptr %scevgep33, %scevgep34
  %umin = select i1 %i.fn, ptr %scevgep33, ptr %scevgep34
  %i.fo = icmp ugt ptr %scevgep33, %scevgep34
  %umax = select i1 %i.fo, ptr %scevgep33, ptr %scevgep34
  %scevgep35 = getelementptr i8, ptr %umax, i64 4
  %invariant.gep.us.us.i = getelementptr [4 x i8], ptr %i.ej, i64 %indvars.iv136.i ; 9 uses
  br i1 %min.iters.check, label %.noexc.us.us.i.preheader, label %vector.scevcheck

.noexc.us.us.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %iter.check
  br i1 %i.eb, label %.noexc.us.us.i.epil.preheader, label %.noexc.us.us.i

vector.scevcheck:                                 ; preds = %iter.check
  %i.fp = shl nuw nsw i64 %indvars.iv136.i, 2
  %scevgep = getelementptr i8, ptr %i.ff, i64 %i.fp ; 4 uses
  %i.fq = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.fr = getelementptr i8, ptr %scevgep, i64 %i.fa
  %i.fs = icmp ult ptr %i.fq, %scevgep
  %i.ft = icmp ugt ptr %i.fr, %scevgep
  %i.fu = select i1 %i.ey, i1 %i.ft, i1 %i.fs
  %i.fv = or i1 %i.fu, %mul.overflow
  br i1 %i.fv, label %.noexc.us.us.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep32 = getelementptr i8, ptr %.1124.us.us.i, i64 %i.dw
  %bound0 = icmp ult ptr %.1124.us.us.i, %scevgep35
  %bound1 = icmp ult ptr %umin, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = getelementptr i8, ptr %.1124.us.us.i, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fx = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1124.us.us.i, i64 %i.fx
  %i.fy = add nuw nsw <16 x i64> %vec.ind, %broadcast.splat
  %i.fz = mul <16 x i64> %broadcast.splat38, %i.fy
  %wide.gep = getelementptr i8, ptr %invariant.gep.us.us.i, <16 x i64> %i.fz
  %wide.masked.gather = call <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr> align 4 %wide.gep, <16 x i1> splat (i1 true), <16 x float> poison), !tbaa !22, !alias.scope !362
  store <16 x float> %wide.masked.gather, ptr %next.gep, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !352

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %i.gb = getelementptr i8, ptr %.1124.us.us.i, i64 %i.dy ; 3 uses
  %wide.gep49 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fh
  %wide.masked.gather50 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50, ptr %.1124.us.us.i, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br i1 %i.dz, label %middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %next.gep48.1 = getelementptr i8, ptr %.1124.us.us.i, i64 16
  %wide.gep49.1 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fj
  %wide.masked.gather50.1 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49.1, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50.1, ptr %next.gep48.1, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br i1 %i.ea, label %middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %next.gep48.2 = getelementptr i8, ptr %.1124.us.us.i, i64 32
  %wide.gep49.2 = getelementptr i8, ptr %invariant.gep.us.us.i, <4 x i64> %i.fl
  %wide.masked.gather50.2 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep49.2, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !22, !alias.scope !362
  store <4 x float> %wide.masked.gather50.2, ptr %next.gep48.2, align 4, !tbaa !22, !alias.scope !363, !noalias !362
  br label %middle.block

.noexc.us.us.i:                                   ; preds = %.noexc.us.us.i.preheader, %.noexc.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.noexc.us.us.i ], [ 0, %.noexc.us.us.i.preheader ] ; 5 uses
  %.2122.us.us.i = phi ptr [ %i.gn, %.noexc.us.us.i ], [ %.1124.us.us.i, %.noexc.us.us.i.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.noexc.us.us.i ], [ 0, %.noexc.us.us.i.preheader ]
  %i.gc = add nuw nsw i64 %indvars.iv.i, %indvars.iv141.i
  %.reass.us.us.i = mul i64 %factor.op.mul.us.i, %i.gc
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i
  %i.gd = load float, ptr %gep.us.us.i, align 4, !tbaa !22
  store float %i.gd, ptr %.2122.us.us.i, align 4, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.gf = add nuw nsw i64 %indvars.iv.next.i, %indvars.iv141.i
  %.reass.us.us.i.1 = mul i64 %factor.op.mul.us.i, %i.gf
  %gep.us.us.i.1 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.1
  %i.gg = load float, ptr %gep.us.us.i.1, align 4, !tbaa !22
  store float %i.gg, ptr %i.ge, align 4, !tbaa !22
  %i.gh = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 8
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.gi = add nuw nsw i64 %indvars.iv.next.i.1, %indvars.iv141.i
  %.reass.us.us.i.2 = mul i64 %factor.op.mul.us.i, %i.gi
  %gep.us.us.i.2 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.2
  %i.gj = load float, ptr %gep.us.us.i.2, align 4, !tbaa !22
  store float %i.gj, ptr %i.gh, align 4, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 12
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.gl = add nuw nsw i64 %indvars.iv.next.i.2, %indvars.iv141.i
  %.reass.us.us.i.3 = mul i64 %factor.op.mul.us.i, %i.gl
  %gep.us.us.i.3 = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.3
  %i.gm = load float, ptr %gep.us.us.i.3, align 4, !tbaa !22
  store float %i.gm, ptr %i.gk, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw i8, ptr %.2122.us.us.i, i64 16 ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %middle.block.loopexit.unr-lcssa, label %.noexc.us.us.i, !llvm.loop !353

middle.block.loopexit.unr-lcssa:                  ; preds = %.noexc.us.us.i
  br i1 %lcmp.mod.not, label %middle.block, label %.noexc.us.us.i.epil.preheader

.noexc.us.us.i.epil.preheader:                    ; preds = %middle.block.loopexit.unr-lcssa, %.noexc.us.us.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.noexc.us.us.i.preheader ], [ %indvars.iv.next.i.3, %middle.block.loopexit.unr-lcssa ]
  %.2122.us.us.i.epil.init = phi ptr [ %.1124.us.us.i, %.noexc.us.us.i.preheader ], [ %i.gn, %middle.block.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod60)
  br label %.noexc.us.us.i.epil

.noexc.us.us.i.epil:                              ; preds = %.noexc.us.us.i.epil, %.noexc.us.us.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.noexc.us.us.i.epil ], [ %indvars.iv.i.epil.init, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %.2122.us.us.i.epil = phi ptr [ %i.gq, %.noexc.us.us.i.epil ], [ %.2122.us.us.i.epil.init, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.noexc.us.us.i.epil ], [ 0, %.noexc.us.us.i.epil.preheader ] ; 2 uses
  %i.go = add nuw nsw i64 %indvars.iv.i.epil, %indvars.iv141.i
  %.reass.us.us.i.epil = mul i64 %factor.op.mul.us.i, %i.go
  %gep.us.us.i.epil = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %.reass.us.us.i.epil
  %i.gp = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !22
  store float %i.gp, ptr %.2122.us.us.i.epil, align 4, !tbaa !22
  %i.gq = getelementptr inbounds nuw i8, ptr %.2122.us.us.i.epil, i64 4 ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %.noexc.us.us.i.epil, !llvm.loop !354

middle.block:                                     ; preds = %vector.body, %vec.epilog.ph, %vec.epilog.vector.body.1, %vec.epilog.vector.body.2, %middle.block.loopexit.unr-lcssa, %.noexc.us.us.i.epil
  %.lcssa = phi ptr [ %i.gq, %.noexc.us.us.i.epil ], [ %i.gb, %vec.epilog.ph ], [ %i.gn, %middle.block.loopexit.unr-lcssa ], [ %i.gb, %vec.epilog.vector.body.2 ], [ %i.gb, %vec.epilog.vector.body.1 ], [ %i.fw, %vector.body ] ; 2 uses
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge.us.us.i, label %iter.check, !llvm.loop !355

._crit_edge.us.us.i:                              ; preds = %middle.block
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, %i.du ; 2 uses
  %11 = trunc i64 %indvars.iv.next142.i to i32
  %12 = add i32 %10, %11
  %13 = icmp slt i32 %12, %2
  %indvar.next = add i64 %indvar, 1
  br i1 %13, label %.preheader120.us.us.i, label %._crit_edge128.split.us.us.i, !llvm.loop !356

._crit_edge128.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %indvars.iv.next145.i = add nuw nsw i64 %indvars.iv144.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next145.i, %wide.trip.count147.i
  br i1 %exitcond148.not.i, label %._crit_edge.split.i, label %.preheader120.lr.ph.us.i, !llvm.loop !357

._crit_edge.split.i:                              ; preds = %._crit_edge128.split.us.us.i, %.lr.ph.i, %.preheader121.i
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !45 ; 2 uses
  %.not.i82.i = icmp eq ptr %i.gs, null
  br i1 %.not.i82.i, label %_ZN4ncnn3MatD2Ev.exit69.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.split.i
  %i.gt = atomicrmw add ptr %i.gs, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.aj, label %_ZN4ncnn3MatD2Ev.exit69.i

bb.aj:                                            ; preds = %bb.ai
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !46 ; 3 uses
  %.not3.i83.i = icmp eq ptr %i.gw, null
  %i.gx = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i83.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !48
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx)
          to label %_ZN4ncnn3MatD2Ev.exit69.i unwind label %bb.an, !inline_history !0

bb.al:                                            ; preds = %bb.aj
  %.not.i103.i = icmp eq ptr %i.gx, null
  br i1 %.not.i103.i, label %_ZN4ncnn3MatD2Ev.exit69.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.gx) #10
  br label %_ZN4ncnn3MatD2Ev.exit69.i

bb.an:                                            ; preds = %bb.ak
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit69.i:                        ; preds = %bb.am, %bb.al, %bb.ak, %bb.ai, %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.aw

bb.ao:                                            ; preds = %bb.ag
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ap:                                            ; preds = %bb.ah
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !45 ; 2 uses
  %.not.i86.i = icmp eq ptr %i.hg, null
  br i1 %.not.i86.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = atomicrmw add ptr %i.hg, i32 -1 acq_rel, align 4
  %i.hi = icmp eq i32 %i.hh, 1
  br i1 %i.hi, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit68.i

bb.ar:                                            ; preds = %bb.aq
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !46 ; 3 uses
  %.not3.i87.i = icmp eq ptr %i.hk, null
  %i.hl = load ptr, ptr %9, align 8, !tbaa !15    ; 3 uses
  br i1 %.not3.i87.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.hl)
          to label %_ZN4ncnn3MatD2Ev.exit68.i unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i101.i = icmp eq ptr %i.hl, null
  br i1 %.not.i101.i, label %_ZN4ncnn3MatD2Ev.exit68.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.hl) #10
  br label %_ZN4ncnn3MatD2Ev.exit68.i

bb.av:                                            ; preds = %bb.as
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  call void @__clang_call_terminate(ptr %i.hq) #26
  unreachable

_ZN4ncnn3MatD2Ev.exit68.i:                        ; preds = %bb.ap, %bb.aq, %bb.as, %bb.at, %bb.au, %bb.ao
  %.pn.pn.i = phi { ptr, i32 } [ %i.hd, %bb.ao ], [ %i.he, %bb.au ], [ %i.he, %bb.at ], [ %i.he, %bb.as ], [ %i.he, %bb.aq ], [ %i.he, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.bf

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit69.i, %_ZN4ncnn3MatD2Ev.exit72.i
  %i.hr = load i32, ptr %i.d, align 4, !tbaa !30  ; 2 uses
  %i.hs = load i32, ptr %i.c, align 4, !tbaa !30  ; 2 uses
  %i.ht = mul nsw i32 %i.hs, %i.hr
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !30
  %i.hv = load i32, ptr %i.a, align 4, !tbaa !30
  %i.hw = insertelement <2 x i32> poison, i32 %i.hr, i64 0
  %i.hx = insertelement <2 x i32> %i.hw, i32 %i.hs, i64 1 ; 2 uses
  %i.hy = add <2 x i32> %i.hx, splat (i32 -1)
  %i.hz = insertelement <2 x i32> poison, i32 %i.hu, i64 0
  %i.ia = insertelement <2 x i32> %i.hz, i32 %i.hv, i64 1
  %i.ib = add <2 x i32> %i.hy, %i.ia
  %i.ic = sdiv <2 x i32> %i.ib, %i.hx             ; 2 uses
  %i.id = extractelement <2 x i32> %i.ic, i64 0
  %i.ie = extractelement <2 x i32> %i.ic, i64 1
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ht, i32 noundef %i.id, i32 noundef %i.ie, i64 noundef 2, ptr noundef null)
          to label %bb.ax unwind label %bb.be

bb.ax:                                            ; preds = %bb.aw
  %i.if = load i32, ptr %i.i, align 4, !tbaa !41
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.f, i32 %i.if)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %7)
  %i.ig = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i90.i = icmp eq ptr %i.ig, null
  br i1 %.not.i90.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ih = atomicrmw add ptr %i.ig, i32 -1 acq_rel, align 4
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %bb.az, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.az:                                            ; preds = %bb.ay
  %i.ij = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i91.i = icmp eq ptr %i.ij, null
  %i.ik = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i91.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !48
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  invoke void %i.in(ptr noundef nonnull align 8 dereferenceable(8) %i.ij, ptr noundef %i.ik)
          to label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit unwind label %bb.bd, !inline_history !0

bb.bb:                                            ; preds = %bb.az
  %.not.i99.i = icmp eq ptr %i.ik, null
  br i1 %.not.i99.i, label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.ik) #10
  br label %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit

bb.bd:                                            ; preds = %bb.ba
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #26
  unreachable

bb.be:                                            ; preds = %bb.aw
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN4ncnn3MatD2Ev.exit68.i, %_ZN4ncnn3MatD2Ev.exit71.i
  %.pn65.i = phi { ptr, i32 } [ %i.iq, %bb.be ], [ %.pn63.i, %_ZN4ncnn3MatD2Ev.exit71.i ], [ %.pn.pn.i, %_ZN4ncnn3MatD2Ev.exit68.i ]
  %i.ir = load ptr, ptr %i.bh, align 8, !tbaa !45 ; 2 uses
  %.not.i94.i = icmp eq ptr %i.ir, null
  br i1 %.not.i94.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.is = atomicrmw add ptr %i.ir, i32 -1 acq_rel, align 4
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.iu = load ptr, ptr %i.bk, align 16, !tbaa !46 ; 3 uses
  %.not3.i95.i = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %7, align 16, !tbaa !15   ; 3 uses
  br i1 %.not3.i95.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i98.i = icmp eq ptr %i.iv, null
  br i1 %.not.i98.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.iv) #10
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.bl:                                            ; preds = %bb.bi
  %i.iz = landingpad { ptr, i32 }
end_hunk_0
