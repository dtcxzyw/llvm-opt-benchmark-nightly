Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaLf?download=true
inline.NumInlined: 854
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Gia_ManAppendAnd:bb.a
  %i.b = icmp slt i32 %1, %2
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val76 = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %.val76 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = trunc i64 %i.g to i32
  %i.i = lshr i32 %1, 1
  %i.j = sub i32 %i.h, %i.i
  %i.k = load i64, ptr %i.a, align 4              ; 2 uses
  %i.l = and i32 %i.j, 536870911
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = and i64 %i.k, -1073741824
  %i.o = shl i32 %1, 29
  %i.p = and i32 %i.o, 536870912
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.m               ; 2 uses
  store i64 %i.s, ptr %i.a, align 4
  %.val75 = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.t = ptrtoint ptr %.val75 to i64
  %i.u = sub i64 %i.d, %i.t
  %i.v = sdiv exact i64 %i.u, 12
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i32 %2, 1
  %i.y = sub i32 %i.w, %i.x
  %i.z = and i32 %i.y, 536870911
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = and i64 %i.s, -4611686014132420609
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = and i32 %2, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 61
  %i.ah = or disjoint i64 %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = shl nuw nsw i64 %i.m, 32
  %i.aj = and i64 %i.k, -4611686014132420609
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = and i32 %1, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 61
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  store i64 %i.ao, ptr %i.a, align 4
  %.val73 = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.ap = ptrtoint ptr %.val73 to i64
  %i.aq = sub i64 %i.d, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12
  %i.as = trunc i64 %i.ar to i32
  %i.at = lshr i32 %2, 1
  %i.au = sub i32 %i.as, %i.at
  %i.av = and i32 %i.au, 536870911
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = and i64 %i.ao, -1073741824
  %i.ay = or disjoint i64 %i.ax, %i.aw
  %i.az = shl i32 %2, 29
  %i.ba = and i32 %i.az, 536870912
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.ah, %bb.b ], [ %i.bc, %bb.c ] ; 2 uses
  store i64 %storemerge, ptr %i.a, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !139
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = and i64 %storemerge, 536870911
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bg
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a) #34
  %i.bi = load i64, ptr %i.a, align 4
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = and i64 %i.bj, 536870911
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bl
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.a) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !275
  %.not65 = icmp eq i32 %i.bo, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.a, align 4             ; 2 uses
  %i.bq = and i64 %i.bp, 536870911
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.br ; 3 uses
  %i.bt = lshr i64 %i.bp, 32
  %i.bu = and i64 %i.bt, 536870911
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.bv ; 2 uses
  %i.bx = load i64, ptr %i.bs, align 4            ; 2 uses
  %i.by = and i64 %i.bx, 1073741824
  %.not66 = icmp eq i64 %i.by, 0
  %storemerge67.v = select i1 %.not66, i64 1073741824, i64 4611686018427387904
  %storemerge67 = or i64 %storemerge67.v, %i.bx
  store i64 %storemerge67, ptr %i.bs, align 4
  %i.bz = load i64, ptr %i.bw, align 4            ; 3 uses
  %i.ca = and i64 %i.bz, 1073741824
  %.not68 = icmp eq i64 %i.ca, 0
  %storemerge69.v = select i1 %.not68, i64 1073741824, i64 4611686018427387904
  %storemerge69 = or i64 %storemerge69.v, %i.bz
  store i64 %storemerge69, ptr %i.bw, align 4
  %.val84 = load i64, ptr %i.bs, align 4
  %i.cb = lshr i64 %.val84, 63
  %.val78 = load i64, ptr %i.a, align 4           ; 3 uses
  %i.cc = lshr i64 %.val78, 29
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = lshr i64 %i.bz, 63
  %i.cf = lshr i64 %.val78, 61
  %i.cg = and i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.ce
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = shl nuw i64 %i.ci, 63
  %i.ck = and i64 %.val78, 9223372036854775807
  %i.cl = or disjoint i64 %i.cj, %i.ck
  store i64 %i.cl, ptr %i.a, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !276
  %.not70 = icmp eq i32 %i.cn, 0
  br i1 %.not70, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = load i64, ptr %i.a, align 4             ; 5 uses
  %i.cp = and i64 %i.co, 536870911
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cq
  %i.cs = lshr i64 %i.co, 32
  %i.ct = and i64 %i.cs, 536870911
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.a, i64 %i.cu
  %.val82 = load i64, ptr %i.cr, align 4
  %i.cw = lshr i64 %.val82, 63
  %i.cx = lshr i64 %i.co, 29
  %i.cy = xor i64 %i.cw, %i.cx
  %.val81 = load i64, ptr %i.cv, align 4
  %i.cz = lshr i64 %.val81, 63
  %i.da = lshr i64 %i.co, 61
  %i.db = and i64 %i.da, 1
  %i.dc = xor i64 %i.cz, %i.db
  %i.dd = and i64 %i.dc, %i.cy
  %i.de = shl nuw i64 %i.dd, 63
  %i.df = and i64 %i.co, 9223372036854775807
  %i.dg = or disjoint i64 %i.de, %i.df
  store i64 %i.dg, ptr %i.a, align 4
  %i.dh = getelementptr i8, ptr %0, i64 32
  %.val72 = load ptr, ptr %i.dh, align 8, !tbaa !54
  %i.di = ptrtoint ptr %i.a to i64
  %i.dj = ptrtoint ptr %.val72 to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 12
  %i.dm = trunc i64 %i.dl to i32
  tail call void @Gia_ManBuiltInSimPerform(ptr noundef nonnull %0, i32 noundef %i.dm) #34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !277
  %.not71 = icmp eq ptr %i.do, null
  br i1 %.not71, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @Gia_ManQuantSetSuppAnd(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dp = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.dp, align 8, !tbaa !54
  %i.dq = ptrtoint ptr %i.a to i64
  %i.dr = ptrtoint ptr %.val to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = sdiv exact i64 %i.ds, 12
  %i.du = trunc i64 %i.dt to i32
  %i.dv = shl i32 %i.du, 1
  ret i32 %i.dv
}

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @Lf_ManDeriveMappingGia(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [128 x i64], align 16             ; 18 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 4 uses
  %i.c = alloca [13 x i32], align 16              ; 6 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !38
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %.val112 = load i32, ptr %i.e, align 8, !tbaa !58 ; 7 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 6 uses
  %i.g = add i32 %.val112, -1
  %or.cond.i.i = icmp ult i32 %i.g, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.f, align 8, !tbaa !117
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !56
  store i32 %.val112, ptr %i.h, align 4, !tbaa !64
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.j = sext i32 %spec.store.select.i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #33 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !56
  store i32 %.val112, ptr %i.h, align 4, !tbaa !64
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.n = sext i32 %.val112 to i64
  %i.o = shl nsw i64 %i.n, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 -1, i64 %i.o, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val124 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.l, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !133
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !130
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = add i32 %.val112, %i.w
  %i.y = shl i32 %i.x, 1
  %i.z = add i32 %i.y, %i.t
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !127
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = shl nsw i32 %i.ac, 2
  %i.ae = add nsw i32 %i.z, %i.ad                 ; 5 uses
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 21 uses
  %i.ag = add i32 %i.ae, -1
  %or.cond.i.i130 = icmp ult i32 %i.ag, 15
  %spec.store.select.i.i131 = select i1 %or.cond.i.i130, i32 16, i32 %i.ae ; 3 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 4      ; 12 uses
  store i32 %spec.store.select.i.i131, ptr %i.af, align 8, !tbaa !117
  %.not.i.i132 = icmp eq i32 %spec.store.select.i.i131, 0
  br i1 %.not.i.i132, label %Vec_IntAlloc.exit.thread.i135, label %Vec_IntAlloc.exit.i133

Vec_IntAlloc.exit.thread.i135:                    ; preds = %Vec_IntStartFull.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !56
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !64
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i133:                           ; preds = %Vec_IntStartFull.exit
  %i.aj = sext i32 %spec.store.select.i.i131 to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.ak) #33 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !56
  store i32 %i.ae, ptr %i.ah, align 4, !tbaa !64
  %.not.i134 = icmp eq ptr %i.al, null
  br i1 %.not.i134, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit.i133
  %i.an = sext i32 %i.ae to i64
  %i.ao = shl nsw i64 %i.an, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %i.ao, i1 false)
  %.pre = load i64, ptr %i.r, align 8, !tbaa !133
  %.pre199 = load i64, ptr %i.u, align 8, !tbaa !130
  %.pre215.a = trunc i64 %.pre to i32
  %.pre216 = trunc i64 %.pre199 to i32
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i135, %Vec_IntAlloc.exit.i133, %bb.c
  %.pre-phi217 = phi i32 [ %i.w, %Vec_IntAlloc.exit.thread.i135 ], [ %i.w, %Vec_IntAlloc.exit.i133 ], [ %.pre216, %bb.c ]
  %.pre-phi = phi i32 [ %i.t, %Vec_IntAlloc.exit.thread.i135 ], [ %i.t, %Vec_IntAlloc.exit.i133 ], [ %.pre215.a, %bb.c ]
  %i.ap = shl nsw i32 %.pre-phi217, 1
  %i.aq = add nsw i32 %i.ap, %.pre-phi            ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1000                 ; 4 uses
  %i.as = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 25 uses
  %i.at = add nsw i32 %i.aq, 999
  %or.cond.i.i136 = icmp ult i32 %i.at, 15
  %spec.store.select.i.i137 = select i1 %or.cond.i.i136, i32 16, i32 %i.ar ; 3 uses
  %i.au = getelementptr i8, ptr %i.as, i64 4      ; 28 uses
  store i32 %spec.store.select.i.i137, ptr %i.as, align 8, !tbaa !117
  %.not.i.i138 = icmp eq i32 %spec.store.select.i.i137, 0
  br i1 %.not.i.i138, label %Vec_IntAlloc.exit.thread.i141, label %Vec_IntAlloc.exit.i139

Vec_IntAlloc.exit.thread.i141:                    ; preds = %Vec_IntStart.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr null, ptr %i.av, align 8, !tbaa !56
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !64
  br label %Vec_IntStart.exit142

Vec_IntAlloc.exit.i139:                           ; preds = %Vec_IntStart.exit
  %i.aw = sext i32 %spec.store.select.i.i137 to i64
  %i.ax = shl nsw i64 %i.aw, 2
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.ax) #33 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !56
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !64
  %.not.i140 = icmp eq ptr %i.ay, null
  br i1 %.not.i140, label %Vec_IntStart.exit142, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit.i139
  %i.ba = sext i32 %i.ar to i64
  %i.bb = shl nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ay, i8 0, i64 %i.bb, i1 false)
  br label %Vec_IntStart.exit142

Vec_IntStart.exit142:                             ; preds = %Vec_IntAlloc.exit.thread.i141, %Vec_IntAlloc.exit.i139, %bb.d
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 0, ptr %i.bd, align 4, !tbaa !64
  store i32 65536, ptr %i.bc, align 8, !tbaa !117
  %i.be = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !56
  %i.bg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #33 ; 23 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 38 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !64
  store i32 16, ptr %i.bg, align 8, !tbaa !117
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 22 uses
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !56
  %i.bk = tail call ptr @Gia_ManStart(i32 noundef %.val112) #34 ; 14 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !38    ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !135 ; 3 uses
  %.not.i143 = icmp eq ptr %i.bm, null
  br i1 %.not.i143, label %Abc_UtilStrsav.exit, label %bb.e

bb.e:                                             ; preds = %Vec_IntStart.exit142
  %i.bn = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bm) #37
  %i.bo = add i64 %i.bn, 1
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #33 ; 2 uses
  %i.bq = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bp, ptr noundef nonnull readonly dereferenceable(1) %i.bm) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %Vec_IntStart.exit142, %bb.e
  %i.br = phi ptr [ %i.bp, %bb.e ], [ null, %Vec_IntStart.exit142 ]
  store ptr %i.br, ptr %i.bk, align 8, !tbaa !135
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !136 ; 3 uses
  %.not.i144 = icmp eq ptr %i.bt, null
  br i1 %.not.i144, label %Abc_UtilStrsav.exit145, label %bb.f

