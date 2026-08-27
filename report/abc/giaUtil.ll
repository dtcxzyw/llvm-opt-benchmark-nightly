Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaUtil?download=true
inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ObjRecognizeMux:bb.a
  store ptr %i.gd, ptr %1, align 8, !tbaa !92
  %i.ge = load i64, ptr %i.f, align 4             ; 2 uses
  %i.gf = and i64 %i.ge, 536870911
  %i.gg = sub nsw i64 0, %i.gf
  %i.gh = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.gg
  %i.gi = lshr i64 %i.ge, 29
  %i.gj = and i64 %i.gi, 1
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = xor i64 %i.gj, %i.gk
  %i.gm = xor i64 %i.gl, 1
  %i.gn = inttoptr i64 %i.gm to ptr
  store ptr %i.gn, ptr %2, align 8, !tbaa !92
  %i.go = load i64, ptr %i.c, align 4             ; 2 uses
  %i.gp = and i64 %i.go, 536870911
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.gq
  %i.gs = lshr i64 %i.go, 29
  %i.gt = and i64 %i.gs, 1
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = xor i64 %i.gt, %i.gu
  %i.gw = inttoptr i64 %i.gv to ptr
  br label %bb.u

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.gx = icmp eq i64 %i.o, %i.ci
  br i1 %i.gx, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.gy = lshr i64 %i.g, 61
  %i.gz = trunc nuw nsw i64 %i.gy to i32
  %i.ha = and i32 %i.gz, 1                        ; 2 uses
  %i.hb = trunc i64 %i.k to i32
  %i.hc = lshr i32 %i.hb, 29
  %i.hd = and i32 %i.hc, 1
  %.not65 = icmp eq i32 %i.ha, %i.hd
  br i1 %.not65, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not66 = icmp eq i32 %i.ha, 0
  br i1 %.not66, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.he = lshr i64 %i.k, 61
  %i.hf = and i64 %i.he, 1
  %i.hg = ptrtoint ptr %i.n to i64
  %i.hh = xor i64 %i.hf, %i.hg
  %i.hi = xor i64 %i.hh, 1
  %i.hj = inttoptr i64 %i.hi to ptr
  store ptr %i.hj, ptr %1, align 8, !tbaa !92
  %i.hk = load i64, ptr %i.c, align 4             ; 2 uses
  %i.hl = and i64 %i.hk, 536870911
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.hm
  %i.ho = lshr i64 %i.hk, 29
  %i.hp = and i64 %i.ho, 1
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = xor i64 %i.hp, %i.hq
  %i.hs = xor i64 %i.hr, 1
  %i.ht = inttoptr i64 %i.hs to ptr
  store ptr %i.ht, ptr %2, align 8, !tbaa !92
  %i.hu = load i64, ptr %i.f, align 4             ; 2 uses
  %i.hv = and i64 %i.hu, 536870911
  %i.hw = sub nsw i64 0, %i.hv
  %i.hx = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.hw
  %i.hy = lshr i64 %i.hu, 29
  %i.hz = and i64 %i.hy, 1
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = xor i64 %i.hz, %i.ia
  %i.ic = inttoptr i64 %i.ib to ptr
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.id = lshr i64 %i.g, 29
  %i.ie = and i64 %i.id, 1
  %i.if = ptrtoint ptr %i.ce to i64
  %i.ig = xor i64 %i.ie, %i.if
  %i.ih = xor i64 %i.ig, 1
  %i.ii = inttoptr i64 %i.ih to ptr
  store ptr %i.ii, ptr %1, align 8, !tbaa !92
  %i.ij = load i64, ptr %i.f, align 4             ; 2 uses
  %i.ik = lshr i64 %i.ij, 32
  %i.il = and i64 %i.ik, 536870911
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.im
  %i.io = lshr i64 %i.ij, 61
  %i.ip = and i64 %i.io, 1
  %i.iq = ptrtoint ptr %i.in to i64
  %i.ir = xor i64 %i.ip, %i.iq
  %i.is = xor i64 %i.ir, 1
  %i.it = inttoptr i64 %i.is to ptr
  store ptr %i.it, ptr %2, align 8, !tbaa !92
  %i.iu = load i64, ptr %i.c, align 4             ; 2 uses
  %i.iv = lshr i64 %i.iu, 32
  %i.iw = and i64 %i.iv, 536870911
  %i.ix = sub nsw i64 0, %i.iw
  %i.iy = getelementptr inbounds [12 x i8], ptr %i.c, i64 %i.ix
  %i.iz = lshr i64 %i.iu, 61
  %i.ja = and i64 %i.iz, 1
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = xor i64 %i.ja, %i.jb
  %i.jd = inttoptr i64 %i.jc to ptr
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.t, %bb.s, %bb.o, %bb.n, %bb.j, %bb.i, %bb.e, %bb.d
  %.0 = phi ptr [ %i.az, %bb.d ], [ %i.cc, %bb.e ], [ %i.dp, %bb.i ], [ %i.ep, %bb.j ], [ %i.fx, %bb.n ], [ %i.gw, %bb.o ], [ %i.ic, %bb.s ], [ %i.jd, %bb.t ], [ null, %bb.p ], [ null, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManBfsForCrossCut(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val20 = load i32, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.c = add i32 %.val20, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val20 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !72
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #40
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !61
  %i.j = tail call ptr @Gia_ManLevelize(ptr noundef nonnull %0) #38 ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  %.val2235 = load i32, ptr %i.k, align 4, !tbaa !93 ; 2 uses
  %i.l = icmp sgt i32 %.val2235, 0
  br i1 %i.l, label %.lr.ph37, label %.critedge.i

.lr.ph37:                                         ; preds = %Vec_IntAlloc.exit
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = getelementptr i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph37, %.critedge2
  %.val2253 = phi i32 [ %.val2235, %.lr.ph37 ], [ %.val22, %.critedge2 ]
  %.promoted32 = phi ptr [ %i.h, %.lr.ph37 ], [ %.promoted3252, %.critedge2 ] ; 2 uses
  %.promoted29 = phi i32 [ %spec.store.select.i, %.lr.ph37 ], [ %.promoted2950, %.critedge2 ] ; 2 uses
  %.promoted = phi i32 [ 0, %.lr.ph37 ], [ %.promoted48, %.critedge2 ] ; 2 uses
  %indvars.iv44 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next45, %.critedge2 ] ; 2 uses
  %.val23 = load ptr, ptr %i.m, align 8, !tbaa !95
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val23, i64 %indvars.iv44
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4        ; 2 uses
  %.val26 = load i32, ptr %i.q, align 4, !tbaa !9
  %i.r = icmp sgt i32 %.val26, 0
  br i1 %i.r, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.p, i64 8
  %i.t = sext i32 %.promoted to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv39 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next40, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge33 = phi ptr [ %.promoted32, %.lr.ph ], [ %storemerge34, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i31 = phi i32 [ %.promoted29, %.lr.ph ], [ %spec.select.sink.i30, %Vec_IntPush.exit ] ; 3 uses
  %.val19 = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %indvars.iv39
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %.val21 = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %.val21 to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = trunc i64 %i.z to i32
  %i.ab = trunc nsw i64 %indvars.iv to i32
  %i.ac = icmp eq i32 %spec.select.sink.i31, %i.ab
  br i1 %i.ac, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp slt i64 %indvars.iv, 16
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge33, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge33, i64 noundef 64) #41
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ah = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ag, i32 %i.ah, i32 2147483647 ; 4 uses
  %i.ai = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ai
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %storemerge33, null
  %i.aj = zext nneg i32 %spec.select.i to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @realloc(ptr noundef nonnull %storemerge33, i64 noundef %i.ak) #41
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.j
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge34 = phi ptr [ %storemerge33, %bb.d ], [ %storemerge33, %bb.i ], [ %i.af, %bb.h ], [ %i.ae, %bb.g ], [ %i.al, %bb.k ], [ %i.am, %bb.l ] ; 4 uses
  %spec.select.sink.i30 = phi i32 [ %spec.select.sink.i31, %bb.d ], [ %spec.select.sink.i31, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %storemerge34, i64 %indvars.iv
  store i32 %i.aa, ptr %i.an, align 4, !tbaa !8
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %.val = load i32, ptr %i.q, align 4, !tbaa !9
  %i.ao = sext i32 %.val to i64
  %i.ap = icmp slt i64 %indvars.iv.next40, %i.ao
  br i1 %i.ap, label %bb.d, label %..critedge2_crit_edge, !llvm.loop !96

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !64
  store i32 %spec.select.sink.i30, ptr %i.b, align 8
  store ptr %storemerge34, ptr %i.i, align 8
  %.val22.pre = load i32, ptr %i.k, align 4, !tbaa !93
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.c
  %.val22 = phi i32 [ %.val22.pre, %..critedge2_crit_edge ], [ %.val2253, %bb.c ] ; 4 uses
  %.promoted3252 = phi ptr [ %storemerge34, %..critedge2_crit_edge ], [ %.promoted32, %bb.c ]
  %.promoted2950 = phi i32 [ %spec.select.sink.i30, %..critedge2_crit_edge ], [ %.promoted29, %bb.c ]
  %.promoted48 = phi i32 [ %i.aq, %..critedge2_crit_edge ], [ %.promoted, %bb.c ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.ar = sext i32 %.val22 to i64
  %i.as = icmp slt i64 %indvars.iv.next45, %i.ar
  br i1 %i.as, label %bb.c, label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %.critedge2
  %i.at = icmp sgt i32 %.val22, 0
  br i1 %i.at, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.au = getelementptr i8, ptr %i.j, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i
  %.val14.i = phi i32 [ %.val22, %.lr.ph.i ], [ %.val.i, %bb.p ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %.val8.i = load ptr, ptr %i.au, align 8, !tbaa !95
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !14 ; 3 uses
  %.not.i25 = icmp eq ptr %i.aw, null
  br i1 %.not.i25, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.ay) #38
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.o, %bb.n
  tail call void @free(ptr noundef nonnull %i.aw) #38
  %.val.pre.i = load i32, ptr %i.k, align 4, !tbaa !93
  br label %bb.p

bb.p:                                             ; preds = %Vec_PtrFree.exit.i, %bb.m
  %.val.i = phi i32 [ %.val14.i, %bb.m ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = sext i32 %.val.i to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %bb.m, label %.critedge.i, !llvm.loop !98

.critedge.i:                                      ; preds = %bb.p, %Vec_IntAlloc.exit, %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %.not.i9.i24 = icmp eq ptr %i.bc, null
  br i1 %.not.i9.i24, label %Vec_VecFree.exit, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.bc) #38
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.j) #38
  ret ptr %i.b
}

declare ptr @Gia_ManLevelize(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManDfsForCrossCut_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.d = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12                  ; 2 uses
  %sext.i = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext.i, 30
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.i, align 4, !tbaa !8
  %.val32 = load i64, ptr %1, align 4             ; 4 uses
  %i.m = and i64 %.val32, 2684354559
  %narrow.i.not = icmp eq i64 %i.m, 2684354559
  br i1 %narrow.i.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !64   ; 7 uses
  %i.p = load i32, ptr %2, align 8, !tbaa !72
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  store ptr %i.w, ptr %i.s, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i32 %i.o, 1073741823
  %i.y = shl nuw nsw i32 %i.o, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.o, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61  ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.aa, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %i.aa, i64 noundef %i.ac) #41
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %i.ad, %bb.j ], [ %i.ae, %bb.k ]
  store ptr %i.af, ptr %i.z, align 8, !tbaa !61
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !72
  %.pre54 = load i32, ptr %i.n, align 4, !tbaa !64
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ag = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.h ], [ %.pre54, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@Gia_ManDfsForCrossCut:bb.a
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val33.val = load ptr, ptr %i.ce, align 8, !tbaa !61
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val33.val, i64 %indvars.iv51
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [12 x i8], ptr %.val32, i64 %i.ch ; 3 uses
  %.not26 = icmp eq ptr %.val32, null
  br i1 %.not26, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph47
  %i.cj = load i64, ptr %i.ci, align 4
  %i.ck = and i64 %i.cj, 536870911
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds [12 x i8], ptr %i.ci, i64 %i.cl
  %.val36 = load i64, ptr %i.cm, align 4
  %i.cn = and i64 %.val36, 2305843005455597567
  %narrow.i40.not = icmp eq i64 %i.cn, 2305843005455597567
  br i1 %narrow.i40.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @Gia_ManDfsForCrossCut_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.y)
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !68
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.co = phi ptr [ %i.cd, %bb.m ], [ %.pre, %bb.n ] ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val30 = load i32, ptr %i.cp, align 4, !tbaa !64
  %i.cq = sext i32 %.val30 to i64
  %i.cr = icmp slt i64 %indvars.iv.next52, %i.cq
  br i1 %i.cr, label %.lr.ph47, label %.critedge, !llvm.loop !101

