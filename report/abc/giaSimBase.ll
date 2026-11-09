Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSimBase?download=true
inline.NumInlined: 1796
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 133
begin_hunk_0_@Gia_ManRelDerive:bb.a

middle.block338:                                  ; preds = %vector.body331
  br i1 %cmp.n339, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206.preheader405

.lr.ph8.i206.preheader405:                        ; preds = %vector.memcheck321, %.lr.ph8.i206.preheader, %middle.block338
  %indvars.iv11.i207.ph = phi i64 [ 0, %vector.memcheck321 ], [ 0, %.lr.ph8.i206.preheader ], [ %n.vec326, %middle.block338 ] ; 6 uses
  br i1 %lcmp.mod419.not, label %.lr.ph8.i206.prol.loopexit, label %.lr.ph8.i206.prol

.lr.ph8.i206.prol:                                ; preds = %.lr.ph8.i206.preheader405
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv11.i207.ph
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !72
  %i.ml = xor i64 %i.mk, %i.ju
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv11.i207.ph
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !72
  %i.mo = xor i64 %i.mn, %i.jy
  %i.mp = and i64 %i.mo, %i.ml
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv11.i207.ph
  store i64 %i.mp, ptr %i.mq, align 8, !tbaa !72
  %indvars.iv.next12.i208.prol = or disjoint i64 %indvars.iv11.i207.ph, 1
  br label %.lr.ph8.i206.prol.loopexit

.lr.ph8.i206.prol.loopexit:                       ; preds = %.lr.ph8.i206.prol, %.lr.ph8.i206.preheader405
  %indvars.iv11.i207.unr = phi i64 [ %indvars.iv11.i207.ph, %.lr.ph8.i206.preheader405 ], [ %indvars.iv.next12.i208.prol, %.lr.ph8.i206.prol ]
  %i.mr = icmp eq i64 %indvars.iv11.i207.ph, %i.gl
  br i1 %i.mr, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206

scalar.ph345:                                     ; preds = %scalar.ph345.prol.loopexit, %scalar.ph345
  %indvars.iv.i199 = phi i64 [ %indvars.iv.next.i201.1, %scalar.ph345 ], [ %indvars.iv.i199.unr, %scalar.ph345.prol.loopexit ] ; 5 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.i199
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !72
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i199
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !72
  %i.mw = xor i64 %i.mt, %i.mv
  %.reass.i200.reass = xor i64 %i.mw, %invariant.op274
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i199
  store i64 %.reass.i200.reass, ptr %i.mx, align 8, !tbaa !72
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i199, 1 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next.i201
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !72
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next.i201
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !72
  %i.nc = xor i64 %i.mz, %i.nb
  %.reass.i200.reass.1 = xor i64 %i.nc, %invariant.op274
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next.i201
  store i64 %.reass.i200.reass.1, ptr %i.nd, align 8, !tbaa !72
  %indvars.iv.next.i201.1 = add nuw nsw i64 %indvars.iv.i199, 2 ; 2 uses
  %exitcond.not.i202.1 = icmp eq i64 %indvars.iv.next.i201.1, %wide.trip.count.i178
  br i1 %exitcond.not.i202.1, label %Gia_ManSimPatSimAnd.exit210, label %scalar.ph345, !llvm.loop !580

