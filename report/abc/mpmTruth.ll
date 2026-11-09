Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmTruth?download=true
inline.NumInlined: 95
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@s_PPMasks = internal unnamed_addr constant [5 x [6 x [3 x i64]]] [[6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] [i64 -7378697629483820647, i64 2459565876494606882, i64 4919131752989213764], [3 x i64] [i64 -6510615555426900571, i64 723401728380766730, i64 5787213827046133840], [3 x i64] [i64 -6172840429334713771, i64 47851476196393130, i64 6124988953138320640], [3 x i64] [i64 -6149008514797120171, i64 187647121205930, i64 6148820867675914240], [3 x i64] [i64 -6148914692668172971, i64 2863311530, i64 6148914689804861440]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -4340410370284600381, i64 868082074056920076, i64 3472328296227680304], [3 x i64] [i64 -3732415143318664141, i64 57421771435671756, i64 3674993371882992384], [3 x i64] [i64 -3689517697150995661, i64 225176545447116, i64 3689292520605548544], [3 x i64] [i64 -3689348817318890701, i64 3435973836, i64 3689348813882916864]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -1148435428713435121, i64 67555025218437360, i64 1080880403494997760], [3 x i64] [i64 -1085350949055099121, i64 264913582878960, i64 1085086035472220160], [3 x i64] [i64 -1085102596360827121, i64 4042322160, i64 1085102592318504960]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -72056494543077121, i64 280375465148160, i64 71776119077928960], [3 x i64] [i64 -71777218556133121, i64 4278255360, i64 71777214277877760]], [6 x [3 x i64]] [[3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] zeroinitializer, [3 x i64] [i64 -281474976645121, i64 4294901760, i64 281470681743360]]], align 16
@s_Truths6 = internal unnamed_addr constant [6 x i64] [i64 -6148914691236517206, i64 -3689348814741910324, i64 -1085102592571150096, i64 -71777214294589696, i64 -281470681808896, i64 -4294967296], align 16
@Vec_MemHashKey.s_Primes = internal unnamed_addr constant [8 x i32] [i32 1699, i32 4177, i32 5147, i32 5647, i32 6343, i32 7103, i32 7873, i32 8147], align 16
@s_Truths6Neg = internal unnamed_addr constant [6 x i64] [i64 6148914691236517205, i64 3689348814741910323, i64 1085102592571150095, i64 71777214294589695, i64 281470681808895, i64 4294967295], align 16

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @Mpm_CutComputeTruth(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !77   ; 6 uses
  %i.i = icmp slt i32 %i.h, 7
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 6 uses
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 16777215                   ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 4880       ; 8 uses
  %.val49.i = load ptr, ptr %i.n, align 8, !tbaa !78 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val49.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val49.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17   ; 3 uses
  %i.s = lshr i32 %i.m, %i.r
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19   ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.x = load i32, ptr %.val49.i, align 8, !tbaa !20 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21   ; 3 uses
  %i.aa = and i32 %i.z, %i.m
  %i.ab = mul i32 %i.aa, %i.x
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ac ; 13 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 4 uses
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 16777215                 ; 2 uses
  %i.ai = lshr i32 %i.ah, %i.r
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 2 uses
  %i.am = ptrtoaddr ptr %i.al to i64              ; 2 uses
  %i.an = and i32 %i.ah, %i.z
  %i.ao = mul i32 %i.an, %i.x
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ap ; 13 uses
  br i1 %i.i, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.ar = lshr i32 %i.k, 25
  %i.as = and i32 %i.ar, 1
  %i.at = xor i32 %i.as, %5
  %i.au = and i32 %i.k, 1
  %.not.i = icmp ne i32 %i.at, %i.au
  %i.av = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.aw = sext i1 %.not.i to i64
  %i.ax = xor i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.ay = lshr i32 %i.af, 25
  %i.az = and i32 %i.ay, 1
  %i.ba = xor i32 %i.az, %6
  %i.bb = and i32 %i.af, 1
  %.not43.i = icmp ne i32 %i.ba, %i.bb
  %i.bc = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.bd = sext i1 %.not43.i to i64
  %i.be = xor i64 %i.bc, %i.bd
  store i64 %i.be, ptr %i.d, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i64 0, ptr %i.e, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i64 0, ptr %i.f, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 9 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 4 uses
  %i.bh = lshr i32 %i.k, 27                       ; 2 uses
  %i.bi = icmp ugt i32 %i.bg, 134217727           ; 3 uses
  %i.bj = icmp ne i32 %i.bh, 0
  %i.bk = and i1 %i.bj, %i.bi
  br i1 %i.bk, label %.lr.ph.i.i, label %Mpm_TruthStretch.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.bl = add nsw i32 %i.bh, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = lshr i32 %i.bg, 27
  %i.bp = zext nneg i32 %i.bo to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.bp, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %.017.i.i = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.1.i.i, %bb.g ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 4 uses
  %i.bq = zext nneg i32 %.017.i.i to i64          ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next.i.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23
  %i.bv = icmp slt i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.bq
  br i1 %i.bw, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.c, i32 noundef %i.h, i32 noundef %.017.i.i, i32 noundef %i.bx)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.by = add nsw i32 %.017.i.i, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.1.i.i = phi i32 [ %.017.i.i, %bb.c ], [ %i.by, %bb.f ] ; 2 uses
  %i.bz = icmp samesign ugt i64 %indvars.iv.i.i, 1
  %i.ca = icmp sgt i32 %.1.i.i, -1
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.c, label %Mpm_TruthStretch.exit.i, !llvm.loop !28

Mpm_TruthStretch.exit.i:                          ; preds = %bb.g, %bb.b
  %i.cc = lshr i32 %i.af, 27                      ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = and i1 %i.cd, %i.bi
  br i1 %i.ce, label %.lr.ph.i50.i, label %Mpm_TruthStretch.exit55.i

.lr.ph.i50.i:                                     ; preds = %Mpm_TruthStretch.exit.i
  %i.cf = add nsw i32 %i.cc, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = lshr i32 %i.bg, 27
  %i.cj = zext nneg i32 %i.ci to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i50.i
  %indvars.iv.i51.i = phi i64 [ %i.cj, %.lr.ph.i50.i ], [ %indvars.iv.next.i53.i, %bb.l ] ; 2 uses
  %.017.i52.i = phi i32 [ %i.cf, %.lr.ph.i50.i ], [ %.1.i54.i, %bb.l ] ; 4 uses
  %indvars.iv.next.i53.i = add nsw i64 %indvars.iv.i51.i, -1 ; 4 uses
  %i.ck = zext nneg i32 %.017.i52.i to i64        ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !23
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.next.i53.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !23
  %i.cp = icmp slt i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cq = icmp samesign ugt i64 %indvars.iv.next.i53.i, %i.ck
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cr = trunc nuw nsw i64 %indvars.iv.next.i53.i to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.d, i32 noundef %i.h, i32 noundef %.017.i52.i, i32 noundef %i.cr)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cs = add nsw i32 %.017.i52.i, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1.i54.i = phi i32 [ %.017.i52.i, %bb.h ], [ %i.cs, %bb.k ] ; 2 uses
  %i.ct = icmp samesign ugt i64 %indvars.iv.i51.i, 1
  %i.cu = icmp sgt i32 %.1.i54.i, -1
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %bb.h, label %Mpm_TruthStretch.exit55.i, !llvm.loop !28

Mpm_TruthStretch.exit55.i:                        ; preds = %bb.l, %Mpm_TruthStretch.exit.i
  %.not44.i = icmp eq ptr %4, null
  br i1 %.not44.i, label %Mpm_TruthStretch.exit61.i, label %bb.m

