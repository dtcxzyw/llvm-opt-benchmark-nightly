inline.NumInlined: 5240
inline.NumDeleted: 880
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser9FastV32R1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 10 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  %i.j = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.n, %bb.f ], [ %1, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.047.pn.i = phi ptr [ %.047.i, %bb.d ], [ %.1.i, %bb.e ] ; 2 uses
  %.046.i = phi i32 [ 10, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %.1.i, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.k, -1
  %.not53.i = icmp eq i32 %.046.i, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  %i.l = add nsw i32 %.046.i, -1
  br i1 %or.cond.i, label %.critedge.i, label %bb.e, !llvm.loop !231

.critedge.i:                                      ; preds = %bb.e
  %i.m = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 2 ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.j
  br i1 %i.o, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %.critedge.i
  %i.p = load i8, ptr %i.n, align 1, !tbaa !39
  %i.q = icmp eq i8 %i.p, %i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.q, label %bb.d, label %.critedge2.i, !llvm.loop !232

.critedge2.i:                                     ; preds = %bb.f, %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !218  ; 3 uses
  %i.t = add nsw i32 %i.s, %i.m                   ; 3 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.v = and i32 %i.u, -2                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge2.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = and i32 %i.u, 1                         ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i: ; preds = %bb.j, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i ]
  %i.al = icmp sgt i32 %i.t, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit, !prof !7

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ag, i32 noundef %i.s, i32 noundef %i.t)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre59 = load i32, ptr %i.r, align 4, !tbaa !218 ; 2 uses
  %.pre60 = and i32 %.pre, 1
  %.pre61 = add nsw i32 %.pre59, %i.m
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i, %bb.k
  %.pre-phi62 = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre61, %bb.k ]
  %.pre-phi = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre60, %bb.k ]
  %i.am = phi i32 [ %i.s, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre59, %bb.k ]
  %i.an = icmp eq i32 %.pre-phi, 0
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i = select i1 %i.an, ptr %i.h, ptr %i.aq
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi62, ptr %i.r, align 4, !tbaa !218
  %i.ar = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.aa, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %i.cu, %bb.aa ]
  %.044.i = phi ptr [ %i.ar, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %i.ct, %bb.aa ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %.0.i.i.ph, %bb.aa ] ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !39  ; 2 uses
  %i.av = sext i8 %i.au to i64                    ; 2 uses
  %i.aw = icmp sgt i8 %i.au, -1
  br i1 %i.aw, label %bb.aa, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !39
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 7) ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.x, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.be = sext i8 %i.bd to i64
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 -128, i64 14) ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.w, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.bj = sext i8 %i.bi to i64
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 -128, i64 21)
  %i.bl = and i64 %i.bk, %i.ba                    ; 9 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  br i1 %i.bm, label %bb.w, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !39
  %i.bp = sext i8 %i.bo to i64
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 -128, i64 28)
  %i.br = and i64 %i.bq, %i.bf                    ; 8 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.w, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !39
  %.not.i.i = icmp sgt i8 %i.bu, -1
  br i1 %.not.i.i, label %bb.w, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !39
  %.not8.i.i = icmp sgt i8 %i.bw, -1
  br i1 %.not8.i.i, label %bb.w, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !39
  %.not9.i.i = icmp sgt i8 %i.by, -1
  br i1 %.not9.i.i, label %bb.w, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not10.i.i = icmp sgt i8 %i.ca, -1
  br i1 %.not10.i.i, label %bb.w, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.cc = load i8, ptr %i.bz, align 1, !tbaa !39  ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  %.not11.i.i = icmp sgt i8 %i.cc, -1
  br i1 %.not11.i.i, label %bb.w, label %bb.y, !prof !29

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.052 = phi ptr [ %i.bc, %bb.n ], [ %i.bh, %bb.o ], [ %i.bn, %bb.p ], [ %i.bt, %bb.q ], [ %i.bv, %bb.r ], [ %i.bx, %bb.s ], [ %i.bz, %bb.t ], [ %i.cb, %bb.u ], [ %i.cb, %bb.v ]
  %.038 = phi i64 [ %i.bf, %bb.n ], [ %i.bf, %bb.o ], [ %i.br, %bb.p ], [ %i.br, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ %i.br, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %.0 = phi i64 [ %i.ba, %bb.n ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %bb.q ], [ %i.bl, %bb.r ], [ %i.bl, %bb.s ], [ %i.bl, %bb.t ], [ %i.bl, %bb.u ], [ %i.bl, %bb.v ]
  %i.ce = and i64 %.0, %.038
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m
  %.153 = phi ptr [ %i.ax, %bb.m ], [ %.052, %bb.w ]
  %.1 = phi i64 [ %i.ba, %bb.m ], [ %i.ce, %bb.w ]
  %i.cf = and i64 %.1, %i.av
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !216
  %i.ch = and i32 %i.cg, 1
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i.i = select i1 %i.ci, ptr %i.h, ptr %i.cj
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ck = ptrtoint ptr %.044.i to i64
  %i.cl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 2
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = load i32, ptr %i.r, align 4, !tbaa !218
  %i.cq = icmp sgt i32 %i.cp, %i.co
  br i1 %i.cq, label %bb.z, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.z:                                             ; preds = %bb.y
  store i32 %i.co, ptr %i.r, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %bb.y, %bb.z
  %i.cr = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cr

bb.aa:                                            ; preds = %bb.x, %bb.l
  %.039.ph = phi i64 [ %i.av, %bb.l ], [ %i.cf, %bb.x ]
  %.0.i.i.ph = phi ptr [ %i.at, %bb.l ], [ %.153, %bb.x ] ; 5 uses
  %i.cs = trunc i64 %.039.ph to i32
  store i32 %i.cs, ptr %.044.i, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  %i.cu = add nuw i32 %.045.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, %indvars.iv
  br i1 %exitcond.not, label %bb.ab, label %bb.l, !llvm.loop !233

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load ptr, ptr %2, align 8, !tbaa !108
  %i.cw = icmp ult ptr %.0.i.i.ph, %i.cv
  br i1 %i.cw, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i16, ptr %4, align 8, !tbaa !8
  %i.cy = trunc i64 %i.f to i32
  %i.cz = zext i16 %i.cx to i64
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dc = or i32 %i.db, %i.cy
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !3
  ret ptr %.0.i.i.ph

bb.ad:                                            ; preds = %bb.ab
  %.0.copyload.i.i = load i16, ptr %.0.i.i.ph, align 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !112
  %i.df = zext i8 %i.de to i16
  %i.dg = and i16 %.0.copyload.i.i, %i.df
  %i.dh = zext nneg i16 %i.dg to i64              ; 2 uses
  %i.di = and i64 %i.dh, 7
  %i.dj = icmp eq i64 %i.di, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = lshr exact i64 %i.dh, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dn, align 8, !tbaa !39
  %i.do = zext i16 %.0.copyload.i.i to i64
  %i.dp = xor i64 %.sroa.01.0.copyload.i, %i.do
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !113
  %i.dr = musttail call noundef ptr %i.dq(ptr noundef %0, ptr noundef nonnull %.0.i.i.ph, ptr noundef nonnull %2, i64 %i.dp, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.dr
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastV32R2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 10 uses
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.i = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.o, %bb.e ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.p, %bb.e ], [ %1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.047.i, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %.not52.i60 = icmp sgt i8 %i.k, -1
  br i1 %.not52.i60, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.046.i62 = phi i32 [ %i.l, %.lr.ph ], [ 10, %bb.d ]
  %.1.i61 = phi ptr [ %i.m, %.lr.ph ], [ %i.j, %bb.d ]
  %i.l = add nsw i32 %.046.i62, -1                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i61, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.n, -1
  %.not53.i = icmp eq i32 %i.l, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph, !llvm.loop !234

.critedge.i:                                      ; preds = %.lr.ph, %bb.d
  %.1.i.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.m, %.lr.ph ]
  %i.o = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 1 ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.critedge.i
  %.0.copyload.i.i5 = load i16, ptr %i.p, align 1
  %i.r = icmp eq i16 %.0.copyload.i.i5, %.0.copyload.i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.r, label %bb.d, label %.critedge2.i, !llvm.loop !235

.critedge2.i:                                     ; preds = %bb.e, %.critedge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !218  ; 3 uses
  %i.u = add nsw i32 %i.t, %i.o                   ; 3 uses
  %i.v = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.w = and i32 %i.v, -2                         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge2.i
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = and i32 %i.v, 1                         ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i: ; preds = %bb.i, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i
  %i.al = phi i32 [ %i.ak, %bb.i ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i ]
  %i.am = icmp sgt i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit, !prof !7

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef %i.t, i32 noundef %i.u)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre65 = load i32, ptr %i.s, align 4, !tbaa !218 ; 2 uses
  %.pre66 = and i32 %.pre, 1
  %.pre67 = add nsw i32 %.pre65, %i.o
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i, %bb.j
  %.pre-phi68 = phi i32 [ %i.u, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre67, %bb.j ]
  %.pre-phi = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre66, %bb.j ]
  %i.an = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i ], [ %.pre65, %bb.j ]
  %i.ao = icmp eq i32 %.pre-phi, 0
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.0.v.i.i.i = select i1 %i.ao, ptr %i.h, ptr %i.ar
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi68, ptr %i.s, align 4, !tbaa !218
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.z, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %i.cv, %bb.z ]
  %.044.i = phi ptr [ %i.as, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %i.cu, %bb.z ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit ], [ %.0.i.i.ph, %bb.z ] ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !tbaa !39  ; 2 uses
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = icmp sgt i8 %i.av, -1
  br i1 %i.ax, label %bb.z, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.az = load i8, ptr %i.au, align 1, !tbaa !39
  %i.ba = sext i8 %i.az to i64
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 -128, i64 7) ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.w, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.bf = sext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 14) ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !39
  %i.bk = sext i8 %i.bj to i64
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 -128, i64 21)
  %i.bm = and i64 %i.bl, %i.bb                    ; 9 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.v, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !39
  %i.bq = sext i8 %i.bp to i64
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 -128, i64 28)
  %i.bs = and i64 %i.br, %i.bg                    ; 8 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.v, label %bb.p, !prof !29

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !39
  %.not.i.i = icmp sgt i8 %i.bv, -1
  br i1 %.not.i.i, label %bb.v, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !39
  %.not8.i.i = icmp sgt i8 %i.bx, -1
  br i1 %.not8.i.i, label %bb.v, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !39
  %.not9.i.i = icmp sgt i8 %i.bz, -1
  br i1 %.not9.i.i, label %bb.v, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !39
  %.not10.i.i = icmp sgt i8 %i.cb, -1
  br i1 %.not10.i.i, label %bb.v, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !39  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %bb.v, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %.not11.i.i = icmp sgt i8 %i.cd, -1
  br i1 %.not11.i.i, label %bb.v, label %bb.x, !prof !29

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.054 = phi ptr [ %i.bd, %bb.m ], [ %i.bi, %bb.n ], [ %i.bo, %bb.o ], [ %i.bu, %bb.p ], [ %i.bw, %bb.q ], [ %i.by, %bb.r ], [ %i.ca, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %bb.u ]
  %.040 = phi i64 [ %i.bg, %bb.m ], [ %i.bg, %bb.n ], [ %i.bs, %bb.o ], [ %i.bs, %bb.p ], [ %i.bs, %bb.q ], [ %i.bs, %bb.r ], [ %i.bs, %bb.s ], [ %i.bs, %bb.t ], [ %i.bs, %bb.u ]
  %.0 = phi i64 [ %i.bb, %bb.m ], [ %i.bm, %bb.n ], [ %i.bm, %bb.o ], [ %i.bm, %bb.p ], [ %i.bm, %bb.q ], [ %i.bm, %bb.r ], [ %i.bm, %bb.s ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ]
  %i.cf = and i64 %.0, %.040
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l
  %.155 = phi ptr [ %i.ay, %bb.l ], [ %.054, %bb.v ]
  %.1 = phi i64 [ %i.bb, %bb.l ], [ %i.cf, %bb.v ]
  %i.cg = and i64 %.1, %i.aw
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !216
  %i.ci = and i32 %i.ch, 1
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = load ptr, ptr %i.aq, align 8
  %.0.v.i.i.i.i = select i1 %i.cj, ptr %i.h, ptr %i.ck
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cl = ptrtoint ptr %.044.i to i64
  %i.cm = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 2
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = load i32, ptr %i.s, align 4, !tbaa !218
  %i.cr = icmp sgt i32 %i.cq, %i.cp
  br i1 %i.cr, label %bb.y, label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