.lr.ph8.i206:                                     ; preds = %.lr.ph8.i206.prol.loopexit, %.lr.ph8.i206
  %indvars.iv11.i207 = phi i64 [ %indvars.iv.next12.i208.1, %.lr.ph8.i206 ], [ %indvars.iv11.i207.unr, %.lr.ph8.i206.prol.loopexit ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv11.i207
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !72
  %i.ng = xor i64 %i.nf, %i.ju
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv11.i207
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !72
  %i.nj = xor i64 %i.ni, %i.jy
  %i.nk = and i64 %i.nj, %i.ng
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv11.i207
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !72
  %indvars.iv.next12.i208 = add nuw nsw i64 %indvars.iv11.i207, 1 ; 3 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %indvars.iv.next12.i208
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !72
  %i.no = xor i64 %i.nn, %i.ju
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.next12.i208
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !72
  %i.nr = xor i64 %i.nq, %i.jy
  %i.ns = and i64 %i.nr, %i.no
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.next12.i208
  store i64 %i.ns, ptr %i.nt, align 8, !tbaa !72
  %indvars.iv.next12.i208.1 = add nuw nsw i64 %indvars.iv11.i207, 2 ; 2 uses
  %exitcond15.not.i209.1 = icmp eq i64 %indvars.iv.next12.i208.1, %wide.trip.count.i178
  br i1 %exitcond15.not.i209.1, label %Gia_ManSimPatSimAnd.exit210, label %.lr.ph8.i206, !llvm.loop !581

Gia_ManSimPatSimAnd.exit210:                      ; preds = %scalar.ph345.prol.loopexit, %scalar.ph345, %.lr.ph8.i206.prol.loopexit, %.lr.ph8.i206, %middle.block362, %middle.block338, %.preheader.i203, %.preheader4.i195, %.lr.ph231.split
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.critedge8, label %.lr.ph231.split, !llvm.loop !582

.critedge8:                                       ; preds = %Gia_ManSimPatSimAnd.exit210, %.lr.ph231, %Abc_TtNot.exit
  %i.nu = shl nuw i32 1, %i.is
  %i.nv = xor i32 %i.nu, %.0116234
  %exitcond259.not = icmp eq i32 %i.in, %i.h
  br i1 %exitcond259.not, label %.critedge6._crit_edge, label %.preheader, !llvm.loop !583

.critedge6._crit_edge:                            ; preds = %.critedge8, %.critedge6, %.critedge4
  %i.nw = icmp sgt i32 %.val235, 0
  br i1 %i.nw, label %.lr.ph238, label %.critedge10

.lr.ph238:                                        ; preds = %.critedge6._crit_edge
  %i.nx = getelementptr i8, ptr %1, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph238, %bb.m
  %indvars.iv260 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next261, %bb.m ] ; 2 uses
  %.val143 = load ptr, ptr %i.au, align 8, !tbaa !71 ; 2 uses
  %.not130 = icmp eq ptr %.val143, null
  br i1 %.not130, label %.critedge10, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val138 = load ptr, ptr %i.nx, align 8, !tbaa !61
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.val138, i64 %indvars.iv260
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !62
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [12 x i8], ptr %.val143, i64 %i.oa ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 4
  %i.od = and i64 %i.oc, 9223372036854775807
  store i64 %i.od, ptr %i.ob, align 4
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !60
  %i.oe = sext i32 %.val to i64
  %i.of = icmp slt i64 %indvars.iv.next261, %i.oe
  br i1 %i.of, label %bb.l, label %.critedge10, !llvm.loop !584

.critedge10:                                      ; preds = %bb.l, %bb.m, %.critedge6._crit_edge
  %.not.i211 = icmp eq ptr %i.n, null
  br i1 %.not.i211, label %Vec_WrdFree.exit, label %bb.n

