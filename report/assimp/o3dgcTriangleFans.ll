inline.NumInlined: 124
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5o3dgc22CompressedTriangleFans4SaveERNS_12BinaryStreamEbNS_15O3DGCStreamTypeE:bb.a
  store i8 %i.el, ptr %i.eo, align 1
  %i.ep = lshr i64 %i.dy, 21
  %i.eq = trunc i64 %i.ep to i8
  %i.er = and i8 %i.eq, 127
  %i.es = load ptr, ptr %1, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 %i.do
  %i.eu = getelementptr i8, ptr %i.et, i64 3
  store i8 %i.er, ptr %i.eu, align 1
  %i.ev = lshr i64 %i.dy, 28
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = and i8 %i.ew, 127
  %i.ey = load ptr, ptr %1, align 8
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.do
  %i.fa = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.ex, ptr %i.fa, align 1
  br i1 %2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN5o3dgc11SaveIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fc = load i64, ptr %i.b, align 8             ; 6 uses
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %1, i64 noundef 0)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fe = load i64, ptr %i.fd, align 8            ; 3 uses
  tail call void @_ZN5o3dgc12BinaryStream16WriteUInt32ASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %1, i64 noundef %i.fe)
  %.not.i29 = icmp eq i64 %i.fe, 0
  br i1 %.not.i29, label %_ZN5o3dgc12SaveUIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit33, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.c, %.lr.ph.i30
  %.014.i31 = phi i64 [ %i.fi, %.lr.ph.i30 ], [ 0, %bb.c ] ; 2 uses
  %i.ff = load ptr, ptr %i.fb, align 8
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.014.i31
  %i.fh = load i64, ptr %i.fg, align 8
  tail call void @_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm(ptr noundef nonnull align 8 dereferenceable(28) %1, i64 noundef %i.fh)
  %i.fi = add nuw i64 %.014.i31, 1                ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %i.fi, %i.fe
  br i1 %exitcond.not.i32, label %_ZN5o3dgc12SaveUIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit33, label %.lr.ph.i30, !llvm.loop !3

_ZN5o3dgc12SaveUIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit33: ; preds = %.lr.ph.i30, %bb.c
  %i.fj = load i64, ptr %i.b, align 8
  %i.fk = sub i64 %i.fj, %i.fc                    ; 5 uses
  %i.fl = trunc i64 %i.fk to i8
  %i.fm = and i8 %i.fl, 127
  %i.fn = load ptr, ptr %1, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fc
  store i8 %i.fm, ptr %i.fo, align 1
  %i.fp = lshr i64 %i.fk, 7
  %i.fq = trunc i64 %i.fp to i8
  %i.fr = and i8 %i.fq, 127
  %i.fs = load ptr, ptr %1, align 8
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.fc
  %i.fu = getelementptr i8, ptr %i.ft, i64 1
  store i8 %i.fr, ptr %i.fu, align 1
  %i.fv = lshr i64 %i.fk, 14
  %i.fw = trunc i64 %i.fv to i8
  %i.fx = and i8 %i.fw, 127
  %i.fy = load ptr, ptr %1, align 8
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.fc
  %i.ga = getelementptr i8, ptr %i.fz, i64 2
  store i8 %i.fx, ptr %i.ga, align 1
  %i.gb = lshr i64 %i.fk, 21
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = and i8 %i.gc, 127
  %i.ge = load ptr, ptr %1, align 8
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.fc
  %i.gg = getelementptr i8, ptr %i.gf, i64 3
  store i8 %i.gd, ptr %i.gg, align 1
  %i.gh = lshr i64 %i.fk, 28
  %i.gi = trunc i64 %i.gh to i8
  %i.gj = and i8 %i.gi, 127
  %i.gk = load ptr, ptr %1, align 8
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.fc
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  store i8 %i.gj, ptr %i.gm, align 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.gn = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans12SaveIntACEGCERKNS_6VectorIlEEmRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gp = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans12SaveIntACEGCERKNS_6VectorIlEEmRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.go, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gr = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans10SaveUIntACERKNS_6VectorIlEEmRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gt = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans9SaveBinACERKNS_6VectorIlEERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gv = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans12SaveIntACEGCERKNS_6VectorIlEEmRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  br i1 %2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gx = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans12SaveIntACEGCERKNS_6VectorIlEEmRNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(164) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 noundef 16, ptr noundef nonnull align 8 dereferenceable(28) %1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZN5o3dgc11SaveIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit, %_ZN5o3dgc12SaveUIntDataERKNS_6VectorIlEERNS_12BinaryStreamE.exit33
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc12LoadUIntDataERNS_6VectorIlEERKNS_12BinaryStreamERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 {
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
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.b, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.aj, ptr %i.ak, align 8
  %i.an = icmp ugt i64 %i.aj, 2305843009213693951
  %i.ao = shl nuw nsw i64 %i.aj, 3
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
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
  %.014 = phi i64 [ %i.cb, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit ], [ 0, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ]
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = add i64 %i.ax, 1                        ; 2 uses
  store i64 %i.ay, ptr %2, align 8
  %i.az = load ptr, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = icmp eq i8 %i.bb, 127
  br i1 %i.bd, label %.preheader.i, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %i.be = phi i64 [ %i.bf, %.preheader.i ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.09.i = phi i64 [ %i.bk, %.preheader.i ], [ 127, %.lr.ph ]
  %.0.i = phi i64 [ %i.bl, %.preheader.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %2, align 8
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 1
  %3 = zext i8 %i.bi to i64                       ; 2 uses
  %4 = lshr i64 %3, 1
  %i.bj = shl i64 %4, %.0.i
  %i.bk = add i64 %i.bj, %.09.i                   ; 2 uses
  %i.bl = add i64 %.0.i, 6
  %5 = and i64 %3, 1
  %.not.i12 = icmp eq i64 %5, 0
  br i1 %.not.i12, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, label %.preheader.i, !llvm.loop !22

_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit:  ; preds = %.preheader.i, %.lr.ph
  %.1.i = phi i64 [ %i.bc, %.lr.ph ], [ %i.bk, %.preheader.i ]
  %i.bm = load i64, ptr %i.aw, align 8            ; 6 uses
  %i.bn = load i64, ptr %i.ak, align 8
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

bb.f:                                             ; preds = %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %i.bp = shl i64 %i.bm, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.ak, align 8
  %i.bq = icmp ugt i64 %i.bp, 2305843009213693951
  %i.br = shl i64 %spec.select.i, 3
  %i.bs = select i1 %i.bq, i64 -1, i64 %i.br
  %i.bt = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bs) #7 ; 3 uses
  %.not.i13 = icmp eq i64 %i.bm, 0
  br i1 %.not.i13, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %0, align 8               ; 3 uses
  %i.bv = shl i64 %i.bm, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bu, i64 %i.bv, i1 false)
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.bu) #8
  %.pre6.pre.i = load i64, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pre6.i = phi i64 [ %i.bm, %bb.g ], [ %.pre6.pre.i, %bb.h ], [ 0, %bb.f ]
  store ptr %i.bt, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

