Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_fma?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn30DeconvolutionDepthWise_x86_fma15create_pipelineERKNS_6OptionE:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8
  tail call void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hw, ptr noundef %i.hx), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit79

bb.bw:                                            ; preds = %bb.bu
  %.not.i85 = icmp eq ptr %i.hx, null
  br i1 %.not.i85, label %_ZN4ncnn3Mat7releaseEv.exit79, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @free(ptr noundef nonnull %i.hx) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit79

_ZN4ncnn3Mat7releaseEv.exit79:                    ; preds = %bb.bx, %bb.bw, %bb.bs, %bb.bt, %bb.bv
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 0, ptr %i.ic, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.hq, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ib, i8 0, i64 20, i1 false)
  br label %bb.by

bb.by:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit52, %_ZN4ncnn3Mat7releaseEv.exit79, %bb.br, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn30DeconvolutionDepthWise_x86_fma16destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.lcssa6 = phi ptr [ %i.c, %bb.a ], [ %i.z, %bb.c ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa6, %.lcssa
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4ncnn5LayerES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4ncnn5LayerES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !62
  br label %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPPN4ncnn5LayerES2_EvT_S4_RSaIT0_E.exit.i.i
  ret i32 0

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.k = phi ptr [ %i.y, %bb.c ], [ %i.d, %bb.a ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(208) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !64   ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(208) %i.t) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.y = phi ptr [ %i.r, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %sext = shl i64 %i.ac, 29
  %i.ad = ashr i64 %sext, 32
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 17 uses
  %7 = alloca %"class.ncnn::ParamDict", align 8   ; 27 uses
  %8 = alloca [2 x %"class.ncnn::Mat"], align 16  ; 41 uses
  %9 = alloca %"class.ncnn::ModelBinFromMatArray", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !111    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %2, align 8, !tbaa !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load i32, ptr %i.d, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !59
  %i.h = mul nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.l = load i32, ptr %i.k, align 8, !tbaa !112  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = mul nsw i32 %i.p, %i.n                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %4, align 8, !tbaa !20
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK4ncnn3Mat5emptyEv.exit162.thread, label %_ZNK4ncnn3Mat5emptyEv.exit162

_ZNK4ncnn3Mat5emptyEv.exit162:                    ; preds = %bb.b
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !21
  %i.ab = load i32, ptr %i.w, align 8, !tbaa !61
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul i64 %i.aa, %i.ac
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK4ncnn3Mat5emptyEv.exit162.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.d:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit162
  %i.ag = load i32, ptr %i.t, align 8, !tbaa !59  ; 2 uses
  %i.ah = load i32, ptr %i.v, align 4, !tbaa !65
  %i.ai = mul nsw i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.v, align 4, !tbaa !65
  %i.aj = sext i32 %i.ag to i64
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !58
  %i.al = udiv i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.s, align 8, !tbaa !58
  store i32 1, ptr %i.t, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.at, align 16, !tbaa !21
  %i.au = mul nsw i32 %i.l, %i.j                  ; 6 uses
  %i.av = mul i32 %i.au, %i.h
  %i.aw = mul i32 %i.av, %i.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ap, i8 0, i64 28, i1 false)
  %i.ax = load i32, ptr %i.o, align 4, !tbaa !45
  %i.ay = sdiv i32 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !66
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.ay, i64 noundef 4, ptr noundef %i.ba)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %5, align 16, !tbaa !20   ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZNK4ncnn3Mat5emptyEv.exit161.thread, label %_ZNK4ncnn3Mat5emptyEv.exit161

_ZNK4ncnn3Mat5emptyEv.exit161:                    ; preds = %bb.e
  %i.bd = load i64, ptr %i.at, align 16, !tbaa !21
  %i.be = load i32, ptr %i.as, align 8, !tbaa !61
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_ZNK4ncnn3Mat5emptyEv.exit161.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit161
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !45  ; 4 uses
  %10 = sdiv i32 %i.q, %i.bj                      ; 4 uses
  %11 = sdiv i32 %i.h, %i.bj                      ; 4 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge175.split

.lr.ph:                                           ; preds = %bb.g
  %factor.op.mul171 = mul i32 %10, %11
  %.reass = mul i32 %factor.op.mul171, %i.au
  %i.bl = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.bm = icmp slt i32 %10, 1
  %i.bn = icmp slt i32 %11, 1
  %i.bo = icmp slt i32 %i.au, 1
  %brmerge = select i1 %i.bm, i1 true, i1 %i.bn
  %brmerge181 = or i1 %brmerge, %i.bo
  br i1 %brmerge181, label %._crit_edge175.split, label %.preheader163.lr.ph.preheader

