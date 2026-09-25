Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acecOrder?download=true
inline.NumInlined: 110
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Gia_PolynFindOrder:bb.a
  %i.ae = sext i32 %.val176 to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.c, label %.critedge, !llvm.loop !36

.critedge:                                        ; preds = %bb.c, %Vec_IntStart.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Vec_IntFreeP.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %.not.i224 = icmp eq ptr %i.ak, null
  br i1 %.not.i224, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.ak) #9
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %i.an = phi ptr [ %i.al, %.thread.i ], [ %i.ah, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.an) #9
  store ptr null, ptr %i.ag, align 8, !tbaa !47
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %.critedge, %bb.e
  %i.ao = tail call ptr @Gia_PolynCollectLastXor(ptr noundef nonnull %0, i32 noundef %3) #9 ; 2 uses
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !48
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val175 = load i32, ptr %i.ap, align 4, !tbaa !11
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.val175) ; 0 uses
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  %.val174264 = load i32, ptr %i.as, align 4, !tbaa !11
  %i.at = icmp sgt i32 %.val174264, 0
  br i1 %i.at, label %.lr.ph266, label %.critedge2.preheader

.lr.ph266:                                        ; preds = %Vec_IntFreeP.exit
  %i.au = getelementptr i8, ptr %0, i64 32
  %.not168 = icmp eq i32 %4, 0
  br label %bb.f

..critedge2.preheader_crit_edge:                  ; preds = %bb.p
  %i.av = trunc nsw i64 %indvars.iv.next295 to i32 ; 2 uses
  store i32 %i.av, ptr %i.b, align 4, !tbaa !11
  store i32 %spec.select.sink.i268, ptr %i.a, align 8
  store ptr %storemerge261272, ptr %i.d, align 8
  br label %.critedge2.preheader

