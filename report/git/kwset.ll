Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/kwset?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kwsincr:bb.a
.lr.ph278:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 16, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph278, %.critedge232
  %.in281 = phi i64 [ %2, %.lr.ph278 ], [ %i.l, %.critedge232 ]
  %.0210277 = phi ptr [ %.0210274, %.lr.ph278 ], [ %.0210, %.critedge232 ] ; 3 uses
  %.0202276 = phi ptr [ %i.d, %.lr.ph278 ], [ %i.n, %.critedge232 ]
  %i.l = add i64 %.in281, -1                      ; 2 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %.not218 = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds i8, ptr %.0202276, i64 -1 ; 3 uses
  br i1 %.not218, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.in = phi ptr [ %i.q, %bb.c ], [ %i.n, %bb.b ]
  %i.r = load i8, ptr %.in, align 1, !tbaa !35    ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0210277, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  store ptr %i.s, ptr %i.a, align 16, !tbaa !37
  %.not219268 = icmp eq ptr %i.t, null
  br i1 %.not219268, label %.critedge231, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %.0207269 = phi ptr [ %.1208, %bb.e ], [ %i.t, %bb.d ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0207269, i64 24
  %i.v = load i8, ptr %i.u, align 8, !tbaa !38    ; 2 uses
  %.not220 = icmp eq i8 %i.r, %i.v
  br i1 %.not220, label %.critedge232, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %.0207269, ptr %i.w, align 8, !tbaa !37
  %i.x = icmp ult i8 %i.r, %i.v                   ; 3 uses
  %not. = xor i1 %i.x, true
  %spec.select = zext i1 %not. to i32
  %spec.select351.idx = select i1 %i.x, i64 0, i64 8
  %spec.select351 = getelementptr inbounds nuw i8, ptr %.0207269, i64 %spec.select351.idx
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %spec.select, ptr %i.y, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.1208 = load ptr, ptr %spec.select351, align 8, !tbaa !37 ; 2 uses
  %.not219 = icmp eq ptr %.1208, null
  br i1 %.not219, label %.critedge231.loopexit, label %.lr.ph, !llvm.loop !40

.critedge231.loopexit:                            ; preds = %bb.e
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge231

.critedge231:                                     ; preds = %.critedge231.loopexit, %bb.d
  %i.aa = phi ptr [ %i.s, %bb.d ], [ %.0207269, %.critedge231.loopexit ] ; 2 uses
  %i.ab = phi i1 [ true, %bb.d ], [ %i.x, %.critedge231.loopexit ]
  %.0205.lcssa = phi i32 [ 0, %bb.d ], [ %i.z, %.critedge231.loopexit ] ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp slt i64 %i.ag, 32
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge231
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef 32) #13
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge231
  %i.ai = phi ptr [ %.pre, %bb.f ], [ %i.ad, %.critedge231 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !22  ; 20 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.i, align 8
  %i.an = or i8 %i.am, 2
  store i8 %i.an, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = load i32, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = add nsw i64 %i.aq, %i.ao
  %i.as = xor i32 %i.ap, -1
  %i.at = sext i32 %i.as to i64
  %i.au = and i64 %i.ar, %i.at                    ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = sub i64 %i.au, %i.ax
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bb = sub i64 %i.ba, %i.ax
  %i.bc = icmp sgt i64 %i.ay, %i.bb
  %spec.store.select280 = select i1 %i.bc, ptr %i.az, ptr %i.av ; 5 uses
  store ptr %spec.store.select280, ptr %i.g, align 8
  store ptr %spec.store.select280, ptr %i.h, align 8, !tbaa !22
  %.not221 = icmp eq ptr %i.ak, null
  br i1 %.not221, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = ptrtoint ptr %spec.store.select280 to i64
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = icmp slt i64 %i.be, 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef 56) #13
  %.pre311 = load ptr, ptr %i.g, align 8, !tbaa !21
  %.pre312 = load ptr, ptr %i.h, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = phi ptr [ %.pre312, %bb.k ], [ %spec.store.select280, %bb.j ] ; 9 uses
  %i.bh = phi ptr [ %.pre311, %bb.k ], [ %spec.store.select280, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.i, align 8
  %i.bl = or i8 %i.bk, 2
  store i8 %i.bl, ptr %i.i, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = add nsw i64 %i.bo, %i.bm
  %i.bq = xor i32 %i.bn, -1
  %i.br = sext i32 %i.bq to i64
  %i.bs = and i64 %i.bp, %i.br                    ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !24  ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bw = sub i64 %i.bs, %i.bv
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bv
  %i.ca = icmp sgt i64 %i.bw, %i.bz
  %spec.store.select = select i1 %i.ca, ptr %i.bx, ptr %i.bt ; 2 uses
  store ptr %spec.store.select, ptr %i.g, align 8
  store ptr %spec.store.select, ptr %i.h, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.bg, ptr %i.cb, align 8, !tbaa !42
  %.not222 = icmp eq ptr %i.bg, null
  br i1 %.not222, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = icmp ugt ptr %i.ak, %i.bu
  %i.cd = icmp ult ptr %i.ak, %i.bx
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !22
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !21
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  tail call void @obstack_free(ptr noundef nonnull %0, ptr noundef nonnull %i.ak) #13
  br label %.loopexit

bb.r:                                             ; preds = %bb.n
  store i32 0, ptr %i.bg, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr null, ptr %i.ce, align 8, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %.0210277, ptr %i.cf, align 8, !tbaa !43
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.0210277, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !44
  %i.cj = add nsw i32 %i.ci, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 44
  store i32 0, ptr %i.cl, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i8 %i.r, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 25
  store i8 0, ptr %i.cn, align 1, !tbaa !46
  br i1 %i.ab, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !47
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ak, ptr %i.co, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not223271 = icmp eq i32 %.0205.lcssa, 0
  br i1 %.not223271, label %.critedge232, label %.lr.ph273

.lr.ph273:                                        ; preds = %bb.u, %bb.v
  %.2272 = phi i32 [ %4, %bb.v ], [ %.0205.lcssa, %bb.u ] ; 3 uses
  %3 = zext nneg i32 %.2272 to i64                ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %3
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 25 ; 8 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !46  ; 3 uses
  %.not224 = icmp eq i8 %i.cs, 0
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !34 ; 2 uses
  br i1 %.not224, label %bb.v, label %.critedge2

bb.v:                                             ; preds = %.lr.ph273
  %i.cv = icmp eq i32 %i.cu, 0
  %. = select i1 %i.cv, i8 -1, i8 1
  store i8 %., ptr %i.cr, align 1, !tbaa !46
  %4 = add nsw i32 %.2272, -1                     ; 2 uses
  %i.cw = icmp eq i32 %4, 0
  br i1 %i.cw, label %.critedge232, label %.lr.ph273, !llvm.loop !49

.critedge2:                                       ; preds = %.lr.ph273
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3 ; 2 uses
  switch i32 %i.cu, label %.critedge232 [
    i32 0, label %bb.w
    i32 1, label %bb.x
  ]

bb.w:                                             ; preds = %.critedge2
  %i.cy = add i8 %i.cs, -1                        ; 3 uses
  store i8 %i.cy, ptr %i.cr, align 1, !tbaa !46
  %.not225 = icmp eq i8 %i.cy, 0
  br i1 %.not225, label %.critedge232, label %bb.y

bb.x:                                             ; preds = %.critedge2
  %i.cz = add i8 %i.cs, 1                         ; 3 uses
  store i8 %i.cz, ptr %i.cr, align 1, !tbaa !46
  %.not226 = icmp eq i8 %i.cz, 0
  br i1 %.not226, label %.critedge232, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.da = phi i8 [ %i.cz, %bb.x ], [ %i.cy, %bb.w ]
  switch i8 %i.da, label %bb.ah [
    i8 -2, label %bb.z
    i8 2, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr i8, ptr %i.cx, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !34
  switch i32 %i.dc, label %bb.ac [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !47 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !48
  store ptr %i.cq, ptr %i.de, align 8, !tbaa !48
  store ptr %i.df, ptr %i.cq, align 8, !tbaa !47
  store i8 0, ptr %i.cr, align 1, !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 25
  store i8 0, ptr %i.dg, align 1, !tbaa !46
  br label %bb.ai

bb.ab:                                            ; preds = %bb.z
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !47 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !48 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !48
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !47
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !47
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !48
  store ptr %i.cq, ptr %i.dk, align 8, !tbaa !48
  store ptr %i.dl, ptr %i.cq, align 8, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 25 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !46
  %.not229 = icmp eq i8 %i.do, 1
  %i.dp = sext i1 %.not229 to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 25
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !46
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !46
  %.not230 = icmp eq i8 %i.dr, -1
  %i.ds = zext i1 %.not230 to i8
  store i8 %i.ds, ptr %i.cr, align 1, !tbaa !46
  store i8 0, ptr %i.dn, align 1, !tbaa !46
  br label %bb.ai

bb.ac:                                            ; preds = %bb.z
  tail call void @abort() #14
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.dt = getelementptr i8, ptr %i.cx, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !34
  switch i32 %i.du, label %bb.ag [
    i32 1, label %bb.ae
    i32 0, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !48 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !47
  store ptr %i.cq, ptr %i.dw, align 8, !tbaa !47
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !48
  store i8 0, ptr %i.cr, align 1, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 25
  store i8 0, ptr %i.dy, align 1, !tbaa !46
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !47 ; 5 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !47
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48
  store ptr %i.cq, ptr %i.eb, align 8, !tbaa !47
  store ptr %i.ec, ptr %i.dz, align 8, !tbaa !48
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !48
  store ptr %i.ee, ptr %i.ea, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 25 ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !46
  %.not227 = icmp eq i8 %i.eg, 1
  %i.eh = sext i1 %.not227 to i8
  store i8 %i.eh, ptr %i.cr, align 1, !tbaa !46
  %i.ei = load i8, ptr %i.ef, align 1, !tbaa !46
  %.not228 = icmp eq i8 %i.ei, -1
  %i.ej = zext i1 %.not228 to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 25
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !46
  store i8 0, ptr %i.ef, align 1, !tbaa !46
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  tail call void @abort() #14
  unreachable

bb.ah:                                            ; preds = %bb.y
  tail call void @abort() #14
  unreachable

bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.aa, %bb.ab
  %.0204 = phi ptr [ %i.dd, %bb.aa ], [ %i.dj, %bb.ab ], [ %i.dw, %bb.ae ], [ %i.eb, %bb.af ] ; 2 uses
  %5 = add nsw i32 %.2272, -1
  %6 = zext nneg i32 %5 to i64                    ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %6
  %i.em = load i32, ptr %i.el, align 4, !tbaa !34
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %6
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !37 ; 2 uses
  br i1 %i.en, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %.0204, ptr %i.ep, align 8, !tbaa !47
  br label %.critedge232

bb.ak:                                            ; preds = %bb.ai
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %.0204, ptr %i.eq, align 8, !tbaa !48
  br label %.critedge232

.critedge232:                                     ; preds = %.lr.ph, %bb.v, %bb.u, %.critedge2, %bb.w, %bb.x, %bb.ak, %bb.aj
  %.2209 = phi ptr [ %i.ak, %bb.w ], [ %i.ak, %bb.aj ], [ %i.ak, %bb.ak ], [ %i.ak, %bb.x ], [ %i.ak, %.critedge2 ], [ %i.ak, %bb.u ], [ %i.ak, %bb.v ], [ %.0207269, %.lr.ph ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2209, i64 16
  %.0210 = load ptr, ptr %i.er, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !50

._crit_edge:                                      ; preds = %.critedge232, %bb.a
  %.0210.lcssa = phi ptr [ %.0210274, %bb.a ], [ %.0210, %.critedge232 ] ; 3 uses
  %i.es = load i32, ptr %.0210.lcssa, align 8, !tbaa !26
  %.not217 = icmp eq i32 %i.es, 0
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !12 ; 2 uses
  br i1 %.not217, label %bb.al, label %._crit_edge._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.ev = shl nsw i32 %i.eu, 1
  %i.ew = or disjoint i32 %i.ev, 1
  store i32 %i.ew, ptr %.0210.lcssa, align 8, !tbaa !26
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.al
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = add nsw i32 %i.eu, 1
  store i32 %i.ey, ptr %i.ex, align 8, !tbaa !12
  %i.ez = getelementptr inbounds nuw i8, ptr %.0210.lcssa, i64 40
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !44 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !29
  %i.fd = icmp slt i32 %i.fa, %i.fc
  br i1 %i.fd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge._crit_edge
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge._crit_edge
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !30
  %i.fg = icmp sgt i32 %i.fa, %i.ff
  br i1 %i.fg, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  store i32 %i.fa, ptr %i.fe, align 4, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.an, %bb.ao, %bb.p, %bb.q
  %.0 = phi ptr [ null, %bb.an ], [ @.str, %bb.p ], [ @.str, %bb.q ], [ null, %bb.ao ], [ @.str, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.0
}

declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kwsprep(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 14 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [256 x ptr], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %spec.select149 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  %spec.select = trunc i32 %spec.select149 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 %spec.select, i64 256, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2432 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sext i32 %i.e to i64                     ; 2 uses
  %i.t = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_obstack_newchunk(ptr noundef nonnull %0, i32 noundef %i.e) #13
  %.pre197 = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = phi ptr [ %.pre197, %bb.d ], [ %i.o, %bb.c ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22   ; 3 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8
  %i.ab = or i8 %i.aa, 2
  store i8 %i.ab, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.af, %i.ac
  %i.ah = xor i32 %i.ae, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = and i64 %i.ag, %i.ai                    ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  store ptr %i.ak, ptr %i.n, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aj, %i.an
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !20  ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.an
  %i.as = icmp sgt i64 %i.ao, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ap, ptr %i.n, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %i.ap, %bb.h ], [ %i.ak, %bb.g ]
  store ptr %i.at, ptr %i.w, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2416 ; 5 uses
  store ptr %i.x, ptr %i.au, align 8, !tbaa !31
  %.not147.not = icmp eq ptr %i.x, null
  br i1 %.not147.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i32, ptr %i.d, align 8, !tbaa !29  ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph172.preheader, label %._crit_edge175.thread

.lr.ph172.preheader:                              ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ay = zext nneg i32 %i.av to i64              ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph172.prol.loopexit, label %.lr.ph172.prol

.lr.ph172.prol:                                   ; preds = %.lr.ph172.preheader
  %indvars.iv.next187.prol = add nsw i64 %i.ay, -1 ; 2 uses
  %.0128.prol = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %.0128.prol, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !38
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next187.prol
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !35
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  br label %.lr.ph172.prol.loopexit

.lr.ph172.prol.loopexit:                          ; preds = %.lr.ph172.prol, %.lr.ph172.preheader
  %indvars.iv186.unr = phi i64 [ %i.ay, %.lr.ph172.preheader ], [ %indvars.iv.next187.prol, %.lr.ph172.prol ]
  %.0128.in170.unr = phi ptr [ %i.ax, %.lr.ph172.preheader ], [ %i.bg, %.lr.ph172.prol ]
  %i.bh = icmp eq i32 %i.av, 1
  br i1 %i.bh, label %.preheader150, label %.lr.ph172

.preheader150:                                    ; preds = %.lr.ph172, %.lr.ph172.prol.loopexit
  %.pre198 = load i32, ptr %i.d, align 8, !tbaa !29 ; 14 uses
  %.pre199.pre = load ptr, ptr %i.au, align 8, !tbaa !31 ; 7 uses
  %i.bi = icmp sgt i32 %.pre198, 0
  br i1 %i.bi, label %.lr.ph174, label %._crit_edge175.thread

._crit_edge175.thread:                            ; preds = %.preheader150, %bb.j
  %i.bj = phi i32 [ %.pre198, %.preheader150 ], [ %i.av, %bb.j ] ; 2 uses
  %i.bk = add nsw i32 %i.bj, -2
  br label %._crit_edge179
end_hunk_0
