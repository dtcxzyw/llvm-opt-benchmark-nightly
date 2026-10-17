Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_aspack?download=true
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
  %7 = alloca %struct.ASPK, align 8               ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.c = zext i32 %4 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1404
  %i.f = tail call ptr @cli_calloc(i64 noundef 6144, i64 noundef 1) #10 ; 10 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #10
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 1024 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2884
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 1032
  store ptr %i.h, ptr %i.i, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 1040
  store i32 721, ptr %i.j, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 3140
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 1048
  store ptr %i.k, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 3252
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 1056
  store ptr %i.m, ptr %i.n, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 1064
  store i32 28, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 3508
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 1072
  store ptr %i.p, ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 3540
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 1080
  store ptr %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 1088
  store i32 8, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 3796
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 1096
  store ptr %i.u, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 3872
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 1104
  store ptr %i.w, ptr %i.x, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 1112
  store i32 19, ptr %i.y, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4128
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 1136 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 10 uses
  store i32 65536, ptr %i.ab, align 4, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 788 ; 3 uses
  %i.ad = add i32 %4, 1806                        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.0139201 = phi i32 [ 0, %bb.c ], [ %i.av, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %.0139201, ptr %i.ae, align 4, !tbaa !8
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw i32 1, %i.ak
  %i.am = add i32 %i.al, %.0139201                ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i32 %i.am, ptr %i.an, align 8, !tbaa !8
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ap = add i32 %i.ad, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %i.at = zext nneg i8 %i.as to i32
  %i.au = shl nuw i32 1, %i.at
  %i.av = add i32 %i.au, %i.am
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 58
  br i1 %exitcond.not.1, label %bb.e, label %bb.d, !llvm.loop !25

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = icmp ult i32 %1, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(777) %i.aw, i8 0, i64 777, i1 false)
  br i1 %i.ax, label %.critedge172, label %.lr.ph270

.lr.ph270:                                        ; preds = %bb.e
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
  %i.bm = add nuw nsw i64 %i.c, 1412
  %.not158.not424 = icmp samesign ugt i64 %i.bm, %i.ay
  br i1 %.not158.not424, label %.critedge172, label %.lr.ph427

.lr.ph427:                                        ; preds = %.lr.ph270
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 1412
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph427, %.loopexit
  %i.bo = phi ptr [ %i.bn, %.lr.ph427 ], [ %i.jy, %.loopexit ] ; 2 uses
  %.1141268426 = phi i32 [ 0, %.lr.ph427 ], [ %.4, %.loopexit ] ; 2 uses
  %.0138269425 = phi ptr [ %i.e, %.lr.ph427 ], [ %i.bo, %.loopexit ] ; 2 uses
  %.0138.val = load i32, ptr %.0138269425, align 1 ; 4 uses
  %.not159 = icmp eq i32 %.0138.val, 0
  br i1 %.not159, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %.0138269425, i64 4
  %.val174 = load i32, ptr %i.bp, align 1         ; 8 uses
  %i.bq = add i32 %.val174, -1
  %or.cond171.not = icmp ult i32 %i.bq, %1
  br i1 %or.cond171.not, label %bb.h, label %.critedge172

bb.h:                                             ; preds = %bb.g
  %i.br = zext i32 %.0138.val to i64              ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 16 uses
  %i.bt = zext i32 %.val174 to i64                ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, %i.br
  %.not163 = icmp samesign ugt i64 %i.bu, %i.ay
  br i1 %.not163, label %.critedge172, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = add i32 %.val174, 270
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = tail call ptr @cli_calloc(i64 noundef %i.bw, i64 noundef 1) #10 ; 6 uses
  %.not164 = icmp eq ptr %i.bx, null
  br i1 %.not164, label %.critedge172, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bx, ptr %i.ba, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store ptr %i.by, ptr %i.bb, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.bs, i64 %i.bt, i1 false)
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i32 noundef %.0138.val, i32 noundef %.val174) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %i.bf, i8 0, i64 768, i1 false)
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(757) %i.bz, i8 0, i64 757, i1 false)
  store i32 32, ptr %7, align 8, !tbaa !23
  %i.ca = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %7)
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %decomp_block.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  br label %.outer.split.i.preheader.i

.outer.split.i.preheader.i:                       ; preds = %.outer.backedge.i.i, %bb.k
  %.073.ph.i21.i = phi i32 [ 0, %bb.k ], [ %i.cj, %.outer.backedge.i.i ] ; 4 uses
  %i.cb = phi i32 [ 0, %bb.k ], [ %.073.ph.be.i.i, %.outer.backedge.i.i ] ; 15 uses
  br label %.outer.split.i.i

