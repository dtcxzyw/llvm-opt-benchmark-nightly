inline.NumInlined: 98
inline.NumDeleted: 4
begin_hunk_0_@hnsw_init_tmp_node:bb.a

.lr.ph.preheader.i47.new:                         ; preds = %.lr.ph.preheader.i47
  %unroll_iter = and i64 %wide.trip.count.i48, 4294967294
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.q, %.lr.ph.preheader.i47.new
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.preheader.i47.new ], [ %indvars.iv.next.i51.1, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i47.new ], [ %niter.next.1, %bb.q ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i50
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !27
  %i.eh = fcmp ogt float %i.eg, 0.000000e+00
  br i1 %i.eh, label %bb.o, label %.lr.ph.i49.1

bb.o:                                             ; preds = %.lr.ph.i49
  %i.ei = and i64 %indvars.iv.i50, 62
  %i.ej = lshr i64 %indvars.iv.i50, 6
  %i.ek = shl nuw nsw i64 1, %i.ei
  %i.el = and i64 %i.ej, 67108863
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.el ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !13
  %i.eo = or i64 %i.en, %i.ek
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !13
  br label %.lr.ph.i49.1

.lr.ph.i49.1:                                     ; preds = %bb.o, %.lr.ph.i49
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next.i51
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !27
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i49.1
  %i.es = and i64 %indvars.iv.next.i51, 63
  %i.et = lshr i64 %indvars.iv.i50, 6
  %i.eu = shl nuw i64 1, %i.es
  %i.ev = and i64 %i.et, 67108863
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !13
  %i.ey = or i64 %i.ex, %i.eu
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i49.1
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %quantize_to_q8.exit.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !83

quantize_to_q8.exit.loopexit.unr-lcssa:           ; preds = %bb.q
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %quantize_to_q8.exit, label %.lr.ph.i49.epil.preheader

.lr.ph.i49.epil.preheader:                        ; preds = %quantize_to_q8.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i47
  %indvars.iv.i50.epil.init = phi i64 [ 0, %.lr.ph.preheader.i47 ], [ %indvars.iv.next.i51.1, %quantize_to_q8.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod85 = trunc i32 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i50.epil.init
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !27
  %i.fb = fcmp ogt float %i.fa, 0.000000e+00
  br i1 %i.fb, label %bb.r, label %quantize_to_q8.exit

bb.r:                                             ; preds = %.lr.ph.i49.epil.preheader
  %i.fc = and i64 %indvars.iv.i50.epil.init, 63
  %i.fd = lshr i64 %indvars.iv.i50.epil.init, 6
  %i.fe = shl nuw i64 1, %i.fc
  %i.ff = and i64 %i.fd, 67108863
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ff ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !13
  %i.fi = or i64 %i.fh, %i.fe
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !13
  br label %quantize_to_q8.exit

quantize_to_q8.exit:                              ; preds = %quantize_to_q8.exit.loopexit.unr-lcssa, %bb.r, %.lr.ph.i49.epil.preheader, %bb.n, %._crit_edge42.i, %._crit_edge.thread.i, %bb.l
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %.not38 = icmp eq ptr %i.fj, %3
  br i1 %.not38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %quantize_to_q8.exit
  %i.fk = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.fk(ptr noundef %i.fj) #34
  br label %bb.t

bb.t:                                             ; preds = %quantize_to_q8.exit, %bb.s
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %hnsw_normalize_vector.exit, %bb.t, %bb.k, %bb.j, %bb.b
  %.1 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.b ], [ 1, %bb.t ], [ 1, %hnsw_normalize_vector.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_free_tmp_node(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.b, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.c(ptr noundef %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_search_with_filter(ptr noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly captures(address_is_null) %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #3 {
bb.a:
  %10 = alloca %struct.hnswNode, align 8          ; 7 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.not71 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3.not68 = or i1 %or.cond.not71, %i.c
  %i.d = icmp eq i32 %2, 0
  %or.cond5 = or i1 %i.d, %or.cond3.not68
  br i1 %or.cond5, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !91
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.f = call i32 @hnsw_init_tmp_node(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %6, ptr noundef nonnull %1)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %hnsw_free_tmp_node.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !92   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.057.lcssa = phi ptr [ %i.h, %bb.d ], [ %.259, %bb.g ]
  %i.l = call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef nonnull %10, ptr noundef %.057.lcssa, i32 noundef %2, i32 noundef 0, i32 noundef %5, ptr noundef %7, ptr noundef %8, i32 noundef %9) ; 4 uses
  %.not72 = icmp eq ptr %i.l, null
  br i1 %.not72, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.05782 = phi ptr [ %.259, %bb.g ], [ %i.h, %bb.d ] ; 3 uses
  %.06081 = phi i32 [ %i.v, %bb.g ], [ %i.j, %bb.d ] ; 3 uses
  %i.m = call ptr @search_layer_with_filter(ptr noundef nonnull %0, ptr noundef nonnull readonly %10, ptr noundef %.05782, i32 noundef 1, i32 noundef %.06081, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 0) ; 4 uses
  %.not74 = icmp eq ptr %i.m, null
  br i1 %.not74, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %.not75 = icmp eq i32 %i.o, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !17  ; 2 uses
  br i1 %.not75, label %pq_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i32 %i.o, -1
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %pq_free.exit

pq_free.exit:                                     ; preds = %bb.f, %bb.e
  %.158 = phi ptr [ %i.s, %bb.f ], [ %.05782, %bb.e ]
  %i.t = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.t(ptr noundef %.pre) #34, !inline_history !144
  %i.u = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.u(ptr noundef nonnull %i.m) #34, !inline_history !144
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %pq_free.exit
  %.259 = phi ptr [ %.158, %pq_free.exit ], [ %.05782, %.lr.ph ] ; 2 uses
  %i.v = add nsw i32 %.06081, -1
  %i.w = icmp sgt i32 %.06081, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !156

bb.h:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %.not.i76 = icmp eq ptr %i.y, %1
  br i1 %.not.i76, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.i:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !19  ; 19 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.aa) ; 6 uses
  %.not86 = icmp eq i32 %., 0
  %.pre94 = load ptr, ptr %i.l, align 8, !tbaa !17 ; 21 uses
  br i1 %.not86, label %pq_free.exit78, label %.lr.ph85

.lr.ph85:                                         ; preds = %bb.i
  %.not73 = icmp eq ptr %4, null
  %wide.trip.count92 = zext i32 %. to i64         ; 17 uses
  br i1 %.not73, label %.lr.ph85.split.us.preheader, label %.lr.ph85.split.preheader

.lr.ph85.split.preheader:                         ; preds = %.lr.ph85
  %min.iters.check = icmp ult i32 %., 50
  br i1 %min.iters.check, label %.lr.ph85.split.preheader137, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph85.split.preheader
  %i.ab = add nsw i64 %wide.trip.count92, -1      ; 2 uses
  %i.ac = add i32 %i.aa, -1
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = icmp ult i32 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ab, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph85.split.preheader137, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ah = shl nuw nsw i64 %wide.trip.count92, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.ah
  %i.ai = add i32 %i.aa, -1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 4                ; 4 uses
  %i.al = add nuw nsw i64 %i.ak, 16
  %i.am = shl nuw nsw i64 %wide.trip.count92, 4   ; 2 uses
  %i.an = sub nsw i64 %i.al, %i.am
  %scevgep108 = getelementptr i8, ptr %.pre94, i64 %i.an
  %i.ao = getelementptr i8, ptr %.pre94, i64 %i.ak
  %scevgep109 = getelementptr i8, ptr %i.ao, i64 8
  %i.ap = shl nuw nsw i64 %wide.trip.count92, 2
  %scevgep110 = getelementptr i8, ptr %4, i64 %i.ap
  %i.aq = add nuw nsw i64 %i.ak, 24
  %i.ar = sub nsw i64 %i.aq, %i.am
  %scevgep111 = getelementptr i8, ptr %.pre94, i64 %i.ar
  %i.as = getelementptr i8, ptr %.pre94, i64 %i.ak
  %scevgep112 = getelementptr i8, ptr %i.as, i64 12
  %bound0 = icmp ult ptr %3, %scevgep109
  %bound1 = icmp ult ptr %scevgep108, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %4, %scevgep112
  %bound1114 = icmp ult ptr %scevgep111, %scevgep110
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict, %found.conflict115
  br i1 %conflict.rdx, label %.lr.ph85.split.preheader137, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count92, 4294967294 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.at = trunc i64 %index to i32
  %.neg = xor i32 %i.at, -1
  %i.au = trunc i64 %index to i32
  %i.av = add i32 %i.au, 2
  %i.aw = add i32 %i.aa, %.neg
  %i.ax = sub i32 %i.aa, %i.av
  %i.ay = zext i32 %i.aw to i64
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.ay ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.az ; 2 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !30, !alias.scope !157
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !30, !alias.scope !157
  %i.be = insertelement <2 x ptr> poison, ptr %i.bc, i64 0
  %i.bf = insertelement <2 x ptr> %i.be, ptr %i.bd, i64 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x ptr> %i.bf, ptr %i.bg, align 8, !tbaa !26, !alias.scope !160, !noalias !157
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bj = load float, ptr %i.bh, align 8, !tbaa !21, !alias.scope !162
  %i.bk = load float, ptr %i.bi, align 8, !tbaa !21, !alias.scope !162
  %i.bl = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.bk, i64 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <2 x float> %i.bm, ptr %i.bn, align 4, !tbaa !27, !alias.scope !164, !noalias !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count92
  br i1 %cmp.n, label %pq_free.exit78, label %.lr.ph85.split.preheader137

.lr.ph85.split.preheader137:                      ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph85.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph85.split.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count92, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.split.prol.loopexit, label %.lr.ph85.split.prol

.lr.ph85.split.prol:                              ; preds = %.lr.ph85.split.preheader137
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.bp = trunc nuw i64 %indvars.iv.next.prol to i32
  %i.bq = sub i32 %i.aa, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  store float %i.bw, ptr %i.bx, align 4, !tbaa !27
  br label %.lr.ph85.split.prol.loopexit

.lr.ph85.split.prol.loopexit:                     ; preds = %.lr.ph85.split.prol, %.lr.ph85.split.preheader137
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph85.split.preheader137 ], [ %indvars.iv.next.prol, %.lr.ph85.split.prol ]
  %i.by = add nsw i64 %wide.trip.count92, -1
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.by
  br i1 %i.bz, label %pq_free.exit78, label %.lr.ph85.split

.lr.ph85.split.us.preheader:                      ; preds = %.lr.ph85
  %min.iters.check125 = icmp ult i32 %., 34
  br i1 %min.iters.check125, label %.lr.ph85.split.us.preheader136, label %vector.scevcheck116

vector.scevcheck116:                              ; preds = %.lr.ph85.split.us.preheader
  %i.ca = add nsw i64 %wide.trip.count92, -1      ; 2 uses
  %i.cb = add i32 %i.aa, -1
  %i.cc = trunc i64 %i.ca to i32
  %i.cd = icmp ult i32 %i.cb, %i.cc
  %i.ce = icmp ugt i64 %i.ca, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph85.split.us.preheader136, label %vector.memcheck117

vector.memcheck117:                               ; preds = %vector.scevcheck116
  %i.cg = shl nuw nsw i64 %wide.trip.count92, 3
  %scevgep118 = getelementptr i8, ptr %3, i64 %i.cg
  %i.ch = add i32 %i.aa, -1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 4                ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 16
  %i.cl = shl nuw nsw i64 %wide.trip.count92, 4
  %i.cm = sub nsw i64 %i.ck, %i.cl
  %scevgep119 = getelementptr i8, ptr %.pre94, i64 %i.cm
  %i.cn = getelementptr i8, ptr %.pre94, i64 %i.cj
  %scevgep120 = getelementptr i8, ptr %i.cn, i64 8
  %bound0121 = icmp ult ptr %3, %scevgep120
  %bound1122 = icmp ult ptr %scevgep119, %scevgep118
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %.lr.ph85.split.us.preheader136, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck117
  %n.vec128 = and i64 %wide.trip.count92, 4294967292 ; 3 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph126
  %index130 = phi i64 [ 0, %vector.ph126 ], [ %index.next131, %vector.body129 ] ; 6 uses
  %i.co = trunc i64 %index130 to i32
  %.neg135 = xor i32 %i.co, -1
  %i.cp = trunc i64 %index130 to i32
  %i.cq = or disjoint i32 %i.cp, 2
  %i.cr = trunc i64 %index130 to i32
  %i.cs = or disjoint i32 %i.cr, 3
  %i.ct = trunc i64 %index130 to i32
  %i.cu = add i32 %i.ct, 4
  %i.cv = add i32 %i.aa, %.neg135
  %i.cw = sub i32 %i.aa, %i.cq
  %i.cx = sub i32 %i.aa, %i.cs
  %i.cy = sub i32 %i.aa, %i.cu
  %i.cz = zext i32 %i.cv to i64
  %i.da = zext i32 %i.cw to i64
  %i.db = zext i32 %i.cx to i64
  %i.dc = zext i32 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.cz
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.da
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.db
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.dc
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !30, !alias.scope !167
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !30, !alias.scope !167
  %i.dj = insertelement <2 x ptr> poison, ptr %i.dh, i64 0
  %i.dk = insertelement <2 x ptr> %i.dj, ptr %i.di, i64 1
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !30, !alias.scope !167
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !30, !alias.scope !167
  %i.dn = insertelement <2 x ptr> poison, ptr %i.dl, i64 0
  %i.do = insertelement <2 x ptr> %i.dn, ptr %i.dm, i64 1
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index130 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x ptr> %i.dk, ptr %i.dp, align 8, !tbaa !26, !alias.scope !170, !noalias !167
  store <2 x ptr> %i.do, ptr %i.dq, align 8, !tbaa !26, !alias.scope !170, !noalias !167
  %index.next131 = add nuw i64 %index130, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next131, %n.vec128
  br i1 %i.dr, label %middle.block132, label %vector.body129, !llvm.loop !172

middle.block132:                                  ; preds = %vector.body129
  %cmp.n133 = icmp eq i64 %n.vec128, %wide.trip.count92
  br i1 %cmp.n133, label %pq_free.exit78, label %.lr.ph85.split.us.preheader136

.lr.ph85.split.us.preheader136:                   ; preds = %vector.memcheck117, %vector.scevcheck116, %.lr.ph85.split.us.preheader, %middle.block132
  %indvars.iv89.ph = phi i64 [ 0, %vector.memcheck117 ], [ 0, %vector.scevcheck116 ], [ 0, %.lr.ph85.split.us.preheader ], [ %n.vec128, %middle.block132 ] ; 3 uses
  %xtraiter139 = and i64 %wide.trip.count92, 3    ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph85.split.us.prol.loopexit, label %.lr.ph85.split.us.prol

.lr.ph85.split.us.prol:                           ; preds = %.lr.ph85.split.us.preheader136, %.lr.ph85.split.us.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %.lr.ph85.split.us.prol ], [ %indvars.iv89.ph, %.lr.ph85.split.us.preheader136 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.split.us.prol ], [ 0, %.lr.ph85.split.us.preheader136 ]
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 3 uses
  %i.ds = trunc nuw i64 %indvars.iv.next90.prol to i32
  %i.dt = sub i32 %i.aa, %i.ds
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89.prol
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !26
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter139
  br i1 %prol.iter.cmp.not, label %.lr.ph85.split.us.prol.loopexit, label %.lr.ph85.split.us.prol, !llvm.loop !173

.lr.ph85.split.us.prol.loopexit:                  ; preds = %.lr.ph85.split.us.prol, %.lr.ph85.split.us.preheader136
  %indvars.iv89.unr = phi i64 [ %indvars.iv89.ph, %.lr.ph85.split.us.preheader136 ], [ %indvars.iv.next90.prol, %.lr.ph85.split.us.prol ]
  %i.dy = sub nsw i64 %indvars.iv89.ph, %wide.trip.count92
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %pq_free.exit78, label %.lr.ph85.split.us

.lr.ph85.split.us:                                ; preds = %.lr.ph85.split.us.prol.loopexit, %.lr.ph85.split.us
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %.lr.ph85.split.us ], [ %indvars.iv89.unr, %.lr.ph85.split.us.prol.loopexit ] ; 5 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv.next90 to i32
  %i.eb = sub i32 %i.aa, %i.ea
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !26
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.eg = trunc nuw i64 %indvars.iv.next90.1 to i32
  %i.eh = sub i32 %i.aa, %i.eg
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !26
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.em = trunc nuw i64 %indvars.iv.next90.2 to i32
  %i.en = sub i32 %i.aa, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90.1
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !26
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 3 uses
  %i.es = trunc nuw i64 %indvars.iv.next90.3 to i32
  %i.et = sub i32 %i.aa, %i.es
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next90.2
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !26
  %exitcond93.not.3 = icmp eq i64 %indvars.iv.next90.3, %wide.trip.count92
  br i1 %exitcond93.not.3, label %pq_free.exit78, label %.lr.ph85.split.us, !llvm.loop !174

