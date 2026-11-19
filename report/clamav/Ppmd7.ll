Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/Ppmd7?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@UpdateModel:bb.a
  %i.gf = trunc i64 %i.ge to i32
  store i32 %i.gf, ptr %i.eq, align 4, !tbaa !38
  br label %.critedge

.critedge:                                        ; preds = %.unr-lcssa, %bb.aa, %bb.z
  %i.gg = phi ptr [ %i.ep, %.unr-lcssa ], [ %i.dh, %bb.aa ], [ %i.dh, %bb.z ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !35 ; 2 uses
  %i.gj = zext i16 %i.gi to i32
  %i.gk = shl nuw nsw i32 %i.dj, 1
  %i.gl = icmp samesign ult i32 %i.gk, %i.co
  %i.gm = zext i1 %i.gl to i16
  %i.gn = add i16 %i.gi, %i.gm
  %i.go = shl nuw nsw i32 %i.dj, 2
  %i.gp = icmp samesign ule i32 %i.go, %i.co
  %i.gq = shl nuw nsw i32 %i.dj, 3
  %i.gr = icmp samesign uge i32 %i.gq, %i.gj
  %i.gs = and i1 %i.gp, %i.gr
  %i.gt = select i1 %i.gs, i16 2, i16 0
  %i.gu = add i16 %i.gn, %i.gt
  br label %bb.al

bb.ag:                                            ; preds = %bb.y
  %i.gv = load i32, ptr %i.da, align 4, !tbaa !45 ; 2 uses
  %.not.i204 = icmp eq i32 %i.gv, 0
  br i1 %.not.i204, label %bb.ah, label %AllocUnits.exit207.thread

AllocUnits.exit207.thread:                        ; preds = %bb.ag
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !45
  store i32 %i.gy, ptr %i.da, align 4, !tbaa !45
  br label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.gz = load i8, ptr %i.db, align 4, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nuw nsw i32 %i.ha, 12               ; 2 uses
  %i.hc = load ptr, ptr %i.dc, align 8, !tbaa !29
  %i.hd = load ptr, ptr %i.dd, align 8, !tbaa !37 ; 3 uses
  %i.he = ptrtoint ptr %i.hc to i64
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = sub i64 %i.he, %i.hf
  %i.hh = trunc i64 %i.hg to i32
  %.not16.i206 = icmp ugt i32 %i.hb, %i.hh
  br i1 %.not16.i206, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hi = zext nneg i32 %i.hb to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hi
  store ptr %i.hj, ptr %i.dd, align 8, !tbaa !37
  br label %AllocUnits.exit207

bb.aj:                                            ; preds = %bb.ah
  %i.hk = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0)
  br label %AllocUnits.exit207

AllocUnits.exit207:                               ; preds = %bb.ai, %bb.aj
  %.0.i205 = phi ptr [ %i.hk, %bb.aj ], [ %i.hd, %bb.ai ] ; 2 uses
  %.not196.not = icmp eq ptr %.0.i205, null
  br i1 %.not196.not, label %.thread221, label %bb.ak

.thread221:                                       ; preds = %AllocUnits.exit207
  tail call fastcc void @RestartModel(ptr noundef nonnull %0)
  br label %bb.ao

bb.ak:                                            ; preds = %AllocUnits.exit207, %AllocUnits.exit207.thread
  %.0.i205218 = phi ptr [ %i.gx, %AllocUnits.exit207.thread ], [ %.0.i205, %AllocUnits.exit207 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.0.i205218, ptr noundef nonnull align 2 dereferenceable(6) %i.hl, i64 6, i1 false), !tbaa.struct !46
  %i.hm = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.hn = ptrtoint ptr %.0.i205218 to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %.0171228, i64 4
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !38
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i205218, i64 1 ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !41  ; 2 uses
  %i.hu = icmp ult i8 %i.ht, 30
  %i.hv = shl nuw nsw i8 %i.ht, 1
  %storemerge = select i1 %i.hu, i8 %i.hv, i8 120 ; 2 uses
  store i8 %storemerge, ptr %i.hs, align 1, !tbaa !41
  %i.hw = zext nneg i8 %storemerge to i32
  %i.hx = load i32, ptr %i.de, align 4, !tbaa !63
  %i.hy = add i32 %i.hx, %i.dg
  %i.hz = add i32 %i.hy, %i.hw
  %i.ia = trunc i32 %i.hz to i16
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.critedge
  %i.ib = phi ptr [ %i.hm, %bb.ak ], [ %i.gg, %.critedge ]
  %i.ic = phi i16 [ %i.ia, %bb.ak ], [ %i.gu, %.critedge ] ; 2 uses
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !41
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.0171228, i64 2
  %i.ij = zext i16 %i.ic to i32                   ; 2 uses
  %i.ik = add nuw nsw i32 %i.ij, 6
  %i.il = mul nuw nsw i32 %i.ik, %i.ih            ; 6 uses
  %i.im = add nsw i32 %.reass, %i.ij              ; 6 uses
  %i.in = mul nsw i32 %i.im, 6
  %i.io = icmp ult i32 %i.il, %i.in
  br i1 %i.io, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ip = icmp ugt i32 %i.il, %i.im
  %i.iq = select i1 %i.ip, i32 2, i32 1
  %i.ir = shl nsw i32 %i.im, 2
  %i.is = icmp uge i32 %i.il, %i.ir
  %i.it = zext i1 %i.is to i32
  %i.iu = add nuw nsw i32 %i.iq, %i.it
  br label %.critedge203

