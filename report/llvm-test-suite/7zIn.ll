inline.NumInlined: 462
inline.NumDeleted: 124
begin_hunk_0_@_ZN8NArchive3N7z8CInByte210ReadNumberEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.am = add nuw i64 %i.b, 5                     ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ae
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !58
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 24
  %i.ar = or disjoint i64 %i.aq, %i.aj            ; 2 uses
  %i.as = and i32 %i.i, 8
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %exitcond.4.not = icmp eq i64 %i.k, 4
  br i1 %exitcond.4.not, label %bb.f, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = add nuw i64 %i.b, 6                     ; 2 uses
  store i64 %i.au, ptr %i.a, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !58
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 32
  %i.az = or disjoint i64 %i.ay, %i.ar            ; 2 uses
  %i.ba = and i32 %i.i, 4
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.d, label %bb.p

bb.p:                                             ; preds = %bb.o
  %exitcond.5.not = icmp eq i64 %i.k, 5
  br i1 %exitcond.5.not, label %bb.f, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = add nuw i64 %i.b, 7                     ; 2 uses
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.au
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !58
  %i.bf = zext i8 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 40
  %i.bh = or i64 %i.bg, %i.az                     ; 2 uses
  %i.bi = and i32 %i.i, 2
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.d, label %bb.r

bb.r:                                             ; preds = %bb.q
  %exitcond.6.not = icmp eq i64 %i.k, 6
  br i1 %exitcond.6.not, label %bb.f, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nuw i64 %i.b, 8                     ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bc
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !58
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 48
  %i.bp = or i64 %i.bo, %i.bh                     ; 2 uses
  %i.bq = and i32 %i.i, 1
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.d, label %bb.t

bb.t:                                             ; preds = %bb.s
  %exitcond.7.not = icmp eq i64 %i.k, 7
  br i1 %exitcond.7.not, label %bb.f, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.t
  %i.bs = add nuw i64 %i.b, 9
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bk
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !58
  %i.bv = zext i8 %i.bu to i64
  %i.bw = shl nuw i64 %i.bv, 56
  %i.bx = or i64 %i.bw, %i.bp
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %spec.select = phi i64 [ %i.p, %bb.d ], [ %i.bx, %.loopexit.loopexit ]
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZN8NArchive3N7z8CInByte27ReadNumEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.b = icmp ugt i64 %i.a, 2147483647
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %i.a to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z8CInByte210ReadUInt32Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  store i64 %i.c, ptr %i.a, align 8, !tbaa !55
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN8NArchive3N7z8CInByte210ReadUInt64Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = add i64 %i.b, 8                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !60
  store i64 %i.c, ptr %i.a, align 8, !tbaa !55
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z8CInByte210ReadStringER11CStringBaseIwE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !54
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = and i64 %i.g, -2                         ; 3 uses
  %.not36 = icmp eq i64 %i.h, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = and i64 %i.g, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.02729 = phi i64 [ %i.p, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.02729 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !58
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = add nuw i64 %.02729, 2                   ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.h
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %.02729, %bb.b ], [ %i.i, %bb.c ] ; 5 uses
  %i.r = icmp eq i64 %.027.lcssa, %i.h
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.e:                                             ; preds = %._crit_edge
  %i.s = lshr exact i64 %.027.lcssa, 1            ; 5 uses
  %i.t = trunc i64 %i.s to i32                    ; 5 uses
  %i.u = icmp sgt i32 %i.t, -1
  %.not = icmp ult i64 %.027.lcssa, 4294967296
  %or.cond = and i1 %.not, %i.u
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, %i.t
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !65
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

bb.i:                                             ; preds = %bb.g
  %2 = add nuw nsw i32 %i.t, 1                    ; 2 uses
  %i.x = zext nneg i32 %2 to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #18 ; 10 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = icmp sgt i32 %i.w, 0
  br i1 %i.ab, label %.preheader.i.i, label %bb.j

