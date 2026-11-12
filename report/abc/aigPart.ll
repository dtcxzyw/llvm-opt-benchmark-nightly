Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigPart?download=true
inline.NumInlined: 455
inline.NumDeleted: 66
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Aig_ManChoiceConstructiveOne:bb.a
  %i.ck = phi ptr [ %i.bp, %.lr.ph140 ], [ %i.cs, %.critedge10 ]
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val104 = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val104, i64 %indvars.iv159
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  %.val120 = load ptr, ptr %i.bs, align 8, !tbaa !56
  %i.co = getelementptr i8, ptr %.val120, i64 8
  %.val120.val = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.val120.val, i64 %indvars.iv159
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !57
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %i.cs = load ptr, ptr %i.bo, align 8, !tbaa !56 ; 3 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 4
  %.val95 = load i32, ptr %i.ct, align 4, !tbaa !24
  %i.cu = sext i32 %.val95 to i64
  %i.cv = icmp slt i64 %indvars.iv.next160, %i.cu
  br i1 %i.cv, label %.critedge10, label %.critedge12.preheader, !llvm.loop !168

.critedge14.preheader.loopexit:                   ; preds = %.critedge12
  %.pre174 = load ptr, ptr %i.bo, align 8, !tbaa !56
  br label %.critedge14.preheader

.critedge14.preheader:                            ; preds = %.critedge14.preheader.loopexit, %.critedge12.preheader
  %i.cw = phi ptr [ %.pre174, %.critedge14.preheader.loopexit ], [ %i.cf, %.critedge12.preheader ] ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %.val = load i32, ptr %i.cx, align 4, !tbaa !24 ; 2 uses
  %i.cy = icmp sgt i32 %.val, 0
  br i1 %i.cy, label %.lr.ph145, label %.critedge16

.lr.ph145:                                        ; preds = %.critedge14.preheader
  %i.cz = getelementptr i8, ptr %i.cw, i64 8
  %.val102 = load ptr, ptr %i.cz, align 8, !tbaa !26
  %i.da = getelementptr i8, ptr %0, i64 24
  %.val119 = load ptr, ptr %i.da, align 8, !tbaa !56
  %i.db = getelementptr i8, ptr %.val119, i64 8
  %.val119.val = load ptr, ptr %i.db, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.l

.lr.ph143:                                        ; preds = %.critedge12.preheader, %.critedge12
  %i.dd = phi ptr [ %i.ek, %.critedge12 ], [ %i.ch, %.critedge12.preheader ] ; 3 uses
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %.critedge12 ], [ 0, %.critedge12.preheader ] ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val103 = load ptr, ptr %i.de, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.val103, i64 %indvars.iv162
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !29 ; 5 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.critedge12, label %bb.h

bb.h:                                             ; preds = %.lr.ph143
  %i.di = getelementptr i8, ptr %i.dg, i64 24
  %.val111 = load i64, ptr %i.di, align 8
  %i.dj = trunc i64 %.val111 to i32
  %i.dk = and i32 %i.dj, 7
  %i.dl = add nsw i32 %i.dk, -7
  %narrow.i = icmp ult i32 %i.dl, -2
  br i1 %narrow.i, label %.critedge12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr i8, ptr %i.dg, i64 8
  %.val114 = load ptr, ptr %i.dm, align 8, !tbaa !59
  %i.dn = ptrtoint ptr %.val114 to i64            ; 2 uses
  %i.do = and i64 %i.dn, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.do, 0
  br i1 %.not.i, label %Aig_ObjChild0Copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !57
  %i.ds = and i64 %i.dn, 1
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = xor i64 %i.ds, %i.dt
  %i.dv = inttoptr i64 %i.du to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.i, %bb.j
  %i.dw = phi ptr [ %i.dv, %bb.j ], [ null, %bb.i ]
  %i.dx = getelementptr i8, ptr %i.dg, i64 16
  %.val115 = load ptr, ptr %i.dx, align 8, !tbaa !60
  %i.dy = ptrtoint ptr %.val115 to i64            ; 2 uses
  %i.dz = and i64 %i.dy, -2                       ; 2 uses
  %.not.i121 = icmp eq i64 %i.dz, 0
  br i1 %.not.i121, label %Aig_ObjChild1Copy.exit, label %bb.k