pq_free.exit78:                                   ; preds = %.lr.ph85.split.prol.loopexit, %.lr.ph85.split, %.lr.ph85.split.us.prol.loopexit, %.lr.ph85.split.us, %middle.block, %middle.block132, %bb.i
  %i.ey = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ey(ptr noundef %.pre94) #34, !inline_history !144
  %i.ez = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.ez(ptr noundef nonnull %i.l) #34, !inline_history !144
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !15 ; 2 uses
  %.not.i79 = icmp eq ptr %i.fb, %1
  br i1 %.not.i79, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph85.split:                                   ; preds = %.lr.ph85.split.prol.loopexit, %.lr.ph85.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph85.split ], [ %indvars.iv.unr, %.lr.ph85.split.prol.loopexit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fc = trunc nuw i64 %indvars.iv.next to i32
  %i.fd = sub i32 %i.aa, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !21
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.fj, ptr %i.fk, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.fl = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.fm = sub i32 %i.aa, %i.fl
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %.pre94, i64 %i.fn ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !30
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !21
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.fs, ptr %i.ft, align 4, !tbaa !27
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count92
  br i1 %exitcond.not.1, label %pq_free.exit78, label %.lr.ph85.split, !llvm.loop !175

hnsw_free_tmp_node.exit.sink.split:               ; preds = %pq_free.exit78, %bb.h
  %.sink = phi ptr [ %i.y, %bb.h ], [ %i.fb, %pq_free.exit78 ]
  %.1.ph = phi i32 [ -1, %bb.h ], [ %., %pq_free.exit78 ]
  %i.fu = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.fu(ptr noundef %.sink) #34
  br label %hnsw_free_tmp_node.exit

hnsw_free_tmp_node.exit:                          ; preds = %hnsw_free_tmp_node.exit.sink.split, %pq_free.exit78, %bb.h, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ %., %pq_free.exit78 ], [ -1, %bb.h ], [ %.1.ph, %hnsw_free_tmp_node.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %hnsw_free_tmp_node.exit
  %.2 = phi i32 [ -1, %bb.a ], [ %.1, %hnsw_free_tmp_node.exit ], [ 0, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hnsw_search(ptr noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @hnsw_search_with_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null, i32 noundef 0)
  ret i32 %i.a
}
end_hunk_0
begin_hunk_1_@hnsw_ground_truth_with_filter:bb.a
  store ptr %i.h, ptr %i.d, align 8, !tbaa !17
  %.not10.i = icmp eq ptr %i.h, null
  br i1 %.not10.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.i(ptr noundef nonnull %i.d) #34, !inline_history !143
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not.i52 = icmp eq ptr %i.k, %1
  br i1 %.not.i52, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store i32 0, ptr %i.l, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  store i32 %2, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.04163 = load ptr, ptr %i.n, align 8, !tbaa !26 ; 2 uses
  %.not4864 = icmp eq ptr %.04163, null
  br i1 %.not4864, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not50 = icmp eq ptr %7, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.04165 = phi ptr [ %.04163, %.lr.ph ], [ %.041, %.backedge ] ; 8 uses
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.04165, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call i32 %7(ptr noundef %i.t, ptr noundef %8) #34
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.backedge, label %bb.i

.backedge:                                        ; preds = %.critedge2.i, %bb.o, %.critedge.i, %bb.h
  %.041.in.be = getelementptr inbounds nuw i8, ptr %.04165, i64 304
  %.041 = load ptr, ptr %.041.in.be, align 8, !tbaa !26 ; 2 uses
  %.not48 = icmp eq ptr %.041, null
  br i1 %.not48, label %._crit_edge.loopexit, label %bb.g, !llvm.loop !274

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = load i32, ptr %i.o, align 8, !tbaa !71
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = load i32, ptr %i.q, align 8, !tbaa !74
  %i.aa = tail call float @vectors_distance_float(ptr noundef %i.w, ptr noundef %i.y, i32 noundef %i.z)
  br label %hnsw_distance.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !74
  %i.af = load float, ptr %i.r, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.04165, i64 24
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = tail call float @vectors_distance_q8(ptr noundef %i.ab, ptr noundef %i.ad, i32 noundef %i.ae, float noundef %i.af, float noundef %i.ah)
  br label %hnsw_distance.exit

bb.l:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %.04165, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = load i32, ptr %i.q, align 8, !tbaa !74
  %i.an = tail call float @vectors_distance_bin(ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.am)
  br label %hnsw_distance.exit

bb.m:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_distance) #35
  unreachable

