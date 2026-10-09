Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcDar?download=true
inline.NumInlined: 929
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_NtkFromDar:bb.a
.lr.ph75:                                         ; preds = %.critedge
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %Aig_ObjChild0Copy.exit
  %indvars.iv81 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next82, %Aig_ObjChild0Copy.exit ] ; 2 uses
  %.val53 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val53, i64 %indvars.iv81
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22 ; 5 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %.val59 = load i64, ptr %i.ap, align 8
  %i.aq = and i64 %.val59, 7
  %.not70 = icmp eq i64 %i.aq, 4
  br i1 %.not70, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val62 = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.as = ptrtoint ptr %.val62 to i64             ; 2 uses
  %i.at = and i64 %i.as, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %Aig_ObjChild0Copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = and i64 %i.as, 1
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = xor i64 %i.ax, %i.ay
  %i.ba = inttoptr i64 %i.az to ptr
  br label %Aig_ObjChild0Copy.exit

bb.f:                                             ; preds = %bb.c
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.bc = getelementptr i8, ptr %i.ao, i64 8
  %.val61 = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.bd = ptrtoint ptr %.val61 to i64             ; 2 uses
  %i.be = and i64 %i.bd, -2                       ; 2 uses
  %.not.i64 = icmp eq i64 %i.be, 0
  br i1 %.not.i64, label %Aig_ObjChild0Copy.exit65, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = and i64 %i.bd, 1
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = xor i64 %i.bi, %i.bj
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %Aig_ObjChild0Copy.exit65

Aig_ObjChild0Copy.exit65:                         ; preds = %bb.f, %bb.g
  %i.bm = phi ptr [ %i.bl, %bb.g ], [ null, %bb.f ]
  %i.bn = getelementptr i8, ptr %i.ao, i64 16
  %.val63 = load ptr, ptr %i.bn, align 8, !tbaa !82
  %i.bo = ptrtoint ptr %.val63 to i64             ; 2 uses
  %i.bp = and i64 %i.bo, -2                       ; 2 uses
  %.not.i66 = icmp eq i64 %i.bp, 0
  br i1 %.not.i66, label %Aig_ObjChild1Copy.exit, label %bb.h

bb.h:                                             ; preds = %Aig_ObjChild0Copy.exit65
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  %i.bt = and i64 %i.bo, 1
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = xor i64 %i.bt, %i.bu
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit65, %bb.h
  %i.bx = phi ptr [ %i.bw, %bb.h ], [ null, %Aig_ObjChild0Copy.exit65 ]
  %i.by = tail call ptr @Abc_AigAnd(ptr noundef %i.bb, ptr noundef %i.bm, ptr noundef %i.bx) #23
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.e, %bb.d, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.by, %Aig_ObjChild1Copy.exit ], [ %i.ba, %bb.e ], [ null, %bb.d ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %.sink, ptr %i.bz, align 8, !tbaa !42
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %.val50 = load i32, ptr %i.aj, align 4, !tbaa !19
  %i.ca = sext i32 %.val50 to i64
  %i.cb = icmp slt i64 %indvars.iv.next82, %i.ca
  br i1 %i.cb, label %bb.c, label %.critedge2, !llvm.loop !168

.critedge2:                                       ; preds = %Aig_ObjChild0Copy.exit, %.critedge
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21 ; 2 uses
  %.not.i67 = icmp eq ptr %i.cd, null
  br i1 %.not.i67, label %Vec_PtrFree.exit, label %bb.i

bb.i:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.cd) #23
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge2, %bb.i
  tail call void @free(ptr noundef nonnull %i.ai) #23
  %i.ce = getelementptr i8, ptr %1, i64 140
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !69 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val76 = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.ci = icmp sgt i32 %.val76, 0
  br i1 %i.ci, label %.lr.ph78, label %.critedge4

.lr.ph78:                                         ; preds = %Vec_PtrFree.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.ck = getelementptr i8, ptr %i.a, i64 64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph78, %Aig_ObjChild0Copy.exit69
  %indvars.iv84 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next85, %Aig_ObjChild0Copy.exit69 ] ; 4 uses
  %i.cl = phi ptr [ %i.cg, %.lr.ph78 ], [ %i.dh, %Aig_ObjChild0Copy.exit69 ]
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %.val52 = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.val52, i64 %indvars.iv84
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cp = load i32, ptr %i.cj, align 4, !tbaa !170 ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val58 = load i32, ptr %i.ce, align 4, !tbaa !39
  %i.cq = sub nsw i32 %.val58, %i.cp
  %i.cr = zext i32 %i.cq to i64
  %i.cs = icmp eq i64 %indvars.iv84, %i.cr
  br i1 %i.cs, label %.critedge4, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.val57 = load ptr, ptr %i.ck, align 8, !tbaa !66
  %i.ct = getelementptr i8, ptr %.val57, i64 8
  %.val57.val = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val57.val, i64 %indvars.iv84
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !22
  %i.cw = getelementptr i8, ptr %i.co, i64 8
  %.val60 = load ptr, ptr %i.cw, align 8, !tbaa !70
  %i.cx = ptrtoint ptr %.val60 to i64             ; 2 uses
  %i.cy = and i64 %i.cx, -2                       ; 2 uses
  %.not.i68 = icmp eq i64 %i.cy, 0
  br i1 %.not.i68, label %Aig_ObjChild0Copy.exit69, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !42
  %i.dc = and i64 %i.cx, 1
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = xor i64 %i.dc, %i.dd
  %i.df = inttoptr i64 %i.de to ptr
  br label %Aig_ObjChild0Copy.exit69

