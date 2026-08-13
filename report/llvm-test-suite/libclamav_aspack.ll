inline.NumInlined: 17
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ASPK = type { i32, i32, [19 x i8], [758 x i8], [58 x i32], [4 x %struct.DICT_HELPER], ptr, ptr, ptr, [4 x [24 x i32]], [4 x [24 x i32]], i32 }
%struct.DICT_HELPER = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Aspack: Unable to allocate dictionary\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Aspack: unpacking block rva:%x - sz:%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Aspack: unpacking failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Aspack: OOM - rebuild failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Aspack: rebuild failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Aspack: successfully rebuilt\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @unaspack212(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %7 = alloca %struct.ASPK, align 8               ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.c = zext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1404
  %i.f = tail call ptr @cli_calloc(i64 noundef 6144, i64 noundef 1) #10 ; 10 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #10
  br label %bb.as

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 1024 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2884
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 1032
  store ptr %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1040
  store i32 721, ptr %i.j, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 3140
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 1048
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3252
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 1056
  store ptr %i.m, ptr %i.n, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 1064
  store i32 28, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 3508
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 1072
  store ptr %i.p, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3540
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 1080
  store ptr %i.r, ptr %i.s, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 1088
  store i32 8, ptr %i.t, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 3796
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 1096
  store ptr %i.u, ptr %i.v, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 3872
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 1104
  store ptr %i.w, ptr %i.x, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 1112
  store i32 19, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4128
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 1136 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 10 uses
  store i32 65536, ptr %i.ab, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 788 ; 3 uses
  %i.ad = add i32 %4, 1806                        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.0139200 = phi i32 [ 0, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %.0139200, ptr %i.ae, align 4, !tbaa !4
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = add i32 %i.al, %.0139200                ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i32 %i.am, ptr %i.an, align 8, !tbaa !4
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ap = add i32 %i.ad, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = zext nneg i8 %i.as to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = add i32 %i.au, %i.am
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 58
  br i1 %exitcond.not.1, label %bb.e, label %bb.d, !llvm.loop !19

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = icmp ult i32 %1, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(777) %i.aw, i8 0, i64 777, i1 false)
  br i1 %i.ax, label %.critedge172, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.e
  %i.ay = zext i32 %1 to i64                      ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 1120 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 1128 ; 4 uses
  %i.bc = add i32 %4, 1750
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 1144
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 1912
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = add i32 %4, 328
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %8 = add nuw nsw i64 %i.c, 1412
  %.not158.not300 = icmp samesign ugt i64 %8, %i.ay
  br i1 %.not158.not300, label %.critedge172, label %.lr.ph303

.lr.ph303:                                        ; preds = %.lr.ph207
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 1412
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph303, %.loopexit
  %9 = phi ptr [ %i.bm, %.lr.ph303 ], [ %10, %.loopexit ] ; 2 uses
  %.0142205302 = phi ptr [ %i.e, %.lr.ph303 ], [ %9, %.loopexit ] ; 2 uses
  %.1206301 = phi i32 [ 0, %.lr.ph303 ], [ %.4, %.loopexit ] ; 2 uses
  %.0142.val = load i32, ptr %.0142205302, align 1 ; 4 uses
  %.not159 = icmp eq i32 %.0142.val, 0
  br i1 %.not159, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.0142205302, i64 4
  %.val174 = load i32, ptr %i.bn, align 1         ; 8 uses
  %i.bo = add i32 %.val174, -1
  %or.cond171.not = icmp ult i32 %i.bo, %1
  br i1 %or.cond171.not, label %bb.h, label %.critedge172

bb.h:                                             ; preds = %bb.g
  %i.bp = zext i32 %.0142.val to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp ; 16 uses
  %i.br = zext i32 %.val174 to i64                ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, %i.bp
  %.not163 = icmp samesign ugt i64 %i.bs, %i.ay
  br i1 %.not163, label %.critedge172, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = add i32 %.val174, 270
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = call ptr @cli_calloc(i64 noundef %i.bu, i64 noundef 1) #10 ; 6 uses
  %.not164 = icmp eq ptr %i.bv, null
  br i1 %.not164, label %.critedge172, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bv, ptr %i.ba, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store ptr %i.bw, ptr %i.bb, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull align 1 %i.bq, i64 %i.br, i1 false)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %.0142.val, i32 noundef %.val174) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.bf, i8 0, i64 768, i1 false)
  %i.bx = load ptr, ptr %i.aa, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.bx, i8 0, i64 757, i1 false)
  store i32 32, ptr %7, align 8, !tbaa !23
  %i.by = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %7)
  %.not.i = icmp eq i32 %i.by, 0
  br i1 %.not.i, label %decomp_block.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  br label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %.outer.backedge.i.i, %bb.k
  %.074.ph.i21.i = phi i32 [ 0, %bb.k ], [ %.074.ph.be.i.i, %.outer.backedge.i.i ] ; 15 uses
  %i.bz = phi i32 [ 0, %bb.k ], [ %i.ch, %.outer.backedge.i.i ] ; 4 uses
  br label %.outer.split.i.i

.outer.split.i.i:                                 ; preds = %bb.o, %.outer.split.i.preheader.i
  %i.ca = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %i.b) ; 5 uses
  %i.cb = load i32, ptr %i.b, align 4, !tbaa !4
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %bb.l, label %decomp_block.exit.thread177

bb.l:                                             ; preds = %.outer.split.i.i
  %i.cc = icmp ult i32 %i.ca, 256
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cd = trunc nuw i32 %i.ca to i8
  %i.ce = zext i32 %.074.ph.i21.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ce
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !18
  %i.cg = add nuw i32 %.074.ph.i21.i, 1
  br label %.outer.backedge.i.i

.outer.backedge.i.i:                              ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.ch = phi i32 [ %i.bz, %bb.m ], [ %i.gh, %middle.block ], [ %i.gh, %vec.epilog.middle.block ], [ %i.gh, %.preheader.i.i ], [ %i.gh, %.preheader.i.i.prol.loopexit ]
  %.074.ph.be.i.i = phi i32 [ %i.cg, %bb.m ], [ %i.gw, %middle.block ], [ %i.hh, %vec.epilog.middle.block ], [ %.lcssa328.unr, %.preheader.i.i.prol.loopexit ], [ %i.jc, %.preheader.i.i ] ; 2 uses
  %i.ci = icmp ult i32 %.074.ph.be.i.i, %.val174
  br i1 %i.ci, label %.outer.split.i.preheader.i, label %bb.ag, !llvm.loop !24

bb.n:                                             ; preds = %bb.l
  %i.cj = icmp ugt i32 %i.ca, 719
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %7)
  %.not95.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not95.i.i, label %decomp_block.exit.thread177, label %.outer.split.i.i, !llvm.loop !24