bb.y:                                             ; preds = %bb.x
  store i32 %i.cp, ptr %i.s, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIjE8TruncateEi.exit: ; preds = %bb.x, %bb.y
  %i.cs = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cs

bb.z:                                             ; preds = %bb.w, %bb.k
  %.041.ph = phi i64 [ %i.aw, %bb.k ], [ %i.cg, %bb.w ]
  %.0.i.i.ph = phi ptr [ %i.au, %bb.k ], [ %.155, %bb.w ] ; 5 uses
  %i.ct = trunc i64 %.041.ph to i32
  store i32 %i.ct, ptr %.044.i, align 4, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  %i.cv = add nuw i32 %.045.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %indvars.iv
  br i1 %exitcond.not, label %bb.aa, label %bb.k, !llvm.loop !236

bb.aa:                                            ; preds = %bb.z
  %i.cw = load ptr, ptr %2, align 8, !tbaa !108
  %i.cx = icmp ult ptr %.0.i.i.ph, %i.cw
  br i1 %i.cx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i16, ptr %4, align 8, !tbaa !8
  %i.cz = trunc i64 %i.f to i32
  %i.da = zext i16 %i.cy to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = or i32 %i.dc, %i.cz
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !3
  ret ptr %.0.i.i.ph

bb.ac:                                            ; preds = %bb.aa
  %.0.copyload.i.i6 = load i16, ptr %.0.i.i.ph, align 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !112
  %i.dg = zext i8 %i.df to i16
  %i.dh = and i16 %.0.copyload.i.i6, %i.dg
  %i.di = zext nneg i16 %i.dh to i64              ; 2 uses
  %i.dj = and i64 %i.di, 7
  %i.dk = icmp eq i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = lshr exact i64 %i.di, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.do, align 8, !tbaa !39
  %i.dp = zext i16 %.0.copyload.i.i6 to i64
  %i.dq = xor i64 %.sroa.01.0.copyload.i, %i.dp
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !113
  %i.ds = musttail call noundef ptr %i.dr(ptr noundef %0, ptr noundef nonnull %.0.i.i.ph, ptr noundef nonnull %2, i64 %i.dq, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.ds
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastV64R1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 9 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  %i.j = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.n, %bb.f ], [ %1, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.047.pn.i = phi ptr [ %.047.i, %bb.d ], [ %.1.i, %bb.e ] ; 2 uses
  %.046.i = phi i32 [ 10, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %.1.i, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.k, -1
  %.not53.i = icmp eq i32 %.046.i, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  %i.l = add nsw i32 %.046.i, -1
  br i1 %or.cond.i, label %.critedge.i, label %bb.e, !llvm.loop !237

.critedge.i:                                      ; preds = %bb.e
  %i.m = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 2 ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.j
  br i1 %i.o, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %.critedge.i
  %i.p = load i8, ptr %i.n, align 1, !tbaa !39
  %i.q = icmp eq i8 %i.p, %i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.q, label %bb.d, label %.critedge2.i, !llvm.loop !238

.critedge2.i:                                     ; preds = %bb.f, %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !218  ; 3 uses
  %i.t = add nsw i32 %i.s, %i.m                   ; 3 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.v = and i32 %i.u, -2                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge2.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = and i32 %i.u, 1                         ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i: ; preds = %bb.j, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ 1, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i ]
  %i.al = icmp sgt i32 %i.t, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit, !prof !7

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ag, i32 noundef %i.s, i32 noundef %i.t)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre73 = load i32, ptr %i.r, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre73, %i.m
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i, %bb.k
  %.pre-phi76 = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i ], [ %.pre75, %bb.k ] ; 2 uses
  %.pre-phi = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i ], [ %.pre74, %bb.k ]
  %i.am = phi i32 [ %i.s, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i ], [ %.pre73, %bb.k ]
  %i.an = icmp eq i32 %.pre-phi, 0                ; 2 uses
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i = select i1 %i.an, ptr %i.h, ptr %i.aq
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi76, ptr %i.r, align 4, !tbaa !218
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.ab, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit ], [ %i.di, %bb.ab ]
  %.044.i = phi ptr [ %i.ar, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit ], [ %i.dh, %bb.ab ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit ], [ %.0.i6.ph, %bb.ab ] ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !39  ; 2 uses
  %i.av = sext i8 %i.au to i64                    ; 2 uses
  %i.aw = icmp sgt i8 %i.au, -1
  br i1 %i.aw, label %bb.ab, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !39
  %i.az = sext i8 %i.ay to i64
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser9FastZ32R1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 10 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  %i.j = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.n, %bb.f ], [ %1, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.047.pn.i = phi ptr [ %.047.i, %bb.d ], [ %.1.i, %bb.e ] ; 2 uses
  %.046.i = phi i32 [ 10, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %.1.i, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.k, -1
  %.not53.i = icmp eq i32 %.046.i, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  %i.l = add nsw i32 %.046.i, -1
  br i1 %or.cond.i, label %.critedge.i, label %bb.e, !llvm.loop !243

.critedge.i:                                      ; preds = %bb.e
  %i.m = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 2 ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.j
  br i1 %i.o, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %.critedge.i
  %i.p = load i8, ptr %i.n, align 1, !tbaa !39
  %i.q = icmp eq i8 %i.p, %i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.q, label %bb.d, label %.critedge2.i, !llvm.loop !244

.critedge2.i:                                     ; preds = %bb.f, %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !218  ; 3 uses
  %i.t = add nsw i32 %i.s, %i.m                   ; 3 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.v = and i32 %i.u, -2                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge2.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = and i32 %i.u, 1                         ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i: ; preds = %bb.j, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i ]
  %i.al = icmp sgt i32 %i.t, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit, !prof !7

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ag, i32 noundef %i.s, i32 noundef %i.t)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre61 = load i32, ptr %i.r, align 4, !tbaa !218 ; 2 uses
  %.pre62 = and i32 %.pre, 1
  %.pre63 = add nsw i32 %.pre61, %i.m
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, %bb.k
  %.pre-phi64 = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre63, %bb.k ]
  %.pre-phi = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre62, %bb.k ]
  %i.am = phi i32 [ %i.s, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre61, %bb.k ]
  %i.an = icmp eq i32 %.pre-phi, 0
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i = select i1 %i.an, ptr %i.h, ptr %i.aq
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi64, ptr %i.r, align 4, !tbaa !218
  %i.ar = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.aa, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %i.cy, %bb.aa ]
  %.044.i = phi ptr [ %i.ar, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %i.cx, %bb.aa ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %.0.i6.ph, %bb.aa ] ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !39  ; 2 uses
  %i.av = sext i8 %i.au to i64                    ; 2 uses
  %i.aw = icmp sgt i8 %i.au, -1
  br i1 %i.aw, label %bb.aa, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !39
  %i.az = sext i8 %i.ay to i64
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 -128, i64 7) ; 4 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.x, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !39
  %i.be = sext i8 %i.bd to i64
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 -128, i64 14) ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.w, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.bi = load i8, ptr %i.bc, align 1, !tbaa !39
  %i.bj = sext i8 %i.bi to i64
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 -128, i64 21)
  %i.bl = and i64 %i.bk, %i.ba                    ; 9 uses
  %i.bm = icmp sgt i64 %i.bl, -1
  br i1 %i.bm, label %bb.w, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.bo = load i8, ptr %i.bh, align 1, !tbaa !39
  %i.bp = sext i8 %i.bo to i64
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 -128, i64 28)
  %i.br = and i64 %i.bq, %i.bf                    ; 8 uses
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.w, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !39
  %.not.i5 = icmp sgt i8 %i.bu, -1
  br i1 %.not.i5, label %bb.w, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !39
  %.not8.i = icmp sgt i8 %i.bw, -1
  br i1 %.not8.i, label %bb.w, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !39
  %.not9.i = icmp sgt i8 %i.by, -1
  br i1 %.not9.i, label %bb.w, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !39
  %.not10.i = icmp sgt i8 %i.ca, -1
  br i1 %.not10.i, label %bb.w, label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.cc = load i8, ptr %i.bz, align 1, !tbaa !39  ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %bb.w, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  %.not11.i = icmp sgt i8 %i.cc, -1
  br i1 %.not11.i, label %bb.w, label %bb.y, !prof !29

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.054 = phi ptr [ %i.bc, %bb.n ], [ %i.bh, %bb.o ], [ %i.bn, %bb.p ], [ %i.bt, %bb.q ], [ %i.bv, %bb.r ], [ %i.bx, %bb.s ], [ %i.bz, %bb.t ], [ %i.cb, %bb.u ], [ %i.cb, %bb.v ]
  %.040 = phi i64 [ %i.bf, %bb.n ], [ %i.bf, %bb.o ], [ %i.br, %bb.p ], [ %i.br, %bb.q ], [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ %i.br, %bb.t ], [ %i.br, %bb.u ], [ %i.br, %bb.v ]
  %.0 = phi i64 [ %i.ba, %bb.n ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %bb.q ], [ %i.bl, %bb.r ], [ %i.bl, %bb.s ], [ %i.bl, %bb.t ], [ %i.bl, %bb.u ], [ %i.bl, %bb.v ]
  %i.ce = and i64 %.0, %.040
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m
  %.155 = phi ptr [ %i.ax, %bb.m ], [ %.054, %bb.w ]
  %.1 = phi i64 [ %i.ba, %bb.m ], [ %i.ce, %bb.w ]
  %i.cf = and i64 %.1, %i.av
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.cg = load i32, ptr %i.h, align 8, !tbaa !216
  %i.ch = and i32 %i.cg, 1
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i.i = select i1 %i.ci, ptr %i.h, ptr %i.cj
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.ck = ptrtoint ptr %.044.i to i64
  %i.cl = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 2
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = load i32, ptr %i.r, align 4, !tbaa !218
  %i.cq = icmp sgt i32 %i.cp, %i.co
  br i1 %i.cq, label %bb.z, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.z:                                             ; preds = %bb.y
  store i32 %i.co, ptr %i.r, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit: ; preds = %bb.y, %bb.z
  %i.cr = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cr

bb.aa:                                            ; preds = %bb.x, %bb.l
  %.041.ph = phi i64 [ %i.av, %bb.l ], [ %i.cf, %bb.x ]
  %.0.i6.ph = phi ptr [ %i.at, %bb.l ], [ %.155, %bb.x ] ; 5 uses
  %i.cs = trunc i64 %.041.ph to i32               ; 2 uses
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = and i32 %i.cs, 1
  %i.cv = sub nsw i32 0, %i.cu
  %i.cw = xor i32 %i.ct, %i.cv
  store i32 %i.cw, ptr %.044.i, align 4, !tbaa !3
  %i.cx = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  %i.cy = add nuw i32 %.045.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %indvars.iv
  br i1 %exitcond.not, label %bb.ab, label %bb.l, !llvm.loop !245

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr %2, align 8, !tbaa !108
  %i.da = icmp ult ptr %.0.i6.ph, %i.cz
  br i1 %i.da, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.db = load i16, ptr %4, align 8, !tbaa !8
  %i.dc = trunc i64 %i.f to i32
  %i.dd = zext i16 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = or i32 %i.df, %i.dc
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !3
  ret ptr %.0.i6.ph