hnsw_distance.exit:                               ; preds = %bb.j, %bb.k, %bb.l
  %.0.i53 = phi float [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.an, %bb.l ] ; 5 uses
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !19  ; 3 uses
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !20  ; 2 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  br i1 %i.aq, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %hnsw_distance.exit
  %.not45.i = icmp eq i32 %i.ao, 0
  br i1 %.not45.i, label %.critedge.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %i.ar = zext i32 %i.ao to i64
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.n, %.lr.ph47.preheader.i
  %indvars.iv53.i = phi i64 [ %i.ar, %.lr.ph47.preheader.i ], [ %indvars.iv.next54.i, %bb.n ] ; 3 uses
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1 ; 2 uses
  %i.at = and i64 %indvars.iv.next54.i, 4294967295 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load float, ptr %i.av, align 8, !tbaa !21
  %i.ax = fcmp olt float %i.aw, %.0.i53
  br i1 %i.ax, label %bb.n, label %.critedge.loopexit.i

bb.n:                                             ; preds = %.lr.ph47.i
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv53.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !25
  %.not.i54 = icmp eq i64 %i.at, 0
  br i1 %.not.i54, label %.critedge.loopexit.i, label %.lr.ph47.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.n, %.lr.ph47.i
  %.038.lcssa.ph.i = phi i64 [ %indvars.iv53.i, %.lr.ph47.i ], [ 0, %bb.n ]
  %.pre57.i = load i32, ptr %i.l, align 8, !tbaa !19
  %i.az = and i64 %.038.lcssa.ph.i, 4294967295
  %i.ba = add i32 %.pre57.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.bb = phi i32 [ 1, %.preheader.i ], [ %i.ba, %.critedge.loopexit.i ]
  %.038.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.az, %.critedge.loopexit.i ]
  %i.bc = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.038.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bd, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store float %.0.i53, ptr %i.be, align 8, !tbaa !21
  store i32 %i.bb, ptr %i.l, align 8, !tbaa !19
  br label %.backedge