.preheader163.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.bp = zext nneg i32 %10 to i64                ; 4 uses
  %i.bq = zext nneg i32 %i.au to i64              ; 14 uses
  %i.br = zext nneg i32 %11 to i64                ; 4 uses
  %wide.trip.count199 = zext nneg i32 %i.bj to i64
  %i.bs = mul i32 %i.l, %i.j
  %i.bt = mul i32 %i.bs, %10
  %i.bu = mul i32 %i.bt, %11
  %i.bv = mul nuw nsw i64 %i.br, %i.bq
  %i.bw = shl nuw i64 %i.bv, 2                    ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bq, 2
  %i.by = add nuw nsw i64 %i.br, 4611686018427387903
  %i.bz = mul i64 %i.by, %i.bp
  %i.ca = shl i64 %i.bz, 2
  %i.cb = add i64 %i.ca, 4
  %i.cc = mul i64 %i.cb, %i.bq
  %i.cd = mul nuw nsw i64 %i.bp, %i.bq
  %i.ce = getelementptr i8, ptr %i.bb, i64 %i.bw
  %i.cf = getelementptr i8, ptr %i.bl, i64 %i.cc
  %min.iters.check = icmp ult i32 %i.au, 4
  %stride.check = icmp samesign ugt i64 %i.cd, 2305843009213693951
  %min.iters.check249 = icmp ult i32 %i.au, 32
  %i.cg = and i64 %i.bq, 28
  %n.vec = and i64 %i.bq, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bq
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec253 = and i64 %i.bq, 2147483644           ; 3 uses
  %cmp.n257 = icmp eq i64 %n.vec253, %i.bq
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader163.lr.ph

._crit_edge175.split:                             ; preds = %._crit_edge169, %.lr.ph, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  store i64 0, ptr %i.co, align 16, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ck, i8 0, i64 28, i1 false)
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !67
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.l, label %bb.h

