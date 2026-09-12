Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigDup?download=true
inline.NumInlined: 480
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Aig_ManDupCof:bb.a
  %i.cv = ptrtoint ptr %.val84 to i64             ; 2 uses
  %i.cw = and i64 %i.cv, -2                       ; 2 uses
  %.not.i92 = icmp eq i64 %i.cw, 0
  br i1 %.not.i92, label %.critedge.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36
  %i.da = and i64 %i.cv, 1
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = xor i64 %i.da, %i.db
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %.critedge.sink.split

bb.p:                                             ; preds = %bb.m
  %i.de = trunc i64 %.val81 to i32
  %i.df = and i32 %i.de, 7
  %i.dg = add nsw i32 %i.df, -7
  %narrow.i = icmp ult i32 %i.dg, -2
  br i1 %narrow.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr i8, ptr %i.cq, i64 8
  %.val83 = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.di = ptrtoint ptr %.val83 to i64             ; 2 uses
  %i.dj = and i64 %i.di, -2                       ; 2 uses
  %.not.i93 = icmp eq i64 %i.dj, 0
  br i1 %.not.i93, label %Aig_ObjChild0Copy.exit94, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36
  %i.dn = and i64 %i.di, 1
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = xor i64 %i.dn, %i.do
  %i.dq = inttoptr i64 %i.dp to ptr
  br label %Aig_ObjChild0Copy.exit94

Aig_ObjChild0Copy.exit94:                         ; preds = %bb.q, %bb.r
  %i.dr = phi ptr [ %i.dq, %bb.r ], [ null, %bb.q ]
  %i.ds = getelementptr i8, ptr %i.cq, i64 16
  %.val86 = load ptr, ptr %i.ds, align 8, !tbaa !43
  %i.dt = ptrtoint ptr %.val86 to i64             ; 2 uses
  %i.du = and i64 %i.dt, -2                       ; 2 uses
  %.not.i95 = icmp eq i64 %i.du, 0
  br i1 %.not.i95, label %Aig_ObjChild1Copy.exit, label %bb.s

bb.s:                                             ; preds = %Aig_ObjChild0Copy.exit94
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36
  %i.dy = and i64 %i.dt, 1
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = xor i64 %i.dy, %i.dz
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit94, %bb.s
  %i.ec = phi ptr [ %i.eb, %bb.s ], [ null, %Aig_ObjChild0Copy.exit94 ]
  %i.ed = tail call ptr @Aig_And(ptr noundef nonnull %i.c, ptr noundef %i.dr, ptr noundef %i.ec) #12
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.o, %bb.n, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.ed, %Aig_ObjChild1Copy.exit ], [ %i.dd, %bb.o ], [ null, %bb.n ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr %.sink, ptr %i.ee, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.lr.ph103, %bb.p
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %.val72 = load i32, ptr %i.eg, align 4, !tbaa !25
  %i.eh = sext i32 %.val72 to i64
  %i.ei = icmp slt i64 %indvars.iv.next113, %i.eh
  br i1 %i.ei, label %.lr.ph103, label %.critedge2.preheader, !llvm.loop !66

.lr.ph106:                                        ; preds = %.critedge2.preheader, %Aig_ObjChild0Copy.exit97
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %Aig_ObjChild0Copy.exit97 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.ej = phi ptr [ %i.fa, %Aig_ObjChild0Copy.exit97 ], [ %i.ck, %.critedge2.preheader ]
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val78 = load ptr, ptr %i.ek, align 8, !tbaa !38
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.val78, i64 %indvars.iv115
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !39 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %.val82 = load ptr, ptr %i.en, align 8, !tbaa !42
  %i.eo = ptrtoint ptr %.val82 to i64             ; 2 uses
  %i.ep = and i64 %i.eo, -2                       ; 2 uses
  %.not.i96 = icmp eq i64 %i.ep, 0
  br i1 %.not.i96, label %Aig_ObjChild0Copy.exit97, label %bb.t

bb.t:                                             ; preds = %.lr.ph106
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !36
  %i.et = and i64 %i.eo, 1
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = xor i64 %i.et, %i.eu
  %i.ew = inttoptr i64 %i.ev to ptr
  br label %Aig_ObjChild0Copy.exit97

Aig_ObjChild0Copy.exit97:                         ; preds = %.lr.ph106, %bb.t
  %i.ex = phi ptr [ %i.ew, %bb.t ], [ null, %.lr.ph106 ]
  %i.ey = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.ex) #12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !36
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.fa = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %.val = load i32, ptr %i.fb, align 4, !tbaa !25
  %i.fc = sext i32 %.val to i64
  %i.fd = icmp slt i64 %indvars.iv.next116, %i.fc
  br i1 %i.fd, label %.lr.ph106, label %.critedge4, !llvm.loop !67

