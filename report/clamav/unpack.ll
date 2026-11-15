Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unpack?download=true
inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN6Unpack10HuffDecodeEv:bb.a
  %.01419.i = phi i32 [ %i.g, %.lr.ph.i ], [ 8, %bb.b ]
  %i.g = add i32 %.01419.i, 1                     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf4, i64 %indvars.iv.next.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !71
  %.not.i = icmp ugt i32 %i.i, %i.f
  br i1 %.not.i, label %bb.c, label %.lr.ph.i, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf4, i64 %indvars.iv.next.i
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.g)
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit

_ZN6Unpack9DecodeNumEjjPjS0_.exit:                ; preds = %._crit_edge.thread.i, %bb.c
  %.014.lcssa27.i = phi i32 [ %i.g, %bb.c ], [ 8, %._crit_edge.thread.i ]
  %i.m = phi i32 [ %i.l, %bb.c ], [ 0, %._crit_edge.thread.i ]
  %i.n = sub i32 %i.f, %i.m
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.d, 24063
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %i.b, 65520                      ; 3 uses
  %.not18.i28 = icmp samesign ult i32 %i.p, 2048
  br i1 %.not18.i28, label %._crit_edge.thread.i35, label %.lr.ph.i29

._crit_edge.thread.i35:                           ; preds = %bb.e
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 6)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit36

.lr.ph.i29:                                       ; preds = %bb.e, %.lr.ph.i29
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i32, %.lr.ph.i29 ], [ 0, %bb.e ]
  %.01419.i31 = phi i32 [ %i.q, %.lr.ph.i29 ], [ 6, %bb.e ]
  %i.q = add i32 %.01419.i31, 1                   ; 3 uses
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i30, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf3, i64 %indvars.iv.next.i32
  %i.s = load i32, ptr %i.r, align 4, !tbaa !71
  %.not.i33 = icmp ugt i32 %i.s, %i.p
  br i1 %.not.i33, label %bb.f, label %.lr.ph.i29, !llvm.loop !2

bb.f:                                             ; preds = %.lr.ph.i29
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf3, i64 %indvars.iv.next.i32
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.q)
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit36

_ZN6Unpack9DecodeNumEjjPjS0_.exit36:              ; preds = %._crit_edge.thread.i35, %bb.f
  %.014.lcssa27.i34 = phi i32 [ %i.q, %bb.f ], [ 6, %._crit_edge.thread.i35 ]
  %i.w = phi i32 [ %i.v, %bb.f ], [ 0, %._crit_edge.thread.i35 ]
  %i.x = sub i32 %i.p, %i.w
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ugt i32 %i.d, 13823
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = and i32 %i.b, 65520                      ; 3 uses
  %.not18.i37 = icmp samesign ult i32 %i.z, 4096
  br i1 %.not18.i37, label %._crit_edge.thread.i44, label %.lr.ph.i38

._crit_edge.thread.i44:                           ; preds = %bb.h
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 5)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit45

.lr.ph.i38:                                       ; preds = %bb.h, %.lr.ph.i38
  %indvars.iv.i39 = phi i64 [ %indvars.iv.next.i41, %.lr.ph.i38 ], [ 0, %bb.h ]
  %.01419.i40 = phi i32 [ %i.aa, %.lr.ph.i38 ], [ 5, %bb.h ]
  %i.aa = add i32 %.01419.i40, 1                  ; 3 uses
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i39, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i41
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %.not.i42 = icmp ugt i32 %i.ac, %i.z
  br i1 %.not.i42, label %bb.i, label %.lr.ph.i38, !llvm.loop !2

bb.i:                                             ; preds = %.lr.ph.i38
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i41
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.aa)
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit45