.preheader163.lr.ph:                              ; preds = %.preheader163.lr.ph.preheader, %._crit_edge169
  %indvars.iv196 = phi i64 [ 0, %.preheader163.lr.ph.preheader ], [ %indvars.iv.next197, %._crit_edge169 ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv196 to i32
  %i.cs = mul i32 %i.bu, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 2                    ; 4 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv196 to i32
  %i.cw = mul i32 %.reass, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cx
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.bb, i64 %i.cu
  %i.db = getelementptr i8, ptr %i.ce, i64 %i.cu
  %i.dc = getelementptr i8, ptr %i.bl, i64 %i.cu
  %i.dd = getelementptr i8, ptr %i.cf, i64 %i.cu
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %._crit_edge166
  %indvars.iv191 = phi i64 [ 0, %.preheader163.lr.ph ], [ %indvars.iv.next192, %._crit_edge166 ] ; 5 uses
  %i.de = mul i64 %i.bw, %indvars.iv191           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.de
  %scevgep246 = getelementptr i8, ptr %i.db, i64 %i.de
  %i.df = mul i64 %i.bx, %indvars.iv191           ; 2 uses
  %scevgep247 = getelementptr i8, ptr %i.dc, i64 %i.df
  %scevgep248 = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dg = mul nuw nsw i64 %indvars.iv191, %i.br
  %bound0 = icmp ult ptr %scevgep, %scevgep248
  %bound1 = icmp ult ptr %scevgep247, %scevgep246
  %found.conflict = and i1 %bound0, %bound1
  %i.dh = or i1 %found.conflict, %stride.check
  br label %iter.check

._crit_edge169:                                   ; preds = %._crit_edge166
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %._crit_edge175.split, label %.preheader163.lr.ph, !llvm.loop !101

iter.check:                                       ; preds = %.preheader163, %._crit_edge
  %indvars.iv186 = phi i64 [ 0, %.preheader163 ], [ %indvars.iv.next187, %._crit_edge ] ; 3 uses
  %i.di = mul nuw nsw i64 %indvars.iv186, %i.bp
  %i.dj = add nuw nsw i64 %i.di, %indvars.iv191
  %i.dk = mul nuw nsw i64 %i.dj, %i.bq
  %i.dl = add nuw nsw i64 %indvars.iv186, %i.dg
  %i.dm = mul nuw nsw i64 %i.dl, %i.bq
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk ; 7 uses
  %invariant.gep244 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dm ; 7 uses
  %brmerge258 = select i1 %min.iters.check, i1 true, i1 %i.dh
  br i1 %brmerge258, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check249, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %wide.load = load <8 x float>, ptr %i.dn, align 4, !tbaa !52, !alias.scope !114
  %wide.load250 = load <8 x float>, ptr %i.do, align 4, !tbaa !52, !alias.scope !114
  %wide.load251 = load <8 x float>, ptr %i.dp, align 4, !tbaa !52, !alias.scope !114
  %wide.load252 = load <8 x float>, ptr %i.dq, align 4, !tbaa !52, !alias.scope !114
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %index ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  store <8 x float> %wide.load, ptr %i.dr, align 4, !tbaa !52, !alias.scope !115, !noalias !114
  store <8 x float> %wide.load250, ptr %i.ds, align 4, !tbaa !52, !alias.scope !115, !noalias !114
  store <8 x float> %wide.load251, ptr %i.dt, align 4, !tbaa !52, !alias.scope !115, !noalias !114
  store <8 x float> %wide.load252, ptr %i.du, align 4, !tbaa !52, !alias.scope !115, !noalias !114
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index254 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next256, %vec.epilog.vector.body ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index254
  %wide.load255 = load <4 x float>, ptr %i.dw, align 4, !tbaa !52, !alias.scope !114
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %index254
  store <4 x float> %wide.load255, ptr %i.dx, align 4, !tbaa !52, !alias.scope !115, !noalias !114
  %index.next256 = add nuw i64 %index254, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next256, %n.vec253
  br i1 %i.dy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n257, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec253, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.dz = load float, ptr %gep.prol, align 4, !tbaa !52
  %gep245.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.prol
  store float %i.dz, ptr %gep245.prol, align 4, !tbaa !52
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !107

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ea = sub nsw i64 %indvars.iv.ph, %i.bq
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge166:                                   ; preds = %._crit_edge
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %i.bp
  br i1 %exitcond195.not, label %._crit_edge169, label %.preheader163, !llvm.loop !108

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %i.br
  br i1 %exitcond190.not, label %._crit_edge166, label %iter.check, !llvm.loop !109

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ec = load float, ptr %gep, align 4, !tbaa !52
  %gep245 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv
  store float %i.ec, ptr %gep245, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ed = load float, ptr %gep.1, align 4, !tbaa !52
  %gep245.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.next
  store float %i.ed, ptr %gep245.1, align 4, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ee = load float, ptr %gep.2, align 4, !tbaa !52
  %gep245.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.next.1
  store float %i.ee, ptr %gep245.2, align 4, !tbaa !52
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ef = load float, ptr %gep.3, align 4, !tbaa !52
  %gep245.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.next.2
  store float %i.ef, ptr %gep245.3, align 4, !tbaa !52
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.bq
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !110

bb.h:                                             ; preds = %._crit_edge175.split
  %i.eg = load ptr, ptr %1, align 8, !tbaa !111
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 144
  invoke void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_0
begin_hunk_1_@_ZNK4ncnn30DeconvolutionDepthWise_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.v = load <2 x i32>, ptr %i.j, align 4, !tbaa !60 ; 3 uses
  %i.w = extractelement <2 x i32> %i.v, i64 0
  store i32 %i.w, ptr %i.a, align 4, !tbaa !60
  %i.x = extractelement <2 x i32> %i.v, i64 1
  store i32 %i.x, ptr %i.b, align 4, !tbaa !60
  %i.y = load <2 x i32>, ptr %i.q, align 4, !tbaa !60
  %i.z = load <2 x i32>, ptr %i.r, align 4, !tbaa !60
  %i.aa = add nsw <2 x i32> %i.z, splat (i32 -1)
  %i.ab = mul nsw <2 x i32> %i.aa, %i.y
  %i.ac = add nsw <2 x i32> %i.ab, splat (i32 1)  ; 3 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !60
  %i.ae = extractelement <2 x i32> %i.ac, i64 1
  store i32 %i.ae, ptr %i.e, align 4, !tbaa !60
  %i.af = add nsw <2 x i32> %i.v, splat (i32 -1)
  %i.ag = load <2 x i32>, ptr %i.t, align 4, !tbaa !60
  %i.ah = mul nsw <2 x i32> %i.ag, %i.af
  %i.ai = add nsw <2 x i32> %i.ah, %i.ac
  %i.aj = load <2 x i32>, ptr %i.u, align 4, !tbaa !60
  %i.ak = add nsw <2 x i32> %i.ai, %i.aj          ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 0   ; 6 uses
  store i32 %i.al, ptr %i.f, align 4, !tbaa !60
  %i.am = extractelement <2 x i32> %i.ak, i64 1   ; 6 uses
  store i32 %i.am, ptr %i.g, align 4, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 39 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48, !range !49, !noundef !50
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = and i32 %i.ar, 7
  %i.at = icmp eq i32 %i.as, 0
  %i.au = and i32 %i.ar, 3
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = select i1 %i.av, i32 4, i32 1
  %i.ax = select i1 %i.at, i32 8, i32 %i.aw
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.099 = phi i32 [ %i.ax, %bb.b ], [ 1, %bb.a ]  ; 5 uses
  %i.ay = sext i32 %i.p to i64
  %i.az = udiv i64 %i.n, %i.ay
  %i.ba = zext nneg i32 %.099 to i64              ; 2 uses
  %i.bb = mul i64 %i.az, %i.ba                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 6 uses
  store i64 0, ptr %i.bi, align 16, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bf, i8 0, i64 28, i1 false)
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !73
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.thread.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !74
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.thread.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !75
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.thread.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !78
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !79
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.thread.invoke, label %bb.j

