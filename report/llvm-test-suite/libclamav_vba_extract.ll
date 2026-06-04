inline.NumInlined: 49
inline.NumDeleted: 18
begin_hunk_0_@get_unicode_name:bb.a
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
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
define dso_local ptr @vba_decompress(i32 noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
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
  %.06999 = phi i32 [ 1, %.preheader ], [ %i.dp, %.loopexit ] ; 3 uses
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
  %min.iters.check = icmp eq i16 %i.ag, 0
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %narrow = add nuw i16 %i.ag, 2                  ; 2 uses
  %i.al = trunc i32 %.1101 to i12                 ; 2 uses
  %i.am = trunc i16 %narrow to i12
  %i.an = xor i12 %i.al, -1
  %i.ao = icmp ult i12 %i.an, %i.am
  %i.ap = trunc i32 %i.ai to i12
  %i.aq = trunc i16 %narrow to i12
  %i.ar = sub i12 %i.ap, %i.al
  %i.as = icmp ult i12 %i.ar, %i.aq
  %i.at = icmp samesign ugt i16 %i.ag, 4093
  %i.au = or i1 %i.as, %i.at
  %i.av = or i1 %i.ao, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.aw = zext i32 %.1101 to i64
  %.mask = and i32 %.1101, 4095
  %i.ax = zext nneg i32 %.mask to i64
  %i.ay = xor i32 %i.ai, -1
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = and i64 %i.ba, 4095
  %i.bc = sub nsw i64 %i.ax, %i.bb
  %diff.check = icmp ult i64 %i.bc, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i16 %i.ag, 29
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i32 %i.aj, 28
  %n.vec = and i32 %i.aj, 8160                    ; 5 uses
  %i.bd = add i32 %.1101, %n.vec                  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = add i32 %.1101, %index                  ; 2 uses
  %i.bf = add i32 %i.be, %i.ak
  %i.bg = and i32 %i.bf, 4095
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <16 x i8>, ptr %i.bi, align 1, !tbaa !8
  %wide.load122 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !8
  %i.bk = and i32 %i.be, 4095
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !8
  store <16 x i8> %wide.load122, ptr %i.bn, align 1, !tbaa !8
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.bo = icmp eq i32 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %i.aj
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i32 %i.aj, 8188                 ; 4 uses
  %i.bp = add i32 %.1101, %n.vec124               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %i.bq = add i32 %.1101, %index125               ; 2 uses
  %i.br = add i32 %i.bq, %i.ak
  %i.bs = and i32 %i.br, 4095
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bt
  %wide.load126 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8
  %i.bv = and i32 %i.bq, 4095
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bw
  store <4 x i8> %wide.load126, ptr %i.bx, align 1, !tbaa !8
  %index.next127 = add nuw i32 %index125, 4       ; 2 uses
  %i.by = icmp eq i32 %index.next127, %n.vec124
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i32 %n.vec124, %i.aj
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06298.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec124, %vec.epilog.middle.block ] ; 3 uses
  %.297.ph = phi i32 [ %.1101, %iter.check ], [ %.1101, %vector.scevcheck ], [ %.1101, %vector.memcheck ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 4 uses
  %i.bz = zext nneg i16 %i.ag to i32              ; 2 uses
  %i.ca = add nuw nsw i32 %i.bz, 2
  %i.cb = and i32 %i.bz, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cb, 0
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.cc = add i32 %.297.ph, %i.ak
  %i.cd = and i32 %i.cc, 4095
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.ch = add i32 %.297.ph, 1                     ; 2 uses
  %i.ci = and i32 %.297.ph, 4095
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cj
  store i8 %i.cg, ptr %i.ck, align 1, !tbaa !8
  %i.cl = or disjoint i32 %.06298.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ch, %vec.epilog.scalar.ph.prol ]
  %.06298.unr = phi i32 [ %.06298.ph, %vec.epilog.scalar.ph.preheader ], [ %i.cl, %vec.epilog.scalar.ph.prol ]
  %.297.unr = phi i32 [ %.297.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ch, %vec.epilog.scalar.ph.prol ]
  %i.cm = icmp eq i32 %i.ca, %.06298.ph
  br i1 %i.cm, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.06298 = phi i32 [ %i.df, %vec.epilog.scalar.ph ], [ %.06298.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.297 = phi i32 [ %i.db, %vec.epilog.scalar.ph ], [ %.297.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.cn = add i32 %.297, %i.ak
  %i.co = and i32 %i.cn, 4095
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = add i32 %.297, 1
  %i.ct = and i32 %.297, 4095
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cu
  store i8 %i.cr, ptr %i.cv, align 1, !tbaa !8
  %i.cw = sub i32 %.297, %i.ai
  %i.cx = and i32 %i.cw, 4095
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = add i32 %.297, 2                        ; 2 uses
  %i.dc = and i32 %i.cs, 4095
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dd
  store i8 %i.da, ptr %i.de, align 1, !tbaa !8
  %i.df = add nuw nsw i32 %.06298, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.df, %i.aj
  br i1 %exitcond.not.1, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !37

bb.o:                                             ; preds = %bb.c
  %.not84 = icmp eq i32 %.1101, 0
  br i1 %.not84, label %._crit_edge106, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = and i32 %.1101, 4095                    ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  %or.cond = and i1 %i.dh, %.166100
  br i1 %or.cond, label %bb.q, label %._crit_edge106

bb.q:                                             ; preds = %bb.p
  %i.di = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 2) #11
  %.not85 = icmp eq i32 %i.di, 2
  br i1 %.not85, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  %.not86 = icmp eq ptr %2, null
  br i1 %.not86, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.ad

bb.t:                                             ; preds = %bb.q
  %i.dj = call i32 @blobAddData(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef 4096) #11 ; 0 uses
  br label %.loopexit89

._crit_edge106:                                   ; preds = %bb.o, %bb.p
  %.pre-phi = phi i32 [ %i.dg, %bb.p ], [ 0, %bb.o ]
  %i.dk = zext nneg i32 %.pre-phi to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dk
  %i.dm = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.dl, i32 noundef 1) #11
  %i.dn = icmp eq i32 %i.dm, 1
  %i.do = zext i1 %i.dn to i32
  %spec.select = add i32 %.1101, %i.do
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge106
  %.4 = phi i32 [ %spec.select, %._crit_edge106 ], [ %i.bp, %vec.epilog.middle.block ], [ %i.bd, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.db, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dp = shl nuw nsw i32 %.06999, 1
  %i.dq = icmp samesign ult i32 %.06999, 128
  br i1 %i.dq, label %bb.c, label %.loopexit89, !llvm.loop !38

.loopexit89:                                      ; preds = %.loopexit, %bb.t
  %.192 = phi i32 [ %.1101, %bb.t ], [ %.4, %.loopexit ] ; 2 uses
  %.368 = phi i32 [ 0, %bb.t ], [ 1, %.loopexit ]
  %i.dr = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) #11
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %.preheader, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.loopexit89
  %i.dt = and i32 %.192, 4095                     ; 2 uses
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = call i32 @blobAddData(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i64 noundef %i.du) #11
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.v, label %._crit_edge.thread

