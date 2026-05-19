inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0_@_ZNK4llvh5APInt11extractBitsEjj:bb.a
  store ptr %i.bu, ptr %0, align 8, !tbaa !9
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bo)
  %i.bv = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.bw = zext nneg i32 %i.bv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr readonly align 8 %i.bf, i64 %i.bw, i1 false)
  %i.bx = sub i32 0, %2
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 -1, %i.bz
  %i.cb = add nuw nsw i64 %i.br, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.cf = and i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.cg = icmp ult i32 %2, 65                     ; 2 uses
  br i1 %i.cg, label %_ZN4llvh5APIntC2Ejmb.exit46, label %_ZN4llvh5APIntC2Ejmb.exit46.thread

_ZN4llvh5APIntC2Ejmb.exit46.thread:               ; preds = %bb.k
  %i.ch = zext i32 %2 to i64
  %i.ci = add nuw nsw i64 %i.ch, 63               ; 2 uses
  %i.cj = lshr i64 %i.ci, 6                       ; 3 uses
  %i.ck = shl nuw nsw i64 %i.cj, 3                ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.ck, i1 false)
  store i64 0, ptr %i.cl, align 8, !tbaa !10
  %.pn.in.in.i42 = sub i32 0, %2
  %.pn.in.i43 = and i32 %.pn.in.in.i42, 63
  %.pn.i44 = zext nneg i32 %.pn.in.i43 to i64
  %i.cm = lshr i64 -1, %.pn.i44
  %i.cn = add nuw nsw i64 %i.cj, 4294967295
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = and i64 %i.cq, %i.cm
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !10
  store ptr %i.cl, ptr %4, align 8, !tbaa !9
  br label %.lr.ph