bb.o:                                             ; preds = %hnsw_distance.exit
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !21
  %i.bi = fcmp ult float %.0.i53, %i.bh
  br i1 %i.bi, label %.preheader41.i, label %.backedge

.preheader41.i:                                   ; preds = %bb.o
  %.not51.i = icmp eq i32 %i.ap, 1
  br i1 %.not51.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader41.i, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.preheader41.i ] ; 3 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !17  ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.next.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !21
  %i.bn = fcmp ogt float %i.bm, %.0.i53
  br i1 %i.bn, label %bb.p, label %.critedge2.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !25
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !20
  %i.bq = add i32 %i.bp, -1
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %..critedge2.loopexit_crit_edge.i, !llvm.loop !31

..critedge2.loopexit_crit_edge.i:                 ; preds = %bb.p
  %.pre.pre.i = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %.critedge2.i, !llvm.loop !31

.critedge2.i:                                     ; preds = %.lr.ph.i, %..critedge2.loopexit_crit_edge.i, %.preheader41.i
  %i.bt = phi ptr [ %i.bf, %.preheader41.i ], [ %.pre.pre.i, %..critedge2.loopexit_crit_edge.i ], [ %i.bj, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next.i, %..critedge2.loopexit_crit_edge.i ], [ %indvars.iv.i, %.lr.ph.i ]
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.0.lcssa.i ; 2 uses
  store ptr %.04165, ptr %i.bu, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %.0.i53, ptr %i.bv, align 8, !tbaa !21
  br label %.backedge

