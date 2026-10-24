Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ivyOper?download=true
inline.NumInlined: 58
inline.NumDeleted: 7
begin_hunk_0_@Ivy_Or:bb.a
  %i.h = icmp eq ptr %2, %i.c
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = xor i64 %i.k, 1
  br label %Ivy_And.exit

bb.d:                                             ; preds = %bb.b
  %i.m = and i64 %i.a, -2                         ; 2 uses
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.b, %i.m
  %i.s = or i64 %i.a, 1
  %spec.select = select i1 %i.r, i64 %i.e, i64 %i.s
  br label %Ivy_And.exit

bb.f:                                             ; preds = %bb.d
  %i.t = and i64 %i.d, -2
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = icmp eq ptr %i.p, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq ptr %i.p, %i.f
  br i1 %i.w, label %Ivy_And.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = xor i64 %i.x, 1
  br label %Ivy_And.exit

bb.i:                                             ; preds = %bb.f
  %i.z = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.f) #2
  %i.aa = ptrtoint ptr %i.z to i64
  br label %Ivy_And.exit

Ivy_And.exit:                                     ; preds = %bb.e, %bb.a, %bb.c, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.aa, %bb.i ], [ %i.l, %bb.c ], [ %i.b, %bb.a ], [ %spec.select, %bb.e ], [ %i.b, %bb.g ], [ %i.y, %bb.h ]
  %i.ab = xor i64 %.0.i, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  ret ptr %i.ac
}