bb.i:                                             ; preds = %.thread.invoke, %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %.not.i187 = icmp eq ptr %i.cd, null
  br i1 %.not.i187, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = atomicrmw add ptr %i.cd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !18 ; 2 uses
  %.not.i.i188 = icmp eq ptr %.pre, null
  br i1 %.not.i.i188, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cf = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.bf, align 16, !tbaa !19 ; 3 uses
  %.not3.i.i189 = icmp eq ptr %i.ch, null
  %i.ci = load ptr, ptr %4, align 16, !tbaa !20   ; 3 uses
  br i1 %.not3.i.i189, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci)
          to label %.thread unwind label %bb.i, !inline_history !1

bb.o:                                             ; preds = %bb.m
  %.not.i18.i190 = icmp eq ptr %i.ci, null
  br i1 %.not.i18.i190, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ci) #12
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.l, %bb.k, %bb.n, %bb.p, %bb.o
  %i.cm = load <2 x ptr>, ptr %2, align 8, !tbaa !57
  store <2 x ptr> %i.cm, ptr %4, align 16, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !58
  store i64 %i.co, ptr %i.bd, align 16, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !59
  store i32 %i.cq, ptr %i.be, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19
  store ptr %i.cs, ptr %i.bf, align 16, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cu = load <4 x i32>, ptr %i.ct, align 8, !tbaa !60
  store <4 x i32> %i.cu, ptr %i.bg, align 8, !tbaa !60
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !61
  store i32 %i.cw, ptr %i.bh, align 8, !tbaa !61
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !21
  store i64 %i.cy, ptr %i.bi, align 16, !tbaa !21
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !60
  %i.da = load i32, ptr %i.g, align 4, !tbaa !60
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %.thread
  %.sink339 = phi i64 [ 8, %.thread ], [ 16, %bb.h ], [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ]
  %i.db = phi i32 [ %i.cz, %.thread ], [ %i.al, %bb.h ], [ %i.al, %bb.f ], [ %i.al, %bb.e ], [ %i.al, %bb.d ], [ %i.al, %bb.c ]
  %i.dc = phi i32 [ %i.da, %.thread ], [ %i.am, %bb.h ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.c ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !46
  %i.df = sdiv i32 %i.de, %.099
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %.sink339
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !122
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.db, i32 noundef %i.dc, i32 noundef %i.df, i64 noundef %i.bb, i32 noundef %.099, ptr noundef %i.dh)
          to label %bb.q unwind label %bb.i

bb.q:                                             ; preds = %.thread.invoke
  %i.di = load ptr, ptr %4, align 16, !tbaa !20
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZNK4ncnn3Mat5emptyEv.exit197.thread, label %_ZNK4ncnn3Mat5emptyEv.exit197

_ZNK4ncnn3Mat5emptyEv.exit197:                    ; preds = %bb.q
  %i.dk = load i64, ptr %i.bi, align 16, !tbaa !21
  %i.dl = load i32, ptr %i.bh, align 8, !tbaa !61
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.dk, %i.dm
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNK4ncnn3Mat5emptyEv.exit197.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.dp = load i32, ptr %i.r, align 4, !tbaa !42
  %i.dq = load i32, ptr %i.s, align 8, !tbaa !43
  %i.dr = mul nsw i32 %i.dq, %i.dp
  store i32 %i.dr, ptr %i.h, align 4, !tbaa !60
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !60
  %i.dt = mul nsw i32 %i.ds, %i.p                 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !45 ; 3 uses
  %i.dw = icmp eq i32 %i.dt, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !46 ; 2 uses
  %i.dz = icmp eq i32 %i.dt, %i.dy
  %or.cond = select i1 %i.dw, i1 %i.dz, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge291

