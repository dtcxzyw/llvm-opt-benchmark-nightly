Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReaderStmt?download=true
inline.NumInlined: 6253
inline.NumDeleted: 2940
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5clang13ASTStmtReader21VisitArraySectionExprEPNS_16ArraySectionExprE:bb.a
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = add i32 %i.q, -4
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !33 ; 4 uses
  %i.as = load i32, ptr %i.c, align 8, !tbaa !34  ; 2 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.c, align 8, !tbaa !34
  %i.au = zext i32 %i.as to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 912
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.m, ptr noundef nonnull align 8 dereferenceable(3832) %i.ar) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.aw, 32 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.ba, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 3688
  %i.bc = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit: ; preds = %bb.e, %bb.f
  %i.bh = phi ptr [ %i.bg, %bb.f ], [ %i.ar, %bb.e ]
  %i.bi = trunc i64 %i.aw to i32                  ; 3 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 31)
  %i.bk = icmp eq i32 %i.bi, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1712
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = add i32 %i.bj, -2
  %i.bo = add i32 %i.bn, %i.bm
  %.sroa.0.0.i.i.i.i.i = select i1 %i.bk, i32 0, i32 %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !34
  %i.bq = load i32, ptr %i.k, align 8, !tbaa !792
  %i.br = icmp eq i32 %i.bq, 0
  %.pre20 = load ptr, ptr %0, align 8, !tbaa !8   ; 5 uses
  br i1 %i.br, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre20, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre20, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre20, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre20, i64 24 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !34 ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 8, !tbaa !34
  %i.ca = zext i32 %i.by to i64
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !36 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 912
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.bt, ptr noundef nonnull align 8 dereferenceable(3832) %i.bv) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.extract.shift.i.i.i.i14 = lshr i64 %i.cd, 32 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i14, 0
  br i1 %i.ch, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 3688
  %i.cj = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i14, 4294967295
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit16

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit16: ; preds = %bb.i, %bb.j
  %i.co = phi ptr [ %i.cn, %bb.j ], [ %i.bv, %bb.i ]
  %i.cp = trunc i64 %i.cd to i32                  ; 3 uses
  %i.cq = tail call i32 @llvm.fshl.i32(i32 %i.cp, i32 %i.cp, i32 31)
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 1712
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.cq, -2
  %i.cv = add i32 %i.cu, %i.ct
  %.sroa.0.0.i.i.i.i.i15 = select i1 %i.cr, i32 0, i32 %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 %.sroa.0.0.i.i.i.i.i15, ptr %i.cw, align 4, !tbaa !34
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit16, %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  %i.cx = phi ptr [ %.pre, %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit16 ], [ %.pre20, %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !33 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !34 ; 2 uses
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !34
  %i.dg = zext i32 %i.de to i64
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !36 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 912
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !38
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.cz, ptr noundef nonnull align 8 dereferenceable(3832) %i.db) #22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.extract.shift.i.i.i.i17 = lshr i64 %i.dj, 32 ; 2 uses
  %i.dn = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i17, 0
  br i1 %i.dn, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 3688
  %i.dp = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i17, 4294967295
  %i.dq = and i64 %i.dp, 4294967295
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !35
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit19

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit19: ; preds = %bb.m, %bb.n
  %i.du = phi ptr [ %i.dt, %bb.n ], [ %i.db, %bb.m ]
  %i.dv = trunc i64 %i.dj to i32                  ; 3 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 31)
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 1712
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = add i32 %i.dw, -2
  %i.eb = add i32 %i.ea, %i.dz
  %.sroa.0.0.i.i.i.i.i18 = select i1 %i.dx, i32 0, i32 %i.eb
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.0.0.i.i.i.i.i18, ptr %i.ec, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtReader24VisitOMPArrayShapingExprEPNS_19OMPArrayShapingExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 25)) %0, ptr noundef initializes((8, 16)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.550", align 8 ; 9 uses
  %3 = alloca %"class.llvm::SmallVector.552", align 8 ; 11 uses
  tail call void @_ZN5clang13ASTStmtReader9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !18, !align !19 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !49
  %i.f = zext i32 %i.d to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 7 uses
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 13144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 13152 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = add i32 %i.p, -1
  store i32 %i.u, ptr %i.o, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !795
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.y
  store ptr %i.t, ptr %i.z, align 8, !tbaa !606
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.aa = and i64 %i.i, 4294967295                ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.ad, align 4, !tbaa !43
  %i.ae = icmp eq i64 %i.aa, 0                    ; 2 uses
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EEC2Em.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = icmp samesign ugt i64 %i.aa, 4
  br i1 %i.af, label %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef 8) #22
  %.pre.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !42
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.aa, %.pre13.i.i.i
  %.pre.pre.pre = load ptr, ptr %2, align 8, !tbaa !35 ; 2 uses
  br i1 %.not11.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i, %bb.b
  %i.ag = phi ptr [ %i.ab, %bb.b ], [ %.pre.pre.pre, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.b ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %.pre-phi.i.i3.i
  %i.ai = sub nsw i64 %i.aa, %.pre-phi.i.i3.i
  %i.aj = shl nsw i64 %i.ai, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.aj, i1 false), !tbaa !606
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i
  %.pre.pre = phi ptr [ %i.ag, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.i.i.i ]
  store i32 %i.j, ptr %i.ac, align 8, !tbaa !42
  %i.ak = and i64 %i.i, 4294967295
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EEC2Em.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj4EEC2Em.exit: ; preds = %bb.a, %.sink.split.i.i.i
  %.pre = phi ptr [ %i.ab, %bb.a ], [ %.pre.pre, %.sink.split.i.i.i ] ; 7 uses
  %i.al = phi i64 [ 0, %bb.a ], [ %i.ak, %.sink.split.i.i.i ]
  %.not = icmp eq i32 %i.j, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EEC2Em.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !18, !align !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 13144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !35 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 13152 ; 2 uses
  %.promoted = load i32, ptr %i.ar, align 8, !tbaa !42 ; 5 uses
  %wide.trip.count = and i64 %i.i, 4294967295     ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.as = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = icmp ult i32 %.promoted, %i.at
  %i.av = icmp ugt i64 %i.as, 4294967295
  %i.aw = or i1 %i.au, %i.av
  br i1 %i.aw, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.i, 4294967292               ; 4 uses
  %i.ax = trunc nuw i64 %n.vec to i32
  %i.ay = sub i32 %.promoted, %i.ax               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = trunc i64 %index to i32
  %i.ba = sub i32 %.promoted, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -16
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !50
  %wide.load49 = load <2 x ptr>, ptr %i.be, align 8, !tbaa !50
  %reverse = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse50 = shufflevector <2 x ptr> %wide.load49, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x ptr> %reverse, ptr %i.bf, align 8, !tbaa !606
  store <2 x ptr> %reverse50, ptr %i.bg, align 8, !tbaa !606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi i32 [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.ay, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bi = phi i32 [ %i.bn, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = add i32 %i.bi, -1                       ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv.prol
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !606
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !798

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa52.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bn, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %i.bn, %scalar.ph.prol ]
  %i.bp = sub nsw i64 %indvars.iv.ph, %i.aa
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ay, %middle.block ], [ %.lcssa52.unr, %scalar.ph.prol.loopexit ], [ %i.cz, %scalar.ph ]
  store i32 %.lcssa, ptr %i.ar, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %_ZN4llvm11SmallVectorIPN5clang4ExprELj4EEC2Em.exit
  call void @_ZN5clang19OMPArrayShapingExpr13setDimensionsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %.pre, i64 %i.al) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.br, ptr %3, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.bs, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 4, ptr %i.bt, align 4, !tbaa !43
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = icmp samesign ugt i64 %i.aa, 4
  br i1 %i.bu, label %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i20

