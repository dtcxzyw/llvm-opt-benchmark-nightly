Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dsdCheck?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Dsd_CheckCacheDeallocate:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #10
  store ptr null, ptr @pCache, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Dsd_CheckCacheClear() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @pCache, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  store ptr null, ptr %i.e, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Dsd_CheckRootFunctionIdentity(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = icmp eq ptr %3, %i.b
  %i.d = icmp eq ptr %4, %i.b
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, %2
  %i.f = zext i1 %i.e to i32
  br label %bb.av

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = xor i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %2 to i64
  %i.l = xor i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %i.m) #10
  br label %bb.av

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %1, %i.b
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %2) #10
  br label %bb.av

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq ptr %2, %i.i
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %1 to i64
  %i.s = xor i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.t) #10
  br label %bb.av

bb.i:                                             ; preds = %bb.g
  %i.v = icmp eq ptr %2, %i.b
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @Cudd_bddLeq(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %1) #10
  br label %bb.av

bb.k:                                             ; preds = %bb.i
  %i.x = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.y = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.z = add i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, 12582917
  %i.ab = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = mul i64 %i.ac, 4256249
  %i.ae = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.af = add i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, 741457
  %i.ah = load ptr, ptr @pCache, align 8, !tbaa !8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !13
  %i.ak = sext i32 %i.aj to i64
  %i.al = urem i64 %i.ag, %i.ak
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !16
  %i.an = and i64 %i.al, 4294967295               ; 2 uses
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.an ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !17
  %i.at = icmp eq ptr %i.as, %2
  br i1 %i.at, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17
  %i.aw = icmp eq ptr %i.av, %3
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = icmp eq ptr %i.ay, %4
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = trunc i64 %i.bf to i32
  br label %bb.av

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bh = and i64 %i.x, -2
  %i.bi = inttoptr i64 %i.bh to ptr               ; 5 uses
  %i.bj = and i64 %i.y, -2
  %i.bk = inttoptr i64 %i.bj to ptr               ; 5 uses
  %i.bl = and i64 %i.ab, -2
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = and i64 %i.ae, -2
  %i.bo = inttoptr i64 %i.bn to ptr               ; 5 uses
  %i.bp = load i32, ptr %i.bi, align 8, !tbaa !37 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2147483647
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bt = zext i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !39
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bw = phi i32 [ %i.bv, %bb.q ], [ 2147483647, %bb.p ] ; 2 uses
  %i.bx = load i32, ptr %i.bk, align 8, !tbaa !37 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 2147483647
  br i1 %i.by, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !38
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ce = phi i32 [ %i.cd, %bb.s ], [ 2147483647, %bb.r ] ; 2 uses
  %i.cf = load i32, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 2147483647
  br i1 %i.cg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38
  %i.cj = zext i32 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cm = phi i32 [ %i.cl, %bb.u ], [ 2147483647, %bb.t ] ; 3 uses
  %i.cn = load i32, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 2147483647
  br i1 %i.co, label %.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !38
  %i.cr = zext i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !39
  br label %.preheader

.preheader:                                       ; preds = %bb.v, %bb.w
  %i.cu = phi i32 [ %i.ct, %bb.w ], [ 2147483647, %bb.v ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !40
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !40
  %spec.select.1 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.ce)
  %spec.select.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.cm) ; 2 uses
  %spec.select.3 = tail call i32 @llvm.smin.i32(i32 %spec.select.2, i32 %i.cu) ; 4 uses
  %i.cy = icmp eq i32 %spec.select.3, %i.bw
  br i1 %i.cy, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.preheader
  %.not153 = icmp eq ptr %1, %i.bi
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !41 ; 2 uses
  br i1 %.not153, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = xor i64 %i.db, 1
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !41
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = xor i64 %i.dg, 1
  %i.di = inttoptr i64 %i.dh to ptr
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !41
  br label %bb.aa

bb.aa:                                            ; preds = %.preheader, %bb.z, %bb.y
  %.sroa.0178.0 = phi ptr [ %i.da, %bb.z ], [ %i.dd, %bb.y ], [ %1, %.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.dk, %bb.z ], [ %i.di, %bb.y ], [ %1, %.preheader ] ; 4 uses
  %i.dl = icmp eq i32 %spec.select.3, %i.ce
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %.not153.1 = icmp eq ptr %2, %i.bk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !41 ; 2 uses
  br i1 %.not153.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = xor i64 %i.do, 1
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !41
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = xor i64 %i.dt, 1
  %i.dv = inttoptr i64 %i.du to ptr
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !41
  br label %bb.ae