bb.n:                                             ; preds = %.critedge10
  tail call void @free(ptr noundef nonnull %i.n) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge10, %bb.n
  %i.og = load i32, ptr %i.ae, align 8, !tbaa !84 ; 2 uses
  %i.oh = icmp sgt i32 %i.og, 0
  br i1 %i.oh, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Vec_WrdFree.exit
  %i.oi = zext nneg i32 %i.og to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.p
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %.val171, i64 %indvars.iv.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !61 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ol, null
  br i1 %.not15.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ol) #35
  store ptr null, ptr %i.ok, align 8, !tbaa !61
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next.i.i, %i.oi
  br i1 %exitcond263.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %Vec_WrdFree.exit
  %.not.i.i212 = icmp eq ptr %.val171, null
  br i1 %.not.i.i212, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.p, %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %.val171) #35
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.ae) #35
  ret ptr %i.u
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManRelDerive2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val69 = load i32, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val70 = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr i8, ptr %.val70, i64 4
  %.val70.val = load i32, ptr %i.e, align 4, !tbaa !60
  %i.f = sdiv i32 %.val69, %.val70.val
  %.fr102 = freeze i32 %i.f                       ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val63 = load i32, ptr %i.g, align 4, !tbaa !60 ; 3 uses
  %i.h = shl nuw nsw i32 1, %.val63
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val77 = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr i8, ptr %.val77, i64 4
  %.val77.val = load i32, ptr %i.j, align 4, !tbaa !60
  %i.k = mul nsw i32 %.val77.val, %.fr102
  %i.l = shl i32 %i.k, %.val63                    ; 4 uses
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 4 uses
  %i.n = add i32 %i.l, -1
  %or.cond.i.i = icmp ult i32 %i.n, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.l ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.m, align 8, !tbaa !70
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = sext i32 %spec.store.select.i.i to i64
  %i.p = shl nsw i64 %i.o, 3
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #34
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !65
  store i32 %i.l, ptr %i.t, align 4, !tbaa !68
  %i.v = sext i32 %i.l to i64
  %i.w = shl nsw i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.w, i1 false)
  %.not101 = icmp eq i32 %.val63, 31
  br i1 %.not101, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %Vec_WrdStart.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 8
  %i.z = icmp sgt i32 %.fr102, 0
  %wide.trip.count28.i = zext i32 %.fr102 to i64  ; 9 uses
  %i.aa = shl nuw nsw i64 %wide.trip.count28.i, 3
  %i.ab = shl nuw nsw i64 %wide.trip.count28.i, 3
  %min.iters.check = icmp ult i32 %.fr102, 8
  %n.vec = and i64 %wide.trip.count28.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28.i
  %xtraiter = and i64 %wide.trip.count28.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph99, %Vec_WrdFree.exit
  %.098 = phi i32 [ 0, %.lr.ph99 ], [ %i.ev, %Vec_WrdFree.exit ] ; 4 uses
  %i.ac = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #35 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %Vec_IntFind.exit85.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntFind.exit85.thread ], [ 0, %bb.c ] ; 5 uses
  %indvars106 = trunc i64 %indvars.iv to i32      ; 2 uses
  %.val64 = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 2 uses
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val64, i64 %indvars.iv ; 3 uses
  %.not = icmp eq ptr %.val64, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %.val71 = load i64, ptr %i.ah, align 4          ; 5 uses
  %i.ai = and i64 %.val71, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val71, 536870911
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  br i1 %narrow.i.not, label %Vec_IntFind.exit85.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = trunc i64 %.val71 to i32                ; 2 uses
  %i.am = and i32 %i.al, 536870911
  %i.an = sub nsw i32 %indvars106, %i.am
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !60  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %Vec_IntFind.exit85.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !61
  %wide.trip.count.i = zext nneg i32 %i.ao to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = icmp eq i32 %i.as, %i.an
  br i1 %i.at, label %Vec_IntFind.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntFind.exit.thread, label %bb.f, !llvm.loop !585

Vec_IntFind.exit:                                 ; preds = %bb.f
  %i.au = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.av = and i64 %indvars.iv, 536870911
  %i.aw = and i64 %.val71, -3221225472
  %i.ax = or disjoint i64 %i.aw, %i.av
  %i.ay = lshr i32 %.098, %i.au
  %i.az = shl i32 %i.ay, 29
  %i.ba = xor i32 %i.az, %i.al
  %i.bb = and i32 %i.ba, 536870912
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.ax, %i.bc            ; 2 uses
  store i64 %i.bd, ptr %i.ah, align 4
  %.pr.pre = load i32, ptr %i.g, align 4, !tbaa !60
  br label %Vec_IntFind.exit.thread

Vec_IntFind.exit.thread:                          ; preds = %bb.g, %Vec_IntFind.exit
  %.val73 = phi i64 [ %i.bd, %Vec_IntFind.exit ], [ %.val71, %bb.g ] ; 3 uses
  %.pr = phi i32 [ %.pr.pre, %Vec_IntFind.exit ], [ %i.ao, %bb.g ] ; 2 uses
  %i.be = lshr i64 %.val73, 32
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i32 %i.bf, 536870911
  %i.bh = sub nsw i32 %indvars106, %i.bg
  %i.bi = icmp sgt i32 %.pr, 0
  br i1 %i.bi, label %.lr.ph.i79, label %Vec_IntFind.exit85.thread

