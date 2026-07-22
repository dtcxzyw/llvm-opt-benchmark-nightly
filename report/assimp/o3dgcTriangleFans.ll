inline.NumInlined: 124
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5o3dgc11LoadIntDataERNS_6VectorIlEERKNS_12BinaryStreamERm:bb.a
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %i.au = shl i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.at, i64 %i.au, i1 false)
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store ptr %i.aq, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %bb.a, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.aw, align 8
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  ret i32 0

.lr.ph:                                           ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit
  %.013 = phi i64 [ %i.ck, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit ], [ 0, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ]
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.ay, ptr %2, align 8
  %i.az = load ptr, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = icmp eq i8 %i.bb, 127
  br i1 %i.bd, label %.preheader.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit

.preheader.i.i:                                   ; preds = %.lr.ph, %.preheader.i.i
  %i.be = phi i64 [ %i.bf, %.preheader.i.i ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.09.i.i = phi i64 [ %i.bm, %.preheader.i.i ], [ 127, %.lr.ph ]
  %.0.i.i = phi i64 [ %i.bn, %.preheader.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %2, align 8
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i64                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 1
  %i.bl = shl i64 %i.bk, %.0.i.i
  %i.bm = add i64 %i.bl, %.09.i.i                 ; 2 uses
  %i.bn = add i64 %.0.i.i, 6
  %i.bo = and i64 %i.bj, 1
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit, label %.preheader.i.i, !llvm.loop !22

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit:   ; preds = %.preheader.i.i, %.lr.ph
  %.1.i.i = phi i64 [ %i.bc, %.lr.ph ], [ %i.bm, %.preheader.i.i ] ; 3 uses
  %i.bp = and i64 %.1.i.i, 1
  %.not.i2.i = icmp eq i64 %i.bp, 0
  %i.bq = add i64 %.1.i.i, 1
  %i.br = lshr exact i64 %i.bq, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = lshr exact i64 %.1.i.i, 1
  %i.bu = select i1 %.not.i2.i, i64 %i.bt, i64 %i.bs
  %i.bv = load i64, ptr %i.aw, align 8            ; 6 uses
  %i.bw = load i64, ptr %i.ak, align 8
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

bb.f:                                             ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit
  %i.by = shl i64 %i.bv, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.ak, align 8
  %i.bz = icmp ugt i64 %i.by, 2305843009213693951
  %i.ca = shl i64 %spec.select.i, 3
  %i.cb = select i1 %i.bz, i64 -1, i64 %i.ca
  %i.cc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cb) #7 ; 3 uses
  %.not.i12 = icmp eq i64 %i.bv, 0
  br i1 %.not.i12, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr %0, align 8               ; 3 uses
  %i.ce = shl i64 %i.bv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr align 8 %i.cd, i64 %i.ce, i1 false)
  %i.cf = icmp eq ptr %i.cd, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.cd) #8
  %.pre6.pre.i = load i64, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pre6.i = phi i64 [ %i.bv, %bb.g ], [ %.pre6.pre.i, %bb.h ], [ 0, %bb.f ]
  store ptr %i.cc, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

_ZN5o3dgc6VectorIlE8PushBackERKl.exit:            ; preds = %._crit_edge.i, %bb.i
  %i.cg = phi i64 [ %i.bv, %._crit_edge.i ], [ %.pre6.i, %bb.i ] ; 2 uses
  %i.ch = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cc, %bb.i ]
  %i.ci = add i64 %i.cg, 1
  store i64 %i.ci, ptr %i.aw, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store i64 %i.bu, ptr %i.cj, align 8
  %i.ck = add nuw i64 %.013, 1                    ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.aj
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !24
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc11LoadBinDataERNS_6VectorIlEERKNS_12BinaryStreamERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 6 uses
  %i.b = add i64 %i.a, 6                          ; 2 uses
  store i64 %i.b, ptr %2, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 %i.a
  %i.e = getelementptr i8, ptr %i.d, i64 5
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = add i64 %i.a, 7                          ; 2 uses
  store i64 %i.h, ptr %2, align 8
  %i.i = load ptr, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 7
  %i.n = add nuw nsw i64 %i.m, %i.g
  %i.o = add i64 %i.a, 8                          ; 2 uses
  store i64 %i.o, ptr %2, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 14
  %i.u = add nuw nsw i64 %i.n, %i.t
  %i.v = add i64 %i.a, 9                          ; 2 uses
  store i64 %i.v, ptr %2, align 8
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 21
  %i.ab = add nuw nsw i64 %i.u, %i.aa
  %i.ac = add i64 %i.a, 10
  store i64 %i.ac, ptr %2, align 8
  %i.ad = load ptr, ptr %1, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl i32 %i.ag, 28
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 4 uses
  %i.ak = mul nsw i64 %i.aj, 7                    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.b, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.ak, ptr %i.al, align 8
  %i.ao = icmp ugt i64 %i.ak, 2305843009213693951
  %i.ap = mul nsw i64 %i.aj, 56
  %i.aq = select i1 %i.ao, i64 -1, i64 %i.ap
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #7 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %0, align 8               ; 3 uses
  %i.av = shl i64 %i.at, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.au, i64 %i.av, i1 false)
  %i.aw = icmp eq ptr %i.au, null
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.au) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store ptr %i.ar, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

