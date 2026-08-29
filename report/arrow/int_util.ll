Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/int_util?download=true
inline.NumInlined: 2184
inline.NumDeleted: 621
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 275
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_ZN5arrow8internal15DetectUIntWidthEPKmlh:bb.a
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
  %.05281 = phi ptr [ %i.j, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %1, %bb.d ] ; 2 uses
  %.05380 = phi ptr [ %i.k, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %0, %bb.d ] ; 2 uses
  %.05679 = phi i8 [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ], [ %3, %bb.d ] ; 5 uses
  %i.f = load <8 x i64>, ptr %.05380, align 8, !tbaa !30
  %i.g = load <8 x i8>, ptr %.05281, align 1, !tbaa !7
  %i.h = icmp eq <8 x i8> %i.g, zeroinitializer
  %i.i = select <8 x i1> %i.h, <8 x i64> zeroinitializer, <8 x i64> %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %.05281, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05380, i64 64 ; 4 uses
  %i.l = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %i.i) ; 4 uses
  %i.m = zext nneg i8 %.05679 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %.not.i = icmp ugt i64 %i.l, %i.o
  br i1 %.not.i, label %bb.e, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, !prof !206

bb.e:                                             ; preds = %.lr.ph
  %i.p = icmp eq i8 %.05679, 1
  %i.q = icmp ult i64 %i.l, 256
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ult i8 %.05679, 3
  %i.s = icmp ult i64 %i.l, 65536
  %or.cond3.i = and i1 %i.r, %i.s
  br i1 %or.cond3.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp ult i8 %.05679, 5
  %i.u = icmp ult i64 %i.l, 4294967296
  %or.cond5.i = and i1 %i.t, %i.u
  br i1 %or.cond5.i, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit:   ; preds = %bb.g, %.lr.ph, %bb.e, %bb.f
  %.0.i = phi i8 [ 2, %bb.f ], [ %.05679, %.lr.ph ], [ 1, %bb.e ], [ 4, %bb.g ] ; 2 uses
  %.not = icmp ugt ptr %i.k, %i.e
  br i1 %.not, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, label %.lr.ph

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit, %bb.g, %bb.d
  %.157 = phi i8 [ %3, %bb.d ], [ 8, %bb.g ], [ %.0.i, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 6 uses
  %.154 = phi ptr [ %0, %bb.d ], [ %i.k, %bb.g ], [ %i.k, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 5 uses
  %.1 = phi ptr [ %1, %bb.d ], [ %i.j, %bb.g ], [ %i.j, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit ] ; 3 uses
  %i.v = icmp ult ptr %.154, %i.d
  br i1 %i.v, label %.lr.ph91.preheader, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

.lr.ph91.preheader:                               ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread
  %i.w = ptrtoaddr ptr %0 to i64
  %i.x = ptrtoaddr ptr %.154 to i64
  %i.y = add i64 %.idx, %i.w
  %i.z = xor i64 %i.x, -1
  %i.aa = add i64 %i.y, %i.z                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph91.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ad = getelementptr i8, ptr %.1, i64 %n.vec
  %i.ae = shl i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %.154, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi106 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %next.gep = getelementptr i8, ptr %.1, i64 %index ; 2 uses
  %i.ag = shl i64 %index, 3
  %next.gep107 = getelementptr i8, ptr %.154, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep107, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep107, align 8, !tbaa !30
  %wide.load108 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr i8, ptr %next.gep, i64 2
  %wide.load109 = load <2 x i8>, ptr %next.gep, align 1, !tbaa !7
  %wide.load110 = load <2 x i8>, ptr %i.ai, align 1, !tbaa !7
  %i.aj = icmp eq <2 x i8> %wide.load109, zeroinitializer
  %i.ak = icmp eq <2 x i8> %wide.load110, zeroinitializer
  %i.al = select <2 x i1> %i.aj, <2 x i64> zeroinitializer, <2 x i64> %wide.load
  %i.am = select <2 x i1> %i.ak, <2 x i64> zeroinitializer, <2 x i64> %wide.load108
  %i.an = or <2 x i64> %i.al, %vec.phi            ; 2 uses
  %i.ao = or <2 x i64> %i.am, %vec.phi106         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ao, %i.an
  %i.aq = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph91.preheader112

.lr.ph91.preheader112:                            ; preds = %.lr.ph91.preheader, %middle.block
  %.090.ph = phi i64 [ 0, %.lr.ph91.preheader ], [ %i.aq, %middle.block ]
  %.289.ph = phi ptr [ %.1, %.lr.ph91.preheader ], [ %i.ad, %middle.block ]
  %.25588.ph = phi ptr [ %.154, %.lr.ph91.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph91

.lr.ph91:                                         ; preds = %.lr.ph91.preheader112, %.lr.ph91
  %.090 = phi i64 [ %i.au, %.lr.ph91 ], [ %.090.ph, %.lr.ph91.preheader112 ]
  %.289 = phi ptr [ %i.av, %.lr.ph91 ], [ %.289.ph, %.lr.ph91.preheader112 ] ; 2 uses
  %.25588 = phi ptr [ %i.aw, %.lr.ph91 ], [ %.25588.ph, %.lr.ph91.preheader112 ] ; 2 uses
  %i.ar = load i64, ptr %.25588, align 8, !tbaa !30
  %i.as = load i8, ptr %.289, align 1, !tbaa !7
  %.not69 = icmp eq i8 %i.as, 0
  %i.at = select i1 %.not69, i64 0, i64 %i.ar
  %i.au = or i64 %i.at, %.090                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.289, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.25588, i64 8 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.d
  br i1 %i.ax, label %.lr.ph91, label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph91, %middle.block
  %.lcssa = phi i64 [ %i.aq, %middle.block ], [ %i.au, %.lr.ph91 ] ; 4 uses
  %i.ay = zext nneg i8 %.157 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrow8internalL9max_uintsE, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !30
  %.not.i70 = icmp ugt i64 %.lcssa, %i.ba
  br i1 %.not.i70, label %bb.h, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, !prof !212

bb.h:                                             ; preds = %._crit_edge
  %i.bb = icmp eq i8 %.157, 1
  %i.bc = icmp ult i64 %.lcssa, 256
  %or.cond.i72 = and i1 %i.bb, %i.bc
  br i1 %or.cond.i72, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = icmp ult i8 %.157, 3
  %i.be = icmp ult i64 %.lcssa, 65536
  %or.cond3.i73 = and i1 %i.bd, %i.be
  br i1 %or.cond3.i73, label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp ult i8 %.157, 5
  %i.bg = icmp ult i64 %.lcssa, 4294967296
  %or.cond5.i74 = and i1 %i.bf, %i.bg
  %..i75 = select i1 %or.cond5.i74, i8 4, i8 8
  br label %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76

_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit76: ; preds = %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread, %bb.j, %bb.i, %bb.h, %._crit_edge, %bb.c, %bb.b
  %.059 = phi i8 [ %i.b, %bb.b ], [ %3, %bb.c ], [ 2, %bb.i ], [ %.157, %._crit_edge ], [ 1, %bb.h ], [ %..i75, %bb.j ], [ %.157, %_ZN5arrow8internalL17ExpandedUIntWidthEmh.exit.thread ]
  ret i8 %.059
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
  %.278 = phi ptr [ %0, %bb.b ], [ %.148, %bb.d ], [ %.047, %bb.c ]
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -32
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27"

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader", %bb.e
  %.3 = phi ptr [ %i.p, %bb.e ], [ %.278, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit27.preheader" ] ; 5 uses
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
  %.581 = phi ptr [ %0, %bb.b ], [ %.4, %bb.f ], [ %.3, %bb.e ]
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -32
  br label %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32"

"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32": ; preds = %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader", %bb.g
  %.6 = phi ptr [ %i.y, %bb.g ], [ %.581, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_1clEmm.exit32.preheader" ] ; 4 uses
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
  %.115 = phi i8 [ 8, %bb.a ], [ 8, %bb.b ], [ 8, %bb.g ], [ 2, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit29" ], [ 4, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit34" ], [ 8, %bb.h ], [ 1, %"_ZZN5arrow8internal14DetectIntWidthEPKllhENK3$_0clEmm.exit" ]
  ret i8 %.115
}
end_hunk_0
begin_hunk_1_@_ZN5arrow12UInt64ScalarD0Ev:bb.a
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !741
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !743
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !735
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1548
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !735
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !1548
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !206

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !746  ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow6ScalarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3    ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.x = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.i ], [ %i.x, %bb.j ]
  %i.y = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.y, label %bb.k, label %_ZN5arrow6ScalarD2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !735
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !1549
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4dataEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow8internal15PrimitiveScalarINS_10UInt64TypeEmE4viewEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.fca.1.insert = insertvalue { i64, ptr } { i64 8, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1552
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1552
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1441, !noalias !1552, !nonnull !839, !align !856
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #22, !noalias !1552
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1552 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1552
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1552
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !7
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !307    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !7
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v16i64(<16 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #19

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !9}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !9}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !9}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !9}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{!122, !9}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !9}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !11}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !11}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !11}
!151 = distinct !{!151, !11}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !9}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !9}
!159 = distinct !{!159, !11}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !9}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
end_hunk_1