_ZN4llvh5APIntC2Ejmb.exit46:                      ; preds = %bb.k
  %narrow = add nuw nsw i32 %2, 63
  %.pre50 = zext nneg i32 %narrow to i64
  store ptr null, ptr %4, align 8, !tbaa !9
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZN4llvh5APIntC2ERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit46.thread, %_ZN4llvh5APIntC2Ejmb.exit46
  %.pre-phi5167 = phi i64 [ %i.ci, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ %.pre50, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %.pre-phi5365 = phi i64 [ %i.cj, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ 1, %_ZN4llvh5APIntC2Ejmb.exit46 ] ; 5 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ %4, %_ZN4llvh5APIntC2Ejmb.exit46 ] ; 3 uses
  %i.ct = zext i32 %i.b to i64
  %i.cu = add nuw nsw i64 %i.ct, 63
  %i.cv = lshr i64 %i.cu, 6                       ; 3 uses
  %i.cw = zext nneg i32 %i.y to i64               ; 3 uses
  %i.cx = sub nuw nsw i32 64, %i.y
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = zext nneg i32 %i.z to i64               ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %xtraiter = and i64 %.pre-phi5365, 1
  %i.da = icmp eq i64 %.pre-phi5365, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.pre-phi5365, 288230376151711742
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %.pre-phi5365 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.db = add nuw nsw i64 %indvars.iv.epil.init, %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !10
  %i.de = add nuw nsw i64 %i.db, 1                ; 2 uses
  %i.df = icmp samesign ult i64 %i.de, %i.cv
  br i1 %i.df, label %bb.l, label %._crit_edge.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !10
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.l, %.epil.preheader
  %i.di = phi i64 [ %i.dh, %bb.l ], [ 0, %.epil.preheader ]
  %i.dj = lshr i64 %i.dd, %i.cw
  %i.dk = shl i64 %i.di, %i.cy
  %i.dl = or i64 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.epil.init
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %i.dn = sub i32 0, %2
  %i.do = and i32 %i.dn, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = lshr i64 -1, %i.dp                      ; 2 uses
  br i1 %i.cg, label %_ZN4llvh5APIntC2ERKS0_.exit, label %bb.m

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZN4llvh5APIntC2Ejmb.exit46, %._crit_edge
  %i.dr = phi i64 [ %i.dq, %._crit_edge ], [ -1, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %i.ds = load i64, ptr %4, align 8, !tbaa !9
  %i.dt = and i64 %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.du, align 8, !tbaa !7
  store i64 %i.dt, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntD2Ev.exit

bb.m:                                             ; preds = %._crit_edge
  %i.dv = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.dw = add nuw nsw i64 %.pre-phi5365, 4294967295
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dx ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !10
  %i.ea = and i64 %i.dz, %i.dq
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.eb, align 8, !tbaa !7
  %i.ec = lshr i64 %.pre-phi5167, 3
  %i.ed = and i64 %i.ec, 1073741816               ; 2 uses
  %i.ee = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ed) #24 ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.dv, i64 %i.ed, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.dv) #25
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APIntC2ERKS0_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.n:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.r ]
  %i.ef = add nuw nsw i64 %indvars.iv, %i.cz      ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.ei = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %i.ej = icmp samesign ult i64 %i.ei, %i.cv
  br i1 %i.ej, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.em = phi i64 [ %i.el, %bb.o ], [ 0, %bb.n ]
  %i.en = lshr i64 %i.eh, %i.cw
  %i.eo = shl i64 %i.em, %i.cy
  %i.ep = or i64 %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = add nuw nsw i64 %indvars.iv.next, %i.cz ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10
  %i.eu = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.cv
  br i1 %i.ev, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ey = phi i64 [ %i.ex, %bb.q ], [ 0, %bb.p ]
  %i.ez = lshr i64 %i.et, %i.cw
  %i.fa = shl i64 %i.ey, %i.cy
  %i.fb = or i64 %i.fa, %i.ez
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !92

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.j, %bb.i, %bb.f, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i40, %bb.c, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZN4llvh5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh5APInt13getBitsNeededENS_9StringRefEh(ptr readonly captures(address) %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 5 uses
  %i.c = icmp eq i8 %i.a, 43
  %or.cond = or i1 %i.b, %i.c                     ; 2 uses
  %.028.idx = zext i1 %or.cond to i64
  %.028 = getelementptr inbounds nuw i8, ptr %0, i64 %.028.idx
  %i.d = sext i1 %or.cond to i64
  %.027 = add i64 %1, %i.d                        ; 8 uses
  %4 = add i8 %2, -2                              ; 2 uses
  %i.e = tail call i8 @llvm.fshl.i8(i8 %4, i8 %4, i8 7)
  switch i8 %i.e, label %bb.g [
    i8 0, label %bb.b
    i8 3, label %bb.c
    i8 7, label %bb.d
    i8 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %i.b to i64
  %i.g = add i64 %.027, %i.f
  %i.h = trunc i64 %i.g to i32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = mul i64 %.027, 3
  %i.j = zext i1 %i.b to i64
  %i.k = add i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.m = shl i64 %.027, 2
  %i.n = zext i1 %i.b to i64
  %i.o = or disjoint i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %.027, 1
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = shl i64 %.027, 6
  %i.s = udiv i64 %i.r, 18
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %.027, 1
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = shl i64 %.027, 4
  %i.v = udiv i64 %i.u, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = phi i64 [ 4, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.h ], [ 7, %bb.g ]
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !7
  call void @_ZN4llvh5APInt10fromStringEjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 poison, ptr nonnull readonly %.028, i64 %.027, i8 noundef zeroext %2)
  %i.z = load i32, ptr %i.y, align 8, !tbaa !7    ; 7 uses
  %i.aa = icmp ult i32 %i.z, 65
  br i1 %i.aa, label %bb.j, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %.neg.i.i.i = add nsw i32 %i.z, -64
  %i.ab = load i64, ptr %3, align 8               ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nsw i32 %.neg.i.i.i, %i.ad
  %i.af = inttoptr i64 %i.ab to ptr
  br label %_ZNK4llvh5APInt8logBase2Ev.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.ag = zext i32 %i.z to i64
  %i.ah = add nuw nsw i64 %i.ag, 63
  %i.ai = lshr i64 %i.ah, 6                       ; 2 uses
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.al = shl i32 %i.aj, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.l ], [ %i.ai, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.as, %bb.l ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = or disjoint i32 %.019.i.i.i.i, %i.aq
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.as = add i32 %.019.i.i.i.i, 64
  %i.at = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.at, label %bb.k, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i: ; preds = %bb.l, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.ar, %.thread.i.i.i.i ], [ %i.al, %bb.l ]
  %i.au = and i32 %i.z, 63
  %.not.i.i.i.i = icmp eq i32 %i.au, 0
  %.neg.i.i.i.i = or i32 %i.z, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.av = add i32 %.2.i.i.i.i, %.neg15.i.i.i.i
  br label %_ZNK4llvh5APInt8logBase2Ev.exit

