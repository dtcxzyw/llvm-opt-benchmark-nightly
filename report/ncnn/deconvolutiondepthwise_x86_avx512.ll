Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolutiondepthwise_x86_avx512?download=true
inline.NumInlined: 74
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn33DeconvolutionDepthWise_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  br i1 %.not.i102, label %_ZN4ncnn3Mat7releaseEv.exit96, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @free(ptr noundef nonnull %i.jd) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit96

_ZN4ncnn3Mat7releaseEv.exit96:                    ; preds = %bb.cq, %bb.cp, %bb.cl, %bb.cm, %bb.co
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 0, ptr %i.ji, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.iw, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jh, i8 0, i64 20, i1 false)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit59, %_ZN4ncnn3Mat7releaseEv.exit96, %bb.ck, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn33DeconvolutionDepthWise_x86_avx51216destroy_pipelineERKNS_6OptionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.ad = shl i64 %i.ac, 29
  %i.ae = ashr i64 %i.ad, 32
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn33DeconvolutionDepthWise_x86_avx5127forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i32, ptr %i.d, align 8, !tbaa !61
  %i.g = load i32, ptr %i.e, align 8, !tbaa !59
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !65   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.l = load i32, ptr %i.k, align 8, !tbaa !112  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.n = load i32, ptr %i.m, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44
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
  br label %bb.dn

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
  %i.ax = load i32, ptr %i.o, align 4, !tbaa !44
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
  br label %bb.da

bb.g:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit161
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !44  ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge175.split

.lr.ph:                                           ; preds = %bb.g
  %i.bl = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.bm = insertelement <2 x i32> %i.bl, i32 %i.q, i64 1
  %i.bn = insertelement <2 x i32> poison, i32 %i.bj, i64 0
  %i.bo = shufflevector <2 x i32> %i.bn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bp = sdiv <2 x i32> %i.bm, %i.bo
  %.fr = freeze <2 x i32> %i.bp                   ; 3 uses
  %i.bq = extractelement <2 x i32> %.fr, i64 0    ; 3 uses
  %i.br = extractelement <2 x i32> %.fr, i64 1    ; 3 uses
  %factor.op.mul171 = mul i32 %i.br, %i.bq
  %.reass = mul i32 %factor.op.mul171, %i.au
  %i.bs = load ptr, ptr %4, align 8, !tbaa !20    ; 3 uses
  %i.bt = icmp slt <2 x i32> %.fr, splat (i32 1)
  %i.bu = icmp slt i32 %i.au, 1
  %10 = bitcast <2 x i1> %i.bt to i2
  %brmerge = icmp ne i2 %10, 0
  %brmerge181 = or i1 %brmerge, %i.bu
  br i1 %brmerge181, label %._crit_edge175.split, label %.preheader163.lr.ph.preheader

.preheader163.lr.ph.preheader:                    ; preds = %.lr.ph
  %i.bv = zext nneg i32 %i.br to i64              ; 4 uses
  %i.bw = zext nneg i32 %i.au to i64              ; 15 uses
  %i.bx = zext nneg i32 %i.bq to i64              ; 5 uses
  %wide.trip.count199 = zext nneg i32 %i.bj to i64
  %i.by = mul nuw nsw i64 %i.bv, %i.bw
  %i.bz = add nuw nsw i64 %i.bx, 4611686018427387903
  %i.ca = mul i64 %i.bz, %i.bv
  %i.cb = shl i64 %i.ca, 2
  %i.cc = add i64 %i.cb, 4
  %i.cd = mul i64 %i.cc, %i.bw
  %i.ce = mul i32 %i.j, %i.l
  %i.cf = mul i32 %i.ce, %i.br
  %i.cg = mul i32 %i.cf, %i.bq
  %i.ch = shl nuw nsw i64 %i.bw, 2
  %i.ci = mul nuw nsw i64 %i.bx, %i.bw
  %i.cj = mul nuw nsw i64 %i.bx, %i.bw
  %i.ck = shl nuw i64 %i.cj, 2
  %i.cl = getelementptr i8, ptr %i.bs, i64 %i.cd
  %min.iters.check = icmp ult i32 %i.au, 8
  %stride.check = icmp samesign ugt i64 %i.by, 2305843009213693951
  %min.iters.check252 = icmp ult i32 %i.au, 64
  %i.cm = and i64 %i.bw, 56
  %n.vec = and i64 %i.bw, 2147483584              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bw
  %min.epilog.iters.check = icmp eq i64 %i.cm, 0
  %n.vec256 = and i64 %i.bw, 2147483640           ; 3 uses
  %cmp.n260 = icmp eq i64 %n.vec256, %i.bw
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader163.lr.ph

._crit_edge175.split:                             ; preds = %._crit_edge169, %.lr.ph, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  store i64 0, ptr %i.cu, align 16, !tbaa !21
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.cq, i8 0, i64 28, i1 false)
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !67
  %.not = icmp eq i32 %i.cw, 0
  br i1 %.not, label %bb.k, label %bb.h