bb.m:                                             ; preds = %Mpm_TruthStretch.exit55.i
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 4 uses
  %i.cy = lshr i32 %i.cx, 1
  %i.cz = and i32 %i.cy, 16777215                 ; 2 uses
  %i.da = lshr i32 %i.cz, %i.r
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !19
  %i.de = and i32 %i.cz, %i.z
  %i.df = mul nsw i32 %i.de, %i.x
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dg
  %i.di = lshr i32 %i.cx, 25
  %i.dj = and i32 %i.di, 1
  %i.dk = xor i32 %i.dj, %7
  %i.dl = and i32 %i.cx, 1
  %.not45.i = icmp ne i32 %i.dk, %i.dl
  %i.dm = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dn = sext i1 %.not45.i to i64
  %i.do = xor i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.e, align 8, !tbaa !22
  %i.dp = lshr i32 %i.cx, 27                      ; 2 uses
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = and i1 %i.bi, %i.dq
  br i1 %i.dr, label %.lr.ph.i56.i, label %Mpm_TruthStretch.exit61.i

.lr.ph.i56.i:                                     ; preds = %bb.m
  %i.ds = add nsw i32 %i.dp, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = lshr i32 %i.bg, 27
  %i.dw = zext nneg i32 %i.dv to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i56.i
  %indvars.iv.i57.i = phi i64 [ %i.dw, %.lr.ph.i56.i ], [ %indvars.iv.next.i59.i, %bb.r ] ; 2 uses
  %.017.i58.i = phi i32 [ %i.ds, %.lr.ph.i56.i ], [ %.1.i60.i, %bb.r ] ; 4 uses
  %indvars.iv.next.i59.i = add nsw i64 %indvars.iv.i57.i, -1 ; 4 uses
  %i.dx = zext nneg i32 %.017.i58.i to i64        ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !23
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i59.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !23
  %i.ec = icmp slt i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = icmp samesign ugt i64 %indvars.iv.next.i59.i, %i.dx
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = trunc nuw nsw i64 %indvars.iv.next.i59.i to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.e, i32 noundef %i.h, i32 noundef %.017.i58.i, i32 noundef %i.ee)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ef = add nsw i32 %.017.i58.i, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.1.i60.i = phi i32 [ %.017.i58.i, %bb.n ], [ %i.ef, %bb.q ] ; 2 uses
  %i.eg = icmp samesign ugt i64 %indvars.iv.i57.i, 1
  %i.eh = icmp sgt i32 %.1.i60.i, -1
  %i.ei = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %i.ei, label %bb.n, label %Mpm_TruthStretch.exit61.i, !llvm.loop !28

Mpm_TruthStretch.exit61.i:                        ; preds = %bb.r, %bb.m, %Mpm_TruthStretch.exit55.i
  switch i32 %8, label %.thread.i [
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
  ]

bb.s:                                             ; preds = %Mpm_TruthStretch.exit61.i
  %i.ej = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ek = load i64, ptr %i.d, align 8, !tbaa !22
  %i.el = and i64 %i.ek, %i.ej
  br label %bb.v

bb.t:                                             ; preds = %Mpm_TruthStretch.exit61.i
  %i.em = load i64, ptr %i.c, align 8, !tbaa !22
  %i.en = load i64, ptr %i.d, align 8, !tbaa !22
  %i.eo = xor i64 %i.en, %i.em
  br label %bb.v

bb.u:                                             ; preds = %Mpm_TruthStretch.exit61.i
  %i.ep = load i64, ptr %i.e, align 8, !tbaa !22  ; 2 uses
  %i.eq = load i64, ptr %i.d, align 8, !tbaa !22
  %i.er = and i64 %i.eq, %i.ep
  %i.es = xor i64 %i.ep, -1
  %i.et = load i64, ptr %i.c, align 8, !tbaa !22
  %i.eu = and i64 %i.et, %i.es
  %i.ev = or i64 %i.eu, %i.er
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sink.i = phi i64 [ %i.eo, %bb.t ], [ %i.ev, %bb.u ], [ %i.el, %bb.s ] ; 3 uses
  store i64 %.sink.i, ptr %i.f, align 8, !tbaa !22
  %i.ew = and i64 %.sink.i, 1
  %.not46.i = icmp eq i64 %i.ew, 0
  br i1 %.not46.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = xor i64 %.sink.i, -1
  store i64 %i.ex, ptr %i.f, align 8, !tbaa !22
  %i.ey = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %.val49.i, ptr noundef nonnull %i.f)
  %i.ez = shl nsw i32 %i.ey, 1
  %i.fa = load i32, ptr %i.bf, align 4
  %i.fb = and i32 %i.ez, 33554430
  %i.fc = and i32 %i.fa, -33554432
  %i.fd = or disjoint i32 %i.fc, %i.fb
  %i.fe = or disjoint i32 %i.fd, 1
  br label %bb.x

.thread.i:                                        ; preds = %bb.v, %Mpm_TruthStretch.exit61.i
  %i.ff = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %.val49.i, ptr noundef nonnull %i.f)
  %i.fg = shl nsw i32 %i.ff, 1
  %i.fh = load i32, ptr %i.bf, align 4
  %i.fi = and i32 %i.fg, 33554430
  %i.fj = and i32 %i.fh, -33554432
  %i.fk = or disjoint i32 %i.fj, %i.fi
  br label %bb.x

bb.x:                                             ; preds = %.thread.i, %bb.w
  %i.fl = phi i32 [ %i.fe, %bb.w ], [ %i.fk, %.thread.i ] ; 3 uses
  store i32 %i.fl, ptr %i.bf, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !79
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !81
  %.not47.i = icmp eq i32 %i.fp, 0
  br i1 %.not47.i, label %Mpm_CutComputeTruth6.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.fq = lshr i32 %i.fl, 1
  %i.fr = and i32 %i.fq, 16777215                 ; 2 uses
  %.val.i.i = load ptr, ptr %i.n, align 8, !tbaa !78 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !17
  %i.fw = lshr i32 %i.fr, %i.fv
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !19
  %i.ga = load i32, ptr %.val.i.i, align 8, !tbaa !20
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !21
  %i.gd = and i32 %i.gc, %i.fr
  %i.ge = mul nsw i32 %i.gd, %i.ga
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !22 ; 7 uses
  store i64 %i.gh, ptr %i.b, align 8, !tbaa !22
  %i.gi = lshr i32 %i.fl, 27                      ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i.i, label %Abc_Tt6SupportAndSize.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  %wide.trip.count.i.i.i = zext nneg i32 %i.gi to i64 ; 2 uses
  %xtraiter268 = and i64 %wide.trip.count.i.i.i, 1
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 30
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.031.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.132.i.i.1, %.lr.ph.i.i.i ]
  %i.gk = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.hf, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %.012.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %.1.i.i.i.1, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.gl = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.gm = shl nuw nsw i32 1, %i.gl                ; 2 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 %i.gh, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.i.i
  %i.gq = load i64, ptr %i.gp, align 16, !tbaa !22
  %i.gr = xor i64 %i.go, %i.gh
  %i.gs = and i64 %i.gr, %i.gq
  %.not10.i.i.i = icmp eq i64 %i.gs, 0            ; 3 uses
  %i.gt = add nsw i32 %i.gk, 1                    ; 2 uses
  %.132.i.i = select i1 %.not10.i.i.i, i32 %.031.i.i, i32 %i.gt
  %i.gu = select i1 %.not10.i.i.i, i32 %i.gk, i32 %i.gt ; 2 uses
  %i.gv = select i1 %.not10.i.i.i, i32 0, i32 %i.gm
  %.1.i.i.i = or i32 %i.gv, %.012.i.i.i
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gw = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  %i.gx = shl nuw nsw i32 1, %i.gw                ; 2 uses
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = lshr i64 %i.gh, %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next.i.i.i
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !22
  %i.hc = xor i64 %i.gz, %i.gh
  %i.hd = and i64 %i.hc, %i.hb
  %.not10.i.i.i.1 = icmp eq i64 %i.hd, 0          ; 3 uses
  %i.he = add nsw i32 %i.gu, 1                    ; 2 uses
  %.132.i.i.1 = select i1 %.not10.i.i.i.1, i32 %.132.i.i, i32 %i.he ; 3 uses
  %i.hf = select i1 %.not10.i.i.i.1, i32 %i.gu, i32 %i.he ; 2 uses
  %i.hg = select i1 %.not10.i.i.i.1, i32 0, i32 %i.gx
  %.1.i.i.i.1 = or i32 %i.hg, %.1.i.i.i           ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !29

Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %Abc_Tt6SupportAndSize.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.031.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.132.i.i.1, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.hf, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.012.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %.1.i.i.i.1, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod272 = trunc i32 %i.gi to i1
  call void @llvm.assume(i1 %lcmp.mod272)
  %i.hh = trunc nuw nsw i64 %indvars.iv.i.i.i.epil.init to i32
  %i.hi = shl nuw nsw i32 1, %i.hh                ; 2 uses
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %i.gh, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.i.i.epil.init
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !22
  %i.hn = xor i64 %i.hk, %i.gh
  %i.ho = and i64 %i.hn, %i.hm
  %.not10.i.i.i.epil = icmp eq i64 %i.ho, 0       ; 2 uses
  %i.hp = add nsw i32 %.epil.init, 1
  %.132.i.i.epil = select i1 %.not10.i.i.i.epil, i32 %.031.i.i.epil.init, i32 %i.hp
  %i.hq = select i1 %.not10.i.i.i.epil, i32 0, i32 %i.hi
  %.1.i.i.i.epil = or i32 %i.hq, %.012.i.i.i.epil.init
  br label %Abc_Tt6SupportAndSize.exit.i.i

