inline.NumInlined: 1294
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK6casadi13ImplicitToNlp8set_workEPvRPPKdRPPdRPxRS6_:bb.a

_ZNK6casadi16FunctionInternal6nnz_inEx.exit:      ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  %i.w = tail call noundef i64 @_ZNK6casadi8Sparsity3nnzEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = sub nsw i64 %i.k, %i.w
  %i.y = load ptr, ptr %5, align 8, !tbaa !164
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !164
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !186
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !155
  %i.ac = load ptr, ptr %5, align 8, !tbaa !164
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ab
  store ptr %i.ad, ptr %5, align 8, !tbaa !164
  ret void
}

declare void @_ZNK6casadi10Rootfinder8set_workEPvRPPKdRPPdRPxRS6_(ptr noundef nonnull align 8 dereferenceable(1608), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6casadi13ImplicitToNlp5solveEPv(ptr noundef nonnull align 8 dereferenceable(1616) %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164
  store ptr %i.j, ptr %i.b, align 8, !tbaa !164
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !166  ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !155  ; 2 uses
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit.thread, label %bb.b

_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit.thread:       ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %i.q, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !184
  br label %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75

bb.b:                                             ; preds = %bb.a
  %.idx.i.i = shl nuw nsw i64 %i.o, 3             ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i
  %i.u = add nsw i64 %.idx.i.i, -8                ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3
  %i.y = getelementptr i8, ptr %i.m, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double -inf), ptr %next.gep, align 8, !tbaa !190
  store <2 x double> splat (double -inf), ptr %i.aa, align 8, !tbaa !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b, %middle.block
  %.07.i.i.i.i.ph = phi ptr [ %i.m, %bb.b ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store double -inf, ptr %.07.i.i.i.i, align 8, !tbaa !190
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.t
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !194

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %middle.block
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.m, ptr %i.ad, align 8, !tbaa !164
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !184 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i.i
  %i.ah = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ai = lshr exact i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check130 = icmp ult i64 %i.ah, 24
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i71.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.loopexit
  %n.vec132 = and i64 %i.aj, 4611686018427387900  ; 3 uses
  %i.ak = shl i64 %n.vec132, 3
  %i.al = getelementptr i8, ptr %i.af, i64 %i.ak
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph131
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.am = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %i.af, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x double> splat (double +inf), ptr %next.gep135, align 8, !tbaa !190
  store <2 x double> splat (double +inf), ptr %i.an, align 8, !tbaa !190
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next136, %n.vec132
  br i1 %i.ao, label %middle.block137, label %vector.body133, !llvm.loop !195

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.aj, %n.vec132
  br i1 %cmp.n138, label %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75, label %.lr.ph.i.i.i.i71.preheader

.lr.ph.i.i.i.i71.preheader:                       ; preds = %.loopexit, %middle.block137
  %.07.i.i.i.i72.ph = phi ptr [ %i.af, %.loopexit ], [ %i.al, %middle.block137 ]
  br label %.lr.ph.i.i.i.i71

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71.preheader, %.lr.ph.i.i.i.i71
  %.07.i.i.i.i72 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i71 ], [ %.07.i.i.i.i72.ph, %.lr.ph.i.i.i.i71.preheader ] ; 2 uses
  store double +inf, ptr %.07.i.i.i.i72, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.ap, %i.ag
  br i1 %.not.i.i.i.i73, label %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75, label %.lr.ph.i.i.i.i71, !llvm.loop !196

_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75:            ; preds = %.lr.ph.i.i.i.i71, %middle.block137, %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit.thread
  %i.aq = phi ptr [ %i.s, %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit.thread ], [ %i.af, %middle.block137 ], [ %i.af, %.lr.ph.i.i.i.i71 ]
  %i.ar = phi ptr [ %i.r, %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit.thread ], [ %i.ae, %middle.block137 ], [ %i.ae, %.lr.ph.i.i.i.i71 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !197 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !198 ; 5 uses
  %.not102 = icmp eq ptr %i.av, %i.aw
  br i1 %.not102, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = icmp eq i64 %i.az, 8
  br i1 %i.bb, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ba, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %i.bc = and i64 %i.az, 8
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.094.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod177 = trunc i64 %i.ba to i1
  tail call void @llvm.assume(i1 %lcmp.mod177)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.094.epil.init
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !199 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.sink.split.epil, label %bb.c

bb.c:                                             ; preds = %.lr.ph.epil.preheader
  %i.bg = icmp slt i64 %i.be, 0
  br i1 %i.bg, label %.sink.split.epil, label %._crit_edge

.sink.split.epil:                                 ; preds = %bb.c, %.lr.ph.epil.preheader
  %.sink128.in.epil = phi ptr [ %i.l, %.lr.ph.epil.preheader ], [ %i.ar, %bb.c ]
  %.sink128.epil = load ptr, ptr %.sink128.in.epil, align 8, !tbaa !164
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sink128.epil, i64 %.094.epil.init
  store double 0.000000e+00, ptr %i.bh, align 8, !tbaa !190
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.sink.split.epil, %bb.c, %_ZSt6fill_nIPdxdET_S1_T0_RKT1_.exit75
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !185 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !164
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !125 ; 2 uses
  %.not103 = icmp eq i64 %i.bm, 0
  br i1 %.not103, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1312
  br label %bb.h

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %.094 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bx, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.094
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !199 ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.br = icmp slt i64 %i.bp, 0
  br i1 %i.br, label %.sink.split, label %.lr.ph.1

.sink.split:                                      ; preds = %bb.d, %.lr.ph
  %.sink128.in = phi ptr [ %i.l, %.lr.ph ], [ %i.ar, %bb.d ]
  %.sink128 = load ptr, ptr %.sink128.in, align 8, !tbaa !164
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sink128, i64 %.094
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !190
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.sink.split, %bb.d
  %2 = or disjoint i64 %.094, 1                   ; 2 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %2
  %i.bt = load i64, ptr %3, align 8, !tbaa !199   ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.sink.split.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.1
  %i.bv = icmp slt i64 %i.bt, 0
  br i1 %i.bv, label %.sink.split.1, label %bb.f

.sink.split.1:                                    ; preds = %bb.e, %.lr.ph.1
  %.sink128.in.1 = phi ptr [ %i.l, %.lr.ph.1 ], [ %i.ar, %bb.e ]
  %.sink128.1 = load ptr, ptr %.sink128.in.1, align 8, !tbaa !164
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sink128.1, i64 %2
  store double 0.000000e+00, ptr %i.bw, align 8, !tbaa !190
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.1, %bb.e
  %i.bx = add nuw nsw i64 %.094, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !200

._crit_edge99.loopexit:                           ; preds = %bb.k
  %.pre106 = load ptr, ptr %i.c, align 8, !tbaa !188
  %.pre107 = load ptr, ptr %i.a, align 8, !tbaa !187
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %._crit_edge
  %i.by = phi ptr [ %.pre107, %._crit_edge99.loopexit ], [ %i.b, %._crit_edge ]
  %i.bz = phi ptr [ %.pre106, %._crit_edge99.loopexit ], [ %i.d, %._crit_edge ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !186
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !164
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !201
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !202
  %i.ch = tail call noundef i32 @_ZNK6casadi8FunctionclEPPKdPPdPxS4_i(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.by, ptr noundef nonnull %i.bz, ptr noundef %i.ce, ptr noundef %i.cg, i32 noundef 0) ; 0 uses
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !186 ; 5 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = load i64, ptr %i.n, align 8, !tbaa !155 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !203 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !148 ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !164 ; 6 uses
  %i.cr = ptrtoaddr ptr %i.cq to i64
  %.not.i = icmp eq ptr %i.cq, null
  br i1 %.not.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge99
  %.not15.i = icmp eq ptr %i.ci, null
  %i.cs = icmp sgt i64 %i.ck, 0                   ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.g
  br i1 %i.cs, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check159 = icmp ult i64 %i.ck, 8
  %i.ct = sub i64 %i.cj, %i.cr
  %diff.check157 = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check159, i1 true, i1 %diff.check157
  br i1 %or.cond, label %.lr.ph.i.preheader175, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i.preheader
  %n.vec161 = and i64 %i.ck, 9223372036854775804  ; 4 uses
  %i.cu = shl i64 %n.vec161, 3                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.ci, i64 %i.cu
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %i.cx = shl i64 %index163, 3                    ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.cq, i64 %i.cx ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.ci, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep165, i64 16
  %wide.load166 = load <2 x double>, ptr %next.gep165, align 8, !tbaa !190
  %wide.load167 = load <2 x double>, ptr %i.cy, align 8, !tbaa !190
  %i.cz = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x double> %wide.load166, ptr %next.gep164, align 8, !tbaa !190
  store <2 x double> %wide.load167, ptr %i.cz, align 8, !tbaa !190
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.da, label %middle.block169, label %vector.body162, !llvm.loop !204

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %i.ck, %n.vec161
  br i1 %cmp.n170, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader175

.lr.ph.i.preheader175:                            ; preds = %.lr.ph.i.preheader, %middle.block169
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec161, %middle.block169 ] ; 4 uses
  %.01019.i.ph = phi ptr [ %i.cq, %.lr.ph.i.preheader ], [ %i.cv, %middle.block169 ] ; 2 uses
  %.01218.i.ph = phi ptr [ %i.ci, %.lr.ph.i.preheader ], [ %i.cw, %middle.block169 ] ; 2 uses
  %i.db = sub nsw i64 %i.ck, %.020.i.ph
  %xtraiter180 = and i64 %i.db, 7                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader175, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.df, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader175 ]
  %.01019.i.prol = phi ptr [ %i.de, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader175 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.dc, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader175 ] ; 2 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader175 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.dd = load double, ptr %.01218.i.prol, align 8, !tbaa !190
  %i.de = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.dd, ptr %.01019.i.prol, align 8, !tbaa !190
  %i.df = add nuw nsw i64 %.020.i.prol, 1         ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !205

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader175
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader175 ], [ %i.df, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader175 ], [ %i.de, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader175 ], [ %i.dc, %.lr.ph.i.prol ]
  %i.dg = sub nsw i64 %.020.i.ph, %i.ck
  %i.dh = icmp ugt i64 %i.dg, -8
  br i1 %i.dh, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g
  br i1 %i.cs, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.di = shl nuw i64 %i.ck, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cq, i8 0, i64 %i.di, i1 false), !tbaa !190
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.eh, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.eg, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.ee, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.dk = load double, ptr %.01218.i, align 8, !tbaa !190
  %i.dl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.dk, ptr %.01019.i, align 8, !tbaa !190
  %i.dm = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !190
  %i.do = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.dn, ptr %i.dl, align 8, !tbaa !190
  %i.dp = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.dq = load double, ptr %i.dm, align 8, !tbaa !190
  %i.dr = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.dq, ptr %i.do, align 8, !tbaa !190
  %i.ds = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.dt = load double, ptr %i.dp, align 8, !tbaa !190
  %i.du = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.dt, ptr %i.dr, align 8, !tbaa !190
  %i.dv = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.dw = load double, ptr %i.ds, align 8, !tbaa !190
  %i.dx = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.dw, ptr %i.du, align 8, !tbaa !190
  %i.dy = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.dz = load double, ptr %i.dv, align 8, !tbaa !190
  %i.ea = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.dz, ptr %i.dx, align 8, !tbaa !190
  %i.eb = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !190
  %i.ed = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.ec, ptr %i.ea, align 8, !tbaa !190
  %i.ee = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.ef = load double, ptr %i.eb, align 8, !tbaa !190
  %i.eg = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.ef, ptr %i.ed, align 8, !tbaa !190
  %i.eh = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.eh, %i.ck
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !207

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block169, %._crit_edge99, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !208 ; 4 uses
  %.not104 = icmp eq i64 %i.ej, 0
  br i1 %.not104, label %.critedge, label %.lr.ph101