bb.s:                                             ; preds = %bb.r
  switch i32 %i.p, label %bb.cv [
    i32 8, label %.sink.split
    i32 4, label %bb.t
    i32 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %.sink.split

bb.u:                                             ; preds = %bb.s
  br label %.sink.split

._crit_edge291:                                   ; preds = %bb.r
  %11 = sdiv i32 %i.dt, %i.dv                     ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 208
  %13 = sdiv i32 %i.dy, %i.dv                     ; 4 uses
  %i.ea = load i8, ptr %i.an, align 1, !tbaa !48, !range !49, !noundef !50
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge291
  %14 = and i32 %11, 7
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %11, 3
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 4, i32 1
  %19 = select i1 %15, i32 8, i32 %18
  %20 = and i32 %13, 7
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %13, 3
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 4, i32 1
  %25 = select i1 %21, i32 8, i32 %24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge291
  %.084 = phi i32 [ %19, %bb.v ], [ 1, %._crit_edge291 ] ; 4 uses
  %.083 = phi i32 [ %25, %bb.v ], [ 1, %._crit_edge291 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !18 ; 2 uses
  %i.ef = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  store <2 x ptr> %i.ef, ptr %5, align 16, !tbaa !57
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.m, align 8, !tbaa !58
  store i64 %i.eh, ptr %i.eg, align 16, !tbaa !58
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !59
  store i32 %i.ej, ptr %i.ei, align 8, !tbaa !59
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !19
  store ptr %i.em, ptr %i.ek, align 16, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.eq = load <4 x i32>, ptr %i.eo, align 8, !tbaa !60
  store <4 x i32> %i.eq, ptr %i.en, align 8, !tbaa !60
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.es = load i32, ptr %i.k, align 8, !tbaa !61
  store i32 %i.es, ptr %i.er, align 8, !tbaa !61
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !21
  store i64 %i.ev, ptr %i.et, align 16, !tbaa !21
  %.not.i198 = icmp eq ptr %i.ee, null
  br i1 %.not.i198, label %_ZN4ncnn3Mat6addrefEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = atomicrmw add ptr %i.ee, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit

_ZN4ncnn3Mat6addrefEv.exit:                       ; preds = %bb.x, %bb.w
  %i.ex = icmp sgt i32 %i.p, %.084
  br i1 %i.ex, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !124
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !66
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !125
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %.084, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fb = load ptr, ptr %5, align 16, !tbaa !20
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %_ZNK4ncnn3Mat5emptyEv.exit196.thread, label %_ZNK4ncnn3Mat5emptyEv.exit196

_ZNK4ncnn3Mat5emptyEv.exit196.thread:             ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ca

bb.aa:                                            ; preds = %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.co

_ZNK4ncnn3Mat5emptyEv.exit196:                    ; preds = %bb.z
  %i.fe = load i64, ptr %i.et, align 16, !tbaa !21
  %i.ff = load i32, ptr %i.er, align 8, !tbaa !61
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul i64 %i.fe, %i.fg
  %i.fi = icmp eq i64 %i.fh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br i1 %i.fi, label %bb.ca, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit196, %_ZN4ncnn3Mat6addrefEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.fk = load ptr, ptr %i.bc, align 8, !tbaa !18 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %4, align 16, !tbaa !57
  store <2 x ptr> %i.fl, ptr %7, align 16, !tbaa !57
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.fn = load i64, ptr %i.bd, align 16, !tbaa !58
  store i64 %i.fn, ptr %i.fm, align 16, !tbaa !58
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.fp = load i32, ptr %i.be, align 8, !tbaa !59
  store i32 %i.fp, ptr %i.fo, align 8, !tbaa !59
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.fr = load ptr, ptr %i.bf, align 16, !tbaa !19
  store ptr %i.fr, ptr %i.fq, align 16, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.fu = load <4 x i32>, ptr %i.bg, align 8, !tbaa !60
  store <4 x i32> %i.fu, ptr %i.fs, align 8, !tbaa !60
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.fw = load i32, ptr %i.bh, align 8, !tbaa !61
  store i32 %i.fw, ptr %i.fv, align 8, !tbaa !61
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 4 uses
  %i.fy = load i64, ptr %i.bi, align 16, !tbaa !21
  store i64 %i.fy, ptr %i.fx, align 16, !tbaa !21
  %.not.i199 = icmp eq ptr %i.fk, null
  br i1 %.not.i199, label %_ZN4ncnn3Mat6addrefEv.exit200, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = atomicrmw add ptr %i.fk, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4ncnn3Mat6addrefEv.exit200

_ZN4ncnn3Mat6addrefEv.exit200:                    ; preds = %bb.ac, %bb.ab
  %i.ga = icmp samesign ult i32 %.083, %.099      ; 2 uses
  br i1 %i.ga, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit200
  %i.gb = load i32, ptr %i.f, align 4, !tbaa !60
  %i.gc = load i32, ptr %i.g, align 4, !tbaa !60
  %i.gd = load i32, ptr %12, align 8, !tbaa !46
  %i.ge = sdiv i32 %i.gd, %.083
  %i.gf = udiv i64 %i.bb, %i.ba
  %i.gg = zext nneg i32 %.083 to i64
  %i.gh = mul i64 %i.gf, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !66
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, i32 noundef %i.gb, i32 noundef %i.gc, i32 noundef %i.ge, i64 noundef %i.gh, i32 noundef %.083, ptr noundef %i.gj)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gk = load ptr, ptr %7, align 16, !tbaa !20
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZNK4ncnn3Mat5emptyEv.exit195.thread, label %_ZNK4ncnn3Mat5emptyEv.exit195

_ZNK4ncnn3Mat5emptyEv.exit195:                    ; preds = %bb.ae
  %i.gm = load i64, ptr %i.fx, align 16, !tbaa !21
  %i.gn = load i32, ptr %i.fv, align 8, !tbaa !61
  %i.go = sext i32 %i.gn to i64
  %i.gp = mul i64 %i.gm, %i.go
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %_ZNK4ncnn3Mat5emptyEv.exit195.thread, label %bb.ag

bb.af:                                            ; preds = %bb.bq, %bb.bj, %bb.ad
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ag:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit195, %_ZN4ncnn3Mat6addrefEv.exit200
  %i.gs = load i32, ptr %i.du, align 4, !tbaa !45
  %.not112285 = icmp sgt i32 %i.gs, 0
  br i1 %.not112285, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ag
  %26 = sdiv i32 %11, %.084
  %i.gt = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 64
  %27 = sdiv i32 %13, %.083
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hi = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit127
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hj = load i32, ptr %i.du, align 4, !tbaa !45
  %i.hk = sext i32 %i.hj to i64
  %.not112 = icmp slt i64 %indvars.iv.next, %i.hk
  br i1 %.not112, label %bb.ai, label %._crit_edge, !llvm.loop !117

bb.ai:                                            ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.hl = trunc i64 %indvars.iv to i32
  %28 = mul i32 %11, %i.hl
  %29 = sdiv i32 %28, %.084
  %i.hm = load ptr, ptr %5, align 16, !tbaa !20, !noalias !126
  %i.hn = load i64, ptr %i.et, align 16, !tbaa !21, !noalias !126
  %30 = sext i32 %29 to i64
  %31 = mul i64 %i.hn, %30
  %i.ho = load i64, ptr %i.eg, align 16, !tbaa !58, !noalias !126 ; 4 uses
  %32 = mul i64 %31, %i.ho
  %33 = getelementptr inbounds nuw i8, ptr %i.hm, i64 %32
  %i.hp = load i32, ptr %i.ei, align 8, !tbaa !59, !noalias !126
  %i.hq = load ptr, ptr %i.ek, align 16, !tbaa !19, !noalias !126
  store ptr %33, ptr %8, align 8, !tbaa !20
  store ptr null, ptr %i.gt, align 8, !tbaa !18
  store i64 %i.ho, ptr %i.gu, align 8, !tbaa !58
  store i32 %i.hp, ptr %i.gv, align 8, !tbaa !59
  store ptr %i.hq, ptr %i.gw, align 8, !tbaa !19
  store i32 %26, ptr %i.gy, align 8, !tbaa !61
  %i.hr = load <4 x i32>, ptr %i.en, align 8, !tbaa !60, !noalias !126 ; 3 uses
  %i.hs = load i32, ptr %i.ep, align 4, !tbaa !65, !noalias !126
  %i.ht = sext i32 %i.hs to i64
  %i.hu = extractelement <4 x i32> %i.hr, i64 2
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i64 %i.hv, %i.ht
  %i.hx = extractelement <4 x i32> %i.hr, i64 3
  %i.hy = sext i32 %i.hx to i64
  %i.hz = mul i64 %i.hw, %i.hy
  %i.ia = mul i64 %i.hz, %i.ho
  %i.ib = add i64 %i.ia, 15
  %i.ic = and i64 %i.ib, -16
  %i.id = udiv i64 %i.ic, %i.ho
  store i64 %i.id, ptr %i.gz, align 8, !tbaa !21
  store <4 x i32> %i.hr, ptr %i.gx, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %34 = trunc i64 %indvars.iv to i32
  %35 = mul i32 %13, %34
  %36 = sdiv i32 %35, %.083
  %i.ie = load ptr, ptr %7, align 16, !tbaa !20, !noalias !127
  %i.if = load i64, ptr %i.fx, align 16, !tbaa !21, !noalias !127
  %i.ig = sext i32 %36 to i64
  %i.ih = mul i64 %i.if, %i.ig
  %i.ii = load i64, ptr %i.fm, align 16, !tbaa !58, !noalias !127 ; 4 uses
  %i.ij = mul i64 %i.ih, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ij
  %i.il = load i32, ptr %i.fo, align 8, !tbaa !59, !noalias !127
  %i.im = load ptr, ptr %i.fq, align 16, !tbaa !19, !noalias !127 ; 2 uses
  store ptr %i.ik, ptr %9, align 8, !tbaa !20
  store ptr null, ptr %i.ha, align 8, !tbaa !18
  store i64 %i.ii, ptr %i.hb, align 8, !tbaa !58
  store i32 %i.il, ptr %i.hc, align 8, !tbaa !59
  store ptr %i.im, ptr %i.hd, align 8, !tbaa !19
  store i32 %27, ptr %i.hf, align 8, !tbaa !61
  %i.in = load <4 x i32>, ptr %i.fs, align 8, !tbaa !60, !noalias !127 ; 3 uses
  %i.io = load i32, ptr %i.ft, align 4, !tbaa !65, !noalias !127
  %i.ip = sext i32 %i.io to i64
  %i.iq = extractelement <4 x i32> %i.in, i64 2
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul nsw i64 %i.ir, %i.ip
  %i.it = extractelement <4 x i32> %i.in, i64 3
  %i.iu = sext i32 %i.it to i64
  %i.iv = mul i64 %i.is, %i.iu
  %i.iw = mul i64 %i.iv, %i.ii
  %i.ix = add i64 %i.iw, 15
  %i.iy = and i64 %i.ix, -16
  %i.iz = udiv i64 %i.iy, %i.ii
  store i64 %i.iz, ptr %i.hg, align 8, !tbaa !21
  store <4 x i32> %i.in, ptr %i.he, align 8, !tbaa !60
  %i.ja = load ptr, ptr %i.hh, align 8, !tbaa !25
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !124
  store ptr %i.im, ptr %i.hi, align 8, !tbaa !125
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !12
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef i32 %i.jf(ptr noundef nonnull align 8 dereferenceable(208) %i.jc, ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(64) %10)
          to label %bb.aj unwind label %bb.aw     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %.not = icmp eq i32 %i.jg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.jh = load ptr, ptr %i.ha, align 8, !tbaa !18 ; 2 uses
  %.not.i130 = icmp eq ptr %i.jh, null
  br i1 %.not.i130, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ji = atomicrmw add ptr %i.jh, i32 -1 acq_rel, align 4
  %i.jj = icmp eq i32 %i.ji, 1
  br i1 %i.jj, label %bb.al, label %_ZN4ncnn3MatD2Ev.exit128

bb.al:                                            ; preds = %bb.ak
  %i.jk = load ptr, ptr %i.hd, align 8, !tbaa !19 ; 3 uses
  %.not3.i131 = icmp eq ptr %i.jk, null
  %i.jl = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i131, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !12
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef %i.jl)
          to label %_ZN4ncnn3MatD2Ev.exit128 unwind label %bb.ap, !inline_history !0