Abc_Tt6SupportAndSize.exit.i.i:                   ; preds = %.lr.ph.i.i.i.epil.preheader, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa, %bb.y
  %.2.i.i = phi i32 [ 0, %bb.y ], [ %.132.i.i.1, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ], [ %.132.i.i.epil, %.lr.ph.i.i.i.epil.preheader ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.y ], [ %.1.i.i.i.1, %Abc_Tt6SupportAndSize.exit.i.i.loopexit.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader ]
  %i.hr = icmp eq i32 %.2.i.i, %i.gi
  br i1 %i.hr, label %Mpm_CutTruthMinimize6.exit.i, label %bb.z

bb.z:                                             ; preds = %Abc_Tt6SupportAndSize.exit.i.i
  %i.hs = icmp slt i32 %.2.i.i, 2
  %i.ht = zext i1 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 13896 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !82
  %i.hw = add nsw i32 %i.hv, %i.ht
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !82
  %.val2633.i.i = load i32, ptr %i.bf, align 4    ; 4 uses
  %.not37.i.i = icmp ult i32 %.val2633.i.i, 134217728
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i62.i

end_hunk_0
begin_hunk_1_@Mpm_CutComputeTruth:bb.a
vector.ph120:                                     ; preds = %vector.memcheck118
  %n.vec121 = and i64 %wide.trip.count.i74.i, 2147483644 ; 3 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index123 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %wide.load124 = load <2 x i64>, ptr %i.lt, align 8, !tbaa !22
  %wide.load125 = load <2 x i64>, ptr %i.lu, align 8, !tbaa !22
  %i.lv = xor <2 x i64> %wide.load124, splat (i64 -1)
  %i.lw = xor <2 x i64> %wide.load125, splat (i64 -1)
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index123 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <2 x i64> %i.lv, ptr %i.lx, align 8, !tbaa !22
  store <2 x i64> %i.lw, ptr %i.ly, align 8, !tbaa !22
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.lz, label %middle.block127, label %vector.body122, !llvm.loop !37

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %n.vec121, %wide.trip.count.i74.i
  br i1 %cmp.n128, label %Abc_TtCopy.exit86.i, label %.lr.ph.i75.i.preheader

.lr.ph.i75.i.preheader:                           ; preds = %vector.memcheck118, %.lr.ph.preheader.i73.i, %middle.block127
  %indvars.iv.i76.i.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph.preheader.i73.i ], [ %n.vec121, %middle.block127 ] ; 3 uses
  %xtraiter253 = and i64 %wide.trip.count.i74.i, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph.i75.i.prol.loopexit, label %.lr.ph.i75.i.prol

.lr.ph.i75.i.prol:                                ; preds = %.lr.ph.i75.i.preheader, %.lr.ph.i75.i.prol
  %indvars.iv.i76.i.prol = phi i64 [ %indvars.iv.next.i77.i.prol, %.lr.ph.i75.i.prol ], [ %indvars.iv.i76.i.ph, %.lr.ph.i75.i.preheader ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph.i75.i.prol ], [ 0, %.lr.ph.i75.i.preheader ]
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i76.i.prol
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !22
  %i.mc = xor i64 %i.mb, -1
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i76.i.prol
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !22
  %indvars.iv.next.i77.i.prol = add nuw nsw i64 %indvars.iv.i76.i.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph.i75.i.prol.loopexit, label %.lr.ph.i75.i.prol, !llvm.loop !38

.lr.ph.i75.i.prol.loopexit:                       ; preds = %.lr.ph.i75.i.prol, %.lr.ph.i75.i.preheader
  %indvars.iv.i76.i.unr = phi i64 [ %indvars.iv.i76.i.ph, %.lr.ph.i75.i.preheader ], [ %indvars.iv.next.i77.i.prol, %.lr.ph.i75.i.prol ]
  %i.me = sub nsw i64 %indvars.iv.i76.i.ph, %wide.trip.count.i74.i
  %i.mf = icmp ugt i64 %i.me, -4
  br i1 %i.mf, label %Abc_TtCopy.exit86.i, label %.lr.ph.i75.i

.preheader.i79.i:                                 ; preds = %Abc_TtCopy.exit.i
  br i1 %i.jb, label %.lr.ph18.preheader.i80.i, label %Abc_TtCopy.exit86.i

.lr.ph18.preheader.i80.i:                         ; preds = %.preheader.i79.i
  %wide.trip.count24.i81.i = zext nneg i32 %i.iw to i64 ; 5 uses
  %min.iters.check133 = icmp ult i32 %i.iw, 16
  br i1 %min.iters.check133, label %.lr.ph18.i82.i.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph18.preheader.i80.i
  %i.mg = shl nsw i64 %i.ap, 3
  %i.mh = add i64 %i.mg, %i.am
  %i.mi = sub i64 %i.a, %i.mh
  %i.mj = add i64 %i.mi, 5407
  %diff.check135 = icmp ult i64 %i.mj, 31
  br i1 %diff.check135, label %.lr.ph18.i82.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck134
  %n.vec137 = and i64 %wide.trip.count24.i81.i, 2147483644 ; 3 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index139 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load140 = load <2 x i64>, ptr %i.mk, align 8, !tbaa !22
  %wide.load141 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !22
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index139 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store <2 x i64> %wide.load140, ptr %i.mm, align 8, !tbaa !22
  store <2 x i64> %wide.load141, ptr %i.mn, align 8, !tbaa !22
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.mo, label %middle.block143, label %vector.body138, !llvm.loop !39

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %n.vec137, %wide.trip.count24.i81.i
  br i1 %cmp.n144, label %Abc_TtCopy.exit86.i, label %.lr.ph18.i82.i.preheader