bb.f:                                             ; preds = %Abc_UtilStrsav.exit
  %i.bu = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bt) #37
  %i.bv = add i64 %i.bu, 1
  %i.bw = tail call noalias ptr @malloc(i64 noundef %i.bv) #33 ; 2 uses
  %i.bx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull readonly dereferenceable(1) %i.bt) #34 ; 0 uses
  br label %Abc_UtilStrsav.exit145

Abc_UtilStrsav.exit145:                           ; preds = %Abc_UtilStrsav.exit, %bb.f
  %i.by = phi ptr [ %i.bw, %bb.f ], [ null, %Abc_UtilStrsav.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !136
  %i.ca = getelementptr i8, ptr %i.f, i64 8       ; 4 uses
  store i32 0, ptr %.val124, align 4, !tbaa !57
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !58
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %Abc_UtilStrsav.exit145
  %i.ce = getelementptr i8, ptr %i.bk, i64 32     ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 176
  %i.ch = getelementptr i8, ptr %0, i64 240
  %i.ci = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.cj = getelementptr i8, ptr %i.af, i64 8      ; 15 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 18 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.el
  %.val123 = phi ptr [ %.val124, %.lr.ph ], [ %.val123212, %bb.el ] ; 11 uses
  %.val149.i = phi ptr [ %.val124, %.lr.ph ], [ %.val121208, %bb.el ] ; 14 uses
  %.val101 = phi ptr [ %.val124, %.lr.ph ], [ %.val101206, %bb.el ] ; 8 uses
  %.val102 = phi ptr [ %.val124, %.lr.ph ], [ %.val102204, %bb.el ] ; 6 uses
  %.val103 = phi ptr [ %.val124, %.lr.ph ], [ %.val103202, %bb.el ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.el ] ; 11 uses
  %i.cl = phi ptr [ %i.bl, %.lr.ph ], [ %i.ael, %bb.el ]
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  %.val105 = load ptr, ptr %i.cm, align 8, !tbaa !54
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %.val105, i64 %indvars.iv ; 4 uses
  %.val104 = load i64, ptr %i.cn, align 4         ; 6 uses
  %i.co = and i64 %.val104, 2684354559
  %narrow.i.not = icmp eq i64 %i.co, 2684354559
  br i1 %narrow.i.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.bk)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val123, i64 %indvars.iv
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !57
  br label %bb.el

bb.i:                                             ; preds = %bb.g
  %i.cr = and i64 %.val104, 2147483648
  %.not.i146 = icmp eq i64 %i.cr, 0               ; 2 uses
  %i.cs = and i64 %.val104, 536870911
  %i.ct = icmp eq i64 %i.cs, 536870911
  %narrow.i147.not = or i1 %.not.i146, %i.ct
  %i.cu = trunc i64 %.val104 to i32               ; 3 uses
  br i1 %narrow.i147.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cv = and i64 %.val104, 536870911
  %i.cw = sub nsw i64 %indvars.iv, %i.cv
  %sext = shl i64 %i.cw, 32
  %i.cx = ashr exact i64 %sext, 30
  %i.cy = getelementptr inbounds i8, ptr %.val103, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !57
  %i.da = lshr i32 %i.cu, 29
  %i.db = and i32 %i.da, 1
  %i.dc = xor i32 %i.cz, %i.db
  %i.dd = call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.bk, i32 noundef %i.dc) ; 0 uses
  br label %bb.el

bb.k:                                             ; preds = %bb.i
  %i.de = and i32 %i.cu, 536870911                ; 3 uses
  %i.df = lshr i64 %.val104, 32
  %i.dg = trunc nuw i64 %i.df to i32
  %i.dh = and i32 %i.dg, 536870911
  %i.di = icmp eq i32 %i.de, %i.dh
  %.not.i148 = icmp ne i32 %i.de, 536870911
  %or.cond.not.i.not180.not286 = and i1 %.not.i148, %i.di
  %narrow.i149.not.not = and i1 %or.cond.not.i.not180.not286, %.not.i146
  br i1 %narrow.i149.not.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dj = trunc nuw nsw i64 %indvars.iv to i32
  %i.dk = sub nsw i32 %i.dj, %i.de
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.val102, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !57 ; 2 uses
  %i.do = lshr i32 %i.cu, 29
  %i.dp = xor i32 %i.dn, %i.do
  %i.dq = call fastcc ptr @Gia_ManAppendObj(ptr noundef nonnull %i.bk) ; 3 uses
  %.val11.i = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = ptrtoint ptr %.val11.i to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = sdiv exact i64 %i.dt, 12
  %i.dv = trunc i64 %i.du to i32
  %i.dw = lshr i32 %i.dn, 1
  %i.dx = sub i32 %i.dv, %i.dw
  %i.dy = load i64, ptr %i.dq, align 4
  %i.dz = and i32 %i.dx, 536870911
  %i.ea = zext nneg i32 %i.dz to i64              ; 2 uses
  %i.eb = shl nuw nsw i64 %i.ea, 32
  %i.ec = and i64 %i.dy, -4611686015206162432
  %i.ed = or disjoint i64 %i.eb, %i.ec
  %i.ee = and i32 %i.dp, 1                        ; 2 uses
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 61
  %i.eh = or disjoint i64 %i.ed, %i.eg
  %i.ei = shl nuw nsw i32 %i.ee, 29
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = or disjoint i64 %i.eh, %i.ej
  %i.el = or disjoint i64 %i.ek, %i.ea
  store i64 %i.el, ptr %i.dq, align 4
  %i.em = load i32, ptr %i.cf, align 8, !tbaa !120
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.cf, align 8, !tbaa !120
  %.val.i = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.eo = ptrtoint ptr %.val.i to i64
  %i.ep = sub i64 %i.dr, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 12
  %i.er = trunc i64 %i.eq to i32
  %i.es = shl i32 %i.er, 1
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val102, i64 %indvars.iv
  store i32 %i.es, ptr %i.et, align 4, !tbaa !57
  br label %bb.el