Aig_ObjChild0Copy.exit69:                         ; preds = %bb.l, %bb.m
  %i.dg = phi ptr [ %i.df, %bb.m ], [ null, %bb.l ]
  tail call void @Abc_ObjAddFanin(ptr noundef %i.cv, ptr noundef %i.dg) #23
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !69 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  %.val = load i32, ptr %i.di, align 4, !tbaa !19
  %i.dj = sext i32 %.val to i64
  %i.dk = icmp slt i64 %indvars.iv.next85, %i.dj
  br i1 %i.dk, label %bb.j, label %.critedge4, !llvm.loop !169

.critedge4:                                       ; preds = %bb.k, %Aig_ObjChild0Copy.exit69, %Vec_PtrFree.exit
  %i.dl = tail call i32 @Abc_NtkCheck(ptr noundef %i.a) #23
  %.not48 = icmp eq i32 %i.dl, 0
  br i1 %.not48, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge4
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.9)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge4
  ret ptr %i.a
}

declare ptr @Abc_NtkStartFrom(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Aig_ManDfs(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @Abc_AigAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @Abc_NtkCheck(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkFromDarSeqSweep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Abc_NtkStartFromNoLatches(ptr noundef %0, i32 noundef 3, i32 noundef 3) #23 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.d = load <2 x i32>, ptr %i.b, align 8, !tbaa !39
  store <2 x i32> %i.d, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr i8, ptr %i.a, i64 56       ; 2 uses
  %.val133 = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr i8, ptr %.val133, i64 4
  %.val133.val = load i32, ptr %i.f, align 4, !tbaa !19 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 136        ; 4 uses
  %.val158 = load i32, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr i8, ptr %1, i64 104        ; 4 uses
  %.val150 = load i32, ptr %i.h, align 8, !tbaa !68
  %i.i = sub nsw i32 %.val158, %.val150           ; 2 uses
  %i.j = icmp slt i32 %.val133.val, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub i32 %i.i, %.val133.val               ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0171 = phi i32 [ %i.p, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.m = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 2) #23 ; 2 uses
  %i.n = tail call ptr @Abc_ObjName(ptr noundef %i.m) #23
  %i.o = tail call ptr @Abc_ObjAssignName(ptr noundef %i.m, ptr noundef %i.n, ptr noundef null) #23 ; 0 uses
  %i.p = add nsw i32 %.0171, -1
  %i.q = icmp samesign ugt i32 %.0171, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @Abc_NtkOrderCisCos(ptr noundef nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = tail call ptr @Abc_AigConst1(ptr noundef nonnull %i.a) #23
  %i.s = getelementptr i8, ptr %1, i64 48
  %.val131 = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %.val131, i64 40
  store ptr %i.r, ptr %i.t, align 8, !tbaa !42
  %.val156172 = load i32, ptr %i.g, align 8, !tbaa !39
  %.val148173 = load i32, ptr %i.h, align 8, !tbaa !68 ; 2 uses
  %i.u = icmp sgt i32 %.val156172, %.val148173
  br i1 %i.u, label %.lr.ph176, label %.critedge.preheader

.lr.ph176:                                        ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

.critedge.preheader:                              ; preds = %bb.d, %bb.c
  %.val147177 = phi i32 [ %.val148173, %bb.c ], [ %.val148, %bb.d ] ; 2 uses
  %i.w = icmp sgt i32 %.val147177, 0
  br i1 %i.w, label %.critedge2.lr.ph, label %.critedge._crit_edge

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = getelementptr i8, ptr %1, i64 140
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.critedge2

bb.d:                                             ; preds = %.lr.ph176, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !80
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val127 = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %.val134 = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.ae = getelementptr i8, ptr %.val134, i64 8
  %.val134.val = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val134.val, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val156 = load i32, ptr %i.g, align 8, !tbaa !39
  %.val148 = load i32, ptr %i.h, align 8, !tbaa !68 ; 2 uses
  %i.ai = sub nsw i32 %.val156, %.val148
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.d, label %.critedge.preheader, !llvm.loop !172

.critedge2:                                       ; preds = %.critedge2.lr.ph, %.critedge2
  %.val147177.pn = phi i32 [ %.val147177, %.critedge2.lr.ph ], [ %.val147, %.critedge2 ]
  %.2179 = phi i32 [ 0, %.critedge2.lr.ph ], [ %i.bg, %.critedge2 ] ; 2 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !69
  %.val3.i = load i32, ptr %i.y, align 4, !tbaa !39
  %i.am = sub i32 %.2179, %.val147177.pn          ; 2 uses
  %i.an = add i32 %i.am, %.val3.i
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val.i = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !80
  %.val4.i160 = load i32, ptr %i.g, align 8, !tbaa !39
  %i.at = add i32 %i.am, %.val4.i160
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %.val.i162 = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val.i162, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ay = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 8) #23 ; 3 uses
  %i.az = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 4) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !42
  %i.bb = tail call ptr @Abc_NtkCreateObj(ptr noundef nonnull %i.a, i32 noundef 5) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !42
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !42
  tail call void @Abc_ObjAddFanin(ptr noundef %i.ay, ptr noundef %i.bd) #23
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !42
  tail call void @Abc_ObjAddFanin(ptr noundef %i.be, ptr noundef %i.ay) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.bf, align 8, !tbaa !42
  %i.bg = add nuw nsw i32 %.2179, 1               ; 2 uses
  %.val147 = load i32, ptr %i.h, align 8, !tbaa !68 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %.val147
  br i1 %i.bh, label %.critedge2, label %.critedge._crit_edge, !llvm.loop !173

.critedge._crit_edge:                             ; preds = %.critedge2, %.critedge.preheader
  %i.bi = tail call ptr @Aig_ManDfs(ptr noundef nonnull %1, i32 noundef 1) #23 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %.val124181 = load i32, ptr %i.bj, align 4, !tbaa !19
  %i.bk = icmp sgt i32 %.val124181, 0
  br i1 %i.bk, label %.lr.ph184, label %.critedge4

.lr.ph184:                                        ; preds = %.critedge._crit_edge
  %i.bl = getelementptr i8, ptr %i.bi, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph184, %Aig_ObjChild0Copy.exit
  %indvars.iv192 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next193, %Aig_ObjChild0Copy.exit ] ; 2 uses
  %.val126 = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val126, i64 %indvars.iv192
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !22 ; 5 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %.val151 = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.val151, 7
  %.not170 = icmp eq i64 %i.bq, 4
  br i1 %.not170, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr i8, ptr %i.bo, i64 8
  %.val154 = load ptr, ptr %i.br, align 8, !tbaa !70
  %i.bs = ptrtoint ptr %.val154 to i64            ; 2 uses
  %i.bt = and i64 %i.bs, -2                       ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %Aig_ObjChild0Copy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !42
  %i.bx = and i64 %i.bs, 1
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %Aig_ObjChild0Copy.exit

bb.h:                                             ; preds = %bb.e
  %i.cb = load ptr, ptr %i.bm, align 8, !tbaa !81
  %i.cc = getelementptr i8, ptr %i.bo, i64 8
  %.val153 = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.cd = ptrtoint ptr %.val153 to i64            ; 2 uses
  %i.ce = and i64 %i.cd, -2                       ; 2 uses
  %.not.i163 = icmp eq i64 %i.ce, 0
  br i1 %.not.i163, label %Aig_ObjChild0Copy.exit164, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42
  %i.ci = and i64 %i.cd, 1
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = xor i64 %i.ci, %i.cj
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %Aig_ObjChild0Copy.exit164

Aig_ObjChild0Copy.exit164:                        ; preds = %bb.h, %bb.i
  %i.cm = phi ptr [ %i.cl, %bb.i ], [ null, %bb.h ]
  %i.cn = getelementptr i8, ptr %i.bo, i64 16
  %.val155 = load ptr, ptr %i.cn, align 8, !tbaa !82
  %i.co = ptrtoint ptr %.val155 to i64            ; 2 uses
  %i.cp = and i64 %i.co, -2                       ; 2 uses
  %.not.i165 = icmp eq i64 %i.cp, 0
  br i1 %.not.i165, label %Aig_ObjChild1Copy.exit, label %bb.j

bb.j:                                             ; preds = %Aig_ObjChild0Copy.exit164
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !42
  %i.ct = and i64 %i.co, 1
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit164, %bb.j
  %i.cx = phi ptr [ %i.cw, %bb.j ], [ null, %Aig_ObjChild0Copy.exit164 ]
  %i.cy = tail call ptr @Abc_AigAnd(ptr noundef %i.cb, ptr noundef %i.cm, ptr noundef %i.cx) #23
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.g, %bb.f, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.cy, %Aig_ObjChild1Copy.exit ], [ %i.ca, %bb.g ], [ null, %bb.f ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr %.sink, ptr %i.cz, align 8, !tbaa !42
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %.val124 = load i32, ptr %i.bj, align 4, !tbaa !19
  %i.da = sext i32 %.val124 to i64
  %i.db = icmp slt i64 %indvars.iv.next193, %i.da
  br i1 %i.db, label %bb.e, label %.critedge4, !llvm.loop !174

.critedge4:                                       ; preds = %Aig_ObjChild0Copy.exit, %.critedge._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !21 ; 2 uses
  %.not.i166 = icmp eq ptr %i.dd, null
end_hunk_0
