inline.NumInlined: 83
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i64 -46, 1) i64 @_ZN11duckdb_zstd20FSE_buildDTable_wkspEPjPKsjjPvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -46, 1) i64 @_ZN11duckdb_zstdL24FSE_buildDTable_internalEPjPKsjjPvm(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.e = add i32 %2, 1                            ; 4 uses
  %i.f = shl nuw i32 1, %3                        ; 7 uses
  %i.g = add i32 %i.f, -1                         ; 7 uses
  %i.h = zext i32 %i.e to i64                     ; 3 uses
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = zext nneg i32 %3 to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = add nuw i64 %i.k, 8
  %i.m = add nuw i64 %i.l, %i.i
  %i.n = icmp ugt i64 %i.m, %5
  %i.o = icmp ugt i32 %2, 255
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp ugt i32 %3, 12
  br i1 %i.p, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = trunc nuw nsw i32 %3 to i16
  %sext = shl nuw nsw i32 32768, %3
  %i.r = lshr exact i32 %sext, 16                 ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.h, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 5 uses
  %.0113141 = phi i32 [ %i.g, %.lr.ph.new ], [ %.1114.1, %bb.i ] ; 3 uses
  %.sroa.4.0140 = phi i16 [ 1, %.lr.ph.new ], [ %.sroa.4.2.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.u = load i16, ptr %i.t, align 2, !tbaa !7    ; 3 uses
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = trunc i64 %indvars.iv to i8
  %i.x = add i32 %.0113141, -1
  %i.y = zext i32 %.0113141 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i8 %i.w, ptr %i.aa, align 2, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = sext i16 %i.u to i32
  %.not135 = icmp sgt i32 %i.r, %i.ab
  %spec.select = select i1 %.not135, i16 %.sroa.4.0140, i16 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i16 [ 1, %bb.d ], [ %i.u, %bb.e ]
  %.sroa.4.2 = phi i16 [ %.sroa.4.0140, %bb.d ], [ %spec.select, %bb.e ] ; 2 uses
  %.1114 = phi i32 [ %i.x, %bb.d ], [ %.0113141, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink, ptr %i.ac, align 2, !tbaa !7
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !7  ; 3 uses
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i16 %i.ae to i32
  %.not135.1 = icmp sgt i32 %i.r, %i.ag
  %spec.select.1 = select i1 %.not135.1, i16 %.sroa.4.2, i16 0
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ah = trunc i64 %indvars.iv.next to i8
  %i.ai = add i32 %.1114, -1
  %i.aj = zext i32 %.1114 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  store i8 %i.ah, ptr %i.al, align 2, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.1 = phi i16 [ 1, %bb.h ], [ %i.ae, %bb.g ]
  %.sroa.4.2.1 = phi i16 [ %.sroa.4.2, %bb.h ], [ %spec.select.1, %bb.g ] ; 3 uses
  %.1114.1 = phi i32 [ %i.ai, %bb.h ], [ %.1114, %bb.g ] ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  store i16 %.sink.1, ptr %i.am, align 2, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !11

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.0113141.epil.init = phi i32 [ %i.g, %.lr.ph ], [ %.1114.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %.sroa.4.0140.epil.init = phi i16 [ 1, %.lr.ph ], [ %.sroa.4.2.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !7  ; 3 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.aq = sext i16 %i.ao to i32
  %.not135.epil = icmp sgt i32 %i.r, %i.aq
  %spec.select.epil = select i1 %.not135.epil, i16 %.sroa.4.0140.epil.init, i16 0
  br label %._crit_edge.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.ar = trunc i64 %indvars.iv.epil.init to i8
  %i.as = add i32 %.0113141.epil.init, -1
  %i.at = zext i32 %.0113141.epil.init to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 %i.ar, ptr %i.av, align 2, !tbaa !9
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.k, %bb.j
  %.sink.epil = phi i16 [ 1, %bb.k ], [ %i.ao, %bb.j ]
  %.sroa.4.2.epil = phi i16 [ %.sroa.4.0140.epil.init, %bb.k ], [ %spec.select.epil, %bb.j ]
  %.1114.epil = phi i32 [ %i.as, %bb.k ], [ %.0113141.epil.init, %bb.j ]
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.epil.init
  store i16 %.sink.epil, ptr %i.aw, align 2, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %.sroa.4.2.lcssa = phi i16 [ %.sroa.4.2.1, %._crit_edge.unr-lcssa ], [ %.sroa.4.2.epil, %._crit_edge.epilog-lcssa ]
  %.1114.lcssa = phi i32 [ %.1114.1, %._crit_edge.unr-lcssa ], [ %.1114.epil, %._crit_edge.epilog-lcssa ] ; 4 uses
  store i16 %i.q, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4.2.lcssa, ptr %.sroa.4.0..sroa_idx, align 2
  %i.ax = icmp eq i32 %.1114.lcssa, %i.g
  %i.ay = lshr i32 %i.f, 1                        ; 2 uses
  br i1 %i.ax, label %.lr.ph160.preheader, label %.preheader138.lr.ph

.lr.ph160.preheader:                              ; preds = %._crit_edge
  %i.az = zext nneg i32 %i.g to i64               ; 3 uses
  %i.ba = lshr i32 %i.f, 3
  %i.bb = add nuw nsw i32 %i.ba, 3
  %i.bc = add nuw nsw i32 %i.bb, %i.ay
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %wide.trip.count178 = zext nneg i32 %i.e to i64
  br label %.lr.ph160

.preheader136:                                    ; preds = %._crit_edge155
  %i.be = zext nneg i32 %i.f to i64               ; 2 uses
  %i.bf = shl nuw nsw i64 %i.bd, 1
  br label %.preheader

.lr.ph160:                                        ; preds = %.lr.ph160.preheader, %._crit_edge155
  %indvars.iv174 = phi i64 [ 0, %.lr.ph160.preheader ], [ %indvars.iv.next175, %._crit_edge155 ] ; 2 uses
  %.0123158 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.bz, %._crit_edge155 ] ; 2 uses
  %.0126157 = phi i64 [ 0, %.lr.ph160.preheader ], [ %i.ca, %._crit_edge155 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv174
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !7  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0123158 ; 3 uses
  store i64 %.0126157, ptr %i.bi, align 1, !tbaa !13
  %i.bj = icmp sgt i16 %i.bh, 8
  br i1 %i.bj, label %.lr.ph154.preheader, label %._crit_edge155

.lr.ph154.preheader:                              ; preds = %.lr.ph160
  %i.bk = zext nneg i16 %i.bh to i64              ; 2 uses
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 16)
  %i.bm = add nsw i64 %i.bl, -9                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 24
  br i1 %min.iters.check, label %.lr.ph154.preheader190, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph154.preheader
  %n.vec = and i64 %i.bo, 4611686018427387900     ; 3 uses
  %i.bp = shl i64 %n.vec, 3
  %i.bq = or disjoint i64 %i.bp, 8
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.0126157, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl nuw i64 %index, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store <2 x i64> %broadcast.splat, ptr %i.bt, align 1, !tbaa !13
  store <2 x i64> %broadcast.splat, ptr %i.bu, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %._crit_edge155, label %.lr.ph154.preheader190

.lr.ph154.preheader190:                           ; preds = %.lr.ph154.preheader, %middle.block
  %indvars.iv171.ph = phi i64 [ 8, %.lr.ph154.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader190, %.lr.ph154
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.lr.ph154 ], [ %indvars.iv171.ph, %.lr.ph154.preheader190 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv171
  store i64 %.0126157, ptr %i.bw, align 1, !tbaa !13
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 8 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv.next172, %i.bk
  br i1 %i.bx, label %.lr.ph154, label %._crit_edge155, !llvm.loop !18

._crit_edge155:                                   ; preds = %.lr.ph154, %middle.block, %.lr.ph160
  %i.by = sext i16 %i.bh to i64
  %i.bz = add i64 %.0123158, %i.by
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.ca = add i64 %.0126157, 72340172838076673
  %exitcond179.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count178
  br i1 %exitcond179.not, label %.preheader136, label %.lr.ph160, !llvm.loop !19

.preheader:                                       ; preds = %.preheader136, %.preheader
  %.0124163 = phi i64 [ 0, %.preheader136 ], [ %i.co, %.preheader ] ; 2 uses
  %.0125162 = phi i64 [ 0, %.preheader136 ], [ %i.cn, %.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0124163 ; 2 uses
  %i.cc = and i64 %.0125162, %i.az
  %i.cd = load i8, ptr %i.cb, align 1, !tbaa !20
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store i8 %i.cd, ptr %i.cf, align 2, !tbaa !9
  %i.cg = add nuw nsw i64 %.0125162, %i.bd
  %i.ch = and i64 %i.cg, %i.az
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !20
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  store i8 %i.cj, ptr %i.cl, align 2, !tbaa !9
  %i.cm = add nuw nsw i64 %.0125162, %i.bf
  %i.cn = and i64 %i.cm, %i.az
  %i.co = add nuw nsw i64 %.0124163, 2            ; 2 uses
  %i.cp = icmp samesign ult i64 %i.co, %i.be
  br i1 %i.cp, label %.preheader, label %.loopexit137, !llvm.loop !21

.preheader138.lr.ph:                              ; preds = %._crit_edge
  %i.cq = lshr i32 %i.f, 3
  %i.cr = add nuw nsw i32 %i.cq, 3
  %i.cs = add nuw nsw i32 %i.cr, %i.ay            ; 3 uses
  %wide.trip.count169 = zext nneg i32 %i.e to i64
  br label %.preheader138

.preheader138:                                    ; preds = %.preheader138.lr.ph, %._crit_edge146
  %indvars.iv166 = phi i64 [ 0, %.preheader138.lr.ph ], [ %indvars.iv.next167, %._crit_edge146 ] ; 3 uses
  %.0117149 = phi i32 [ 0, %.preheader138.lr.ph ], [ %.1118.lcssa, %._crit_edge146 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv166
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !7  ; 5 uses
  %i.cv = icmp sgt i16 %i.cu, 0
  br i1 %i.cv, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %.preheader138
  %i.cw = trunc i64 %indvars.iv166 to i8          ; 3 uses
  %i.cx = icmp eq i16 %i.cu, 1
  br i1 %i.cx, label %.epil.preheader194, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %i.cy = and i16 %i.cu, 32766
  %unroll_iter199 = zext nneg i16 %i.cy to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph145.new
  %.1118143 = phi i32 [ %.0117149, %.lr.ph145.new ], [ %.2.1, %bb.p ] ; 2 uses
  %niter200 = phi i32 [ 0, %.lr.ph145.new ], [ %niter200.next.1, %bb.p ]
  %i.cz = zext nneg i32 %.1118143 to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store i8 %i.cw, ptr %i.db, align 2, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.1118.pn = phi i32 [ %.1118143, %bb.l ], [ %.2, %bb.m ]
  %.pn = add nuw i32 %i.cs, %.1118.pn
  %.2 = and i32 %.pn, %i.g                        ; 4 uses
  %i.dc = icmp ugt i32 %.2, %.1114.lcssa
  br i1 %i.dc, label %bb.m, label %bb.n, !llvm.loop !22

bb.n:                                             ; preds = %bb.m
  %i.dd = zext nneg i32 %.2 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.cw, ptr %i.df, align 2, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %.1118.pn.1 = phi i32 [ %.2, %bb.n ], [ %.2.1, %bb.o ]
  %.pn.1 = add nuw i32 %i.cs, %.1118.pn.1
  %.2.1 = and i32 %.pn.1, %i.g                    ; 5 uses
  %i.dg = icmp ugt i32 %.2.1, %.1114.lcssa
  br i1 %i.dg, label %bb.o, label %bb.p, !llvm.loop !22

bb.p:                                             ; preds = %bb.o
  %niter200.next.1 = add i32 %niter200, 2         ; 2 uses
  %niter200.ncmp.1 = icmp eq i32 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1, label %._crit_edge146.loopexit.unr-lcssa, label %bb.l, !llvm.loop !23

._crit_edge146.loopexit.unr-lcssa:                ; preds = %bb.p
  %i.dh = and i16 %i.cu, 1
  %lcmp.mod196.not = icmp eq i16 %i.dh, 0
  br i1 %lcmp.mod196.not, label %._crit_edge146, label %.epil.preheader194

.epil.preheader194:                               ; preds = %._crit_edge146.loopexit.unr-lcssa, %.lr.ph145
  %.1118143.epil.init = phi i32 [ %.0117149, %.lr.ph145 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i16 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.di = zext nneg i32 %.1118143.epil.init to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %i.cw, ptr %i.dk, align 2, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader194
  %.1118.pn.epil = phi i32 [ %.1118143.epil.init, %.epil.preheader194 ], [ %.2.epil, %bb.q ]
  %.pn.epil = add nuw i32 %i.cs, %.1118.pn.epil
  %.2.epil = and i32 %.pn.epil, %i.g              ; 3 uses
  %i.dl = icmp ugt i32 %.2.epil, %.1114.lcssa
  br i1 %i.dl, label %bb.q, label %._crit_edge146, !llvm.loop !22

._crit_edge146:                                   ; preds = %._crit_edge146.loopexit.unr-lcssa, %bb.q, %.preheader138
  %.1118.lcssa = phi i32 [ %.0117149, %.preheader138 ], [ %.2.1, %._crit_edge146.loopexit.unr-lcssa ], [ %.2.epil, %bb.q ] ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._crit_edge150, label %.preheader138, !llvm.loop !24

._crit_edge150:                                   ; preds = %._crit_edge146
  %.not = icmp eq i32 %.1118.lcssa, 0
  br i1 %.not, label %._crit_edge150..loopexit137_crit_edge, label %.loopexit

._crit_edge150..loopexit137_crit_edge:            ; preds = %._crit_edge150
  %.pre = zext nneg i32 %i.f to i64
  br label %.loopexit137

.loopexit137:                                     ; preds = %.preheader, %._crit_edge150..loopexit137_crit_edge
  %wide.trip.count183.pre-phi = phi i64 [ %.pre, %._crit_edge150..loopexit137_crit_edge ], [ %i.be, %.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %.loopexit137, %bb.r
  %indvars.iv180 = phi i64 [ 0, %.loopexit137 ], [ %indvars.iv.next181, %bb.r ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv180 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !9
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dp ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !7  ; 2 uses
  %i.ds = add i16 %i.dr, 1
  store i16 %i.ds, ptr %i.dq, align 2, !tbaa !7
  %i.dt = zext i16 %i.dr to i32                   ; 2 uses
  %i.du = tail call noundef range(i32 16, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.dt, i1 true)
  %i.dv = xor i32 %i.du, 31
  %i.dw = sub nsw i32 %3, %i.dv                   ; 2 uses
  %i.dx = trunc nsw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !25
  %i.dz = and i32 %i.dw, 255
  %i.ea = shl i32 %i.dt, %i.dz
  %i.eb = sub i32 %i.ea, %i.f
  %i.ec = trunc i32 %i.eb to i16
  store i16 %i.ec, ptr %i.dm, align 2, !tbaa !26
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183.pre-phi
  br i1 %exitcond184.not, label %.loopexit, label %bb.r, !llvm.loop !27

.loopexit:                                        ; preds = %bb.r, %bb.b, %bb.a, %._crit_edge150
  %.1 = phi i64 [ -1, %._crit_edge150 ], [ -46, %bb.a ], [ -44, %bb.b ], [ 0, %bb.r ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #1 {
bb.a:
  %8 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 17 uses
  %9 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %10 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %11 = alloca %"struct.duckdb_zstd::BIT_DStream_t", align 8 ; 11 uses
  %12 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %13 = alloca %"struct.duckdb_zstd::FSE_DState_t", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