_ZNK4llvh5APInt8logBase2Ev.exit:                  ; preds = %bb.j, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i
  %i.aw = phi ptr [ %i.af, %bb.j ], [ %i.ak, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.av, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ]
  %i.ax = xor i32 %.0.i.i.i, -1
  %i.ay = add i32 %i.z, %i.ax                     ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  %i.ba = select i1 %i.b, i32 2, i32 1
  %i.bb = select i1 %i.az, i32 0, i32 %i.ay
  %.0 = add i32 %i.ba, %i.bb
  %i.bc = icmp ult i32 %i.z, 65
  %i.bd = icmp eq ptr %i.aw, null
  %or.cond44 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond44, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aw) #25
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.c ], [ %i.p, %bb.d ], [ %.0, %_ZN4llvh5APIntD2Ev.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueERKNS_5APIntE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #26
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !10 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not1.i.i.i, i64 -49064778989728563, i64 %i.g
  store i64 %i.h, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #26
  br label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit

_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  %i.j = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.k = shl i64 %i.j, 3
  %i.l = and i64 %i.k, 34359738360
  %i.m = add nuw nsw i64 %i.l, 8
  %.sroa.0.4.extract.shift = lshr i64 %i.j, 32
  %i.n = xor i64 %i.i, %.sroa.0.4.extract.shift   ; 2 uses
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.n, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, -7070675565921424023       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -7070675565921424023
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.y = zext i32 %i.b to i64
  %i.z = add nuw nsw i64 %i.y, 63
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_(ptr noundef %i.x, ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.w, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit ], [ %i.ac, %bb.e ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt7isSplatEj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = load i64, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.e to ptr
end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt26countTrailingZerosSlowCaseEv:bb.a
  %i.p = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.o, i1 false)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add i32 %.01014, %i.q
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.r, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %.1)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt25countTrailingOnesSlowCaseEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 3 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.h = shl i32 %i.f, 6
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.0811 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.0811, 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !146

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %indvars.iv, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = xor i64 %i.o, -1
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.p, i1 false)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = add i32 %.0811, %i.r
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK4llvh5APInt23countPopulationSlowCaseEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi9 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.h, align 8, !tbaa !10
  %i.i = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.j = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load10)
  %i.k = trunc nuw nsw <2 x i64> %i.i to <2 x i32>
  %i.l = trunc nuw nsw <2 x i64> %i.j to <2 x i32>
  %i.m = add <2 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <2 x i32> %vec.phi9, %i.l            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.056.ph = phi i32 [ 0, %.lr.ph ], [ %i.p, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.05.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %middle.block ], [ %i.u, %scalar.ph ]
  ret i32 %.05.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.056 = phi i32 [ %i.u, %scalar.ph ], [ %.056.ph, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.r)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = add i32 %.056, %i.t                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !148
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18intersectsSlowCaseERKS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %.not12.not = icmp eq i64 %i.e, 0
  br i1 %.not12.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.0913 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.i = zext nneg i32 %.0913 to i64              ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = and i64 %i.m, %i.k
  %.not10.not = icmp ne i64 %i.n, 0               ; 2 uses
  %i.o = add nuw nsw i32 %.0913, 1                ; 2 uses
  %.not.not = icmp eq i32 %i.o, %i.f
  %or.cond = select i1 %.not10.not, i1 true, i1 %.not.not
  br i1 %or.cond, label %._crit_edge, label %bb.b, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %.not10.not, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt18isSubsetOfSlowCaseERKS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 2 uses
  %i.f = trunc nuw nsw i64 %i.e to i32
  %.not11 = icmp eq i64 %i.e, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.0912 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.i = zext nneg i32 %.0912 to i64              ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = xor i64 %i.m, -1
  %i.o = and i64 %i.k, %i.n
  %.not10 = icmp eq i64 %i.o, 0                   ; 2 uses
  %i.p = add nuw nsw i32 %.0912, 1                ; 2 uses
  %.not = icmp ne i32 %i.p, %i.f
  %or.cond.not = select i1 %.not10, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not10, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8byteSwapEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 12 uses
  %2 = add i32 %i.b, -16                          ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 28)
  switch i32 %i.c, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9
  %i.e = trunc i64 %i.d to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.e)
  %i.f = zext i16 %rev.i.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.g, align 8, !tbaa !7
  store i64 %i.f, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !9
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 32, ptr %i.l, align 8, !tbaa !7
  store i64 %i.k, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 8, !tbaa !9
  %trunc = trunc i64 %i.m to i48
  %rev = tail call i48 @llvm.bswap.i48(i48 %trunc)
  %i.n = zext i48 %rev to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !7
  %i.p = icmp ult i32 %i.b, 65
  br i1 %i.p, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.d
  %i.q = sub nsw i32 0, %i.b
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = lshr i64 -1, %i.s
  %i.u = and i64 %i.t, %i.n
  store i64 %i.u, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %bb.d
  %i.v = zext i32 %i.b to i64
  %i.w = add nuw nsw i64 %i.v, 63
  %i.x = lshr i64 %i.w, 6                         ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.y, i1 false)
  store ptr %i.z, ptr %0, align 8, !tbaa !9
  store i64 %i.n, ptr %i.z, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %i.b
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.aa = lshr i64 -1, %.pn.i
  %i.ab = add nuw nsw i64 %i.x, 4294967295
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = and i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %bb.a
  %i.ag = load i64, ptr %1, align 8, !tbaa !9
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 64, ptr %i.ai, align 8, !tbaa !7
  store i64 %i.ah, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.g:                                             ; preds = %bb.a
  %i.aj = zext i32 %i.b to i64
  %i.ak = add nuw nsw i64 %i.aj, 63               ; 2 uses
  %i.al = lshr i64 %i.ak, 6                       ; 13 uses
  %i.am = trunc nuw nsw i64 %i.al to i32          ; 2 uses
  %i.an = shl i32 %i.am, 6                        ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !7
  %i.ap = icmp ult i32 %i.an, 65                  ; 2 uses
  br i1 %i.ap, label %_ZN4llvh5APIntC2Ejmb.exit22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = shl nuw nsw i64 %i.al, 3
  %i.ar = and i64 %i.aq, 536870904                ; 2 uses
  %i.as = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ar) #24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.as, i8 0, i64 %i.ar, i1 false)
  store i64 0, ptr %i.as, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit22