; Function Attrs: nounwind uwtable
define ptr @Ivy_Mux(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.b = xor i64 %i.a, 1                          ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = icmp eq ptr %3, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @Ivy_Exor(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  br label %bb.cg

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, -1552
  %i.i = or disjoint i32 %i.h, 5
  store i32 %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 12 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !19
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %Ivy_ObjCreateGhost.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %Ivy_ObjFaninId1.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = ptrtoint ptr %1 to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr
  %.val.i.i = load i32, ptr %i.n, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i

Ivy_ObjFaninId1.exit.i:                           ; preds = %bb.e, %bb.d
  %i.o = phi i32 [ %.val.i.i, %bb.e ], [ 0, %bb.d ]
  %i.p = and i64 %i.a, -2
  %i.q = inttoptr i64 %i.p to ptr
  %.val.i19.i = load i32, ptr %i.q, align 8, !tbaa !20
  %i.r = icmp sgt i32 %i.o, %.val.i19.i
  br i1 %i.r, label %bb.f, label %Ivy_ObjCreateGhost.exit

bb.f:                                             ; preds = %Ivy_ObjFaninId1.exit.i
  store ptr %2, ptr %i.j, align 8, !tbaa !18
  store ptr %1, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit

Ivy_ObjCreateGhost.exit:                          ; preds = %bb.c, %Ivy_ObjFaninId1.exit.i, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.t = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 4 uses
  %i.u = ptrtoint ptr %1 to i64                   ; 12 uses
  %i.v = xor i64 %i.u, 1                          ; 3 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 11 uses
  %i.x = load i32, ptr %i.f, align 8
  %i.y = and i32 %i.x, -1552
  %i.z = or disjoint i32 %i.y, 5
  store i32 %i.z, ptr %i.f, align 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !18
  store ptr %3, ptr %i.k, align 8, !tbaa !19
  %.not.i85 = icmp eq ptr %3, null
  br i1 %.not.i85, label %Ivy_ObjCreateGhost.exit90, label %bb.g

bb.g:                                             ; preds = %Ivy_ObjCreateGhost.exit
  %.not.i.i86 = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i86, label %Ivy_ObjFaninId1.exit.i88, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = and i64 %i.u, -2
  %i.ab = inttoptr i64 %i.aa to ptr
  %.val.i.i87 = load i32, ptr %i.ab, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i88

Ivy_ObjFaninId1.exit.i88:                         ; preds = %bb.h, %bb.g
  %i.ac = phi i32 [ %.val.i.i87, %bb.h ], [ 0, %bb.g ]
  %i.ad = ptrtoint ptr %3 to i64
  %i.ae = and i64 %i.ad, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %.val.i19.i89 = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ag = icmp sgt i32 %i.ac, %.val.i19.i89
  br i1 %i.ag, label %bb.i, label %Ivy_ObjCreateGhost.exit90

bb.i:                                             ; preds = %Ivy_ObjFaninId1.exit.i88
  store ptr %3, ptr %i.j, align 8, !tbaa !18
  store ptr %i.w, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit90

Ivy_ObjCreateGhost.exit90:                        ; preds = %Ivy_ObjCreateGhost.exit, %Ivy_ObjFaninId1.exit.i88, %bb.i
  %i.ah = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 4 uses
  %i.ai = icmp ne ptr %i.t, null                  ; 3 uses
  %i.aj = icmp ne ptr %i.ah, null                 ; 3 uses
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %Ivy_ObjCreateGhost.exit90
  %i.ak = ptrtoint ptr %i.t to i64                ; 2 uses
  %i.al = xor i64 %i.ak, 1
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ao = xor i64 %i.an, 1
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load i32, ptr %i.f, align 8
  %i.ar = and i32 %i.aq, -1552
  %i.as = or disjoint i32 %i.ar, 5
  store i32 %i.as, ptr %i.f, align 8
  store ptr %i.am, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !19
  %.not.i91 = icmp eq ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %.not.i91, label %Ivy_ObjCreateGhost.exit96, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i.i92 = icmp eq ptr %i.t, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i92, label %Ivy_ObjFaninId1.exit.i94, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = and i64 %i.ak, -2
  %i.au = inttoptr i64 %i.at to ptr
  %.val.i.i93 = load i32, ptr %i.au, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i94

Ivy_ObjFaninId1.exit.i94:                         ; preds = %bb.l, %bb.k
  %i.av = phi i32 [ %.val.i.i93, %bb.l ], [ 0, %bb.k ]
  %i.aw = and i64 %i.an, -2
  %i.ax = inttoptr i64 %i.aw to ptr
  %.val.i19.i95 = load i32, ptr %i.ax, align 8, !tbaa !20
  %i.ay = icmp sgt i32 %i.av, %.val.i19.i95
  br i1 %i.ay, label %bb.m, label %Ivy_ObjCreateGhost.exit96

bb.m:                                             ; preds = %Ivy_ObjFaninId1.exit.i94
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !18
  store ptr %i.am, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit96

Ivy_ObjCreateGhost.exit96:                        ; preds = %bb.j, %Ivy_ObjFaninId1.exit.i94, %bb.m
  %i.az = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %Ivy_ObjCreateGhost.exit96
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = xor i64 %i.ba, 1
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %bb.cg

bb.o:                                             ; preds = %Ivy_ObjCreateGhost.exit96, %Ivy_ObjCreateGhost.exit90
  %i.bd = zext i1 %i.ai to i32
  %i.be = zext i1 %i.aj to i32
  %i.bf = add nuw nsw i32 %i.be, %i.bd            ; 2 uses
  %i.bg = load i32, ptr %i.f, align 8
  %i.bh = and i32 %i.bg, -1552
  %i.bi = or disjoint i32 %i.bh, 5
  store i32 %i.bi, ptr %i.f, align 8
  store ptr %1, ptr %i.j, align 8, !tbaa !18
  store ptr %i.c, ptr %i.k, align 8, !tbaa !19
  %.not.i97 = icmp eq ptr %2, inttoptr (i64 1 to ptr)
  br i1 %.not.i97, label %Ivy_ObjCreateGhost.exit102, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i98 = icmp eq ptr %1, null
  br i1 %.not.i.i98, label %Ivy_ObjFaninId1.exit.i100, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = and i64 %i.u, -2
  %i.bk = inttoptr i64 %i.bj to ptr
  %.val.i.i99 = load i32, ptr %i.bk, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i100

Ivy_ObjFaninId1.exit.i100:                        ; preds = %bb.q, %bb.p
  %i.bl = phi i32 [ %.val.i.i99, %bb.q ], [ 0, %bb.p ]
  %i.bm = and i64 %i.a, -2
  %i.bn = inttoptr i64 %i.bm to ptr
  %.val.i19.i101 = load i32, ptr %i.bn, align 8, !tbaa !20
  %i.bo = icmp sgt i32 %i.bl, %.val.i19.i101
  br i1 %i.bo, label %bb.r, label %Ivy_ObjCreateGhost.exit102

bb.r:                                             ; preds = %Ivy_ObjFaninId1.exit.i100
  store ptr %i.c, ptr %i.j, align 8, !tbaa !18
  store ptr %1, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit102

Ivy_ObjCreateGhost.exit102:                       ; preds = %bb.o, %Ivy_ObjFaninId1.exit.i100, %bb.r
  %i.bp = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 5 uses
  %i.bq = ptrtoint ptr %3 to i64                  ; 6 uses
  %i.br = xor i64 %i.bq, 1                        ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 4 uses
  %i.bt = load i32, ptr %i.f, align 8
  %i.bu = and i32 %i.bt, -1552
  %i.bv = or disjoint i32 %i.bu, 5
  store i32 %i.bv, ptr %i.f, align 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !18
  store ptr %i.bs, ptr %i.k, align 8, !tbaa !19
  %.not.i103 = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  br i1 %.not.i103, label %Ivy_ObjCreateGhost.exit108, label %bb.s

bb.s:                                             ; preds = %Ivy_ObjCreateGhost.exit102
  %.not.i.i104 = icmp eq ptr %1, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i104, label %Ivy_ObjFaninId1.exit.i106, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = and i64 %i.u, -2
  %i.bx = inttoptr i64 %i.bw to ptr
  %.val.i.i105 = load i32, ptr %i.bx, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i106

Ivy_ObjFaninId1.exit.i106:                        ; preds = %bb.t, %bb.s
  %i.by = phi i32 [ %.val.i.i105, %bb.t ], [ 0, %bb.s ]
  %i.bz = and i64 %i.bq, -2
  %i.ca = inttoptr i64 %i.bz to ptr
  %.val.i19.i107 = load i32, ptr %i.ca, align 8, !tbaa !20
  %i.cb = icmp sgt i32 %i.by, %.val.i19.i107
  br i1 %i.cb, label %bb.u, label %Ivy_ObjCreateGhost.exit108

bb.u:                                             ; preds = %Ivy_ObjFaninId1.exit.i106
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !18
  store ptr %i.w, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit108

Ivy_ObjCreateGhost.exit108:                       ; preds = %Ivy_ObjCreateGhost.exit102, %Ivy_ObjFaninId1.exit.i106, %bb.u
  %i.cc = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 5 uses
  %i.cd = icmp ne ptr %i.bp, null                 ; 3 uses
  %i.ce = icmp ne ptr %i.cc, null                 ; 3 uses
  %or.cond3 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.z

bb.v:                                             ; preds = %Ivy_ObjCreateGhost.exit108
  %i.cf = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cg = xor i64 %i.cf, 1
  %i.ch = inttoptr i64 %i.cg to ptr               ; 2 uses
  %i.ci = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cj = xor i64 %i.ci, 1
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = load i32, ptr %i.f, align 8
  %i.cm = and i32 %i.cl, -1552
  %i.cn = or disjoint i32 %i.cm, 5
  store i32 %i.cn, ptr %i.f, align 8
  store ptr %i.ch, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !19
  %.not.i109 = icmp eq ptr %i.cc, inttoptr (i64 1 to ptr)
  br i1 %.not.i109, label %Ivy_ObjCreateGhost.exit114, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i.i110 = icmp eq ptr %i.bp, inttoptr (i64 1 to ptr)
  br i1 %.not.i.i110, label %Ivy_ObjFaninId1.exit.i112, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = and i64 %i.cf, -2
  %i.cp = inttoptr i64 %i.co to ptr
  %.val.i.i111 = load i32, ptr %i.cp, align 8, !tbaa !20
  br label %Ivy_ObjFaninId1.exit.i112

Ivy_ObjFaninId1.exit.i112:                        ; preds = %bb.x, %bb.w
  %i.cq = phi i32 [ %.val.i.i111, %bb.x ], [ 0, %bb.w ]
  %i.cr = and i64 %i.ci, -2
  %i.cs = inttoptr i64 %i.cr to ptr
  %.val.i19.i113 = load i32, ptr %i.cs, align 8, !tbaa !20
  %i.ct = icmp sgt i32 %i.cq, %.val.i19.i113
  br i1 %i.ct, label %bb.y, label %Ivy_ObjCreateGhost.exit114

bb.y:                                             ; preds = %Ivy_ObjFaninId1.exit.i112
  store ptr %i.ck, ptr %i.j, align 8, !tbaa !18
  store ptr %i.ch, ptr %i.k, align 8, !tbaa !19
  br label %Ivy_ObjCreateGhost.exit114

Ivy_ObjCreateGhost.exit114:                       ; preds = %bb.v, %Ivy_ObjFaninId1.exit.i112, %bb.y
  %i.cu = tail call ptr @Ivy_TableLookup(ptr noundef nonnull %0, ptr noundef nonnull %i.s) #2 ; 2 uses
  %.not83 = icmp eq ptr %i.cu, null
  br i1 %.not83, label %.thread, label %bb.cg

bb.z:                                             ; preds = %Ivy_ObjCreateGhost.exit108
  %i.cv = zext i1 %i.cd to i32
  %i.cw = zext i1 %i.ce to i32
  %i.cx = add nuw nsw i32 %i.cw, %i.cv
  %.not84 = icmp samesign ult i32 %i.bf, %i.cx
  br i1 %.not84, label %bb.bd, label %bb.aa

.thread:                                          ; preds = %Ivy_ObjCreateGhost.exit114
  %.not84124 = icmp samesign ult i32 %i.bf, 2
  br i1 %.not84124, label %Ivy_And.exit120, label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.z
  br i1 %i.ai, label %Ivy_And.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = icmp eq ptr %1, %2
  br i1 %i.cy, label %Ivy_And.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = icmp eq ptr %1, %i.c
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !17
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = xor i64 %i.dc, 1
  %i.de = inttoptr i64 %i.dd to ptr
  br label %Ivy_And.exit

bb.ae:                                            ; preds = %bb.ac
  %i.df = and i64 %i.u, -2
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !17 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dg
  br i1 %i.dj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.dk = icmp eq ptr %1, %i.dg
  br i1 %i.dk, label %Ivy_And.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = or i64 %i.u, 1
  %i.dm = inttoptr i64 %i.dl to ptr
  br label %Ivy_And.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dn = and i64 %i.a, -2
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = icmp eq ptr %i.di, %i.do
  br i1 %i.dp, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dq = icmp eq ptr %2, %i.do
  br i1 %i.dq, label %Ivy_And.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = or i64 %i.a, 1
  %i.ds = inttoptr i64 %i.dr to ptr
  br label %Ivy_And.exit

bb.ak:                                            ; preds = %bb.ah
  %i.dt = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #2
  br label %Ivy_And.exit

Ivy_And.exit:                                     ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ad, %bb.ab, %bb.aa
  %i.du = phi ptr [ %i.t, %bb.aa ], [ %i.dt, %bb.ak ], [ %i.de, %bb.ad ], [ %2, %bb.ab ], [ %2, %bb.af ], [ %i.dm, %bb.ag ], [ %i.ds, %bb.aj ], [ %1, %bb.ai ] ; 2 uses
  br i1 %i.aj, label %Ivy_And.exit116, label %bb.al

bb.al:                                            ; preds = %Ivy_And.exit
  %i.dv = icmp eq ptr %3, %i.w
  br i1 %i.dv, label %Ivy_And.exit116, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dw = icmp eq ptr %1, %3
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !17
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = xor i64 %i.dz, 1
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %Ivy_And.exit116

bb.ao:                                            ; preds = %bb.am
  %i.ec = and i64 %i.u, -2                        ; 2 uses
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !17 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ed
  br i1 %i.eg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eh = icmp eq i64 %i.v, %i.ec
  br i1 %i.eh, label %Ivy_And.exit116, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ei = or i64 %i.u, 1
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %Ivy_And.exit116

bb.ar:                                            ; preds = %bb.ao
  %i.ek = and i64 %i.bq, -2
  %i.el = inttoptr i64 %i.ek to ptr               ; 2 uses
  %i.em = icmp eq ptr %i.ef, %i.el
  br i1 %i.em, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.en = icmp eq ptr %3, %i.el
  br i1 %i.en, label %Ivy_And.exit116, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = or i64 %i.bq, 1
  %i.ep = inttoptr i64 %i.eo to ptr
  br label %Ivy_And.exit116

bb.au:                                            ; preds = %bb.ar
  %i.eq = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %i.w, ptr noundef %3) #2
  br label %Ivy_And.exit116

Ivy_And.exit116:                                  ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.an, %bb.al, %Ivy_And.exit
  %i.er = phi ptr [ %i.ah, %Ivy_And.exit ], [ %i.eq, %bb.au ], [ %i.eb, %bb.an ], [ %3, %bb.al ], [ %3, %bb.ap ], [ %i.ej, %bb.aq ], [ %i.ep, %bb.at ], [ %i.w, %bb.as ] ; 3 uses
  %i.es = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.et = xor i64 %i.es, 1                        ; 4 uses
  %i.eu = inttoptr i64 %i.et to ptr               ; 2 uses
  %i.ev = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.ew = xor i64 %i.ev, 1                        ; 2 uses
  %i.ex = inttoptr i64 %i.ew to ptr               ; 2 uses
  %i.ey = icmp eq ptr %i.du, %i.er
  br i1 %i.ey, label %Ivy_Or.exit, label %bb.av

bb.av:                                            ; preds = %Ivy_And.exit116
  %i.ez = icmp eq ptr %i.er, %i.eu
  br i1 %i.ez, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !17
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = xor i64 %i.fc, 1
  br label %Ivy_Or.exit

bb.ax:                                            ; preds = %bb.av
  %i.fe = and i64 %i.es, -2                       ; 2 uses
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !17 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, %i.ff
  br i1 %i.fi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fj = icmp eq i64 %i.et, %i.fe
  %i.fk = or i64 %i.es, 1
  %spec.select.i = select i1 %i.fj, i64 %i.ew, i64 %i.fk
  br label %Ivy_Or.exit

bb.az:                                            ; preds = %bb.ax
  %i.fl = and i64 %i.ev, -2
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = icmp eq ptr %i.fh, %i.fm
  br i1 %i.fn, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fo = icmp eq ptr %i.fh, %i.ex
  br i1 %i.fo, label %Ivy_Or.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fp = ptrtoint ptr %i.fh to i64
  %i.fq = xor i64 %i.fp, 1
  br label %Ivy_Or.exit

bb.bc:                                            ; preds = %bb.az
  %i.fr = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %i.eu, ptr noundef %i.ex) #2
  %i.fs = ptrtoint ptr %i.fr to i64
  br label %Ivy_Or.exit

