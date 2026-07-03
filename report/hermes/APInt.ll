inline.NumInlined: 1495
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 99
begin_hunk_0_@_ZNK4llvh5APInt13roundToDoubleEb:bb.a
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !10, !noalias !170
  %wide.load96 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !10, !noalias !170
  %i.ar = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.as = xor <2 x i64> %wide.load96, splat (i64 -1)
  store <2 x i64> %i.ar, ptr %i.ap, align 8, !tbaa !10, !noalias !170
  store <2 x i64> %i.as, ptr %i.aq, align 8, !tbaa !10, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10, !noalias !170
  %i.aw = xor i64 %i.av, -1
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !10, !noalias !170
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.f
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !174

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %i.ax = sub i32 0, %i.b
  %i.ay = and i32 %i.ax, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 -1, %i.az                      ; 2 uses
  %i.bb = add nuw nsw i64 %i.f, 4294967295
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bc ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10, !noalias !170
  %i.bf = and i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !10, !noalias !170
  %i.bg = load i64, ptr %i.ao, align 8, !tbaa !10, !noalias !170
  %i.bh = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.bh, ptr %i.ao, align 8, !tbaa !10, !noalias !170
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10, !noalias !170
  %i.bk = add i64 %i.bj, 1                        ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !10, !noalias !170
  %.not.i.i.i.i.i = icmp ne i64 %i.bk, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.f
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i2.i.i, !llvm.loop !16

.thread:                                          ; preds = %bb.g, %bb.h
  %i.bl = lshr i64 %i.e, 3
  %i.bm = and i64 %i.bl, 1073741816               ; 2 uses
  %i.bn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #22 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull align 8 %i.h, i64 %i.bm, i1 false)
  br label %.lr.ph.i.i.i34

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.i2.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.bo = load i64, ptr %i.bd, align 8, !tbaa !10, !noalias !170
  %i.bp = and i64 %i.bo, %i.ba
  store i64 %i.bp, ptr %i.bd, align 8, !tbaa !10, !noalias !170
  br label %.lr.ph.i.i.i34

.lr.ph.i.i.i34:                                   ; preds = %_ZN4llvh5APIntD2Ev.exit, %.thread
  %.sroa.054.064.in = phi ptr [ %i.ao, %_ZN4llvh5APIntD2Ev.exit ], [ %i.bn, %.thread ] ; 4 uses
  %i.bq = phi i1 [ true, %_ZN4llvh5APIntD2Ev.exit ], [ false, %.thread ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i34
  %indvars.iv.i.i35 = phi i64 [ %indvars.iv.next.i.i37, %bb.k ], [ %i.f, %.lr.ph.i.i.i34 ] ; 2 uses
  %.019.i.i.i36 = phi i32 [ %i.bx, %bb.k ], [ 0, %.lr.ph.i.i.i34 ] ; 2 uses
  %indvars.iv.next.i.i37 = add nsw i64 %indvars.iv.i.i35, -1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.054.064.in, i64 %indvars.iv.next.i.i37
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %.thread.i.i.i38

.thread.i.i.i38:                                  ; preds = %bb.j
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = or disjoint i32 %.019.i.i.i36, %i.bv
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i39

bb.k:                                             ; preds = %bb.j
  %i.bx = add i32 %.019.i.i.i36, 64
  %i.by = icmp samesign ugt i64 %indvars.iv.i.i35, 1
  br i1 %i.by, label %bb.j, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i39, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i39: ; preds = %bb.k, %.thread.i.i.i38
  %.2.i.i.i40 = phi i32 [ %i.bw, %.thread.i.i.i38 ], [ %i.i, %bb.k ]
  %i.bz = add i32 %.neg15.i.i.i, %.2.i.i.i40
  %i.ca = sub i32 %i.b, %i.bz                     ; 6 uses
  %i.cb = icmp ugt i32 %i.ca, 1023
  br i1 %i.cb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i39
  %or.cond = and i1 %1, %i.bq
  br i1 %or.cond, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  br label %bb.s

bb.n:                                             ; preds = %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i39
  %narrow = add nuw nsw i32 %i.ca, 1023
  %i.cc = zext nneg i32 %narrow to i64
  %i.cd = add nsw i32 %i.ca, -1
  %i.ce = lshr i32 %i.cd, 6                       ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cg = load i64, ptr %.sroa.054.064.in, align 8, !tbaa !10 ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.ca, 52
  br i1 %i.ch, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ci = add nsw i32 %i.ca, -52
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.cg, %i.cj
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cl = zext nneg i32 %i.ce to i64
  %i.cm = getelementptr [8 x i8], ptr %.sroa.054.064.in, i64 %i.cl ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = and i32 %i.ca, 63                       ; 2 uses
  %i.cp = sub nsw i32 52, %i.co
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl i64 %i.cn, %i.cq
  %i.cs = getelementptr i8, ptr %i.cm, i64 -8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = add nuw nsw i32 %i.co, 11
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = lshr i64 %i.ct, %i.cv
  %i.cx = or i64 %i.cw, %i.cr
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.028 = phi i64 [ %i.ck, %bb.p ], [ %i.cg, %bb.o ], [ %i.cx, %bb.q ]
  %i.cy = select i1 %i.bq, i64 -9223372036854775808, i64 0
  %i.cz = shl nuw nsw i64 %i.cc, 52
  %i.da = or disjoint i64 %i.cz, %i.cy
  %i.db = or i64 %.028, %i.da
  %i.dc = bitcast i64 %i.db to double
  br label %bb.s

bb.s:                                             ; preds = %bb.l, %bb.r, %bb.m
  %.0 = phi double [ -inf, %bb.m ], [ %i.dc, %bb.r ], [ +inf, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.054.064.in) #23
  br label %_ZN4llvh5APIntD2Ev.exit47

_ZN4llvh5APIntD2Ev.exit47:                        ; preds = %bb.s, %bb.f, %bb.e
  %.1 = phi double [ %i.ab, %bb.e ], [ %i.ac, %bb.f ], [ %.0, %bb.s ]
  ret double %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt5truncEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 65
  br i1 %i.a, label %_ZN4llvh5APIntC2Ejmb.exit, label %.lr.ph

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.d, ptr %1, ptr %i.e
  %i.f = load i64, ptr %spec.select.i, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.g, align 8, !tbaa !7
  %i.h = sub nsw i32 0, %2
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.f, %i.k
  store i64 %i.l, ptr %0, align 8, !tbaa !9
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a
  %i.m = zext i32 %2 to i64
  %i.n = add nuw nsw i64 %i.m, 63
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741816
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.r, align 8, !tbaa !7
  store ptr %i.q, ptr %0, align 8, !tbaa !9
  %i.s = lshr i32 %2, 6                           ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !9      ; 7 uses
  %i.u = zext nneg i32 %i.s to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %2, 384
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = ptrtoaddr ptr %i.q to i64
  %i.x = sub i64 %i.w, %i.v
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.u, 67108860                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x i64>, ptr %i.y, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.z, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x i64> %wide.load, ptr %i.aa, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.ab, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.prol
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !176

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.ph, %i.u
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  store i64 %i.am, ptr %i.an, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.2
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i64 %i.as, ptr %i.at, align 8, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %.not.3 = icmp eq i64 %indvars.iv.next.3, %i.u
  br i1 %.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !177

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = sub i32 0, %2
  %i.av = and i32 %i.au, 63                       ; 2 uses
  %.not18 = icmp eq i32 %i.av, 0
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %1, align 8, !tbaa !9
  %i.ax = zext nneg i32 %i.s to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = zext nneg i32 %i.av to i64
  %i.bb = lshr i64 -1, %i.ba
  %i.bc = and i64 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ax
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %_ZN4llvh5APIntC2Ejmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4sextEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 65
  br i1 %i.a, label %_ZN4llvh5APIntC2Ejmb.exit, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7
  %i.e = sub i32 64, %i.d
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl i64 %i.b, %i.f
  %i.h = ashr exact i64 %i.g, %i.f
  %i.i = sub nsw i32 0, %2
  %i.j = and i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = lshr i64 -1, %i.k
  %i.m = and i64 %i.h, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.b

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.a
  %i.o = zext i32 %2 to i64
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 6                         ; 3 uses
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !7    ; 4 uses
  %i.v = icmp ult i32 %i.u, 65                    ; 2 uses
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %spec.select.i = select i1 %i.v, ptr %1, ptr %i.w
  %i.x = zext i32 %i.u to i64
  %i.y = add nuw nsw i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 4 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %spec.select.i, i64 %i.aa, i1 false)
  %i.ab = add nuw nsw i64 %i.z, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = sub i32 0, %i.u
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = ashr exact i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %i.ad, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.al = add i32 %i.u, -1                        ; 2 uses
  %i.am = and i32 %i.al, 63
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = lshr i32 %i.al, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aq
  %.in.i.i.i = select i1 %i.v, ptr %1, ptr %i.ar
  %i.as = load i64, ptr %.in.i.i.i, align 8, !tbaa !9
  %i.at = and i64 %i.as, %i.ao
  %i.au = icmp ne i64 %i.at, 0
  %i.av = sext i1 %i.au to i8
  %i.aw = sub nsw i64 %i.q, %i.z
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ak, i8 %i.av, i64 %i.ay, i1 false)
  %i.az = sub i32 0, %2
  %i.ba = and i32 %i.az, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 -1, %i.bb
  %i.bd = add nuw nsw i64 %i.q, 4294967295
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.bh = and i64 %i.bg, %i.bc
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit, %_ZN4llvh5APIntC2Ejmb.exit
  %.sink = phi ptr [ %i.n, %_ZN4llvh5APIntC2Ejmb.exit ], [ %i.s, %_ZN4llvh5APInt15clearUnusedBitsEv.exit ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.bi, align 8, !tbaa !7
  store ptr %.sink, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %2, 65
  br i1 %i.a, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.b

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !9
  %i.c = sub nsw i32 0, %2
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 -1, %i.e
  %i.g = and i64 %i.b, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i32 %2 to i64
  %i.j = add nuw nsw i64 %i.i, 63
  %i.k = lshr i64 %i.j, 6                         ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7    ; 2 uses
  %i.p = icmp ult i32 %i.o, 65
  %i.q = load ptr, ptr %1, align 8
  %spec.select.i = select i1 %i.p, ptr %1, ptr %i.q
  %i.r = zext i32 %i.o to i64
  %i.s = add nuw nsw i64 %i.r, 63
  %i.t = lshr i64 %i.s, 6                         ; 3 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %spec.select.i, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.t
  %i.w = sub nsw i64 %i.k, %i.t
  %i.x = shl nsw i64 %i.w, 3
  %i.y = and i64 %i.x, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.y, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvh5APIntC2Ejmb.exit
  %.sink = phi ptr [ %i.h, %_ZN4llvh5APIntC2Ejmb.exit ], [ %i.m, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.z, align 8, !tbaa !7
  store ptr %.sink, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11zextOrTruncEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 8 uses
  %i.c = icmp ult i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.d = icmp ult i32 %2, 65
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %bb.c

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8, !tbaa !9, !noalias !178
  %i.f = sub nsw i32 0, %2
  %i.g = and i32 %i.f, 63
  %i.h = zext nneg i32 %i.g to i64
  %i.i = lshr i64 -1, %i.h
  %i.j = and i64 %i.e, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  br label %_ZNK4llvh5APInt4zextEj.exit

bb.c:                                             ; preds = %bb.b
  %i.l = zext i32 %2 to i64
  %i.m = add nuw nsw i64 %i.l, 63
  %i.n = lshr i64 %i.m, 6                         ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #22, !noalias !178 ; 3 uses
  %i.q = icmp ult i32 %i.b, 65
  %i.r = load ptr, ptr %1, align 8, !noalias !178
  %spec.select.i.i = select i1 %i.q, ptr %1, ptr %i.r
  %i.s = zext i32 %i.b to i64
  %i.t = add nuw nsw i64 %i.s, 63
  %i.u = lshr i64 %i.t, 6                         ; 3 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %spec.select.i.i, i64 %i.v, i1 false), !noalias !178
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.x = sub nsw i64 %i.n, %i.u
  %i.y = shl nsw i64 %i.x, 3
  %i.z = and i64 %i.y, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.w, i8 0, i64 %i.z, i1 false), !noalias !178
  br label %_ZNK4llvh5APInt4zextEj.exit