.critedge2.preheader:                             ; preds = %..critedge2.preheader_crit_edge, %Vec_IntFreeP.exit
  %i.aw = phi ptr [ %storemerge261272, %..critedge2.preheader_crit_edge ], [ %i.c, %Vec_IntFreeP.exit ] ; 3 uses
  %i.ax = phi i32 [ %spec.select.sink.i268, %..critedge2.preheader_crit_edge ], [ 100, %Vec_IntFreeP.exit ] ; 2 uses
  %i.ay = phi i32 [ %i.av, %..critedge2.preheader_crit_edge ], [ 0, %Vec_IntFreeP.exit ]
  %.not162 = icmp eq i32 %4, 0                    ; 3 uses
  %i.az = getelementptr i8, ptr %1, i64 4
  %i.ba = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.bb = getelementptr i8, ptr %i.f, i64 8       ; 4 uses
  %i.bc = getelementptr i8, ptr %2, i64 4
  %i.bd = getelementptr i8, ptr %2, i64 8
  %i.be = getelementptr i8, ptr %0, i64 32        ; 2 uses
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph266, %bb.p
  %indvars.iv296 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next297, %bb.p ] ; 2 uses
  %indvars.iv294 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next295, %bb.p ] ; 7 uses
  %storemerge261271 = phi ptr [ %i.c, %.lr.ph266 ], [ %storemerge261272, %bb.p ] ; 6 uses
  %spec.select.sink.i269 = phi i32 [ 100, %.lr.ph266 ], [ %spec.select.sink.i268, %bb.p ] ; 3 uses
  %i.bf = phi ptr [ %i.ar, %.lr.ph266 ], [ %i.cu, %bb.p ]
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val193 = load ptr, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val193, i64 %indvars.iv296
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !34 ; 7 uses
  %.val196 = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [12 x i8], ptr %.val196, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.bj
  store i32 0, ptr %i.bl, align 4, !tbaa !34
  %.val202 = load i64, ptr %i.bk, align 4
  %i.bm = trunc i64 %.val202 to i32
  %i.bn = and i32 %i.bm, 536870911
  %i.bo = sub nsw i32 %i.bi, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.bp
  store i32 1, ptr %i.bq, align 4, !tbaa !34
  %.val221 = load i64, ptr %i.bk, align 4
  %i.br = lshr i64 %.val221, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = sub nsw i32 %i.bi, %i.bt
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val216, i64 %i.bv
  store i32 1, ptr %i.bw, align 4, !tbaa !34
  %i.bx = shl i32 %i.bi, 2
  %i.by = or disjoint i32 %i.bx, 3
  %i.bz = trunc nsw i64 %indvars.iv294 to i32
  %i.ca = icmp eq i32 %spec.select.sink.i269, %i.bz
  br i1 %i.ca, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.cb = icmp samesign ult i64 %indvars.iv294, 16
  br i1 %i.cb, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %storemerge261271, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge261271, i64 noundef 64) #10
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.g
  %i.ce = icmp samesign ult i64 %indvars.iv294, 1073741823
  %indvars.iv294.tr = trunc nsw i64 %indvars.iv294 to i32
  %i.cf = shl nsw i32 %indvars.iv294.tr, 1
  %spec.select.i = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 4 uses
  %i.cg = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv294, %i.cg
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %storemerge261271, null
  %i.ch = zext nneg i32 %spec.select.i to i64
  %i.ci = shl nuw nsw i64 %i.ch, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %storemerge261271, i64 noundef %i.ci) #10
  br label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.l
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.ci) #8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.j, %bb.i, %bb.n, %bb.m, %bb.f, %bb.k
  %storemerge261272 = phi ptr [ %storemerge261271, %bb.f ], [ %storemerge261271, %bb.k ], [ %i.cd, %bb.j ], [ %i.cc, %bb.i ], [ %i.cj, %bb.m ], [ %i.ck, %bb.n ] ; 4 uses
  %spec.select.sink.i268 = phi i32 [ %spec.select.sink.i269, %bb.f ], [ %spec.select.sink.i269, %bb.k ], [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 3 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %storemerge261272, i64 %indvars.iv294
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !34
  br i1 %.not168, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Vec_IntPush.exit
  %.val201 = load i64, ptr %i.bk, align 4         ; 2 uses
  %i.cm = trunc i64 %.val201 to i32
  %i.cn = and i32 %i.cm, 536870911
  %i.co = sub nsw i32 %i.bi, %i.cn
  %i.cp = lshr i64 %.val201, 32
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = and i32 %i.cq, 536870911
  %i.cs = sub nsw i32 %i.bi, %i.cr
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.bi, i32 noundef %i.co, i32 noundef %i.cs) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %Vec_IntPush.exit
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.cu = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %.val174 = load i32, ptr %i.cv, align 4, !tbaa !11
  %i.cw = sext i32 %.val174 to i64
  %i.cx = icmp slt i64 %indvars.iv.next297, %i.cw
  br i1 %i.cx, label %bb.f, label %..critedge2.preheader_crit_edge, !llvm.loop !37