bb.ad:                                            ; preds = %bb.ab
  %.0.copyload.i.i = load i16, ptr %.0.i6.ph, align 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !112
  %i.dj = zext i8 %i.di to i16
  %i.dk = and i16 %.0.copyload.i.i, %i.dj
  %i.dl = zext nneg i16 %i.dk to i64              ; 2 uses
  %i.dm = and i64 %i.dl, 7
  %i.dn = icmp eq i64 %i.dm, 0
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = lshr exact i64 %i.dl, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.do ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dr, align 8, !tbaa !39
  %i.ds = zext i16 %.0.copyload.i.i to i64
  %i.dt = xor i64 %.sroa.01.0.copyload.i, %i.ds
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !113
  %i.dv = musttail call noundef ptr %i.du(ptr noundef %0, ptr noundef nonnull %.0.i6.ph, ptr noundef nonnull %2, i64 %i.dt, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.dv
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastZ32R2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 10 uses
  %.0.copyload.i.i = load i16, ptr %1, align 1
  %i.i = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.o, %bb.e ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.p, %bb.e ], [ %1, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.047.i, i64 2 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  %.not52.i62 = icmp sgt i8 %i.k, -1
  br i1 %.not52.i62, label %.critedge.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.046.i64 = phi i32 [ %i.l, %.lr.ph ], [ 10, %bb.d ]
  %.1.i63 = phi ptr [ %i.m, %.lr.ph ], [ %i.j, %bb.d ]
  %i.l = add nsw i32 %.046.i64, -1                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1.i63, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.n, -1
  %.not53.i = icmp eq i32 %i.l, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  br i1 %or.cond.i, label %.critedge.i, label %.lr.ph, !llvm.loop !246

.critedge.i:                                      ; preds = %.lr.ph, %bb.d
  %.1.i.lcssa = phi ptr [ %i.j, %bb.d ], [ %i.m, %.lr.ph ]
  %i.o = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 1 ; 3 uses
  %i.q = icmp ult ptr %i.p, %i.i
  br i1 %i.q, label %bb.e, label %.critedge2.i

bb.e:                                             ; preds = %.critedge.i
  %.0.copyload.i.i7 = load i16, ptr %i.p, align 1
  %i.r = icmp eq i16 %.0.copyload.i.i7, %.0.copyload.i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.r, label %bb.d, label %.critedge2.i, !llvm.loop !247

.critedge2.i:                                     ; preds = %bb.e, %.critedge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !218  ; 3 uses
  %i.u = add nsw i32 %i.t, %i.o                   ; 3 uses
  %i.v = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.w = and i32 %i.v, -2                         ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i, label %bb.f

bb.f:                                             ; preds = %.critedge2.i
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds i8, ptr %i.h, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !27  ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.aa to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = and i32 %i.v, 1                         ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.ah, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i: ; preds = %bb.i, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i
  %i.al = phi i32 [ %i.ak, %bb.i ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i ]
  %i.am = icmp sgt i32 %i.u, %i.al
  br i1 %i.am, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit, !prof !7

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ah, i32 noundef %i.t, i32 noundef %i.u)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre67 = load i32, ptr %i.s, align 4, !tbaa !218 ; 2 uses
  %.pre68 = and i32 %.pre, 1
  %.pre69 = add nsw i32 %.pre67, %i.o
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, %bb.j
  %.pre-phi70 = phi i32 [ %i.u, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre69, %bb.j ]
  %.pre-phi = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre68, %bb.j ]
  %i.an = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ], [ %.pre67, %bb.j ]
  %i.ao = icmp eq i32 %.pre-phi, 0
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.0.v.i.i.i = select i1 %i.ao, ptr %i.h, ptr %i.ar
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi70, ptr %i.s, align 4, !tbaa !218
  %i.as = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.z, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %i.cz, %bb.z ]
  %.044.i = phi ptr [ %i.as, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %i.cy, %bb.z ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit ], [ %.0.i6.ph, %bb.z ] ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 2 uses
  %i.av = load i8, ptr %i.at, align 1, !tbaa !39  ; 2 uses
  %i.aw = sext i8 %i.av to i64                    ; 2 uses
  %i.ax = icmp sgt i8 %i.av, -1
  br i1 %i.ax, label %bb.z, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.az = load i8, ptr %i.au, align 1, !tbaa !39
  %i.ba = sext i8 %i.az to i64
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 -128, i64 7) ; 4 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  br i1 %i.bc, label %bb.w, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 5 ; 2 uses
  %i.be = load i8, ptr %i.ay, align 1, !tbaa !39
  %i.bf = sext i8 %i.be to i64
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 -128, i64 14) ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i, i64 6 ; 2 uses
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !39
  %i.bk = sext i8 %i.bj to i64
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 -128, i64 21)
  %i.bm = and i64 %i.bl, %i.bb                    ; 9 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  br i1 %i.bn, label %bb.v, label %bb.o, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 7 ; 2 uses
  %i.bp = load i8, ptr %i.bi, align 1, !tbaa !39
  %i.bq = sext i8 %i.bp to i64
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 -128, i64 28)
  %i.bs = and i64 %i.br, %i.bg                    ; 8 uses
  %i.bt = icmp sgt i64 %i.bs, -1
  br i1 %i.bt, label %bb.v, label %bb.p, !prof !29

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !39
  %.not.i5 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i5, label %bb.v, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 9 ; 2 uses
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !39
  %.not8.i = icmp sgt i8 %i.bx, -1
  br i1 %.not8.i, label %bb.v, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i, i64 10 ; 2 uses
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !39
  %.not9.i = icmp sgt i8 %i.bz, -1
  br i1 %.not9.i, label %bb.v, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 11 ; 2 uses
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !39
  %.not10.i = icmp sgt i8 %i.cb, -1
  br i1 %.not10.i, label %bb.v, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !39  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %bb.v, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %.not11.i = icmp sgt i8 %i.cd, -1
  br i1 %.not11.i, label %bb.v, label %bb.x, !prof !29

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.056 = phi ptr [ %i.bd, %bb.m ], [ %i.bi, %bb.n ], [ %i.bo, %bb.o ], [ %i.bu, %bb.p ], [ %i.bw, %bb.q ], [ %i.by, %bb.r ], [ %i.ca, %bb.s ], [ %i.cc, %bb.t ], [ %i.cc, %bb.u ]
  %.042 = phi i64 [ %i.bg, %bb.m ], [ %i.bg, %bb.n ], [ %i.bs, %bb.o ], [ %i.bs, %bb.p ], [ %i.bs, %bb.q ], [ %i.bs, %bb.r ], [ %i.bs, %bb.s ], [ %i.bs, %bb.t ], [ %i.bs, %bb.u ]
  %.0 = phi i64 [ %i.bb, %bb.m ], [ %i.bm, %bb.n ], [ %i.bm, %bb.o ], [ %i.bm, %bb.p ], [ %i.bm, %bb.q ], [ %i.bm, %bb.r ], [ %i.bm, %bb.s ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ]
  %i.cf = and i64 %.0, %.042
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.l
  %.157 = phi ptr [ %i.ay, %bb.l ], [ %.056, %bb.v ]
  %.1 = phi i64 [ %i.bb, %bb.l ], [ %i.cf, %bb.v ]
  %i.cg = and i64 %.1, %i.aw
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.h, align 8, !tbaa !216
  %i.ci = and i32 %i.ch, 1
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = load ptr, ptr %i.aq, align 8
  %.0.v.i.i.i.i = select i1 %i.cj, ptr %i.h, ptr %i.ck
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  %i.cl = ptrtoint ptr %.044.i to i64
  %i.cm = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 2
  %i.cp = trunc i64 %i.co to i32                  ; 2 uses
  %i.cq = load i32, ptr %i.s, align 4, !tbaa !218
  %i.cr = icmp sgt i32 %i.cq, %i.cp
  br i1 %i.cr, label %bb.y, label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

bb.y:                                             ; preds = %bb.x
  store i32 %i.cp, ptr %i.s, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit

_ZN6google8protobuf13RepeatedFieldIiE8TruncateEi.exit: ; preds = %bb.x, %bb.y
  %i.cs = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr nonnull poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cs

bb.z:                                             ; preds = %bb.w, %bb.k
  %.043.ph = phi i64 [ %i.aw, %bb.k ], [ %i.cg, %bb.w ]
  %.0.i6.ph = phi ptr [ %i.au, %bb.k ], [ %.157, %bb.w ] ; 5 uses
  %i.ct = trunc i64 %.043.ph to i32               ; 2 uses
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = and i32 %i.ct, 1
  %i.cw = sub nsw i32 0, %i.cv
  %i.cx = xor i32 %i.cu, %i.cw
  store i32 %i.cx, ptr %.044.i, align 4, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %.044.i, i64 4
  %i.cz = add nuw i32 %.045.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.cz, %indvars.iv
  br i1 %exitcond.not, label %bb.aa, label %bb.k, !llvm.loop !248

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr %2, align 8, !tbaa !108
  %i.db = icmp ult ptr %.0.i6.ph, %i.da
  br i1 %i.db, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i16, ptr %4, align 8, !tbaa !8
  %i.dd = trunc i64 %i.f to i32
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = or i32 %i.dg, %i.dd
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  ret ptr %.0.i6.ph