bb.an:                                            ; preds = %bb.al
  %i.iv = mul nuw nsw i32 %i.im, 9
  %.not200 = icmp samesign ult i32 %i.il, %i.iv
  %i.iw = select i1 %.not200, i32 4, i32 5
  %i.ix = mul nuw nsw i32 %i.im, 12
  %i.iy = icmp samesign uge i32 %i.il, %i.ix
  %i.iz = zext i1 %i.iy to i32
  %i.ja = add nuw nsw i32 %i.iw, %i.iz
  %i.jb = mul nuw nsw i32 %i.im, 15
  %i.jc = icmp samesign uge i32 %i.il, %i.jb
  %i.jd = zext i1 %i.jc to i32
  %i.je = add nuw nsw i32 %i.ja, %i.jd            ; 2 uses
  %i.jf = trunc nuw nsw i32 %i.je to i16
  br label %.critedge203

.critedge203:                                     ; preds = %bb.an, %bb.am
  %.pn = phi i16 [ %i.jf, %bb.an ], [ 3, %bb.am ]
  %.0167 = phi i32 [ %i.je, %bb.an ], [ %i.iu, %bb.am ]
  %storemerge201 = add i16 %.pn, %i.ic
  store i16 %storemerge201, ptr %i.ii, align 2, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %.0171228, i64 4
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !38
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ji
  %i.jk = zext i16 %i.di to i64
  %i.jl = getelementptr inbounds nuw [6 x i8], ptr %i.jj, i64 %i.jk ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i32 %.0, ptr %i.jm, align 2
  %i.jn = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !40
  store i8 %i.jo, ptr %i.jl, align 2, !tbaa !40
  %i.jp = trunc nuw nsw i32 %.0167 to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !41
  %i.jr = add i16 %i.di, 1
  store i16 %i.jr, ptr %.0171228, align 4, !tbaa !34
  %i.js = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0171228, i64 8
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !33
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jv ; 2 uses
  %i.jx = load ptr, ptr %0, align 8, !tbaa !31
  %.not194 = icmp eq ptr %i.jw, %i.jx
  br i1 %.not194, label %._crit_edge, label %bb.y