bb.h:                                             ; preds = %.lr.ph98, %bb.k
  %i.ek = phi i64 [ %i.bm, %.lr.ph98 ], [ %i.gi, %bb.k ]
  %.06496 = phi ptr [ %i.bj, %.lr.ph98 ], [ %.1, %bb.k ] ; 8 uses
  %.06795 = phi i64 [ 0, %.lr.ph98 ], [ %i.gj, %bb.k ] ; 4 uses
  %.06496140 = ptrtoaddr ptr %.06496 to i64
  %i.el = load i64, ptr %i.g, align 8, !tbaa !56
  %.not69 = icmp eq i64 %.06795, %i.el
  br i1 %.not69, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.em = tail call noundef i64 @_ZNK6casadi8Function6nnz_inEx(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 noundef %.06795) ; 9 uses
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !189
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.06795
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !164 ; 5 uses
  %i.eq = ptrtoaddr ptr %i.ep to i64
  %.not.i76 = icmp eq ptr %.06496, null
  br i1 %.not.i76, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit86, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not15.i77 = icmp eq ptr %i.ep, null
  %i.er = icmp sgt i64 %i.em, 0                   ; 2 uses
  br i1 %.not15.i77, label %.preheader.i84, label %.preheader16.i78

.preheader16.i78:                                 ; preds = %bb.j
  br i1 %i.er, label %.lr.ph.i79.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit86

