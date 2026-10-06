Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3DNA?download=true
inline.NumInlined: 405
inline.NumDeleted: 180
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6bParse4bDNA19initRecurseCmpFlagsEi:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge, !llvm.loop !98
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse4bDNA12initCmpFlagsEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(420) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.n = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !84
  %wide.load82 = load <4 x i32>, ptr %i.v, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !84
  store <4 x i32> %wide.load82, ptr %i.w, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !100

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !84
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !84
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.2
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph, !llvm.loop !101

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.15)
  store i32 0, ptr %i.c, align 4, !tbaa !20
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %middle.block ], [ %i.k, %scalar.ph ], [ %i.k, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.b, %.split.i.i ], [ %i.b, %middle.block ], [ %i.b, %scalar.ph ], [ %i.b, %scalar.ph.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !19 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !18, !range !69, !noundef !77
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aq)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.au, align 8, !tbaa !18
  store ptr %.0.i12.i.i, ptr %i.ap, align 8, !tbaa !19
  store i32 %.0.i.i, ptr %i.f, align 8, !tbaa !21
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.av = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i12.i.i, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i.i ]
  %i.aw = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.b to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.ay = sub nsw i64 %wide.trip.count.i, %i.aw
  %i.az = shl nsw i64 %i.ay, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.az, i1 false), !tbaa !84
  %.pre65 = load i32, ptr %i.a, align 4, !tbaa !42
  br label %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit

_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %.lr.ph.i, %bb.a
  %i.ba = phi i32 [ %.pre65, %.lr.ph.i ], [ %i.b, %bb.a ]
  store i32 %i.b, ptr %i.c, align 4, !tbaa !20
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph57, label %._crit_edge

.lr.ph57:                                         ; preds = %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.f

.preheader:                                       ; preds = %.loopexit
  %i.bt = icmp sgt i32 %i.fd, 0
  br i1 %i.bt, label %.lr.ph59, label %._crit_edge

.lr.ph59:                                         ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph57, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 3 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !83 ; 2 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = shl nsw i32 %i.by, 15
  %i.ca = xor i32 %i.bz, -1
  %i.cb = add nsw i32 %i.ca, %i.by                ; 2 uses
  %i.cc = ashr i32 %i.cb, 10
  %i.cd = xor i32 %i.cc, %i.cb
  %i.ce = mul i32 %i.cd, 9                        ; 2 uses
  %i.cf = ashr i32 %i.ce, 6
  %i.cg = xor i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = shl i32 %i.cg, 11
  %i.ci = xor i32 %i.ch, -1
  %i.cj = add nsw i32 %i.cg, %i.ci                ; 2 uses
  %i.ck = ashr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = load i32, ptr %i.be, align 8, !tbaa !21
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = and i32 %i.cl, %i.cn                    ; 2 uses
  %i.cp = load i32, ptr %i.bf, align 4, !tbaa !20
  %.not.i.i.i44 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i.i.i44, label %bb.g, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.cr = sext i32 %i.co to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cr
  %.012.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %bb.g
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.cu = load ptr, ptr %i.bi, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i.i45
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i45 ], [ %.0.i.i.i, %bb.i ]
  %i.cv = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !86
  %i.cy = icmp eq i32 %i.cx, %i.by
  br i1 %i.cy, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  %.0.i.i.i = load i32, ptr %i.cz, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.h, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i:     ; preds = %bb.h
  %i.da = load ptr, ptr %i.bj, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %_ZN6bParse4bDNA14getReverseTypeEs.exit

_ZN6bParse4bDNA14getReverseTypeEs.exit:           ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.cv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, -1
  br i1 %i.dd, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.j

_ZN6bParse4bDNA14getReverseTypeEs.exit.thread:    ; preds = %bb.i, %bb.g, %bb.f, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv
  store i32 0, ptr %i.df, align 4, !tbaa !84
  br label %.loopexit