bb.m:                                             ; preds = %bb.k
  %.val125 = load ptr, ptr %i.cg, align 8, !tbaa !56
  %.val126 = load ptr, ptr %i.ch, align 8, !tbaa !56
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %indvars.iv
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !57
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %.val126, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !57
  %.not99 = icmp eq i32 %i.ey, 0
  br i1 %.not99, label %bb.el, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32
  %i.fa = call fastcc ptr @Lf_ObjCutBest(ptr noundef nonnull %0, i32 noundef %i.ez) ; 12 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 20 ; 5 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = lshr i32 %i.fc, 24                      ; 3 uses
  %trunc = trunc nuw i32 %i.fd to i8
  switch i8 %trunc, label %bb.q [
    i8 0, label %bb.o
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !83
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.val149.i, i64 %indvars.iv
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !57
  br label %bb.el

bb.p:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !57
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.val101, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !57
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !83
  %i.fo = and i32 %i.fn, 1
  %i.fp = xor i32 %i.fo, %i.fl
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.val101, i64 %indvars.iv
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !57
  br label %bb.el

bb.q:                                             ; preds = %bb.n
  %i.fr = load ptr, ptr %i.p, align 8, !tbaa !69  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 156
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !99 ; 2 uses
  %.not.i151 = icmp ne i32 %i.ft, 0
  %i.fu = icmp eq i32 %i.ft, %i.fd
  %or.cond = and i1 %.not.i151, %i.fu
  br i1 %or.cond, label %bb.r, label %bb.cq

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.val173.i = load ptr, ptr %i.ci, align 8, !tbaa !100 ; 4 uses
  %i.fv = getelementptr i8, ptr %i.fa, i64 16
  %.val174.i = load i32, ptr %i.fv, align 8, !tbaa !83
  %i.fw = ashr i32 %.val174.i, 1                  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.val173.i, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !103
  %i.fz = getelementptr inbounds nuw i8, ptr %.val173.i, i64 8
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !104
  %i.gb = ashr i32 %i.fw, %i.ga
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !106 ; 2 uses
  %i.gf = ptrtoaddr ptr %i.ge to i64              ; 4 uses
  %i.gg = load i32, ptr %.val173.i, align 8, !tbaa !107
  %i.gh = getelementptr inbounds nuw i8, ptr %.val173.i, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !108
  %i.gj = and i32 %i.gi, %i.fw
  %i.gk = mul nsw i32 %i.gj, %i.gg
  %i.gl = sext i32 %i.gk to i64                   ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.gl ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.gn = load i32, ptr %i.fr, align 8, !tbaa !77 ; 3 uses
  %i.go = icmp slt i32 %i.gn, 7
  %i.gp = add nsw i32 %i.gn, -6
  %i.gq = shl nuw i32 1, %i.gp
  %i.gr = select i1 %i.go, i32 1, i32 %i.gq       ; 10 uses
  %i.gs = call fastcc i32 @Lf_ManFindCofVar(ptr noundef %i.gm, i32 noundef %i.gr, i32 noundef %i.fd) ; 4 uses
  %i.gt = icmp eq i32 %i.gr, 1                    ; 2 uses
  %i.gu = icmp slt i32 %i.gs, 6                   ; 2 uses
  %i.gv = sext i32 %i.gr to i64
  %.idx.i.i = shl nsw i64 %i.gv, 3
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 %.idx.i.i ; 2 uses
  %i.gx = add nsw i32 %i.gs, -6                   ; 3 uses
  %i.gy = shl nuw i32 1, %i.gx                    ; 6 uses
  %i.gz = icmp slt i32 %i.gr, 1
  %.not.i.i153 = icmp eq i32 %i.gx, 31
  %i.ha = shl i32 2, %i.gx
  %i.hb = sext i32 %i.ha to i64                   ; 4 uses
  %i.hc = sext i32 %i.gy to i64                   ; 7 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.gy, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 6 uses
  %i.hd = icmp sgt i32 %i.gr, 0                   ; 2 uses
  %i.he = shl nuw i32 1, %i.gs
  %i.hf = sext i32 %i.gs to i64                   ; 3 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.hf ; 2 uses
  %i.hh = zext nneg i32 %i.he to i64              ; 10 uses
  %wide.trip.count61.i.i = zext i32 %i.gr to i64  ; 7 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.hf ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %brmerge.i = select i1 %i.gz, i1 true, i1 %.not.i.i153 ; 2 uses
  %i.hk = shl nsw i64 %i.gl, 3                    ; 3 uses
  %i.hl = add i64 %i.hk, %i.gf
  %i.hm = shl nsw i64 %i.hc, 3                    ; 2 uses
  %i.hn = add i64 %i.hm, %i.b
  %i.ho = add i64 %i.hk, %i.gf
  %i.hp = sub i64 %i.b, %i.gf                     ; 2 uses
  %i.hq = shl nsw i64 %i.gl, 3                    ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 2 uses
  %i.hs = shl nsw i64 %i.hc, 3                    ; 2 uses
  %i.ht = add i64 %i.hs, %i.gf
  %i.hu = add i64 %i.ht, %i.hq
  %i.hv = add nsw i64 %wide.trip.count61.i.i, -1  ; 2 uses
  %min.iters.check352 = icmp slt i32 %i.gy, 8
  %diff.check354.a = icmp ult i64 %i.hs, 32
  %i.hw = sub i64 %i.hu, %i.b
  %diff.check355 = icmp ugt i64 %i.hw, -32
  %conflict.rdx356 = or i1 %diff.check354.a, %diff.check355
  %i.hx = add i64 %i.hr, -1
  %diff.check357 = icmp ult i64 %i.hx, 31
  %conflict.rdx358 = or i1 %conflict.rdx356, %diff.check357
  %n.vec360 = and i64 %wide.trip.count.i.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.hy = icmp slt i32 %i.gy, 2
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod390 = trunc i32 %smax.i.i to i1
  %min.iters.check328 = icmp ult i32 %i.gr, 4
  %i.hz = add i64 %i.hr, -1
  %diff.check330 = icmp ult i64 %i.hz, 31
  %or.cond379.a = select i1 %min.iters.check328, i1 true, i1 %diff.check330
  %n.vec332 = and i64 %wide.trip.count61.i.i, 2147483644
  %broadcast.splatinsert335 = insertelement <2 x i64> poison, i64 %i.hh, i64 0
  %broadcast.splat336 = shufflevector <2 x i64> %broadcast.splatinsert335, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %xtraiter391 = and i64 %wide.trip.count61.i.i, 1
  %i.ia = icmp eq i64 %i.hv, 0
  %unroll_iter394 = and i64 %wide.trip.count61.i.i, 2147483646
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  %lcmp.mod393 = trunc i32 %i.gr to i1
  %min.iters.check309 = icmp slt i32 %i.gy, 8
  %diff.check311.a = icmp ult i64 %i.hm, 32
  %i.ib = sub i64 %i.hk, %i.hp
  %diff.check312.a = icmp ugt i64 %i.ib, -32
  %conflict.rdx = or i1 %diff.check311.a, %diff.check312.a
  %i.ic = sub i64 %i.ho, %i.hn
  %diff.check313 = icmp ugt i64 %i.ic, -32
  %conflict.rdx314 = or i1 %conflict.rdx, %diff.check313
  %n.vec316 = and i64 %wide.trip.count.i.i, 2147483644
  %xtraiter396 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.id = icmp slt i32 %i.gy, 4
  %unroll_iter399 = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  %lcmp.mod398 = icmp ne i64 %xtraiter396, 0
  %min.iters.check = icmp ult i32 %i.gr, 4
  %i.ie = sub i64 %i.hl, %i.b
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond380 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %wide.trip.count61.i.i, 2147483644
  %broadcast.splatinsert300 = insertelement <2 x i64> poison, i64 %i.hh, i64 0
  %broadcast.splat301 = shufflevector <2 x i64> %broadcast.splatinsert300, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %xtraiter401 = and i64 %wide.trip.count61.i.i, 1
  %i.if = icmp eq i64 %i.hv, 0
  %unroll_iter405 = and i64 %wide.trip.count61.i.i, 2147483646
  %lcmp.mod403.not = icmp eq i64 %xtraiter401, 0
  %lcmp.mod404 = trunc i32 %i.gr to i1
  br label %.preheader366.i

.preheader366.i:                                  ; preds = %Vec_IntPush.exit211.i, %bb.r
  %.sroa.0.0.i = phi i32 [ undef, %bb.r ], [ %spec.select534.i, %Vec_IntPush.exit211.i ]
  %.sroa.4.0.i = phi i32 [ undef, %bb.r ], [ %spec.select535.i, %Vec_IntPush.exit211.i ]
  %.not147.i = phi i1 [ true, %bb.r ], [ false, %Vec_IntPush.exit211.i ] ; 2 uses
  %.sroa.idx.i = phi i1 [ false, %bb.r ], [ true, %Vec_IntPush.exit211.i ] ; 2 uses
  %i.ig = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.ih = lshr i32 %i.ig, 24                      ; 3 uses
  %.not388.i = icmp eq i32 %i.ih, 0
  br i1 %.not388.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader366.i
  %wide.trip.count.i = zext nneg i32 %i.ih to i64 ; 3 uses
  %min.iters.check370 = icmp ult i32 %i.ig, 134217728
  br i1 %min.iters.check370, label %.lr.ph.i.preheader, label %vector.ph371

vector.ph371:                                     ; preds = %.lr.ph.preheader.i
  %n.vec372 = and i64 %wide.trip.count.i, 248     ; 3 uses
  br label %vector.body373

vector.body373:                                   ; preds = %vector.body373, %vector.ph371
  %index374 = phi i64 [ 0, %vector.ph371 ], [ %index.next375, %vector.body373 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph371 ], [ %vec.ind.next, %vector.body373 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index374 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %vec.ind, ptr %i.ii, align 16, !tbaa !57
  store <4 x i32> %step.add, ptr %i.ij, align 16, !tbaa !57
  %index.next375 = add nuw i64 %index374, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ik = icmp eq i64 %index.next375, %n.vec372
  br i1 %i.ik, label %middle.block376, label %vector.body373, !llvm.loop !278

middle.block376:                                  ; preds = %vector.body373
  %cmp.n377 = icmp eq i64 %n.vec372, %wide.trip.count.i
  br i1 %cmp.n377, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block376
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec372, %middle.block376 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.im = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.im, ptr %i.il, align 4, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !279

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block376, %.preheader366.i
  br i1 %.not147.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  br i1 %i.gt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.in = load i64, ptr %i.gm, align 8, !tbaa !109
  %i.io = load i64, ptr %i.hg, align 8, !tbaa !109
  %i.ip = and i64 %i.io, %i.in                    ; 2 uses
  %i.iq = lshr i64 %i.ip, %i.hh
  %i.ir = or i64 %i.iq, %i.ip
  br label %Abc_TtCofactor1p.exit.sink.split.i

bb.u:                                             ; preds = %bb.s
  br i1 %i.gu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.hd, label %.lr.ph.i.i, label %Abc_TtCofactor1p.exit.i

.lr.ph.i.i:                                       ; preds = %bb.v
  %i.is = load i64, ptr %i.hg, align 8, !tbaa !109 ; 4 uses
  br i1 %or.cond379.a, label %scalar.ph327.preheader, label %vector.ph331

scalar.ph327.preheader:                           ; preds = %.lr.ph.i.i
  br i1 %i.ia, label %scalar.ph327.epil.preheader, label %scalar.ph327

vector.ph331:                                     ; preds = %.lr.ph.i.i
  %broadcast.splatinsert333 = insertelement <2 x i64> poison, i64 %i.is, i64 0
  %broadcast.splat334 = shufflevector <2 x i64> %broadcast.splatinsert333, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph331
  %index338 = phi i64 [ 0, %vector.ph331 ], [ %index.next341, %vector.body337 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %index338 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load339.a = load <2 x i64>, ptr %i.it, align 8, !tbaa !109
  %wide.load340 = load <2 x i64>, ptr %i.iu, align 8, !tbaa !109
  %i.iv = and <2 x i64> %wide.load339.a, %broadcast.splat334 ; 2 uses
  %i.iw = and <2 x i64> %wide.load340, %broadcast.splat334 ; 2 uses
  %i.ix = lshr <2 x i64> %i.iv, %broadcast.splat336
  %i.iy = lshr <2 x i64> %i.iw, %broadcast.splat336
  %i.iz = or <2 x i64> %i.ix, %i.iv
  %i.ja = or <2 x i64> %i.iy, %i.iw
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index338 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <2 x i64> %i.iz, ptr %i.jb, align 16, !tbaa !109
  store <2 x i64> %i.ja, ptr %i.jc, align 16, !tbaa !109
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.jd = icmp eq i64 %index.next341, %n.vec332
  br i1 %i.jd, label %Abc_TtCofactor1p.exit.i, label %vector.body337, !llvm.loop !280

scalar.ph327:                                     ; preds = %scalar.ph327.preheader, %scalar.ph327
  %indvars.iv58.i.i = phi i64 [ %indvars.iv.next59.i.i.1, %scalar.ph327 ], [ 0, %scalar.ph327.preheader ] ; 4 uses
  %niter395 = phi i64 [ %niter395.next.1, %scalar.ph327 ], [ 0, %scalar.ph327.preheader ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv58.i.i
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !109
  %i.jg = and i64 %i.jf, %i.is                    ; 2 uses
  %i.jh = lshr i64 %i.jg, %i.hh
  %i.ji = or i64 %i.jh, %i.jg
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58.i.i
  store i64 %i.ji, ptr %i.jj, align 16, !tbaa !109
  %indvars.iv.next59.i.i = or disjoint i64 %indvars.iv58.i.i, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next59.i.i
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !109
  %i.jm = and i64 %i.jl, %i.is                    ; 2 uses
  %i.jn = lshr i64 %i.jm, %i.hh
  %i.jo = or i64 %i.jn, %i.jm
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next59.i.i
  store i64 %i.jo, ptr %i.jp, align 8, !tbaa !109
  %indvars.iv.next59.i.i.1 = add nuw nsw i64 %indvars.iv58.i.i, 2 ; 2 uses
  %niter395.next.1 = add i64 %niter395, 2         ; 2 uses
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %Abc_TtCofactor1p.exit.i.loopexit385.unr-lcssa, label %scalar.ph327, !llvm.loop !281

bb.w:                                             ; preds = %bb.u
  br i1 %brmerge.i, label %Abc_TtCofactor1p.exit.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.w, %._crit_edge.us.i.i
  %.04453.us.i.i = phi ptr [ %i.ko, %._crit_edge.us.i.i ], [ %i.a, %bb.w ] ; 9 uses
  %.04552.us.i.i = phi ptr [ %i.kn, %._crit_edge.us.i.i ], [ %i.gm, %bb.w ] ; 5 uses
  %brmerge = select i1 %min.iters.check352, i1 true, i1 %conflict.rdx358
  br i1 %brmerge, label %scalar.ph351.preheader, label %vector.body361

scalar.ph351.preheader:                           ; preds = %.preheader.us.i.i
  br i1 %i.hy, label %scalar.ph351.epil.preheader, label %scalar.ph351

vector.body361:                                   ; preds = %.preheader.us.i.i, %vector.body361
  %index362 = phi i64 [ %index.next365, %vector.body361 ], [ 0, %.preheader.us.i.i ] ; 3 uses
  %i.jq = add nuw nsw i64 %index362, %i.hc        ; 2 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %wide.load363.a = load <2 x i64>, ptr %i.jr, align 8, !tbaa !109 ; 2 uses
  %wide.load364 = load <2 x i64>, ptr %i.js, align 8, !tbaa !109 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %index362 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <2 x i64> %wide.load363.a, ptr %i.jt, align 8, !tbaa !109
  store <2 x i64> %wide.load364, ptr %i.ju, align 8, !tbaa !109
  %i.jv = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.jq ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <2 x i64> %wide.load363.a, ptr %i.jv, align 8, !tbaa !109
  store <2 x i64> %wide.load364, ptr %i.jw, align 8, !tbaa !109
  %index.next365 = add nuw i64 %index362, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next365, %n.vec360
  br i1 %i.jx, label %._crit_edge.us.i.i, label %vector.body361, !llvm.loop !282

scalar.ph351:                                     ; preds = %scalar.ph351.preheader, %scalar.ph351
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph351 ], [ 0, %scalar.ph351.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph351 ], [ 0, %scalar.ph351.preheader ]
  %i.jy = add nuw nsw i64 %indvars.iv.i.i, %i.hc  ; 2 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.jy
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !109 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %indvars.iv.i.i
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !109
  %i.kc = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.jy
  store i64 %i.ka, ptr %i.kc, align 8, !tbaa !109
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kd = add nuw nsw i64 %indvars.iv.next.i.i, %i.hc ; 2 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !109 ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %indvars.iv.next.i.i
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !109
  %i.kh = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.kd
  store i64 %i.kf, ptr %i.kh, align 8, !tbaa !109
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.i.loopexit.unr-lcssa, label %scalar.ph351, !llvm.loop !283

._crit_edge.us.i.i.loopexit.unr-lcssa:            ; preds = %scalar.ph351
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %scalar.ph351.epil.preheader

scalar.ph351.epil.preheader:                      ; preds = %._crit_edge.us.i.i.loopexit.unr-lcssa, %scalar.ph351.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %scalar.ph351.preheader ], [ %indvars.iv.next.i.i.1, %._crit_edge.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod390)
  %i.ki = add nuw nsw i64 %indvars.iv.i.i.epil.init, %i.hc ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !109 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.04453.us.i.i, i64 %indvars.iv.i.i.epil.init
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !109
  %i.km = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.ki
  store i64 %i.kk, ptr %i.km, align 8, !tbaa !109
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %vector.body361, %scalar.ph351.epil.preheader, %._crit_edge.us.i.i.loopexit.unr-lcssa
  %i.kn = getelementptr inbounds [8 x i8], ptr %.04552.us.i.i, i64 %i.hb ; 2 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %.04453.us.i.i, i64 %i.hb
  %i.kp = icmp ult ptr %i.kn, %i.gw
  br i1 %i.kp, label %.preheader.us.i.i, label %Abc_TtCofactor1p.exit.i, !llvm.loop !11

bb.x:                                             ; preds = %._crit_edge.i
  br i1 %i.gt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.kq = load i64, ptr %i.gm, align 8, !tbaa !109
  %i.kr = load i64, ptr %i.hi, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@Lf_ManDeriveMappingGia:bb.a
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %index318 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store <2 x i64> %wide.load319.a, ptr %i.lv, align 8, !tbaa !109
  store <2 x i64> %wide.load320, ptr %i.lw, align 8, !tbaa !109
  %i.lx = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index318 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 16
  store <2 x i64> %wide.load319.a, ptr %i.lx, align 8, !tbaa !109
  store <2 x i64> %wide.load320, ptr %i.ly, align 8, !tbaa !109
  %index.next321 = add nuw i64 %index318, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next321, %n.vec316
  br i1 %i.lz, label %._crit_edge.us.i185.i, label %vector.body317, !llvm.loop !286

scalar.ph308:                                     ; preds = %scalar.ph308.preheader, %scalar.ph308
  %indvars.iv.i182.i = phi i64 [ %indvars.iv.next.i183.i.3, %scalar.ph308 ], [ 0, %scalar.ph308.preheader ] ; 7 uses
  %niter400 = phi i64 [ %niter400.next.3, %scalar.ph308 ], [ 0, %scalar.ph308.preheader ]
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %indvars.iv.i182.i
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !109 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %indvars.iv.i182.i
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !109
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i182.i
  store i64 %i.mb, ptr %gep.i.i, align 8, !tbaa !109
  %indvars.iv.next.i183.i = or disjoint i64 %indvars.iv.i182.i, 1 ; 3 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %indvars.iv.next.i183.i
  %i.me = load i64, ptr %i.md, align 8, !tbaa !109 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %indvars.iv.next.i183.i
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !109
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i183.i
  store i64 %i.me, ptr %gep.i.i.1, align 8, !tbaa !109
  %indvars.iv.next.i183.i.1 = or disjoint i64 %indvars.iv.i182.i, 2 ; 3 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %indvars.iv.next.i183.i.1
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !109 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %indvars.iv.next.i183.i.1
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !109
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i183.i.1
  store i64 %i.mh, ptr %gep.i.i.2, align 8, !tbaa !109
  %indvars.iv.next.i183.i.2 = or disjoint i64 %indvars.iv.i182.i, 3 ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %indvars.iv.next.i183.i.2
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !109 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %indvars.iv.next.i183.i.2
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !109
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i183.i.2
  store i64 %i.mk, ptr %gep.i.i.3, align 8, !tbaa !109
  %indvars.iv.next.i183.i.3 = add nuw nsw i64 %indvars.iv.i182.i, 4 ; 2 uses
  %niter400.next.3 = add i64 %niter400, 4         ; 2 uses
  %niter400.ncmp.3 = icmp eq i64 %niter400.next.3, %unroll_iter399
  br i1 %niter400.ncmp.3, label %._crit_edge.us.i185.i.loopexit.unr-lcssa, label %scalar.ph308, !llvm.loop !287

._crit_edge.us.i185.i.loopexit.unr-lcssa:         ; preds = %scalar.ph308
  br i1 %lcmp.mod397.not, label %._crit_edge.us.i185.i, label %scalar.ph308.epil.preheader

scalar.ph308.epil.preheader:                      ; preds = %._crit_edge.us.i185.i.loopexit.unr-lcssa, %scalar.ph308.preheader
  %indvars.iv.i182.i.epil.init = phi i64 [ 0, %scalar.ph308.preheader ], [ %indvars.iv.next.i183.i.3, %._crit_edge.us.i185.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod398)
  br label %scalar.ph308.epil

scalar.ph308.epil:                                ; preds = %scalar.ph308.epil, %scalar.ph308.epil.preheader
  %indvars.iv.i182.i.epil = phi i64 [ %indvars.iv.next.i183.i.epil, %scalar.ph308.epil ], [ %indvars.iv.i182.i.epil.init, %scalar.ph308.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph308.epil ], [ 0, %scalar.ph308.epil.preheader ]
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.04350.us.i.i, i64 %indvars.iv.i182.i.epil
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !109 ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.04251.us.i.i, i64 %indvars.iv.i182.i.epil
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !109
  %gep.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i182.i.epil
  store i64 %i.mn, ptr %gep.i.i.epil, align 8, !tbaa !109
  %indvars.iv.next.i183.i.epil = add nuw nsw i64 %indvars.iv.i182.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter396
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i185.i, label %scalar.ph308.epil, !llvm.loop !288

._crit_edge.us.i185.i:                            ; preds = %vector.body317, %._crit_edge.us.i185.i.loopexit.unr-lcssa, %scalar.ph308.epil
  %i.mp = getelementptr inbounds [8 x i8], ptr %.04350.us.i.i, i64 %i.hb ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %.04251.us.i.i, i64 %i.hb
  %i.mr = icmp ult ptr %i.mp, %i.gw
  br i1 %i.mr, label %.preheader.us.i181.i, label %Abc_TtCofactor1p.exit.i, !llvm.loop !7

Abc_TtCofactor1p.exit.sink.split.i:               ; preds = %bb.y, %bb.t
  %.sink.i = phi i64 [ %i.ku, %bb.y ], [ %i.ir, %bb.t ]
  store i64 %.sink.i, ptr %i.a, align 16, !tbaa !109
  br label %Abc_TtCofactor1p.exit.i

Abc_TtCofactor1p.exit.i.loopexit.unr-lcssa:       ; preds = %scalar.ph
  br i1 %lcmp.mod403.not, label %Abc_TtCofactor1p.exit.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %Abc_TtCofactor1p.exit.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv56.i.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next57.i.i.1, %Abc_TtCofactor1p.exit.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod404)
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv56.i.i.epil.init
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !109
  %i.mu = and i64 %i.mt, %i.kv                    ; 2 uses
  %i.mv = shl i64 %i.mu, %i.hh
  %i.mw = or i64 %i.mv, %i.mu
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv56.i.i.epil.init
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !109
  br label %Abc_TtCofactor1p.exit.i

Abc_TtCofactor1p.exit.i.loopexit385.unr-lcssa:    ; preds = %scalar.ph327
  br i1 %lcmp.mod392.not, label %Abc_TtCofactor1p.exit.i, label %scalar.ph327.epil.preheader

scalar.ph327.epil.preheader:                      ; preds = %Abc_TtCofactor1p.exit.i.loopexit385.unr-lcssa, %scalar.ph327.preheader
  %indvars.iv58.i.i.epil.init = phi i64 [ 0, %scalar.ph327.preheader ], [ %indvars.iv.next59.i.i.1, %Abc_TtCofactor1p.exit.i.loopexit385.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod393)
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv58.i.i.epil.init
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !109
  %i.na = and i64 %i.mz, %i.is                    ; 2 uses
  %i.nb = lshr i64 %i.na, %i.hh
  %i.nc = or i64 %i.nb, %i.na
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58.i.i.epil.init
  store i64 %i.nc, ptr %i.nd, align 8, !tbaa !109
  br label %Abc_TtCofactor1p.exit.i

Abc_TtCofactor1p.exit.i:                          ; preds = %._crit_edge.us.i.i, %vector.body337, %scalar.ph327.epil.preheader, %Abc_TtCofactor1p.exit.i.loopexit385.unr-lcssa, %._crit_edge.us.i185.i, %vector.body, %scalar.ph.epil.preheader, %Abc_TtCofactor1p.exit.i.loopexit.unr-lcssa, %Abc_TtCofactor1p.exit.sink.split.i, %bb.ab, %bb.aa, %bb.w, %bb.v
  %i.ne = call fastcc i32 @Abc_TtMinBase(ptr noundef %i.a, ptr noundef nonnull %i.c, i32 noundef %i.ih, i32 noundef %i.gn) ; 3 uses
  store i32 0, ptr %i.bh, align 4, !tbaa !64
  %i.nf = icmp sgt i32 %i.ne, 0
  br i1 %i.nf, label %.lr.ph369.preheader.i, label %._crit_edge370.i

.lr.ph369.preheader.i:                            ; preds = %Abc_TtCofactor1p.exit.i
  %wide.trip.count397.i = zext nneg i32 %i.ne to i64
  %.val156.i = load ptr, ptr %i.ca, align 8, !tbaa !56
  br label %.lr.ph369.i

.lr.ph369.i:                                      ; preds = %Vec_IntPush.exit.i, %.lr.ph369.preheader.i
  %indvars.iv394.i = phi i64 [ 0, %.lr.ph369.preheader.i ], [ %indvars.iv.next395.i, %Vec_IntPush.exit.i ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv394.i
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !57
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ni
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !57
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds [4 x i8], ptr %.val156.i, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !57
  %i.no = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.np = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.nq = icmp eq i32 %i.no, %i.np
  br i1 %i.nq, label %bb.ac, label %.lr.ph369.Vec_IntPush.exit_crit_edge.i

.lr.ph369.Vec_IntPush.exit_crit_edge.i:           ; preds = %.lr.ph369.i
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !56
  br label %Vec_IntPush.exit.i

bb.ac:                                            ; preds = %.lr.ph369.i
  %i.nr = icmp slt i32 %i.no, 16
  br i1 %i.nr, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ns = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not9.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nt = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ns, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.af:                                            ; preds = %bb.ad
  %i.nu = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.ag:                                            ; preds = %bb.ac
  %i.nv = icmp samesign ult i32 %i.no, 1073741823
  %i.nw = shl nuw nsw i32 %i.no, 1
  %spec.select.i.i = select i1 %i.nv, i32 %i.nw, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.no, %spec.select.i.i
  %.pre419.i = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.ah, label %Vec_IntPush.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i.i = icmp eq ptr %.pre419.i, null
  %i.nx = zext nneg i32 %spec.select.i.i to i64
  %i.ny = shl nuw nsw i64 %i.nx, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.nz = call ptr @realloc(ptr noundef nonnull %.pre419.i, i64 noundef %i.ny) #35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.oa = call noalias ptr @malloc(i64 noundef %i.ny) #33
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.aj, %bb.ai, %bb.af, %bb.ae
  %i.ob = phi ptr [ %i.nu, %bb.af ], [ %i.nt, %bb.ae ], [ %i.nz, %bb.ai ], [ %i.oa, %bb.aj ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i, %bb.ai ], [ %spec.select.i.i, %bb.aj ]
  store ptr %i.ob, ptr %i.bj, align 8, !tbaa !56
  store i32 %spec.select.sink.i.i, ptr %i.bg, align 8, !tbaa !117
  %.pre420.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.ag, %.lr.ph369.Vec_IntPush.exit_crit_edge.i
  %i.oc = phi i32 [ %i.no, %.lr.ph369.Vec_IntPush.exit_crit_edge.i ], [ %i.no, %bb.ag ], [ %.pre420.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.od = phi ptr [ %.pre.i, %.lr.ph369.Vec_IntPush.exit_crit_edge.i ], [ %.pre419.i, %bb.ag ], [ %i.ob, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.oe = add nsw i32 %i.oc, 1
  store i32 %i.oe, ptr %i.bh, align 4, !tbaa !64
  %i.of = sext i32 %i.oc to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.of
  store i32 %i.nn, ptr %i.og, align 4, !tbaa !57
  %indvars.iv.next395.i = add nuw nsw i64 %indvars.iv394.i, 1 ; 2 uses
  %exitcond398.not.i = icmp eq i64 %indvars.iv.next395.i, %wide.trip.count397.i
  br i1 %exitcond398.not.i, label %._crit_edge370.i, label %.lr.ph369.i, !llvm.loop !289

._crit_edge370.i:                                 ; preds = %Vec_IntPush.exit.i, %Abc_TtCofactor1p.exit.i
  %i.oh = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a, i32 noundef %i.ne, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bg, i32 noundef 0) #34 ; 3 uses
  %spec.select534.i = select i1 %.sroa.idx.i, i32 %.sroa.0.0.i, i32 %i.oh ; 2 uses
  %spec.select535.i = select i1 %.sroa.idx.i, i32 %i.oh, i32 %.sroa.4.0.i ; 2 uses
  %i.oi = ashr i32 %i.oh, 1                       ; 7 uses
  %.val168.i = load i32, ptr %i.au, align 4, !tbaa !64 ; 8 uses
  %i.oj = add nsw i32 %i.oi, 1                    ; 4 uses
  %i.ok = load i32, ptr %i.ah, align 4, !tbaa !64 ; 3 uses
  %.not.i.not.i.i = icmp slt i32 %i.oi, %i.ok
  br i1 %.not.i.not.i.i, label %Vec_IntSetEntry.exit.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge370.i
  %i.ol = load i32, ptr %i.af, align 8, !tbaa !117 ; 4 uses
  %i.om = shl nsw i32 %i.ol, 1                    ; 2 uses
  %.not.i187.i = icmp slt i32 %i.oi, %i.om
  %.not.i.i.not.i.i = icmp sgt i32 %i.ol, %i.oi   ; 2 uses
  br i1 %.not.i187.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %.not.i.i.not.i.i, label %._crit_edge.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.on = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.on, null
  %i.oo = sext i32 %i.oj to i64
  %i.op = shl nsw i64 %i.oo, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.oq = call ptr @realloc(ptr noundef nonnull %i.on, i64 noundef %i.op) #35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.or = call noalias ptr @malloc(i64 noundef %i.op) #33
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.ap:                                            ; preds = %bb.ak
  br i1 %.not.i.i.not.i.i, label %._crit_edge.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.os = icmp slt i32 %i.ol, 1073741823
  %spec.select.i.i.i = select i1 %i.os, i32 %i.om, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ol, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.ar, label %._crit_edge.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ot = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.ot, null
  %i.ou = sext i32 %spec.select.i.i.i to i64
  %i.ov = shl nuw nsw i64 %i.ou, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ow = call ptr @realloc(ptr noundef nonnull %i.ot, i64 noundef %i.ov) #35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.ox = call noalias ptr @malloc(i64 noundef %i.ov) #33
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.at, %bb.as, %bb.ao, %bb.an
  %storemerge524.i = phi ptr [ %i.or, %bb.ao ], [ %i.oq, %bb.an ], [ %i.ow, %bb.as ], [ %i.ox, %bb.at ]
  %spec.select.sink.i.i.i = phi i32 [ %i.oj, %bb.ao ], [ %i.oj, %bb.an ], [ %spec.select.i.i.i, %bb.as ], [ %spec.select.i.i.i, %bb.at ]
  store ptr %storemerge524.i, ptr %i.cj, align 8, !tbaa !56
  store i32 %spec.select.sink.i.i.i, ptr %i.af, align 8, !tbaa !117
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.aq, %bb.ap, %bb.al
  %i.oy = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.oz = sext i32 %i.ok to i64
  %i.pa = shl nsw i64 %i.oz, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.oy, i64 %i.pa
  %i.pb = sub i32 %i.oi, %i.ok
  %i.pc = zext i32 %i.pb to i64
  %i.pd = shl nuw nsw i64 %i.pc, 2
  %i.pe = add nuw nsw i64 %i.pd, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.pe, i1 false), !tbaa !57
  store i32 %i.oj, ptr %i.ah, align 4, !tbaa !64
  br label %Vec_IntSetEntry.exit.i

Vec_IntSetEntry.exit.i:                           ; preds = %._crit_edge.i.i.i, %._crit_edge370.i
  %.val.i.i = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.pf = sext i32 %i.oi to i64
  %i.pg = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.pf
  store i32 %.val168.i, ptr %i.pg, align 4, !tbaa !57
  %.val167.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.ph = load i32, ptr %i.as, align 8, !tbaa !117
  %i.pi = icmp eq i32 %.val168.i, %i.ph
  br i1 %i.pi, label %bb.au, label %Vec_IntSetEntry.exit.Vec_IntPush.exit195_crit_edge.i

Vec_IntSetEntry.exit.Vec_IntPush.exit195_crit_edge.i: ; preds = %Vec_IntSetEntry.exit.i
  %.pre421.i = load ptr, ptr %i.ck, align 8, !tbaa !56
  br label %Vec_IntPush.exit195.i

bb.au:                                            ; preds = %Vec_IntSetEntry.exit.i
  %i.pj = icmp slt i32 %.val168.i, 16
  br i1 %i.pj, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.pk = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i193.i = icmp eq ptr %i.pk, null
  br i1 %.not9.i.i193.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.pk, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i191.i

bb.ax:                                            ; preds = %bb.av
  %i.pm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i191.i

bb.ay:                                            ; preds = %bb.au
  %i.pn = icmp samesign ult i32 %.val168.i, 1073741823
  %i.po = shl nuw nsw i32 %.val168.i, 1
  %spec.select.i188.i = select i1 %i.pn, i32 %i.po, i32 2147483647 ; 4 uses
  %.not.i9.i189.i = icmp samesign ult i32 %.val168.i, %spec.select.i188.i
  %.pre422.i = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 3 uses
  br i1 %.not.i9.i189.i, label %bb.az, label %Vec_IntPush.exit195.i

bb.az:                                            ; preds = %bb.ay
  %.not9.i10.i190.i = icmp eq ptr %.pre422.i, null
  %i.pp = zext nneg i32 %spec.select.i188.i to i64
  %i.pq = shl nuw nsw i64 %i.pp, 2                ; 2 uses
  br i1 %.not9.i10.i190.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.pr = call ptr @realloc(ptr noundef nonnull %.pre422.i, i64 noundef %i.pq) #35
  br label %Vec_IntGrow.exit11.sink.split.i191.i

bb.bb:                                            ; preds = %bb.az
  %i.ps = call noalias ptr @malloc(i64 noundef %i.pq) #33
  br label %Vec_IntGrow.exit11.sink.split.i191.i

Vec_IntGrow.exit11.sink.split.i191.i:             ; preds = %bb.bb, %bb.ba, %bb.ax, %bb.aw
  %i.pt = phi ptr [ %i.pm, %bb.ax ], [ %i.pl, %bb.aw ], [ %i.pr, %bb.ba ], [ %i.ps, %bb.bb ] ; 2 uses
  %spec.select.sink.i192.i = phi i32 [ 16, %bb.ax ], [ 16, %bb.aw ], [ %spec.select.i188.i, %bb.ba ], [ %spec.select.i188.i, %bb.bb ]
  store ptr %i.pt, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i192.i, ptr %i.as, align 8, !tbaa !117
  br label %Vec_IntPush.exit195.i

Vec_IntPush.exit195.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i191.i, %bb.ay, %Vec_IntSetEntry.exit.Vec_IntPush.exit195_crit_edge.i
  %i.pu = phi ptr [ %.pre421.i, %Vec_IntSetEntry.exit.Vec_IntPush.exit195_crit_edge.i ], [ %.pre422.i, %bb.ay ], [ %i.pt, %Vec_IntGrow.exit11.sink.split.i191.i ] ; 3 uses
  %i.pv = add nsw i32 %.val168.i, 1
  store i32 %i.pv, ptr %i.au, align 4, !tbaa !64
  %i.pw = sext i32 %.val168.i to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pu, i64 %i.pw
  store i32 %.val167.i, ptr %i.px, align 4, !tbaa !57
  %.val166371.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.py = icmp sgt i32 %.val166371.i, 0
  br i1 %i.py, label %.lr.ph373.i, label %.critedge.i

.lr.ph373.i:                                      ; preds = %Vec_IntPush.exit195.i, %Vec_IntPush.exit203.i
  %i.pz = phi ptr [ %i.qn, %Vec_IntPush.exit203.i ], [ %i.pu, %Vec_IntPush.exit195.i ] ; 3 uses
  %indvars.iv399.i = phi i64 [ %indvars.iv.next400.i, %Vec_IntPush.exit203.i ], [ 0, %Vec_IntPush.exit195.i ] ; 2 uses
  %.val155.i = load ptr, ptr %i.bj, align 8, !tbaa !56
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.val155.i, i64 %indvars.iv399.i
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !57
  %i.qc = ashr i32 %i.qb, 1
  %i.qd = load i32, ptr %i.au, align 4, !tbaa !64 ; 7 uses
  %i.qe = load i32, ptr %i.as, align 8, !tbaa !117
  %i.qf = icmp eq i32 %i.qd, %i.qe
  br i1 %i.qf, label %bb.bc, label %Vec_IntPush.exit203.i

bb.bc:                                            ; preds = %.lr.ph373.i
  %i.qg = icmp slt i32 %i.qd, 16
  br i1 %i.qg, label %Vec_IntGrow.exit11.sink.split.i199.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qh = icmp samesign ult i32 %i.qd, 1073741823
  %i.qi = shl nuw nsw i32 %i.qd, 1
  %spec.select.i196.i = select i1 %i.qh, i32 %i.qi, i32 2147483647 ; 3 uses
  %.not.i9.i197.i = icmp samesign ult i32 %i.qd, %spec.select.i196.i
  br i1 %.not.i9.i197.i, label %bb.be, label %Vec_IntPush.exit203.i

bb.be:                                            ; preds = %bb.bd
  %i.qj = zext nneg i32 %spec.select.i196.i to i64
  %i.qk = shl nuw nsw i64 %i.qj, 2
  br label %Vec_IntGrow.exit11.sink.split.i199.i

Vec_IntGrow.exit11.sink.split.i199.i:             ; preds = %bb.be, %bb.bc
  %.sink534.i = phi i64 [ %i.qk, %bb.be ], [ 64, %bb.bc ]
  %spec.select.sink.i200.i = phi i32 [ %spec.select.i196.i, %bb.be ], [ 16, %bb.bc ]
  %i.ql = call ptr @realloc(ptr noundef nonnull %i.pz, i64 noundef %.sink534.i) #35 ; 2 uses
  store ptr %i.ql, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i200.i, ptr %i.as, align 8, !tbaa !117
  %.pre424.i = load i32, ptr %i.au, align 4, !tbaa !64
  br label %Vec_IntPush.exit203.i

Vec_IntPush.exit203.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i199.i, %bb.bd, %.lr.ph373.i
  %i.qm = phi i32 [ %i.qd, %.lr.ph373.i ], [ %i.qd, %bb.bd ], [ %.pre424.i, %Vec_IntGrow.exit11.sink.split.i199.i ] ; 2 uses
  %i.qn = phi ptr [ %i.pz, %.lr.ph373.i ], [ %i.pz, %bb.bd ], [ %i.ql, %Vec_IntGrow.exit11.sink.split.i199.i ] ; 3 uses
  %i.qo = add nsw i32 %i.qm, 1
  store i32 %i.qo, ptr %i.au, align 4, !tbaa !64
  %i.qp = sext i32 %i.qm to i64
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.qp
  store i32 %i.qc, ptr %i.qq, align 4, !tbaa !57
  %indvars.iv.next400.i = add nuw nsw i64 %indvars.iv399.i, 1 ; 2 uses
  %.val166.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.qr = sext i32 %.val166.i to i64
  %i.qs = icmp slt i64 %indvars.iv.next400.i, %i.qr
  br i1 %i.qs, label %.lr.ph373.i, label %.critedge.i, !llvm.loop !290

.critedge.i:                                      ; preds = %Vec_IntPush.exit203.i, %Vec_IntPush.exit195.i
  %i.qt = phi ptr [ %i.pu, %Vec_IntPush.exit195.i ], [ %i.qn, %Vec_IntPush.exit203.i ] ; 3 uses
  %i.qu = load i32, ptr %i.au, align 4, !tbaa !64 ; 7 uses
  %i.qv = load i32, ptr %i.as, align 8, !tbaa !117
  %i.qw = icmp eq i32 %i.qu, %i.qv
  br i1 %i.qw, label %bb.bf, label %Vec_IntPush.exit211.i

bb.bf:                                            ; preds = %.critedge.i
  %i.qx = icmp slt i32 %i.qu, 16
  br i1 %i.qx, label %Vec_IntGrow.exit11.sink.split.i207.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qy = icmp samesign ult i32 %i.qu, 1073741823
  %i.qz = shl nuw nsw i32 %i.qu, 1
  %spec.select.i204.i = select i1 %i.qy, i32 %i.qz, i32 2147483647 ; 3 uses
  %.not.i9.i205.i = icmp samesign ult i32 %i.qu, %spec.select.i204.i
  br i1 %.not.i9.i205.i, label %bb.bh, label %Vec_IntPush.exit211.i

bb.bh:                                            ; preds = %bb.bg
  %i.ra = zext nneg i32 %spec.select.i204.i to i64
  %i.rb = shl nuw nsw i64 %i.ra, 2
  br label %Vec_IntGrow.exit11.sink.split.i207.i

Vec_IntGrow.exit11.sink.split.i207.i:             ; preds = %bb.bh, %bb.bf
  %.sink535.i = phi i64 [ %i.rb, %bb.bh ], [ 64, %bb.bf ]
  %spec.select.sink.i208.i = phi i32 [ %spec.select.i204.i, %bb.bh ], [ 16, %bb.bf ]
  %i.rc = call ptr @realloc(ptr noundef nonnull %i.qt, i64 noundef %.sink535.i) #35 ; 2 uses
  store ptr %i.rc, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i208.i, ptr %i.as, align 8, !tbaa !117
  %.pre425.i = load i32, ptr %i.au, align 4, !tbaa !64
  br label %Vec_IntPush.exit211.i

Vec_IntPush.exit211.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i207.i, %bb.bg, %.critedge.i
  %i.rd = phi i32 [ %i.qu, %.critedge.i ], [ %i.qu, %bb.bg ], [ %.pre425.i, %Vec_IntGrow.exit11.sink.split.i207.i ] ; 2 uses
  %i.re = phi ptr [ %i.qt, %.critedge.i ], [ %i.qt, %bb.bg ], [ %i.rc, %Vec_IntGrow.exit11.sink.split.i207.i ]
  %i.rf = add nsw i32 %i.rd, 1
  store i32 %i.rf, ptr %i.au, align 4, !tbaa !64
  %i.rg = sext i32 %i.rd to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.rg
  store i32 %i.oi, ptr %i.rh, align 4, !tbaa !57
  br i1 %.not147.i, label %.preheader366.i, label %bb.bi, !llvm.loop !291

bb.bi:                                            ; preds = %Vec_IntPush.exit211.i
  store i64 -3834029160418063670, ptr %i.a, align 16, !tbaa !109
  store i32 0, ptr %i.bh, align 4, !tbaa !64
  %i.ri = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.rj = icmp eq i32 %i.ri, 0
  %.pre426.i = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 3 uses
  br i1 %i.rj, label %bb.bj, label %Vec_IntPush.exit219.i

bb.bj:                                            ; preds = %bb.bi
  %.not9.i.i217.i = icmp eq ptr %.pre426.i, null
  br i1 %.not9.i.i217.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre426.i, i64 noundef 64) #35
  %.pre427.pre.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntGrow.exit11.sink.split.i215.i

bb.bl:                                            ; preds = %bb.bj
  %i.rl = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i215.i

Vec_IntGrow.exit11.sink.split.i215.i:             ; preds = %bb.bl, %bb.bk
  %.pre427.i = phi i32 [ %.pre427.pre.i, %bb.bk ], [ 0, %bb.bl ]
  %i.rm = phi ptr [ %i.rk, %bb.bk ], [ %i.rl, %bb.bl ] ; 2 uses
  store ptr %i.rm, ptr %i.bj, align 8, !tbaa !56
  store i32 16, ptr %i.bg, align 8, !tbaa !117
  br label %Vec_IntPush.exit219.i

Vec_IntPush.exit219.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i215.i, %bb.bi
  %i.rn = phi i32 [ 0, %bb.bi ], [ %.pre427.i, %Vec_IntGrow.exit11.sink.split.i215.i ] ; 2 uses
  %i.ro = phi ptr [ %.pre426.i, %bb.bi ], [ %i.rm, %Vec_IntGrow.exit11.sink.split.i215.i ] ; 4 uses
  %i.rp = add nsw i32 %i.rn, 1
  store i32 %i.rp, ptr %i.bh, align 4, !tbaa !64
  %i.rq = sext i32 %i.rn to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.rq
  store i32 %spec.select534.i, ptr %i.rr, align 4, !tbaa !57
  %i.rs = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.rt = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.ru = icmp eq i32 %i.rs, %i.rt
  br i1 %i.ru, label %bb.bm, label %Vec_IntPush.exit227.i

bb.bm:                                            ; preds = %Vec_IntPush.exit219.i
  %i.rv = icmp slt i32 %i.rs, 16
  br i1 %i.rv, label %Vec_IntGrow.exit11.sink.split.i223.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rw = icmp samesign ult i32 %i.rs, 1073741823
  %i.rx = shl nuw nsw i32 %i.rs, 1
  %spec.select.i220.i = select i1 %i.rw, i32 %i.rx, i32 2147483647 ; 3 uses
  %.not.i9.i221.i = icmp samesign ult i32 %i.rs, %spec.select.i220.i
  br i1 %.not.i9.i221.i, label %bb.bo, label %Vec_IntPush.exit227.i

bb.bo:                                            ; preds = %bb.bn
  %i.ry = zext nneg i32 %spec.select.i220.i to i64
  %i.rz = shl nuw nsw i64 %i.ry, 2
  br label %Vec_IntGrow.exit11.sink.split.i223.i

Vec_IntGrow.exit11.sink.split.i223.i:             ; preds = %bb.bo, %bb.bm
  %.sink536.i = phi i64 [ %i.rz, %bb.bo ], [ 64, %bb.bm ]
  %spec.select.sink.i224.i = phi i32 [ %spec.select.i220.i, %bb.bo ], [ 16, %bb.bm ]
  %i.sa = call ptr @realloc(ptr noundef nonnull %i.ro, i64 noundef %.sink536.i) #35 ; 2 uses
  store ptr %i.sa, ptr %i.bj, align 8, !tbaa !56
  store i32 %spec.select.sink.i224.i, ptr %i.bg, align 8, !tbaa !117
  %.pre428.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntPush.exit227.i

Vec_IntPush.exit227.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i223.i, %bb.bn, %Vec_IntPush.exit219.i
  %i.sb = phi i32 [ %i.rs, %Vec_IntPush.exit219.i ], [ %i.rs, %bb.bn ], [ %.pre428.i, %Vec_IntGrow.exit11.sink.split.i223.i ] ; 2 uses
  %i.sc = phi ptr [ %i.ro, %Vec_IntPush.exit219.i ], [ %i.ro, %bb.bn ], [ %i.sa, %Vec_IntGrow.exit11.sink.split.i223.i ] ; 4 uses
  %i.sd = add nsw i32 %i.sb, 1
  store i32 %i.sd, ptr %i.bh, align 4, !tbaa !64
  %i.se = sext i32 %i.sb to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.sc, i64 %i.se
  store i32 %spec.select535.i, ptr %i.sf, align 4, !tbaa !57
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !57
  %.val154.i = load ptr, ptr %i.ca, align 8, !tbaa !56
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [4 x i8], ptr %.val154.i, i64 %i.si
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !57
  %i.sl = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.sm = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.sn = icmp eq i32 %i.sl, %i.sm
  br i1 %i.sn, label %bb.bp, label %Vec_IntPush.exit235.i

bb.bp:                                            ; preds = %Vec_IntPush.exit227.i
  %i.so = icmp slt i32 %i.sl, 16
  br i1 %i.so, label %Vec_IntGrow.exit11.sink.split.i231.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.sp = icmp samesign ult i32 %i.sl, 1073741823
  %i.sq = shl nuw nsw i32 %i.sl, 1
  %spec.select.i228.i = select i1 %i.sp, i32 %i.sq, i32 2147483647 ; 3 uses
  %.not.i9.i229.i = icmp samesign ult i32 %i.sl, %spec.select.i228.i
  br i1 %.not.i9.i229.i, label %bb.br, label %Vec_IntPush.exit235.i

bb.br:                                            ; preds = %bb.bq
  %i.sr = zext nneg i32 %spec.select.i228.i to i64
  %i.ss = shl nuw nsw i64 %i.sr, 2
  br label %Vec_IntGrow.exit11.sink.split.i231.i

Vec_IntGrow.exit11.sink.split.i231.i:             ; preds = %bb.br, %bb.bp
  %.sink537.i = phi i64 [ %i.ss, %bb.br ], [ 64, %bb.bp ]
  %spec.select.sink.i232.i = phi i32 [ %spec.select.i228.i, %bb.br ], [ 16, %bb.bp ]
  %i.st = call ptr @realloc(ptr noundef nonnull %i.sc, i64 noundef %.sink537.i) #35 ; 2 uses
  store ptr %i.st, ptr %i.bj, align 8, !tbaa !56
  store i32 %spec.select.sink.i232.i, ptr %i.bg, align 8, !tbaa !117
  %.pre429.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntPush.exit235.i

Vec_IntPush.exit235.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i231.i, %bb.bq, %Vec_IntPush.exit227.i
  %i.su = phi i32 [ %i.sl, %Vec_IntPush.exit227.i ], [ %i.sl, %bb.bq ], [ %.pre429.i, %Vec_IntGrow.exit11.sink.split.i231.i ] ; 2 uses
  %i.sv = phi ptr [ %i.sc, %Vec_IntPush.exit227.i ], [ %i.sc, %bb.bq ], [ %i.st, %Vec_IntGrow.exit11.sink.split.i231.i ]
  %i.sw = add nsw i32 %i.su, 1
  store i32 %i.sw, ptr %i.bh, align 4, !tbaa !64
  %i.sx = sext i32 %i.su to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.sx
  store i32 %i.sk, ptr %i.sy, align 4, !tbaa !57
  %.val165.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.sz = call i32 @Kit_TruthToGia(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.a, i32 noundef %.val165.i, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bg, i32 noundef 0) #34 ; 2 uses
  %i.ta = ashr i32 %i.sz, 1                       ; 7 uses
  %.val164.i = load i32, ptr %i.au, align 4, !tbaa !64 ; 8 uses
  %i.tb = add nsw i32 %i.ta, 1                    ; 4 uses
  %i.tc = load i32, ptr %i.ah, align 4, !tbaa !64 ; 3 uses
  %.not.i.not.i236.i = icmp slt i32 %i.ta, %i.tc
  br i1 %.not.i.not.i236.i, label %Vec_IntSetEntry.exit252.i, label %bb.bs

bb.bs:                                            ; preds = %Vec_IntPush.exit235.i
  %i.td = load i32, ptr %i.af, align 8, !tbaa !117 ; 4 uses
  %i.te = shl nsw i32 %i.td, 1                    ; 2 uses
  %.not.i237.i = icmp slt i32 %i.ta, %i.te
  %.not.i.i.not.i238.i = icmp sgt i32 %i.td, %i.ta ; 2 uses
  br i1 %.not.i237.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %.not.i.i.not.i238.i, label %._crit_edge.i.i247.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.tf = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i.i239.i = icmp eq ptr %i.tf, null
  %i.tg = sext i32 %i.tb to i64
  %i.th = shl nsw i64 %i.tg, 2                    ; 2 uses
  br i1 %.not9.i.i.i239.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ti = call ptr @realloc(ptr noundef nonnull %i.tf, i64 noundef %i.th) #35
  br label %Vec_IntGrow.exit.sink.split.i.i240.i

bb.bw:                                            ; preds = %bb.bu
  %i.tj = call noalias ptr @malloc(i64 noundef %i.th) #33
  br label %Vec_IntGrow.exit.sink.split.i.i240.i

bb.bx:                                            ; preds = %bb.bs
  br i1 %.not.i.i.not.i238.i, label %._crit_edge.i.i247.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.tk = icmp slt i32 %i.td, 1073741823
  %spec.select.i.i249.i = select i1 %i.tk, i32 %i.te, i32 2147483647 ; 4 uses
  %.not.i22.i.i250.i = icmp slt i32 %i.td, %spec.select.i.i249.i
  br i1 %.not.i22.i.i250.i, label %bb.bz, label %._crit_edge.i.i247.i

bb.bz:                                            ; preds = %bb.by
  %i.tl = load ptr, ptr %i.cj, align 8, !tbaa !56 ; 2 uses
  %.not9.i23.i.i251.i = icmp eq ptr %i.tl, null
  %i.tm = sext i32 %spec.select.i.i249.i to i64
  %i.tn = shl nuw nsw i64 %i.tm, 2                ; 2 uses
  br i1 %.not9.i23.i.i251.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.to = call ptr @realloc(ptr noundef nonnull %i.tl, i64 noundef %i.tn) #35
  br label %Vec_IntGrow.exit.sink.split.i.i240.i

bb.cb:                                            ; preds = %bb.bz
  %i.tp = call noalias ptr @malloc(i64 noundef %i.tn) #33
  br label %Vec_IntGrow.exit.sink.split.i.i240.i

Vec_IntGrow.exit.sink.split.i.i240.i:             ; preds = %bb.cb, %bb.ca, %bb.bw, %bb.bv
  %storemerge526.i = phi ptr [ %i.tj, %bb.bw ], [ %i.ti, %bb.bv ], [ %i.to, %bb.ca ], [ %i.tp, %bb.cb ]
  %spec.select.sink.i.i241.i = phi i32 [ %i.tb, %bb.bw ], [ %i.tb, %bb.bv ], [ %spec.select.i.i249.i, %bb.ca ], [ %spec.select.i.i249.i, %bb.cb ]
  store ptr %storemerge526.i, ptr %i.cj, align 8, !tbaa !56
  store i32 %spec.select.sink.i.i241.i, ptr %i.af, align 8, !tbaa !117
  br label %._crit_edge.i.i247.i

._crit_edge.i.i247.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i240.i, %bb.by, %bb.bx, %bb.bt
  %i.tq = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.tr = sext i32 %i.tc to i64
  %i.ts = shl nsw i64 %i.tr, 2
  %scevgep.i.i246.i = getelementptr i8, ptr %i.tq, i64 %i.ts
  %i.tt = sub i32 %i.ta, %i.tc
  %i.tu = zext i32 %i.tt to i64
  %i.tv = shl nuw nsw i64 %i.tu, 2
  %i.tw = add nuw nsw i64 %i.tv, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i246.i, i8 0, i64 %i.tw, i1 false), !tbaa !57
  store i32 %i.tb, ptr %i.ah, align 4, !tbaa !64
  br label %Vec_IntSetEntry.exit252.i