.critedge4:                                       ; preds = %Aig_ObjChild0Copy.exit97, %.critedge2.preheader
  %i.fe = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.ff = getelementptr i8, ptr %0, i64 104
  %.val87 = load i32, ptr %i.ff, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val87) #12
  %i.fg = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not68 = icmp eq i32 %i.fg, 0
  br i1 %.not68, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupTrim(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val48 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val48, i64 4
  %.val48.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val48.val) #12 ; 11 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i61 = icmp eq ptr %i.k, null
  br i1 %.not.i61, label %Abc_UtilStrsav.exit62, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit62

Abc_UtilStrsav.exit62:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.t = load <2 x i32>, ptr %i.r, align 8, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 8, !tbaa !28
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %.val73 = load i32, ptr %i.v, align 4, !tbaa !25
  %i.w = icmp sgt i32 %.val73, 0
  br i1 %i.w, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit62
  %i.x = getelementptr i8, ptr %i.c, i64 48
  %i.y = getelementptr i8, ptr %0, i64 108
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %i.z = phi ptr [ %i.u, %.lr.ph ], [ %i.bu, %bb.o ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.03874 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.o ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val50 = load ptr, ptr %i.aa, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val50, i64 %indvars.iv
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 7 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr i8, ptr %i.ac, i64 24
  %.val53 = load i64, ptr %i.ae, align 8          ; 2 uses
  %i.af = trunc i64 %.val53 to i32                ; 2 uses
  %i.ag = and i32 %i.af, 7                        ; 2 uses
  %i.ah = add nsw i32 %i.ag, -7
  %narrow.i = icmp ult i32 %i.ah, -2
  br i1 %narrow.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.ac, i64 8
  %.val52 = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.aj = ptrtoint ptr %.val52 to i64             ; 2 uses
  %i.ak = and i64 %i.aj, -2                       ; 2 uses
  %.not.i63 = icmp eq i64 %i.ak, 0
  br i1 %.not.i63, label %Aig_ObjChild0Copy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.ao = and i64 %i.aj, 1
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = xor i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.f, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.g ], [ null, %bb.f ]
  %i.at = getelementptr i8, ptr %i.ac, i64 16
  %.val54 = load ptr, ptr %i.at, align 8, !tbaa !43
  %i.au = ptrtoint ptr %.val54 to i64             ; 2 uses
  %i.av = and i64 %i.au, -2                       ; 2 uses
  %.not.i64 = icmp eq i64 %i.av, 0
  br i1 %.not.i64, label %Aig_ObjChild1Copy.exit, label %bb.h