.preheader.i.i:                                   ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !66 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !65 ; 9 uses
  br i1 %i.ae, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i44 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ad to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  %i.af = sub i64 %i.aa, %.pre.i.i44
  %diff.check = icmp ult i64 %i.af, 32
  %or.cond60 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond60, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !67
  %wide.load45 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !67
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %wide.load, ptr %i.ai, align 4, !tbaa !67
  store <4 x i32> %wide.load45, ptr %i.aj, align 4, !tbaa !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i.prol
  store i32 %i.am, ptr %i.an, align 4, !tbaa !67
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !72

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aq = icmp eq ptr %.pre.i.i, null
  br i1 %i.aq, label %bb.j, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !67
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !67
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.1
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !67
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.2
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !67
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !74

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.i
  store ptr %i.z, ptr %1, align 8, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !66
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.bf
  store i32 0, ptr %i.bg, align 4, !tbaa !67
  store i32 %2, ptr %i.v, align 4, !tbaa !62
  br label %_ZN11CStringBaseIwE9GetBufferEi.exit

_ZN11CStringBaseIwE9GetBufferEi.exit:             ; preds = %bb.h, %bb.j
  %3 = phi ptr [ %.pre.i, %bb.h ], [ %i.z, %bb.j ] ; 3 uses
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN11CStringBaseIwE9GetBufferEi.exit
  %min.iters.check47 = icmp ult i64 %.027.lcssa, 16
  br i1 %min.iters.check47, label %.lr.ph34.preheader61, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph34.preheader
  %n.vec50 = and i64 %i.s, 2147483640             ; 4 uses
  %i.bh = shl nuw nsw i64 %n.vec50, 1
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.bh
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph48
  %index52 = phi i64 [ 0, %vector.ph48 ], [ %index.next55, %vector.body51 ] ; 3 uses
  %i.bj = shl i64 %index52, 1
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep, i64 8
  %wide.load53.a = load <4 x i16>, ptr %next.gep, align 2, !tbaa !75
  %wide.load54 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !75
  %i.bl = zext <4 x i16> %wide.load53.a to <4 x i32>
  %i.bm = zext <4 x i16> %wide.load54 to <4 x i32>
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index52 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %i.bl, ptr %i.bn, align 4, !tbaa !67
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !67
  %index.next55 = add nuw i64 %index52, 8         ; 2 uses
  %i.bp = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.bp, label %middle.block56, label %vector.body51, !llvm.loop !77

middle.block56:                                   ; preds = %vector.body51
  %cmp.n57 = icmp eq i64 %i.s, %n.vec50
  br i1 %cmp.n57, label %._crit_edge35, label %.lr.ph34.preheader61

.lr.ph34.preheader61:                             ; preds = %.lr.ph34.preheader, %middle.block56
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph34.preheader ], [ %n.vec50, %middle.block56 ]
  %.02632.ph = phi ptr [ %i.d, %.lr.ph34.preheader ], [ %i.bi, %middle.block56 ]
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader61, %.lr.ph34
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph34 ], [ %indvars.iv.ph, %.lr.ph34.preheader61 ] ; 2 uses
  %.02632 = phi ptr [ %i.bt, %.lr.ph34 ], [ %.02632.ph, %.lr.ph34.preheader61 ] ; 2 uses
  %i.bq = load i16, ptr %.02632, align 2, !tbaa !75
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02632, i64 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %._crit_edge35, label %.lr.ph34, !llvm.loop !78