_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.br, i64 noundef %i.aa, i64 noundef 8) #22
  %.pre.i.i.i23 = load i32, ptr %i.bs, align 8, !tbaa !42
  %.pre13.i.i.i24 = zext i32 %.pre.i.i.i23 to i64 ; 2 uses
  %.not11.i.i.i25 = icmp samesign eq i64 %i.aa, %.pre13.i.i.i24
  br i1 %.not11.i.i.i25, label %.sink.split.i.i.i22, label %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i.i
  %.pre.i26 = load ptr, ptr %3, align 8, !tbaa !35
  br label %.lr.ph.preheader.i.i.i20

.lr.ph.preheader.i.i.i20:                         ; preds = %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.d
  %i.bv = phi ptr [ %.pre.i26, %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.br, %bb.d ]
  %.pre-phi.i.i3.i21 = phi i64 [ %.pre13.i.i.i24, %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.pre-phi.i.i3.i21
  %i.bx = sub nsw i64 %i.aa, %.pre-phi.i.i3.i21
  %i.by = shl nsw i64 %i.bx, 3
  call void @llvm.memset.p0.i64(ptr align 4 %i.bw, i8 0, i64 %i.by, i1 false), !tbaa !44
  br label %.sink.split.i.i.i22

.sink.split.i.i.i22:                              ; preds = %.lr.ph.preheader.i.i.i20, %_ZN4llvm15SmallVectorImplIN5clang11SourceRangeEE7reserveEm.exit.i.i.i
  store i32 %i.j, ptr %i.bs, align 8, !tbaa !42
  br label %_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit

_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit: ; preds = %bb.c, %.sink.split.i.i.i22
  %i.bz = phi i32 [ 0, %bb.c ], [ %i.j, %.sink.split.i.i.i22 ]
  br i1 %.not, label %._crit_edge35, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit
  %wide.trip.count41 = and i64 %i.i, 4294967295
  br label %.lr.ph34

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ca = phi i32 [ %i.cz, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !50
  %i.cf = add i32 %i.ca, -1
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !606
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.cl = add i32 %i.ca, -2
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !606
  %i.co = zext i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !50
  %i.cs = add i32 %i.ca, -3
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !606
  %i.cv = zext i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !50
  %i.cz = add i32 %i.ca, -4                       ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !606
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !799

._crit_edge35.loopexit:                           ; preds = %.lr.ph34
  %.pre43 = load i32, ptr %i.bs, align 8, !tbaa !42
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit, %_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit
  %i.dc = phi i32 [ %.pre43, %._crit_edge35.loopexit ], [ %i.bz, %_ZN4llvm11SmallVectorIN5clang11SourceRangeELj4EEC2Em.exit ]
  %i.dd = load ptr, ptr %3, align 8, !tbaa !35
  %i.de = zext i32 %i.dc to i64
  call void @_ZN5clang19OMPArrayShapingExpr17setBracketsRangesEN4llvm8ArrayRefINS_11SourceRangeEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.dd, i64 %i.de) #22
  %i.df = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !18, !align !19 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !33 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !34 ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !34
  %i.do = zext i32 %i.dm to i64
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !35
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !36 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 912
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !38
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge35
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.dh, ptr noundef nonnull align 8 dereferenceable(3832) %i.dj) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge35
  %.sroa.4.0.extract.shift.i.i.i.i = lshr i64 %i.dr, 32 ; 2 uses
  %i.dv = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i, 0
  br i1 %i.dv, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 3688
  %i.dx = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i, 4294967295
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !41
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit: ; preds = %bb.f, %bb.g
  %i.ec = phi ptr [ %i.eb, %bb.g ], [ %i.dj, %bb.f ]
  %i.ed = trunc i64 %i.dr to i32                  ; 3 uses
  %i.ee = call i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.ed, i32 31)
  %i.ef = icmp eq i32 %i.ed, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1712
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = add i32 %i.ee, -2
  %i.ej = add i32 %i.ei, %i.eh
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ef, i32 0, i32 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.ek, align 8, !tbaa !34
  %i.el = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !18, !align !19 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !33 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !34 ; 2 uses
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 8, !tbaa !34
  %i.eu = zext i32 %i.es to i64
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !35
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !36 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 912
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !38
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.en, ptr noundef nonnull align 8 dereferenceable(3832) %i.ep) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit
  %.sroa.4.0.extract.shift.i.i.i.i27 = lshr i64 %i.ex, 32 ; 2 uses
  %i.fb = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i.i27, 0
  br i1 %i.fb, label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ep, i64 3688
  %i.fd = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i.i27, 4294967295
  %i.fe = and i64 %i.fd, 4294967295
  %i.ff = load ptr, ptr %i.fc, align 8, !tbaa !35
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !41
  br label %_ZN5clang13ASTStmtReader18readSourceLocationEv.exit29

_ZN5clang13ASTStmtReader18readSourceLocationEv.exit29: ; preds = %bb.i, %bb.j
  %i.fi = phi ptr [ %i.fh, %bb.j ], [ %i.ep, %bb.i ]
  %i.fj = trunc i64 %i.ex to i32                  ; 3 uses
  %i.fk = call i32 @llvm.fshl.i32(i32 %i.fj, i32 %i.fj, i32 31)
  %i.fl = icmp eq i32 %i.fj, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 1712
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = add i32 %i.fk, -2
  %i.fp = add i32 %i.fo, %i.fn
  %.sroa.0.0.i.i.i.i.i28 = select i1 %i.fl, i32 0, i32 %i.fp
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sroa.0.0.i.i.i.i.i28, ptr %i.fq, align 4, !tbaa !34
end_hunk_0
