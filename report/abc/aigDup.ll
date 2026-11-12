Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigDup?download=true
inline.NumInlined: 480
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [70 x i8] c"Aig_ManDupOrdered(): Cleanup after AIG duplication removed %d nodes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Aig_ManDupTrim(): Cleanup after AIG duplication removed %d nodes.\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Aig_ManDupDfs(): Cleanup after AIG duplication removed %d nodes.\0A\00", align 1
@str.1 = private unnamed_addr constant [51 x i8] c"Llb_ManDeriveAigWithHints(): The check has failed.\00", align 1
@str.4 = private unnamed_addr constant [43 x i8] c"Aig_ManDupOrdered(): The check has failed.\00", align 1
@str.6 = private unnamed_addr constant [40 x i8] c"Aig_ManDupTrim(): The check has failed.\00", align 1
@str.7 = private unnamed_addr constant [40 x i8] c"Aig_ManDupExor(): The check has failed.\00", align 1
@str.9 = private unnamed_addr constant [39 x i8] c"Aig_ManDupDfs(): The check has failed.\00", align 1
@str.10 = private unnamed_addr constant [45 x i8] c"Aig_ManDupLevelized(): The check has failed.\00", align 1
@str.11 = private unnamed_addr constant [45 x i8] c"Aig_ManDupFlopsOnly(): The check has failed.\00", align 1
@str.12 = private unnamed_addr constant [36 x i8] c"Aig_ManDupRepres: Check has failed.\00", align 1
@str.13 = private unnamed_addr constant [39 x i8] c"Aig_ManDupRepresDfs: Check has failed.\00", align 1
@str.15 = private unnamed_addr constant [44 x i8] c"The AIG manager should have no constraints.\00", align 1
@str.16 = private unnamed_addr constant [42 x i8] c"Aig_ManDupSimple(): The check has failed.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupSimple(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val66 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val66.val) #12 ; 12 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i79 = icmp eq ptr %i.k, null
  br i1 %.not.i79, label %Abc_UtilStrsav.exit80, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit80

Abc_UtilStrsav.exit80:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit80
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i81 = icmp eq i32 %i.ab, 0
  br i1 %.not.i81, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit80
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.al = getelementptr i8, ptr %i.c, i64 48
  %.val68 = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.am = getelementptr i8, ptr %0, i64 48
  %.val67 = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.val67, i64 40
  store ptr %.val68, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val6589 = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.ar = icmp sgt i32 %.val6589, 0
  br i1 %i.ar, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.f
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val6491 = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = icmp sgt i32 %.val6491, 0
  br i1 %i.au, label %.lr.ph93, label %.critedge2.preheader

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.bg, %.lr.ph ], [ %i.ap, %bb.f ]
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val71 = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val71, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.az = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %1 = load i64, ptr %i.ba, align 8
  %2 = and i64 %1, 72057589742960640
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, -72057589742960641
  %i.be = or disjoint i64 %i.bd, %2
  store i64 %i.be, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val65 = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bi = sext i32 %.val65 to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.critedge.preheader, !llvm.loop !53

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val94 = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bn = icmp sgt i32 %.val94, 0
  br i1 %i.bn, label %.lr.ph96, label %.critedge4

.lr.ph93:                                         ; preds = %.critedge.preheader, %.critedge
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.bo = phi ptr [ %i.dg, %.critedge ], [ %i.as, %.critedge.preheader ]
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val70 = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val70, i64 %indvars.iv98
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph93
  %i.bt = getelementptr i8, ptr %i.br, i64 24
  %.val72 = load i64, ptr %i.bt, align 8          ; 2 uses
  %i.bu = and i64 %.val72, 7
  %.not88 = icmp eq i64 %i.bu, 4
  br i1 %.not88, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val75 = load ptr, ptr %i.bv, align 8, !tbaa !42
  %i.bw = ptrtoint ptr %.val75 to i64             ; 2 uses
  %i.bx = and i64 %i.bw, -2                       ; 2 uses
  %.not.i82 = icmp eq i64 %i.bx, 0
  br i1 %.not.i82, label %.critedge.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36
  %i.cb = and i64 %i.bw, 1
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = xor i64 %i.cb, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %.critedge.sink.split

bb.j:                                             ; preds = %bb.g
  %i.cf = trunc i64 %.val72 to i32
  %i.cg = and i32 %i.cf, 7
  %i.ch = add nsw i32 %i.cg, -7
  %narrow.i = icmp ult i32 %i.ch, -2
  br i1 %narrow.i, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr i8, ptr %i.br, i64 8
  %.val74 = load ptr, ptr %i.ci, align 8, !tbaa !42
  %i.cj = ptrtoint ptr %.val74 to i64             ; 2 uses
  %i.ck = and i64 %i.cj, -2                       ; 2 uses
  %.not.i83 = icmp eq i64 %i.ck, 0
  br i1 %.not.i83, label %Aig_ObjChild0Copy.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.co = and i64 %i.cj, 1
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = xor i64 %i.co, %i.cp
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %Aig_ObjChild0Copy.exit84

Aig_ObjChild0Copy.exit84:                         ; preds = %bb.k, %bb.l
  %i.cs = phi ptr [ %i.cr, %bb.l ], [ null, %bb.k ]
  %i.ct = getelementptr i8, ptr %i.br, i64 16
  %.val77 = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cu = ptrtoint ptr %.val77 to i64             ; 2 uses
  %i.cv = and i64 %i.cu, -2                       ; 2 uses
  %.not.i85 = icmp eq i64 %i.cv, 0
  br i1 %.not.i85, label %Aig_ObjChild1Copy.exit, label %bb.m

bb.m:                                             ; preds = %Aig_ObjChild0Copy.exit84
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.cz = and i64 %i.cu, 1
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = xor i64 %i.cz, %i.da
  %i.dc = inttoptr i64 %i.db to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit84, %bb.m
  %i.dd = phi ptr [ %i.dc, %bb.m ], [ null, %Aig_ObjChild0Copy.exit84 ]
  %i.de = tail call ptr @Aig_And(ptr noundef nonnull %i.c, ptr noundef %i.cs, ptr noundef %i.dd) #12
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.i, %bb.h, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.de, %Aig_ObjChild1Copy.exit ], [ %i.ce, %bb.i ], [ null, %bb.h ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %.sink, ptr %i.df, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.lr.ph93, %bb.j
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %.val64 = load i32, ptr %i.dh, align 4, !tbaa !25
  %i.di = sext i32 %.val64 to i64
  %i.dj = icmp slt i64 %indvars.iv.next99, %i.di
  br i1 %i.dj, label %.lr.ph93, label %.critedge2.preheader, !llvm.loop !54

.lr.ph96:                                         ; preds = %.critedge2.preheader, %Aig_ObjChild0Copy.exit87
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %Aig_ObjChild0Copy.exit87 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.dk = phi ptr [ %i.eb, %Aig_ObjChild0Copy.exit87 ], [ %i.bl, %.critedge2.preheader ]
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %.val69 = load ptr, ptr %i.dl, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.val69, i64 %indvars.iv101
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !39 ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 8
  %.val73 = load ptr, ptr %i.do, align 8, !tbaa !42
  %i.dp = ptrtoint ptr %.val73 to i64             ; 2 uses
  %i.dq = and i64 %i.dp, -2                       ; 2 uses
  %.not.i86 = icmp eq i64 %i.dq, 0
  br i1 %.not.i86, label %Aig_ObjChild0Copy.exit87, label %bb.n

bb.n:                                             ; preds = %.lr.ph96
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  %i.du = and i64 %i.dp, 1
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = xor i64 %i.du, %i.dv
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %Aig_ObjChild0Copy.exit87

Aig_ObjChild0Copy.exit87:                         ; preds = %.lr.ph96, %bb.n
  %i.dy = phi ptr [ %i.dx, %bb.n ], [ null, %.lr.ph96 ]
  %i.dz = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.dy) #12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !36
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.eb = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val = load i32, ptr %i.ec, align 4, !tbaa !25
  %i.ed = sext i32 %.val to i64
  %i.ee = icmp slt i64 %indvars.iv.next102, %i.ed
  br i1 %i.ee, label %.lr.ph96, label %.critedge4, !llvm.loop !55

.critedge4:                                       ; preds = %Aig_ObjChild0Copy.exit87, %.critedge2.preheader
  %i.ef = getelementptr i8, ptr %0, i64 104
  %.val78 = load i32, ptr %i.ef, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val78) #12
  %i.eg = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not61 = icmp eq i32 %i.eg, 0
  br i1 %.not61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge4
  ret ptr %i.c
}

declare ptr @Aig_ManStart(i32 noundef) local_unnamed_addr #1

declare void @Aig_ManCleanData(ptr noundef) local_unnamed_addr #1

declare ptr @Aig_ObjCreateCi(ptr noundef) local_unnamed_addr #1