_ZNK4llvh5APInt4zextEj.exit:                      ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %bb.c
  %.sink.i = phi ptr [ %i.k, %_ZN4llvh5APIntC2Ejmb.exit.i ], [ %i.p, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.aa, align 8, !tbaa !7, !alias.scope !178
  store ptr %.sink.i, ptr %0, align 8, !tbaa !9, !alias.scope !178
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.d:                                             ; preds = %bb.a
  %i.ab = icmp ugt i32 %i.b, %2
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.ac = icmp ult i32 %2, 65
  br i1 %i.ac, label %_ZN4llvh5APIntC2Ejmb.exit.i5, label %.lr.ph.i

_ZN4llvh5APIntC2Ejmb.exit.i5:                     ; preds = %bb.e
  %i.ad = icmp ult i32 %i.b, 65
  %i.ae = load ptr, ptr %1, align 8, !noalias !181
  %spec.select.i.i6 = select i1 %i.ad, ptr %1, ptr %i.ae
  %i.af = load i64, ptr %spec.select.i.i6, align 8, !tbaa !10, !noalias !181
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.ag, align 8, !tbaa !7, !alias.scope !181
  %i.ah = sub nsw i32 0, %2
  %i.ai = and i32 %i.ah, 63
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 -1, %i.aj
  %i.al = and i64 %i.af, %i.ak
  store i64 %i.al, ptr %0, align 8, !tbaa !9, !alias.scope !181
  br label %_ZNK4llvh5APInt5truncEj.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.am = zext i32 %2 to i64
  %i.an = add nuw nsw i64 %i.am, 63
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741816
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #22, !noalias !181 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.ar, align 8, !tbaa !7, !alias.scope !181
  store ptr %i.aq, ptr %0, align 8, !tbaa !9, !alias.scope !181
  %i.as = lshr i32 %2, 6
  %i.at = load ptr, ptr %1, align 8, !tbaa !9, !noalias !181 ; 8 uses
  %i.au = zext nneg i32 %i.as to i64              ; 7 uses
  %min.iters.check = icmp ult i32 %2, 384
  %i.av = ptrtoaddr ptr %i.at to i64
  %i.aw = ptrtoaddr ptr %i.aq to i64
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ult i64 %i.ax, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.au, 67108860                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x i64>, ptr %i.ay, align 8, !tbaa !10, !noalias !181
  %wide.load10 = load <2 x i64>, ptr %i.az, align 8, !tbaa !10, !noalias !181
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x i64> %wide.load, ptr %i.ba, align 8, !tbaa !10, !noalias !181
  store <2 x i64> %wide.load10, ptr %i.bb, align 8, !tbaa !10, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10, !noalias !181
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i.prol
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !10, !noalias !181
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !185

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %i.au
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10, !noalias !181
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !10, !noalias !181
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10, !noalias !181
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !10, !noalias !181
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.1
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10, !noalias !181
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.1
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !10, !noalias !181
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.2
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10, !noalias !181
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i.2
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !10, !noalias !181
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.au
  br i1 %.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !186

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bu = sub i32 0, %2
  %i.bv = and i32 %i.bu, 63                       ; 2 uses
  %.not18.i = icmp eq i32 %i.bv, 0
  br i1 %.not18.i, label %_ZNK4llvh5APInt5truncEj.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10, !noalias !181
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = lshr i64 -1, %i.by
  %i.ca = and i64 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !10, !noalias !181
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.g:                                             ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cc, align 8, !tbaa !7
  %i.cd = icmp ult i32 %i.b, 65
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ce = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.ce, ptr %0, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.i:                                             ; preds = %bb.g
  %i.cf = zext i32 %i.b to i64
  %i.cg = add nuw nsw i64 %i.cf, 63
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741816               ; 2 uses
  %i.cj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ci) #22 ; 2 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !9
  %i.ck = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %i.ck, i64 %i.ci, i1 false)
  br label %_ZNK4llvh5APInt5truncEj.exit

_ZNK4llvh5APInt5truncEj.exit:                     ; preds = %bb.i, %bb.h, %bb.f, %._crit_edge.i, %_ZN4llvh5APIntC2Ejmb.exit.i5, %_ZNK4llvh5APInt4zextEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11sextOrTruncEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh5APInt4sextEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2)
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %i.b, %2
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.e = icmp ult i32 %2, 65
  br i1 %i.e, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %.lr.ph.i

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %bb.d
  %i.f = icmp ult i32 %i.b, 65
  %i.g = load ptr, ptr %1, align 8, !noalias !187
  %spec.select.i.i = select i1 %i.f, ptr %1, ptr %i.g
  %i.h = load i64, ptr %spec.select.i.i, align 8, !tbaa !10, !noalias !187
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.i, align 8, !tbaa !7, !alias.scope !187
  %i.j = sub nsw i32 0, %2
  %i.k = and i32 %i.j, 63
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 -1, %i.l
  %i.n = and i64 %i.h, %i.m
  store i64 %i.n, ptr %0, align 8, !tbaa !9, !alias.scope !187
  br label %_ZNK4llvh5APInt5truncEj.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = zext i32 %2 to i64
  %i.p = add nuw nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !187 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.t, align 8, !tbaa !7, !alias.scope !187
  store ptr %i.s, ptr %0, align 8, !tbaa !9, !alias.scope !187
  %i.u = lshr i32 %2, 6
  %i.v = load ptr, ptr %1, align 8, !tbaa !9, !noalias !187 ; 8 uses
  %i.w = zext nneg i32 %i.u to i64                ; 7 uses
  %min.iters.check = icmp ult i32 %2, 384
  %i.x = ptrtoaddr ptr %i.v to i64
  %i.y = ptrtoaddr ptr %i.s to i64
  %i.z = sub i64 %i.y, %i.x
  %diff.check = icmp ult i64 %i.z, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.w, 67108860                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10, !noalias !187
  %wide.load8 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10, !noalias !187
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x i64> %wide.load, ptr %i.ac, align 8, !tbaa !10, !noalias !187
  store <2 x i64> %wide.load8, ptr %i.ad, align 8, !tbaa !10, !noalias !187
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.w
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.prol
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10, !noalias !187
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.prol
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !10, !noalias !187
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !191

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ai = sub nsw i64 %indvars.iv.i.ph, %i.w
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10, !noalias !187
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  store i64 %i.al, ptr %i.am, align 8, !tbaa !10, !noalias !187
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10, !noalias !187
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !10, !noalias !187
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.1
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !10, !noalias !187
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.1
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !10, !noalias !187
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.2
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10, !noalias !187
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.2
  store i64 %i.au, ptr %i.av, align 8, !tbaa !10, !noalias !187
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.w
  br i1 %.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !192

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aw = sub i32 0, %2
  %i.ax = and i32 %i.aw, 63                       ; 2 uses
  %.not18.i = icmp eq i32 %i.ax, 0
  br i1 %.not18.i, label %_ZNK4llvh5APInt5truncEj.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10, !noalias !187
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = lshr i64 -1, %i.ba
  %i.bc = and i64 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !10, !noalias !187
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.f:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.be, align 8, !tbaa !7
  %i.bf = icmp ult i32 %i.b, 65
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.bg, ptr %0, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt5truncEj.exit