bb.j:                                             ; preds = %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.dg = load i32, ptr %i.bk, align 4, !tbaa !42
  %i.dh = icmp slt i32 %i.dc, %i.dg
  br i1 %i.dh, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !81 ; 3 uses
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  store i32 1, ptr %i.dn, align 4, !tbaa !84
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !83 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !83
  %i.ds = icmp eq i16 %i.dp, %i.dr
  br i1 %i.ds, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.dt = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.du = sext i16 %i.bx to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !83
  %i.dx = load i16, ptr %i.dl, align 2, !tbaa !83
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.dz = sext i16 %i.dx to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dy, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !83
  %i.ec = icmp eq i16 %i.dw, %i.eb
  br i1 %i.ec, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ed = sext i16 %i.dp to i32
  %.not4350 = icmp sgt i16 %i.dp, 0
  br i1 %.not4350, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.m
  %i.ee = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.ef = load ptr, ptr %i.bq, align 8, !tbaa !34
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %i.eg = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %i.ed
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !102

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %.053 = phi i32 [ 0, %.lr.ph ], [ %i.eg, %bb.n ]
  %.pn52 = phi ptr [ %i.dl, %.lr.ph ], [ %.03755, %bb.n ] ; 2 uses
  %.pn4251 = phi ptr [ %i.bw, %.lr.ph ], [ %.03854, %bb.n ] ; 2 uses
  %.03854 = getelementptr inbounds nuw i8, ptr %.pn4251, i64 4 ; 2 uses
  %.03755 = getelementptr inbounds nuw i8, ptr %.pn52, i64 4 ; 2 uses
  %i.eh = load i16, ptr %.03854, align 2, !tbaa !83
  %i.ei = sext i16 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ei
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !80
  %i.el = load i16, ptr %.03755, align 2, !tbaa !83
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !80
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ek, ptr noundef nonnull dereferenceable(1) %i.eo) #26
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn4251, i64 6
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !83
  %i.es = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.et = sext i16 %i.er to i64
  %i.eu = getelementptr inbounds [24 x i8], ptr %i.es, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !79
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn52, i64 6
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !83
  %i.ey = load ptr, ptr %i.bs, align 8, !tbaa !26
  %i.ez = sext i16 %i.ex to i64
  %i.fa = getelementptr inbounds [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !79
  %i.fc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(1) %i.fb) #26
  %.not41 = icmp eq i32 %i.fc, 0
  br i1 %.not41, label %bb.n, label %.loopexit

.critedge:                                        ; preds = %bb.n, %bb.m
  store i32 2, ptr %i.dn, align 4, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.p, %bb.j, %.critedge, %bb.l, %bb.k, %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !42  ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.f, label %.preheader, !llvm.loop !103

bb.q:                                             ; preds = %.lr.ph59, %bb.s
  %i.fg = phi i32 [ %i.fd, %.lr.ph59 ], [ %i.fl, %bb.s ]
  %indvars.iv62 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next63, %bb.s ] ; 3 uses
  %2 = load ptr, ptr %i.bu, align 8, !tbaa !19
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv62
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !84
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fk = trunc nuw nsw i64 %indvars.iv62 to i32
  tail call void @_ZN6bParse4bDNA19initRecurseCmpFlagsEi(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %i.fk)
  %.pre66.a = load i32, ptr %i.a, align 4, !tbaa !42
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.fl = phi i32 [ %i.fg, %bb.q ], [ %.pre66.a, %bb.r ] ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.fm = sext i32 %i.fl to i64
  %i.fn = icmp slt i64 %indvars.iv.next63, %i.fm
  br i1 %i.fn, label %bb.q, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.s, %_ZN20b3AlignedObjectArrayIiE6resizeEiRKi.exit, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6bParse4bDNA4initEPcib(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %4 = alloca %"struct.bParse::bNameInfo", align 8 ; 7 uses
  %5 = alloca %class.b3HashInt, align 4           ; 4 uses
  %6 = alloca %struct.b3HashString, align 8       ; 14 uses
  %i.c = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str, i64 noundef 4) #26
  %i.d = icmp eq i32 %i.c, 0
  %spec.select.idx = select i1 %i.d, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx ; 3 uses
  %.pre = load i32, ptr %spec.select, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre) ; 2 uses
  store i32 %i.e, ptr %spec.select, align 4, !tbaa !84
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %i.e, %bb.b ], [ %.pre, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZL13name_is_arrayPcPiS0_.exit
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.bf, %_ZL13name_is_arrayPcPiS0_.exit ]
  %.0114 = phi ptr [ %i.g, %.lr.ph ], [ %i.be, %_ZL13name_is_arrayPcPiS0_.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %.0114, ptr %4, align 8, !tbaa !79
  %i.n = load i8, ptr %.0114, align 1, !tbaa !75
  %i.o = icmp eq i8 %i.n, 42
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0114, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !75
  %i.r = icmp eq i8 %i.q, 42
  %i.s = zext i1 %i.r to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = phi i8 [ 1, %bb.d ], [ %i.s, %bb.e ]
  store i8 %i.t, ptr %i.i, align 8, !tbaa !93
  %i.u = ptrtoaddr ptr %.0114 to i64              ; 2 uses
  %i.v = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0114) #26
  store i32 1, ptr %i.j, align 4, !tbaa !84
  store i32 1, ptr %i.k, align 8, !tbaa !84
  %i.w = call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %.0114, i32 noundef 91) #26 ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f
  %sext.i = shl i64 %i.v, 32
  %i.y = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.0114, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %i.ac = icmp ult ptr %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph.preheader.i, label %.thread73.i