_ZN5o3dgc6VectorIlE8AllocateEm.exit:              ; preds = %bb.a, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  store i64 0, ptr %i.ax, align 8
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6, %_ZN5o3dgc6VectorIlE8AllocateEm.exit
  ret i32 0

.lr.ph:                                           ; preds = %_ZN5o3dgc6VectorIlE8AllocateEm.exit, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6
  %.01622 = phi i64 [ %indvars.iv.next, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6 ], [ 7, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ] ; 2 uses
  %i.ay = load i64, ptr %2, align 8               ; 2 uses
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %2, align 8
  %i.ba = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i64                    ; 7 uses
  %i.be = and i64 %i.bd, 1
  %i.bf = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.bg = load i64, ptr %i.al, align 8
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

bb.f:                                             ; preds = %.lr.ph
  %i.bi = shl i64 %i.bf, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.al, align 8
  %i.bj = icmp ugt i64 %i.bi, 2305843009213693951
  %i.bk = shl i64 %spec.select.i, 3
  %i.bl = select i1 %i.bj, i64 -1, i64 %i.bk
  %i.bm = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #7 ; 3 uses
  %.not.i18 = icmp eq i64 %i.bf, 0
  br i1 %.not.i18, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = load ptr, ptr %0, align 8               ; 3 uses
  %i.bo = shl i64 %i.bf, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bn, i64 %i.bo, i1 false)
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.bn) #8
  %.pre6.pre.i = load i64, ptr %i.ax, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pre6.i = phi i64 [ %i.bf, %bb.g ], [ %.pre6.pre.i, %bb.h ], [ 0, %bb.f ]
  store ptr %i.bm, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

_ZN5o3dgc6VectorIlE8PushBackERKl.exit:            ; preds = %._crit_edge.i, %bb.i
  %i.bq = phi i64 [ %i.bf, %._crit_edge.i ], [ %.pre6.i, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bm, %bb.i ]
  %i.bs = add i64 %i.bq, 1
  store i64 %i.bs, ptr %i.ax, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store i64 %i.be, ptr %i.bt, align 8
  %i.bu = lshr i64 %i.bd, 1
  %i.bv = and i64 %i.bu, 1
  %i.bw = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.bx = load i64, ptr %i.al, align 8
  %i.by = icmp eq i64 %i.bw, %i.bx
  br i1 %i.by, label %bb.j, label %._crit_edge.i.1

._crit_edge.i.1:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit
  %.pre.i.1 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.1