.lr.ph18.i82.i.preheader:                         ; preds = %vector.memcheck134, %.lr.ph18.preheader.i80.i, %middle.block143
  %indvars.iv21.i83.i.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph18.preheader.i80.i ], [ %n.vec137, %middle.block143 ] ; 3 uses
  %xtraiter256 = and i64 %wide.trip.count24.i81.i, 3 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph18.i82.i.prol.loopexit, label %.lr.ph18.i82.i.prol

.lr.ph18.i82.i.prol:                              ; preds = %.lr.ph18.i82.i.preheader, %.lr.ph18.i82.i.prol
  %indvars.iv21.i83.i.prol = phi i64 [ %indvars.iv.next22.i84.i.prol, %.lr.ph18.i82.i.prol ], [ %indvars.iv21.i83.i.ph, %.lr.ph18.i82.i.preheader ] ; 3 uses
  %prol.iter258 = phi i64 [ %prol.iter258.next, %.lr.ph18.i82.i.prol ], [ 0, %.lr.ph18.i82.i.preheader ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv21.i83.i.prol
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !22
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv21.i83.i.prol
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !22
  %indvars.iv.next22.i84.i.prol = add nuw nsw i64 %indvars.iv21.i83.i.prol, 1 ; 2 uses
  %prol.iter258.next = add i64 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i64 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph18.i82.i.prol.loopexit, label %.lr.ph18.i82.i.prol, !llvm.loop !40

.lr.ph18.i82.i.prol.loopexit:                     ; preds = %.lr.ph18.i82.i.prol, %.lr.ph18.i82.i.preheader
  %indvars.iv21.i83.i.unr = phi i64 [ %indvars.iv21.i83.i.ph, %.lr.ph18.i82.i.preheader ], [ %indvars.iv.next22.i84.i.prol, %.lr.ph18.i82.i.prol ]
  %i.ms = sub nsw i64 %indvars.iv21.i83.i.ph, %wide.trip.count24.i81.i
  %i.mt = icmp ugt i64 %i.ms, -4
  br i1 %i.mt, label %Abc_TtCopy.exit86.i, label %.lr.ph18.i82.i

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i
  %indvars.iv.i76.i = phi i64 [ %indvars.iv.next.i77.i.3, %.lr.ph.i75.i ], [ %indvars.iv.i76.i.unr, %.lr.ph.i75.i.prol.loopexit ] ; 6 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.i76.i
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !22
  %i.mw = xor i64 %i.mv, -1
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i76.i
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !22
  %indvars.iv.next.i77.i = add nuw nsw i64 %indvars.iv.i76.i, 1 ; 2 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i77.i
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !22
  %i.na = xor i64 %i.mz, -1
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i77.i
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !22
  %indvars.iv.next.i77.i.1 = add nuw nsw i64 %indvars.iv.i76.i, 2 ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i77.i.1
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !22
  %i.ne = xor i64 %i.nd, -1
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i77.i.1
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !22
  %indvars.iv.next.i77.i.2 = add nuw nsw i64 %indvars.iv.i76.i, 3 ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next.i77.i.2
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !22
  %i.ni = xor i64 %i.nh, -1
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next.i77.i.2
  store i64 %i.ni, ptr %i.nj, align 8, !tbaa !22
  %indvars.iv.next.i77.i.3 = add nuw nsw i64 %indvars.iv.i76.i, 4 ; 2 uses
  %exitcond.not.i78.i.3 = icmp eq i64 %indvars.iv.next.i77.i.3, %wide.trip.count.i74.i
  br i1 %exitcond.not.i78.i.3, label %Abc_TtCopy.exit86.i, label %.lr.ph.i75.i, !llvm.loop !41

.lr.ph18.i82.i:                                   ; preds = %.lr.ph18.i82.i.prol.loopexit, %.lr.ph18.i82.i
  %indvars.iv21.i83.i = phi i64 [ %indvars.iv.next22.i84.i.3, %.lr.ph18.i82.i ], [ %indvars.iv21.i83.i.unr, %.lr.ph18.i82.i.prol.loopexit ] ; 6 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv21.i83.i
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !22
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv21.i83.i
  store i64 %i.nl, ptr %i.nm, align 8, !tbaa !22
  %indvars.iv.next22.i84.i = add nuw nsw i64 %indvars.iv21.i83.i, 1 ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next22.i84.i
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !22
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next22.i84.i
  store i64 %i.no, ptr %i.np, align 8, !tbaa !22
  %indvars.iv.next22.i84.i.1 = add nuw nsw i64 %indvars.iv21.i83.i, 2 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next22.i84.i.1
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !22
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next22.i84.i.1
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !22
  %indvars.iv.next22.i84.i.2 = add nuw nsw i64 %indvars.iv21.i83.i, 3 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next22.i84.i.2
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !22
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.next22.i84.i.2
  store i64 %i.nu, ptr %i.nv, align 8, !tbaa !22
  %indvars.iv.next22.i84.i.3 = add nuw nsw i64 %indvars.iv21.i83.i, 4 ; 2 uses
  %exitcond25.not.i85.i.3 = icmp eq i64 %indvars.iv.next22.i84.i.3, %wide.trip.count24.i81.i
  br i1 %exitcond25.not.i85.i.3, label %Abc_TtCopy.exit86.i, label %.lr.ph18.i82.i, !llvm.loop !42

Abc_TtCopy.exit86.i:                              ; preds = %.lr.ph.i75.i.prol.loopexit, %.lr.ph.i75.i, %.lr.ph18.i82.i.prol.loopexit, %.lr.ph18.i82.i, %middle.block127, %middle.block143, %.preheader.i79.i, %.preheader14.i72.i
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 11 uses
  %i.nx = load i32, ptr %i.nw, align 4            ; 3 uses
  %i.ny = load i32, ptr %i.j, align 4
  %i.nz = lshr i32 %i.ny, 27                      ; 2 uses
  %i.oa = icmp ugt i32 %i.nx, 134217727
  %i.ob = icmp ne i32 %i.nz, 0
  %i.oc = select i1 %i.oa, i1 %i.ob, i1 false
  br i1 %i.oc, label %.lr.ph.i87.i, label %Mpm_TruthStretch.exit.i20

.lr.ph.i87.i:                                     ; preds = %Abc_TtCopy.exit86.i
  %i.od = add nsw i32 %i.nz, -1
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.og = lshr i32 %i.nx, 27
  %i.oh = zext nneg i32 %i.og to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.lr.ph.i87.i
  %indvars.iv.i88.i = phi i64 [ %i.oh, %.lr.ph.i87.i ], [ %indvars.iv.next.i89.i, %bb.ak ] ; 2 uses
  %.017.i.i35 = phi i32 [ %i.od, %.lr.ph.i87.i ], [ %.1.i.i36, %bb.ak ] ; 4 uses
  %indvars.iv.next.i89.i = add nsw i64 %indvars.iv.i88.i, -1 ; 4 uses
  %i.oi = zext nneg i32 %.017.i.i35 to i64        ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !23
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv.next.i89.i
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !23
  %i.on = icmp slt i32 %i.ok, %i.om
  br i1 %i.on, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.oo = icmp samesign ugt i64 %indvars.iv.next.i89.i, %i.oi
  br i1 %i.oo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.op = trunc nuw nsw i64 %indvars.iv.next.i89.i to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.iu, i32 noundef %i.h, i32 noundef %.017.i.i35, i32 noundef %i.op)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.oq = add nsw i32 %.017.i.i35, -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.1.i.i36 = phi i32 [ %.017.i.i35, %bb.ag ], [ %i.oq, %bb.aj ] ; 2 uses
  %i.or = icmp samesign ugt i64 %indvars.iv.i88.i, 1
  %i.os = icmp sgt i32 %.1.i.i36, -1
  %i.ot = select i1 %i.or, i1 %i.os, i1 false
  br i1 %i.ot, label %bb.ag, label %Mpm_TruthStretch.exit.loopexit.i, !llvm.loop !28