Ivy_Or.exit:                                      ; preds = %Ivy_And.exit116, %bb.aw, %bb.ay, %bb.ba, %bb.bb, %bb.bc
  %.0.i.i = phi i64 [ %i.fs, %bb.bc ], [ %i.fd, %bb.aw ], [ %i.et, %Ivy_And.exit116 ], [ %spec.select.i, %bb.ay ], [ %i.et, %bb.ba ], [ %i.fq, %bb.bb ]
  %i.ft = xor i64 %.0.i.i, 1
  %i.fu = inttoptr i64 %i.ft to ptr
  br label %bb.cg

bb.bd:                                            ; preds = %bb.z
  br i1 %i.cd, label %Ivy_And.exit118, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fv = icmp eq ptr %1, %i.c
  br i1 %i.fv, label %Ivy_And.exit118, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fw = icmp eq ptr %1, %2
  br i1 %i.fw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !17
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = xor i64 %i.fz, 1
  %i.gb = inttoptr i64 %i.ga to ptr
  br label %Ivy_And.exit118

bb.bh:                                            ; preds = %bb.bf
  %i.gc = and i64 %i.u, -2
  %i.gd = inttoptr i64 %i.gc to ptr               ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !17 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.gd
  br i1 %i.gg, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gh = icmp eq ptr %1, %i.gd
  br i1 %i.gh, label %Ivy_And.exit118, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gi = or i64 %i.u, 1
  %i.gj = inttoptr i64 %i.gi to ptr
  br label %Ivy_And.exit118

