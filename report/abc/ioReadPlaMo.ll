Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioReadPlaMo?download=true
inline.NumInlined: 265
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Mop_ManMergeDist1Pairs:bb.a
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv165 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !30 ; 2 uses
  %.val110 = load ptr, ptr %i.p, align 8, !tbaa !27 ; 2 uses
  %i.aj = sext i32 %i.ag to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val110, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !30
  %.val86 = load i32, ptr %i.q, align 8, !tbaa !14 ; 4 uses
  %.val87 = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.am = getelementptr i8, ptr %.val87, i64 8
  %.val87.val = load ptr, ptr %i.am, align 8, !tbaa !19 ; 3 uses
  %.val87.val207 = ptrtoaddr ptr %.val87.val to i64
  %i.an = mul i32 %.val86, %i.al
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.val87.val, i64 %i.ao ; 7 uses
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val110, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.at = mul i32 %i.as, %.val86
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.val87.val, i64 %i.au ; 7 uses
  %i.aw = icmp sgt i32 %.val86, 0
  br i1 %i.aw, label %.lr.ph.preheader.i, label %Mop_ManFindDiffVar.exit

.lr.ph.preheader.i:                               ; preds = %.critedge
  %wide.trip.count.i = zext nneg i32 %.val86 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ah, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ah ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !43 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ay                    ; 31 uses
  %i.bc = and i64 %i.bb, 3
  %.not.i114 = icmp eq i64 %i.bc, 0
  br i1 %.not.i114, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %.lr.ph.i
  %i.bd = and i64 %i.bb, 12
  %.not.1.i = icmp eq i64 %i.bd, 0
  br i1 %.not.1.i, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.be = and i64 %i.bb, 48
  %.not.2.i = icmp eq i64 %i.be, 0
  br i1 %.not.2.i, label %bb.e, label %bb.ai

bb.e:                                             ; preds = %bb.d
  %i.bf = and i64 %i.bb, 192
  %.not.3.i = icmp eq i64 %i.bf, 0
  br i1 %.not.3.i, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %bb.e
  %i.bg = and i64 %i.bb, 768
  %.not.4.i = icmp eq i64 %i.bg, 0
  br i1 %.not.4.i, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.bh = and i64 %i.bb, 3072
  %.not.5.i = icmp eq i64 %i.bh, 0
  br i1 %.not.5.i, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %bb.g
  %i.bi = and i64 %i.bb, 12288
  %.not.6.i = icmp eq i64 %i.bi, 0
  br i1 %.not.6.i, label %bb.i, label %bb.ai

bb.i:                                             ; preds = %bb.h
  %i.bj = and i64 %i.bb, 49152
  %.not.7.i = icmp eq i64 %i.bj, 0
  br i1 %.not.7.i, label %bb.j, label %bb.ai

bb.j:                                             ; preds = %bb.i
  %i.bk = and i64 %i.bb, 196608
  %.not.8.i = icmp eq i64 %i.bk, 0
  br i1 %.not.8.i, label %bb.k, label %bb.ai

bb.k:                                             ; preds = %bb.j
  %i.bl = and i64 %i.bb, 786432
  %.not.9.i = icmp eq i64 %i.bl, 0
  br i1 %.not.9.i, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %bb.k
  %i.bm = and i64 %i.bb, 3145728
  %.not.10.i = icmp eq i64 %i.bm, 0
  br i1 %.not.10.i, label %bb.m, label %bb.ai

bb.m:                                             ; preds = %bb.l
  %i.bn = and i64 %i.bb, 12582912
  %.not.11.i = icmp eq i64 %i.bn, 0
  br i1 %.not.11.i, label %bb.n, label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.bo = and i64 %i.bb, 50331648
  %.not.12.i = icmp eq i64 %i.bo, 0
  br i1 %.not.12.i, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.bp = and i64 %i.bb, 201326592
  %.not.13.i = icmp eq i64 %i.bp, 0
  br i1 %.not.13.i, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %bb.o
  %i.bq = and i64 %i.bb, 805306368
  %.not.14.i = icmp eq i64 %i.bq, 0
  br i1 %.not.14.i, label %bb.q, label %bb.ai