declare ptr @Aig_And(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Aig_ObjCreateCo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Aig_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Aig_ManCheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupSimpleWithHints(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val61 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val61, i64 4
  %.val61.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val61.val) #12 ; 9 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

end_hunk_0
begin_hunk_1_@Aig_ManDupSimpleDfs_rec:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val19 = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.d = ptrtoint ptr %.val19 to i64
  %i.e = and i64 %i.d, -2
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @Aig_ManDupSimpleDfs_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.f) ; 0 uses
  %i.h = getelementptr i8, ptr %2, i64 24
  %.val = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val, 7
  %.not27 = icmp eq i64 %i.i, 4
  br i1 %.not27, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val21 = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.j = ptrtoint ptr %.val21 to i64              ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = and i64 %i.j, 1
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = xor i64 %i.o, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val22 = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.t = ptrtoint ptr %.val22 to i64
  %i.u = and i64 %i.t, -2
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call ptr @Aig_ManDupSimpleDfs_rec(ptr noundef %0, ptr noundef %1, ptr noundef %i.v) ; 0 uses
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.x = ptrtoint ptr %.val20 to i64              ; 2 uses
  %i.y = and i64 %i.x, -2                         ; 2 uses
  %.not.i24 = icmp eq i64 %i.y, 0
  br i1 %.not.i24, label %Aig_ObjChild0Copy.exit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = and i64 %i.x, 1
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = xor i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  br label %Aig_ObjChild0Copy.exit25

Aig_ObjChild0Copy.exit25:                         ; preds = %bb.e, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ]
  %.val23 = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ah = ptrtoint ptr %.val23 to i64             ; 2 uses
  %i.ai = and i64 %i.ah, -2                       ; 2 uses
  %.not.i26 = icmp eq i64 %i.ai, 0
  br i1 %.not.i26, label %Aig_ObjChild1Copy.exit, label %bb.g

bb.g:                                             ; preds = %Aig_ObjChild0Copy.exit25
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = and i64 %i.ah, 1
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = xor i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit25, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ null, %Aig_ObjChild0Copy.exit25 ]
  %i.ar = tail call ptr @Aig_And(ptr noundef %0, ptr noundef %i.ag, ptr noundef %i.aq) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.ar, %Aig_ObjChild1Copy.exit ], [ %i.r, %bb.d ], [ null, %bb.c ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %.sink, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupSimpleDfs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val59 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val59, i64 4
  %.val59.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val59.val) #12 ; 12 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i68 = icmp eq ptr %i.k, null
  br i1 %.not.i68, label %Abc_UtilStrsav.exit69, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit69

Abc_UtilStrsav.exit69:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit69
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i70 = icmp eq i32 %i.ab, 0
  br i1 %.not.i70, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit69
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.al = getelementptr i8, ptr %i.c, i64 48
  %.val61 = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.am = getelementptr i8, ptr %0, i64 48
  %.val60 = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.val60, i64 40
  store ptr %.val61, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val5873 = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.ar = icmp sgt i32 %.val5873, 0
  br i1 %i.ar, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.f
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %.val5775 = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = icmp sgt i32 %.val5775, 0
  br i1 %i.au, label %.lr.ph77, label %.critedge2.preheader

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.f ] ; 2 uses
  %i.av = phi ptr [ %i.bg, %.lr.ph ], [ %i.ap, %bb.f ]
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val64 = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.val64, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !39 ; 2 uses
  %i.az = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %1 = load i64, ptr %i.ba, align 8
  %2 = and i64 %1, 72057589742960640
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, -72057589742960641
  %i.be = or disjoint i64 %i.bd, %2
  store i64 %i.be, ptr %i.bb, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %.val58 = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bi = sext i32 %.val58 to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.critedge.preheader, !llvm.loop !59

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val78 = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bn = icmp sgt i32 %.val78, 0
  br i1 %i.bn, label %.lr.ph80, label %.critedge4

.lr.ph77:                                         ; preds = %.critedge.preheader, %.critedge
  %i.bo = phi ptr [ %i.bw, %.critedge ], [ %i.as, %.critedge.preheader ] ; 3 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val63 = load ptr, ptr %i.bp, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val63, i64 %indvars.iv82
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph77
  %i.bt = getelementptr i8, ptr %i.br, i64 24
  %.val67 = load i64, ptr %i.bt, align 8
  %i.bu = and i64 %.val67, 7
  %.not72 = icmp eq i64 %i.bu, 3
  br i1 %.not72, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = tail call ptr @Aig_ManDupSimpleDfs_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.br) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph77, %bb.h, %bb.g
  %i.bw = phi ptr [ %i.bo, %.lr.ph77 ], [ %.pre, %bb.h ], [ %i.bo, %bb.g ] ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val57 = load i32, ptr %i.bx, align 4, !tbaa !25
  %i.by = sext i32 %.val57 to i64
  %i.bz = icmp slt i64 %indvars.iv.next83, %i.by
  br i1 %i.bz, label %.lr.ph77, label %.critedge2.preheader, !llvm.loop !60

.lr.ph80:                                         ; preds = %.critedge2.preheader, %Aig_ObjChild0Copy.exit
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %Aig_ObjChild0Copy.exit ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.ca = phi ptr [ %i.cr, %Aig_ObjChild0Copy.exit ], [ %i.bl, %.critedge2.preheader ]
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val62 = load ptr, ptr %i.cb, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %indvars.iv85
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val65 = load ptr, ptr %i.ce, align 8, !tbaa !42
  %i.cf = ptrtoint ptr %.val65 to i64             ; 2 uses
  %i.cg = and i64 %i.cf, -2                       ; 2 uses
  %.not.i71 = icmp eq i64 %i.cg, 0
  br i1 %.not.i71, label %Aig_ObjChild0Copy.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph80
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36
  %i.ck = and i64 %i.cf, 1
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = xor i64 %i.ck, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %.lr.ph80, %bb.i
  %i.co = phi ptr [ %i.cn, %bb.i ], [ null, %.lr.ph80 ]
  %i.cp = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.co) #12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !36
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.cr = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  %.val = load i32, ptr %i.cs, align 4, !tbaa !25
  %i.ct = sext i32 %.val to i64
  %i.cu = icmp slt i64 %indvars.iv.next86, %i.ct
  br i1 %i.cu, label %.lr.ph80, label %.critedge4, !llvm.loop !61

.critedge4:                                       ; preds = %Aig_ObjChild0Copy.exit, %.critedge2.preheader
  %i.cv = getelementptr i8, ptr %0, i64 104
  %.val66 = load i32, ptr %i.cv, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val66) #12
  %i.cw = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not55 = icmp eq i32 %i.cw, 0
  br i1 %.not55, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupSimpleDfsPart(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val28, i64 4
  %.val28.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val28.val) #12 ; 7 uses
  tail call void @Aig_ManCleanData(ptr noundef %0) #12
  %i.d = getelementptr i8, ptr %i.c, i64 48
  %.val30 = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr i8, ptr %0, i64 48
  %.val29 = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %.val29, i64 40
  store ptr %.val30, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val2735 = load i32, ptr %i.g, align 4, !tbaa !25
  %i.h = icmp sgt i32 %.val2735, 0
  br i1 %i.h, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 8
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.b, %bb.a
  %i.j = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %.val37 = load i32, ptr %i.j, align 4, !tbaa !25
  %i.k = icmp sgt i32 %.val37, 0
  br i1 %i.k, label %.lr.ph39, label %.critedge2

.lr.ph39:                                         ; preds = %.critedge.preheader
  %i.l = getelementptr i8, ptr %2, i64 8
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val32 = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.o, ptr %i.p, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val27 = load i32, ptr %i.g, align 4, !tbaa !25
  %i.q = sext i32 %.val27 to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.critedge.preheader, !llvm.loop !62

.critedge:                                        ; preds = %.lr.ph39, %.critedge
  %indvars.iv41 = phi i64 [ 0, %.lr.ph39 ], [ %indvars.iv.next42, %.critedge ] ; 2 uses
  %.val31 = load ptr, ptr %i.l, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val31, i64 %indvars.iv41
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = getelementptr i8, ptr %i.t, i64 8        ; 2 uses
  %.val33 = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.v = ptrtoint ptr %.val33 to i64
  %i.w = and i64 %i.v, -2
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = tail call ptr @Aig_ManDupSimpleDfs_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %i.x)
  %.val34 = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.z = ptrtoint ptr %.val34 to i64
  %i.aa = and i64 %i.z, 1
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = xor i64 %i.aa, %i.ab
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.ad) #12 ; 0 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %.val = load i32, ptr %i.j, align 4, !tbaa !25
  %i.af = sext i32 %.val to i64
  %i.ag = icmp slt i64 %indvars.iv.next42, %i.af
  br i1 %i.ag, label %.critedge, label %.critedge2, !llvm.loop !63

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef 0) #12
  %i.ah = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge2
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge2
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupOrdered(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val60, i64 4
  %.val60.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val60.val) #12 ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i74 = icmp eq ptr %i.k, null
  br i1 %.not.i74, label %Abc_UtilStrsav.exit75, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit75