bb.bk:                                            ; preds = %bb.bh
  %i.gk = and i64 %i.a, -2                        ; 2 uses
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = icmp eq ptr %i.gf, %i.gl
  br i1 %i.gm, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.gn = icmp eq i64 %i.gk, %i.b
  br i1 %i.gn, label %Ivy_And.exit118, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.go = or i64 %i.a, 1
  %i.gp = inttoptr i64 %i.go to ptr
  br label %Ivy_And.exit118

bb.bn:                                            ; preds = %bb.bk
  %i.gq = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.c) #2
  br label %Ivy_And.exit118

Ivy_And.exit118:                                  ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bg, %bb.be, %bb.bd
  %i.gr = phi ptr [ %1, %bb.bl ], [ %i.bp, %bb.bd ], [ %i.gq, %bb.bn ], [ %i.gb, %bb.bg ], [ %1, %bb.be ], [ %i.c, %bb.bi ], [ %i.gj, %bb.bj ], [ %i.gp, %bb.bm ] ; 8 uses
  br i1 %i.ce, label %Ivy_And.exit120, label %bb.bo

bb.bo:                                            ; preds = %Ivy_And.exit118
  %i.gs = icmp eq ptr %1, %3
  br i1 %i.gs, label %Ivy_And.exit120, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gt = icmp eq ptr %3, %i.w
  br i1 %i.gt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = xor i64 %i.gw, 1
  %i.gy = inttoptr i64 %i.gx to ptr
  br label %Ivy_And.exit120