.lr.ph.preheader.i:                               ; preds = %.preheader84.i
  %i.ad = xor i64 %i.x, -1
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.y
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.u
  %scevgep.i = getelementptr i8, ptr %i.af, i64 %i.ad ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.ag = phi ptr [ %i.an, %bb.h ], [ %i.ab, %.lr.ph.preheader.i ] ; 3 uses
  %.04790.i = phi i32 [ %i.am, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !75  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 93
  br i1 %i.ai, label %.thread73.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add i8 %i.ah, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.aj, 10
  br i1 %or.cond.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = mul nsw i32 %.04790.i, 10
  %i.al = zext nneg i8 %i.aj to i32
  %i.am = add nsw i32 %i.ak, %i.al                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.an, %scevgep.i
  br i1 %exitcond.not.i, label %.thread73.i, label %.lr.ph.i

.thread73.i:                                      ; preds = %bb.h, %.lr.ph.i, %.preheader84.i
  %i.ao = phi i32 [ 0, %.preheader84.i ], [ %i.am, %bb.h ], [ %.04790.i, %.lr.ph.i ] ; 2 uses
  %.lcssa87.i = phi ptr [ %i.ab, %.preheader84.i ], [ %scevgep.i, %bb.h ], [ %i.ag, %.lr.ph.i ]
  store i32 %i.ao, ptr %i.k, align 8, !tbaa !84
  %i.ap = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.lcssa87.i, i32 noundef 91) #26 ; 4 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %.not68.i = icmp eq ptr %i.ap, null
  br i1 %.not68.i, label %_ZL13name_is_arrayPcPiS0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread73.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.aa
  br i1 %i.as, label %.lr.ph98.preheader.i, label %.thread80.i

.lr.ph98.preheader.i:                             ; preds = %.preheader.i
  %i.at = xor i64 %i.aq, -1
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.y
  %i.av = getelementptr i8, ptr %i.au, i64 %i.u
  %scevgep102.i = getelementptr i8, ptr %i.av, i64 %i.at
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %bb.j, %.lr.ph98.preheader.i
  %i.aw = phi ptr [ %i.bd, %bb.j ], [ %i.ar, %.lr.ph98.preheader.i ] ; 2 uses
  %.397.i = phi i32 [ %i.bc, %bb.j ], [ 0, %.lr.ph98.preheader.i ] ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !75  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 93
  br i1 %i.ay, label %.thread80.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph98.i
  %i.az = add i8 %i.ax, -48                       ; 2 uses
  %or.cond5.i = icmp ult i8 %i.az, 10
  br i1 %or.cond5.i, label %bb.j, label %.thread76.i

.thread76.i:                                      ; preds = %bb.i
  %puts69.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %_ZL13name_is_arrayPcPiS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ba = mul nsw i32 %.397.i, 10
  %i.bb = zext nneg i8 %i.az to i32
  %i.bc = add nsw i32 %i.ba, %i.bb                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %exitcond103.not.i = icmp eq ptr %i.bd, %scevgep102.i
  br i1 %exitcond103.not.i, label %.thread80.i, label %.lr.ph98.i

