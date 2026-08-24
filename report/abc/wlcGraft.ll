Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcGraft?download=true
inline.NumInlined: 237
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Sbc_SimMult:vector.memcheck
  %i.el = phi i64 [ %i.ei, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.em = phi i64 [ %i.ek, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %i.en = mul i64 %i.em, %i.el
  %i.eo = zext i64 %i.el to i128
  %i.ep = zext i64 %i.em to i128
  %i.eq = mul nuw i128 %i.ep, %i.eo
  %i.er = lshr i128 %i.eq, 64
  %i.es = trunc nuw i128 %i.er to i64
  %i.et = shl nuw i64 1, %indvars.iv51            ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.k
  %indvars.iv47 = phi i64 [ 0, %.thread ], [ %indvars.iv.next48, %bb.k ] ; 6 uses
  %i.eu = shl nuw i64 1, %indvars.iv47            ; 4 uses
  %i.ev = and i64 %i.eu, %i.el
  %.not39 = icmp eq i64 %i.ev, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv47 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !55
  %i.ey = or i64 %i.ex, %i.et
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ez = and i64 %i.eu, %i.em
  %.not40 = icmp eq i64 %i.ez, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv47 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !55
  %i.fc = or i64 %i.fb, %i.et
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.fd = and i64 %i.eu, %i.en
  %.not41 = icmp eq i64 %i.fd, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !55
  %i.fg = or i64 %i.ff, %i.et
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.fh = and i64 %i.eu, %i.es
  %.not42 = icmp eq i64 %i.fh, 0
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 512 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !55
  %i.fl = or i64 %i.fk, %i.et
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 64
  br i1 %exitcond50.not, label %bb.l, label %bb.c, !llvm.loop !128

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 64
  br i1 %exitcond54.not, label %bb.m, label %bb.a, !llvm.loop !129

bb.m:                                             ; preds = %bb.l
  ret void
}

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Sbc_ManDetectMult(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 4 uses
  %i.b = alloca [64 x i64], align 16              ; 4 uses
  %i.c = alloca [128 x i64], align 16             ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val108 = load i32, ptr %i.d, align 8, !tbaa !94 ; 5 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.f = add i32 %.val108, -1
  %or.cond.i.i = icmp ult i32 %i.f, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val108 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.e, align 8, !tbaa !27
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !28
  store i32 %.val108, ptr %i.g, align 4, !tbaa !26
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #19 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !28
  store i32 %.val108, ptr %i.g, align 4, !tbaa !26
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.m = sext i32 %.val108 to i64
  %i.n = shl nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 -1, i64 %i.n, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val119 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %.val99 = load i32, ptr %i.o, align 4, !tbaa !26 ; 2 uses
  %i.p = sdiv i32 %.val99, 2                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.q = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21 ; 11 uses
  store i32 1, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  store i32 10, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  store i32 1023, ptr %i.s, align 4, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  store i32 -1, ptr %i.t, align 4, !tbaa !82
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %Vec_IntStartFull.exit
  %.012.i.i = phi i32 [ 999, %Vec_IntStartFull.exit ], [ %i.u, %.critedge.i.i.backedge ] ; 3 uses
  %i.u = add i32 %.012.i.i, 1                     ; 7 uses
  %i.v = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.u, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.x = mul nuw nsw i32 %i.w, %i.w
  %.not.i.i123 = icmp ugt i32 %i.x, %i.u
  br i1 %.not.i.i123, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.w, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.y = urem i32 %i.u, %.01116.i.i
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.u ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.aa, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #19 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !28
  store i32 %i.u, ptr %i.ab, align 4, !tbaa !26
  %.not.i3.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.d

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.ag = zext nneg i32 %i.u to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ae, i8 -1, i64 %i.ah, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  store ptr %i.aa, ptr %i.ai, align 8, !tbaa !66
  %i.aj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !26
  store i32 1000, ptr %i.aj, align 8, !tbaa !27
  %i.al = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !68
  call void @Sbc_SimMult(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.p)
  %i.ao = icmp sgt i32 %.val99, 1
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %Vec_MemHashAlloc.exit
  %i.ap = shl nuw nsw i32 %i.p, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ar = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.q, ptr noundef nonnull %i.aq) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %Vec_MemHashAlloc.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !93 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Vec_WrdFreeP.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %.not.i124 = icmp eq ptr %i.aw, null
  br i1 %.not.i124, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.aw) #20
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !93 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !52
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.az = phi ptr [ %i.ax, %.thread.i ], [ %i.at, %bb.e ]
  tail call void @free(ptr noundef nonnull %i.az) #20
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %._crit_edge, %bb.f
  %.val107 = load i32, ptr %i.d, align 8, !tbaa !94 ; 4 uses
  %i.ba = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.bb = add i32 %.val107, -1
  %or.cond.i.i125 = icmp ult i32 %i.bb, 15
  %spec.store.select.i.i126 = select i1 %or.cond.i.i125, i32 16, i32 %.val107 ; 3 uses
  store i32 %spec.store.select.i.i126, ptr %i.ba, align 8, !tbaa !95
  %.not.i.i127 = icmp eq i32 %spec.store.select.i.i126, 0
  br i1 %.not.i.i127, label %Vec_WrdStart.exit, label %bb.g

