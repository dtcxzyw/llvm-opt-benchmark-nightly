Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRTestTif?download=true
inline.NumInlined: 32
begin_hunk_0_@ParseTifDEValue:bb.a
  %i.hn = zext i32 %.sink.i227 to i64             ; 2 uses
  store i64 %i.hn, ptr %i.l, align 8, !tbaa !33
  %i.ho = load i32, ptr %i.ha, align 8, !tbaa !49
  %i.hp = call i64 @GetTifULong(ptr noundef nonnull %i.n, i64 noundef %i.hn, i32 noundef %i.ho, ptr noundef nonnull %i.j) ; 2 uses
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %bb.bi, label %bb.be

GetTifULong.exit229.thread:                       ; preds = %bb.bc, %bb.bb
  %.0.i228.ph = phi i64 [ %i.he, %bb.bb ], [ %i.hi, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.hr = load i64, ptr %i.l, align 8, !tbaa !33
  %i.hs = add i64 %i.hr, 4
  %i.ht = load i32, ptr %i.ha, align 8, !tbaa !49
  %i.hu = call i64 @GetTifULong(ptr noundef nonnull %i.n, i64 noundef %i.hs, i32 noundef %i.ht, ptr noundef nonnull %i.k) ; 3 uses
  %i.hv = icmp slt i64 %i.hu, 0
  br i1 %i.hv, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hw = load i32, ptr %i.j, align 4, !tbaa !14
  %i.hx = uitofp i32 %i.hw to float
  %i.hy = load i32, ptr %i.k, align 4, !tbaa !14
  %i.hz = uitofp i32 %i.hy to float
  %i.ia = fdiv float %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 204
  store float %i.ia, ptr %i.ib, align 4, !tbaa !49
  br label %bb.bi

bb.bg:                                            ; preds = %bb.k
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i16 %.0231, ptr %i.ic, align 4, !tbaa !49
  br label %bb.bi

bb.bh:                                            ; preds = %bb.k
  %i.id = zext i16 %1 to i32                      ; 2 uses
  %i.ie = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.id, i32 noundef %i.id, i32 noundef %i.s, i32 noundef %3) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.am, %GetTifULong.exit229.thread, %GetTifULong.exit224.thread, %GetTifUShort.exit219.thread, %GetTifUShort.exit214.thread, %GetTifULong.exit.thread, %GetTifUShort.exit.thread, %bb.z, %bb.k, %bb.k, %bb.k, %bb.ac, %bb.q, %bb.bh, %bb.bg, %bb.bf, %bb.ba, %bb.as, %bb.ar, %bb.an, %bb.aa, %bb.o, %bb.n, %bb.a, %bb.l, %bb.m, %._crit_edge250, %bb.s, %bb.r, %._crit_edge250.thread, %._crit_edge, %bb.ae, %bb.ad, %._crit_edge.thread, %bb.al, %bb.ao, %bb.ap, %bb.aq, %bb.at, %bb.au, %bb.av, %bb.ay, %bb.az, %bb.bd, %bb.be
  %.5 = phi i64 [ %.0.i.ph, %GetTifUShort.exit.thread ], [ %.0158, %bb.bh ], [ %i.bc, %bb.l ], [ %.0.i209.ph, %GetTifULong.exit.thread ], [ %i.bd, %bb.m ], [ %i.q, %bb.a ], [ %.0158, %bb.n ], [ %.0158, %bb.o ], [ %.0158, %bb.q ], [ %.0158, %bb.k ], [ %.0158, %bb.k ], [ -106, %._crit_edge250 ], [ %i.cv, %bb.aa ], [ %.0158, %bb.ac ], [ %i.cv, %bb.z ], [ %.1159.lcssa300, %._crit_edge250.thread ], [ %i.en, %bb.al ], [ -106, %._crit_edge ], [ %.3.lcssa303, %._crit_edge.thread ], [ 0, %bb.an ], [ %i.eo, %bb.am ], [ %i.et, %bb.ao ], [ %i.fe, %bb.aq ], [ %i.ey, %bb.ap ], [ %.0158, %bb.ar ], [ %.0158, %bb.as ], [ %i.di, %bb.ae ], [ %i.fk, %bb.at ], [ %i.fv, %bb.av ], [ %i.fp, %bb.au ], [ %i.dd, %bb.ad ], [ %.0.i223.ph, %GetTifULong.exit224.thread ], [ %i.gm, %bb.ay ], [ %i.gr, %bb.ba ], [ %i.gr, %bb.az ], [ %.0.i228.ph, %GetTifULong.exit229.thread ], [ %i.hp, %bb.bd ], [ %i.hu, %bb.bf ], [ %.0158, %bb.bg ], [ %.0158, %bb.k ], [ %.0.i213.ph, %GetTifUShort.exit214.thread ], [ %i.bl, %bb.r ], [ %i.bq, %bb.s ], [ %.0.i218.ph, %GetTifUShort.exit219.thread ], [ %i.hu, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  ret i64 %.5
}