bb.ac:                                            ; preds = %bb.aa
  %.0.copyload.i.i8 = load i16, ptr %.0.i6.ph, align 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !112
  %i.dk = zext i8 %i.dj to i16
  %i.dl = and i16 %.0.copyload.i.i8, %i.dk
  %i.dm = zext nneg i16 %i.dl to i64              ; 2 uses
  %i.dn = and i64 %i.dm, 7
  %i.do = icmp eq i64 %i.dn, 0
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = lshr exact i64 %i.dm, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dp ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ds, align 8, !tbaa !39
  %i.dt = zext i16 %.0.copyload.i.i8 to i64
  %i.du = xor i64 %.sroa.01.0.copyload.i, %i.dt
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !113
  %i.dw = musttail call noundef ptr %i.dv(ptr noundef %0, ptr noundef nonnull %.0.i6.ph, ptr noundef nonnull %2, i64 %i.du, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.dw
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser9FastZ64R1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 3 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 9 uses
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  %i.j = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.048.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.c ]
  %.047.i = phi ptr [ %i.n, %bb.f ], [ %1, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.047.pn.i = phi ptr [ %.047.i, %bb.d ], [ %.1.i, %bb.e ] ; 2 uses
  %.046.i = phi i32 [ 10, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %.1.i = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %.1.i, align 1, !tbaa !39
  %.not52.i = icmp sgt i8 %i.k, -1
  %.not53.i = icmp eq i32 %.046.i, 0
  %or.cond.i = select i1 %.not52.i, i1 true, i1 %.not53.i
  %i.l = add nsw i32 %.046.i, -1
  br i1 %or.cond.i, label %.critedge.i, label %bb.e, !llvm.loop !249

.critedge.i:                                      ; preds = %bb.e
  %i.m = add nuw nsw i32 %.048.i, 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047.pn.i, i64 2 ; 3 uses
  %i.o = icmp ult ptr %i.n, %i.j
  br i1 %i.o, label %bb.f, label %.critedge2.i

bb.f:                                             ; preds = %.critedge.i
  %i.p = load i8, ptr %i.n, align 1, !tbaa !39
  %i.q = icmp eq i8 %i.p, %i.i
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  br i1 %i.q, label %bb.d, label %.critedge2.i, !llvm.loop !250

.critedge2.i:                                     ; preds = %bb.f, %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !218  ; 3 uses
  %i.t = add nsw i32 %i.s, %i.m                   ; 3 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !216  ; 2 uses
  %i.v = and i32 %i.u, -2                         ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge2.i
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.ab = add nsw i64 %i.z, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !152
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = inttoptr i64 %i.z to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i: ; preds = %bb.i, %bb.h, %.critedge2.i
  %.0.i.i.i.i.i = phi ptr [ null, %.critedge2.i ], [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = and i32 %i.u, 1                         ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0                    ; 2 uses
  br i1 %i.ag, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !39
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i: ; preds = %bb.j, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i
  %i.ak = phi i32 [ %i.aj, %bb.j ], [ 1, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i ]
  %i.al = icmp sgt i32 %i.t, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit, !prof !7

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i.i, i1 noundef zeroext %i.ag, i32 noundef %i.s, i32 noundef %i.t)
  %.pre = load i32, ptr %i.h, align 4, !tbaa !216
  %.pre73 = load i32, ptr %i.r, align 4, !tbaa !218 ; 2 uses
  %.pre74 = and i32 %.pre, 1
  %.pre75 = add nsw i32 %.pre73, %i.m
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i, %bb.k
  %.pre-phi76 = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i ], [ %.pre75, %bb.k ] ; 2 uses
  %.pre-phi = phi i32 [ %i.af, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i ], [ %.pre74, %bb.k ]
  %i.am = phi i32 [ %i.s, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i ], [ %.pre73, %bb.k ]
  %i.an = icmp eq i32 %.pre-phi, 0                ; 2 uses
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.0.v.i.i.i = select i1 %i.an, ptr %i.h, ptr %i.aq
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi76, ptr %i.r, align 4, !tbaa !218
  %i.ar = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.ao
  br label %bb.l

bb.l:                                             ; preds = %bb.ab, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit
  %.045.i = phi i32 [ 0, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit ], [ %i.dm, %bb.ab ]
  %.044.i = phi ptr [ %i.ar, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit ], [ %i.dl, %bb.ab ] ; 3 uses
  %.0.i = phi ptr [ %1, %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit ], [ %.0.i6.ph, %bb.ab ] ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !39  ; 2 uses
  %i.av = sext i8 %i.au to i64                    ; 2 uses
  %i.aw = icmp sgt i8 %i.au, -1
  br i1 %i.aw, label %bb.ab, label %bb.m, !prof !29

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal8TcParser7FastBR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
  %i.h = lshr i64 %3, 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !327  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 5 uses
  %.not53.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not53.i, label %.preheader, label %bb.g, !prof !186

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit
  %i.u = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !328
  %i.x = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !331
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %.preheader, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !357 ; 3 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp ne ptr %i.ab, null
  %i.af = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = add nsw i64 %i.ac, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.i, %bb.j
  %i.ak = phi i32 [ %i.af, %bb.i ], [ %i.aj, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !134
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %.preheader52, label %.preheader, !prof !29

.preheader52:                                     ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  br label %bb.k

bb.k:                                             ; preds = %.preheader52, %bb.t
  %.0.i = phi ptr [ %.0.i11, %bb.t ], [ %1, %.preheader52 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39  ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp sgt i8 %i.ar, -1
  br i1 %i.at, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %bb.l

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.k
  %i.av = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.aq, i32 noundef %i.as) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.av, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.av, 1
  %.not.i5 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i5, label %.critedge55.i, label %bb.l, !prof !358

bb.l:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i1044 = phi i32 [ %i.as, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i43 = phi ptr [ %i.au, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.aw = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.not.i8.not = icmp eq i64 %i.aw, 0
  br i1 %.not.i8.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.ax = add i64 %i.aw, -32                      ; 2 uses
  store atomic i64 %i.ax, ptr %i.ao monotonic, align 8
  %i.ay = load atomic ptr, ptr %i.ap monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.l
  %i.bb = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.aa)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i7 = phi ptr [ %i.ba, %bb.m ], [ %i.bb, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16 ; 2 uses
  store ptr %i.bc, ptr %.0.i7, align 8, !tbaa !359
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !81
  store i8 0, ptr %i.bc, align 8, !tbaa !39
  %i.be = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i1044, ptr noundef nonnull %storemerge.i43)
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bf = sext i32 %.0.i1044 to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i7, i64 noundef %i.bf, i8 noundef signext 0)
  %i.bg = load ptr, ptr %.0.i7, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %storemerge.i43, i64 %i.bf, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %storemerge.i43, i64 %i.bf
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bi = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i43, i32 noundef %.0.i1044, ptr noundef nonnull %.0.i7)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n, %bb.o
  %.0.i11 = phi ptr [ %i.bh, %bb.n ], [ %i.bi, %bb.o ] ; 6 uses
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !134 ; 5 uses
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = icmp eq i32 %i.bj, 1
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = add nsw i64 %i.bl, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !137
  %i.bs = icmp eq i32 %i.bj, %i.br
  br i1 %i.bs, label %bb.p, label %bb.r, !prof !7

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.bt = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef 1, ptr noundef nonnull %.0.i.i.i.i)
  store ptr %.0.i7, ptr %i.bt, align 8, !tbaa !57
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !135
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.al, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i7, ptr %i.i, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = sext i32 %i.bj to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %.0.i7, ptr %i.cd, align 8, !tbaa !57
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !135
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.cl = phi i32 [ %i.bj, %bb.q ], [ %i.bj, %bb.r ], [ %.pre.i.i, %bb.p ]
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.al, align 8, !tbaa !3
  %i.cn = icmp eq ptr %.0.i11, null
  br i1 %i.cn, label %.critedge55.i, label %bb.s, !prof !186

.critedge55.i:                                    ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.co = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.co

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.cp = load ptr, ptr %2, align 8, !tbaa !108
  %i.cq = icmp ult ptr %.0.i11, %i.cp
  br i1 %i.cq, label %bb.t, label %common.ret, !prof !29

bb.t:                                             ; preds = %bb.s
  %i.cr = load i8, ptr %.0.i11, align 1, !tbaa !39
  %i.cs = icmp eq i8 %i.cr, %i.g
  br i1 %i.cs, label %bb.k, label %.loopexit51, !llvm.loop !360

.preheader:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit, %bb.g, %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %.0.i.i.i.i36.ph = phi ptr [ %.0.i.i.i.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit ], [ null, %bb.c ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.w
  %.1.i = phi ptr [ %i.cv, %bb.w ], [ %1, %.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.cu = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %.0.i.i.i.i36.ph)
  %i.cv = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.cu, ptr noundef nonnull %i.ct, ptr noundef %2) ; 6 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.critedge57.i, label %bb.v, !prof !7

.critedge57.i:                                    ; preds = %bb.u
  %i.cx = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cx

bb.v:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %2, align 8, !tbaa !108
  %i.cz = icmp ult ptr %i.cv, %i.cy
  br i1 %i.cz, label %bb.w, label %common.ret

bb.w:                                             ; preds = %bb.v
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !39
  %i.db = icmp eq i8 %i.da, %i.g
  br i1 %i.db, label %bb.u, label %.loopexit51, !llvm.loop !361

common.ret:                                       ; preds = %bb.s, %bb.v
  %common.ret.op = phi ptr [ %i.cv, %bb.v ], [ %.0.i11, %bb.s ]
  %i.dc = load i16, ptr %4, align 8, !tbaa !8
  %i.dd = trunc i64 %i.f to i32
  %i.de = zext i16 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = or i32 %i.dg, %i.dd
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !3
  ret ptr %common.ret.op

.loopexit51:                                      ; preds = %bb.t, %bb.w
  %.2.i = phi ptr [ %i.cv, %bb.w ], [ %.0.i11, %bb.t ] ; 2 uses
  %.0.copyload.i.i = load i16, ptr %.2.i, align 1 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !112
  %i.dk = zext i8 %i.dj to i16
  %i.dl = and i16 %.0.copyload.i.i, %i.dk
  %i.dm = zext nneg i16 %i.dl to i64              ; 2 uses
  %i.dn = and i64 %i.dm, 7
  %i.do = icmp eq i64 %i.dn, 0
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = lshr exact i64 %i.dm, 3
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dp ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ds, align 8, !tbaa !39
  %i.dt = zext i16 %.0.copyload.i.i to i64
  %i.du = xor i64 %.sroa.01.0.copyload.i, %i.dt
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !113
  %i.dw = musttail call noundef ptr %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, ptr noundef nonnull %2, i64 %i.du, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.dw
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser7FastBR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %.0.copyload.i.i = load i16, ptr %1, align 1    ; 2 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !327  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 5 uses
  %.not53.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not53.i, label %.preheader, label %bb.g, !prof !186

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit
  %i.t = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !328
  %i.w = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !331
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %.preheader, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !357 ; 3 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ae = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.j:                                             ; preds = %bb.h
  %i.af = add nsw i64 %i.ab, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.i, %bb.j
  %i.aj = phi i32 [ %i.ae, %bb.i ], [ %i.ai, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !134
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %.preheader55, label %.preheader, !prof !29

.preheader55:                                     ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  br label %bb.k

bb.k:                                             ; preds = %.preheader55, %bb.t
  %.0.i = phi ptr [ %.0.i11, %bb.t ], [ %1, %.preheader55 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !39  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = icmp sgt i8 %i.aq, -1
  br i1 %i.as, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  br label %bb.l

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.k
  %i.au = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ap, i32 noundef %i.ar) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.au, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.au, 1
  %.not.i5 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i5, label %.critedge55.i, label %bb.l, !prof !358

bb.l:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i1047 = phi i32 [ %i.ar, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i46 = phi ptr [ %i.at, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.av = load atomic i64, ptr %i.an monotonic, align 8 ; 2 uses
  %.not.i8.not = icmp eq i64 %i.av, 0
  br i1 %.not.i8.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.aw = add i64 %i.av, -32                      ; 2 uses
  store atomic i64 %i.aw, ptr %i.an monotonic, align 8
  %i.ax = load atomic ptr, ptr %i.ao monotonic, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.l
  %i.ba = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.z)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i7 = phi ptr [ %i.az, %bb.m ], [ %i.ba, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16 ; 2 uses
  store ptr %i.bb, ptr %.0.i7, align 8, !tbaa !359
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !81
  store i8 0, ptr %i.bb, align 8, !tbaa !39
  %i.bd = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i1047, ptr noundef nonnull %storemerge.i46)
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.be = sext i32 %.0.i1047 to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i7, i64 noundef %i.be, i8 noundef signext 0)
  %i.bf = load ptr, ptr %.0.i7, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %storemerge.i46, i64 %i.be, i1 false)
  %i.bg = getelementptr inbounds i8, ptr %storemerge.i46, i64 %i.be
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bh = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i46, i32 noundef %.0.i1047, ptr noundef nonnull %.0.i7)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n, %bb.o
  %.0.i11 = phi ptr [ %i.bg, %bb.n ], [ %i.bh, %bb.o ] ; 6 uses
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !134 ; 5 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bn = icmp eq i32 %i.bi, 1
  br i1 %i.bn, label %bb.p, label %bb.q, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = add nsw i64 %i.bk, -1
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !137
  %i.br = icmp eq i32 %i.bi, %i.bq
  br i1 %i.br, label %bb.p, label %bb.r, !prof !7

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.bs = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef 1, ptr noundef nonnull %.0.i.i.i.i)
  store ptr %.0.i7, ptr %i.bs, align 8, !tbaa !57
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !135
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i7, ptr %i.h, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = sext i32 %i.bi to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  store ptr %.0.i7, ptr %i.cc, align 8, !tbaa !57
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !135
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.ck = phi i32 [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i.i, %bb.p ]
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ak, align 8, !tbaa !3
  %i.cm = icmp eq ptr %.0.i11, null
  br i1 %i.cm, label %.critedge55.i, label %bb.s, !prof !186

.critedge55.i:                                    ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.cn = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cn

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.co = load ptr, ptr %2, align 8, !tbaa !108
  %i.cp = icmp ult ptr %.0.i11, %i.co
  br i1 %i.cp, label %bb.t, label %common.ret, !prof !29

bb.t:                                             ; preds = %bb.s
  %.0.copyload.i.i12 = load i16, ptr %.0.i11, align 1 ; 2 uses
  %i.cq = icmp eq i16 %.0.copyload.i.i12, %.0.copyload.i.i
  br i1 %i.cq, label %bb.k, label %.loopexit54, !llvm.loop !362

.preheader:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit, %bb.g, %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %.0.i.i.i.i39.ph = phi ptr [ %.0.i.i.i.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit ], [ null, %bb.c ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.w
  %.1.i = phi ptr [ %i.ct, %bb.w ], [ %1, %.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.cs = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i39.ph)
  %i.ct = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.cs, ptr noundef nonnull %i.cr, ptr noundef %2) ; 6 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.critedge57.i, label %bb.v, !prof !7

.critedge57.i:                                    ; preds = %bb.u
  %i.cv = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.cv

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %2, align 8, !tbaa !108
  %i.cx = icmp ult ptr %i.ct, %i.cw
  br i1 %i.cx, label %bb.w, label %common.ret

bb.w:                                             ; preds = %bb.v
  %.0.copyload.i.i13 = load i16, ptr %i.ct, align 1 ; 2 uses
  %i.cy = icmp eq i16 %.0.copyload.i.i13, %.0.copyload.i.i
  br i1 %i.cy, label %bb.u, label %.loopexit54, !llvm.loop !363