.thread80.i:                                      ; preds = %bb.j, %.lr.ph98.i, %.preheader.i
  %.3.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bc, %bb.j ], [ %.397.i, %.lr.ph98.i ]
  store i32 %i.ao, ptr %i.j, align 4, !tbaa !84
  store i32 %.3.lcssa.i, ptr %i.k, align 8, !tbaa !84
  br label %_ZL13name_is_arrayPcPiS0_.exit

_ZL13name_is_arrayPcPiS0_.exit:                   ; preds = %bb.f, %.thread.i, %.thread73.i, %.thread76.i, %.thread80.i
  call void @_ZN20b3AlignedObjectArrayIN6bParse9bNameInfoEE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %.0114)
  %scevgep = getelementptr i8, ptr %.0114, i64 %strlen
  %i.be = getelementptr inbounds nuw i8, ptr %scevgep, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bf = add nuw nsw i32 %i.m, 1                 ; 3 uses
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !84
  %i.bg = icmp slt i32 %i.bf, %i.f
  br i1 %i.bg, label %bb.d, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZL13name_is_arrayPcPiS0_.exit, %bb.c
  %.0.lcssa = phi ptr [ %i.g, %bb.c ], [ %i.be, %_ZL13name_is_arrayPcPiS0_.exit ]
  %i.bh = ptrtoint ptr %.0.lcssa to i64
  %i.bi = add i64 %i.bh, 3
  %i.bj = and i64 %i.bi, -4
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %.pre143 = load i32, ptr %i.bl, align 4, !tbaa !84 ; 2 uses
  br i1 %3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.bm = call noundef i32 @_ZN6bParse10ChunkUtils7swapIntEi(i32 noundef %.pre143) ; 2 uses
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.bn = phi i32 [ %i.bm, %bb.k ], [ %.pre143, %._crit_edge ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !84
  %i.bp = icmp sgt i32 %i.bn, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 6 uses
  br i1 %i.bp, label %.lr.ph117, label %.._crit_edge118_crit_edge

end_hunk_0
begin_hunk_1_@_ZN9b3HashMapI12b3HashStringiE6insertERKS0_RKi:bb.a
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.co, align 4, !tbaa !63
  %i.ds = load i32, ptr %i.d, align 8, !tbaa !21
  %i.dt = icmp slt i32 %i.e, %i.ds
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit
  call void @_ZN9b3HashMapI12b3HashStringiE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %i.du = load i32, ptr %i.b, align 8, !tbaa !92
  %i.dv = load i32, ptr %i.d, align 8, !tbaa !21
  %i.dw = add nsw i32 %i.dv, -1
  %i.dx = and i32 %i.dw, %i.du
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit
  %.0 = phi i32 [ %i.dx, %bb.k ], [ %i.g, %_ZN20b3AlignedObjectArrayI12b3HashStringE9push_backERKS0_.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !19
  %i.ea = sext i32 %.0 to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !84
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !19
  %i.ef = sext i32 %i.ao to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ef
  store i32 %i.ec, ptr %i.eg, align 4, !tbaa !84
  store i32 %i.ao, ptr %i.eb, align 4, !tbaa !84
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK9b3HashMapI12b3HashStringiE9findIndexERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6bParse4bDNA12getArraySizeEPc(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(420) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.015.lcssa = phi i32 [ 1, %bb.a ], [ %.116, %bb.e ]
  ret i32 %.015.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.01419 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %bb.e ] ; 4 uses
  %.01518 = phi i32 [ 1, %.lr.ph.preheader ], [ %.116, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !75    ; 2 uses
  %i.f = icmp eq i8 %i.e, 91
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i8 %i.e, 93
  %i.i = icmp ne ptr %.01419, null
  %or.cond = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.01419, ptr noundef null, i32 noundef 10) #23, !inline_history !135
  %i.k = trunc i64 %i.j to i32
  %i.l = mul nsw i32 %.01518, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.116 = phi i32 [ %.01518, %bb.b ], [ %i.l, %bb.d ], [ %.01518, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.g, %bb.b ], [ %.01419, %bb.d ], [ %.01419, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !136
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_ZN6bParse4bDNA19dumpTypeDefinitionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(420) %0) local_unnamed_addr #11 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph48, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 4 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !83
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = shl nsw i32 %i.s, 15
  %i.u = xor i32 %i.t, -1
  %i.v = add nsw i32 %i.u, %i.s                   ; 2 uses
  %i.w = ashr i32 %i.v, 10
  %i.x = xor i32 %i.w, %i.v
  %i.y = mul i32 %i.x, 9                          ; 2 uses
  %i.z = ashr i32 %i.y, 6
  %i.aa = xor i32 %i.z, %i.y                      ; 2 uses
  %i.ab = shl i32 %i.aa, 11
  %i.ac = xor i32 %i.ab, -1
  %i.ad = add nsw i32 %i.aa, %i.ac                ; 2 uses
  %i.ae = ashr i32 %i.ad, 16
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !21
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = and i32 %i.af, %i.ah                    ; 2 uses
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !20
  %.not.i.i.i = icmp ult i32 %i.ai, %i.aj
  br i1 %.not.i.i.i, label %bb.b, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.al
  %.012.i.i.i = load i32, ptr %i.am, align 4, !tbaa !84 ; 2 uses
  %.not1113.i.i.i = icmp eq i32 %.012.i.i.i, -1
  br i1 %.not1113.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.ao = load ptr, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.014.i.i.i = phi i32 [ %.012.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i, %bb.d ]
  %i.ap = sext i32 %.014.i.i.i to i64             ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !86
  %i.as = icmp eq i32 %i.ar, %i.s
  br i1 %i.as, label %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ap
  %.0.i.i.i = load i32, ptr %i.at, align 4, !tbaa !84 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %.0.i.i.i, -1
  br i1 %.not11.i.i.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.c, !llvm.loop !1

_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i:     ; preds = %bb.c
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !19  ; 2 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %_ZN6bParse4bDNA14getReverseTypeEs.exit

_ZN6bParse4bDNA14getReverseTypeEs.exit:           ; preds = %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ap
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !84 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread, label %bb.e

_ZN6bParse4bDNA14getReverseTypeEs.exit.thread:    ; preds = %bb.d, %bb.b, %bb.a, %_ZN9b3HashMapI9b3HashIntiE4findERKS0_.exit.i, %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 0, ptr %i.az, align 4, !tbaa !84
  br label %bb.j

bb.e:                                             ; preds = %_ZN6bParse4bDNA14getReverseTypeEs.exit
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !81
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !83
  %i.be = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.bf = sext i16 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.bi, ptr noundef %i.bh) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !83 ; 2 uses
  %i.bm = sext i16 %i.bl to i32                   ; 3 uses
  %i.bn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bm) ; 0 uses
  %putchar = tail call i32 @putchar(i32 123)      ; 0 uses
  %i.bo = icmp sgt i16 %i.bl, 0
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bp = add nsw i32 %i.bm, -1                   ; 2 uses
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bq = add nsw i32 %i.bm, -2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.h
  %.03445 = phi i32 [ 0, %.lr.ph.split ], [ %i.cy, %bb.h ] ; 2 uses
  %.pn44 = phi ptr [ %i.q, %.lr.ph.split ], [ %.03546, %bb.h ] ; 2 uses
  %.03643 = phi i32 [ 0, %.lr.ph.split ], [ %i.cx, %bb.h ]
  %.03546 = getelementptr inbounds nuw i8, ptr %.pn44, i64 4 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pn44, i64 6 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !83
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.bu = sext i16 %i.bs to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79
  %i.bx = load i16, ptr %.03546, align 2, !tbaa !83
  %1 = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.by = sext i16 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !80
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.ca, ptr noundef %i.bw) ; 0 uses
  %i.cc = load i16, ptr %i.br, align 2, !tbaa !83
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.ce = sext i16 %i.cc to i64
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.cd, i64 %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !139
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !140
  %i.ck = mul nsw i32 %i.cj, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !93, !range !69, !noundef !77
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.co = load i16, ptr %.03546, align 2, !tbaa !83
  %i.cp = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.cq = sext i16 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !83
  %i.ct = sext i16 %i.cs to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i32 [ %i.ct, %bb.g ], [ 8, %bb.f ]
  %i.cu = mul nsw i32 %i.ck, %.0                  ; 2 uses
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.cu) ; 0 uses
  %i.cw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.cx = add nsw i32 %i.cu, %.03643              ; 2 uses
  %i.cy = add nuw nsw i32 %.03445, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %.03445, %i.bq
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin.loopexit, label %bb.f, !llvm.loop !137