Vec_IntSetEntry.exit252.i:                        ; preds = %._crit_edge.i.i247.i, %Vec_IntPush.exit235.i
  %.val.i248.i = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.tx = sext i32 %i.ta to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %.val.i248.i, i64 %i.tx
  store i32 %.val164.i, ptr %i.ty, align 4, !tbaa !57
  %.val163.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.tz = load i32, ptr %i.as, align 8, !tbaa !117
  %i.ua = icmp eq i32 %.val164.i, %i.tz
  br i1 %i.ua, label %bb.cc, label %Vec_IntSetEntry.exit252.Vec_IntPush.exit260_crit_edge.i

Vec_IntSetEntry.exit252.Vec_IntPush.exit260_crit_edge.i: ; preds = %Vec_IntSetEntry.exit252.i
  %.pre430.i = load ptr, ptr %i.ck, align 8, !tbaa !56
  br label %Vec_IntPush.exit260.i

bb.cc:                                            ; preds = %Vec_IntSetEntry.exit252.i
  %i.ub = icmp slt i32 %.val164.i, 16
  br i1 %i.ub, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.uc = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i258.i = icmp eq ptr %i.uc, null
  br i1 %.not9.i.i258.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ud = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uc, i64 noundef 64) #35
  br label %Vec_IntGrow.exit11.sink.split.i256.i