common.ret:                                       ; preds = %bb.s, %bb.v
  %common.ret.op = phi ptr [ %i.ct, %bb.v ], [ %.0.i11, %bb.s ]
  %i.cz = load i16, ptr %4, align 8, !tbaa !8
  %i.da = trunc i64 %i.f to i32
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = or i32 %i.dd, %i.da
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !3
  ret ptr %common.ret.op

.loopexit54:                                      ; preds = %bb.t, %bb.w
  %.0.copyload.i.i14 = phi i16 [ %.0.copyload.i.i13, %bb.w ], [ %.0.copyload.i.i12, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.ct, %bb.w ], [ %.0.i11, %bb.t ]
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !112
  %i.dh = zext i8 %i.dg to i16
  %i.di = and i16 %.0.copyload.i.i14, %i.dh
  %i.dj = zext nneg i16 %i.di to i64              ; 2 uses
  %i.dk = and i64 %i.dj, 7
  %i.dl = icmp eq i64 %i.dk, 0
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = lshr exact i64 %i.dj, 3
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.dp, align 8, !tbaa !39
  %i.dq = zext i16 %.0.copyload.i.i14 to i64
  %i.dr = xor i64 %.sroa.01.0.copyload.i, %i.dq
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !113
  %i.dt = musttail call noundef ptr %i.ds(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, ptr noundef nonnull %2, i64 %i.dr, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.dt
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser7FastUR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 255
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %i.g = load i8, ptr %1, align 1, !tbaa !39      ; 4 uses
  %i.h = lshr i64 %3, 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !327  ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i64 %i.o, -1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !152
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.o to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.t, %bb.f ], [ %i.s, %bb.e ] ; 5 uses
  %.not53.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not53.i, label %.preheader, label %bb.g, !prof !186

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit
  %i.u = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !328
  %i.x = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !331
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %.preheader, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !357 ; 3 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp ne ptr %i.ab, null
  %i.af = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = add nsw i64 %i.ac, -1
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.i, %bb.j
  %i.ak = phi i32 [ %i.af, %bb.i ], [ %i.aj, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !134
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %.preheader58, label %.preheader, !prof !29

.preheader58:                                     ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  br label %bb.k

bb.k:                                             ; preds = %.preheader58, %bb.t
  %.0.i = phi ptr [ %.0.i11, %bb.t ], [ %1, %.preheader58 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !39  ; 2 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = icmp sgt i8 %i.ar, -1
  br i1 %i.at, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  br label %bb.l

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.k
  %i.av = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.aq, i32 noundef %i.as) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.av, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.av, 1
  %.not.i5 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i5, label %.critedge55.i, label %bb.l, !prof !358

bb.l:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i1049 = phi i32 [ %i.as, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i48 = phi ptr [ %i.au, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.aw = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %.not.i8.not = icmp eq i64 %i.aw, 0
  br i1 %.not.i8.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.ax = add i64 %i.aw, -32                      ; 2 uses
  store atomic i64 %i.ax, ptr %i.ao monotonic, align 8
  %i.ay = load atomic ptr, ptr %i.ap monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.l
  %i.bb = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.aa)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i7 = phi ptr [ %i.ba, %bb.m ], [ %i.bb, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16 ; 2 uses
  store ptr %i.bc, ptr %.0.i7, align 8, !tbaa !359
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !81
  store i8 0, ptr %i.bc, align 8, !tbaa !39
  %i.be = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i1049, ptr noundef nonnull %storemerge.i48)
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bf = sext i32 %.0.i1049 to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i7, i64 noundef %i.bf, i8 noundef signext 0)
  %i.bg = load ptr, ptr %.0.i7, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %storemerge.i48, i64 %i.bf, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %storemerge.i48, i64 %i.bf
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bi = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i48, i32 noundef %.0.i1049, ptr noundef nonnull %.0.i7)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n, %bb.o
  %.0.i11 = phi ptr [ %i.bh, %bb.n ], [ %i.bi, %bb.o ] ; 6 uses
  %i.bj = load i32, ptr %i.al, align 8, !tbaa !134 ; 5 uses
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = icmp eq i32 %i.bj, 1
  br i1 %i.bo, label %bb.p, label %bb.q, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bp = add nsw i64 %i.bl, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !137
  %i.bs = icmp eq i32 %i.bj, %i.br
  br i1 %i.bs, label %bb.p, label %bb.r, !prof !7

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.bt = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i32 noundef 1, ptr noundef nonnull %.0.i.i.i.i)
  store ptr %.0.i7, ptr %i.bt, align 8, !tbaa !57
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = add i64 %i.bv, -1
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !135
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.al, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i7, ptr %i.i, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = sext i32 %i.bj to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %.0.i7, ptr %i.cd, align 8, !tbaa !57
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !131 ; 2 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = add i64 %i.cf, -1
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !135
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.cl = phi ptr [ %.0.i7, %bb.q ], [ %i.ce, %bb.r ], [ %i.bu, %bb.p ]
  %i.cm = phi i32 [ %i.bj, %bb.q ], [ %i.bj, %bb.r ], [ %.pre.i.i, %bb.p ]
  %i.cn = add nsw i32 %i.cm, 1                    ; 2 uses
  store i32 %i.cn, ptr %i.al, align 8, !tbaa !3
  %i.co = icmp eq ptr %.0.i11, null
  br i1 %i.co, label %.critedge55.i, label %bb.s, !prof !186

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.cp = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = add i64 %i.cp, -1
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = sext i32 %i.cn to i64
  %i.cv = getelementptr [8 x i8], ptr %i.ct, i64 %i.cu
  %.0.i.i.i.i.i = select i1 %i.cr, ptr %i.i, ptr %i.cv
  %i.cw = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !81
  %i.da = tail call i32 @utf8_range_IsValid(ptr noundef %i.cx, i64 noundef %i.cz)
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread: ; preds = %bb.s
  %i.db = zext i8 %i.g to i32
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.db, ptr noundef %4)
  br label %.critedge55.i

.critedge55.i:                                    ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread
  %i.dc = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.dc

_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit: ; preds = %bb.s
  %i.dd = load ptr, ptr %2, align 8, !tbaa !108
  %i.de = icmp ult ptr %.0.i11, %i.dd
  br i1 %i.de, label %bb.t, label %common.ret, !prof !29

bb.t:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit
  %i.df = load i8, ptr %.0.i11, align 1, !tbaa !39
  %i.dg = icmp eq i8 %i.df, %i.g
  br i1 %i.dg, label %bb.k, label %.loopexit57, !llvm.loop !364

.preheader:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit, %bb.g, %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %.0.i.i.i.i41.ph = phi ptr [ %.0.i.i.i.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit ], [ null, %bb.c ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.w
  %.1.i = phi ptr [ %i.dk, %bb.w ], [ %1, %.preheader ]
  %i.di = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.dj = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef %.0.i.i.i.i41.ph)
  %i.dk = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.dj, ptr noundef nonnull %i.di, ptr noundef %2) ; 6 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge57.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.dm = load i32, ptr %i.dh, align 8, !tbaa !134
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !131
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = and i64 %i.do, 1
  %i.dq = icmp eq i64 %i.dp, 0
  %i.dr = add i64 %i.do, -1
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %i.dt
  %.0.i.i.i.i.i12 = select i1 %i.dq, ptr %i.i, ptr %i.du
  %i.dv = load ptr, ptr %.0.i.i.i.i.i12, align 8, !tbaa !57 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !84
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !81
  %i.dz = tail call i32 @utf8_range_IsValid(ptr noundef %i.dw, i64 noundef %i.dy)
  %.not56 = icmp eq i32 %i.dz, 0
  br i1 %.not56, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13.thread: ; preds = %bb.v
  %i.ea = zext i8 %i.g to i32
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.ea, ptr noundef %4)
  br label %.critedge57.i

.critedge57.i:                                    ; preds = %bb.u, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13.thread
  %i.eb = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.eb

_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13: ; preds = %bb.v
  %i.ec = load ptr, ptr %2, align 8, !tbaa !108
  %i.ed = icmp ult ptr %i.dk, %i.ec
  br i1 %i.ed, label %bb.w, label %common.ret

bb.w:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13
  %i.ee = load i8, ptr %i.dk, align 1, !tbaa !39
  %i.ef = icmp eq i8 %i.ee, %i.g
  br i1 %i.ef, label %bb.u, label %.loopexit57, !llvm.loop !365

common.ret:                                       ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13
  %common.ret.op = phi ptr [ %i.dk, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit13 ], [ %.0.i11, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringIhNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit ]
  %i.eg = load i16, ptr %4, align 8, !tbaa !8
  %i.eh = trunc i64 %i.f to i32
  %i.ei = zext i16 %i.eg to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.el = or i32 %i.ek, %i.eh
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !3
  ret ptr %common.ret.op

.loopexit57:                                      ; preds = %bb.t, %bb.w
  %.2.i = phi ptr [ %i.dk, %bb.w ], [ %.0.i11, %bb.t ] ; 2 uses
  %.0.copyload.i.i = load i16, ptr %.2.i, align 1 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load i8, ptr %i.em, align 8, !tbaa !112
  %i.eo = zext i8 %i.en to i16
  %i.ep = and i16 %.0.copyload.i.i, %i.eo
  %i.eq = zext nneg i16 %i.ep to i64              ; 2 uses
  %i.er = and i64 %i.eq, 7
  %i.es = icmp eq i64 %i.er, 0
  tail call void @llvm.assume(i1 %i.es)
  %i.et = lshr exact i64 %i.eq, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eu, i64 %i.et ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ew, align 8, !tbaa !39
  %i.ex = zext i16 %.0.copyload.i.i to i64
  %i.ey = xor i64 %.sroa.01.0.copyload.i, %i.ex
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !113
  %i.fa = musttail call noundef ptr %i.ez(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, ptr noundef nonnull %2, i64 %i.ey, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.fa
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser7FastUR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %3, 65535
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = lshr exact i64 %3, 16
  %i.d = and i64 %i.c, 255
  %i.e = shl nuw i64 1, %i.d
  %i.f = or i64 %i.e, %5                          ; 4 uses
  %.0.copyload.i.i = load i16, ptr %1, align 1    ; 4 uses
  %i.g = lshr i64 %3, 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !327  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !152
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 5 uses
  %.not53.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not53.i, label %.preheader, label %bb.g, !prof !186

bb.g:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit
  %i.t = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !328
  %i.w = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !331
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.h, label %.preheader, !prof !29

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !357 ; 3 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ae = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.j:                                             ; preds = %bb.h
  %i.af = add nsw i64 %i.ab, -1
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.i, %bb.j
  %i.aj = phi i32 [ %i.ae, %bb.i ], [ %i.ai, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !134
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %.preheader62, label %.preheader, !prof !29

.preheader62:                                     ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  br label %bb.k

bb.k:                                             ; preds = %.preheader62, %bb.t
  %.0.i = phi ptr [ %.0.i11, %bb.t ], [ %1, %.preheader62 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i, i64 2 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !39  ; 2 uses
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = icmp sgt i8 %i.aq, -1
  br i1 %i.as, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  br label %bb.l

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.k
  %i.au = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ap, i32 noundef %i.ar) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.au, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.au, 1
  %.not.i5 = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i5, label %.critedge55.i, label %bb.l, !prof !358

bb.l:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i1053 = phi i32 [ %i.ar, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i52 = phi ptr [ %i.at, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.av = load atomic i64, ptr %i.an monotonic, align 8 ; 2 uses
  %.not.i8.not = icmp eq i64 %i.av, 0
  br i1 %.not.i8.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.m, !prof !7

bb.m:                                             ; preds = %bb.l
  %i.aw = add i64 %i.av, -32                      ; 2 uses
  store atomic i64 %i.aw, ptr %i.an monotonic, align 8
  %i.ax = load atomic ptr, ptr %i.ao monotonic, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.l
  %i.ba = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.z)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i7 = phi ptr [ %i.az, %bb.m ], [ %i.ba, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16 ; 2 uses
  store ptr %i.bb, ptr %.0.i7, align 8, !tbaa !359
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8
  store i64 0, ptr %i.bc, align 8, !tbaa !81
  store i8 0, ptr %i.bb, align 8, !tbaa !39
  %i.bd = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i1053, ptr noundef nonnull %storemerge.i52)
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.be = sext i32 %.0.i1053 to i64               ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i7, i64 noundef %i.be, i8 noundef signext 0)
  %i.bf = load ptr, ptr %.0.i7, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %storemerge.i52, i64 %i.be, i1 false)
  %i.bg = getelementptr inbounds i8, ptr %storemerge.i52, i64 %i.be
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bh = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i52, i32 noundef %.0.i1053, ptr noundef nonnull %.0.i7)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.n, %bb.o
  %.0.i11 = phi ptr [ %i.bg, %bb.n ], [ %i.bh, %bb.o ] ; 6 uses
  %i.bi = load i32, ptr %i.ak, align 8, !tbaa !134 ; 5 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bn = icmp eq i32 %i.bi, 1
  br i1 %i.bn, label %bb.p, label %bb.q, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bo = add nsw i64 %i.bk, -1
  %i.bp = inttoptr i64 %i.bo to ptr               ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !137
  %i.br = icmp eq i32 %i.bi, %i.bq
  br i1 %i.br, label %bb.p, label %bb.r, !prof !7