_ZN5o3dgc6VectorIlE8PushBackERKl.exit:            ; preds = %._crit_edge.i, %bb.i
  %i.bx = phi i64 [ %i.bm, %._crit_edge.i ], [ %.pre6.i, %bb.i ] ; 2 uses
  %i.by = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bt, %bb.i ]
  %i.bz = add i64 %i.bx, 1
  store i64 %i.bz, ptr %i.aw, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  store i64 %.1.i, ptr %i.ca, align 8
  %i.cb = add nuw i64 %.014, 1                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.aj
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !23
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN5o3dgc11LoadIntDataERNS_6VectorIlEERKNS_12BinaryStreamERm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 {
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
  %i.aj = add nsw i64 %i.ab, %i.ai                ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %bb.b, label %_ZN5o3dgc6VectorIlE8AllocateEm.exit

bb.b:                                             ; preds = %bb.a
  store i64 %i.aj, ptr %i.ak, align 8
  %i.an = icmp ugt i64 %i.aj, 2305843009213693951
  %i.ao = shl nuw nsw i64 %i.aj, 3
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #7 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
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
  %.013 = phi i64 [ %i.cd, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit ], [ 0, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ]
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
  %.09.i.i = phi i64 [ %i.bk, %.preheader.i.i ], [ 127, %.lr.ph ]
  %.0.i.i = phi i64 [ %i.bl, %.preheader.i.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %2, align 8
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 1
  %3 = zext i8 %i.bi to i64                       ; 2 uses
  %4 = lshr i64 %3, 1
  %i.bj = shl i64 %4, %.0.i.i
  %i.bk = add i64 %i.bj, %.09.i.i                 ; 2 uses
  %i.bl = add i64 %.0.i.i, 6
  %5 = and i64 %3, 1
  %.not.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit, label %.preheader.i.i, !llvm.loop !22

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit:   ; preds = %.preheader.i.i, %.lr.ph
  %.1.i.i = phi i64 [ %i.bc, %.lr.ph ], [ %i.bk, %.preheader.i.i ] ; 3 uses
  %i.bm = and i64 %.1.i.i, 1
  %.not.i2.i = icmp eq i64 %i.bm, 0
  %6 = add i64 %.1.i.i, 1
  %7 = lshr exact i64 %6, 1
  %i.bn = sub nsw i64 0, %7
  %8 = lshr exact i64 %.1.i.i, 1
  %9 = select i1 %.not.i2.i, i64 %8, i64 %i.bn
  %i.bo = load i64, ptr %i.aw, align 8            ; 6 uses
  %i.bp = load i64, ptr %i.ak, align 8
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

bb.f:                                             ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit
  %i.br = shl i64 %i.bo, 1                        ; 2 uses
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.br, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.ak, align 8
  %i.bs = icmp ugt i64 %i.br, 2305843009213693951
  %i.bt = shl i64 %spec.select.i, 3
  %i.bu = select i1 %i.bs, i64 -1, i64 %i.bt
  %i.bv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bu) #7 ; 3 uses
  %.not.i12 = icmp eq i64 %i.bo, 0
  br i1 %.not.i12, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %0, align 8               ; 3 uses
  %i.bx = shl i64 %i.bo, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bw, i64 %i.bx, i1 false)
  %i.by = icmp eq ptr %i.bw, null
  br i1 %i.by, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.bw) #8
  %.pre6.pre.i = load i64, ptr %i.aw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.pre6.i = phi i64 [ %i.bo, %bb.g ], [ %.pre6.pre.i, %bb.h ], [ 0, %bb.f ]
  store ptr %i.bv, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIlE8PushBackERKl.exit

_ZN5o3dgc6VectorIlE8PushBackERKl.exit:            ; preds = %._crit_edge.i, %bb.i
  %i.bz = phi i64 [ %i.bo, %._crit_edge.i ], [ %.pre6.i, %bb.i ] ; 2 uses
  %i.ca = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bv, %bb.i ]
  %i.cb = add i64 %i.bz, 1
  store i64 %i.cb, ptr %i.aw, align 8
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store i64 %9, ptr %i.cc, align 8
  %i.cd = add nuw i64 %.013, 1                    ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.aj
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !24
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
  %.01622 = phi i64 [ %i.fs, %_ZN5o3dgc6VectorIlE8PushBackERKl.exit.6 ], [ 0, %_ZN5o3dgc6VectorIlE8AllocateEm.exit ]
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
end_hunk_0