bb.ae:                                            ; preds = %bb.aa, %bb.ad, %bb.ac
  %.sroa.9180.0 = phi ptr [ %i.dn, %bb.ad ], [ %i.dq, %bb.ac ], [ %2, %bb.aa ] ; 4 uses
  %.sroa.9.0 = phi ptr [ %i.dx, %bb.ad ], [ %i.dv, %bb.ac ], [ %2, %bb.aa ] ; 4 uses
  %i.dy = icmp eq i32 %spec.select.3, %i.cm       ; 2 uses
  br i1 %i.dy, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not153.2 = icmp eq ptr %3, %i.bm
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  br i1 %.not153.2, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = xor i64 %i.eb, 1
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !41
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = xor i64 %i.eg, 1
  %i.ei = inttoptr i64 %i.eh to ptr
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ag
  %.sroa.16184.0 = phi ptr [ %i.ea, %bb.ah ], [ %i.ed, %bb.ag ], [ %3, %bb.ae ] ; 6 uses
  %.sroa.16.0 = phi ptr [ %i.ek, %bb.ah ], [ %i.ei, %bb.ag ], [ %3, %bb.ae ] ; 4 uses
  %.not = icmp sgt i32 %i.cu, %spec.select.2
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not153.3 = icmp eq ptr %4, %i.bo
  %i.el = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !41 ; 2 uses
  br i1 %.not153.3, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = xor i64 %i.en, 1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !41
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = xor i64 %i.es, 1
  %i.eu = inttoptr i64 %i.et to ptr
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !41
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.23188.0 = phi ptr [ %i.em, %bb.al ], [ %i.ep, %bb.ak ] ; 4 uses
  %.sroa.23.0 = phi ptr [ %i.ew, %bb.al ], [ %i.eu, %bb.ak ] ; 2 uses
  br i1 %i.dy, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %.not151 = icmp eq ptr %.sroa.16184.0, %i.i     ; 2 uses
  %.0113 = select i1 %.not151, ptr %.sroa.16.0, ptr %.sroa.16184.0
  %.0117 = select i1 %.not151, ptr %.sroa.0.0, ptr %.sroa.0178.0
  %.not152 = icmp eq ptr %.sroa.23188.0, %i.i     ; 2 uses
  %.0115 = select i1 %.not152, ptr %.sroa.9.0, ptr %.sroa.9180.0
  %.0 = select i1 %.not152, ptr %.sroa.23.0, ptr %.sroa.23188.0
  %i.ex = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.0117, ptr noundef %.0115, ptr noundef %.0113, ptr noundef %.0)
  br label %bb.au

bb.ao:                                            ; preds = %bb.ai
  %.not155.not = icmp eq i32 %spec.select.3, %i.cm
  br i1 %.not155.not, label %bb.ap, label %.thread237

bb.ap:                                            ; preds = %bb.ao
  %.not150 = icmp eq ptr %.sroa.16184.0, %i.i     ; 2 uses
  %.1114 = select i1 %.not150, ptr %.sroa.16.0, ptr %.sroa.16184.0 ; 2 uses
  %.1118 = select i1 %.not150, ptr %.sroa.0.0, ptr %.sroa.0178.0 ; 2 uses
  %i.ey = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.1118, ptr noundef %.sroa.9180.0, ptr noundef %.1114, ptr noundef %4) ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fa = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.1118, ptr noundef %.sroa.9.0, ptr noundef %.1114, ptr noundef %4)
  br label %bb.au

bb.ar:                                            ; preds = %bb.am
  %.not149 = icmp eq ptr %.sroa.23188.0, %i.i     ; 2 uses
  %.1116 = select i1 %.not149, ptr %.sroa.9.0, ptr %.sroa.9180.0 ; 2 uses
  %.1 = select i1 %.not149, ptr %.sroa.23.0, ptr %.sroa.23188.0 ; 2 uses
  %i.fb = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.sroa.0178.0, ptr noundef %.1116, ptr noundef %.sroa.16184.0, ptr noundef %.1) ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.fd = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.sroa.0.0, ptr noundef %.1116, ptr noundef %.sroa.16.0, ptr noundef %.1)
  br label %bb.au

