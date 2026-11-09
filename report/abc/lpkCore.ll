Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkCore?download=true
inline.NumInlined: 108
inline.NumDeleted: 35
begin_hunk_0
@__const.Lpk_ResynthesizeNodeNew.NodeCounts = private unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 3, i32 6, i32 14, i32 26, i32 57, i32 106, i32 230, i32 425, i32 1000000, i32 1000000, i32 1000000], align 16
@.str.4 = private unnamed_addr constant [66 x i8] c"Node %5d : Mffc size = %5d. Cuts = %5d.  Level = %2d. Req = %2d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%c=%d \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Performed resynthesis: Gain = %2d. Level = %2d. Req = %2d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"Resynthesis for %d %d-LUTs with %d non-MFFC LUTs, %d crossbars, and %d-input cuts.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Converting to BDD has failed.\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Node gain = %5d. (%.2f %%)  \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Edge gain = %5d. (%.2f %%)  \00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Muxes = %4d. Dsds = %4d.\00", align 1
@.str.13 = private unnamed_addr constant [79 x i8] c"Nodes = %5d (%3d)  Cuts = %5d (%4d)  Changes = %5d  Iter = %2d  Benefit = %d.\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Non-DSD:\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" %d=%d\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Cuts  \00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%9.2f sec (%6.2f %%)\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Truth \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"CSupps\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Eval  \00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c" MuxAn\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c" MuxSp\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c" DsdAn\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c" DsdSp\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c" Other\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Map   \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Other \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"TOTAL \00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@str = private unnamed_addr constant [48 x i8] c"Lpk_Resynthesize: The network check has failed.\00", align 1

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkDecFromTruth(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 65536, ptr %i.a, align 8, !tbaa !112
  %i.c = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !113
  %i.e = tail call ptr @Abc_NtkAlloc(i32 noundef 2, i32 noundef 1, i32 noundef 1) #17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = tail call ptr @Abc_SopCreateFromTruthIsop(ptr noundef %i.g, i32 noundef %1, ptr noundef %0, ptr noundef nonnull %i.a) #17
  %i.i = tail call ptr @Abc_NtkCreateWithNode(ptr noundef %i.h) #17 ; 2 uses
  %i.j = tail call ptr @Abc_NtkLutmin(ptr noundef %i.i, i32 noundef %2, i32 noundef 1, i32 noundef 0) #17 ; 3 uses
  tail call void @Abc_NtkDelete(ptr noundef %i.e) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.i) #17
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.k) #17
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #17
  %i.l = tail call i32 @Abc_NtkToAig(ptr noundef %i.j) #17
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Vec_IntFree.exit
  tail call void @Abc_NtkDelete(ptr noundef %i.j) #17
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !28
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %i.m) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %Vec_IntFree.exit, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.j, %Vec_IntFree.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Abc_NtkAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_SopCreateFromTruthIsop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkCreateWithNode(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_NtkLutmin(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NtkToAig(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkLutMinDecompose(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 5 uses
  %.val86 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.b = tail call ptr @Abc_NtkDecFromTruth(ptr noundef %2, i32 noundef %.val86, i32 noundef %3) ; 4 uses
  %i.c = tail call ptr @Abc_NtkDfs(ptr noundef %i.b, i32 noundef 0) #17 ; 6 uses
  %.val85101 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = icmp sgt i32 %.val85101, 0
  br i1 %i.d, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = getelementptr i8, ptr %i.b, i64 56
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.b, %bb.a
  %.076.lcssa = phi ptr [ null, %bb.a ], [ %i.k, %bb.b ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 4        ; 4 uses
  %.val84106 = load i32, ptr %i.g, align 4, !tbaa !31 ; 2 uses
  %i.h = icmp sgt i32 %.val84106, 0
  br i1 %i.h, label %.lr.ph108, label %.critedge.preheader..critedge2_crit_edge

.critedge.preheader..critedge2_crit_edge:         ; preds = %.critedge.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %.critedge2

.lr.ph108:                                        ; preds = %.critedge.preheader
  %i.i = getelementptr i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.val90 = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val90, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, -4096
  %.val92 = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.o = getelementptr i8, ptr %.val92, i64 8
  %.val92.val = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val92.val, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 4095
  %i.u = or disjoint i32 %i.t, %i.n
  store i32 %i.u, ptr %i.r, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val85 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.v = sext i32 %.val85 to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.critedge.preheader, !llvm.loop !115

bb.c:                                             ; preds = %.lr.ph108, %.critedge4
  %indvars.iv128 = phi i64 [ 0, %.lr.ph108 ], [ %indvars.iv.next129, %.critedge4 ] ; 2 uses
  %.val89 = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %indvars.iv128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, 4095                     ; 3 uses
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr i8, ptr %i.y, i64 28
  %.val94103 = load i32, ptr %i.ac, align 4, !tbaa !122 ; 2 uses
  %i.ad = icmp sgt i32 %.val94103, 0
  br i1 %i.ad, label %.lr.ph105, label %.critedge4

.lr.ph105:                                        ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.y, i64 32
  %.val97.pre = load ptr, ptr %i.y, align 8, !tbaa !37
  %.val98.pre = load ptr, ptr %i.ae, align 8, !tbaa !123
  %i.af = getelementptr i8, ptr %.val97.pre, i64 32
  %i.ag = zext nneg i32 %.val94103 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph105, %bb.f
  %indvars.iv125 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next126, %bb.f ] ; 2 uses
  %i.ah = phi i32 [ %i.ab, %.lr.ph105 ], [ %i.aw, %bb.f ] ; 3 uses
  %.val97.val = load ptr, ptr %i.af, align 8, !tbaa !38
  %i.ai = getelementptr i8, ptr %.val97.val, i64 8
  %.val97.val.val = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val98.pre, i64 %indvars.iv125
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !39
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.val97.val.val, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = lshr i32 %i.ah, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = lshr i32 %i.aq, 12
  %i.as = icmp samesign ult i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = and i32 %i.aq, -4096
  %i.au = and i32 %i.ah, 4095
  %i.av = or disjoint i32 %i.at, %i.au            ; 2 uses
  store i32 %i.av, ptr %i.z, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aw = phi i32 [ %i.ah, %bb.d ], [ %i.av, %bb.e ] ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next126, %i.ag
  br i1 %i.ax, label %bb.d, label %.critedge4, !llvm.loop !116

.critedge4:                                       ; preds = %bb.f, %bb.c
  %i.ay = phi i32 [ %i.ab, %bb.c ], [ %i.aw, %bb.f ] ; 2 uses
  %5 = and i32 %i.ay, -4096
  %i.az = add i32 %5, 4096
  %6 = and i32 %i.ay, 4095
  %7 = or disjoint i32 %i.az, %6                  ; 2 uses
  store i32 %7, ptr %i.z, align 4
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %.val84 = load i32, ptr %i.g, align 4, !tbaa !31 ; 2 uses
  %i.ba = sext i32 %.val84 to i64
  %i.bb = icmp slt i64 %indvars.iv.next129, %i.ba
  br i1 %i.bb, label %bb.c, label %.critedge2, !llvm.loop !117

.critedge2:                                       ; preds = %.critedge4, %.critedge.preheader..critedge2_crit_edge
  %.val117141 = phi i32 [ %.val84106, %.critedge.preheader..critedge2_crit_edge ], [ %.val84, %.critedge4 ]
  %i.bc = phi i32 [ %.pre, %.critedge.preheader..critedge2_crit_edge ], [ %7, %.critedge4 ]
  %.177.lcssa = phi ptr [ %.076.lcssa, %.critedge.preheader..critedge2_crit_edge ], [ %i.y, %.critedge4 ]
  %i.bd = lshr i32 %i.bc, 12
  %i.be = icmp sgt i32 %i.bd, %4
  br i1 %i.be, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.critedge2
  %.val83110 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bf = icmp sgt i32 %.val83110, 0
  br i1 %i.bf, label %.lr.ph112, label %.critedge6.preheader

.lr.ph112:                                        ; preds = %.preheader
  %i.bg = getelementptr i8, ptr %1, i64 8
  %i.bh = getelementptr i8, ptr %i.b, i64 56
  br label %bb.h

bb.g:                                             ; preds = %.critedge2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %Vec_PtrFree.exit.sink.split

.critedge6.preheader.loopexit:                    ; preds = %bb.h
  %.val117.pre = load i32, ptr %i.g, align 4, !tbaa !31
  br label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.critedge6.preheader.loopexit, %.preheader
  %.val117 = phi i32 [ %.val117141, %.preheader ], [ %.val117.pre, %.critedge6.preheader.loopexit ]
  %.278.lcssa = phi ptr [ %.177.lcssa, %.preheader ], [ %i.bn, %.critedge6.preheader.loopexit ]
  %i.bk = icmp sgt i32 %.val117, 0
  br i1 %i.bk, label %.lr.ph119, label %.critedge8

.lr.ph119:                                        ; preds = %.critedge6.preheader
  %i.bl = getelementptr i8, ptr %i.c, i64 8
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph112, %bb.h
  %indvars.iv131 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next132, %bb.h ] ; 3 uses
  %.val88 = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %indvars.iv131
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %.val91 = load ptr, ptr %i.bh, align 8, !tbaa !121
  %i.bo = getelementptr i8, ptr %.val91, i64 8
  %.val91.val = load ptr, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val91.val, i64 %indvars.iv131
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store ptr %i.bn, ptr %i.br, align 8, !tbaa !40
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %.val83 = load i32, ptr %i.a, align 4, !tbaa !31
  %i.bs = sext i32 %.val83 to i64
  %i.bt = icmp slt i64 %indvars.iv.next132, %i.bs
  br i1 %i.bt, label %bb.h, label %.critedge6.preheader.loopexit, !llvm.loop !118

bb.i:                                             ; preds = %.lr.ph119, %.critedge10
  %indvars.iv137 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next138, %.critedge10 ] ; 2 uses
  %.val87 = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %indvars.iv137
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33 ; 6 uses
  %i.bw = tail call ptr @Abc_NtkDupObj(ptr noundef %0, ptr noundef %i.bv, i32 noundef 0) #17 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 72 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 20 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, 4095
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr i8, ptr %i.bv, i64 28     ; 2 uses
  %.val93114 = load i32, ptr %i.cc, align 4, !tbaa !122
  %i.cd = icmp sgt i32 %.val93114, 0
  br i1 %i.cd, label %.lr.ph116, label %.critedge10

.lr.ph116:                                        ; preds = %bb.i
  %i.ce = getelementptr i8, ptr %i.bv, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph116, %bb.l
  %indvars.iv134 = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next135, %bb.l ] ; 2 uses
  %.val95 = load ptr, ptr %i.bv, align 8, !tbaa !37
  %.val96 = load ptr, ptr %i.ce, align 8, !tbaa !123
  %i.cf = getelementptr i8, ptr %.val95, i64 32
  %.val95.val = load ptr, ptr %i.cf, align 8, !tbaa !38
  %i.cg = getelementptr i8, ptr %.val95.val, i64 8
  %.val95.val.val = load ptr, ptr %i.cg, align 8, !tbaa !32
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv134
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %.val95.val.val, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !33
  %i.cm = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 72 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40
  tail call void @Abc_ObjAddFanin(ptr noundef %i.cm, ptr noundef %i.co) #17
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 20 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = lshr i32 %i.cr, 12
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4            ; 2 uses
  %i.cw = lshr i32 %i.cv, 12
  %i.cx = icmp samesign ult i32 %i.cs, %i.cw
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = and i32 %i.cv, -4096
  %i.cz = and i32 %i.cr, 4095
  %i.da = or disjoint i32 %i.cy, %i.cz
  store i32 %i.da, ptr %i.cq, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %.val93 = load i32, ptr %i.cc, align 4, !tbaa !122
  %i.db = sext i32 %.val93 to i64
  %i.dc = icmp slt i64 %indvars.iv.next135, %i.db
  br i1 %i.dc, label %bb.j, label %.critedge10, !llvm.loop !119

.critedge10:                                      ; preds = %bb.l, %bb.i
  %i.dd = load ptr, ptr %i.bx, align 8, !tbaa !40
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 20 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %8 = and i32 %i.df, -4096
  %i.dg = add i32 %8, 4096
  %9 = and i32 %i.df, 4095
  %10 = or disjoint i32 %i.dg, %9
  store i32 %10, ptr %i.de, align 4
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !31
  %i.dh = sext i32 %.val to i64
  %i.di = icmp slt i64 %indvars.iv.next138, %i.dh
  br i1 %i.di, label %bb.i, label %.critedge8, !llvm.loop !120

.critedge8:                                       ; preds = %.critedge10, %.critedge6.preheader
  %.379.lcssa = phi ptr [ %.278.lcssa, %.critedge6.preheader ], [ %i.bv, %.critedge10 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.379.lcssa, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !40 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !32 ; 2 uses
  %.not.i99 = icmp eq ptr %i.dm, null
  br i1 %.not.i99, label %Vec_PtrFree.exit, label %Vec_PtrFree.exit.sink.split

Vec_PtrFree.exit.sink.split:                      ; preds = %.critedge8, %bb.g
  %.sink = phi ptr [ %i.bj, %bb.g ], [ %i.dm, %.critedge8 ]
  %.080.ph = phi ptr [ null, %bb.g ], [ %i.dk, %.critedge8 ]
  tail call void @free(ptr noundef nonnull %.sink) #17
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %Vec_PtrFree.exit.sink.split, %.critedge8, %bb.g
  %.080 = phi ptr [ %i.dk, %.critedge8 ], [ null, %bb.g ], [ %.080.ph, %Vec_PtrFree.exit.sink.split ]
  tail call void @free(ptr noundef nonnull %i.c) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.b) #17
  ret ptr %.080
}