Abc_UtilStrsav.exit75:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit75
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i76 = icmp eq i32 %i.ab, 0
  br i1 %.not.i76, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit75
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val87 = load i32, ptr %i.am, align 4, !tbaa !25
  %i.an = icmp sgt i32 %.val87, 0
  br i1 %i.an, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.c, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.ap = phi ptr [ %i.al, %.lr.ph ], [ %i.cy, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.04788 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.t ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val62 = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %i.as, i64 24     ; 2 uses
  %.val63 = load i64, ptr %i.au, align 8          ; 2 uses
  %i.av = and i64 %.val63, 7                      ; 2 uses
  %.not83 = icmp eq i64 %i.av, 4
  br i1 %.not83, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %i.as, i64 8
  %.val66 = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ax = ptrtoint ptr %.val66 to i64             ; 2 uses
  %i.ay = and i64 %i.ax, -2                       ; 2 uses
  %.not.i77 = icmp eq i64 %i.ay, 0
  br i1 %.not.i77, label %Aig_ObjChild0Copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bc = and i64 %i.ax, 1
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = xor i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr
  br label %Aig_ObjChild0Copy.exit

bb.k:                                             ; preds = %bb.h
  %i.bg = trunc i64 %.val63 to i32
  %i.bh = and i32 %i.bg, 7                        ; 2 uses
  %i.bi = add nsw i32 %i.bh, -7
  %narrow.i = icmp ult i32 %i.bi, -2
  br i1 %narrow.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr i8, ptr %i.as, i64 8
  %.val65 = load ptr, ptr %i.bj, align 8, !tbaa !42
  %i.bk = ptrtoint ptr %.val65 to i64             ; 2 uses
  %i.bl = and i64 %i.bk, -2                       ; 2 uses
  %.not.i78 = icmp eq i64 %i.bl, 0
  br i1 %.not.i78, label %Aig_ObjChild0Copy.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36
  %i.bp = and i64 %i.bk, 1
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = xor i64 %i.bp, %i.bq
  %i.bs = inttoptr i64 %i.br to ptr
  br label %Aig_ObjChild0Copy.exit79

Aig_ObjChild0Copy.exit79:                         ; preds = %bb.l, %bb.m
  %i.bt = phi ptr [ %i.bs, %bb.m ], [ null, %bb.l ]
  %i.bu = getelementptr i8, ptr %i.as, i64 16
  %.val68 = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bv = ptrtoint ptr %.val68 to i64             ; 2 uses
  %i.bw = and i64 %i.bv, -2                       ; 2 uses
  %.not.i80 = icmp eq i64 %i.bw, 0
  br i1 %.not.i80, label %Aig_ObjChild1Copy.exit, label %bb.n

bb.n:                                             ; preds = %Aig_ObjChild0Copy.exit79
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.ca = and i64 %i.bv, 1
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = xor i64 %i.ca, %i.cb
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit79, %bb.n
  %i.ce = phi ptr [ %i.cd, %bb.n ], [ null, %Aig_ObjChild0Copy.exit79 ]
  %i.cf = tail call ptr @Aig_Oper(ptr noundef nonnull %i.c, ptr noundef %i.bt, ptr noundef %i.ce, i32 noundef %i.bh) #12
  br label %Aig_ObjChild0Copy.exit

bb.o:                                             ; preds = %bb.k
  switch i64 %i.av, label %Aig_ObjChild0Copy.exit [
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.cg = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %1 = load i64, ptr %i.au, align 8
  %2 = and i64 %1, 72057589742960640
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = and i64 %i.ci, -72057589742960641
  %i.ck = or disjoint i64 %i.cj, %2
  store i64 %i.ck, ptr %i.ch, align 8
  br label %Aig_ObjChild0Copy.exit

bb.q:                                             ; preds = %bb.o
  %i.cl = getelementptr i8, ptr %i.as, i64 8
  %.val64 = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cm = ptrtoint ptr %.val64 to i64             ; 2 uses
  %i.cn = and i64 %i.cm, -2                       ; 2 uses
  %.not.i81 = icmp eq i64 %i.cn, 0
  br i1 %.not.i81, label %Aig_ObjChild0Copy.exit82, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cr = and i64 %i.cm, 1
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %Aig_ObjChild0Copy.exit82

Aig_ObjChild0Copy.exit82:                         ; preds = %bb.q, %bb.r
  %i.cv = phi ptr [ %i.cu, %bb.r ], [ null, %bb.q ]
  %i.cw = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.cv) #12
  br label %Aig_ObjChild0Copy.exit

bb.s:                                             ; preds = %bb.o
  %.val61 = load ptr, ptr %i.ao, align 8, !tbaa !35
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.o, %bb.j, %bb.i, %Aig_ObjChild1Copy.exit, %Aig_ObjChild0Copy.exit82, %bb.s, %bb.p
  %.1 = phi ptr [ %.04788, %bb.o ], [ %i.cf, %Aig_ObjChild1Copy.exit ], [ %i.cg, %bb.p ], [ %i.cw, %Aig_ObjChild0Copy.exit82 ], [ %.val61, %bb.s ], [ %i.bf, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store ptr %.1, ptr %i.cx, align 8, !tbaa !36
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %Aig_ObjChild0Copy.exit, %bb.g
  %i.cy = phi ptr [ %i.ap, %bb.g ], [ %.pre, %Aig_ObjChild0Copy.exit ] ; 2 uses
  %.2 = phi ptr [ %.04788, %bb.g ], [ %.1, %Aig_ObjChild0Copy.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 4
  %.val = load i32, ptr %i.cz, align 4, !tbaa !25
  %i.da = sext i32 %.val to i64
  %i.db = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.g, label %.critedge, !llvm.loop !64

.critedge:                                        ; preds = %bb.t, %bb.f
  %i.dc = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not52 = icmp eq i32 %i.dc, 0
  br i1 %.not52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.dc) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.de = getelementptr i8, ptr %0, i64 104
  %.val69 = load i32, ptr %i.de, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val69) #12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not53 = icmp eq ptr %i.dg, null
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.dg, i32 noundef 0) #12
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !46
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dj = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not54 = icmp eq i32 %i.dj, 0
  br i1 %.not54, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  ret ptr %i.c
}

declare ptr @Aig_Oper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Tim_ManDup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupCof(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val74 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val74, i64 4
  %.val74.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val74.val) #12 ; 14 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i89 = icmp eq ptr %i.k, null
  br i1 %.not.i89, label %Abc_UtilStrsav.exit90, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit90