bb.q:                                             ; preds = %.critedge2.preheader, %.critedge2
  %i.cy = phi ptr [ %i.aw, %.critedge2.preheader ], [ %i.is, %.critedge2 ]
  %i.cz = phi i32 [ %i.ax, %.critedge2.preheader ], [ %i.it, %.critedge2 ]
  %i.da = phi ptr [ %i.aw, %.critedge2.preheader ], [ %i.iu, %.critedge2 ]
  %i.db = phi ptr [ %i.aw, %.critedge2.preheader ], [ %i.iv, %.critedge2 ]
  %i.dc = phi i32 [ %i.ax, %.critedge2.preheader ], [ %i.iw, %.critedge2 ]
  %i.dd = phi i32 [ %i.ay, %.critedge2.preheader ], [ %i.ix, %.critedge2 ]
  %.0153286 = phi i32 [ 0, %.critedge2.preheader ], [ %i.iy, %.critedge2 ] ; 2 uses
  br i1 %.not162, label %.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.0153286) ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.r, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %._crit_edge
  %i.df = phi ptr [ %i.ft, %._crit_edge ], [ %i.cy, %.preheader ] ; 2 uses
  %i.dg = phi i32 [ %i.fu, %._crit_edge ], [ %i.cz, %.preheader ] ; 2 uses
  %i.dh = phi ptr [ %i.fv, %._crit_edge ], [ %i.da, %.preheader ] ; 2 uses
  %i.di = phi ptr [ %i.fw, %._crit_edge ], [ %i.db, %.preheader ] ; 2 uses
  %i.dj = phi i32 [ %i.fx, %._crit_edge ], [ %i.dc, %.preheader ] ; 2 uses
  %i.dk = phi i32 [ %i.fy, %._crit_edge ], [ %i.dd, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.3, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.val173 = load i32, ptr %i.az, align 4, !tbaa !11 ; 2 uses
  %i.dl = icmp sgt i32 %.val173, 4
  br i1 %i.dl, label %.lr.ph277, label %._crit_edge.thread

.lr.ph277:                                        ; preds = %bb.s
  %.val190 = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 5 uses
  %5 = udiv i32 %.val173, 5
  %i.dm = zext nneg i32 %5 to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph277, %bb.af
  %i.dn = phi ptr [ %i.df, %.lr.ph277 ], [ %i.ft, %bb.af ] ; 4 uses
  %i.do = phi i32 [ %i.dg, %.lr.ph277 ], [ %i.fu, %bb.af ] ; 4 uses
  %i.dp = phi ptr [ %i.dh, %.lr.ph277 ], [ %i.fv, %bb.af ] ; 4 uses
  %i.dq = phi ptr [ %i.di, %.lr.ph277 ], [ %i.fw, %bb.af ] ; 6 uses
  %i.dr = phi i32 [ %i.dj, %.lr.ph277 ], [ %i.fx, %bb.af ] ; 9 uses
  %i.ds = phi i32 [ %i.dk, %.lr.ph277 ], [ %i.fy, %bb.af ] ; 5 uses
  %indvars.iv301 = phi i64 [ %i.dm, %.lr.ph277 ], [ %indvars.iv.next302, %bb.af ] ; 2 uses
  %.2275 = phi i32 [ %.1, %.lr.ph277 ], [ %.3, %bb.af ] ; 2 uses
  %.0151274 = phi i32 [ 0, %.lr.ph277 ], [ %.1152, %bb.af ] ; 2 uses
  %indvars.iv.next302 = add nsw i64 %indvars.iv301, -1 ; 3 uses
  %i.dt = mul nuw nsw i64 %indvars.iv.next302, 5  ; 4 uses
  %.val192 = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val192, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !34 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !34 ; 2 uses
  %i.dz = sext i32 %i.dw to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !34
  %.not166 = icmp eq i32 %i.eb, 0
  br i1 %.not166, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = sext i32 %i.dy to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !34
  %.not167 = icmp eq i32 %i.ee, 0
  br i1 %.not167, label %bb.af, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ea, align 4, !tbaa !34
  store i32 0, ptr %i.ed, align 4, !tbaa !34
  %i.ef = load i32, ptr %i.du, align 4, !tbaa !34
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.eg
  store i32 1, ptr %i.eh, align 4, !tbaa !34
  %i.ei = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val192, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.el
  store i32 1, ptr %i.em, align 4, !tbaa !34
  %i.en = add nuw nsw i64 %i.dt, 2                ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val192, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !34
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %.val190, i64 %i.eq
  store i32 1, ptr %i.er, align 4, !tbaa !34
  %i.es = trunc nsw i64 %indvars.iv.next302 to i32
  %i.et = shl i32 %i.es, 2
  %i.eu = or disjoint i32 %i.et, 2
  %i.ev = icmp eq i32 %i.ds, %i.dr
  br i1 %i.ev, label %bb.w, label %Vec_IntPush.exit232

bb.w:                                             ; preds = %bb.v
  %i.ew = icmp slt i32 %i.dr, 16
  br i1 %i.ew, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.not9.i.i230 = icmp eq ptr %i.dq, null
  br i1 %.not9.i.i230, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ex = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dq, i64 noundef 64) #10
  br label %Vec_IntGrow.exit11.sink.split.i228