._crit_edge.loopexit:                             ; preds = %.backedge
  %.pre = load i32, ptr %i.l, align 8, !tbaa !19
  %.pre79.pre = load ptr, ptr %i.d, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %.pre79 = phi ptr [ %.pre79.pre, %._crit_edge.loopexit ], [ %i.h, %bb.f ] ; 21 uses
  %i.bw = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.f ] ; 19 uses
  %. = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.bw) ; 6 uses
  %.not = icmp eq i32 %., 0
  br i1 %.not, label %pq_free.exit, label %.lr.ph68

.lr.ph68:                                         ; preds = %._crit_edge
  %.not49 = icmp eq ptr %4, null
  %wide.trip.count77 = zext i32 %. to i64         ; 17 uses
  br i1 %.not49, label %.lr.ph68.split.us.preheader, label %.lr.ph68.split.preheader

.lr.ph68.split.preheader:                         ; preds = %.lr.ph68
  %min.iters.check = icmp ult i32 %., 50
  br i1 %min.iters.check, label %.lr.ph68.split.preheader126, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph68.split.preheader
  %i.bx = add nsw i64 %wide.trip.count77, -1      ; 2 uses
  %i.by = add i32 %i.bw, -1
  %i.bz = trunc i64 %i.bx to i32
  %i.ca = icmp ult i32 %i.by, %i.bz
  %i.cb = icmp ugt i64 %i.bx, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph68.split.preheader126, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cd = shl nuw nsw i64 %wide.trip.count77, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.cd
  %i.ce = add i32 %i.bw, -1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 4                ; 4 uses
  %i.ch = add nuw nsw i64 %i.cg, 16
  %i.ci = shl nuw nsw i64 %wide.trip.count77, 4   ; 2 uses
  %i.cj = sub nsw i64 %i.ch, %i.ci
  %scevgep97 = getelementptr i8, ptr %.pre79, i64 %i.cj
  %i.ck = getelementptr i8, ptr %.pre79, i64 %i.cg
  %scevgep98 = getelementptr i8, ptr %i.ck, i64 8
  %i.cl = shl nuw nsw i64 %wide.trip.count77, 2
  %scevgep99 = getelementptr i8, ptr %4, i64 %i.cl
  %i.cm = add nuw nsw i64 %i.cg, 24
  %i.cn = sub nsw i64 %i.cm, %i.ci
  %scevgep100 = getelementptr i8, ptr %.pre79, i64 %i.cn
  %i.co = getelementptr i8, ptr %.pre79, i64 %i.cg
  %scevgep101 = getelementptr i8, ptr %i.co, i64 12
  %bound0 = icmp ult ptr %3, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %4, %scevgep101
  %bound1103 = icmp ult ptr %scevgep100, %scevgep99
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict, %found.conflict104
  br i1 %conflict.rdx, label %.lr.ph68.split.preheader126, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count77, 4294967294 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.cp = trunc i64 %index to i32
  %.neg = xor i32 %i.cp, -1
  %i.cq = trunc i64 %index to i32
  %i.cr = add i32 %i.cq, 2
  %i.cs = add i32 %i.bw, %.neg
  %i.ct = sub i32 %i.bw, %i.cr
  %i.cu = zext i32 %i.cs to i64
  %i.cv = zext i32 %i.ct to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.cv ; 2 uses
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !30, !alias.scope !275
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !30, !alias.scope !275
  %i.da = insertelement <2 x ptr> poison, ptr %i.cy, i64 0
  %i.db = insertelement <2 x ptr> %i.da, ptr %i.cz, i64 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index
  store <2 x ptr> %i.db, ptr %i.dc, align 8, !tbaa !26, !alias.scope !278, !noalias !275
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.df = load float, ptr %i.dd, align 8, !tbaa !21, !alias.scope !280
  %i.dg = load float, ptr %i.de, align 8, !tbaa !21, !alias.scope !280
  %i.dh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.dg, i64 1
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index
  store <2 x float> %i.di, ptr %i.dj, align 4, !tbaa !27, !alias.scope !282, !noalias !280
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count77
  br i1 %cmp.n, label %pq_free.exit, label %.lr.ph68.split.preheader126