bb.q:                                             ; preds = %bb.p
  %i.br = and i64 %i.bb, 3221225472
  %.not.15.i = icmp eq i64 %i.br, 0
  br i1 %.not.15.i, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bs = and i64 %i.bb, 12884901888
  %.not.16.i = icmp eq i64 %i.bs, 0
  br i1 %.not.16.i, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.bt = and i64 %i.bb, 51539607552
  %.not.17.i = icmp eq i64 %i.bt, 0
  br i1 %.not.17.i, label %bb.t, label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.bu = and i64 %i.bb, 206158430208
  %.not.18.i = icmp eq i64 %i.bu, 0
  br i1 %.not.18.i, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.bv = and i64 %i.bb, 824633720832
  %.not.19.i = icmp eq i64 %i.bv, 0
  br i1 %.not.19.i, label %bb.v, label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.bw = and i64 %i.bb, 3298534883328
  %.not.20.i = icmp eq i64 %i.bw, 0
  br i1 %.not.20.i, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bx = and i64 %i.bb, 13194139533312
  %.not.21.i = icmp eq i64 %i.bx, 0
  br i1 %.not.21.i, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %bb.w
  %i.by = and i64 %i.bb, 52776558133248
  %.not.22.i = icmp eq i64 %i.by, 0
  br i1 %.not.22.i, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.bz = and i64 %i.bb, 211106232532992
  %.not.23.i = icmp eq i64 %i.bz, 0
  br i1 %.not.23.i, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ca = and i64 %i.bb, 844424930131968
  %.not.24.i = icmp eq i64 %i.ca, 0
  br i1 %.not.24.i, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.cb = and i64 %i.bb, 3377699720527872
  %.not.25.i = icmp eq i64 %i.cb, 0
  br i1 %.not.25.i, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.cc = and i64 %i.bb, 13510798882111488
  %.not.26.i = icmp eq i64 %i.cc, 0
  br i1 %.not.26.i, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.cd = and i64 %i.bb, 54043195528445952
  %.not.27.i = icmp eq i64 %i.cd, 0
  br i1 %.not.27.i, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ce = and i64 %i.bb, 216172782113783808
  %.not.28.i = icmp eq i64 %i.ce, 0
  br i1 %.not.28.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cf = and i64 %i.bb, 864691128455135232
  %.not.29.i = icmp eq i64 %i.cf, 0
  br i1 %.not.29.i, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.cg = and i64 %i.bb, 3458764513820540928
  %.not.30.i = icmp eq i64 %i.cg, 0
  br i1 %.not.30.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not.31.i = icmp eq i64 %i.ba, %i.ay
  br i1 %.not.31.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mop_ManFindDiffVar.exit, label %.lr.ph.i, !llvm.loop !78

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %.01421.lcssa.wide.i = phi i64 [ 0, %.lr.ph.i ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ]
  %5 = shl i64 %indvars.iv.i, 5
  %.masked = and i64 %5, 4294967264
  %6 = or disjoint i64 %.01421.lcssa.wide.i, %.masked
  br label %Mop_ManFindDiffVar.exit

Mop_ManFindDiffVar.exit:                          ; preds = %bb.ah, %.critedge, %bb.ai
  %.2.i = phi i64 [ %6, %bb.ai ], [ -1, %.critedge ], [ -1, %bb.ah ]
  %.val108 = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val108, i64 %.2.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  %i.cj = icmp sgt i32 %i.ci, %4
  br i1 %i.cj, label %bb.bd, label %bb.aj

bb.aj:                                            ; preds = %Mop_ManFindDiffVar.exit
  %i.ck = icmp eq i32 %i.ae, %i.ad
  br i1 %i.ck, label %bb.ak, label %Vec_IntPush.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cl = icmp slt i32 %i.ad, 16
  br i1 %i.cl, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.an:                                            ; preds = %bb.al
  %i.cn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ao:                                            ; preds = %bb.ak
  %i.co = icmp samesign ult i32 %i.ad, 1073741823
  %i.cp = shl nuw nsw i32 %i.ad, 1
  %spec.select.i = select i1 %i.co, i32 %i.cp, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ad, %spec.select.i
  br i1 %.not.i9.i, label %bb.ap, label %Vec_IntPush.exit