bb.z:                                             ; preds = %bb.x
  %i.ey = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  br label %Vec_IntGrow.exit11.sink.split.i228

bb.aa:                                            ; preds = %bb.w
  %i.ez = icmp samesign ult i32 %i.dr, 1073741823
  %i.fa = shl nuw nsw i32 %i.dr, 1
  %spec.select.i225 = select i1 %i.ez, i32 %i.fa, i32 2147483647 ; 4 uses
  %.not.i9.i226 = icmp samesign ult i32 %i.dr, %spec.select.i225
  br i1 %.not.i9.i226, label %bb.ab, label %Vec_IntPush.exit232

bb.ab:                                            ; preds = %bb.aa
  %.not9.i10.i227 = icmp eq ptr %i.dq, null
  %i.fb = zext nneg i32 %spec.select.i225 to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  br i1 %.not9.i10.i227, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = tail call ptr @realloc(ptr noundef nonnull %i.dq, i64 noundef %i.fc) #10
  br label %Vec_IntGrow.exit11.sink.split.i228

bb.ad:                                            ; preds = %bb.ab
  %i.fe = tail call noalias ptr @malloc(i64 noundef %i.fc) #8
  br label %Vec_IntGrow.exit11.sink.split.i228

Vec_IntGrow.exit11.sink.split.i228:               ; preds = %bb.ac, %bb.ad, %bb.y, %bb.z
  %storemerge258 = phi ptr [ %i.ey, %bb.z ], [ %i.ex, %bb.y ], [ %i.fd, %bb.ac ], [ %i.fe, %bb.ad ] ; 3 uses
  %spec.select.sink.i229 = phi i32 [ 16, %bb.z ], [ 16, %bb.y ], [ %spec.select.i225, %bb.ac ], [ %spec.select.i225, %bb.ad ] ; 3 uses
  store ptr %storemerge258, ptr %i.d, align 8, !tbaa !13
  store i32 %spec.select.sink.i229, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntPush.exit232