bb.br:                                            ; preds = %bb.bp
  %i.gz = and i64 %i.u, -2                        ; 2 uses
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !17 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ha
  br i1 %i.hd, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.he = icmp eq i64 %i.v, %i.gz
  br i1 %i.he, label %Ivy_And.exit120, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hf = or i64 %i.u, 1
  %i.hg = inttoptr i64 %i.hf to ptr
  br label %Ivy_And.exit120

bb.bu:                                            ; preds = %bb.br
  %i.hh = and i64 %i.bq, -2                       ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = icmp eq ptr %i.hc, %i.hi
  br i1 %i.hj, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.hk = icmp eq i64 %i.hh, %i.br
  br i1 %i.hk, label %Ivy_And.exit120, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hl = or i64 %i.bq, 1
  %i.hm = inttoptr i64 %i.hl to ptr
  br label %Ivy_And.exit120

bb.bx:                                            ; preds = %bb.bu
  %i.hn = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %i.w, ptr noundef %i.bs) #2
  br label %Ivy_And.exit120

Ivy_And.exit120:                                  ; preds = %.thread, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bo, %Ivy_And.exit118
  %4 = phi ptr [ %i.gr, %bb.bx ], [ %i.gr, %Ivy_And.exit118 ], [ %i.gr, %bb.bo ], [ %i.gr, %bb.bq ], [ %i.gr, %bb.bs ], [ %i.gr, %bb.bt ], [ %i.gr, %bb.bv ], [ %i.gr, %bb.bw ], [ %i.bp, %.thread ] ; 2 uses
  %5 = phi ptr [ %i.hn, %bb.bx ], [ %i.cc, %Ivy_And.exit118 ], [ %i.w, %bb.bo ], [ %i.gy, %bb.bq ], [ %i.bs, %bb.bs ], [ %i.hg, %bb.bt ], [ %i.w, %bb.bv ], [ %i.hm, %bb.bw ], [ %i.cc, %.thread ] ; 3 uses
  %i.ho = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.hp = xor i64 %i.ho, 1                        ; 4 uses
  %i.hq = inttoptr i64 %i.hp to ptr               ; 2 uses
  %i.hr = ptrtoint ptr %5 to i64                  ; 2 uses
  %i.hs = xor i64 %i.hr, 1                        ; 2 uses
  %i.ht = inttoptr i64 %i.hs to ptr               ; 2 uses
  %i.hu = icmp eq ptr %4, %5
  br i1 %i.hu, label %Ivy_Or.exit123, label %bb.by