.lr.ph.i79.preheader:                             ; preds = %.preheader16.i78
  %min.iters.check142 = icmp ult i64 %i.em, 4
  %i.es = sub i64 %i.eq, %.06496140
  %diff.check = icmp ugt i64 %i.es, -32
  %or.cond174 = select i1 %min.iters.check142, i1 true, i1 %diff.check
  br i1 %or.cond174, label %.lr.ph.i79.preheader176, label %vector.ph143

vector.ph143:                                     ; preds = %.lr.ph.i79.preheader
  %n.vec144 = and i64 %i.em, 9223372036854775804  ; 4 uses
  %i.et = shl i64 %n.vec144, 3                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2ERKSA_:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.f, ptr %i.b, align 8, !tbaa !12
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.i = load i64, ptr %i.b, align 8, !tbaa !12
  store i64 %i.i, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !16
  store i8 %i.k, ptr %i.j, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !17
  %i.n = load ptr, ptr %0, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !35
  store i32 %i.r, ptr %i.p, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !8
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !17   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.x, ptr %i.a, align 8, !tbaa !12
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.z, ptr %i.s, align 8, !tbaa !14
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !16
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !16
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !17
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !16
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

declare void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !146    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6casadi2MXESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #22
  unreachable

_ZNKSt6vectorIN6casadi2MXESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !142
  store ptr %i.r, ptr %i.q, align 8, !tbaa !142
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 5 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %i.s = load ptr, ptr %.01215.i.i.i.i.i, align 8, !tbaa !142
  store ptr %i.s, ptr %.016.i.i.i.i.i, align 8, !tbaa !142
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i)
          to label %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !295

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %i.w) #23 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i) #23
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #22
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #26
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi2MXEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.u, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 8, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ad, %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 3 uses
  %i.ac = load ptr, ptr %.01215.i.i.i.i.i31, align 8, !tbaa !142
  store ptr %i.ac, ptr %.016.i.i.i.i.i30.ptr, align 8, !tbaa !142
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %.016.i.i.i.i.i30.ptr)
          to label %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 8 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 8 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !295

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #23 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 8
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i.i.i34) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ah, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !149

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #22
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i36
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #26
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN6casadi2MXEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #23
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit:          ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6casadi2MXES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !141
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #24
  br label %_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi2MXESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6casadi2MXEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !146
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !138
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !141
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN6casadi2MXESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.as) #23 ; 0 uses
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.au = extractvalue { ptr, i32 } %i.z, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #23 ; 0 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #23
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.aw = extractvalue { ptr, i32 } %i.ai, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #23 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.ay, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i47) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 8
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !149

