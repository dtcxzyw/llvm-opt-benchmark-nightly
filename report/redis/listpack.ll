Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/listpack?download=true
inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpRandomPairsUnique:bb.a
  %i.bn = shl nuw nsw i64 %i.bm, 16
  %i.bo = or disjoint i64 %i.bn, %i.bj
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = zext i32 %i.bq to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bt = load i64, ptr %i.bs, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.bu = zext i8 %i.aa to i64
  %i.bv = or disjoint i64 %i.bu, 12345678900000000
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.r
  %.060.i.i = phi i64 [ %i.au, %bb.r ], [ %i.bd, %bb.t ], [ %i.bg, %bb.v ], [ %i.bo, %bb.w ], [ %i.br, %bb.x ], [ %i.bt, %bb.y ], [ %i.bv, %bb.z ] ; 3 uses
  %.059.i.i = phi i64 [ -1, %bb.r ], [ 4096, %bb.t ], [ 32768, %bb.v ], [ 8388608, %bb.w ], [ 2147483648, %bb.x ], [ -9223372036854775808, %bb.y ], [ -1, %bb.z ]
  %.0.neg.i.i = phi i64 [ 0, %bb.r ], [ -8191, %bb.t ], [ -65535, %bb.v ], [ -16777215, %bb.w ], [ -4294967295, %bb.x ], [ 1, %bb.y ], [ 0, %bb.z ]
  %.not66.i.i = icmp ult i64 %.060.i.i, %.059.i.i
  %.neg.i.i = add i64 %.060.i.i, -1
  %i.bw = add i64 %.neg.i.i, %.0.neg.i.i
  %.061.i.i = select i1 %.not66.i.i, i64 %.060.i.i, i64 %i.bw
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %bb.p, %bb.n, %bb.l, %bb.aa
  %.062.i.i70 = phi ptr [ null, %bb.aa ], [ %i.as, %bb.p ], [ %i.ao, %bb.n ], [ %i.af, %bb.l ]
  %.262 = phi i32 [ %.06080, %bb.aa ], [ %i.ar, %bb.p ], [ %i.an, %bb.n ], [ %i.ae, %bb.l ] ; 3 uses
  %.2 = phi i64 [ %.061.i.i, %bb.aa ], [ %.05981, %bb.p ], [ %.05981, %bb.n ], [ %.05981, %bb.l ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  store ptr %.062.i.i70, ptr %i.bx, align 8, !tbaa !60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %.262, ptr %i.by, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %.2, ptr %i.bz, align 8, !tbaa !61
  %i.ca = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 14 uses
  %.not39 = icmp eq ptr %i.ca, null
  br i1 %.not39, label %bb.ab, label %bb.ac, !prof !47

bb.ab:                                            ; preds = %lpGetValue.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1943) #21
  tail call void @abort() #22
  unreachable

bb.ac:                                            ; preds = %lpGetValue.exit
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !14
  br i1 %.not40, label %bb.au, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !43  ; 6 uses
  %i.cd = zext i8 %i.cc to i32                    ; 6 uses
  %i.ce = and i32 %i.cd, 192
  %i.cf = icmp eq i32 %i.ce, 128
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cg = and i32 %i.cd, 63
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  br label %lpGetValue.exit43

bb.af:                                            ; preds = %bb.ad
  %i.ci = and i32 %i.cd, 240
  %i.cj = icmp eq i32 %i.ci, 224
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = shl nuw nsw i32 %i.cd, 8
  %i.cl = and i32 %i.ck, 3840
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !43
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  br label %lpGetValue.exit43

bb.ah:                                            ; preds = %bb.af
  %i.cr = icmp eq i8 %i.cc, -16
  br i1 %i.cr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  br label %lpGetValue.exit43

bb.aj:                                            ; preds = %bb.ah
  %i.cv = icmp sgt i8 %i.cc, -1
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cw = zext nneg i8 %i.cc to i64
  br label %bb.at