.outer.split.i.i:                                 ; preds = %bb.o, %.outer.split.i.preheader.i
  %i.cc = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef %i.b) ; 5 uses
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i, label %bb.l, label %decomp_block.exit.thread177

bb.l:                                             ; preds = %.outer.split.i.i
  %i.ce = icmp ult i32 %i.cc, 256
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = trunc nuw i32 %i.cc to i8
  %i.cg = zext i32 %i.cb to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !19
  %i.ci = add nuw i32 %i.cb, 1
  br label %.outer.backedge.i.i

.outer.backedge.i.i:                              ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.cj = phi i32 [ %.073.ph.i21.i, %bb.m ], [ %i.gj, %middle.block ], [ %i.gj, %vec.epilog.middle.block ], [ %i.gj, %.preheader.i.i ], [ %i.gj, %.preheader.i.i.prol.loopexit ]
  %.073.ph.be.i.i = phi i32 [ %i.ci, %bb.m ], [ %i.gy, %middle.block ], [ %i.hj, %vec.epilog.middle.block ], [ %.lcssa464.unr, %.preheader.i.i.prol.loopexit ], [ %i.je, %.preheader.i.i ] ; 2 uses
  %i.ck = icmp ult i32 %.073.ph.be.i.i, %.val174
  br i1 %i.ck, label %.outer.split.i.preheader.i, label %bb.ad, !llvm.loop !26

bb.n:                                             ; preds = %bb.l
  %i.cl = icmp ugt i32 %i.cc, 719
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = call fastcc i32 @build_decrypt_dictionaries(ptr noundef nonnull %7)
  %.not95.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not95.i.i, label %decomp_block.exit.thread177, label %.outer.split.i.i, !llvm.loop !26

bb.p:                                             ; preds = %bb.n
  %i.cn = add nsw i32 %i.cc, -256
  %i.co = lshr i32 %i.cn, 3
  %i.cp = and i32 %i.cc, 7                        ; 2 uses
  %i.cq = add nuw nsw i32 %i.cp, 2                ; 2 uses
  %i.cr = icmp eq i32 %i.cp, 7
  br i1 %i.cr, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pr.i99.i.pre.i = load i32, ptr %7, align 8, !tbaa !23
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cs = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef %i.b) ; 2 uses
  %i.ct = load i32, ptr %i.b, align 4, !tbaa !8
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = icmp ugt i32 %i.cs, 85
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond.i.i, label %decomp_block.exit.thread177, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 28
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !19
  %.pr.i.i.i = load i32, ptr %7, align 8, !tbaa !23 ; 3 uses
  %i.da = icmp ugt i32 %.pr.i.i.i, 7
  br i1 %i.da, label %.lr.ph.i.i.i, label %..loopexit121_crit_edge.i.i

..loopexit121_crit_edge.i.i:                      ; preds = %bb.r
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !18
  br label %.loopexit121.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.db = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %.promoted.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i211 = icmp ult ptr %.promoted.i.i.i, %i.db
  br i1 %.not.i.i.i211, label %.lr.ph.preheader, label %decomp_block.exit.thread177

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i
  %.promoted = load i32, ptr %i.ab, align 4
  br label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %exitcond326.not = icmp eq ptr %i.dj, %i.db
  br i1 %exitcond326.not, label %decomp_block.exit.thread177, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %i.dc = phi i32 [ %i.dk, %bb.s ], [ %.pr.i.i.i, %.lr.ph.preheader ]
  %i.dd = phi ptr [ %i.dj, %bb.s ], [ %.promoted.i.i.i, %.lr.ph.preheader ] ; 2 uses
  %i.de = phi i32 [ %i.di, %bb.s ], [ %.promoted, %.lr.ph.preheader ]
  %i.df = shl i32 %i.de, 8
  %i.dg = load i8, ptr %i.dd, align 1, !tbaa !19
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.df, %i.dh            ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 3 uses
  %i.dk = add i32 %i.dc, -8                       ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 7
  br i1 %i.dl, label %bb.s, label %.loopexit121.i.i.loopexit, !llvm.loop !0

.loopexit121.i.i.loopexit:                        ; preds = %.lr.ph
  store i32 %i.di, ptr %i.ab, align 4
  store ptr %i.dj, ptr %i.ba, align 8
  br label %.loopexit121.i.i