._crit_edge35:                                    ; preds = %.lr.ph34, %middle.block56, %_ZN11CStringBaseIwE9GetBufferEi.exit
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.s
  store i32 0, ptr %i.bu, align 4, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.t, ptr %i.bv, align 8, !tbaa !66
  %i.bw = add nuw nsw i64 %.027.lcssa, 2
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !55
  %i.by = add i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.b, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = tail call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 32) ; 2 uses
  %.not.not = icmp eq i32 %i.c, 0
  br i1 %.not.not, label %bb.b, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 8, !tbaa !58
  %i.e = load i8, ptr @_ZN8NArchive3N7z10kSignatureE, align 1, !tbaa !58
  %.not15.i = icmp eq i8 %i.d, %i.e
  br i1 %.not15.i, label %bb.c, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.g = load i8, ptr %i.f, align 1, !tbaa !58
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 1), align 1, !tbaa !58
  %.not15.1.i = icmp eq i8 %i.g, %i.h
  br i1 %.not15.1.i, label %bb.d, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.j = load i8, ptr %i.i, align 2, !tbaa !58
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 2), align 1, !tbaa !58
  %.not15.2.i = icmp eq i8 %i.j, %i.k
  br i1 %.not15.2.i, label %bb.e, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.m = load i8, ptr %i.l, align 1, !tbaa !58
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 3), align 1, !tbaa !58
  %.not15.3.i = icmp eq i8 %i.m, %i.n
  br i1 %.not15.3.i, label %bb.f, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i8, ptr %i.o, align 4, !tbaa !58
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 4), align 1, !tbaa !58
  %.not15.4.i = icmp eq i8 %i.p, %i.q
  br i1 %.not15.4.i, label %bb.g, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.s = load i8, ptr %i.r, align 1, !tbaa !58
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 5), align 1, !tbaa !58
  %.not15.5.i = icmp eq i8 %i.s, %i.t
  br i1 %.not15.5.i, label %bb.h, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.v = tail call i32 @CrcCalc(ptr noundef nonnull %i.u, i64 noundef 20)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.h
  %.not14.3.i = icmp eq i32 %i.x, 0
  %i.z = load <16 x i8>, ptr %i.u, align 4
  %.fr = freeze <16 x i8> %i.z
  %i.aa = icmp eq <16 x i8> %.fr, zeroinitializer ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ac = load <4 x i8>, ptr %i.ab, align 4
  %.fr226 = freeze <4 x i8> %i.ac
  %i.ad = icmp eq <4 x i8> %.fr226, zeroinitializer
  %i.ae = shufflevector <16 x i1> %i.aa, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.ae, %i.ad
  %i.af = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <16 x i1> %i.af, <16 x i1> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, -1
  %op.rdx = select i1 %.not14.3.i, i1 %i.ai, i1 false
  br i1 %op.rdx, label %bb.i, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !58
  %.not.i = icmp ne i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, 0
  %or.cond147 = select i1 %.not.i, i1 true, i1 %i.an
  br i1 %or.cond147, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread: ; preds = %bb.i, %bb.e, %bb.f, %bb.g, %bb.b, %bb.c, %bb.d, %.preheader.preheader.i
  %i.ao = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #18 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %.not75 = icmp eq ptr %2, null
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread
  %.064 = phi i64 [ %i.aq, %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread ], [ %i.cu, %._crit_edge ] ; 3 uses
  br i1 %.not75, label %.preheader227, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.as = sub i64 %.064, %i.ar
  %i.at = load i64, ptr %2, align 8, !tbaa !60
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %_ZN7CBufferIhED2Ev.exit, label %.preheader227

.preheader227:                                    ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader227, %bb.p
  %.168 = phi i32 [ %i.be, %bb.p ], [ 32, %.preheader227 ] ; 3 uses
  %i.av = sub nuw nsw i32 65536, %.168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aw = zext nneg i32 %.168 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  %i.ay = load ptr, ptr %1, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ax, i32 noundef %i.av, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not76 = icmp eq i32 %i.bb, 0
  br i1 %.not76, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CBufferIhED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CBufferIhED2Ev.exit81

bb.o:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %.not = icmp eq i32 %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not, label %_ZN7CBufferIhED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add i32 %i.bd, %.168                    ; 3 uses
  %i.bf = icmp ult i32 %i.be, 33
  br i1 %i.bf, label %bb.l, label %.preheader.preheader, !llvm.loop !80