bb.h:                                             ; preds = %bb.f
  %i.bh = zext i32 %i.b to i64
  %i.bi = add nuw nsw i64 %i.bh, 63
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741816               ; 2 uses
  %i.bl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #22 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !9
  %i.bm = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.bm, i64 %i.bk, i1 false)
  br label %_ZNK4llvh5APInt5truncEj.exit

_ZNK4llvh5APInt5truncEj.exit:                     ; preds = %bb.h, %bb.g, %bb.e, %._crit_edge.i, %_ZN4llvh5APIntC2Ejmb.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt10sextOrSelfEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = icmp ult i32 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh5APInt4sextEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %2)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !7
  %i.e = icmp ult i32 %i.b, 65
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.f, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741816                 ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !9
  %i.l = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.l, i64 %i.j, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11ashrInPlaceERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
end_hunk_0
begin_hunk_1_@_ZN4llvh5APInt6divideEPKmjS2_jPmS3_:bb.a
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond210.not.i = icmp eq i64 %indvars.iv.next207.i, %wide.trip.count209.i
  br i1 %exitcond210.not.i, label %.loopexit176.i, label %scalar.ph301, !llvm.loop !448

.loopexit176.i:                                   ; preds = %scalar.ph301, %middle.block316, %.preheader175.i, %bb.u
  %.1.i = phi i32 [ 0, %bb.u ], [ %.0153.lcssa.i, %.preheader175.i ], [ %.0153.lcssa.i, %middle.block316 ], [ %.0153.lcssa.i, %scalar.ph301 ]
  %i.hh = zext i32 %.pre230.i to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.hh
  store i32 %.1.i, ptr %i.hi, align 4, !tbaa !3
  %.not200.i = icmp eq i32 %.0138.lcssa, 0
  %i.hj = add i32 %.0138.lcssa, -2
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %i.hk ; 2 uses
  %i.hm = sext i32 %.1142.lcssa to i64
  %wide.trip.count214.i = zext i32 %.0138.lcssa to i64 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.ae, %.loopexit176.i
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i, %bb.ae ], [ %i.hm, %.loopexit176.i ] ; 7 uses
  %i.hn = trunc nsw i64 %indvars.iv220.i to i32
  %i.ho = add i32 %.0138.lcssa, %i.hn             ; 4 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.hp ; 5 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.hs = add i32 %i.ho, -1
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = zext i32 %i.hr to i64
  %i.hx = shl nuw i64 %i.hw, 32
  %i.hy = zext i32 %i.hv to i64
  %i.hz = or disjoint i64 %i.hx, %i.hy            ; 2 uses
  %i.ia = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.ib = zext i32 %i.ia to i64                   ; 3 uses
  %i.ic = udiv i64 %i.hz, %i.ib                   ; 5 uses
  %i.id = urem i64 %i.hz, %i.ib                   ; 2 uses
  %i.ie = icmp eq i64 %i.ic, 4294967296
  br i1 %i.ie, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.if = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.ig = zext i32 %i.if to i64
  %i.ih = mul i64 %i.ic, %i.ig
  %i.ii = shl nuw i64 %i.id, 32
  %i.ij = add i32 %i.ho, -2
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3
  %i.in = zext i32 %i.im to i64
  %i.io = or disjoint i64 %i.ii, %i.in
  %i.ip = icmp ugt i64 %i.ih, %i.io
  br i1 %i.ip, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.iq = add i64 %i.ic, -1                       ; 4 uses
  %i.ir = add nuw nsw i64 %i.id, %i.ib            ; 2 uses
  %i.is = icmp samesign ult i64 %i.ir, 4294967296
  br i1 %i.is, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.it = icmp eq i64 %i.iq, 4294967296
  br i1 %i.it, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iu = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.iv = zext i32 %i.iu to i64
  %i.iw = mul i64 %i.iq, %i.iv
  %i.ix = shl nuw i64 %i.ir, 32
  %i.iy = add i32 %i.ho, -2
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = zext i32 %i.jb to i64
  %i.jd = or disjoint i64 %i.ix, %i.jc
  %i.je = icmp ugt i64 %i.iw, %i.jd
  br i1 %i.je, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.jf = add i64 %i.ic, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.0158.i = phi i64 [ %i.jf, %bb.aa ], [ %i.iq, %bb.z ], [ %i.iq, %bb.x ], [ %i.ic, %bb.w ] ; 3 uses
  br i1 %.not200.i, label %._crit_edge.thread.i, label %.lr.ph185.i

._crit_edge.thread.i:                             ; preds = %bb.ab
  %i.jg = trunc i64 %.0158.i to i32
  %i.jh = getelementptr inbounds [4 x i8], ptr %.0150, i64 %indvars.iv220.i
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !3
  br label %bb.ae

._crit_edge.i:                                    ; preds = %.lr.ph185.i
  %.pre.i = load i32, ptr %i.hq, align 4, !tbaa !3 ; 2 uses
  %.pre229.i = zext i32 %.pre.i to i64
  %i.ji = icmp samesign ugt i64 %i.kd, %.pre229.i
  %i.jj = trunc i64 %i.kc to i32
  %i.jk = sub i32 %.pre.i, %i.jj
  store i32 %i.jk, ptr %i.hq, align 4, !tbaa !3
  %i.jl = trunc i64 %.0158.i to i32               ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %.0150, i64 %indvars.iv220.i ; 2 uses
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !3
  br i1 %i.ji, label %.lr.ph190.preheader.i, label %bb.ae

.lr.ph185.i:                                      ; preds = %bb.ab, %.lr.ph185.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %.lr.ph185.i ], [ 0, %bb.ab ] ; 3 uses
  %.0157183.i = phi i64 [ %i.kd, %.lr.ph185.i ], [ 0, %bb.ab ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv211.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3
  %i.jp = zext i32 %i.jo to i64
  %i.jq = mul i64 %.0158.i, %i.jp                 ; 2 uses
  %i.jr = add nsw i64 %indvars.iv211.i, %indvars.iv220.i
  %i.js = and i64 %i.jr, 4294967295
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !3
  %i.jv = zext i32 %i.ju to i64
  %i.jw = and i64 %i.jq, 4294967295
  %i.jx = add nuw nsw i64 %.0157183.i, %i.jw
  %i.jy = sub nsw i64 %i.jv, %i.jx                ; 2 uses
  %i.jz = trunc i64 %i.jy to i32
  store i32 %i.jz, ptr %i.jt, align 4, !tbaa !3
  %i.ka = lshr i64 %i.jq, 32
  %i.kb = lshr i64 %i.jy, 32
  %i.kc = sub nsw i64 %i.ka, %i.kb                ; 2 uses
  %i.kd = and i64 %i.kc, 4294967295               ; 2 uses
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %exitcond215.not.i = icmp eq i64 %indvars.iv.next212.i, %wide.trip.count214.i
  br i1 %exitcond215.not.i, label %._crit_edge.i, label %.lr.ph185.i, !llvm.loop !449

.lr.ph190.preheader.i:                            ; preds = %._crit_edge.i
  %i.ke = add i32 %i.jl, -1
  store i32 %i.ke, ptr %i.jm, align 4, !tbaa !3
  br label %.lr.ph190.i

._crit_edge191.i:                                 ; preds = %bb.ad
  %i.kf = zext i1 %i.ku to i32
  %i.kg = load i32, ptr %i.hq, align 4, !tbaa !3
  %i.kh = add i32 %i.kg, %i.kf
  store i32 %i.kh, ptr %i.hq, align 4, !tbaa !3
  br label %bb.ae

.lr.ph190.i:                                      ; preds = %bb.ad, %.lr.ph190.preheader.i
  %indvars.iv216.i = phi i64 [ 0, %.lr.ph190.preheader.i ], [ %indvars.iv.next217.i, %bb.ad ] ; 3 uses
  %.0152187.i = phi i1 [ false, %.lr.ph190.preheader.i ], [ %i.ku, %bb.ad ] ; 2 uses
  %i.ki = add nsw i64 %indvars.iv216.i, %indvars.iv220.i
  %i.kj = and i64 %i.ki, 4294967295
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0147, i64 %indvars.iv216.i
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3  ; 2 uses
  %i.kn = load i32, ptr %i.kk, align 4, !tbaa !3  ; 2 uses
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.km, i32 %i.kn) ; 2 uses
  %i.kp = zext i1 %.0152187.i to i32
  %i.kq = add i32 %i.km, %i.kp
  %i.kr = add i32 %i.kq, %i.kn                    ; 3 uses
  store i32 %i.kr, ptr %i.kk, align 4, !tbaa !3
  %i.ks = icmp ult i32 %i.kr, %i.ko
  br i1 %i.ks, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph190.i
  %i.kt = icmp eq i32 %i.kr, %i.ko
  %spec.select.i = and i1 %.0152187.i, %i.kt
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph190.i
  %i.ku = phi i1 [ true, %.lr.ph190.i ], [ %spec.select.i, %bb.ac ] ; 2 uses
  %indvars.iv.next217.i = add nuw nsw i64 %indvars.iv216.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next217.i, %wide.trip.count214.i
  br i1 %exitcond219.not.i, label %._crit_edge191.i, label %.lr.ph190.i, !llvm.loop !450