Mpm_TruthStretch.exit.loopexit.i:                 ; preds = %bb.ak
  %.pre.i = load i32, ptr %i.g, align 8, !tbaa !77
  %.pre161.i = load i32, ptr %i.nw, align 4
  br label %Mpm_TruthStretch.exit.i20

Mpm_TruthStretch.exit.i20:                        ; preds = %Mpm_TruthStretch.exit.loopexit.i, %Abc_TtCopy.exit86.i
  %i.ou = phi i32 [ %.pre161.i, %Mpm_TruthStretch.exit.loopexit.i ], [ %i.nx, %Abc_TtCopy.exit86.i ] ; 2 uses
  %i.ov = phi i32 [ %.pre.i, %Mpm_TruthStretch.exit.loopexit.i ], [ %i.h, %Abc_TtCopy.exit86.i ]
  %i.ow = load i32, ptr %i.ae, align 4
  %i.ox = lshr i32 %i.ow, 27                      ; 2 uses
  %i.oy = icmp ugt i32 %i.ou, 134217727
  %i.oz = icmp ne i32 %i.ox, 0
  %i.pa = select i1 %i.oy, i1 %i.oz, i1 false
  br i1 %i.pa, label %.lr.ph.i90.i, label %Mpm_TruthStretch.exit95.i

.lr.ph.i90.i:                                     ; preds = %Mpm_TruthStretch.exit.i20
  %i.pb = add nsw i32 %i.ox, -1
  %i.pc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pe = lshr i32 %i.ou, 27
  %i.pf = zext nneg i32 %i.pe to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ap, %.lr.ph.i90.i
  %indvars.iv.i91.i = phi i64 [ %i.pf, %.lr.ph.i90.i ], [ %indvars.iv.next.i93.i, %bb.ap ] ; 2 uses
  %.017.i92.i = phi i32 [ %i.pb, %.lr.ph.i90.i ], [ %.1.i94.i, %bb.ap ] ; 4 uses
  %indvars.iv.next.i93.i = add nsw i64 %indvars.iv.i91.i, -1 ; 4 uses
  %i.pg = zext nneg i32 %.017.i92.i to i64        ; 2 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !23
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %indvars.iv.next.i93.i
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !23
  %i.pl = icmp slt i32 %i.pi, %i.pk
  br i1 %i.pl, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.pm = icmp samesign ugt i64 %indvars.iv.next.i93.i, %i.pg
  br i1 %i.pm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pn = trunc nuw nsw i64 %indvars.iv.next.i93.i to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.lj, i32 noundef %i.ov, i32 noundef %.017.i92.i, i32 noundef %i.pn)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.po = add nsw i32 %.017.i92.i, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.1.i94.i = phi i32 [ %.017.i92.i, %bb.al ], [ %i.po, %bb.ao ] ; 2 uses
  %i.pp = icmp samesign ugt i64 %indvars.iv.i91.i, 1
  %i.pq = icmp sgt i32 %.1.i94.i, -1
  %i.pr = select i1 %i.pp, i1 %i.pq, i1 false
  br i1 %i.pr, label %bb.al, label %Mpm_TruthStretch.exit95.i, !llvm.loop !28

Mpm_TruthStretch.exit95.i:                        ; preds = %bb.ap, %Mpm_TruthStretch.exit.i20
  %.not.i21 = icmp eq ptr %4, null
  br i1 %.not.i21, label %Mpm_TruthStretch.exit117.i, label %bb.aq

bb.aq:                                            ; preds = %Mpm_TruthStretch.exit95.i
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4            ; 3 uses
  %i.pu = lshr i32 %i.pt, 1
  %i.pv = and i32 %i.pu, 16777215                 ; 2 uses
  %.val.i = load ptr, ptr %i.n, align 8, !tbaa !78 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !16
  %i.py = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !17
  %i.qa = lshr i32 %i.pv, %i.pz
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.qb
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !19 ; 2 uses
  %i.qe = ptrtoaddr ptr %i.qd to i64              ; 2 uses
  %i.qf = load i32, ptr %.val.i, align 8, !tbaa !20
  %i.qg = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !21
  %i.qi = and i32 %i.qh, %i.pv
  %i.qj = mul i32 %i.qi, %i.qf
  %i.qk = sext i32 %i.qj to i64                   ; 3 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.qd, i64 %i.qk ; 12 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 13 uses
  %i.qn = load i32, ptr %i.iv, align 8, !tbaa !83 ; 5 uses
  %i.qo = lshr i32 %i.pt, 25
  %i.qp = and i32 %i.qo, 1
  %i.qq = xor i32 %i.qp, %7
  %i.qr = and i32 %i.pt, 1
  %.not.i96.i = icmp eq i32 %i.qq, %i.qr
  %i.qs = icmp sgt i32 %i.qn, 0                   ; 2 uses
  br i1 %.not.i96.i, label %.preheader.i104.i, label %.preheader14.i97.i

.preheader14.i97.i:                               ; preds = %bb.aq
  br i1 %i.qs, label %.lr.ph.preheader.i98.i, label %Abc_TtCopy.exit111.i

.lr.ph.preheader.i98.i:                           ; preds = %.preheader14.i97.i
  %wide.trip.count.i99.i = zext nneg i32 %i.qn to i64 ; 5 uses
  %min.iters.check149 = icmp ult i32 %i.qn, 12
  br i1 %min.iters.check149, label %.lr.ph.i100.i.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.preheader.i98.i
  %i.qt = shl nsw i64 %i.qk, 3
  %i.qu = add i64 %i.qt, %i.qe
  %i.qv = sub i64 %i.a, %i.qu
  %i.qw = add i64 %i.qv, 5919
  %diff.check151 = icmp ult i64 %i.qw, 31
  br i1 %diff.check151, label %.lr.ph.i100.i.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck150
  %n.vec153 = and i64 %wide.trip.count.i99.i, 2147483644 ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body154 ] ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %index155 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load156 = load <2 x i64>, ptr %i.qx, align 8, !tbaa !22
  %wide.load157 = load <2 x i64>, ptr %i.qy, align 8, !tbaa !22
  %i.qz = xor <2 x i64> %wide.load156, splat (i64 -1)
  %i.ra = xor <2 x i64> %wide.load157, splat (i64 -1)
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %index155 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  store <2 x i64> %i.qz, ptr %i.rb, align 8, !tbaa !22
  store <2 x i64> %i.ra, ptr %i.rc, align 8, !tbaa !22
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.rd = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.rd, label %middle.block159, label %vector.body154, !llvm.loop !43

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %n.vec153, %wide.trip.count.i99.i
  br i1 %cmp.n160, label %Abc_TtCopy.exit111.i, label %.lr.ph.i100.i.preheader

.lr.ph.i100.i.preheader:                          ; preds = %vector.memcheck150, %.lr.ph.preheader.i98.i, %middle.block159
  %indvars.iv.i101.i.ph = phi i64 [ 0, %vector.memcheck150 ], [ 0, %.lr.ph.preheader.i98.i ], [ %n.vec153, %middle.block159 ] ; 3 uses
  %xtraiter259 = and i64 %wide.trip.count.i99.i, 3 ; 2 uses
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  br i1 %lcmp.mod260.not, label %.lr.ph.i100.i.prol.loopexit, label %.lr.ph.i100.i.prol