declare i64 @WMPAlloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @ParseTifDEArray(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 7 uses
  %i.c = alloca [2 x i8], align 2                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = tail call i64 %i.i(ptr noundef %i.e, i64 noundef %1) #8, !inline_history !53 ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %GetTifUShort.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = call i64 %i.m(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, i64 noundef 2) #8, !inline_history !53 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %GetTifUShort.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i16, ptr %i.c, align 2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.c, align 2, !tbaa !49
  %i.r = zext i8 %i.q to i16
  %i.s = shl nuw i16 %i.r, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !49
  %i.v = zext i8 %i.u to i16
  %i.w = or disjoint i16 %i.s, %i.v
  br label %bb.f

GetTifUShort.exit.thread:                         ; preds = %bb.b, %bb.a
  %.0.i.ph = phi i64 [ %i.j, %bb.a ], [ %i.n, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.n

bb.f:                                             ; preds = %bb.e, %bb.d
  %.039 = phi i16 [ %i.p, %bb.d ], [ %i.w, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.x = add i64 %1, 2
  %i.y = load i32, ptr %i.f, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.aa = call i64 %i.z(ptr noundef nonnull %i.e, i64 noundef %i.x) #8, !inline_history !53 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %GetTifUShort.exit30.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.ad = call i64 %i.ac(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i64 noundef 2) #8, !inline_history !53 ; 2 uses
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %GetTifUShort.exit30.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i26 = icmp eq i32 %i.y, 0
  br i1 %.not.i26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i16, ptr %i.b, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr %i.b, align 2, !tbaa !49
  %i.ah = zext i8 %i.ag to i16
  %i.ai = shl nuw i16 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !49
  %i.al = zext i8 %i.ak to i16
  %i.am = or disjoint i16 %i.ai, %i.al
  br label %bb.k

GetTifUShort.exit30.thread:                       ; preds = %bb.g, %bb.f
  %.0.i29.ph = phi i64 [ %i.aa, %bb.f ], [ %i.ad, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.n

bb.k:                                             ; preds = %bb.j, %bb.i
  %.038 = phi i16 [ %i.af, %bb.i ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.an = add i64 %1, 4
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.aq = call i64 %i.ap(ptr noundef nonnull %i.e, i64 noundef %i.an) #8, !inline_history !50 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %GetTifULong.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.at = call i64 %i.as(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 4) #8, !inline_history !50 ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %GetTifULong.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i31 = icmp eq i32 %i.ao, 0
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  %.037 = select i1 %.not.i31, i32 %i.ax, i32 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ay = call i64 @ParseTifDEValue(ptr noundef nonnull %0, i16 noundef zeroext %.039, i16 noundef zeroext %.038, i32 noundef %.037)
  br label %bb.n

GetTifULong.exit.thread:                          ; preds = %bb.l, %bb.k
  %.0.i34.ph = phi i64 [ %i.aq, %bb.k ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.n

bb.n:                                             ; preds = %GetTifULong.exit.thread, %GetTifUShort.exit30.thread, %GetTifUShort.exit.thread, %bb.m
  %.0 = phi i64 [ %.0.i34.ph, %GetTifULong.exit.thread ], [ %.0.i.ph, %GetTifUShort.exit.thread ], [ %.0.i29.ph, %GetTifUShort.exit30.thread ], [ %i.ay, %bb.m ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ParseTifHeader(ptr noundef initializes((152, 156), (176, 192), (196, 198), (200, 208)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 7 uses
  %2 = alloca %struct.tagPKPixelInfo, align 8     ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [3 x i8], align 1                 ; 8 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i16 0, ptr %i.e, align 2, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 -1, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 1>, ptr %i.g, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  store i16 2, ptr %i.j, align 4, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store <2 x float> splat (float 9.600000e+01), ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = call i64 %i.m(ptr noundef %1, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = call i64 %i.r(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i64 noundef 2) #8 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.2) #9
  %.not118 = icmp eq ptr %i.d, %i.u               ; 2 uses
  br i1 %.not118, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.3) #9
  %i.w = icmp eq ptr %i.d, %i.v
  br i1 %i.w, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink120 = phi i32 [ 1, %bb.d ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %.sink120, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = call i64 %i.aa(ptr noundef nonnull %1, i64 noundef 2) #8, !inline_history !53 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %GetTifUShort.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.ae = call i64 %i.ad(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef 2) #8, !inline_history !53 ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %GetTifUShort.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not118, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i16, ptr %i.b, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr %i.b, align 2, !tbaa !49
  %i.ai = zext i8 %i.ah to i16
  %i.aj = shl nuw i16 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !49
  %i.am = zext i8 %i.al to i16
  %i.an = or disjoint i16 %i.aj, %i.am
  br label %bb.k

GetTifUShort.exit.thread:                         ; preds = %bb.g, %bb.f
  %.0.i.ph = phi i64 [ %i.ab, %bb.f ], [ %i.ae, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.critedge

bb.k:                                             ; preds = %bb.j, %bb.i
  %.095 = phi i16 [ %i.ag, %bb.i ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %.not88 = icmp eq i16 %.095, 42
  br i1 %.not88, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.aq = call i64 %i.ap(ptr noundef nonnull %1, i64 noundef 4) #8, !inline_history !50 ; 2 uses
  %i.ar = icmp slt i64 %i.aq, 0
  br i1 %i.ar, label %GetTifULong.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.at = call i64 %i.as(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 4) #8, !inline_history !50 ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %GetTifULong.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i89 = icmp eq i32 %i.ao, 0
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  %.094 = select i1 %.not.i89, i32 %i.ax, i32 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ay = zext i32 %.094 to i64                   ; 2 uses
  %i.az = load i32, ptr %i.y, align 8, !tbaa !49
  %i.ba = call i64 @GetTifUShort(ptr noundef nonnull %1, i64 noundef %i.ay, i32 noundef %i.az, ptr noundef nonnull %i.e) ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %.critedge, label %bb.o

GetTifULong.exit.thread:                          ; preds = %bb.m, %bb.l
  %.0.i92.ph = phi i64 [ %i.aq, %bb.l ], [ %i.at, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bc = load i16, ptr %i.e, align 2, !tbaa !9   ; 2 uses
  %.not102 = icmp eq i16 %i.bc, 0
  br i1 %.not102, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  %i.bd = add nuw nsw i64 %i.ay, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %.0101 = phi i16 [ %i.bh, %bb.p ], [ 0, %.lr.ph.preheader ]
  %.077100 = phi i64 [ %i.bg, %bb.p ], [ %i.bd, %.lr.ph.preheader ] ; 2 uses
  %i.be = call i64 @ParseTifDEArray(ptr noundef %0, i64 noundef %.077100) ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bg = add nuw nsw i64 %.077100, 12
  %i.bh = add nuw i16 %.0101, 1                   ; 2 uses
  %exitcond.not = icmp eq i16 %i.bh, %i.bc
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !49
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !54
  store i32 %i.bl, ptr %i.f, align 8, !tbaa !49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.bm = load i32, ptr %i.g, align 8, !tbaa !49  ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.h, align 4, !tbaa !49  ; 3 uses
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !49
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bm, ptr %i.bs, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bo, ptr %i.bt, align 4, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bv = load <2 x i32>, ptr %i.i, align 8, !tbaa !49
  store <2 x i32> %i.bv, ptr %i.bu, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !49 ; 2 uses
  switch i32 %i.bx, label %.fold.split [
    i32 1, label %bb.w
    i32 2, label %bb.w
    i32 0, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.by = icmp ugt i32 %i.bo, 3
  %i.bz = select i1 %i.by, i64 16, i64 0
  br label %bb.w

.fold.split:                                      ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.u, %.fold.split, %bb.v
  %i.ca = phi i64 [ 16, %bb.u ], [ 16, %bb.u ], [ %i.bz, %bb.v ], [ 0, %.fold.split ]
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cc = icmp eq i32 %i.bx, 1
  %i.cd = select i1 %i.cc, i64 32, i64 0
  %i.ce = or disjoint i64 %i.ca, %i.cd
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !41
  %i.cf = load i16, ptr %i.j, align 4, !tbaa !49
  %i.cg = icmp eq i16 %i.cf, 3
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = load <2 x float>, ptr %i.k, align 8, !tbaa !49
  %i.ci = fpext <2 x float> %i.ch to <2 x double>
  %i.cj = fmul <2 x double> %i.ci, splat (double 2.540000e+00)
  %i.ck = fptrunc <2 x double> %i.cj to <2 x float>
  br label %bb.z

end_hunk_0