bb.k:                                             ; preds = %Aig_ObjChild0Copy.exit
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !57
  %i.ed = and i64 %i.dy, 1
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = xor i64 %i.ed, %i.ee
  %i.eg = inttoptr i64 %i.ef to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.k
  %i.eh = phi ptr [ %i.eg, %bb.k ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.ei = tail call ptr @Aig_And(ptr noundef %0, ptr noundef %i.dw, ptr noundef %i.eh) #26
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !57
  %.pre173 = load ptr, ptr %i.cg, align 8, !tbaa !58
  br label %.critedge12

.critedge12:                                      ; preds = %Aig_ObjChild1Copy.exit, %bb.h, %.lr.ph143
  %i.ek = phi ptr [ %.pre173, %Aig_ObjChild1Copy.exit ], [ %i.dd, %bb.h ], [ %i.dd, %.lr.ph143 ] ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  %.val94 = load i32, ptr %i.el, align 4, !tbaa !24
  %i.em = sext i32 %.val94 to i64
  %i.en = icmp slt i64 %indvars.iv.next163, %i.em
  br i1 %i.en, label %.lr.ph143, label %.critedge14.preheader.loopexit, !llvm.loop !169

bb.l:                                             ; preds = %.lr.ph145, %Aig_ObjSetRepr_.exit
  %indvars.iv165 = phi i64 [ 0, %.lr.ph145 ], [ %indvars.iv.next166, %Aig_ObjSetRepr_.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.val102, i64 %indvars.iv165
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !29
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.val119.val, i64 %indvars.iv165
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29
  %i.es = getelementptr i8, ptr %i.er, i64 8
  %.val113 = load ptr, ptr %i.es, align 8, !tbaa !59
  %i.et = ptrtoint ptr %.val113 to i64
  %i.eu = and i64 %i.et, -2                       ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ep, i64 8
  %.val112 = load ptr, ptr %i.ev, align 8, !tbaa !59
  %i.ew = ptrtoint ptr %.val112 to i64
  %i.ex = and i64 %i.ew, -2
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !57
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, -2                       ; 2 uses
  %i.fd = icmp eq i64 %i.eu, %i.fc
  br i1 %i.fd, label %Aig_ObjSetRepr_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l
  %i.fe = inttoptr i64 %i.fc to ptr               ; 2 uses
  %i.ff = inttoptr i64 %i.eu to ptr               ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 36
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !74 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !74 ; 2 uses
  %i.fk = icmp slt i32 %i.fh, %i.fj
  %i.fl = load ptr, ptr %i.dc, align 8, !tbaa !72
  %..i = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 %i.fj)
  %.19.i = select i1 %i.fk, ptr %i.ff, ptr %i.fe
  %i.fm = sext i32 %..i to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fm
  store ptr %.19.i, ptr %i.fn, align 8, !tbaa !75
  br label %Aig_ObjSetRepr_.exit

Aig_ObjSetRepr_.exit:                             ; preds = %bb.l, %.sink.split.i
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count
  br i1 %exitcond.not, label %.critedge16, label %bb.l, !llvm.loop !170

.critedge16:                                      ; preds = %Aig_ObjSetRepr_.exit, %.critedge14.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @Aig_ManChoiceEval(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !24
  store i32 100, ptr %i.a, align 8, !tbaa !25
  %i.c = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val3347 = load i32, ptr %i.g, align 4, !tbaa !24
  %i.h = icmp sgt i32 %.val3347, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 248        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Aig_ObjIsChoice.exit.thread
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ap, %Aig_ObjIsChoice.exit.thread ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Aig_ObjIsChoice.exit.thread ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val34 = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %Aig_ObjIsChoice.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.m, i64 24
  %.val35 = load i64, ptr %i.o, align 8           ; 3 uses
  %i.p = trunc i64 %.val35 to i32
  %i.q = and i32 %i.p, 7
  %i.r = add nsw i32 %i.q, -7
  %narrow.i = icmp ult i32 %i.r, -2
  %1 = lshr i64 %.val35, 32
  %2 = trunc nuw i64 %1 to i32
  br i1 %narrow.i, label %Aig_ObjIsChoice.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val36 = load ptr, ptr %i.i, align 8, !tbaa !174 ; 3 uses
  %.not.i = icmp eq ptr %.val36, null
  br i1 %.not.i, label %Aig_ObjIsChoice.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val36, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %.not4.i = icmp eq ptr %i.w, null
  %i.x = and i64 %.val35, 4294967232
  %.not = icmp eq i64 %i.x, 0
  %or.cond = or i1 %.not, %.not4.i
  br i1 %or.cond, label %Aig_ObjIsChoice.exit.thread, label %Aig_ObjEquiv.exit

Aig_ObjEquiv.exit:                                ; preds = %bb.e, %Aig_ObjEquiv.exit
  %.045 = phi i32 [ %i.y, %Aig_ObjEquiv.exit ], [ 0, %bb.e ]
  %.02844 = phi ptr [ %i.ad, %Aig_ObjEquiv.exit ], [ %i.m, %bb.e ]
  %i.y = add nuw nsw i32 %.045, 1                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02844, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val36, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 2 uses
  %.not31 = icmp eq ptr %i.ad, null
  br i1 %.not31, label %bb.f, label %Aig_ObjEquiv.exit, !llvm.loop !171

bb.f:                                             ; preds = %Aig_ObjEquiv.exit
  %i.ae = and i32 %2, 16777215
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.t, i32 noundef %i.ae, i32 noundef %i.y) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %Aig_ObjEquiv.exit41
  %.146 = phi ptr [ %i.m, %bb.f ], [ %i.ao, %Aig_ObjEquiv.exit41 ] ; 3 uses
  %i.ag = tail call i32 @Aig_NodeMffcSupp(ptr noundef nonnull %0, ptr noundef nonnull %.146, i32 noundef 0, ptr noundef nonnull %i.a) #26
  %.val = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ah = getelementptr i8, ptr %.146, i64 28
  %3 = load i32, ptr %i.ah, align 4
  %i.ai = and i32 %3, 16777215
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.val, i32 noundef %i.ag, i32 noundef %i.ai) ; 0 uses
  %.val37 = load ptr, ptr %i.i, align 8, !tbaa !174 ; 2 uses
  %.not.i40 = icmp eq ptr %.val37, null
  br i1 %.not.i40, label %Aig_ObjEquiv.exit41.thread, label %Aig_ObjEquiv.exit41