bb.ap:                                            ; preds = %bb.ao
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.cq = zext nneg i32 %spec.select.i to i64
  %i.cr = shl nuw nsw i64 %i.cq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.cr) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ar:                                            ; preds = %bb.ap
  %i.ct = tail call noalias ptr @malloc(i64 noundef %i.cr) #27
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.aq, %bb.ar, %bb.am, %bb.an
  %storemerge = phi ptr [ %i.cn, %bb.an ], [ %i.cm, %bb.am ], [ %i.cs, %bb.aq ], [ %i.ct, %bb.ar ] ; 3 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i, %bb.aq ], [ %spec.select.i, %bb.ar ]
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !27
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !26
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.aj, %bb.ao, %Vec_IntGrow.exit11.sink.split.i
  %i.cu = phi ptr [ %i.ab, %bb.aj ], [ %i.ab, %bb.ao ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cv = phi ptr [ %i.ac, %bb.aj ], [ %i.ac, %bb.ao ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cw = add nsw i32 %i.ae, 1                    ; 6 uses
  store i32 %i.cw, ptr %i.h, align 4, !tbaa !23
  %i.cx = sext i32 %i.ae to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cx
  store i32 %i.ag, ptr %i.cy, align 4, !tbaa !30
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.da = icmp eq i32 %i.cw, %i.cz
  br i1 %i.da, label %bb.as, label %Vec_IntPush.exit122

bb.as:                                            ; preds = %Vec_IntPush.exit
  %i.db = icmp slt i32 %i.ae, 15
  br i1 %i.db, label %Vec_IntGrow.exit11.sink.split.i118, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dc = icmp samesign ult i32 %i.ae, 1073741822
  %i.dd = shl nuw nsw i32 %i.cw, 1
  %spec.select.i115 = select i1 %i.dc, i32 %i.dd, i32 2147483647 ; 3 uses
  %.not.i9.i116 = icmp samesign ult i32 %i.cw, %spec.select.i115
  br i1 %.not.i9.i116, label %bb.au, label %Vec_IntPush.exit122

bb.au:                                            ; preds = %bb.at
  %i.de = zext nneg i32 %spec.select.i115 to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  br label %Vec_IntGrow.exit11.sink.split.i118

Vec_IntGrow.exit11.sink.split.i118:               ; preds = %bb.as, %bb.au
  %.sink = phi i64 [ %i.df, %bb.au ], [ 64, %bb.as ]
  %spec.select.sink.i119 = phi i32 [ %spec.select.i115, %bb.au ], [ 16, %bb.as ] ; 2 uses
  %i.dg = tail call ptr @realloc(ptr noundef nonnull %i.cv, i64 noundef %.sink) #30 ; 2 uses
  store ptr %i.dg, ptr %i.m, align 8, !tbaa !27
  store i32 %spec.select.sink.i119, ptr %i.f, align 8, !tbaa !26
  br label %Vec_IntPush.exit122

Vec_IntPush.exit122:                              ; preds = %Vec_IntPush.exit, %bb.at, %Vec_IntGrow.exit11.sink.split.i118
  %i.dh = phi ptr [ %i.cu, %Vec_IntPush.exit ], [ %i.cu, %bb.at ], [ %i.dg, %Vec_IntGrow.exit11.sink.split.i118 ] ; 3 uses
  %i.di = phi i32 [ %i.cz, %Vec_IntPush.exit ], [ %i.cw, %bb.at ], [ %spec.select.sink.i119, %Vec_IntGrow.exit11.sink.split.i118 ]
  %i.dj = add nsw i32 %i.ae, 2                    ; 2 uses
  store i32 %i.dj, ptr %i.h, align 4, !tbaa !23
  %i.dk = sext i32 %i.cw to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.dk
  store i32 %i.ai, ptr %i.dl, align 4, !tbaa !30
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = add nsw i32 %i.dq, -1                   ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !23
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !30 ; 3 uses
  %.val = load i32, ptr %i.q, align 8, !tbaa !14  ; 4 uses
  %.val83 = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.dv = getelementptr i8, ptr %.val83, i64 8
  %.val83.val = load ptr, ptr %i.dv, align 8, !tbaa !19 ; 2 uses
  %.val83.val206 = ptrtoaddr ptr %.val83.val to i64
  %i.dw = mul i32 %.val, %i.du
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %.val83.val, i64 %i.dx ; 6 uses
  %i.dz = icmp sgt i32 %.val, 0
  br i1 %i.dz, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_IntPush.exit122
  %wide.trip.count = zext nneg i32 %.val to i64   ; 5 uses
  %min.iters.check211 = icmp ult i32 %.val, 10
  br i1 %min.iters.check211, label %.lr.ph.preheader225, label %vector.memcheck205

vector.memcheck205:                               ; preds = %.lr.ph.preheader
  %i.ea = shl nsw i64 %i.dx, 3
  %i.eb = add i64 %i.ea, %.val83.val206
  %i.ec = sub i64 %i.eb, %.val87.val207           ; 2 uses
  %i.ed = shl nsw i64 %i.au, 3
  %i.ee = sub i64 %i.ed, %i.ec
  %diff.check208 = icmp ugt i64 %i.ee, -32
  %i.ef = shl nsw i64 %i.ao, 3
  %i.eg = sub i64 %i.ef, %i.ec
  %diff.check209 = icmp ugt i64 %i.eg, -32
  %conflict.rdx = or i1 %diff.check208, %diff.check209
  br i1 %conflict.rdx, label %.lr.ph.preheader225, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck205
  %n.vec213 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next220, %vector.body214 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index215 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load216 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !43
  %wide.load217 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !43
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index215 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load218 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !43
  %wide.load219 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !43
  %i.el = and <2 x i64> %wide.load218, %wide.load216
  %i.em = and <2 x i64> %wide.load219, %wide.load217
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index215 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <2 x i64> %i.el, ptr %i.en, align 8, !tbaa !43
  store <2 x i64> %i.em, ptr %i.eo, align 8, !tbaa !43
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ep, label %middle.block221, label %vector.body214, !llvm.loop !79

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %n.vec213, %wide.trip.count
  br i1 %cmp.n222, label %._crit_edge, label %.lr.ph.preheader225

.lr.ph.preheader225:                              ; preds = %vector.memcheck205, %.lr.ph.preheader, %middle.block221
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck205 ], [ 0, %.lr.ph.preheader ], [ %n.vec213, %middle.block221 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader225, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader225 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader225 ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.prol
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !43
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.prol
  %i.et = load i64, ptr %i.es, align 8, !tbaa !43
  %i.eu = and i64 %i.et, %i.er
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.prol
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !43
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !80

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader225
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader225 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ew = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !43
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !43
  %i.fc = and i64 %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@Mop_ManReduce:bb.a
  %.08.i.us.i70 = phi i32 [ %i.dh, %.lr.ph.i.us.i68 ], [ %.08.i.us.i70.ph, %.lr.ph.i.us.i68.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.us.i69
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !43
  %i.df = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.de)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = add nuw nsw i32 %.08.i.us.i70, %i.dg    ; 2 uses
  %indvars.iv.next.i.us.i71 = add nuw nsw i64 %indvars.iv.i.us.i69, 1 ; 2 uses
  %exitcond.not.i.us.i72 = icmp eq i64 %indvars.iv.next.i.us.i71, %wide.trip.count.i.i62
  br i1 %exitcond.not.i.us.i72, label %Mop_ManCountOnes.exit.loopexit.us.i73, label %.lr.ph.i.us.i68, !llvm.loop !159

Mop_ManCountOnes.exit.loopexit.us.i73:            ; preds = %.lr.ph.i.us.i68, %middle.block168
  %.lcssa = phi i32 [ %i.dc, %middle.block168 ], [ %i.dh, %.lr.ph.i.us.i68 ]
  %i.di = add nuw nsw i32 %.lcssa, %.014.us.i67   ; 2 uses
  %indvars.iv.next.i74 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %indvars.iv.next.i74, %wide.trip.count.i64
  br i1 %exitcond.not.i75, label %Mop_ManCountOutputLits.exit76, label %.lr.ph.preheader.i.us.i65, !llvm.loop !145

Mop_ManCountOutputLits.exit76:                    ; preds = %Mop_ManCountOnes.exit.loopexit.us.i73, %.critedge2, %.lr.ph.i57
  %.0.lcssa.i56 = phi i32 [ 0, %.critedge2 ], [ 0, %.lr.ph.i57 ], [ %i.di, %Mop_ManCountOnes.exit.loopexit.us.i73 ]
  call fastcc void @Mop_ManUnCreateGroups(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %i.dj = load i32, ptr %i.g, align 8, !tbaa !139 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !122 ; 3 uses
  br i1 %i.dk, label %.lr.ph.i.i77.preheader, label %._crit_edge.i.i

.lr.ph.i.i77.preheader:                           ; preds = %Mop_ManCountOutputLits.exit76
  %i.dl = zext nneg i32 %i.dj to i64
  br label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %.lr.ph.i.i77.preheader, %bb.h
  %indvars.iv.i.i78 = phi i64 [ %indvars.iv.next.i.i79, %bb.h ], [ 0, %.lr.ph.i.i77.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !27 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.do, null
  br i1 %.not15.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i77
  call void @free(ptr noundef nonnull %i.do) #28
  store ptr null, ptr %i.dn, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i77
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next.i.i79, %i.dl
  br i1 %exitcond118.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i77, !llvm.loop !148

._crit_edge.i.i:                                  ; preds = %Mop_ManCountOutputLits.exit76
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.h, %._crit_edge.i.i
  call void @free(ptr noundef nonnull %.pre.i.i) #28
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  call void @free(ptr noundef nonnull %i.g) #28
  %i.dp = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %.val = load i32, ptr %i.dq, align 4, !tbaa !23
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.val, i32 noundef %.038.lcssa123, i32 noundef %.0.lcssa, i32 noundef %.0.lcssa.i, i32 noundef %.0.lcssa.i56) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ds = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #28
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %Abc_Clock.exit81, label %bb.i

bb.i:                                             ; preds = %Vec_WecFree.exit
  %i.du = load i64, ptr %1, align 8, !tbaa !136
  %i.dv = mul nsw i64 %i.du, 1000000
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !138
  %i.dy = sdiv i64 %i.dx, 1000
  %i.dz = add nsw i64 %i.dy, %i.dv
  br label %Abc_Clock.exit81

Abc_Clock.exit81:                                 ; preds = %Vec_WecFree.exit, %bb.i
  %.0.i80 = phi i64 [ %i.dz, %bb.i ], [ -1, %Vec_WecFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.ea = add i64 %.0.i80, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14)
  %i.eb = sitofp i64 %i.ea to double
  %i.ec = fdiv double %i.eb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.21, double noundef %i.ec)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Mop_ManCubeCount(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 6 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.d = add i32 %i.b, -1
  %or.cond.i.i = icmp ult i32 %i.d, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %i.b ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !139
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WecStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i.i to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 16) #26
  br label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.i, align 8, !tbaa !122
  store i32 %i.b, ptr %i.h, align 4, !tbaa !120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val2125 = load i32, ptr %i.l, align 4, !tbaa !23
  %i.m = icmp sgt i32 %.val2125, 0
  br i1 %i.m, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %Vec_WecStart.exit
  %i.n = getelementptr i8, ptr %0, i64 12
  %i.o = getelementptr i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph27, %.loopexit
  %i.p = phi ptr [ %i.k, %.lr.ph27 ], [ %i.cm, %.loopexit ] ; 3 uses
  %i.q = phi i32 [ %i.b, %.lr.ph27 ], [ %i.cn, %.loopexit ] ; 3 uses
  %.val.i37 = phi ptr [ %i.g, %.lr.ph27 ], [ %.val.i36, %.loopexit ] ; 3 uses
  %i.r = phi ptr [ %i.g, %.lr.ph27 ], [ %i.co, %.loopexit ] ; 3 uses
  %i.s = phi i32 [ %spec.store.select.i.i, %.lr.ph27 ], [ %i.cp, %.loopexit ] ; 3 uses
  %i.t = phi i32 [ %i.b, %.lr.ph27 ], [ %i.cq, %.loopexit ] ; 3 uses
  %i.u = phi i32 [ %i.b, %.lr.ph27 ], [ %i.cr, %.loopexit ] ; 3 uses
  %indvars.iv29 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next30, %.loopexit ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.p, i64 8
  %.val22 = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %indvars.iv29
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30   ; 3 uses
  %.not = icmp eq i32 %i.x, -1
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %i.n, align 4, !tbaa !15
  %.val20 = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.y = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.z = mul nsw i32 %.val, %i.x
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %.val20.val, i64 %i.aa
  %i.ac = icmp sgt i32 %i.u, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %bb.u
  %i.ad = phi i32 [ %i.cg, %bb.u ], [ %i.q, %bb.d ]
  %.val.i35 = phi ptr [ %.val.i34, %bb.u ], [ %.val.i37, %bb.d ] ; 3 uses
  %i.ae = phi ptr [ %i.ch, %bb.u ], [ %i.r, %bb.d ] ; 3 uses
  %i.af = phi i32 [ %i.ci, %bb.u ], [ %i.s, %bb.d ] ; 6 uses
  %i.ag = phi i32 [ %i.cj, %bb.u ], [ %i.t, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.u ], [ 0, %bb.d ] ; 6 uses
  %i.ah = lshr i64 %indvars.iv, 6
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.al = and i64 %indvars.iv, 63
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.ak, %i.am
  %.not19 = icmp eq i64 %i.an, 0
  br i1 %.not19, label %bb.u, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ao = sext i32 %i.ag to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.ao
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = shl nsw i32 %i.ag, 1
  %i.aq = trunc nsw i64 %indvars.iv to i32
  %i.ar = add nsw i32 %i.aq, 1                    ; 3 uses
  %i.as = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.ap, i32 range(i32 -2147483647, -2147483648) %i.ar) ; 5 uses
  %.not.i.i23 = icmp slt i32 %i.af, %i.as
  br i1 %.not.i.i23, label %bb.g, label %Vec_WecGrow.exit.i

bb.g:                                             ; preds = %bb.f
  %.not13.i.i = icmp eq ptr %i.ae, null
  %i.at = zext nneg i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 4                ; 2 uses
  br i1 %.not13.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = tail call ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef %i.au) #30
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.au) #27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = phi ptr [ %i.av, %bb.h ], [ %i.aw, %bb.i ] ; 3 uses
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !122
  %i.ay = sext i32 %i.af to i64
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = sub nsw i32 %i.as, %i.af
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  store i32 %i.as, ptr %i.c, align 8, !tbaa !139
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.j, %bb.f
  %.val.i32 = phi ptr [ %i.ax, %bb.j ], [ %.val.i35, %bb.f ]
  %i.bd = phi i32 [ %i.as, %bb.j ], [ %i.af, %bb.f ]
  store i32 %i.ar, ptr %i.h, align 4, !tbaa !120
  br label %bb.k