.critedge:                                        ; preds = %bb.l, %.lr.ph, %bb.o, %.lr.ph47, %bb.i, %.preheader
  ret ptr %i.y
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Gia_ManCrossCut(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = tail call ptr @Gia_ManDfsForCrossCut(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val45 = load i32, ptr %i.b, align 4, !tbaa !64 ; 2 uses
  %i.c = icmp sgt i32 %.val45, 0
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %.val44 = load ptr, ptr %i.d, align 8, !tbaa !61 ; 3 uses
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val41 = load ptr, ptr %i.e, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val41, null
  br i1 %.not, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val45 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.051 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.d ]
  %.02950 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.3, %bb.d ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [12 x i8], ptr %.val41, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52
  %.not35 = icmp ne i32 %i.k, 0
  %i.l = zext i1 %.not35 to i32
  %spec.select = add nsw i32 %.02950, %i.l        ; 4 uses
  %.1 = tail call i32 @llvm.smax.i32(i32 %.051, i32 %spec.select) ; 2 uses
  %.val42 = load i64, ptr %i.i, align 4           ; 3 uses
  %i.m = and i64 %.val42, 2147483648              ; 2 uses
  %.not.i = icmp eq i64 %i.m, 0
  %i.n = and i64 %.val42, 536870911               ; 3 uses
  %i.o = icmp ne i64 %i.n, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.o
  br i1 %narrow.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  %i.p = sub nsw i64 0, %i.n
  %i.q = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !52
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !52
  %i.u = icmp eq i32 %i.t, 0
  %i.v = sext i1 %i.u to i32
  %spec.select38 = add nsw i32 %spec.select, %i.v
  %i.w = lshr i64 %.val42, 32
  %i.x = and i64 %i.w, 536870911
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph.split
  %.not.i46 = icmp ne i64 %i.m, 0
  %narrow.i47 = and i1 %.not.i46, %i.o
  br i1 %narrow.i47, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink69 = phi i64 [ %i.x, %bb.b ], [ %i.n, %bb.c ]
  %spec.select38.sink = phi i32 [ %spec.select38, %bb.b ], [ %spec.select, %bb.c ]
  %i.y = sub nsw i64 0, %.sink69
  %i.z = getelementptr inbounds [12 x i8], ptr %i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !52
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = sext i1 %i.ad to i32
  %spec.select40 = add nsw i32 %spec.select38.sink, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.3 = phi i32 [ %spec.select, %bb.c ], [ %spec.select40, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph.split, !llvm.loop !102

.critedge:                                        ; preds = %bb.a, %.lr.ph
  %.not.i48 = icmp eq ptr %.val44, null
  br i1 %.not.i48, label %Vec_IntFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge
  %.0.lcssa62 = phi i32 [ 0, %.critedge ], [ %.1, %bb.d ]
  tail call void @free(ptr noundef nonnull %.val44) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  %.0.lcssa63 = phi i32 [ 0, %.critedge ], [ %.0.lcssa62, %.critedge.thread ]
  tail call void @free(ptr noundef nonnull %i.a) #38
  ret i32 %.0.lcssa63
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManCollectPoIds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val10 = load i32, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val11 = load ptr, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %i.c = getelementptr i8, ptr %.val11, i64 4
  %.val11.val = load i32, ptr %i.c, align 4, !tbaa !64 ; 2 uses
  %i.d = sub nsw i32 %.val11.val, %.val10         ; 2 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.f = add i32 %i.d, -1
  %or.cond.i = icmp ult i32 %i.f, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.d ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !64
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !72
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted20 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.promoted20, ptr %i.k, align 8, !tbaa !61
  %i.l = icmp sgt i32 %.val11.val, %.val10
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit, %Vec_IntPush.exit
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 7 uses
  %storemerge21 = phi ptr [ %storemerge22, %Vec_IntPush.exit ], [ %.promoted20, %Vec_IntAlloc.exit ] ; 6 uses
  %spec.select.sink.i19 = phi i32 [ %spec.select.sink.i18, %Vec_IntPush.exit ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 3 uses
  %.val916 = phi ptr [ %.val9, %Vec_IntPush.exit ], [ %.val11, %Vec_IntAlloc.exit ]
  %i.m = getelementptr i8, ptr %.val916, i64 8
  %.val = load ptr, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv23
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = icmp eq i32 %spec.select.sink.i19, %i.p
  br i1 %i.q, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %.lr.ph
  %i.r = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %storemerge21, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge21, i64 noundef 64) #41
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 4 uses
  %i.w = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.w
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %storemerge21, null
  %i.x = zext nneg i32 %spec.select.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = tail call ptr @realloc(ptr noundef nonnull %storemerge21, i64 noundef %i.y) #41
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %.lr.ph, %bb.g
  %storemerge22 = phi ptr [ %storemerge21, %.lr.ph ], [ %storemerge21, %bb.g ], [ %i.t, %bb.f ], [ %i.s, %bb.e ], [ %i.z, %bb.i ], [ %i.aa, %bb.j ] ; 3 uses
  %spec.select.sink.i18 = phi i32 [ %spec.select.sink.i19, %.lr.ph ], [ %spec.select.sink.i19, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %storemerge22, i64 %indvars.iv
  store i32 %i.o, ptr %i.ab, align 4, !tbaa !8
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %.val8 = load i32, ptr %i.a, align 8, !tbaa !103
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val9, i64 4
  %.val9.val = load i32, ptr %i.ac, align 4, !tbaa !64
  %i.ad = sub nsw i32 %.val9.val, %.val8
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next24, %i.ae
  br i1 %i.af, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !104

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit
  %i.ag = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !64
  store i32 %spec.select.sink.i18, ptr %i.e, align 8
  store ptr %storemerge22, ptr %i.k, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %Vec_IntAlloc.exit
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @Gia_ObjRecognizeMuxLits(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #23 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  %i.c = call ptr @Gia_ObjRecognizeMux(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val8 = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = and i64 %i.f, -2
  %i.h = ptrtoint ptr %.val8 to i64               ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %i.k = trunc i64 %i.j to i32
  %i.l = trunc i64 %i.f to i32
  %i.m = and i32 %i.l, 1
  %i.n = shl nsw i32 %i.k, 1
  %i.o = or disjoint i32 %i.n, %i.m
  store i32 %i.o, ptr %2, align 4, !tbaa !8
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = and i64 %i.q, -2
  %i.s = sub i64 %i.r, %i.h
  %i.t = sdiv exact i64 %i.s, 12
  %i.u = trunc i64 %i.t to i32
  %i.v = trunc i64 %i.q to i32
  %i.w = and i32 %i.v, 1
  %i.x = shl nsw i32 %i.u, 1
  %i.y = or disjoint i32 %i.x, %i.w
  store i32 %i.y, ptr %3, align 4, !tbaa !8
  %i.z = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.aa = and i64 %i.z, -2
  %i.ab = sub i64 %i.aa, %i.h
  %i.ac = sdiv exact i64 %i.ab, 12
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = trunc i64 %i.z to i32
  %i.af = and i32 %i.ae, 1
  %i.ag = shl nsw i32 %i.ad, 1
  %i.ah = or disjoint i32 %i.ag, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret i32 %i.ah
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Gia_NodeDeref_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #24 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.a = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.a, 2684354559
  br i1 %narrow.i.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %.val, 536870911
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds [12 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val17 = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %.val18 = load ptr, ptr %i.f, align 8, !tbaa !88 ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %.val17 to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %sext.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i, 30
  %i.l = getelementptr inbounds i8, ptr %.val18, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !tbaa !8
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @Gia_NodeDeref_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %.val15.pre = load ptr, ptr %i.e, align 8, !tbaa !46
  %.val16.pre = load ptr, ptr %i.f, align 8, !tbaa !88
  %.pre = ptrtoint ptr %.val15.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.val16 = phi ptr [ %.val16.pre, %bb.c ], [ %.val18, %bb.b ]
  %.0 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ]     ; 2 uses
  %i.q = load i64, ptr %1, align 4
  %i.r = lshr i64 %i.q, 32
  %i.s = and i64 %i.r, 536870911
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [12 x i8], ptr %1, i64 %i.t ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %.pre-phi
  %i.x = sdiv exact i64 %i.w, 12
  %sext.i19 = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext.i19, 30
  %i.z = getelementptr inbounds i8, ptr %.val16, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !8
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i32 @Gia_NodeDeref_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  %i.ae = add nsw i32 %i.ad, %.0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.ae, %bb.e ], [ %.0, %bb.d ]
  %i.af = add nsw i32 %.1, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  %.014 = phi i32 [ %i.af, %bb.f ], [ 0, %bb.a ]
  ret i32 %.014
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @Gia_NodeRef_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #24 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.a = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.a, 2684354559
  br i1 %narrow.i.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 32
  %.val23.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %.pre30 = ptrtoint ptr %.val23.pre to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 12
  %sext.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i, 30
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  store i32 %i.c, ptr %i.l, align 4, !tbaa !8
  %.pre = load i64, ptr %1, align 4
  br label %bb.d
end_hunk_1
begin_hunk_2_@Gia_ManGroupProve:bb.a
  %i.bu = call i32 @Cmd_CommandExecute(ptr noundef %i.b, ptr noundef %1) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #38
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %Abc_Clock.exit89, label %bb.h

bb.h:                                             ; preds = %Abc_Clock.exit87
  %i.bx = load i64, ptr %5, align 8, !tbaa !133
  %i.by = mul nsw i64 %i.bx, 1000000
  %i.bz = load i64, ptr %i.av, align 8, !tbaa !135
  %i.ca = sdiv i64 %i.bz, 1000
  %i.cb = add nsw i64 %i.ca, %i.by
  br label %Abc_Clock.exit89

Abc_Clock.exit89:                                 ; preds = %Abc_Clock.exit87, %bb.h
  %.0.i88 = phi i64 [ %i.cb, %bb.h ], [ -1, %Abc_Clock.exit87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.cc = add i64 %.0.i86.neg, %.0160
  %i.cd = add i64 %i.cc, %.0.i88                  ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %Abc_Clock.exit89
  %i.ce = call i32 @Abc_FrameReadProbStatus(ptr noundef %i.b) #38
  %i.cf = icmp eq i32 %i.bc, %i.ba
  br i1 %i.cf, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %i.cg = icmp slt i32 %i.ba, 16
  br i1 %i.cg, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.bb, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef 64) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ci = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.cj = icmp samesign ult i32 %i.ba, 1073741823
  %i.ck = shl nuw nsw i32 %i.ba, 1
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ba, %spec.select.i
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %i.bb, null
  %i.cl = zext nneg i32 %spec.select.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = call ptr @realloc(ptr noundef nonnull %i.bb, i64 noundef %i.cm) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.co = call noalias ptr @malloc(i64 noundef %i.cm) #40
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %storemerge147 = phi ptr [ %i.ci, %bb.m ], [ %i.ch, %bb.l ], [ %i.cn, %bb.p ], [ %i.co, %bb.q ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ] ; 2 uses
  store ptr %storemerge147, ptr %i.ag, align 8, !tbaa !61
  store i32 %spec.select.sink.i, ptr %i.aa, align 8, !tbaa !72
  %.pre183 = load ptr, ptr %i.a, align 8, !tbaa !156
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.cp = phi ptr [ %i.ay, %bb.i ], [ %i.ay, %bb.n ], [ %.pre183, %Vec_IntGrow.exit11.sink.split.i ] ; 7 uses
  %i.cq = phi ptr [ %i.az, %bb.i ], [ %i.az, %bb.n ], [ %storemerge147, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.cr = phi i32 [ %i.ba, %bb.i ], [ %i.ba, %bb.n ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cs = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.cs, ptr %i.ab, align 4, !tbaa !64
  %i.ct = sext i32 %i.bc to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.ct
  store i32 %i.ce, ptr %i.cu, align 4, !tbaa !8
  %i.cv = call ptr @Abc_FrameReadCex(ptr noundef %i.b) #38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !9  ; 7 uses
  %i.cy = load i32, ptr %i.cp, align 8, !tbaa !19
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.r, label %Vec_PtrPush.exit

bb.r:                                             ; preds = %Vec_IntPush.exit
  %i.da = icmp slt i32 %i.cx, 16
  br i1 %i.da, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i92 = icmp eq ptr %i.dc, null
  br i1 %.not9.i.i92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef 128) #41
  br label %Vec_PtrGrow.exit.i

bb.u:                                             ; preds = %bb.s
  %i.de = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #40
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.u, %bb.t
  %i.df = phi ptr [ %i.dd, %bb.t ], [ %i.de, %bb.u ]
  store ptr %i.df, ptr %i.db, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i

bb.v:                                             ; preds = %bb.r
  %i.dg = icmp samesign ult i32 %i.cx, 1073741823
  %i.dh = shl nuw nsw i32 %i.cx, 1
  %spec.select.i90 = select i1 %i.dg, i32 %i.dh, i32 2147483647 ; 3 uses
  %.not.i10.i = icmp samesign ult i32 %i.cx, %spec.select.i90
  br i1 %.not.i10.i, label %bb.w, label %Vec_PtrPush.exit

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i = icmp eq ptr %i.dj, null
  %i.dk = zext nneg i32 %spec.select.i90 to i64
  %i.dl = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = call ptr @realloc(ptr noundef nonnull %i.dj, i64 noundef %i.dl) #41
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dn = call noalias ptr @malloc(i64 noundef %i.dl) #40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.do = phi ptr [ %i.dm, %bb.x ], [ %i.dn, %bb.y ]
  store ptr %i.do, ptr %i.di, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i

Vec_PtrGrow.exit12.sink.split.i:                  ; preds = %bb.z, %Vec_PtrGrow.exit.i
  %spec.select.sink.i91 = phi i32 [ %spec.select.i90, %bb.z ], [ 16, %Vec_PtrGrow.exit.i ]
  store i32 %spec.select.sink.i91, ptr %i.cp, align 8, !tbaa !19
  %.pre184 = load i32, ptr %i.cw, align 4, !tbaa !9
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %Vec_IntPush.exit, %bb.v, %Vec_PtrGrow.exit12.sink.split.i
  %i.dp = phi i32 [ %i.cx, %Vec_IntPush.exit ], [ %i.cx, %bb.v ], [ %.pre184, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !13
  %i.ds = add nsw i32 %i.dp, 1
  store i32 %i.ds, ptr %i.cw, align 4, !tbaa !9
  %i.dt = sext i32 %i.dp to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dt
  store ptr %i.cv, ptr %i.du, align 8, !tbaa !14
  br label %.loopexit

bb.aa:                                            ; preds = %Abc_Clock.exit89
  %i.dv = call ptr @Abc_FrameReadPoStatuses(ptr noundef %i.b) #38
  %i.dw = call ptr @Abc_FrameReadCexVec(ptr noundef %i.b) #38 ; 2 uses
  %i.dx = icmp sgt i32 %i.bl, 0
  br i1 %i.dx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aa
  %i.dy = getelementptr i8, ptr %i.dv, i64 8
  %.not = icmp eq ptr %i.dw, null
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %i.ea = sext i32 %i.bc to i64
  %i.eb = zext nneg i32 %i.bl to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %Vec_PtrPush.exit108
  %indvars.iv167 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next168, %Vec_PtrPush.exit108 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit108 ] ; 7 uses
  %storemerge157 = phi ptr [ %i.bb, %.lr.ph ], [ %storemerge158, %Vec_PtrPush.exit108 ] ; 6 uses
  %spec.select.sink.i97155 = phi i32 [ %.promoted153, %.lr.ph ], [ %spec.select.sink.i97154, %Vec_PtrPush.exit108 ] ; 3 uses
  %.val65 = load ptr, ptr %i.dy, align 8, !tbaa !61
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val65, i64 %indvars.iv167
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = trunc nsw i64 %indvars.iv to i32
  %i.ef = icmp eq i32 %spec.select.sink.i97155, %i.ee
  br i1 %i.ef, label %bb.ac, label %Vec_IntPush.exit100

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp slt i64 %indvars.iv, 16
  br i1 %i.eg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %.not9.i.i98 = icmp eq ptr %storemerge157, null
  br i1 %.not9.i.i98, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge157, i64 noundef 64) #41
  br label %Vec_IntPush.exit100

bb.af:                                            ; preds = %bb.ad
  %i.ei = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntPush.exit100

bb.ag:                                            ; preds = %bb.ac
  %i.ej = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ek = shl i32 %indvars.iv.tr, 1
  %spec.select.i93 = select i1 %i.ej, i32 %i.ek, i32 2147483647 ; 4 uses
  %i.el = sext i32 %spec.select.i93 to i64
  %.not.i9.i94 = icmp samesign ult i64 %indvars.iv, %i.el
  br i1 %.not.i9.i94, label %bb.ah, label %Vec_IntPush.exit100

bb.ah:                                            ; preds = %bb.ag
  %.not9.i10.i95 = icmp eq ptr %storemerge157, null
  %i.em = zext nneg i32 %spec.select.i93 to i64
  %i.en = shl nuw nsw i64 %i.em, 2                ; 2 uses
  br i1 %.not9.i10.i95, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = call ptr @realloc(ptr noundef nonnull %storemerge157, i64 noundef %i.en) #41
  br label %Vec_IntPush.exit100

bb.aj:                                            ; preds = %bb.ah
  %i.ep = call noalias ptr @malloc(i64 noundef %i.en) #40
  br label %Vec_IntPush.exit100

Vec_IntPush.exit100:                              ; preds = %bb.af, %bb.ae, %bb.aj, %bb.ai, %bb.ab, %bb.ag
  %storemerge158 = phi ptr [ %storemerge157, %bb.ab ], [ %storemerge157, %bb.ag ], [ %i.ei, %bb.af ], [ %i.eh, %bb.ae ], [ %i.eo, %bb.ai ], [ %i.ep, %bb.aj ] ; 5 uses
  %spec.select.sink.i97154 = phi i32 [ %spec.select.sink.i97155, %bb.ab ], [ %spec.select.sink.i97155, %bb.ag ], [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i93, %bb.ai ], [ %spec.select.i93, %bb.aj ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %storemerge158, i64 %indvars.iv
  store i32 %i.ed, ptr %i.eq, align 4, !tbaa !8
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !156 ; 7 uses
  br i1 %.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %Vec_IntPush.exit100
  %.val64 = load ptr, ptr %i.dz, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv167
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !14
  br label %bb.al

bb.al:                                            ; preds = %Vec_IntPush.exit100, %bb.ak
  %i.eu = phi ptr [ %i.et, %bb.ak ], [ null, %Vec_IntPush.exit100 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !9  ; 7 uses
  %i.ex = load i32, ptr %i.er, align 8, !tbaa !19
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.am, label %Vec_PtrPush.exit108

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp slt i32 %i.ew, 16
  br i1 %i.ez, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i106 = icmp eq ptr %i.fb, null
  br i1 %.not9.i.i106, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.fb, i64 noundef 128) #41
  br label %Vec_PtrGrow.exit.i107

bb.ap:                                            ; preds = %bb.an
  %i.fd = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #40
  br label %Vec_PtrGrow.exit.i107

Vec_PtrGrow.exit.i107:                            ; preds = %bb.ap, %bb.ao
  %i.fe = phi ptr [ %i.fc, %bb.ao ], [ %i.fd, %bb.ap ]
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i104

bb.aq:                                            ; preds = %bb.am
  %i.ff = icmp samesign ult i32 %i.ew, 1073741823
  %i.fg = shl nuw nsw i32 %i.ew, 1
  %spec.select.i101 = select i1 %i.ff, i32 %i.fg, i32 2147483647 ; 3 uses
  %.not.i10.i102 = icmp samesign ult i32 %i.ew, %spec.select.i101
  br i1 %.not.i10.i102, label %bb.ar, label %Vec_PtrPush.exit108

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !13 ; 2 uses
  %.not9.i11.i103 = icmp eq ptr %i.fi, null
  %i.fj = zext nneg i32 %spec.select.i101 to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3                ; 2 uses
  br i1 %.not9.i11.i103, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = call ptr @realloc(ptr noundef nonnull %i.fi, i64 noundef %i.fk) #41
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fm = call noalias ptr @malloc(i64 noundef %i.fk) #40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fn = phi ptr [ %i.fl, %bb.as ], [ %i.fm, %bb.at ]
  store ptr %i.fn, ptr %i.fh, align 8, !tbaa !13
  br label %Vec_PtrGrow.exit12.sink.split.i104

Vec_PtrGrow.exit12.sink.split.i104:               ; preds = %bb.au, %Vec_PtrGrow.exit.i107
  %spec.select.sink.i105 = phi i32 [ %spec.select.i101, %bb.au ], [ 16, %Vec_PtrGrow.exit.i107 ]
  store i32 %spec.select.sink.i105, ptr %i.er, align 8, !tbaa !19
  %.pre = load i32, ptr %i.ev, align 4, !tbaa !9
  br label %Vec_PtrPush.exit108

Vec_PtrPush.exit108:                              ; preds = %bb.al, %bb.aq, %Vec_PtrGrow.exit12.sink.split.i104
  %i.fo = phi i32 [ %i.ew, %bb.al ], [ %i.ew, %bb.aq ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i104 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !13
  %i.fr = add nsw i32 %i.fo, 1
  store i32 %i.fr, ptr %i.ev, align 4, !tbaa !9
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.fs
  store ptr %i.eu, ptr %i.ft, align 8, !tbaa !14
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next168, %i.eb
  br i1 %i.fu, label %bb.ab, label %..loopexit_crit_edge, !llvm.loop !157

..loopexit_crit_edge:                             ; preds = %Vec_PtrPush.exit108
  %i.fv = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.fv, ptr %i.ab, align 4, !tbaa !64
  store i32 %spec.select.sink.i97154, ptr %i.aa, align 8
  store ptr %storemerge158, ptr %i.ag, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %..loopexit_crit_edge, %Vec_PtrPush.exit
  %i.fw = phi ptr [ %i.ay, %bb.aa ], [ %i.er, %..loopexit_crit_edge ], [ %i.cp, %Vec_PtrPush.exit ] ; 5 uses
  %i.fx = phi ptr [ %i.az, %bb.aa ], [ %storemerge158, %..loopexit_crit_edge ], [ %i.cq, %Vec_PtrPush.exit ]
  %i.fy = phi i32 [ %i.ba, %bb.aa ], [ %spec.select.sink.i97154, %..loopexit_crit_edge ], [ %i.cr, %Vec_PtrPush.exit ]
  %.promoted156182 = phi ptr [ %i.bb, %bb.aa ], [ %storemerge158, %..loopexit_crit_edge ], [ %i.cq, %Vec_PtrPush.exit ]
  %.promoted153179 = phi i32 [ %.promoted153, %bb.aa ], [ %spec.select.sink.i97154, %..loopexit_crit_edge ], [ %i.cr, %Vec_PtrPush.exit ]
  %.promoted177 = phi i32 [ %i.bc, %bb.aa ], [ %i.fv, %..loopexit_crit_edge ], [ %i.cs, %Vec_PtrPush.exit ]
  %exitcond.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !158

._crit_edge:                                      ; preds = %.loopexit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.pre185 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !9 ; 4 uses
  %i.fz = sitofp i64 %i.cd to double              ; 3 uses
  %i.ga = icmp sgt i32 %.pre185, 0
  br i1 %i.ga, label %.lr.ph.i109, label %Vec_PtrCountZero.exit.thread

.lr.ph.i109:                                      ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !13 ; 2 uses
  %wide.trip.count.i110 = zext nneg i32 %.pre185 to i64 ; 3 uses
  %min.iters.check226 = icmp ult i32 %.pre185, 4
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph.i109
  %n.vec228 = and i64 %wide.trip.count.i110, 2147483644 ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.gj, %vector.body229 ]
  %vec.phi231 = phi <2 x i32> [ zeroinitializer, %vector.ph227 ], [ %i.gk, %vector.body229 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %index230 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !14
  %wide.load232 = load <2 x ptr>, ptr %i.ge, align 8, !tbaa !14
  %i.gf = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.gg = icmp eq <2 x ptr> %wide.load232, splat (ptr null)
  %i.gh = zext <2 x i1> %i.gf to <2 x i32>
  %i.gi = zext <2 x i1> %i.gg to <2 x i32>
  %i.gj = add <2 x i32> %vec.phi, %i.gh           ; 2 uses
  %i.gk = add <2 x i32> %vec.phi231, %i.gi        ; 2 uses
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.gl, label %middle.block234, label %vector.body229, !llvm.loop !159

middle.block234:                                  ; preds = %vector.body229
  %bin.rdx = add <2 x i32> %i.gk, %i.gj
  %i.gm = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n235 = icmp eq i64 %n.vec228, %wide.trip.count.i110
  br i1 %cmp.n235, label %Vec_PtrCountZero.exit, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %.lr.ph.i109, %middle.block234
  %indvars.iv.i111.ph = phi i64 [ 0, %.lr.ph.i109 ], [ %n.vec228, %middle.block234 ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i109 ], [ %i.gm, %middle.block234 ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i112, %scalar.ph225 ], [ %indvars.iv.i111.ph, %scalar.ph225.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.gr, %scalar.ph225 ], [ %.08.i.ph, %scalar.ph225.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i111
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !14
  %i.gp = icmp eq ptr %i.go, null
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nuw nsw i32 %.08.i, %i.gq           ; 2 uses
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i110
  br i1 %exitcond.not.i113, label %Vec_PtrCountZero.exit, label %scalar.ph225, !llvm.loop !160

Vec_PtrCountZero.exit:                            ; preds = %scalar.ph225, %middle.block234
  %.lcssa221 = phi i32 [ %i.gm, %middle.block234 ], [ %i.gr, %scalar.ph225 ]
  %i.gs = icmp slt i32 %.lcssa221, %.pre185
  br i1 %i.gs, label %bb.av, label %Vec_PtrCountZero.exit.thread

bb.av:                                            ; preds = %Vec_PtrCountZero.exit
  call void @Abc_FrameReplaceCexVec(ptr noundef %i.b, ptr noundef nonnull %i.a) #38
  br label %bb.ax

Vec_PtrCountZero.exit.thread:                     ; preds = %Vec_PtrAlloc.exit, %._crit_edge, %Vec_PtrCountZero.exit
  %i.gt = phi ptr [ %i.fw, %Vec_PtrCountZero.exit ], [ %i.fw, %._crit_edge ], [ %i.ah, %Vec_PtrAlloc.exit ] ; 2 uses
  %.0.lcssa208212 = phi double [ %i.fz, %Vec_PtrCountZero.exit ], [ %i.fz, %._crit_edge ], [ 0.000000e+00, %Vec_PtrAlloc.exit ]
end_hunk_2
begin_hunk_3_@Gia_ManPoXSim:bb.a

bb.u:                                             ; preds = %.critedge12
  %i.fs = add nuw nsw i32 %.084200, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fs, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.preheader157, !llvm.loop !182

._crit_edge:                                      ; preds = %.critedge
  %.not100 = icmp eq i32 %2, 0
  br i1 %.not100, label %bb.w, label %bb.v

._crit_edge.thread:                               ; preds = %bb.u
  %.not100251 = icmp eq i32 %2, 0
  br i1 %.not100251, label %bb.w, label %.thread254

.thread149:                                       ; preds = %.critedge12
  br i1 %.not97, label %bb.w, label %.thread153

bb.v:                                             ; preds = %._crit_edge
  %i.ft = icmp eq i32 %i.d, 0
  br i1 %i.ft, label %.thread153, label %.thread254

.thread153:                                       ; preds = %.thread149, %bb.v
  %.084162 = phi i32 [ %.084200, %.thread149 ], [ 0, %bb.v ]
  %i.fu = add nuw nsw i32 %.084162, 1
  %i.fv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %i.fu) ; 0 uses
  br label %bb.w

.thread254:                                       ; preds = %._crit_edge.thread, %bb.v
  %i.fw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %1) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.thread, %.thread149, %.thread153, %.thread254, %._crit_edge
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define void @Gia_AigerWriteLut(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @Gia_ManLutSizeMax(ptr noundef %0) #38 ; 2 uses
  %i.b = icmp slt i32 %i.a, 6
  %i.c = add nsw i32 %i.a, -5
  %i.d = shl nuw i32 1, %i.c
  %i.e = select i1 %i.b, i32 1, i32 %i.d
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val131 = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr i8, ptr %.val131, i64 4
  %.val131.val = load i32, ptr %i.g, align 4, !tbaa !64
  %i.h = add nsw i32 %.val131.val, 1
  %i.i = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val130 = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr i8, ptr %.val130, i64 4
  %.val130.val = load i32, ptr %i.j, align 4, !tbaa !64
  %i.k = add nsw i32 %i.h, %.val130.val
  %i.l = tail call i32 @Gia_ManLutNum(ptr noundef %0) #38
  %i.m = add nsw i32 %i.k, %i.l                   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 84) #42 ; 10 uses
  %i.p = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i32, ptr %i.p, align 8, !tbaa !42  ; 8 uses
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.r = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.r, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.q, align 8, !tbaa !183
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %spec.store.select.i.i to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #40
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8, !tbaa !186
  store i32 %.val, ptr %i.w, align 4, !tbaa !187
  %i.y = sext i32 %.val to i64
  %i.z = shl nsw i64 %i.y, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.z, i1 false)
  store i32 3, ptr %i.o, align 4, !tbaa !188
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ab = sext i32 %i.e to i64
  %i.ac = shl nsw i64 %i.ab, 2                    ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 -1, i64 %i.ac, i1 false)
  %i.ad = icmp sgt i32 %.val, 0                   ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %.val136.fr = freeze ptr %i.af                  ; 14 uses
  br i1 %i.ad, label %.lr.ph.i, label %Gia_ManFillValue.exit

.lr.ph.i:                                         ; preds = %Vec_WrdStart.exit
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.ag = icmp ult i32 %.val, 8
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.c ]
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 -1, ptr %i.ai, align 4, !tbaa !52
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store i32 -1, ptr %i.ak, align 4, !tbaa !52
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 -1, ptr %i.am, align 4, !tbaa !52
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  store i32 -1, ptr %i.ao, align 4, !tbaa !52
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i32 -1, ptr %i.aq, align 4, !tbaa !52
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  store i32 -1, ptr %i.as, align 4, !tbaa !52
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i32 -1, ptr %i.au, align 4, !tbaa !52
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 92
  store i32 -1, ptr %i.aw, align 4, !tbaa !52
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %Gia_ManFillValue.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !57

Gia_ManFillValue.exit.loopexit.unr-lcssa:         ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Gia_ManFillValue.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Gia_ManFillValue.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %Gia_ManFillValue.exit.loopexit.unr-lcssa ]
  %lcmp.mod181 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.val136.fr, i64 %indvars.iv.i.epil
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 -1, ptr %i.ay, align 4, !tbaa !52
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Gia_ManFillValue.exit, label %bb.d, !llvm.loop !190