bb.m:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.az

bb.o:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #26
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi17SparsityInterfaceINS_2MXEE6veccatERKSt6vectorIS1_SaIS1_EE(ptr dead_on_unwind noalias writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.61", align 8    ; 12 uses
  %3 = alloca %"class.casadi::MX", align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !296    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !296
  %.not22 = icmp eq ptr %i.a, %i.c
  br i1 %.not22, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6casadi2MXaSERKS0_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !296
  %i.d = icmp eq ptr %.pre, %i.l
  br i1 %i.d, label %._crit_edge.thread, label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZN6casadi2MXaSERKS0_.exit
  %.sroa.013.023 = phi ptr [ %i.l, %_ZN6casadi2MXaSERKS0_.exit ], [ %i.a, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.023)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.lr.ph
  %i.f = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %.noexc
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc6
  %i.h = load ptr, ptr %.sroa.013.023, align 8, !tbaa !142, !noalias !297
  store ptr %i.h, ptr %3, align 8, !tbaa !142, !alias.scope !297
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi17SparsityInterfaceINS_2MXEE3vecERKS1_.exit unwind label %bb.d

bb.c:                                             ; preds = %.noexc6
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.023)
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %bb.c
  %i.j = invoke noundef i64 @_ZNK6casadi8Sparsity5numelEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %.noexc8
  invoke void @_ZN6casadi2MX7reshapeERKS0_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.023, i64 noundef %i.j, i64 noundef 1)
          to label %_ZN6casadi17SparsityInterfaceINS_2MXEE3vecERKS1_.exit unwind label %bb.d

_ZN6casadi17SparsityInterfaceINS_2MXEE3vecERKS1_.exit: ; preds = %bb.b, %.noexc9
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.013.023, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %_ZN6casadi17SparsityInterfaceINS_2MXEE3vecERKS1_.exit
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.013.023, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !296
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !300

bb.d:                                             ; preds = %.noexc9, %.noexc8, %bb.c, %bb.b, %.noexc, %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN6casadi17SparsityInterfaceINS_2MXEE3vecERKS1_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  invoke void @_ZN6casadi2MXC1Exx(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0, i64 noundef 1)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %._crit_edge.thread
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind writable sret(%"class.casadi::MX") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.g

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %bb.h, %._crit_edge.thread
  %i.q = load ptr, ptr %2, align 8, !tbaa !146    ; 3 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.q, %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #23
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !149

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !146
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.q, %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_1