_ZN6Unpack9DecodeNumEjjPjS0_.exit45:              ; preds = %._crit_edge.thread.i44, %bb.i
  %.014.lcssa27.i43 = phi i32 [ %i.aa, %bb.i ], [ 5, %._crit_edge.thread.i44 ]
  %i.ag = phi i32 [ %i.af, %bb.i ], [ 0, %._crit_edge.thread.i44 ]
  %i.ah = sub i32 %i.z, %i.ag
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.ai = icmp samesign ugt i32 %i.d, 3583
  %i.aj = and i32 %i.b, 65520                     ; 6 uses
  br i1 %i.ai, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not18.i46 = icmp samesign ult i32 %i.aj, 8192
  br i1 %.not18.i46, label %._crit_edge.thread.i53, label %.lr.ph.i47

._crit_edge.thread.i53:                           ; preds = %bb.k
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 5)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit54

.lr.ph.i47:                                       ; preds = %bb.k, %.lr.ph.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i50, %.lr.ph.i47 ], [ 0, %bb.k ]
  %.01419.i49 = phi i32 [ %i.ak, %.lr.ph.i47 ], [ 5, %bb.k ]
  %i.ak = add i32 %.01419.i49, 1                  ; 3 uses
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i48, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf1, i64 %indvars.iv.next.i50
  %i.am = load i32, ptr %i.al, align 4, !tbaa !71
  %.not.i51 = icmp ugt i32 %i.am, %i.aj
  br i1 %.not.i51, label %bb.l, label %.lr.ph.i47, !llvm.loop !2

bb.l:                                             ; preds = %.lr.ph.i47
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf1, i64 %indvars.iv.next.i50
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.ak)
  %i.ao = getelementptr i8, ptr %i.an, i64 -4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit54

_ZN6Unpack9DecodeNumEjjPjS0_.exit54:              ; preds = %._crit_edge.thread.i53, %bb.l
  %.014.lcssa27.i52 = phi i32 [ %i.ak, %bb.l ], [ 5, %._crit_edge.thread.i53 ]
  %i.aq = phi i32 [ %i.ap, %bb.l ], [ 0, %._crit_edge.thread.i53 ]
  %i.ar = sub i32 %i.aj, %i.aq
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %.not18.i55 = icmp samesign ult i32 %i.aj, 32768
  br i1 %.not18.i55, label %._crit_edge.thread.i62, label %.lr.ph.i56

._crit_edge.thread.i62:                           ; preds = %bb.m
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 4)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit63

.lr.ph.i56:                                       ; preds = %bb.m, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %indvars.iv.next.i59, %.lr.ph.i56 ], [ 0, %bb.m ]
  %.01419.i58 = phi i32 [ %i.as, %.lr.ph.i56 ], [ 4, %bb.m ]
  %i.as = add i32 %.01419.i58, 1                  ; 3 uses
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i57, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf0, i64 %indvars.iv.next.i59
  %i.au = load i32, ptr %i.at, align 4, !tbaa !71
  %.not.i60 = icmp ugt i32 %i.au, %i.aj
  br i1 %.not.i60, label %bb.n, label %.lr.ph.i56, !llvm.loop !2

bb.n:                                             ; preds = %.lr.ph.i56
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf0, i64 %indvars.iv.next.i59
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.as)
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit63

_ZN6Unpack9DecodeNumEjjPjS0_.exit63:              ; preds = %._crit_edge.thread.i62, %bb.n
  %.014.lcssa27.i61 = phi i32 [ %i.as, %bb.n ], [ 4, %._crit_edge.thread.i62 ]
  %i.ay = phi i32 [ %i.ax, %bb.n ], [ 0, %._crit_edge.thread.i62 ]
  %i.az = sub i32 %i.aj, %i.ay
  br label %bb.o