._crit_edge:                                      ; preds = %.critedge203, %bb.x
  %i.jy = phi ptr [ %i.cl, %bb.x ], [ %i.js, %.critedge203 ]
  %i.jz = zext i32 %.2174 to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jz ; 2 uses
  store ptr %i.ka, ptr %0, align 8, !tbaa !31
  store ptr %i.ka, ptr %i.cp, align 8, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %.thread221, %.thread214, %.thread, %._crit_edge, %bb.p, %bb.n, %bb.m
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @CreateSuccessors(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = load i32, ptr %i.e, align 2              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 16, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.070 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33   ; 2 uses
  %.not90123 = icmp eq i32 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14 ; 5 uses
  br i1 %.not90123, label %.thread104, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %2 = zext nneg i32 %.070 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.i = phi i32 [ %i.h, %.lr.ph ], [ %i.ab, %bb.i ]
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.j ; 5 uses
  %i.l = load i16, ptr %i.k, align 4, !tbaa !34
  %.not91 = icmp eq i16 %i.l, 1
  br i1 %.not91, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.o
  %i.q = load i8, ptr %i.d, align 2, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.068 = phi ptr [ %i.p, %bb.e ], [ %i.s, %bb.f ] ; 3 uses
  %i.r = load i8, ptr %.068, align 2, !tbaa !40
  %.not92 = icmp eq i8 %i.r, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.068, i64 6
  br i1 %.not92, label %.loopexit, label %bb.f

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  %.169 = phi ptr [ %i.t, %bb.g ], [ %.068, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.169, i64 2
  %i.v = load i32, ptr %i.u, align 2              ; 2 uses
  %.not93 = icmp eq i32 %i.v, %i.f
  br i1 %.not93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %3 = trunc nuw i64 %indvars.iv to i32
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.w ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, 0
  br i1 %i.y, label %.thread, label %.thread104

bb.i:                                             ; preds = %.loopexit
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.169, ptr %i.z, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !33 ; 2 uses
  %.not90 = icmp eq i32 %i.ab, 0
  br i1 %.not90, label %.thread104.loopexit, label %bb.d

.thread104.loopexit:                              ; preds = %bb.i
  %4 = trunc nuw i64 %indvars.iv.next to i32
  br label %.thread104

.thread104:                                       ; preds = %bb.c, %.thread104.loopexit, %bb.h
  %.171120 = phi i32 [ %3, %bb.h ], [ %4, %.thread104.loopexit ], [ %.070, %bb.c ]
  %.274 = phi ptr [ %i.x, %bb.h ], [ %i.k, %.thread104.loopexit ], [ %i.b, %bb.c ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = zext i32 %i.f to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15  ; 2 uses
  %i.ag = add i32 %i.f, 1
  %i.ah = load i16, ptr %.274, align 4, !tbaa !34 ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread104
  %i.aj = getelementptr inbounds nuw i8, ptr %.274, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !41
  br label %bb.q

bb.k:                                             ; preds = %.thread104
  %i.al = getelementptr inbounds nuw i8, ptr %.274, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.an
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.066 = phi ptr [ %i.ao, %bb.k ], [ %i.aq, %bb.l ] ; 3 uses
  %i.ap = load i8, ptr %.066, align 2, !tbaa !40
  %.not94 = icmp eq i8 %i.ap, %i.af
  %i.aq = getelementptr inbounds nuw i8, ptr %.066, i64 6
  br i1 %.not94, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.066, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !41
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.274, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !35
  %i.ax = zext i16 %i.aw to i32
  %i.ay = zext i16 %i.ah to i32
  %i.az = add nuw nsw i32 %i.at, %i.ay
  %reass.sub = sub nsw i32 %i.ax, %i.az
  %i.ba = add nsw i32 %reass.sub, 1               ; 4 uses
  %i.bb = shl nsw i32 %i.au, 1                    ; 2 uses
  %.not95 = icmp ugt i32 %i.bb, %i.ba
  br i1 %.not95, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = mul nsw i32 %i.au, 5
  %i.bd = icmp ugt i32 %i.bc, %i.ba
  %i.be = zext i1 %i.bd to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bf = mul nsw i32 %i.ba, 3
  %i.bg = add nsw i32 %i.bb, -1
  %i.bh = add nsw i32 %i.bg, %i.bf
  %i.bi = shl nsw i32 %i.ba, 1
  %i.bj = udiv i32 %i.bh, %i.bi
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = phi i32 [ %i.be, %bb.n ], [ %i.bj, %bb.o ]
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = add i8 %i.bl, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j
  %.sroa.5.0 = phi i8 [ %i.ak, %bb.j ], [ %i.bm, %bb.p ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %.375 = phi ptr [ %.274, %bb.q ], [ %.0, %bb.w ]
  %.4 = phi i32 [ %.171120, %bb.q ], [ %i.cg, %bb.w ]
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !37
  %.not96 = icmp eq ptr %i.bq, %i.br
  br i1 %.not96, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -12 ; 2 uses
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !29
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !45 ; 2 uses
  %.not97 = icmp eq i32 %i.bt, 0
  br i1 %.not97, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !45
  store i32 %i.bx, ptr %i.bp, align 4, !tbaa !45
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.by = tail call fastcc ptr @AllocUnitsRare(ptr noundef nonnull %0, i32 noundef 0) ; 2 uses
  %.not98 = icmp eq ptr %i.by, null
  br i1 %.not98, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u
  %.0 = phi ptr [ %i.bs, %bb.s ], [ %i.bw, %bb.u ], [ %i.by, %bb.v ] ; 8 uses
  store i16 1, ptr %.0, align 4, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store i8 %i.af, ptr %i.bz, align 2, !tbaa !15
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 3
  store i8 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.ag, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !42
  %i.ca = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.cb = ptrtoint ptr %.375 to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !33
  %i.cg = add i32 %.4, -1                         ; 3 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !64
  %i.ck = ptrtoint ptr %.0 to i64
  %i.cl = sub i64 %i.ck, %i.cc
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i32 %i.cm, ptr %i.cn, align 2
  %.not99 = icmp eq i32 %i.cg, 0
  br i1 %.not99, label %.thread, label %bb.r

.thread:                                          ; preds = %bb.v, %bb.w, %bb.h
  %.582 = phi ptr [ %i.x, %bb.h ], [ %.0, %bb.w ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.582
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @AllocUnitsRare(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 257) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = add i32 %i.g, %i.e                       ; 7 uses
  store i32 255, ptr %i.a, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %.088104.i = phi i32 [ %i.h, %bb.b ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i16
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !45
  %.not98100.i = icmp eq i32 %i.p, 0
  br i1 %.not98100.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.1102.i = phi i32 [ %.088104.i, %.lr.ph.i ], [ %.089101.i, %bb.d ] ; 2 uses
  %.089101.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.x, %bb.d ] ; 4 uses
  %i.r = zext i32 %.089101.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.1102.i, ptr %i.t, align 4, !tbaa !67
  %i.u = zext i32 %.1102.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %.089101.i, ptr %i.w, align 4, !tbaa !68
  %i.x = load i32, ptr %i.s, align 4, !tbaa !15   ; 2 uses
  store i16 0, ptr %i.s, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.n, ptr %i.y, align 2, !tbaa !70
  %.not98.i = icmp eq i32 %i.x, 0
  br i1 %.not98.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.1.lcssa.i = phi i32 [ %.088104.i, %bb.c ], [ %.089101.i, %bb.d ] ; 5 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 38
  br i1 %exitcond.not.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %._crit_edge.i
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !14   ; 8 uses
  %i.aa = zext i32 %i.h to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 2 uses
end_hunk_0