.loopexit121.i.i:                                 ; preds = %.loopexit121.i.i.loopexit, %..loopexit121_crit_edge.i.i
  %i.dm = phi i32 [ %.pr.i.i.i, %..loopexit121_crit_edge.i.i ], [ %i.dk, %.loopexit121.i.i.loopexit ] ; 2 uses
  %i.dn = phi i32 [ %.pre.i.i, %..loopexit121_crit_edge.i.i ], [ %i.di, %.loopexit121.i.i.loopexit ]
  %i.do = load i8, ptr %i.cx, align 1, !tbaa !19
  %i.dp = zext i8 %i.do to i32
  %i.dq = sub nuw nsw i32 8, %i.dm
  %i.dr = lshr i32 %i.dn, %i.dq
  %i.ds = and i32 %i.dr, 16777215
  %i.dt = zext i8 %i.cz to i32                    ; 2 uses
  %i.du = sub nsw i32 24, %i.dt
  %i.dv = lshr i32 %i.ds, %i.du
  %i.dw = add nuw nsw i32 %i.cq, %i.dp
  %i.dx = add nuw nsw i32 %i.dw, %i.dv
  %i.dy = add nuw nsw i32 %i.dm, %i.dt
  br label %bb.t

bb.t:                                             ; preds = %.loopexit121.i.i, %._crit_edge.i
  %.promoted250 = phi i32 [ %i.dy, %.loopexit121.i.i ], [ %.pr.i99.i.pre.i, %._crit_edge.i ] ; 5 uses
  %.177.i.i = phi i32 [ %i.dx, %.loopexit121.i.i ], [ %i.cq, %._crit_edge.i ] ; 14 uses
  %i.dz = zext nneg i32 %i.co to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !19  ; 2 uses
  %i.ef = zext i8 %i.ee to i32                    ; 4 uses
  %i.eg = load i32, ptr %i.bg, align 8, !tbaa !24
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = icmp ult i8 %i.ee, 3
  %or.cond3.i.i = select i1 %i.eh, i1 true, i1 %i.ei
  %i.ej = icmp ugt i32 %.promoted250, 7           ; 2 uses
  br i1 %or.cond3.i.i, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  br i1 %i.ej, label %.lr.ph.i101.i.i, label %..loopexit117_crit_edge.i.i

..loopexit117_crit_edge.i.i:                      ; preds = %bb.u
  %.pre134.i.i.a = load i32, ptr %i.ab, align 4, !tbaa !18
  br label %.loopexit117.i.i

.lr.ph.i101.i.i:                                  ; preds = %bb.u
  %i.ek = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %.promoted.i102.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.not.i103.i.i253 = icmp ult ptr %.promoted.i102.i.i, %i.ek
  br i1 %.not.i103.i.i253, label %.lr.ph254.preheader, label %decomp_block.exit.thread177

.lr.ph254.preheader:                              ; preds = %.lr.ph.i101.i.i
  %.promoted243 = load i32, ptr %i.ab, align 4
  br label %.lr.ph254

bb.v:                                             ; preds = %.lr.ph254
  %exitcond332.not = icmp eq ptr %i.es, %i.ek
  br i1 %exitcond332.not, label %decomp_block.exit.thread177, label %.lr.ph254, !llvm.loop !0

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %bb.v
  %i.el = phi i32 [ %i.et, %bb.v ], [ %.promoted250, %.lr.ph254.preheader ]
  %i.em = phi ptr [ %i.es, %bb.v ], [ %.promoted.i102.i.i, %.lr.ph254.preheader ] ; 2 uses
  %i.en = phi i32 [ %i.er, %bb.v ], [ %.promoted243, %.lr.ph254.preheader ]
  %i.eo = shl i32 %i.en, 8
  %i.ep = load i8, ptr %i.em, align 1, !tbaa !19
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.eo, %i.eq            ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  %i.et = add i32 %i.el, -8                       ; 3 uses
  %i.eu = icmp ugt i32 %i.et, 7
  br i1 %i.eu, label %bb.v, label %.loopexit117.i.i.loopexit, !llvm.loop !0

.loopexit117.i.i.loopexit:                        ; preds = %.lr.ph254
  store i32 %i.er, ptr %i.ab, align 4
  store ptr %i.es, ptr %i.ba, align 8
  br label %.loopexit117.i.i