bb.p:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.bs = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef 1, ptr noundef nonnull %.0.i.i.i.i)
  store ptr %.0.i7, ptr %i.bs, align 8, !tbaa !57
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !135
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.ak, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i7, ptr %i.h, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = sext i32 %i.bi to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  store ptr %.0.i7, ptr %i.cc, align 8, !tbaa !57
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !135
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.r, %bb.q, %bb.p
  %i.ck = phi ptr [ %.0.i7, %bb.q ], [ %i.cd, %bb.r ], [ %i.bt, %bb.p ]
  %i.cl = phi i32 [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %.pre.i.i, %bb.p ]
  %i.cm = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cm, ptr %i.ak, align 8, !tbaa !3
  %i.cn = icmp eq ptr %.0.i11, null
  br i1 %i.cn, label %.critedge55.i, label %bb.s, !prof !186

bb.s:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  %i.co = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cp = and i64 %i.co, 1
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = add i64 %i.co, -1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cs, i64 %i.ct
  %.0.i.i.i.i.i = select i1 %i.cq, ptr %i.h, ptr %i.cu
  %i.cv = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !84
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !81
  %i.cz = tail call i32 @utf8_range_IsValid(ptr noundef %i.cw, i64 noundef %i.cy)
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread: ; preds = %bb.s
  %i.da = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i.i = shl i32 %i.da, 24
  %i.db = ashr exact i32 %sext.i.i, 24
  %i.dc = add nsw i32 %i.db, %i.da
  %i.dd = lshr i32 %i.dc, 1
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.dd, ptr noundef %4)
  br label %.critedge55.i

.critedge55.i:                                    ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit.thread
  %i.de = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.de

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit: ; preds = %bb.s
  %i.df = load ptr, ptr %2, align 8, !tbaa !108
  %i.dg = icmp ult ptr %.0.i11, %i.df
  br i1 %i.dg, label %bb.t, label %common.ret, !prof !29

bb.t:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit
  %.0.copyload.i.i12 = load i16, ptr %.0.i11, align 1 ; 2 uses
  %i.dh = icmp eq i16 %.0.copyload.i.i12, %.0.copyload.i.i
  br i1 %i.dh, label %bb.k, label %.loopexit61, !llvm.loop !366

.preheader:                                       ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit, %bb.g, %bb.c, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %.0.i.i.i.i45.ph = phi ptr [ %.0.i.i.i.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit ], [ null, %bb.c ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.w
  %.1.i = phi ptr [ %i.dl, %bb.w ], [ %1, %.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.dk = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef %.0.i.i.i.i45.ph)
  %i.dl = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.dk, ptr noundef nonnull %i.dj, ptr noundef %2) ; 6 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.critedge57.i, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.dn = load i32, ptr %i.di, align 8, !tbaa !134
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = add i64 %i.dp, -1
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = sext i32 %i.dn to i64
  %i.dv = getelementptr [8 x i8], ptr %i.dt, i64 %i.du
  %.0.i.i.i.i.i13 = select i1 %i.dr, ptr %i.h, ptr %i.dv
  %i.dw = load ptr, ptr %.0.i.i.i.i.i13, align 8, !tbaa !57 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !84
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !81
  %i.ea = tail call i32 @utf8_range_IsValid(ptr noundef %i.dx, i64 noundef %i.dz)
  %.not60 = icmp eq i32 %i.ea, 0
  br i1 %.not60, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread, label %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15, !prof !7

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread: ; preds = %bb.v
  %i.eb = zext i16 %.0.copyload.i.i to i32        ; 2 uses
  %sext.i.i14 = shl i32 %i.eb, 24
  %i.ec = ashr exact i32 %sext.i.i14, 24
  %i.ed = add nsw i32 %i.ec, %i.eb
  %i.ee = lshr i32 %i.ed, 1
  tail call void @_ZN6google8protobuf8internal8TcParser19ReportFastUtf8ErrorEjPKNS1_16TcParseTableBaseE(i32 noundef %i.ee, ptr noundef %4)
  br label %.critedge57.i

.critedge57.i:                                    ; preds = %bb.u, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15.thread
  %i.ef = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %i.f)
  ret ptr %i.ef

_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15: ; preds = %bb.v
  %i.eg = load ptr, ptr %2, align 8, !tbaa !108
  %i.eh = icmp ult ptr %i.dl, %i.eg
  br i1 %i.eh, label %bb.w, label %common.ret

bb.w:                                             ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15
  %.0.copyload.i.i16 = load i16, ptr %i.dl, align 1 ; 2 uses
  %i.ei = icmp eq i16 %.0.copyload.i.i16, %.0.copyload.i.i
  br i1 %i.ei, label %bb.u, label %.loopexit61, !llvm.loop !367

common.ret:                                       ; preds = %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15
  %common.ret.op = phi ptr [ %i.dl, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit15 ], [ %.0.i11, %_ZZN6google8protobuf8internal8TcParser14RepeatedStringItNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELNS2_8Utf8TypeE1EEEPKcPNS0_11MessageLiteESE_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmENKUlvE_clEv.exit ]
  %i.ej = load i16, ptr %4, align 8, !tbaa !8
  %i.ek = trunc i64 %i.f to i32
  %i.el = zext i16 %i.ej to i64
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = or i32 %i.en, %i.ek
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !3
  ret ptr %common.ret.op

.loopexit61:                                      ; preds = %bb.t, %bb.w
  %.0.copyload.i.i17 = phi i16 [ %.0.copyload.i.i16, %bb.w ], [ %.0.copyload.i.i12, %bb.t ] ; 2 uses
  %.2.i = phi ptr [ %i.dl, %bb.w ], [ %.0.i11, %bb.t ]
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !112
  %i.er = zext i8 %i.eq to i16
  %i.es = and i16 %.0.copyload.i.i17, %i.er
  %i.et = zext nneg i16 %i.es to i64              ; 2 uses
  %i.eu = and i64 %i.et, 7
  %i.ev = icmp eq i64 %i.eu, 0
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = lshr exact i64 %i.et, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.ez, align 8, !tbaa !39
  %i.fa = zext i16 %.0.copyload.i.i17 to i64
  %i.fb = xor i64 %.sroa.01.0.copyload.i, %i.fa
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !113
  %i.fd = musttail call noundef ptr %i.fc(ptr noundef nonnull %0, ptr noundef nonnull %.2.i, ptr noundef nonnull %2, i64 %i.fb, ptr noundef nonnull %4, i64 noundef %i.f), !inline_history !116
  ret ptr %i.fd
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastBcR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastBcR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastUcR1EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser8FastUcR2EPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal8TcParser9InitOneofEPKNS1_16TcParseTableBaseES5_RKNS3_10FieldEntryEPNS0_11MessageLiteE(ptr readnone captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !55   ; 2 uses
  %i.c = and i16 %i.b, 7
  switch i16 %i.c, label %bb.n [
    i16 5, label %bb.b
    i16 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i16 %i.b, 6
  %i.e = and i16 %i.d, 7
  switch i16 %i.e, label %bb.j [
    i16 0, label %bb.c
    i16 5, label %bb.d
    i16 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE to i64), ptr %i.h, align 8, !tbaa !57
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %2, align 4, !tbaa !58
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  store ptr null, ptr %i.k, align 8, !tbaa !320
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !7

end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal8TcParser16MpRepeatedStringILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = and i32 %.val, 31
  %i.q = shl nuw i32 1, %i.p
  %i.r = load i32, ptr %i.o, align 4, !tbaa !3
  %i.s = or i32 %i.r, %i.q
  store i32 %i.s, ptr %i.o, align 4, !tbaa !3
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit: ; preds = %bb.c, %bb.d
  %i.t = and i16 %i.d, 448
  %i.u = and i16 %i.d, 1536                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_117SetHasForRepeatedERKNS1_16TcParseTableBase10FieldEntryEPNS0_11MessageLiteE.exit
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.ab, %bb.f ] ; 4 uses
  %cond = icmp eq i16 %i.t, 256
  br i1 %cond, label %bb.g, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit108.thread149

bb.g:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit
  %i.ac = load i32, ptr %i.b, align 4, !tbaa !58
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 9 uses
  %.not87 = icmp eq ptr %.0.i.i, null
  br i1 %.not87, label %.preheader.preheader, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !328
  %i.ai = load i64, ptr %.0.i.i, align 8, !tbaa !331
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %.preheader.preheader, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !357 ; 3 uses
  %i.am = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = and i64 %i.an, 1
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not.i.i = icmp ne ptr %i.am, null
  %i.aq = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = add nsw i64 %i.an, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.j, %bb.k
  %i.av = phi i32 [ %i.aq, %bb.j ], [ %i.au, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !134
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %.preheader154, label %.preheader.preheader, !prof !29

.preheader.preheader:                             ; preds = %bb.g, %bb.h, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  br label %.preheader

.preheader154:                                    ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.bb = icmp eq i16 %i.u, 1024
  br label %bb.l

bb.l:                                             ; preds = %.preheader154, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.083 = phi ptr [ %.1.i102, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %1, %.preheader154 ] ; 3 uses
  %i.bc = load i8, ptr %.083, align 1, !tbaa !39  ; 2 uses
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = icmp sgt i8 %i.bc, -1
  br i1 %i.be, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.083, i64 1
  br label %bb.m

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.l
  %i.bg = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %.083, i32 noundef %i.bd) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.bg, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.bg, 1
  %.not.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i, label %.critedge89, label %bb.m, !prof !358

bb.m:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i95135 = phi i32 [ %i.bd, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i134 = phi ptr [ %i.bf, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.bh = load atomic i64, ptr %i.az monotonic, align 8 ; 2 uses
  %.not.i92.not = icmp eq i64 %i.bh, 0
  br i1 %.not.i92.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bi = add i64 %i.bh, -32                      ; 2 uses
  store atomic i64 %i.bi, ptr %i.az monotonic, align 8
  %i.bj = load atomic ptr, ptr %i.ba monotonic, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.m
  %i.bm = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.al)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.n, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i = phi ptr [ %i.bl, %bb.n ], [ %i.bm, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr %i.bn, ptr %.0.i, align 8, !tbaa !359
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !81
  store i8 0, ptr %i.bn, align 8, !tbaa !39
  %i.bp = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i95135, ptr noundef nonnull %storemerge.i134)
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bq = sext i32 %.0.i95135 to i64              ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 noundef %i.bq, i8 noundef signext 0)
  %i.br = load ptr, ptr %.0.i, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 1 %storemerge.i134, i64 %i.bq, i1 false)
  %i.bs = getelementptr inbounds i8, ptr %storemerge.i134, i64 %i.bq
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.p:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.bt = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i134, i32 noundef %.0.i95135, ptr noundef nonnull %.0.i)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.o, %bb.p
  %.0.i97 = phi ptr [ %i.bs, %bb.o ], [ %i.bt, %bb.p ] ; 8 uses
  %i.bu = load i32, ptr %i.aw, align 8, !tbaa !134 ; 5 uses
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !131
  %i.bw = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bz = icmp eq i32 %i.bu, 1
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ca = add nsw i64 %i.bw, -1
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !137
  %i.cd = icmp eq i32 %i.bu, %i.cc
  br i1 %i.cd, label %bb.q, label %bb.s, !prof !7

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.ce = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i32 noundef 1, ptr noundef nonnull %.0.i.i)
  store ptr %.0.i, ptr %i.ce, align 8, !tbaa !57
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 2 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !135
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.aw, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = sext i32 %i.bu to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  store ptr %.0.i, ptr %i.co, align 8, !tbaa !57
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !131 ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = add i64 %i.cq, -1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !135
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.s, %bb.r, %bb.q
  %i.cw = phi ptr [ %.0.i, %bb.r ], [ %i.cp, %bb.s ], [ %i.cf, %bb.q ]
  %i.cx = phi i32 [ %i.bu, %bb.r ], [ %i.bu, %bb.s ], [ %.pre.i.i, %bb.q ]
  %i.cy = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.cy, ptr %i.aw, align 8, !tbaa !3
  %i.cz = icmp eq ptr %.0.i97, null
  br i1 %i.cz, label %.critedge89, label %bb.t, !prof !186

