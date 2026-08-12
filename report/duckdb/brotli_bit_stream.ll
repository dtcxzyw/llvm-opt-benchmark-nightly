inline.NumInlined: 36
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN13duckdb_brotli34BrotliBuildAndStoreHuffmanTreeFastEPNS_11HuffmanTreeEPKjmmPhPtPmS4_:bb.a
._crit_edge:                                      ; preds = %bb.e
  %i.j = icmp ult i64 %.1180, 2
  br i1 %i.j, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.k = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !44, !noalias !47 ; 3 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9, !alias.scope !47, !noalias !44
  %i.o = zext i8 %i.n to i64
  %i.p = and i64 %i.k, 7
  %i.q = shl nuw nsw i64 1, %i.p
  %i.r = or i64 %i.q, %i.o
  store i64 %i.r, ptr %i.m, align 1, !noalias !44
  %i.s = add i64 %i.k, 4                          ; 4 uses
  store i64 %i.s, ptr %6, align 8, !tbaa !7, !alias.scope !44, !noalias !47
  %i.t = load i64, ptr %i.a, align 16, !tbaa !7   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.u = lshr i64 %i.s, 3
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !9, !alias.scope !52, !noalias !49
  %i.x = zext i8 %i.w to i64
  %i.y = and i64 %i.s, 7
  %i.z = shl i64 %i.t, %i.y
  %i.aa = or i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.v, align 1, !noalias !49
  %i.ab = add i64 %i.s, %3
  store i64 %i.ab, ptr %6, align 8, !tbaa !7, !alias.scope !49, !noalias !52
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  store i8 0, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.t
  store i16 0, ptr %i.ad, align 2, !tbaa !35
  br label %.loopexit257

