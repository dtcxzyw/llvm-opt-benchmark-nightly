Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbAbc?download=true
inline.NumInlined: 358
inline.NumDeleted: 122
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [5 x i8] c"1'b0\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot find fanin %d of node \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Adding constant 0 driver to non-driven PO \22%s\22.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1'b1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"1'bx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"1'bz\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Network with name \22%s\22 already exists.\0A\00", align 1
@str = private unnamed_addr constant [44 x i8] c"Acb_NtkToAbc: The network check has failed.\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @Acb_NtkFromAbc2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.c = tail call fastcc ptr @Acb_ManAlloc(ptr noundef %.val, ptr noundef null) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val90 = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.g = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.e, ptr noundef %.val90, ptr noundef null) #17
  %i.h = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %.val95 = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr i8, ptr %.val95, i64 4
  %.val95.val = load i32, ptr %i.i, align 4, !tbaa !35
  %i.j = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val98 = load ptr, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr i8, ptr %.val98, i64 4
  %.val98.val = load i32, ptr %i.k, align 4, !tbaa !35
  %i.l = getelementptr i8, ptr %0, i64 140
  %.val99 = load i32, ptr %i.l, align 4, !tbaa !95
  %i.m = tail call fastcc ptr @Acb_NtkAlloc(ptr noundef %i.c, i32 noundef %i.g, i32 noundef %.val95.val, i32 noundef %.val98.val, i32 noundef %.val99) ; 19 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 92
  store i32 6, ptr %i.n, align 4, !tbaa !44
  %.val94127 = load ptr, ptr %i.h, align 8, !tbaa !34 ; 2 uses
  %i.o = getelementptr i8, ptr %.val94127, i64 4
  %.val94.val128 = load i32, ptr %i.o, align 4, !tbaa !35
  %i.p = icmp sgt i32 %.val94.val128, 0
  br i1 %i.p, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val93131 = load i32, ptr %i.s, align 4, !tbaa !35
  %i.t = icmp sgt i32 %.val93131, 0
  br i1 %i.t, label %.lr.ph133, label %.critedge2.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.val94130 = phi ptr [ %.val94, %.lr.ph ], [ %.val94127, %bb.a ]
  %i.u = getelementptr i8, ptr %.val94130, i64 8
  %.val100.val = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val100.val, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47
  %i.x = tail call fastcc i32 @Acb_ObjAlloc(ptr noundef nonnull %i.m, i32 noundef 3, i32 noundef 0)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store i32 %i.x, ptr %i.y, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val94 = load ptr, ptr %i.h, align 8, !tbaa !34 ; 2 uses
  %i.z = getelementptr i8, ptr %.val94, i64 4
  %.val94.val = load i32, ptr %i.z, align 4, !tbaa !35
  %i.aa = sext i32 %.val94.val to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.critedge.preheader, !llvm.loop !88

.critedge2.preheader:                             ; preds = %.critedge, %.critedge.preheader
  %i.ac = phi ptr [ %i.r, %.critedge.preheader ], [ %i.ap, %.critedge ]
  %.val97135 = load ptr, ptr %i.j, align 8, !tbaa !36 ; 3 uses
  %i.ad = getelementptr i8, ptr %.val97135, i64 4
  %.val97.val136 = load i32, ptr %i.ad, align 4, !tbaa !35 ; 2 uses
  %i.ae = icmp sgt i32 %.val97.val136, 0
  br i1 %i.ae, label %.critedge2, label %.critedge4.preheader