.lr.ph.i79:                                       ; preds = %Vec_IntFind.exit.thread
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !61
  %wide.trip.count.i80 = zext nneg i32 %.pr to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i79
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i82, %bb.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i81
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !62
  %i.bm = icmp eq i32 %i.bl, %i.bh
  br i1 %i.bm, label %Vec_IntFind.exit85, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next.i82, %wide.trip.count.i80
  br i1 %exitcond.not.i83, label %Vec_IntFind.exit85.thread, label %bb.h, !llvm.loop !585

Vec_IntFind.exit85:                               ; preds = %bb.h
  %i.bn = trunc nuw nsw i64 %indvars.iv.i81 to i32
  %i.bo = shl i64 %indvars.iv, 32
  %i.bp = and i64 %i.bo, 2305843004918726656
  %i.bq = and i64 %.val73, -4611686014132420609
  %i.br = or disjoint i64 %i.bq, %i.bp
  %i.bs = lshr i32 %.098, %i.bn
  %i.bt = lshr i64 %.val73, 61
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = xor i32 %i.bs, %i.bu
  %i.bw = and i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 61
  %i.bz = or disjoint i64 %i.by, %i.br
  store i64 %i.bz, ptr %i.ah, align 4
  br label %Vec_IntFind.exit85.thread

Vec_IntFind.exit85.thread:                        ; preds = %bb.i, %bb.e, %Vec_IntFind.exit.thread, %bb.d, %Vec_IntFind.exit85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = load i32, ptr %i.ae, align 8, !tbaa !69
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %.lr.ph, label %.critedge, !llvm.loop !586

.critedge:                                        ; preds = %.lr.ph, %Vec_IntFind.exit85.thread, %bb.c
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ce = tail call ptr @Gia_ManSimPatSimOut(ptr noundef nonnull %i.ac, ptr noundef %i.cd, i32 noundef 1) ; 3 uses
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !75  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.val = load i32, ptr %i.cg, align 4, !tbaa !60 ; 3 uses
  %i.ch = icmp sgt i32 %.val, 0
  br i1 %i.ch, label %.lr.ph96, label %.critedge2

.lr.ph96:                                         ; preds = %.critedge
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  %.val75.val = load ptr, ptr %i.ci, align 8, !tbaa !61
  %i.cj = getelementptr i8, ptr %i.ce, i64 8
  br i1 %i.z, label %.lr.ph96.split.us.preheader, label %.critedge2

.lr.ph96.split.us.preheader:                      ; preds = %.lr.ph96
  %i.ck = mul i32 %.val, %.098
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %.val to i64
  %i.cm = mul i64 %i.ab, %i.cl
  %i.cn = add i64 %i.cm, %i.s                     ; 2 uses
  br label %.lr.ph96.split.us