Vec_IntPush.exit232:                              ; preds = %bb.v, %bb.aa, %Vec_IntGrow.exit11.sink.split.i228
  %i.ff = phi ptr [ %i.dn, %bb.v ], [ %i.dn, %bb.aa ], [ %storemerge258, %Vec_IntGrow.exit11.sink.split.i228 ] ; 2 uses
  %i.fg = phi i32 [ %i.do, %bb.v ], [ %i.do, %bb.aa ], [ %spec.select.sink.i229, %Vec_IntGrow.exit11.sink.split.i228 ] ; 2 uses
  %i.fh = phi ptr [ %i.dp, %bb.v ], [ %i.dp, %bb.aa ], [ %storemerge258, %Vec_IntGrow.exit11.sink.split.i228 ] ; 5 uses
  %i.fi = phi i32 [ %i.dr, %bb.v ], [ %i.dr, %bb.aa ], [ %spec.select.sink.i229, %Vec_IntGrow.exit11.sink.split.i228 ] ; 2 uses
  %i.fj = add nsw i32 %i.ds, 1                    ; 3 uses
  store i32 %i.fj, ptr %i.b, align 4, !tbaa !11
  %i.fk = sext i32 %i.ds to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fk
  store i32 %i.eu, ptr %i.fl, align 4, !tbaa !34
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %Vec_IntPush.exit232
  %.val185 = load ptr, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val185, i64 %i.dt
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !34
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val185, i64 %i.ei
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !34
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val185, i64 %i.en
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !34
  %i.fs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.dw, i32 noundef %i.dy, i32 noundef %i.fn, i32 noundef %i.fp, i32 noundef %i.fr) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.t, %bb.u, %bb.ae, %Vec_IntPush.exit232
  %i.ft = phi ptr [ %i.ff, %bb.ae ], [ %i.ff, %Vec_IntPush.exit232 ], [ %i.dn, %bb.u ], [ %i.dn, %bb.t ] ; 3 uses
  %i.fu = phi i32 [ %i.fg, %bb.ae ], [ %i.fg, %Vec_IntPush.exit232 ], [ %i.do, %bb.u ], [ %i.do, %bb.t ] ; 3 uses
  %i.fv = phi ptr [ %i.fh, %bb.ae ], [ %i.fh, %Vec_IntPush.exit232 ], [ %i.dp, %bb.u ], [ %i.dp, %bb.t ] ; 3 uses
  %i.fw = phi ptr [ %i.fh, %bb.ae ], [ %i.fh, %Vec_IntPush.exit232 ], [ %i.dq, %bb.u ], [ %i.dq, %bb.t ] ; 3 uses
  %i.fx = phi i32 [ %i.fi, %bb.ae ], [ %i.fi, %Vec_IntPush.exit232 ], [ %i.dr, %bb.u ], [ %i.dr, %bb.t ] ; 3 uses
  %i.fy = phi i32 [ %i.fj, %bb.ae ], [ %i.fj, %Vec_IntPush.exit232 ], [ %i.ds, %bb.u ], [ %i.ds, %bb.t ] ; 3 uses
  %.1152 = phi i32 [ 1, %bb.ae ], [ 1, %Vec_IntPush.exit232 ], [ %.0151274, %bb.u ], [ %.0151274, %bb.t ] ; 2 uses
  %.3 = phi i32 [ 1, %bb.ae ], [ 1, %Vec_IntPush.exit232 ], [ %.2275, %bb.u ], [ %.2275, %bb.t ] ; 3 uses
  %i.fz = icmp samesign ugt i64 %indvars.iv301, 1
  br i1 %i.fz, label %bb.t, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.af
  %i.ga = icmp eq i32 %.1152, 0
  br i1 %i.ga, label %._crit_edge.thread, label %bb.s, !llvm.loop !39

._crit_edge.thread:                               ; preds = %bb.s, %._crit_edge
  %.2.lcssa341 = phi i32 [ %.3, %._crit_edge ], [ %.1, %bb.s ] ; 2 uses
  %i.gb = phi i32 [ %i.fy, %._crit_edge ], [ %i.dk, %bb.s ] ; 2 uses
  %i.gc = phi i32 [ %i.fx, %._crit_edge ], [ %i.dj, %bb.s ] ; 2 uses
  %i.gd = phi ptr [ %i.fw, %._crit_edge ], [ %i.di, %bb.s ] ; 2 uses
  %i.ge = phi ptr [ %i.fv, %._crit_edge ], [ %i.dh, %bb.s ] ; 2 uses
  %i.gf = phi i32 [ %i.fu, %._crit_edge ], [ %i.dg, %bb.s ] ; 2 uses
  %i.gg = phi ptr [ %i.ft, %._crit_edge ], [ %i.df, %bb.s ] ; 2 uses
  %.val172 = load i32, ptr %i.bc, align 4, !tbaa !11 ; 2 uses
  %i.gh = icmp sgt i32 %.val172, 1
  br i1 %i.gh, label %.lr.ph283, label %.critedge2