bb.v:                                             ; preds = %bb.u
  %.not82 = icmp eq ptr %2, null
  br i1 %.not82, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  br label %bb.ad

._crit_edge.thread:                               ; preds = %bb.b, %bb.u, %._crit_edge
  %i.dx = call i64 @blobGetDataSize(ptr noundef nonnull %i.d) #11 ; 3 uses
  %i.dy = call ptr @cli_malloc(i64 noundef %i.dx) #11 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge.thread
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  %.not81 = icmp eq ptr %2, null
  br i1 %.not81, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %bb.ad

bb.aa:                                            ; preds = %._crit_edge.thread
  %.not80 = icmp eq ptr %2, null
  br i1 %.not80, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = trunc i64 %i.dx to i32
  store i32 %i.ea, ptr %2, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eb = call ptr @blobGetData(ptr noundef nonnull %i.d) #11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr align 1 %i.eb, i64 %i.dx, i1 false)
  call void @blobDestroy(ptr noundef nonnull %i.d) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.r, %bb.s, %bb.e, %bb.f, %bb.a, %bb.ac, %bb.x
  %.0 = phi ptr [ %i.dy, %bb.ac ], [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.x ], [ null, %bb.r ], [ null, %bb.f ], [ null, %bb.s ], [ null, %bb.z ], [ null, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare ptr @blobCreate() local_unnamed_addr #2

declare void @blobDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @blobAddData(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @blobGetDataSize(ptr noundef) local_unnamed_addr #2

declare ptr @blobGetData(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @cli_decode_ole_object(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [257 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #11
  %i.f = icmp eq i32 %i.e, -1
end_hunk_0
begin_hunk_1_@wm_dir_read:bb.a
  %i.ew = call i32 @close(i32 noundef %i.j) #11   ; 0 uses
  %.not86 = icmp eq ptr %.073.lcssa, null
  br i1 %.not86, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  %i.ex = call ptr @cli_malloc(i64 noundef 48) #11 ; 10 uses
  %.not87 = icmp eq ptr %i.ex, null
  br i1 %.not87, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ey = load i16, ptr %.073.lcssa, align 8, !tbaa !69
  %i.ez = zext i16 %i.ey to i64
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = call ptr @cli_malloc(i64 noundef %i.fa) #11 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !18
  %.not88 = icmp eq ptr %i.fb, null
  br i1 %.not88, label %.loopexit.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fd = call ptr @cli_strdup(ptr noundef %0) #11
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 3 uses
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !23
  %i.ff = load i16, ptr %.073.lcssa, align 8, !tbaa !69
  %i.fg = zext i16 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 2
  %i.fi = call ptr @cli_malloc(i64 noundef %i.fh) #11 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 3 uses
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !24
  %.not89 = icmp eq ptr %i.fi, null
  br i1 %.not89, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !18
  call void @free(ptr noundef %i.fk) #11
  %i.fl = load ptr, ptr %i.fe, align 8, !tbaa !23 ; 2 uses
  %.not90 = icmp eq ptr %i.fl, null
  br i1 %.not90, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split

bb.bo:                                            ; preds = %bb.bm
  %i.fm = load i16, ptr %.073.lcssa, align 8, !tbaa !69
  %i.fn = zext i16 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = call ptr @cli_malloc(i64 noundef %i.fo) #11 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 3 uses
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !74
  %.not91 = icmp eq ptr %i.fp, null
  br i1 %.not91, label %.loopexit.sink.split.sink.split.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fr = load i16, ptr %.073.lcssa, align 8, !tbaa !69
  %i.fs = zext i16 %i.fr to i64
  %i.ft = call ptr @cli_malloc(i64 noundef %i.fs) #11 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !75
  %.not92 = icmp eq ptr %i.ft, null
  br i1 %.not92, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !74
  call void @free(ptr noundef %i.fv) #11
  br label %.loopexit.sink.split.sink.split.sink.split

bb.br:                                            ; preds = %bb.bp
  %i.fw = load i16, ptr %.073.lcssa, align 8, !tbaa !69 ; 2 uses
  %i.fx = zext i16 %i.fw to i32
  store i32 %i.fx, ptr %i.ex, align 8, !tbaa !25
  %.not = icmp eq i16 %i.fw, 0
  br i1 %.not, label %.loopexit, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.br
  %i.fy = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph140, %bb.bs
  %indvars.iv = phi i64 [ 0, %.lr.ph140 ], [ %indvars.iv.next, %bb.bs ] ; 6 uses
  %i.fz = call ptr @cli_strdup(ptr noundef nonnull @.str.25) #11
  %i.ga = load ptr, ptr %i.fc, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !26
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !66
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.gc, i64 %indvars.iv ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !76
  %i.gg = load ptr, ptr %i.fj, align 8, !tbaa !24
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv
  store i32 %i.gf, ptr %i.gh, align 4, !tbaa !4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !78
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !74
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !79
  %i.go = load ptr, ptr %i.fu, align 8, !tbaa !75
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gq = load i16, ptr %.073.lcssa, align 8, !tbaa !69
  %i.gr = zext i16 %i.gq to i64
  %i.gs = icmp samesign ult i64 %indvars.iv.next, %i.gr
  br i1 %i.gs, label %bb.bs, label %.loopexit, !llvm.loop !80

.loopexit.sink.split.sink.split.sink.split:       ; preds = %bb.bo, %bb.bq
  %i.gt = load ptr, ptr %i.fj, align 8, !tbaa !24
  call void @free(ptr noundef %i.gt) #11
  %i.gu = load ptr, ptr %i.fc, align 8, !tbaa !18
  call void @free(ptr noundef %i.gu) #11
  %i.gv = load ptr, ptr %i.fe, align 8, !tbaa !23
  br label %.loopexit.sink.split.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %.loopexit.sink.split.sink.split.sink.split, %bb.bn
  %.sink = phi ptr [ %i.fl, %bb.bn ], [ %i.gv, %.loopexit.sink.split.sink.split.sink.split ]
  call void @free(ptr noundef %.sink) #11
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %bb.bn, %bb.bl
  call void @free(ptr noundef nonnull %i.ex) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bs, %.loopexit.sink.split, %bb.br, %bb.bk
  %.072 = phi ptr [ null, %bb.bk ], [ %i.ex, %bb.br ], [ null, %.loopexit.sink.split ], [ %i.ex, %bb.bs ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.073.lcssa, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !66
  call void @free(ptr noundef %i.gx) #11
  call void @free(ptr noundef nonnull %.073.lcssa) #11
  br label %bb.bt

bb.bt:                                            ; preds = %.critedge.thread, %.loopexit, %.critedge, %bb.k, %bb.i, %bb.g, %bb.f, %bb.b
  %.075 = phi ptr [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.f ], [ %.072, %.loopexit ], [ null, %.critedge ], [ null, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  ret ptr %.075
}

; Function Attrs: nounwind uwtable
define dso_local ptr @wm_decrypt_macro(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.a, i32 noundef 0) #11
  %.not = icmp eq i64 %i.b, %i.a
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64                       ; 7 uses
  %i.d = tail call ptr @cli_malloc(i64 noundef %i.c) #11 ; 10 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.d, i32 noundef %2) #11
  %.not23 = icmp eq i32 %i.e, %2
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.not24 = icmp ne i8 %3, 0
  %i.f = icmp ne i32 %2, 0
  %or.cond = and i1 %.not24, %i.f
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i32 %2, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 4294967264               ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.g, align 1, !tbaa !8
  %wide.load30 = load <16 x i8>, ptr %i.h, align 1, !tbaa !8
  %i.i = xor <16 x i8> %wide.load, %broadcast.splat
  %i.j = xor <16 x i8> %wide.load30, %broadcast.splat
  store <16 x i8> %i.i, ptr %i.g, align 1, !tbaa !8
  store <16 x i8> %i.j, ptr %i.h, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !35

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.c, 4294967292             ; 3 uses
  %broadcast.splatinsert33 = insertelement <4 x i8> poison, i8 %3, i64 0
  %broadcast.splat34 = shufflevector <4 x i8> %broadcast.splatinsert33, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %index35 ; 2 uses
  %wide.load36 = load <4 x i8>, ptr %i.l, align 1, !tbaa !8
  %i.m = xor <4 x i8> %wide.load36, %broadcast.splat34
  store <4 x i8> %i.m, ptr %i.l, align 1, !tbaa !8
  %index.next37 = add nuw i64 %index35, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %n.vec32, %i.c
  br i1 %cmp.n38, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  %i.q = xor i8 %i.p, %3
  store i8 %i.q, ptr %i.o, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.b, %bb.a, %bb.d
  %.018 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.b ], [ %i.d, %bb.e ], [ %i.d, %middle.block ], [ %i.d, %vec.epilog.middle.block ], [ %i.d, %.lr.ph ]
  ret ptr %.018
}

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

declare i32 @cli_rmdirs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"vba_version_tag", !6, i64 0, !11, i64 8, !5, i64 16}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!10, !5, i64 16}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !6, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !20, i64 8}
!19 = !{!"vba_project_tag", !5, i64 0, !20, i64 8, !22, i64 16, !22, i64 24, !11, i64 32, !11, i64 40}
!20 = !{!"p2 omnipotent char", !21, i64 0}
!21 = !{!"any p2 pointer", !12, i64 0}
!22 = !{!"p1 int", !12, i64 0}
!23 = !{!19, !11, i64 40}
!24 = !{!19, !22, i64 16}
!25 = !{!19, !5, i64 0}
!26 = !{!11, !11, i64 0}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 short", !12, i64 0}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"branch_weights", i32 4, i32 28}
!36 = distinct !{!36, !17, !33, !34}
!37 = distinct !{!37, !17, !33}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = !{!41, !42, i64 48}
!41 = !{!"stat", !42, i64 0, !42, i64 8, !42, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !43, i64 72, !43, i64 88, !43, i64 104, !6, i64 120}
!42 = !{!"long", !6, i64 0}
!43 = !{!"timespec", !42, i64 0, !42, i64 8}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = !{!49, !42, i64 0}
!49 = !{!"atom_header_tag", !42, i64 0, !15, i64 8, !6, i64 10, !15, i64 12, !15, i64 14, !5, i64 16}
!50 = !{!49, !15, i64 8}
!51 = !{!49, !6, i64 10}
!52 = !{!49, !15, i64 12}
!53 = !{!49, !15, i64 14}
!54 = !{!49, !5, i64 16}
!55 = !{!56, !11, i64 0}
!56 = !{!"z_stream_s", !11, i64 0, !5, i64 8, !42, i64 16, !11, i64 24, !5, i64 32, !42, i64 40, !11, i64 48, !57, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !5, i64 88, !42, i64 96, !42, i64 104}
!57 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!58 = !{!56, !5, i64 8}
!59 = !{!56, !11, i64 24}
!60 = !{!56, !5, i64 32}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = !{!64, !5, i64 16}
!64 = !{!"mso_fib_tag", !6, i64 0, !5, i64 12, !5, i64 16}
!65 = !{!64, !5, i64 12}
!66 = !{!67, !68, i64 8}
!67 = !{!"macro_info_tag", !15, i64 0, !68, i64 8}
!68 = !{!"p1 _ZTS15macro_entry_tag", !12, i64 0}
!69 = !{!67, !15, i64 0}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = !{!19, !22, i64 24}
!75 = !{!19, !11, i64 32}
!76 = !{!77, !5, i64 20}
!77 = !{!"macro_entry_tag", !6, i64 0, !6, i64 1, !15, i64 2, !15, i64 4, !15, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!78 = !{!77, !5, i64 12}
!79 = !{!77, !6, i64 1}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17, !33, !34}
!82 = distinct !{!82, !17, !33, !34}
!83 = distinct !{!83, !17, !34, !33}
end_hunk_1