bb.by:                                            ; preds = %Ivy_And.exit120
  %i.hv = icmp eq ptr %5, %i.hq
  br i1 %i.hv, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !17
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = xor i64 %i.hy, 1
  br label %Ivy_Or.exit123

bb.ca:                                            ; preds = %bb.by
  %i.ia = and i64 %i.ho, -2                       ; 2 uses
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !17 ; 4 uses
  %i.ie = icmp eq ptr %i.id, %i.ib
  br i1 %i.ie, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.if = icmp eq i64 %i.hp, %i.ia
  %i.ig = or i64 %i.ho, 1
  %spec.select.i122 = select i1 %i.if, i64 %i.hs, i64 %i.ig
  br label %Ivy_Or.exit123

bb.cc:                                            ; preds = %bb.ca
  %i.ih = and i64 %i.hr, -2
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = icmp eq ptr %i.id, %i.ii
  br i1 %i.ij, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ik = icmp eq ptr %i.id, %i.ht
  br i1 %i.ik, label %Ivy_Or.exit123, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.il = ptrtoint ptr %i.id to i64
  %i.im = xor i64 %i.il, 1
  br label %Ivy_Or.exit123

bb.cf:                                            ; preds = %bb.cc
  %i.in = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %i.hq, ptr noundef %i.ht) #2
  %i.io = ptrtoint ptr %i.in to i64
  br label %Ivy_Or.exit123