bb.t:                                             ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  br i1 %i.bb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.da = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.db = and i64 %i.da, 1
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = add i64 %i.da, -1
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = sext i32 %i.cy to i64
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %i.df
  %.0.i.i.i.i = select i1 %i.dc, ptr %i.ae, ptr %i.dg
  %i.dh = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !57 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !81
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !84
  %i.dl = tail call i32 @utf8_range_IsValid(ptr noundef %i.dk, i64 noundef %i.dj)
  %.not.i99 = icmp eq i32 %i.dl, 0
  br i1 %.not.i99, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = ptrtoint ptr %4 to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !38
  %i.dp = zext i32 %i.do to i64
  %i.dq = add i64 %i.dp, %i.dm
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !120
  %i.dt = zext i16 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = add i64 %i.dq, %i.du
  %i.dw = inttoptr i64 %i.dv to ptr               ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dy = load i16, ptr %i.dx, align 4, !tbaa !47
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, 8
  %i.eb = and i64 %i.ea, 131064                   ; 4 uses
  %i.ec = load i8, ptr %i.dw, align 1, !tbaa !39
  %i.ed = sext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !30
  %i.eh = zext i32 %i.eg to i64
  %i.ei = sub nsw i64 %i.a, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12                ; 2 uses
  %i.ek = add nsw i64 %i.ej, 1                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ek ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %i.ek, 0
  br i1 %.not6.i.i.i.i, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.v
  %xtraiter = and i64 %i.ek, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.prol ], [ %i.eb, %.lr.ph.i.i.i.i.preheader ]
  %.057.i.i.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.prol ], [ %i.dw, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.em = load i8, ptr %.057.i.i.i.i.prol, align 1, !tbaa !39
  %i.en = zext i8 %i.em to i64
  %i.eo = add i64 %.08.i.i.i.i.prol, %i.en        ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !467

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.prol ]
  %i.eq = icmp ult i64 %i.ej, 7
  br i1 %i.eq, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.fv, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.057.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.er = load i8, ptr %.057.i.i.i.i, align 1, !tbaa !39
  %i.es = zext i8 %i.er to i64
  %i.et = add i64 %.08.i.i.i.i, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !39
  %i.ew = zext i8 %i.ev to i64
  %i.ex = add i64 %i.et, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !39
  %i.fa = zext i8 %i.ez to i64
  %i.fb = add i64 %i.ex, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !39
  %i.fe = zext i8 %i.fd to i64
  %i.ff = add i64 %i.fb, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 4
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !39
  %i.fi = zext i8 %i.fh to i64
  %i.fj = add i64 %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 5
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !39
  %i.fm = zext i8 %i.fl to i64
  %i.fn = add i64 %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 6
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !39
  %i.fq = zext i8 %i.fp to i64
  %i.fr = add i64 %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 7
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !39
  %i.fu = zext i8 %i.ft to i64
  %i.fv = add i64 %i.fr, %i.fu                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq ptr %i.fw, %i.el
  br i1 %.not.i.i.i.i.7, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !123

_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.v
  %.0.lcssa.i.i.i.i = phi i64 [ %i.eb, %bb.v ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.fv, %.lr.ph.i.i.i.i ]
  %i.fx = load i8, ptr %i.el, align 1, !tbaa !39
  %i.fy = sext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.lcssa.i.i.i.i
  tail call void @_ZN6google8protobuf8internal17PrintUTF8ErrorLogESt17basic_string_viewIcSt11char_traitsIcEES5_PKcb(i64 %i.ed, ptr nonnull %i.ee, i64 %i.fy, ptr nonnull %i.fz, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  br label %.critedge89

.critedge89:                                      ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit
  %i.ga = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.ga

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.gb = load ptr, ptr %2, align 8, !tbaa !108
  %i.gc = icmp ult ptr %.0.i97, %i.gb
  br i1 %i.gc, label %bb.x, label %common.ret, !prof !29

bb.x:                                             ; preds = %bb.w
  %i.gd = load i8, ptr %.0.i97, align 1, !tbaa !39 ; 2 uses
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %i.gf = icmp sgt i8 %i.gd, -1
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i97, i64 1 ; 2 uses
  br i1 %i.gf, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !39  ; 2 uses
  %i.gi = zext i8 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.gi, 7
  %i.gk = add nsw i32 %i.ge, -128
  %i.gl = or disjoint i32 %i.gj, %i.gk            ; 2 uses
  %i.gm = icmp sgt i8 %i.gh, -1
  br i1 %i.gm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i97, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.aa:                                            ; preds = %bb.y
  %i.go = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.0.i97, i32 noundef %i.gl) ; 2 uses
  %.fca.0.extract.i100 = extractvalue { ptr, i32 } %i.go, 0
  %.fca.1.extract.i101 = extractvalue { ptr, i32 } %i.go, 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.x, %bb.z, %bb.aa
  %.2127 = phi i32 [ %.fca.1.extract.i101, %bb.aa ], [ %i.gl, %bb.z ], [ %i.ge, %bb.x ]
  %.1.i102 = phi ptr [ %.fca.0.extract.i100, %bb.aa ], [ %i.gn, %bb.z ], [ %i.gg, %bb.x ]
  %i.gp = icmp eq i32 %.2127, %i.e
  br i1 %i.gp, label %bb.l, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit108.thread149, !llvm.loop !468

.preheader:                                       ; preds = %.preheader.preheader, %bb.ah
  %.184 = phi ptr [ %.285.ph, %bb.ah ], [ %1, %.preheader.preheader ]
  %i.gq = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef %.0.i.i) ; 3 uses
  %i.gr = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.gq, ptr noundef %.184, ptr noundef %2) ; 8 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.critedge91, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %.preheader
  %i.gt = load ptr, ptr %i.gq, align 8, !tbaa !84
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !81
  %i.gw = tail call noundef zeroext i1 @_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt(i64 %i.gv, ptr %i.gt, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i16 noundef zeroext %i.u)
  br i1 %i.gw, label %bb.ac, label %.critedge91, !prof !29

.critedge91:                                      ; preds = %.preheader, %bb.ab
  %i.gx = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.gx

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load ptr, ptr %2, align 8, !tbaa !108
  %i.gz = icmp ult ptr %i.gr, %i.gy
  br i1 %i.gz, label %bb.ad, label %common.ret, !prof !29

bb.ad:                                            ; preds = %bb.ac
  %i.ha = load i8, ptr %i.gr, align 1, !tbaa !39  ; 2 uses
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = icmp sgt i8 %i.ha, -1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 2 uses
  br i1 %i.hc, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !39  ; 2 uses
  %i.hf = zext i8 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 7
  %i.hh = add nsw i32 %i.hb, -128
  %i.hi = or disjoint i32 %i.hg, %i.hh            ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal8TcParser16MpRepeatedStringILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !152
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.bq = inttoptr i64 %i.bc to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi ptr [ %i.bp, %bb.o ], [ %i.bq, %bb.p ] ; 3 uses
  %i.br = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.br, label %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3NewEv.exit.i.i, label %bb.q, !prof !7

_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3NewEv.exit.i.i: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.bs = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 0, i64 16, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_PS1_.exit.i.i

bb.q:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.bt = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i.i, i64 noundef 24) ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = ptrtoint ptr %.0.i.i.i.i to i64
  store i64 %i.bv, ptr %i.bu, align 8, !tbaa !27
  store ptr null, ptr %i.bt, align 8, !tbaa !131
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 0, ptr %i.bw, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 16, ptr %i.bx, align 4, !tbaa !327
  br label %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_PS1_.exit.i.i

_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_PS1_.exit.i.i: ; preds = %bb.q, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3NewEv.exit.i.i
  %.0.i.i.i95 = phi ptr [ %i.bs, %_ZN6google8protobuf5Arena14InternalHelperINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE3NewEv.exit.i.i ], [ %i.bt, %bb.q ] ; 2 uses
  store ptr %.0.i.i.i95, ptr %i.bk, align 8, !tbaa !57
  br label %_ZN6google8protobuf8internal8TcParser32MaybeCreateRepeatedPtrFieldRefAtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEERNS0_16RepeatedPtrFieldIT_EEPvmPNS0_11MessageLiteE.exit

_ZN6google8protobuf8internal8TcParser32MaybeCreateRepeatedPtrFieldRefAtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEERNS0_16RepeatedPtrFieldIT_EEPvmPNS0_11MessageLiteE.exit: ; preds = %bb.m, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_PS1_.exit.i.i
  %i.by = phi ptr [ %.0.i.i.i95, %_ZN6google8protobuf5Arena21CreateArenaCompatibleINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPT_PS1_.exit.i.i ], [ %i.bl, %bb.m ] ; 9 uses
  %.not87 = icmp eq ptr %.0.i.i, null
  br i1 %.not87, label %.preheader.preheader, label %bb.r, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf8internal8TcParser32MaybeCreateRepeatedPtrFieldRefAtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEERNS0_16RepeatedPtrFieldIT_EEPvmPNS0_11MessageLiteE.exit
  %i.bz = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !328
  %i.cc = load i64, ptr %.0.i.i, align 8, !tbaa !331
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.s, label %.preheader.preheader, !prof !29

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !357 ; 3 uses
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !131 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.ci = and i64 %i.ch, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.not.i.i = icmp ne ptr %i.cg, null
  %i.ck = zext i1 %.not.i.i to i32
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

bb.u:                                             ; preds = %bb.s
  %i.cl = add nsw i64 %i.ch, -1
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit: ; preds = %bb.t, %bb.u
  %i.cp = phi i32 [ %i.ck, %bb.t ], [ %i.co, %bb.u ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !134
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %.preheader156, label %.preheader.preheader, !prof !29

.preheader.preheader:                             ; preds = %_ZN6google8protobuf8internal8TcParser32MaybeCreateRepeatedPtrFieldRefAtINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEERNS0_16RepeatedPtrFieldIT_EEPvmPNS0_11MessageLiteE.exit, %bb.r, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  br label %.preheader

.preheader156:                                    ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase15PrepareForParseEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 72 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cv = icmp eq i16 %i.u, 1024
  br label %bb.v

bb.v:                                             ; preds = %.preheader156, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.083 = phi ptr [ %.1.i104, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %1, %.preheader156 ] ; 3 uses
  %i.cw = load i8, ptr %.083, align 1, !tbaa !39  ; 2 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  %i.cy = icmp sgt i8 %i.cw, -1
  br i1 %i.cy, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %.083, i64 1
  br label %bb.w

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.v
  %i.da = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %.083, i32 noundef %i.cx) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.da, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.da, 1
  %.not.i = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not.i, label %.critedge89, label %bb.w, !prof !358

