Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckySwap?download=true
inline.NumInlined: 35
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Kit_TruthCountOnes_64bit:bb.a
  %i.k = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load11)
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.m = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.n = trunc nuw nsw <2 x i64> %i.l to <2 x i32>
  %i.o = add <2 x i32> %vec.phi, %i.m             ; 2 uses
  %i.p = add <2 x i32> %vec.phi10, %i.n           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.p, %i.o
  %i.r = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %select.unfold._crit_edge

select.unfold:                                    ; preds = %select.unfold.preheader, %select.unfold
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold ], [ %i.e, %select.unfold.preheader ] ; 2 uses
  %.08 = phi i32 [ %i.w, %select.unfold ], [ 0, %select.unfold.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.t = load i64, ptr %i.s, align 8, !tbaa !8
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = add nuw nsw i32 %.08, %i.v               ; 2 uses
  %i.x = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.x, label %select.unfold, label %select.unfold._crit_edge, !llvm.loop !14

select.unfold._crit_edge:                         ; preds = %select.unfold, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.r, %middle.block ], [ %i.w, %select.unfold ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Kit_TruthCountOnesInCofs_64bit(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 7                       ; 2 uses
  %i.b = add nsw i32 %1, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b                      ; 2 uses
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.f, i1 false)
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not104 = icmp eq i32 %i.b, 31
  br i1 %.not104, label %.thread67, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count96 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %1, 7
  %i.h = and i64 %wide.trip.count, 2147483646
  %i.i = add nsw i64 %i.h, -8
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod130 = trunc i32 %1 to i1
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %bb.c, label %.thread67

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %0, align 8, !tbaa !8      ; 6 uses
  %i.l = and i64 %i.k, 6148914691236517205
  %i.m = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.l)
  %i.n = trunc nuw nsw i64 %i.m to i32
  store i32 %i.n, ptr %2, align 4, !tbaa !15
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.thread67, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %i.k, 3689348814741910323
  %i.p = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.o)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !15
  %i.s = icmp samesign ugt i32 %1, 2
  br i1 %i.s, label %bb.e, label %.thread67

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %i.k, 1085102592571150095
  %i.u = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.v, ptr %i.w, align 4, !tbaa !15
  %.not68 = icmp eq i32 %1, 3
  br i1 %.not68, label %.thread67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = and i64 %i.k, 71777214294589695
  %i.y = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.x)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !15
  %i.ab = icmp samesign ugt i32 %1, 4
  br i1 %i.ab, label %bb.g, label %.thread67

bb.g:                                             ; preds = %bb.f
  %i.ac = and i64 %i.k, 281470681808895
  %i.ad = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %i.ac)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
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
  %.174 = phi i32 [ %i.fp, %scalar.ph ], [ %.174.ph, %scalar.ph.preheader ] ; 2 uses
  %.05773 = phi ptr [ %i.fo, %scalar.ph ], [ %.05773.ph, %scalar.ph.preheader ] ; 3 uses
  %i.em = phi <4 x i32> [ %i.fb, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.en = phi <2 x i32> [ %i.fn, %scalar.ph ], [ %.ph122, %scalar.ph.preheader ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.05773, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !8  ; 3 uses
  %i.eq = load i64, ptr %.05773, align 8, !tbaa !8 ; 3 uses
  %i.er = insertelement <4 x i64> poison, i64 %i.eq, i64 0
  %i.es = shufflevector <4 x i64> %i.er, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.et = and <4 x i64> %i.es, <i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695>
  %i.eu = insertelement <4 x i64> poison, i64 %i.ep, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ew = shl <4 x i64> %i.ev, <i64 1, i64 2, i64 4, i64 8>
  %i.ex = and <4 x i64> %i.ew, <i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696>
  %i.ey = or disjoint <4 x i64> %i.ex, %i.et
  %i.ez = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ey)
  %i.fa = trunc nuw nsw <4 x i64> %i.ez to <4 x i32>
  %i.fb = add nsw <4 x i32> %i.em, %i.fa          ; 2 uses
  %i.fc = shl i64 %i.ep, 16
  %i.fd = and i64 %i.eq, 4294967295
  %i.fe = and i64 %i.fc, -281470681808896
  %i.ff = shl i64 %i.ep, 32
  %i.fg = and i64 %i.eq, 281470681808895
  %i.fh = or disjoint i64 %i.ff, %i.fd
  %i.fi = or disjoint i64 %i.fe, %i.fg
  %i.fj = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = insertelement <2 x i64> %i.fj, i64 %i.fh, i64 1
  %i.fl = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fk)
  %i.fm = trunc nuw nsw <2 x i64> %i.fl to <2 x i32>
  %i.fn = add nsw <2 x i32> %i.en, %i.fm          ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05773, i64 16
  %i.fp = add nsw i32 %.174, -1
  %i.fq = icmp samesign ugt i32 %.174, 1
  br i1 %i.fq, label %scalar.ph, label %..thread67.loopexit_crit_edge, !llvm.loop !19

..thread67.loopexit_crit_edge:                    ; preds = %scalar.ph, %middle.block
  %i.fr = phi <4 x i32> [ %i.ej, %middle.block ], [ %i.fb, %scalar.ph ]
  %i.fs = phi <2 x i32> [ %i.el, %middle.block ], [ %i.fn, %scalar.ph ]
  store <4 x i32> %i.fr, ptr %2, align 4, !tbaa !15
  store <2 x i32> %i.fs, ptr %i.bq, align 4, !tbaa !15
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
end_hunk_0