.preheader.preheader:                             ; preds = %bb.p
  %i.bg = add i32 %i.be, -32                      ; 3 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread
  %.0165 = phi i32 [ %i.cs, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread ], [ 0, %.preheader.preheader ]
  %i.bi = zext i32 %.0165 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ %i.bi, %.preheader ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58  ; 2 uses
  %i.bl = icmp ne i8 %i.bk, 55
  %i.bm = icmp samesign ult i64 %indvars.iv, %i.bh
  %i.bn = and i1 %i.bm, %i.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bn, label %bb.q, label %bb.r, !llvm.loop !81

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv ; 8 uses
  %i.bp = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bq = icmp eq i32 %i.bg, %i.bp
  br i1 %i.bq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr @_ZN8NArchive3N7z10kSignatureE, align 1, !tbaa !58
  %.not.i79 = icmp eq i8 %i.bk, %i.br
  br i1 %.not.i79, label %bb.t, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !58
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 1), align 1, !tbaa !58
  %.not.1.i = icmp eq i8 %i.bt, %i.bu
  br i1 %.not.1.i, label %bb.u, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !58
  %i.bx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 2), align 1, !tbaa !58
  %.not.2.i = icmp eq i8 %i.bw, %i.bx
  br i1 %.not.2.i, label %bb.v, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !58
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb:bb.a

bb.m:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.bq = load i32, ptr %i.au, align 4, !tbaa !8
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.br
  store i32 1, ptr %i.bs, align 4, !tbaa !4
  %i.bt = load i32, ptr %i.au, align 4, !tbaa !8
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.au, align 4, !tbaa !8
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !28 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 108
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 3 uses
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %bb.n
  %i.cb = icmp sgt i32 %i.bz, 0
  br i1 %i.cb, label %.lr.ph.i206, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i206:                                      ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.bz, -1                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.cd to i64
  br i1 %i.ce, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i206, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i206 ] ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.us.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !27
  %i.ck = icmp eq i32 %i.cj, %.0615.us.i
  br i1 %i.ck, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, label %bb.o, !llvm.loop !124

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.o
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %i.cl = icmp sgt i32 %.0615.us.i, 0
  br i1 %i.cl, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !125

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i: ; preds = %bb.p, %.lr.ph.i206
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i206 ], [ %.0615.us.i, %bb.p ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !15
  %i.co = sext i32 %.0613.i to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !60
  br label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.cr = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.cr, align 16, !tbaa !4
  invoke void @__cxa_throw(ptr nonnull %i.cr, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc unwind label %.loopexit.split-lp338

.noexc:                                           ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i, %bb.n
  %.1.i = phi i64 [ %i.cq, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.thread.i ], [ 0, %bb.n ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %.loopexit337

bb.q:                                             ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %i.cs = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ct = load i32, ptr %i.ax, align 4, !tbaa !8  ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cu
  store i64 %.1.i, ptr %i.cv, align 8, !tbaa !60
  %i.cw = add nsw i32 %i.ct, 1
  store i32 %i.cw, ptr %i.ax, align 4, !tbaa !8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bx, i64 132
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !106, !range !23, !noundef !24
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.r unwind label %.loopexit337

bb.r:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.da = load i32, ptr %i.az, align 4, !tbaa !8  ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 %i.db
  store i8 %i.cy, ptr %i.dc, align 1, !tbaa !16
  %i.dd = add nsw i32 %i.da, 1
  store i32 %i.dd, ptr %i.az, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bx, i64 128
  %i.df = load i32, ptr %i.de, align 8, !tbaa !118
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.s unwind label %.loopexit337

bb.s:                                             ; preds = %bb.r
  %i.dg = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.dh = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  store i32 %i.df, ptr %i.dj, align 4, !tbaa !4
  %i.dk = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.bb, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %bb.m, label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit205, !llvm.loop !167

.loopexit337:                                     ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %bb.q, %bb.r
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp338:                            ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %lpad.loopexit.split-lp340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit205:    ; preds = %bb.s, %.preheader335, %bb.j
  %.3 = phi i64 [ %i.bm, %bb.j ], [ %.2139, %.preheader335 ], [ %.2139, %bb.s ]
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit205
  switch i64 %.3, label %bb.u [
    i64 0, label %bb.cr
    i64 5, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc211 unwind label %bb.k

.noexc211:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.dr = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dq)
          to label %.noexc212 unwind label %bb.ae ; 3 uses

.noexc212:                                        ; preds = %bb.v
  %i.ds = icmp ugt i64 %i.dr, 2147483647
  br i1 %i.ds, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.noexc212
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc213 unwind label %bb.ae

.noexc213:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc212
  %i.dt = trunc nuw nsw i64 %i.dr to i32          ; 9 uses
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i32 noundef %i.dt)
          to label %.preheader334 unwind label %bb.ae

.preheader334:                                    ; preds = %bb.x
  %.not369 = icmp eq i64 %i.dr, 0                 ; 6 uses
  br i1 %.not369, label %._crit_edge, label %.lr.ph347

.lr.ph347:                                        ; preds = %.preheader334
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph347, %_ZN8NArchive3N7z9CFileItemD2Ev.exit
  %.0171346 = phi i32 [ 0, %.lr.ph347 ], [ %i.em, %_ZN8NArchive3N7z9CFileItemD2Ev.exit ]
  %i.dw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %bb.z unwind label %bb.af      ; 4 uses

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dw, align 4, !tbaa !67
  %i.dx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %bb.aa unwind label %bb.ag     ; 6 uses

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  %i.dz = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i unwind label %bb.ad ; 3 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i:    ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 28
  store ptr %i.dz, ptr %i.dy, align 8, !tbaa !65
  store i32 0, ptr %i.dz, align 4, !tbaa !67
  store i32 1, ptr %i.ea, align 4, !tbaa !62
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.dw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.eb, %bb.ab ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.dz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.ed, %bb.ab ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.ec = load i32, ptr %.04.i.i.i.i, align 4, !tbaa !67 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  store i32 %i.ec, ptr %.0.i.i.i.i, align 4, !tbaa !67
  %.not.i.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab, !llvm.loop !168

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i32 0, ptr %i.ee, align 8, !tbaa !66
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i32 1, ptr %i.ef, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dp)
          to label %_ZN8NArchive3N7z9CFileItemD2Ev.exit unwind label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 40) #19
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit217

