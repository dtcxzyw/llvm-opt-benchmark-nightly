Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckySwap?download=true
inline.NumInlined: 35
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Kit_TruthCountOnesInCofs_64bit:bb.a
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !15
  %i.ag = icmp eq i32 %1, 6
  br i1 %i.ag, label %bb.h, label %.thread67

bb.h:                                             ; preds = %bb.g
  %i.ah = and i64 %i.k, 4294967295
  %i.ai = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.ah)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !15
  br label %.thread67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next94, %._crit_edge ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv93
  %i.am = load i64, ptr %i.al, align 8, !tbaa !8
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.am)
  %i.ao = trunc nuw nsw i64 %i.an to i32          ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv93 to i32  ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.l ], [ 6, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %i.aq = trunc i64 %indvars.iv to i32
  %i.ar = add i32 %i.aq, -6
  %i.as = shl nuw i32 1, %i.ar
  %i.at = and i32 %i.as, %i.ap
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.new
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !15
  %i.ax = add nsw i32 %i.aw, %i.ao
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.new, %bb.i
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ay = trunc i64 %indvars.iv.next to i32
  %i.az = add i32 %i.ay, -6
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = and i32 %i.ba, %i.ap
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %i.bf = add nsw i32 %i.be, %i.ao
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.i
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !16

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 6, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.bg = trunc i64 %indvars.iv.epil.init to i32
  %i.bh = add i32 %i.bg, -6
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = and i32 %i.bi, %i.ap
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %._crit_edge

bb.m:                                             ; preds = %.epil.preheader
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15
  %i.bn = add nsw i32 %i.bm, %i.ao
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.m, %._crit_edge.unr-lcssa
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge72.split, label %.lr.ph, !llvm.loop !17

._crit_edge72.split:                              ; preds = %._crit_edge
  %i.bo = icmp sgt i32 %i.d, 1
  br i1 %i.bo, label %.lr.ph76, label %.thread67

.lr.ph76:                                         ; preds = %._crit_edge72.split
  %i.bp = lshr i32 %i.d, 1                        ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = load <4 x i32>, ptr %2, align 4, !tbaa !15 ; 5 uses
  %i.bs = load <2 x i32>, ptr %i.bq, align 4, !tbaa !15 ; 3 uses
  %i.bt = add nsw i32 %i.bp, -1                   ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.bt, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph76
  %n.vec = and i64 %i.bv, 8589934590              ; 4 uses
  %i.bw = trunc i64 %n.vec to i32
  %i.bx = sub i32 %i.bp, %i.bw
  %i.by = shl nuw nsw i64 %n.vec, 4
  %i.bz = getelementptr i8, ptr %0, i64 %i.by
  %i.ca = shufflevector <2 x i32> <i32 poison, i32 0>, <2 x i32> %i.bs, <2 x i32> <i32 3, i32 1>
  %i.cb = insertelement <2 x i32> %i.bs, i32 0, i64 1
  %i.cc = shufflevector <4 x i32> %i.br, <4 x i32> poison, <2 x i32> <i32 3, i32 poison>
  %i.cd = insertelement <2 x i32> %i.cc, i32 0, i64 1
  %i.ce = shufflevector <4 x i32> %i.br, <4 x i32> poison, <2 x i32> <i32 2, i32 poison>
  %i.cf = insertelement <2 x i32> %i.ce, i32 0, i64 1
  %i.cg = shufflevector <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, <4 x i32> %i.br, <2 x i32> <i32 5, i32 1>
  %i.ch = shufflevector <4 x i32> %i.br, <4 x i32> poison, <2 x i32> <i32 0, i32 poison>
  %i.ci = insertelement <2 x i32> %i.ch, i32 0, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ca, %vector.ph ], [ %i.dy, %vector.body ]
  %vec.phi110 = phi <2 x i32> [ %i.cb, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi111 = phi <2 x i32> [ %i.cd, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi112 = phi <2 x i32> [ %i.cf, %vector.ph ], [ %i.de, %vector.body ]
  %vec.phi113 = phi <2 x i32> [ %i.cg, %vector.ph ], [ %i.cx, %vector.body ]
  %vec.phi114 = phi <2 x i32> [ %i.ci, %vector.ph ], [ %i.cq, %vector.body ]
  %i.cj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %i.cj
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2> ; 6 uses
  %strided.vec115 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3> ; 6 uses
  %i.ck = and <2 x i64> %strided.vec, splat (i64 6148914691236517205)
  %i.cl = shl <2 x i64> %strided.vec115, splat (i64 1)
  %i.cm = and <2 x i64> %i.cl, splat (i64 -6148914691236517206)
  %i.cn = or disjoint <2 x i64> %i.cm, %i.ck
  %i.co = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cn)
  %i.cp = trunc nuw nsw <2 x i64> %i.co to <2 x i32>
  %i.cq = add <2 x i32> %vec.phi114, %i.cp        ; 2 uses
  %i.cr = and <2 x i64> %strided.vec, splat (i64 3689348814741910323)
  %i.cs = shl <2 x i64> %strided.vec115, splat (i64 2)
  %i.ct = and <2 x i64> %i.cs, splat (i64 -3689348814741910324)
  %i.cu = or disjoint <2 x i64> %i.ct, %i.cr
  %i.cv = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cu)
  %i.cw = trunc nuw nsw <2 x i64> %i.cv to <2 x i32>
  %i.cx = add <2 x i32> %vec.phi113, %i.cw        ; 2 uses
  %i.cy = and <2 x i64> %strided.vec, splat (i64 1085102592571150095)
  %i.cz = shl <2 x i64> %strided.vec115, splat (i64 4)
  %i.da = and <2 x i64> %i.cz, splat (i64 -1085102592571150096)
  %i.db = or disjoint <2 x i64> %i.da, %i.cy
  %i.dc = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.db)
  %i.dd = trunc nuw nsw <2 x i64> %i.dc to <2 x i32>
  %i.de = add <2 x i32> %vec.phi112, %i.dd        ; 2 uses
  %i.df = and <2 x i64> %strided.vec, splat (i64 71777214294589695)
  %i.dg = shl <2 x i64> %strided.vec115, splat (i64 8)
  %i.dh = and <2 x i64> %i.dg, splat (i64 -71777214294589696)
  %i.di = or disjoint <2 x i64> %i.dh, %i.df
  %i.dj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.di)
  %i.dk = trunc nuw nsw <2 x i64> %i.dj to <2 x i32>
  %i.dl = add <2 x i32> %vec.phi111, %i.dk        ; 2 uses
  %i.dm = and <2 x i64> %strided.vec, splat (i64 281470681808895)
  %i.dn = shl <2 x i64> %strided.vec115, splat (i64 16)
  %i.do = and <2 x i64> %i.dn, splat (i64 -281470681808896)
  %i.dp = or disjoint <2 x i64> %i.do, %i.dm
  %i.dq = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dp)
  %i.dr = trunc nuw nsw <2 x i64> %i.dq to <2 x i32>
  %i.ds = add <2 x i32> %vec.phi110, %i.dr        ; 2 uses
  %i.dt = and <2 x i64> %strided.vec, splat (i64 4294967295)
  %i.du = shl <2 x i64> %strided.vec115, splat (i64 32)
  %i.dv = or disjoint <2 x i64> %i.du, %i.dt
  %i.dw = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dv)
  %i.dx = trunc nuw nsw <2 x i64> %i.dw to <2 x i32>
  %i.dy = add <2 x i32> %vec.phi, %i.dx           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %i.ea = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dy)
  %i.eb = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ds)
  %i.ec = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dl)
  %i.ed = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.de)
  %i.ee = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cx)
  %i.ef = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.cq)
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  %i.eg = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %i.eh = insertelement <4 x i32> %i.eg, i32 %i.ee, i64 1
  %i.ei = insertelement <4 x i32> %i.eh, i32 %i.ed, i64 2
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ec, i64 3 ; 2 uses
  %i.ek = insertelement <2 x i32> poison, i32 %i.eb, i64 0
  %i.el = insertelement <2 x i32> %i.ek, i32 %i.ea, i64 1 ; 2 uses
  br i1 %cmp.n, label %..thread67.loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph76, %middle.block
  %.174.ph = phi i32 [ %i.bp, %.lr.ph76 ], [ %i.bx, %middle.block ]
  %.05773.ph = phi ptr [ %0, %.lr.ph76 ], [ %i.bz, %middle.block ]
  %.ph = phi <4 x i32> [ %i.br, %.lr.ph76 ], [ %i.ej, %middle.block ]
  %.ph122 = phi <2 x i32> [ %i.bs, %.lr.ph76 ], [ %i.el, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.174 = phi i32 [ %i.fa, %scalar.ph ], [ %.174.ph, %scalar.ph.preheader ] ; 2 uses
  %.05773 = phi ptr [ %i.ez, %scalar.ph ], [ %.05773.ph, %scalar.ph.preheader ] ; 3 uses
  %i.em = phi <4 x i32> [ %i.ev, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.en = phi <2 x i32> [ %i.ey, %scalar.ph ], [ %.ph122, %scalar.ph.preheader ]
  %3 = getelementptr inbounds nuw i8, ptr %.05773, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !8        ; 3 uses
  %5 = load i64, ptr %.05773, align 8, !tbaa !8   ; 3 uses
  %6 = insertelement <4 x i64> poison, i64 %5, i64 0
  %i.eo = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ep = and <4 x i64> %i.eo, <i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695>
  %7 = insertelement <4 x i64> poison, i64 %4, i64 0
  %8 = shufflevector <4 x i64> %7, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.eq = shl <4 x i64> %8, <i64 1, i64 2, i64 4, i64 8>
  %i.er = and <4 x i64> %i.eq, <i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696>
  %i.es = or disjoint <4 x i64> %i.er, %i.ep
  %i.et = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.es)
  %i.eu = trunc nuw nsw <4 x i64> %i.et to <4 x i32>
  %i.ev = add nsw <4 x i32> %i.em, %i.eu          ; 2 uses
  %9 = shl i64 %4, 16
  %10 = and i64 %5, 4294967295
  %11 = and i64 %9, -281470681808896
  %12 = shl i64 %4, 32
  %13 = and i64 %5, 281470681808895
  %14 = or disjoint i64 %12, %10
  %15 = or disjoint i64 %11, %13
  %16 = insertelement <2 x i64> poison, i64 %15, i64 0
  %17 = insertelement <2 x i64> %16, i64 %14, i64 1
  %i.ew = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %17)
  %i.ex = trunc nuw nsw <2 x i64> %i.ew to <2 x i32>
  %i.ey = add nsw <2 x i32> %i.en, %i.ex          ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.05773, i64 16
  %i.fa = add nsw i32 %.174, -1
  %i.fb = icmp samesign ugt i32 %.174, 1
  br i1 %i.fb, label %scalar.ph, label %..thread67.loopexit_crit_edge, !llvm.loop !19