._crit_edge.loopexit.peel.begin.loopexit:         ; preds = %bb.h
  %i.cz = icmp eq i32 %i.cy, %i.bp
  %i.da = select i1 %i.cz, ptr @.str.7, ptr @.str.8
  br label %._crit_edge.loopexit.peel.begin

._crit_edge.loopexit.peel.begin:                  ; preds = %._crit_edge.loopexit.peel.begin.loopexit, %.lr.ph
  %.str.7..str.8 = phi ptr [ @.str.7, %.lr.ph ], [ %i.da, %._crit_edge.loopexit.peel.begin.loopexit ]
  %i.db = phi ptr [ %i.q, %.lr.ph ], [ %.03546, %._crit_edge.loopexit.peel.begin.loopexit ] ; 2 uses
  %i.dc = phi i32 [ 0, %.lr.ph ], [ %i.cx, %._crit_edge.loopexit.peel.begin.loopexit ]
  %.03546.peel = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 6 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !83
  %i.df = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.dg = sext i16 %i.de to i64
  %i.dh = getelementptr inbounds [24 x i8], ptr %i.df, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !79
  %i.dj = load i16, ptr %.03546.peel, align 2, !tbaa !83
  %2 = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.dk = sext i16 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !80
  %i.dn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.dm, ptr noundef %i.di) ; 0 uses
  %i.do = load i16, ptr %i.dd, align 2, !tbaa !83
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.dq = sext i16 %i.do to i64
  %i.dr = getelementptr inbounds [24 x i8], ptr %i.dp, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !139
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !140
  %i.dw = mul nsw i32 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !93, !range !69, !noundef !77
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %._crit_edge.loopexit.peel.next, label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.ea = load i16, ptr %.03546.peel, align 2, !tbaa !83
  %i.eb = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.ec = sext i16 %i.ea to i64
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !83
  %i.ef = sext i16 %i.ee to i32
  br label %._crit_edge.loopexit.peel.next