bb.ae:                                            ; preds = %._crit_edge191.i, %._crit_edge.i, %._crit_edge.thread.i
  %indvars.iv.next221.i = add nsw i64 %indvars.iv220.i, -1
  %i.kv = icmp sgt i64 %indvars.iv220.i, 0
  br i1 %i.kv, label %bb.v, label %bb.af, !llvm.loop !451

bb.af:                                            ; preds = %bb.ae
  %.not170.i = icmp eq ptr %.0149, null
  br i1 %.not170.i, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.kw = icmp sgt i32 %i.fu, -1                  ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader173.i

.preheader173.i:                                  ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph195.i, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph195.i:                                      ; preds = %.preheader173.i
  %i.kx = sub nuw nsw i32 32, %i.fy               ; 2 uses
  %i.ky = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %i.kz = icmp eq i32 %i.fu, 0
  br i1 %i.kz, label %.epil.preheader, label %.lr.ph195.i.new

.lr.ph195.i.new:                                  ; preds = %.lr.ph195.i
  %unroll_iter = and i64 %i.ky, 4294967294
  br label %bb.ah

.preheader.i:                                     ; preds = %bb.ag
  br i1 %i.kw, label %.lr.ph197.i.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.lr.ph197.i.preheader:                            ; preds = %.preheader.i
  %i.la = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check324 = icmp ult i32 %i.fu, 7
  %i.lb = sub i64 %.0145321, %.0149322
  %diff.check = icmp ult i64 %i.lb, 32
  %or.cond380 = select i1 %min.iters.check324, i1 true, i1 %diff.check
  br i1 %or.cond380, label %.lr.ph197.i.preheader385, label %vector.ph325

vector.ph325:                                     ; preds = %.lr.ph197.i.preheader
  %n.vec327 = and i64 %i.la, 4294967288           ; 3 uses
  %i.lc = sub nsw i64 %i.fv, %n.vec327
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next332, %vector.body328 ] ; 2 uses
  %i.ld = sub i64 %i.fv, %index329                ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -12
  %i.lg = getelementptr inbounds i8, ptr %i.le, i64 -28
  %wide.load330 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !3
  %wide.load331 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !3
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %i.ld ; 2 uses
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -12
  %i.lj = getelementptr inbounds i8, ptr %i.lh, i64 -28
  store <4 x i32> %wide.load330, ptr %i.li, align 4, !tbaa !3
  store <4 x i32> %wide.load331, ptr %i.lj, align 4, !tbaa !3
  %index.next332 = add nuw i64 %index329, 8       ; 2 uses
  %i.lk = icmp eq i64 %index.next332, %n.vec327
  br i1 %i.lk, label %middle.block333, label %vector.body328, !llvm.loop !452

middle.block333:                                  ; preds = %vector.body328
  %cmp.n334 = icmp eq i64 %i.la, %n.vec327
  br i1 %cmp.n334, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i.preheader385

.lr.ph197.i.preheader385:                         ; preds = %.lr.ph197.i.preheader, %middle.block333
  %indvars.iv226.i.ph = phi i64 [ %i.fv, %.lr.ph197.i.preheader ], [ %i.lc, %middle.block333 ] ; 4 uses
  %i.ll = add nsw i64 %indvars.iv226.i.ph, 1
  %xtraiter401 = and i64 %i.ll, 3                 ; 2 uses
  %lcmp.mod402.not = icmp eq i64 %xtraiter401, 0
  br i1 %lcmp.mod402.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol

.lr.ph197.i.prol:                                 ; preds = %.lr.ph197.i.preheader385, %.lr.ph197.i.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ], [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader385 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph197.i.prol ], [ 0, %.lr.ph197.i.preheader385 ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv226.i.prol
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !3
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv226.i.prol
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !3
  %indvars.iv.next227.i.prol = add nsw i64 %indvars.iv226.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter401
  br i1 %prol.iter.cmp.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol, !llvm.loop !453

.lr.ph197.i.prol.loopexit:                        ; preds = %.lr.ph197.i.prol, %.lr.ph197.i.preheader385
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %.lr.ph197.i.preheader385 ], [ %indvars.iv.next227.i.prol, %.lr.ph197.i.prol ]
  %i.lp = icmp ult i64 %indvars.iv226.i.ph, 3
  br i1 %i.lp, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i