bb.al:                                            ; preds = %bb.aj
  %i.cx = and i32 %i.cd, 224
  %i.cy = icmp eq i32 %i.cx, 192
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = shl nuw nsw i32 %i.cd, 8
  %i.da = and i32 %i.cz, 7936
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !43
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd
  %i.df = zext nneg i32 %i.de to i64
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  switch i8 %i.cc, label %bb.as [
    i8 -15, label %bb.ao
    i8 -14, label %bb.ap
    i8 -13, label %bb.aq
    i8 -12, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dh = load i16, ptr %i.dg, align 1
  %i.di = zext i16 %i.dh to i64
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !43
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 16
  %i.dq = or disjoint i64 %i.dp, %i.dl
  br label %bb.at

bb.aq:                                            ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = zext i32 %i.ds to i64
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dv = load i64, ptr %i.du, align 1
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.dw = zext i8 %i.cc to i64
  %i.dx = or disjoint i64 %i.dw, 12345678900000000
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.060.i.i46 = phi i64 [ %i.cw, %bb.ak ], [ %i.df, %bb.am ], [ %i.di, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dt, %bb.aq ], [ %i.dv, %bb.ar ], [ %i.dx, %bb.as ] ; 3 uses
  %.059.i.i47 = phi i64 [ -1, %bb.ak ], [ 4096, %bb.am ], [ 32768, %bb.ao ], [ 8388608, %bb.ap ], [ 2147483648, %bb.aq ], [ -9223372036854775808, %bb.ar ], [ -1, %bb.as ]
  %.0.neg.i.i48 = phi i64 [ 0, %bb.ak ], [ -8191, %bb.am ], [ -65535, %bb.ao ], [ -16777215, %bb.ap ], [ -4294967295, %bb.aq ], [ 1, %bb.ar ], [ 0, %bb.as ]
  %.not66.i.i49 = icmp ult i64 %.060.i.i46, %.059.i.i47
  %.neg.i.i50 = add i64 %.060.i.i46, -1
  %i.dy = add i64 %.neg.i.i50, %.0.neg.i.i48
  %.061.i.i51 = select i1 %.not66.i.i49, i64 %.060.i.i46, i64 %i.dy
  br label %lpGetValue.exit43

lpGetValue.exit43:                                ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.at
  %.062.i.i5276 = phi ptr [ null, %bb.at ], [ %i.cu, %bb.ai ], [ %i.cq, %bb.ag ], [ %i.ch, %bb.ae ]
  %.363 = phi i32 [ %.262, %bb.at ], [ %i.ct, %bb.ai ], [ %i.cp, %bb.ag ], [ %i.cg, %bb.ae ] ; 2 uses
  %.3 = phi i64 [ %.061.i.i51, %bb.at ], [ %.2, %bb.ai ], [ %.2, %bb.ag ], [ %.2, %bb.ae ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store ptr %.062.i.i5276, ptr %i.dz, align 8, !tbaa !60
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %.363, ptr %i.ea, align 8, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %.3, ptr %i.eb, align 8, !tbaa !61
  br label %bb.au

bb.au:                                            ; preds = %lpGetValue.exit43, %bb.ac
  %.161 = phi i32 [ %.262, %bb.ac ], [ %.363, %lpGetValue.exit43 ]
  %.1 = phi i64 [ %.2, %bb.ac ], [ %.3, %lpGetValue.exit43 ]
  %i.ec = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %i.ca) ; 2 uses
  %i.ed = add i32 %.084, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ee = add i32 %i.cb, 2
  store i32 %i.ee, ptr %i.c, align 4, !tbaa !14
  %i.ef = icmp samesign ult i64 %indvars.iv.next, %i.y
  %i.eg = icmp ne ptr %i.ec, null
  %i.eh = and i1 %i.eg, %i.ef
  br i1 %i.eh, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !139

._crit_edge.loopexit:                             ; preds = %bb.au
  %i.ei = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %lpLength.exit, %._crit_edge.loopexit, %lpFirst.exit
  %.030.lcssa = phi i32 [ 0, %lpFirst.exit ], [ %i.ei, %._crit_edge.loopexit ], [ 0, %lpLength.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i32 %.030.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lpNextRandom(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !guid !141 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1985) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = zext i16 %i.e to i32
  %.not.i = icmp eq i16 %i.e, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %0, align 1
  %i.k = zext i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !50
  %i.l = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.k)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !47

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.m = add i32 %.01520.i, 1                     ; 4 uses
  %i.n = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.o = icmp ult i32 %i.m, 65535
  br i1 %i.o, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.m, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.p = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.p, ptr %i.d, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.f, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.m, %._crit_edge.i ] ; 3 uses
  %i.q = icmp ult i32 %i.c, %.016.in.i
  %i.r = icmp ne ptr %1, null
  %i.s = and i1 %i.r, %i.q
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %lpLength.exit
  %i.t = uitofp i32 %3 to double
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.02538 = phi i32 [ %i.c, %.lr.ph ], [ %.025.be, %.backedge ] ; 4 uses
  %.02837 = phi ptr [ %1, %.lr.ph ], [ %i.v, %.backedge ] ; 2 uses
  %i.u = urem i32 %.02538, %4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.h
  %i.v = tail call ptr @lpNext(ptr noundef %0, ptr noundef nonnull %.02837) ; 2 uses
  %.025.be = add nuw i32 %.02538, 1               ; 2 uses
  %i.w = icmp ult i32 %.025.be, %.016.in.i
  %i.x = icmp ne ptr %i.v, null
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %bb.g, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.z = sub nuw i32 %.016.in.i, %.02538
  %i.aa = udiv i32 %i.z, %4
  %i.ab = tail call i32 @rand() #21
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, f0x41DFFFFFFFC00000
  %i.ae = uitofp i32 %i.aa to double
  %i.af = fdiv double %i.t, %i.ae
  %i.ag = fcmp ugt double %i.ad, %i.af
  br i1 %i.ag, label %.backedge, label %.thread