bb.g:                                             ; preds = %Vec_WrdFreeP.exit
  %i.bc = sext i32 %spec.store.select.i.i126 to i64
  %i.bd = shl nsw i64 %i.bc, 3
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #19
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_WrdFreeP.exit, %bb.g
  %i.bf = phi ptr [ %i.be, %bb.g ], [ null, %Vec_WrdFreeP.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !52
  store i32 %.val107, ptr %i.bg, align 4, !tbaa !96
  %i.bi = sext i32 %.val107 to i64
  %i.bj = shl nsw i64 %i.bi, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bj, i1 false)
  store ptr %i.ba, ptr %i.as, align 8, !tbaa !51
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 4 uses
  store i32 1, ptr %i.bk, align 8, !tbaa !36
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #20
  %i.bl = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %.val113 = load i32, ptr %i.bl, align 8, !tbaa !131 ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 624
  %.val114 = load ptr, ptr %i.bm, align 8, !tbaa !132 ; 4 uses
  store i32 %.val113, ptr %.val114, align 4, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !133 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 4      ; 2 uses
  %.val98208 = load i32, ptr %i.bp, align 4, !tbaa !26
  %i.bq = icmp sgt i32 %.val98208, 0
  br i1 %i.bq, label %.lr.ph210, label %.critedge

.lr.ph210:                                        ; preds = %Vec_WrdStart.exit
  %i.br = getelementptr i8, ptr %0, i64 32
  %.val115 = load ptr, ptr %i.br, align 8, !tbaa !97
  %.not = icmp eq ptr %.val115, null
  br i1 %.not, label %.critedge, label %.lr.ph210.split

