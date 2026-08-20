inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_build_cfg:ir_array_init.exit
  br i1 %i.zg, label %bb.cd, label %.loopexit.i

bb.cd:                                            ; preds = %bb.cc
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !39
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.zj
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !41 ; 2 uses
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [52 x i8], ptr %.pre182.i, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.pn173.i, i64 72
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !69
  %i.zq = zext i32 %i.zp to i64
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %i.zq
  store i32 %i.zl, ptr %i.zr, align 4, !tbaa !41
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zn, i64 12
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !67
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zn, i64 16 ; 2 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !68 ; 2 uses
  %i.zw = add i32 %i.zv, 1
  store i32 %i.zw, ptr %i.zu, align 4, !tbaa !68
  %i.zx = add i32 %i.zv, %i.zt
  %i.zy = zext i32 %i.zx to i64
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %i.zy
  store i32 %.2174.i, ptr %i.zz, align 4, !tbaa !41
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.cb, %bb.cd, %bb.cc
  %i.aaa = phi ptr [ %i.wz, %bb.cc ], [ %i.wz, %bb.cd ], [ %i.wt, %bb.cb ]
  %i.aab = add nuw i32 %.2174.i, 1                ; 2 uses
  %exitcond181.i = icmp eq i32 %i.aab, %umax180.i
  br i1 %exitcond181.i, label %ir_remove_unreachable_blocks.exit, label %bb.bz, !llvm.loop !86