bb.o:                                             ; preds = %_ZN6Unpack9DecodeNumEjjPjS0_.exit36, %_ZN6Unpack9DecodeNumEjjPjS0_.exit54, %_ZN6Unpack9DecodeNumEjjPjS0_.exit63, %_ZN6Unpack9DecodeNumEjjPjS0_.exit45, %_ZN6Unpack9DecodeNumEjjPjS0_.exit
  %.014.lcssa27.i34.sink124 = phi i32 [ %.014.lcssa27.i34, %_ZN6Unpack9DecodeNumEjjPjS0_.exit36 ], [ %.014.lcssa27.i52, %_ZN6Unpack9DecodeNumEjjPjS0_.exit54 ], [ %.014.lcssa27.i61, %_ZN6Unpack9DecodeNumEjjPjS0_.exit63 ], [ %.014.lcssa27.i43, %_ZN6Unpack9DecodeNumEjjPjS0_.exit45 ], [ %.014.lcssa27.i, %_ZN6Unpack9DecodeNumEjjPjS0_.exit ] ; 2 uses
  %.sink122 = phi i32 [ %i.x, %_ZN6Unpack9DecodeNumEjjPjS0_.exit36 ], [ %i.ar, %_ZN6Unpack9DecodeNumEjjPjS0_.exit54 ], [ %i.az, %_ZN6Unpack9DecodeNumEjjPjS0_.exit63 ], [ %i.ah, %_ZN6Unpack9DecodeNumEjjPjS0_.exit45 ], [ %i.n, %_ZN6Unpack9DecodeNumEjjPjS0_.exit ]
  %_ZL6PosHf3.sink = phi ptr [ @_ZL6PosHf3, %_ZN6Unpack9DecodeNumEjjPjS0_.exit36 ], [ @_ZL6PosHf1, %_ZN6Unpack9DecodeNumEjjPjS0_.exit54 ], [ @_ZL6PosHf0, %_ZN6Unpack9DecodeNumEjjPjS0_.exit63 ], [ @_ZL6PosHf2, %_ZN6Unpack9DecodeNumEjjPjS0_.exit45 ], [ @_ZL6PosHf4, %_ZN6Unpack9DecodeNumEjjPjS0_.exit ]
  %i.ba = sub nuw i32 16, %.014.lcssa27.i34.sink124
  %i.bb = lshr i32 %.sink122, %i.ba
  %i.bc = zext i32 %.014.lcssa27.i34.sink124 to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %_ZL6PosHf3.sink, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !71
  %i.bf = add i32 %i.bb, %i.be
  %i.bg = and i32 %i.bf, 255                      ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 22716 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !110
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = icmp ugt i32 %i.b, 4095
  %or.cond = and i1 %i.bk, %i.bj
  %i.bl = add nsw i32 %i.bg, -1
  %i.bm = select i1 %or.cond, i32 255, i32 %i.bl  ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 2 uses
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1)
  %i.bp = and i32 %i.bo, 32768
  %.not26 = icmp eq i32 %i.bp, 0
  br i1 %.not26, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bh, align 4, !tbaa !110
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 22712
  store i32 0, ptr %i.bq, align 8, !tbaa !142
  br label %_ZN6Unpack12CopyString15Ejj.exit

bb.s:                                             ; preds = %bb.q
  %i.br = and i32 %i.bo, 16384
  %.not27 = icmp eq i32 %i.br, 0
  %1 = select i1 %.not27, i32 3, i32 4            ; 4 uses
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1)
  %i.bs = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.bt = and i32 %i.bs, 65520                    ; 3 uses
  %.not18.i64 = icmp samesign ult i32 %i.bt, 4096
  br i1 %.not18.i64, label %._crit_edge.thread.i71, label %.lr.ph.i65

._crit_edge.thread.i71:                           ; preds = %bb.s
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 5)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit72

.lr.ph.i65:                                       ; preds = %bb.s, %.lr.ph.i65
  %indvars.iv.i66 = phi i64 [ %indvars.iv.next.i68, %.lr.ph.i65 ], [ 0, %bb.s ]
  %.01419.i67 = phi i32 [ %i.bu, %.lr.ph.i65 ], [ 5, %bb.s ]
  %i.bu = add i32 %.01419.i67, 1                  ; 3 uses
  %indvars.iv.next.i68 = add nuw nsw i64 %indvars.iv.i66, 1 ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !71
  %.not.i69 = icmp ugt i32 %i.bw, %i.bt
  br i1 %.not.i69, label %bb.t, label %.lr.ph.i65, !llvm.loop !2

bb.t:                                             ; preds = %.lr.ph.i65
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i68
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.bu)
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit72