bb.an:                                            ; preds = %bb.al
  %.not.i181 = icmp eq ptr %i.jl, null
  br i1 %.not.i181, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef nonnull %i.jl) #12
  br label %_ZN4ncnn3MatD2Ev.exit128

bb.ap:                                            ; preds = %bb.am
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit128:                         ; preds = %bb.ak, %bb.aj, %bb.am, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.jr = load ptr, ptr %i.gt, align 8, !tbaa !18 ; 2 uses
  %.not.i134 = icmp eq ptr %i.jr, null
  br i1 %.not.i134, label %_ZN4ncnn3MatD2Ev.exit127, label %bb.aq

bb.aq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit128
  %i.js = atomicrmw add ptr %i.jr, i32 -1 acq_rel, align 4
  %i.jt = icmp eq i32 %i.js, 1
  br i1 %i.jt, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit127

bb.ar:                                            ; preds = %bb.aq
  %i.ju = load ptr, ptr %i.gw, align 8, !tbaa !19 ; 3 uses
  %.not3.i135 = icmp eq ptr %i.ju, null
  %i.jv = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i135, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = load ptr, ptr %i.ju, align 8, !tbaa !12
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8
  invoke void %i.jy(ptr noundef nonnull align 8 dereferenceable(8) %i.ju, ptr noundef %i.jv)
          to label %_ZN4ncnn3MatD2Ev.exit127 unwind label %bb.av, !inline_history !0