bb.j:                                             ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit
  %i.bz = shl i64 %i.bw, 1                        ; 2 uses
  %spec.select.i.1 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 32) ; 2 uses
  store i64 %spec.select.i.1, ptr %i.al, align 8
  %i.ca = icmp ugt i64 %i.bz, 2305843009213693951
  %i.cb = shl i64 %spec.select.i.1, 3
  %i.cc = select i1 %i.ca, i64 -1, i64 %i.cb
  %i.cd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cc) #7 ; 3 uses
  %.not.i18.1 = icmp eq i64 %i.bw, 0
  br i1 %.not.i18.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %0, align 8               ; 3 uses
  %i.cf = shl i64 %i.bw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.ce, i64 %i.cf, i1 false)
  %i.cg = icmp eq ptr %i.ce, null
  br i1 %i.cg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.ce) #8
  %.pre6.pre.i.1 = load i64, ptr %i.ax, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pre6.i.1 = phi i64 [ %i.bw, %bb.k ], [ %.pre6.pre.i.1, %bb.l ], [ 0, %bb.j ]
  store ptr %i.cd, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.1

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.1:          ; preds = %bb.m, %._crit_edge.i.1
  %i.ch = phi i64 [ %i.bw, %._crit_edge.i.1 ], [ %.pre6.i.1, %bb.m ] ; 2 uses
  %i.ci = phi ptr [ %.pre.i.1, %._crit_edge.i.1 ], [ %i.cd, %bb.m ]
  %i.cj = add i64 %i.ch, 1
  store i64 %i.cj, ptr %i.ax, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  store i64 %i.bv, ptr %i.ck, align 8
  %i.cl = lshr i64 %i.bd, 2
  %i.cm = and i64 %i.cl, 1
  %i.cn = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.co = load i64, ptr %i.al, align 8
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.n, label %._crit_edge.i.2

._crit_edge.i.2:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.1
  %.pre.i.2 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.2

bb.n:                                             ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.1
  %i.cq = shl i64 %i.cn, 1                        ; 2 uses
  %spec.select.i.2 = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 32) ; 2 uses
  store i64 %spec.select.i.2, ptr %i.al, align 8
  %i.cr = icmp ugt i64 %i.cq, 2305843009213693951
  %i.cs = shl i64 %spec.select.i.2, 3
  %i.ct = select i1 %i.cr, i64 -1, i64 %i.cs
  %i.cu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ct) #7 ; 3 uses
  %.not.i18.2 = icmp eq i64 %i.cn, 0
  br i1 %.not.i18.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %0, align 8               ; 3 uses
  %i.cw = shl i64 %i.cn, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr align 8 %i.cv, i64 %i.cw, i1 false)
  %i.cx = icmp eq ptr %i.cv, null
  br i1 %i.cx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.cv) #8
  %.pre6.pre.i.2 = load i64, ptr %i.ax, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.pre6.i.2 = phi i64 [ %i.cn, %bb.o ], [ %.pre6.pre.i.2, %bb.p ], [ 0, %bb.n ]
  store ptr %i.cu, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.2

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.2:          ; preds = %bb.q, %._crit_edge.i.2
  %i.cy = phi i64 [ %i.cn, %._crit_edge.i.2 ], [ %.pre6.i.2, %bb.q ] ; 2 uses
  %i.cz = phi ptr [ %.pre.i.2, %._crit_edge.i.2 ], [ %i.cu, %bb.q ]
  %i.da = add i64 %i.cy, 1
  store i64 %i.da, ptr %i.ax, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  store i64 %i.cm, ptr %i.db, align 8
  %i.dc = lshr i64 %i.bd, 3
  %i.dd = and i64 %i.dc, 1
  %i.de = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.df = load i64, ptr %i.al, align 8
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %bb.r, label %._crit_edge.i.3

._crit_edge.i.3:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.2
  %.pre.i.3 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.3

bb.r:                                             ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.2
  %i.dh = shl i64 %i.de, 1                        ; 2 uses
  %spec.select.i.3 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 32) ; 2 uses
  store i64 %spec.select.i.3, ptr %i.al, align 8
  %i.di = icmp ugt i64 %i.dh, 2305843009213693951
  %i.dj = shl i64 %spec.select.i.3, 3
  %i.dk = select i1 %i.di, i64 -1, i64 %i.dj
  %i.dl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #7 ; 3 uses
  %.not.i18.3 = icmp eq i64 %i.de, 0
  br i1 %.not.i18.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %0, align 8               ; 3 uses
  %i.dn = shl i64 %i.de, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr align 8 %i.dm, i64 %i.dn, i1 false)
  %i.do = icmp eq ptr %i.dm, null
  br i1 %i.do, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZdaPv(ptr noundef nonnull %i.dm) #8
  %.pre6.pre.i.3 = load i64, ptr %i.ax, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pre6.i.3 = phi i64 [ %i.de, %bb.s ], [ %.pre6.pre.i.3, %bb.t ], [ 0, %bb.r ]
  store ptr %i.dl, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.3

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.3:          ; preds = %bb.u, %._crit_edge.i.3
  %i.dp = phi i64 [ %i.de, %._crit_edge.i.3 ], [ %.pre6.i.3, %bb.u ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i.3, %._crit_edge.i.3 ], [ %i.dl, %bb.u ]
  %i.dr = add i64 %i.dp, 1
  store i64 %i.dr, ptr %i.ax, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dp
  store i64 %i.dd, ptr %i.ds, align 8
  %i.dt = lshr i64 %i.bd, 4
  %i.du = and i64 %i.dt, 1
  %i.dv = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.dw = load i64, ptr %i.al, align 8
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.v, label %._crit_edge.i.4