bb.h:                                             ; preds = %Aig_ObjChild0Copy.exit
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.az = and i64 %i.au, 1
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.h
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.be = tail call ptr @Aig_Oper(ptr noundef nonnull %i.c, ptr noundef %i.as, ptr noundef %i.bd, i32 noundef %i.ag) #12
  br label %Saig_ObjIsLo.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.bf = and i64 %.val53, 7
  switch i64 %i.bf, label %Saig_ObjIsLo.exit.thread [
    i64 2, label %bb.j
    i64 3, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %.not46 = icmp ult i32 %i.af, 64
  br i1 %.not46, label %Saig_ObjIsLo.exit, label %bb.k

Saig_ObjIsLo.exit:                                ; preds = %bb.j
  %.val3.i = load i32, ptr %i.ac, align 8, !tbaa !36
  %.val4.i = load i32, ptr %i.y, align 4, !tbaa !47
  %.not70 = icmp slt i32 %.val3.i, %.val4.i
  br i1 %.not70, label %Saig_ObjIsLo.exit.thread, label %bb.k

bb.k:                                             ; preds = %Saig_ObjIsLo.exit, %bb.j
  %i.bg = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12
  br label %Saig_ObjIsLo.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.bh = getelementptr i8, ptr %i.ac, i64 8
  %.val51 = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.bi = ptrtoint ptr %.val51 to i64             ; 2 uses
  %i.bj = and i64 %i.bi, -2                       ; 2 uses
  %.not.i66 = icmp eq i64 %i.bj, 0
  br i1 %.not.i66, label %Aig_ObjChild0Copy.exit67, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = and i64 %i.bi, 1
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %Aig_ObjChild0Copy.exit67

Aig_ObjChild0Copy.exit67:                         ; preds = %bb.l, %bb.m
  %i.br = phi ptr [ %i.bq, %bb.m ], [ null, %bb.l ]
  %i.bs = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.br) #12
  br label %Saig_ObjIsLo.exit.thread

bb.n:                                             ; preds = %bb.i
  %.val49 = load ptr, ptr %i.x, align 8, !tbaa !35
  br label %Saig_ObjIsLo.exit.thread

Saig_ObjIsLo.exit.thread:                         ; preds = %bb.i, %bb.k, %Saig_ObjIsLo.exit, %bb.n, %Aig_ObjChild0Copy.exit67, %Aig_ObjChild1Copy.exit
  %.1 = phi ptr [ %i.be, %Aig_ObjChild1Copy.exit ], [ %.03874, %bb.i ], [ %i.bs, %Aig_ObjChild0Copy.exit67 ], [ %.val49, %bb.n ], [ %i.bg, %bb.k ], [ null, %Saig_ObjIsLo.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %.1, ptr %i.bt, align 8, !tbaa !36
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %Saig_ObjIsLo.exit.thread, %bb.d
  %i.bu = phi ptr [ %i.z, %bb.d ], [ %.pre, %Saig_ObjIsLo.exit.thread ] ; 2 uses
  %.2 = phi ptr [ %.03874, %bb.d ], [ %.1, %Saig_ObjIsLo.exit.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %.val = load i32, ptr %i.bv, align 4, !tbaa !25
  %i.bw = sext i32 %.val to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.d, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.o, %Abc_UtilStrsav.exit62
  %i.by = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.by) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %i.ca = getelementptr i8, ptr %0, i64 104
  %.val55 = load i32, ptr %i.ca, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val55) #12
  %i.cb = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not41 = icmp eq i32 %i.cb, 0
  br i1 %.not41, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupExor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val58, i64 4
  %.val58.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val58.val) #12 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 316
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.e = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #13
  %i.g = add i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #14 ; 2 uses
  %i.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %i.e) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  store ptr %i.j, ptr %i.c, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %.not.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i72, label %Abc_UtilStrsav.exit73, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.l) #13
  %i.n = add i64 %i.m, 1
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #14 ; 2 uses
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(1) %i.l) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit73

Abc_UtilStrsav.exit73:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.q = phi ptr [ %i.o, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !28
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.w, ptr %i.x, align 4, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit73
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !32
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !33
  %.not.i74 = icmp eq i32 %i.ac, 0
  br i1 %.not.i74, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.ac to i64
  %i.af = shl nsw i64 %i.ae, 2                    ; 2 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.ak, i64 %.pre-phi12.i, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit73
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val85 = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ao = icmp sgt i32 %.val85, 0
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.c, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.aq = phi ptr [ %i.am, %.lr.ph ], [ %i.db, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.04786 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.t ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val60 = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  %.val61 = load i64, ptr %i.av, align 8          ; 2 uses
  %i.aw = and i64 %.val61, 7                      ; 2 uses
  %.not81 = icmp eq i64 %i.aw, 4
  br i1 %.not81, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val64 = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.ay = ptrtoint ptr %.val64 to i64             ; 2 uses
  %i.az = and i64 %i.ay, -2                       ; 2 uses
  %.not.i75 = icmp eq i64 %i.az, 0
  br i1 %.not.i75, label %Aig_ObjChild0Copy.exit, label %bb.j

end_hunk_0