Abc_UtilStrsav.exit90:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit90
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i91 = icmp eq i32 %i.ab, 0
  br i1 %.not.i91, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit90
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.al = getelementptr i8, ptr %i.c, i64 48      ; 3 uses
  %.val77 = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.am = getelementptr i8, ptr %0, i64 48
  %.val76 = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.val76, i64 40
  store ptr %.val77, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val7399 = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.ar = icmp sgt i32 %.val7399, 0
  br i1 %i.ar, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.f
  %.not71 = icmp eq i32 %2, 0
  %i.as = zext i32 %1 to i64                      ; 2 uses
  br i1 %.not71, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %bb.i ], [ 0, %.lr.ph ] ; 3 uses
  %i.at = phi ptr [ %i.bi, %bb.i ], [ %i.ap, %.lr.ph ]
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val80.us = load ptr, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val80.us, i64 %indvars.iv109
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %i.ax = icmp eq i64 %indvars.iv109, %i.as
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ay = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %3 = load i64, ptr %i.az, align 8
  %4 = and i64 %3, 72057589742960640
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, -72057589742960641
  %i.bd = or disjoint i64 %i.bc, %4
  store i64 %i.bd, ptr %i.ba, align 8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us
  %.val88.us = load ptr, ptr %i.al, align 8, !tbaa !35
  %i.be = ptrtoint ptr %.val88.us to i64
  %i.bf = xor i64 %i.be, 1
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.065.us = phi ptr [ %i.ay, %bb.g ], [ %i.bg, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %.065.us, ptr %i.bh, align 8, !tbaa !36
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val73.us = load i32, ptr %i.bj, align 4, !tbaa !25
  %i.bk = sext i32 %.val73.us to i64
  %i.bl = icmp slt i64 %indvars.iv.next110, %i.bk
  br i1 %i.bl, label %.lr.ph.split.us, label %.critedge.preheader, !llvm.loop !65

.critedge.preheader:                              ; preds = %bb.l, %bb.i, %bb.f
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %.val72101 = load i32, ptr %i.bn, align 4, !tbaa !25
  %i.bo = icmp sgt i32 %.val72101, 0
  br i1 %i.bo, label %.lr.ph103, label %.critedge2.preheader

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph ] ; 3 uses
  %i.bp = phi ptr [ %i.cb, %bb.l ], [ %i.ap, %.lr.ph ]
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val80 = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val80, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39 ; 2 uses
  %i.bt = icmp eq i64 %indvars.iv, %i.as
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %.val75 = load ptr, ptr %i.al, align 8, !tbaa !35
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split
  %i.bu = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %5 = load i64, ptr %i.bv, align 8
  %6 = and i64 %5, 72057589742960640
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, -72057589742960641
  %i.bz = or disjoint i64 %i.by, %6
  store i64 %i.bz, ptr %i.bw, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.065 = phi ptr [ %i.bu, %bb.k ], [ %.val75, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store ptr %.065, ptr %i.ca, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val73 = load i32, ptr %i.cc, align 4, !tbaa !25
  %i.cd = sext i32 %.val73 to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %.lr.ph.split, label %.critedge.preheader, !llvm.loop !65

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !41 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val104 = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.ci = icmp sgt i32 %.val104, 0
  br i1 %i.ci, label %.lr.ph106, label %.critedge4

.lr.ph103:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.cj = phi ptr [ %i.eb, %.critedge ], [ %i.bm, %.critedge.preheader ]
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val79 = load ptr, ptr %i.ck, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val79, i64 %indvars.iv112
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39 ; 6 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.critedge, label %bb.m

bb.m:                                             ; preds = %.lr.ph103
  %i.co = getelementptr i8, ptr %i.cm, i64 24
  %.val81 = load i64, ptr %i.co, align 8          ; 2 uses
  %i.cp = and i64 %.val81, 7
  %.not98 = icmp eq i64 %i.cp, 4
  br i1 %.not98, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr i8, ptr %i.cm, i64 8
  %.val84 = load ptr, ptr %i.cq, align 8, !tbaa !42
  %i.cr = ptrtoint ptr %.val84 to i64             ; 2 uses
  %i.cs = and i64 %i.cr, -2                       ; 2 uses
  %.not.i92 = icmp eq i64 %i.cs, 0
  br i1 %.not.i92, label %.critedge.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.cw = and i64 %i.cr, 1
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = xor i64 %i.cw, %i.cx
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %.critedge.sink.split

bb.p:                                             ; preds = %bb.m
  %i.da = trunc i64 %.val81 to i32
  %i.db = and i32 %i.da, 7
  %i.dc = add nsw i32 %i.db, -7
  %narrow.i = icmp ult i32 %i.dc, -2
  br i1 %narrow.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dd = getelementptr i8, ptr %i.cm, i64 8
  %.val83 = load ptr, ptr %i.dd, align 8, !tbaa !42
  %i.de = ptrtoint ptr %.val83 to i64             ; 2 uses
  %i.df = and i64 %i.de, -2                       ; 2 uses
  %.not.i93 = icmp eq i64 %i.df, 0
  br i1 %.not.i93, label %Aig_ObjChild0Copy.exit94, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !36
  %i.dj = and i64 %i.de, 1
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = xor i64 %i.dj, %i.dk
  %i.dm = inttoptr i64 %i.dl to ptr
  br label %Aig_ObjChild0Copy.exit94

Aig_ObjChild0Copy.exit94:                         ; preds = %bb.q, %bb.r
  %i.dn = phi ptr [ %i.dm, %bb.r ], [ null, %bb.q ]
  %i.do = getelementptr i8, ptr %i.cm, i64 16
  %.val86 = load ptr, ptr %i.do, align 8, !tbaa !43
  %i.dp = ptrtoint ptr %.val86 to i64             ; 2 uses
  %i.dq = and i64 %i.dp, -2                       ; 2 uses
  %.not.i95 = icmp eq i64 %i.dq, 0
  br i1 %.not.i95, label %Aig_ObjChild1Copy.exit, label %bb.s

bb.s:                                             ; preds = %Aig_ObjChild0Copy.exit94
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  %i.du = and i64 %i.dp, 1
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = xor i64 %i.du, %i.dv
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit94, %bb.s
  %i.dy = phi ptr [ %i.dx, %bb.s ], [ null, %Aig_ObjChild0Copy.exit94 ]
  %i.dz = tail call ptr @Aig_And(ptr noundef nonnull %i.c, ptr noundef %i.dn, ptr noundef %i.dy) #12
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.o, %bb.n, %Aig_ObjChild1Copy.exit
  %.sink = phi ptr [ %i.dz, %Aig_ObjChild1Copy.exit ], [ %i.cz, %bb.o ], [ null, %bb.n ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store ptr %.sink, ptr %i.ea, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.lr.ph103, %bb.p
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 4
  %.val72 = load i32, ptr %i.ec, align 4, !tbaa !25
  %i.ed = sext i32 %.val72 to i64
  %i.ee = icmp slt i64 %indvars.iv.next113, %i.ed
  br i1 %i.ee, label %.lr.ph103, label %.critedge2.preheader, !llvm.loop !66

.lr.ph106:                                        ; preds = %.critedge2.preheader, %Aig_ObjChild0Copy.exit97
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %Aig_ObjChild0Copy.exit97 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %i.ef = phi ptr [ %i.ew, %Aig_ObjChild0Copy.exit97 ], [ %i.cg, %.critedge2.preheader ]
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val78 = load ptr, ptr %i.eg, align 8, !tbaa !38
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.val78, i64 %indvars.iv115
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !39 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %.val82 = load ptr, ptr %i.ej, align 8, !tbaa !42
  %i.ek = ptrtoint ptr %.val82 to i64             ; 2 uses
  %i.el = and i64 %i.ek, -2                       ; 2 uses
  %.not.i96 = icmp eq i64 %i.el, 0
  br i1 %.not.i96, label %Aig_ObjChild0Copy.exit97, label %bb.t

bb.t:                                             ; preds = %.lr.ph106
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !36
  %i.ep = and i64 %i.ek, 1
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = xor i64 %i.ep, %i.eq
  %i.es = inttoptr i64 %i.er to ptr
  br label %Aig_ObjChild0Copy.exit97

Aig_ObjChild0Copy.exit97:                         ; preds = %.lr.ph106, %bb.t
  %i.et = phi ptr [ %i.es, %bb.t ], [ null, %.lr.ph106 ]
  %i.eu = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.et) #12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !36
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %i.ew = load ptr, ptr %i.cf, align 8, !tbaa !41 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val = load i32, ptr %i.ex, align 4, !tbaa !25
  %i.ey = sext i32 %.val to i64
  %i.ez = icmp slt i64 %indvars.iv.next116, %i.ey
  br i1 %i.ez, label %.lr.ph106, label %.critedge4, !llvm.loop !67

.critedge4:                                       ; preds = %Aig_ObjChild0Copy.exit97, %.critedge2.preheader
  %i.fa = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.fb = getelementptr i8, ptr %0, i64 104
  %.val87 = load i32, ptr %i.fb, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val87) #12
  %i.fc = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not68 = icmp eq i32 %i.fc, 0
  br i1 %.not68, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge4
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge4
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupTrim(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val48 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val48, i64 4
  %.val48.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val48.val) #12 ; 11 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
end_hunk_1
begin_hunk_2_@Aig_ManDupTrim:bb.a
  %i.bb = xor i64 %i.az, %i.ba
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.h
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.be = tail call ptr @Aig_Oper(ptr noundef nonnull %i.c, ptr noundef %i.as, ptr noundef %i.bd, i32 noundef %i.ag) #12
  br label %Saig_ObjIsLo.exit.thread

bb.i:                                             ; preds = %bb.e
  %i.bf = and i64 %.val53, 7
  switch i64 %i.bf, label %Saig_ObjIsLo.exit.thread [
    i64 2, label %bb.j
    i64 3, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %.not46 = icmp ult i32 %i.af, 64
  br i1 %.not46, label %Saig_ObjIsLo.exit, label %bb.k

Saig_ObjIsLo.exit:                                ; preds = %bb.j
  %.val3.i = load i32, ptr %i.ac, align 8, !tbaa !36
  %.val4.i = load i32, ptr %i.y, align 4, !tbaa !47
  %.not70 = icmp slt i32 %.val3.i, %.val4.i
  br i1 %.not70, label %Saig_ObjIsLo.exit.thread, label %bb.k

bb.k:                                             ; preds = %Saig_ObjIsLo.exit, %bb.j
  %i.bg = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12
  br label %Saig_ObjIsLo.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.bh = getelementptr i8, ptr %i.ac, i64 8
  %.val51 = load ptr, ptr %i.bh, align 8, !tbaa !42
  %i.bi = ptrtoint ptr %.val51 to i64             ; 2 uses
  %i.bj = and i64 %i.bi, -2                       ; 2 uses
  %.not.i66 = icmp eq i64 %i.bj, 0
  br i1 %.not.i66, label %Aig_ObjChild0Copy.exit67, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = and i64 %i.bi, 1
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = xor i64 %i.bn, %i.bo
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %Aig_ObjChild0Copy.exit67

Aig_ObjChild0Copy.exit67:                         ; preds = %bb.l, %bb.m
  %i.br = phi ptr [ %i.bq, %bb.m ], [ null, %bb.l ]
  %i.bs = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.br) #12
  br label %Saig_ObjIsLo.exit.thread

bb.n:                                             ; preds = %bb.i
  %.val49 = load ptr, ptr %i.x, align 8, !tbaa !35
  br label %Saig_ObjIsLo.exit.thread