.lr.ph283:                                        ; preds = %._crit_edge.thread
  %.val180 = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 4 uses
  %6 = lshr i32 %.val172, 1
  %i.gi = zext nneg i32 %6 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph283, %bb.as
  %i.gj = phi ptr [ %i.gg, %.lr.ph283 ], [ %i.il, %bb.as ] ; 4 uses
  %i.gk = phi i32 [ %i.gf, %.lr.ph283 ], [ %i.im, %bb.as ] ; 9 uses
  %i.gl = phi ptr [ %i.ge, %.lr.ph283 ], [ %i.in, %bb.as ] ; 6 uses
  %i.gm = phi ptr [ %i.gd, %.lr.ph283 ], [ %i.io, %bb.as ] ; 2 uses
  %i.gn = phi i32 [ %i.gc, %.lr.ph283 ], [ %i.ip, %bb.as ] ; 2 uses
  %i.go = phi i32 [ %i.gb, %.lr.ph283 ], [ %i.iq, %bb.as ] ; 5 uses
  %indvars.iv303 = phi i64 [ %i.gi, %.lr.ph283 ], [ %indvars.iv.next304, %bb.as ] ; 2 uses
  %.4280 = phi i32 [ %.2.lcssa341, %.lr.ph283 ], [ %.5, %bb.as ] ; 2 uses
  %indvars.iv.next304 = add nsw i64 %indvars.iv303, -1 ; 3 uses
  %.val182 = load ptr, ptr %i.bd, align 8, !tbaa !13
  %.idx = shl nuw nsw i64 %indvars.iv.next304, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %.val182, i64 %.idx ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !34 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !34 ; 6 uses
  %i.gt = sext i32 %i.gq to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.val180, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !34
  %.not164 = icmp eq i32 %i.gv, 0
  br i1 %.not164, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gw = sext i32 %i.gs to i64                   ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %.val180, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !34
  %.not165 = icmp eq i32 %i.gy, 0
  br i1 %.not165, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val195 = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.gz = getelementptr inbounds [12 x i8], ptr %.val195, i64 %i.gw ; 3 uses
  store i32 0, ptr %i.gu, align 4, !tbaa !34
  store i32 0, ptr %i.gx, align 4, !tbaa !34
  %.val200 = load i64, ptr %i.gz, align 4
  %i.ha = trunc i64 %.val200 to i32
  %i.hb = and i32 %i.ha, 536870911
  %i.hc = sub nsw i32 %i.gs, %i.hb
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %.val180, i64 %i.hd
  store i32 1, ptr %i.he, align 4, !tbaa !34
  %.val219 = load i64, ptr %i.gz, align 4
  %i.hf = lshr i64 %.val219, 32
  %i.hg = trunc nuw i64 %i.hf to i32
  %i.hh = and i32 %i.hg, 536870911
  %i.hi = sub nsw i32 %i.gs, %i.hh
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %.val180, i64 %i.hj
  store i32 1, ptr %i.hk, align 4, !tbaa !34
  %i.hl = trunc nsw i64 %indvars.iv.next304 to i32
  %i.hm = shl i32 %i.hl, 2
  %i.hn = or disjoint i32 %i.hm, 1
  %i.ho = icmp eq i32 %i.go, %i.gk
  br i1 %i.ho, label %bb.aj, label %Vec_IntPush.exit240

bb.aj:                                            ; preds = %bb.ai
  %i.hp = icmp slt i32 %i.gk, 16
  br i1 %i.hp, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not9.i.i238 = icmp eq ptr %i.gl, null
  br i1 %.not9.i.i238, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hq = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gl, i64 noundef 64) #10
  br label %Vec_IntGrow.exit11.sink.split.i236

bb.am:                                            ; preds = %bb.ak
  %i.hr = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  br label %Vec_IntGrow.exit11.sink.split.i236

bb.an:                                            ; preds = %bb.aj
  %i.hs = icmp samesign ult i32 %i.gk, 1073741823
  %i.ht = shl nuw nsw i32 %i.gk, 1
  %spec.select.i233 = select i1 %i.hs, i32 %i.ht, i32 2147483647 ; 4 uses
  %.not.i9.i234 = icmp samesign ult i32 %i.gk, %spec.select.i233
  br i1 %.not.i9.i234, label %bb.ao, label %Vec_IntPush.exit240

bb.ao:                                            ; preds = %bb.an
  %.not9.i10.i235 = icmp eq ptr %i.gl, null
  %i.hu = zext nneg i32 %spec.select.i233 to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2                ; 2 uses
  br i1 %.not9.i10.i235, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hw = tail call ptr @realloc(ptr noundef nonnull %i.gl, i64 noundef %i.hv) #10
  br label %Vec_IntGrow.exit11.sink.split.i236