_ZN6Unpack9DecodeNumEjjPjS0_.exit72:              ; preds = %._crit_edge.thread.i71, %bb.t
  %.014.lcssa27.i70 = phi i32 [ %i.bu, %bb.t ], [ 5, %._crit_edge.thread.i71 ] ; 2 uses
  %i.ca = phi i32 [ %i.bz, %bb.t ], [ 0, %._crit_edge.thread.i71 ]
  %i.cb = sub i32 %i.bt, %i.ca
  %i.cc = sub nuw i32 16, %.014.lcssa27.i70
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = zext i32 %.014.lcssa27.i70 to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @_ZL6PosHf2, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ch = add i32 %i.cd, %i.cg
  %i.ci = shl i32 %i.ch, 5
  %i.cj = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.ck = lshr i32 %i.cj, 11
  %i.cl = or i32 %i.ci, %i.ck
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 5)
  %2 = zext nneg i32 %1 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 19840 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !116
  %3 = sub nsw i64 %i.cn, %2
  store i64 %3, ptr %i.cm, align 8, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.cq = zext i32 %i.cl to i64                   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 59680 ; 4 uses
  %.pre.i.a = load i64, ptr %i.cp, align 8, !tbaa !115 ; 3 uses
  %.pre5.i.a = load i64, ptr %i.cr, align 8, !tbaa !117 ; 2 uses
  %xtraiter = and i32 %1, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %_ZN6Unpack9DecodeNumEjjPjS0_.exit72
  %4 = add nsw i32 %1, -1
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !119 ; 2 uses
  %i.ct = sub i64 %.pre.i.a, %i.cq
  %i.cu = and i64 %i.ct, %.pre5.i.a
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.pre.i.a
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !35
  %i.cy = load i64, ptr %i.cp, align 8, !tbaa !115
  %i.cz = add i64 %i.cy, 1
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !117 ; 2 uses
  %i.db = and i64 %i.cz, %i.da                    ; 2 uses
  store i64 %i.db, ptr %i.cp, align 8, !tbaa !115
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new

_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new:          ; preds = %_ZN6Unpack9DecodeNumEjjPjS0_.exit72, %.prol.loopexit.unr-lcssa
  %.unr = phi i64 [ %.pre5.i.a, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72 ], [ %i.da, %.prol.loopexit.unr-lcssa ]
  %.unr141 = phi i64 [ %.pre.i.a, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72 ], [ %i.db, %.prol.loopexit.unr-lcssa ]
  %.04.i.unr = phi i32 [ %1, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72 ], [ %4, %.prol.loopexit.unr-lcssa ]
  br label %5

5:                                                ; preds = %5, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new
  %6 = phi i64 [ %.unr, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new ], [ %27, %5 ]
  %7 = phi i64 [ %.unr141, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new ], [ %28, %5 ] ; 2 uses
  %.04.i = phi i32 [ %.04.i.unr, %_ZN6Unpack9DecodeNumEjjPjS0_.exit72.new ], [ %18, %5 ]
  %8 = load ptr, ptr %i.co, align 8, !tbaa !119   ; 2 uses
  %9 = sub i64 %7, %i.cq
  %10 = and i64 %9, %6
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !35
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 %7
  store i8 %12, ptr %13, align 1, !tbaa !35
  %14 = load i64, ptr %i.cp, align 8, !tbaa !115
  %15 = add i64 %14, 1
  %16 = load i64, ptr %i.cr, align 8, !tbaa !117  ; 2 uses
  %17 = and i64 %15, %16                          ; 3 uses
  store i64 %17, ptr %i.cp, align 8, !tbaa !115
  %18 = add i32 %.04.i, -2                        ; 2 uses
  %19 = load ptr, ptr %i.co, align 8, !tbaa !119  ; 2 uses
  %20 = sub i64 %17, %i.cq
  %21 = and i64 %20, %16
  %22 = getelementptr inbounds nuw i8, ptr %19, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !35
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 %17
  store i8 %23, ptr %24, align 1, !tbaa !35
  %25 = load i64, ptr %i.cp, align 8, !tbaa !115
  %26 = add i64 %25, 1
  %27 = load i64, ptr %i.cr, align 8, !tbaa !117  ; 2 uses
  %28 = and i64 %26, %27                          ; 2 uses
  store i64 %28, ptr %i.cp, align 8, !tbaa !115
  %.not.i74.1 = icmp eq i32 %18, 0
  br i1 %.not.i74.1, label %_ZN6Unpack12CopyString15Ejj.exit, label %5, !llvm.loop !3