._crit_edge.loopexit.peel.next:                   ; preds = %bb.i, %._crit_edge.loopexit.peel.begin
  %.0.peel = phi i32 [ %i.ef, %bb.i ], [ 8, %._crit_edge.loopexit.peel.begin ]
  %i.eg = mul nsw i32 %i.dw, %.0.peel             ; 2 uses
  %i.eh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.eg) ; 0 uses
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.7..str.8) ; 0 uses
  %i.ej = add nsw i32 %i.eg, %i.dc
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.next, %bb.e
  %.036.lcssa = phi i32 [ 0, %bb.e ], [ %i.ej, %._crit_edge.loopexit.peel.next ]
  %i.ek = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.036.lcssa) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN6bParse4bDNA14getReverseTypeEs.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !42
  %i.em = sext i32 %i.el to i64
  %i.en = icmp slt i64 %indvars.iv.next, %i.em
  br i1 %i.en, label %bb.a, label %._crit_edge49, !llvm.loop !138

._crit_edge49:                                    ; preds = %bb.j, %.preheader
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #9

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9b3HashMapI9b3HashIntiE10growTablesERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 4 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21
  %i.h = icmp slt i32 %i.g, %i.b
  br i1 %i.h, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.n = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.n to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.l
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !84
  %wide.load62 = load <4 x i32>, ptr %i.v, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !84
  store <4 x i32> %wide.load62, ptr %i.w, align 4, !tbaa !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !84
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !143

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !84
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !84
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !84
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i.1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.i.1
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !84
end_hunk_1