._crit_edge.i.4:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.3
  %.pre.i.4 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.4

bb.v:                                             ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.3
  %i.dy = shl i64 %i.dv, 1                        ; 2 uses
  %spec.select.i.4 = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 32) ; 2 uses
  store i64 %spec.select.i.4, ptr %i.al, align 8
  %i.dz = icmp ugt i64 %i.dy, 2305843009213693951
  %i.ea = shl i64 %spec.select.i.4, 3
  %i.eb = select i1 %i.dz, i64 -1, i64 %i.ea
  %i.ec = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eb) #7 ; 3 uses
  %.not.i18.4 = icmp eq i64 %i.dv, 0
  br i1 %.not.i18.4, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %0, align 8               ; 3 uses
  %i.ee = shl i64 %i.dv, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.ed, i64 %i.ee, i1 false)
  %i.ef = icmp eq ptr %i.ed, null
  br i1 %i.ef, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZdaPv(ptr noundef nonnull %i.ed) #8
  %.pre6.pre.i.4 = load i64, ptr %i.ax, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.pre6.i.4 = phi i64 [ %i.dv, %bb.w ], [ %.pre6.pre.i.4, %bb.x ], [ 0, %bb.v ]
  store ptr %i.ec, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.4

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.4:          ; preds = %bb.y, %._crit_edge.i.4
  %i.eg = phi i64 [ %i.dv, %._crit_edge.i.4 ], [ %.pre6.i.4, %bb.y ] ; 2 uses
  %i.eh = phi ptr [ %.pre.i.4, %._crit_edge.i.4 ], [ %i.ec, %bb.y ]
  %i.ei = add i64 %i.eg, 1
  store i64 %i.ei, ptr %i.ax, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store i64 %i.du, ptr %i.ej, align 8
  %i.ek = lshr i64 %i.bd, 5
  %i.el = and i64 %i.ek, 1
  %i.em = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.en = load i64, ptr %i.al, align 8
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.z, label %._crit_edge.i.5

._crit_edge.i.5:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.4
  %.pre.i.5 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.5

bb.z:                                             ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.4
  %i.ep = shl i64 %i.em, 1                        ; 2 uses
  %spec.select.i.5 = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 32) ; 2 uses
  store i64 %spec.select.i.5, ptr %i.al, align 8
  %i.eq = icmp ugt i64 %i.ep, 2305843009213693951
  %i.er = shl i64 %spec.select.i.5, 3
  %i.es = select i1 %i.eq, i64 -1, i64 %i.er
  %i.et = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #7 ; 3 uses
  %.not.i18.5 = icmp eq i64 %i.em, 0
  br i1 %.not.i18.5, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eu = load ptr, ptr %0, align 8               ; 3 uses
  %i.ev = shl i64 %i.em, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.et, ptr align 8 %i.eu, i64 %i.ev, i1 false)
  %i.ew = icmp eq ptr %i.eu, null
  br i1 %i.ew, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdaPv(ptr noundef nonnull %i.eu) #8
  %.pre6.pre.i.5 = load i64, ptr %i.ax, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre6.i.5 = phi i64 [ %i.em, %bb.aa ], [ %.pre6.pre.i.5, %bb.ab ], [ 0, %bb.z ]
  store ptr %i.et, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.5

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.5:          ; preds = %bb.ac, %._crit_edge.i.5
  %i.ex = phi i64 [ %i.em, %._crit_edge.i.5 ], [ %.pre6.i.5, %bb.ac ] ; 2 uses
  %i.ey = phi ptr [ %.pre.i.5, %._crit_edge.i.5 ], [ %i.et, %bb.ac ]
  %i.ez = add i64 %i.ex, 1
  store i64 %i.ez, ptr %i.ax, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex
  store i64 %i.el, ptr %i.fa, align 8
  %i.fb = lshr i64 %i.bd, 6
  %i.fc = and i64 %i.fb, 1
  %i.fd = load i64, ptr %i.ax, align 8            ; 6 uses
  %i.fe = load i64, ptr %i.al, align 8
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ad, label %._crit_edge.i.6