..thread67.loopexit_crit_edge:                    ; preds = %scalar.ph, %middle.block
  %i.fc = phi <4 x i32> [ %i.ej, %middle.block ], [ %i.ev, %scalar.ph ]
  %i.fd = phi <2 x i32> [ %i.el, %middle.block ], [ %i.ey, %scalar.ph ]
  store <4 x i32> %i.fc, ptr %2, align 4, !tbaa !15
  store <2 x i32> %i.fd, ptr %i.bq, align 4, !tbaa !15
  br label %.thread67

.thread67:                                        ; preds = %.preheader, %._crit_edge72.split, %..thread67.loopexit_crit_edge, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthChangePhase_64bit(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [512 x i64], align 16             ; 4 uses
  %i.b = icmp slt i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = icmp slt i32 %2, 6
  br i1 %i.f, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %.lr.ph38, label %.loopexit

.lr.ph38:                                         ; preds = %.preheader
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @mask0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8    ; 5 uses
  %i.k = shl nuw nsw i32 1, %2
  %i.l = zext nneg i32 %i.k to i64                ; 7 uses
  %i.m = xor i64 %i.j, -1                         ; 4 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph38
  %i.n = and i32 %i.e, 2147483644
  %n.vec = zext nneg i32 %i.n to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !8 ; 2 uses
  %wide.load49 = load <2 x i64>, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  %i.q = and <2 x i64> %broadcast.splat, %wide.load
  %i.r = and <2 x i64> %broadcast.splat, %wide.load49
  %i.s = shl <2 x i64> %i.q, %broadcast.splat46
  %i.t = shl <2 x i64> %i.r, %broadcast.splat46
  %i.u = and <2 x i64> %wide.load, %broadcast.splat48
  %i.v = and <2 x i64> %wide.load49, %broadcast.splat48
  %i.w = lshr <2 x i64> %i.u, %broadcast.splat46
  %i.x = lshr <2 x i64> %i.v, %broadcast.splat46
  %i.y = or <2 x i64> %i.s, %i.w
  %i.z = or <2 x i64> %i.t, %i.x
  store <2 x i64> %i.y, ptr %i.o, align 8, !tbaa !8
  store <2 x i64> %i.z, ptr %i.p, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %.loopexit, label %vector.body, !llvm.loop !20

scalar.ph:                                        ; preds = %.lr.ph38
  %i.ab = load i64, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.ac = and i64 %i.j, %i.ab
  %i.ad = shl i64 %i.ac, %i.l
  %i.ae = and i64 %i.ab, %i.m
  %i.af = lshr i64 %i.ae, %i.l
  %i.ag = or i64 %i.ad, %i.af
  store i64 %i.ag, ptr %0, align 8, !tbaa !8
  %exitcond.not = icmp eq i32 %i.e, 1
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !8  ; 2 uses
  %i.aj = and i64 %i.j, %i.ai
  %i.ak = shl i64 %i.aj, %i.l
  %i.al = and i64 %i.ai, %i.m
  %i.am = lshr i64 %i.al, %i.l
  %i.an = or i64 %i.ak, %i.am
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !8
  %exitcond.not.1 = icmp eq i32 %i.e, 2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !8  ; 2 uses
  %i.aq = and i64 %i.j, %i.ap
  %i.ar = shl i64 %i.aq, %i.l
  %i.as = and i64 %i.ap, %i.m
  %i.at = lshr i64 %i.as, %i.l
  %i.au = or i64 %i.ar, %i.at
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !8
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.av = add nsw i32 %2, -6                      ; 3 uses
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp sgt i32 %i.e, 0
  br i1 %i.ay, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.az = shl i32 8, %i.av
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = shl i32 2, %i.av                        ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.136 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %bb.c ]
  %.03135 = phi ptr [ %0, %.lr.ph ], [ %i.be, %bb.c ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %.03135, i64 %i.ba, i1 false)
  %i.bd = getelementptr inbounds [8 x i8], ptr %.03135, i64 %i.ax ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.03135, ptr nonnull align 8 %i.bd, i64 %i.ba, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr nonnull align 16 %i.a, i64 %i.ba, i1 false)
  %i.be = getelementptr inbounds [8 x i8], ptr %.03135, i64 %i.bc
  %i.bf = add nsw i32 %.136, %i.bb                ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.e
  br i1 %i.bg, label %bb.c, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %bb.b, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthNot_64bit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 7
  %i.b = add nsw i32 %1, -6
  %i.c = shl nuw i32 1, %i.b
  %spec.select = select i1 %i.a, i32 1, i32 %i.c  ; 3 uses
  %i.d = icmp sgt i32 %spec.select, 0
  br i1 %i.d, label %select.unfold.preheader, label %select.unfold._crit_edge

select.unfold.preheader:                          ; preds = %bb.a
  %i.e = zext nneg i32 %spec.select to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %spec.select, 4
  br i1 %min.iters.check, label %select.unfold, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader
  %n.vec = and i64 %i.e, 2147483644
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = xor i64 %index, -1
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.f ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %gep, i64 -8 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %gep, i64 -24 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !8
  %wide.load8 = load <2 x i64>, ptr %i.h, align 8, !tbaa !8
  %i.i = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.j = xor <2 x i64> %wide.load8, splat (i64 -1)
  store <2 x i64> %i.i, ptr %i.g, align 8, !tbaa !8
  store <2 x i64> %i.j, ptr %i.h, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %select.unfold._crit_edge, label %vector.body, !llvm.loop !22

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold ], [ %i.e, %select.unfold.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8
  %i.n = xor i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !8
  %i.o = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.o, label %select.unfold, label %select.unfold._crit_edge, !llvm.loop !23

select.unfold._crit_edge:                         ; preds = %vector.body, %select.unfold, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Kit_TruthCopy_64bit(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
end_hunk_0