.lr.ph133:                                        ; preds = %.critedge.preheader, %.critedge
  %i.af = phi ptr [ %i.ap, %.critedge ], [ %i.r, %.critedge.preheader ] ; 3 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val103.val = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val103.val, i64 %indvars.iv155
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph133
  %i.ak = getelementptr i8, ptr %i.ai, i64 20
  %.val106 = load i32, ptr %i.ak, align 4
  %i.al = and i32 %.val106, 15
  %.not125 = icmp eq i32 %i.al, 7
  br i1 %.not125, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr i8, ptr %i.ai, i64 28
  %.val109 = load i32, ptr %i.am, align 4, !tbaa !52
  %i.an = tail call fastcc i32 @Acb_ObjAlloc(ptr noundef %i.m, i32 noundef 75, i32 noundef %.val109)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !48
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.b, %.lr.ph133
  %i.ap = phi ptr [ %.pre, %bb.c ], [ %i.af, %bb.b ], [ %i.af, %.lr.ph133 ] ; 3 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val93 = load i32, ptr %i.aq, align 4, !tbaa !35
  %i.ar = sext i32 %.val93 to i64
  %i.as = icmp slt i64 %indvars.iv.next156, %i.ar
  br i1 %i.as, label %.lr.ph133, label %.critedge2.preheader, !llvm.loop !89

.critedge4.preheader.loopexit:                    ; preds = %.critedge2
  %.pre173 = load ptr, ptr %i.q, align 8, !tbaa !45
  br label %.critedge4.preheader

.critedge4.preheader:                             ; preds = %.critedge4.preheader.loopexit, %.critedge2.preheader
  %.val96.val147177 = phi i32 [ %.val97.val136, %.critedge2.preheader ], [ %.val97.val, %.critedge4.preheader.loopexit ]
  %i.at = phi ptr [ %i.ac, %.critedge2.preheader ], [ %.pre173, %.critedge4.preheader.loopexit ] ; 2 uses
  %.val97.lcssa134 = phi ptr [ %.val97135, %.critedge2.preheader ], [ %.val97, %.critedge4.preheader.loopexit ] ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %.val92144 = load i32, ptr %i.au, align 4, !tbaa !35 ; 2 uses
  %i.av = icmp sgt i32 %.val92144, 0
  br i1 %i.av, label %.lr.ph146, label %.critedge6.preheader

.lr.ph146:                                        ; preds = %.critedge4.preheader
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %.val102.val = load ptr, ptr %i.aw, align 8, !tbaa !46
  %i.ax = getelementptr i8, ptr %i.m, i64 136
  %i.ay = getelementptr i8, ptr %i.m, i64 152
  br label %bb.d