bb.cf:                                            ; preds = %bb.cd
  %i.ue = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i256.i

bb.cg:                                            ; preds = %bb.cc
  %i.uf = icmp samesign ult i32 %.val164.i, 1073741823
  %i.ug = shl nuw nsw i32 %.val164.i, 1
  %spec.select.i253.i = select i1 %i.uf, i32 %i.ug, i32 2147483647 ; 4 uses
  %.not.i9.i254.i = icmp samesign ult i32 %.val164.i, %spec.select.i253.i
  %.pre431.i = load ptr, ptr %i.ck, align 8, !tbaa !56 ; 3 uses
  br i1 %.not.i9.i254.i, label %bb.ch, label %Vec_IntPush.exit260.i

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i255.i = icmp eq ptr %.pre431.i, null
  %i.uh = zext nneg i32 %spec.select.i253.i to i64
  %i.ui = shl nuw nsw i64 %i.uh, 2                ; 2 uses
  br i1 %.not9.i10.i255.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.uj = call ptr @realloc(ptr noundef nonnull %.pre431.i, i64 noundef %i.ui) #35
  br label %Vec_IntGrow.exit11.sink.split.i256.i

bb.cj:                                            ; preds = %bb.ch
  %i.uk = call noalias ptr @malloc(i64 noundef %i.ui) #33
  br label %Vec_IntGrow.exit11.sink.split.i256.i