.thread:                                          ; preds = %bb.h
  store i32 %.02538, ptr %2, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %lpLength.exit, %.thread
  %.2 = phi ptr [ %.02837, %.thread ], [ null, %lpLength.exit ], [ null, %.backedge ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRepr(ptr noundef %0) local_unnamed_addr #3 !guid !144 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [21 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.d = load i32, ptr %0, align 1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.b, label %lpLength.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !43
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8, !tbaa !50
  %i.l = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.e)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.preheader.i, !prof !47

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.m = add i32 %.01520.i, 1                     ; 4 uses
  %i.n = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.o = icmp ult i32 %i.m, 65535
  br i1 %i.o, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.015.lcssa25.i = phi i32 [ %i.m, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.p, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.m, %._crit_edge.i ]
  %.016.i = zext i32 %.016.in.i to i64
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.e, i64 noundef %.016.i) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !43
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %lpLength.exit
  %i.u = load i32, ptr %0, align 1
  %i.v = zext i32 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !50
  %i.w = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.v)
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %.lr.ph, !prof !47

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = ptrtoint ptr %0 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.at
  %.02849 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %bb.at ] ; 2 uses
  %.02947 = phi ptr [ %i.r, %.lr.ph ], [ %i.eb, %bb.at ] ; 18 uses
  %i.y = load i8, ptr %.02947, align 1, !tbaa !43 ; 7 uses
  %i.z = zext i8 %i.y to i32                      ; 6 uses
  %i.aa = icmp sgt i8 %i.y, -1                    ; 2 uses
  %i.ab = and i32 %i.z, 192
  %i.ac = icmp eq i32 %i.ab, 128                  ; 2 uses
  %i.ad = and i32 %i.z, 224
  %i.ae = icmp eq i32 %i.ad, 192                  ; 2 uses
  %.off.i = add i8 %i.y, 15
  %switch.i = icmp ult i8 %.off.i, 4
  %i.af = or i1 %switch.i, %i.ac
  %i.ag = or i1 %i.aa, %i.af
  %or.cond15.i = or i1 %i.ae, %i.ag
  br i1 %or.cond15.i, label %lpCurrentEncodedSizeBytes.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = and i32 %i.z, 240
  %i.ai = icmp eq i32 %i.ah, 224
  br i1 %i.ai, label %lpCurrentEncodedSizeBytes.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %switch.selectcmp.i = icmp eq i8 %i.y, -1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp16.i = icmp eq i8 %i.y, -16
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 5, i32 %switch.select.i
  br label %lpCurrentEncodedSizeBytes.exit.thread