Saig_ObjIsLo.exit.thread:                         ; preds = %bb.i, %bb.k, %Saig_ObjIsLo.exit, %bb.n, %Aig_ObjChild0Copy.exit67, %Aig_ObjChild1Copy.exit
  %.1 = phi ptr [ %i.be, %Aig_ObjChild1Copy.exit ], [ %.03874, %bb.i ], [ %i.bs, %Aig_ObjChild0Copy.exit67 ], [ %.val49, %bb.n ], [ %i.bg, %bb.k ], [ null, %Saig_ObjIsLo.exit ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %.1, ptr %i.bt, align 8, !tbaa !36
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %Saig_ObjIsLo.exit.thread, %bb.d
  %i.bu = phi ptr [ %i.z, %bb.d ], [ %.pre, %Saig_ObjIsLo.exit.thread ] ; 2 uses
  %.2 = phi ptr [ %.03874, %bb.d ], [ %.1, %Saig_ObjIsLo.exit.thread ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %.val = load i32, ptr %i.bv, align 4, !tbaa !25
  %i.bw = sext i32 %.val to i64
  %i.bx = icmp slt i64 %indvars.iv.next, %i.bw
  br i1 %i.bx, label %bb.d, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.o, %Abc_UtilStrsav.exit62
  %i.by = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.by) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge
  %i.ca = getelementptr i8, ptr %0, i64 104
  %.val55 = load i32, ptr %i.ca, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val55) #12
  %i.cb = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not41 = icmp eq i32 %i.cb, 0
  br i1 %.not41, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupExor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val58 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val58, i64 4
  %.val58.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val58.val) #12 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 316
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.e = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.e) #13
  %i.g = add i64 %i.f, 1
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #14 ; 2 uses
  %i.i = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %i.e) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  store ptr %i.j, ptr %i.c, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %.not.i72 = icmp eq ptr %i.l, null
  br i1 %.not.i72, label %Abc_UtilStrsav.exit73, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.m = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.l) #13
  %i.n = add i64 %i.m, 1
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #14 ; 2 uses
  %i.p = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull readonly dereferenceable(1) %i.l) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit73