Vec_IntGrow.exit11.sink.split.i256.i:             ; preds = %bb.cj, %bb.ci, %bb.cf, %bb.ce
  %i.ul = phi ptr [ %i.ue, %bb.cf ], [ %i.ud, %bb.ce ], [ %i.uj, %bb.ci ], [ %i.uk, %bb.cj ] ; 2 uses
  %spec.select.sink.i257.i = phi i32 [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i253.i, %bb.ci ], [ %spec.select.i253.i, %bb.cj ]
  store ptr %i.ul, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i257.i, ptr %i.as, align 8, !tbaa !117
  br label %Vec_IntPush.exit260.i

Vec_IntPush.exit260.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i256.i, %bb.cg, %Vec_IntSetEntry.exit252.Vec_IntPush.exit260_crit_edge.i
  %i.um = phi ptr [ %.pre430.i, %Vec_IntSetEntry.exit252.Vec_IntPush.exit260_crit_edge.i ], [ %.pre431.i, %bb.cg ], [ %i.ul, %Vec_IntGrow.exit11.sink.split.i256.i ] ; 3 uses
  %i.un = add nsw i32 %.val164.i, 1
  store i32 %i.un, ptr %i.au, align 4, !tbaa !64
  %i.uo = sext i32 %.val164.i to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo
  store i32 %.val163.i, ptr %i.up, align 4, !tbaa !57
  %.val162375.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.uq = icmp sgt i32 %.val162375.i, 0
  br i1 %i.uq, label %.lr.ph377.i, label %.critedge2.i