.lr.ph.i100.i.prol:                               ; preds = %.lr.ph.i100.i.preheader, %.lr.ph.i100.i.prol
  %indvars.iv.i101.i.prol = phi i64 [ %indvars.iv.next.i102.i.prol, %.lr.ph.i100.i.prol ], [ %indvars.iv.i101.i.ph, %.lr.ph.i100.i.preheader ] ; 3 uses
  %prol.iter261 = phi i64 [ %prol.iter261.next, %.lr.ph.i100.i.prol ], [ 0, %.lr.ph.i100.i.preheader ]
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i101.i.prol
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !22
  %i.rg = xor i64 %i.rf, -1
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.i101.i.prol
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !22
  %indvars.iv.next.i102.i.prol = add nuw nsw i64 %indvars.iv.i101.i.prol, 1 ; 2 uses
  %prol.iter261.next = add i64 %prol.iter261, 1   ; 2 uses
  %prol.iter261.cmp.not = icmp eq i64 %prol.iter261.next, %xtraiter259
  br i1 %prol.iter261.cmp.not, label %.lr.ph.i100.i.prol.loopexit, label %.lr.ph.i100.i.prol, !llvm.loop !44

.lr.ph.i100.i.prol.loopexit:                      ; preds = %.lr.ph.i100.i.prol, %.lr.ph.i100.i.preheader
  %indvars.iv.i101.i.unr = phi i64 [ %indvars.iv.i101.i.ph, %.lr.ph.i100.i.preheader ], [ %indvars.iv.next.i102.i.prol, %.lr.ph.i100.i.prol ]
  %i.ri = sub nsw i64 %indvars.iv.i101.i.ph, %wide.trip.count.i99.i
  %i.rj = icmp ugt i64 %i.ri, -4
  br i1 %i.rj, label %Abc_TtCopy.exit111.i, label %.lr.ph.i100.i

.preheader.i104.i:                                ; preds = %bb.aq
  br i1 %i.qs, label %.lr.ph18.preheader.i105.i, label %Abc_TtCopy.exit111.i

.lr.ph18.preheader.i105.i:                        ; preds = %.preheader.i104.i
  %wide.trip.count24.i106.i = zext nneg i32 %i.qn to i64 ; 5 uses
  %min.iters.check165 = icmp ult i32 %i.qn, 16
  br i1 %min.iters.check165, label %.lr.ph18.i107.i.preheader, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph18.preheader.i105.i
  %i.rk = shl nsw i64 %i.qk, 3
  %i.rl = add i64 %i.rk, %i.qe
  %i.rm = sub i64 %i.a, %i.rl
  %i.rn = add i64 %i.rm, 5919
  %diff.check167 = icmp ult i64 %i.rn, 31
  br i1 %diff.check167, label %.lr.ph18.i107.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck166
  %n.vec169 = and i64 %wide.trip.count24.i106.i, 2147483644 ; 3 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next174, %vector.body170 ] ; 3 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %index171 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %wide.load172 = load <2 x i64>, ptr %i.ro, align 8, !tbaa !22
  %wide.load173 = load <2 x i64>, ptr %i.rp, align 8, !tbaa !22
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %index171 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store <2 x i64> %wide.load172, ptr %i.rq, align 8, !tbaa !22
  store <2 x i64> %wide.load173, ptr %i.rr, align 8, !tbaa !22
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.rs = icmp eq i64 %index.next174, %n.vec169
  br i1 %i.rs, label %middle.block175, label %vector.body170, !llvm.loop !45

middle.block175:                                  ; preds = %vector.body170
  %cmp.n176 = icmp eq i64 %n.vec169, %wide.trip.count24.i106.i
  br i1 %cmp.n176, label %Abc_TtCopy.exit111.i, label %.lr.ph18.i107.i.preheader

.lr.ph18.i107.i.preheader:                        ; preds = %vector.memcheck166, %.lr.ph18.preheader.i105.i, %middle.block175
  %indvars.iv21.i108.i.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph18.preheader.i105.i ], [ %n.vec169, %middle.block175 ] ; 3 uses
  %xtraiter262 = and i64 %wide.trip.count24.i106.i, 3 ; 2 uses
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod263.not, label %.lr.ph18.i107.i.prol.loopexit, label %.lr.ph18.i107.i.prol

.lr.ph18.i107.i.prol:                             ; preds = %.lr.ph18.i107.i.preheader, %.lr.ph18.i107.i.prol
  %indvars.iv21.i108.i.prol = phi i64 [ %indvars.iv.next22.i109.i.prol, %.lr.ph18.i107.i.prol ], [ %indvars.iv21.i108.i.ph, %.lr.ph18.i107.i.preheader ] ; 3 uses
  %prol.iter264 = phi i64 [ %prol.iter264.next, %.lr.ph18.i107.i.prol ], [ 0, %.lr.ph18.i107.i.preheader ]
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv21.i108.i.prol
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !22
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv21.i108.i.prol
  store i64 %i.ru, ptr %i.rv, align 8, !tbaa !22
  %indvars.iv.next22.i109.i.prol = add nuw nsw i64 %indvars.iv21.i108.i.prol, 1 ; 2 uses
  %prol.iter264.next = add i64 %prol.iter264, 1   ; 2 uses
  %prol.iter264.cmp.not = icmp eq i64 %prol.iter264.next, %xtraiter262
  br i1 %prol.iter264.cmp.not, label %.lr.ph18.i107.i.prol.loopexit, label %.lr.ph18.i107.i.prol, !llvm.loop !46

.lr.ph18.i107.i.prol.loopexit:                    ; preds = %.lr.ph18.i107.i.prol, %.lr.ph18.i107.i.preheader
  %indvars.iv21.i108.i.unr = phi i64 [ %indvars.iv21.i108.i.ph, %.lr.ph18.i107.i.preheader ], [ %indvars.iv.next22.i109.i.prol, %.lr.ph18.i107.i.prol ]
  %i.rw = sub nsw i64 %indvars.iv21.i108.i.ph, %wide.trip.count24.i106.i
  %i.rx = icmp ugt i64 %i.rw, -4
  br i1 %i.rx, label %Abc_TtCopy.exit111.i, label %.lr.ph18.i107.i

.lr.ph.i100.i:                                    ; preds = %.lr.ph.i100.i.prol.loopexit, %.lr.ph.i100.i
  %indvars.iv.i101.i = phi i64 [ %indvars.iv.next.i102.i.3, %.lr.ph.i100.i ], [ %indvars.iv.i101.i.unr, %.lr.ph.i100.i.prol.loopexit ] ; 6 uses
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.i101.i
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !22
  %i.sa = xor i64 %i.rz, -1
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.i101.i
  store i64 %i.sa, ptr %i.sb, align 8, !tbaa !22
  %indvars.iv.next.i102.i = add nuw nsw i64 %indvars.iv.i101.i, 1 ; 2 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i102.i
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !22
  %i.se = xor i64 %i.sd, -1
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next.i102.i
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !22
  %indvars.iv.next.i102.i.1 = add nuw nsw i64 %indvars.iv.i101.i, 2 ; 2 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i102.i.1
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !22
  %i.si = xor i64 %i.sh, -1
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next.i102.i.1
  store i64 %i.si, ptr %i.sj, align 8, !tbaa !22
  %indvars.iv.next.i102.i.2 = add nuw nsw i64 %indvars.iv.i101.i, 3 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next.i102.i.2
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !22
  %i.sm = xor i64 %i.sl, -1
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next.i102.i.2
  store i64 %i.sm, ptr %i.sn, align 8, !tbaa !22
  %indvars.iv.next.i102.i.3 = add nuw nsw i64 %indvars.iv.i101.i, 4 ; 2 uses
  %exitcond.not.i103.i.3 = icmp eq i64 %indvars.iv.next.i102.i.3, %wide.trip.count.i99.i
  br i1 %exitcond.not.i103.i.3, label %Abc_TtCopy.exit111.i, label %.lr.ph.i100.i, !llvm.loop !47