bb.aq:                                            ; preds = %bb.ao
  %i.hx = tail call noalias ptr @malloc(i64 noundef %i.hv) #8
  br label %Vec_IntGrow.exit11.sink.split.i236

Vec_IntGrow.exit11.sink.split.i236:               ; preds = %bb.ap, %bb.aq, %bb.al, %bb.am
  %storemerge = phi ptr [ %i.hr, %bb.am ], [ %i.hq, %bb.al ], [ %i.hw, %bb.ap ], [ %i.hx, %bb.aq ] ; 2 uses
  %spec.select.sink.i237 = phi i32 [ 16, %bb.am ], [ 16, %bb.al ], [ %spec.select.i233, %bb.ap ], [ %spec.select.i233, %bb.aq ] ; 2 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !13
  store i32 %spec.select.sink.i237, ptr %i.a, align 8, !tbaa !12
  br label %Vec_IntPush.exit240

Vec_IntPush.exit240:                              ; preds = %bb.ai, %bb.an, %Vec_IntGrow.exit11.sink.split.i236
  %i.hy = phi ptr [ %i.gj, %bb.ai ], [ %i.gj, %bb.an ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i236 ] ; 7 uses
  %i.hz = phi i32 [ %i.gk, %bb.ai ], [ %i.gk, %bb.an ], [ %spec.select.sink.i237, %Vec_IntGrow.exit11.sink.split.i236 ] ; 4 uses
  %i.ia = add nsw i32 %i.go, 1                    ; 3 uses
  store i32 %i.ia, ptr %i.b, align 4, !tbaa !11
  %i.ib = sext i32 %i.go to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ib
  store i32 %i.hn, ptr %i.ic, align 4, !tbaa !34
  br i1 %.not162, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntPush.exit240
  %.val199 = load i64, ptr %i.gz, align 4         ; 2 uses
  %i.id = trunc i64 %.val199 to i32
  %i.ie = and i32 %i.id, 536870911
  %i.if = sub nsw i32 %i.gs, %i.ie
  %i.ig = lshr i64 %.val199, 32
  %i.ih = trunc nuw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 536870911
  %i.ij = sub nsw i32 %i.gs, %i.ii
  %i.ik = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.gq, i32 noundef %i.gs, i32 noundef %i.if, i32 noundef %i.ij) ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %Vec_IntPush.exit240, %bb.ar, %bb.ag, %bb.ah
  %i.il = phi ptr [ %i.gj, %bb.ag ], [ %i.gj, %bb.ah ], [ %i.hy, %bb.ar ], [ %i.hy, %Vec_IntPush.exit240 ] ; 2 uses
  %i.im = phi i32 [ %i.gk, %bb.ag ], [ %i.gk, %bb.ah ], [ %i.hz, %bb.ar ], [ %i.hz, %Vec_IntPush.exit240 ] ; 2 uses
  %i.in = phi ptr [ %i.gl, %bb.ag ], [ %i.gl, %bb.ah ], [ %i.hy, %bb.ar ], [ %i.hy, %Vec_IntPush.exit240 ] ; 2 uses
  %i.io = phi ptr [ %i.gm, %bb.ag ], [ %i.gm, %bb.ah ], [ %i.hy, %bb.ar ], [ %i.hy, %Vec_IntPush.exit240 ] ; 2 uses
  %i.ip = phi i32 [ %i.gn, %bb.ag ], [ %i.gn, %bb.ah ], [ %i.hz, %bb.ar ], [ %i.hz, %Vec_IntPush.exit240 ] ; 2 uses
  %i.iq = phi i32 [ %i.go, %bb.ag ], [ %i.go, %bb.ah ], [ %i.ia, %bb.ar ], [ %i.ia, %Vec_IntPush.exit240 ] ; 2 uses
  %.5 = phi i32 [ %.4280, %bb.ag ], [ %.4280, %bb.ah ], [ 1, %bb.ar ], [ 1, %Vec_IntPush.exit240 ] ; 2 uses
  %i.ir = icmp samesign ugt i64 %indvars.iv303, 1
  br i1 %i.ir, label %bb.ag, label %.critedge2, !llvm.loop !40