_ZN8NArchive3N7z9CFileItemD2Ev.exit:              ; preds = %bb.ac
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !15
  %i.ei = load i32, ptr %i.dv, align 4, !tbaa !8  ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ej
  store ptr %i.dx, ptr %i.ek, align 8, !tbaa !28
  %i.el = add nsw i32 %i.ei, 1
  store i32 %i.el, ptr %i.dv, align 4, !tbaa !8
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #19
  %i.em = add nuw i32 %.0171346, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.em, %i.dt
  br i1 %exitcond.not, label %._crit_edge, label %bb.y, !llvm.loop !169

bb.ae:                                            ; preds = %bb.w, %bb.v, %bb.x
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.af:                                            ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ag:                                            ; preds = %bb.ac, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NArchive3N7z9CFileItemD2Ev.exit217

_ZN8NArchive3N7z9CFileItemD2Ev.exit217:           ; preds = %bb.ad, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.ep, %bb.ag ], [ %i.eg, %bb.ad ]
  call void @_ZdaPv(ptr noundef nonnull %i.dw) #19
  br label %bb.cs

._crit_edge:                                      ; preds = %_ZN8NArchive3N7z9CFileItemD2Ev.exit, %.preheader334
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 4 uses
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 4 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 532 ; 8 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8  ; 2 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ew
  store i64 9, ptr %i.ex, align 8, !tbaa !60
  %i.ey = add nsw i32 %i.ev, 1
  store i32 %i.ey, ptr %i.eu, align 4, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %_ZN13CRecordVectorIyE3AddEy.exit221 unwind label %bb.aj