.lr.ph377.i:                                      ; preds = %Vec_IntPush.exit260.i, %Vec_IntPush.exit268.i
  %i.ur = phi ptr [ %i.vf, %Vec_IntPush.exit268.i ], [ %i.um, %Vec_IntPush.exit260.i ] ; 3 uses
  %indvars.iv405.i = phi i64 [ %indvars.iv.next406.i, %Vec_IntPush.exit268.i ], [ 0, %Vec_IntPush.exit260.i ] ; 2 uses
  %.val153.i = load ptr, ptr %i.bj, align 8, !tbaa !56
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.val153.i, i64 %indvars.iv405.i
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !57
  %i.uu = ashr i32 %i.ut, 1
  %i.uv = load i32, ptr %i.au, align 4, !tbaa !64 ; 7 uses
  %i.uw = load i32, ptr %i.as, align 8, !tbaa !117
  %i.ux = icmp eq i32 %i.uv, %i.uw
  br i1 %i.ux, label %bb.ck, label %Vec_IntPush.exit268.i

bb.ck:                                            ; preds = %.lr.ph377.i
  %i.uy = icmp slt i32 %i.uv, 16
  br i1 %i.uy, label %Vec_IntGrow.exit11.sink.split.i264.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.uz = icmp samesign ult i32 %i.uv, 1073741823
  %i.va = shl nuw nsw i32 %i.uv, 1
  %spec.select.i261.i = select i1 %i.uz, i32 %i.va, i32 2147483647 ; 3 uses
  %.not.i9.i262.i = icmp samesign ult i32 %i.uv, %spec.select.i261.i
  br i1 %.not.i9.i262.i, label %bb.cm, label %Vec_IntPush.exit268.i

bb.cm:                                            ; preds = %bb.cl
  %i.vb = zext nneg i32 %spec.select.i261.i to i64
  %i.vc = shl nuw nsw i64 %i.vb, 2
  br label %Vec_IntGrow.exit11.sink.split.i264.i

Vec_IntGrow.exit11.sink.split.i264.i:             ; preds = %bb.cm, %bb.ck
  %.sink538.i = phi i64 [ %i.vc, %bb.cm ], [ 64, %bb.ck ]
  %spec.select.sink.i265.i = phi i32 [ %spec.select.i261.i, %bb.cm ], [ 16, %bb.ck ]
  %i.vd = call ptr @realloc(ptr noundef nonnull %i.ur, i64 noundef %.sink538.i) #35 ; 2 uses
  store ptr %i.vd, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i265.i, ptr %i.as, align 8, !tbaa !117
  %.pre433.i = load i32, ptr %i.au, align 4, !tbaa !64
  br label %Vec_IntPush.exit268.i

Vec_IntPush.exit268.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i264.i, %bb.cl, %.lr.ph377.i
  %i.ve = phi i32 [ %i.uv, %.lr.ph377.i ], [ %i.uv, %bb.cl ], [ %.pre433.i, %Vec_IntGrow.exit11.sink.split.i264.i ] ; 2 uses
  %i.vf = phi ptr [ %i.ur, %.lr.ph377.i ], [ %i.ur, %bb.cl ], [ %i.vd, %Vec_IntGrow.exit11.sink.split.i264.i ] ; 3 uses
  %i.vg = add nsw i32 %i.ve, 1
  store i32 %i.vg, ptr %i.au, align 4, !tbaa !64
  %i.vh = sext i32 %i.ve to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vh
  store i32 %i.uu, ptr %i.vi, align 4, !tbaa !57
  %indvars.iv.next406.i = add nuw nsw i64 %indvars.iv405.i, 1 ; 2 uses
  %.val162.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %i.vj = sext i32 %.val162.i to i64
  %i.vk = icmp slt i64 %indvars.iv.next406.i, %i.vj
  br i1 %i.vk, label %.lr.ph377.i, label %.critedge2.i, !llvm.loop !292

.critedge2.i:                                     ; preds = %Vec_IntPush.exit268.i, %Vec_IntPush.exit260.i
  %i.vl = phi ptr [ %i.um, %Vec_IntPush.exit260.i ], [ %i.vf, %Vec_IntPush.exit268.i ] ; 3 uses
  %i.vm = sub nsw i32 0, %i.ta
  %i.vn = load i32, ptr %i.au, align 4, !tbaa !64 ; 7 uses
  %i.vo = load i32, ptr %i.as, align 8, !tbaa !117
  %i.vp = icmp eq i32 %i.vn, %i.vo
  br i1 %i.vp, label %bb.cn, label %Vec_IntPush.exit276.i

bb.cn:                                            ; preds = %.critedge2.i
  %i.vq = icmp slt i32 %i.vn, 16
  br i1 %i.vq, label %Vec_IntGrow.exit11.sink.split.i272.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vr = icmp samesign ult i32 %i.vn, 1073741823
  %i.vs = shl nuw nsw i32 %i.vn, 1
  %spec.select.i269.i = select i1 %i.vr, i32 %i.vs, i32 2147483647 ; 3 uses
  %.not.i9.i270.i = icmp samesign ult i32 %i.vn, %spec.select.i269.i
  br i1 %.not.i9.i270.i, label %bb.cp, label %Vec_IntPush.exit276.i

bb.cp:                                            ; preds = %bb.co
  %i.vt = zext nneg i32 %spec.select.i269.i to i64
  %i.vu = shl nuw nsw i64 %i.vt, 2
  br label %Vec_IntGrow.exit11.sink.split.i272.i

Vec_IntGrow.exit11.sink.split.i272.i:             ; preds = %bb.cp, %bb.cn
  %.sink539.i = phi i64 [ %i.vu, %bb.cp ], [ 64, %bb.cn ]
  %spec.select.sink.i273.i = phi i32 [ %spec.select.i269.i, %bb.cp ], [ 16, %bb.cn ]
  %i.vv = call ptr @realloc(ptr noundef nonnull %i.vl, i64 noundef %.sink539.i) #35 ; 2 uses
  store ptr %i.vv, ptr %i.ck, align 8, !tbaa !56
  store i32 %spec.select.sink.i273.i, ptr %i.as, align 8, !tbaa !117
  %.pre434.i = load i32, ptr %i.au, align 4, !tbaa !64
  br label %Vec_IntPush.exit276.i

