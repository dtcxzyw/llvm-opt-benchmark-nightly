Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86_fma?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn15Flatten_x86_fma19forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8:bb.a
  %n.vec = and i64 %i.aq, 8589934528              ; 5 uses
  %i.at = trunc i64 %n.vec to i32
  %i.au = add i32 %.1.lcssa, %i.at
  %i.av = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %i.aw = getelementptr i8, ptr %.137.lcssa, i64 %i.av
  %i.ax = getelementptr i8, ptr %.140.lcssa, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.137.lcssa, i64 %i.ay ; 4 uses
  %next.gep103 = getelementptr i8, ptr %.140.lcssa, i64 %i.ay ; 4 uses
  %i.az = getelementptr i8, ptr %next.gep103, i64 32
  %i.ba = getelementptr i8, ptr %next.gep103, i64 64
  %i.bb = getelementptr i8, ptr %next.gep103, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep103, align 2, !tbaa !48
  %wide.load104 = load <16 x i16>, ptr %i.az, align 2, !tbaa !48
  %wide.load105 = load <16 x i16>, ptr %i.ba, align 2, !tbaa !48
  %wide.load106 = load <16 x i16>, ptr %i.bb, align 2, !tbaa !48
  %i.bc = getelementptr i8, ptr %next.gep, i64 32
  %i.bd = getelementptr i8, ptr %next.gep, i64 64
  %i.be = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !48
  store <16 x i16> %wide.load104, ptr %i.bc, align 2, !tbaa !48
  store <16 x i16> %wide.load105, ptr %i.bd, align 2, !tbaa !48
  store <16 x i16> %wide.load106, ptr %i.be, align 2, !tbaa !48
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !281

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.aq, 8589934584           ; 4 uses
  %i.bg = trunc i64 %n.vec109 to i32
  %i.bh = add i32 %.1.lcssa, %i.bg
  %i.bi = shl nuw nsw i64 %n.vec109, 1            ; 2 uses
  %i.bj = getelementptr i8, ptr %.137.lcssa, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.140.lcssa, i64 %i.bi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %i.bl = shl i64 %index110, 1                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %.137.lcssa, i64 %i.bl
  %next.gep112 = getelementptr i8, ptr %.140.lcssa, i64 %i.bl
  %wide.load113 = load <8 x i16>, ptr %next.gep112, align 2, !tbaa !48
  store <8 x i16> %wide.load113, ptr %next.gep111, align 2, !tbaa !48
  %index.next114 = add nuw i64 %index110, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !276

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n115 = icmp eq i64 %i.aq, %n.vec109
  br i1 %cmp.n115, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.265.ph = phi i32 [ %.1.lcssa, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 4 uses
  %.23864.ph = phi ptr [ %.137.lcssa, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 2 uses
  %.24163.ph = phi ptr [ %.140.lcssa, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ] ; 2 uses
  %i.bn = sub i32 %i.al, %.265.ph
  %xtraiter = and i32 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader, %.lr.ph66.prol
  %.265.prol = phi i32 [ %i.br, %.lr.ph66.prol ], [ %.265.ph, %.lr.ph66.preheader ]
  %.23864.prol = phi ptr [ %i.bq, %.lr.ph66.prol ], [ %.23864.ph, %.lr.ph66.preheader ] ; 2 uses
  %.24163.prol = phi ptr [ %i.bo, %.lr.ph66.prol ], [ %.24163.ph, %.lr.ph66.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph66.prol ], [ 0, %.lr.ph66.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.24163.prol, i64 2 ; 2 uses
  %i.bp = load i16, ptr %.24163.prol, align 2, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %.23864.prol, i64 2 ; 2 uses
  store i16 %i.bp, ptr %.23864.prol, align 2, !tbaa !48
  %i.br = add nuw nsw i32 %.265.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !277

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader
  %.265.unr = phi i32 [ %.265.ph, %.lr.ph66.preheader ], [ %i.br, %.lr.ph66.prol ]
  %.23864.unr = phi ptr [ %.23864.ph, %.lr.ph66.preheader ], [ %i.bq, %.lr.ph66.prol ]
  %.24163.unr = phi ptr [ %.24163.ph, %.lr.ph66.preheader ], [ %i.bo, %.lr.ph66.prol ]
  %i.bs = sub i32 %.265.ph, %i.al
  %i.bt = icmp ugt i32 %i.bs, -8
  br i1 %i.bt, label %._crit_edge, label %.lr.ph66

.lr.ph58:                                         ; preds = %.preheader49, %.lr.ph58
  %.157 = phi i32 [ %i.bx, %.lr.ph58 ], [ %.035.lcssa, %.preheader49 ]
  %.13756 = phi ptr [ %i.bw, %.lr.ph58 ], [ %.036.lcssa, %.preheader49 ] ; 2 uses
  %.14055 = phi ptr [ %i.bv, %.lr.ph58 ], [ %.039.lcssa, %.preheader49 ] ; 2 uses
  %i.bu = load <2 x i64>, ptr %.14055, align 1, !tbaa !42
  store <2 x i64> %i.bu, ptr %.13756, align 1, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %.14055, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.13756, i64 16 ; 2 uses
  %i.bx = add nuw nsw i32 %.157, 8                ; 3 uses
  %i.by = or disjoint i32 %i.bx, 7
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph58, label %.preheader, !llvm.loop !278

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.265 = phi i32 [ %i.cz, %.lr.ph66 ], [ %.265.unr, %.lr.ph66.prol.loopexit ]
  %.23864 = phi ptr [ %i.cy, %.lr.ph66 ], [ %.23864.unr, %.lr.ph66.prol.loopexit ] ; 9 uses
  %.24163 = phi ptr [ %i.cw, %.lr.ph66 ], [ %.24163.unr, %.lr.ph66.prol.loopexit ] ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.24163, i64 2
  %i.cc = load i16, ptr %.24163, align 2, !tbaa !48
  %i.cd = getelementptr inbounds nuw i8, ptr %.23864, i64 2
  store i16 %i.cc, ptr %.23864, align 2, !tbaa !48
  %i.ce = getelementptr inbounds nuw i8, ptr %.24163, i64 4
  %i.cf = load i16, ptr %i.cb, align 2, !tbaa !48
  %i.cg = getelementptr inbounds nuw i8, ptr %.23864, i64 4
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !48
  %i.ch = getelementptr inbounds nuw i8, ptr %.24163, i64 6
  %i.ci = load i16, ptr %i.ce, align 2, !tbaa !48
  %i.cj = getelementptr inbounds nuw i8, ptr %.23864, i64 6
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %.24163, i64 8
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !48
  %i.cm = getelementptr inbounds nuw i8, ptr %.23864, i64 8
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !48
  %i.cn = getelementptr inbounds nuw i8, ptr %.24163, i64 10
  %i.co = load i16, ptr %i.ck, align 2, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %.23864, i64 10
  store i16 %i.co, ptr %i.cm, align 2, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %.24163, i64 12
  %i.cr = load i16, ptr %i.cn, align 2, !tbaa !48
  %i.cs = getelementptr inbounds nuw i8, ptr %.23864, i64 12
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !48
  %i.ct = getelementptr inbounds nuw i8, ptr %.24163, i64 14
  %i.cu = load i16, ptr %i.cq, align 2, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %.23864, i64 14
  store i16 %i.cu, ptr %i.cs, align 2, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %.24163, i64 16
  %i.cx = load i16, ptr %i.ct, align 2, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %.23864, i64 16
  store i16 %i.cx, ptr %i.cv, align 2, !tbaa !48
  %i.cz = add nuw nsw i32 %.265, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cz, %i.al
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph66, !llvm.loop !279

._crit_edge:                                      ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond78.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond78.not, label %._crit_edge69, label %.noexc

._crit_edge69:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge69, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = load i32, ptr %5, align 4, !tbaa !25       ; 2 uses
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph73.split.preheader, label %._crit_edge74

.lr.ph73.split.preheader:                         ; preds = %.lr.ph73
  %8 = sext i32 %i.k to i64
  br label %.lr.ph73.split

.lr.ph73.split:                                   ; preds = %.lr.ph73.split.preheader, %._crit_edge
  %i.n = phi i32 [ %i.j, %.lr.ph73.split.preheader ], [ %i.cb, %._crit_edge ]
  %i.o = phi i32 [ %6, %.lr.ph73.split.preheader ], [ %i.cc, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ %8, %.lr.ph73.split.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph73.split
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 8 uses
  %i.r = shl nsw i64 %indvars.iv, 3               ; 7 uses
  %i.s = or disjoint i64 %i.r, 7
  %i.t = zext nneg i32 %i.o to i64                ; 7 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = or disjoint i64 %i.r, 6
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  %i.z = or disjoint i64 %i.r, 5
  %i.aa = mul nsw i64 %i.z, %i.t
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  %i.ac = or disjoint i64 %i.r, 4
  %i.ad = mul nsw i64 %i.ac, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = or disjoint i64 %i.r, 3
  %i.ag = mul nsw i64 %i.af, %i.t
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %i.ai = or disjoint i64 %i.r, 2
  %i.aj = mul nsw i64 %i.ai, %i.t
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 %i.aj
  %i.al = or disjoint i64 %i.r, 1
  %i.am = mul nsw i64 %i.al, %i.t
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.am
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %i.ap = shl i32 %i.ao, 3
  %i.aq = mul i32 %i.ap, %i.o
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar
  %i.at = load ptr, ptr %3, align 8, !tbaa !20
  %i.au = load i32, ptr %i.l, align 4, !tbaa !27
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i64 %indvars.iv, %i.av
  %i.ax = load i64, ptr %i.m, align 8, !tbaa !16
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069 = phi i32 [ %i.by, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05068 = phi ptr [ %i.bw, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.05167 = phi ptr [ %i.bt, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.05266 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.05365 = phi ptr [ %i.bn, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.05464 = phi ptr [ %i.bk, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.05563 = phi ptr [ %i.bh, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.05662 = phi ptr [ %i.be, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.05761 = phi ptr [ %i.bb, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.05860 = phi ptr [ %i.bx, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 9 uses
  %i.ba = load i8, ptr %.05860, align 1, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %.05761, i64 1
  store i8 %i.ba, ptr %.05761, align 1, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %.05860, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %.05662, i64 1
  store i8 %i.bd, ptr %.05662, align 1, !tbaa !42
  %i.bf = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.05563, i64 1
  store i8 %i.bg, ptr %.05563, align 1, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %.05860, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %.05464, i64 1
  store i8 %i.bj, ptr %.05464, align 1, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %.05365, i64 1
  store i8 %i.bm, ptr %.05365, align 1, !tbaa !42
  %i.bo = getelementptr inbounds nuw i8, ptr %.05860, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %.05266, i64 1
  store i8 %i.bp, ptr %.05266, align 1, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %.05860, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %.05167, i64 1
  store i8 %i.bs, ptr %.05167, align 1, !tbaa !42
  %i.bu = getelementptr inbounds nuw i8, ptr %.05860, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %.05068, i64 1
  store i8 %i.bv, ptr %.05068, align 1, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %.05860, i64 8
  %i.by = add nuw nsw i32 %.069, 1                ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !282

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph73.split
  %i.cb = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.lr.ph73.split ] ; 2 uses
  %i.cc = phi i32 [ %i.bz, %._crit_edge.loopexit ], [ %i.o, %.lr.ph73.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = sext i32 %i.cb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not.not, label %.lr.ph73.split, label %._crit_edge74, !llvm.loop !283

._crit_edge74:                                    ; preds = %._crit_edge, %.lr.ph73, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge74, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not77 = icmp sgt i32 %i.k, %i.j
  br i1 %.not77, label %._crit_edge79, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %6 = load i32, ptr %5, align 4, !tbaa !25       ; 2 uses
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.noexc.preheader, label %._crit_edge79

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %8 = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.n = phi i32 [ %i.j, %.noexc.preheader ], [ %i.ca, %._crit_edge ]
  %i.o = phi i32 [ %6, %.noexc.preheader ], [ %i.cb, %._crit_edge ] ; 4 uses
  %indvars.iv = phi i64 [ %8, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 8 uses
  %i.r = shl nsw i64 %indvars.iv, 3               ; 7 uses
  %i.s = or disjoint i64 %i.r, 7
  %i.t = zext nneg i32 %i.o to i64                ; 7 uses
  %i.u = mul nsw i64 %i.s, %i.t
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  %i.w = or disjoint i64 %i.r, 6
  %i.x = mul nsw i64 %i.w, %i.t
  %i.y = getelementptr inbounds i8, ptr %i.q, i64 %i.x
  %i.z = or disjoint i64 %i.r, 5
  %i.aa = mul nsw i64 %i.z, %i.t
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.aa
  %i.ac = or disjoint i64 %i.r, 4
  %i.ad = mul nsw i64 %i.ac, %i.t
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = or disjoint i64 %i.r, 3
  %i.ag = mul nsw i64 %i.af, %i.t
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 %i.ag
  %i.ai = or disjoint i64 %i.r, 2
  %i.aj = mul nsw i64 %i.ai, %i.t
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 %i.aj
  %i.al = or disjoint i64 %i.r, 1
  %i.am = mul nsw i64 %i.al, %i.t
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.am
  %i.ao = trunc nsw i64 %indvars.iv to i32
  %i.ap = shl i32 %i.ao, 3
  %i.aq = mul i32 %i.ap, %i.o
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.q, i64 %i.ar
  %i.at = load ptr, ptr %3, align 8, !tbaa !20, !noalias !288
  %i.au = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !288
  %i.av = mul i64 %i.au, %indvars.iv
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !288
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ax
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.076 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.05075 = phi ptr [ %i.bv, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.05174 = phi ptr [ %i.bs, %.lr.ph ], [ %i.y, %.lr.ph.preheader ] ; 2 uses
  %.05273 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %.05372 = phi ptr [ %i.bm, %.lr.ph ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.05471 = phi ptr [ %i.bj, %.lr.ph ], [ %i.ah, %.lr.ph.preheader ] ; 2 uses
  %.05570 = phi ptr [ %i.bg, %.lr.ph ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.05669 = phi ptr [ %i.bd, %.lr.ph ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %.05768 = phi ptr [ %i.ba, %.lr.ph ], [ %i.as, %.lr.ph.preheader ] ; 2 uses
  %.05867 = phi ptr [ %i.bw, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 9 uses
  %i.az = load i8, ptr %.05867, align 1, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %.05768, i64 1
  store i8 %i.az, ptr %.05768, align 1, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %.05867, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.05669, i64 1
  store i8 %i.bc, ptr %.05669, align 1, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !42
  %i.bg = getelementptr inbounds nuw i8, ptr %.05570, i64 1
  store i8 %i.bf, ptr %.05570, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.05867, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %.05471, i64 1
  store i8 %i.bi, ptr %.05471, align 1, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %.05867, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %.05372, i64 1
  store i8 %i.bl, ptr %.05372, align 1, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %.05867, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !42
  %i.bp = getelementptr inbounds nuw i8, ptr %.05273, i64 1
  store i8 %i.bo, ptr %.05273, align 1, !tbaa !42
  %i.bq = getelementptr inbounds nuw i8, ptr %.05867, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.bs = getelementptr inbounds nuw i8, ptr %.05174, i64 1
  store i8 %i.br, ptr %.05174, align 1, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %.05867, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %.05075, i64 1
  store i8 %i.bu, ptr %.05075, align 1, !tbaa !42
  %i.bw = getelementptr inbounds nuw i8, ptr %.05867, i64 8
  %i.bx = add nuw nsw i32 %.076, 1                ; 2 uses
  %i.by = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !286

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.ca = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.noexc ] ; 2 uses
  %i.cb = phi i32 [ %i.by, %._crit_edge.loopexit ], [ %i.o, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cc = sext i32 %i.ca to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cc
  br i1 %.not.not, label %.noexc, label %._crit_edge79, !llvm.loop !287

._crit_edge79:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge79, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Flatten_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.noexc.preheader, label %._crit_edge36

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %i.q = phi i32 [ %i.j, %.noexc.preheader ], [ %i.aj, %._crit_edge ]
  %i.r = phi i32 [ %i.n, %.noexc.preheader ], [ %i.ak, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.p, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.t = load ptr, ptr %4, align 8, !tbaa !20
  %i.u = zext nneg i32 %i.r to i64
  %i.v = mul nsw i64 %indvars.iv, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  %i.x = load ptr, ptr %3, align 8, !tbaa !20, !noalias !293
  %i.y = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !293
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !293
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02132 = phi ptr [ %i.af, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02231 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02231, i64 1
  %i.ae = load i8, ptr %.02231, align 1, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %.02132, i64 1
  store i8 %i.ae, ptr %.02132, align 1, !tbaa !42
  %i.ag = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.ah = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !291

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %.noexc ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %._crit_edge.loopexit ], [ %i.r, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.al = sext i32 %i.aj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %.noexc, label %._crit_edge36, !llvm.loop !292

._crit_edge36:                                    ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge36, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!14 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !11, i64 8, !12, i64 16, !7, i64 24, !13, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !12, i64 64}
!15 = !{!14, !7, i64 24}
!16 = !{!14, !12, i64 16}
!17 = !{!14, !7, i64 40}
!18 = !{!14, !11, i64 8}
!19 = !{!14, !13, i64 32}
!20 = !{!14, !10, i64 0}
!21 = !{!"vtable pointer", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !12, i64 64}
!24 = !{!10, !10, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!14, !7, i64 56}
!27 = !{!14, !7, i64 44}
!28 = !{!14, !7, i64 48}
!29 = !{!14, !7, i64 52}
!30 = !{!"bool", !6, i64 0}
!31 = !{!"_ZTSN4ncnn6OptionE", !30, i64 0, !30, i64 1, !30, i64 2, !30, i64 3, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !30, i64 28, !30, i64 29, !30, i64 30, !30, i64 31, !30, i64 32, !30, i64 33, !30, i64 34, !30, i64 35, !30, i64 36, !30, i64 37, !30, i64 38, !30, i64 39, !7, i64 40, !30, i64 44, !30, i64 45, !30, i64 46, !30, i64 47, !6, i64 48, !30, i64 49, !30, i64 50, !30, i64 51, !30, i64 52, !30, i64 53, !30, i64 54, !30, i64 55, !30, i64 56, !30, i64 57, !30, i64 58, !30, i64 59, !30, i64 60, !30, i64 61, !30, i64 62, !30, i64 63}
!32 = !{!31, !30, i64 39}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!31, !13, i64 8}
!36 = !{!31, !7, i64 4}
!37 = !{!"float", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!6, !6, i64 0}
!43 = !{i64 2, i64 -1, i64 -1, i1 true}
!44 = !{!43}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"short", !6, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"branch_weights", i32 8, i32 8}
!50 = !{!"p1 omnipotent char", !10, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !12, i64 8, !6, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorIiSaIiEE", !55, i64 0}
!57 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSN4ncnn5LayerE", !30, i64 8, !30, i64 9, !30, i64 10, !30, i64 11, !30, i64 12, !30, i64 13, !30, i64 14, !30, i64 15, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !30, i64 20, !30, i64 21, !30, i64 22, !30, i64 23, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27, !7, i64 28, !10, i64 32, !7, i64 40, !52, i64 48, !52, i64 80, !56, i64 112, !56, i64 136, !61, i64 160, !61, i64 184}
!63 = !{!62, !30, i64 11}
!64 = !{!62, !30, i64 13}
!65 = !{!62, !30, i64 12}
!66 = distinct !{!66, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !66}
!72 = distinct !{!72, !66}
!73 = distinct !{!73, !66}
!74 = distinct !{!74, !66}
!75 = distinct !{!75, !66}
!76 = distinct !{!76, !39, !40, !41}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39, !40}
!79 = !{!67}
!80 = !{!68}
!81 = !{!75, !74, !73, !72, !71, !70, !69, !67}
!82 = !{!75}
!83 = !{!74, !73, !72, !71, !70, !69, !67}
!84 = !{!74}
!85 = !{!73, !72, !71, !70, !69, !67}
!86 = !{!73}
!87 = !{!72, !71, !70, !69, !67}
!88 = !{!72}
!89 = !{!71, !70, !69, !67}
!90 = !{!71}
!91 = !{!70, !69, !67}
!92 = !{!70}
!93 = !{!69, !67}
!94 = !{!69}
!95 = distinct !{!95, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = distinct !{!99, !95}
!100 = distinct !{!100, !95}
!101 = distinct !{!101, !39, !40, !41}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39, !40}
!104 = distinct !{!104, !45}
!105 = !{!96}
!106 = !{!97}
!107 = !{!100, !99, !98, !96}
!108 = !{!100}
!109 = !{!99, !98, !96}
!110 = !{!99}
!111 = !{!98, !96}
!112 = !{!98}
!113 = distinct !{!113, !"_ZNK4ncnn3Mat7channelEi"}
!114 = distinct !{!114, !113, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!115 = distinct !{!115, !"LVerDomain"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !115}
!119 = distinct !{!119, !115}
!120 = distinct !{!120, !115}
!121 = distinct !{!121, !115}
!122 = distinct !{!122, !115}
!123 = distinct !{!123, !115}
!124 = distinct !{!124, !115}
!125 = distinct !{!125, !39, !40, !41}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39, !40}
!128 = !{!114}
!129 = !{!116}
!130 = !{!117}
!131 = !{!124, !123, !122, !121, !120, !119, !118, !116}
!132 = !{!124}
!133 = !{!123, !122, !121, !120, !119, !118, !116}
!134 = !{!123}
!135 = !{!122, !121, !120, !119, !118, !116}
!136 = !{!122}
!137 = !{!121, !120, !119, !118, !116}
!138 = !{!121}
!139 = !{!120, !119, !118, !116}
!140 = !{!120}
!141 = !{!119, !118, !116}
!142 = !{!119}
!143 = !{!118, !116}
!144 = !{!118}
!145 = distinct !{!145, !"_ZNK4ncnn3Mat7channelEi"}
!146 = distinct !{!146, !145, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !147}
!151 = distinct !{!151, !147}
!152 = distinct !{!152, !147}
!153 = distinct !{!153, !39, !40, !41}
!154 = distinct !{!154, !39}
!155 = distinct !{!155, !39, !40}
!156 = distinct !{!156, !45}
!157 = !{!146}
!158 = !{!148}
!159 = !{!149}
!160 = !{!152, !151, !150, !148}
!161 = !{!152}
!162 = !{!151, !150, !148}
!163 = !{!151}
!164 = !{!150, !148}
!165 = !{!150}
!166 = distinct !{!166, !"_ZNK4ncnn3Mat7channelEi"}
!167 = distinct !{!167, !166, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!168 = distinct !{!168, !39, !40, !41}
!169 = distinct !{!169, !39, !40, !41}
!170 = distinct !{!170, !46}
!171 = distinct !{!171, !39}
!172 = distinct !{!172, !39, !40}
!173 = distinct !{!173, !45}
!174 = !{!167}
!175 = !{!"branch_weights", i32 8, i32 24}
!176 = distinct !{!176, !"LVerDomain"}
!177 = distinct !{!177, !176}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !176}
!180 = distinct !{!180, !176}
!181 = distinct !{!181, !176}
!182 = distinct !{!182, !176}
!183 = distinct !{!183, !176}
!184 = distinct !{!184, !176}
!185 = distinct !{!185, !176}
!186 = distinct !{!186, !39, !40, !41}
!187 = distinct !{!187, !39, !40}
!188 = !{!177}
!189 = !{!178}
!190 = !{!185, !184, !183, !182, !181, !180, !179, !177}
!191 = !{!185}
!192 = !{!184, !183, !182, !181, !180, !179, !177}
!193 = !{!184}
!194 = !{!183, !182, !181, !180, !179, !177}
!195 = !{!183}
!196 = !{!182, !181, !180, !179, !177}
!197 = !{!182}
!198 = !{!181, !180, !179, !177}
!199 = !{!181}
!200 = !{!180, !179, !177}
!201 = !{!180}
!202 = !{!179, !177}
!203 = !{!179}
!204 = distinct !{!204, !"LVerDomain"}
!205 = distinct !{!205, !204}
!206 = distinct !{!206, !204}
!207 = distinct !{!207, !204}
!208 = distinct !{!208, !204}
!209 = distinct !{!209, !204}
!210 = distinct !{!210, !39, !40, !41}
!211 = distinct !{!211, !39, !40, !41}
!212 = distinct !{!212, !39, !40}
!213 = !{!205}
!214 = !{!206}
!215 = !{!209, !208, !207, !205}
!216 = !{!209}
!217 = !{!208, !207, !205}
!218 = !{!208}
!219 = !{!207, !205}
!220 = !{!207}
!221 = distinct !{!221, !"_ZNK4ncnn3Mat7channelEi"}
!222 = distinct !{!222, !221, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!223 = distinct !{!223, !"LVerDomain"}
!224 = distinct !{!224, !223}
!225 = distinct !{!225, !223}
!226 = distinct !{!226, !223}
!227 = distinct !{!227, !223}
!228 = distinct !{!228, !223}
!229 = distinct !{!229, !223}
!230 = distinct !{!230, !223}
!231 = distinct !{!231, !223}
!232 = distinct !{!232, !223}
!233 = distinct !{!233, !39, !40, !41}
!234 = distinct !{!234, !39, !40}
!235 = !{!222}
!236 = !{!224}
!237 = !{!225}
!238 = !{!232, !231, !230, !229, !228, !227, !226, !224}
!239 = !{!232}
!240 = !{!231, !230, !229, !228, !227, !226, !224}
!241 = !{!231}
!242 = !{!230, !229, !228, !227, !226, !224}
!243 = !{!230}
!244 = !{!229, !228, !227, !226, !224}
!245 = !{!229}
!246 = !{!228, !227, !226, !224}
!247 = !{!228}
!248 = !{!227, !226, !224}
!249 = !{!227}
!250 = !{!226, !224}
!251 = !{!226}
!252 = distinct !{!252, !"_ZNK4ncnn3Mat7channelEi"}
!253 = distinct !{!253, !252, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!254 = distinct !{!254, !"LVerDomain"}
!255 = distinct !{!255, !254}
!256 = distinct !{!256, !254}
!257 = distinct !{!257, !254}
!258 = distinct !{!258, !254}
!259 = distinct !{!259, !254}
!260 = distinct !{!260, !39, !40, !41}
!261 = distinct !{!261, !39, !40, !41}
!262 = distinct !{!262, !39, !40}
!263 = !{!253}
!264 = !{!255}
!265 = !{!256}
!266 = !{!259, !258, !257, !255}
!267 = !{!259}
!268 = !{!258, !257, !255}
!269 = !{!258}
!270 = !{!257, !255}
!271 = !{!257}
!272 = distinct !{!272, !"_ZNK4ncnn3Mat7channelEi"}
!273 = distinct !{!273, !272, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!274 = distinct !{!274, !39}
!275 = distinct !{!275, !39, !40, !41}
!276 = distinct !{!276, !39, !40, !41}
!277 = distinct !{!277, !46}
!278 = distinct !{!278, !39}
!279 = distinct !{!279, !39, !40}
!280 = !{!273}
!281 = !{!"branch_weights", i32 8, i32 56}
!282 = distinct !{!282, !39}
!283 = distinct !{!283, !45}
!284 = distinct !{!284, !"_ZNK4ncnn3Mat7channelEi"}
!285 = distinct !{!285, !284, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!286 = distinct !{!286, !39}
!287 = distinct !{!287, !45}
!288 = !{!285}
!289 = distinct !{!289, !"_ZNK4ncnn3Mat7channelEi"}
!290 = distinct !{!290, !289, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!291 = distinct !{!291, !39}
!292 = distinct !{!292, !45}
!293 = !{!290}
end_hunk_0