.critedge2:                                       ; preds = %.critedge2.preheader, %.critedge2
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.critedge2 ], [ 0, %.critedge2.preheader ] ; 2 uses
  %.val97138 = phi ptr [ %.val97, %.critedge2 ], [ %.val97135, %.critedge2.preheader ]
  %i.az = getelementptr i8, ptr %.val97138, i64 8
  %.val111.val = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val111.val, i64 %indvars.iv158
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = tail call fastcc i32 @Acb_ObjAlloc(ptr noundef %i.m, i32 noundef 4, i32 noundef 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !48
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %.val97 = load ptr, ptr %i.j, align 8, !tbaa !36 ; 3 uses
  %i.be = getelementptr i8, ptr %.val97, i64 4
  %.val97.val = load i32, ptr %i.be, align 4, !tbaa !35 ; 2 uses
  %i.bf = sext i32 %.val97.val to i64
  %i.bg = icmp slt i64 %indvars.iv.next159, %i.bf
  br i1 %i.bg, label %.critedge2, label %.critedge4.preheader.loopexit, !llvm.loop !90

.critedge6.preheader.loopexit:                    ; preds = %.critedge8
  %.phi.trans.insert = getelementptr i8, ptr %.val97.lcssa134, i64 4
  %.val96.val147.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !35
  br label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.critedge6.preheader.loopexit, %.critedge4.preheader
  %.val96.val147 = phi i32 [ %.val96.val147.pre, %.critedge6.preheader.loopexit ], [ %.val96.val147177, %.critedge4.preheader ]
  %1 = getelementptr i8, ptr %.val97.lcssa134, i64 4
  %i.bh = icmp sgt i32 %.val96.val147, 0
  br i1 %i.bh, label %.lr.ph149, label %.critedge10

.lr.ph149:                                        ; preds = %.critedge6.preheader
  %i.bi = getelementptr i8, ptr %.val97.lcssa134, i64 8
  %.val110.val = load ptr, ptr %i.bi, align 8, !tbaa !46
  %i.bj = getelementptr i8, ptr %i.m, i64 136
  %.val116 = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr i8, ptr %i.m, i64 152
  %.val117 = load ptr, ptr %i.bk, align 8, !tbaa !53
  br label %.critedge6

bb.d:                                             ; preds = %.lr.ph146, %.critedge8
  %.val92174 = phi i32 [ %.val92144, %.lr.ph146 ], [ %.val92, %.critedge8 ] ; 3 uses
  %indvars.iv164 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next165, %.critedge8 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val102.val, i64 %indvars.iv164
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = getelementptr i8, ptr %i.bm, i64 20
  %.val105 = load i32, ptr %i.bo, align 4
  %i.bp = and i32 %.val105, 15
  %.not124 = icmp eq i32 %i.bp, 7
  br i1 %.not124, label %.preheader, label %.critedge8

.preheader:                                       ; preds = %bb.e
  %i.bq = getelementptr i8, ptr %i.bm, i64 28     ; 2 uses
  %.val108141 = load i32, ptr %i.bq, align 4, !tbaa !52
  %i.br = icmp sgt i32 %.val108141, 0
  br i1 %i.br, label %.lr.ph143, label %.critedge8

.lr.ph143:                                        ; preds = %.preheader
  %.val114 = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bs = getelementptr i8, ptr %i.bm, i64 32
  %.val115 = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.bt = getelementptr i8, ptr %.val114, i64 32
  %.val114.val = load ptr, ptr %i.bt, align 8, !tbaa !45
  %i.bu = getelementptr i8, ptr %.val114.val, i64 8
  %.val114.val.val = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %.val118 = load ptr, ptr %i.ax, align 8, !tbaa !53
  %.val119 = load ptr, ptr %i.ay, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph143, %bb.f
  %indvars.iv161 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next162, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv161
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !56
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %.val114.val.val, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !47
  %i.cb = load i32, ptr %i.bv, align 8, !tbaa !48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !48
  %i.ce = sext i32 %i.cb to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val118, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %.val119, i64 %i.ch ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56
  %i.ck = add nsw i32 %i.cj, 1                    ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !56
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.cd, ptr %i.cm, align 4, !tbaa !56
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %.val108 = load i32, ptr %i.bq, align 4, !tbaa !52
  %i.cn = sext i32 %.val108 to i64
  %i.co = icmp slt i64 %indvars.iv.next162, %i.cn
  br i1 %i.co, label %bb.f, label %.critedge8.loopexit, !llvm.loop !91

.critedge8.loopexit:                              ; preds = %bb.f
  %.val92.pre = load i32, ptr %i.au, align 4, !tbaa !35
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge8.loopexit, %.preheader, %bb.e, %bb.d
  %.val92 = phi i32 [ %.val92.pre, %.critedge8.loopexit ], [ %.val92174, %.preheader ], [ %.val92174, %bb.e ], [ %.val92174, %bb.d ] ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.cp = sext i32 %.val92 to i64
  %i.cq = icmp slt i64 %indvars.iv.next165, %i.cp
  br i1 %i.cq, label %bb.d, label %.critedge6.preheader.loopexit, !llvm.loop !92

.critedge6:                                       ; preds = %.lr.ph149, %.critedge6
  %indvars.iv167 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next168, %.critedge6 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val110.val, i64 %indvars.iv167
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !47 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !48
  %.val112 = load ptr, ptr %i.cs, align 8, !tbaa !54
  %i.cv = getelementptr i8, ptr %i.cs, i64 32
  %.val113 = load ptr, ptr %i.cv, align 8, !tbaa !55
  %i.cw = getelementptr i8, ptr %.val112, i64 32
  %.val112.val = load ptr, ptr %i.cw, align 8, !tbaa !45
  %i.cx = getelementptr i8, ptr %.val112.val, i64 8
  %.val112.val.val = load ptr, ptr %i.cx, align 8, !tbaa !46
  %i.cy = load i32, ptr %.val113, align 4, !tbaa !56
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.val112.val.val, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !48
  %i.de = sext i32 %i.cu to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %.val116, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !56
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %.val117, i64 %i.dh ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !56
  %i.dk = add nsw i32 %i.dj, 1                    ; 2 uses
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !56
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dl
  store i32 %i.dd, ptr %i.dm, align 4, !tbaa !56
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %.val96.val = load i32, ptr %1, align 4, !tbaa !35
  %i.dn = sext i32 %.val96.val to i64
  %i.do = icmp slt i64 %indvars.iv.next168, %i.dn
  br i1 %i.do, label %.critedge6, label %.critedge10, !llvm.loop !93

.critedge10:                                      ; preds = %.critedge6, %.critedge6.preheader
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 208 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %.val.i = load i32, ptr %i.dq, align 8, !tbaa !57 ; 6 uses
  %i.dr = load i32, ptr %i.dp, align 8, !tbaa !58
  %.not.i.i.i = icmp slt i32 %i.dr, %.val.i
  br i1 %.not.i.i.i, label %bb.g, label %Vec_WrdGrow.exit.i.i

bb.g:                                             ; preds = %.critedge10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 216 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !59 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.dt, null
  %i.du = sext i32 %.val.i to i64
  %i.dv = shl nsw i64 %i.du, 3                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dw = tail call ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef %i.dv) #18
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.dx = tail call noalias ptr @malloc(i64 noundef %i.dv) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dy = phi ptr [ %i.dw, %bb.h ], [ %i.dx, %bb.i ]
  store ptr %i.dy, ptr %i.ds, align 8, !tbaa !59
  store i32 %.val.i, ptr %i.dp, align 8, !tbaa !58
  br label %Vec_WrdGrow.exit.i.i

