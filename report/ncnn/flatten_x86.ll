Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.ap = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.u, 2147483640               ; 4 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  %i.ar = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %i.at = mul nsw i64 %indvars.iv, %i.u
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.at ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ap
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ar
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.ax ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.as, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <4 x float>, ptr %next.gep45, align 4, !tbaa !38, !alias.scope !83
  %wide.load46 = load <4 x float>, ptr %i.ay, align 4, !tbaa !38, !alias.scope !83
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %wide.load, ptr %next.gep, align 4, !tbaa !38, !alias.scope !84, !noalias !83
  store <4 x float> %wide.load46, ptr %i.az, align 4, !tbaa !38, !alias.scope !84, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %.033.ph = phi i32 [ %i.aq, %middle.block ], [ 0, %.noexc ] ; 4 uses
  %.02132.ph = phi ptr [ %i.av, %middle.block ], [ %i.au, %.noexc ] ; 2 uses
  %.02231.ph = phi ptr [ %i.aw, %middle.block ], [ %i.as, %.noexc ] ; 2 uses
  %i.bb = sub i32 %i.r, %.033.ph
  %xtraiter = and i32 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.033.prol = phi i32 [ %i.bf, %scalar.ph.prol ], [ %.033.ph, %scalar.ph.preheader ]
  %.02132.prol = phi ptr [ %i.be, %scalar.ph.prol ], [ %.02132.ph, %scalar.ph.preheader ] ; 2 uses
  %.02231.prol = phi ptr [ %i.bc, %scalar.ph.prol ], [ %.02231.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.02231.prol, i64 4 ; 2 uses
  %i.bd = load float, ptr %.02231.prol, align 4, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %.02132.prol, i64 4 ; 2 uses
  store float %i.bd, ptr %.02132.prol, align 4, !tbaa !38
  %i.bf = add nuw nsw i32 %.033.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.033.unr = phi i32 [ %.033.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %.02132.unr = phi ptr [ %.02132.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %.02231.unr = phi ptr [ %.02231.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bg = sub i32 %.033.ph, %i.r
  %i.bh = icmp ugt i32 %i.bg, -8
  br i1 %i.bh, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.033 = phi i32 [ %i.cg, %scalar.ph ], [ %.033.unr, %scalar.ph.prol.loopexit ]
  %.02132 = phi ptr [ %i.cf, %scalar.ph ], [ %.02132.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.02231 = phi ptr [ %i.cd, %scalar.ph ], [ %.02231.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02231, i64 4
  %i.bj = load float, ptr %.02231, align 4, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %.02132, i64 4
  store float %i.bj, ptr %.02132, align 4, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %.02231, i64 8
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %.02132, i64 8
  store float %i.bm, ptr %i.bk, align 4, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %.02231, i64 12
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %.02132, i64 12
  store float %i.bp, ptr %i.bn, align 4, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %.02231, i64 16
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %.02132, i64 16
  store float %i.bs, ptr %i.bq, align 4, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %.02231, i64 20
  %i.bv = load float, ptr %i.br, align 4, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %.02132, i64 20
  store float %i.bv, ptr %i.bt, align 4, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %.02231, i64 24
  %i.by = load float, ptr %i.bu, align 4, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %.02132, i64 24
  store float %i.by, ptr %i.bw, align 4, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %.02231, i64 28
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.02132, i64 28
  store float %i.cb, ptr %i.bz, align 4, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %.02231, i64 32
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !38
  %i.cf = getelementptr inbounds nuw i8, ptr %.02132, i64 32
  store float %i.ce, ptr %i.cc, align 4, !tbaa !38
  %i.cg = add nuw nsw i32 %.033, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cg, %i.r
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !81

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond38.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond38.not, label %._crit_edge36.split, label %.noexc

._crit_edge36.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge36.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not46 = icmp sgt i32 %i.k, %i.j
  br i1 %.not46, label %._crit_edge50.split, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !20     ; 11 uses
  %i.s = load i32, ptr %5, align 4, !tbaa !25     ; 10 uses
  %factor.op.mul51 = shl i32 %i.s, 2
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge50.split

.lr.ph.preheader:                                 ; preds = %.lr.ph49
  %i.u = sext i32 %i.k to i64                     ; 5 uses
  %i.v = zext nneg i32 %i.s to i64                ; 11 uses
  %i.w = add nsw i32 %i.j, 1
  %i.x = add nsw i32 %i.s, -1
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 1                  ; 4 uses
  %i.aa = getelementptr i8, ptr %i.r, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.aa, i64 2
  %i.ab = mul i32 %i.k, %i.s
  %i.ac = shl i32 %i.ab, 2
  %i.ad = shl i32 %i.s, 2
  %i.ae = shl nsw i64 %i.u, 2                     ; 3 uses
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = mul i64 %i.af, %i.v
  %i.ah = shl i64 %i.ag, 1
  %scevgep59 = getelementptr i8, ptr %i.r, i64 %i.ah ; 2 uses
  %i.ai = shl nsw i64 %i.u, 3                     ; 3 uses
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 3                ; 3 uses
  %i.am = add nsw i64 %i.ai, %i.al
  %i.an = or disjoint i64 %i.am, 2
  %i.ao = mul i64 %i.an, %i.v
  %i.ap = getelementptr i8, ptr %i.r, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.z
  %i.ar = or disjoint i64 %i.ae, 2
  %i.as = mul i64 %i.ar, %i.v
  %i.at = shl i64 %i.as, 1
  %scevgep61 = getelementptr i8, ptr %i.r, i64 %i.at ; 2 uses
  %i.au = add nsw i64 %i.ai, %i.al
  %i.av = or disjoint i64 %i.au, 4
  %i.aw = mul i64 %i.av, %i.v
  %i.ax = getelementptr i8, ptr %i.r, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.z
  %i.az = or disjoint i64 %i.ae, 3
  %i.ba = mul i64 %i.az, %i.v
  %i.bb = shl i64 %i.ba, 1
  %scevgep63 = getelementptr i8, ptr %i.r, i64 %i.bb ; 2 uses
  %i.bc = add nsw i64 %i.ai, %i.al
  %i.bd = or disjoint i64 %i.bc, 6
  %i.be = mul i64 %i.bd, %i.v
  %i.bf = getelementptr i8, ptr %i.r, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.z   ; 2 uses
  %i.bh = insertelement <2 x ptr> poison, ptr %i.bg, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %i.aq, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %i.ay, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.bg, i64 1
  %i.bl = getelementptr i8, <2 x ptr> %i.bi, i64 2 ; 4 uses
  %i.bm = getelementptr i8, <2 x ptr> %i.bk, i64 2 ; 3 uses
  %i.bn = mul i64 %i.q, %i.o
  %i.bo = mul i64 %i.bn, %i.u
  %scevgep65 = getelementptr i8, ptr %i.l, i64 %i.bo ; 3 uses
  %i.bp = add nsw i64 %i.u, %i.ak
  %i.bq = mul i64 %i.q, %i.bp
  %i.br = mul i64 %i.bq, %i.o
  %i.bs = shl nuw nsw i64 %i.y, 3
  %i.bt = getelementptr i8, ptr %i.l, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs
  %scevgep66 = getelementptr i8, ptr %i.bu, i64 8 ; 3 uses
  %6 = mul i64 %i.q, %i.o
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep59, i64 0
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep61, i64 1
  %7 = insertelement <4 x ptr> %i.bw, ptr %scevgep63, i64 2
  %8 = insertelement <4 x ptr> %7, ptr %scevgep65, i64 3
  %i.bx = insertelement <2 x ptr> poison, ptr %scevgep63, i64 0 ; 2 uses
  %9 = insertelement <2 x ptr> %i.bx, ptr %scevgep59, i64 1 ; 3 uses
  %10 = shufflevector <2 x ptr> %i.bm, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %11 = insertelement <2 x ptr> %10, ptr %scevgep66, i64 0 ; 2 uses
  %i.by = insertelement <2 x ptr> poison, ptr %scevgep65, i64 0
  %i.bz = insertelement <2 x ptr> %i.by, ptr %scevgep61, i64 1 ; 3 uses
  %12 = shufflevector <2 x ptr> %i.bz, <2 x ptr> %i.bx, <2 x i32> <i32 1, i32 2>
  %13 = shufflevector <2 x ptr> %i.bz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = insertelement <2 x ptr> %9, ptr %scevgep65, i64 0
  %i.cb = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %14 = shufflevector <2 x ptr> %i.bl, <2 x ptr> %i.bm, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %min.iters.check = icmp ult i32 %i.s, 48
  %15 = insertelement <4 x ptr> %14, ptr %scevgep66, i64 3
  %stride.check = icmp slt i64 %6, 0
  %i.cc = icmp ult <2 x ptr> %9, %11
  %i.cd = icmp ult <2 x ptr> %i.bz, %i.bl
  %i.ce = icmp ult <2 x ptr> %9, %i.bm
  %i.cf = icmp ult <2 x ptr> %12, %i.bl
  %i.cg = icmp ult <2 x ptr> %i.ca, %i.cb
  %16 = insertelement <2 x ptr> %i.bl, ptr %scevgep66, i64 0
  %i.ch = icmp ult <2 x ptr> %13, %16
  %i.ci = and <2 x i1> %i.cf, %i.ce
  %i.cj = and <2 x i1> %i.ch, %i.cg
  %i.ck = and <2 x i1> %i.cc, %i.cd
  %i.cl = or <2 x i1> %i.ci, %i.cj
  %i.cm = insertelement <2 x i1> poison, i1 %stride.check, i64 0
  %invariant.op = or <2 x i1> %i.ck, %i.cl
  %n.vec = and i64 %i.v, 2147483640               ; 5 uses
  %i.cn = trunc nuw nsw i64 %n.vec to i32
  %i.co = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.cp = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 11 uses
  %i.cr = trunc i64 %indvars.iv to i32
  %.reass52 = mul i32 %factor.op.mul51, %i.cr
  %i.cs = sext i32 %.reass52 to i64
  %i.ct = getelementptr [2 x i8], ptr %i.r, i64 %i.cs ; 5 uses
  %i.cu = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.cv = or disjoint i64 %i.cu, 1
  %i.cw = mul nsw i64 %i.cv, %i.v
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.cw ; 4 uses
  %i.cy = or disjoint i64 %i.cu, 2
  %i.cz = mul nsw i64 %i.cy, %i.v
  %i.da = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.cz ; 4 uses
  %i.db = or disjoint i64 %i.cu, 3
  %i.dc = mul nsw i64 %i.db, %i.v
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.dc ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.de = mul i32 %i.ad, %indvar
  %i.df = add i32 %i.ac, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 1
  %scevgep58 = getelementptr i8, ptr %scevgep, i64 %i.dh
  %i.di = insertelement <4 x ptr> poison, ptr %i.ct, i64 0
  %i.dj = shufflevector <4 x ptr> %i.di, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dk = icmp ult <4 x ptr> %i.dj, %15
  %i.dl = insertelement <4 x ptr> poison, ptr %scevgep58, i64 0
  %i.dm = shufflevector <4 x ptr> %i.dl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dn = icmp ult <4 x ptr> %8, %i.dm
  %i.do = and <4 x i1> %i.dk, %i.dn
  %i.dp = bitcast <4 x i1> %i.do to i4
  %i.dq = icmp ne i4 %i.dp, 0
  %i.dr = insertelement <2 x i1> %i.cm, i1 %i.dq, i64 1
  %.reass124 = or <2 x i1> %i.dr, %invariant.op
  %i.ds = bitcast <2 x i1> %.reass124 to i2
  %.not = icmp eq i2 %i.ds, 0
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.dt = getelementptr i8, ptr %i.dd, i64 %i.co
  %i.du = getelementptr i8, ptr %i.da, i64 %i.co
  %i.dv = getelementptr i8, ptr %i.cx, i64 %i.co
  %i.dw = getelementptr i8, ptr %i.ct, i64 %i.co
  %i.dx = getelementptr i8, ptr %i.cq, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dy = shl i64 %index, 1                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.dd, i64 %i.dy
  %next.gep102 = getelementptr i8, ptr %i.da, i64 %i.dy
  %next.gep103 = getelementptr i8, ptr %i.cx, i64 %i.dy
  %next.gep104 = getelementptr i8, ptr %i.ct, i64 %i.dy
  %i.dz = shl i64 %index, 3                       ; 8 uses
  %next.gep105 = getelementptr i8, ptr %i.cq, i64 %i.dz ; 4 uses
  %i.ea = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep106 = getelementptr i8, ptr %i.ea, i64 8
  %i.eb = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep107 = getelementptr i8, ptr %i.eb, i64 16
  %i.ec = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep108 = getelementptr i8, ptr %i.ec, i64 24
  %i.ed = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep109 = getelementptr i8, ptr %i.ed, i64 32
  %i.ee = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep110 = getelementptr i8, ptr %i.ee, i64 40
  %i.ef = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep111 = getelementptr i8, ptr %i.ef, i64 48
  %i.eg = getelementptr i8, ptr %i.cq, i64 %i.dz  ; 4 uses
  %next.gep112 = getelementptr i8, ptr %i.eg, i64 56
  %i.eh = load i16, ptr %next.gep105, align 2, !tbaa !48, !alias.scope !93
  %i.ei = load i16, ptr %next.gep106, align 2, !tbaa !48, !alias.scope !93
  %i.ej = load i16, ptr %next.gep107, align 2, !tbaa !48, !alias.scope !93
  %i.ek = load i16, ptr %next.gep108, align 2, !tbaa !48, !alias.scope !93
  %i.el = load i16, ptr %next.gep109, align 2, !tbaa !48, !alias.scope !93
  %i.em = load i16, ptr %next.gep110, align 2, !tbaa !48, !alias.scope !93
  %i.en = load i16, ptr %next.gep111, align 2, !tbaa !48, !alias.scope !93
  %i.eo = load i16, ptr %next.gep112, align 2, !tbaa !48, !alias.scope !93
  %i.ep = insertelement <8 x i16> poison, i16 %i.eh, i64 0
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 1
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 2
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 3
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 4
  %i.eu = insertelement <8 x i16> %i.et, i16 %i.em, i64 5
  %i.ev = insertelement <8 x i16> %i.eu, i16 %i.en, i64 6
  %i.ew = insertelement <8 x i16> %i.ev, i16 %i.eo, i64 7
  store <8 x i16> %i.ew, ptr %next.gep104, align 2, !tbaa !48, !alias.scope !94, !noalias !95
  %i.ex = getelementptr inbounds nuw i8, ptr %next.gep105, i64 2
  %i.ey = getelementptr i8, ptr %i.ea, i64 10
  %i.ez = getelementptr i8, ptr %i.eb, i64 18
  %i.fa = getelementptr i8, ptr %i.ec, i64 26
  %i.fb = getelementptr i8, ptr %i.ed, i64 34
  %i.fc = getelementptr i8, ptr %i.ee, i64 42
  %i.fd = getelementptr i8, ptr %i.ef, i64 50
  %i.fe = getelementptr i8, ptr %i.eg, i64 58
  %i.ff = load i16, ptr %i.ex, align 2, !tbaa !48, !alias.scope !93
  %i.fg = load i16, ptr %i.ey, align 2, !tbaa !48, !alias.scope !93
  %i.fh = load i16, ptr %i.ez, align 2, !tbaa !48, !alias.scope !93
  %i.fi = load i16, ptr %i.fa, align 2, !tbaa !48, !alias.scope !93
  %i.fj = load i16, ptr %i.fb, align 2, !tbaa !48, !alias.scope !93
  %i.fk = load i16, ptr %i.fc, align 2, !tbaa !48, !alias.scope !93
  %i.fl = load i16, ptr %i.fd, align 2, !tbaa !48, !alias.scope !93
  %i.fm = load i16, ptr %i.fe, align 2, !tbaa !48, !alias.scope !93
  %i.fn = insertelement <8 x i16> poison, i16 %i.ff, i64 0
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 1
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 2
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 3
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 4
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 5
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 6
  %i.fu = insertelement <8 x i16> %i.ft, i16 %i.fm, i64 7
  store <8 x i16> %i.fu, ptr %next.gep103, align 2, !tbaa !48, !alias.scope !96, !noalias !97
  %i.fv = getelementptr inbounds nuw i8, ptr %next.gep105, i64 4
  %i.fw = getelementptr i8, ptr %i.ea, i64 12
  %i.fx = getelementptr i8, ptr %i.eb, i64 20
  %i.fy = getelementptr i8, ptr %i.ec, i64 28
  %i.fz = getelementptr i8, ptr %i.ed, i64 36
  %i.ga = getelementptr i8, ptr %i.ee, i64 44
  %i.gb = getelementptr i8, ptr %i.ef, i64 52
  %i.gc = getelementptr i8, ptr %i.eg, i64 60
  %i.gd = load i16, ptr %i.fv, align 2, !tbaa !48, !alias.scope !93
  %i.ge = load i16, ptr %i.fw, align 2, !tbaa !48, !alias.scope !93
  %i.gf = load i16, ptr %i.fx, align 2, !tbaa !48, !alias.scope !93
  %i.gg = load i16, ptr %i.fy, align 2, !tbaa !48, !alias.scope !93
  %i.gh = load i16, ptr %i.fz, align 2, !tbaa !48, !alias.scope !93
  %i.gi = load i16, ptr %i.ga, align 2, !tbaa !48, !alias.scope !93
  %i.gj = load i16, ptr %i.gb, align 2, !tbaa !48, !alias.scope !93
  %i.gk = load i16, ptr %i.gc, align 2, !tbaa !48, !alias.scope !93
  %i.gl = insertelement <8 x i16> poison, i16 %i.gd, i64 0
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 1
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 2
  %i.go = insertelement <8 x i16> %i.gn, i16 %i.gg, i64 3
  %i.gp = insertelement <8 x i16> %i.go, i16 %i.gh, i64 4
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 5
  %i.gr = insertelement <8 x i16> %i.gq, i16 %i.gj, i64 6
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 7
  store <8 x i16> %i.gs, ptr %next.gep102, align 2, !tbaa !48, !alias.scope !98, !noalias !99
  %i.gt = getelementptr inbounds nuw i8, ptr %next.gep105, i64 6
  %i.gu = getelementptr i8, ptr %i.ea, i64 14
  %i.gv = getelementptr i8, ptr %i.eb, i64 22
  %i.gw = getelementptr i8, ptr %i.ec, i64 30
  %i.gx = getelementptr i8, ptr %i.ed, i64 38
  %i.gy = getelementptr i8, ptr %i.ee, i64 46
  %i.gz = getelementptr i8, ptr %i.ef, i64 54
  %i.ha = getelementptr i8, ptr %i.eg, i64 62
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !48, !alias.scope !93
  %i.hc = load i16, ptr %i.gu, align 2, !tbaa !48, !alias.scope !93
  %i.hd = load i16, ptr %i.gv, align 2, !tbaa !48, !alias.scope !93
  %i.he = load i16, ptr %i.gw, align 2, !tbaa !48, !alias.scope !93
  %i.hf = load i16, ptr %i.gx, align 2, !tbaa !48, !alias.scope !93
  %i.hg = load i16, ptr %i.gy, align 2, !tbaa !48, !alias.scope !93
  %i.hh = load i16, ptr %i.gz, align 2, !tbaa !48, !alias.scope !93
  %i.hi = load i16, ptr %i.ha, align 2, !tbaa !48, !alias.scope !93
  %i.hj = insertelement <8 x i16> poison, i16 %i.hb, i64 0
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 1
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 2
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 3
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 4
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 5
  %i.hp = insertelement <8 x i16> %i.ho, i16 %i.hh, i64 6
  %i.hq = insertelement <8 x i16> %i.hp, i16 %i.hi, i64 7
  store <8 x i16> %i.hq, ptr %next.gep, align 2, !tbaa !48, !alias.scope !100, !noalias !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.045.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.cn, %middle.block ] ; 4 uses
  %.03444.ph = phi ptr [ %i.dd, %vector.memcheck ], [ %i.dd, %.lr.ph ], [ %i.dt, %middle.block ] ; 3 uses
  %.03543.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph ], [ %i.du, %middle.block ] ; 3 uses
  %.03642.ph = phi ptr [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph ], [ %i.dv, %middle.block ] ; 3 uses
  %.03741.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph ], [ %i.dw, %middle.block ] ; 3 uses
  %.03840.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph ], [ %i.dx, %middle.block ] ; 6 uses
  %i.hs = sub i32 %i.s, %.045.ph
  %.neg = add i32 %.045.ph, 1
  %xtraiter = and i32 %i.hs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ht = load i16, ptr %.03840.ph, align 2, !tbaa !48
  %i.hu = getelementptr inbounds nuw i8, ptr %.03741.ph, i64 2
  store i16 %i.ht, ptr %.03741.ph, align 2, !tbaa !48
  %i.hv = getelementptr inbounds nuw i8, ptr %.03840.ph, i64 2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !48
  %i.hx = getelementptr inbounds nuw i8, ptr %.03642.ph, i64 2
  store i16 %i.hw, ptr %.03642.ph, align 2, !tbaa !48
  %i.hy = getelementptr inbounds nuw i8, ptr %.03840.ph, i64 4
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !48
  %i.ia = getelementptr inbounds nuw i8, ptr %.03543.ph, i64 2
  store i16 %i.hz, ptr %.03543.ph, align 2, !tbaa !48
  %i.ib = getelementptr inbounds nuw i8, ptr %.03840.ph, i64 6
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !48
  %i.id = getelementptr inbounds nuw i8, ptr %.03444.ph, i64 2
  store i16 %i.ic, ptr %.03444.ph, align 2, !tbaa !48
  %i.ie = getelementptr inbounds nuw i8, ptr %.03840.ph, i64 8
  %i.if = add nuw nsw i32 %.045.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.045.unr = phi i32 [ %.045.ph, %scalar.ph.preheader ], [ %i.if, %scalar.ph.prol ]
  %.03444.unr = phi ptr [ %.03444.ph, %scalar.ph.preheader ], [ %i.id, %scalar.ph.prol ]
  %.03543.unr = phi ptr [ %.03543.ph, %scalar.ph.preheader ], [ %i.ia, %scalar.ph.prol ]
  %.03642.unr = phi ptr [ %.03642.ph, %scalar.ph.preheader ], [ %i.hx, %scalar.ph.prol ]
  %.03741.unr = phi ptr [ %.03741.ph, %scalar.ph.preheader ], [ %i.hu, %scalar.ph.prol ]
  %.03840.unr = phi ptr [ %.03840.ph, %scalar.ph.preheader ], [ %i.ie, %scalar.ph.prol ]
  %i.ig = icmp eq i32 %i.s, %.neg
  br i1 %i.ig, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond54.not = icmp eq i32 %i.w, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond54.not, label %._crit_edge50.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.045 = phi i32 [ %i.jf, %scalar.ph ], [ %.045.unr, %scalar.ph.prol.loopexit ]
  %.03444 = phi ptr [ %i.jd, %scalar.ph ], [ %.03444.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03543 = phi ptr [ %i.ja, %scalar.ph ], [ %.03543.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03642 = phi ptr [ %i.ix, %scalar.ph ], [ %.03642.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03741 = phi ptr [ %i.iu, %scalar.ph ], [ %.03741.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03840 = phi ptr [ %i.je, %scalar.ph ], [ %.03840.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ih = load i16, ptr %.03840, align 2, !tbaa !48
  %i.ii = getelementptr inbounds nuw i8, ptr %.03741, i64 2
  store i16 %i.ih, ptr %.03741, align 2, !tbaa !48
  %i.ij = getelementptr inbounds nuw i8, ptr %.03840, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %.03642, i64 2
  store i16 %i.ik, ptr %.03642, align 2, !tbaa !48
  %i.im = getelementptr inbounds nuw i8, ptr %.03840, i64 4
  %i.in = load i16, ptr %i.im, align 2, !tbaa !48
  %i.io = getelementptr inbounds nuw i8, ptr %.03543, i64 2
  store i16 %i.in, ptr %.03543, align 2, !tbaa !48
  %i.ip = getelementptr inbounds nuw i8, ptr %.03840, i64 6
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !48
  %i.ir = getelementptr inbounds nuw i8, ptr %.03444, i64 2
  store i16 %i.iq, ptr %.03444, align 2, !tbaa !48
  %i.is = getelementptr inbounds nuw i8, ptr %.03840, i64 8
  %i.it = load i16, ptr %i.is, align 2, !tbaa !48
  %i.iu = getelementptr inbounds nuw i8, ptr %.03741, i64 4
  store i16 %i.it, ptr %i.ii, align 2, !tbaa !48
  %i.iv = getelementptr inbounds nuw i8, ptr %.03840, i64 10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %.03642, i64 4
  store i16 %i.iw, ptr %i.il, align 2, !tbaa !48
  %i.iy = getelementptr inbounds nuw i8, ptr %.03840, i64 12
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !48
  %i.ja = getelementptr inbounds nuw i8, ptr %.03543, i64 4
  store i16 %i.iz, ptr %i.io, align 2, !tbaa !48
  %i.jb = getelementptr inbounds nuw i8, ptr %.03840, i64 14
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !48
  %i.jd = getelementptr inbounds nuw i8, ptr %.03444, i64 4
  store i16 %i.jc, ptr %i.ir, align 2, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %.03840, i64 16
  %i.jf = add nuw nsw i32 %.045, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jf, %i.s
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !92

._crit_edge50.split:                              ; preds = %._crit_edge, %.lr.ph49, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge50.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %.not53 = icmp sgt i32 %i.k, %i.j
  br i1 %.not53, label %._crit_edge55.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !111 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !111 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !111 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 11 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 10 uses
  %factor.op.mul56 = shl i32 %i.r, 2
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc.preheader, label %._crit_edge55.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.t = sext i32 %i.k to i64                     ; 5 uses
  %i.u = zext nneg i32 %i.r to i64                ; 11 uses
  %i.v = add nsw i32 %i.j, 1
  %i.w = add nsw i32 %i.r, -1
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 1                  ; 4 uses
  %i.z = getelementptr i8, ptr %i.q, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 2
  %i.aa = mul i32 %i.k, %i.r
  %i.ab = shl i32 %i.aa, 2
  %i.ac = shl i32 %i.r, 2
  %i.ad = shl nsw i64 %i.t, 2                     ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = mul i64 %i.ae, %i.u
  %i.ag = shl i64 %i.af, 1
  %scevgep64 = getelementptr i8, ptr %i.q, i64 %i.ag ; 2 uses
  %i.ah = shl nsw i64 %i.t, 3                     ; 3 uses
  %i.ai = sub i32 %i.j, %i.k
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 3 uses
  %i.al = add nsw i64 %i.ah, %i.ak
  %i.am = or disjoint i64 %i.al, 2
  %i.an = mul i64 %i.am, %i.u
  %i.ao = getelementptr i8, ptr %i.q, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.y
  %i.aq = or disjoint i64 %i.ad, 2
  %i.ar = mul i64 %i.aq, %i.u
  %i.as = shl i64 %i.ar, 1
  %scevgep66 = getelementptr i8, ptr %i.q, i64 %i.as ; 2 uses
  %i.at = add nsw i64 %i.ah, %i.ak
  %i.au = or disjoint i64 %i.at, 4
  %i.av = mul i64 %i.au, %i.u
  %i.aw = getelementptr i8, ptr %i.q, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.y
  %i.ay = or disjoint i64 %i.ad, 3
  %i.az = mul i64 %i.ay, %i.u
  %i.ba = shl i64 %i.az, 1
  %scevgep68 = getelementptr i8, ptr %i.q, i64 %i.ba ; 2 uses
  %i.bb = add nsw i64 %i.ah, %i.ak
  %i.bc = or disjoint i64 %i.bb, 6
  %i.bd = mul i64 %i.bc, %i.u
  %i.be = getelementptr i8, ptr %i.q, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.y   ; 2 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.ap, i64 1
  %i.bi = insertelement <2 x ptr> poison, ptr %i.ax, i64 0
  %i.bj = insertelement <2 x ptr> %i.bi, ptr %i.bf, i64 1
  %i.bk = getelementptr i8, <2 x ptr> %i.bh, i64 2 ; 4 uses
  %i.bl = getelementptr i8, <2 x ptr> %i.bj, i64 2 ; 3 uses
  %i.bm = mul i64 %i.p, %i.n                      ; 2 uses
  %i.bn = mul i64 %i.bm, %i.t
  %scevgep70 = getelementptr i8, ptr %i.l, i64 %i.bn ; 3 uses
  %i.bo = add nsw i64 %i.t, %i.aj
  %i.bp = mul i64 %i.bm, %i.bo
  %i.bq = shl nuw nsw i64 %i.x, 3
  %i.br = getelementptr i8, ptr %i.l, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.bq
  %scevgep71 = getelementptr i8, ptr %i.bs, i64 8 ; 3 uses
  %6 = mul i64 %i.p, %i.n
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep64, i64 0
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep66, i64 1
  %7 = insertelement <4 x ptr> %i.bu, ptr %scevgep68, i64 2
  %8 = insertelement <4 x ptr> %7, ptr %scevgep70, i64 3
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep68, i64 0 ; 2 uses
  %9 = insertelement <2 x ptr> %i.bv, ptr %scevgep64, i64 1 ; 3 uses
  %10 = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> <i32 poison, i32 0>
  %11 = insertelement <2 x ptr> %10, ptr %scevgep71, i64 0 ; 2 uses
  %i.bw = insertelement <2 x ptr> poison, ptr %scevgep70, i64 0
  %i.bx = insertelement <2 x ptr> %i.bw, ptr %scevgep66, i64 1 ; 3 uses
  %12 = shufflevector <2 x ptr> %i.bx, <2 x ptr> %i.bv, <2 x i32> <i32 1, i32 2>
  %13 = shufflevector <2 x ptr> %i.bx, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.by = insertelement <2 x ptr> %9, ptr %scevgep70, i64 0
  %i.bz = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %14 = shufflevector <2 x ptr> %i.bk, <2 x ptr> %i.bl, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %min.iters.check = icmp ult i32 %i.r, 48
  %15 = insertelement <4 x ptr> %14, ptr %scevgep71, i64 3
  %stride.check = icmp slt i64 %6, 0
  %i.ca = icmp ult <2 x ptr> %9, %11
  %i.cb = icmp ult <2 x ptr> %i.bx, %i.bk
  %i.cc = icmp ult <2 x ptr> %9, %i.bl
  %i.cd = icmp ult <2 x ptr> %12, %i.bk
  %i.ce = icmp ult <2 x ptr> %i.by, %i.bz
  %16 = insertelement <2 x ptr> %i.bk, ptr %scevgep71, i64 0
  %i.cf = icmp ult <2 x ptr> %13, %16
  %i.cg = and <2 x i1> %i.cd, %i.cc
  %i.ch = and <2 x i1> %i.cf, %i.ce
  %i.ci = and <2 x i1> %i.ca, %i.cb
  %i.cj = or <2 x i1> %i.cg, %i.ch
  %i.ck = insertelement <2 x i1> poison, i1 %stride.check, i64 0
  %invariant.op = or <2 x i1> %i.ci, %i.cj
  %n.vec = and i64 %i.u, 2147483640               ; 5 uses
  %i.cl = trunc nuw nsw i64 %n.vec to i32
  %i.cm = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.cn = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.noexc.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 11 uses
  %i.cp = trunc i64 %indvars.iv to i32
  %.reass57 = mul i32 %factor.op.mul56, %i.cp
  %i.cq = sext i32 %.reass57 to i64
  %i.cr = getelementptr [2 x i8], ptr %i.q, i64 %i.cq ; 5 uses
  %i.cs = shl nsw i64 %indvars.iv, 2              ; 3 uses
  %i.ct = or disjoint i64 %i.cs, 1
  %i.cu = mul nsw i64 %i.ct, %i.u
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cu ; 4 uses
  %i.cw = or disjoint i64 %i.cs, 2
  %i.cx = mul nsw i64 %i.cw, %i.u
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.cx ; 4 uses
  %i.cz = or disjoint i64 %i.cs, 3
  %i.da = mul nsw i64 %i.cz, %i.u
  %i.db = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.da ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc
  %i.dc = mul i32 %i.ac, %indvar
  %i.dd = add i32 %i.ab, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 1
  %scevgep63 = getelementptr i8, ptr %scevgep, i64 %i.df
  %i.dg = insertelement <4 x ptr> poison, ptr %i.cr, i64 0
  %i.dh = shufflevector <4 x ptr> %i.dg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.di = icmp ult <4 x ptr> %i.dh, %15
  %i.dj = insertelement <4 x ptr> poison, ptr %scevgep63, i64 0
  %i.dk = shufflevector <4 x ptr> %i.dj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dl = icmp ult <4 x ptr> %8, %i.dk
  %i.dm = and <4 x i1> %i.di, %i.dl
  %i.dn = bitcast <4 x i1> %i.dm to i4
  %i.do = icmp ne i4 %i.dn, 0
  %i.dp = insertelement <2 x i1> %i.ck, i1 %i.do, i64 1
  %.reass129 = or <2 x i1> %i.dp, %invariant.op
  %i.dq = bitcast <2 x i1> %.reass129 to i2
  %.not = icmp eq i2 %i.dq, 0
  br i1 %.not, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.dr = getelementptr i8, ptr %i.db, i64 %i.cm
  %i.ds = getelementptr i8, ptr %i.cy, i64 %i.cm
  %i.dt = getelementptr i8, ptr %i.cv, i64 %i.cm
  %i.du = getelementptr i8, ptr %i.cr, i64 %i.cm
  %i.dv = getelementptr i8, ptr %i.co, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = shl i64 %index, 1                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.db, i64 %i.dw
  %next.gep107 = getelementptr i8, ptr %i.cy, i64 %i.dw
  %next.gep108 = getelementptr i8, ptr %i.cv, i64 %i.dw
  %next.gep109 = getelementptr i8, ptr %i.cr, i64 %i.dw
  %i.dx = shl i64 %index, 3                       ; 8 uses
  %next.gep110 = getelementptr i8, ptr %i.co, i64 %i.dx ; 4 uses
  %i.dy = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep111 = getelementptr i8, ptr %i.dy, i64 8
  %i.dz = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep112 = getelementptr i8, ptr %i.dz, i64 16
  %i.ea = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep113 = getelementptr i8, ptr %i.ea, i64 24
  %i.eb = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep114 = getelementptr i8, ptr %i.eb, i64 32
  %i.ec = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep115 = getelementptr i8, ptr %i.ec, i64 40
  %i.ed = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep116 = getelementptr i8, ptr %i.ed, i64 48
  %i.ee = getelementptr i8, ptr %i.co, i64 %i.dx  ; 4 uses
  %next.gep117 = getelementptr i8, ptr %i.ee, i64 56
  %i.ef = load i16, ptr %next.gep110, align 2, !tbaa !48, !alias.scope !112
  %i.eg = load i16, ptr %next.gep111, align 2, !tbaa !48, !alias.scope !112
  %i.eh = load i16, ptr %next.gep112, align 2, !tbaa !48, !alias.scope !112
  %i.ei = load i16, ptr %next.gep113, align 2, !tbaa !48, !alias.scope !112
  %i.ej = load i16, ptr %next.gep114, align 2, !tbaa !48, !alias.scope !112
  %i.ek = load i16, ptr %next.gep115, align 2, !tbaa !48, !alias.scope !112
  %i.el = load i16, ptr %next.gep116, align 2, !tbaa !48, !alias.scope !112
  %i.em = load i16, ptr %next.gep117, align 2, !tbaa !48, !alias.scope !112
  %i.en = insertelement <8 x i16> poison, i16 %i.ef, i64 0
  %i.eo = insertelement <8 x i16> %i.en, i16 %i.eg, i64 1
  %i.ep = insertelement <8 x i16> %i.eo, i16 %i.eh, i64 2
  %i.eq = insertelement <8 x i16> %i.ep, i16 %i.ei, i64 3
  %i.er = insertelement <8 x i16> %i.eq, i16 %i.ej, i64 4
  %i.es = insertelement <8 x i16> %i.er, i16 %i.ek, i64 5
  %i.et = insertelement <8 x i16> %i.es, i16 %i.el, i64 6
  %i.eu = insertelement <8 x i16> %i.et, i16 %i.em, i64 7
  store <8 x i16> %i.eu, ptr %next.gep109, align 2, !tbaa !48, !alias.scope !113, !noalias !114
  %i.ev = getelementptr inbounds nuw i8, ptr %next.gep110, i64 2
  %i.ew = getelementptr i8, ptr %i.dy, i64 10
  %i.ex = getelementptr i8, ptr %i.dz, i64 18
  %i.ey = getelementptr i8, ptr %i.ea, i64 26
  %i.ez = getelementptr i8, ptr %i.eb, i64 34
  %i.fa = getelementptr i8, ptr %i.ec, i64 42
  %i.fb = getelementptr i8, ptr %i.ed, i64 50
  %i.fc = getelementptr i8, ptr %i.ee, i64 58
  %i.fd = load i16, ptr %i.ev, align 2, !tbaa !48, !alias.scope !112
  %i.fe = load i16, ptr %i.ew, align 2, !tbaa !48, !alias.scope !112
  %i.ff = load i16, ptr %i.ex, align 2, !tbaa !48, !alias.scope !112
  %i.fg = load i16, ptr %i.ey, align 2, !tbaa !48, !alias.scope !112
  %i.fh = load i16, ptr %i.ez, align 2, !tbaa !48, !alias.scope !112
  %i.fi = load i16, ptr %i.fa, align 2, !tbaa !48, !alias.scope !112
  %i.fj = load i16, ptr %i.fb, align 2, !tbaa !48, !alias.scope !112
  %i.fk = load i16, ptr %i.fc, align 2, !tbaa !48, !alias.scope !112
  %i.fl = insertelement <8 x i16> poison, i16 %i.fd, i64 0
  %i.fm = insertelement <8 x i16> %i.fl, i16 %i.fe, i64 1
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 2
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 3
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 4
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 5
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 6
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 7
  store <8 x i16> %i.fs, ptr %next.gep108, align 2, !tbaa !48, !alias.scope !115, !noalias !116
  %i.ft = getelementptr inbounds nuw i8, ptr %next.gep110, i64 4
  %i.fu = getelementptr i8, ptr %i.dy, i64 12
  %i.fv = getelementptr i8, ptr %i.dz, i64 20
  %i.fw = getelementptr i8, ptr %i.ea, i64 28
  %i.fx = getelementptr i8, ptr %i.eb, i64 36
  %i.fy = getelementptr i8, ptr %i.ec, i64 44
  %i.fz = getelementptr i8, ptr %i.ed, i64 52
  %i.ga = getelementptr i8, ptr %i.ee, i64 60
  %i.gb = load i16, ptr %i.ft, align 2, !tbaa !48, !alias.scope !112
  %i.gc = load i16, ptr %i.fu, align 2, !tbaa !48, !alias.scope !112
  %i.gd = load i16, ptr %i.fv, align 2, !tbaa !48, !alias.scope !112
  %i.ge = load i16, ptr %i.fw, align 2, !tbaa !48, !alias.scope !112
  %i.gf = load i16, ptr %i.fx, align 2, !tbaa !48, !alias.scope !112
  %i.gg = load i16, ptr %i.fy, align 2, !tbaa !48, !alias.scope !112
  %i.gh = load i16, ptr %i.fz, align 2, !tbaa !48, !alias.scope !112
  %i.gi = load i16, ptr %i.ga, align 2, !tbaa !48, !alias.scope !112
  %i.gj = insertelement <8 x i16> poison, i16 %i.gb, i64 0
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 1
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 2
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 3
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 4
  %i.go = insertelement <8 x i16> %i.gn, i16 %i.gg, i64 5
  %i.gp = insertelement <8 x i16> %i.go, i16 %i.gh, i64 6
  %i.gq = insertelement <8 x i16> %i.gp, i16 %i.gi, i64 7
  store <8 x i16> %i.gq, ptr %next.gep107, align 2, !tbaa !48, !alias.scope !117, !noalias !118
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep110, i64 6
  %i.gs = getelementptr i8, ptr %i.dy, i64 14
  %i.gt = getelementptr i8, ptr %i.dz, i64 22
  %i.gu = getelementptr i8, ptr %i.ea, i64 30
  %i.gv = getelementptr i8, ptr %i.eb, i64 38
  %i.gw = getelementptr i8, ptr %i.ec, i64 46
  %i.gx = getelementptr i8, ptr %i.ed, i64 54
  %i.gy = getelementptr i8, ptr %i.ee, i64 62
  %i.gz = load i16, ptr %i.gr, align 2, !tbaa !48, !alias.scope !112
  %i.ha = load i16, ptr %i.gs, align 2, !tbaa !48, !alias.scope !112
  %i.hb = load i16, ptr %i.gt, align 2, !tbaa !48, !alias.scope !112
  %i.hc = load i16, ptr %i.gu, align 2, !tbaa !48, !alias.scope !112
  %i.hd = load i16, ptr %i.gv, align 2, !tbaa !48, !alias.scope !112
  %i.he = load i16, ptr %i.gw, align 2, !tbaa !48, !alias.scope !112
  %i.hf = load i16, ptr %i.gx, align 2, !tbaa !48, !alias.scope !112
  %i.hg = load i16, ptr %i.gy, align 2, !tbaa !48, !alias.scope !112
  %i.hh = insertelement <8 x i16> poison, i16 %i.gz, i64 0
  %i.hi = insertelement <8 x i16> %i.hh, i16 %i.ha, i64 1
  %i.hj = insertelement <8 x i16> %i.hi, i16 %i.hb, i64 2
  %i.hk = insertelement <8 x i16> %i.hj, i16 %i.hc, i64 3
  %i.hl = insertelement <8 x i16> %i.hk, i16 %i.hd, i64 4
  %i.hm = insertelement <8 x i16> %i.hl, i16 %i.he, i64 5
  %i.hn = insertelement <8 x i16> %i.hm, i16 %i.hf, i64 6
  %i.ho = insertelement <8 x i16> %i.hn, i16 %i.hg, i64 7
  store <8 x i16> %i.ho, ptr %next.gep, align 2, !tbaa !48, !alias.scope !119, !noalias !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.noexc, %middle.block
  %.052.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.noexc ], [ %i.cl, %middle.block ] ; 4 uses
  %.03451.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.noexc ], [ %i.dr, %middle.block ] ; 3 uses
  %.03550.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.noexc ], [ %i.ds, %middle.block ] ; 3 uses
  %.03649.ph = phi ptr [ %i.cv, %vector.memcheck ], [ %i.cv, %.noexc ], [ %i.dt, %middle.block ] ; 3 uses
  %.03748.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.noexc ], [ %i.du, %middle.block ] ; 3 uses
  %.03847.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.noexc ], [ %i.dv, %middle.block ] ; 6 uses
  %i.hq = sub i32 %i.r, %.052.ph
  %.neg = add i32 %.052.ph, 1
  %xtraiter = and i32 %i.hq, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hr = load i16, ptr %.03847.ph, align 2, !tbaa !48
  %i.hs = getelementptr inbounds nuw i8, ptr %.03748.ph, i64 2
  store i16 %i.hr, ptr %.03748.ph, align 2, !tbaa !48
  %i.ht = getelementptr inbounds nuw i8, ptr %.03847.ph, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !48
  %i.hv = getelementptr inbounds nuw i8, ptr %.03649.ph, i64 2
  store i16 %i.hu, ptr %.03649.ph, align 2, !tbaa !48
  %i.hw = getelementptr inbounds nuw i8, ptr %.03847.ph, i64 4
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !48
  %i.hy = getelementptr inbounds nuw i8, ptr %.03550.ph, i64 2
  store i16 %i.hx, ptr %.03550.ph, align 2, !tbaa !48
  %i.hz = getelementptr inbounds nuw i8, ptr %.03847.ph, i64 6
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !48
  %i.ib = getelementptr inbounds nuw i8, ptr %.03451.ph, i64 2
  store i16 %i.ia, ptr %.03451.ph, align 2, !tbaa !48
  %i.ic = getelementptr inbounds nuw i8, ptr %.03847.ph, i64 8
  %i.id = add nuw nsw i32 %.052.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.052.unr = phi i32 [ %.052.ph, %scalar.ph.preheader ], [ %i.id, %scalar.ph.prol ]
  %.03451.unr = phi ptr [ %.03451.ph, %scalar.ph.preheader ], [ %i.ib, %scalar.ph.prol ]
  %.03550.unr = phi ptr [ %.03550.ph, %scalar.ph.preheader ], [ %i.hy, %scalar.ph.prol ]
  %.03649.unr = phi ptr [ %.03649.ph, %scalar.ph.preheader ], [ %i.hv, %scalar.ph.prol ]
  %.03748.unr = phi ptr [ %.03748.ph, %scalar.ph.preheader ], [ %i.hs, %scalar.ph.prol ]
  %.03847.unr = phi ptr [ %.03847.ph, %scalar.ph.preheader ], [ %i.ic, %scalar.ph.prol ]
  %i.ie = icmp eq i32 %i.r, %.neg
  br i1 %i.ie, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond59.not = icmp eq i32 %i.v, %lftr.wideiv
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond59.not, label %._crit_edge55.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.052 = phi i32 [ %i.jd, %scalar.ph ], [ %.052.unr, %scalar.ph.prol.loopexit ]
  %.03451 = phi ptr [ %i.jb, %scalar.ph ], [ %.03451.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03550 = phi ptr [ %i.iy, %scalar.ph ], [ %.03550.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03649 = phi ptr [ %i.iv, %scalar.ph ], [ %.03649.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03748 = phi ptr [ %i.is, %scalar.ph ], [ %.03748.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.03847 = phi ptr [ %i.jc, %scalar.ph ], [ %.03847.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.if = load i16, ptr %.03847, align 2, !tbaa !48
  %i.ig = getelementptr inbounds nuw i8, ptr %.03748, i64 2
  store i16 %i.if, ptr %.03748, align 2, !tbaa !48
  %i.ih = getelementptr inbounds nuw i8, ptr %.03847, i64 2
end_hunk_0