bb.u:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 22712 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !142 ; 2 uses
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !142
  %i.df = icmp sgt i32 %i.dd, 15
  br i1 %i.df, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 22724
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !108
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.bh, align 4, !tbaa !110
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.p
  %.1 = phi i32 [ %i.bm, %bb.p ], [ %i.bg, %bb.w ], [ %i.bg, %bb.v ], [ %i.bg, %bb.u ] ; 2 uses
  %i.dj = load i32, ptr %i.c, align 8, !tbaa !104
  %i.dk = add i32 %i.dj, %.1                      ; 2 uses
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = sub i32 %i.dk, %i.dl
  store i32 %i.dm, ptr %i.c, align 8, !tbaa !104
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 22728 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !107
  %i.dp = add i32 %i.do, 16                       ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 8, !tbaa !107
  %i.dq = icmp ugt i32 %i.dp, 255
  br i1 %i.dq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 144, ptr %i.dn, align 8, !tbaa !107
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 22732 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !106
  %i.dt = lshr i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !106
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 19866 ; 3 uses
  %i.dv = zext nneg i32 %.1 to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.dv ; 4 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !63
  %i.dy = lshr i16 %i.dx, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 19312
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !119
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !115 ; 2 uses
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed
  store i8 %i.dz, ptr %i.ef, align 1, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 19840 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !116
  %i.ei = add nsw i64 %i.eh, -1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !116
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 21914 ; 3 uses
  %i.ek = load i16, ptr %i.dw, align 2, !tbaa !63
  %i.el = zext i16 %i.ek to i32                   ; 2 uses
  %i.em = add nuw nsw i32 %i.el, 1                ; 2 uses
  %i.en = and i32 %i.el, 255
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eo ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !35  ; 2 uses
  %i.er = add i8 %i.eq, 1
  store i8 %i.er, ptr %i.ep, align 1, !tbaa !35
  %i.es = and i32 %i.em, 254
  %i.et = icmp samesign ugt i32 %i.es, 161
  br i1 %i.et, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  tail call void @_ZN6Unpack8CorrHuffEPtPh(ptr nonnull align 8 poison, ptr noundef nonnull %i.du, ptr noundef nonnull %i.ej)
  %i.eu = load i16, ptr %i.dw, align 2, !tbaa !63
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = add nuw nsw i32 %i.ev, 1                ; 2 uses
  %i.ex = and i32 %i.ev, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !35  ; 2 uses
  %i.fb = add i8 %i.fa, 1
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !35
  %i.fc = and i32 %i.ew, 254
  %i.fd = icmp samesign ugt i32 %i.fc, 161
  br i1 %i.fd, label %.lr.ph, label %._crit_edge, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
  %.lcssa75 = phi i32 [ %i.em, %bb.z ], [ %i.ew, %.lr.ph ]
  %.lcssa = phi i8 [ %i.eq, %bb.z ], [ %i.fa, %.lr.ph ]
  %i.fe = zext i8 %.lcssa to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %i.fe ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !63
  store i16 %i.fg, ptr %i.dw, align 2, !tbaa !63
  %i.fh = trunc i32 %.lcssa75 to i16
  store i16 %i.fh, ptr %i.ff, align 2, !tbaa !63
  br label %_ZN6Unpack12CopyString15Ejj.exit