.lr.ph18.i107.i:                                  ; preds = %.lr.ph18.i107.i.prol.loopexit, %.lr.ph18.i107.i
  %indvars.iv21.i108.i = phi i64 [ %indvars.iv.next22.i109.i.3, %.lr.ph18.i107.i ], [ %indvars.iv21.i108.i.unr, %.lr.ph18.i107.i.prol.loopexit ] ; 6 uses
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv21.i108.i
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !22
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv21.i108.i
  store i64 %i.sp, ptr %i.sq, align 8, !tbaa !22
  %indvars.iv.next22.i109.i = add nuw nsw i64 %indvars.iv21.i108.i, 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next22.i109.i
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !22
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next22.i109.i
  store i64 %i.ss, ptr %i.st, align 8, !tbaa !22
  %indvars.iv.next22.i109.i.1 = add nuw nsw i64 %indvars.iv21.i108.i, 2 ; 2 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next22.i109.i.1
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !22
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next22.i109.i.1
  store i64 %i.sv, ptr %i.sw, align 8, !tbaa !22
  %indvars.iv.next22.i109.i.2 = add nuw nsw i64 %indvars.iv21.i108.i, 3 ; 2 uses
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv.next22.i109.i.2
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !22
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %indvars.iv.next22.i109.i.2
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !22
  %indvars.iv.next22.i109.i.3 = add nuw nsw i64 %indvars.iv21.i108.i, 4 ; 2 uses
  %exitcond25.not.i110.i.3 = icmp eq i64 %indvars.iv.next22.i109.i.3, %wide.trip.count24.i106.i
  br i1 %exitcond25.not.i110.i.3, label %Abc_TtCopy.exit111.i, label %.lr.ph18.i107.i, !llvm.loop !48

Abc_TtCopy.exit111.i:                             ; preds = %.lr.ph.i100.i.prol.loopexit, %.lr.ph.i100.i, %.lr.ph18.i107.i.prol.loopexit, %.lr.ph18.i107.i, %middle.block159, %middle.block175, %.preheader.i104.i, %.preheader14.i97.i
  %i.ta = load i32, ptr %i.g, align 8, !tbaa !77
  %i.tb = load i32, ptr %i.nw, align 4            ; 2 uses
  %i.tc = load i32, ptr %i.ps, align 4
  %i.td = lshr i32 %i.tc, 27                      ; 2 uses
  %i.te = icmp ugt i32 %i.tb, 134217727
  %i.tf = icmp ne i32 %i.td, 0
  %i.tg = select i1 %i.te, i1 %i.tf, i1 false
  br i1 %i.tg, label %.lr.ph.i112.i, label %Mpm_TruthStretch.exit117.i

.lr.ph.i112.i:                                    ; preds = %Abc_TtCopy.exit111.i
  %i.th = add nsw i32 %i.td, -1
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tk = lshr i32 %i.tb, 27
  %i.tl = zext nneg i32 %i.tk to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph.i112.i
  %indvars.iv.i113.i = phi i64 [ %i.tl, %.lr.ph.i112.i ], [ %indvars.iv.next.i115.i, %bb.av ] ; 2 uses
  %.017.i114.i = phi i32 [ %i.th, %.lr.ph.i112.i ], [ %.1.i116.i, %bb.av ] ; 4 uses
  %indvars.iv.next.i115.i = add nsw i64 %indvars.iv.i113.i, -1 ; 4 uses
  %i.tm = zext nneg i32 %.017.i114.i to i64       ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !23
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.next.i115.i
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !23
  %i.tr = icmp slt i32 %i.to, %i.tq
  br i1 %i.tr, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ts = icmp samesign ugt i64 %indvars.iv.next.i115.i, %i.tm
  br i1 %i.ts, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.tt = trunc nuw nsw i64 %indvars.iv.next.i115.i to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.qm, i32 noundef %i.ta, i32 noundef %.017.i114.i, i32 noundef %i.tt)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.tu = add nsw i32 %.017.i114.i, -1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar
  %.1.i116.i = phi i32 [ %.017.i114.i, %bb.ar ], [ %i.tu, %bb.au ] ; 2 uses
  %i.tv = icmp samesign ugt i64 %indvars.iv.i113.i, 1
  %i.tw = icmp sgt i32 %.1.i116.i, -1
  %i.tx = select i1 %i.tv, i1 %i.tw, i1 false
  br i1 %i.tx, label %bb.ar, label %Mpm_TruthStretch.exit117.i, !llvm.loop !28

Mpm_TruthStretch.exit117.i:                       ; preds = %bb.av, %Abc_TtCopy.exit111.i, %Mpm_TruthStretch.exit95.i
  switch i32 %8, label %Abc_TtAnd.exit.i [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
    i32 3, label %bb.ay
  ]

bb.aw:                                            ; preds = %Mpm_TruthStretch.exit117.i
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 2 uses
  %i.tz = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.ua = icmp sgt i32 %i.tz, 0
  br i1 %i.ua, label %.lr.ph.preheader.i118.i, label %Abc_TtAnd.exit.i

.lr.ph.preheader.i118.i:                          ; preds = %bb.aw
  %wide.trip.count.i119.i = zext nneg i32 %i.tz to i64 ; 3 uses
  %min.iters.check204 = icmp eq i32 %i.tz, 1
  br i1 %min.iters.check204, label %.lr.ph.i120.i.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %.lr.ph.preheader.i118.i
  %n.vec206 = and i64 %wide.trip.count.i119.i, 2147483646 ; 3 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next211, %vector.body207 ] ; 4 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index208
  %wide.load209 = load <2 x i64>, ptr %i.ub, align 8, !tbaa !22
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index208
  %wide.load210 = load <2 x i64>, ptr %i.uc, align 8, !tbaa !22
  %i.ud = and <2 x i64> %wide.load210, %wide.load209
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %index208
  store <2 x i64> %i.ud, ptr %i.ue, align 8, !tbaa !22
  %index.next211 = add nuw i64 %index208, 2       ; 2 uses
  %i.uf = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.uf, label %middle.block212, label %vector.body207, !llvm.loop !49

middle.block212:                                  ; preds = %vector.body207
  %cmp.n213 = icmp eq i64 %n.vec206, %wide.trip.count.i119.i
  br i1 %cmp.n213, label %Abc_TtAnd.exit.i, label %.lr.ph.i120.i.preheader

.lr.ph.i120.i.preheader:                          ; preds = %.lr.ph.preheader.i118.i, %middle.block212
  %indvars.iv.i121.i.ph = phi i64 [ 0, %.lr.ph.preheader.i118.i ], [ %n.vec206, %middle.block212 ]
  br label %.lr.ph.i120.i

.lr.ph.i120.i:                                    ; preds = %.lr.ph.i120.i.preheader, %.lr.ph.i120.i
  %indvars.iv.i121.i = phi i64 [ %indvars.iv.next.i122.i, %.lr.ph.i120.i ], [ %indvars.iv.i121.i.ph, %.lr.ph.i120.i.preheader ] ; 4 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i121.i
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !22
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i121.i
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !22
  %i.uk = and i64 %i.uj, %i.uh
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ty, i64 %indvars.iv.i121.i
  store i64 %i.uk, ptr %i.ul, align 8, !tbaa !22
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i121.i, 1 ; 2 uses
  %exitcond.not.i123.i = icmp eq i64 %indvars.iv.next.i122.i, %wide.trip.count.i119.i
  br i1 %exitcond.not.i123.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i120.i, !llvm.loop !50

