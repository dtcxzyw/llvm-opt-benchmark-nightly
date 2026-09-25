Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/body?download=true
inline.NumInlined: 305
inline.NumDeleted: 45
begin_hunk_0_@b3ValidateConnectivity
declare void @b3ValidateConnectivity(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_Enable(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.b3RecArgs_BodyEnable, align 8 ; 4 uses
  %2 = alloca %struct.b3Transform, align 8        ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 13 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %0, ptr %1, align 8
  call void @b3RecWrite_BodyEnable(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3880 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = shl i64 %0, 32
  %sext.i = add i64 %i.i, -4294967296
  %i.j = ashr exact i64 %sext.i, 25
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !72
  %.not64 = icmp eq i32 %i.m, 1
  br i1 %.not64, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 3920 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !112
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  %i.t = select i1 %i.s, i64 0, i64 2
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.t
  call void @b3TransferBody(ptr noundef nonnull %i.c, ptr noundef %i.u, ptr noundef nonnull %i.p, ptr noundef nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !69, !noalias !336
  %i.w = load i32, ptr %i.l, align 8, !tbaa !72, !noalias !336
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [88 x i8], ptr %i.v, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !82, !noalias !336
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !83, !noalias !336
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [216 x i8], ptr %i.z, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %i.ad, i64 28, i1 false), !tbaa.struct !85
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !112
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %.not6569 = icmp eq i32 %i.ag, -1
  br i1 %.not6569, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4080
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.05870 = phi i32 [ %i.ag, %.lr.ph ], [ %i.an, %bb.f ]
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !134
  %i.ak = sext i32 %.05870 to i64
  %i.al = getelementptr inbounds [232 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !147 ; 2 uses
  call void @b3CreateShapeProxy(ptr noundef %i.al, ptr noundef nonnull %i.ai, i32 noundef %i.ae, ptr noundef nonnull byval(%struct.b3Transform) align 8 %2, i1 noundef zeroext true) #10
  %.not65 = icmp eq i32 %i.an, -1
  br i1 %.not65, label %._crit_edge, label %bb.f, !llvm.loop !334

._crit_edge:                                      ; preds = %bb.f, %bb.e
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ao = call ptr @b3CreateIsland(ptr noundef nonnull %i.c, i32 noundef range(i32 1, -2147483648) 2) #10 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !118 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 28 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !119 ; 4 uses
  %.not.i = icmp slt i32 %i.ar, %i.at
  %.pre.i = load ptr, ptr %i.ap, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i, label %b3CreateIslandForBody.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = shl i32 %i.at, 2
  %i.av = icmp eq i32 %i.at, 0
  %i.aw = shl nsw i32 %i.at, 1
  %spec.select.i = select i1 %i.av, i32 8, i32 %i.aw ; 2 uses
  %i.ax = shl i32 %spec.select.i, 2
  %i.ay = call ptr @b3GrowAlloc(ptr noundef %.pre.i, i32 noundef %i.au, i32 noundef %i.ax) #10 ; 2 uses
  store ptr %i.ay, ptr %i.ap, align 8, !tbaa !120
  store i32 %spec.select.i, ptr %i.as, align 4, !tbaa !119
  %.pre21.i = load i32, ptr %i.aq, align 8, !tbaa !118
  br label %b3CreateIslandForBody.exit

b3CreateIslandForBody.exit:                       ; preds = %bb.g, %bb.h
  %i.az = phi i32 [ %.pre21.i, %bb.h ], [ %i.ar, %bb.g ] ; 2 uses
  %i.ba = phi ptr [ %i.ay, %bb.h ], [ %.pre.i, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 108
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !109
  %i.bd = add nsw i32 %i.az, 1
  store i32 %i.bd, ptr %i.aq, align 8, !tbaa !118
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.be
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !121 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.bj, align 8, !tbaa !108
  call void @b3ValidateIsland(ptr noundef nonnull %i.c, i32 noundef %i.bh) #10
  br label %bb.i

bb.i:                                             ; preds = %b3CreateIslandForBody.exit, %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !125 ; 2 uses
  %.not6771 = icmp eq i32 %i.bl, -1
  br i1 %.not6771, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph74, %bb.n
  %.05772 = phi i32 [ %i.bl, %.lr.ph74 ], [ %i.bw, %bb.n ] ; 2 uses
  %i.bn = ashr i32 %.05772, 1
  %i.bo = and i32 %.05772, 1
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !126
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [72 x i8], ptr %i.bp, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 20 ; 2 uses
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !128 ; 2 uses
  %i.bx = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.by = load i32, ptr %i.bs, align 4, !tbaa !179
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [128 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !72 ; 3 uses
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.n, label %bb.k, !llvm.loop !335

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !179
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [128 x i8], ptr %i.bx, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !72 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.n, label %bb.l, !llvm.loop !335

bb.l:                                             ; preds = %bb.k
  %i.cl = icmp eq i32 %i.cc, 0
  %spec.select = select i1 %i.cl, i32 %i.cj, i32 %i.cc ; 2 uses
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.cn = sext i32 %spec.select to i64
  %i.co = getelementptr inbounds [88 x i8], ptr %i.cm, i64 %i.cn
  call void @b3TransferJoint(ptr noundef nonnull %i.c, ptr noundef %i.co, ptr noundef nonnull %i.p, ptr noundef nonnull %i.br) #10
  %.not68 = icmp eq i32 %spec.select, 0
  br i1 %.not68, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @b3LinkJoint(ptr noundef nonnull %i.c, ptr noundef nonnull %i.br) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k
  %.not67 = icmp eq i32 %i.bw, -1
  br i1 %.not67, label %._crit_edge75, label %bb.j

._crit_edge75:                                    ; preds = %bb.n, %bb.i
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge75, %bb.d, %bb.a
  ret void
}

declare void @b3RecWrite_BodyEnable(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_SetMotionLocks(i64 %0, i48 %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetMotionLocks, align 8 ; 8 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.10.0.extract.shift = lshr i48 %1, 32     ; 2 uses
  %.sroa.10.0.extract.trunc = trunc i48 %.sroa.10.0.extract.shift to i8
  %.sroa.12.0.extract.shift = lshr i48 %1, 40     ; 2 uses
  %.sroa.12.0.extract.trunc = trunc nuw i48 %.sroa.12.0.extract.shift to i8
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = bitcast i48 %1 to <6 x i8>
  %4 = shufflevector <6 x i8> %3, <6 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !124
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 %.sroa.10.0.extract.trunc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !124
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 13
  store i8 %.sroa.12.0.extract.trunc, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 0, ptr %i.g, align 2
  call void @b3RecWrite_BodySetMotionLocks(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = trunc i48 %1 to i1
  %i.i = trunc i48 %1 to i32
  %i.j = and i32 %i.i, 1
  %5 = and i48 %1, 256
  %.not49 = icmp eq i48 %5, 0                     ; 2 uses
  %i.k = select i1 %.not49, i32 0, i32 2
  %i.l = or disjoint i32 %i.k, %i.j
  %6 = and i48 %1, 65536
  %.not50 = icmp eq i48 %6, 0                     ; 2 uses
  %i.m = select i1 %.not50, i32 0, i32 4
  %i.n = or disjoint i32 %i.l, %i.m
  %7 = and i48 %1, 16777216
  %.not51 = icmp eq i48 %7, 0                     ; 2 uses
  %i.o = select i1 %.not51, i32 0, i32 8
  %i.p = or disjoint i32 %i.n, %i.o
  %i.q = trunc i48 %.sroa.10.0.extract.shift to i1 ; 2 uses
  %i.r = select i1 %i.q, i32 16, i32 0
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = trunc i48 %.sroa.12.0.extract.shift to i1 ; 2 uses
  %i.u = select i1 %i.t, i32 32, i32 0
  %i.v = or disjoint i32 %i.s, %i.u               ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  %i.y = shl i64 %0, 32
  %sext.i = add i64 %i.y, -4294967296
  %i.z = ashr exact i64 %sext.i, 25
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %i.ad = and i32 %i.ac, 63
  %i.ae = icmp eq i32 %i.ad, %i.v
  br i1 %i.ae, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = and i32 %i.ac, 56
  %i.ag = icmp eq i32 %i.af, 56
  %i.ah = and i32 %i.v, 56
  %i.ai = and i32 %i.ac, -64
  %i.aj = or i32 %i.ai, %i.v                      ; 2 uses
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !89
  %i.ak = and i32 %i.aj, -833                     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !72 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [88 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %i.au = sext i32 %i.at to i64                   ; 3 uses
  %i.av = getelementptr inbounds [216 x i8], ptr %i.ar, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 212
  store i32 %i.ak, ptr %i.aw, align 4, !tbaa !93
  %i.ax = icmp eq i32 %i.ao, 2
  br i1 %i.ax, label %b3GetBodyState.exit.i, label %b3GetBodyState.exit.thread

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 192
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !88 ; 3 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %b3GetBodyState.exit.thread, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.ba = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.au
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  store i32 %i.ak, ptr %i.bb, align 4, !tbaa !95
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.az, i64 %i.au ; 6 uses
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !337
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !338
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !339
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !340
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.q, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !341
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.t, label %bb.q, label %b3GetBodyState.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !342
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %b3GetBodyState.exit.i, %bb.e, %bb.p, %bb.q
  %i.bi = icmp ne i32 %i.ah, 56
  %.not42 = xor i1 %i.bi, %i.ag
  br i1 %.not42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %b3GetBodyState.exit.thread
  call void @b3UpdateBodyMassData(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aa)
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.r, %b3GetBodyState.exit.thread, %bb.a
  ret void
}

declare void @b3RecWrite_BodySetMotionLocks(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i48 0, 1103823438082) i48 @b3Body_GetMotionLocks(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = trunc i32 %i.j to i8                     ; 6 uses
  %i.l = lshr i8 %i.k, 3
  %i.m = lshr i8 %i.k, 2
  %i.n = lshr i8 %i.k, 1
  %i.o = insertelement <4 x i8> poison, i8 %i.k, i64 0
  %i.p = insertelement <4 x i8> %i.o, i8 %i.n, i64 1
  %i.q = insertelement <4 x i8> %i.p, i8 %i.m, i64 2
  %i.r = insertelement <4 x i8> %i.q, i8 %i.l, i64 3
  %i.s = and <4 x i8> %i.r, splat (i8 1)
  %i.t = lshr i8 %i.k, 4
  %i.u = and i8 %i.t, 1
  %i.v = lshr i8 %i.k, 5
  %i.w = and i8 %i.v, 1
  %.sroa.6.0.insert.ext = zext nneg i8 %i.w to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 40
  %.sroa.5.0.insert.ext = zext nneg i8 %i.u to i48
  %.sroa.5.0.insert.shift = shl nuw nsw i48 %.sroa.5.0.insert.ext, 32
  %i.x = bitcast <4 x i8> %i.s to i32
  %i.y = zext nneg i32 %i.x to i48
  %op.rdx = or disjoint i48 %.sroa.5.0.insert.shift, %i.y
  %op.rdx10 = or disjoint i48 %op.rdx, %.sroa.6.0.insert.shift
  ret i48 %op.rdx10
}

; Function Attrs: nounwind uwtable
define void @b3Body_SetBullet(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetBullet, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b3SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.a, ptr %i.h, align 8, !tbaa !186
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.i, i8 0, i64 3, i1 false)
  call void @b3RecWrite_BodySetBullet(ptr noundef nonnull %i.g, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = select i1 %1, i32 128, i32 0             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 25
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !89   ; 2 uses
  %i.r = and i32 %i.q, 128
  %i.s = icmp eq i32 %i.r, %i.j
  br i1 %i.s, label %b3SyncBodyFlags.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, -129
  %i.u = or disjoint i32 %i.t, %i.j               ; 2 uses
  store i32 %i.u, ptr %i.p, align 8, !tbaa !89
  %i.v = and i32 %i.u, -833                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3920
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !83
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds [216 x i8], ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 212
  store i32 %i.v, ptr %i.ah, align 4, !tbaa !93
  %i.ai = icmp eq i32 %i.z, 2
  br i1 %i.ai, label %b3GetBodyState.exit.i, label %b3SyncBodyFlags.exit

b3GetBodyState.exit.i:                            ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %b3SyncBodyFlags.exit, label %bb.f

bb.f:                                             ; preds = %b3GetBodyState.exit.i
  %i.al = getelementptr inbounds [56 x i8], ptr %i.ak, i64 %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 %i.v, ptr %i.am, align 4, !tbaa !95
  br label %b3SyncBodyFlags.exit

b3SyncBodyFlags.exit:                             ; preds = %bb.f, %b3GetBodyState.exit.i, %bb.e, %bb.d, %bb.a
  ret void
}

declare void @b3RecWrite_BodySetBullet(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define zeroext i1 @b3Body_IsBullet(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89
  %i.k = and i32 %i.j, 128
  %i.l = icmp ne i32 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: nounwind uwtable
define void @b3Body_AllowFastRotation(i64 %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodyAllowFastRotation, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = zext i1 %1 to i8
  %i.b = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.c = and i32 %i.b, 65535
  %i.d = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.c) #10 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %b3SyncBodyFlags.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4736
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