_ZN6Unpack12CopyString15Ejj.exit:                 ; preds = %5, %._crit_edge, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Unpack6LongLZEv(ptr noundef nonnull align 8 dereferenceable(59688) initializes((22712, 22716)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22712
  store i32 0, ptr %i.a, align 8, !tbaa !142
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22732 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !106
  %i.d = add i32 %i.c, 16                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !tbaa !106
  %i.e = icmp ugt i32 %i.d, 255
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 144, ptr %i.b, align 4, !tbaa !106
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22728 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %i.h = lshr i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22700 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.l = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 5 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !231  ; 2 uses
  %i.n = icmp ugt i32 %i.m, 121
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = and i32 %i.l, 65520                      ; 3 uses
  %.not18.i = icmp samesign ult i32 %i.o, 40960
  br i1 %.not18.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.d
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 3)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.d ]
  %.01419.i = phi i32 [ %i.p, %.lr.ph.i ], [ 3, %bb.d ]
  %i.p = add i32 %.01419.i, 1                     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZL5DecL2, i64 %indvars.iv.next.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !71
  %.not.i = icmp ugt i32 %i.r, %i.o
  br i1 %.not.i, label %bb.e, label %.lr.ph.i, !llvm.loop !2

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @_ZL5DecL2, i64 %indvars.iv.next.i
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.p)
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit

_ZN6Unpack9DecodeNumEjjPjS0_.exit:                ; preds = %._crit_edge.thread.i, %bb.e
  %.014.lcssa27.i = phi i32 [ %i.p, %bb.e ], [ 3, %._crit_edge.thread.i ] ; 2 uses
  %i.v = phi i32 [ %i.u, %bb.e ], [ 0, %._crit_edge.thread.i ]
  %i.w = sub i32 %i.o, %i.v
  %i.x = sub nuw i32 16, %.014.lcssa27.i
  %i.y = lshr i32 %i.w, %i.x
  %i.z = zext i32 %.014.lcssa27.i to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZL5PosL2, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !71
  %i.ac = add i32 %i.y, %i.ab
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i32 %i.m, 63
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = and i32 %i.l, 65520                     ; 3 uses
  %.not18.i50 = icmp samesign ult i32 %i.ae, 32768
  br i1 %.not18.i50, label %._crit_edge.thread.i57, label %.lr.ph.i51

._crit_edge.thread.i57:                           ; preds = %bb.g
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 2)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit58

.lr.ph.i51:                                       ; preds = %bb.g, %.lr.ph.i51
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i54, %.lr.ph.i51 ], [ 0, %bb.g ]
  %.01419.i53 = phi i32 [ %i.af, %.lr.ph.i51 ], [ 2, %bb.g ]
  %i.af = add i32 %.01419.i53, 1                  ; 3 uses
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @_ZL5DecL1, i64 %indvars.iv.next.i54
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !71
  %.not.i55 = icmp ugt i32 %i.ah, %i.ae
  br i1 %.not.i55, label %bb.h, label %.lr.ph.i51, !llvm.loop !2

bb.h:                                             ; preds = %.lr.ph.i51
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @_ZL5DecL1, i64 %indvars.iv.next.i54
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.af)
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit58

_ZN6Unpack9DecodeNumEjjPjS0_.exit58:              ; preds = %._crit_edge.thread.i57, %bb.h
  %.014.lcssa27.i56 = phi i32 [ %i.af, %bb.h ], [ 2, %._crit_edge.thread.i57 ] ; 2 uses
  %i.al = phi i32 [ %i.ak, %bb.h ], [ 0, %._crit_edge.thread.i57 ]
  %i.am = sub i32 %i.ae, %i.al
  %i.an = sub nuw i32 16, %.014.lcssa27.i56
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = zext i32 %.014.lcssa27.i56 to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZL5PosL1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71
  %i.as = add i32 %i.ao, %i.ar
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.at = icmp ult i32 %i.l, 256
  br i1 %i.at, label %bb.j, label %.preheader

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 16)
  br label %bb.l