.thread237:                                       ; preds = %bb.ao
  %i.fe = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.sroa.0178.0, ptr noundef %.sroa.9180.0, ptr noundef %.sroa.16184.0, ptr noundef %4) ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread237
  %i.fg = tail call fastcc i32 @Dsd_CheckRootFunctionIdentity_rec(ptr noundef nonnull %0, ptr noundef %.sroa.0.0, ptr noundef %.sroa.9.0, ptr noundef %.sroa.16.0, ptr noundef %4)
  br label %bb.au

bb.au:                                            ; preds = %bb.aq, %bb.ap, %.thread237, %bb.at, %bb.ar, %bb.as, %bb.an
  %.0123 = phi i32 [ %i.ex, %bb.an ], [ %i.fa, %bb.aq ], [ %i.ey, %bb.ap ], [ %i.fd, %bb.as ], [ %i.fb, %bb.ar ], [ %i.fg, %bb.at ], [ %i.fe, %.thread237 ] ; 2 uses
  %i.fh = load ptr, ptr @pCache, align 8, !tbaa !8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !16
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %i.an ; 5 uses
  store ptr %1, ptr %i.fj, align 8, !tbaa !17
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %2, ptr %.sroa.6201.0..sroa_idx, align 8, !tbaa !17
  %.sroa.9203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store ptr %3, ptr %.sroa.9203.0..sroa_idx, align 8, !tbaa !17
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store ptr %4, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !17
  %i.fk = sext i32 %.0123 to i64
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.o, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0124 = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.h ], [ %i.w, %bb.j ], [ %i.bg, %bb.o ], [ %.0123, %bb.au ]
  ret i32 %.0124
}

declare i32 @Cudd_bddLeq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS12Dsd_Cache_t_", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !5, i64 8}
!14 = !{!"Dsd_Cache_t_", !15, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!15 = !{!"p1 _ZTS12Dsd_Entry_t_", !10, i64 0}
!16 = !{!14, !15, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS6DdNode", !10, i64 0}
!19 = !{!20, !18, i64 40}
!20 = !{!"DdManager", !21, i64 0, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !23, i64 80, !23, i64 88, !5, i64 96, !5, i64 100, !24, i64 104, !24, i64 112, !24, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !25, i64 152, !25, i64 160, !26, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !24, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !27, i64 280, !22, i64 288, !22, i64 296, !24, i64 304, !5, i64 312, !29, i64 320, !29, i64 328, !29, i64 336, !29, i64 344, !27, i64 352, !29, i64 360, !27, i64 368, !5, i64 376, !30, i64 384, !30, i64 392, !27, i64 400, !18, i64 408, !31, i64 416, !27, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !24, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !24, i64 472, !24, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !32, i64 528, !32, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !33, i64 568, !31, i64 576, !34, i64 584, !34, i64 592, !34, i64 600, !34, i64 608, !35, i64 616, !35, i64 624, !5, i64 632, !22, i64 640, !22, i64 648, !22, i64 656, !5, i64 664, !22, i64 672, !22, i64 680, !24, i64 688, !24, i64 696, !24, i64 704, !24, i64 712, !24, i64 720, !24, i64 728, !5, i64 736, !18, i64 744, !18, i64 752, !22, i64 760}
!21 = !{!"DdNode", !5, i64 0, !5, i64 4, !18, i64 8, !6, i64 16, !22, i64 32}
!22 = !{!"long", !6, i64 0}
!23 = !{!"p1 _ZTS7DdCache", !10, i64 0}
!24 = !{!"double", !6, i64 0}
!25 = !{!"p1 _ZTS10DdSubtable", !10, i64 0}
!26 = !{!"DdSubtable", !27, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!27 = !{!"p2 _ZTS6DdNode", !28, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p1 int", !10, i64 0}
!30 = !{!"p1 long", !10, i64 0}
!31 = !{!"p1 omnipotent char", !10, i64 0}
!32 = !{!"p1 _ZTS7MtrNode", !10, i64 0}
!33 = !{!"p1 _ZTS12DdLocalCache", !10, i64 0}
!34 = !{!"p1 _ZTS6DdHook", !10, i64 0}
!35 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!36 = !{!14, !5, i64 12}
!37 = !{!21, !5, i64 0}
!38 = !{!20, !29, i64 320}
!39 = !{!5, !5, i64 0}
!40 = !{!14, !5, i64 16}
!41 = !{!6, !6, i64 0}
end_hunk_0