_ZN4llvh5APIntC2Ejmb.exit22:                      ; preds = %bb.g, %bb.h
  %i.at = phi ptr [ %i.as, %bb.h ], [ null, %bb.g ] ; 24 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !9
  %.not23 = icmp eq i64 %i.al, 0
  %i.au = ptrtoint ptr %i.at to i64
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit22
  %.pre = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 833
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.av = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.av
  %i.aw = shl nuw nsw i64 %i.al, 3
  %i.ax = add nuw nsw i64 %i.aw, 34359738360
  %i.ay = and i64 %i.ax, 34359738360              ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 8
  %i.ba = sub nsw i64 %i.az, %i.av
  %scevgep28 = getelementptr i8, ptr %.pre, i64 %i.ba
  %i.bb = getelementptr i8, ptr %.pre, i64 %i.ay
  %scevgep29 = getelementptr i8, ptr %i.bb, i64 8
  %bound0 = icmp ult ptr %i.at, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = xor i64 %index, -1
  %i.bd = add nsw i64 %i.al, %i.bc
  %i.be = and i64 %i.bd, 4294967295
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10, !alias.scope !151
  %wide.load30 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !10, !alias.scope !151
  %i.bi = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bj = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load30)
  %i.bl = shufflevector <2 x i64> %i.bk, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x i64> %i.bj, ptr %i.bm, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  store <2 x i64> %i.bl, ptr %i.bn, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %i.bp = and i64 %i.ak, 64
  %lcmp.mod.not = icmp eq i64 %i.bp, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bq = xor i64 %indvars.iv.ph, -1
  %i.br = add nsw i64 %i.al, %i.bq
  %i.bs = and i64 %i.br, 4294967294
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !10
  %i.bv = tail call noundef i64 @llvm.bswap.i64(i64 %i.bu)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.ph
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bx = icmp eq i64 %i.al, %.neg
  br i1 %i.bx, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvh5APIntC2Ejmb.exit22
  %.not15 = icmp eq i32 %i.an, %i.b
  br i1 %.not15, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.by = xor i64 %indvars.iv, -1
  %i.bz = add nsw i64 %i.al, %i.by
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = tail call noundef i64 @llvm.bswap.i64(i64 %i.cc)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !10
  %reass.sub = sub i64 %i.al, %indvars.iv
  %i.cf = add i64 %reass.sub, 4294967294
  %i.cg = and i64 %i.cf, 4294967295
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = tail call noundef i64 @llvm.bswap.i64(i64 %i.ci)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.al
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !157

