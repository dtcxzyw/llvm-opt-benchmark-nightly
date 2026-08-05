inline.NumInlined: 49
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_unicode_name:bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 1
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %1) #11
  %i.i = add nsw i32 %1, -1                       ; 2 uses
  %.not61 = icmp eq i32 %i.i, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.c, %bb.e
  %.04460 = phi i32 [ %i.i, %bb.e ], [ %1, %bb.c ], [ %1, %bb.d ]
  %i.j = phi i64 [ 2, %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.k = tail call ptr @__ctype_b_loc() #12
  %i.l = zext nneg i32 %.04460 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.04354 = phi ptr [ %i.f, %.lr.ph ], [ %.2, %bb.l ] ; 9 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 4 uses
  %i.p = sext i8 %i.o to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !14
  %i.s = and i16 %i.r, 16384
  %.not51 = icmp eq i16 %i.s, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.o, ptr %.04354, align 1, !tbaa !8
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %or.cond52 = icmp ult i8 %i.o, 10
  br i1 %or.cond52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 95, ptr %.04354, align 1, !tbaa !8
  %i.t = load i8, ptr %i.n, align 1, !tbaa !8
  %i.u = add i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.04354, i64 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 3 uses
  store i8 95, ptr %.04354, align 1, !tbaa !8
  %i.y = and i8 %i.x, 15
  %i.z = add nuw nsw i8 %i.y, 97
  %i.aa = getelementptr inbounds nuw i8, ptr %.04354, i64 2
  %i.ab = lshr i8 %i.x, 4
  %i.ac = add nuw nsw i8 %i.ab, 97
  %i.ad = getelementptr inbounds nuw i8, ptr %.04354, i64 3
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !8
  %i.ae = ashr i8 %i.x, 7
  %i.af = or i8 %i.ae, %i.o
  %i.ag = and i8 %i.af, 15
  %i.ah = add nuw nsw i8 %i.ag, 97
  %i.ai = getelementptr inbounds nuw i8, ptr %.04354, i64 4
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i8 [ %i.u, %bb.i ], [ %i.z, %bb.j ]
  %.1 = phi ptr [ %i.v, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.04354, i64 1
  store i8 %.sink, ptr %i.aj, align 1, !tbaa !8
  store i8 95, ptr %.1, align 1, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.043.pn = phi ptr [ %.04354, %bb.g ], [ %.1, %bb.k ]
  %.2 = getelementptr inbounds nuw i8, ptr %.043.pn, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.j ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.ak, label %bb.f, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %.043.lcssa = phi ptr [ %i.f, %bb.e ], [ %.2, %bb.l ]
  store i8 0, ptr %.043.lcssa, align 1, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.0 = phi ptr [ %i.f, %._crit_edge ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @vba_decompress(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca [4096 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = tail call ptr @blobCreate() #11          ; 10 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i32 %1, 3
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.g, i32 noundef 0) #11 ; 0 uses
  %i.i = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #11
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.preheader, label %._crit_edge.thread

.preheader:                                       ; preds = %bb.b, %.loopexit89
  %.063103 = phi i32 [ %.192, %.loopexit89 ], [ 0, %bb.b ]
  %.065102 = phi i32 [ %.368, %.loopexit89 ], [ 1, %bb.b ]
  %i.k = icmp ne i32 %.065102, 0
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit
  %.1101 = phi i32 [ %.063103, %.preheader ], [ %.4, %.loopexit ] ; 15 uses
  %.166100 = phi i1 [ %i.k, %.preheader ], [ true, %.loopexit ]
  %.06999 = phi i32 [ 1, %.preheader ], [ %i.do, %.loopexit ] ; 3 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %.06999, %i.m
  %.not83 = icmp eq i32 %i.n, 0
  br i1 %.not83, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not87 = icmp eq i32 %i.o, 2
  br i1 %.not87, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  %.not88 = icmp eq ptr %2, null
  br i1 %.not88, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.p = load i16, ptr %i.b, align 2, !tbaa !14   ; 2 uses
  %i.q = and i32 %.1101, 4095                     ; 8 uses
  %i.r = icmp samesign ult i32 %i.q, 129
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = icmp samesign ult i32 %i.q, 33
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = icmp samesign ult i32 %i.q, 17
  %i.u = select i1 %i.t, i32 12, i32 11
  br label %iter.check

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i32 %i.q, 65
  %i.w = select i1 %i.v, i32 10, i32 9
  br label %iter.check

bb.k:                                             ; preds = %bb.g
  %i.x = icmp samesign ult i32 %i.q, 513
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = icmp samesign ult i32 %i.q, 257
  %i.z = select i1 %i.y, i32 8, i32 7
  br label %iter.check

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp samesign ult i32 %i.q, 2049
  br i1 %i.aa, label %bb.n, label %iter.check

bb.n:                                             ; preds = %bb.m
  %i.ab = icmp samesign ult i32 %i.q, 1025
  %i.ac = select i1 %i.ab, i32 6, i32 5
  br label %iter.check

iter.check:                                       ; preds = %bb.m, %bb.l, %bb.n, %bb.i, %bb.j
  %.064 = phi i32 [ %i.u, %bb.i ], [ %i.w, %bb.j ], [ %i.z, %bb.l ], [ %i.ac, %bb.n ], [ 4, %bb.m ] ; 2 uses
  %i.ad = zext i16 %i.p to i32
  %notmask = shl nsw i32 -1, %.064
  %i.ae = trunc nsw i32 %notmask to i16
  %i.af = xor i16 %i.ae, -1
  %i.ag = and i16 %i.p, %i.af                     ; 6 uses
  %i.ah = add nuw nsw i16 %i.ag, 3
  %i.ai = lshr i32 %i.ad, %.064                   ; 4 uses
  %i.aj = zext nneg i16 %i.ah to i32              ; 6 uses
  %i.ak = xor i32 %i.ai, -1                       ; 4 uses
  %min.iters.check = icmp samesign ult i16 %i.ag, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %narrow = add nuw i16 %i.ag, 2
  %i.al = trunc i32 %.1101 to i12                 ; 2 uses
  %i.am = trunc i16 %narrow to i12                ; 2 uses
  %i.an = xor i12 %i.al, -1
  %i.ao = icmp ult i12 %i.an, %i.am
  %i.ap = trunc i32 %i.ai to i12
  %i.aq = sub i12 %i.ap, %i.al
  %i.ar = icmp ult i12 %i.aq, %i.am
  %i.as = icmp samesign ugt i16 %i.ag, 4093
  %i.at = or i1 %i.ar, %i.as
  %i.au = or i1 %i.ao, %i.at
  br i1 %i.au, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.av = zext i32 %.1101 to i64
  %.mask = and i32 %.1101, 4095
  %i.aw = zext nneg i32 %.mask to i64
  %i.ax = xor i32 %i.ai, -1
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, %i.av
  %i.ba = and i64 %i.az, 4095
  %i.bb = sub nsw i64 %i.ba, %i.aw
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i16 %i.ag, 29
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.aj, 24
  %n.vec = and i32 %i.aj, 8160                    ; 5 uses
  %i.bc = add i32 %.1101, %n.vec                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = add i32 %.1101, %index                  ; 2 uses
  %i.be = add i32 %i.bd, %i.ak
  %i.bf = and i32 %i.be, 4095
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load = load <16 x i8>, ptr %i.bh, align 1, !tbaa !8
  %wide.load122 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !8
  %i.bj = and i32 %i.bd, 4095
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %wide.load, ptr %i.bl, align 1, !tbaa !8
  store <16 x i8> %wide.load122, ptr %i.bm, align 1, !tbaa !8
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.bn = icmp eq i32 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %i.aj
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i32 %i.aj, 8184                 ; 4 uses
  %i.bo = add i32 %.1101, %n.vec124               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = add i32 %.1101, %index125               ; 2 uses
  %i.bq = add i32 %i.bp, %i.ak
  %i.br = and i32 %i.bq, 4095
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  %wide.load126 = load <8 x i8>, ptr %i.bt, align 1, !tbaa !8
  %i.bu = and i32 %i.bp, 4095
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bv
  store <8 x i8> %wide.load126, ptr %i.bw, align 1, !tbaa !8
  %index.next127 = add nuw i32 %index125, 8       ; 2 uses
  %i.bx = icmp eq i32 %index.next127, %n.vec124
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i32 %n.vec124, %i.aj
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06298.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ] ; 3 uses
  %.297.ph = phi i32 [ %.1101, %iter.check ], [ %.1101, %vector.scevcheck ], [ %.1101, %vector.memcheck ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 4 uses
  %i.by = zext nneg i16 %i.ag to i32              ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 2
  %i.ca = and i32 %i.by, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ca, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cb = add i32 %.297.ph, %i.ak
  %i.cc = and i32 %i.cb, 4095
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !8
  %i.cg = add i32 %.297.ph, 1                     ; 2 uses
  %i.ch = and i32 %.297.ph, 4095
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  store i8 %i.cf, ptr %i.cj, align 1, !tbaa !8
  %i.ck = or disjoint i32 %.06298.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.cg, %vec.epilog.scalar.ph.prol ]
  %.06298.unr = phi i32 [ %.06298.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ck, %vec.epilog.scalar.ph.prol ]
  %.297.unr = phi i32 [ %.297.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cg, %vec.epilog.scalar.ph.prol ]
  %i.cl = icmp eq i32 %i.bz, %.06298.ph
  br i1 %i.cl, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.06298 = phi i32 [ %i.de, %vec.epilog.scalar.ph ], [ %.06298.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.297 = phi i32 [ %i.da, %vec.epilog.scalar.ph ], [ %.297.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.cm = add i32 %.297, %i.ak
  %i.cn = and i32 %i.cm, 4095
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !8
  %i.cr = add i32 %.297, 1
  %i.cs = and i32 %.297, 4095
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ct
  store i8 %i.cq, ptr %i.cu, align 1, !tbaa !8
  %i.cv = sub i32 %.297, %i.ai
  %i.cw = and i32 %i.cv, 4095
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !8
  %i.da = add i32 %.297, 2                        ; 2 uses
  %i.db = and i32 %i.cr, 4095
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dc
  store i8 %i.cz, ptr %i.dd, align 1, !tbaa !8
  %i.de = add nuw nsw i32 %.06298, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.de, %i.aj
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !37

bb.o:                                             ; preds = %bb.c
  %.not84 = icmp eq i32 %.1101, 0
  br i1 %.not84, label %._crit_edge106, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.df = and i32 %.1101, 4095                    ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  %or.cond = and i1 %i.dg, %.166100
  br i1 %or.cond, label %bb.q, label %._crit_edge106

bb.q:                                             ; preds = %bb.p
  %i.dh = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not85 = icmp eq i32 %i.dh, 2
  br i1 %.not85, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.ad

bb.t:                                             ; preds = %bb.q
  %i.di = call i32 @blobAddData(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef 4096) #11 ; 0 uses
  br label %.loopexit89

._crit_edge106:                                   ; preds = %bb.o, %bb.p
  %.pre-phi = phi i32 [ %i.df, %bb.p ], [ 0, %bb.o ]
  %i.dj = zext nneg i32 %.pre-phi to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dj
  %i.dl = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.dk, i32 noundef 1) #11
  %i.dm = icmp eq i32 %i.dl, 1
  %i.dn = zext i1 %i.dm to i32
  %spec.select = add i32 %.1101, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge106
  %.4 = phi i32 [ %spec.select, %._crit_edge106 ], [ %i.bo, %vec.epilog.middle.block ], [ %i.bc, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.da, %vec.epilog.scalar.ph ] ; 2 uses
  %i.do = shl nuw nsw i32 %.06999, 1
  %i.dp = icmp samesign ult i32 %.06999, 128
  br i1 %i.dp, label %bb.c, label %.loopexit89, !llvm.loop !38

.loopexit89:                                      ; preds = %.loopexit, %bb.t
  %.192 = phi i32 [ %.1101, %bb.t ], [ %.4, %.loopexit ] ; 2 uses
  %.368 = phi i32 [ 0, %bb.t ], [ 1, %.loopexit ]
  %i.dq = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #11
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %.preheader, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.loopexit89
  %i.ds = and i32 %.192, 4095                     ; 2 uses
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = call i32 @blobAddData(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef %i.dt) #11
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %bb.v, label %._crit_edge.thread

end_hunk_0