bb.p:                                             ; preds = %bb.n
  %i.cl = add nsw i32 %i.ca, -256
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = and i32 %i.ca, 7                        ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 2                ; 2 uses
  %i.cp = icmp eq i32 %i.cn, 7
  br i1 %i.cp, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pr.i99.i.pre.i = load i32, ptr %7, align 8, !tbaa !23
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cq = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %i.b) ; 2 uses
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !4
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = icmp ugt i32 %i.cq, 85
  %or.cond.i.i = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond.i.i, label %decomp_block.exit.thread177, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = zext nneg i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !18
  %.pr.i.i.i = load i32, ptr %7, align 8, !tbaa !23 ; 3 uses
  %i.cy = icmp ugt i32 %.pr.i.i.i, 7
  br i1 %i.cy, label %.lr.ph.i.i.i, label %..loopexit121_crit_edge.i.i

..loopexit121_crit_edge.i.i:                      ; preds = %bb.r
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.loopexit121.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.promoted.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.promoted = load i32, ptr %i.ab, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %i.da = phi i32 [ %.promoted, %.lr.ph.i.i.i ], [ %i.dg, %bb.t ]
  %i.db = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.dh, %bb.t ] ; 3 uses
  %i.dc = phi i32 [ %.pr.i.i.i, %.lr.ph.i.i.i ], [ %i.di, %bb.t ]
  %.not.i.i.i = icmp ult ptr %i.db, %i.cz
  br i1 %.not.i.i.i, label %bb.t, label %decomp_block.exit.thread177

bb.t:                                             ; preds = %bb.s
  %i.dd = shl i32 %i.da, 8
  %i.de = load i8, ptr %i.db, align 1, !tbaa !18
  %i.df = zext i8 %i.de to i32
  %i.dg = or disjoint i32 %i.dd, %i.df            ; 3 uses
  store i32 %i.dg, ptr %i.ab, align 4, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  store ptr %i.dh, ptr %i.ba, align 8, !tbaa !21
  %i.di = add i32 %i.dc, -8                       ; 4 uses
  store i32 %i.di, ptr %7, align 8, !tbaa !23
  %i.dj = icmp ugt i32 %i.di, 7
  br i1 %i.dj, label %bb.s, label %.loopexit121.i.i, !llvm.loop !25