_ZN13CRecordVectorIyE3AddEy.exit221:              ; preds = %bb.ai
  %i.fc = load ptr, ptr %i.es, align 8, !tbaa !15
  %i.fd = load i32, ptr %i.eu, align 4, !tbaa !8  ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fe
  store i64 6, ptr %i.ff, align 8, !tbaa !60
  %i.fg = add nsw i32 %i.fd, 1
  store i32 %i.fg, ptr %i.eu, align 4, !tbaa !8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.al, %bb.ai, %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ak:                                            ; preds = %_ZN13CRecordVectorIyE3AddEy.exit221, %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = icmp eq i32 %i.fj, 0
  %or.cond = select i1 %.not369, i1 true, i1 %i.fk
  br i1 %or.cond, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %_ZN13CRecordVectorIyE3AddEy.exit223 unwind label %bb.aj

_ZN13CRecordVectorIyE3AddEy.exit223:              ; preds = %bb.al
  %i.fl = load ptr, ptr %i.es, align 8, !tbaa !15
  %i.fm = load i32, ptr %i.eu, align 4, !tbaa !8  ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fn
  store i64 10, ptr %i.fo, align 8, !tbaa !60
  %i.fp = add nsw i32 %i.fm, 1
  store i32 %i.fp, ptr %i.eu, align 4, !tbaa !8
  br label %bb.am

bb.am:                                            ; preds = %_ZN13CRecordVectorIyE3AddEy.exit223, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.fq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.fr, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %8, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc225 unwind label %.loopexit.split-lp331

.noexc225:                                        ; preds = %bb.am
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.dt)
          to label %.noexc226 unwind label %.loopexit.split-lp331

.noexc226:                                        ; preds = %.noexc225
  br i1 %.not369, label %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.noexc226
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %.noexc227, %.lr.ph.i224
  %.06.i = phi i32 [ 0, %.lr.ph.i224 ], [ %i.fz, %.noexc227 ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc227 unwind label %.loopexit330

.noexc227:                                        ; preds = %bb.an
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !15
  %i.fv = load i32, ptr %i.ft, align 4, !tbaa !8  ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fw
  store i8 0, ptr %i.fx, align 1, !tbaa !16
  %i.fy = add nsw i32 %i.fv, 1
  store i32 %i.fy, ptr %i.ft, align 4, !tbaa !8
  %i.fz = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fz, %i.dt
  br i1 %exitcond.not.i, label %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit, label %bb.an, !llvm.loop !18

_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit: ; preds = %.noexc227, %.noexc226
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.gb, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %9, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.gd, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %10, align 8, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 481
  %umax387 = call i32 @llvm.umax.i32(i32 %i.dt, i32 1)
  br label %bb.ao

bb.ao:                                            ; preds = %.backedge, %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit
  %.0166 = phi i32 [ 0, %_ZN8NArchive3N7zL21BoolVector_Fill_FalseER13CRecordVectorIbEi.exit ], [ %.3169299, %.backedge ] ; 26 uses
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.gx = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit229 unwind label %bb.ap ; 4 uses

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit229:    ; preds = %bb.ao
  %.not308 = icmp eq i64 %i.gx, 0
  br i1 %.not308, label %.preheader309, label %bb.aq

.loopexit330:                                     ; preds = %bb.an
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp331:                            ; preds = %bb.am, %.noexc225
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.ap:                                            ; preds = %bb.ao
  %i.gy = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorIN8NArchive3N7z7CFolderEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #17
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.q) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z10CCoderInfoEE, i64 16), ptr %i.m, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(133) %i.m)
          to label %_ZN8NArchive3N7z7CFolderD2Ev.exit unwind label %bb.c, !inline_history !112

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #20, !inline_history !112
  unreachable

_ZN8NArchive3N7z7CFolderD2Ev.exit:                ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(133) %i.m) #17, !inline_history !112
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 136) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8NArchive3N7z7CFolderD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.t, label %bb.a, label %._crit_edge, !llvm.loop !208
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI7CBufferIhEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI7CBufferIhEE, i64 16), ptr %0, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI7CBufferIhEED2Ev.exit unwind label %bb.b, !inline_history !189

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20, !inline_history !189
  unreachable