.loopexit117.i.i:                                 ; preds = %.loopexit117.i.i.loopexit, %..loopexit117_crit_edge.i.i
  %i.ev = phi i32 [ %.promoted250, %..loopexit117_crit_edge.i.i ], [ %i.et, %.loopexit117.i.i.loopexit ] ; 2 uses
  %i.ew = phi i32 [ %.pre134.i.i.a, %..loopexit117_crit_edge.i.i ], [ %i.er, %.loopexit117.i.i.loopexit ]
  %i.ex = sub nuw nsw i32 8, %i.ev
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = and i32 %i.ey, 16777215
  %i.fa = sub nsw i32 24, %i.ef
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = add i32 %i.fb, %i.eb
  %i.fd = add nuw nsw i32 %i.ev, %i.ef
  store i32 %i.fd, ptr %7, align 8, !tbaa !23
  br label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.ej, label %.lr.ph.i107.i.i, label %..loopexit119_crit_edge.i.i

..loopexit119_crit_edge.i.i:                      ; preds = %bb.w
  %.pre133.i.i = load i32, ptr %i.ab, align 4, !tbaa !18
  br label %.loopexit119.i.i

.lr.ph.i107.i.i:                                  ; preds = %bb.w
  %i.fe = load ptr, ptr %i.bb, align 8, !tbaa !22 ; 2 uses
  %.promoted.i108.i.i = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.not.i109.i.i231 = icmp ult ptr %.promoted.i108.i.i, %i.fe
  br i1 %.not.i109.i.i231, label %.lr.ph232.preheader, label %decomp_block.exit.thread177

.lr.ph232.preheader:                              ; preds = %.lr.ph.i107.i.i
  %.promoted221 = load i32, ptr %i.ab, align 4
  br label %.lr.ph232

bb.x:                                             ; preds = %.lr.ph232
  %exitcond329.not = icmp eq ptr %i.fm, %i.fe
  br i1 %exitcond329.not, label %decomp_block.exit.thread177, label %.lr.ph232, !llvm.loop !0

.lr.ph232:                                        ; preds = %.lr.ph232.preheader, %bb.x
  %i.ff = phi i32 [ %i.fn, %bb.x ], [ %.promoted250, %.lr.ph232.preheader ]
  %i.fg = phi ptr [ %i.fm, %bb.x ], [ %.promoted.i108.i.i, %.lr.ph232.preheader ] ; 2 uses
  %i.fh = phi i32 [ %i.fl, %bb.x ], [ %.promoted221, %.lr.ph232.preheader ]
  %i.fi = shl i32 %i.fh, 8
  %i.fj = load i8, ptr %i.fg, align 1, !tbaa !19
  %i.fk = zext i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fi, %i.fk            ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 3 uses
  %i.fn = add i32 %i.ff, -8                       ; 3 uses
  %i.fo = icmp ugt i32 %i.fn, 7
  br i1 %i.fo, label %bb.x, label %.loopexit119.i.i.loopexit, !llvm.loop !0

.loopexit119.i.i.loopexit:                        ; preds = %.lr.ph232
  store i32 %i.fl, ptr %i.ab, align 4
  store ptr %i.fm, ptr %i.ba, align 8
  br label %.loopexit119.i.i

.loopexit119.i.i:                                 ; preds = %.loopexit119.i.i.loopexit, %..loopexit119_crit_edge.i.i
  %i.fp = phi i32 [ %.promoted250, %..loopexit119_crit_edge.i.i ], [ %i.fn, %.loopexit119.i.i.loopexit ] ; 2 uses
  %i.fq = phi i32 [ %.pre133.i.i, %..loopexit119_crit_edge.i.i ], [ %i.fl, %.loopexit119.i.i.loopexit ]
  %i.fr = add nsw i32 %i.ef, -3
  %i.fs = sub nuw nsw i32 8, %i.fp
  %i.ft = lshr i32 %i.fq, %i.fs
  %i.fu = and i32 %i.ft, 16777215
  %i.fv = sub nsw i32 27, %i.ef
  %i.fw = lshr i32 %i.fu, %i.fv
  %i.fx = shl nuw nsw i32 %i.fw, 3
  %i.fy = add nsw i32 %i.fr, %i.fp
  store i32 %i.fy, ptr %7, align 8, !tbaa !23
  %i.fz = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef %i.b)
  %i.ga = add i32 %i.fz, %i.eb
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !8
  %.not90.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not90.i.i, label %bb.y, label %decomp_block.exit.thread177