bb.i:                                             ; preds = %._crit_edge
  %i.cm = sub i32 %i.an, %i.b                     ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvh5APInt7ushl_ovERKS0_Rb:bb.a
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
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, label %_ZNK4llvh5APInt3ugeEm.exit.thread

_ZNK4llvh5APInt3ugeEm.exit.thread:                ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  store i8 1, ptr %3, align 1, !tbaa !593
  br label %bb.d

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugeEm.exit

_ZNK4llvh5APInt3ugeEm.exit:                       ; preds = %bb.a, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp uge i64 %.0.i.i.i, %i.c             ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %3, align 1, !tbaa !593
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit.thread, %_ZNK4llvh5APInt3ugeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.aa, align 8, !tbaa !7
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.d
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = add nuw nsw i64 %i.c, 63
  %i.ad = lshr i64 %i.ac, 6                       ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false)
  store ptr %i.af, ptr %0, align 8, !tbaa !9
  store i64 0, ptr %i.af, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %i.b
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.ag = lshr i64 -1, %.pn.i
  %i.ah = add nuw nsw i64 %i.ad, 4294967295
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = and i64 %i.ak, %i.ag
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit
  %i.am = icmp ult i32 %i.b, 65
  br i1 %i.am, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %.neg.i = add nsw i32 %i.b, -64
  %i.an = load i64, ptr %1, align 8, !tbaa !9
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add nsw i32 %.neg.i, %i.ap
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ar = add nuw nsw i64 %i.c, 63
  %i.as = lshr i64 %i.ar, 6                       ; 2 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load ptr, ptr %1, align 8, !tbaa !9
  %i.av = shl i32 %i.at, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bc, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %.019.i.i, %i.ba
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add i32 %.019.i.i, 64
  %i.bd = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bd, label %bb.h, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.i, %.thread.i.i
  %.2.i.i = phi i32 [ %i.bb, %.thread.i.i ], [ %i.av, %bb.i ]
  %i.be = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.be, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.bf = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