.lr.ph68.split.preheader126:                      ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph68.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph68.split.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count77, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.split.prol.loopexit, label %.lr.ph68.split.prol

.lr.ph68.split.prol:                              ; preds = %.lr.ph68.split.preheader126
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv.next.prol to i32
  %i.dm = sub i32 %i.bw, %i.dl
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !30
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.ph
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !21
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.ph
  store float %i.ds, ptr %i.dt, align 4, !tbaa !27
  br label %.lr.ph68.split.prol.loopexit

.lr.ph68.split.prol.loopexit:                     ; preds = %.lr.ph68.split.prol, %.lr.ph68.split.preheader126
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph68.split.preheader126 ], [ %indvars.iv.next.prol, %.lr.ph68.split.prol ]
  %i.du = add nsw i64 %wide.trip.count77, -1
  %i.dv = icmp eq i64 %indvars.iv.ph, %i.du
  br i1 %i.dv, label %pq_free.exit, label %.lr.ph68.split

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %min.iters.check114 = icmp ult i32 %., 34
  br i1 %min.iters.check114, label %.lr.ph68.split.us.preheader125, label %vector.scevcheck105

vector.scevcheck105:                              ; preds = %.lr.ph68.split.us.preheader
  %i.dw = add nsw i64 %wide.trip.count77, -1      ; 2 uses
  %i.dx = add i32 %i.bw, -1
  %i.dy = trunc i64 %i.dw to i32
  %i.dz = icmp ult i32 %i.dx, %i.dy
  %i.ea = icmp ugt i64 %i.dw, 4294967295
  %i.eb = or i1 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph68.split.us.preheader125, label %vector.memcheck106