bb.ah:                                            ; preds = %bb.ah, %.lr.ph195.i.new
  %indvars.iv223.i = phi i64 [ %i.fv, %.lr.ph195.i.new ], [ %indvars.iv.next224.i.1, %bb.ah ] ; 4 uses
  %.0149193.i = phi i32 [ 0, %.lr.ph195.i.new ], [ %i.mb, %bb.ah ]
  %niter = phi i64 [ 0, %.lr.ph195.i.new ], [ %niter.next.1, %bb.ah ]
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv223.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !3  ; 2 uses
  %i.ls = lshr i32 %i.lr, %i.fy
  %i.lt = or i32 %i.ls, %.0149193.i
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv223.i
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !3
  %i.lv = shl i32 %i.lr, %i.kx
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next224.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !3  ; 2 uses
  %i.ly = lshr i32 %i.lx, %i.fy
  %i.lz = or disjoint i32 %i.ly, %i.lv
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next224.i
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !3
  %i.mb = shl i32 %i.lx, %i.kx                    ; 2 uses
  %indvars.iv.next224.i.1 = add nsw i64 %indvars.iv223.i, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa, label %bb.ah, !llvm.loop !454

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %.lr.ph197.i ], [ %indvars.iv226.i.unr, %.lr.ph197.i.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv226.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !3
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv226.i
  store i32 %i.md, ptr %i.me, align 4, !tbaa !3
  %indvars.iv.next227.i = add nsw i64 %indvars.iv226.i, -1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !3
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i
  store i32 %i.mg, ptr %i.mh, align 4, !tbaa !3
  %indvars.iv.next227.i.1 = add nsw i64 %indvars.iv226.i, -2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i.1
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i.1
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !3
  %indvars.iv.next227.i.2 = add nsw i64 %indvars.iv226.i, -3 ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv.next227.i.2
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv.next227.i.2
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !3
  %indvars.iv.next227.i.3 = add nsw i64 %indvars.iv226.i, -4
  %.not249.i.3 = icmp eq i64 %indvars.iv.next227.i.2, 0
  br i1 %.not249.i.3, label %_ZL8KnuthDivPjS_S_S_jj.exit, label %.lr.ph197.i, !llvm.loop !455

_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa: ; preds = %bb.ah
  %i.mo = and i64 %i.fv, 1
  %lcmp.mod399.not.not = icmp eq i64 %i.mo, 0
  br i1 %lcmp.mod399.not.not, label %.epil.preheader, label %_ZL8KnuthDivPjS_S_S_jj.exit

.epil.preheader:                                  ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa, %.lr.ph195.i
  %indvars.iv223.i.epil.init = phi i64 [ %i.fv, %.lr.ph195.i ], [ %indvars.iv.next224.i.1, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa ] ; 2 uses
  %.0149193.i.epil.init = phi i32 [ 0, %.lr.ph195.i ], [ %i.mb, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa ]
  %lcmp.mod400 = trunc i64 %i.ky to i1
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.0145, i64 %indvars.iv223.i.epil.init
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = lshr i32 %i.mq, %i.fy
  %i.ms = or i32 %i.mr, %.0149193.i.epil.init
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.0149, i64 %indvars.iv223.i.epil.init
  store i32 %i.ms, ptr %i.mt, align 4, !tbaa !3
  br label %_ZL8KnuthDivPjS_S_S_jj.exit

_ZL8KnuthDivPjS_S_S_jj.exit:                      ; preds = %.epil.preheader, %_ZL8KnuthDivPjS_S_S_jj.exit.loopexit386.unr-lcssa, %.lr.ph197.i.prol.loopexit, %.lr.ph197.i, %middle.block333, %.preheader.i, %.preheader173.i, %bb.af, %._crit_edge195, %bb.t
  %.not160 = icmp ne ptr %4, null
  %i.mu = icmp ne i32 %1, 0
  %or.cond = and i1 %.not160, %i.mu
  br i1 %or.cond, label %.lr.ph198.preheader, label %.loopexit164

.lr.ph198.preheader:                              ; preds = %_ZL8KnuthDivPjS_S_S_jj.exit
  %wide.trip.count228 = zext i32 %1 to i64        ; 5 uses
  %i.mv = add i32 %1, -10
  %or.cond381 = icmp ult i32 %i.mv, 2147483639
  br i1 %or.cond381, label %vector.ph341, label %.lr.ph198.preheader384

vector.ph341:                                     ; preds = %.lr.ph198.preheader
  %n.vec343 = and i64 %wide.trip.count228, 4294967292 ; 3 uses
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph341
  %index345 = phi i64 [ 0, %vector.ph341 ], [ %index.next350, %vector.body344 ] ; 4 uses
  %i.mw = shl i64 %index345, 1
  %i.mx = shl i64 %index345, 1
  %i.my = and i64 %i.mw, 4294967288
  %i.mz = and i64 %i.mx, 4294967288
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.my
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %wide.vec = load <4 x i32>, ptr %i.na, align 4, !tbaa !3
  %i.nd = freeze <4 x i32> %wide.vec
  %wide.vec347 = load <4 x i32>, ptr %i.nc, align 4, !tbaa !3
  %i.ne = freeze <4 x i32> %wide.vec347
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index345 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store <4 x i32> %i.nd, ptr %i.nf, align 8, !tbaa !10
  store <4 x i32> %i.ne, ptr %i.ng, align 8, !tbaa !10
  %index.next350 = add nuw i64 %index345, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next350, %n.vec343
  br i1 %i.nh, label %middle.block351, label %vector.body344, !llvm.loop !456

middle.block351:                                  ; preds = %vector.body344
  %cmp.n352 = icmp eq i64 %n.vec343, %wide.trip.count228
  br i1 %cmp.n352, label %.loopexit164, label %.lr.ph198.preheader384

.lr.ph198.preheader384:                           ; preds = %.lr.ph198.preheader, %middle.block351
  %indvars.iv225.ph = phi i64 [ 0, %.lr.ph198.preheader ], [ %n.vec343, %middle.block351 ] ; 5 uses
  %xtraiter403 = and i64 %wide.trip.count228, 1
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod404.not, label %.lr.ph198.prol.loopexit, label %.lr.ph198.prol

.lr.ph198.prol:                                   ; preds = %.lr.ph198.preheader384
  %i.ni = trunc nuw i64 %indvars.iv225.ph to i32
  %i.nj = shl i32 %i.ni, 1                        ; 2 uses
  %i.nk = or disjoint i32 %i.nj, 1
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !3
  %i.no = zext i32 %i.nj to i64
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !3
  %i.nr = zext i32 %i.nn to i64
  %i.ns = shl nuw i64 %i.nr, 32
  %i.nt = zext i32 %i.nq to i64
  %i.nu = or disjoint i64 %i.ns, %i.nt
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv225.ph
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !10
  %indvars.iv.next226.prol = or disjoint i64 %indvars.iv225.ph, 1
  br label %.lr.ph198.prol.loopexit

.lr.ph198.prol.loopexit:                          ; preds = %.lr.ph198.prol, %.lr.ph198.preheader384
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %.lr.ph198.preheader384 ], [ %indvars.iv.next226.prol, %.lr.ph198.prol ]
  %i.nw = add nsw i64 %wide.trip.count228, -1
  %i.nx = icmp eq i64 %indvars.iv225.ph, %i.nw
  br i1 %i.nx, label %.loopexit164, label %.lr.ph198

.lr.ph198:                                        ; preds = %.lr.ph198.prol.loopexit, %.lr.ph198
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.1, %.lr.ph198 ], [ %indvars.iv225.unr, %.lr.ph198.prol.loopexit ] ; 4 uses
  %i.ny = trunc nuw i64 %indvars.iv225 to i32
  %i.nz = shl i32 %i.ny, 1                        ; 2 uses
  %i.oa = or disjoint i32 %i.nz, 1
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0150, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb:bb.a
  store i8 %i.jn, ptr %i.jm, align 1
  %i.jo = load i32, ptr %i.fo, align 8, !tbaa !609
  %i.jp = add i32 %i.jo, 1                        ; 2 uses
  store i32 %i.jp, ptr %i.fo, align 8, !tbaa !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pre146 = load i32, ptr %i.da, align 8, !tbaa !7
  br label %bb.ac, !llvm.loop !622

.loopexit:                                        ; preds = %_ZNK4llvh5APInt12getBoolValueEv.exit, %_ZNK4llvh5APInt12getBoolValueEv.exit97, %bb.ad
  %i.jq = phi i32 [ %i.ik, %_ZNK4llvh5APInt12getBoolValueEv.exit97 ], [ %i.ik, %bb.ad ], [ %i.f, %_ZNK4llvh5APInt12getBoolValueEv.exit ]
  %i.jr = phi i32 [ %i.ij, %_ZNK4llvh5APInt12getBoolValueEv.exit97 ], [ %i.ij, %bb.ad ], [ %i.gr, %_ZNK4llvh5APInt12getBoolValueEv.exit ] ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = icmp ne i32 %i.fn, %i.jr
  %i.ju = add nsw i64 %i.js, -1                   ; 2 uses
  %i.jv = icmp sgt i64 %i.ju, %i.fp
  %or.cond.i.i101 = select i1 %i.jt, i1 %i.jv, i1 false
  br i1 %or.cond.i.i101, label %.lr.ph.i.i102.preheader, label %_ZSt7reverseIPcEvT_S1_.exit

.lr.ph.i.i102.preheader:                          ; preds = %.loopexit
  %i.jw = load ptr, ptr %1, align 8, !tbaa !614   ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %i.jw, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.fp
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader, %.lr.ph.i.i102
  %.014.i.i = phi ptr [ %.0.i.i103, %.lr.ph.i.i102 ], [ %.012.i.i, %.lr.ph.i.i102.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.ka, %.lr.ph.i.i102 ], [ %i.jx, %.lr.ph.i.i102.preheader ] ; 3 uses
  %i.jy = load i8, ptr %.0913.i.i, align 1, !tbaa !9
  %i.jz = load i8, ptr %.014.i.i, align 1, !tbaa !9
  store i8 %i.jz, ptr %.0913.i.i, align 1, !tbaa !9
  store i8 %i.jy, ptr %.014.i.i, align 1, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i103 = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.kb = icmp ult ptr %i.ka, %.0.i.i103
  br i1 %i.kb, label %.lr.ph.i.i102, label %_ZSt7reverseIPcEvT_S1_.exit.loopexit, !llvm.loop !623

_ZSt7reverseIPcEvT_S1_.exit.loopexit:             ; preds = %.lr.ph.i.i102
  %.pre147 = load i32, ptr %i.da, align 8, !tbaa !7
  br label %_ZSt7reverseIPcEvT_S1_.exit

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %_ZSt7reverseIPcEvT_S1_.exit.loopexit, %.loopexit
  %i.kc = phi i32 [ %.pre147, %_ZSt7reverseIPcEvT_S1_.exit.loopexit ], [ %i.jq, %.loopexit ]
  %i.kd = icmp ugt i32 %i.kc, 64
  br i1 %i.kd, label %bb.ai, label %_ZN4llvh5APIntD2Ev.exit

bb.ai:                                            ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ke = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_ZN4llvh5APIntD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ke) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8toStringB5cxx11Ejb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !614
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !609
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 40, ptr %i.d, align 4, !tbaa !612
  call void @_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  %i.e = load ptr, ptr %4, align 8, !tbaa !614    ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !609  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %.not.i.i = icmp eq ptr %i.e, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !630, !alias.scope !633
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.b

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !634, !alias.scope !633
  store i8 0, ptr %i.h, align 8, !tbaa !9, !alias.scope !633
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !633
  store i64 %i.g, ptr %i.a, align 8, !tbaa !10, !noalias !633
  %i.j = icmp ugt i32 %i.f, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !636, !alias.scope !633
  %i.l = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !633
  store i64 %i.l, ptr %i.h, align 8, !tbaa !9, !alias.scope !633
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !9
  store i8 %i.n, ptr %i.m, align 1, !tbaa !9
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !633 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !634, !alias.scope !633
  %i.q = load ptr, ptr %0, align 8, !tbaa !636, !alias.scope !633
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !633
  %.pre = load ptr, ptr %4, align 8, !tbaa !614   ; 2 uses
  %i.s = icmp eq ptr %.pre, %i.b
  br i1 %i.s, label %_ZN4llvh11SmallVectorIcLj40EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.t = phi ptr [ null, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread ], [ %.pre, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit ]
  call void @free(ptr noundef %i.t) #24
  br label %_ZN4llvh11SmallVectorIcLj40EED2Ev.exit