_ZNK4llvh5APInt17countLeadingZerosEv.exit:        ; preds = %bb.g, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i
  %.0.i = phi i32 [ %i.aq, %bb.g ], [ %i.bf, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i ]
  %i.bg = zext i32 %.0.i to i64
  %.pre.i = load ptr, ptr %2, align 8             ; 3 uses
  %i.bh = ptrtoint ptr %.pre.i to i64
  br i1 %i.f, label %bb.l, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %i.bi = zext i32 %i.e to i64
  %i.bj = add nuw nsw i64 %i.bi, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 2 uses
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = shl i32 %i.bl, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.k ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.bt, %bb.k ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.j
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = or disjoint i32 %.019.i.i.i.i, %i.br
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bt = add i32 %.019.i.i.i.i, 64
  %i.bu = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.bu, label %bb.j, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.k, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.bs, %.thread.i.i.i.i ], [ %i.bm, %bb.k ]
  %i.bv = and i32 %i.e, 63
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  %.neg.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.bw = add i32 %.neg15.i.i.i.i, %.2.i.i.i.i
  %i.bx = sub i32 %i.e, %i.bw
  %i.by = icmp ugt i32 %i.bx, 64
  br i1 %i.by, label %_ZNK4llvh5APInt3ugtEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i
  %.0.i.i.pre = load i64, ptr %.pre.i, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge, %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %.0.i.i = phi i64 [ %.0.i.i.pre, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge ], [ %i.bh, %_ZNK4llvh5APInt17countLeadingZerosEv.exit ]
  %i.bz = icmp ugt i64 %.0.i.i, %i.bg
  %i.ca = zext i1 %i.bz to i8
  br label %_ZNK4llvh5APInt3ugtEm.exit

_ZNK4llvh5APInt3ugtEm.exit:                       ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, %bb.l
  %i.cb = phi i8 [ 1, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i ], [ %i.ca, %bb.l ]
  store i8 %i.cb, ptr %3, align 1, !tbaa !593
  tail call void @_ZNK4llvh5APInt3shlERKS0_(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.e, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZNK4llvh5APInt3ugtEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  br i1 %4, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %6 = add i32 %2, -2                             ; 2 uses
  %7 = tail call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 31)
  %8 = zext nneg i32 %7 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb, i64 %8
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str, %bb.a ], [ %switch.load, %switch.lookup ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 16 uses
  %i.e = icmp ult i32 %i.d, 65                    ; 2 uses
  %.pre.i = load ptr, ptr %0, align 8             ; 5 uses
  %i.f = ptrtoint ptr %.pre.i to i64              ; 3 uses
  br i1 %i.e, label %_ZNK4llvh5APInteqEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = shl i32 %i.j, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.d ], [ %i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %.019.i.i.i.i, %i.p
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %.019.i.i.i.i, 64
  %i.s = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.s, label %bb.c, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.d, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.q, %.thread.i.i.i.i ], [ %i.k, %bb.d ]
  %i.t = and i32 %i.d, 63
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  %.neg.i.i.i.i = or i32 %i.d, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.u = add i32 %.neg15.i.i.i.i, %.2.i.i.i.i
  %i.v = sub i32 %i.d, %i.u
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %_ZNK4llvh5APInteqEm.exitthread-pre-split, label %_ZNK4llvh5APInteqEm.exit.thread

_ZNK4llvh5APInteqEm.exitthread-pre-split:         ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i
  %.0.i.i.pr = load i64, ptr %.pre.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInteqEm.exit

_ZNK4llvh5APInteqEm.exit:                         ; preds = %_ZNK4llvh5APInteqEm.exitthread-pre-split, %bb.b
  %.0.i.i = phi i64 [ %.0.i.i.pr, %_ZNK4llvh5APInteqEm.exitthread-pre-split ], [ %i.f, %bb.b ]
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %.preheader, label %_ZNK4llvh5APInteqEm.exit.thread

.preheader:                                       ; preds = %_ZNK4llvh5APInteqEm.exit
  %i.y = load i8, ptr %.0, align 1, !tbaa !9      ; 2 uses
  %.not57132 = icmp eq i8 %i.y, 0
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %.not57132, label %.preheader.._crit_edge135_crit_edge, label %.lr.ph134

.preheader.._crit_edge135_crit_edge:              ; preds = %.preheader
  %.pre151 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %._crit_edge135

