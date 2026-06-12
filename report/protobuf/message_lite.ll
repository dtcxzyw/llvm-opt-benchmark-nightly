inline.NumInlined: 704
inline.NumDeleted: 344
begin_hunk_0_@_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE:bb.a
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aq, ptr noundef nonnull align 1 dereferenceable(64) %i.as, i64 64, i1 false)
  br label %bb.l

.lr.ph.i:                                         ; preds = %.preheader61.i, %.lr.ph.i
  %i.at = phi i64 [ %i.ay, %.lr.ph.i ], [ 80, %.preheader61.i ] ; 2 uses
  %.062.i = phi i64 [ %i.at, %.lr.ph.i ], [ 16, %.preheader61.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.av, i32 0, i32 3, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 %.062.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ax) #27, !srcloc !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.aw, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  %i.ay = add nuw nsw i64 %i.at, 64               ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.m
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !80

bb.l:                                             ; preds = %._crit_edge.i, %bb.k, %bb.i, %._crit_edge65.i, %bb.g, %bb.e
  %i.ba = load i64, ptr %2, align 1
  store i64 %i.ba, ptr %i.e, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.bb, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

.split8:                                          ; preds = %bb.a
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #31 ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !76  ; 2 uses
  %i.bf = icmp slt i8 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !51

bb.m:                                             ; preds = %.split8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30
  %i.bi = tail call noundef ptr %i.bh(ptr noundef %1, ptr noundef nonnull %i.bc, ptr noundef null), !inline_history !77
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %.split8
  %i.bj = icmp eq i8 %i.be, 0
  %i.bk = icmp ult i32 %i.a, 33                   ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.o
  %i.bn = icmp ult i32 %i.a, 65
  br i1 %i.bn, label %bb.r, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.q
  %i.bo = icmp ugt i32 %i.a, 80
  br i1 %i.bo, label %.lr.ph64.i16, label %._crit_edge65.i15

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.br, i8 0, i64 32, i1 false)
  br label %bb.w

._crit_edge65.i15:                                ; preds = %.lr.ph64.i16, %.preheader.i14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bt, i8 0, i64 64, i1 false)
  br label %bb.w

.lr.ph64.i16:                                     ; preds = %.preheader.i14, %.lr.ph64.i16
  %i.bu = phi i64 [ %i.bx, %.lr.ph64.i16 ], [ 80, %.preheader.i14 ] ; 2 uses
  %.05563.i17 = phi i64 [ %i.bu, %.lr.ph64.i16 ], [ 16, %.preheader.i14 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.05563.i17 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bw) #27, !srcloc !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bv, i8 0, i64 64, i1 false)
  %i.bx = add nuw nsw i64 %i.bu, 64               ; 2 uses
  %i.by = icmp samesign ult i64 %i.bx, %i.b
  br i1 %i.by, label %.lr.ph64.i16, label %._crit_edge65.i15, !llvm.loop !79

bb.s:                                             ; preds = %bb.n
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) %i.cc, i64 16, i1 false)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp ult i32 %i.a, 65
  br i1 %i.cd, label %bb.v, label %.preheader61.i9

.preheader61.i9:                                  ; preds = %bb.u
  %i.ce = icmp ugt i32 %i.a, 80
  br i1 %i.ce, label %.lr.ph.i12, label %._crit_edge.i10

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cf, ptr noundef nonnull align 1 dereferenceable(16) %i.cg, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -32
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ci, ptr noundef nonnull align 1 dereferenceable(32) %i.ck, i64 32, i1 false)
  br label %bb.w

._crit_edge.i10:                                  ; preds = %.lr.ph.i12, %.preheader61.i9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.b
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -64
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cm, ptr noundef nonnull align 1 dereferenceable(64) %i.co, i64 64, i1 false)
  br label %bb.w

.lr.ph.i12:                                       ; preds = %.preheader61.i9, %.lr.ph.i12
  %i.cp = phi i64 [ %i.cu, %.lr.ph.i12 ], [ 80, %.preheader61.i9 ] ; 2 uses
  %.062.i13 = phi i64 [ %i.cp, %.lr.ph.i12 ], [ 16, %.preheader61.i9 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %.062.i13 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.cr, i32 0, i32 3, i32 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.062.i13 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 64
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ct) #27, !srcloc !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cs, ptr noundef nonnull align 1 dereferenceable(64) %i.cq, i64 64, i1 false)
  %i.cu = add nuw nsw i64 %i.cp, 64               ; 2 uses
  %i.cv = icmp samesign ult i64 %i.cu, %i.b
  br i1 %i.cv, label %.lr.ph.i12, label %._crit_edge.i10, !llvm.loop !80

bb.w:                                             ; preds = %._crit_edge.i10, %bb.v, %bb.t, %._crit_edge65.i15, %bb.r, %bb.p
  %i.cw = load i64, ptr %2, align 1
  store i64 %i.cw, ptr %i.bc, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.cx, align 1
  br label %_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal14MessageCreator12PlacementNewINS0_11MessageLiteEEEPT_PKS5_S8_PvPNS0_5ArenaE.exit: ; preds = %bb.w, %bb.m, %bb.l, %bb.b
  %phi.call = phi ptr [ %i.e, %bb.l ], [ %i.k, %bb.b ], [ %i.bi, %bb.m ], [ %i.bc, %bb.w ]
  ret ptr %phi.call
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf11MessageLite14_InternalParseEPKcPNS0_8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !59 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !59
  br label %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit

_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit: ; preds = %bb.a, %bb.b
  %.0.i3 = phi ptr [ %i.l, %bb.b ], [ %i.f, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i3, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit
  %.0 = phi ptr [ %1, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %i.av, %bb.f ] ; 5 uses
  %.0.i = phi ptr [ %i.m, %_ZNK6google8protobuf11MessageLite15GetTcParseTableEv.exit ], [ %i.ag, %bb.f ] ; 4 uses
  %i.r = load i32, ptr %i.n, align 4, !tbaa !17
  %i.s = load ptr, ptr %2, align 8, !tbaa !21
  %i.t = icmp ult ptr %.0, %i.s
  br i1 %i.t, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.v = ptrtoint ptr %.0 to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32                    ; 3 uses
  %i.z = load i32, ptr %i.p, align 4, !tbaa !19
  %i.aa = icmp eq i32 %i.z, %i.y
  br i1 %i.aa, label %3, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

3:                                                ; preds = %bb.d
  %4 = icmp sgt i32 %i.y, 0
  br i1 %4, label %bb.e, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.e:                                             ; preds = %3
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = icmp eq ptr %i.ac, null
  %spec.select = select i1 %i.ad, ptr null, ptr %.0
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.d
  %i.ae = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.y, i32 noundef %i.r) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ae, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ae, 1
  %i.af = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.af, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9: ; preds = %bb.c, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.212 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0, %bb.c ] ; 2 uses
  %i.ag = tail call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i) #28, !srcloc !25 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -56
  %.0.copyload.i.i = load i16, ptr %.212, align 1 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -48
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !26
  %i.ak = zext i8 %i.aj to i16
  %i.al = and i16 %.0.copyload.i.i, %i.ak
  %i.am = zext nneg i16 %i.al to i64              ; 2 uses
  %i.an = and i64 %i.am, 7
  %i.ao = icmp eq i64 %i.an, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = lshr exact i64 %i.am, 3
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ar, align 8, !tbaa !30
  %i.as = zext i16 %.0.copyload.i.i to i64
  %i.at = xor i64 %.sroa.01.0.copyload.i, %i.as
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.av = tail call noundef ptr %i.au(ptr noundef nonnull %0, ptr noundef nonnull %.212, ptr noundef nonnull %2, i64 %i.at, ptr noundef nonnull %i.ah, i64 noundef 0), !inline_history !34 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9
  %i.ax = load i32, ptr %i.q, align 8, !tbaa !35
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.c, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !llvm.loop !36

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %bb.f, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.e, %3
  %.1 = phi ptr [ %spec.select, %bb.e ], [ %.0, %3 ], [ %i.av, %bb.f ], [ null, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9 ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %bb.e ], [ %.0.i, %3 ], [ %i.ag, %bb.f ], [ %i.ag, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread9 ], [ %.0.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.1.i, i64 -47
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = and i8 %i.az, 1
  %.not14.i = icmp eq i8 %i.ba, 0
  br i1 %.not14.i, label %_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit, label %bb.g, !prof !24

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread
  %i.bb = getelementptr inbounds i8, ptr %.1.i, i64 -16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bd = tail call noundef ptr %i.bc(ptr noundef nonnull %0, ptr noundef %.1, ptr noundef nonnull %2), !inline_history !39
  br label %_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit

_ZN6google8protobuf8internal8TcParser9ParseLoopEPNS0_11MessageLiteEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBaseE.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, %bb.g
  %.013.i = phi ptr [ %i.bd, %bb.g ], [ %.1, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread ]
  ret ptr %.013.i
}

; Function Attrs: mustprogress uwtable
define hidden { i64, ptr } @_ZNK6google8protobuf6TypeId4nameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i8, ptr %i.b, align 4, !tbaa !70, !range !71, !noundef !72
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = tail call { i64, ptr } %i.g(ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #27
  %i.k = insertvalue { i64, ptr } poison, i64 %i.j, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.l, %bb.c ], [ %i.h, %bb.b ]
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.g = load i8, ptr %i.f, align 4, !tbaa !70, !range !71, !noundef !72
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !83
  tail call void %i.l(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.c

.noexc.i:                                         ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 50, ptr %i.a, align 8, !tbaa !86
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !87
  %i.o = load i64, ptr %i.a, align 8, !tbaa !86   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.n, ptr noundef nonnull align 1 dereferenceable(50) @.str.4, i64 50, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 0, ptr %i.q, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.c

bb.c:                                             ; preds = %.noexc.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf11MessageLite11DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.f = load i8, ptr %i.e, align 4, !tbaa !70, !range !71, !noundef !72
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  tail call void %i.k(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i64 17, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.5, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.m = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !89
  invoke void @_ZN4absl12lts_2025051213AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_NS0_3HexE(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %i.m, i64 12289)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %4, align 8, !tbaa !87
  %i.r = load i64, ptr %i.p, align 8, !tbaa !89
  store i64 %i.r, ptr %3, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.q, ptr %i.s, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.o, align 8, !tbaa !30
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #32
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.o
  br i1 %i.z, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %bb.f
  %i.aa = load i64, ptr %i.o, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #32
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit6

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit, %bb.b
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6google8protobuf11MessageLite13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !91
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !92
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  ret i32 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite18CheckFieldPresenceERKNS0_8internal12ParseContextERKS1_NS1_10ParseFlagsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %2, 2
end_hunk_0
