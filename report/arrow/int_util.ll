inline.NumInlined: 2184
inline.NumDeleted: 621
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 275
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_ZN5arrow8internal13TransposeIntsIllEEvPKT_PT0_lPKi:bb.a
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %.026, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !30
  %i.bw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %.02224, i64 48
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %.026, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !30
  %i.cc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.02224, i64 56
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !30
  %i.cg = add nsw i64 %.02025, -8                 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.026, i64 64 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02224, i64 64 ; 2 uses
  %i.cj = icmp sgt i64 %.02025, 11
  br i1 %i.cj, label %.lr.ph, label %.preheader, !llvm.loop !204

.lr.ph32:                                         ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32
  %.131 = phi ptr [ %i.dc, %.lr.ph32 ], [ %.131.unr, %.lr.ph32.prol.loopexit ] ; 5 uses
  %.12130 = phi i64 [ %i.di, %.lr.ph32 ], [ %.12130.unr, %.lr.ph32.prol.loopexit ] ; 2 uses
  %.12329 = phi ptr [ %i.dh, %.lr.ph32 ], [ %.12329.unr, %.lr.ph32.prol.loopexit ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.131, i64 8
  %i.cl = load i64, ptr %.131, align 8, !tbaa !30
  %i.cm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.12329, i64 8
  store i64 %i.co, ptr %.12329, align 8, !tbaa !30
  %i.cq = getelementptr inbounds nuw i8, ptr %.131, i64 16
  %i.cr = load i64, ptr %i.ck, align 8, !tbaa !30
  %i.cs = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.12329, i64 16
  store i64 %i.cu, ptr %i.cp, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %.131, i64 24
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !30
  %i.cy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.12329, i64 24
  store i64 %i.da, ptr %i.cv, align 8, !tbaa !30
  %i.dc = getelementptr inbounds nuw i8, ptr %.131, i64 32
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !30
  %i.de = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.12329, i64 32
  store i64 %i.dg, ptr %i.db, align 8, !tbaa !30
  %i.di = add nsw i64 %.12130, -4
  %i.dj = icmp sgt i64 %.12130, 4
  br i1 %i.dj, label %.lr.ph32, label %._crit_edge, !llvm.loop !205

._crit_edge:                                      ; preds = %.lr.ph32.prol.loopexit, %.lr.ph32, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i8 @_ZN5arrow8internal15DetectUIntWidthEPKmlh(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i8 %2, 8
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nsw i64 %1, 3
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128
  %.not88 = icmp slt i64 %1, 16
  br i1 %.not88, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %.090 = phi i8 [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %2, %bb.b ] ; 5 uses
  %.06789 = phi ptr [ %i.e, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %0, %bb.b ] ; 2 uses
  %i.d = load <16 x i64>, ptr %.06789, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.06789, i64 128 ; 4 uses
  %i.f = tail call i64 @llvm.vector.reduce.or.v16i64(<16 x i64> %i.d) ; 4 uses
  %i.g = zext nneg i8 %.090 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp ugt i64 %i.f, %i.i
  br i1 %.not.i, label %bb.c, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, !prof !206

bb.c:                                             ; preds = %.lr.ph
  %i.j = icmp eq i8 %.090, 1
  %i.k = icmp ult i64 %i.f, 256
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ult i8 %.090, 3
  %i.m = icmp ult i64 %i.f, 65536
  %or.cond3.i = and i1 %i.l, %i.m
  br i1 %or.cond3.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i8 %.090, 5
  %i.o = icmp ult i64 %i.f, 4294967296
  %or.cond5.i = and i1 %i.n, %i.o
  br i1 %or.cond5.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit:   ; preds = %bb.e, %.lr.ph, %bb.c, %bb.d
  %.0.i = phi i8 [ 2, %bb.d ], [ %.090, %.lr.ph ], [ 1, %bb.c ], [ 4, %bb.e ] ; 2 uses
  %.not = icmp ugt ptr %i.e, %i.c
  br i1 %.not, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, label %.lr.ph

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, %bb.e, %bb.b
  %.168 = phi ptr [ %0, %bb.b ], [ %i.e, %bb.e ], [ %i.e, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 4 uses
  %.1 = phi i8 [ %2, %bb.b ], [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ 8, %bb.e ] ; 6 uses
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -64
  %.not72 = icmp ugt ptr %.168, %i.p
  br i1 %.not72, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread
  %i.q = load <8 x i64>, ptr %.168, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %.168, i64 64 ; 4 uses
  %i.s = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.q) ; 4 uses
  %i.t = zext nneg i8 %.1 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !30
  %.not.i73 = icmp ugt i64 %i.s, %i.v
  br i1 %.not.i73, label %bb.g, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, !prof !206

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i8 %.1, 1
  %i.x = icmp ult i64 %i.s, 256
  %or.cond.i75 = and i1 %i.w, %i.x
  br i1 %or.cond.i75, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ult i8 %.1, 3
  %i.z = icmp ult i64 %i.s, 65536
  %or.cond3.i76 = and i1 %i.y, %i.z
  br i1 %or.cond3.i76, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp ult i8 %.1, 5
  %i.ab = icmp ult i64 %i.s, 4294967296
  %or.cond5.i77 = and i1 %i.aa, %i.ab
  %..i78 = select i1 %or.cond5.i77, i8 4, i8 8
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread
  %.269 = phi ptr [ %.168, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %.2 = phi i8 [ %.1, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread ], [ %.1, %bb.f ], [ 1, %bb.g ], [ 2, %bb.h ], [ %..i78, %bb.i ] ; 2 uses
  %i.ac = icmp ult ptr %.269, %i.b
  br i1 %i.ac, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86
  %.396 = phi i8 [ %.0.i81, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86 ], [ %.2, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79 ] ; 5 uses
  %.37095 = phi ptr [ %i.ad, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86 ], [ %.269, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.37095, i64 8 ; 2 uses
  %i.ae = load i64, ptr %.37095, align 8, !tbaa !30 ; 4 uses
  %i.af = zext nneg i8 %.396 to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30
  %.not.i80 = icmp ugt i64 %i.ae, %i.ah
  br i1 %.not.i80, label %bb.j, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86, !prof !206

bb.j:                                             ; preds = %.lr.ph97
  %i.ai = icmp eq i8 %.396, 1
  %i.aj = icmp ult i64 %i.ae, 256
  %or.cond.i82 = and i1 %i.ai, %i.aj
  br i1 %or.cond.i82, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = icmp ult i8 %.396, 3
  %i.al = icmp ult i64 %i.ae, 65536
  %or.cond3.i83 = and i1 %i.ak, %i.al
  br i1 %or.cond3.i83, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ult i8 %.396, 5
  %i.an = icmp ult i64 %i.ae, 4294967296
  %or.cond5.i84 = and i1 %i.am, %i.an
  %..i85 = select i1 %or.cond5.i84, i8 4, i8 8
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86: ; preds = %.lr.ph97, %bb.j, %bb.k, %bb.l
  %.0.i81 = phi i8 [ 2, %bb.k ], [ %.396, %.lr.ph97 ], [ 1, %bb.j ], [ %..i85, %bb.l ] ; 2 uses
  %i.ao = icmp ult ptr %i.ad, %i.b
  br i1 %i.ao, label %.lr.ph97, label %.loopexit, !llvm.loop !207

.loopexit:                                        ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79, %bb.a
  %.4 = phi i8 [ %2, %bb.a ], [ %.2, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit79 ], [ %.0.i81, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit86 ]
  ret i8 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i8 @_ZN5arrow8internal15DetectUIntWidthEPKmPKhlh(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i8 @_ZN5arrow8internal15DetectUIntWidthEPKmlh(ptr noundef %0, i64 noundef %2, i8 noundef zeroext %3)
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i8 %3, 8
  br i1 %i.c, label %bb.d, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

bb.d:                                             ; preds = %bb.c
  %.idx = shl i64 %2, 3                           ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -64
  %.not78 = icmp slt i64 %2, 8
  br i1 %.not78, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit
  %.05381 = phi i8 [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %3, %bb.d ] ; 5 uses
  %.05480 = phi ptr [ %i.k, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %0, %bb.d ] ; 2 uses
  %.05779 = phi ptr [ %i.j, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %1, %bb.d ] ; 2 uses
  %i.f = load <8 x i64>, ptr %.05480, align 8, !tbaa !30
  %i.g = load <8 x i8>, ptr %.05779, align 1, !tbaa !7
  %i.h = icmp eq <8 x i8> %i.g, zeroinitializer
  %i.i = select <8 x i1> %i.h, <8 x i64> zeroinitializer, <8 x i64> %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %.05779, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05480, i64 64 ; 4 uses
  %i.l = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.i) ; 4 uses
  %i.m = zext nneg i8 %.05381 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %.not.i = icmp ugt i64 %i.l, %i.o
  br i1 %.not.i, label %bb.e, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, !prof !206

bb.e:                                             ; preds = %.lr.ph
  %i.p = icmp eq i8 %.05381, 1
  %i.q = icmp ult i64 %i.l, 256
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i8 %.05381, 3
  %i.s = icmp ult i64 %i.l, 65536
  %or.cond3.i = and i1 %i.r, %i.s
  br i1 %or.cond3.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ult i8 %.05381, 5
  %i.u = icmp ult i64 %i.l, 4294967296
  %or.cond5.i = and i1 %i.t, %i.u
  br i1 %or.cond5.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit:   ; preds = %bb.g, %.lr.ph, %bb.e, %bb.f
  %.0.i = phi i8 [ 2, %bb.f ], [ %.05381, %.lr.ph ], [ 1, %bb.e ], [ 4, %bb.g ] ; 2 uses
  %.not = icmp ugt ptr %i.k, %i.e
  br i1 %.not, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, label %.lr.ph

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, %bb.g, %bb.d
  %.158 = phi ptr [ %1, %bb.d ], [ %i.j, %bb.g ], [ %i.j, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 3 uses
  %.155 = phi ptr [ %0, %bb.d ], [ %i.k, %bb.g ], [ %i.k, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 5 uses
  %.1 = phi i8 [ %3, %bb.d ], [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ 8, %bb.g ] ; 6 uses
  %i.v = icmp ult ptr %.155, %i.d
  br i1 %i.v, label %.lr.ph91.preheader, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

.lr.ph91.preheader:                               ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread
  %.155106 = ptrtoint ptr %0 to i64
  %i.w = add i64 %.idx, %.155106
  %4 = ptrtoint ptr %.155 to i64                  ; 2 uses
  %i.x = add i64 %4, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.w, i64 %i.x)
  %i.y = xor i64 %4, -1
  %i.z = add i64 %umax, %i.y                      ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  br i1 %min.iters.check, label %.lr.ph91.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 4 uses
  %i.ac = shl i64 %n.vec, 3
  %i.ad = getelementptr i8, ptr %.155, i64 %i.ac
  %i.ae = getelementptr i8, ptr %.158, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi107 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.af = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.155, i64 %i.af ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.158, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !30
  %wide.load109.a = load <2 x i64>, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr i8, ptr %next.gep108, i64 2
  %wide.load110.a = load <2 x i8>, ptr %next.gep108, align 1, !tbaa !7
  %wide.load111 = load <2 x i8>, ptr %i.ah, align 1, !tbaa !7
  %i.ai = icmp eq <2 x i8> %wide.load110.a, zeroinitializer
  %i.aj = icmp eq <2 x i8> %wide.load111, zeroinitializer
  %i.ak = select <2 x i1> %i.ai, <2 x i64> zeroinitializer, <2 x i64> %wide.load
  %i.al = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> %wide.load109.a
  %i.am = or <2 x i64> %i.ak, %vec.phi            ; 2 uses
  %i.an = or <2 x i64> %i.al, %vec.phi107         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.an, %i.am
  %i.ap = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph91.preheader113

.lr.ph91.preheader113:                            ; preds = %.lr.ph91.preheader, %middle.block
  %.090.ph = phi i64 [ 0, %.lr.ph91.preheader ], [ %i.ap, %middle.block ]
  %.25689.ph = phi ptr [ %.155, %.lr.ph91.preheader ], [ %i.ad, %middle.block ]
  %.25988.ph = phi ptr [ %.158, %.lr.ph91.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader113, %.lr.ph91
  %.090 = phi i64 [ %i.at, %.lr.ph91 ], [ %.090.ph, %.lr.ph91.preheader113 ]
  %.25689 = phi ptr [ %i.av, %.lr.ph91 ], [ %.25689.ph, %.lr.ph91.preheader113 ] ; 2 uses
  %.25988 = phi ptr [ %i.au, %.lr.ph91 ], [ %.25988.ph, %.lr.ph91.preheader113 ] ; 2 uses
  %i.aq = load i64, ptr %.25689, align 8, !tbaa !30
  %i.ar = load i8, ptr %.25988, align 1, !tbaa !7
  %.not69 = icmp eq i8 %i.ar, 0
  %i.as = select i1 %.not69, i64 0, i64 %i.aq
  %i.at = or i64 %i.as, %.090                     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.25988, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.25689, i64 8 ; 2 uses
  %i.aw = icmp ult ptr %i.av, %i.d
  br i1 %i.aw, label %.lr.ph91, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph91, %middle.block
  %.lcssa = phi i64 [ %i.ap, %middle.block ], [ %i.at, %.lr.ph91 ] ; 4 uses
  %i.ax = zext nneg i8 %.1 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30
  %.not.i70 = icmp ugt i64 %.lcssa, %i.az
  br i1 %.not.i70, label %bb.h, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, !prof !212

bb.h:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i8 %.1, 1
  %i.bb = icmp ult i64 %.lcssa, 256
  %or.cond.i72 = and i1 %i.ba, %i.bb
  br i1 %or.cond.i72, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp ult i8 %.1, 3
  %i.bd = icmp ult i64 %.lcssa, 65536
  %or.cond3.i73 = and i1 %i.bc, %i.bd
  br i1 %or.cond3.i73, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp ult i8 %.1, 5
  %i.bf = icmp ult i64 %.lcssa, 4294967296
  %or.cond5.i74 = and i1 %i.be, %i.bf
  %..i75 = select i1 %or.cond5.i74, i8 4, i8 8
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, %bb.j, %bb.i, %bb.h, %._crit_edge, %bb.c, %bb.b
  %.052 = phi i8 [ %i.b, %bb.b ], [ %3, %bb.c ], [ 2, %bb.i ], [ %.1, %._crit_edge ], [ 1, %bb.h ], [ %..i75, %bb.j ], [ %.1, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread ]
  ret i8 %.052
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext range(i8 1, 9) i8 @_ZN5arrow8internal14DetectIntWidthEPKllh(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %2, 8
  br i1 %i.a, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 6 uses
  switch i8 %2, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread" [
    i8 1, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit.preheader"
    i8 2, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader"
    i8 4, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader"
  ]

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit.preheader": ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit"

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit.preheader", %bb.c
  %.047 = phi ptr [ %i.g, %bb.c ], [ %0, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit.preheader" ] ; 5 uses
  %.not = icmp ugt ptr %.047, %i.c
  br i1 %.not, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit", label %bb.c

bb.c:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit"
  %i.d = load <4 x i64>, ptr %.047, align 8, !tbaa !30
  %i.e = add <4 x i64> %i.d, splat (i64 128)
  %i.f = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %.not.i = icmp ult i64 %i.f, 256
  br i1 %.not.i, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader", !prof !213, !llvm.loop !214

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit", %bb.d
  %.148 = phi ptr [ %i.i, %bb.d ], [ %.047, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit" ] ; 4 uses
  %i.h = icmp ult ptr %.148, %i.b
  br i1 %i.h, label %bb.d, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread"

bb.d:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %.148, i64 8
  %i.j = load i64, ptr %.148, align 8, !tbaa !30
  %i.k = add i64 %i.j, 128
  %.not.i24 = icmp ult i64 %i.k, 256
  br i1 %.not.i24, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader", !prof !213, !llvm.loop !215

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader": ; preds = %bb.c, %bb.d, %bb.b
  %.277 = phi ptr [ %0, %bb.b ], [ %.148, %bb.d ], [ %.047, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -32
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27"

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader", %bb.e
  %.3 = phi ptr [ %i.p, %bb.e ], [ %.277, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader" ] ; 5 uses
  %.not17 = icmp ugt ptr %.3, %i.l
  br i1 %.not17, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29", label %bb.e

bb.e:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27"
  %i.m = load <4 x i64>, ptr %.3, align 8, !tbaa !30
  %i.n = add <4 x i64> %i.m, splat (i64 32768)
  %i.o = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %.not.i25 = icmp ult i64 %i.o, 65536
  br i1 %.not.i25, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader", !prof !213, !llvm.loop !216

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27", %bb.f
  %.4 = phi ptr [ %i.r, %bb.f ], [ %.3, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27" ] ; 4 uses
  %i.q = icmp ult ptr %.4, %i.b
  br i1 %i.q, label %bb.f, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread"

bb.f:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29"
  %i.r = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.s = load i64, ptr %.4, align 8, !tbaa !30
  %i.t = add i64 %i.s, 32768
  %.not.i28 = icmp ult i64 %i.t, 65536
  br i1 %.not.i28, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader", !prof !213, !llvm.loop !217

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader": ; preds = %bb.e, %bb.f, %bb.b
  %.580 = phi ptr [ %0, %bb.b ], [ %.4, %bb.f ], [ %.3, %bb.e ]
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -32
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32"

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader", %bb.g
  %.6 = phi ptr [ %i.y, %bb.g ], [ %.580, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader" ] ; 4 uses
  %.not18 = icmp ugt ptr %.6, %i.u
  br i1 %.not18, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34", label %bb.g

bb.g:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32"
  %i.v = load <4 x i64>, ptr %.6, align 8, !tbaa !30
  %i.w = add <4 x i64> %i.v, splat (i64 2147483648)
  %i.x = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %.6, i64 32
  %.not.i30 = icmp ult i64 %i.x, 4294967296
  br i1 %.not.i30, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread", !prof !213, !llvm.loop !218

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32", %bb.h
  %.7 = phi ptr [ %i.aa, %bb.h ], [ %.6, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32" ] ; 3 uses
  %i.z = icmp ult ptr %.7, %i.b
  br i1 %i.z, label %bb.h, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread"

bb.h:                                             ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34"
  %i.aa = getelementptr inbounds nuw i8, ptr %.7, i64 8
  %i.ab = load i64, ptr %.7, align 8, !tbaa !30
  %i.ac = add i64 %i.ab, 2147483648
  %.not.i33 = icmp ult i64 %i.ac, 4294967296
  br i1 %.not.i33, label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34", label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread", !prof !213, !llvm.loop !219

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.thread": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit", %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29", %bb.g, %bb.h, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34", %bb.b, %bb.a
  %.1 = phi i8 [ 8, %bb.a ], [ 8, %bb.b ], [ 8, %bb.g ], [ 2, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29" ], [ 4, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34" ], [ 8, %bb.h ], [ 1, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit" ]
  ret i8 %.1
end_hunk_0