.preheader163.lr.ph:                              ; preds = %.preheader163.lr.ph.preheader, %._crit_edge169
  %indvars.iv196 = phi i64 [ 0, %.preheader163.lr.ph.preheader ], [ %indvars.iv.next197, %._crit_edge169 ] ; 3 uses
  %i.cx = trunc i64 %indvars.iv196 to i32
  %i.cy = mul i32 %i.cg, %i.cx
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = shl nsw i64 %i.cz, 2                    ; 3 uses
  %i.db = add nsw i64 %i.ci, %i.cz
  %i.dc = shl i64 %i.db, 2
  %i.dd = trunc nuw nsw i64 %indvars.iv196 to i32
  %i.de = mul i32 %.reass, %i.dd
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.df
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.df
  %i.di = getelementptr i8, ptr %i.cl, i64 %i.da
  %i.dj = getelementptr i8, ptr %i.bs, i64 %i.da
  %i.dk = getelementptr i8, ptr %i.bb, i64 %i.dc
  %i.dl = getelementptr i8, ptr %i.bb, i64 %i.da
  br label %.preheader163

.preheader163:                                    ; preds = %.preheader163.lr.ph, %._crit_edge166
  %indvars.iv191 = phi i64 [ 0, %.preheader163.lr.ph ], [ %indvars.iv.next192, %._crit_edge166 ] ; 5 uses
  %i.dm = mul i64 %i.ch, %indvars.iv191           ; 2 uses
  %scevgep = getelementptr i8, ptr %i.di, i64 %i.dm
  %scevgep249 = getelementptr i8, ptr %i.dj, i64 %i.dm
  %i.dn = mul i64 %i.ck, %indvars.iv191           ; 2 uses
  %scevgep250 = getelementptr i8, ptr %i.dk, i64 %i.dn
  %scevgep251 = getelementptr i8, ptr %i.dl, i64 %i.dn
  %i.do = mul nuw nsw i64 %indvars.iv191, %i.bx
  %bound0 = icmp ult ptr %scevgep251, %scevgep
  %bound1 = icmp ult ptr %scevgep249, %scevgep250
  %found.conflict = and i1 %bound0, %bound1
  %i.dp = or i1 %found.conflict, %stride.check
  br label %iter.check

._crit_edge169:                                   ; preds = %._crit_edge166
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %._crit_edge175.split, label %.preheader163.lr.ph, !llvm.loop !101

iter.check:                                       ; preds = %.preheader163, %._crit_edge
  %indvars.iv186 = phi i64 [ 0, %.preheader163 ], [ %indvars.iv.next187, %._crit_edge ] ; 3 uses
  %i.dq = mul nuw nsw i64 %indvars.iv186, %i.bv
  %i.dr = add nuw nsw i64 %i.dq, %indvars.iv191
  %i.ds = mul nuw nsw i64 %i.dr, %i.bw
  %i.dt = add nuw nsw i64 %indvars.iv186, %i.do
  %i.du = mul nuw nsw i64 %i.dt, %i.bw
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ds ; 7 uses
  %invariant.gep244 = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.du ; 7 uses
  %brmerge261 = select i1 %min.iters.check, i1 true, i1 %i.dp
  br i1 %brmerge261, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check252, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 192
  %wide.load = load <16 x float>, ptr %i.dv, align 4, !tbaa !51, !alias.scope !114
  %wide.load253 = load <16 x float>, ptr %i.dw, align 4, !tbaa !51, !alias.scope !114
  %wide.load254 = load <16 x float>, ptr %i.dx, align 4, !tbaa !51, !alias.scope !114
  %wide.load255 = load <16 x float>, ptr %i.dy, align 4, !tbaa !51, !alias.scope !114
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %index ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 128
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 192
  store <16 x float> %wide.load, ptr %i.dz, align 4, !tbaa !51, !alias.scope !115, !noalias !114
  store <16 x float> %wide.load253, ptr %i.ea, align 4, !tbaa !51, !alias.scope !115, !noalias !114
  store <16 x float> %wide.load254, ptr %i.eb, align 4, !tbaa !51, !alias.scope !115, !noalias !114
  store <16 x float> %wide.load255, ptr %i.ec, align 4, !tbaa !51, !alias.scope !115, !noalias !114
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next259, %vec.epilog.vector.body ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index257
  %wide.load258 = load <8 x float>, ptr %i.ee, align 4, !tbaa !51, !alias.scope !114
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %index257
  store <8 x float> %wide.load258, ptr %i.ef, align 4, !tbaa !51, !alias.scope !115, !noalias !114
  %index.next259 = add nuw i64 %index257, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next259, %n.vec256
  br i1 %i.eg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !106

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n260, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec256, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.eh = load float, ptr %gep.prol, align 4, !tbaa !51
  %gep245.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.prol
  store float %i.eh, ptr %gep245.prol, align 4, !tbaa !51
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !107

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ei = sub nsw i64 %indvars.iv.ph, %i.bw
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge166:                                   ; preds = %._crit_edge
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %i.bv
  br i1 %exitcond195.not, label %._crit_edge169, label %.preheader163, !llvm.loop !108

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %i.bx
  br i1 %exitcond190.not, label %._crit_edge166, label %iter.check, !llvm.loop !109

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ek = load float, ptr %gep, align 4, !tbaa !51
  %gep245 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv
  store float %i.ek, ptr %gep245, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.el = load float, ptr %gep.1, align 4, !tbaa !51
  %gep245.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.next
  store float %i.el, ptr %gep245.1, align 4, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.em = load float, ptr %gep.2, align 4, !tbaa !51
  %gep245.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep244, i64 %indvars.iv.next.1
  store float %i.em, ptr %gep245.2, align 4, !tbaa !51
end_hunk_0