Gia_ManFillValue.exit:                            ; preds = %Gia_ManFillValue.exit.loopexit.unr-lcssa, %bb.d, %Vec_WrdStart.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !191
  %i.ba = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val136.fr, i64 8
  store i32 0, ptr %i.bb, align 4, !tbaa !52
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !63  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  %.val125 = load i32, ptr %i.bd, align 4, !tbaa !64 ; 4 uses
  %.not = icmp eq ptr %.val136.fr, null
  %i.be = icmp slt i32 %.val125, 1
  %or.cond138 = or i1 %.not, %i.be
  br i1 %or.cond138, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %Gia_ManFillValue.exit
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %.val127.val = load ptr, ptr %i.bf, align 8, !tbaa !61 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val125 to i64 ; 2 uses
  %xtraiter182 = and i64 %wide.trip.count, 1
  %i.bg = icmp eq i32 %.val125, 1
  br i1 %i.bg, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter187 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.split

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split
  %lcmp.mod184.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod184.not, label %.critedge.preheader.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv155.epil.init = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next156.1, %.critedge.preheader.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %.val125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.val127.val, i64 %indvars.iv.epil.init
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [12 x i8], ptr %.val136.fr, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [84 x i8], ptr %i.o, i64 %indvars.iv155.epil.init ; 3 uses
  store i32 1, ptr %i.bl, align 4, !tbaa !188
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bm, i8 -86, i64 %i.ac, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %indvars.iv155.tr.epil = trunc i64 %indvars.iv155.epil.init to i32
  %i.bo = shl i32 %indvars.iv155.tr.epil, 1       ; 2 uses
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !191
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !52
  %indvars.iv.next156.epil = add nuw nsw i64 %indvars.iv155.epil.init, 1
  br label %.critedge.preheader.loopexit