_ZN4llvh11SmallVectorIcLj40EED2Ev.exit:           ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt5printERNS_11raw_ostreamEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !614
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !609
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 40, ptr %i.c, align 4, !tbaa !612
  call void @_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 10, i1 noundef zeroext %2, i1 noundef zeroext false)
  %i.d = load ptr, ptr %3, align 8, !tbaa !614
  %i.e = load i32, ptr %i.b, align 8, !tbaa !609
  %i.f = zext i32 %i.e to i64
  %i.g = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.d, i64 noundef %i.f) #24 ; 0 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !614    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZN4llvh11SmallVectorIcLj40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.h) #24
  br label %_ZN4llvh11SmallVectorIcLj40EED2Ev.exit

_ZN4llvh11SmallVectorIcLj40EED2Ev.exit:           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvh5APInt5tcSetEPmmj(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !10
  %i.a = icmp ugt i32 %2, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.d, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt8tcAssignEPmPKmj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check = icmp ult i32 %2, 6
  %i.c = sub i64 %i.a, %i.b
  %diff.check = icmp ult i64 %i.c, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !10
  %wide.load8 = load <2 x i64>, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i64> %wide.load, ptr %i.f, align 8, !tbaa !10
  store <2 x i64> %wide.load8, ptr %i.g, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !637

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader9

.lr.ph.preheader9:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader9, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader9 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader9 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.prol
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.prol
  store i64 %i.j, ptr %i.k, align 8, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !638

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader9
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader9 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.l = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.m = icmp ugt i64 %i.l, -4
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.o, ptr %i.p, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  store i64 %i.r, ptr %i.s, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.1
  store i64 %i.u, ptr %i.v, align 8, !tbaa !10
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.2
  store i64 %i.x, ptr %i.y, align 8, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !639
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh5APInt8tcIsZeroEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !10
  %.not = icmp eq i64 %i.c, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !640

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = lshr i32 %1, 6
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = and i32 %1, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 %i.d, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 1
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt8tcSetBitEPmj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = and i32 %1, 63
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 1, %i.b
  %i.d = lshr i32 %1, 6
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = or i64 %i.g, %i.c
  store i64 %i.h, ptr %i.f, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt10tcClearBitEPmj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = and i32 %1, 63
  %i.b = zext nneg i32 %i.a to i64
  %i.c = shl nuw i64 1, %i.b
  %i.d = xor i64 %i.c, -1
  %i.e = lshr i32 %1, 6
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = and i64 %i.h, %i.d
  store i64 %i.i, ptr %i.g, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not17 = icmp eq i32 %1, 0
  br i1 %.not17, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !641

bb.c:                                             ; preds = %.lr.ph
  %i.c = trunc nuw i64 %indvars.iv to i32
  %i.d = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.b, i1 true)
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = shl i32 %i.c, 6
  %i.g = or disjoint i32 %i.f, %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN4llvh5APInt5tcMSBEPKmj(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.08 = phi i32 [ %1, %bb.a ], [ %i.a, %bb.d ]
  %i.a = add i32 %.08, -1                         ; 4 uses
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.d, i1 true)
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = shl i32 %i.a, 6
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = xor i32 %i.h, 63
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not11 = icmp eq i32 %i.a, 0
  br i1 %.not11, label %.loopexit, label %bb.b, !llvm.loop !642

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.c ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt9tcExtractEPmjPKmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = add i32 %3, 63                           ; 4 uses
  %i.d = lshr i32 %i.c, 6                         ; 10 uses
  %i.e = lshr i32 %4, 6                           ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.f ; 6 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit.thread, label %.lr.ph.preheader.i

_ZN4llvh5APInt8tcAssignEPmPKmj.exit.thread:       ; preds = %bb.a
  %i.h = and i32 %4, 63
  br label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 640
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.i = shl nuw nsw i64 %i.f, 3
  %i.j = add i64 %i.i, %i.a
  %i.k = sub i64 %i.b, %i.j
  %diff.check = icmp ult i64 %i.k, 32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 67108860   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !10
  %wide.load55 = load <2 x i64>, ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8, !tbaa !10
  store <2 x i64> %wide.load55, ptr %i.o, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.prol
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.prol
  store i64 %i.r, ptr %i.s, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !644

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.t = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.u = icmp ugt i64 %i.t, -4
  br i1 %i.u, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store i64 %i.w, ptr %i.x, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.1
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !10
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.2
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i, !llvm.loop !645

_ZN4llvh5APInt8tcAssignEPmPKmj.exit:              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %i.ah = and i32 %4, 63                          ; 7 uses
  %.not.i36 = icmp eq i32 %i.ah, 0
  br i1 %.not.i36, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit
  %i.ai = zext nneg i32 %i.ah to i64              ; 4 uses
  %i.aj = sub nuw nsw i32 64, %i.ah
  %i.ak = zext nneg i32 %i.aj to i64              ; 3 uses
  %i.al = load i64, ptr %0, align 8, !tbaa !10
  %i.am = lshr i64 %i.al, %i.ai                   ; 3 uses
  store i64 %i.am, ptr %0, align 8, !tbaa !10
  %.not32.i41 = icmp eq i32 %i.d, 1
  br i1 %.not32.i41, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i37
  %i.an = zext nneg i32 %i.d to i64
  %i.ao = add nsw i64 %i.an, -1                   ; 3 uses
  %xtraiter56 = and i64 %i.ao, 1
  %i.ap = icmp eq i32 %i.d, 2
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.next.i3943 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.i39.1, %.lr.ph ] ; 5 uses
  %i.aq = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ]
  %i.ar = phi i64 [ %i.am, %.lr.ph.preheader.new ], [ %i.bm, %.lr.ph ]
  %indvars.iv.i3842 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.i39, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.as = add nuw nsw i64 %indvars.iv.i3842, 1
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = shl i64 %i.av, %i.ak
  %i.ax = or i64 %i.aw, %i.ar
  store i64 %i.ax, ptr %i.aq, align 8, !tbaa !10
  %i.ay = and i64 %indvars.iv.next.i3943, 4294967295
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bb = lshr i64 %i.ba, %i.ai                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i3943 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.next.i3943, 1 ; 4 uses
  %i.bd = add nuw nsw i64 %indvars.iv.next.i3943, 1
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.bh = shl i64 %i.bg, %i.ak
  %i.bi = or i64 %i.bh, %i.bb
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !10
  %i.bj = and i64 %indvars.iv.next.i39, 4294967295
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = lshr i64 %i.bl, %i.ai                   ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i39 ; 3 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !10
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.next.i3943, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, label %.lr.ph