Vec_WrdGrow.exit.i.i:                             ; preds = %bb.j, %.critedge10
  %i.dz = icmp sgt i32 %.val.i, 0
  br i1 %i.dz, label %.lr.ph.i.i, label %Acb_NtkCleanObjTruths.exit

.lr.ph.i.i:                                       ; preds = %Vec_WrdGrow.exit.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59
  %i.ec = zext nneg i32 %.val.i to i64
  %i.ed = shl nuw nsw i64 %i.ec, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eb, i8 0, i64 %i.ed, i1 false), !tbaa !61
  br label %Acb_NtkCleanObjTruths.exit

Acb_NtkCleanObjTruths.exit:                       ; preds = %Vec_WrdGrow.exit.i.i, %.lr.ph.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  store i32 %.val.i, ptr %i.ee, align 4, !tbaa !62
  %i.ef = load ptr, ptr %i.q, align 8, !tbaa !45  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 4
  %.val91150 = load i32, ptr %i.eg, align 4, !tbaa !35
  %i.eh = icmp sgt i32 %.val91150, 0
  br i1 %i.eh, label %.lr.ph152, label %.critedge12

.lr.ph152:                                        ; preds = %Acb_NtkCleanObjTruths.exit
  %i.ei = getelementptr i8, ptr %i.m, i64 216
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph152, %bb.n
  %i.ej = phi ptr [ %i.ef, %.lr.ph152 ], [ %i.ey, %bb.n ] ; 3 uses
  %indvars.iv170 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next171, %bb.n ] ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val101.val = load ptr, ptr %i.ek, align 8, !tbaa !46
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.val101.val, i64 %indvars.iv170
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !47 ; 5 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eo = getelementptr i8, ptr %i.em, i64 20
  %.val104 = load i32, ptr %i.eo, align 4
  %i.ep = and i32 %.val104, 15
  %.not = icmp eq i32 %i.ep, 7
  br i1 %.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !48
  %i.eu = getelementptr i8, ptr %i.em, i64 28
  %.val107 = load i32, ptr %i.eu, align 4, !tbaa !52
  %i.ev = tail call i64 @Abc_SopToTruth(ptr noundef %i.et, i32 noundef %.val107) #17
end_hunk_0