lpCurrentEncodedSizeBytes.exit:                   ; preds = %bb.g
  br i1 %i.aa, label %lpEncodeBacklenBytes.exit, label %lpCurrentEncodedSizeBytes.exit.thread

lpCurrentEncodedSizeBytes.exit.thread:            ; preds = %bb.i, %bb.h, %lpCurrentEncodedSizeBytes.exit
  %.0.i3339 = phi i32 [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 2, %bb.h ], [ %switch.select17.i, %bb.i ] ; 12 uses
  br i1 %i.ac, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %lpCurrentEncodedSizeBytes.exit.thread
  %i.aj = and i32 %i.z, 63
  %i.ak = add nuw nsw i32 %i.aj, 1
  br label %lpEncodeBacklenBytes.exit

bb.j:                                             ; preds = %lpCurrentEncodedSizeBytes.exit.thread
  br i1 %i.ae, label %lpEncodeBacklenBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i8 %i.y, label %bb.o [
    i8 -15, label %lpEncodeBacklenBytes.exit
    i8 -14, label %bb.l
    i8 -13, label %bb.m
    i8 -12, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.m:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.n:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.o:                                             ; preds = %bb.k
  %i.al = and i32 %i.z, 240
  %i.am = icmp eq i32 %i.al, 224
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = shl nuw nsw i32 %i.z, 8
  %i.ao = and i32 %i.an, 3840
  %i.ap = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !43
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, 2
  %i.at = add nuw nsw i32 %i.as, %i.ar
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.q:                                             ; preds = %bb.o
  switch i8 %i.y, label %bb.s [
    i8 -16, label %bb.r
    i8 -1, label %lpEncodeBacklenBytes.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = add i32 %i.av, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.s:                                             ; preds = %bb.q
  br label %lpEncodeBacklenBytes.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.p, %bb.r
  %.0.i34 = phi i32 [ %i.at, %bb.p ], [ %i.aw, %bb.r ] ; 8 uses
  %i.ax = icmp ult i32 %.0.i34, 128
  br i1 %i.ax, label %lpEncodeBacklenBytes.exit, label %bb.t

bb.t:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.ay = icmp ult i32 %.0.i34, 16383
  br i1 %i.ay, label %lpEncodeBacklenBytes.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = icmp ult i32 %.0.i34, 2097151
  br i1 %i.az, label %lpEncodeBacklenBytes.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = icmp ult i32 %.0.i34, 268435455
  %..i = select i1 %i.ba, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.q, %bb.k, %bb.n, %bb.m, %bb.l, %bb.j, %lpCurrentEncodedSizeBytes.exit, %bb.s, %lpCurrentEncodedSizeUnsafe.exit, %bb.t, %bb.u, %bb.v
  %.0.i3444 = phi i32 [ %.0.i34, %bb.u ], [ %.0.i34, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i34, %bb.t ], [ %.0.i34, %bb.v ], [ 1, %bb.q ], [ 3, %bb.k ], [ 9, %bb.n ], [ 5, %bb.m ], [ 4, %bb.l ], [ 2, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 0, %bb.s ], [ %i.ak, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %.0.i334043 = phi i32 [ %.0.i3339, %bb.u ], [ %.0.i3339, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i3339, %bb.t ], [ %.0.i3339, %bb.v ], [ %.0.i3339, %bb.q ], [ %.0.i3339, %bb.k ], [ %.0.i3339, %bb.n ], [ %.0.i3339, %bb.m ], [ %.0.i3339, %bb.l ], [ %.0.i3339, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ %.0.i3339, %bb.s ], [ %.0.i3339, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %.0.i35 = phi i64 [ 3, %bb.u ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.t ], [ %..i, %bb.v ], [ 1, %bb.q ], [ 1, %bb.k ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 1, %bb.s ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %i.bb = zext i32 %.0.i3444 to i64
  %i.bc = ptrtoint ptr %.02947 to i64             ; 2 uses
  %i.bd = sub i64 %i.bc, %i.x
  %i.be = add nuw nsw i64 %.0.i35, %i.bb          ; 2 uses
  %i.bf = sub i32 %.0.i3444, %.0.i334043
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.bc, i32 noundef %.02849, i64 noundef %i.bd, i64 noundef %i.be, i32 noundef %.0.i334043, i64 noundef %.0.i35, i32 noundef %i.bf) ; 0 uses
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  br label %bb.an

bb.w:                                             ; preds = %bb.an
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.bi = load i8, ptr %.02947, align 1, !tbaa !43 ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 6 uses
  %i.bk = and i32 %i.bj, 192
  %i.bl = icmp eq i32 %i.bk, 128
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = and i32 %i.bj, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  br label %lpGet.exit

bb.y:                                             ; preds = %bb.w
  %i.bp = and i32 %i.bj, 240
  %i.bq = icmp eq i32 %i.bp, 224
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = shl nuw nsw i32 %i.bj, 8
  %i.bs = and i32 %i.br, 3840
  %i.bt = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.02947, i64 2
  br label %lpGet.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = icmp eq i8 %i.bi, -16
  br i1 %i.bz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.02947, i64 5
  br label %lpGet.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ce = icmp sgt i8 %i.bi, -1
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = zext nneg i8 %i.bi to i64
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.cg = and i32 %i.bj, 224
  %i.ch = icmp eq i32 %i.cg, 192
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = shl nuw nsw i32 %i.bj, 8
  %i.cj = and i32 %i.ci, 7936
  %i.ck = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.bi, label %bb.al [
    i8 -15, label %bb.ah
    i8 -14, label %bb.ai
    i8 -13, label %bb.aj
    i8 -12, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.02947, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !43
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 16
  %i.cz = or disjoint i64 %i.cy, %i.cu
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = zext i32 %i.db to i64
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %.02947, i64 1
  %i.de = load i64, ptr %i.dd, align 1
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  %i.df = zext i8 %i.bi to i64
  %i.dg = or disjoint i64 %i.df, 12345678900000000
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.060.i.i = phi i64 [ %i.cf, %bb.ad ], [ %i.co, %bb.af ], [ %i.cr, %bb.ah ], [ %i.cz, %bb.ai ], [ %i.dc, %bb.aj ], [ %i.de, %bb.ak ], [ %i.dg, %bb.al ] ; 3 uses
  %.059.i.i = phi i64 [ -1, %bb.ad ], [ 4096, %bb.af ], [ 32768, %bb.ah ], [ 8388608, %bb.ai ], [ 2147483648, %bb.aj ], [ -9223372036854775808, %bb.ak ], [ -1, %bb.al ]
  %.0.neg.i.i = phi i64 [ 0, %bb.ad ], [ -8191, %bb.af ], [ -65535, %bb.ah ], [ -16777215, %bb.ai ], [ -4294967295, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.al ]
  %.not66.i.i = icmp ult i64 %.060.i.i, %.059.i.i
  %.neg.i.i = add i64 %.060.i.i, -1
  %i.dh = add i64 %.neg.i.i, %.0.neg.i.i
  %.061.i.i = select i1 %.not66.i.i, i64 %.060.i.i, i64 %i.dh
  %i.di = call i32 @ll2string(ptr noundef nonnull %i.c, i64 noundef 21, i64 noundef %.061.i.i) #21
  %i.dj = sext i32 %i.di to i64
  br label %lpGet.exit

lpGet.exit:                                       ; preds = %bb.x, %bb.z, %bb.ab, %bb.am
  %.037 = phi i64 [ %i.bn, %bb.x ], [ %i.bx, %bb.z ], [ %i.cc, %bb.ab ], [ %i.dj, %bb.am ] ; 2 uses
  %.062.i.i = phi ptr [ %i.bo, %bb.x ], [ %i.by, %bb.z ], [ %i.cd, %bb.ab ], [ %i.c, %bb.am ] ; 2 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) ; 0 uses
  %i.dl = icmp sgt i64 %.037, 40
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !146 ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.ar

bb.an:                                            ; preds = %lpEncodeBacklenBytes.exit, %bb.an
  %i.dn = phi i64 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.dt, %bb.an ]
  %.045 = phi i32 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.ds, %bb.an ]
  %i.do = getelementptr inbounds nuw i8, ptr %.02947, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !43
  %i.dq = zext i8 %i.dp to i32
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dq) ; 0 uses
  %i.ds = add i32 %.045, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp samesign ugt i64 %i.be, %i.dt
  br i1 %i.du, label %bb.an, label %bb.w, !llvm.loop !142

bb.ao:                                            ; preds = %lpGet.exit
  %i.dv = call i64 @fwrite(ptr noundef nonnull %.062.i.i, i64 noundef 40, i64 noundef 1, ptr noundef %i.dm)
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @perror(ptr noundef nonnull @.str.24) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %lpGet.exit
  %i.dy = call i64 @fwrite(ptr noundef nonnull %.062.i.i, i64 noundef %.037, i64 noundef 1, ptr noundef %i.dm)
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @perror(ptr noundef nonnull @.str.24) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %puts32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ea = add nuw nsw i32 %.02849, 1
  %i.eb = call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02947) ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.at, %lpLength.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !44}