.critedge.preheader.loopexit:                     ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.epil.preheader
  %indvars.iv.next156.lcssa = phi i64 [ %indvars.iv.next156.1, %.critedge.preheader.loopexit.unr-lcssa ], [ %indvars.iv.next156.epil, %.lr.ph.split.epil.preheader ]
  %i.bq = trunc nuw i64 %indvars.iv.next156.lcssa to i32
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit, %Gia_ManFillValue.exit
  %.0108.lcssa = phi i32 [ 1, %Gia_ManFillValue.exit ], [ %i.bq, %.critedge.preheader.loopexit ] ; 2 uses
  br i1 %i.ad, label %.lr.ph146, label %.critedge2

.lr.ph146:                                        ; preds = %.critedge.preheader
  %i.br = getelementptr i8, ptr %0, i64 264
  br label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv155 = phi i64 [ 1, %.lr.ph.split.preheader.new ], [ %indvars.iv.next156.1, %.lr.ph.split ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %niter188 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter188.next.1, %.lr.ph.split ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val127.val, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [12 x i8], ptr %.val136.fr, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [84 x i8], ptr %i.o, i64 %indvars.iv155 ; 3 uses
  store i32 1, ptr %i.bw, align 4, !tbaa !188
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bx, i8 -86, i64 %i.ac, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %indvars.iv155.tr = trunc i64 %indvars.iv155 to i32
  %i.bz = shl i32 %indvars.iv155.tr, 1            ; 2 uses
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !191
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !52
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val127.val, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [12 x i8], ptr %.val136.fr, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [84 x i8], ptr %i.o, i64 %indvars.iv.next156 ; 3 uses
  store i32 1, ptr %i.cg, align 4, !tbaa !188
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ch, i8 -86, i64 %i.ac, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %indvars.iv155.tr.1 = trunc i64 %indvars.iv.next156 to i32
  %i.cj = shl i32 %indvars.iv155.tr.1, 1          ; 2 uses
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !191
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !52
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter188.next.1 = add nuw i64 %niter188, 2     ; 2 uses
  %niter188.ncmp.1 = icmp eq i64 %niter188.next.1, %unroll_iter187
  br i1 %niter188.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !192

bb.e:                                             ; preds = %.lr.ph146, %.critedge
  %i.cl = phi i32 [ %.val, %.lr.ph146 ], [ %i.eq, %.critedge ] ; 2 uses
  %indvars.iv165 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next166, %.critedge ] ; 5 uses
  %.1109144 = phi i32 [ %.0108.lcssa, %.lr.ph146 ], [ %.2110, %.critedge ] ; 6 uses
  %.val122 = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 7 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %.val122, i64 %indvars.iv165
  %.not116 = icmp eq ptr %.val122, null
  br i1 %.not116, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not119 = icmp eq i64 %indvars.iv165, 0
  br i1 %.not119, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val133 = load ptr, ptr %i.br, align 8, !tbaa !108
  %i.cn = getelementptr i8, ptr %.val133, i64 8
  %.val133.val = load ptr, ptr %i.cn, align 8, !tbaa !61 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val133.val, i64 %indvars.iv165
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8  ; 2 uses
  %.not137 = icmp eq i32 %i.cp, 0
  br i1 %.not137, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cq = sext i32 %.1109144 to i64
  %i.cr = getelementptr inbounds [84 x i8], ptr %i.o, i64 %i.cq ; 5 uses
  store i32 3, ptr %i.cr, align 4, !tbaa !188
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %.val133.val, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8  ; 5 uses
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph142, label %.critedge4