bb.k:                                             ; preds = %Vec_WecGrow.exit.i, %bb.e
  %.val.i = phi ptr [ %.val.i32, %Vec_WecGrow.exit.i ], [ %.val.i35, %bb.e ] ; 3 uses
  %i.be = phi i32 [ %i.bd, %Vec_WecGrow.exit.i ], [ %i.af, %bb.e ]
  %i.bf = phi i32 [ %i.ar, %Vec_WecGrow.exit.i ], [ %i.ag, %bb.e ]
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %indvars.iv ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !23 ; 7 uses
  %i.bj = load i32, ptr %i.bg, align 8, !tbaa !26
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %Vec_WecPush.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp slt i32 %i.bi, 16
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.o, %bb.n
  %i.bq = phi ptr [ %i.bo, %bb.n ], [ %i.bp, %bb.o ]
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.p:                                             ; preds = %bb.l
  %i.br = icmp samesign ult i32 %i.bi, 1073741823
  %i.bs = shl nuw nsw i32 %i.bi, 1
  %spec.select.i.i = select i1 %i.br, i32 %i.bs, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.bi, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.q, label %Vec_WecPush.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !27 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.bu, null
  %i.bv = zext nneg i32 %spec.select.i.i to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = tail call ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef %i.bw) #30
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bw) #27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = phi ptr [ %i.bx, %bb.r ], [ %i.by, %bb.s ]
  store ptr %i.bz, ptr %i.bt, align 8, !tbaa !27
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.t, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.t ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bg, align 8, !tbaa !26
  %.pre.i = load i32, ptr %i.bh, align 4, !tbaa !23
  br label %Vec_WecPush.exit