_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph
  %lcmp.mod59.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod59.not, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.next.i3943.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.i39.1, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bn, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %.epil.init58 = phi i64 [ %i.am, %.lr.ph.preheader ], [ %i.bm, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %indvars.iv.i3842.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.i39, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.bo = add nuw nsw i64 %indvars.iv.i3842.epil.init, 1
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = shl i64 %i.br, %i.ak
  %i.bt = or i64 %i.bs, %.epil.init58
  store i64 %i.bt, ptr %.epil.init, align 8, !tbaa !10
  %i.bu = and i64 %indvars.iv.next.i3943.epil.init, 4294967295
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.bx = lshr i64 %i.bw, %i.ai
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i3943.epil.init
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !10
  br label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit

_ZN4llvh5APInt12tcShiftRightEPmjj.exit:           ; preds = %.lr.ph.epil.preheader, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit.thread, %.lr.ph.i37, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit
  %i.bz = phi i32 [ %i.h, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit.thread ], [ %i.ah, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit ], [ %i.ah, %.lr.ph.i37 ], [ %i.ah, %_ZN4llvh5APInt12tcShiftRightEPmjj.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.epil.preheader ]
  %i.ca = and i32 %i.c, -64
  %i.cb = sub i32 %i.ca, %i.bz                    ; 4 uses
  %i.cc = icmp ult i32 %i.cb, %3
  br i1 %i.cc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh5APInt12tcShiftRightEPmjj.exit
  %reass.sub = sub i32 %i.cb, %3
  %i.cd = add i32 %reass.sub, 64
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 -1, %i.ce
  %i.cg = add nuw nsw i32 %i.e, %i.d
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = and i64 %i.cj, %i.cf
  %i.cl = and i32 %i.cb, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = add nsw i32 %i.d, -1
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = or i64 %i.cn, %i.cr
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %_ZN4llvh5APInt12tcShiftRightEPmjj.exit
  %i.ct = icmp ugt i32 %i.cb, %3
  br i1 %i.ct, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = and i32 %3, 63                          ; 2 uses
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cv = sub nuw nsw i32 64, %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 -1, %i.cw
  %i.cy = add nsw i32 %i.d, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = and i64 %i.db, %i.cx
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.dd = icmp ult i32 %i.d, %1
  br i1 %i.dd, label %.lr.ph45.preheader, label %._crit_edge

.lr.ph45.preheader:                               ; preds = %bb.f
  %i.de = lshr i32 %i.c, 3
  %i.df = and i32 %i.de, 536870904
  %i.dg = zext nneg i32 %i.df to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.dg
  %i.dh = xor i32 %i.d, -1
  %i.di = add i32 %1, %i.dh
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = add nuw nsw i64 %i.dk, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.dl, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph45.preheader, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt8tcNegateEPmj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %1 to i64         ; 4 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.a, align 8, !tbaa !10
  %wide.load4 = load <2 x i64>, ptr %i.b, align 8, !tbaa !10
  %i.c = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.d = xor <2 x i64> %wide.load4, splat (i64 -1)
  store <2 x i64> %i.c, ptr %i.a, align 8, !tbaa !10
  store <2 x i64> %i.d, ptr %i.b, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.e = icmp eq i64 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !646

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = xor i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i.i, label %.lr.ph.i, !llvm.loop !647

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i, %middle.block
  %i.i = load i64, ptr %0, align 8, !tbaa !10
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %0, align 8, !tbaa !10
  %.not.peel.i.i = icmp ne i64 %i.j, 0
  %exitcond.peel.not.i.i = icmp eq i32 %1, 1
  %or.cond = or i1 %exitcond.peel.not.i.i, %.not.peel.i.i
  br i1 %or.cond, label %_ZN4llvh5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 1, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !10
  %.not.i.i = icmp ne i64 %i.m, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  %or.cond3 = select i1 %.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond3, label %_ZN4llvh5APInt11tcIncrementEPmj.exit, label %.lr.ph.i.i, !llvm.loop !16

_ZN4llvh5APInt11tcIncrementEPmj.exit:             ; preds = %.lr.ph.i.i, %bb.a, %.lr.ph.preheader.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr21 = phi ptr [ %1, %bb.a ], [ %.tr22, %tailrecurse ] ; 2 uses
  %.tr22 = phi ptr [ %2, %bb.a ], [ %.tr21, %tailrecurse ] ; 2 uses
  %.tr23 = phi i32 [ %3, %bb.a ], [ %.tr24, %tailrecurse ] ; 4 uses
  %.tr24 = phi i32 [ %4, %bb.a ], [ %.tr23, %tailrecurse ] ; 6 uses
  %i.a = icmp ugt i32 %.tr23, %.tr24
  br i1 %i.a, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  store i64 0, ptr %0, align 8, !tbaa !10
  %i.b = icmp ugt i32 %.tr24, 1
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN4llvh5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.c = add i32 %.tr24, -1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.e, i1 false), !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %bb.b, %.lr.ph.preheader.i
  %.not = icmp eq i32 %.tr23, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APInt5tcSetEPmmj.exit
  %i.f = add i32 %.tr24, 1
  %wide.trip.count = zext i32 %.tr23 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.tr21, i64 %indvars.iv
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.g, ptr noundef %.tr22, i64 noundef %i.i, i64 noundef 0, i32 noundef %.tr24, i32 noundef %i.f, i1 noundef zeroext true) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !648

._crit_edge:                                      ; preds = %bb.c, %_ZN4llvh5APInt5tcSetEPmmj.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh5APInt8tcDivideEPmPKmS1_S1_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.08.i = phi i32 [ %4, %bb.a ], [ %i.e, %bb.c ]
  %i.e = add i32 %.08.i, -1                       ; 4 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN4llvh5APInt5tcMSBEPKmj.exit

bb.c:                                             ; preds = %bb.b
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %_ZN4llvh5APInt5tcMSBEPKmj.exit.thread, label %bb.b, !llvm.loop !642

_ZN4llvh5APInt5tcMSBEPKmj.exit:                   ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = shl i32 %i.e, 6
  %i.l = or disjoint i32 %i.k, %i.j
  %i.m = xor i32 %i.l, 63
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvh5APInt5tcMSBEPKmj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APInt5tcMSBEPKmj.exit
  %i.p = shl i32 %4, 6
  %i.q = sub i32 %i.p, %i.n                       ; 4 uses
  %i.r = lshr i32 %i.q, 6                         ; 3 uses
  %i.s = and i32 %i.q, 63                         ; 3 uses
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  %i.u = shl nuw i64 1, %i.t
  %.not.i45 = icmp eq i32 %4, 0                   ; 4 uses
  br i1 %.not.i45, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext i32 %4 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %4, 6
  %i.v = sub i64 %i.d, %i.c
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !10
  %wide.load126 = load <2 x i64>, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %wide.load, ptr %i.y, align 8, !tbaa !10
  store <2 x i64> %wide.load126, ptr %i.z, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !649

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.prol
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !650

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !10
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, label %.lr.ph.i, !llvm.loop !651

_ZN4llvh5APInt8tcAssignEPmPKmj.exit:              ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.d
  %.not.i46 = icmp eq i32 %i.q, 0
  br i1 %.not.i46, label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.r) ; 11 uses
  %i.as = icmp eq i32 %i.s, 0
  br i1 %i.as, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.at = icmp ult i32 %i.r, %4
  br i1 %i.at, label %.lr.ph.i47, label %.loopexit.i