.lr.ph142:                                        ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 20 ; 5 uses
  %wide.trip.count163 = zext nneg i32 %i.cu to i64 ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count163, 3   ; 3 uses
  %i.cy = icmp ult i32 %i.cu, 4
  br i1 %i.cy, label %.epil.preheader189, label %.lr.ph142.new

.lr.ph142.new:                                    ; preds = %.lr.ph142
  %unroll_iter194 = and i64 %wide.trip.count163, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph142.new
  %indvars.iv160 = phi i64 [ 0, %.lr.ph142.new ], [ %indvars.iv.next161.3, %bb.i ] ; 6 uses
  %niter195 = phi i64 [ 0, %.lr.ph142.new ], [ %niter195.next.3, %bb.i ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv160
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !8
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !52
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv160
  store i32 %i.de, ptr %i.df, align 4, !tbaa !8
  %indvars.iv.next161 = or disjoint i64 %indvars.iv160, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next161
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !52
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next161
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !8
  %indvars.iv.next161.1 = or disjoint i64 %indvars.iv160, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next161.1
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next161.1
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !8
  %indvars.iv.next161.2 = or disjoint i64 %indvars.iv160, 3 ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next161.2
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !52
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next161.2
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %niter195.next.3 = add i64 %niter195, 4         ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %.critedge4.loopexit.unr-lcssa, label %bb.i, !llvm.loop !193

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.i
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.critedge4, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph142
  %indvars.iv160.epil.init = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next161.3, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod193 = icmp ne i64 %xtraiter190, 0
  tail call void @llvm.assume(i1 %lcmp.mod193)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader189
  %indvars.iv160.epil = phi i64 [ %indvars.iv160.epil.init, %.epil.preheader189 ], [ %indvars.iv.next161.epil, %bb.j ] ; 3 uses
  %epil.iter191 = phi i64 [ 0, %.epil.preheader189 ], [ %epil.iter191.next, %bb.j ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv160.epil
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [12 x i8], ptr %.val122, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !52
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv160.epil
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next161.epil = add nuw nsw i64 %indvars.iv160.epil, 1
  %epil.iter191.next = add i64 %epil.iter191, 1   ; 2 uses
  %epil.iter191.cmp.not = icmp eq i64 %epil.iter191.next, %xtraiter190
  br i1 %epil.iter191.cmp.not, label %.critedge4, label %bb.j, !llvm.loop !194

.critedge4:                                       ; preds = %.critedge4.loopexit.unr-lcssa, %bb.j, %bb.h
  %.0111.lcssa = phi i32 [ 0, %bb.h ], [ %i.cu, %bb.j ], [ %i.cu, %.critedge4.loopexit.unr-lcssa ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %.0111.lcssa, ptr %i.ei, align 4, !tbaa !195
  %i.ej = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.ek = tail call i64 @Gia_LutComputeTruth6(ptr noundef nonnull %0, i32 noundef %i.ej, ptr noundef nonnull %i.q) #38
  %i.el = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  store i64 %i.ek, ptr %i.el, align 4
  %i.em = shl nsw i32 %.1109144, 1                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !191
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.em, ptr %i.eo, align 4, !tbaa !52
  %i.ep = add nsw i32 %.1109144, 1
  %.pre = load i32, ptr %i.p, align 8, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %.critedge4
  %i.eq = phi i32 [ %.pre, %.critedge4 ], [ %i.cl, %bb.g ], [ %i.cl, %bb.f ] ; 2 uses
  %.2110 = phi i32 [ %i.ep, %.critedge4 ], [ %.1109144, %bb.g ], [ %.1109144, %bb.f ] ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next166, %i.er
  br i1 %i.es, label %bb.e, label %.critedge2, !llvm.loop !196

.critedge2:                                       ; preds = %bb.e, %.critedge, %.critedge.preheader
  %.1109.lcssa = phi i32 [ %.0108.lcssa, %.critedge.preheader ], [ %.2110, %.critedge ], [ %.1109144, %bb.e ]
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %.val124 = load i32, ptr %i.eu, align 4, !tbaa !64 ; 2 uses
  %i.ev = icmp sgt i32 %.val124, 0
  br i1 %i.ev, label %.lr.ph151, label %.critedge6

.lr.ph151:                                        ; preds = %.critedge2
  %.val128 = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.et, i64 8
  %.val129.val = load ptr, ptr %i.ew, align 8, !tbaa !61
  %.not117 = icmp eq ptr %.val128, null
  br i1 %.not117, label %.critedge6, label %.lr.ph151.split.preheader

.lr.ph151.split.preheader:                        ; preds = %.lr.ph151
  %i.ex = sext i32 %.1109.lcssa to i64
  %wide.trip.count175 = zext nneg i32 %.val124 to i64
  br label %.lr.ph151.split

.lr.ph151.split:                                  ; preds = %.lr.ph151.split.preheader, %bb.m
  %indvars.iv170 = phi i64 [ %i.ex, %.lr.ph151.split.preheader ], [ %indvars.iv.next171, %bb.m ] ; 3 uses
  %indvars.iv168 = phi i64 [ 0, %.lr.ph151.split.preheader ], [ %indvars.iv.next169, %bb.m ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val129.val, i64 %indvars.iv168
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [12 x i8], ptr %.val128, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds [84 x i8], ptr %i.o, i64 %indvars.iv170 ; 5 uses
  store i32 2, ptr %i.fc, align 4, !tbaa !188
  %i.fd = load i64, ptr %i.fb, align 4            ; 2 uses
  %i.fe = and i64 %i.fd, 536870911
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr inbounds [12 x i8], ptr %i.fb, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 20
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !8
  %.val132 = load i64, ptr %i.fg, align 4
  %i.fk = and i64 %.val132, 2305843005455597567
  %narrow.i = icmp eq i64 %i.fk, 2305843005455597567
  %i.fl = and i64 %i.fd, 536870912
  %i.fm = icmp eq i64 %i.fl, 0
  %.not118 = xor i1 %i.fm, %narrow.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 52 ; 2 uses
  br i1 %.not118, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph151.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fn, i8 85, i64 %i.ac, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph151.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fn, i8 -86, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 1, ptr %i.fo, align 4, !tbaa !195
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %indvars.iv170.tr = trunc i64 %indvars.iv170 to i32
  %i.fq = shl i32 %indvars.iv170.tr, 1            ; 2 uses
  store i32 %i.fq, ptr %i.fp, align 4, !tbaa !191
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !52
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count175
  br i1 %exitcond176.not, label %.critedge6, label %.lr.ph151.split, !llvm.loop !197

.critedge6:                                       ; preds = %bb.m, %.lr.ph151, %.critedge2
  %i.fs = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.46) ; 3 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge6
  %i.fu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef %1) ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.critedge6
  %i.fv = mul i32 %i.m, 84                        ; 2 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = tail call i64 @fwrite(ptr noundef nonnull %i.o, i64 noundef 1, i64 noundef %i.fw, ptr noundef nonnull %i.fs) ; 0 uses
  %i.fy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %i.fv) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.fz = tail call i32 @fclose(ptr noundef %i.fs) ; 0 uses
  tail call void @free(ptr noundef %i.o) #38
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !186 ; 2 uses
  %.not.i = icmp eq ptr %i.ga, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ga) #38
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.p, %bb.q
  tail call void @free(ptr noundef nonnull %i.q) #38
  ret void
}

declare i32 @Gia_ManLutSizeMax(ptr noundef) local_unnamed_addr #9

declare i32 @Gia_ManLutNum(ptr noundef) local_unnamed_addr #9