Ivy_Or.exit123:                                   ; preds = %Ivy_And.exit120, %bb.bz, %bb.cb, %bb.cd, %bb.ce, %bb.cf
  %.0.i.i121 = phi i64 [ %i.io, %bb.cf ], [ %i.hz, %bb.bz ], [ %i.hp, %Ivy_And.exit120 ], [ %spec.select.i122, %bb.cb ], [ %i.hp, %bb.cd ], [ %i.im, %bb.ce ]
  %i.ip = inttoptr i64 %.0.i.i121 to ptr
  br label %bb.cg

bb.cg:                                            ; preds = %Ivy_ObjCreateGhost.exit114, %Ivy_Or.exit123, %Ivy_Or.exit, %bb.n, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.bc, %bb.n ], [ %i.ip, %Ivy_Or.exit123 ], [ %i.fu, %Ivy_Or.exit ], [ %i.cu, %Ivy_ObjCreateGhost.exit114 ]
  ret ptr %.0
}

declare ptr @Ivy_TableLookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @Ivy_Maj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %Ivy_And.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = xor i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = xor i64 %i.h, 1
  %i.j = inttoptr i64 %i.i to ptr
  br label %Ivy_And.exit

bb.d:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = icmp eq ptr %1, %i.m
  br i1 %i.q, label %Ivy_And.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = or i64 %i.k, 1
  %i.s = inttoptr i64 %i.r to ptr
  br label %Ivy_And.exit