.lr.ph.i47:                                       ; preds = %.preheader.i
  %i.au = sub nuw nsw i32 64, %i.s
  %i.av = zext nneg i32 %i.au to i64              ; 3 uses
  %i.aw = zext i32 %4 to i64                      ; 3 uses
  %indvars.iv.next.i4987 = add nsw i64 %i.aw, -1  ; 5 uses
  %indvars.i88 = trunc nuw i64 %indvars.iv.next.i4987 to i32 ; 2 uses
  %i.ax = sub i32 %indvars.i88, %.sroa.speculated.i ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !10
  %i.bb = shl i64 %i.ba, %i.t                     ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i4987 ; 3 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !10
  %i.bd = icmp ult i32 %.sroa.speculated.i, %indvars.i88
  br i1 %i.bd, label %.lr.ph.preheader, label %.loopexit.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i47
  %i.be = xor i32 %.sroa.speculated.i, -1
  %i.bf = sext i32 %i.be to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.bf ; 3 uses
  %i.bg = add i32 %4, -2
  %xtraiter152 = and i32 %i.ax, 1
  %lcmp.mod153.not = icmp eq i32 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.i4987
  %i.bh = load i64, ptr %gep.prol, align 8, !tbaa !10
  %i.bi = lshr i64 %i.bh, %i.av
  %i.bj = or i64 %i.bi, %i.bb
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next.i49.prol = add nsw i64 %i.aw, -2 ; 3 uses
  %indvars.prol = trunc i64 %indvars.iv.next.i49.prol to i32
  %i.bk = sub i32 %indvars.prol, %.sroa.speculated.i
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = shl i64 %i.bn, %i.t                     ; 2 uses
  %i.bp = and i64 %indvars.iv.next.i49.prol, 4294967295
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bp ; 2 uses
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !10
  %indvars.iv.next.prol = add nsw i64 %i.aw, -2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.unr = phi ptr [ %i.bc, %.lr.ph.preheader ], [ %i.bq, %.lr.ph.prol ]
  %.unr155 = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %indvars.iv.next.i4989.unr = phi i64 [ %indvars.iv.next.i4987, %.lr.ph.preheader ], [ %indvars.iv.next.i49.prol, %.lr.ph.prol ]
  %i.br = icmp eq i32 %i.bg, %.sroa.speculated.i
  br i1 %i.br, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.bs = zext nneg i32 %.sroa.speculated.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bs
  %i.bu = sub i32 %4, %.sroa.speculated.i
  %i.bv = shl i32 %i.bu, 3
  %i.bw = zext i32 %i.bv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bt, ptr align 8 %3, i64 %i.bw, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bx = phi ptr [ %i.ct, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %i.by = phi i64 [ %i.cr, %.lr.ph ], [ %.unr155, %.lr.ph.prol.loopexit ]
  %indvars.iv.next.i4989 = phi i64 [ %indvars.iv.next.i49.1, %.lr.ph ], [ %indvars.iv.next.i4989.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bz = load i64, ptr %gep, align 8, !tbaa !10
  %i.ca = lshr i64 %i.bz, %i.av
  %i.cb = or i64 %i.ca, %i.by
  store i64 %i.cb, ptr %i.bx, align 8, !tbaa !10
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.next.i4989, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next.i49 to i32
  %i.cc = sub i32 %indvars, %.sroa.speculated.i
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cg = shl i64 %i.cf, %i.t                     ; 2 uses
  %i.ch = and i64 %indvars.iv.next.i49, 4294967295
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ch ; 2 uses
  store i64 %i.cg, ptr %i.ci, align 8, !tbaa !10
  %i.cj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.cj, i64 -8
  %i.ck = load i64, ptr %gep.1, align 8, !tbaa !10
  %i.cl = lshr i64 %i.ck, %i.av
  %i.cm = or i64 %i.cl, %i.cg
  store i64 %i.cm, ptr %i.ci, align 8, !tbaa !10
  %indvars.iv.next.i49.1 = add nsw i64 %indvars.iv.next.i4989, -2 ; 3 uses
  %indvars.1 = trunc i64 %indvars.iv.next.i49.1 to i32 ; 2 uses
  %i.cn = sub i32 %indvars.1, %.sroa.speculated.i
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = shl i64 %i.cq, %i.t                     ; 2 uses
  %i.cs = and i64 %indvars.iv.next.i49.1, 4294967295
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cs ; 2 uses
  store i64 %i.cr, ptr %i.ct, align 8, !tbaa !10
  %i.cu = icmp ult i32 %.sroa.speculated.i, %indvars.1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  br i1 %i.cu, label %.lr.ph, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph.i47, %bb.f, %.preheader.i
  %i.cv = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.cw = zext nneg i32 %i.cv to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.cw, i1 false)
  br label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit

_ZN4llvh5APInt11tcShiftLeftEPmjj.exit:            ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit, %.loopexit.i
  br i1 %.not.i45, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, label %.lr.ph.preheader.i51

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread:     ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  store i64 0, ptr %0, align 8, !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

.lr.ph.preheader.i51:                             ; preds = %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit
  %wide.trip.count.i52 = zext i32 %4 to i64       ; 6 uses
  %min.iters.check130 = icmp ult i32 %4, 6
  %i.cx = sub i64 %i.b, %i.a
  %diff.check128 = icmp ult i64 %i.cx, 32
  %or.cond142 = or i1 %min.iters.check130, %diff.check128
  br i1 %or.cond142, label %.lr.ph.i53.preheader, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.preheader.i51
  %n.vec133 = and i64 %wide.trip.count.i52, 4294967292 ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index135 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load136 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !10
  %wide.load137 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index135 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load136, ptr %i.da, align 8, !tbaa !10
  store <2 x i64> %wide.load137, ptr %i.db, align 8, !tbaa !10
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.dc, label %middle.block139, label %vector.body134, !llvm.loop !652

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %n.vec133, %wide.trip.count.i52
  br i1 %cmp.n140, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53.preheader

.lr.ph.i53.preheader:                             ; preds = %.lr.ph.preheader.i51, %middle.block139
  %indvars.iv.i54.ph = phi i64 [ 0, %.lr.ph.preheader.i51 ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %xtraiter156 = and i64 %wide.trip.count.i52, 3  ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.i53.preheader, %.lr.ph.i53.prol
  %indvars.iv.i54.prol = phi i64 [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ], [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i53.prol ], [ 0, %.lr.ph.i53.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54.prol
  store i64 %i.de, ptr %i.df, align 8, !tbaa !10
  %indvars.iv.next.i55.prol = add nuw nsw i64 %indvars.iv.i54.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol, !llvm.loop !653

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.i53.preheader
  %indvars.iv.i54.unr = phi i64 [ %indvars.iv.i54.ph, %.lr.ph.i53.preheader ], [ %indvars.iv.next.i55.prol, %.lr.ph.i53.prol ]
  %i.dg = sub nsw i64 %indvars.iv.i54.ph, %wide.trip.count.i52
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.3, %.lr.ph.i53 ], [ %indvars.iv.i54.unr, %.lr.ph.i53.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i54
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i54
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !10
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !10
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.1
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !10
  %indvars.iv.next.i55.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i55.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i55.2
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !10
  %indvars.iv.next.i55.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 2 uses
  %exitcond.not.i56.3 = icmp eq i64 %indvars.iv.next.i55.3, %wide.trip.count.i52
  br i1 %exitcond.not.i56.3, label %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, label %.lr.ph.i53, !llvm.loop !654

_ZN4llvh5APInt8tcAssignEPmPKmj.exit57:            ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %middle.block139
  store i64 0, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %_ZN4llvh5APInt5tcSetEPmmj.exit, label %.lr.ph.preheader.i58

.lr.ph.preheader.i58:                             ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.du = add i32 %4, -1
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.dw, i1 false), !tbaa !10
  br label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57, %.lr.ph.preheader.i58
  %.pre-phi = phi i64 [ 0, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57.thread ], [ 1, %_ZN4llvh5APInt8tcAssignEPmPKmj.exit57 ], [ %wide.trip.count.i52, %.lr.ph.preheader.i58 ] ; 5 uses
  %.not32.i91 = icmp eq i32 %4, 1
  %i.dx = add nsw i64 %.pre-phi, -1               ; 3 uses
  %.not.i60123 = icmp eq i64 %.pre-phi, 0
  %xtraiter159 = and i64 %i.dx, 1
  %i.dy = icmp eq i64 %.pre-phi, 2
  %unroll_iter = and i64 %i.dx, -2
  %lcmp.mod163.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod164 = trunc i64 %i.dx to i1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %_ZN4llvh5APInt5tcSetEPmmj.exit
  %.040 = phi i32 [ %i.q, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %i.et, %.loopexit ] ; 2 uses
  %.036 = phi i32 [ %i.r, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select, %.loopexit ] ; 2 uses
  %.035 = phi i64 [ %i.u, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %spec.select44, %.loopexit ] ; 2 uses
  br i1 %.not.i60123, label %select.unfold, label %.lr.ph125

bb.h:                                             ; preds = %.lr.ph125
  %.not.i60 = icmp eq i64 %i.dz, 0
  br i1 %.not.i60, label %select.unfold, label %.lr.ph125, !llvm.loop !84

.lr.ph125:                                        ; preds = %bb.g, %bb.h
  %indvars.iv.i59124 = phi i64 [ %i.dz, %bb.h ], [ %.pre-phi, %bb.g ]
  %i.dz = add nsw i64 %indvars.iv.i59124, -1      ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !10 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dz
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10 ; 2 uses
  %.not13.i = icmp eq i64 %i.eb, %i.ed
  br i1 %.not13.i, label %bb.h, label %bb.i, !llvm.loop !84

bb.i:                                             ; preds = %.lr.ph125
  %i.ee = icmp ugt i64 %i.eb, %i.ed
  br i1 %i.ee, label %select.unfold, label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

select.unfold:                                    ; preds = %bb.h, %bb.g, %bb.i
  br i1 %.not.i45, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %select.unfold, %bb.l
  %indvars.iv.i65 = phi i64 [ %indvars.iv.next.i67, %bb.l ], [ 0, %select.unfold ] ; 3 uses
  %.022.i = phi i1 [ %i.en, %bb.l ], [ true, %select.unfold ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i65 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10 ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i65
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !10 ; 3 uses
  br i1 %.022.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i64
  %.neg.i = xor i64 %i.ei, -1
  %i.ej = add i64 %i.eg, %.neg.i                  ; 2 uses
  %i.ek = icmp uge i64 %i.ej, %i.eg
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i64
  %i.el = sub i64 %i.eg, %i.ei
  %i.em = icmp ugt i64 %i.ei, %i.eg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i = phi i64 [ %i.el, %bb.k ], [ %i.ej, %bb.j ]
  %.1.in.i = phi i1 [ %i.em, %bb.k ], [ %i.ek, %bb.j ]
  store i64 %.sink.i, ptr %i.ef, align 8, !tbaa !10
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i65, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %.pre-phi
  %i.en = xor i1 %.1.in.i, true
  br i1 %exitcond.not.i68, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit, label %.lr.ph.i64, !llvm.loop !26

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit:          ; preds = %bb.l, %select.unfold
  %i.eo = zext i32 %.036 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = or i64 %i.eq, %.035
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !10
  br label %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit

_ZN4llvh5APInt9tcCompareEPKmS2_j.exit:            ; preds = %bb.i, %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit
  %i.es = icmp eq i32 %.040, 0
  br i1 %i.es, label %_ZN4llvh5APInt5tcMSBEPKmj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh5APInt9tcCompareEPKmS2_j.exit
  %i.et = add i32 %.040, -1
  br i1 %.not.i45, label %.loopexit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %bb.m
  %i.eu = load i64, ptr %3, align 8, !tbaa !10
  %i.ev = lshr i64 %i.eu, 1                       ; 3 uses
  store i64 %i.ev, ptr %3, align 8, !tbaa !10
  br i1 %.not32.i91, label %.loopexit, label %.lr.ph.i72.preheader143

.lr.ph.i72.preheader143:                          ; preds = %.lr.ph.i72.preheader
  br i1 %i.dy, label %.lr.ph.i72.epil.preheader, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72.preheader143, %.lr.ph.i72
  %indvars.iv.next.i7493 = phi i64 [ %indvars.iv.next.i74.1, %.lr.ph.i72 ], [ 1, %.lr.ph.i72.preheader143 ] ; 5 uses
  %i.ew = phi ptr [ %i.ft, %.lr.ph.i72 ], [ %3, %.lr.ph.i72.preheader143 ]
  %i.ex = phi i64 [ %i.fs, %.lr.ph.i72 ], [ %i.ev, %.lr.ph.i72.preheader143 ]
  %indvars.iv.i7392 = phi i64 [ %indvars.iv.next.i74, %.lr.ph.i72 ], [ 0, %.lr.ph.i72.preheader143 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i72 ], [ 0, %.lr.ph.i72.preheader143 ]
  %i.ey = add nuw nsw i64 %indvars.iv.i7392, 1
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !10
  %i.fc = shl i64 %i.fb, 63
  %i.fd = or disjoint i64 %i.fc, %i.ex
  store i64 %i.fd, ptr %i.ew, align 8, !tbaa !10
  %i.fe = and i64 %indvars.iv.next.i7493, 4294967295
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !10
  %i.fh = lshr i64 %i.fg, 1                       ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i7493 ; 2 uses
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !10
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.next.i7493, 1 ; 4 uses
end_hunk_2