declare i64 @Gia_LutComputeTruth6(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nofree nounwind uwtable
define void @Gia_DumpLutSizeDistrib(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 15 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.49) ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.c, align 8, !tbaa !42  ; 3 uses
  %i.d = icmp sgt i32 %.val, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 264
  %.val19 = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr i8, ptr %.val19, i64 8
  %.val19.val = load ptr, ptr %i.f, align 8, !tbaa !61 ; 6 uses
  %wide.trip.count = zext nneg i32 %.val to i64
  %i.g = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.h = icmp eq i32 %.val, 2
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val19.val, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %.not23 = icmp eq i32 %i.j, 0
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.val19.val, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = add i32 %i.m, -1
  %or.cond = icmp ult i32 %i.n, 9
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val19.val, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 2 uses
  %.not23.1 = icmp eq i32 %i.u, 0
  br i1 %.not23.1, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val19.val, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 2 uses
  %i.y = add i32 %i.x, -1
  %or.cond.1 = icmp ult i32 %i.y, 9
  br i1 %or.cond.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !198

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val19.val, i64 %indvars.iv.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %.not23.epil = icmp eq i32 %i.ae, 0
  br i1 %.not23.epil, label %._crit_edge.loopexit, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val19.val, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 2 uses
  %i.ai = add i32 %i.ah, -1
  %or.cond.epil = icmp ult i32 %i.ai, 9
  br i1 %or.cond.epil, label %bb.j, label %._crit_edge.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !8
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.epil.preheader, %bb.i, %bb.j, %._crit_edge.loopexit.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 8, !tbaa !8
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre34 = load i32, ptr %.phi.trans.insert33, align 4, !tbaa !8
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre36 = load i32, ptr %.phi.trans.insert35, align 16, !tbaa !8
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre38 = load i32, ptr %.phi.trans.insert37, align 4, !tbaa !8
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.pre40 = load i32, ptr %.phi.trans.insert39, align 8, !tbaa !8
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.pre42 = load i32, ptr %.phi.trans.insert41, align 4, !tbaa !8
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre44 = load i32, ptr %.phi.trans.insert43, align 16, !tbaa !8
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.pre46 = load i32, ptr %.phi.trans.insert45, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.an = phi i32 [ %.pre46, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ao = phi i32 [ %.pre44, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ap = phi i32 [ %.pre42, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aq = phi i32 [ %.pre40, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.ar = phi i32 [ %.pre38, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.as = phi i32 [ %.pre36, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.at = phi i32 [ %.pre34, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.au = phi i32 [ %.pre32, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.av = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !199
  %fputs = tail call i32 @fputs(ptr %i.aw, ptr %i.b) ; 0 uses
end_hunk_3
begin_hunk_4_@Gia_ManCollectRing:bb.a
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.co
  store i32 %i.bi, ptr %i.cp, align 4, !tbaa !8
  br label %Gia_ManRingAdd.exit

Gia_ManRingAdd.exit:                              ; preds = %.lr.ph, %Vec_IntPush.exit.i
  %.val53.pre81 = phi ptr [ %.val53.pre80, %.lr.ph ], [ %.val53.pre, %Vec_IntPush.exit.i ]
  %.val53 = phi ptr [ %.val5378, %.lr.ph ], [ %.val53.pre, %Vec_IntPush.exit.i ] ; 2 uses
  %i.cq = add nuw nsw i32 %.072, 1                ; 2 uses
  %i.cr = getelementptr i8, ptr %.val53, i64 8
  %.val53.val = load ptr, ptr %i.cr, align 8, !tbaa !61
  %i.cs = getelementptr inbounds [4 x i8], ptr %.val53.val, i64 %i.n
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = icmp slt i32 %i.cq, %i.ct
  br i1 %i.cu, label %.lr.ph, label %.critedge2, !llvm.loop !215

.critedge2:                                       ; preds = %Gia_ManRingAdd.exit, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val47 = load i32, ptr %i.a, align 4, !tbaa !64
  %i.cv = sext i32 %.val47 to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %bb.b, label %.critedge, !llvm.loop !216

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManComputeDistanceInt(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.Vec_Int_t_, align 8         ; 8 uses
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 7 uses
  store i32 0, ptr %i.b, align 4, !tbaa !64
  store i32 100, ptr %i.a, align 8, !tbaa !72
  %i.c = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !61
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  store i32 0, ptr %i.f, align 4, !tbaa !64
  store i32 100, ptr %i.e, align 8, !tbaa !72
  %i.g = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i32, ptr %i.i, align 8, !tbaa !42  ; 8 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 11 uses
  %i.k = add i32 %.val, -1
  %or.cond.i.i = icmp ult i32 %i.k, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 4        ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.j, align 8, !tbaa !72
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !61
  store i32 %.val, ptr %i.l, align 4, !tbaa !64
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.n = sext i32 %spec.store.select.i.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !61
  store i32 %.val, ptr %i.l, align 4, !tbaa !64
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.r = sext i32 %.val to i64
  %i.s = shl nsw i64 %i.r, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.s, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %Vec_IntStart.exit
  %i.w = add nsw i32 %.val, 100                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 %i.w, ptr %i.x, align 8, !tbaa !43
  %i.y = sext i32 %i.w to i64
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.y, i64 noundef 4) #42 ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.aa, align 8, !tbaa !44
  br label %Gia_ManIncrementTravId.exit

bb.c:                                             ; preds = %Vec_IntStart.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !43 ; 2 uses
  %i.ab = icmp slt i32 %.pre.i, %.val
  br i1 %i.ab, label %.lr.ph.i, label %Gia_ManIncrementTravId.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.val.i82 = phi i32 [ %.val.i, %bb.f ], [ %.val, %bb.c ]
  %i.ac = phi ptr [ %i.ak, %bb.f ], [ %i.u, %bb.c ] ; 2 uses
  %i.ad = phi i32 [ %i.aj, %bb.f ], [ %.pre.i, %bb.c ]
  %i.ae = shl nsw i32 %i.ad, 1                    ; 3 uses
  store i32 %i.ae, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  %.not.i49 = icmp eq ptr %i.ac, null
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = shl nsw i64 %i.af, 2                    ; 2 uses
  br i1 %.not.i49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #41
  %.pre23.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !43 ; 2 uses
  %.pre24.i = sext i32 %.pre23.i to i64
  %.val.i.pre = load i32, ptr %i.i, align 8, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.val.i = phi i32 [ %.val.i82, %bb.e ], [ %.val.i.pre, %bb.d ] ; 2 uses
  %.pre-phi.i = phi i64 [ %i.af, %bb.e ], [ %.pre24.i, %bb.d ]
  %i.aj = phi i32 [ %i.ae, %bb.e ], [ %.pre23.i, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %i.ai, %bb.e ], [ %i.ah, %bb.d ] ; 4 uses
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !21
  %i.al = sdiv i32 %i.aj, 2
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  %i.ao = shl nsw i64 %.pre-phi.i, 1
  %i.ap = and i64 %i.ao, 9223372036854775806
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %i.ap, i1 false)
  %i.aq = icmp slt i32 %i.aj, %.val.i
  br i1 %i.aq, label %.lr.ph.i, label %Gia_ManIncrementTravId.exit, !llvm.loop !45

Gia_ManIncrementTravId.exit:                      ; preds = %bb.f, %.thread.i, %bb.c
  %.val46 = phi ptr [ %i.u, %bb.c ], [ %i.z, %.thread.i ], [ %i.ak, %bb.f ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !44
  %i.at = add nsw i32 %i.as, 1                    ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !44
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %Gia_ManIncrementTravId.exit
  %i.au = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %.val4263 = load i32, ptr %i.au, align 4, !tbaa !64
  %i.av = icmp sgt i32 %.val4263, 0
  br i1 %i.av, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.aw = getelementptr i8, ptr %2, i64 8
  %i.ax = getelementptr i8, ptr %i.j, i64 8
  %.val44 = load ptr, ptr %i.ax, align 8, !tbaa !61
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !64
  %.promoted66 = load i32, ptr %i.a, align 8, !tbaa !72
  %.promoted69 = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.ay = sext i32 %.promoted to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv77 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next78, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ay, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 7 uses
  %storemerge70 = phi ptr [ %.promoted69, %.lr.ph ], [ %storemerge71, %Vec_IntPush.exit ] ; 6 uses
  %spec.select.sink.i68 = phi i32 [ %.promoted66, %.lr.ph ], [ %spec.select.sink.i67, %Vec_IntPush.exit ] ; 3 uses
  %.val39 = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val39, i64 %indvars.iv77
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !8  ; 2 uses
  %.val47 = load i32, ptr %i.ar, align 8, !tbaa !44
  %.val48 = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %.val48, i64 %i.bb
  store i32 %.val47, ptr %i.bc, align 4, !tbaa !8
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val44, i64 %i.bb
  store i32 1, ptr %i.bd, align 4, !tbaa !8
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = icmp eq i32 %spec.select.sink.i68, %i.be
  br i1 %i.bf, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = icmp slt i64 %indvars.iv, 16
  br i1 %i.bg, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge70, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge70, i64 noundef 64) #41
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.bj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bk = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %i.bl = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bl
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge70, null
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %storemerge70, i64 noundef %i.bn) #41
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %bb.g, %bb.l
  %storemerge71 = phi ptr [ %storemerge70, %bb.g ], [ %storemerge70, %bb.l ], [ %i.bi, %bb.k ], [ %i.bh, %bb.j ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ] ; 3 uses
  %spec.select.sink.i67 = phi i32 [ %spec.select.sink.i68, %bb.g ], [ %spec.select.sink.i68, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %storemerge71, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bq, align 4, !tbaa !8
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %.val42 = load i32, ptr %i.au, align 4, !tbaa !64
  %i.br = sext i32 %.val42 to i64
  %i.bs = icmp slt i64 %indvars.iv.next78, %i.br
  br i1 %i.bs, label %bb.g, label %..critedge.loopexit_crit_edge, !llvm.loop !217

bb.p:                                             ; preds = %Gia_ManIncrementTravId.exit
  %i.bt = sext i32 %1 to i64                      ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %.val46, i64 %i.bt
  store i32 %i.at, ptr %i.bu, align 4, !tbaa !8
  %i.bv = getelementptr i8, ptr %i.j, i64 8
  %.val43 = load ptr, ptr %i.bv, align 8, !tbaa !61
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val43, i64 %i.bt
  store i32 1, ptr %i.bw, align 4, !tbaa !8
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !64  ; 7 uses
  %i.by = load i32, ptr %i.a, align 8, !tbaa !72
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.q, label %.Vec_IntPush.exit57_crit_edge

.Vec_IntPush.exit57_crit_edge:                    ; preds = %bb.p
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !61
  br label %Vec_IntPush.exit57

bb.q:                                             ; preds = %bb.p
  %i.ca = icmp slt i32 %i.bx, 16
  br i1 %i.ca, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not9.i.i55 = icmp eq ptr %i.cb, null
  br i1 %.not9.i.i55, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.cb, i64 noundef 64) #41
  br label %Vec_IntGrow.exit11.sink.split.i53

bb.t:                                             ; preds = %bb.r
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit11.sink.split.i53

bb.u:                                             ; preds = %bb.q
  %i.ce = icmp samesign ult i32 %i.bx, 1073741823
  %i.cf = shl nuw nsw i32 %i.bx, 1
  %spec.select.i50 = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 4 uses
  %.not.i9.i51 = icmp samesign ult i32 %i.bx, %spec.select.i50
  %.pre85 = load ptr, ptr %i.d, align 8, !tbaa !61 ; 3 uses
  br i1 %.not.i9.i51, label %bb.v, label %Vec_IntPush.exit57

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i52 = icmp eq ptr %.pre85, null
  %i.cg = zext nneg i32 %spec.select.i50 to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i52, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %.pre85, i64 noundef %i.ch) #41
  br label %Vec_IntGrow.exit11.sink.split.i53

bb.x:                                             ; preds = %bb.v
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #40
  br label %Vec_IntGrow.exit11.sink.split.i53

Vec_IntGrow.exit11.sink.split.i53:                ; preds = %bb.w, %bb.x, %bb.s, %bb.t
  %storemerge62 = phi ptr [ %i.cd, %bb.t ], [ %i.cc, %bb.s ], [ %i.ci, %bb.w ], [ %i.cj, %bb.x ] ; 2 uses
  %spec.select.sink.i54 = phi i32 [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i50, %bb.w ], [ %spec.select.i50, %bb.x ]
  store ptr %storemerge62, ptr %i.d, align 8, !tbaa !61
  store i32 %spec.select.sink.i54, ptr %i.a, align 8, !tbaa !72
  br label %Vec_IntPush.exit57

Vec_IntPush.exit57:                               ; preds = %.Vec_IntPush.exit57_crit_edge, %bb.u, %Vec_IntGrow.exit11.sink.split.i53
  %i.ck = phi ptr [ %.pre, %.Vec_IntPush.exit57_crit_edge ], [ %.pre85, %bb.u ], [ %storemerge62, %Vec_IntGrow.exit11.sink.split.i53 ]
  %i.cl = add nsw i32 %i.bx, 1
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !64
  %i.cm = sext i32 %i.bx to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store i32 %1, ptr %i.cn, align 4, !tbaa !8
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %Vec_IntPush.exit
  %i.co = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.co, ptr %i.b, align 4, !tbaa !64
  store i32 %spec.select.sink.i67, ptr %i.a, align 8
  store ptr %storemerge71, ptr %i.d, align 8
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %..critedge.loopexit_crit_edge, %Vec_IntPush.exit57
  %.not38 = icmp eq i32 %3, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br i1 %.not38, label %.critedge.split.us, label %.critedge.split

.critedge.split.us:                               ; preds = %.critedge
  tail call void @Gia_ManCollectRing(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  %.val40.us72 = load i32, ptr %i.f, align 4, !tbaa !64
  %i.cq = icmp eq i32 %.val40.us72, 0
  br i1 %i.cq, label %.split.us, label %.lr.ph74

.lr.ph74:                                         ; preds = %.critedge.split.us, %.lr.ph74
  store i32 0, ptr %i.b, align 4, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !218
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !218
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call void @Gia_ManCollectRing(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  %.val40.us = load i32, ptr %i.f, align 4, !tbaa !64
  %i.cr = icmp eq i32 %.val40.us, 0
  br i1 %i.cr, label %.split.us, label %.lr.ph74

.critedge.split:                                  ; preds = %.critedge
  %.val41 = load i32, ptr %i.l, align 4, !tbaa !64 ; 4 uses
  %i.cs = icmp sgt i32 %.val41, 0
  %wide.trip.count.i = zext i32 %.val41 to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.val41, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.critedge.split
  %.1 = phi i32 [ 0, %.critedge.split ], [ %i.dm, %bb.z ] ; 2 uses
  br i1 %i.cs, label %.lr.ph.i58, label %Vec_IntCountZero.exit

.lr.ph.i58:                                       ; preds = %bb.y
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !61 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i58, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i58 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.da, %vector.body ], [ zeroinitializer, %.lr.ph.i58 ]
  %vec.phi98 = phi <4 x i32> [ %i.db, %vector.body ], [ zeroinitializer, %.lr.ph.i58 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !8
  %wide.load99 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !8
  %i.cw = icmp eq <4 x i32> %wide.load, zeroinitializer
  %i.cx = icmp eq <4 x i32> %wide.load99, zeroinitializer
  %i.cy = zext <4 x i1> %i.cw to <4 x i32>
  %i.cz = zext <4 x i1> %i.cx to <4 x i32>
  %i.da = add <4 x i32> %vec.phi, %i.cy           ; 2 uses
  %i.db = add <4 x i32> %vec.phi98, %i.cz         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.db, %i.da
  %i.dd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %Vec_IntCountZero.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i58, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i58 ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i58 ], [ %i.dd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.di, %scalar.ph ], [ %.08.i.ph, %scalar.ph.preheader ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = icmp eq i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = add nuw nsw i32 %.08.i, %i.dh           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntCountZero.exit, label %scalar.ph, !llvm.loop !221

Vec_IntCountZero.exit:                            ; preds = %scalar.ph, %middle.block, %bb.y
  %.0.lcssa.i = phi i32 [ 0, %bb.y ], [ %i.dd, %middle.block ], [ %i.di, %scalar.ph ]
  %i.dj = sub nsw i32 %.val41, %.0.lcssa.i
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %.1, i32 noundef %i.dj) ; 0 uses
  tail call void @Gia_ManCollectRing(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.j)
  %.val40 = load i32, ptr %i.f, align 4, !tbaa !64
  %i.dl = icmp eq i32 %.val40, 0
  br i1 %i.dl, label %.split.us, label %bb.z

bb.z:                                             ; preds = %Vec_IntCountZero.exit
end_hunk_4
begin_hunk_5_@Gia_ManDetectSims:bb.a
.lr.ph:                                           ; preds = %.preheader
  %.val64 = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.bh = and i32 %.05187, 31
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = ashr i32 %.05187, 5
  %i.bk = sext i32 %i.bj to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %i.bk
  %wide.trip.count = zext nneg i32 %.val66 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val64, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %i.bn = and i32 %i.bm, 1
  %.not58 = icmp eq i32 %i.bn, 0
  br i1 %.not58, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = ashr exact i32 %i.bm, 1
  %.val59 = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [12 x i8], ptr %.val59, i64 %i.bp
  %.val62 = load i64, ptr %i.bq, align 4
  %i.br = lshr i64 %.val62, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = mul nuw nsw i32 %i.bt, %2
  %i.bv = zext nneg i32 %i.bu to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bv ; 2 uses
  %i.bw = load i32, ptr %gep, align 4, !tbaa !8
  %i.bx = or i32 %i.bw, %i.bi
  store i32 %i.bx, ptr %gep, align 4, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.e, !llvm.loop !286

.critedge2:                                       ; preds = %bb.g, %.preheader
  %i.by = add nsw i32 %.05187, 1
  br label %bb.h

bb.h:                                             ; preds = %.critedge2, %.lr.ph88
  %.152 = phi i32 [ %i.by, %.critedge2 ], [ %.05187, %.lr.ph88 ] ; 2 uses
  %.val6583 = load i32, ptr %i.af, align 4, !tbaa !64
  %i.bz = icmp sgt i32 %.val6583, 0
  br i1 %i.bz, label %.lr.ph85, label %.critedge4

.lr.ph85:                                         ; preds = %bb.h, %bb.i
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.val = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not57 = icmp eq ptr %.val, null
  br i1 %.not57, label %.critedge4, label %bb.i

bb.i:                                             ; preds = %.lr.ph85
  %.val63 = load ptr, ptr %i.ak, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val63, i64 %indvars.iv91
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 4
  %i.cf = and i64 %i.ce, -4611686019501129729
  store i64 %i.cf, ptr %i.cd, align 4
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %.val65 = load i32, ptr %i.af, align 4, !tbaa !64
  %i.cg = sext i32 %.val65 to i64
  %i.ch = icmp slt i64 %indvars.iv.next92, %i.cg
  br i1 %i.ch, label %.lr.ph85, label %.critedge4, !llvm.loop !287

.critedge4:                                       ; preds = %.lr.ph85, %bb.i, %bb.h
  %i.ci = icmp slt i32 %.152, %i.av
  br i1 %i.ci, label %.lr.ph88, label %.critedge._crit_edge.loopexit, !llvm.loop !288

.critedge._crit_edge.loopexit:                    ; preds = %.critedge4
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !61
  br label %.critedge._crit_edge

.critedge._crit_edge:                             ; preds = %.critedge._crit_edge.loopexit, %.critedge.preheader.split
  %i.cj = phi ptr [ %.pre, %.critedge._crit_edge.loopexit ], [ %i.t, %.critedge.preheader.split ] ; 2 uses
  %.not.i77 = icmp eq ptr %i.cj, null
  br i1 %.not.i77, label %Vec_IntFree.exit, label %bb.j

bb.j:                                             ; preds = %.critedge._crit_edge
  tail call void @free(ptr noundef nonnull %i.cj) #38
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge._crit_edge, %bb.j
  tail call void @free(ptr noundef nonnull %i.n) #38
  %i.ck = load ptr, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %.not.i78 = icmp eq ptr %i.ck, null
  br i1 %.not.i78, label %Vec_IntFree.exit79, label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.ck) #38
  br label %Vec_IntFree.exit79

Vec_IntFree.exit79:                               ; preds = %Vec_IntFree.exit, %bb.k
  tail call void @free(ptr noundef nonnull %i.ad) #38
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntAlloc.exit76, %Vec_IntFree.exit79
  %.053 = phi ptr [ %i.d, %Vec_IntFree.exit79 ], [ null, %Vec_IntAlloc.exit76 ]
  ret ptr %.053
}

declare i32 @Cec4_ManGeneratePatterns_rec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Vec_WrdInterleave(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val26 = load i32, ptr %i.a, align 4, !tbaa !187
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val25 = load i32, ptr %i.b, align 4, !tbaa !187
  %i.c = add nsw i32 %.val25, %.val26             ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 6 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.c ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !183
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WrdAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #40
  br label %Vec_WrdAlloc.exit

Vec_WrdAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !186
  %i.l = icmp sgt i32 %3, 0
  br i1 %i.l, label %.preheader36.lr.ph, label %._crit_edge55

.preheader36.lr.ph:                               ; preds = %Vec_WrdAlloc.exit
  %i.m = icmp sgt i32 %2, 0
  %i.n = getelementptr i8, ptr %0, i64 8
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = zext i32 %2 to i64                       ; 4 uses
  %wide.trip.count74 = zext nneg i32 %3 to i64
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %.preheader.thread
  %.promoted41 = phi ptr [ %i.j, %.preheader36.lr.ph ], [ %.promoted4184, %.preheader.thread ] ; 2 uses
  %.promoted38 = phi i32 [ %spec.store.select.i, %.preheader36.lr.ph ], [ %.promoted3881, %.preheader.thread ] ; 2 uses
  %.promoted = phi i32 [ 0, %.preheader36.lr.ph ], [ %.promoted78, %.preheader.thread ] ; 2 uses
  %indvars.iv71 = phi i64 [ 0, %.preheader36.lr.ph ], [ %indvars.iv.next72, %.preheader.thread ] ; 3 uses
  br i1 %i.m, label %.lr.ph, label %.preheader.thread

.lr.ph:                                           ; preds = %.preheader36
  %i.q = mul nuw nsw i64 %indvars.iv71, %i.p
  %i.r = sext i32 %.promoted to i64
  br label %bb.c

.preheader:                                       ; preds = %Vec_WrdPush.exit
  %i.s = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.s, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.select.sink.i39, ptr %i.d, align 8
  store ptr %storemerge3543, ptr %i.k, align 8
  %i.t = mul nuw nsw i64 %indvars.iv71, %i.p
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %indvars.iv57 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next58, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge3542 = phi ptr [ %.promoted41, %.lr.ph ], [ %storemerge3543, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i40 = phi i32 [ %.promoted38, %.lr.ph ], [ %spec.select.sink.i39, %Vec_WrdPush.exit ] ; 3 uses
  %.val24 = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %indvars.iv57
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.q
  %i.w = load i64, ptr %i.v, align 8, !tbaa !235
  %i.x = trunc nsw i64 %indvars.iv to i32
  %i.y = icmp eq i32 %spec.select.sink.i40, %i.x
  br i1 %i.y, label %bb.d, label %Vec_WrdPush.exit

bb.d:                                             ; preds = %bb.c
  %i.z = icmp slt i64 %indvars.iv, 16
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not9.i.i = icmp eq ptr %storemerge3542, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge3542, i64 noundef 128) #41
  br label %Vec_WrdPush.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #40
  br label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ad = shl i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ac, i32 %i.ad, i32 2147483647 ; 4 uses
  %i.ae = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ae
  br i1 %.not.i9.i, label %bb.i, label %Vec_WrdPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %storemerge3542, null
  %i.af = zext nneg i32 %spec.select.i to i64
  %i.ag = shl nuw nsw i64 %i.af, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %storemerge3542, i64 noundef %i.ag) #41
  br label %Vec_WrdPush.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ag) #40
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.g, %bb.f, %bb.k, %bb.j, %bb.c, %bb.h
  %storemerge3543 = phi ptr [ %storemerge3542, %bb.c ], [ %storemerge3542, %bb.h ], [ %i.ab, %bb.g ], [ %i.aa, %bb.f ], [ %i.ah, %bb.j ], [ %i.ai, %bb.k ] ; 4 uses
  %spec.select.sink.i39 = phi i32 [ %spec.select.sink.i40, %bb.c ], [ %spec.select.sink.i40, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %storemerge3543, i64 %indvars.iv
  store i64 %i.w, ptr %i.aj, align 8, !tbaa !235
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %i.p
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !289

bb.l:                                             ; preds = %.preheader, %Vec_WrdPush.exit34
  %indvars.iv64 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next65, %Vec_WrdPush.exit34 ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.next63, %Vec_WrdPush.exit34 ] ; 7 uses
  %storemerge52 = phi ptr [ %storemerge3543, %.preheader ], [ %storemerge53, %Vec_WrdPush.exit34 ] ; 3 uses
  %spec.select.sink.i3150 = phi i32 [ %spec.select.sink.i39, %.preheader ], [ %spec.select.sink.i3149, %Vec_WrdPush.exit34 ] ; 3 uses
  %.val = load ptr, ptr %i.o, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.t
  %i.am = load i64, ptr %i.al, align 8, !tbaa !235
  %i.an = trunc nsw i64 %indvars.iv62 to i32
  %i.ao = icmp eq i32 %spec.select.sink.i3150, %i.an
  br i1 %i.ao, label %bb.m, label %Vec_WrdPush.exit34

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp slt i64 %indvars.iv62, 16
  br i1 %i.ap, label %Vec_WrdPush.exit34.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp samesign ult i64 %indvars.iv62, 1073741823
  %indvars.iv62.tr = trunc i64 %indvars.iv62 to i32
  %i.ar = shl i32 %indvars.iv62.tr, 1
  %spec.select.i27 = select i1 %i.aq, i32 %i.ar, i32 2147483647 ; 3 uses
  %i.as = sext i32 %spec.select.i27 to i64
  %.not.i9.i28 = icmp samesign ult i64 %indvars.iv62, %i.as
  br i1 %.not.i9.i28, label %bb.o, label %Vec_WrdPush.exit34

bb.o:                                             ; preds = %bb.n
  %i.at = zext nneg i32 %spec.select.i27 to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  br label %Vec_WrdPush.exit34.sink.split

Vec_WrdPush.exit34.sink.split:                    ; preds = %bb.m, %bb.o
  %.sink = phi i64 [ %i.au, %bb.o ], [ 128, %bb.m ]
  %spec.select.sink.i3149.ph = phi i32 [ %spec.select.i27, %bb.o ], [ 16, %bb.m ]
  %i.av = tail call ptr @realloc(ptr noundef nonnull %storemerge52, i64 noundef %.sink) #41
  br label %Vec_WrdPush.exit34

Vec_WrdPush.exit34:                               ; preds = %Vec_WrdPush.exit34.sink.split, %bb.l, %bb.n
  %storemerge53 = phi ptr [ %storemerge52, %bb.l ], [ %storemerge52, %bb.n ], [ %i.av, %Vec_WrdPush.exit34.sink.split ] ; 4 uses
  %spec.select.sink.i3149 = phi i32 [ %spec.select.sink.i3150, %bb.l ], [ %spec.select.sink.i3150, %bb.n ], [ %spec.select.sink.i3149.ph, %Vec_WrdPush.exit34.sink.split ] ; 3 uses
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %storemerge53, i64 %indvars.iv62
  store i64 %i.am, ptr %i.aw, align 8, !tbaa !235
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next65, %i.p
  br i1 %exitcond70.not, label %._crit_edge, label %bb.l, !llvm.loop !290

._crit_edge:                                      ; preds = %Vec_WrdPush.exit34
  %i.ax = trunc nsw i64 %indvars.iv.next63 to i32 ; 2 uses
  store i32 %i.ax, ptr %i.f, align 4, !tbaa !187
  store i32 %spec.select.sink.i3149, ptr %i.d, align 8
  store ptr %storemerge53, ptr %i.k, align 8
  br label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader36, %._crit_edge
  %.promoted4184 = phi ptr [ %storemerge53, %._crit_edge ], [ %.promoted41, %.preheader36 ]
  %.promoted3881 = phi i32 [ %spec.select.sink.i3149, %._crit_edge ], [ %.promoted38, %.preheader36 ]
  %.promoted78 = phi i32 [ %i.ax, %._crit_edge ], [ %.promoted, %.preheader36 ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %._crit_edge55, label %.preheader36, !llvm.loop !291

._crit_edge55:                                    ; preds = %.preheader.thread, %Vec_WrdAlloc.exit
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManTransformCond(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.b = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #38
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !133
  %.neg45 = mul i64 %i.d, -1000000
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !135
  %.neg = sdiv i64 %i.f, -1000
  %.neg46 = add i64 %.neg, %.neg45
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg46, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  %i.g = getelementptr i8, ptr %0, i64 72         ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %Abc_Clock.exit, %Vec_WrdFreeP.exit
  %.049 = phi i32 [ %i.q, %Vec_WrdFreeP.exit ], [ 0, %Abc_Clock.exit ] ; 4 uses
  %i.h = call ptr @Gia_ManDetectSims(ptr noundef nonnull %0, i32 noundef %.049, i32 noundef 1) ; 4 uses
  %.val27 = load ptr, ptr %i.g, align 8, !tbaa !68 ; 2 uses
  %i.i = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.i, align 4, !tbaa !64 ; 3 uses
  %i.j = add nsw i32 %.val27.val, -4              ; 2 uses
  %.not = icmp slt i32 %.049, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = sub nsw i32 %.049, %i.j
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.l
  store ptr %i.h, ptr %i.m, align 8, !tbaa !292
  br label %Vec_WrdFreeP.exit

bb.d:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %i.h, null
  br i1 %i.n, label %Vec_WrdFreeP.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #38
  %.val28.pre.pre = load ptr, ptr %i.g, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %.val28.pre = phi ptr [ %.val28.pre.pre, %.thread.i ], [ %.val27, %bb.e ]
  call void @free(ptr noundef nonnull %i.h) #38
  %.phi.trans.insert = getelementptr i8, ptr %.val28.pre, i64 4
  %.val28.val.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !64
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.f, %bb.d, %bb.c
  %.val28.val = phi i32 [ %.val28.val.pre, %bb.f ], [ %.val27.val, %bb.d ], [ %.val27.val, %bb.c ]
  %i.q = add nuw nsw i32 %.049, 1                 ; 2 uses
  %i.r = icmp slt i32 %i.q, %.val28.val
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !293

._crit_edge.loopexit:                             ; preds = %Vec_WrdFreeP.exit
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !292 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !292  ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 64         ; 12 uses
  %.val40 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %.val40, i64 4
  %.val40.val = load i32, ptr %i.v, align 4, !tbaa !64
  %i.w = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.t, i32 noundef 1, i32 noundef %.val40.val) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !292 ; 3 uses
  %.val39 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.z = getelementptr i8, ptr %.val39, i64 4
  %.val39.val = load i32, ptr %i.z, align 4, !tbaa !64
  %i.aa = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.y, i32 noundef 1, i32 noundef %.val39.val) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !292 ; 3 uses
  %.val38 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ad = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.ad, align 4, !tbaa !64
  %i.ae = call ptr @Vec_WrdInterleave(ptr noundef %.pre, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val38.val) ; 2 uses
  %.val37 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.af = getelementptr i8, ptr %.val37, i64 4
  %.val37.val = load i32, ptr %i.af, align 4, !tbaa !64
  %i.ag = call ptr @Vec_WrdInterleave(ptr noundef %i.t, ptr noundef %i.y, i32 noundef 1, i32 noundef %.val37.val) ; 2 uses
  %.val36 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ah = getelementptr i8, ptr %.val36, i64 4
  %.val36.val = load i32, ptr %i.ah, align 4, !tbaa !64
  %i.ai = call ptr @Vec_WrdInterleave(ptr noundef %i.t, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val36.val) ; 2 uses
  %.val35 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.aj = getelementptr i8, ptr %.val35, i64 4
  %.val35.val = load i32, ptr %i.aj, align 4, !tbaa !64
  %i.ak = call ptr @Vec_WrdInterleave(ptr noundef %i.y, ptr noundef %i.ac, i32 noundef 1, i32 noundef %.val35.val) ; 2 uses
  %.val34 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.al = getelementptr i8, ptr %.val34, i64 4
  %.val34.val = load i32, ptr %i.al, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.w, ptr noundef %i.ak, i32 noundef 2, i32 noundef %.val34.val) #38
  %.val33 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.am = getelementptr i8, ptr %.val33, i64 4
  %.val33.val = load i32, ptr %i.am, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.aa, ptr noundef %i.ai, i32 noundef 2, i32 noundef %.val33.val) #38
  %.val32 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.an = getelementptr i8, ptr %.val32, i64 4
  %.val32.val = load i32, ptr %i.an, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ae, ptr noundef %i.ag, i32 noundef 2, i32 noundef %.val32.val) #38
  %.val31 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ao = getelementptr i8, ptr %.val31, i64 4
  %.val31.val = load i32, ptr %i.ao, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ak, ptr noundef %i.w, i32 noundef 2, i32 noundef %.val31.val) #38
  %.val30 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.ap = getelementptr i8, ptr %.val30, i64 4
  %.val30.val = load i32, ptr %i.ap, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ai, ptr noundef %i.aa, i32 noundef 2, i32 noundef %.val30.val) #38
  %.val29 = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.aq = getelementptr i8, ptr %.val29, i64 4
  %.val29.val = load i32, ptr %i.aq, align 4, !tbaa !64
  call void @Gia_ManResubPair(ptr noundef %i.ag, ptr noundef %i.ae, i32 noundef 2, i32 noundef %.val29.val) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.ar = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #38
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %Abc_Clock.exit42, label %bb.g

bb.g:                                             ; preds = %._crit_edge.loopexit
  %i.at = load i64, ptr %1, align 8, !tbaa !133
  %i.au = mul nsw i64 %i.at, 1000000
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !135
  %i.ax = sdiv i64 %i.aw, 1000
  %i.ay = add nsw i64 %i.ax, %i.au
  br label %Abc_Clock.exit42

Abc_Clock.exit42:                                 ; preds = %._crit_edge.loopexit, %bb.g
  %.0.i41 = phi i64 [ %i.ay, %bb.g ], [ -1, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.az = add i64 %.0.i41, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.26)
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fdiv double %i.ba, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.107, double noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  ret ptr null
}

end_hunk_5