.lr.ph96.split.us:                                ; preds = %.lr.ph96.split.us.preheader, %Abc_TtXor.exit.loopexit.us
  %indvars.iv110 = phi i64 [ 0, %.lr.ph96.split.us.preheader ], [ %indvars.iv.next111, %Abc_TtXor.exit.loopexit.us ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val75.val, i64 %indvars.iv110
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !62 ; 2 uses
  %.not61.us = icmp eq i32 %i.cp, 0
  br i1 %.not61.us, label %.critedge2, label %.lr.ph22.preheader.i.us

.lr.ph22.preheader.i.us:                          ; preds = %.lr.ph96.split.us
  %i.cq = add nuw nsw i64 %indvars.iv110, %i.cl
  %i.cr = mul nuw nsw i64 %i.cq, %wide.trip.count28.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.cr ; 6 uses
  %i.ct = mul nuw nsw i64 %indvars.iv110, %wide.trip.count28.i
  %.val67.us = load ptr, ptr %i.cj, align 8, !tbaa !65 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val67.us, i64 %i.ct ; 6 uses
  %i.cv = mul nsw i32 %i.cp, %.fr102
  %.val66.us = load ptr, ptr %i.y, align 8, !tbaa !65 ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %.val66.us, i64 %i.cw ; 6 uses
  br i1 %min.iters.check, label %.lr.ph22.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph22.preheader.i.us
  %.val66.us127 = ptrtoaddr ptr %.val66.us to i64
  %.val67.us126 = ptrtoaddr ptr %.val67.us to i64
  %i.cy = sub i64 %.val67.us126, %i.cn
  %diff.check = icmp ugt i64 %i.cy, -32
  %i.cz = mul i64 %indvars.iv110, %i.aa
  %i.da = add i64 %i.cn, %i.cz
  %i.db = shl nsw i64 %i.cw, 3
  %i.dc = add i64 %i.db, %.val66.us127
  %i.dd = sub i64 %i.dc, %i.da
  %diff.check128 = icmp ugt i64 %i.dd, -32
  %conflict.rdx = or i1 %diff.check, %diff.check128
  br i1 %conflict.rdx, label %.lr.ph22.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <2 x i64>, ptr %i.de, align 8, !tbaa !72
  %wide.load129 = load <2 x i64>, ptr %i.df, align 8, !tbaa !72
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load130 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !72
  %wide.load131 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !72
  %i.di = xor <2 x i64> %wide.load130, %wide.load
  %i.dj = xor <2 x i64> %wide.load131, %wide.load129
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <2 x i64> %i.di, ptr %i.dk, align 8, !tbaa !72
  store <2 x i64> %i.dj, ptr %i.dl, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtXor.exit.loopexit.us, label %.lr.ph22.i.us.preheader

.lr.ph22.i.us.preheader:                          ; preds = %vector.memcheck, %.lr.ph22.preheader.i.us, %middle.block
  %indvars.iv25.i.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph22.preheader.i.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph22.i.us.prol.loopexit, label %.lr.ph22.i.us.prol

.lr.ph22.i.us.prol:                               ; preds = %.lr.ph22.i.us.preheader, %.lr.ph22.i.us.prol
  %indvars.iv25.i.us.prol = phi i64 [ %indvars.iv.next26.i.us.prol, %.lr.ph22.i.us.prol ], [ %indvars.iv25.i.us.ph, %.lr.ph22.i.us.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph22.i.us.prol ], [ 0, %.lr.ph22.i.us.preheader ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv25.i.us.prol
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !72
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv25.i.us.prol
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !72
  %i.dr = xor i64 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv25.i.us.prol
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !72
  %indvars.iv.next26.i.us.prol = add nuw nsw i64 %indvars.iv25.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph22.i.us.prol.loopexit, label %.lr.ph22.i.us.prol, !llvm.loop !588

.lr.ph22.i.us.prol.loopexit:                      ; preds = %.lr.ph22.i.us.prol, %.lr.ph22.i.us.preheader
  %indvars.iv25.i.us.unr = phi i64 [ %indvars.iv25.i.us.ph, %.lr.ph22.i.us.preheader ], [ %indvars.iv.next26.i.us.prol, %.lr.ph22.i.us.prol ]
  %i.dt = sub nsw i64 %indvars.iv25.i.us.ph, %wide.trip.count28.i
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %Abc_TtXor.exit.loopexit.us, label %.lr.ph22.i.us

.lr.ph22.i.us:                                    ; preds = %.lr.ph22.i.us.prol.loopexit, %.lr.ph22.i.us
  %indvars.iv25.i.us = phi i64 [ %indvars.iv.next26.i.us.3, %.lr.ph22.i.us ], [ %indvars.iv25.i.us.unr, %.lr.ph22.i.us.prol.loopexit ] ; 7 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv25.i.us
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv25.i.us
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !72
  %i.dz = xor i64 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv25.i.us
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !72
  %indvars.iv.next26.i.us = add nuw nsw i64 %indvars.iv25.i.us, 1 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next26.i.us
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !72
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next26.i.us
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !72
  %i.ef = xor i64 %i.ee, %i.ec
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next26.i.us
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !72
  %indvars.iv.next26.i.us.1 = add nuw nsw i64 %indvars.iv25.i.us, 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next26.i.us.1
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !72
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next26.i.us.1
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !72
  %i.el = xor i64 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next26.i.us.1
  store i64 %i.el, ptr %i.em, align 8, !tbaa !72
  %indvars.iv.next26.i.us.2 = add nuw nsw i64 %indvars.iv25.i.us, 3 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next26.i.us.2
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !72
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next26.i.us.2
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !72
  %i.er = xor i64 %i.eq, %i.eo
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next26.i.us.2
  store i64 %i.er, ptr %i.es, align 8, !tbaa !72
  %indvars.iv.next26.i.us.3 = add nuw nsw i64 %indvars.iv25.i.us, 4 ; 2 uses
  %exitcond29.not.i.us.3 = icmp eq i64 %indvars.iv.next26.i.us.3, %wide.trip.count28.i
  br i1 %exitcond29.not.i.us.3, label %Abc_TtXor.exit.loopexit.us, label %.lr.ph22.i.us, !llvm.loop !589

Abc_TtXor.exit.loopexit.us:                       ; preds = %.lr.ph22.i.us.prol.loopexit, %.lr.ph22.i.us, %middle.block
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph96.split.us, !llvm.loop !590

.critedge2:                                       ; preds = %.lr.ph96.split.us, %Abc_TtXor.exit.loopexit.us, %.lr.ph96, %.critedge
  %i.et = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65 ; 2 uses
  %.not.i86 = icmp eq ptr %i.eu, null
  br i1 %.not.i86, label %Vec_WrdFree.exit, label %bb.j

bb.j:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.eu) #35
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %.critedge2, %bb.j
  tail call void @free(ptr noundef nonnull %i.ce) #35
  tail call void @Gia_ManStop(ptr noundef nonnull %i.ac) #35
  %i.ev = add nuw nsw i32 %.098, 1                ; 2 uses
  %exitcond113.not = icmp eq i32 %i.ev, %i.h
  br i1 %exitcond113.not, label %._crit_edge, label %bb.c, !llvm.loop !591

._crit_edge:                                      ; preds = %Vec_WrdFree.exit, %Vec_WrdStart.exit
  ret ptr %i.m
}

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManRelPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val89 = load i32, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.e = getelementptr i8, ptr %.val91, i64 4
  %.val91.val = load i32, ptr %i.e, align 4, !tbaa !60 ; 2 uses
  %i.f = sdiv i32 %.val89, %.val91.val            ; 6 uses
  %i.g = getelementptr i8, ptr %1, i64 4          ; 5 uses
  %.val78 = load i32, ptr %i.g, align 4, !tbaa !60 ; 3 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef %.val91.val, i32 noundef %.val78) ; 0 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge120

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = shl i32 %i.f, 6
  %i.k = shl nuw i32 1, %.val78
  %i.l = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %.not121 = icmp eq i32 %.val78, 31
  %i.o = getelementptr i8, ptr %3, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %smax132 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge118
  %.063119 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dl, %._crit_edge118 ] ; 9 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val7697 = load i32, ptr %i.q, align 4, !tbaa !60
  %i.r = icmp sgt i32 %.val7697, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.s = lshr i32 %.063119, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i32 %.063119, 63
  %i.v = zext nneg i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.w = phi ptr [ %i.p, %.lr.ph ], [ %i.aj, %bb.c ]
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val81.val = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val81.val, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !62   ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul nsw i32 %i.z, %i.f
  %.val88 = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val88, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.t
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !72
  %i.af = lshr i64 %i.ae, %i.v
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %i.ah) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !59  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val76 = load i32, ptr %i.ak, align 4, !tbaa !60
  %i.al = sext i32 %.val76 to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %.critedge, !llvm.loop !592

.critedge:                                        ; preds = %bb.b, %bb.c, %.preheader
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  %.val75100 = load i32, ptr %i.g, align 4, !tbaa !60
  %i.an = icmp sgt i32 %.val75100, 0
  br i1 %i.an, label %.lr.ph102, label %.critedge2

end_hunk_0