.preheader:                                       ; preds = %bb.i, %.preheader
  %.040 = phi i32 [ %i.ax, %.preheader ], [ 0, %bb.i ] ; 3 uses
  %i.au = lshr i32 32768, %.040
  %i.av = and i32 %i.au, %i.l
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = add i32 %.040, 1                        ; 2 uses
  br i1 %i.aw, label %.preheader, label %bb.k, !llvm.loop !229

bb.k:                                             ; preds = %.preheader
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.ax)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6Unpack9DecodeNumEjjPjS0_.exit58, %bb.k, %bb.j, %_ZN6Unpack9DecodeNumEjjPjS0_.exit
  %.1 = phi i32 [ %i.ac, %_ZN6Unpack9DecodeNumEjjPjS0_.exit ], [ %i.as, %_ZN6Unpack9DecodeNumEjjPjS0_.exit58 ], [ %i.l, %bb.j ], [ %.040, %bb.k ] ; 3 uses
  %i.ay = load i32, ptr %i.i, align 4, !tbaa !231
  %i.az = add i32 %i.ay, %.1                      ; 2 uses
  %i.ba = lshr i32 %i.az, 5
  %i.bb = sub i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.i, align 4, !tbaa !231
  %i.bc = tail call noundef i32 @_ZN8BitInput8fgetbitsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 22692 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !232 ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 10495
  br i1 %i.bf, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = and i32 %i.bc, 65520                    ; 3 uses
  %.not18.i59 = icmp samesign ult i32 %i.bg, 4096
  br i1 %.not18.i59, label %._crit_edge.thread.i66, label %.lr.ph.i60

._crit_edge.thread.i66:                           ; preds = %bb.m
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 5)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit67

.lr.ph.i60:                                       ; preds = %bb.m, %.lr.ph.i60
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i63, %.lr.ph.i60 ], [ 0, %bb.m ]
  %.01419.i62 = phi i32 [ %i.bh, %.lr.ph.i60 ], [ 5, %bb.m ]
  %i.bh = add i32 %.01419.i62, 1                  ; 3 uses
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i61, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i63
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !71
  %.not.i64 = icmp ugt i32 %i.bj, %i.bg
  br i1 %.not.i64, label %bb.n, label %.lr.ph.i60, !llvm.loop !2

bb.n:                                             ; preds = %.lr.ph.i60
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf2, i64 %indvars.iv.next.i63
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef %i.bh)
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !71
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit67

_ZN6Unpack9DecodeNumEjjPjS0_.exit67:              ; preds = %._crit_edge.thread.i66, %bb.n
  %.014.lcssa27.i65 = phi i32 [ %i.bh, %bb.n ], [ 5, %._crit_edge.thread.i66 ]
  %i.bn = phi i32 [ %i.bm, %bb.n ], [ 0, %._crit_edge.thread.i66 ]
  %i.bo = sub i32 %i.bg, %i.bn
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.bp = icmp samesign ugt i32 %i.be, 1791
  %i.bq = and i32 %i.bc, 65520                    ; 6 uses
  br i1 %i.bp, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not18.i68 = icmp samesign ult i32 %i.bq, 8192
  br i1 %.not18.i68, label %._crit_edge.thread.i75, label %.lr.ph.i69

._crit_edge.thread.i75:                           ; preds = %bb.p
  tail call void @_ZN8BitInput8faddbitsEj(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i32 noundef 5)
  br label %_ZN6Unpack9DecodeNumEjjPjS0_.exit76

.lr.ph.i69:                                       ; preds = %bb.p, %.lr.ph.i69
  %indvars.iv.i70 = phi i64 [ %indvars.iv.next.i72, %.lr.ph.i69 ], [ 0, %bb.p ]
  %.01419.i71 = phi i32 [ %i.br, %.lr.ph.i69 ], [ 5, %bb.p ]
  %i.br = add i32 %.01419.i71, 1                  ; 3 uses
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr @_ZL6DecHf1, i64 %indvars.iv.next.i72
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !71
  %.not.i73 = icmp ugt i32 %i.bt, %i.bq
  br i1 %.not.i73, label %bb.q, label %.lr.ph.i69, !llvm.loop !2

end_hunk_0
