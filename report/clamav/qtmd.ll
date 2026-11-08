Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/qtmd?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@read_input:bb.a
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !18
  store i8 0, ptr %i.s, align 1, !tbaa !46
  store i8 1, ptr %i.n, align 1, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ 2, %bb.f ], [ %i.j, %bb.c ]
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  %i.v = zext nneg i32 %.0 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.w, ptr %i.x, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.b
  %.017 = phi i32 [ 3, %bb.b ], [ 3, %bb.e ], [ 0, %bb.g ]
  ret i32 %.017
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qtmd_update_model(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !36
  %i.b = add nsw i32 %i.a, -1                     ; 2 uses
  store i32 %i.b, ptr %0, align 8, !tbaa !36
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38   ; 4 uses
  %i.h = zext nneg i32 %i.d to i64                ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %.phi.trans.insert91 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 2
  %.pre = load i16, ptr %.phi.trans.insert91, align 2, !tbaa !42 ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.h, -1    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.prol
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !42
  %i.l = lshr i16 %i.k, 1                         ; 2 uses
  %.not54.prol = icmp ugt i16 %i.l, %.pre
  %i.m = add i16 %.pre, 1
  %spec.select.prol = select i1 %.not54.prol, i16 %i.l, i16 %i.m ; 2 uses
  store i16 %spec.select.prol, ptr %i.j, align 2, !tbaa !42
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i16 [ %.pre, %.lr.ph ], [ %spec.select.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.unr = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.n = icmp eq i32 %i.d, 1
  br i1 %i.n, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %i.o = phi i16 [ %spec.select.1, %.lr.ph.new ], [ %.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.p = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -2       ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !42
  %i.s = lshr i16 %i.r, 1                         ; 2 uses
  %.not54 = icmp ugt i16 %i.s, %i.o
  %i.t = add i16 %i.o, 1
  %spec.select = select i1 %.not54, i16 %i.s, i16 %i.t ; 3 uses
  store i16 %spec.select, ptr %i.q, align 2, !tbaa !42
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !42
  %i.x = lshr i16 %i.w, 1                         ; 2 uses
  %.not54.1 = icmp ugt i16 %i.x, %spec.select
  %i.y = add i16 %spec.select, 1
  %spec.select.1 = select i1 %.not54.1, i16 %i.x, i16 %i.y ; 2 uses
  store i16 %spec.select.1, ptr %i.v, align 2, !tbaa !42
  %i.z = icmp sgt i64 %indvars.iv, 2
  br i1 %i.z, label %.lr.ph.new, label %.loopexit

bb.c:                                             ; preds = %bb.a
  store i32 50, ptr %0, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 11 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 4 uses
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %.pre93.a = load i16, ptr %.phi.trans.insert92, align 2, !tbaa !42 ; 2 uses
  %xtraiter106 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.af = icmp ult i32 %i.ab, 4
  br i1 %i.af, label %.epil.preheader, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

.preheader56.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod108.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod108.not, label %.preheader56, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader56.unr-lcssa, %.lr.ph63
  %.epil.init = phi i16 [ %.pre93.a, %.lr.ph63 ], [ %i.bq, %.preheader56.unr-lcssa ]
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next74.3, %.preheader56.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter106, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ag = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ]
  %indvars.iv73.epil = phi i64 [ %indvars.iv73.epil.init, %.epil.preheader ], [ %indvars.iv.next74.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %indvars.iv.next74.epil = add nuw nsw i64 %indvars.iv73.epil, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.epil
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !42 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv73.epil
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %reass.sub.epil = sub i16 %i.ag, %i.aj
  %i.am = add i16 %reass.sub.epil, 1
  %i.an = lshr i16 %i.am, 1
  store i16 %i.an, ptr %i.al, align 2, !tbaa !42
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter106
  br i1 %epil.iter.cmp.not, label %.preheader56, label %bb.d, !llvm.loop !78

.preheader56:                                     ; preds = %bb.d, %.preheader56.unr-lcssa
  %i.ao = add nsw i32 %i.ab, -1                   ; 2 uses
  %.not102 = icmp eq i32 %i.ab, 1
  br i1 %.not102, label %.lr.ph70, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count86 = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 4 uses
  %wide.trip.count81 = zext nneg i32 %i.ab to i64
  %i.ar = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph65

bb.e:                                             ; preds = %bb.e, %.lr.ph63.new
  %i.as = phi i16 [ %.pre93.a, %.lr.ph63.new ], [ %i.bq, %bb.e ]
  %indvars.iv73 = phi i64 [ 0, %.lr.ph63.new ], [ %indvars.iv.next74.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph63.new ], [ %niter.next.3, %bb.e ]
  %indvars.iv.next74 = or disjoint i64 %indvars.iv73, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !42 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv73
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %reass.sub = sub i16 %i.as, %i.av
  %i.ay = add i16 %reass.sub, 1
  %i.az = lshr i16 %i.ay, 1
  store i16 %i.az, ptr %i.ax, align 2, !tbaa !42
  %indvars.iv.next74.1 = or disjoint i64 %indvars.iv73, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !42 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %reass.sub.1 = sub i16 %i.av, %i.bc
  %i.bf = add i16 %reass.sub.1, 1
  %i.bg = lshr i16 %i.bf, 1
  store i16 %i.bg, ptr %i.be, align 2, !tbaa !42
  %indvars.iv.next74.2 = or disjoint i64 %indvars.iv73, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %reass.sub.2 = sub i16 %i.bc, %i.bj
  %i.bm = add i16 %reass.sub.2, 1
  %i.bn = lshr i16 %i.bm, 1
  store i16 %i.bn, ptr %i.bl, align 2, !tbaa !42
  %indvars.iv.next74.3 = add nuw nsw i64 %indvars.iv73, 4 ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !42 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next74.2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %reass.sub.3 = sub i16 %i.bj, %i.bq
  %i.bt = add i16 %reass.sub.3, 1
  %i.bu = lshr i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !42
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader56.unr-lcssa, label %bb.e

.loopexit55:                                      ; preds = %bb.j, %.prol.loopexit111
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76.a, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %.preheader, label %.lr.ph65

.preheader:                                       ; preds = %.loopexit55
  %i.bv = zext i32 %i.ao to i64
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader, %.preheader56
  %i.bw = phi i64 [ %i.bv, %.preheader ], [ 0, %.preheader56 ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38 ; 5 uses
  %i.bz = add nuw nsw i64 %i.bw, 1
  %xtraiter117 = and i64 %i.bz, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.prol.loopexit116, label %.prol.preheader115

.prol.preheader115:                               ; preds = %.lr.ph70, %.prol.preheader115
  %indvars.iv88.prol = phi i64 [ %indvars.iv.next89.prol, %.prol.preheader115 ], [ %i.bw, %.lr.ph70 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader115 ], [ 0, %.lr.ph70 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv88.prol ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !42
  %i.cf = add i16 %i.ce, %i.cc
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !42
  %indvars.iv.next89.prol = add nsw i64 %indvars.iv88.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter117
  br i1 %prol.iter.cmp.not, label %.prol.loopexit116, label %.prol.preheader115, !llvm.loop !79

.prol.loopexit116:                                ; preds = %.prol.preheader115, %.lr.ph70
  %indvars.iv88.unr = phi i64 [ %i.bw, %.lr.ph70 ], [ %indvars.iv.next89.prol, %.prol.preheader115 ]
  %i.cg = icmp samesign ult i64 %i.bw, 3
  br i1 %i.cg, label %.loopexit, label %.lr.ph70.new

.lr.ph65:                                         ; preds = %.loopexit55, %.lr.ph67
  %indvars.iv83 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next84, %.loopexit55 ] ; 4 uses
  %indvars.iv76.a = phi i64 [ 1, %.lr.ph67 ], [ %indvars.iv.next77, %.loopexit55 ] ; 4 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv83 ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2 ; 4 uses
  %.pre95 = load i16, ptr %i.ci, align 2, !tbaa !42 ; 3 uses
  %i.cj = sub nsw i64 %indvars.iv83, %wide.trip.count
  %i.ck = and i64 %i.cj, 1
  %lcmp.mod113.not.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod113.not.not, label %.prol.preheader110, label %.prol.loopexit111

.prol.preheader110:                               ; preds = %.lr.ph65
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv76.a ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !42
  %i.co = icmp ult i16 %.pre95, %i.cn
  br i1 %i.co, label %bb.f, label %.prol.loopexit111.unr-lcssa

bb.f:                                             ; preds = %.prol.preheader110
  %i.cp = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.cq = load i32, ptr %i.cl, align 2, !tbaa !39
  store i32 %i.cq, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.cp, ptr %i.cl, align 2, !tbaa !39
  %.pre94.prol = load i16, ptr %i.ci, align 2, !tbaa !42
  br label %.prol.loopexit111.unr-lcssa

.prol.loopexit111.unr-lcssa:                      ; preds = %bb.f, %.prol.preheader110
  %i.cr = phi i16 [ %.pre95, %.prol.preheader110 ], [ %.pre94.prol, %bb.f ]
  %indvars.iv.next79.prol = add nuw nsw i64 %indvars.iv76.a, 1
  br label %.prol.loopexit111

.prol.loopexit111:                                ; preds = %.prol.loopexit111.unr-lcssa, %.lr.ph65
  %.unr114 = phi i16 [ %.pre95, %.lr.ph65 ], [ %i.cr, %.prol.loopexit111.unr-lcssa ]
  %indvars.iv78.unr = phi i64 [ %indvars.iv76.a, %.lr.ph65 ], [ %indvars.iv.next79.prol, %.prol.loopexit111.unr-lcssa ]
  %i.cs = icmp eq i64 %i.ar, %indvars.iv83
  br i1 %i.cs, label %.loopexit55, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.prol.loopexit111, %bb.j
  %i.ct = phi i16 [ %i.di, %bb.j ], [ %.unr114, %.prol.loopexit111 ] ; 2 uses
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.1, %bb.j ], [ %indvars.iv78.unr, %.prol.loopexit111 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv78 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !42
  %i.cx = icmp ult i16 %i.ct, %i.cw
  br i1 %i.cx, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph65.new
  %i.cy = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.cz = load i32, ptr %i.cu, align 2, !tbaa !39
  store i32 %i.cz, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.cy, ptr %i.cu, align 2, !tbaa !39
  %.pre94 = load i16, ptr %i.ci, align 2, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph65.new, %bb.g
  %i.da = phi i16 [ %i.ct, %.lr.ph65.new ], [ %.pre94, %bb.g ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv78 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !42
  %i.de = icmp ult i16 %i.da, %i.dd
  br i1 %i.de, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dg = load i32, ptr %i.ch, align 2, !tbaa !39
  %i.dh = load i32, ptr %i.df, align 2, !tbaa !39
  store i32 %i.dh, ptr %i.ch, align 2, !tbaa !39
  store i32 %i.dg, ptr %i.df, align 2, !tbaa !39
  %.pre94.1 = load i16, ptr %i.ci, align 2, !tbaa !42
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.di = phi i16 [ %i.da, %bb.h ], [ %.pre94.1, %bb.i ]
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %exitcond82.not.1 = icmp eq i64 %indvars.iv.next79.1, %wide.trip.count81
  br i1 %exitcond82.not.1, label %.loopexit55, label %.lr.ph65.new

.lr.ph70.new:                                     ; preds = %.prol.loopexit116, %.lr.ph70.new
  %indvars.iv88 = phi i64 [ %indvars.iv.next89.3, %.lr.ph70.new ], [ %indvars.iv88.unr, %.prol.loopexit116 ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 2 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !42
  %i.do = add i16 %i.dn, %i.dl
  store i16 %i.do, ptr %i.dm, align 2, !tbaa !42
  %i.dp = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !42
  %i.ds = getelementptr i8, ptr %i.dp, i64 -2     ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !42
  %i.du = add i16 %i.dt, %i.dr
  store i16 %i.du, ptr %i.ds, align 2, !tbaa !42
  %i.dv = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv88 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !42
  %i.dy = getelementptr i8, ptr %i.dv, i64 -6     ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !42
  %i.ea = add i16 %i.dz, %i.dx
  store i16 %i.ea, ptr %i.dy, align 2, !tbaa !42
  %indvars.iv.next89.2 = add nsw i64 %indvars.iv88, -3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next89.2 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 2 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !42
  %i.eg = add i16 %i.ef, %i.ed
  store i16 %i.eg, ptr %i.ee, align 2, !tbaa !42
  %indvars.iv.next89.3 = add nsw i64 %indvars.iv88, -4
  %.not103.3 = icmp eq i64 %indvars.iv.next89.2, 0
  br i1 %.not103.3, label %.loopexit, label %.lr.ph70.new

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.prol.loopexit116, %.lr.ph70.new, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @qtmd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void %i.c(ptr noundef %i.e) #4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  tail call void %i.f(ptr noundef %i.h) #4
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void %i.i(ptr noundef nonnull %0) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"mspack_system", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80}
!10 = !{!"p1 _ZTS13mspack_system", !8, i64 0}
!11 = !{!"p1 _ZTS11mspack_file", !8, i64 0}
!12 = !{!"p1 omnipotent char", !8, i64 0}
!13 = !{!"short", !4, i64 0}
!14 = !{!"p1 _ZTS13qtmd_modelsym", !8, i64 0}
!15 = !{!"qtmd_model", !5, i64 0, !5, i64 4, !14, i64 8}
!16 = !{!"qtmd_stream", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !13, i64 44, !13, i64 46, !13, i64 48, !4, i64 50, !5, i64 52, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !4, i64 104, !4, i64 105, !15, i64 112, !15, i64 128, !15, i64 144, !15, i64 160, !15, i64 176, !15, i64 192, !15, i64 208, !15, i64 224, !15, i64 240, !4, i64 256, !4, i64 516, !4, i64 776, !4, i64 1036, !4, i64 1296, !4, i64 1396, !4, i64 1544, !4, i64 1716, !4, i64 1828}
!17 = !{!16, !12, i64 24}
!18 = !{!16, !12, i64 56}
!19 = !{!9, !8, i64 64}
!20 = !{!16, !10, i64 0}
!21 = !{!16, !11, i64 8}
!22 = !{!16, !11, i64 16}
!23 = !{!16, !5, i64 100}
!24 = !{!16, !5, i64 32}
!25 = !{!16, !5, i64 36}
!26 = !{!16, !5, i64 40}
!27 = !{!16, !4, i64 50}
!28 = !{!16, !5, i64 52}
!29 = !{!16, !12, i64 72}
!30 = !{!16, !12, i64 64}
!31 = !{!16, !12, i64 88}
!32 = !{!16, !12, i64 80}
!33 = !{!16, !4, i64 105}
!34 = !{!16, !4, i64 104}
!35 = !{!16, !5, i64 96}
!36 = !{!15, !5, i64 0}
!37 = !{!15, !5, i64 4}
!38 = !{!15, !14, i64 8}
!39 = !{!13, !13, i64 0}
!40 = !{!"qtmd_modelsym", !13, i64 0, !13, i64 2}
!41 = !{!40, !13, i64 0}
!42 = !{!40, !13, i64 2}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!9, !8, i64 16}
!46 = !{!4, !4, i64 0}
!47 = distinct !{!47, !43, !44}
!48 = distinct !{!48, !43, !44}
!49 = distinct !{!49, !43, !44}
!50 = !{!9, !8, i64 56}
!51 = distinct !{!51, !44, !43}
!52 = distinct !{!52, !44, !43}
!53 = distinct !{!53, !44}
!54 = distinct !{!54, !44, !43}
!55 = distinct !{!55, !44, !43}
!56 = distinct !{!56, !44}
!57 = distinct !{!57, !44, !43}
!58 = distinct !{!58, !44, !43}
!59 = distinct !{!59, !44}
!60 = !{!9, !8, i64 24}
!61 = !{!16, !13, i64 44}
!62 = !{!16, !13, i64 46}
!63 = !{!16, !13, i64 48}
!64 = !{ptr @read_input}
!65 = !{!16, !14, i64 248}
!66 = !{!16, !5, i64 244}
!67 = !{!16, !14, i64 184}
!68 = !{!16, !5, i64 180}
!69 = !{!16, !14, i64 200}
!70 = !{!16, !5, i64 196}
!71 = !{!16, !14, i64 232}
end_hunk_0