bb.at:                                            ; preds = %bb.ar
  %.not.i179 = icmp eq ptr %i.jv, null
  br i1 %.not.i179, label %_ZN4ncnn3MatD2Ev.exit127, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.jv) #12
  br label %_ZN4ncnn3MatD2Ev.exit127

bb.av:                                            ; preds = %bb.as
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit127:                         ; preds = %bb.aq, %_ZN4ncnn3MatD2Ev.exit128, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br i1 %.not, label %bb.ah, label %_ZNK4ncnn3Mat5emptyEv.exit195.thread

bb.aw:                                            ; preds = %bb.ai
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.kc = load ptr, ptr %i.ha, align 8, !tbaa !18 ; 2 uses
  %.not.i = icmp eq ptr %i.kc, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kd = atomicrmw add ptr %i.kc, i32 -1 acq_rel, align 4
  %i.ke = icmp eq i32 %i.kd, 1
  br i1 %i.ke, label %bb.ay, label %_ZN4ncnn3MatD2Ev.exit129

bb.ay:                                            ; preds = %bb.ax
  %i.kf = load ptr, ptr %i.hd, align 8, !tbaa !19 ; 3 uses
  %.not3.i = icmp eq ptr %i.kf, null
  %i.kg = load ptr, ptr %9, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kh = load ptr, ptr %i.kf, align 8, !tbaa !12
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  invoke void %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %i.kf, ptr noundef %i.kg)
          to label %_ZN4ncnn3MatD2Ev.exit129 unwind label %bb.bc, !inline_history !0