bb.g:                                             ; preds = %bb.d
  %i.t = and i64 %i.b, -2
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = icmp eq ptr %i.o, %i.u
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = icmp eq ptr %2, %i.o
  br i1 %i.w, label %Ivy_And.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = xor i64 %i.x, 1
  %i.z = inttoptr i64 %i.y to ptr
  br label %Ivy_And.exit

bb.j:                                             ; preds = %bb.g
  %i.aa = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #2
  br label %Ivy_And.exit

Ivy_And.exit:                                     ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.aa, %bb.j ], [ %i.j, %bb.c ], [ %1, %bb.a ], [ %2, %bb.e ], [ %i.s, %bb.f ], [ %i.z, %bb.i ], [ %1, %bb.h ] ; 2 uses
  %i.ab = icmp eq ptr %1, %3
  br i1 %i.ab, label %Ivy_And.exit12, label %bb.k

bb.k:                                             ; preds = %Ivy_And.exit
  %i.ac = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ad = xor i64 %i.ac, 1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = xor i64 %i.ai, 1
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %Ivy_And.exit12

bb.m:                                             ; preds = %bb.k
  %i.al = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.am = and i64 %i.al, -2
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !17 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp eq ptr %1, %i.an
  br i1 %i.ar, label %Ivy_And.exit12, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = or i64 %i.al, 1
  %i.at = inttoptr i64 %i.as to ptr
  br label %Ivy_And.exit12

bb.p:                                             ; preds = %bb.m
  %i.au = and i64 %i.ac, -2
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = icmp eq ptr %i.ap, %i.av
  br i1 %i.aw, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp eq ptr %3, %i.ap
  br i1 %i.ax, label %Ivy_And.exit12, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = xor i64 %i.ay, 1
  %i.ba = inttoptr i64 %i.az to ptr
  br label %Ivy_And.exit12

bb.s:                                             ; preds = %bb.p
  %i.bb = tail call ptr @Ivy_CanonAnd(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3) #2
  br label %Ivy_And.exit12

Ivy_And.exit12:                                   ; preds = %Ivy_And.exit, %bb.l, %bb.n, %bb.o, %bb.q, %bb.r, %bb.s
  %.0.i11 = phi ptr [ %i.bb, %bb.s ], [ %i.ak, %bb.l ], [ %1, %Ivy_And.exit ], [ %3, %bb.n ], [ %i.at, %bb.o ], [ %i.ba, %bb.r ], [ %1, %bb.q ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i to i64               ; 3 uses
  %i.bd = xor i64 %i.bc, 1                        ; 4 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = ptrtoint ptr %.0.i11 to i64             ; 2 uses
  %i.bg = xor i64 %i.bf, 1                        ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = icmp eq ptr %.0.i, %.0.i11
  br i1 %i.bi, label %Ivy_Or.exit, label %bb.t

bb.t:                                             ; preds = %Ivy_And.exit12
  %i.bj = icmp eq ptr %.0.i11, %i.be
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = xor i64 %i.bm, 1
  br label %Ivy_Or.exit

bb.v:                                             ; preds = %bb.t
  %i.bo = and i64 %i.bc, -2                       ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !17 ; 4 uses
  %i.bs = icmp eq ptr %i.br, %i.bp
end_hunk_0