bb.w:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i96137 = phi i32 [ %i.cx, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i136 = phi ptr [ %i.cz, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.db = load atomic i64, ptr %i.ct monotonic, align 8 ; 2 uses
  %.not.i92.not = icmp eq i64 %i.db, 0
  br i1 %.not.i92.not, label %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.dc = add i64 %i.db, -32                      ; 2 uses
  store atomic i64 %i.dc, ptr %i.ct monotonic, align 8
  %i.dd = load atomic ptr, ptr %i.cu monotonic, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dc
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit: ; preds = %bb.w
  %i.dg = tail call noundef nonnull ptr @_ZN6google8protobuf8internal11SerialArena31AllocateFromStringBlockFallbackEv(ptr noundef nonnull align 8 dereferenceable(120) %i.cf)
  br label %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit

_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit: ; preds = %bb.x, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit
  %.0.i = phi ptr [ %i.df, %bb.x ], [ %i.dg, %_ZN6google8protobuf8internal11SerialArena19MaybeAllocateStringERPv.exit ] ; 10 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr %i.dh, ptr %.0.i, align 8, !tbaa !359
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !81
  store i8 0, ptr %i.dh, align 8, !tbaa !39
  %i.dj = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i96137, ptr noundef nonnull %storemerge.i136)
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.dk = sext i32 %.0.i96137 to i64              ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 noundef %i.dk, i8 noundef signext 0)
  %i.dl = load ptr, ptr %.0.i, align 8, !tbaa !84
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %storemerge.i136, i64 %i.dk, i1 false)
  %i.dm = getelementptr inbounds i8, ptr %storemerge.i136, i64 %i.dk
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.z:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena23AllocateFromStringBlockEv.exit
  %i.dn = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream18ReadStringFallbackEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i136, i32 noundef %.0.i96137, ptr noundef nonnull %.0.i)
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.y, %bb.z
  %.0.i98 = phi ptr [ %i.dm, %bb.y ], [ %i.dn, %bb.z ] ; 8 uses
  %i.do = load i32, ptr %i.cq, align 8, !tbaa !134 ; 5 uses
  %i.dp = load ptr, ptr %i.by, align 8, !tbaa !131
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.dr = and i64 %i.dq, 1
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.dt = icmp eq i32 %i.do, 1
  br i1 %i.dt, label %bb.aa, label %bb.ab, !prof !7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.du = add nsw i64 %i.dq, -1
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !137
  %i.dx = icmp eq i32 %i.do, %i.dw
  br i1 %i.dx, label %bb.aa, label %bb.ac, !prof !7

bb.aa:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  %i.dy = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i32 noundef 1, ptr noundef nonnull %.0.i.i)
  store ptr %.0.i, ptr %i.dy, align 8, !tbaa !57
  %i.dz = load ptr, ptr %i.by, align 8, !tbaa !131 ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, -1
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !135
  %i.ef = add nsw i32 %i.ee, 1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !135
  %.pre.i.i = load i32, ptr %i.cq, align 8, !tbaa !134
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.ab:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.i.i
  store ptr %.0.i, ptr %i.by, align 8, !tbaa !131
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

bb.ac:                                            ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.eh = sext i32 %i.do to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.eh
  store ptr %.0.i, ptr %i.ei, align 8, !tbaa !57
  %i.ej = load ptr, ptr %i.by, align 8, !tbaa !131 ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = add i64 %i.ek, -1
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !135
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !135
  br label %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit

_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.eq = phi ptr [ %.0.i, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.dz, %bb.aa ]
  %i.er = phi i32 [ %i.do, %bb.ab ], [ %i.do, %bb.ac ], [ %.pre.i.i, %bb.aa ]
  %i.es = add nsw i32 %i.er, 1                    ; 2 uses
  store i32 %i.es, ptr %i.cq, align 8, !tbaa !3
  %i.et = icmp eq ptr %.0.i98, null
  br i1 %i.et, label %.critedge89, label %bb.ad, !prof !186

bb.ad:                                            ; preds = %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit
  br i1 %i.cv, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eu = ptrtoint ptr %i.eq to i64               ; 2 uses
  %i.ev = and i64 %i.eu, 1
  %i.ew = icmp eq i64 %i.ev, 0
  %i.ex = add i64 %i.eu, -1
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = sext i32 %i.es to i64
  %i.fa = getelementptr [8 x i8], ptr %i.ey, i64 %i.ez
  %.0.i.i.i.i99 = select i1 %i.ew, ptr %i.by, ptr %i.fa
  %i.fb = load ptr, ptr %.0.i.i.i.i99, align 8, !tbaa !57 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !81
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !84
  %i.ff = tail call i32 @utf8_range_IsValid(ptr noundef %i.fe, i64 noundef %i.fd)
  %.not.i101 = icmp eq i32 %i.ff, 0
  br i1 %.not.i101, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fg = load i32, ptr %i.w, align 8, !tbaa !38
  %i.fh = zext i32 %i.fg to i64
  %i.fi = add i64 %i.fh, %i.v
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !120
  %i.fl = zext i16 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = add i64 %i.fi, %i.fm
  %i.fo = inttoptr i64 %i.fn to ptr               ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.fq = load i16, ptr %i.fp, align 4, !tbaa !47
  %i.fr = zext i16 %i.fq to i64
  %i.fs = add nuw nsw i64 %i.fr, 8
  %i.ft = and i64 %i.fs, 131064                   ; 4 uses
  %i.fu = load i8, ptr %i.fo, align 1, !tbaa !39
  %i.fv = sext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ft
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !30
  %i.fz = zext i32 %i.fy to i64
  %i.ga = sub nsw i64 %i.a, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 12                ; 2 uses
  %i.gc = add nsw i64 %i.gb, 1                    ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gc ; 2 uses
  %.not6.i.i.i.i = icmp samesign eq i64 %i.gc, 0
  br i1 %.not6.i.i.i.i, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.af
  %xtraiter = and i64 %i.gc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.prol ], [ %i.ft, %.lr.ph.i.i.i.i.preheader ]
  %.057.i.i.i.i.prol = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.prol ], [ %i.fo, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ge = load i8, ptr %.057.i.i.i.i.prol, align 1, !tbaa !39
  %i.gf = zext i8 %i.ge to i64
  %i.gg = add i64 %.08.i.i.i.i.prol, %i.gf        ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !510

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.gg, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.preheader ], [ %i.gg, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.prol ]
  %i.gi = icmp ult i64 %i.gb, 7
  br i1 %i.gi, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi i64 [ %i.hn, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.057.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gj = load i8, ptr %.057.i.i.i.i, align 1, !tbaa !39
  %i.gk = zext i8 %i.gj to i64
  %i.gl = add i64 %.08.i.i.i.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !39
  %i.go = zext i8 %i.gn to i64
  %i.gp = add i64 %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !39
  %i.gs = zext i8 %i.gr to i64
  %i.gt = add i64 %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 3
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !39
  %i.gw = zext i8 %i.gv to i64
  %i.gx = add i64 %i.gt, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 4
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !39
  %i.ha = zext i8 %i.gz to i64
  %i.hb = add i64 %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 5
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !39
  %i.he = zext i8 %i.hd to i64
  %i.hf = add i64 %i.hb, %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 6
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !39
  %i.hi = zext i8 %i.hh to i64
  %i.hj = add i64 %i.hf, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 7
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !39
  %i.hm = zext i8 %i.hl to i64
  %i.hn = add i64 %i.hj, %i.hm                    ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.057.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq ptr %i.ho, %i.gd
  br i1 %.not.i.i.i.i.7, label %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit, label %.lr.ph.i.i.i.i, !llvm.loop !123

_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.af
  %.0.lcssa.i.i.i.i = phi i64 [ %i.ft, %bb.af ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.hn, %.lr.ph.i.i.i.i ]
  %i.hp = load i8, ptr %i.gd, align 1, !tbaa !39
  %i.hq = sext i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.lcssa.i.i.i.i
  tail call void @_ZN6google8protobuf8internal17PrintUTF8ErrorLogESt17basic_string_viewIcSt11char_traitsIcEES5_PKcb(i64 %i.fv, ptr nonnull %i.fw, i64 %i.hq, ptr nonnull %i.hr, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
  br label %.critedge89

.critedge89:                                      ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, %_ZN6google8protobuf8internal8TcParser23ParseRepeatedStringOnceEPKcPNS0_5ArenaEPNS1_11SerialArenaEPNS1_12ParseContextERNS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE.exit, %_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt.exit
  %i.hs = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.hs

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ht = load ptr, ptr %2, align 8, !tbaa !108
  %i.hu = icmp ult ptr %.0.i98, %i.ht
  br i1 %i.hu, label %bb.ah, label %common.ret, !prof !29

bb.ah:                                            ; preds = %bb.ag
  %i.hv = load i8, ptr %.0.i98, align 1, !tbaa !39 ; 2 uses
  %i.hw = zext i8 %i.hv to i32                    ; 2 uses
  %i.hx = icmp sgt i8 %i.hv, -1
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i98, i64 1 ; 2 uses
  br i1 %i.hx, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !39  ; 2 uses
  %i.ia = zext i8 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.ia, 7
  %i.ic = add nsw i32 %i.hw, -128
  %i.id = or disjoint i32 %i.ib, %i.ic            ; 2 uses
  %i.ie = icmp sgt i8 %i.hz, -1
  br i1 %i.ie, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i98, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.ak:                                            ; preds = %bb.ai
  %i.ig = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.0.i98, i32 noundef %i.id) ; 2 uses
  %.fca.0.extract.i102 = extractvalue { ptr, i32 } %i.ig, 0
  %.fca.1.extract.i103 = extractvalue { ptr, i32 } %i.ig, 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.ah, %bb.aj, %bb.ak
  %.2129 = phi i32 [ %.fca.1.extract.i103, %bb.ak ], [ %i.id, %bb.aj ], [ %i.hw, %bb.ah ]
  %.1.i104 = phi ptr [ %.fca.0.extract.i102, %bb.ak ], [ %i.if, %bb.aj ], [ %i.hy, %bb.ah ]
  %i.ih = icmp eq i32 %.2129, %i.e
  br i1 %i.ih, label %bb.v, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit110.thread151, !llvm.loop !511

.preheader:                                       ; preds = %.preheader.preheader, %bb.ar
  %.184 = phi ptr [ %.285.ph, %bb.ar ], [ %1, %.preheader.preheader ]
  %i.ii = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef %.0.i.i) ; 3 uses
  %i.ij = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.ii, ptr noundef %.184, ptr noundef %2) ; 8 uses
  %i.ik = icmp eq ptr %i.ij, null
  br i1 %i.ik, label %.critedge91, label %bb.al, !prof !7

bb.al:                                            ; preds = %.preheader
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !84
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.in = load i64, ptr %i.im, align 8, !tbaa !81
  %i.io = tail call noundef zeroext i1 @_ZN6google8protobuf8internal8TcParser12MpVerifyUtf8ESt17basic_string_viewIcSt11char_traitsIcEEPKNS1_16TcParseTableBaseERKNS7_10FieldEntryEt(i64 %i.in, ptr %i.il, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i16 noundef zeroext %i.u)
  br i1 %i.io, label %bb.am, label %.critedge91, !prof !29

.critedge91:                                      ; preds = %.preheader, %bb.al
  %i.ip = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef nonnull %4, i64 noundef %5)
  ret ptr %i.ip

bb.am:                                            ; preds = %bb.al
  %i.iq = load ptr, ptr %2, align 8, !tbaa !108
  %i.ir = icmp ult ptr %i.ij, %i.iq
  br i1 %i.ir, label %bb.an, label %common.ret, !prof !29

bb.an:                                            ; preds = %bb.am
  %i.is = load i8, ptr %i.ij, align 1, !tbaa !39  ; 2 uses
  %i.it = zext i8 %i.is to i32                    ; 2 uses
  %i.iu = icmp sgt i8 %i.is, -1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 1 ; 2 uses
  br i1 %i.iu, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !39  ; 2 uses
  %i.ix = zext i8 %i.iw to i32
  %i.iy = shl nuw nsw i32 %i.ix, 7
  %i.iz = add nsw i32 %i.it, -128
  %i.ja = or disjoint i32 %i.iy, %i.iz            ; 2 uses
  %i.jb = icmp sgt i8 %i.iw, -1
  br i1 %i.jb, label %bb.ap, label %bb.aq
end_hunk_4