bb.f:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %i.i, i1 false)
  %.not206265 = icmp eq i64 %i.i, 0               ; 2 uses
  %i.ae = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.af = and i64 %.0184262, 1
  %lcmp.mod.not.not = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0184262
  %.sink.prol = trunc i64 %.0184262 to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = icmp eq i64 %.0184262, 0
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge291, %bb.f
  %.0202 = phi i32 [ 1, %bb.f ], [ %i.dk, %._crit_edge291 ] ; 7 uses
  br i1 %.not206265, label %._crit_edge270, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph269.prol, label %.lr.ph269.prol.loopexit

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !3  ; 3 uses
  %.not212.prol = icmp eq i32 %i.al, 0
  br i1 %.not212.prol, label %.lr.ph269.prol.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph269.prol
  %.not213.prol = icmp ult i32 %i.al, %.0202
  br i1 %.not213.prol, label %bb.i, label %bb.j, !prof !54

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink320.prol = phi i32 [ %.0202, %bb.i ], [ %i.al, %bb.h ]
  store i32 %.sink320.prol, ptr %0, align 4, !tbaa !55
  store i16 -1, ptr %i.ah, align 4, !tbaa !57
  store i16 %.sink.prol, ptr %i.ai, align 2, !tbaa !58
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %bb.j, %.lr.ph269.preheader
  %.1200.lcssa.unr = phi ptr [ poison, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  %.0198267.unr = phi i64 [ %i.i, %.lr.ph269.preheader ], [ %.0184262, %bb.j ], [ %.0184262, %.lr.ph269.prol ]
  %.0199266.unr = phi ptr [ %0, %.lr.ph269.preheader ], [ %i.aj, %bb.j ], [ %0, %.lr.ph269.prol ]
  br i1 %i.ak, label %._crit_edge270.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %bb.q
  %.0198267 = phi i64 [ %i.as, %bb.q ], [ %.0198267.unr, %.lr.ph269.prol.loopexit ] ; 2 uses
  %.0199266 = phi ptr [ %.1200.1, %bb.q ], [ %.0199266.unr, %.lr.ph269.prol.loopexit ] ; 5 uses
  %i.am = add i64 %.0198267, -1                   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3  ; 3 uses
  %.not212 = icmp eq i32 %i.ao, 0
  br i1 %.not212, label %.lr.ph269.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph269
  %.not213 = icmp ult i32 %i.ao, %.0202
  br i1 %.not213, label %bb.l, label %bb.m, !prof !54

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink320 = phi i32 [ %.0202, %bb.l ], [ %i.ao, %bb.k ]
  %.sink = trunc i64 %i.am to i16
  store i32 %.sink320, ptr %.0199266, align 4, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %.0199266, i64 4
  store i16 -1, ptr %i.ap, align 4, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %.0199266, i64 6
  store i16 %.sink, ptr %i.aq, align 2, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %.0199266, i64 8
  br label %.lr.ph269.1

.lr.ph269.1:                                      ; preds = %bb.m, %.lr.ph269
  %.1200 = phi ptr [ %i.ar, %bb.m ], [ %.0199266, %.lr.ph269 ] ; 5 uses
  %i.as = add i64 %.0198267, -2                   ; 4 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 3 uses
  %.not212.1 = icmp eq i32 %i.au, 0
  br i1 %.not212.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.lr.ph269.1
  %.not213.1 = icmp ult i32 %i.au, %.0202
  br i1 %.not213.1, label %bb.o, label %bb.p, !prof !54

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink320.1 = phi i32 [ %.0202, %bb.o ], [ %i.au, %bb.n ]
  %.sink.1 = trunc i64 %i.as to i16
  store i32 %.sink320.1, ptr %.1200, align 4, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %.1200, i64 4
  store i16 -1, ptr %i.av, align 4, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %.1200, i64 6
  store i16 %.sink.1, ptr %i.aw, align 2, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %.1200, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph269.1
  %.1200.1 = phi ptr [ %i.ax, %bb.p ], [ %.1200, %.lr.ph269.1 ] ; 2 uses
  %.not206.1 = icmp eq i64 %i.as, 0
  br i1 %.not206.1, label %._crit_edge270.loopexit, label %.lr.ph269, !llvm.loop !59

._crit_edge270.loopexit:                          ; preds = %bb.q, %.lr.ph269.prol.loopexit
  %.1200.lcssa = phi ptr [ %.1200.lcssa.unr, %.lr.ph269.prol.loopexit ], [ %.1200.1, %bb.q ] ; 2 uses
  %.pre321 = ptrtoint ptr %.1200.lcssa to i64
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %bb.g
  %.pre-phi = phi i64 [ %.pre321, %._crit_edge270.loopexit ], [ %i.ae, %bb.g ]
  %.0199.lcssa = phi ptr [ %.1200.lcssa, %._crit_edge270.loopexit ], [ %0, %bb.g ] ; 2 uses
  %i.ay = sub i64 %.pre-phi, %i.ae                ; 2 uses
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i32                  ; 4 uses
  %i.bb = add nsw i32 %i.ba, 1
  %sext = shl i64 %i.ay, 29
  %i.bc = ashr i64 %sext, 32                      ; 6 uses
  %i.bd = icmp ult i64 %i.bc, 13
  br i1 %i.bd, label %.preheader258, label %bb.u

.preheader258:                                    ; preds = %._crit_edge270
  %i.be = icmp samesign ugt i64 %i.bc, 1
  br i1 %i.be, label %.lr.ph285, label %_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit

.lr.ph285:                                        ; preds = %.preheader258, %bb.t
  %.045.i284 = phi i64 [ %i.bm, %bb.t ], [ 1, %.preheader258 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.045.i284
  %i.bg = load i64, ptr %i.bf, align 4            ; 2 uses
  %.sroa.0245.0.extract.trunc = trunc i64 %i.bg to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph285
  %.048.i = phi i64 [ %.045.i284, %.lr.ph285 ], [ %.047.i, %bb.s ] ; 3 uses
  %.047.i = add nsw i64 %.048.i, -1               ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.047.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !55
  %.not255 = icmp ugt i32 %i.bi, %.sroa.0245.0.extract.trunc
  br i1 %.not255, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.048.i
  %i.bk = load i64, ptr %i.bh, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  %.not54.i = icmp eq i64 %.047.i, 0
  br i1 %.not54.i, label %bb.t, label %bb.r, !llvm.loop !60

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi i64 [ 0, %bb.s ], [ %.048.i, %bb.r ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1.i
  store i64 %i.bg, ptr %i.bl, align 4
  %i.bm = add nuw nsw i64 %.045.i284, 1           ; 2 uses
  %exitcond316.not = icmp eq i64 %i.bm, %i.bc
  br i1 %exitcond316.not, label %_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit, label %.lr.ph285, !llvm.loop !61

bb.u:                                             ; preds = %._crit_edge270
  %i.bn = icmp ult i64 %i.bc, 57
  %i.bo = select i1 %i.bn, i64 2, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge282
  %indvars.iv = phi i64 [ %i.bo, %bb.u ], [ %indvars.iv.next, %._crit_edge282 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliShellGapsE, i64 %indvars.iv
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !7  ; 5 uses
  %i.br = icmp ult i64 %i.bq, %i.bc
  br i1 %i.br, label %.lr.ph281, label %._crit_edge282

.lr.ph281:                                        ; preds = %bb.v, %.critedge.i
  %.044.i279 = phi i64 [ %i.ca, %.critedge.i ], [ %i.bq, %bb.v ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.i279
  %i.bt = load i64, ptr %i.bs, align 4            ; 2 uses
  %.sroa.0243.0.extract.trunc = trunc i64 %i.bt to i32
  %.not.i272 = icmp ult i64 %.044.i279, %i.bq
  br i1 %.not.i272, label %.critedge.i, label %.lr.ph275

.lr.ph275:                                        ; preds = %.lr.ph281, %bb.w
  %.0.i273 = phi i64 [ %i.bu, %bb.w ], [ %.044.i279, %.lr.ph281 ] ; 3 uses
  %i.bu = sub nuw i64 %.0.i273, %i.bq             ; 4 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !55
  %.not254 = icmp ugt i32 %i.bw, %.sroa.0243.0.extract.trunc
  br i1 %.not254, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %.lr.ph275
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i273
  %i.by = load i64, ptr %i.bv, align 4
  store i64 %i.by, ptr %i.bx, align 4
  %.not.i = icmp ult i64 %i.bu, %i.bq
  br i1 %.not.i, label %.critedge.i, label %.lr.ph275, !llvm.loop !62

.critedge.i:                                      ; preds = %bb.w, %.lr.ph275, %.lr.ph281
  %.0.i.lcssa = phi i64 [ %.044.i279, %.lr.ph281 ], [ %.0.i273, %.lr.ph275 ], [ %i.bu, %bb.w ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i.lcssa
  store i64 %i.bt, ptr %i.bz, align 4
  %i.ca = add nuw i64 %.044.i279, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.bc
  br i1 %exitcond.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !63

._crit_edge282:                                   ; preds = %.critedge.i, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond315.not, label %_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit, label %bb.v, !llvm.loop !64

_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit: ; preds = %._crit_edge282, %bb.t, %.preheader258
  %i.cb = icmp sgt i32 %i.ba, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.0199.lcssa, i8 -1, i64 16, i1 false)
  br i1 %i.cb, label %.lr.ph290.preheader, label %._crit_edge291

.lr.ph290.preheader:                              ; preds = %_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.0199.lcssa, i64 16
  br label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.preheader, %.lr.ph290
  %.0189.in289 = phi i32 [ %.0189, %.lr.ph290 ], [ %i.ba, %.lr.ph290.preheader ] ; 2 uses
  %.0190288 = phi i32 [ %.2192, %.lr.ph290 ], [ %i.bb, %.lr.ph290.preheader ] ; 3 uses
  %.0193287 = phi i32 [ %.2195, %.lr.ph290 ], [ 0, %.lr.ph290.preheader ] ; 3 uses
  %.2201286 = phi ptr [ %i.df, %.lr.ph290 ], [ %i.cc, %.lr.ph290.preheader ] ; 5 uses
  %.0189 = add nsw i32 %.0189.in289, -1
  %i.cd = sext i32 %.0193287 to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !55
  %i.cg = sext i32 %.0190288 to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !55
  %.not210 = icmp ule i32 %i.cf, %i.ci            ; 3 uses
  %i.cj = zext i1 %.not210 to i32
  %.1194 = add nsw i32 %.0193287, %i.cj           ; 3 uses
  %not..not210 = xor i1 %.not210, true
  %i.ck = zext i1 %not..not210 to i32
  %.1191 = add nsw i32 %.0190288, %i.ck           ; 3 uses
  %.0188 = select i1 %.not210, i32 %.0193287, i32 %.0190288 ; 2 uses
  %i.cl = sext i32 %.1194 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !55
  %i.co = sext i32 %.1191 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !55
  %.not211 = icmp ule i32 %i.cn, %i.cq            ; 3 uses
  %i.cr = zext i1 %.not211 to i32
  %.2195 = add nsw i32 %.1194, %i.cr
  %not..not211 = xor i1 %.not211, true
  %i.cs = zext i1 %not..not211 to i32
  %.2192 = add nsw i32 %.1191, %i.cs
  %.0187 = select i1 %.not211, i32 %.1194, i32 %.1191 ; 2 uses
  %i.ct = sext i32 %.0188 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !55
  %i.cw = sext i32 %.0187 to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !55
  %i.cz = add i32 %i.cy, %i.cv
  %i.da = getelementptr inbounds i8, ptr %.2201286, i64 -8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !55
  %i.db = trunc i32 %.0188 to i16
  %i.dc = getelementptr inbounds i8, ptr %.2201286, i64 -4
  store i16 %i.db, ptr %i.dc, align 4, !tbaa !57
  %i.dd = trunc i32 %.0187 to i16
  %i.de = getelementptr inbounds i8, ptr %.2201286, i64 -2
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !58
  %i.df = getelementptr inbounds nuw i8, ptr %.2201286, i64 8
  store i64 -1, ptr %.2201286, align 4
  %i.dg = icmp samesign ugt i32 %.0189.in289, 2
  br i1 %i.dg, label %.lr.ph290, label %._crit_edge291, !llvm.loop !65

._crit_edge291:                                   ; preds = %.lr.ph290, %_ZN13duckdb_brotliL20SortHuffmanTreeItemsEPNS_11HuffmanTreeEmPFiPKS0_S3_E.exit
  %i.dh = shl nsw i32 %i.ba, 1
  %i.di = add nsw i32 %i.dh, -1
  %i.dj = tail call noundef i32 @_ZN13duckdb_brotli14BrotliSetDepthEiPNS_11HuffmanTreeEPhi(i32 noundef %i.di, ptr noundef %0, ptr noundef %4, i32 noundef 14)
  %.not207 = icmp eq i32 %i.dj, 0
  %i.dk = shl i32 %.0202, 1
  br i1 %.not207, label %bb.g, label %bb.x, !llvm.loop !66

bb.x:                                             ; preds = %._crit_edge291
  tail call void @_ZN13duckdb_brotli31BrotliConvertBitDepthsToSymbolsEPKhmPt(ptr noundef %4, i64 noundef %i.i, ptr noundef %5)
  %i.dl = icmp ult i64 %.1180, 5
  br i1 %i.dl, label %.lr.ph309, label %bb.aj

.lr.ph309:                                        ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.dm = load i64, ptr %6, align 8, !tbaa !7, !alias.scope !67, !noalias !70 ; 4 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !9, !alias.scope !70, !noalias !67
  %i.dq = zext i8 %i.dp to i64
  %i.dr = and i64 %i.dm, 7
  %i.ds = shl nuw nsw i64 1, %i.dr
  %i.dt = or i64 %i.ds, %i.dq
  store i64 %i.dt, ptr %i.do, align 1, !noalias !67
  %i.du = add i64 %i.dm, 2                        ; 3 uses
  store i64 %i.du, ptr %6, align 8, !tbaa !7, !alias.scope !67, !noalias !70
  %i.dv = add nsw i64 %.1180, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.dw = lshr i64 %i.du, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !9, !alias.scope !75, !noalias !72
  %i.dz = zext i8 %i.dy to i64
  %i.ea = and i64 %i.du, 7
  %i.eb = shl nuw nsw i64 %i.dv, %i.ea
  %i.ec = or i64 %i.eb, %i.dz
  store i64 %i.ec, ptr %i.dx, align 1, !noalias !72
  %i.ed = add i64 %i.dm, 4                        ; 4 uses
  store i64 %i.ed, ptr %6, align 8, !tbaa !7, !alias.scope !72, !noalias !75
  %.pre = load i64, ptr %i.a, align 16, !tbaa !7  ; 4 uses
  %i.ee = and i64 %.1180, 1
  %lcmp.mod349.not.not = icmp eq i64 %i.ee, 0
  br i1 %lcmp.mod349.not.not, label %.prol.preheader, label %.prol.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.af
  store i64 %spec.select359, ptr %i.a, align 1
  %cond355 = icmp eq i64 %.1180, 2
  br i1 %cond355, label %.loopexit.3, label %.lr.ph309.1

.lr.ph309.1:                                      ; preds = %.loopexit.loopexit.unr-lcssa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.pre.1 = load i64, ptr %i.ef, align 8, !tbaa !7 ; 4 uses
  %xtraiter348.1 = and i64 %.1180, 1
  %lcmp.mod349.1.not = icmp eq i64 %xtraiter348.1, 0
  br i1 %lcmp.mod349.1.not, label %.prol.loopexit.1, label %.prol.preheader.1

.prol.preheader.1:                                ; preds = %.lr.ph309.1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 16, !tbaa !7 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %.pre.1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !9
  %i.em = icmp ult i8 %i.ej, %i.el
  br i1 %i.em, label %bb.y, label %.prol.loopexit.1

bb.y:                                             ; preds = %.prol.preheader.1
  store i64 %.pre.1, ptr %i.eg, align 16, !tbaa !7
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !7
  br label %.prol.loopexit.1

.prol.loopexit.1:                                 ; preds = %.prol.preheader.1, %bb.y, %.lr.ph309.1
  %.unr.1 = phi i64 [ %.pre.1, %.lr.ph309.1 ], [ %.pre.1, %.prol.preheader.1 ], [ %i.eh, %bb.y ]
  %.0185307.unr.1 = phi i64 [ 2, %.lr.ph309.1 ], [ 3, %bb.y ], [ 3, %.prol.preheader.1 ]
  %cond356 = icmp eq i64 %.1180, 3
  br i1 %cond356, label %.loopexit.3, label %.lr.ph309.new.1

.lr.ph309.new.1:                                  ; preds = %.prol.loopexit.1, %bb.ac
  %i.en = phi i64 [ %i.fe, %bb.ac ], [ %.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %.0185307.1 = phi i64 [ %i.ff, %bb.ac ], [ %.0185307.unr.1, %.prol.loopexit.1 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0185307.1 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !7  ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.en
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9
  %i.eu = icmp ult i8 %i.er, %i.et
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph309.new.1
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !7
  store i64 %i.ep, ptr %i.ef, align 8, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph309.new.1
  %i.ev = phi i64 [ %i.en, %.lr.ph309.new.1 ], [ %i.ep, %bb.z ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0185307.1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !7  ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !9
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !9
  %i.fd = icmp ult i8 %i.fa, %i.fc
  br i1 %i.fd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.ev, ptr %i.ex, align 8, !tbaa !7
  store i64 %i.ey, ptr %i.ef, align 8, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fe = phi i64 [ %i.ev, %bb.aa ], [ %i.ey, %bb.ab ]
  %i.ff = add nuw nsw i64 %.0185307.1, 2          ; 2 uses
  %exitcond318.not.1.1 = icmp eq i64 %i.ff, %.1180
  br i1 %exitcond318.not.1.1, label %.loopexit.1, label %.lr.ph309.new.1, !llvm.loop !77

.loopexit.1:                                      ; preds = %bb.ac
  %cond357 = icmp eq i64 %.1180, 4
  br i1 %cond357, label %.lr.ph309.2, label %.loopexit.3

.lr.ph309.2:                                      ; preds = %.loopexit.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.pre.2 = load i64, ptr %i.fg, align 16, !tbaa !7 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !7  ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !9
end_hunk_0