Abc_UtilStrsav.exit73:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.q = phi ptr [ %i.o, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !28
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.w, ptr %i.x, align 4, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit73
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !32
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !33
  %.not.i74 = icmp eq i32 %i.ac, 0
  br i1 %.not.i74, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = sext i32 %i.ac to i64
  %i.af = shl nsw i64 %i.ae, 2                    ; 2 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ah = phi ptr [ %i.ag, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.ak, i64 %.pre-phi12.i, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit73
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val85 = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ao = icmp sgt i32 %.val85, 0
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.c, i64 48
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %i.aq = phi ptr [ %i.am, %.lr.ph ], [ %i.cz, %bb.t ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %.04786 = phi ptr [ null, %.lr.ph ], [ %.2, %bb.t ] ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val60 = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.val60, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  %.val61 = load i64, ptr %i.av, align 8          ; 2 uses
  %i.aw = and i64 %.val61, 7                      ; 2 uses
  %.not81 = icmp eq i64 %i.aw, 4
  br i1 %.not81, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val64 = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.ay = ptrtoint ptr %.val64 to i64             ; 2 uses
  %i.az = and i64 %i.ay, -2                       ; 2 uses
  %.not.i75 = icmp eq i64 %i.az, 0
  br i1 %.not.i75, label %Aig_ObjChild0Copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !36
  %i.bd = and i64 %i.ay, 1
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = xor i64 %i.bd, %i.be
  %i.bg = inttoptr i64 %i.bf to ptr
  br label %Aig_ObjChild0Copy.exit

bb.k:                                             ; preds = %bb.h
  %i.bh = trunc i64 %.val61 to i32
  %i.bi = and i32 %i.bh, 7                        ; 2 uses
  %i.bj = add nsw i32 %i.bi, -7
  %narrow.i = icmp ult i32 %i.bj, -2
  br i1 %narrow.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr i8, ptr %i.at, i64 8
  %.val63 = load ptr, ptr %i.bk, align 8, !tbaa !42
  %i.bl = ptrtoint ptr %.val63 to i64             ; 2 uses
  %i.bm = and i64 %i.bl, -2                       ; 2 uses
  %.not.i76 = icmp eq i64 %i.bm, 0
  br i1 %.not.i76, label %Aig_ObjChild0Copy.exit77, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !36
  %i.bq = and i64 %i.bl, 1
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %Aig_ObjChild0Copy.exit77

Aig_ObjChild0Copy.exit77:                         ; preds = %bb.l, %bb.m
  %i.bu = phi ptr [ %i.bt, %bb.m ], [ null, %bb.l ]
  %i.bv = getelementptr i8, ptr %i.at, i64 16
  %.val66 = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.bw = ptrtoint ptr %.val66 to i64             ; 2 uses
  %i.bx = and i64 %i.bw, -2                       ; 2 uses
  %.not.i78 = icmp eq i64 %i.bx, 0
  br i1 %.not.i78, label %Aig_ObjChild1Copy.exit, label %bb.n

bb.n:                                             ; preds = %Aig_ObjChild0Copy.exit77
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !36
  %i.cb = and i64 %i.bw, 1
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = xor i64 %i.cb, %i.cc
  %i.ce = inttoptr i64 %i.cd to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit77, %bb.n
  %i.cf = phi ptr [ %i.ce, %bb.n ], [ null, %Aig_ObjChild0Copy.exit77 ]
  %i.cg = tail call ptr @Aig_Oper(ptr noundef nonnull %i.c, ptr noundef %i.bu, ptr noundef %i.cf, i32 noundef %i.bi) #12
  br label %Aig_ObjChild0Copy.exit

bb.o:                                             ; preds = %bb.k
  switch i64 %i.aw, label %Aig_ObjChild0Copy.exit [
    i64 2, label %bb.p
    i64 3, label %bb.q
    i64 1, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.ch = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %1 = load i64, ptr %i.av, align 8
  %2 = and i64 %1, 72057589742960640
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = and i64 %i.cj, -72057589742960641
  %i.cl = or disjoint i64 %i.ck, %2
  store i64 %i.cl, ptr %i.ci, align 8
  br label %Aig_ObjChild0Copy.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = getelementptr i8, ptr %i.at, i64 8
  %.val62 = load ptr, ptr %i.cm, align 8, !tbaa !42
  %i.cn = ptrtoint ptr %.val62 to i64             ; 2 uses
  %i.co = and i64 %i.cn, -2                       ; 2 uses
  %.not.i79 = icmp eq i64 %i.co, 0
  br i1 %.not.i79, label %Aig_ObjChild0Copy.exit80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !36
  %i.cs = and i64 %i.cn, 1
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = inttoptr i64 %i.cu to ptr
  br label %Aig_ObjChild0Copy.exit80

Aig_ObjChild0Copy.exit80:                         ; preds = %bb.q, %bb.r
  %i.cw = phi ptr [ %i.cv, %bb.r ], [ null, %bb.q ]
  %i.cx = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.cw) #12
  br label %Aig_ObjChild0Copy.exit

bb.s:                                             ; preds = %bb.o
  %.val59 = load ptr, ptr %i.ap, align 8, !tbaa !35
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.o, %bb.j, %bb.i, %Aig_ObjChild1Copy.exit, %Aig_ObjChild0Copy.exit80, %bb.s, %bb.p
  %.1 = phi ptr [ %.04786, %bb.o ], [ %i.cg, %Aig_ObjChild1Copy.exit ], [ %i.ch, %bb.p ], [ %i.cx, %Aig_ObjChild0Copy.exit80 ], [ %.val59, %bb.s ], [ %i.bg, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %.1, ptr %i.cy, align 8, !tbaa !36
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %Aig_ObjChild0Copy.exit, %bb.g
  %i.cz = phi ptr [ %i.aq, %bb.g ], [ %.pre, %Aig_ObjChild0Copy.exit ] ; 2 uses
  %.2 = phi ptr [ %.04786, %bb.g ], [ %.1, %Aig_ObjChild0Copy.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 4
  %.val = load i32, ptr %i.da, align 4, !tbaa !25
  %i.db = sext i32 %.val to i64
  %i.dc = icmp slt i64 %indvars.iv.next, %i.db
  br i1 %i.dc, label %bb.g, label %.critedge, !llvm.loop !69

.critedge:                                        ; preds = %bb.t, %bb.f
  %i.dd = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.de = getelementptr i8, ptr %0, i64 104
  %.val67 = load i32, ptr %i.de, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val67) #12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !46 ; 2 uses
  %.not51 = icmp eq ptr %i.dg, null
  br i1 %.not51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.dh = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.dg, i32 noundef 0) #12
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.critedge
  %i.dj = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not52 = icmp eq i32 %i.dj, 0
  br i1 %.not52, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupDfs_rec(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %.not36 = icmp eq ptr %i.d, null
  br i1 %.not36, label %bb.c, label %Aig_ObjEquiv.exit

Aig_ObjEquiv.exit:                                ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 2 uses
  %.not37 = icmp eq ptr %i.i, null
  br i1 %.not37, label %bb.c, label %Aig_ObjEquiv.exit51

Aig_ObjEquiv.exit51:                              ; preds = %Aig_ObjEquiv.exit
  %i.j = tail call ptr @Aig_ManDupDfs_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %Aig_ObjEquiv.exit51, %Aig_ObjEquiv.exit, %bb.b
  %.0 = phi ptr [ %i.j, %Aig_ObjEquiv.exit51 ], [ null, %Aig_ObjEquiv.exit ], [ null, %bb.b ] ; 3 uses
  %i.k = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %.val42 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.l = ptrtoint ptr %.val42 to i64
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call ptr @Aig_ManDupDfs_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.n) ; 0 uses
  %i.p = getelementptr i8, ptr %2, i64 24         ; 2 uses
  %.val = load i64, ptr %i.p, align 8
  %i.q = and i64 %.val, 7
  %.not56 = icmp eq i64 %i.q, 4
  br i1 %.not56, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.val44 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.r = ptrtoint ptr %.val44 to i64              ; 2 uses
  %i.s = and i64 %i.r, -2                         ; 2 uses
  %.not.i52 = icmp eq i64 %i.s, 0
  br i1 %.not.i52, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = and i64 %i.r, 1
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = xor i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val45 = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ab = ptrtoint ptr %.val45 to i64
  %i.ac = and i64 %i.ab, -2
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = tail call ptr @Aig_ManDupDfs_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ad) ; 0 uses
  %.val43 = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.af = ptrtoint ptr %.val43 to i64             ; 2 uses
  %i.ag = and i64 %i.af, -2                       ; 2 uses
  %.not.i53 = icmp eq i64 %i.ag, 0
  br i1 %.not.i53, label %Aig_ObjChild0Copy.exit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ak = and i64 %i.af, 1
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = xor i64 %i.ak, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  br label %Aig_ObjChild0Copy.exit54

Aig_ObjChild0Copy.exit54:                         ; preds = %bb.f, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.g ], [ null, %bb.f ]
  %.val46 = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ap = ptrtoint ptr %.val46 to i64             ; 2 uses
  %i.aq = and i64 %i.ap, -2                       ; 2 uses
  %.not.i55 = icmp eq i64 %i.aq, 0
  br i1 %.not.i55, label %Aig_ObjChild1Copy.exit, label %bb.h

bb.h:                                             ; preds = %Aig_ObjChild0Copy.exit54
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = and i64 %i.ap, 1
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = xor i64 %i.au, %i.av
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit54, %bb.h
  %i.ay = phi ptr [ %i.ax, %bb.h ], [ null, %Aig_ObjChild0Copy.exit54 ]
  %.val47 = load i64, ptr %i.p, align 8
  %i.az = trunc i64 %.val47 to i32
  %i.ba = and i32 %i.az, 7
  %i.bb = tail call ptr @Aig_Oper(ptr noundef %0, ptr noundef %i.ao, ptr noundef %i.ay, i32 noundef %i.ba) #12 ; 5 uses
  %.not39 = icmp eq ptr %.0, null
  br i1 %.not39, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %Aig_ObjChild1Copy.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !48 ; 2 uses
  %.not40 = icmp eq ptr %i.bd, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = ptrtoint ptr %.0 to i64
  %i.bf = and i64 %i.be, -2
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = and i64 %i.bh, -2
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !45
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.bm
  store ptr %i.bg, ptr %i.bn, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50 ; 2 uses
  %.not41 = icmp eq ptr %i.bp, null
  br i1 %.not41, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = ptrtoint ptr %i.bb to i64
  %i.br = and i64 %i.bq, -2
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = ptrtoint ptr %.0 to i64
  %i.bu = and i64 %i.bt, -2
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !45
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.by
  store ptr %i.bs, ptr %i.bz, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %Aig_ObjChild1Copy.exit, %bb.l, %bb.k, %bb.e, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.z, %bb.e ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %Aig_ObjChild1Copy.exit ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !36
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.034 = phi ptr [ %i.b, %bb.a ], [ %.sink, %.sink.split ]
  ret ptr %.034
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupDfs(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %.val66 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val66, i64 4
  %.val66.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val66.val) #12 ; 16 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i75 = icmp eq ptr %i.k, null
  br i1 %.not.i75, label %Abc_UtilStrsav.exit76, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit76

Abc_UtilStrsav.exit76:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit76
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i77 = icmp eq i32 %i.ab, 0
  br i1 %.not.i77, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit76
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %.not57 = icmp eq ptr %i.am, null
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val65 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.an = getelementptr i8, ptr %.val65, i64 4
  %.val65.val = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ao = sext i32 %.val65.val to i64
  %i.ap = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 8) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %.not58 = icmp eq ptr %i.as, null
  br i1 %.not58, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val64 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.at = getelementptr i8, ptr %.val64, i64 4
  %.val64.val = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = sext i32 %.val64.val to i64
  %i.av = tail call noalias ptr @calloc(i64 noundef %i.au, i64 noundef 8) #15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.ax = getelementptr i8, ptr %i.c, i64 48
  %.val68 = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr i8, ptr %0, i64 48
  %.val67 = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.val67, i64 40
  store ptr %.val68, ptr %i.az, align 8, !tbaa !36
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.val81 = load i32, ptr %i.bb, align 4, !tbaa !25
  %i.bc = icmp sgt i32 %.val81, 0
  br i1 %i.bc, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.j ] ; 2 uses
  %i.bd = phi ptr [ %i.cg, %bb.o ], [ %i.ba, %bb.j ]
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %.val69 = load ptr, ptr %i.be, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val69, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.o, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %i.bg, i64 24     ; 2 uses
  %.val74 = load i64, ptr %i.bi, align 8
  %i.bj = and i64 %.val74, 7
  switch i64 %i.bj, label %bb.o [
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bk = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %1 = load i64, ptr %i.bi, align 8
  %2 = and i64 %1, 72057589742960640
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, -72057589742960641
  %i.bo = or disjoint i64 %i.bn, %2
  store i64 %i.bo, ptr %i.bl, align 8
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bp = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %.val70 = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.bq = ptrtoint ptr %.val70 to i64
  %i.br = and i64 %i.bq, -2
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = tail call ptr @Aig_ManDupDfs_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %i.bs) ; 0 uses
  %.val71 = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.bu = ptrtoint ptr %.val71 to i64             ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %.not.i78 = icmp eq i64 %i.bv, 0
  br i1 %.not.i78, label %Aig_ObjChild0Copy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = and i64 %i.bu, 1
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = xor i64 %i.bz, %i.ca
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.m, %bb.n
  %i.cd = phi ptr [ %i.cc, %bb.n ], [ null, %bb.m ]
  %i.ce = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.cd) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %Aig_ObjChild0Copy.exit
  %.sink = phi ptr [ %i.ce, %Aig_ObjChild0Copy.exit ], [ %i.bk, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store ptr %.sink, ptr %i.cf, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.k, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val = load i32, ptr %i.ch, align 4, !tbaa !25
  %i.ci = sext i32 %.val to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %.critedge, !llvm.loop !71

.critedge:                                        ; preds = %bb.o, %bb.j
  %i.ck = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.critedge
  %i.cm = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.co = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not59 = icmp eq i32 %i.co, 0
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.co) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.critedge
  %i.cq = getelementptr i8, ptr %0, i64 104
  %.val72 = load i32, ptr %i.cq, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val72) #12
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %.not60 = icmp eq ptr %i.cs, null
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.cs, i32 noundef 0) #12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cv = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not61 = icmp eq i32 %i.cv, 0
  br i1 %.not61, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Aig_ManOrderPios(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @Aig_ManSetCioIds(ptr noundef %1) #12
  %i.a = getelementptr i8, ptr %0, i64 136
  %.val25 = load i32, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr i8, ptr %0, i64 140
  %.val26 = load i32, ptr %i.b, align 4, !tbaa !28
  %i.c = add nsw i32 %.val26, %.val25             ; 2 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 5 uses
  %i.e = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.e, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.c ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !25
  store i32 %spec.store.select.i, ptr %i.d, align 8, !tbaa !73
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_PtrAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #14
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val39 = load i32, ptr %i.n, align 4, !tbaa !25
  %i.o = icmp sgt i32 %.val39, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.w
  %i.r = phi ptr [ %i.j, %.lr.ph ], [ %i.bj, %bb.w ] ; 8 uses
  %i.s = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.bk, %bb.w ] ; 13 uses
  %i.t = phi ptr [ %i.j, %.lr.ph ], [ %i.bl, %bb.w ] ; 8 uses
  %i.u = phi ptr [ %i.j, %.lr.ph ], [ %i.bm, %bb.w ] ; 6 uses
  %i.v = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.bn, %bb.w ] ; 9 uses
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.bo, %bb.w ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %i.x = phi ptr [ %i.m, %.lr.ph ], [ %i.bp, %bb.w ]
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val20 = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val20, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39  ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %i.aa, i64 24
  %.val22 = load i64, ptr %i.ac, align 8
  %i.ad = and i64 %.val22, 7
  switch i64 %i.ad, label %bb.w [
    i64 2, label %bb.e
    i64 3, label %bb.n
  ]