.critedge2:                                       ; preds = %bb.as, %._crit_edge.thread
  %i.is = phi ptr [ %i.gg, %._crit_edge.thread ], [ %i.il, %bb.as ]
  %i.it = phi i32 [ %i.gf, %._crit_edge.thread ], [ %i.im, %bb.as ]
  %i.iu = phi ptr [ %i.ge, %._crit_edge.thread ], [ %i.in, %bb.as ]
  %i.iv = phi ptr [ %i.gd, %._crit_edge.thread ], [ %i.io, %bb.as ]
  %i.iw = phi i32 [ %i.gc, %._crit_edge.thread ], [ %i.ip, %bb.as ]
  %i.ix = phi i32 [ %i.gb, %._crit_edge.thread ], [ %i.iq, %bb.as ]
  %.4.lcssa = phi i32 [ %.2.lcssa341, %._crit_edge.thread ], [ %.5, %bb.as ]
  %i.iy = add nuw nsw i32 %.0153286, 1
  %.not = icmp eq i32 %.4.lcssa, 0
  br i1 %.not, label %bb.at, label %bb.q, !llvm.loop !41

bb.at:                                            ; preds = %.critedge2
  %i.iz = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #8 ; 3 uses
  %.val171 = load i32, ptr %i.h, align 4, !tbaa !11 ; 2 uses
  %i.ja = icmp sgt i32 %.val171, 0
  %.pre313 = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  br i1 %i.ja, label %.lr.ph289, label %.critedge4

.lr.ph289:                                        ; preds = %bb.at
  %wide.trip.count = zext nneg i32 %.val171 to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph289, %bb.bf
  %i.jb = phi ptr [ %i.iz, %.lr.ph289 ], [ %i.kb, %bb.bf ] ; 4 uses
  %i.jc = phi ptr [ %i.iz, %.lr.ph289 ], [ %i.kc, %bb.bf ] ; 6 uses
  %i.jd = phi i32 [ 100, %.lr.ph289 ], [ %i.kd, %bb.bf ] ; 9 uses
  %i.je = phi i32 [ 0, %.lr.ph289 ], [ %i.ke, %bb.bf ] ; 5 uses
  %indvars.iv305 = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next306, %bb.bf ] ; 4 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.pre313, i64 %indvars.iv305
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !34
  %.not160 = icmp eq i32 %i.jg, 0
  br i1 %.not160, label %bb.bf, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val194 = load ptr, ptr %i.be, align 8, !tbaa !46
  %i.jh = getelementptr inbounds nuw [12 x i8], ptr %.val194, i64 %indvars.iv305
  %.val222 = load i64, ptr %i.jh, align 4         ; 2 uses
  %i.ji = and i64 %.val222, 2147483648
  %.not.i241 = icmp ne i64 %i.ji, 0
  %i.jj = and i64 %.val222, 536870911
  %i.jk = icmp eq i64 %i.jj, 536870911
  %narrow.i.not = or i1 %.not.i241, %i.jk
  br i1 %narrow.i.not, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jl = icmp eq i32 %i.je, %i.jd
  br i1 %i.jl, label %bb.ax, label %Vec_IntPush.exit249

bb.ax:                                            ; preds = %bb.aw
  %i.jm = icmp slt i32 %i.jd, 16
  br i1 %i.jm, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not9.i.i247 = icmp eq ptr %i.jc, null
  br i1 %.not9.i.i247, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jc, i64 noundef 64) #10
  br label %Vec_IntPush.exit249

bb.ba:                                            ; preds = %bb.ay
  %i.jo = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #8
  br label %Vec_IntPush.exit249

end_hunk_0