._crit_edge.i.6:                                  ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.5
  %.pre.i.6 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6

bb.ad:                                            ; preds = %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.5
  %i.fg = shl i64 %i.fd, 1                        ; 2 uses
  %spec.select.i.6 = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 32) ; 2 uses
  store i64 %spec.select.i.6, ptr %i.al, align 8
  %i.fh = icmp ugt i64 %i.fg, 2305843009213693951
  %i.fi = shl i64 %spec.select.i.6, 3
  %i.fj = select i1 %i.fh, i64 -1, i64 %i.fi
  %i.fk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fj) #7 ; 3 uses
  %.not.i18.6 = icmp eq i64 %i.fd, 0
  br i1 %.not.i18.6, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = load ptr, ptr %0, align 8               ; 3 uses
  %i.fm = shl i64 %i.fd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr align 8 %i.fl, i64 %i.fm, i1 false)
  %i.fn = icmp eq ptr %i.fl, null
  br i1 %i.fn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZdaPv(ptr noundef nonnull %i.fl) #8
  %.pre6.pre.i.6 = load i64, ptr %i.ax, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.pre6.i.6 = phi i64 [ %i.fd, %bb.ae ], [ %.pre6.pre.i.6, %bb.af ], [ 0, %bb.ad ]
  store ptr %i.fk, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6

_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6:          ; preds = %bb.ag, %._crit_edge.i.6
  %i.fo = phi i64 [ %i.fd, %._crit_edge.i.6 ], [ %.pre6.i.6, %bb.ag ] ; 2 uses
  %i.fp = phi ptr [ %.pre.i.6, %._crit_edge.i.6 ], [ %i.fk, %bb.ag ]
  %i.fq = add i64 %i.fo, 1
  store i64 %i.fq, ptr %i.ax, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  store i64 %i.fc, ptr %i.fr, align 8
  %3 = icmp ult i64 %.01622, %i.aj
  %indvars.iv.next = add i64 %.01622, 7
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !25
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc10LoadUIntACERNS_6VectorIlEEmRKNS_12BinaryStreamERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 9 uses
  %5 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %3, align 8                ; 8 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  store i64 %i.e, ptr %3, align 8
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw i32 %i.i, 24
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %i.d, 2                          ; 2 uses
  store i64 %i.l, ptr %3, align 8
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = or disjoint i64 %i.q, %i.k
  %i.s = add i64 %i.d, 3                          ; 2 uses
  store i64 %i.s, ptr %3, align 8
  %i.t = load ptr, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = or disjoint i64 %i.x, %i.r
  %i.z = add i64 %i.d, 4                          ; 2 uses
  store i64 %i.z, ptr %3, align 8
  %i.aa = load ptr, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.y, %i.ad
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit

bb.c:                                             ; preds = %bb.a
  %i.af = zext i8 %i.h to i64
  %i.ag = add i64 %i.d, 2                         ; 2 uses
  store i64 %i.ag, ptr %3, align 8
  %i.ah = load ptr, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.e
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 8
  %i.am = or disjoint i64 %i.al, %i.af
  %i.an = add i64 %i.d, 3                         ; 2 uses
  store i64 %i.an, ptr %3, align 8
  %i.ao = load ptr, ptr %2, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 16
  %i.at = or disjoint i64 %i.am, %i.as
  %i.au = add i64 %i.d, 4                         ; 2 uses
  store i64 %i.au, ptr %3, align 8
  %i.av = load ptr, ptr %2, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw i32 %i.ay, 24
  %i.ba = sext i32 %i.az to i64
  %i.bb = or disjoint i64 %i.at, %i.ba
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit

_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit:  ; preds = %bb.b, %bb.c
  %i.bc = phi i64 [ %i.z, %bb.b ], [ %i.au, %bb.c ] ; 8 uses
  %.0.i = phi i64 [ %i.ae, %bb.b ], [ %i.bb, %bb.c ]
  %i.bd = load i32, ptr %i.a, align 8
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = add i64 %i.bc, 1                        ; 3 uses
  store i64 %i.bf, ptr %3, align 8
  %i.bg = load ptr, ptr %2, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bc
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw i32 %i.bj, 24
  %i.bl = sext i32 %i.bk to i64
  %i.bm = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.bm, ptr %3, align 8
  %i.bn = load ptr, ptr %2, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 16
  %i.bs = or disjoint i64 %i.br, %i.bl
  %i.bt = add i64 %i.bc, 3                        ; 2 uses
  store i64 %i.bt, ptr %3, align 8
  %i.bu = load ptr, ptr %2, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 8
  %i.bz = or disjoint i64 %i.by, %i.bs
  %i.ca = add i64 %i.bc, 4                        ; 2 uses
  store i64 %i.ca, ptr %3, align 8
  %i.cb = load ptr, ptr %2, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.bz, %i.ce
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit30

bb.e:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit
  %i.cg = zext i8 %i.bi to i64
  %i.ch = add i64 %i.bc, 2                        ; 2 uses
  store i64 %i.ch, ptr %3, align 8
  %i.ci = load ptr, ptr %2, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bf
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = or disjoint i64 %i.cm, %i.cg
  %i.co = add i64 %i.bc, 3                        ; 2 uses
  store i64 %i.co, ptr %3, align 8
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = shl nuw nsw i64 %i.cs, 16
  %i.cu = or disjoint i64 %i.cn, %i.ct
  %i.cv = add i64 %i.bc, 4                        ; 2 uses
  store i64 %i.cv, ptr %3, align 8
  %i.cw = load ptr, ptr %2, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw i32 %i.cz, 24
  %i.db = sext i32 %i.da to i64
  %i.dc = or disjoint i64 %i.cu, %i.db
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit30

_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit30: ; preds = %bb.d, %bb.e
  %i.dd = phi i64 [ %i.ca, %bb.d ], [ %i.cv, %bb.e ] ; 8 uses
  %.0.i29 = phi i64 [ %i.cf, %bb.d ], [ %i.dc, %bb.e ] ; 6 uses
  %i.de = icmp eq i64 %.0.i29, 0
  br i1 %i.de, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit30
  %i.df = add nsw i64 %.0.i, -12                  ; 2 uses
  %i.dg = load i32, ptr %i.a, align 8
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = add i64 %i.dd, 1                        ; 3 uses
  store i64 %i.di, ptr %3, align 8
  %i.dj = load ptr, ptr %2, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dd
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw i32 %i.dm, 24
  %i.do = sext i32 %i.dn to i64
  %i.dp = add i64 %i.dd, 2                        ; 2 uses
  store i64 %i.dp, ptr %3, align 8
  %i.dq = load ptr, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 16
  %i.dv = or disjoint i64 %i.du, %i.do
  %i.dw = add i64 %i.dd, 3                        ; 2 uses
  store i64 %i.dw, ptr %3, align 8
  %i.dx = load ptr, ptr %2, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dp
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 8
  %i.ec = or disjoint i64 %i.eb, %i.dv
  %i.ed = add i64 %i.dd, 4                        ; 2 uses
  store i64 %i.ed, ptr %3, align 8
  %i.ee = load ptr, ptr %2, align 8               ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i64
  %i.ei = or disjoint i64 %i.ec, %i.eh
  br label %_ZNK5o3dgc12BinaryStream13ReadUInt32BinERm.exit32

bb.h:                                             ; preds = %bb.f
  %i.ej = zext i8 %i.dl to i64
  %i.ek = add i64 %i.dd, 2                        ; 2 uses
  store i64 %i.ek, ptr %3, align 8
  %i.el = load ptr, ptr %2, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.di
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i64
end_hunk_0