_ZN13CObjectVectorI7CBufferIhEED2Ev.exit:         ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17, !inline_history !189
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorI7CBufferIhEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8    ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.c, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.r, label %bb.a, label %._crit_edge, !llvm.loop !209
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 24}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!9, !10, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !5, i64 0}
!22 = !{!"_ZTSN8NArchive3N7z9CBindPairE", !5, i64 0, !5, i64 4}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!22, !5, i64 4}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !5, i64 32}
!30 = !{!"_ZTSN8NArchive3N7z10CCoderInfoE", !31, i64 0, !32, i64 8, !5, i64 32, !5, i64 36}
!31 = !{!"long long", !6, i64 0}
!32 = !{!"_ZTS7CBufferIhE", !11, i64 8, !33, i64 16}
!33 = !{!"p1 omnipotent char", !10, i64 0}
!34 = !{!30, !5, i64 36}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = !{!42, !17, i64 8}
!42 = !{!"_ZTSN8NArchive3N7z13CStreamSwitchE", !43, i64 0, !17, i64 8}
!43 = !{!"p1 _ZTSN8NArchive3N7z10CInArchiveE", !10, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!46, !51, i64 40}
!46 = !{!"_ZTSN8NArchive3N7z10CInArchiveE", !47, i64 0, !49, i64 8, !51, i64 40, !31, i64 48, !6, i64 56, !31, i64 88}
!47 = !{!"_ZTS9CMyComPtrI9IInStreamE", !48, i64 0}
!48 = !{!"p1 _ZTS9IInStream", !10, i64 0}
!49 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z8CInByte2EE", !50, i64 0}
!50 = !{!"_ZTS13CRecordVectorIPvE", !9, i64 0}
!51 = !{!"p1 _ZTSN8NArchive3N7z8CInByte2E", !10, i64 0}
!52 = !{!53, !33, i64 0}
!53 = !{!"_ZTSN8NArchive3N7z8CInByte2E", !33, i64 0, !11, i64 8, !11, i64 16}
!54 = !{!53, !11, i64 8}
!55 = !{!53, !11, i64 16}
!56 = !{!32, !33, i64 16}
!57 = !{!32, !11, i64 8}
!58 = !{!6, !6, i64 0}
!59 = distinct !{!59, !19}
!60 = !{!31, !31, i64 0}
!61 = distinct !{!61, !19}
!62 = !{!63, !5, i64 12}
!63 = !{!"_ZTS11CStringBaseIwE", !64, i64 0, !5, i64 8, !5, i64 12}
!64 = !{!"p1 wchar_t", !10, i64 0}
!65 = !{!63, !64, i64 0}
!66 = !{!63, !5, i64 8}
!67 = !{!68, !68, i64 0}
!68 = !{!"wchar_t", !6, i64 0}
!69 = distinct !{!69, !19, !70, !71}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !19, !70}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !6, i64 0}
!77 = distinct !{!77, !19, !70, !71}
!78 = distinct !{!78, !19, !71, !70}
!79 = !{!46, !31, i64 48}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = !{ptr @_ZN7CBufferIhED2Ev}
!85 = !{!46, !31, i64 88}
!86 = !{!47, !48, i64 0}
!87 = distinct !{ptr @_ZN8NArchive3N7z10CInArchive5CloseEv, null}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{!90, !19}
!91 = !{!30, !31, i64 0}
!92 = distinct !{!92, !73}
!93 = distinct !{!93, !73}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!107, !17, i64 132}
!107 = !{!"_ZTSN8NArchive3N7z7CFolderE", !108, i64 0, !109, i64 32, !110, i64 64, !111, i64 96, !5, i64 128, !17, i64 132}
!108 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE", !50, i64 0}
!109 = !{!"_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE", !9, i64 0}
!110 = !{!"_ZTS13CRecordVectorIjE", !9, i64 0}
!111 = !{!"_ZTS13CRecordVectorIyE", !9, i64 0}
!112 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !73}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = !{!107, !5, i64 128}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = !{!134, !5, i64 0}
!134 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!135 = distinct !{null}
!136 = !{!137, !33, i64 16}
!137 = !{!"_ZTS19CBufPtrSeqOutStream", !138, i64 0, !134, i64 8, !33, i64 16, !11, i64 24, !11, i64 32}
!138 = !{!"_ZTS20ISequentialOutStream", !139, i64 0}
!139 = !{!"_ZTS8IUnknown"}
!140 = !{!137, !11, i64 32}
!141 = !{!137, !11, i64 24}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !19, !70, !71}
!146 = !{!147}
!147 = distinct !{!147, !144}
!148 = distinct !{!148, !73}
!149 = distinct !{!149, !19, !70}
!150 = distinct !{!150, !19}
!151 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev}
!152 = !{ptr @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !155, i64 0}
!155 = !{!"p1 _ZTS15ICompressCoder2", !10, i64 0}
!156 = !{!157, !31, i64 496}
!157 = !{!"_ZTSN8NArchive3N7z18CArchiveDatabaseExE", !158, i64 0, !163, i64 480, !111, i64 552, !110, i64 584, !110, i64 616, !110, i64 648, !31, i64 680, !31, i64 688}
!158 = !{!"_ZTSN8NArchive3N7z16CArchiveDatabaseE", !111, i64 0, !159, i64 32, !110, i64 64, !160, i64 96, !110, i64 128, !161, i64 160, !162, i64 192, !162, i64 256, !162, i64 320, !162, i64 384, !159, i64 448}
!159 = !{!"_ZTS13CRecordVectorIbE", !9, i64 0}
!160 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE", !50, i64 0}
!161 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z9CFileItemEE", !50, i64 0}
!162 = !{!"_ZTSN8NArchive3N7z16CUInt64DefVectorE", !111, i64 0, !159, i64 32}
!163 = !{!"_ZTSN8NArchive3N7z14CInArchiveInfoE", !164, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !111, i64 40}
!164 = !{!"_ZTSN8NArchive3N7z15CArchiveVersionE", !6, i64 0, !6, i64 1}
!165 = !{!157, !31, i64 512}
!166 = !{!157, !31, i64 504}
!167 = distinct !{!167, !19}
!168 = distinct !{!168, !19}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = !{!172, !17, i64 35}
!172 = !{!"_ZTSN8NArchive3N7z9CFileItemE", !31, i64 0, !5, i64 8, !5, i64 12, !63, i64 16, !17, i64 32, !17, i64 33, !17, i64 34, !17, i64 35}
!173 = !{!172, !5, i64 8}
!174 = distinct !{!174, !19}
!175 = distinct !{!175, !19, !70, !71}
!176 = distinct !{!176, !73}
!177 = distinct !{!177, !19, !70}
!178 = distinct !{!178, !19}
!179 = !{!157, !6, i64 480}
!180 = distinct !{!180, !19, !70, !71}
!181 = distinct !{!181, !73}
!182 = distinct !{!182, !19, !70}
!183 = !{!172, !17, i64 32}
!184 = !{!172, !17, i64 33}
!185 = !{!172, !5, i64 12}
!186 = !{!172, !31, i64 0}
!187 = !{!172, !17, i64 34}
!188 = distinct !{!188, !19}
!189 = !{ptr @_ZN13CObjectVectorI7CBufferIhEED2Ev}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19}
!194 = !{!157, !31, i64 488}
!195 = !{!157, !6, i64 481}
!196 = distinct !{!196, !19}
!197 = !{!157, !31, i64 688}
!198 = !{!157, !31, i64 680}
!199 = distinct !{!199, !19}
!200 = !{!201, !202, i64 0}
!201 = !{!"_ZTS9CMyComPtrI8IUnknownE", !202, i64 0}
!202 = !{!"p1 _ZTS8IUnknown", !10, i64 0}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !19}
!208 = distinct !{!208, !19}
!209 = distinct !{!209, !19}
end_hunk_2
