Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86_avx512?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn18Flatten_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.12:bb.a
  %n.vec = and i64 %i.aq, 8589934464              ; 5 uses
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
  %i.az = getelementptr i8, ptr %next.gep103, i64 64
  %i.ba = getelementptr i8, ptr %next.gep103, i64 128
  %i.bb = getelementptr i8, ptr %next.gep103, i64 192
  %wide.load = load <32 x i16>, ptr %next.gep103, align 2, !tbaa !49
  %wide.load104 = load <32 x i16>, ptr %i.az, align 2, !tbaa !49
  %wide.load105 = load <32 x i16>, ptr %i.ba, align 2, !tbaa !49
  %wide.load106 = load <32 x i16>, ptr %i.bb, align 2, !tbaa !49
  %i.bc = getelementptr i8, ptr %next.gep, i64 64
  %i.bd = getelementptr i8, ptr %next.gep, i64 128
  %i.be = getelementptr i8, ptr %next.gep, i64 192
  store <32 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !49
  store <32 x i16> %wide.load104, ptr %i.bc, align 2, !tbaa !49
  store <32 x i16> %wide.load105, ptr %i.bd, align 2, !tbaa !49
  store <32 x i16> %wide.load106, ptr %i.be, align 2, !tbaa !49
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph66.preheader, label %vec.epilog.ph, !prof !296

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.aq, 8589934576           ; 4 uses
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
  %wide.load113 = load <16 x i16>, ptr %next.gep112, align 2, !tbaa !49
  store <16 x i16> %wide.load113, ptr %next.gep111, align 2, !tbaa !49
  %index.next114 = add nuw i64 %index110, 16      ; 2 uses
  %i.bm = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !291

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
  %i.bp = load i16, ptr %.24163.prol, align 2, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %.23864.prol, i64 2 ; 2 uses
  store i16 %i.bp, ptr %.23864.prol, align 2, !tbaa !49
  %i.br = add nuw nsw i32 %.265.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol, !llvm.loop !292

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
  %i.bu = load <2 x i64>, ptr %.14055, align 1, !tbaa !37
  store <2 x i64> %i.bu, ptr %.13756, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %.14055, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.13756, i64 16 ; 2 uses
  %i.bx = add nuw nsw i32 %.157, 8                ; 3 uses
  %i.by = or disjoint i32 %i.bx, 7
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph58, label %.preheader, !llvm.loop !293

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.265 = phi i32 [ %i.cz, %.lr.ph66 ], [ %.265.unr, %.lr.ph66.prol.loopexit ]
  %.23864 = phi ptr [ %i.cy, %.lr.ph66 ], [ %.23864.unr, %.lr.ph66.prol.loopexit ] ; 9 uses
  %.24163 = phi ptr [ %i.cw, %.lr.ph66 ], [ %.24163.unr, %.lr.ph66.prol.loopexit ] ; 9 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.24163, i64 2
  %i.cc = load i16, ptr %.24163, align 2, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %.23864, i64 2
  store i16 %i.cc, ptr %.23864, align 2, !tbaa !49
  %i.ce = getelementptr inbounds nuw i8, ptr %.24163, i64 4
  %i.cf = load i16, ptr %i.cb, align 2, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %.23864, i64 4
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %.24163, i64 6
  %i.ci = load i16, ptr %i.ce, align 2, !tbaa !49
  %i.cj = getelementptr inbounds nuw i8, ptr %.23864, i64 6
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !49
  %i.ck = getelementptr inbounds nuw i8, ptr %.24163, i64 8
  %i.cl = load i16, ptr %i.ch, align 2, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %.23864, i64 8
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %.24163, i64 10
  %i.co = load i16, ptr %i.ck, align 2, !tbaa !49
  %i.cp = getelementptr inbounds nuw i8, ptr %.23864, i64 10
  store i16 %i.co, ptr %i.cm, align 2, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %.24163, i64 12
  %i.cr = load i16, ptr %i.cn, align 2, !tbaa !49
  %i.cs = getelementptr inbounds nuw i8, ptr %.23864, i64 12
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %.24163, i64 14
  %i.cu = load i16, ptr %i.cq, align 2, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %.23864, i64 14
  store i16 %i.cu, ptr %i.cs, align 2, !tbaa !49
  %i.cw = getelementptr inbounds nuw i8, ptr %.24163, i64 16
  %i.cx = load i16, ptr %i.ct, align 2, !tbaa !49
  %i.cy = getelementptr inbounds nuw i8, ptr %.23864, i64 16
  store i16 %i.cx, ptr %i.cv, align 2, !tbaa !49
  %i.cz = add nuw nsw i32 %.265, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.cz, %i.al
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph66, !llvm.loop !294

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
define internal void @_ZNK4ncnn18Flatten_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
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
  %i.ba = load i8, ptr %.05860, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.05761, i64 1
  store i8 %i.ba, ptr %.05761, align 1, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.05860, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.05662, i64 1
  store i8 %i.bd, ptr %.05662, align 1, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.05563, i64 1
  store i8 %i.bg, ptr %.05563, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %.05860, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %.05464, i64 1
  store i8 %i.bj, ptr %.05464, align 1, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %.05860, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %.05365, i64 1
  store i8 %i.bm, ptr %.05365, align 1, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %.05860, i64 5
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %.05266, i64 1
  store i8 %i.bp, ptr %.05266, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %.05860, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %.05167, i64 1
  store i8 %i.bs, ptr %.05167, align 1, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %.05860, i64 7
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.05068, i64 1
  store i8 %i.bv, ptr %.05068, align 1, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %.05860, i64 8
  %i.by = add nuw nsw i32 %.069, 1                ; 2 uses
  %i.bz = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !297

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph73.split
  %i.cb = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.lr.ph73.split ] ; 2 uses
  %i.cc = phi i32 [ %i.bz, %._crit_edge.loopexit ], [ %i.o, %.lr.ph73.split ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = sext i32 %i.cb to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cd
  br i1 %.not.not, label %.lr.ph73.split, label %._crit_edge74, !llvm.loop !298

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
define internal void @_ZNK4ncnn18Flatten_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
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
  %i.at = load ptr, ptr %3, align 8, !tbaa !20, !noalias !303
  %i.au = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !303
  %i.av = mul i64 %i.au, %indvars.iv
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !303
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
  %i.az = load i8, ptr %.05867, align 1, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %.05768, i64 1
  store i8 %i.az, ptr %.05768, align 1, !tbaa !37
  %i.bb = getelementptr inbounds nuw i8, ptr %.05867, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %.05669, i64 1
  store i8 %i.bc, ptr %.05669, align 1, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %.05867, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %.05570, i64 1
  store i8 %i.bf, ptr %.05570, align 1, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %.05867, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = getelementptr inbounds nuw i8, ptr %.05471, i64 1
  store i8 %i.bi, ptr %.05471, align 1, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %.05867, i64 4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %.05372, i64 1
  store i8 %i.bl, ptr %.05372, align 1, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %.05867, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %.05273, i64 1
  store i8 %i.bo, ptr %.05273, align 1, !tbaa !37
  %i.bq = getelementptr inbounds nuw i8, ptr %.05867, i64 6
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %.05174, i64 1
  store i8 %i.br, ptr %.05174, align 1, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %.05867, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %.05075, i64 1
  store i8 %i.bu, ptr %.05075, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %.05867, i64 8
  %i.bx = add nuw nsw i32 %.076, 1                ; 2 uses
  %i.by = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !301

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.ca = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.n, %.noexc ] ; 2 uses
  %i.cb = phi i32 [ %i.by, %._crit_edge.loopexit ], [ %i.o, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cc = sext i32 %i.ca to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.cc
  br i1 %.not.not, label %.noexc, label %._crit_edge79, !llvm.loop !302

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
define internal void @_ZNK4ncnn18Flatten_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
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
  %i.x = load ptr, ptr %3, align 8, !tbaa !20, !noalias !308
  %i.y = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !308
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !308
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.033 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02132 = phi ptr [ %i.af, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02231 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ac, %.lr.ph.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02231, i64 1
  %i.ae = load i8, ptr %.02231, align 1, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %.02132, i64 1
  store i8 %i.ae, ptr %.02132, align 1, !tbaa !37
  %i.ag = add nuw nsw i32 %.033, 1                ; 2 uses
  %i.ah = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !306

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.b, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.q, %.noexc ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %._crit_edge.loopexit ], [ %i.r, %.noexc ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.al = sext i32 %i.aj to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %.noexc, label %._crit_edge36, !llvm.loop !307

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
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin nounwind }

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
!37 = !{!6, !6, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"float", !6, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{i64 2, i64 -1, i64 -1, i1 true}
!42 = !{!41}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!"short", !6, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"branch_weights", i32 8, i32 24}
!51 = !{!"p1 omnipotent char", !10, i64 0}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !51, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !12, i64 8, !6, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIiSaIiEE", !56, i64 0}
!58 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !61, i64 0}
!63 = !{!"_ZTSN4ncnn5LayerE", !30, i64 8, !30, i64 9, !30, i64 10, !30, i64 11, !30, i64 12, !30, i64 13, !30, i64 14, !30, i64 15, !30, i64 16, !30, i64 17, !30, i64 18, !30, i64 19, !30, i64 20, !30, i64 21, !30, i64 22, !30, i64 23, !30, i64 24, !30, i64 25, !30, i64 26, !30, i64 27, !7, i64 28, !10, i64 32, !7, i64 40, !53, i64 48, !53, i64 80, !57, i64 112, !57, i64 136, !62, i64 160, !62, i64 184}
!64 = !{!63, !30, i64 11}
!65 = !{!63, !30, i64 13}
!66 = !{!63, !30, i64 12}
!67 = distinct !{!67, !38}
!68 = distinct !{!68, !38}
!69 = distinct !{!69, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = distinct !{!73, !69}
!74 = distinct !{!74, !69}
!75 = distinct !{!75, !69}
!76 = distinct !{!76, !69}
!77 = distinct !{!77, !69}
!78 = distinct !{!78, !69}
!79 = distinct !{!79, !38, !43, !44}
!80 = distinct !{!80, !38}
!81 = distinct !{!81, !38, !43}
!82 = !{!70}
!83 = !{!71}
!84 = !{!78, !77, !76, !75, !74, !73, !72, !70}
!85 = !{!78}
!86 = !{!77, !76, !75, !74, !73, !72, !70}
!87 = !{!77}
!88 = !{!76, !75, !74, !73, !72, !70}
!89 = !{!76}
!90 = !{!75, !74, !73, !72, !70}
!91 = !{!75}
!92 = !{!74, !73, !72, !70}
!93 = !{!74}
!94 = !{!73, !72, !70}
!95 = !{!73}
!96 = !{!72, !70}
!97 = !{!72}
!98 = distinct !{!98, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !98}
!102 = distinct !{!102, !98}
!103 = distinct !{!103, !98}
!104 = distinct !{!104, !38, !43, !44}
!105 = distinct !{!105, !38, !43, !44}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38, !43}
!108 = distinct !{!108, !46}
!109 = !{!99}
!110 = !{!100}
!111 = !{!103, !102, !101, !99}
!112 = !{!103}
!113 = !{!102, !101, !99}
!114 = !{!102}
!115 = !{!101, !99}
!116 = !{!101}
!117 = distinct !{!117, !"_ZNK4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !117, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = !{!118}
!122 = distinct !{!122, !"_ZNK4ncnn3Mat7channelEi"}
!123 = distinct !{!123, !122, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!124 = distinct !{!124, !"LVerDomain"}
!125 = distinct !{!125, !124}
!126 = distinct !{!126, !124}
!127 = distinct !{!127, !124}
!128 = distinct !{!128, !124}
!129 = distinct !{!129, !124}
!130 = distinct !{!130, !124}
!131 = distinct !{!131, !124}
!132 = distinct !{!132, !124}
!133 = distinct !{!133, !124}
!134 = distinct !{!134, !38, !43, !44}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38, !43}
!137 = !{!123}
!138 = !{!125}
!139 = !{!126}
!140 = !{!133, !132, !131, !130, !129, !128, !127, !125}
!141 = !{!133}
!142 = !{!132, !131, !130, !129, !128, !127, !125}
!143 = !{!132}
!144 = !{!131, !130, !129, !128, !127, !125}
!145 = !{!131}
!146 = !{!130, !129, !128, !127, !125}
!147 = !{!130}
!148 = !{!129, !128, !127, !125}
!149 = !{!129}
!150 = !{!128, !127, !125}
!151 = !{!128}
!152 = !{!127, !125}
!153 = !{!127}
!154 = distinct !{!154, !"_ZNK4ncnn3Mat7channelEi"}
!155 = distinct !{!155, !154, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!156 = distinct !{!156, !"LVerDomain"}
!157 = distinct !{!157, !156}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !156}
!160 = distinct !{!160, !156}
!161 = distinct !{!161, !156}
!162 = distinct !{!162, !38, !43, !44}
!163 = distinct !{!163, !38, !43, !44}
!164 = distinct !{!164, !38}
!165 = distinct !{!165, !38, !43}
!166 = distinct !{!166, !46}
!167 = !{!155}
!168 = !{!157}
!169 = !{!158}
!170 = !{!161, !160, !159, !157}
!171 = !{!161}
!172 = !{!160, !159, !157}
!173 = !{!160}
!174 = !{!159, !157}
!175 = !{!159}
!176 = distinct !{!176, !"_ZNK4ncnn3Mat7channelEi"}
!177 = distinct !{!177, !176, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!178 = distinct !{!178, !38, !43, !44}
!179 = distinct !{!179, !38, !43, !44}
!180 = distinct !{!180, !47}
!181 = distinct !{!181, !38}
!182 = distinct !{!182, !38, !43}
!183 = distinct !{!183, !46}
!184 = !{!177}
!185 = !{!"branch_weights", i32 8, i32 56}
!186 = distinct !{!186, !38}
!187 = distinct !{!187, !"LVerDomain"}
!188 = distinct !{!188, !187}
!189 = distinct !{!189, !187}
!190 = distinct !{!190, !187}
!191 = distinct !{!191, !187}
!192 = distinct !{!192, !187}
!193 = distinct !{!193, !187}
!194 = distinct !{!194, !187}
!195 = distinct !{!195, !187}
!196 = distinct !{!196, !187}
!197 = distinct !{!197, !38, !43, !44}
!198 = distinct !{!198, !38, !43}
!199 = !{!188}
!200 = !{!189}
!201 = !{!196, !195, !194, !193, !192, !191, !190, !188}
!202 = !{!196}
!203 = !{!195, !194, !193, !192, !191, !190, !188}
!204 = !{!195}
!205 = !{!194, !193, !192, !191, !190, !188}
!206 = !{!194}
!207 = !{!193, !192, !191, !190, !188}
!208 = !{!193}
!209 = !{!192, !191, !190, !188}
!210 = !{!192}
!211 = !{!191, !190, !188}
!212 = !{!191}
!213 = !{!190, !188}
!214 = !{!190}
!215 = distinct !{!215, !"LVerDomain"}
!216 = distinct !{!216, !215}
!217 = distinct !{!217, !215}
!218 = distinct !{!218, !215}
!219 = distinct !{!219, !215}
!220 = distinct !{!220, !215}
!221 = distinct !{!221, !38, !43, !44}
!222 = distinct !{!222, !38, !43, !44}
!223 = distinct !{!223, !38, !43}
!224 = !{!216}
!225 = !{!217}
!226 = !{!220, !219, !218, !216}
!227 = !{!220}
!228 = !{!219, !218, !216}
!229 = !{!219}
!230 = !{!218, !216}
!231 = !{!218}
!232 = distinct !{!232, !"_ZNK4ncnn3Mat7channelEi"}
!233 = distinct !{!233, !232, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!234 = distinct !{!234, !38}
!235 = !{!233}
!236 = distinct !{!236, !"_ZNK4ncnn3Mat7channelEi"}
!237 = distinct !{!237, !236, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!238 = distinct !{!238, !"LVerDomain"}
!239 = distinct !{!239, !238}
!240 = distinct !{!240, !238}
!241 = distinct !{!241, !238}
!242 = distinct !{!242, !238}
!243 = distinct !{!243, !238}
!244 = distinct !{!244, !238}
!245 = distinct !{!245, !238}
!246 = distinct !{!246, !238}
!247 = distinct !{!247, !238}
!248 = distinct !{!248, !38, !43, !44}
!249 = distinct !{!249, !38, !43}
!250 = !{!237}
!251 = !{!239}
!252 = !{!240}
!253 = !{!247, !246, !245, !244, !243, !242, !241, !239}
!254 = !{!247}
!255 = !{!246, !245, !244, !243, !242, !241, !239}
!256 = !{!246}
!257 = !{!245, !244, !243, !242, !241, !239}
!258 = !{!245}
!259 = !{!244, !243, !242, !241, !239}
!260 = !{!244}
!261 = !{!243, !242, !241, !239}
!262 = !{!243}
!263 = !{!242, !241, !239}
!264 = !{!242}
!265 = !{!241, !239}
!266 = !{!241}
!267 = distinct !{!267, !"_ZNK4ncnn3Mat7channelEi"}
!268 = distinct !{!268, !267, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!269 = distinct !{!269, !"LVerDomain"}
!270 = distinct !{!270, !269}
!271 = distinct !{!271, !269}
!272 = distinct !{!272, !269}
!273 = distinct !{!273, !269}
!274 = distinct !{!274, !269}
!275 = distinct !{!275, !38, !43, !44}
!276 = distinct !{!276, !38, !43, !44}
!277 = distinct !{!277, !38, !43}
!278 = !{!268}
!279 = !{!270}
!280 = !{!271}
!281 = !{!274, !273, !272, !270}
!282 = !{!274}
!283 = !{!273, !272, !270}
!284 = !{!273}
!285 = !{!272, !270}
!286 = !{!272}
!287 = distinct !{!287, !"_ZNK4ncnn3Mat7channelEi"}
!288 = distinct !{!288, !287, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!289 = distinct !{!289, !38}
!290 = distinct !{!290, !38, !43, !44}
!291 = distinct !{!291, !38, !43, !44}
!292 = distinct !{!292, !47}
!293 = distinct !{!293, !38}
!294 = distinct !{!294, !38, !43}
!295 = !{!288}
!296 = !{!"branch_weights", i32 16, i32 112}
!297 = distinct !{!297, !38}
!298 = distinct !{!298, !46}
!299 = distinct !{!299, !"_ZNK4ncnn3Mat7channelEi"}
!300 = distinct !{!300, !299, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!301 = distinct !{!301, !38}
!302 = distinct !{!302, !46}
!303 = !{!300}
!304 = distinct !{!304, !"_ZNK4ncnn3Mat7channelEi"}
!305 = distinct !{!305, !304, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!306 = distinct !{!306, !38}
!307 = distinct !{!307, !46}
!308 = !{!305}
end_hunk_0