.lr.ph134:                                        ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre149 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph134, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.ab = phi i32 [ %.pre149, %.lr.ph134 ], [ %i.aj, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.ac = phi i8 [ %i.y, %.lr.ph134 ], [ %i.al, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %.1133 = phi ptr [ %.0, %.lr.ph134 ], [ %i.ak, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !612
  %.not.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.f, !prof !613

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 1) #26
  %.pre.i58 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre.i58, %bb.f ], [ %i.ab, %bb.e ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !614
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1
  %i.ai = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  %i.aj = add i32 %i.ai, 1                        ; 3 uses
  store i32 %i.aj, ptr %.phi.trans.insert150, align 8, !tbaa !609
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %.not57 = icmp eq i8 %i.al, 0
  br i1 %.not57, label %._crit_edge135, label %bb.e, !llvm.loop !615

._crit_edge135:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %.preheader.._crit_edge135_crit_edge
  %i.am = phi i32 [ %.pre151, %.preheader.._crit_edge135_crit_edge ], [ %i.aj, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !612
  %.not.i59 = icmp ult i32 %i.am, %i.ap
  br i1 %.not.i59, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61, label %bb.g, !prof !613

bb.g:                                             ; preds = %._crit_edge135
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 1) #26
  %.pre.i60 = load i32, ptr %i.an, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61: ; preds = %._crit_edge135, %bb.g
  %i.ar = phi i32 [ %.pre.i60, %bb.g ], [ %i.am, %._crit_edge135 ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !614
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 48, ptr %i.au, align 1
  %i.av = load i32, ptr %i.an, align 8, !tbaa !609
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.an, align 8, !tbaa !609
  br label %bb.ak

_ZNK4llvh5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, %_ZNK4llvh5APInteqEm.exit
  br i1 %i.e, label %bb.h, label %_ZN4llvh5APIntC2ERKS0_.exit

bb.h:                                             ; preds = %_ZNK4llvh5APInteqEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br i1 %3, label %_ZNK4llvh5APInt12getSExtValueEv.exit, label %bb.k

_ZNK4llvh5APInt12getSExtValueEv.exit:             ; preds = %bb.h
  %i.ax = sub nuw nsw i32 64, %i.d
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = shl i64 %i.f, %i.ay
  %i.ba = ashr exact i64 %i.az, %i.ay             ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh5APInt12getSExtValueEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !609 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !612
  %.not.i63 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i63, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65, label %bb.j, !prof !613

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bg, i64 noundef 0, i64 noundef 1) #26
  %.pre.i64 = load i32, ptr %i.bc, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65: ; preds = %bb.i, %bb.j
  %i.bh = phi i32 [ %.pre.i64, %bb.j ], [ %i.bd, %bb.i ]
  %i.bi = load ptr, ptr %1, align 8, !tbaa !614
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  store i8 45, ptr %i.bk, align 1
  %i.bl = load i32, ptr %i.bc, align 8, !tbaa !609
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bc, align 8, !tbaa !609
  %i.bn = sub i64 0, %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65, %_ZNK4llvh5APInt12getSExtValueEv.exit
  %.151 = phi i64 [ %i.ba, %_ZNK4llvh5APInt12getSExtValueEv.exit ], [ %i.bn, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65 ], [ %i.f, %bb.h ] ; 2 uses
  %i.bo = load i8, ptr %.0, align 1, !tbaa !9     ; 2 uses
  %.not55121 = icmp eq i8 %i.bo, 0
  br i1 %.not55121, label %.preheader108, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre148 = load i32, ptr %i.bp, align 8, !tbaa !609
  br label %bb.l

.preheader108:                                    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68, %bb.k
  %.not56126 = icmp eq i64 %.151, 0
  br i1 %.not56126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader108
  %i.bs = zext i32 %2 to i64                      ; 3 uses
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph124, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68
  %i.bt = phi i32 [ %.pre148, %.lr.ph124 ], [ %i.cb, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ] ; 2 uses
  %i.bu = phi i8 [ %i.bo, %.lr.ph124 ], [ %i.cd, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ]
  %.2122 = phi ptr [ %.0, %.lr.ph124 ], [ %i.cc, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ]
  %i.bv = load i32, ptr %i.bq, align 4, !tbaa !612
  %.not.i66 = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68, label %bb.m, !prof !613

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef 1) #26
end_hunk_2