bb.e:                                             ; preds = %bb.d
  %.val24 = load i32, ptr %i.aa, align 8, !tbaa !36
  %.val27 = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.ae = getelementptr i8, ptr %.val27, i64 8
  %.val27.val = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.af = sext i32 %.val24 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val27.val, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 6 uses
  %i.ai = icmp eq i32 %i.w, %i.s
  br i1 %i.ai, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp slt i32 %i.s, 16
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.t, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.t, i64 noundef 128) #16
  br label %.sink.split.sink.split

bb.i:                                             ; preds = %bb.g
  %i.al = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14
  br label %.sink.split.sink.split

bb.j:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i32 %i.s, 1073741823
  %i.an = shl nuw nsw i32 %i.s, 1
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 2147483647 ; 4 uses
  %.not.i10.i = icmp samesign ult i32 %i.s, %spec.select.i
  br i1 %.not.i10.i, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %.not9.i11.i = icmp eq ptr %i.t, null
  %i.ao = zext nneg i32 %spec.select.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
end_hunk_2
begin_hunk_3_@Aig_ManDupDfsGuided_rec:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = and i64 %i.aq, 1
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit59, %bb.k
  %i.az = phi ptr [ %i.ay, %bb.k ], [ null, %Aig_ObjChild0Copy.exit59 ]
  %.val51 = load i64, ptr %i.c, align 8
  %i.ba = trunc i64 %.val51 to i32
  %i.bb = and i32 %i.ba, 7
  %i.bc = tail call ptr @Aig_Oper(ptr noundef %0, ptr noundef %i.ap, ptr noundef %i.az, i32 noundef %i.bb) #12 ; 5 uses
  %.not43 = icmp eq ptr %.0, null
  br i1 %.not43, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %Aig_ObjChild1Copy.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !48 ; 2 uses
  %.not44 = icmp eq ptr %i.be, null
  br i1 %.not44, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = ptrtoint ptr %.0 to i64
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = and i64 %i.bi, -2
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !45
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bn
  store ptr %i.bh, ptr %i.bo, align 8, !tbaa !49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50 ; 2 uses
  %.not45 = icmp eq ptr %i.bq, null
  br i1 %.not45, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = ptrtoint ptr %i.bc to i64
  %i.bs = and i64 %i.br, -2
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = ptrtoint ptr %.0 to i64
  %i.bv = and i64 %i.bu, -2
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.bz
  store ptr %i.bt, ptr %i.ca, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %Aig_ObjChild1Copy.exit, %bb.o, %bb.n, %bb.g, %bb.f
  %.sink = phi ptr [ null, %bb.f ], [ %i.aa, %bb.g ], [ %i.bc, %bb.n ], [ %i.bc, %bb.o ], [ %i.bc, %Aig_ObjChild1Copy.exit ] ; 2 uses
  store ptr %.sink, ptr %i.a, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.h, %bb.d, %bb.b, %bb.a
  %.035 = phi ptr [ null, %bb.b ], [ %i.b, %bb.a ], [ null, %bb.d ], [ null, %bb.h ], [ %.sink, %.sink.split ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupDfsGuided(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val70 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val70, i64 4
  %.val70.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val70.val) #12 ; 16 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i79 = icmp eq ptr %i.k, null
  br i1 %.not.i79, label %Abc_UtilStrsav.exit80, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit80

Abc_UtilStrsav.exit80:                            ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit80
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i81 = icmp eq i32 %i.ab, 0
  br i1 %.not.i81, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit80
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %.not59 = icmp eq ptr %i.am, null
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val69 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.an = getelementptr i8, ptr %.val69, i64 4
  %.val69.val = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ao = sext i32 %.val69.val to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %calloc94 = tail call ptr @calloc(i64 1, i64 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr %calloc94, ptr %i.aq, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %.not60 = icmp eq ptr %i.as, null
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val67 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.at = getelementptr i8, ptr %.val67, i64 4
  %.val67.val = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = sext i32 %.val67.val to i64
  %i.av = shl nsw i64 %i.au, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %calloc, ptr %i.aw, align 8, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @Aig_ManCleanData(ptr noundef nonnull %0) #12
  %i.ax = getelementptr i8, ptr %i.c, i64 48
  %.val72 = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr i8, ptr %0, i64 48
  %.val71 = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.val71, i64 40
  store ptr %.val72, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val85 = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.bb = icmp sgt i32 %.val85, 0
  br i1 %i.bb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j
  %i.bc = getelementptr i8, ptr %1, i64 8
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.val73 = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val73, i64 %indvars.iv
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !39 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 24     ; 2 uses
  %.val78 = load i64, ptr %i.bf, align 8
  %i.bg = and i64 %.val78, 7
  switch i64 %i.bg, label %bb.o [
    i64 2, label %bb.l
    i64 3, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.bh = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %2 = load i64, ptr %i.bf, align 8
  %3 = and i64 %2, 72057589742960640
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, -72057589742960641
  %i.bl = or disjoint i64 %i.bk, %3
  store i64 %i.bl, ptr %i.bi, align 8
  br label %.sink.split

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %.val74 = load ptr, ptr %i.bm, align 8, !tbaa !42
  %i.bn = ptrtoint ptr %.val74 to i64
  %i.bo = and i64 %i.bn, -2
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call ptr @Aig_ManDupDfsGuided_rec(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %i.bp) ; 0 uses
  %.val75 = load ptr, ptr %i.bm, align 8, !tbaa !42
  %i.br = ptrtoint ptr %.val75 to i64             ; 2 uses
  %i.bs = and i64 %i.br, -2                       ; 2 uses
  %.not.i82 = icmp eq i64 %i.bs, 0
  br i1 %.not.i82, label %Aig_ObjChild0Copy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = and i64 %i.br, 1
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = xor i64 %i.bw, %i.bx
  %i.bz = inttoptr i64 %i.by to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %bb.m, %bb.n
  %i.ca = phi ptr [ %i.bz, %bb.n ], [ null, %bb.m ]
  %i.cb = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.ca) #12
  br label %.sink.split

.sink.split:                                      ; preds = %Aig_ObjChild0Copy.exit, %bb.l
  %.sink = phi ptr [ %i.bh, %bb.l ], [ %i.cb, %Aig_ObjChild0Copy.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %.sink, ptr %i.cc, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.ba, align 4, !tbaa !25
  %i.cd = sext i32 %.val to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.k, label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %bb.o, %bb.j
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.critedge
  %i.ch = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call i32 @Aig_ManCleanup(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not61 = icmp eq i32 %i.cj, 0
  br i1 %.not61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.cj) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %.critedge
  %i.cl = getelementptr i8, ptr %0, i64 104
  %.val76 = load i32, ptr %i.cl, align 8, !tbaa !44
  tail call void @Aig_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val76) #12
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46 ; 2 uses
  %.not62 = icmp eq ptr %i.cn, null
  br i1 %.not62, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.cn, i32 noundef 0) #12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = tail call i32 @Aig_ManCheck(ptr noundef nonnull %i.c) #12
  %.not63 = icmp eq i32 %i.cq, 0
  br i1 %.not63, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Aig_ManDupLevelized(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %.val86 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr i8, ptr %.val86, i64 4
  %.val86.val = load i32, ptr %i.b, align 4, !tbaa !25
  %i.c = tail call ptr @Aig_ManStart(i32 noundef %.val86.val) #12 ; 15 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Abc_UtilStrsav.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.d) #13
  %i.f = add i64 %i.e, 1
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #14 ; 2 uses
  %i.h = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull readonly dereferenceable(1) %i.d) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %i.i, ptr %i.c, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %.not.i100 = icmp eq ptr %i.k, null
  br i1 %.not.i100, label %Abc_UtilStrsav.exit101, label %bb.c

bb.c:                                             ; preds = %Abc_UtilStrsav.exit
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.k) #13
  %i.m = add i64 %i.l, 1
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #14 ; 2 uses
  %i.o = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull readonly dereferenceable(1) %i.k) #12 ; 0 uses
  br label %Abc_UtilStrsav.exit101

Abc_UtilStrsav.exit101:                           ; preds = %Abc_UtilStrsav.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ null, %Abc_UtilStrsav.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.t = load <2 x i32>, ptr %i.r, align 4, !tbaa !28
  store <2 x i32> %i.t, ptr %i.s, align 4, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %Abc_UtilStrsav.exit101
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !33
  %.not.i102 = icmp eq i32 %i.ab, 0
  br i1 %.not.i102, label %Vec_IntDup.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 2 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #14
  br label %Vec_IntDup.exit