bb.ax:                                            ; preds = %Mpm_TruthStretch.exit117.i
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 2 uses
  %i.un = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.uo = icmp sgt i32 %i.un, 0
  br i1 %i.uo, label %.lr.ph.preheader.i124.i, label %Abc_TtAnd.exit.i

.lr.ph.preheader.i124.i:                          ; preds = %bb.ax
  %wide.trip.count.i125.i = zext nneg i32 %i.un to i64 ; 3 uses
  %min.iters.check192 = icmp eq i32 %i.un, 1
  br i1 %min.iters.check192, label %.lr.ph.i126.i.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph.preheader.i124.i
  %n.vec194 = and i64 %wide.trip.count.i125.i, 2147483646 ; 3 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next199, %vector.body195 ] ; 4 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index196
  %wide.load197 = load <2 x i64>, ptr %i.up, align 8, !tbaa !22
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index196
  %wide.load198 = load <2 x i64>, ptr %i.uq, align 8, !tbaa !22
  %i.ur = xor <2 x i64> %wide.load198, %wide.load197
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %index196
  store <2 x i64> %i.ur, ptr %i.us, align 8, !tbaa !22
  %index.next199 = add nuw i64 %index196, 2       ; 2 uses
  %i.ut = icmp eq i64 %index.next199, %n.vec194
  br i1 %i.ut, label %middle.block200, label %vector.body195, !llvm.loop !51

middle.block200:                                  ; preds = %vector.body195
  %cmp.n201 = icmp eq i64 %n.vec194, %wide.trip.count.i125.i
  br i1 %cmp.n201, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i.preheader

.lr.ph.i126.i.preheader:                          ; preds = %.lr.ph.preheader.i124.i, %middle.block200
  %indvars.iv.i127.i.ph = phi i64 [ 0, %.lr.ph.preheader.i124.i ], [ %n.vec194, %middle.block200 ]
  br label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %.lr.ph.i126.i.preheader, %.lr.ph.i126.i
  %indvars.iv.i127.i = phi i64 [ %indvars.iv.next.i128.i, %.lr.ph.i126.i ], [ %indvars.iv.i127.i.ph, %.lr.ph.i126.i.preheader ] ; 4 uses
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i127.i
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !22
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i127.i
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !22
  %i.uy = xor i64 %i.ux, %i.uv
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i127.i
  store i64 %i.uy, ptr %i.uz, align 8, !tbaa !22
  %indvars.iv.next.i128.i = add nuw nsw i64 %indvars.iv.i127.i, 1 ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %indvars.iv.next.i128.i, %wide.trip.count.i125.i
  br i1 %exitcond.not.i129.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i126.i, !llvm.loop !52

bb.ay:                                            ; preds = %Mpm_TruthStretch.exit117.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.vc = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.vd = icmp sgt i32 %i.vc, 0
  br i1 %i.vd, label %.lr.ph.preheader.i130.i, label %Abc_TtAnd.exit.i

.lr.ph.preheader.i130.i:                          ; preds = %bb.ay
  %wide.trip.count.i131.i = zext nneg i32 %i.vc to i64 ; 3 uses
  %min.iters.check179 = icmp eq i32 %i.vc, 1
  br i1 %min.iters.check179, label %.lr.ph.i132.i.preheader, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.preheader.i130.i
  %n.vec181 = and i64 %wide.trip.count.i131.i, 2147483646 ; 3 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next187, %vector.body182 ] ; 5 uses
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %index183
  %wide.load184 = load <2 x i64>, ptr %i.ve, align 8, !tbaa !22 ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %index183
  %wide.load185 = load <2 x i64>, ptr %i.vf, align 8, !tbaa !22
  %i.vg = and <2 x i64> %wide.load185, %wide.load184
  %i.vh = xor <2 x i64> %wide.load184, splat (i64 -1)
  %i.vi = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %index183
  %wide.load186 = load <2 x i64>, ptr %i.vi, align 8, !tbaa !22
  %i.vj = and <2 x i64> %wide.load186, %i.vh
  %i.vk = or <2 x i64> %i.vj, %i.vg
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %index183
  store <2 x i64> %i.vk, ptr %i.vl, align 8, !tbaa !22
  %index.next187 = add nuw i64 %index183, 2       ; 2 uses
  %i.vm = icmp eq i64 %index.next187, %n.vec181
  br i1 %i.vm, label %middle.block188, label %vector.body182, !llvm.loop !53

middle.block188:                                  ; preds = %vector.body182
  %cmp.n189 = icmp eq i64 %n.vec181, %wide.trip.count.i131.i
  br i1 %cmp.n189, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i.preheader

.lr.ph.i132.i.preheader:                          ; preds = %.lr.ph.preheader.i130.i, %middle.block188
  %indvars.iv.i133.i.ph = phi i64 [ 0, %.lr.ph.preheader.i130.i ], [ %n.vec181, %middle.block188 ]
  br label %.lr.ph.i132.i

.lr.ph.i132.i:                                    ; preds = %.lr.ph.i132.i.preheader, %.lr.ph.i132.i
  %indvars.iv.i133.i = phi i64 [ %indvars.iv.next.i134.i, %.lr.ph.i132.i ], [ %indvars.iv.i133.i.ph, %.lr.ph.i132.i.preheader ] ; 5 uses
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %indvars.iv.i133.i
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !22 ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv.i133.i
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !22
  %i.vr = and i64 %i.vq, %i.vo
  %i.vs = xor i64 %i.vo, -1
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.i133.i
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !22
  %i.vv = and i64 %i.vu, %i.vs
  %i.vw = or i64 %i.vv, %i.vr
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %indvars.iv.i133.i
  store i64 %i.vw, ptr %i.vx, align 8, !tbaa !22
  %indvars.iv.next.i134.i = add nuw nsw i64 %indvars.iv.i133.i, 1 ; 2 uses
  %exitcond.not.i135.i = icmp eq i64 %indvars.iv.next.i134.i, %wide.trip.count.i131.i
  br i1 %exitcond.not.i135.i, label %Abc_TtAnd.exit.i, label %.lr.ph.i132.i, !llvm.loop !54

Abc_TtAnd.exit.i:                                 ; preds = %.lr.ph.i132.i, %.lr.ph.i126.i, %.lr.ph.i120.i, %middle.block188, %middle.block200, %middle.block212, %bb.ay, %bb.ax, %bb.aw, %Mpm_TruthStretch.exit117.i
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 6432 ; 13 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !22
  %i.wa = and i64 %i.vz, 1
  %.not67.i = icmp eq i64 %i.wa, 0
  br i1 %.not67.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %Abc_TtAnd.exit.i
  %i.wb = load i32, ptr %i.iv, align 8, !tbaa !83 ; 3 uses
  %i.wc = icmp sgt i32 %i.wb, 0
  br i1 %i.wc, label %.lr.ph.preheader.i136.i, label %Abc_TtNot.exit.i

.lr.ph.preheader.i136.i:                          ; preds = %bb.az
  %wide.trip.count.i137.i = zext nneg i32 %i.wb to i64 ; 3 uses
  %min.iters.check216 = icmp ult i32 %i.wb, 4
  br i1 %min.iters.check216, label %.lr.ph.i138.i.preheader, label %vector.ph217

vector.ph217:                                     ; preds = %.lr.ph.preheader.i136.i
  %n.vec218 = and i64 %wide.trip.count.i137.i, 2147483644 ; 3 uses
  br label %vector.body219

end_hunk_1