ir_remove_unreachable_blocks.exit:                ; preds = %.loopexit.i, %._crit_edge166.i, %._crit_edge.i, %._crit_edge544, %._crit_edge536
  tail call void @_efree(ptr noundef %i.q) #17
  tail call void @_efree(ptr noundef %i.u) #17
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noalias ptr @_emalloc_64() local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ir_cfg_remove_dead_inputs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %bb.q
  %.0110 = phi i32 [ 1, %.lr.ph113 ], [ %i.cz, %bb.q ]
  %.074109 = phi ptr [ null, %.lr.ph113 ], [ %.4, %bb.q ] ; 3 uses
  %.pn108 = phi ptr [ %2, %.lr.ph113 ], [ %.079111, %bb.q ] ; 8 uses
  %.080107 = phi i32 [ 0, %.lr.ph113 ], [ %i.cy, %bb.q ] ; 2 uses
  %.079111 = getelementptr inbounds nuw i8, ptr %.pn108, i64 52
  %i.b = getelementptr inbounds nuw i8, ptr %.pn108, i64 64
  store i32 %.080107, ptr %i.b, align 4, !tbaa !67
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn108, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !66
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = add i32 %i.i, %.080107                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn108, i64 68
  store i32 0, ptr %i.k, align 4, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %.pn108, i64 72
  store i32 %i.j, ptr %i.l, align 4, !tbaa !69
  %i.m = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pn108, i64 56 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !39
  %.off = add i8 %i.r, -107
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2 ; 3 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !39   ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 5 uses
  %.not8593 = icmp eq i16 %i.t, 0
  br i1 %.not8593, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.c
  %i.v = add nuw nsw i32 %i.u, 64
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = add nuw nsw i32 %i.u, 1
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph98, %bb.l
  %indvar = phi i64 [ 0, %.lr.ph98 ], [ %indvar.next, %bb.l ] ; 5 uses
  %i.z = phi ptr [ %i.c, %.lr.ph98 ], [ %i.cd, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph98 ], [ %indvars.iv.next, %bb.l ] ; 6 uses
  %.197 = phi ptr [ %.074109, %.lr.ph98 ], [ %.3, %bb.l ] ; 5 uses
  %.07596 = phi i32 [ 1, %.lr.ph98 ], [ %.176, %bb.l ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !41 ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %.not89 = icmp eq i32 %i.ae, 0
  br i1 %.not89, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not90 = icmp eq ptr %.197, null
  br i1 %.not90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = and i64 %indvars.iv, 63
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = lshr i64 %indvars.iv, 6
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.197, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40
  %i.al = or i64 %i.ak, %i.ag
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.am = zext i32 %.07596 to i64
  %.not91 = icmp eq i64 %indvars.iv, %i.am
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sext i32 %.07596 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.an
  store i32 %i.ab, ptr %i.ao, align 4, !tbaa !41
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = add nsw i32 %.07596, 1
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.aq = load i32, ptr %i.n, align 4, !tbaa !64
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = icmp slt i32 %i.au, 2
  %i.aw = icmp ne ptr %.197, null
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call noalias ptr @_ecalloc(i64 noundef %i.x, i64 noundef 8) #18 ; 6 uses
  %i.ay = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ay, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.k
  %xtraiter = and i64 %indvar, 1
  %i.az = icmp eq i64 %indvar, 1
  br i1 %i.az, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvar, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.07392 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.br, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ba = and i32 %.07392, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = lshr i32 %.07392, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !40
  %i.bh = or i64 %i.bg, %i.bc
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !40
  %i.bi = add nuw nsw i32 %.07392, 1              ; 2 uses
  %i.bj = and i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = lshr i32 %i.bi, 6
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !40
  %i.bq = or i64 %i.bp, %i.bl
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !40
  %i.br = add nuw nsw i32 %.07392, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !87

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.07392.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.br, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1 = trunc i64 %indvar to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.bs = and i32 %.07392.epil.init, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i32 %.07392.epil.init, 6
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !40
  %i.bz = or i64 %i.by, %i.bu
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.k, %bb.j
  %.2 = phi ptr [ %.197, %bb.j ], [ %i.ax, %bb.k ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph.epil.preheader ]
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !45  ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 0, ptr %i.cc, align 4, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %.loopexit
  %i.cd = phi ptr [ %i.z, %bb.i ], [ %i.ca, %.loopexit ]
  %.176 = phi i32 [ %i.ap, %bb.i ], [ %.07596, %.loopexit ] ; 2 uses
  %.3 = phi ptr [ %.197, %bb.i ], [ %.2, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond117.not, label %._crit_edge, label %bb.d, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.l, %bb.c
  %.075.lcssa = phi i32 [ 1, %bb.c ], [ %.176, %bb.l ] ; 4 uses
  %.1.lcssa = phi ptr [ %.074109, %bb.c ], [ %.3, %bb.l ] ; 4 uses
  %i.ce = add nsw i32 %.075.lcssa, -1             ; 4 uses
  %.not86 = icmp eq i32 %i.ce, %i.u
  br i1 %.not86, label %bb.q, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 101, ptr %i.q, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cg = trunc i32 %i.ce to i16
  store i16 %i.cg, ptr %i.s, align 2, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn108, i64 76
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !71
  %.not87100 = icmp sgt i32 %.075.lcssa, %i.u
  br i1 %.not87100, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %bb.o
  %i.ci = shl nsw i64 %i.p, 4
  %i.cj = sext i32 %.075.lcssa to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %i.cl = getelementptr i8, ptr %i.m, i64 %i.ci
  %scevgep = getelementptr i8, ptr %i.cl, i64 %i.ck
  %i.cm = sub i32 %i.u, %.075.lcssa
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.cp, i1 false), !tbaa !41
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %.lr.ph103.preheader, %bb.o
  %.not88 = icmp eq ptr %.1.lcssa, null
  br i1 %.not88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge104
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.cr = load i32, ptr %i.n, align 4, !tbaa !64
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load i16, ptr %i.s, align 2, !tbaa !39
  %i.cv = zext i16 %i.cu to i32
  tail call fastcc void @ir_remove_phis_inputs(ptr noundef nonnull %0, ptr noundef %i.ct, i32 noundef %i.cv, ptr noundef nonnull %.1.lcssa)
  tail call void @_efree(ptr noundef nonnull %.1.lcssa) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %._crit_edge, %bb.p, %._crit_edge104
  %.4 = phi ptr [ null, %bb.p ], [ null, %._crit_edge104 ], [ %.1.lcssa, %._crit_edge ], [ %.074109, %bb.b ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn108, i64 76
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !71
  %i.cy = add i32 %i.cx, %i.j
  %i.cz = add i32 %.0110, 1                       ; 2 uses
  %.not = icmp ugt i32 %i.cz, %3
  br i1 %.not, label %._crit_edge114, label %bb.b, !llvm.loop !89

._crit_edge114:                                   ; preds = %bb.q, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @ir_build_dominators_tree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
ir_array_init.exit:
  %1 = alloca %struct._ir_list, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = lshr i32 %i.b, 1                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #19 ; 5 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 %i.c, ptr %i.g, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  store i32 0, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = or i32 %i.j, 33554432
  store i32 %i.k, ptr %i.i, align 4, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = load i32, ptr %i.a, align 4, !tbaa !12   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 3 uses
  store i32 1, ptr %i.q, align 4, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  store i32 0, ptr %i.r, align 4, !tbaa !39
  %.not176 = icmp ult i32 %i.p, 2
  br i1 %.not176, label %.critedge135.thread, label %.lr.ph180.preheader

.critedge135.thread:                              ; preds = %ir_array_init.exit
  store i32 0, ptr %i.q, align 4, !tbaa !39
  br label %._crit_edge190

.lr.ph180.preheader:                              ; preds = %ir_array_init.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %._crit_edge
  %i.t = phi ptr [ %i.cu, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.cv, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 3 uses
  %i.v = phi ptr [ %i.cw, %._crit_edge ], [ %i.f, %.lr.ph180.preheader ] ; 2 uses
  %.0107179 = phi ptr [ %i.df, %._crit_edge ], [ %i.s, %.lr.ph180.preheader ] ; 5 uses
  %.0110177 = phi i32 [ %i.de, %._crit_edge ], [ 2, %.lr.ph180.preheader ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0107179, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0107179, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aa ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41 ; 3 uses
  %.not131 = icmp ult i32 %i.ac, %.0110177
  br i1 %.not131, label %.loopexit145, label %bb.a, !prof !95

bb.a:                                             ; preds = %.lr.ph180
  %i.ad = load i32, ptr %i.i, align 4, !tbaa !62
  %i.ae = and i32 %i.ad, -33554433
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !62
  %i.af = icmp ult i32 %i.x, 2
  br i1 %i.af, label %.critedge, label %bb.b, !prof !52

.critedge:                                        ; preds = %bb.a, %.lr.ph.preheader, %.lr.ph
  %i.ag = phi ptr [ %i.be, %.lr.ph ], [ %i.al, %.lr.ph.preheader ], [ %i.u, %bb.a ]
  call void @_efree(ptr noundef %i.ag) #17
  store ptr null, ptr %1, align 8, !tbaa !90
  store i32 0, ptr %i.g, align 8, !tbaa !92
  store i32 0, ptr %i.h, align 8, !tbaa !93
  call fastcc void @ir_build_dominators_tree_slow(ptr noundef %0)
  br label %ir_build_dominators_tree_iterative.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = load i32, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr %i.h, align 8, !tbaa !93
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !92
  %.not.i = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i, label %ir_array_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.ai) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !90    ; 3 uses
  br label %ir_array_set.exit

ir_array_set.exit:                                ; preds = %bb.b, %bb.c
  %i.ak = phi ptr [ %i.t, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.u, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.am = phi ptr [ %i.v, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.an = zext i32 %i.ah to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.ac, ptr %i.ao, align 4, !tbaa !41
  %i.ap = add i32 %i.x, -1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41 ; 3 uses
  %i.as = icmp ult i32 %i.ar, %.0110177
  br i1 %i.as, label %.loopexit145, label %.lr.ph.preheader
end_hunk_0
begin_hunk_1_@ir_build_dominators_tree:ir_array_init.exit
  %.093169 = phi i32 [ %.194.lcssa, %.loopexit ], [ %i.bu, %.preheader143 ] ; 3 uses
  %.299168 = phi i32 [ %.3100.lcssa, %.loopexit ], [ %.198173, %.preheader143 ] ; 5 uses
  %i.bw = icmp ugt i32 %.093169, %.299168
  br i1 %i.bw, label %.lr.ph162, label %.preheader141

.preheader141:                                    ; preds = %.lr.ph162, %.preheader142
  %.194.lcssa = phi i32 [ %.093169, %.preheader142 ], [ %i.cb, %.lr.ph162 ] ; 5 uses
  %i.bx = icmp ugt i32 %.299168, %.194.lcssa
  br i1 %i.bx, label %.lr.ph165, label %.loopexit

.lr.ph162:                                        ; preds = %.preheader142, %.lr.ph162
  %.194161 = phi i32 [ %i.cb, %.lr.ph162 ], [ %.093169, %.preheader142 ]
  %i.by = zext i32 %.194161 to i64
  %i.bz = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !39 ; 3 uses
  %i.cc = icmp ugt i32 %i.cb, %.299168
  br i1 %i.cc, label %.lr.ph162, label %.preheader141, !llvm.loop !99

.lr.ph165:                                        ; preds = %.preheader141, %.lr.ph165
  %.3100164 = phi i32 [ %i.cg, %.lr.ph165 ], [ %.299168, %.preheader141 ]
  %i.cd = zext i32 %.3100164 to i64
  %i.ce = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !39 ; 3 uses
  %i.ch = icmp ugt i32 %i.cg, %.194.lcssa
  br i1 %i.ch, label %.lr.ph165, label %.loopexit, !llvm.loop !100

bb.e:                                             ; preds = %.lr.ph174
  %i.ci = load i32, ptr %i.i, align 4, !tbaa !62
  %i.cj = and i32 %i.ci, -33554433
  store i32 %i.cj, ptr %i.i, align 4, !tbaa !62
  %i.ck = load i32, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.h, align 8, !tbaa !93
  %i.cm = load i32, ptr %i.g, align 8, !tbaa !92
  %.not.i139 = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i139, label %ir_array_set.exit140, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ir_array_grow(ptr noundef nonnull %1, i32 noundef %i.cl) #17
  %.pre203 = load ptr, ptr %1, align 8, !tbaa !90
  br label %ir_array_set.exit140

ir_array_set.exit140:                             ; preds = %bb.e, %bb.f
  %i.cn = phi ptr [ %i.bp, %bb.e ], [ %.pre203, %bb.f ] ; 4 uses
  %i.co = zext i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co
  store i32 %i.bu, ptr %i.cp, align 4, !tbaa !41
  br label %.loopexit144

.loopexit144:                                     ; preds = %.loopexit, %.preheader143, %ir_array_set.exit140
  %i.cq = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.bp, %.preheader143 ], [ %i.bp, %.loopexit ] ; 2 uses
  %i.cr = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.bq, %.preheader143 ], [ %i.bq, %.loopexit ] ; 2 uses
  %i.cs = phi ptr [ %i.cn, %ir_array_set.exit140 ], [ %i.br, %.preheader143 ], [ %i.br, %.loopexit ] ; 2 uses
  %.4 = phi i32 [ %.198173, %ir_array_set.exit140 ], [ %.198173, %.preheader143 ], [ %.194.lcssa, %.loopexit ] ; 2 uses
  %i.ct = add i32 %i.bs, -1                       ; 2 uses
  %.not132 = icmp eq i32 %i.ct, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph174, !llvm.loop !101

._crit_edge:                                      ; preds = %.loopexit144, %.loopexit145
  %i.cu = phi ptr [ %i.bl, %.loopexit145 ], [ %i.cq, %.loopexit144 ] ; 4 uses
  %i.cv = phi ptr [ %i.bm, %.loopexit145 ], [ %i.cr, %.loopexit144 ]
  %i.cw = phi ptr [ %i.bn, %.loopexit145 ], [ %i.cs, %.loopexit144 ]
  %.198.lcssa = phi i32 [ %.097, %.loopexit145 ], [ %.4, %.loopexit144 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0107179, i64 28
  store i32 %.198.lcssa, ptr %i.cx, align 4, !tbaa !39
  %i.cy = zext i32 %.198.lcssa to i64
  %i.cz = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load i32, ptr %i.da, align 4, !tbaa !39
  %i.dc = add i32 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.0107179, i64 32
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !39
  %i.de = add i32 %.0110177, 1                    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0107179, i64 52
  %.not = icmp ugt i32 %i.de, %i.p
  br i1 %.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !102

._crit_edge181:                                   ; preds = %._crit_edge
  %.pre204 = load i32, ptr %i.h, align 8, !tbaa !93 ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !39
  %.not124 = icmp eq i32 %.pre204, 0
  br i1 %.not124, label %.lr.ph189.preheader, label %.preheader

.preheader:                                       ; preds = %._crit_edge181
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.k
  %i.dh = phi i32 [ %.pre204, %.preheader ], [ %i.di, %bb.k ]
  %i.di = add i32 %i.dh, -1                       ; 4 uses
  store i32 %i.di, ptr %i.h, align 8, !tbaa !93
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41 ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !67 ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !41 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !68
  switch i32 %i.du, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.dv = zext i32 %i.ds to i64
  %i.dw = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !70
  %i.dy = and i32 %i.dx, 4
  %.not127 = icmp eq i32 %i.dy, 0
  %i.dz = add i32 %i.dp, 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !41 ; 2 uses
  br i1 %.not127, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !70
  %i.eg = and i32 %i.ef, 4
  %.not128 = icmp eq i32 %i.eg, 0
  br i1 %.not128, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.092 = phi i32 [ %i.ds, %bb.g ], [ %i.ds, %bb.i ], [ %i.ec, %bb.h ] ; 2 uses
  %i.eh = zext i32 %.092 to i64
  %i.ei = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !39 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.em = load i32, ptr %i.el, align 4, !tbaa !39
  %i.en = icmp ugt i32 %i.em, %i.ek
  br i1 %i.en, label %.lr.ph184, label %._crit_edge185

.lr.ph184:                                        ; preds = %bb.j, %.lr.ph184
  %i.eo = phi i64 [ %i.es, %.lr.ph184 ], [ %i.dm, %bb.j ]
  %i.ep = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 28
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39 ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !39
  %i.ew = icmp ugt i32 %i.ev, %i.ek
  br i1 %i.ew, label %.lr.ph184, label %._crit_edge185, !llvm.loop !103

._crit_edge185:                                   ; preds = %.lr.ph184, %bb.j
  %.1111.lcssa = phi i32 [ %i.dl, %bb.j ], [ %i.er, %.lr.ph184 ]
  %.not129 = icmp eq i32 %.1111.lcssa, %.092
  br i1 %.not129, label %bb.k, label %bb.l, !prof !95

bb.k:                                             ; preds = %._crit_edge185
  %.not130 = icmp eq i32 %i.di, 0
  br i1 %.not130, label %.lr.ph189.preheader, label %bb.g, !llvm.loop !104

bb.l:                                             ; preds = %bb.g, %bb.i, %._crit_edge185
  call void @_efree(ptr noundef nonnull %i.cu) #17
  store ptr null, ptr %1, align 8, !tbaa !90
  store i32 0, ptr %i.g, align 8, !tbaa !92
  store i32 0, ptr %i.h, align 8, !tbaa !93
  %i.ex = load ptr, ptr %i.l, align 8, !tbaa !33  ; 18 uses
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.ez = load i32, ptr %i.a, align 4, !tbaa !12  ; 4 uses
  %i.fa = add i32 %i.ez, 1                        ; 3 uses
  %umax.i = call i32 @llvm.umax.i32(i32 %i.fa, i32 1) ; 2 uses
  %xtraiter = and i32 %umax.i, 7                  ; 3 uses
  %i.fb = icmp ult i32 %i.fa, 8
  br i1 %i.fb, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i32 %umax.i, -8
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.new
  %.086111.i = phi ptr [ %i.ex, %.new ], [ %i.fk, %bb.m ] ; 9 uses
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %bb.m ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.086111.i, i64 32
  store i32 0, ptr %i.fc, align 4, !tbaa !39
  %i.fd = getelementptr inbounds nuw i8, ptr %.086111.i, i64 84
  store i32 0, ptr %i.fd, align 4, !tbaa !39
  %i.fe = getelementptr inbounds nuw i8, ptr %.086111.i, i64 136
  store i32 0, ptr %i.fe, align 4, !tbaa !39
  %i.ff = getelementptr inbounds nuw i8, ptr %.086111.i, i64 188
  store i32 0, ptr %i.ff, align 4, !tbaa !39
  %i.fg = getelementptr inbounds nuw i8, ptr %.086111.i, i64 240
  store i32 0, ptr %i.fg, align 4, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %.086111.i, i64 292
  store i32 0, ptr %i.fh, align 4, !tbaa !39
  %i.fi = getelementptr inbounds nuw i8, ptr %.086111.i, i64 344
  store i32 0, ptr %i.fi, align 4, !tbaa !39
  %i.fj = getelementptr inbounds nuw i8, ptr %.086111.i, i64 396
  store i32 0, ptr %i.fj, align 4, !tbaa !39
  %i.fk = getelementptr inbounds nuw i8, ptr %.086111.i, i64 416 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.m, !llvm.loop !105

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.l
  %.086111.i.epil.init = phi ptr [ %i.ex, %bb.l ], [ %i.fk, %.unr-lcssa ]
  %lcmp.mod306 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader
  %.086111.i.epil = phi ptr [ %.086111.i.epil.init, %.epil.preheader ], [ %i.fm, %bb.n ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.n ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 32
  store i32 0, ptr %i.fl, align 4, !tbaa !39
  %i.fm = getelementptr inbounds nuw i8, ptr %.086111.i.epil, i64 52
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.n, !llvm.loop !106

.epilog-lcssa:                                    ; preds = %bb.n, %.unr-lcssa
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 80 ; 3 uses
  store i32 1, ptr %i.fn, align 4, !tbaa !39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ex, i64 104 ; 4 uses
  %.not94126.i = icmp ult i32 %i.ez, 2
  br i1 %.not94126.i, label %.split135.us.thread.i, label %.lr.ph131.preheader.i

.split135.us.thread.i:                            ; preds = %.epilog-lcssa
  store i32 0, ptr %i.fn, align 4, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ex, i64 84
  store i32 0, ptr %i.fp, align 4, !tbaa !39
  br label %ir_build_dominators_tree_iterative.exit

.lr.ph131.preheader.i:                            ; preds = %.epilog-lcssa
  %umax151.i = call i32 @llvm.umax.i32(i32 %i.fa, i32 3) ; 3 uses
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %.thread.i, %.lr.ph131.preheader.i
  %.0129.i = phi i1 [ %.2.i.mux, %.thread.i ], [ false, %.lr.ph131.preheader.i ] ; 3 uses
  %.171128.i = phi i32 [ %.mux, %.thread.i ], [ 2, %.lr.ph131.preheader.i ]
  %.187127.i = phi ptr [ %.mux280, %.thread.i ], [ %i.fo, %.lr.ph131.preheader.i ] ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.187127.i, i64 24
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !71 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.187127.i, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !69
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fu ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41 ; 2 uses
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 28
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !39
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %.preheader106.i.preheader, label %.loopexit107.i

.preheader106.i.preheader:                        ; preds = %.lr.ph131.i
  %i.gc = add i32 %i.fr, -1                       ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %.thread.i, label %.lr.ph279, !prof !96

.preheader106.i:                                  ; preds = %.lr.ph279
  %i.ge = add i32 %i.gg, -1                       ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.thread.i, label %.lr.ph279, !prof !97

.lr.ph279:                                        ; preds = %.preheader106.i.preheader, %.preheader106.i
  %i.gg = phi i32 [ %i.ge, %.preheader106.i ], [ %i.gc, %.preheader106.i.preheader ] ; 2 uses
  %.079.i278 = phi ptr [ %i.gh, %.preheader106.i ], [ %i.fv, %.preheader106.i.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.079.i278, i64 4 ; 3 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !41 ; 2 uses
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 28
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !39
  %.not96.i = icmp eq i32 %i.gm, 0
  br i1 %.not96.i, label %.preheader106.i, label %.loopexit107.i

.loopexit107.i:                                   ; preds = %.lr.ph279, %.lr.ph131.i
  %.184.i = phi i32 [ %i.fr, %.lr.ph131.i ], [ %i.gg, %.lr.ph279 ]
  %.281.i = phi ptr [ %i.fv, %.lr.ph131.i ], [ %i.gh, %.lr.ph279 ]
  %.277.i = phi i32 [ %i.fw, %.lr.ph131.i ], [ %i.gi, %.lr.ph279 ] ; 2 uses
  %i.gn = add i32 %.184.i, -1                     ; 2 uses
  %.not97121.i = icmp eq i32 %i.gn, 0
  br i1 %.not97121.i, label %._crit_edge.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.loopexit107.i, %.loopexit105.i
  %i.go = phi i32 [ %i.hh, %.loopexit105.i ], [ %i.gn, %.loopexit107.i ]
  %.378123.i = phi i32 [ %.6.i, %.loopexit105.i ], [ %.277.i, %.loopexit107.i ] ; 3 uses
  %.382122.i = phi ptr [ %i.gp, %.loopexit105.i ], [ %.281.i, %.loopexit107.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.382122.i, i64 4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !41 ; 3 uses
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 28
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !39
  %.not99.i = icmp eq i32 %i.gu, 0
  %.not100117.i = icmp eq i32 %.378123.i, %i.gq
  %or.cond.i = select i1 %.not99.i, i1 true, i1 %.not100117.i
  br i1 %or.cond.i, label %.loopexit105.i, label %.preheader103.i

.loopexit.i:                                      ; preds = %.lr.ph115.i, %.preheader.i
  %.5.lcssa.i = phi i32 [ %.4118.i, %.preheader.i ], [ %i.hf, %.lr.ph115.i ] ; 2 uses
  %.not100.i = icmp eq i32 %.5.lcssa.i, %.174.lcssa.i
  br i1 %.not100.i, label %.loopexit105.i, label %.preheader103.i, !llvm.loop !108

.preheader103.i:                                  ; preds = %.lr.ph124.i, %.loopexit.i
  %.073119.i = phi i32 [ %.174.lcssa.i, %.loopexit.i ], [ %i.gq, %.lr.ph124.i ] ; 3 uses
  %.4118.i = phi i32 [ %.5.lcssa.i, %.loopexit.i ], [ %.378123.i, %.lr.ph124.i ] ; 5 uses
  %i.gv = icmp ugt i32 %.073119.i, %.4118.i
  br i1 %i.gv, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader103.i
  %.174.lcssa.i = phi i32 [ %.073119.i, %.preheader103.i ], [ %i.ha, %.lr.ph.i ] ; 5 uses
  %i.gw = icmp ugt i32 %.4118.i, %.174.lcssa.i
  br i1 %i.gw, label %.lr.ph115.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader103.i, %.lr.ph.i
  %.174113.i = phi i32 [ %i.ha, %.lr.ph.i ], [ %.073119.i, %.preheader103.i ]
  %i.gx = zext i32 %.174113.i to i64
  %i.gy = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 28
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !39 ; 3 uses
  %i.hb = icmp ugt i32 %i.ha, %.4118.i
  br i1 %i.hb, label %.lr.ph.i, label %.preheader.i, !llvm.loop !109

.lr.ph115.i:                                      ; preds = %.preheader.i, %.lr.ph115.i
  %.5114.i = phi i32 [ %i.hf, %.lr.ph115.i ], [ %.4118.i, %.preheader.i ]
  %i.hc = zext i32 %.5114.i to i64
  %i.hd = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 28
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !39 ; 3 uses
  %i.hg = icmp ugt i32 %i.hf, %.174.lcssa.i
  br i1 %i.hg, label %.lr.ph115.i, label %.loopexit.i, !llvm.loop !110

.loopexit105.i:                                   ; preds = %.loopexit.i, %.lr.ph124.i
  %.6.i = phi i32 [ %.378123.i, %.lr.ph124.i ], [ %.174.lcssa.i, %.loopexit.i ] ; 2 uses
  %i.hh = add i32 %i.go, -1                       ; 2 uses
  %.not97.i = icmp eq i32 %i.hh, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph124.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %.loopexit105.i, %.loopexit107.i
  %.378.lcssa.i = phi i32 [ %.277.i, %.loopexit107.i ], [ %.6.i, %.loopexit105.i ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.187127.i, i64 28 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !39
  %.not98.i = icmp eq i32 %i.hj, %.378.lcssa.i
  br i1 %.not98.i, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  store i32 %.378.lcssa.i, ptr %i.hi, align 4, !tbaa !39
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader106.i, %.preheader106.i.preheader, %bb.o, %._crit_edge.i
  %.2.i = phi i1 [ %.0129.i, %._crit_edge.i ], [ true, %bb.o ], [ %.0129.i, %.preheader106.i.preheader ], [ %.0129.i, %.preheader106.i ] ; 2 uses
  %i.hk = add nuw i32 %.171128.i, 1               ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.187127.i, i64 52
  %exitcond152.i = icmp ne i32 %i.hk, %umax151.i  ; 4 uses
  %brmerge = select i1 %exitcond152.i, i1 true, i1 %.2.i
  %.2.i.mux = select i1 %exitcond152.i, i1 %.2.i, i1 false
  %.mux = select i1 %exitcond152.i, i32 %i.hk, i32 2
  %.mux280 = select i1 %exitcond152.i, ptr %i.hl, ptr %i.fo
  br i1 %brmerge, label %.lr.ph131.i, label %.split135.us.i, !llvm.loop !112

.split135.us.i:                                   ; preds = %.thread.i
  store i32 0, ptr %i.fn, align 4, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ex, i64 84
  store i32 0, ptr %i.hm, align 4, !tbaa !39
  %i.hn = add i32 %umax151.i, -2                  ; 2 uses
  %i.ho = add i32 %umax151.i, -3
  %xtraiter307 = and i32 %i.hn, 3                 ; 3 uses
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.lr.ph140.i.epil.preheader, label %.split135.us.i.new

.split135.us.i.new:                               ; preds = %.split135.us.i
  %unroll_iter311 = and i32 %i.hn, -4
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i, %.split135.us.i.new
  %.288137.i = phi ptr [ %i.fo, %.split135.us.i.new ], [ %i.iw, %.lr.ph140.i ] ; 9 uses
  %niter312 = phi i32 [ 0, %.split135.us.i.new ], [ %niter312.next.3, %.lr.ph140.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.288137.i, i64 28
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !39
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !39
  %i.hw = add i32 %i.hv, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.288137.i, i64 32
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !39
  %i.hy = getelementptr inbounds nuw i8, ptr %.288137.i, i64 80
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !39
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !39
  %i.ie = add i32 %i.id, 1
  %i.if = getelementptr inbounds nuw i8, ptr %.288137.i, i64 84
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !39
  %i.ig = getelementptr inbounds nuw i8, ptr %.288137.i, i64 132
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !39
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !39
  %i.im = add i32 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %.288137.i, i64 136
  store i32 %i.im, ptr %i.in, align 4, !tbaa !39
  %i.io = getelementptr inbounds nuw i8, ptr %.288137.i, i64 184
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !39
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load i32, ptr %i.is, align 4, !tbaa !39
  %i.iu = add i32 %i.it, 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.288137.i, i64 188
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !39
  %i.iw = getelementptr inbounds nuw i8, ptr %.288137.i, i64 208 ; 2 uses
  %niter312.next.3 = add i32 %niter312, 4         ; 2 uses
  %niter312.ncmp.3 = icmp eq i32 %niter312.next.3, %unroll_iter311
  br i1 %niter312.ncmp.3, label %.lr.ph145.preheader.i.unr-lcssa, label %.lr.ph140.i, !llvm.loop !113

.lr.ph145.preheader.i.unr-lcssa:                  ; preds = %.lr.ph140.i
  %lcmp.mod309.not = icmp eq i32 %xtraiter307, 0
  br i1 %lcmp.mod309.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil.preheader

.lr.ph140.i.epil.preheader:                       ; preds = %.lr.ph145.preheader.i.unr-lcssa, %.split135.us.i
  %.288137.i.epil.init = phi ptr [ %i.fo, %.split135.us.i ], [ %i.iw, %.lr.ph145.preheader.i.unr-lcssa ]
  %lcmp.mod310 = icmp ne i32 %xtraiter307, 0
  call void @llvm.assume(i1 %lcmp.mod310)
  br label %.lr.ph140.i.epil

.lr.ph140.i.epil:                                 ; preds = %.lr.ph140.i.epil, %.lr.ph140.i.epil.preheader
  %.288137.i.epil = phi ptr [ %i.jf, %.lr.ph140.i.epil ], [ %.288137.i.epil.init, %.lr.ph140.i.epil.preheader ] ; 3 uses
  %epil.iter308 = phi i32 [ %epil.iter308.next, %.lr.ph140.i.epil ], [ 0, %.lr.ph140.i.epil.preheader ]
  %i.ix = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 28
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !39
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !39
  %i.jd = add i32 %i.jc, 1
  %i.je = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 32
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !39
  %i.jf = getelementptr inbounds nuw i8, ptr %.288137.i.epil, i64 52
  %epil.iter308.next = add i32 %epil.iter308, 1   ; 2 uses
  %epil.iter308.cmp.not = icmp eq i32 %epil.iter308.next, %xtraiter307
  br i1 %epil.iter308.cmp.not, label %.lr.ph145.preheader.i, label %.lr.ph140.i.epil, !llvm.loop !114

.lr.ph145.preheader.i:                            ; preds = %.lr.ph140.i.epil, %.lr.ph145.preheader.i.unr-lcssa
  %i.jg = zext i32 %i.ez to i64
  %i.jh = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.jg
  br label %.lr.ph145.i

.lr.ph145.i:                                      ; preds = %.lr.ph145.i, %.lr.ph145.preheader.i
  %.3143.i = phi i32 [ %i.jp, %.lr.ph145.i ], [ %i.ez, %.lr.ph145.preheader.i ] ; 2 uses
  %.389142.i = phi ptr [ %i.jq, %.lr.ph145.i ], [ %i.jh, %.lr.ph145.preheader.i ] ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.389142.i, i64 28
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !39
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [52 x i8], ptr %i.ex, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 36 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !115
  %i.jo = getelementptr inbounds nuw i8, ptr %.389142.i, i64 40
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !116
  store i32 %.3143.i, ptr %i.jm, align 4, !tbaa !115
  %i.jp = add i32 %.3143.i, -1                    ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.389142.i, i64 -52
  %i.jr = icmp ugt i32 %i.jp, 1
  br i1 %i.jr, label %.lr.ph145.i, label %ir_build_dominators_tree_iterative.exit, !llvm.loop !117

.lr.ph189.preheader:                              ; preds = %bb.k, %._crit_edge181
  %i.js = zext i32 %i.p to i64
  %i.jt = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.js
  br label %.lr.ph189

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %.2109188 = phi ptr [ %i.kc, %.lr.ph189 ], [ %i.jt, %.lr.ph189.preheader ] ; 3 uses
  %.2112187 = phi i32 [ %i.kb, %.lr.ph189 ], [ %i.p, %.lr.ph189.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.2109188, i64 28
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [52 x i8], ptr %i.m, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 36 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !115
  %i.ka = getelementptr inbounds nuw i8, ptr %.2109188, i64 40
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !116
  store i32 %.2112187, ptr %i.jy, align 4, !tbaa !115
  %i.kb = add i32 %.2112187, -1                   ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %.2109188, i64 -52
  %i.kd = icmp ugt i32 %i.kb, 1
  br i1 %i.kd, label %.lr.ph189, label %._crit_edge190, !llvm.loop !118

._crit_edge190:                                   ; preds = %.lr.ph189, %.critedge135.thread
  %i.ke = phi ptr [ %i.f, %.critedge135.thread ], [ %i.cu, %.lr.ph189 ]
  call void @_efree(ptr noundef %i.ke) #17
  br label %ir_build_dominators_tree_iterative.exit

ir_build_dominators_tree_iterative.exit:          ; preds = %.lr.ph145.i, %.split135.us.thread.i, %.critedge, %._crit_edge190
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @ir_build_dominators_tree_slow(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
ir_array_init.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %i.c = add i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @_emalloc(i64 noundef %i.e) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !12   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !62
  %i.n = and i32 %i.m, -33554433
  store i32 %i.n, ptr %i.l, align 4, !tbaa !62
  %i.o = add i32 %i.k, 1                          ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @_emalloc(i64 noundef %i.q) #19 ; 4 uses
  %i.s = add i32 %i.k, 64
  %i.t = lshr i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = tail call noalias ptr @_ecalloc(i64 noundef %i.u, i64 noundef 8) #18 ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !40   ; 2 uses
  %i.x = and i64 %i.w, 2
  %.not239.not = icmp eq i64 %i.x, 0
  br i1 %.not239.not, label %.preheader247.preheader, label %._crit_edge

.preheader247.preheader:                          ; preds = %ir_array_init.exit
  %i.y = or disjoint i64 %i.w, 2
  store i64 %i.y, ptr %i.v, align 8, !tbaa !40
  store i32 1, ptr %i.r, align 4, !tbaa !41
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.preheader, %.thread
  %.0178281 = phi i32 [ %i.cb, %.thread ], [ 1, %.preheader247.preheader ] ; 3 uses
  %.sroa.11210.0280 = phi i32 [ %i.cd, %.thread ], [ 1, %.preheader247.preheader ] ; 3 uses
  %i.z = add i32 %.sroa.11210.0280, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !41 ; 3 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [52 x i8], ptr %i.h, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39 ; 2 uses
  %i.aj = sub i32 %i.ag, %i.ai                    ; 2 uses
  %.not202274 = icmp eq i32 %i.aj, 0
  br i1 %.not202274, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader247, %bb.b
  %i.ak = phi i32 [ %i.bv, %bb.b ], [ %i.aj, %.preheader247 ]
  %i.al = phi i32 [ %i.bu, %bb.b ], [ %i.ai, %.preheader247 ]
  %i.am = phi ptr [ %i.bt, %bb.b ], [ %i.ah, %.preheader247 ] ; 2 uses
  %i.an = phi ptr [ %i.br, %bb.b ], [ %i.af, %.preheader247 ]
  %i.ao = phi ptr [ %i.bq, %bb.b ], [ %i.ae, %.preheader247 ] ; 2 uses
  %i.ap = phi i32 [ %i.bo, %bb.b ], [ %i.ac, %.preheader247 ]
  %.sroa.11210.1275 = phi i32 [ %i.bj, %bb.b ], [ %.sroa.11210.0280, %.preheader247 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !67
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.as
  %i.au = zext i32 %i.al to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %ir_worklist_push.exit
  %.0169273 = phi ptr [ %i.av, %.lr.ph ], [ %i.bf, %ir_worklist_push.exit ] ; 2 uses
  %.0170272 = phi i32 [ %i.ak, %.lr.ph ], [ %i.bg, %ir_worklist_push.exit ] ; 2 uses
  %i.aw = load i32, ptr %.0169273, align 4, !tbaa !41 ; 3 uses
  %i.ax = lshr i32 %i.aw, 6
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !40 ; 2 uses
  %i.bb = and i32 %i.aw, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc                    ; 2 uses
  %i.be = and i64 %i.bd, %i.ba
  %.not240 = icmp eq i64 %i.be, 0
  br i1 %.not240, label %bb.b, label %ir_worklist_push.exit

ir_worklist_push.exit:                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.0169273, i64 4
  %i.bg = add i32 %.0170272, -1                   ; 2 uses
  %.not203 = icmp eq i32 %i.bg, 0
  br i1 %.not203, label %.thread, label %bb.a, !llvm.loop !119

bb.b:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ay
  %i.bi = or i64 %i.bd, %i.ba
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !40
  %i.bj = add i32 %.sroa.11210.1275, 1            ; 2 uses
  %i.bk = zext i32 %.sroa.11210.1275 to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bk ; 2 uses
  store i32 %i.aw, ptr %i.bl, align 4, !tbaa !41
  %i.bm = load i32, ptr %i.an, align 4, !tbaa !68
  %reass.sub = sub i32 %i.bm, %.0170272
  %i.bn = add i32 %reass.sub, 1
  store i32 %i.bn, ptr %i.am, align 4, !tbaa !39
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !41 ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [52 x i8], ptr %i.h, i64 %i.bp ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !68
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39 ; 2 uses
  %i.bv = sub i32 %i.bs, %i.bu                    ; 2 uses
  %.not202 = icmp eq i32 %i.bv, 0
  br i1 %.not202, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.b, %ir_worklist_push.exit, %.preheader247
  %.sroa.11210.1270 = phi i32 [ %.sroa.11210.1275, %ir_worklist_push.exit ], [ %.sroa.11210.0280, %.preheader247 ], [ %i.bj, %bb.b ]
end_hunk_1
begin_hunk_2_@ir_find_loops:bb.a
  %i.hr = phi i32 [ %i.iy, %ir_worklist_push.exit ], [ %i.hd, %.lr.ph318.preheader ] ; 5 uses
  %i.hs = load i32, ptr %.0193315, align 4, !tbaa !41 ; 4 uses
  %i.ht = lshr i32 %i.hs, 6
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.hu ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !40 ; 2 uses
  %i.hx = and i32 %i.hs, 63
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy                    ; 2 uses
  %i.ia = and i64 %i.hz, %i.hw
  %.not268 = icmp eq i64 %i.ia, 0
  br i1 %.not268, label %bb.ab, label %ir_worklist_push.exit

bb.ab:                                            ; preds = %.lr.ph318
  %i.ib = zext i32 %i.hs to i64
  %i.ic = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !140 ; 3 uses
  %.not241 = icmp eq i32 %i.ie, 0
  br i1 %.not241, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = icmp eq i32 %i.ie, %i.hg
  br i1 %i.if, label %ir_worklist_push.exit, label %.preheader

.preheader:                                       ; preds = %bb.ac, %.preheader
  %i.ig = phi i32 [ %i.ik, %.preheader ], [ %i.ie, %bb.ac ] ; 4 uses
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 44
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !140 ; 2 uses
  %.not242 = icmp eq i32 %i.ik, 0
  br i1 %.not242, label %bb.ad, label %.preheader, !llvm.loop !141

bb.ad:                                            ; preds = %.preheader
  %i.il = lshr i32 %i.ig, 6
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !40 ; 2 uses
  %i.ip = and i32 %i.ig, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl nuw i64 1, %i.iq                    ; 2 uses
  %i.is = and i64 %i.io, %i.ir
  %.not269 = icmp eq i64 %i.is, 0
  br i1 %.not269, label %bb.ae, label %ir_worklist_push.exit

bb.ae:                                            ; preds = %bb.ad
  %i.it = or i64 %i.io, %i.ir
  store i64 %i.it, ptr %i.in, align 8, !tbaa !40
  br label %ir_worklist_push.exit.sink.split

bb.af:                                            ; preds = %bb.ab
  %i.iu = or i64 %i.hz, %i.hw
  store i64 %i.iu, ptr %i.hv, align 8, !tbaa !40
  br label %ir_worklist_push.exit.sink.split

ir_worklist_push.exit.sink.split:                 ; preds = %bb.af, %bb.ae
  %.lcssa395.sink = phi i32 [ %i.ig, %bb.ae ], [ %i.hs, %bb.af ]
  %i.iv = add i32 %i.hr, 1
  %i.iw = zext i32 %i.hr to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.iw
  store i32 %.lcssa395.sink, ptr %i.ix, align 4, !tbaa !41
  br label %ir_worklist_push.exit

ir_worklist_push.exit:                            ; preds = %ir_worklist_push.exit.sink.split, %bb.ad, %.lr.ph318, %bb.ac
  %i.iy = phi i32 [ %i.hr, %bb.ac ], [ %i.hr, %bb.ad ], [ %i.hr, %.lr.ph318 ], [ %i.iv, %ir_worklist_push.exit.sink.split ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0193315, i64 4
  %i.ja = add i32 %.0192316, -1                   ; 2 uses
  %.not240 = icmp eq i32 %i.ja, 0
  br i1 %.not240, label %.loopexit271, label %.lr.ph318, !llvm.loop !142

.loopexit271:                                     ; preds = %ir_worklist_push.exit, %bb.aa, %bb.x
  %.lcssa313322 = phi i32 [ %i.hd, %bb.x ], [ %i.hd, %bb.aa ], [ %i.iy, %ir_worklist_push.exit ] ; 2 uses
  %.not237 = icmp eq i32 %.lcssa313322, 0
  br i1 %.not237, label %.sink.split, label %bb.x, !llvm.loop !143

.sink.split:                                      ; preds = %.loopexit271, %ir_array_set.exit
  %.3.ph = phi i32 [ %i.ga, %ir_array_set.exit ], [ %.1197, %.loopexit271 ]
  store i32 0, ptr %i.o, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %ir_worklist_push.exit247, %bb.j
  %.3 = phi i32 [ %.1197, %bb.j ], [ %.1197, %ir_worklist_push.exit247 ], [ %.3.ph, %.sink.split ]
  %.wide = icmp ugt i64 %i.di, 1
  br i1 %.wide, label %bb.h, label %._crit_edge332, !llvm.loop !144

._crit_edge332:                                   ; preds = %bb.ag
  %.pre373 = load i32, ptr %i.df, align 8, !tbaa !92
  %i.jb = icmp eq i32 %.pre373, 0
  br i1 %i.jb, label %._crit_edge332.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge332
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jd = load ptr, ptr %2, align 8, !tbaa !90
  call void @_efree(ptr noundef %i.jd) #17
  store ptr null, ptr %2, align 8, !tbaa !90
  store i32 0, ptr %i.jc, align 8, !tbaa !92
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.je, align 8, !tbaa !93
  br label %._crit_edge332.thread

._crit_edge332.thread:                            ; preds = %bb.g, %bb.ah, %._crit_edge332
  %i.jf = load i32, ptr %i.e, align 4, !tbaa !62
  %i.jg = and i32 %i.jf, 1
  %.not227 = icmp eq i32 %i.jg, 0
  br i1 %.not227, label %.loopexit270, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge332.thread
  %i.jh = load i32, ptr %i.h, align 4, !tbaa !12
  %i.ji = add i32 %i.jh, 1                        ; 2 uses
  %i.jj = icmp ugt i32 %i.ji, 1
  br i1 %i.jj, label %.lr.ph336.preheader, label %.loopexit270

.lr.ph336.preheader:                              ; preds = %bb.ai
  %wide.trip.count369 = zext i32 %i.ji to i64
  br label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %.loopexit
  %indvars.iv366 = phi i64 [ 1, %.lr.ph336.preheader ], [ %indvars.iv.next367, %.loopexit ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv366
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !41
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jm ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !140 ; 2 uses
  %.not228 = icmp eq i32 %i.jp, 0
  br i1 %.not228, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph336
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !39
  %i.ju = load i32, ptr %i.jn, align 4, !tbaa !70 ; 2 uses
  %i.jv = lshr i32 %i.ju, 3
  %i.jw = and i32 %i.jv, 1
  %spec.select = add i32 %i.jw, %i.jt             ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  store i32 %spec.select, ptr %i.jx, align 4, !tbaa !39
  %i.jy = and i32 %i.ju, 516
  %.not230 = icmp eq i32 %i.jy, 0
  br i1 %.not230, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jz = load i32, ptr %i.jr, align 4, !tbaa !70
  %i.ka = or i32 %i.jz, 512
  store i32 %i.ka, ptr %i.jr, align 4, !tbaa !70
  %i.kb = icmp ugt i32 %spec.select, 1
  br i1 %i.kb, label %.peel.begin, label %.loopexit

.peel.begin:                                      ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !140
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ke ; 2 uses
  %.promoted333 = load i32, ptr %i.kf, align 4, !tbaa !70 ; 2 uses
  %i.kg = and i32 %.promoted333, 512
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.peel.begin
  %i.ki = or disjoint i32 %.promoted333, 512
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !70
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.peel.begin, %bb.aj, %bb.ak, %.lr.ph336
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.loopexit270, label %.lr.ph336, !llvm.loop !145

.loopexit270:                                     ; preds = %.loopexit, %bb.ai, %._crit_edge332.thread
  call void @_efree(ptr noundef %i.z) #17
  %i.kj = load ptr, ptr %1, align 8, !tbaa !90
  call void @_efree(ptr noundef %i.kj) #17
  %i.kk = load ptr, ptr %i.t, align 8, !tbaa !130
  call void @_efree(ptr noundef %i.kk) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %.loopexit270
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ir_collect_irreducible_loops(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.loopexit122

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !146    ; 3 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge, %bb.b
  %.0102128 = phi i32 [ 1, %bb.b ], [ %7, %.critedge ] ; 3 uses
  %.phi.trans.insert = zext i32 %.0102128 to i64
  %.phi.trans.insert138 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert138, align 4, !tbaa !41 ; 2 uses
  %i.i = shl nsw i32 %.pre, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0101126 = phi i32 [ %4, %bb.c ], [ %.0102128, %.lr.ph.preheader ] ; 2 uses
  %4 = add i32 %.0101126, -1                      ; 3 uses
  %5 = zext i32 %4 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %5 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41   ; 2 uses
  %i.n = shl nsw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = load i32, ptr %i.k, align 4, !tbaa !41
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %6 = zext i32 %.0101126 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %6
  store i32 %i.m, ptr %i.t, align 4, !tbaa !41
  store i32 %.pre, ptr %i.l, align 4, !tbaa !41
  %.not112 = icmp eq i32 %4, 0
  br i1 %.not112, label %.critedge, label %.lr.ph, !llvm.loop !147

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %7 = add nuw i32 %.0102128, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %7, %i.f
  br i1 %exitcond.not, label %.loopexit122.loopexit, label %.lr.ph.preheader, !llvm.loop !148

.loopexit122.loopexit:                            ; preds = %.critedge
  %.pre139 = load i32, ptr %i.e, align 8, !tbaa !93
  br label %.loopexit122

.loopexit122:                                     ; preds = %.loopexit122.loopexit, %bb.a
  %i.u = phi i32 [ %.pre139, %.loopexit122.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.not136 = icmp eq i32 %i.u, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph137

.lr.ph137:                                        ; preds = %.loopexit122
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph137, %.loopexit120
  %i.y = phi i32 [ %i.u, %.lr.ph137 ], [ %i.fu, %.loopexit120 ]
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !93
  %i.aa = load ptr, ptr %3, align 8, !tbaa !90
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41 ; 5 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ae ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %.not105 = icmp eq i32 %i.ah, 0
  br i1 %.not105, label %bb.e, label %.loopexit120

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !70
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !70
  store i32 1, ptr %i.ag, align 4, !tbaa !39
  %i.ak = load ptr, ptr %0, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !39
  %i.aq = icmp eq i8 %i.ap, 107
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 108, ptr %i.ao, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !130
  %i.as = load i32, ptr %i.w, align 8, !tbaa !92
  %i.at = add i32 %i.as, 63
  %i.au = lshr i32 %i.at, 3
  %i.av = and i32 %i.au, 536870904
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !130 ; 2 uses
  %i.ay = and i32 %i.ad, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i32 %i.ad, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.bf = or i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !71
  %i.bm = shl i32 %i.ad, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bp = or disjoint i32 %i.bm, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %ir_worklist_push.exit114, %bb.g
  %.0100 = phi ptr [ %i.bj, %bb.g ], [ %i.ct, %ir_worklist_push.exit114 ] ; 2 uses
  %.099 = phi i32 [ %i.bl, %bb.g ], [ %i.cu, %ir_worklist_push.exit114 ]
  %i.bs = load i32, ptr %.0100, align 4, !tbaa !41 ; 4 uses
  %i.bt = shl i32 %i.bs, 1                        ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %i.bx = load i32, ptr %i.bo, align 4, !tbaa !41
  %i.by = icmp ugt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.i, label %ir_worklist_push.exit114

bb.i:                                             ; preds = %bb.h
  %i.bz = or disjoint i32 %i.bt, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !41
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !41
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %ir_worklist_push.exit114

bb.j:                                             ; preds = %bb.i
  %i.cf = lshr i32 %i.bs, 6
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !40 ; 2 uses
  %i.cj = and i32 %i.bs, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %i.cm = and i64 %i.ci, %i.cl
  %.not115 = icmp eq i64 %i.cm, 0
  br i1 %.not115, label %bb.k, label %ir_worklist_push.exit114

bb.k:                                             ; preds = %bb.j
  %i.cn = or i64 %i.ci, %i.cl
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !40
  %i.co = load i32, ptr %i.x, align 8, !tbaa !93  ; 2 uses
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.x, align 8, !tbaa !93
  %i.cq = load ptr, ptr %2, align 8, !tbaa !90
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 %i.bs, ptr %i.cs, align 4, !tbaa !41
  br label %ir_worklist_push.exit114

ir_worklist_push.exit114:                         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %.0100, i64 4
  %i.cu = add i32 %.099, -1                       ; 2 uses
  %.not106 = icmp eq i32 %i.cu, 0
  br i1 %.not106, label %.preheader119, label %bb.h, !llvm.loop !149

.preheader119:                                    ; preds = %ir_worklist_push.exit114
  %i.cv = load i32, ptr %i.x, align 8, !tbaa !93  ; 2 uses
  %.not107134 = icmp eq i32 %i.cv, 0
  br i1 %.not107134, label %.loopexit120, label %.lr.ph135

.loopexit118.loopexit:                            ; preds = %ir_worklist_push.exit
  %.pre140 = load i32, ptr %i.x, align 8, !tbaa !93
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %bb.m
  %i.cw = phi i32 [ %.pre140, %.loopexit118.loopexit ], [ %i.cy, %bb.m ] ; 2 uses
  %.not107 = icmp eq i32 %i.cw, 0
  br i1 %.not107, label %.loopexit120, label %.lr.ph135, !llvm.loop !150

.lr.ph135:                                        ; preds = %.preheader119, %.loopexit118
  %i.cx = phi i32 [ %i.cw, %.loopexit118 ], [ %i.cv, %.preheader119 ]
  %i.cy = add i32 %i.cx, -1                       ; 3 uses
  store i32 %i.cy, ptr %i.x, align 8, !tbaa !93
  %i.cz = load ptr, ptr %2, align 8, !tbaa !90
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.dd ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 44 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !140
  %.not108 = icmp eq i32 %i.dg, 0
  br i1 %.not108, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph135
  store i32 %i.ad, ptr %i.df, align 4, !tbaa !140
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph135
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !71 ; 2 uses
  %.not109130 = icmp eq i32 %i.di, 0
  br i1 %.not109130, label %.loopexit118, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !69
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph133, %ir_worklist_push.exit
  %.097132 = phi i32 [ %i.di, %.lr.ph133 ], [ %i.ft, %ir_worklist_push.exit ]
  %.098131 = phi ptr [ %i.dm, %.lr.ph133 ], [ %i.fs, %ir_worklist_push.exit ] ; 2 uses
  %i.do = load i32, ptr %.098131, align 4, !tbaa !41 ; 4 uses
  %i.dp = load ptr, ptr %i.v, align 8, !tbaa !130 ; 2 uses
  %i.dq = lshr i32 %i.do, 6
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.du = and i32 %i.do, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.dt
  %.not116 = icmp eq i64 %i.dx, 0
  br i1 %.not116, label %bb.o, label %ir_worklist_push.exit

bb.o:                                             ; preds = %bb.n
  %i.dy = zext i32 %i.do to i64
  %i.dz = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 44
end_hunk_2