Vec_IntDup.exit:                                  ; preds = %bb.d, %bb.e
  %.pre-phi12.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ag, ptr align 4 %i.aj, i64 %.pre-phi12.i, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store ptr %i.z, ptr %i.ak, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %Vec_IntDup.exit, %Abc_UtilStrsav.exit101
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %.not76 = icmp eq ptr %i.am, null
  br i1 %.not76, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val85 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.an = getelementptr i8, ptr %.val85, i64 4
  %.val85.val = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ao = sext i32 %.val85.val to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %calloc145 = tail call ptr @calloc(i64 1, i64 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store ptr %calloc145, ptr %i.aq, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50
  %.not77 = icmp eq ptr %i.as, null
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val83 = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.at = getelementptr i8, ptr %.val83, i64 4
  %.val83.val = load i32, ptr %i.at, align 4, !tbaa !25
  %i.au = sext i32 %.val83.val to i64
  %i.av = shl nsw i64 %i.au, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr %calloc, ptr %i.aw, align 8, !tbaa !50
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = getelementptr i8, ptr %i.c, i64 48
  %.val88 = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr i8, ptr %0, i64 48
  %.val87 = load ptr, ptr %i.ay, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.val87, i64 40
  store ptr %.val88, ptr %i.az, align 8, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 4
  %.val81108 = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.bd = icmp sgt i32 %.val81108, 0
  br i1 %i.bd, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.be = phi ptr [ %i.bp, %.lr.ph ], [ %i.bb, %bb.j ]
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val91 = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.val91, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %i.bi = tail call ptr @Aig_ObjCreateCi(ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %1 = load i64, ptr %i.bj, align 8
  %2 = and i64 %1, 72057589742960640
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, -72057589742960641
  %i.bn = or disjoint i64 %i.bm, %2
  store i64 %i.bn, ptr %i.bk, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %.val81 = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.br = sext i32 %.val81 to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %bb.j
  %i.bt = tail call ptr @Aig_ManLevelize(ptr noundef nonnull %0) #12 ; 5 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4      ; 3 uses
  %.val97114 = load i32, ptr %i.bu, align 4, !tbaa !81 ; 2 uses
  %i.bv = icmp sgt i32 %.val97114, 0
  br i1 %i.bv, label %.preheader.lr.ph, label %.critedge.i

.preheader.lr.ph:                                 ; preds = %.critedge
  %i.bw = getelementptr i8, ptr %i.bt, i64 8      ; 2 uses
  %.val99110.pre = load ptr, ptr %i.bw, align 8, !tbaa !82
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge2
  %.val97132 = phi i32 [ %.val97114, %.preheader.lr.ph ], [ %.val97, %.critedge2 ]
  %.val99110 = phi ptr [ %.val99110.pre, %.preheader.lr.ph ], [ %.val99110130, %.critedge2 ] ; 2 uses
  %indvars.iv124 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next125, %.critedge2 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val99110, i64 %indvars.iv124
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %.val80111 = load i32, ptr %i.bz, align 4, !tbaa !25
  %i.ca = icmp sgt i32 %.val80111, 0
  br i1 %i.ca, label %.lr.ph113, label %.critedge2

.lr.ph113:                                        ; preds = %.preheader, %Aig_ObjChild1Copy.exit
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %Aig_ObjChild1Copy.exit ], [ 0, %.preheader ] ; 2 uses
  %i.cb = phi ptr [ %i.dh, %Aig_ObjChild1Copy.exit ], [ %i.by, %.preheader ]
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val90 = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv121
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39 ; 4 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val93 = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.cg = ptrtoint ptr %.val93 to i64             ; 2 uses
  %i.ch = and i64 %i.cg, -2                       ; 2 uses
  %.not.i103 = icmp eq i64 %i.ch, 0
  br i1 %.not.i103, label %Aig_ObjChild0Copy.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph113
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = and i64 %i.cg, 1
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = xor i64 %i.cl, %i.cm
  %i.co = inttoptr i64 %i.cn to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %.lr.ph113, %bb.k
  %i.cp = phi ptr [ %i.co, %bb.k ], [ null, %.lr.ph113 ]
  %i.cq = getelementptr i8, ptr %i.ce, i64 16
  %.val94 = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cr = ptrtoint ptr %.val94 to i64             ; 2 uses
  %i.cs = and i64 %i.cr, -2                       ; 2 uses
  %.not.i104 = icmp eq i64 %i.cs, 0
  br i1 %.not.i104, label %Aig_ObjChild1Copy.exit, label %bb.l

bb.l:                                             ; preds = %Aig_ObjChild0Copy.exit
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.cw = and i64 %i.cr, 1
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = xor i64 %i.cw, %i.cx
  %i.cz = inttoptr i64 %i.cy to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.l
  %i.da = phi ptr [ %i.cz, %bb.l ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.db = getelementptr i8, ptr %i.ce, i64 24
  %.val96 = load i64, ptr %i.db, align 8
  %i.dc = trunc i64 %.val96 to i32
  %i.dd = and i32 %i.dc, 7
  %i.de = tail call ptr @Aig_Oper(ptr noundef nonnull %i.c, ptr noundef %i.cp, ptr noundef %i.da, i32 noundef %i.dd) #12
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %i.de, ptr %i.df, align 8, !tbaa !36
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %.val99 = load ptr, ptr %i.bw, align 8, !tbaa !82 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.val99, i64 %indvars.iv124
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  %.val80 = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dj = sext i32 %.val80 to i64
  %i.dk = icmp slt i64 %indvars.iv.next122, %i.dj
  br i1 %i.dk, label %.lr.ph113, label %.critedge2.loopexit, !llvm.loop !76

.critedge2.loopexit:                              ; preds = %Aig_ObjChild1Copy.exit
  %.val97.pre = load i32, ptr %i.bu, align 4, !tbaa !81
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader
  %.val97 = phi i32 [ %.val97.pre, %.critedge2.loopexit ], [ %.val97132, %.preheader ] ; 4 uses
  %.val99110130 = phi ptr [ %.val99, %.critedge2.loopexit ], [ %.val99110, %.preheader ]
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %i.dl = sext i32 %.val97 to i64
  %i.dm = icmp slt i64 %indvars.iv.next125, %i.dl
  br i1 %i.dm, label %.preheader, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.critedge2
  %i.dn = icmp sgt i32 %.val97, 0
  br i1 %i.dn, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.do = getelementptr i8, ptr %i.bt, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.lr.ph.i
  %.val14.i = phi i32 [ %.val97, %.lr.ph.i ], [ %.val.i, %bb.p ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %.val8.i = load ptr, ptr %i.do, align 8, !tbaa !82
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val8.i, i64 %indvars.iv.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39 ; 3 uses
  %.not.i105 = icmp eq ptr %i.dq, null
  br i1 %.not.i105, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i, label %Vec_PtrFree.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.ds) #12
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.o, %bb.n
  tail call void @free(ptr noundef nonnull %i.dq) #12
  %.val.pre.i = load i32, ptr %i.bu, align 4, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %Vec_PtrFree.exit.i, %bb.m
  %.val.i = phi i32 [ %.val14.i, %bb.m ], [ %.val.pre.i, %Vec_PtrFree.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dt = sext i32 %.val.i to i64
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.dt
  br i1 %i.du, label %bb.m, label %.critedge.i, !llvm.loop !78

.critedge.i:                                      ; preds = %bb.p, %.critedge, %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !38 ; 2 uses
  %.not.i9.i = icmp eq ptr %i.dw, null
  br i1 %.not.i9.i, label %Vec_VecFree.exit, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.dw) #12
  br label %Vec_VecFree.exit

Vec_VecFree.exit:                                 ; preds = %.critedge.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.bt) #12
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 4
  %.val116 = load i32, ptr %i.dz, align 4, !tbaa !25
  %i.ea = icmp sgt i32 %.val116, 0
  br i1 %i.ea, label %.lr.ph118, label %.critedge4

.lr.ph118:                                        ; preds = %Vec_VecFree.exit, %Aig_ObjChild0Copy.exit107
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %Aig_ObjChild0Copy.exit107 ], [ 0, %Vec_VecFree.exit ] ; 2 uses
  %i.eb = phi ptr [ %i.es, %Aig_ObjChild0Copy.exit107 ], [ %i.dy, %Vec_VecFree.exit ]
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %.val89 = load ptr, ptr %i.ec, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %indvars.iv127
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !39 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %.val92 = load ptr, ptr %i.ef, align 8, !tbaa !42
  %i.eg = ptrtoint ptr %.val92 to i64             ; 2 uses
  %i.eh = and i64 %i.eg, -2                       ; 2 uses
  %.not.i106 = icmp eq i64 %i.eh, 0
  br i1 %.not.i106, label %Aig_ObjChild0Copy.exit107, label %bb.r

bb.r:                                             ; preds = %.lr.ph118
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = and i64 %i.eg, 1
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = xor i64 %i.el, %i.em
  %i.eo = inttoptr i64 %i.en to ptr
  br label %Aig_ObjChild0Copy.exit107

Aig_ObjChild0Copy.exit107:                        ; preds = %.lr.ph118, %bb.r
  %i.ep = phi ptr [ %i.eo, %bb.r ], [ null, %.lr.ph118 ]
  %i.eq = tail call ptr @Aig_ObjCreateCo(ptr noundef nonnull %i.c, ptr noundef %i.ep) #12
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !36
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.es = load ptr, ptr %i.dx, align 8, !tbaa !41 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %.val = load i32, ptr %i.et, align 4, !tbaa !25
  %i.eu = sext i32 %.val to i64
end_hunk_3