Aig_ObjEquiv.exit41:                              ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.146, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !74
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val37, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75 ; 2 uses
  %.not32 = icmp eq ptr %i.ao, null
  br i1 %.not32, label %Aig_ObjEquiv.exit41.thread, label %bb.g, !llvm.loop !172

Aig_ObjEquiv.exit41.thread:                       ; preds = %bb.g, %Aig_ObjEquiv.exit41
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !58
  br label %Aig_ObjIsChoice.exit.thread

Aig_ObjIsChoice.exit.thread:                      ; preds = %bb.d, %bb.e, %Aig_ObjEquiv.exit41.thread, %bb.c, %bb.b
  %i.ap = phi ptr [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %.pre, %Aig_ObjEquiv.exit41.thread ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val33 = load i32, ptr %i.aq, align 4, !tbaa !24
  %i.ar = sext i32 %.val33 to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %.critedge.loopexit, !llvm.loop !173

.critedge.loopexit:                               ; preds = %Aig_ObjIsChoice.exit.thread
  %.pre50 = load ptr, ptr %i.d, align 8, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.at = phi ptr [ %.pre50, %.critedge.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  %.not.i42 = icmp eq ptr %i.at, null
  br i1 %.not.i42, label %Vec_PtrFree.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.at) #26
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.h
  tail call void @free(ptr noundef nonnull %i.a) #26
  ret void
}

declare i32 @Aig_NodeMffcSupp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @Aig_ManChoiceConstructive(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val37 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.b = load ptr, ptr %.val37, align 8, !tbaa !29 ; 2 uses
  %i.c = tail call ptr @Aig_ManDupOrdered(ptr noundef %i.b) #26 ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val33 = load i32, ptr %i.d, align 4, !tbaa !24 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 32
  %.val38 = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.f = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.f, align 4, !tbaa !24
  %i.g = mul nsw i32 %.val38.val, %.val33         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i32 %i.g, ptr %i.h, align 8, !tbaa !176
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %calloc, ptr %i.k, align 8, !tbaa !72
  %i.l = icmp sgt i32 %.val33, 1
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.03140 = phi ptr [ %i.n, %.lr.ph ], [ %i.b, %bb.a ]
  %.val36 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 2 uses
  tail call void @Aig_ManChoiceConstructiveOne(ptr noundef nonnull %i.c, ptr noundef %.03140, ptr noundef %i.n)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.d, align 4, !tbaa !24
  %i.o = sext i32 %.val to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %.critedge, !llvm.loop !175

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %i.q = tail call ptr @Aig_ManRehash(ptr noundef nonnull %i.c) #26 ; 4 uses
  tail call void @Aig_ManMarkValidChoices(ptr noundef %i.q) #26
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.r = load ptr, ptr %.val35, align 8, !tbaa !29
  %i.s = tail call ptr @Aig_ManOrderPios(ptr noundef %i.q, ptr noundef %i.r) #26 ; 3 uses
  %i.t = tail call ptr @Aig_ManDupDfsGuided(ptr noundef %i.q, ptr noundef %i.s) #26 ; 3 uses
  tail call void @Aig_ManStop(ptr noundef %i.q) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.v) #26
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.b
  tail call void @free(ptr noundef nonnull %i.s) #26
  %.val34 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.w = load ptr, ptr %.val34, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 352
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Vec_PtrFree.exit
  %i.z = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.y, i32 noundef 0) #26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !73
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Vec_PtrFree.exit
  %i.ab = tail call i32 @Aig_ManChoiceLevel(ptr noundef %i.t) #26 ; 0 uses
  ret ptr %i.t
}

declare ptr @Aig_ManDupOrdered(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_VecSortCompare2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !68
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %.val6 = load i32, ptr %i.b, align 4, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !68
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val5 = load i32, ptr %i.d, align 4, !tbaa !24
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %.val5, i32 %.val6)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #7

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #18

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #18

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