vector.memcheck106:                               ; preds = %vector.scevcheck105
  %i.ec = shl nuw nsw i64 %wide.trip.count77, 3
  %scevgep107 = getelementptr i8, ptr %3, i64 %i.ec
  %i.ed = add i32 %i.bw, -1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 4                ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, 16
  %i.eh = shl nuw nsw i64 %wide.trip.count77, 4
  %i.ei = sub nsw i64 %i.eg, %i.eh
  %scevgep108 = getelementptr i8, ptr %.pre79, i64 %i.ei
  %i.ej = getelementptr i8, ptr %.pre79, i64 %i.ef
  %scevgep109 = getelementptr i8, ptr %i.ej, i64 8
  %bound0110 = icmp ult ptr %3, %scevgep109
  %bound1111 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %.lr.ph68.split.us.preheader125, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck106
  %n.vec117 = and i64 %wide.trip.count77, 4294967292 ; 3 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph115
  %index119 = phi i64 [ 0, %vector.ph115 ], [ %index.next120, %vector.body118 ] ; 6 uses
  %i.ek = trunc i64 %index119 to i32
  %.neg124 = xor i32 %i.ek, -1
  %i.el = trunc i64 %index119 to i32
  %i.em = or disjoint i32 %i.el, 2
  %i.en = trunc i64 %index119 to i32
  %i.eo = or disjoint i32 %i.en, 3
  %i.ep = trunc i64 %index119 to i32
  %i.eq = add i32 %i.ep, 4
  %i.er = add i32 %i.bw, %.neg124
  %i.es = sub i32 %i.bw, %i.em
  %i.et = sub i32 %i.bw, %i.eo
  %i.eu = sub i32 %i.bw, %i.eq
  %i.ev = zext i32 %i.er to i64
  %i.ew = zext i32 %i.es to i64
  %i.ex = zext i32 %i.et to i64
  %i.ey = zext i32 %i.eu to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ev
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ew
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ex
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ey
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !30, !alias.scope !285
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !30, !alias.scope !285
  %i.ff = insertelement <2 x ptr> poison, ptr %i.fd, i64 0
  %i.fg = insertelement <2 x ptr> %i.ff, ptr %i.fe, i64 1
  %i.fh = load ptr, ptr %i.fb, align 8, !tbaa !30, !alias.scope !285
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !30, !alias.scope !285
  %i.fj = insertelement <2 x ptr> poison, ptr %i.fh, i64 0
  %i.fk = insertelement <2 x ptr> %i.fj, ptr %i.fi, i64 1
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index119 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %i.fg, ptr %i.fl, align 8, !tbaa !26, !alias.scope !288, !noalias !285
  store <2 x ptr> %i.fk, ptr %i.fm, align 8, !tbaa !26, !alias.scope !288, !noalias !285
  %index.next120 = add nuw i64 %index119, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next120, %n.vec117
  br i1 %i.fn, label %middle.block121, label %vector.body118, !llvm.loop !290

middle.block121:                                  ; preds = %vector.body118
  %cmp.n122 = icmp eq i64 %n.vec117, %wide.trip.count77
  br i1 %cmp.n122, label %pq_free.exit, label %.lr.ph68.split.us.preheader125