bb.y:                                             ; preds = %.loopexit119.i.i, %.loopexit117.i.i
  %.074.i.i = phi i32 [ %i.fc, %.loopexit117.i.i ], [ %i.gb, %.loopexit119.i.i ] ; 4 uses
  %i.gd = icmp ult i32 %.074.i.i, 3
  br i1 %i.gd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ge = zext nneg i32 %.074.i.i to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !8  ; 2 uses
  %.not92.i.i = icmp eq i32 %.074.i.i, 0
  br i1 %.not92.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 %.073.ph.i21.i, ptr %i.gf, align 4, !tbaa !8
  br label %.sink.split.i.i

bb.ab:                                            ; preds = %bb.y
  %i.gh = load i32, ptr %i.bh, align 4, !tbaa !8
  store i32 %i.gh, ptr %i.bi, align 8, !tbaa !8
  store i32 %.073.ph.i21.i, ptr %i.bh, align 4, !tbaa !8
  %i.gi = add i32 %.074.i.i, -3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.aa
  %.sink.i.i = phi i32 [ %i.gg, %bb.aa ], [ %i.gi, %bb.ab ] ; 3 uses
  store i32 %.sink.i.i, ptr %i.a, align 16, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.z
  %i.gj = phi i32 [ %.073.ph.i21.i, %bb.z ], [ %.sink.i.i, %.sink.split.i.i ] ; 4 uses
  %.075.i.i = phi i32 [ %i.gg, %bb.z ], [ %.sink.i.i, %.sink.split.i.i ] ; 5 uses
  %.neg.i.i = xor i32 %.075.i.i, -1               ; 6 uses
  %or.cond96.i.i = icmp uge i32 %.075.i.i, %i.cb
  %i.gk = sub nuw i32 %.val174, %i.cb
  %i.gl = icmp ugt i32 %.177.i.i, %i.gk
  %or.cond98.i.i = select i1 %or.cond96.i.i, i1 true, i1 %i.gl
  br i1 %or.cond98.i.i, label %decomp_block.exit.thread177, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %min.iters.check = icmp ult i32 %.177.i.i, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.gm = add nsw i32 %.177.i.i, -1               ; 2 uses
  %i.gn = xor i32 %i.cb, -1
  %i.go = icmp ugt i32 %i.gm, %i.gn
  %i.gp = sub i32 %.075.i.i, %i.cb
  %i.gq = icmp ult i32 %i.gp, %i.gm
  %i.gr = or i1 %i.go, %i.gq
  br i1 %i.gr, label %.preheader.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gs = zext i32 %i.cb to i64
  %i.gt = xor i32 %.075.i.i, -1
  %i.gu = add i32 %i.cb, %i.gt
  %i.gv = zext i32 %i.gu to i64
  %i.gw = sub nsw i64 %i.gv, %i.gs
  %diff.check = icmp ugt i64 %i.gw, -32
  br i1 %diff.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check431 = icmp ult i32 %.177.i.i, 32
  br i1 %min.iters.check431, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gx = and i32 %.177.i.i, 28
  %n.vec = and i32 %.177.i.i, -32                 ; 4 uses
  %i.gy = add i32 %i.cb, %n.vec                   ; 2 uses
  %i.gz = and i32 %.177.i.i, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ha = add i32 %i.cb, %index                   ; 2 uses
  %i.hb = add i32 %i.ha, %.neg.i.i
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load = load <16 x i8>, ptr %i.hd, align 1, !tbaa !19
  %wide.load432 = load <16 x i8>, ptr %i.he, align 1, !tbaa !19
  %i.hf = zext i32 %i.ha to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <16 x i8> %wide.load, ptr %i.hg, align 1, !tbaa !19
  store <16 x i8> %wide.load432, ptr %i.hh, align 1, !tbaa !19
  %index.next = add nuw i32 %index, 32            ; 2 uses
  %i.hi = icmp eq i32 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %.177.i.i, %n.vec
  br i1 %cmp.n, label %.outer.backedge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.gx, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec434 = and i32 %.177.i.i, -4               ; 3 uses
  %i.hj = add i32 %i.cb, %n.vec434                ; 2 uses
  %i.hk = and i32 %.177.i.i, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index435 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next437, %vec.epilog.vector.body ] ; 2 uses
  %i.hl = add i32 %i.cb, %index435                ; 2 uses
  %i.hm = add i32 %i.hl, %.neg.i.i
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hn
  %wide.load436 = load <4 x i8>, ptr %i.ho, align 1, !tbaa !19
  %i.hp = zext i32 %i.hl to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hp
  store <4 x i8> %wide.load436, ptr %i.hq, align 1, !tbaa !19
  %index.next437 = add nuw i32 %index435, 4       ; 2 uses
  %i.hr = icmp eq i32 %index.next437, %n.vec434
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n438 = icmp eq i32 %.177.i.i, %n.vec434
  br i1 %cmp.n438, label %.outer.backedge.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1126.i.i.ph = phi i32 [ %i.cb, %iter.check ], [ %i.cb, %vector.scevcheck ], [ %i.cb, %vector.memcheck ], [ %i.gy, %vec.epilog.iter.check ], [ %i.hj, %vec.epilog.middle.block ] ; 2 uses
  %.2125.i.i.ph = phi i32 [ %.177.i.i, %iter.check ], [ %.177.i.i, %vector.scevcheck ], [ %.177.i.i, %vector.memcheck ], [ %i.gz, %vec.epilog.iter.check ], [ %i.hk, %vec.epilog.middle.block ] ; 4 uses
  %i.hs = add nsw i32 %.2125.i.i.ph, -1
  %xtraiter = and i32 %.2125.i.i.ph, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.1126.i.i.prol = phi i32 [ %i.ia, %.preheader.i.i.prol ], [ %.1126.i.i.ph, %.preheader.i.i.preheader ] ; 3 uses
  %.2125.i.i.prol = phi i32 [ %i.ht, %.preheader.i.i.prol ], [ %.2125.i.i.ph, %.preheader.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.ht = add nsw i32 %.2125.i.i.prol, -1         ; 2 uses
  %i.hu = add i32 %.1126.i.i.prol, %.neg.i.i
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !19
  %i.hy = zext i32 %.1126.i.i.prol to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.hy
  store i8 %i.hx, ptr %i.hz, align 1, !tbaa !19
  %i.ia = add i32 %.1126.i.i.prol, 1              ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !29

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa464.unr = phi i32 [ poison, %.preheader.i.i.preheader ], [ %i.ia, %.preheader.i.i.prol ]
  %.1126.i.i.unr = phi i32 [ %.1126.i.i.ph, %.preheader.i.i.preheader ], [ %i.ia, %.preheader.i.i.prol ]
  %.2125.i.i.unr = phi i32 [ %.2125.i.i.ph, %.preheader.i.i.preheader ], [ %i.ht, %.preheader.i.i.prol ]
  %i.ib = icmp ult i32 %i.hs, 3
  br i1 %i.ib, label %.outer.backedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.1126.i.i = phi i32 [ %i.je, %.preheader.i.i ], [ %.1126.i.i.unr, %.preheader.i.i.prol.loopexit ] ; 7 uses
  %.2125.i.i = phi i32 [ %i.ix, %.preheader.i.i ], [ %.2125.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.ic = add i32 %.1126.i.i, %.neg.i.i
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !19
  %i.ig = zext i32 %.1126.i.i to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ig
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !19
  %i.ii = add i32 %.1126.i.i, 1
  %i.ij = sub i32 %.1126.i.i, %.075.i.i
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !19
  %i.in = zext i32 %i.ii to i64
  %i.io = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.in
  store i8 %i.im, ptr %i.io, align 1, !tbaa !19
  %i.ip = add i32 %.1126.i.i, 2                   ; 2 uses
  %i.iq = add i32 %i.ip, %.neg.i.i
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !19
  %i.iu = zext i32 %i.ip to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.iu
  store i8 %i.it, ptr %i.iv, align 1, !tbaa !19
  %i.iw = add i32 %.1126.i.i, 3                   ; 2 uses
  %i.ix = add nsw i32 %.2125.i.i, -4              ; 2 uses
  %i.iy = add i32 %i.iw, %.neg.i.i
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !19
  %i.jc = zext i32 %i.iw to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.jc
  store i8 %i.jb, ptr %i.jd, align 1, !tbaa !19
  %i.je = add i32 %.1126.i.i, 4                   ; 2 uses
  %.not94.i.i.3 = icmp eq i32 %i.ix, 0
  br i1 %.not94.i.i.3, label %.outer.backedge.i.i, label %.preheader.i.i, !llvm.loop !30

decomp_block.exit.thread177:                      ; preds = %bb.q, %bb.ac, %.loopexit119.i.i, %.lr.ph.i.i.i, %.lr.ph.i107.i.i, %.lr.ph.i101.i.i, %.outer.split.i.i, %bb.o, %bb.s, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %decomp_block.exit.thread

decomp_block.exit.thread:                         ; preds = %bb.j, %decomp_block.exit.thread177
  tail call void @free(ptr noundef %i.bx) #10
  br label %.critedge172

bb.ad:                                            ; preds = %.outer.backedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void @free(ptr noundef %i.bx) #10
  %i.jf = icmp eq i32 %.1141268426, 0
  %i.jg = icmp ugt i32 %.val174, 7
  %or.cond5 = and i1 %i.jf, %i.jg
  br i1 %or.cond5, label %.lr.ph266.preheader, label %.loopexit

.lr.ph266.preheader:                              ; preds = %bb.ad
  %i.jh = add i32 %.val174, -6
  br label %.lr.ph266

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %bb.ag
  %.2265 = phi i32 [ %i.jw, %bb.ag ], [ 0, %.lr.ph266.preheader ] ; 5 uses
  %i.ji = add i32 %.2265, %.0138.val              ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !19
  %i.jm = and i8 %i.jl, -2
  %or.cond8 = icmp eq i8 %i.jm, -24
  br i1 %or.cond8, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph266
  %i.jn = add i32 %i.ji, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo ; 3 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !19
  %i.jr = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.js = icmp eq i8 %i.jq, %i.jr
  br i1 %i.js, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.val173 = load i32, ptr %i.jp, align 1
  %i.jt = lshr i32 %.val173, 8
  %i.ju = sub i32 %i.jt, %.2265
  store i32 %i.ju, ptr %i.jp, align 1
  %i.jv = add i32 %.2265, 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %.lr.ph266
  %.3 = phi i32 [ %i.jv, %bb.af ], [ %.2265, %bb.ae ], [ %.2265, %.lr.ph266 ]
  %i.jw = add i32 %.3, 1                          ; 3 uses
  %i.jx = icmp ult i32 %i.jw, %i.jh
  br i1 %i.jx, label %.lr.ph266, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %bb.ag, %bb.ad
  %.4 = phi i32 [ %.1141268426, %bb.ad ], [ %i.jw, %bb.ag ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %.not158.not = icmp ugt ptr %i.jy, %i.az
  br i1 %.not158.not, label %.critedge172, label %bb.f

.critedge:                                        ; preds = %bb.f
  %i.jz = load ptr, ptr %i.g, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.jz) #10
  %i.ka = icmp ugt i16 %3, 2
  br i1 %i.ka, label %bb.ah, label %bb.aj

.critedge172:                                     ; preds = %bb.g, %bb.h, %.loopexit, %bb.i, %.lr.ph270, %bb.e, %decomp_block.exit.thread
  %i.kb = load ptr, ptr %i.g, align 8, !tbaa !13
  tail call void @free(ptr noundef %i.kb) #10
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #10
  br label %bb.ap

bb.ah:                                            ; preds = %.critedge
  %i.kc = zext i16 %3 to i32
  %i.kd = add nsw i32 %i.kc, -2                   ; 2 uses
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !39
  %i.kh = icmp eq i32 %4, %i.kg
  br i1 %i.kh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ki = zext i16 %3 to i64
  %i.kj = getelementptr [36 x i8], ptr %2, i64 %i.ki
  %i.kk = getelementptr i8, ptr %i.kj, i64 -24
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !40
  %.not167 = icmp eq i32 %i.kl, 0
  %i.km = trunc nuw i32 %i.kd to i16
  %spec.select = select i1 %.not167, i16 %i.km, i16 %3
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %.critedge
  %.0142 = phi i16 [ %spec.select, %bb.ai ], [ %3, %.critedge ], [ %3, %bb.ah ] ; 5 uses
  %i.kn = zext i16 %.0142 to i64
  %i.ko = mul nuw nsw i64 %i.kn, 36               ; 2 uses
  %i.kp = tail call ptr @cli_malloc(i64 noundef %i.ko) #10 ; 9 uses
  %.not168 = icmp eq ptr %i.kp, null
  br i1 %.not168, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #10
  %i.kq = tail call i32 @cli_writen(i32 noundef %6, ptr noundef nonnull %0, i32 noundef %1) #10 ; 0 uses
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kp, ptr align 4 %2, i64 %i.ko, i1 false)
  %i.kr = zext i16 %.0142 to i32
  %.not279 = icmp eq i16 %.0142, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph276.preheader

.lr.ph276.preheader:                              ; preds = %bb.al
  %wide.trip.count = zext i16 %.0142 to i64       ; 2 uses
  %xtraiter472 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ks = icmp ult i16 %.0142, 4
  br i1 %i.ks, label %.lr.ph276.epil.preheader, label %.lr.ph276.preheader.new

.lr.ph276.preheader.new:                          ; preds = %.lr.ph276.preheader
  %unroll_iter = and i64 %wide.trip.count, 65532
  br label %.lr.ph276

.lr.ph276:                                        ; preds = %.lr.ph276, %.lr.ph276.preheader.new
  %indvars.iv333 = phi i64 [ 0, %.lr.ph276.preheader.new ], [ %indvars.iv.next334.3, %.lr.ph276 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph276.preheader.new ], [ %niter.next.3, %.lr.ph276 ]
  %i.kt = getelementptr inbounds nuw [36 x i8], ptr %i.kp, i64 %indvars.iv333 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load <2 x i32>, ptr %i.kt, align 4, !tbaa !8
  store <2 x i32> %i.kv, ptr %i.ku, align 4, !tbaa !8
  %i.kw = getelementptr inbounds nuw [36 x i8], ptr %i.kp, i64 %indvars.iv333 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 36
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 44
  %i.kz = load <2 x i32>, ptr %i.kx, align 4, !tbaa !8
  store <2 x i32> %i.kz, ptr %i.ky, align 4, !tbaa !8
  %i.la = getelementptr inbounds nuw [36 x i8], ptr %i.kp, i64 %indvars.iv333 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 72
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 80
  %i.ld = load <2 x i32>, ptr %i.lb, align 4, !tbaa !8
  store <2 x i32> %i.ld, ptr %i.lc, align 4, !tbaa !8
  %i.le = getelementptr inbounds nuw [36 x i8], ptr %i.kp, i64 %indvars.iv333 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 108
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 116
  %i.lh = load <2 x i32>, ptr %i.lf, align 4, !tbaa !8
  store <2 x i32> %i.lh, ptr %i.lg, align 4, !tbaa !8
  %indvars.iv.next334.3 = add nuw nsw i64 %indvars.iv333, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph276, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph276
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %._crit_edge, label %.lr.ph276.epil.preheader

.lr.ph276.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph276.preheader
  %indvars.iv333.epil.init = phi i64 [ 0, %.lr.ph276.preheader ], [ %indvars.iv.next334.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod474 = icmp ne i64 %xtraiter472, 0
  tail call void @llvm.assume(i1 %lcmp.mod474)
  br label %.lr.ph276.epil

.lr.ph276.epil:                                   ; preds = %.lr.ph276.epil, %.lr.ph276.epil.preheader
  %indvars.iv333.epil = phi i64 [ %indvars.iv333.epil.init, %.lr.ph276.epil.preheader ], [ %indvars.iv.next334.epil, %.lr.ph276.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph276.epil.preheader ], [ %epil.iter.next, %.lr.ph276.epil ]
  %i.li = getelementptr inbounds nuw [36 x i8], ptr %i.kp, i64 %indvars.iv333.epil ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load <2 x i32>, ptr %i.li, align 4, !tbaa !8
  store <2 x i32> %i.lk, ptr %i.lj, align 4, !tbaa !8
  %indvars.iv.next334.epil = add nuw nsw i64 %indvars.iv333.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter472
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph276.epil, !llvm.loop !33

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph276.epil, %bb.al
  %i.ll = getelementptr inbounds nuw i8, ptr %i.d, i64 923
  %.val = load i32, ptr %i.ll, align 1
  %i.lm = tail call i32 @cli_rebuildpe(ptr noundef nonnull %0, ptr noundef nonnull %i.kp, i32 noundef %i.kr, i32 noundef %5, i32 noundef %.val, i32 noundef 0, i32 noundef 0, i32 noundef %6) #10
  %.not169 = icmp eq i32 %i.lm, 0
  br i1 %.not169, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #10
  %i.ln = tail call i32 @cli_writen(i32 noundef %6, ptr noundef nonnull %0, i32 noundef %1) #10 ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #10
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @free(ptr noundef nonnull %i.kp) #10
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak, %.critedge172, %bb.b
  %.0 = phi i32 [ 0, %.critedge172 ], [ 1, %bb.ao ], [ 1, %bb.ak ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