Vec_IntPush.exit276.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i272.i, %bb.co, %.critedge2.i
  %i.vw = phi i32 [ %i.vn, %.critedge2.i ], [ %i.vn, %bb.co ], [ %.pre434.i, %Vec_IntGrow.exit11.sink.split.i272.i ] ; 2 uses
  %i.vx = phi ptr [ %i.vl, %.critedge2.i ], [ %i.vl, %bb.co ], [ %i.vv, %Vec_IntGrow.exit11.sink.split.i272.i ]
  %i.vy = add nsw i32 %i.vw, 1
  store i32 %i.vy, ptr %i.au, align 4, !tbaa !64
  %i.vz = sext i32 %i.vw to i64
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.vz
  store i32 %i.vm, ptr %i.wa, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %Lf_ManDerivePart.exit

bb.cq:                                            ; preds = %bb.q
  store i32 0, ptr %i.bh, align 4, !tbaa !64
  %i.wb = load i32, ptr %i.fb, align 4            ; 2 uses
  %i.wc = and i32 %i.wb, 8388608
  %.not145.i = icmp eq i32 %i.wc, 0
  br i1 %.not145.i, label %.preheader361.i, label %bb.cr

.preheader361.i:                                  ; preds = %bb.cq
  %.not389.i = icmp ult i32 %i.wb, 16777216
  br i1 %.not389.i, label %.loopexit362.i, label %.lr.ph379.i

.lr.ph379.i:                                      ; preds = %.preheader361.i
  %i.wd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  br label %bb.dc

bb.cr:                                            ; preds = %bb.cq
  %i.we = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !57
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [4 x i8], ptr %.val149.i, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !57
  %.val169.i = load i64, ptr %i.cn, align 4
  %i.wj = trunc i64 %.val169.i to i32
  %i.wk = lshr i32 %i.wj, 29
  %i.wl = and i32 %i.wk, 1
  %i.wm = xor i32 %i.wl, %i.wi
  %i.wn = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.wo = icmp eq i32 %i.wn, 0
  %i.wp = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 3 uses
  br i1 %i.wo, label %bb.cs, label %Vec_IntPush.exit284.i

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i282.i = icmp eq ptr %i.wp, null
  br i1 %.not9.i.i282.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.wq = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.wp, i64 noundef 64) #35
  %.pre436.pre.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntGrow.exit11.sink.split.i280.i

bb.cu:                                            ; preds = %bb.cs
  %i.wr = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #33
  br label %Vec_IntGrow.exit11.sink.split.i280.i

Vec_IntGrow.exit11.sink.split.i280.i:             ; preds = %bb.cu, %bb.ct
  %.pre436.i = phi i32 [ %.pre436.pre.i, %bb.ct ], [ 0, %bb.cu ]
  %i.ws = phi ptr [ %i.wq, %bb.ct ], [ %i.wr, %bb.cu ] ; 2 uses
  store ptr %i.ws, ptr %i.bj, align 8, !tbaa !56
  store i32 16, ptr %i.bg, align 8, !tbaa !117
  br label %Vec_IntPush.exit284.i

Vec_IntPush.exit284.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i280.i, %bb.cr
  %i.wt = phi i32 [ %.pre436.i, %Vec_IntGrow.exit11.sink.split.i280.i ], [ 0, %bb.cr ] ; 2 uses
  %i.wu = phi ptr [ %i.ws, %Vec_IntGrow.exit11.sink.split.i280.i ], [ %i.wp, %bb.cr ] ; 4 uses
  %i.wv = add nsw i32 %i.wt, 1
  store i32 %i.wv, ptr %i.bh, align 4, !tbaa !64
  %i.ww = sext i32 %i.wt to i64
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %i.ww
  store i32 %i.wm, ptr %i.wx, align 4, !tbaa !57
  %i.wy = getelementptr inbounds nuw i8, ptr %i.fa, i64 28
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !57
  %i.xa = sext i32 %i.wz to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %.val149.i, i64 %i.xa
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !57
  %.val170.i = load i64, ptr %i.cn, align 4
  %i.xd = lshr i64 %.val170.i, 61
  %i.xe = trunc nuw nsw i64 %i.xd to i32
  %i.xf = and i32 %i.xe, 1
  %i.xg = xor i32 %i.xf, %i.xc
  %i.xh = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.xi = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.xj = icmp eq i32 %i.xh, %i.xi
  br i1 %i.xj, label %bb.cv, label %Vec_IntPush.exit292.i

bb.cv:                                            ; preds = %Vec_IntPush.exit284.i
  %i.xk = icmp slt i32 %i.xh, 16
  br i1 %i.xk, label %Vec_IntGrow.exit11.sink.split.i288.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xl = icmp samesign ult i32 %i.xh, 1073741823
  %i.xm = shl nuw nsw i32 %i.xh, 1
  %spec.select.i285.i = select i1 %i.xl, i32 %i.xm, i32 2147483647 ; 3 uses
  %.not.i9.i286.i = icmp samesign ult i32 %i.xh, %spec.select.i285.i
  br i1 %.not.i9.i286.i, label %bb.cx, label %Vec_IntPush.exit292.i

bb.cx:                                            ; preds = %bb.cw
  %i.xn = zext nneg i32 %spec.select.i285.i to i64
  %i.xo = shl nuw nsw i64 %i.xn, 2
  br label %Vec_IntGrow.exit11.sink.split.i288.i

Vec_IntGrow.exit11.sink.split.i288.i:             ; preds = %bb.cx, %bb.cv
  %.sink540.i = phi i64 [ %i.xo, %bb.cx ], [ 64, %bb.cv ]
  %spec.select.sink.i289.i = phi i32 [ %spec.select.i285.i, %bb.cx ], [ 16, %bb.cv ]
  %i.xp = call ptr @realloc(ptr noundef nonnull %i.wu, i64 noundef %.sink540.i) #35 ; 2 uses
  store ptr %i.xp, ptr %i.bj, align 8, !tbaa !56
  store i32 %spec.select.sink.i289.i, ptr %i.bg, align 8, !tbaa !117
  %.pre438.i = load i32, ptr %i.bh, align 4, !tbaa !64
  %.val150.pre.i = load ptr, ptr %i.ca, align 8, !tbaa !56
  br label %Vec_IntPush.exit292.i

Vec_IntPush.exit292.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i288.i, %bb.cw, %Vec_IntPush.exit284.i
  %.val150.i = phi ptr [ %.val149.i, %Vec_IntPush.exit284.i ], [ %.val149.i, %bb.cw ], [ %.val150.pre.i, %Vec_IntGrow.exit11.sink.split.i288.i ]
  %i.xq = phi i32 [ %i.xh, %Vec_IntPush.exit284.i ], [ %i.xh, %bb.cw ], [ %.pre438.i, %Vec_IntGrow.exit11.sink.split.i288.i ] ; 2 uses
  %i.xr = phi ptr [ %i.wu, %Vec_IntPush.exit284.i ], [ %i.wu, %bb.cw ], [ %i.xp, %Vec_IntGrow.exit11.sink.split.i288.i ] ; 4 uses
  %i.xs = add nsw i32 %i.xq, 1
  store i32 %i.xs, ptr %i.bh, align 4, !tbaa !64
  %i.xt = sext i32 %i.xq to i64
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xr, i64 %i.xt
  store i32 %i.xg, ptr %i.xu, align 4, !tbaa !57
  %i.xv = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !57
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds [4 x i8], ptr %.val150.i, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !57 ; 2 uses
  %i.ya = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 40
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !81 ; 2 uses
  %.not.i293.i = icmp eq ptr %i.yc, null
  br i1 %.not.i293.i, label %Gia_ObjFaninC2.exit.i, label %bb.cy

bb.cy:                                            ; preds = %Vec_IntPush.exit292.i
  %i.yd = getelementptr i8, ptr %i.ya, i64 32
  %.val.i294.i = load ptr, ptr %i.yd, align 8, !tbaa !54
  %i.ye = ptrtoint ptr %i.cn to i64
  %i.yf = ptrtoint ptr %.val.i294.i to i64
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = sdiv exact i64 %i.yg, 12
  %i.yi = shl i64 %i.yh, 32
  %i.yj = ashr exact i64 %i.yi, 30
  %i.yk = getelementptr inbounds i8, ptr %i.yc, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !57
  %i.ym = and i32 %i.yl, 1
  %i.yn = xor i32 %i.ym, %i.xz
  br label %Gia_ObjFaninC2.exit.i

Gia_ObjFaninC2.exit.i:                            ; preds = %bb.cy, %Vec_IntPush.exit292.i
  %i.yo = phi i32 [ %i.xz, %Vec_IntPush.exit292.i ], [ %i.yn, %bb.cy ]
  %i.yp = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.yq = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.yr = icmp eq i32 %i.yp, %i.yq
  br i1 %i.yr, label %bb.cz, label %Vec_IntPush.exit302.i

bb.cz:                                            ; preds = %Gia_ObjFaninC2.exit.i
  %i.ys = icmp slt i32 %i.yp, 16
  br i1 %i.ys, label %Vec_IntGrow.exit11.sink.split.i298.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.yt = icmp samesign ult i32 %i.yp, 1073741823
  %i.yu = shl nuw nsw i32 %i.yp, 1
  %spec.select.i295.i = select i1 %i.yt, i32 %i.yu, i32 2147483647 ; 3 uses
  %.not.i9.i296.i = icmp samesign ult i32 %i.yp, %spec.select.i295.i
  br i1 %.not.i9.i296.i, label %bb.db, label %Vec_IntPush.exit302.i

bb.db:                                            ; preds = %bb.da
  %i.yv = zext nneg i32 %spec.select.i295.i to i64
  %i.yw = shl nuw nsw i64 %i.yv, 2
  br label %Vec_IntGrow.exit11.sink.split.i298.i

Vec_IntGrow.exit11.sink.split.i298.i:             ; preds = %bb.db, %bb.cz
  %.sink541.i = phi i64 [ %i.yw, %bb.db ], [ 64, %bb.cz ]
  %spec.select.sink.i299.i = phi i32 [ %spec.select.i295.i, %bb.db ], [ 16, %bb.cz ]
  %i.yx = call ptr @realloc(ptr noundef nonnull %i.xr, i64 noundef %.sink541.i) #35 ; 2 uses
  store ptr %i.yx, ptr %i.bj, align 8, !tbaa !56
  store i32 %spec.select.sink.i299.i, ptr %i.bg, align 8, !tbaa !117
  %.pre440.i = load i32, ptr %i.bh, align 4, !tbaa !64
  br label %Vec_IntPush.exit302.i

Vec_IntPush.exit302.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i298.i, %bb.da, %Gia_ObjFaninC2.exit.i
  %i.yy = phi i32 [ %i.yp, %Gia_ObjFaninC2.exit.i ], [ %i.yp, %bb.da ], [ %.pre440.i, %Vec_IntGrow.exit11.sink.split.i298.i ] ; 2 uses
  %i.yz = phi ptr [ %i.xr, %Gia_ObjFaninC2.exit.i ], [ %i.xr, %bb.da ], [ %i.yx, %Vec_IntGrow.exit11.sink.split.i298.i ]
  %i.za = add nsw i32 %i.yy, 1
  store i32 %i.za, ptr %i.bh, align 4, !tbaa !64
  %i.zb = sext i32 %i.yy to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.yz, i64 %i.zb
  store i32 %i.yo, ptr %i.zc, align 4, !tbaa !57
  br label %.loopexit362.i

bb.dc:                                            ; preds = %Vec_IntPush.exit310.i, %.lr.ph379.i
  %indvars.iv408.i = phi i64 [ 0, %.lr.ph379.i ], [ %indvars.iv.next409.i, %Vec_IntPush.exit310.i ] ; 2 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %indvars.iv408.i
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !57
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [4 x i8], ptr %.val149.i, i64 %i.zf
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !57
  %i.zi = load i32, ptr %i.bh, align 4, !tbaa !64 ; 7 uses
  %i.zj = load i32, ptr %i.bg, align 8, !tbaa !117
  %i.zk = icmp eq i32 %i.zi, %i.zj
  br i1 %i.zk, label %bb.dd, label %.Vec_IntPush.exit310_crit_edge.i

.Vec_IntPush.exit310_crit_edge.i:                 ; preds = %bb.dc
  %.pre441.i = load ptr, ptr %i.bj, align 8, !tbaa !56
  br label %Vec_IntPush.exit310.i

bb.dd:                                            ; preds = %bb.dc
  %i.zl = icmp slt i32 %i.zi, 16
  br i1 %i.zl, label %bb.de, label %bb.dh
end_hunk_1