.loopexit121.i.i:                                 ; preds = %bb.t, %..loopexit121_crit_edge.i.i
  %i.dk = phi i32 [ %.pr.i.i.i, %..loopexit121_crit_edge.i.i ], [ %i.di, %bb.t ] ; 2 uses
  %i.dl = phi i32 [ %.pre.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dg, %bb.t ]
  %i.dm = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.dn = zext i8 %i.dm to i32
  %i.do = sub nuw nsw i32 8, %i.dk
  %i.dp = lshr i32 %i.dl, %i.do
  %i.dq = and i32 %i.dp, 16777215
  %i.dr = zext i8 %i.cx to i32                    ; 2 uses
  %i.ds = sub nsw i32 24, %i.dr
  %i.dt = lshr i32 %i.dq, %i.ds
  %i.du = add nuw nsw i32 %i.co, %i.dn
  %i.dv = add nuw nsw i32 %i.du, %i.dt
  %i.dw = add nuw nsw i32 %i.dk, %i.dr            ; 2 uses
  store i32 %i.dw, ptr %7, align 8, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %.loopexit121.i.i, %._crit_edge.i
  %.pr.i99.i.i = phi i32 [ %i.dw, %.loopexit121.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.179.i.i = phi i32 [ %i.dv, %.loopexit121.i.i ], [ %i.co, %._crit_edge.i ] ; 14 uses
  %i.dx = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !18  ; 2 uses
  %i.ed = zext i8 %i.ec to i32                    ; 4 uses
  %i.ee = load i32, ptr %i.bg, align 8, !tbaa !26
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = icmp ult i8 %i.ec, 3
  %or.cond3.i.i = select i1 %i.ef, i1 true, i1 %i.eg
  %i.eh = icmp ugt i32 %.pr.i99.i.i, 7            ; 2 uses
  br i1 %or.cond3.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.eh, label %.lr.ph.i101.i.i, label %..loopexit117_crit_edge.i.i

..loopexit117_crit_edge.i.i:                      ; preds = %bb.v
  %.pre134.i.i = load i32, ptr %i.ab, align 4, !tbaa !17
  br label %.loopexit117.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.v
  %i.ei = load ptr, ptr %i.bb, align 8, !tbaa !22
  %.promoted.i102.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.promoted203 = load i32, ptr %i.ab, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %.lr.ph.i101.i.i
  %i.ej = phi i32 [ %.promoted203, %.lr.ph.i101.i.i ], [ %i.ep, %bb.x ]
  %i.ek = phi ptr [ %.promoted.i102.i.i, %.lr.ph.i101.i.i ], [ %i.eq, %bb.x ] ; 3 uses
  %i.el = phi i32 [ %.pr.i99.i.i, %.lr.ph.i101.i.i ], [ %i.er, %bb.x ]
  %.not.i103.i.i = icmp ult ptr %i.ek, %i.ei
  br i1 %.not.i103.i.i, label %bb.x, label %decomp_block.exit.thread177

bb.x:                                             ; preds = %bb.w
  %i.em = shl i32 %i.ej, 8
  %i.en = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.eo = zext i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo            ; 3 uses
  store i32 %i.ep, ptr %i.ab, align 4, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 1 ; 2 uses
  store ptr %i.eq, ptr %i.ba, align 8, !tbaa !21
  %i.er = add i32 %i.el, -8                       ; 4 uses
end_hunk_0
begin_hunk_1_@unaspack212:bb.a
  %i.gc = zext nneg i32 %.076.i.i to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !4  ; 2 uses
  %.not92.i.i = icmp eq i32 %.076.i.i, 0
  br i1 %.not92.i.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.bz, ptr %i.gd, align 4, !tbaa !4
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.gf = load i32, ptr %i.bh, align 4, !tbaa !4
  store i32 %i.gf, ptr %i.bi, align 8, !tbaa !4
  store i32 %i.bz, ptr %i.bh, align 4, !tbaa !4
  %i.gg = add i32 %.076.i.i, -3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ae, %bb.ad
  %.sink.i.i = phi i32 [ %i.ge, %bb.ad ], [ %i.gg, %bb.ae ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.a, align 16, !tbaa !4
  br label %bb.af

bb.af:                                            ; preds = %.sink.split.i.i, %bb.ac
  %i.gh = phi i32 [ %i.bz, %bb.ac ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.077.i.i = phi i32 [ %i.ge, %bb.ac ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.077.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.077.i.i, %.074.ph.i21.i
  %i.gi = sub i32 %.val174, %.074.ph.i21.i
  %i.gj = icmp ugt i32 %.179.i.i, %i.gi
  %or.cond98.i.i = select i1 %or.cond96.i.i, i1 true, i1 %i.gj
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread177, label %iter.check

iter.check:                                       ; preds = %bb.af
  %min.iters.check = icmp ult i32 %.179.i.i, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.gk = add nsw i32 %.179.i.i, -1               ; 2 uses
  %i.gl = xor i32 %.074.ph.i21.i, -1
  %i.gm = icmp ugt i32 %i.gk, %i.gl
  %i.gn = sub i32 %.077.i.i, %.074.ph.i21.i
  %i.go = icmp ult i32 %i.gn, %i.gk
  %i.gp = or i1 %i.gm, %i.go
  br i1 %i.gp, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gq = zext i32 %.074.ph.i21.i to i64
  %i.gr = xor i32 %.077.i.i, -1
  %i.gs = add i32 %.074.ph.i21.i, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = sub nsw i64 %i.gt, %i.gq
  %diff.check = icmp ugt i64 %i.gu, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check307 = icmp ult i32 %.179.i.i, 32
  br i1 %min.iters.check307, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gv = and i32 %.179.i.i, 24
  %n.vec = and i32 %.179.i.i, -32                 ; 4 uses
  %i.gw = add i32 %.074.ph.i21.i, %n.vec          ; 2 uses
  %i.gx = and i32 %.179.i.i, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = add i32 %.074.ph.i21.i, %index          ; 2 uses
  %i.gz = add i32 %i.gy, %.neg.i.i
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load = load <16 x i8>, ptr %i.hb, align 1, !tbaa !18
  %wide.load308 = load <16 x i8>, ptr %i.hc, align 1, !tbaa !18
  %i.hd = zext i32 %i.gy to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.hd ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <16 x i8> %wide.load, ptr %i.he, align 1, !tbaa !18
  store <16 x i8> %wide.load308, ptr %i.hf, align 1, !tbaa !18
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hg = icmp eq i32 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.179.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.gv, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec310 = and i32 %.179.i.i, -8               ; 3 uses
  %i.hh = add i32 %.074.ph.i21.i, %n.vec310       ; 2 uses
  %i.hi = and i32 %.179.i.i, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index311 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next313, %vec.epilog.vector.body ] ; 2 uses
  %i.hj = add i32 %.074.ph.i21.i, %index311       ; 2 uses
  %i.hk = add i32 %i.hj, %.neg.i.i
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.hl
  %wide.load312 = load <8 x i8>, ptr %i.hm, align 1, !tbaa !18
  %i.hn = zext i32 %i.hj to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.hn
  store <8 x i8> %wide.load312, ptr %i.ho, align 1, !tbaa !18
  %index.next313 = add nuw i32 %index311, 8       ; 2 uses
  %i.hp = icmp eq i32 %index.next313, %n.vec310
  br i1 %i.hp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n314 = icmp eq i32 %.179.i.i, %n.vec310
  br i1 %cmp.n314, label %.outer.backedge.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.175126.i.i.ph = phi i32 [ %.074.ph.i21.i, %iter.check ], [ %.074.ph.i21.i, %vector.scevcheck ], [ %.074.ph.i21.i, %vector.memcheck ], [ %i.gw, %vec.epilog.iter.check ], [ %i.hh, %vec.epilog.middle.block ] ; 2 uses
  %.280125.i.i.ph = phi i32 [ %.179.i.i, %iter.check ], [ %.179.i.i, %vector.scevcheck ], [ %.179.i.i, %vector.memcheck ], [ %i.gx, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ] ; 4 uses
  %i.hq = add nsw i32 %.280125.i.i.ph, -1
  %xtraiter = and i32 %.280125.i.i.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.175126.i.i.prol = phi i32 [ %i.hy, %.preheader.i.i.prol ], [ %.175126.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.280125.i.i.prol = phi i32 [ %i.hr, %.preheader.i.i.prol ], [ %.280125.i.i.ph, %.preheader.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.hr = add nsw i32 %.280125.i.i.prol, -1       ; 2 uses
  %i.hs = add i32 %.175126.i.i.prol, %.neg.i.i
  %i.ht = zext i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !18
  %i.hw = zext i32 %.175126.i.i.prol to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.hw
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !18
  %i.hy = add i32 %.175126.i.i.prol, 1            ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !32

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa328.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.hy, %.preheader.i.i.prol ]
  %.175126.i.i.unr = phi i32 [ %.175126.i.i.ph, %.preheader.i.i.preheader ], [ %i.hy, %.preheader.i.i.prol ]
  %.280125.i.i.unr = phi i32 [ %.280125.i.i.ph, %.preheader.i.i.preheader ], [ %i.hr, %.preheader.i.i.prol ]
  %i.hz = icmp ult i32 %i.hq, 3
  br i1 %i.hz, label %.outer.backedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.175126.i.i = phi i32 [ %i.jc, %.preheader.i.i ], [ %.175126.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 7 uses
  %.280125.i.i = phi i32 [ %i.iv, %.preheader.i.i ], [ %.280125.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.ia = add i32 %.175126.i.i, %.neg.i.i
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !18
  %i.ie = zext i32 %.175126.i.i to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ie
  store i8 %i.id, ptr %i.if, align 1, !tbaa !18
  %i.ig = add i32 %.175126.i.i, 1
  %i.ih = sub i32 %.175126.i.i, %.077.i.i
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !18
  %i.il = zext i32 %i.ig to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.il
  store i8 %i.ik, ptr %i.im, align 1, !tbaa !18
  %i.in = add i32 %.175126.i.i, 2                 ; 2 uses
  %i.io = add i32 %i.in, %.neg.i.i
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = zext i32 %i.in to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.is
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !18
  %i.iu = add i32 %.175126.i.i, 3                 ; 2 uses
  %i.iv = add nsw i32 %.280125.i.i, -4            ; 2 uses
  %i.iw = add i32 %i.iu, %.neg.i.i
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = zext i32 %i.iu to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ja
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !18
  %i.jc = add i32 %.175126.i.i, 4                 ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.iv, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !34

decomp_block.exit.thread177:                      ; preds = %bb.q, %.loopexit119.i.i, %bb.af, %.outer.split.i.i, %bb.o, %bb.s, %bb.z, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %decomp_block.exit.thread

decomp_block.exit.thread:                         ; preds = %bb.j, %decomp_block.exit.thread177
  call void @free(ptr noundef %i.bv) #10
  br label %.critedge172

bb.ag:                                            ; preds = %.outer.backedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @free(ptr noundef %i.bv) #10
  %i.jd = icmp eq i32 %.1206301, 0
  %i.je = icmp ugt i32 %.val174, 7
  %or.cond5 = and i1 %i.jd, %i.je
  br i1 %or.cond5, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.ag
  %i.jf = add i32 %.val174, -6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aj
  %.2204 = phi i32 [ %i.ju, %bb.aj ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.jg = add i32 %.2204, %.0142.val              ; 2 uses
  %i.jh = zext i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.jk = and i8 %i.jj, -2
  %or.cond8 = icmp eq i8 %i.jk, -24
  br i1 %or.cond8, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %.lr.ph
  %i.jl = add i32 %i.jg, 1
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 %i.jm ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !18
  %i.jp = load i8, ptr %i.bl, align 1, !tbaa !18
  %i.jq = icmp eq i8 %i.jo, %i.jp
  br i1 %i.jq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.val173 = load i32, ptr %i.jn, align 1
  %i.jr = lshr i32 %.val173, 8
  %i.js = sub i32 %i.jr, %.2204
  store i32 %i.js, ptr %i.jn, align 1
  %i.jt = add i32 %.2204, 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %.lr.ph
  %.3 = phi i32 [ %i.jt, %bb.ai ], [ %.2204, %bb.ah ], [ %.2204, %.lr.ph ]
  %i.ju = add i32 %.3, 1                          ; 3 uses
  %i.jv = icmp ult i32 %i.ju, %i.jf
  br i1 %i.jv, label %.lr.ph, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.aj, %bb.ag
  %.4 = phi i32 [ %.1206301, %bb.ag ], [ %i.ju, %bb.aj ]
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not158.not = icmp ugt ptr %10, %i.az
  br i1 %.not158.not, label %.critedge172, label %bb.f

.critedge:                                        ; preds = %bb.f
  %i.jw = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @free(ptr noundef %i.jw) #10
  %i.jx = icmp ugt i16 %3, 2
  br i1 %i.jx, label %bb.ak, label %bb.am

.critedge172:                                     ; preds = %bb.g, %bb.h, %.loopexit, %bb.i, %.lr.ph207, %bb.e, %decomp_block.exit.thread
  %i.jy = load ptr, ptr %i.g, align 8, !tbaa !8
  call void @free(ptr noundef %i.jy) #10
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #10
  br label %bb.as

bb.ak:                                            ; preds = %.critedge
  %i.jz = zext i16 %3 to i32
  %i.ka = add nsw i32 %i.jz, -2                   ; 2 uses
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !36
  %i.ke = icmp eq i32 %4, %i.kd
  br i1 %i.ke, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kf = zext i16 %3 to i64
  %i.kg = getelementptr [36 x i8], ptr %2, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 -24
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !38
  %.not167 = icmp eq i32 %i.ki, 0
  %i.kj = trunc nuw i32 %i.ka to i16
  %spec.select = select i1 %.not167, i16 %i.kj, i16 %3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.critedge
  %.0137 = phi i16 [ %spec.select, %bb.al ], [ %3, %.critedge ], [ %3, %bb.ak ] ; 5 uses
  %i.kk = zext i16 %.0137 to i64
  %i.kl = mul nuw nsw i64 %i.kk, 36               ; 2 uses
  %i.km = call ptr @cli_malloc(i64 noundef %i.kl) #10 ; 9 uses
  %.not168 = icmp eq ptr %i.km, null
  br i1 %.not168, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #10
  %i.kn = call i32 @cli_writen(i32 noundef %6, ptr noundef nonnull %0, i32 noundef %1) #10 ; 0 uses
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.km, ptr align 4 %2, i64 %i.kl, i1 false)
  %i.ko = zext i16 %.0137 to i32
  %.not216 = icmp eq i16 %.0137, 0
  br i1 %.not216, label %._crit_edge, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %bb.ao
  %wide.trip.count = zext i16 %.0137 to i64       ; 2 uses
  %xtraiter336 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.kp = icmp ult i16 %.0137, 4
  br i1 %i.kp, label %.lr.ph213.epil.preheader, label %.lr.ph213.preheader.new

.lr.ph213.preheader.new:                          ; preds = %.lr.ph213.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213, %.lr.ph213.preheader.new
  %indvars.iv237 = phi i64 [ 0, %.lr.ph213.preheader.new ], [ %indvars.iv.next238.3, %.lr.ph213 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph213.preheader.new ], [ %niter.next.3, %.lr.ph213 ]
  %i.kq = getelementptr inbounds nuw [36 x i8], ptr %i.km, i64 %indvars.iv237 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load <2 x i32>, ptr %i.kq, align 4, !tbaa !4
  store <2 x i32> %i.ks, ptr %i.kr, align 4, !tbaa !4
  %i.kt = getelementptr inbounds nuw [36 x i8], ptr %i.km, i64 %indvars.iv237 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 36
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 44
  %i.kw = load <2 x i32>, ptr %i.ku, align 4, !tbaa !4
  store <2 x i32> %i.kw, ptr %i.kv, align 4, !tbaa !4
  %i.kx = getelementptr inbounds nuw [36 x i8], ptr %i.km, i64 %indvars.iv237 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 80
  %i.la = load <2 x i32>, ptr %i.ky, align 4, !tbaa !4
  store <2 x i32> %i.la, ptr %i.kz, align 4, !tbaa !4
  %i.lb = getelementptr inbounds nuw [36 x i8], ptr %i.km, i64 %indvars.iv237 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 108
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 116
  %i.le = load <2 x i32>, ptr %i.lc, align 4, !tbaa !4
  store <2 x i32> %i.le, ptr %i.ld, align 4, !tbaa !4
  %indvars.iv.next238.3 = add nuw nsw i64 %indvars.iv237, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph213, !llvm.loop !39

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph213
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %._crit_edge, label %.lr.ph213.epil.preheader

.lr.ph213.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph213.preheader
  %indvars.iv237.epil.init = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next238.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod338 = icmp ne i64 %xtraiter336, 0
  call void @llvm.assume(i1 %lcmp.mod338)
  br label %.lr.ph213.epil

.lr.ph213.epil:                                   ; preds = %.lr.ph213.epil, %.lr.ph213.epil.preheader
  %indvars.iv237.epil = phi i64 [ %indvars.iv237.epil.init, %.lr.ph213.epil.preheader ], [ %indvars.iv.next238.epil, %.lr.ph213.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph213.epil.preheader ], [ %epil.iter.next, %.lr.ph213.epil ]
  %i.lf = getelementptr inbounds nuw [36 x i8], ptr %i.km, i64 %indvars.iv237.epil ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load <2 x i32>, ptr %i.lf, align 4, !tbaa !4
  store <2 x i32> %i.lh, ptr %i.lg, align 4, !tbaa !4
  %indvars.iv.next238.epil = add nuw nsw i64 %indvars.iv237.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter336
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph213.epil, !llvm.loop !40

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph213.epil, %bb.ao
  %i.li = getelementptr inbounds nuw i8, ptr %i.d, i64 923
  %.val = load i32, ptr %i.li, align 1
  %i.lj = call i32 @cli_rebuildpe(ptr noundef nonnull %0, ptr noundef nonnull %i.km, i32 noundef %i.ko, i32 noundef %5, i32 noundef %.val, i32 noundef 0, i32 noundef 0, i32 noundef %6) #10
  %.not169 = icmp eq i32 %i.lj, 0
  br i1 %.not169, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #10
  %i.lk = call i32 @cli_writen(i32 noundef %6, ptr noundef nonnull %0, i32 noundef %1) #10 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @free(ptr noundef nonnull %i.km) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an, %.critedge172, %bb.b
  %.0 = phi i32 [ 0, %.critedge172 ], [ 1, %bb.ar ], [ 1, %bb.an ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

declare i32 @cli_writen(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @build_decrypt_dictionaries(ptr nofree noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.pr.i.i = load i32, ptr %0, align 8, !tbaa !23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 10 uses
  %i.c = icmp ugt i32 %.pr.i.i, 7
  br i1 %i.c, label %.lr.ph.i.i, label %.getbits.exit_crit_edge

.getbits.exit_crit_edge:                          ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %getbits.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.g = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.h = phi i32 [ %.pr.i.i, %.lr.ph.i.i ], [ %i.o, %bb.c ]
  %.not.i.i = icmp ult ptr %i.g, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 4, !tbaa !17
  %i.j = shl i32 %i.i, 8
  %i.k = load i8, ptr %i.g, align 1, !tbaa !18
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.j, %i.l               ; 2 uses
  store i32 %i.m, ptr %i.f, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !21
  %i.o = add i32 %i.h, -8                         ; 4 uses
  store i32 %i.o, ptr %0, align 8, !tbaa !23
  %i.p = icmp ugt i32 %i.o, 7
  br i1 %i.p, label %bb.b, label %getbits.exit, !llvm.loop !25

getbits.exit:                                     ; preds = %bb.c, %.getbits.exit_crit_edge
  %i.q = phi i32 [ %.pr.i.i, %.getbits.exit_crit_edge ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %.pre, %.getbits.exit_crit_edge ], [ %i.m, %bb.c ]
  %i.s = add nuw nsw i32 %i.q, 1
  store i32 %i.s, ptr %0, align 8, !tbaa !23
  %i.t = lshr exact i32 -2147483648, %i.q
  %i.u = and i32 %i.t, %i.r
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.thread179, label %.preheader115.split.us.preheader

.thread179:                                       ; preds = %getbits.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.w, i8 0, i64 757, i1 false)
  br label %.preheader115.split.us.preheader

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.y, i8 0, i64 757, i1 false)
  br label %.loopexit114

.preheader115.split.us.preheader:                 ; preds = %getbits.exit, %.thread179
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 12 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i32, ptr %0, align 8, !tbaa !23
  br label %.preheader115.split.us

.preheader115.split.us:                           ; preds = %.preheader115.split.us.preheader, %getbits.exit78.us
  %indvars.iv = phi i64 [ 0, %.preheader115.split.us.preheader ], [ %indvars.iv.next, %getbits.exit78.us ] ; 3 uses
  %i.ac = phi i32 [ %.promoted, %.preheader115.split.us.preheader ], [ %i.aw, %getbits.exit78.us ] ; 3 uses
  %i.ad = icmp ugt i32 %i.ac, 7
  br i1 %i.ad, label %.lr.ph.i.i74.us, label %.preheader115.split.us.getbits.exit78.us_crit_edge

.preheader115.split.us.getbits.exit78.us_crit_edge: ; preds = %.preheader115.split.us
  %.pre154 = load i32, ptr %i.aa, align 4, !tbaa !17
  br label %getbits.exit78.us

.lr.ph.i.i74.us:                                  ; preds = %.preheader115.split.us
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !22
  %.promoted.i.i75.us = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i74.us
  %i.af = phi ptr [ %.promoted.i.i75.us, %.lr.ph.i.i74.us ], [ %i.am, %bb.f ] ; 3 uses
  %i.ag = phi i32 [ %i.ac, %.lr.ph.i.i74.us ], [ %i.an, %bb.f ]
  %.not.i.i76.us = icmp ult ptr %i.af, %i.ae
  br i1 %.not.i.i76.us, label %bb.f, label %getbits.exit78.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.ai = shl i32 %i.ah, 8
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak            ; 2 uses
  store i32 %i.al, ptr %i.aa, align 4, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !21
  %i.an = add i32 %i.ag, -8                       ; 4 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !23
  %i.ao = icmp ugt i32 %i.an, 7
  br i1 %i.ao, label %bb.e, label %getbits.exit78.us, !llvm.loop !25

getbits.exit78.us:                                ; preds = %bb.f, %.preheader115.split.us.getbits.exit78.us_crit_edge
  %i.ap = phi i32 [ %.pre154, %.preheader115.split.us.getbits.exit78.us_crit_edge ], [ %i.al, %bb.f ]
  %i.aq = phi i32 [ %i.ac, %.preheader115.split.us.getbits.exit78.us_crit_edge ], [ %i.an, %bb.f ] ; 2 uses
  %i.ar = sub nuw nsw i32 8, %i.aq
  %i.as = lshr i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, 20
  %i.au = trunc i32 %i.at to i8
  %i.av = and i8 %i.au, 15
  %i.aw = add nuw nsw i32 %i.aq, 4                ; 2 uses
  store i32 %i.aw, ptr %0, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %.split.us, label %.preheader115.split.us, !llvm.loop !41

getbits.exit78.thread:                            ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  br label %.loopexit114

.split.us:                                        ; preds = %getbits.exit78.us
  %i.az = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %i.ab, i8 noundef zeroext 3)
  %.not61 = icmp eq i8 %i.az, 0
  br i1 %.not61, label %.loopexit114, label %.preheader113

.preheader113:                                    ; preds = %.split.us
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 27 ; 8 uses
  %scevgep = getelementptr i8, ptr %0, i64 28     ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader113, %.loopexit110
  %.155132 = phi i32 [ 0, %.preheader113 ], [ %.4, %.loopexit110 ] ; 12 uses
  %i.bc = call fastcc i32 @getdec(ptr noundef %0, i8 noundef zeroext 3, ptr noundef %i.a) ; 3 uses
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !4
  %.not66 = icmp eq i32 %i.bd, 0
  br i1 %.not66, label %bb.h, label %.loopexit114

bb.h:                                             ; preds = %bb.g
  %i.be = icmp ugt i32 %i.bc, 15
  br i1 %i.be, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %.pr.i.i87 = load i32, ptr %0, align 8, !tbaa !23 ; 8 uses
  %i.bf = icmp ugt i32 %.pr.i.i87, 7              ; 3 uses
  switch i32 %i.bc, label %bb.m [
    i32 16, label %bb.p
    i32 17, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.bf, label %.lr.ph.i.i82, label %..loopexit.i80_crit_edge

..loopexit.i80_crit_edge:                         ; preds = %bb.j
  %.pre155 = load i32, ptr %i.aa, align 4, !tbaa !17
  br label %.loopexit.i80

.lr.ph.i.i82:                                     ; preds = %bb.j
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !22
  %.promoted.i.i83 = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i82
  %i.bh = phi ptr [ %.promoted.i.i83, %.lr.ph.i.i82 ], [ %i.bo, %bb.l ] ; 3 uses
  %i.bi = phi i32 [ %.pr.i.i87, %.lr.ph.i.i82 ], [ %i.bp, %bb.l ]
  %.not.i.i84 = icmp ult ptr %i.bh, %i.bg
  br i1 %.not.i.i84, label %bb.l, label %.loopexit114

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.bk = shl i32 %i.bj, 8
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bk, %i.bm            ; 2 uses
  store i32 %i.bn, ptr %i.aa, align 4, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !21
  %i.bp = add i32 %i.bi, -8                       ; 4 uses
  store i32 %i.bp, ptr %0, align 8, !tbaa !23
  %i.bq = icmp ugt i32 %i.bp, 7
  br i1 %i.bq, label %bb.k, label %.loopexit.i80, !llvm.loop !25

.loopexit.i80:                                    ; preds = %bb.l, %..loopexit.i80_crit_edge
  %i.br = phi i32 [ %.pr.i.i87, %..loopexit.i80_crit_edge ], [ %i.bp, %bb.l ] ; 2 uses
  %i.bs = phi i32 [ %.pre155, %..loopexit.i80_crit_edge ], [ %i.bn, %bb.l ]
  %i.bt = sub nuw nsw i32 8, %i.br
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = lshr i32 %i.bu, 21
  %i.bw = and i32 %i.bv, 7
  %i.bx = add nuw nsw i32 %i.br, 3
  store i32 %i.bx, ptr %0, align 8, !tbaa !23
  %i.by = add nuw nsw i32 %i.bw, 3
  br label %.preheader

bb.m:                                             ; preds = %bb.i
  br i1 %i.bf, label %.lr.ph.i.i90, label %..loopexit.i88_crit_edge

..loopexit.i88_crit_edge:                         ; preds = %bb.m
  %.pre159 = load i32, ptr %i.aa, align 4, !tbaa !17
  br label %.loopexit.i88

.lr.ph.i.i90:                                     ; preds = %bb.m
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !22
  %.promoted.i.i91 = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i90
  %i.ca = phi ptr [ %.promoted.i.i91, %.lr.ph.i.i90 ], [ %i.ch, %bb.o ] ; 3 uses
  %i.cb = phi i32 [ %.pr.i.i87, %.lr.ph.i.i90 ], [ %i.ci, %bb.o ]
  %.not.i.i92 = icmp ult ptr %i.ca, %i.bz
  br i1 %.not.i.i92, label %bb.o, label %.loopexit114

bb.o:                                             ; preds = %bb.n
  %i.cc = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.cd = shl i32 %i.cc, 8
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cf = zext i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf            ; 2 uses
  store i32 %i.cg, ptr %i.aa, align 4, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  store ptr %i.ch, ptr %i.b, align 8, !tbaa !21
  %i.ci = add i32 %i.cb, -8                       ; 4 uses
  store i32 %i.ci, ptr %0, align 8, !tbaa !23
  %i.cj = icmp ugt i32 %i.ci, 7
  br i1 %i.cj, label %bb.n, label %.loopexit.i88, !llvm.loop !25

.loopexit.i88:                                    ; preds = %bb.o, %..loopexit.i88_crit_edge
  %i.ck = phi i32 [ %.pr.i.i87, %..loopexit.i88_crit_edge ], [ %i.ci, %bb.o ] ; 2 uses
  %i.cl = phi i32 [ %.pre159, %..loopexit.i88_crit_edge ], [ %i.cg, %bb.o ]
  %i.cm = sub nuw nsw i32 8, %i.ck
  %i.cn = lshr i32 %i.cl, %i.cm
  %i.co = lshr i32 %i.cn, 17
  %i.cp = and i32 %i.co, 127
  %i.cq = add nuw nsw i32 %i.ck, 7
  store i32 %i.cq, ptr %0, align 8, !tbaa !23
  %i.cr = add nuw nsw i32 %i.cp, 11
  br label %.preheader

.preheader:                                       ; preds = %.loopexit.i80, %.loopexit.i88
  %.0.ph = phi i32 [ %i.cr, %.loopexit.i88 ], [ %i.by, %.loopexit.i80 ] ; 2 uses
  %i.cs = icmp samesign ugt i32 %.155132, 756
  br i1 %i.cs, label %.loopexit110.thread, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.ct = zext nneg i32 %.155132 to i64           ; 2 uses
  %scevgep146 = getelementptr i8, ptr %scevgep, i64 %i.ct
  %i.cu = add nsw i32 %.0.ph, -1
  %i.cv = sub nuw nsw i32 756, %.155132
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 %i.cv)
  %narrow = add nuw nsw i32 %i.cw, 1
  %i.cx = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep146, i8 0, i64 %i.cx, i1 false), !tbaa !18
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv147 = phi i64 [ %i.ct, %.lr.ph130.preheader ], [ %indvars.iv.next148, %.lr.ph130 ] ; 2 uses
  %.1129 = phi i32 [ %.0.ph, %.lr.ph130.preheader ], [ %i.cy, %.lr.ph130 ]
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.cy = add nsw i32 %.1129, -1                  ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = icmp samesign ugt i64 %indvars.iv147, 755
  %or.cond = or i1 %i.da, %i.cz
  br i1 %or.cond, label %.loopexit110.loopexit, label %.lr.ph130, !llvm.loop !42

bb.p:                                             ; preds = %bb.i
  br i1 %i.bf, label %.lr.ph.i.i98, label %.preheader111.thread

.preheader111.thread:                             ; preds = %bb.p
  %.pre156 = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.db = add nuw nsw i32 %.pr.i.i87, 2
  store i32 %i.db, ptr %0, align 8, !tbaa !23
  br label %.lr.ph.preheader

.lr.ph.i.i98:                                     ; preds = %bb.p
  %i.dc = load ptr, ptr %i.z, align 8, !tbaa !22
  %.promoted.i.i99 = load ptr, ptr %i.b, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.i98
  %i.dd = phi ptr [ %.promoted.i.i99, %.lr.ph.i.i98 ], [ %i.dk, %bb.r ] ; 3 uses
  %i.de = phi i32 [ %.pr.i.i87, %.lr.ph.i.i98 ], [ %i.dl, %bb.r ] ; 2 uses
  %.not.i.i100 = icmp ult ptr %i.dd, %i.dc
  br i1 %.not.i.i100, label %bb.r, label %.loopexit114

bb.r:                                             ; preds = %bb.q
  %i.df = load i32, ptr %i.aa, align 4, !tbaa !17
  %i.dg = shl i32 %i.df, 8
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !18
  %i.di = zext i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di            ; 2 uses
  store i32 %i.dj, ptr %i.aa, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  store ptr %i.dk, ptr %i.b, align 8, !tbaa !21
  %i.dl = add i32 %i.de, -8                       ; 4 uses
  store i32 %i.dl, ptr %0, align 8, !tbaa !23
  %i.dm = icmp ugt i32 %i.dl, 7
  br i1 %i.dm, label %bb.q, label %.preheader111, !llvm.loop !25

.preheader111:                                    ; preds = %bb.r
  %i.dn = add nsw i32 %i.de, -6
  store i32 %i.dn, ptr %0, align 8, !tbaa !23
  %i.do = icmp samesign ugt i32 %.155132, 756
  br i1 %i.do, label %.loopexit110.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader111.thread, %.preheader111
  %i.dp = phi i32 [ %.pre156, %.preheader111.thread ], [ %i.dj, %.preheader111 ]
  %i.dq = phi i32 [ %.pr.i.i87, %.preheader111.thread ], [ %i.dl, %.preheader111 ]
  %i.dr = sub nuw nsw i32 8, %i.dq
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = lshr i32 %i.ds, 22
  %i.du = and i32 %i.dt, 3                        ; 3 uses
  %i.dv = zext nneg i32 %.155132 to i64           ; 7 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dv
  %.pre158 = load i8, ptr %.phi.trans.insert157, align 1, !tbaa !18 ; 6 uses
  %indvars.iv.next144 = add nuw nsw i64 %i.dv, 1  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144
  store i8 %.pre158, ptr %i.dw, align 1, !tbaa !18
  %i.dx = icmp samesign ugt i32 %.155132, 755
  br i1 %i.dx, label %.loopexit110.loopexit134, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %indvars.iv.next144.1 = add nuw nsw i64 %i.dv, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.1
  store i8 %.pre158, ptr %i.dy, align 1, !tbaa !18
  %i.dz = icmp eq i32 %.155132, 755
  br i1 %i.dz, label %.loopexit110.loopexit134, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %indvars.iv.next144.2 = add nuw nsw i64 %i.dv, 3 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.2
  store i8 %.pre158, ptr %i.ea, align 1, !tbaa !18
  %i.eb = icmp eq i32 %i.du, 0
  %i.ec = icmp samesign ugt i32 %.155132, 753
  %or.cond3.2 = or i1 %i.ec, %i.eb
  br i1 %or.cond3.2, label %.loopexit110.loopexit134, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %indvars.iv.next144.3 = add nuw nsw i64 %i.dv, 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.3
  store i8 %.pre158, ptr %i.ed, align 1, !tbaa !18
  %i.ee = icmp eq i32 %i.du, 1
  %i.ef = icmp samesign ugt i32 %.155132, 752
  %or.cond3.3 = or i1 %i.ef, %i.ee
  br i1 %or.cond3.3, label %.loopexit110.loopexit134, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %indvars.iv.next144.4 = add nuw nsw i64 %i.dv, 5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.4
  store i8 %.pre158, ptr %i.eg, align 1, !tbaa !18
  %i.eh = icmp eq i32 %i.du, 2
  %i.ei = icmp samesign ugt i32 %.155132, 751
  %or.cond3.4 = or i1 %i.ei, %i.eh
  br i1 %or.cond3.4, label %.loopexit110.loopexit134, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %indvars.iv.next144.5 = add nuw nsw i64 %i.dv, 6 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next144.5
  store i8 %.pre158, ptr %i.ej, align 1, !tbaa !18
  br label %.loopexit110.loopexit134

bb.s:                                             ; preds = %bb.h
  %i.ek = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.el = zext nneg i32 %.155132 to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18
  %i.eo = trunc nuw nsw i32 %i.bc to i8
  %i.ep = add i8 %i.en, %i.eo
  %i.eq = and i8 %i.ep, 15
  %i.er = add nuw nsw i32 %.155132, 1             ; 2 uses
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.es
  store i8 %i.eq, ptr %i.et, align 1, !tbaa !18
  br label %.loopexit110

.loopexit110.loopexit:                            ; preds = %.lr.ph130
  %i.eu = trunc nuw nsw i64 %indvars.iv.next148 to i32
  br label %.loopexit110

.loopexit110.loopexit134:                         ; preds = %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1, %.lr.ph.preheader
  %indvars.iv.next144.lcssa = phi i64 [ %indvars.iv.next144, %.lr.ph.preheader ], [ %indvars.iv.next144.1, %.lr.ph.1 ], [ %indvars.iv.next144.2, %.lr.ph.2 ], [ %indvars.iv.next144.3, %.lr.ph.3 ], [ %indvars.iv.next144.4, %.lr.ph.4 ], [ %indvars.iv.next144.5, %.lr.ph.5 ]
  %i.ev = trunc nuw nsw i64 %indvars.iv.next144.lcssa to i32
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
  %.4 = phi i32 [ %i.er, %bb.s ], [ %i.eu, %.loopexit110.loopexit ], [ %i.ev, %.loopexit110.loopexit134 ] ; 2 uses
  %i.ew = icmp ult i32 %.4, 757
  br i1 %i.ew, label %bb.g, label %.loopexit110.thread, !llvm.loop !43

.loopexit110.thread:                              ; preds = %.preheader111, %.preheader, %.loopexit110
  %i.ex = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %scevgep, i8 noundef zeroext 0)
  %.not62 = icmp eq i8 %i.ex, 0
  br i1 %.not62, label %.loopexit114, label %bb.t

bb.t:                                             ; preds = %.loopexit110.thread
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 749
  %i.ez = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %i.ey, i8 noundef zeroext 1)
  %.not63 = icmp eq i8 %i.ez, 0
  br i1 %.not63, label %.loopexit114, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 2 uses
  %i.fb = tail call fastcc zeroext i8 @build_decrypt_array(ptr noundef %0, ptr noundef %i.fa, i8 noundef zeroext 2)
  %.not64 = icmp eq i8 %i.fb, 0
  br i1 %.not64, label %.loopexit114, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 2 uses
  store i32 0, ptr %i.fc, align 8, !tbaa !26
  %i.fd = load i8, ptr %i.fa, align 1, !tbaa !18
  %.not65 = icmp eq i8 %i.fd, 3
  br i1 %.not65, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !18
  %.not65.1 = icmp eq i8 %i.ff, 3
  br i1 %.not65.1, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 779
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !18
  %.not65.2 = icmp eq i8 %i.fh, 3
  br i1 %.not65.2, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.fj = load i8, ptr %i.fi, align 4, !tbaa !18
  %.not65.3 = icmp eq i8 %i.fj, 3
  br i1 %.not65.3, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 781
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !18
  %.not65.4 = icmp eq i8 %i.fl, 3
  br i1 %.not65.4, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 782
  %i.fn = load i8, ptr %i.fm, align 2, !tbaa !18
  %.not65.5 = icmp eq i8 %i.fn, 3
  br i1 %.not65.5, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 783
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18
  %.not65.6 = icmp eq i8 %i.fp, 3
  br i1 %.not65.6, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !18
  %.not65.7 = icmp eq i8 %i.fr, 3
  br i1 %.not65.7, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  store i32 1, ptr %i.fc, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ac, %bb.ad
  %i.fs = load ptr, ptr %i.ba, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.fs, ptr noundef nonnull align 1 dereferenceable(757) %scevgep, i64 757, i1 false)
  br label %.loopexit114

.loopexit114:                                     ; preds = %bb.g, %bb.k, %bb.q, %bb.n, %bb.d, %getbits.exit78.thread, %.loopexit110.thread, %bb.t, %bb.u, %.split.us, %.loopexit
  %.057 = phi i32 [ 0, %bb.t ], [ 0, %bb.d ], [ 0, %.split.us ], [ 0, %.loopexit110.thread ], [ 0, %getbits.exit78.thread ], [ 1, %.loopexit ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.057
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext range(i8 0, 2) i8 @build_decrypt_array(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i8 noundef zeroext range(i8 0, 4) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca [18 x i32], align 16              ; 6 uses
  %i.b = alloca [18 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.d = zext nneg i8 %2 to i64                   ; 3 uses
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.f, i64 %i.d ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.d ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %.not128 = icmp eq i32 %i.k, 0
  br i1 %.not128, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18    ; 2 uses
  %i.n = icmp ugt i8 %i.m, 17
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = zext nneg i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.e, align 4, !tbaa !4
  store i32 0, ptr %i.g, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.h
  %indvars.iv134 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next135, %bb.h ] ; 3 uses
  %.087120 = phi i32 [ 0, %._crit_edge ], [ %i.w, %bb.h ]
  %.088119 = phi i32 [ 23, %._crit_edge ], [ %i.ap, %bb.h ] ; 3 uses
  %.089118 = phi i32 [ 0, %._crit_edge ], [ %.190, %bb.h ] ; 5 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 7 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next135
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = shl i32 %i.u, %.088119
  %i.w = add i32 %i.v, %.087120                   ; 5 uses
  %i.x = icmp ugt i32 %i.w, 16777216
  br i1 %i.x, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next135
  store i32 %i.w, ptr %i.y, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv134
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv134
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = add i32 %i.ac, %i.aa                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next135
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !4
  %i.ag = icmp samesign ugt i32 %.088119, 15
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i32 %i.w, 16                       ; 4 uses
  %i.ai = sub nsw i32 %i.ah, %.089118             ; 2 uses
  %.not104 = icmp eq i32 %i.ah, %.089118
  br i1 %.not104, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp ugt i32 %i.ai, 256
  %.not107 = icmp eq i32 %i.ah, 0
  %or.cond = or i1 %.not107, %i.aj
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.al = zext nneg i32 %.089118 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = trunc nuw nsw i64 %indvars.iv.next135 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 %i.ao, i64 %i.an, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %.190 = phi i32 [ %.089118, %bb.d ], [ %.089118, %bb.e ], [ %i.ah, %bb.g ]
  %i.ap = add nsw i32 %.088119, -1
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 15
  br i1 %exitcond137.not, label %bb.i, label %bb.c, !llvm.loop !45

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i32 %i.w, 16777216
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.i
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !14  ; 2 uses
  %.not129 = icmp eq i32 %i.aq, 0
  br i1 %.not129, label %.critedge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader, %bb.m
  %i.ar = phi i32 [ %i.bh, %bb.m ], [ %i.aq, %.preheader ] ; 2 uses
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.m ], [ 0, %.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv138 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 3 uses
  %.not102 = icmp eq i8 %i.at, 0
  br i1 %.not102, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph122
  %i.au = icmp ugt i8 %i.at, 17
  br i1 %i.au, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = zext nneg i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  %.not103 = icmp ult i32 %i.ax, %i.ar
  br i1 %.not103, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = trunc nuw i64 %indvars.iv138 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !4
  %i.bc = load i8, ptr %i.as, align 1, !tbaa !18
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !4
  %.pre = load i32, ptr %i.j, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph122, %bb.l
  %i.bh = phi i32 [ %i.ar, %.lr.ph122 ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next139, %i.bi
  br i1 %i.bj, label %.lr.ph122, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.c, %bb.j, %bb.k, %bb.m, %.preheader, %bb.i
  %.3 = phi i8 [ 0, %bb.i ], [ 1, %bb.m ], [ 0, %bb.f ], [ 1, %.preheader ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i8 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @getdec(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext range(i8 0, 4) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.b = zext nneg i8 %1 to i64                   ; 4 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.b
  store i32 1, ptr %2, align 4, !tbaa !4
  %.pr.i = load i32, ptr %0, align 8, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.g = icmp ugt i32 %.pr.i, 7
  br i1 %i.g, label %.lr.ph.i, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !17
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.promoted.i = load ptr, ptr %i.f, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.l = phi i32 [ %.pr.i, %.lr.ph.i ], [ %i.s, %bb.c ]
  %.not.i = icmp ult ptr %i.k, %i.i
  br i1 %.not.i, label %bb.c, label %readstream.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 4, !tbaa !17
  %i.n = shl i32 %i.m, 8
  %i.o = load i8, ptr %i.k, align 1, !tbaa !18
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.n, %i.p               ; 2 uses
  store i32 %i.q, ptr %i.j, align 4, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.f, align 8, !tbaa !21
  %i.s = add i32 %i.l, -8                         ; 4 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !23
  %i.t = icmp ugt i32 %i.s, 7
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.u = phi i32 [ %.pr.i, %..loopexit_crit_edge ], [ %i.s, %bb.c ] ; 2 uses
  %i.v = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.q, %bb.c ]
  %i.w = sub nuw nsw i32 8, %i.u
  %i.x = lshr i32 %i.v, %i.w
  %i.y = and i32 %i.x, 16776704                   ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  %i.ac = lshr i32 %i.y, 16
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1032
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = zext nneg i32 %i.ac to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18  ; 2 uses
  %i.aj = add i8 %i.ai, -24
  %or.cond = icmp ult i8 %i.aj, -23
  br i1 %or.cond, label %readstream.exit, label %bb.k

bb.e:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = icmp ult i32 %i.y, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp ult i32 %i.y, %i.ao
  %. = select i1 %i.ap, i8 9, i8 10
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = icmp ult i32 %i.y, %i.ar
  br i1 %i.as, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp ult i32 %i.y, %i.au
  br i1 %i.av, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp ult i32 %i.y, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = icmp ult i32 %i.y, %i.ba
  %.51 = select i1 %i.bb, i8 14, i8 15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d
  %.045 = phi i8 [ %i.ai, %bb.d ], [ %., %bb.f ], [ 13, %bb.i ], [ %.51, %bb.j ], [ 11, %bb.g ], [ 12, %bb.h ] ; 2 uses
  %i.bc = zext nneg i8 %.045 to i32               ; 2 uses
  %i.bd = add nuw nsw i32 %i.u, %i.bc
  store i32 %i.bd, ptr %0, align 8, !tbaa !23
  %i.be = zext nneg i8 %.045 to i64               ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.c, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sub i32 %i.y, %i.bh
  %i.bj = sub nuw nsw i32 24, %i.bc
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.be
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = add i32 %i.bk, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.b ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %.not50 = icmp ult i32 %i.bn, %i.br
  br i1 %.not50, label %bb.l, label %readstream.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !8
  %i.bt = zext i32 %i.bn to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  store i32 0, ptr %2, align 4, !tbaa !4
  br label %readstream.exit

readstream.exit:                                  ; preds = %bb.b, %bb.k, %bb.d, %bb.l
  %.0 = phi i32 [ %i.bv, %bb.l ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"DICT_HELPER", !10, i64 0, !12, i64 8, !5, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!9, !12, i64 8}
!14 = !{!9, !5, i64 16}
!15 = !{!16, !12, i64 1136}
!16 = !{!"ASPK", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 27, !6, i64 788, !6, i64 1024, !12, i64 1120, !12, i64 1128, !12, i64 1136, !6, i64 1144, !6, i64 1528, !5, i64 1912}
!17 = !{!16, !5, i64 4}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!16, !12, i64 1120}
!22 = !{!16, !12, i64 1128}
!23 = !{!16, !5, i64 0}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !20}
!26 = !{!16, !5, i64 1912}
!27 = distinct !{!27, !20, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!"branch_weights", i32 8, i32 24}
!31 = distinct !{!31, !20, !28, !29}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !20, !28}
!35 = distinct !{!35, !20}
!36 = !{!37, !5, i64 0}
!37 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!38 = !{!37, !5, i64 12}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20}
end_hunk_1