.lr.ph210.split:                                  ; preds = %.lr.ph210
  %i.bs = getelementptr i8, ptr %i.bo, i64 8
  %.val116.val = load ptr, ptr %i.bs, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph210.split, %bb.h
  %indvars.iv244 = phi i64 [ 0, %.lr.ph210.split ], [ %indvars.iv.next245, %bb.h ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val116.val, i64 %indvars.iv244
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = zext i32 %i.bu to i64
  %sext.i = shl nuw i64 %i.bv, 32
  %i.bw = ashr exact i64 %sext.i, 30
  %i.bx = getelementptr inbounds i8, ptr %.val114, i64 %i.bw
  store i32 %.val113, ptr %i.bx, align 4, !tbaa !11
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %.val98 = load i32, ptr %i.bp, align 4, !tbaa !26
  %i.by = sext i32 %.val98 to i64
  %i.bz = icmp slt i64 %indvars.iv.next245, %i.by
  br i1 %i.bz, label %bb.h, label %.critedge, !llvm.loop !134

.critedge:                                        ; preds = %bb.h, %.lr.ph210, %Vec_WrdStart.exit
  %.val97212 = load i32, ptr %i.o, align 4, !tbaa !26
  %i.ca = icmp sgt i32 %.val97212, 0
  br i1 %i.ca, label %.lr.ph214, label %.critedge2

.lr.ph214:                                        ; preds = %.critedge
  %i.cb = getelementptr i8, ptr %0, i64 32
  %.val110 = load ptr, ptr %i.cb, align 8, !tbaa !97
  %.not91 = icmp eq ptr %.val110, null
  br i1 %.not91, label %.critedge2, label %.lr.ph214.split

.lr.ph214.split:                                  ; preds = %.lr.ph214
  %i.cc = getelementptr i8, ptr %1, i64 8
  %.val100 = load ptr, ptr %i.cc, align 8, !tbaa !28
  %.val106 = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.cd = getelementptr i8, ptr %.val106, i64 8
  %.val106.val = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.ce = sext i32 %i.p to i64                    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph214.split, %bb.i
  %indvars.iv247 = phi i64 [ 0, %.lr.ph214.split ], [ %indvars.iv.next248, %bb.i ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val100, i64 %indvars.iv247
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = shl nsw i64 %i.ch, 2
  %i.cj = getelementptr inbounds i8, ptr %.val114, i64 %i.ci
  store i32 %.val113, ptr %i.cj, align 4, !tbaa !11
  %.val105 = load i32, ptr %i.bk, align 8, !tbaa !36
  %i.ck = mul nsw i32 %.val105, %i.cg
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %.val106.val, i64 %i.cl
  %i.cn = icmp slt i64 %indvars.iv247, %i.ce
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv247
  %i.cp = sub nsw i64 %indvars.iv247, %i.ce
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  %.in = select i1 %i.cn, ptr %i.co, ptr %i.cq
  %i.cr = load i64, ptr %.in, align 8, !tbaa !55
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !55
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %.val97 = load i32, ptr %i.o, align 4, !tbaa !26
  %i.cs = sext i32 %.val97 to i64
  %i.ct = icmp slt i64 %indvars.iv.next248, %i.cs
  br i1 %i.ct, label %bb.i, label %.critedge2, !llvm.loop !135

.critedge2:                                       ; preds = %bb.i, %.lr.ph214, %.critedge
  %i.cu = load i32, ptr %i.d, align 8, !tbaa !94  ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %.lr.ph224, label %.critedge6

.lr.ph224:                                        ; preds = %.critedge2
  %i.cw = getelementptr i8, ptr %0, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.cy = load i32, ptr %i.bl, align 8, !tbaa !131
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph224, %bb.w
  %i.cz = phi i32 [ %i.cu, %.lr.ph224 ], [ %i.tu, %bb.w ] ; 4 uses
  %indvars.iv250 = phi i64 [ 1, %.lr.ph224 ], [ %indvars.iv.next251, %bb.w ] ; 8 uses
  %sext.i131 = shl nuw nsw i64 %indvars.iv250, 2
  %i.da = getelementptr inbounds nuw i8, ptr %.val114, i64 %sext.i131
  %i.db = load i32, ptr %i.da, align 4, !tbaa !11
  %.not193 = icmp eq i32 %i.db, %i.cy
  br i1 %.not193, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val109 = load ptr, ptr %i.cw, align 8, !tbaa !97
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %.val109, i64 %indvars.iv250
  %.val111 = load i64, ptr %i.dc, align 4         ; 6 uses
  %i.dd = and i64 %.val111, 2147483648            ; 2 uses
  %.not.i132 = icmp eq i64 %i.dd, 0
  %i.de = and i64 %.val111, 536870911
  %i.df = icmp ne i64 %i.de, 536870911            ; 2 uses
  %narrow.i = and i1 %.not.i132, %i.df
  br i1 %narrow.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.val59.i = load i32, ptr %i.bk, align 8, !tbaa !36 ; 12 uses
  %.val60.i = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.dg = getelementptr i8, ptr %.val60.i, i64 8
  %.val60.val.i = load ptr, ptr %i.dg, align 8, !tbaa !52 ; 3 uses
  %i.dh = trunc i64 %indvars.iv250 to i32         ; 3 uses
  %i.di = mul i32 %.val59.i, %i.dh
  %i.dj = sext i32 %i.di to i64                   ; 25 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %.val60.val.i, i64 %i.dj ; 18 uses
  %i.dl = trunc i64 %.val111 to i32               ; 2 uses
  %i.dm = and i32 %i.dl, 536870911
  %i.dn = sub i32 %i.dh, %i.dm
  %i.do = mul i32 %.val59.i, %i.dn
  %i.dp = sext i32 %i.do to i64                   ; 5 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.val60.val.i, i64 %i.dp ; 18 uses
  %i.dr = lshr i64 %.val111, 32
  %i.ds = trunc nuw i64 %i.dr to i32
  %i.dt = and i32 %i.ds, 536870911
  %i.du = sub i32 %i.dh, %i.dt
  %i.dv = mul i32 %.val59.i, %i.du
  %i.dw = sext i32 %i.dv to i64                   ; 5 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %.val60.val.i, i64 %i.dw ; 18 uses
  %i.dy = and i32 %i.dl, 536870912
  %.not.i133 = icmp eq i32 %i.dy, 0
  %i.dz = and i64 %.val111, 2305843009213693952
  %.not55.i = icmp eq i64 %i.dz, 0                ; 2 uses
  %i.ea = icmp sgt i32 %.val59.i, 0               ; 4 uses
  br i1 %.not.i133, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not55.i, label %.preheader73.i, label %.preheader75.i

end_hunk_0