!1 = distinct !{!1, !44}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 1, !"ThinLTO", i32 0}
!9 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{i64 1978110939721907684}
!16 = !{i64 6930851709591917613}
!17 = !{i64 -4746763101196670152}
!18 = !{i64 -6461375405185902692}
!19 = !{i64 395570907265176186}
!20 = !{i64 4288198037322200137}
!21 = !{i64 -4058429691318208790}
!22 = !{i64 7516454297869037224}
!23 = !{i64 -2551835683059645712}
!24 = !{i64 2784512137287872156}
!25 = !{i64 -5758709191911451345}
!26 = !{i64 7722480647270604255}
!27 = !{i64 -463733898555433223}
!28 = !{i64 -5368099900923992992}
!29 = !{i64 574528749866573131}
!30 = !{i64 -4605663101150093314}
!31 = !{i64 2598710150409547727}
!32 = !{i64 -7571647414333867868}
!33 = !{i64 -2023548947995018453}
!34 = !{i64 3302748695819511554}
!35 = !{i64 -7845497015903420621}
!36 = !{i64 2008032653514023941}
!37 = !{i64 -2263178630034255359}
!38 = !{i64 6357467397425177186}
!39 = !{i64 -3952473104779458717}
!40 = !{i64 -7024687792074125145}
!41 = !{i64 -5898879082002295300}
!42 = !{i64 5082047500965129537}
!43 = !{!12, !12, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"long", !12, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = !{!"any pointer", !12, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{!"long long", !12, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"lpFindArg", !49, i64 0, !13, i64 8, !13, i64 12, !45, i64 16}
!55 = !{!54, !49, i64 0}
!56 = !{!54, !13, i64 8}
!57 = !{!54, !13, i64 12}
!58 = !{!54, !45, i64 16}
!59 = !{!"", !49, i64 0, !13, i64 8, !52, i64 16}
!60 = !{!59, !49, i64 0}
!61 = !{!59, !52, i64 16}
!62 = !{!59, !13, i64 8}
!63 = !{i64 3982161884311745426}
!64 = !{i64 2889052375336785937}
!65 = !{i64 -3930220636283805717}
!66 = !{i64 8449150688768795}
!67 = !{i64 801120976923854473}
!68 = !{i64 -4191988847399128213}
!69 = !{i64 -94142367958239354}
!70 = !{i64 5396862544900947332}
!71 = !{i64 -8575320987462218149}
!72 = !{i64 -753340494363040172}
!73 = !{i64 -7639300871441516247}
!74 = !{i64 -6149345823790861632}
!75 = !{i64 6609025654825882059}
!76 = !{i64 556831501113633197}
!77 = !{i64 4199849066628891502}
!78 = !{i64 861529976740976271}
!79 = !{i64 6454134680826259150}
!80 = distinct !{!80, !44}
!81 = !{i64 8107927341588290927}
!82 = !{i64 -8899402131748375473}
!83 = !{i64 -1499159864338767093}
!84 = !{i64 729935697329836379}
!85 = !{!"branch_weights", i32 4000000, i32 4001}
!86 = !{i64 517418611981961097}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = !{i64 -2905185141119155258}
!90 = !{!"listpackInsertEntry", !13, i64 0, !45, i64 8, !12, i64 16, !12, i64 25, !45, i64 32}
!91 = !{!90, !13, i64 0}
!92 = !{!90, !45, i64 8}
!93 = !{!90, !45, i64 32}
!94 = !{i64 -4652967442354227363}
!95 = !{i64 8431711861463170590}
!96 = !{i64 7686113613489151594}
!97 = !{i64 -218892548923956706}
!98 = !{i64 -2794571772082190464}
!99 = !{i64 3775761544367004528}
!100 = !{i64 -2071967235822913502}
!101 = !{i64 8367760414334476197}
!102 = !{i64 8100673011687453035}
!103 = !{i64 -2986003356411752351}
!104 = distinct !{!104, !44}
!105 = !{i64 5691850648893787373}
!106 = !{i64 9186818492845802886}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = !{i64 -9172846731061242213}
!110 = distinct !{!110, !44}
!111 = !{i64 5869555718951417708}
!112 = !{i64 -7312978689159010630}
!113 = !{i64 3306945295933208519}
!114 = !{i64 -7097448495982383747}
!115 = !{i64 8396140318598186058}
!116 = !{i64 3102534888056249555}
!117 = !{i64 -1042287869006934245}
!118 = distinct !{!118, !44}
!119 = !{i64 527906281792597644}
!120 = !{i64 9198627159796090215}
!121 = !{i64 -7698074922154538667}
!122 = distinct !{!122, !44}
!123 = distinct !{!123, !44}
!124 = distinct !{!124, !44}
!125 = !{i64 8897672750615367300}
!126 = !{!"branch_weights", !"expected", i32 1215604, i32 2146268044}
!127 = !{!"pick", !13, i64 0, !13, i64 4}
!128 = !{!127, !13, i64 0}
!129 = !{!127, !13, i64 4}
!130 = !{i64 -758894374311330543}
!131 = distinct !{!131, !44}
!132 = distinct !{!132, !44}
!133 = distinct !{!133, !44}
!134 = distinct !{!134, !44}
!135 = !{i64 -8695100405947579498}
!136 = !{!"", !13, i64 0, !13, i64 4}
!137 = !{!136, !13, i64 0}
!138 = !{!136, !13, i64 4}
!139 = distinct !{!139, !44}
!140 = !{i64 -8600289614445305647}
!141 = !{i64 -720080534877263253}
!142 = distinct !{!142, !44}
!143 = distinct !{!143, !44}
!144 = !{i64 5164726159497769671}
!145 = !{!"p1 _ZTS8_IO_FILE", !48, i64 0}
!146 = !{!145, !145, i64 0}
end_hunk_0