declare ptr @Abc_NtkDfs(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Abc_NtkDupObj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @Lpk_IfManStart(ptr nofree noundef captures(none) initializes((8240048, 8240056)) %0) local_unnamed_addr #0 {
bb.a:
  %calloc = tail call dereferenceable_or_null(376) ptr @calloc(i64 1, i64 376) ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 4, !tbaa !49
  store i32 %i.c, ptr %calloc, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 16, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store <2 x float> <float -1.000000e+00, float 5.000000e-03>, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %calloc, i64 56
  store i32 1, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %calloc, i64 232
  store i32 1, ptr %i.g, align 8, !tbaa !57
  %i.h = tail call ptr @If_ManStart(ptr noundef nonnull %calloc) #17 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8240048 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !58
  tail call void @If_ManSetupSetAll(ptr noundef %i.h, i32 noundef 1000) #17
  %i.j = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #16
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  store ptr %i.j, ptr %i.n, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @If_ManStart(ptr noundef) local_unnamed_addr #2

declare void @If_ManSetupSetAll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Lpk_NodeHasChanged(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8240040
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %.val18, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val15 = load i32, ptr %i.g, align 4, !tbaa !31 ; 3 uses
  %i.h = icmp eq i32 %.val15, 0
  br i1 %i.h, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = icmp sgt i32 %.val15, 1
  br i1 %i.i, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %.preheader
  %i.j = getelementptr i8, ptr %i.f, i64 8
  %.val17 = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %.val19 = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.n = getelementptr i8, ptr %.val19, i64 8
  %.val19.val = load ptr, ptr %i.n, align 8, !tbaa !32
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.o = trunc i64 %indvars.iv.next to i32
  %i.p = or disjoint i32 %i.o, 1
  %i.q = icmp slt i32 %i.p, %.val15
  br i1 %i.q, label %.critedge, label %.loopexit, !llvm.loop !0

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val17, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = shl i64 %i.t, 32
  %i.v = ashr exact i64 %i.u, 29
  %i.w = getelementptr inbounds i8, ptr %.val19.val, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %bb.b, %.preheader, %bb.a
  %.013 = phi i32 [ 1, %bb.a ], [ 0, %.preheader ], [ 1, %.critedge ], [ 0, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Lpk_ExploreCut(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
Kit_DsdNtkRoot.exit:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [16 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !80   ; 3 uses
  %i.d = lshr i16 %i.c, 1                         ; 2 uses
  %i.e = load i16, ptr %2, align 8, !tbaa !81     ; 2 uses
  %i.f = icmp uge i16 %i.d, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %narrow.i = sub nuw nsw i16 %i.d, %i.e
  %i.i = zext nneg i16 %narrow.i to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = lshr i32 %i.l, 6
  %i.n = and i32 %i.m, 7
  switch i32 %i.n, label %bb.h [
    i32 1, label %bb.a
    i32 2, label %bb.e
  ]

bb.a:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.o = and i16 %i.c, 1
  %.not109 = icmp eq i16 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  br i1 %.not109, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call ptr @Abc_NtkCreateNodeConst0(ptr noundef %i.q) #17
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = tail call ptr @Abc_NtkCreateNodeConst1(ptr noundef %i.q) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0101 = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8240064
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86
  tail call void @Abc_NtkUpdate(ptr noundef %i.u, ptr noundef %.0101, ptr noundef %i.w) #17
  %i.x = load i32, ptr %1, align 4                ; 2 uses
  %i.y = lshr i32 %i.x, 6
  %i.z = and i32 %i.y, 63
  %i.aa = lshr i32 %i.x, 12
  %i.ab = and i32 %i.aa, 63
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8241800 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !87
  %i.ae = sub i32 %i.ad, %i.ab
  %i.af = add i32 %i.ae, %i.z
  store i32 %i.af, ptr %i.ac, align 8, !tbaa !87
  br label %bb.w

bb.e:                                             ; preds = %Kit_DsdNtkRoot.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !127
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !39
  %i.aq = getelementptr i8, ptr %i.ah, i64 32
  %.val111 = load ptr, ptr %i.aq, align 8, !tbaa !38
  %i.ar = getelementptr i8, ptr %.val111, i64 8
  %.val111.val = load ptr, ptr %i.ar, align 8, !tbaa !32
end_hunk_0