Vec_WecPush.exit:                                 ; preds = %bb.k, %bb.p, %Vec_IntGrow.exit11.sink.split.i.i
  %i.ca = phi i32 [ %i.bi, %bb.k ], [ %i.bi, %bb.p ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = add nsw i32 %i.ca, 1
  store i32 %i.cd, ptr %i.bh, align 4, !tbaa !23
  %i.ce = sext i32 %i.ca to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ce
  store i32 %i.x, ptr %i.cf, align 4, !tbaa !30
  %.pre = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %Vec_WecPush.exit
  %i.cg = phi i32 [ %i.ad, %.lr.ph ], [ %.pre, %Vec_WecPush.exit ] ; 4 uses
  %.val.i34 = phi ptr [ %.val.i35, %.lr.ph ], [ %.val.i, %Vec_WecPush.exit ] ; 2 uses
  %i.ch = phi ptr [ %i.ae, %.lr.ph ], [ %.val.i, %Vec_WecPush.exit ] ; 2 uses
  %i.ci = phi i32 [ %i.af, %.lr.ph ], [ %i.be, %Vec_WecPush.exit ] ; 2 uses
  %i.cj = phi i32 [ %i.ag, %.lr.ph ], [ %i.bf, %Vec_WecPush.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = sext i32 %i.cg to i64
  %i.cl = icmp slt i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !160

.loopexit.loopexit:                               ; preds = %bb.u
  %.pre38 = load ptr, ptr %i.j, align 8, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.c
  %i.cm = phi ptr [ %.pre38, %.loopexit.loopexit ], [ %i.p, %bb.d ], [ %i.p, %bb.c ] ; 2 uses
  %i.cn = phi i32 [ %i.cg, %.loopexit.loopexit ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  %.val.i36 = phi ptr [ %.val.i34, %.loopexit.loopexit ], [ %.val.i37, %bb.d ], [ %.val.i37, %bb.c ]
  %i.co = phi ptr [ %i.ch, %.loopexit.loopexit ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  %i.cp = phi i32 [ %i.ci, %.loopexit.loopexit ], [ %i.s, %bb.d ], [ %i.s, %bb.c ]
  %i.cq = phi i32 [ %i.cj, %.loopexit.loopexit ], [ %i.t, %bb.d ], [ %i.t, %bb.c ]
  %i.cr = phi i32 [ %i.cg, %.loopexit.loopexit ], [ %i.u, %bb.d ], [ %i.u, %bb.c ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cm, i64 4
  %.val21 = load i32, ptr %i.cs, align 4, !tbaa !23
  %i.ct = sext i32 %.val21 to i64
  %i.cu = icmp slt i64 %indvars.iv.next30, %i.ct
  br i1 %i.cu, label %bb.c, label %.critedge, !llvm.loop !161

.critedge:                                        ; preds = %.loopexit, %Vec_WecStart.exit
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_WecPush(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !120  ; 2 uses
  %.not = icmp sgt i32 %i.b, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 2 uses
  %i.d = shl nsw i32 %i.b, 1
  %i.e = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.d, i32 range(i32 -2147483647, -2147483648) %i.c) ; 4 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !139    ; 2 uses
  %.not.i = icmp slt i32 %i.f, %i.e
  br i1 %.not.i, label %bb.c, label %Vec_WecGrow.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 2 uses
  %.not13.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.e to i64
  %i.j = shl nsw i64 %i.i, 4                      ; 2 uses
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #30
  %.pre.i = load i32, ptr %0, align 8, !tbaa !139
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !122
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [16 x i8], ptr %i.n, i64 %i.o
  %i.q = sub nsw i32 %i.e, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %i.e, ptr %0, align 8, !tbaa !139
  br label %Vec_WecGrow.exit

Vec_WecGrow.exit:                                 ; preds = %bb.b, %bb.f
  store i32 %i.c, ptr %i.a, align 4, !tbaa !120
  br label %bb.g

bb.g:                                             ; preds = %Vec_WecGrow.exit, %bb.a
  %i.t = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.t, align 8, !tbaa !122
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.u ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !23   ; 7 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !26
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %bb.i
end_hunk_1