.lr.ph68.split.us.preheader125:                   ; preds = %vector.memcheck106, %vector.scevcheck105, %.lr.ph68.split.us.preheader, %middle.block121
  %indvars.iv74.ph = phi i64 [ 0, %vector.memcheck106 ], [ 0, %vector.scevcheck105 ], [ 0, %.lr.ph68.split.us.preheader ], [ %n.vec117, %middle.block121 ] ; 3 uses
  %xtraiter131 = and i64 %wide.trip.count77, 3    ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph68.split.us.prol.loopexit, label %.lr.ph68.split.us.prol

.lr.ph68.split.us.prol:                           ; preds = %.lr.ph68.split.us.preheader125, %.lr.ph68.split.us.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph68.split.us.prol ], [ %indvars.iv74.ph, %.lr.ph68.split.us.preheader125 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph68.split.us.prol ], [ 0, %.lr.ph68.split.us.preheader125 ]
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 3 uses
  %i.fo = trunc nuw i64 %indvars.iv.next75.prol to i32
  %i.fp = sub i32 %i.bw, %i.fo
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74.prol
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !26
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter131
  br i1 %prol.iter.cmp.not, label %.lr.ph68.split.us.prol.loopexit, label %.lr.ph68.split.us.prol, !llvm.loop !291

.lr.ph68.split.us.prol.loopexit:                  ; preds = %.lr.ph68.split.us.prol, %.lr.ph68.split.us.preheader125
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph68.split.us.preheader125 ], [ %indvars.iv.next75.prol, %.lr.ph68.split.us.prol ]
  %i.fu = sub nsw i64 %indvars.iv74.ph, %wide.trip.count77
  %i.fv = icmp ugt i64 %i.fu, -4
  br i1 %i.fv, label %pq_free.exit, label %.lr.ph68.split.us

.lr.ph68.split.us:                                ; preds = %.lr.ph68.split.us.prol.loopexit, %.lr.ph68.split.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph68.split.us ], [ %indvars.iv74.unr, %.lr.ph68.split.us.prol.loopexit ] ; 5 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.fw = trunc nuw i64 %indvars.iv.next75 to i32
  %i.fx = sub i32 %i.bw, %i.fw
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !30
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv74
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !26
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %i.gc = trunc nuw i64 %indvars.iv.next75.1 to i32
  %i.gd = sub i32 %i.bw, %i.gc
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !30
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !26
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3 ; 2 uses
  %i.gi = trunc nuw i64 %indvars.iv.next75.2 to i32
  %i.gj = sub i32 %i.bw, %i.gi
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !30
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.1
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !26
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 3 uses
  %i.go = trunc nuw i64 %indvars.iv.next75.3 to i32
  %i.gp = sub i32 %i.bw, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next75.2
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !26
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count77
  br i1 %exitcond78.not.3, label %pq_free.exit, label %.lr.ph68.split.us, !llvm.loop !292

pq_free.exit:                                     ; preds = %.lr.ph68.split.prol.loopexit, %.lr.ph68.split, %.lr.ph68.split.us.prol.loopexit, %.lr.ph68.split.us, %middle.block, %middle.block121, %._crit_edge
  %i.gu = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.gu(ptr noundef %.pre79) #34, !inline_history !144
  %i.gv = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.gv(ptr noundef nonnull %i.d) #34, !inline_history !144
  %i.gw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !15 ; 2 uses
  %.not.i56 = icmp eq ptr %i.gx, %1
  br i1 %.not.i56, label %hnsw_free_tmp_node.exit, label %hnsw_free_tmp_node.exit.sink.split

.lr.ph68.split:                                   ; preds = %.lr.ph68.split.prol.loopexit, %.lr.ph68.split
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph68.split ], [ %indvars.iv.unr, %.lr.ph68.split.prol.loopexit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gy = trunc nuw i64 %indvars.iv.next to i32
  %i.gz = sub i32 %i.bw, %i.gy
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !30
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store ptr %i.hc, ptr %i.hd, align 8, !tbaa !26
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hf = load float, ptr %i.he, align 8, !tbaa !21
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.hf, ptr %i.hg, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.hh = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.hi = sub i32 %i.bw, %i.hh
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.pre79, i64 %i.hj ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !21
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.ho, ptr %i.hp, align 4, !tbaa !27
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count77
  br i1 %exitcond.not.1, label %pq_free.exit, label %.lr.ph68.split, !llvm.loop !293

hnsw_free_tmp_node.exit.sink.split:               ; preds = %pq_free.exit, %bb.e
  %.sink = phi ptr [ %i.k, %bb.e ], [ %i.gx, %pq_free.exit ]
  %.1.ph = phi i32 [ -1, %bb.e ], [ %., %pq_free.exit ]
  %i.hq = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.hq(ptr noundef %.sink) #34
  br label %hnsw_free_tmp_node.exit

hnsw_free_tmp_node.exit:                          ; preds = %hnsw_free_tmp_node.exit.sink.split, %pq_free.exit, %bb.e, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %., %pq_free.exit ], [ -1, %bb.e ], [ %.1.ph, %hnsw_free_tmp_node.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #26

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) #27

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_1