bb.ba:                                            ; preds = %bb.ay
  %.not.i183 = icmp eq ptr %i.kg, null
  br i1 %.not.i183, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.kg) #12
  br label %_ZN4ncnn3MatD2Ev.exit129

bb.bc:                                            ; preds = %bb.az
  %i.kk = landingpad { ptr, i32 }
          catch ptr null
  %i.kl = extractvalue { ptr, i32 } %i.kk, 0
  call void @__clang_call_terminate(ptr %i.kl) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit129:                         ; preds = %bb.ax, %bb.aw, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.km = load ptr, ptr %i.gt, align 8, !tbaa !18 ; 2 uses
  %.not.i138 = icmp eq ptr %i.km, null
  br i1 %.not.i138, label %_ZN4ncnn3MatD2Ev.exit126, label %bb.bd

bb.bd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit129
  %i.kn = atomicrmw add ptr %i.km, i32 -1 acq_rel, align 4
  %i.ko = icmp eq i32 %i.kn, 1
  br i1 %i.ko, label %bb.be, label %_ZN4ncnn3MatD2Ev.exit126

bb.be:                                            ; preds = %bb.bd
  %i.kp = load ptr, ptr %i.gw, align 8, !tbaa !19 ; 3 uses
  %.not3.i139 = icmp eq ptr %i.kp, null
  %i.kq = load ptr, ptr %8, align 8, !tbaa !20    ; 3 uses
  br i1 %.not3.i139, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !12
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8
  invoke void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kp, ptr noundef %i.kq)
          to label %_ZN4ncnn3MatD2Ev.exit126 unwind label %bb.bi, !inline_history !0

bb.bg:                                            ; preds = %bb.be
  %.not.i177 = icmp eq ptr %i.kq, null
  br i1 %.not.i177, label %_ZN4ncnn3MatD2Ev.exit126, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @free(ptr noundef nonnull %i.kq) #12
  br label %_ZN4ncnn3MatD2Ev.exit126

bb.bi:                                            ; preds = %bb.bf
  %i.ku = landingpad { ptr, i32 }
          catch ptr null
  %i.kv = extractvalue { ptr, i32 } %i.ku, 0
  call void @__clang_call_terminate(ptr %i.kv) #21
  unreachable

_ZN4ncnn3MatD2Ev.exit126:                         ; preds = %bb.bd, %_ZN4ncnn3MatD2Ev.exit129, %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ch

._crit_edge:                                      ; preds = %bb.ah, %bb.ag
  br i1 %i.ga, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %._crit_edge
  invoke void @_ZN4ncnn15convert_packingERKNS_3MatERS0_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %.099, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.bk unwind label %bb.af
end_hunk_1
