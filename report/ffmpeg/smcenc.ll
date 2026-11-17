Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/smcenc?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%struct.anon = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"smc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"QuickTime Graphics (SMC)\00", align 1
@.compoundliteral = internal constant [2 x i32] [i32 11, i32 -1], align 4
@ff_smc_encoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, { %struct.anon, [8 x i8] } } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, i32 49, i32 1048578, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 96, i32 3640, ptr null, ptr null, ptr null, ptr @smc_encode_init, %union.anon { ptr @smc_encode_frame }, ptr @smc_encode_end, ptr null, ptr null, ptr null, ptr null, ptr null, { %struct.anon, [8 x i8] } { %struct.anon { ptr null, ptr @.compoundliteral }, [8 x i8] zeroinitializer } }, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot add reference\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"buf && buf_size >= 0\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"libavcodec/bytestream.h\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -12, 1) i32 @smc_encode_init(ptr nofree noundef captures(none) initializes((648, 652)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 8, ptr %i.c, align 8, !tbaa !33
  %i.d = tail call ptr @av_frame_alloc() #11      ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !31
  %.not = icmp eq ptr %i.d, null
  %. = select i1 %.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @smc_encode_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = sext i32 %i.i to i64
  %i.k = mul nsw i64 %i.g, %i.j
  %i.l = tail call i32 @ff_alloc_packet(ptr noundef %0, ptr noundef %1, i64 noundef %i.k) #11 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.nq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.t = load i64, ptr %i.s, align 8, !tbaa !57
  %i.u = sext i32 %i.o to i64
  %i.v = srem i64 %i.t, %i.u
  %i.w = icmp eq i64 %i.v, 0
  %spec.select = zext i1 %i.w to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.sink = phi i32 [ 1, %bb.b ], [ %spec.select, %bb.d ], [ 1, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 3636
  store i32 %.sink, ptr %i.x, align 4, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !61 ; 3 uses
  %i.ac = icmp ne ptr %i.z, null
  %i.ad = icmp sgt i32 %i.ab, -1
  %or.cond.i = and i1 %i.ac, %i.ad
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 151) #11
  tail call void @abort() #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = zext nneg i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = icmp samesign ugt i32 %i.ab, 3
  br i1 %i.ag, label %bb.h, label %bytestream2_put_be32.exit

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.z, align 1, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  br label %bytestream2_put_be32.exit

bytestream2_put_be32.exit:                        ; preds = %bb.g, %bb.h
  %.sroa.181.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.ah, %bb.h ], [ %i.z, %bb.g ] ; 2 uses
  %i.ai = tail call ptr @av_packet_new_side_data(ptr noundef nonnull %1, i32 noundef 0, i64 noundef 1024) #11 ; 2 uses
  %.not42 = icmp eq ptr %i.ai, null
  br i1 %.not42, label %bb.nq, label %bb.i

bb.i:                                             ; preds = %bytestream2_put_be32.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.ai, ptr noundef nonnull align 1 dereferenceable(1024) %i.ak, i64 1024, i1 false)
  %i.al = load ptr, ptr %2, align 8, !tbaa !56    ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !62
  %i.ao = sext i32 %i.an to i64                   ; 19 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !62
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !67 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68 ; 11 uses
  %i.az = add nsw i32 %i.ay, 3
  %i.ba = sdiv i32 %i.az, 4
  %i.bb = add nsw i32 %i.aw, 3
  %i.bc = sdiv i32 %i.bb, 4
  %i.bd = mul nsw i32 %i.ba, %i.bc                ; 7 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.critedge3.preheader.lr.ph.i, label %smc_encode_stream.exit

.critedge3.preheader.lr.ph.i:                     ; preds = %bb.i
  %.not.i44 = icmp eq ptr %i.aq, null
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 3636
  %i.bg = sext i32 %i.ay to i64                   ; 22 uses
  %i.bh = shl nsw i64 %i.ao, 2                    ; 22 uses
  %i.bi = ptrtoint ptr %i.al to i64
  %i.bj = or i32 %i.ay, -4
  %i.bk = add nsw i32 %i.bj, %i.ay
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 1588 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 21 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 22 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 23 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 25 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 26 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 27 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 564 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 5 uses
  %i.bz = ptrtoint ptr %i.af to i64               ; 82 uses
  %i.ca = shl nsw i64 %i.ao, 1
  %i.cb = mul nsw i64 %i.ao, 3
  %i.cc = shl nsw i64 %i.ao, 1
  %i.cd = mul nsw i64 %i.ao, 3
  %i.ce = shl nsw i64 %i.ao, 1
  %i.cf = mul nsw i64 %i.ao, 3
  %i.cg = shl nsw i64 %i.ao, 1
  %i.ch = mul nsw i64 %i.ao, 3
  br label %.critedge3.preheader.i

.critedge3.preheader.i:                           ; preds = %.critedge19.i, %.critedge3.preheader.lr.ph.i
  %.sroa.181.1 = phi i32 [ %.sroa.181.0, %.critedge3.preheader.lr.ph.i ], [ %.sroa.181.3, %.critedge19.i ] ; 12 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %.critedge3.preheader.lr.ph.i ], [ %.sroa.0.4, %.critedge19.i ] ; 70 uses
  %.09961632.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %.35.i, %.critedge19.i ] ; 26 uses
  %.010011628.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %.351036.i, %.critedge19.i ] ; 26 uses
  %.010401627.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %.21042.i, %.critedge19.i ] ; 32 uses
  %.010431626.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %.21045.i, %.critedge19.i ] ; 32 uses
  %.010461625.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %.21048.i, %.critedge19.i ] ; 32 uses
  %.010491620.i = phi i32 [ 0, %.critedge3.preheader.lr.ph.i ], [ %i.baf, %.critedge19.i ]
  %.010501616.i = phi ptr [ %i.al, %.critedge3.preheader.lr.ph.i ], [ %.351085.i, %.critedge19.i ] ; 31 uses
  %.010861612.i = phi ptr [ %i.al, %.critedge3.preheader.lr.ph.i ], [ %.351121.i, %.critedge19.i ] ; 32 uses
  %.010491620.fr.i = freeze i32 %.010491620.i     ; 7 uses
  br i1 %.not.i44, label %.critedge.i, label %.lr.ph1350.i

.lr.ph1350.i:                                     ; preds = %.critedge3.preheader.i
  %i.ci = load i32, ptr %i.bf, align 4, !tbaa !58
  %.fr1638.i = freeze i32 %i.ci
  %i.cj = icmp eq i32 %.fr1638.i, 0
  %i.ck = icmp slt i32 %.010491620.fr.i, %i.bd
  %or.cond.i45 = and i1 %i.ck, %i.cj
  br i1 %or.cond.i45, label %.lr.ph1364.preheader.i, label %.critedge.i

.lr.ph1364.preheader.i:                           ; preds = %.lr.ph1350.i
  %i.cl = sub i32 %i.bd, %.010491620.fr.i         ; 2 uses
  br label %.lr.ph1364.i

.critedge3.loopexit.i:                            ; preds = %bb.l, %.lr.ph1341.i, %.preheader1315.i
  %.21088.lcssa.i = phi ptr [ %.1108713451363.i, %.preheader1315.i ], [ %i.df, %bb.l ], [ %i.da, %.lr.ph1341.i ]
  %.21052.lcssa.i = phi ptr [ %.1105113461362.i, %.preheader1315.i ], [ %i.df, %bb.l ], [ %.1105113461362.i, %.lr.ph1341.i ]
  %.21003.lcssa.i = phi i32 [ %.1100213471361.i, %.preheader1315.i ], [ %i.dg, %bb.l ], [ %.1100213471361.i, %.lr.ph1341.i ]
  %.2998.lcssa.i = phi i32 [ %.199713481360.i, %.preheader1315.i ], [ 0, %bb.l ], [ %i.db, %.lr.ph1341.i ]
  %exitcond1670.not.i = icmp eq i32 %i.cx, %i.cl
  br i1 %exitcond1670.not.i, label %.critedge.i, label %.lr.ph1364.i

.lr.ph1364.i:                                     ; preds = %.critedge3.loopexit.i, %.lr.ph1364.preheader.i
  %.1108713451363.i = phi ptr [ %.21088.lcssa.i, %.critedge3.loopexit.i ], [ %.010861612.i, %.lr.ph1364.preheader.i ] ; 4 uses
  %.1105113461362.i = phi ptr [ %.21052.lcssa.i, %.critedge3.loopexit.i ], [ %.010501616.i, %.lr.ph1364.preheader.i ] ; 5 uses
  %.1100213471361.i = phi i32 [ %.21003.lcssa.i, %.critedge3.loopexit.i ], [ %.010011628.i, %.lr.ph1364.preheader.i ] ; 5 uses
  %.199713481360.i = phi i32 [ %.2998.lcssa.i, %.critedge3.loopexit.i ], [ %.09961632.i, %.lr.ph1364.preheader.i ] ; 4 uses
  %.099013491359.i = phi i32 [ %i.cx, %.critedge3.loopexit.i ], [ 0, %.lr.ph1364.preheader.i ] ; 3 uses
  %i.cm = sub nsw i32 %i.aw, %.1100213471361.i    ; 2 uses
  %.not11581334.i = icmp sgt i32 %i.cm, 0
  br i1 %.not11581334.i, label %.lr.ph.i, label %.critedge1190.i

.lr.ph.i:                                         ; preds = %.lr.ph1364.i
  %i.cn = call i32 @llvm.umin.i32(i32 %i.cm, i32 4)
  %i.co = sub nsw i32 %i.ay, %.199713481360.i
  %i.cp = call i32 @llvm.smin.i32(i32 %i.co, i32 4)
  %i.cq = sext i32 %.199713481360.i to i64
  %invariant.gep.i = getelementptr i8, ptr %i.aq, i64 %i.cq
  %i.cr = sext i32 %i.cp to i64
  %i.cs = sext i32 %.1100213471361.i to i64
  %wide.trip.count.i = zext nneg i32 %i.cn to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge1190.i, label %bb.k, !llvm.loop !34

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.ct = add nsw i64 %indvars.iv.i, %i.cs
  %i.cu = mul nsw i64 %i.ct, %i.at
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.cu
  %i.cv = mul nsw i64 %indvars.iv.i, %i.ao
  %i.cw = getelementptr inbounds i8, ptr %.1108713451363.i, i64 %i.cv
  %bcmp.i = call i32 @bcmp(ptr nonnull %gep.i, ptr %i.cw, i64 %i.cr)
  %.not1159.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not1159.i, label %bb.j, label %.critedge.i

.critedge1190.i:                                  ; preds = %bb.j, %.lr.ph1364.i
  %i.cx = add nuw nsw i32 %.099013491359.i, 1     ; 2 uses
  %exitcond1669.i = icmp eq i32 %.099013491359.i, 255
  br i1 %exitcond1669.i, label %.critedge.i, label %.preheader1315.i

.preheader1315.i:                                 ; preds = %.critedge1190.i
  %i.cy = icmp ne ptr %.1108713451363.i, null
  %i.cz = icmp ne ptr %.1105113461362.i, null
  %or.cond551336.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond551336.i, label %.lr.ph1341.i, label %.critedge3.loopexit.i

.lr.ph1341.i:                                     ; preds = %.preheader1315.i
  %i.da = getelementptr inbounds nuw i8, ptr %.1108713451363.i, i64 4 ; 2 uses
  %i.db = add nsw i32 %.199713481360.i, 4
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %.1105113461362.i to i64
  %i.de = sub i64 %i.dc, %i.dd
  %.not1160.i = icmp slt i64 %i.de, %i.bg
  br i1 %.not1160.i, label %.critedge3.loopexit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph1341.i
  %i.df = getelementptr inbounds i8, ptr %.1105113461362.i, i64 %i.bh ; 2 uses
  %i.dg = add nsw i32 %.1100213471361.i, 4
  br label %.critedge3.loopexit.i

.critedge.i:                                      ; preds = %.critedge1190.i, %.critedge3.loopexit.i, %bb.k, %.lr.ph1350.i, %.critedge3.preheader.i
  %.2992.i = phi i32 [ %.099013491359.i, %bb.k ], [ 0, %.lr.ph1350.i ], [ 0, %.critedge3.preheader.i ], [ 256, %.critedge1190.i ], [ %i.cl, %.critedge3.loopexit.i ] ; 6 uses
  %i.dh = icmp sgt i32 %.010491620.fr.i, 0
  %i.di = icmp slt i32 %.010491620.fr.i, %i.bd    ; 2 uses
  %or.cond11921379.i = and i1 %i.dh, %i.di
  br i1 %or.cond11921379.i, label %.lr.ph1385.split.preheader.i, label %.critedge5.i

.lr.ph1385.split.preheader.i:                     ; preds = %.critedge.i
  %i.dj = ptrtoint ptr %.010861612.i to i64
  %i.dk = sub i64 %i.dj, %i.bi                    ; 2 uses
  %i.dl = sdiv i64 %i.dk, %i.ao
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = srem i64 %i.dk, %i.ao                   ; 2 uses
  %i.do = icmp slt i64 %i.dn, 4                   ; 2 uses
  %i.dp = call i32 @llvm.smax.i32(i32 %i.dm, i32 4)
  %i.dq = add nsw i32 %i.dp, -4
  %i.dr = select i1 %i.do, i32 %i.dq, i32 %i.dm
  %i.ds = trunc nuw nsw i64 %i.dn to i32
  %i.dt = add nsw i32 %i.ds, -4
  %i.du = sext i32 %i.dr to i64
  %i.dv = mul nsw i64 %i.du, %i.ao
  %invariant.gep1388.i = getelementptr i8, ptr %i.al, i64 %i.dv
  %i.dw = sub nuw nsw i32 %i.bd, %.010491620.fr.i ; 2 uses
  %spec.select.1637.i = select i1 %i.do, i32 %spec.select.i, i32 %i.dt
  %i.dx = zext nneg i32 %spec.select.1637.i to i64
  %gep1389.i = getelementptr i8, ptr %invariant.gep1388.i, i64 %i.dx
  br label %.lr.ph1385.split.i

.critedge9.loopexit.i:                            ; preds = %bb.o, %.lr.ph1374.i, %.preheader1314.i
  %.61092.lcssa.i = phi ptr [ %.510911380.i, %.preheader1314.i ], [ %i.eo, %bb.o ], [ %i.ej, %.lr.ph1374.i ]
  %.61056.lcssa.i = phi ptr [ %.510551381.i, %.preheader1314.i ], [ %i.eo, %bb.o ], [ %.510551381.i, %.lr.ph1374.i ]
  %.61007.lcssa.i = phi i32 [ %.510061382.i, %.preheader1314.i ], [ %i.ep, %bb.o ], [ %.510061382.i, %.lr.ph1374.i ]
  %.6.lcssa.i = phi i32 [ %.51383.i, %.preheader1314.i ], [ 0, %bb.o ], [ %i.ek, %.lr.ph1374.i ]
  %exitcond1682.not.i = icmp eq i32 %i.eg, %i.dw
  br i1 %exitcond1682.not.i, label %.critedge5.i, label %.lr.ph1385.split.i

.lr.ph1385.split.i:                               ; preds = %.critedge9.loopexit.i, %.lr.ph1385.split.preheader.i
  %.09931384.i = phi i32 [ %i.eg, %.critedge9.loopexit.i ], [ 0, %.lr.ph1385.split.preheader.i ] ; 3 uses
  %.51383.i = phi i32 [ %.6.lcssa.i, %.critedge9.loopexit.i ], [ %.09961632.i, %.lr.ph1385.split.preheader.i ] ; 3 uses
  %.510061382.i = phi i32 [ %.61007.lcssa.i, %.critedge9.loopexit.i ], [ %.010011628.i, %.lr.ph1385.split.preheader.i ] ; 4 uses
  %.510551381.i = phi ptr [ %.61056.lcssa.i, %.critedge9.loopexit.i ], [ %.010501616.i, %.lr.ph1385.split.preheader.i ] ; 5 uses
  %.510911380.i = phi ptr [ %.61092.lcssa.i, %.critedge9.loopexit.i ], [ %.010861612.i, %.lr.ph1385.split.preheader.i ] ; 4 uses
  %i.dy = sub nsw i32 %i.aw, %.510061382.i        ; 2 uses
  %.not11641366.i = icmp sgt i32 %i.dy, 0
  br i1 %.not11641366.i, label %.lr.ph1368.i, label %.critedge1194.i

.lr.ph1368.i:                                     ; preds = %.lr.ph1385.split.i
  %i.dz = call i32 @llvm.umin.i32(i32 %i.dy, i32 4)
  %i.ea = sub nsw i32 %i.ay, %.51383.i
  %i.eb = call i32 @llvm.smin.i32(i32 %i.ea, i32 4)
  %i.ec = sext i32 %i.eb to i64
  %wide.trip.count1679.i = zext nneg i32 %i.dz to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next1677.i = add nuw nsw i64 %indvars.iv1676.i, 1 ; 2 uses
  %exitcond1680.not.i = icmp eq i64 %indvars.iv.next1677.i, %wide.trip.count1679.i
  br i1 %exitcond1680.not.i, label %.critedge1194.i, label %bb.n, !llvm.loop !35

bb.n:                                             ; preds = %bb.m, %.lr.ph1368.i
  %indvars.iv1676.i = phi i64 [ 0, %.lr.ph1368.i ], [ %indvars.iv.next1677.i, %bb.m ] ; 2 uses
  %i.ed = mul nsw i64 %indvars.iv1676.i, %i.ao    ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %gep1389.i, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %.510911380.i, i64 %i.ed
  %bcmp1161.i = call i32 @bcmp(ptr %i.ee, ptr %i.ef, i64 %i.ec)
  %.not1162.i = icmp eq i32 %bcmp1161.i, 0
  br i1 %.not1162.i, label %bb.m, label %.critedge5.i

.critedge1194.i:                                  ; preds = %bb.m, %.lr.ph1385.split.i
  %i.eg = add nuw nsw i32 %.09931384.i, 1         ; 2 uses
  %exitcond1681.i = icmp eq i32 %.09931384.i, 255
  br i1 %exitcond1681.i, label %.critedge5.i, label %.preheader1314.i

.preheader1314.i:                                 ; preds = %.critedge1194.i
  %i.eh = icmp ne ptr %.510911380.i, null
  %i.ei = icmp ne ptr %.510551381.i, null
  %or.cond571369.i = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond571369.i, label %.lr.ph1374.i, label %.critedge9.loopexit.i

.lr.ph1374.i:                                     ; preds = %.preheader1314.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.510911380.i, i64 4 ; 2 uses
  %i.ek = add nsw i32 %.51383.i, 4
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %.510551381.i to i64
  %i.en = sub i64 %i.el, %i.em
  %.not1165.i = icmp slt i64 %i.en, %i.bg
  br i1 %.not1165.i, label %.critedge9.loopexit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph1374.i
  %i.eo = getelementptr inbounds i8, ptr %.510551381.i, i64 %i.bh ; 2 uses
  %i.ep = add nsw i32 %.510061382.i, 4
  br label %.critedge9.loopexit.i

.critedge5.i:                                     ; preds = %.critedge1194.i, %.critedge9.loopexit.i, %bb.n, %.critedge.i
  %.2995.i = phi i32 [ 0, %.critedge.i ], [ %.09931384.i, %bb.n ], [ 256, %.critedge1194.i ], [ %i.dw, %.critedge9.loopexit.i ] ; 6 uses
  br i1 %i.di, label %.lr.ph1412.i, label %.loopexit.thread.i

.lr.ph1412.i:                                     ; preds = %.critedge5.i, %.critedge15.i
  %.09841411.i = phi i32 [ %i.fw, %.critedge15.i ], [ 0, %.critedge5.i ] ; 6 uses
  %.09871410.i = phi i32 [ %.014.lcssa.i.i, %.critedge15.i ], [ 0, %.critedge5.i ] ; 2 uses
  %.91409.i = phi i32 [ %.10.lcssa.i, %.critedge15.i ], [ %.09961632.i, %.critedge5.i ] ; 3 uses
  %.910101408.i = phi i32 [ %.101011.lcssa.i, %.critedge15.i ], [ %.010011628.i, %.critedge5.i ] ; 4 uses
  %.910591407.i = phi ptr [ %.101060.lcssa.i, %.critedge15.i ], [ %.010501616.i, %.critedge5.i ] ; 5 uses
  %.910951406.i = phi ptr [ %.101096.lcssa.i, %.critedge15.i ], [ %.010861612.i, %.critedge5.i ] ; 7 uses
  %i.eq = sub nsw i32 %i.aw, %.910101408.i        ; 5 uses
  %i.er = call i32 @llvm.smin.i32(i32 %i.eq, i32 4)
  %i.es = sub i32 %i.ay, %.91409.i
  %i.et = call i32 @llvm.smin.i32(i32 %i.es, i32 4) ; 2 uses
  %i.eu = mul i32 %i.er, %i.et                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.ev = icmp sgt i32 %i.eq, 0
  br i1 %i.ev, label %.lr.ph1395.i, label %._crit_edge.i

.lr.ph1395.i:                                     ; preds = %.lr.ph1412.i
  %i.ew = sext i32 %i.et to i64                   ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.910951406.i, i64 %i.ew, i1 false)
  %exitcond1687.not.i = icmp eq i32 %i.eq, 1
  br i1 %exitcond1687.not.i, label %._crit_edge.i, label %bb.s

._crit_edge.i:                                    ; preds = %.lr.ph1395.i, %bb.s, %bb.t, %bb.u, %.lr.ph1412.i
  %i.ex = sext i32 %i.eu to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.ex, i64 noundef 1, ptr noundef nonnull @smc_cmp_values) #11
  %i.ey = load i8, ptr %i.a, align 16, !tbaa !32  ; 3 uses
  store i8 %i.ey, ptr %i.bl, align 4, !tbaa !32
  %i.ez = icmp sgt i32 %i.eu, 1
  br i1 %i.ez, label %.lr.ph.preheader.i.i, label %count_distinct_items.exit.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  %i.fa = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.fa, 1
  %4 = icmp eq i32 %i.eu, 2
  br i1 %4, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter.a = and i64 %i.fa, -2
  br label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %bb.r, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i.a = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.r ] ; 3 uses
  %.01415.i.i.a = phi i32 [ 1, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1.a, %bb.r ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.a ; 2 uses
  %5 = load i8, ptr %i.fb, align 1, !tbaa !32     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  %6 = load i8, ptr %i.fc, align 1, !tbaa !32
  %.not.i1259.i.a = icmp eq i8 %5, %6
  br i1 %.not.i1259.i.a, label %.lr.ph.i.i.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.a
  %7 = sext i32 %.01415.i.i.a to i64
  %8 = getelementptr inbounds i8, ptr %i.bl, i64 %7
  store i8 %5, ptr %8, align 1, !tbaa !32
  %9 = add nsw i32 %.01415.i.i.a, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.p, %.lr.ph.i.i.a
  %.1.i.i.a = phi i32 [ %9, %bb.p ], [ %.01415.i.i.a, %.lr.ph.i.i.a ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.a ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !32      ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !32
  %.not.i1259.i.1 = icmp eq i8 %11, %i.fe
  br i1 %.not.i1259.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.ff = sext i32 %.1.i.i.a to i64
  %i.fg = getelementptr inbounds i8, ptr %i.bl, i64 %i.ff
  store i8 %11, ptr %i.fg, align 1, !tbaa !32
  %i.fh = add nsw i32 %.1.i.i.a, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i32 [ %i.fh, %bb.q ], [ %.1.i.i.a, %.lr.ph.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.a, 2 ; 2 uses
  %niter.next.1.a = add i64 %niter, 2             ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1.a, %unroll_iter.a
  br i1 %niter.ncmp.1.a, label %count_distinct_items.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.a, !llvm.loop !36

count_distinct_items.exit.i.loopexit.unr-lcssa:   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %count_distinct_items.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %count_distinct_items.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ]
  %.01415.i.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod528 = trunc i64 %i.fa to i1
  call void @llvm.assume(i1 %lcmp.mod528)
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %13 = load i8, ptr %12, align 1, !tbaa !32      ; 2 uses
  %14 = getelementptr i8, ptr %12, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !32
  %.not.i1259.i.epil = icmp eq i8 %13, %15
  br i1 %.not.i1259.i.epil, label %count_distinct_items.exit.i, label %16

16:                                               ; preds = %.lr.ph.i.i.epil.preheader
  %17 = sext i32 %.01415.i.i.epil.init to i64
  %18 = getelementptr inbounds i8, ptr %i.bl, i64 %17
  store i8 %13, ptr %18, align 1, !tbaa !32
  %19 = add nsw i32 %.01415.i.i.epil.init, 1
  br label %count_distinct_items.exit.i

count_distinct_items.exit.i:                      ; preds = %count_distinct_items.exit.i.loopexit.unr-lcssa, %16, %.lr.ph.i.i.epil.preheader, %._crit_edge.i
  %.014.lcssa.i.i = phi i32 [ 1, %._crit_edge.i ], [ %.1.i.i.1, %count_distinct_items.exit.i.loopexit.unr-lcssa ], [ %19, %16 ], [ %.01415.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 8 uses
  store i32 %.014.lcssa.i.i, ptr %i.bm, align 8, !tbaa !70
  %i.fi = icmp eq i32 %.09841411.i, 0
  br i1 %i.fi, label %.thread.i, label %bb.v

bb.s:                                             ; preds = %.lr.ph1395.i
  %i.fj = getelementptr inbounds i8, ptr %i.a, i64 %i.ew
  %i.fk = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr align 1 %i.fk, i64 %i.ew, i1 false)
  %exitcond1687.not.i.1 = icmp eq i32 %i.eq, 2
  br i1 %exitcond1687.not.i.1, label %._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fl = shl nsw i64 %i.ew, 1
  %i.fm = getelementptr inbounds i8, ptr %i.a, i64 %i.fl
  %i.fn = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.fm, ptr align 1 %i.fn, i64 %i.ew, i1 false)
  %exitcond1687.not.i.2 = icmp eq i32 %i.eq, 3
  br i1 %exitcond1687.not.i.2, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = mul nsw i64 %i.ew, 3
  %i.fp = getelementptr inbounds i8, ptr %i.a, i64 %i.fo
  %i.fq = getelementptr inbounds i8, ptr %.910951406.i, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fp, ptr align 1 %i.fq, i64 %i.ew, i1 false)
  br label %._crit_edge.i

.thread.i:                                        ; preds = %count_distinct_items.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false)
  store i32 %.014.lcssa.i.i, ptr %i.bn, align 4, !tbaa !71
  store i8 %i.ey, ptr %i.bo, align 8, !tbaa !72
  br label %.preheader1313.i

bb.v:                                             ; preds = %count_distinct_items.exit.i
  %i.fr = load i32, ptr %i.bn, align 4, !tbaa !71
  %.not1166.i = icmp eq i32 %.014.lcssa.i.i, %i.fr
  br i1 %.not1166.i, label %bb.w, label %.critedge15.thread.i

bb.w:                                             ; preds = %bb.v
  %i.fs = sext i32 %.014.lcssa.i.i to i64
  %bcmp1167.i = call i32 @bcmp(ptr nonnull %i.au, ptr nonnull %i.bl, i64 %i.fs)
  %.not1168.i = icmp eq i32 %bcmp1167.i, 0
  br i1 %.not1168.i, label %bb.x, label %.critedge15.thread.i

bb.x:                                             ; preds = %bb.w
  store i8 %i.ey, ptr %i.bo, align 8, !tbaa !72
  %i.ft = add nuw nsw i32 %.09841411.i, 1         ; 2 uses
  %i.fu = icmp sgt i32 %.014.lcssa.i.i, 1
  %i.fv = icmp samesign ugt i32 %.09841411.i, 14
  %or.cond11.i = and i1 %i.fv, %i.fu
  br i1 %or.cond11.i, label %.critedge15.thread.i, label %.preheader1313.i

.preheader1313.i:                                 ; preds = %bb.x, %.thread.i
  %i.fw = phi i32 [ 1, %.thread.i ], [ %i.ft, %bb.x ] ; 3 uses
  %i.fx = icmp ne ptr %.910951406.i, null
  %i.fy = icmp ne ptr %.910591407.i, null
  %or.cond591396.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond591396.i, label %.lr.ph1401.i, label %.critedge15.i

.lr.ph1401.i:                                     ; preds = %.preheader1313.i
  %i.fz = getelementptr inbounds nuw i8, ptr %.910951406.i, i64 4 ; 2 uses
  %i.ga = add nsw i32 %.91409.i, 4
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %.910591407.i to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %.not1169.i = icmp slt i64 %i.gd, %i.bg
  br i1 %.not1169.i, label %.critedge15.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph1401.i
  %i.ge = getelementptr inbounds i8, ptr %.910591407.i, i64 %i.bh ; 2 uses
  %i.gf = add nsw i32 %.910101408.i, 4
  br label %.critedge15.i

.critedge15.thread.i:                             ; preds = %bb.x, %bb.w, %bb.v
  %.1988.ph.i = phi i32 [ %.09871410.i, %bb.w ], [ %.014.lcssa.i.i, %bb.x ], [ %.09871410.i, %bb.v ]
  %.1985.ph.i = phi i32 [ %.09841411.i, %bb.w ], [ %i.ft, %bb.x ], [ %.09841411.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit.i

.critedge15.i:                                    ; preds = %bb.y, %.lr.ph1401.i, %.preheader1313.i
  %.101096.lcssa.i = phi ptr [ %.910951406.i, %.preheader1313.i ], [ %i.ge, %bb.y ], [ %i.fz, %.lr.ph1401.i ]
  %.101060.lcssa.i = phi ptr [ %.910591407.i, %.preheader1313.i ], [ %i.ge, %bb.y ], [ %.910591407.i, %.lr.ph1401.i ]
  %.101011.lcssa.i = phi i32 [ %.910101408.i, %.preheader1313.i ], [ %i.gf, %bb.y ], [ %.910101408.i, %.lr.ph1401.i ]
  %.10.lcssa.i = phi i32 [ %.91409.i, %.preheader1313.i ], [ 0, %bb.y ], [ %i.ga, %.lr.ph1401.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.gg = add nsw i32 %i.fw, %.010491620.fr.i
  %i.gh = icmp slt i32 %i.gg, %i.bd
  %i.gi = icmp samesign ult i32 %.09841411.i, 255
  %i.gj = and i1 %i.gi, %i.gh
  br i1 %i.gj, label %.lr.ph1412.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.critedge15.i, %.critedge15.thread.i
  %.2989.i = phi i32 [ %.1988.ph.i, %.critedge15.thread.i ], [ %.014.lcssa.i.i, %.critedge15.i ]
  %.2986.i = phi i32 [ %.1985.ph.i, %.critedge15.thread.i ], [ %i.fw, %.critedge15.i ] ; 2 uses
  %.2989.fr.i = freeze i32 %.2989.i               ; 2 uses
  %i.gk = icmp slt i32 %.2989.fr.i, 9
  %spec.select1849.i = select i1 %i.gk, i32 %.2986.i, i32 0
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.i, %.critedge5.i
  %.29861821.i = phi i32 [ %.2986.i, %.loopexit.i ], [ 0, %.critedge5.i ]
  %.29891819.i = phi i32 [ %.2989.fr.i, %.loopexit.i ], [ 0, %.critedge5.i ] ; 2 uses
  %i.gl = phi i32 [ %spec.select1849.i, %.loopexit.i ], [ 0, %.critedge5.i ] ; 2 uses
  %.not1170.i = icmp slt i32 %.2995.i, %i.gl
  %.not1171.i = icmp slt i32 %.2995.i, %.2992.i   ; 4 uses
  %or.cond1195.i = select i1 %.not1170.i, i1 true, i1 %.not1171.i ; 2 uses
  %.0976.i = select i1 %or.cond1195.i, i32 %.29891819.i, i32 17
  %.0972.i = select i1 %or.cond1195.i, i32 %i.gl, i32 %.2995.i ; 2 uses
  %i.gm = icmp slt i32 %.2995.i, 17
  %or.cond1196.i = select i1 %i.gm, i1 true, i1 %.not1171.i
  %.not1173.i = icmp slt i32 %.2995.i, %.0972.i
  %or.cond1197.i = select i1 %or.cond1196.i, i1 true, i1 %.not1173.i ; 2 uses
  %.1977.i = select i1 %or.cond1197.i, i32 %.0976.i, i32 18
  %.1973.i = select i1 %or.cond1197.i, i32 %.0972.i, i32 %.2995.i ; 2 uses
  %.not1174.i = icmp sge i32 %.2992.i, %.1973.i
  %or.cond1198.i = select i1 %.not1174.i, i1 %.not1171.i, i1 false ; 2 uses
  %.2978.i = select i1 %or.cond1198.i, i32 19, i32 %.1977.i
  %.2974.i = select i1 %or.cond1198.i, i32 %.2992.i, i32 %.1973.i ; 2 uses
  %i.gn = icmp sgt i32 %.2992.i, 16
  %or.cond1199.i = select i1 %i.gn, i1 %.not1171.i, i1 false
  %.not1175.i = icmp sge i32 %.2992.i, %.2974.i
  %or.cond1200.not.i = select i1 %or.cond1199.i, i1 %.not1175.i, i1 false ; 2 uses
  %.3979.i = select i1 %or.cond1200.not.i, i32 20, i32 %.2978.i
  %.3975.i = select i1 %or.cond1200.not.i, i32 %.2992.i, i32 %.2974.i ; 2 uses
  %i.go = icmp eq i32 %.3975.i, 0                 ; 2 uses
  %.4980.i = select i1 %i.go, i32 %.29891819.i, i32 %.3979.i
  %.4.i = select i1 %i.go, i32 %.29861821.i, i32 %.3975.i ; 48 uses
  switch i32 %.4980.i, label %bb.ke [
    i32 1, label %bb.z
    i32 2, label %.preheader1318.i
    i32 3, label %bb.bp
    i32 4, label %bb.bp
    i32 5, label %bb.fq
    i32 6, label %bb.fq
    i32 7, label %bb.fq
    i32 8, label %bb.fq
    i32 17, label %bb.ml
    i32 18, label %bb.mq
    i32 19, label %bb.mw
    i32 20, label %bb.nb
  ]

.preheader1318.i:                                 ; preds = %.loopexit.thread.i
  %i.gp = load i8, ptr %i.au, align 4, !tbaa !32  ; 5 uses
  br label %bb.ak

bb.z:                                             ; preds = %.loopexit.thread.i
  %i.gq = icmp slt i32 %.4.i, 17
  %.not.i1250.i = icmp eq i32 %.sroa.181.1, 0
  %i.gr = ptrtoint ptr %.sroa.0.1 to i64
  %i.gs = sub i64 %i.bz, %i.gr
  %i.gt = icmp sgt i64 %i.gs, 0
  %or.cond = select i1 %.not.i1250.i, i1 %i.gt, i1 false ; 2 uses
  br i1 %i.gq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  br i1 %or.cond, label %bb.ab, label %bytestream2_put_byte.exit1245.i

bb.ab:                                            ; preds = %bb.aa
  %i.gu = trunc i32 %.4.i to i8
  %i.gv = add i8 %i.gu, -1
  %i.gw = or i8 %i.gv, 96
  store i8 %i.gw, ptr %.sroa.0.1, align 1, !tbaa !32
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  br i1 %or.cond, label %bb.ad, label %bytestream2_put_byte.exit1245.i

bb.ad:                                            ; preds = %bb.ac
  store i8 112, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 4 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.bz, %i.gy
  %i.ha = icmp sgt i64 %i.gz, 0
  br i1 %i.ha, label %bb.ae, label %bytestream2_put_byte.exit1245.i

bb.ae:                                            ; preds = %bb.ad
  %i.hb = trunc i32 %.4.i to i8
  %i.hc = add i8 %i.hb, -1
  store i8 %i.hc, ptr %i.gx, align 1, !tbaa !32
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.ae
  %.sroa.0.41 = phi ptr [ %.sroa.0.1, %bb.ab ], [ %i.gx, %bb.ae ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.41, i64 1 ; 3 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.bz, %i.he
  %i.hg = icmp sgt i64 %i.hf, 0
  br i1 %i.hg, label %bb.ag, label %bytestream2_put_byte.exit1245.i

bb.ag:                                            ; preds = %bb.af
  %i.hh = load i8, ptr %i.bo, align 8, !tbaa !72
  store i8 %i.hh, ptr %i.hd, align 1, !tbaa !32
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.41, i64 2
  br label %bytestream2_put_byte.exit1245.i

bytestream2_put_byte.exit1245.i:                  ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.sroa.181.33 = phi i32 [ 0, %bb.ag ], [ 1, %bb.af ], [ 1, %bb.ad ], [ 1, %bb.aa ], [ 1, %bb.ac ] ; 4 uses
  %.sroa.0.40 = phi ptr [ %i.hi, %bb.ag ], [ %i.hd, %bb.af ], [ %i.gx, %bb.ad ], [ %.sroa.0.1, %bb.aa ], [ %.sroa.0.1, %bb.ac ] ; 4 uses
  %i.hj = icmp sgt i32 %.4.i, 0
  %i.hk = icmp ne ptr %.010861612.i, null
  %or.cond171572.i = select i1 %i.hj, i1 %i.hk, i1 false
  %i.hl = icmp ne ptr %.010501616.i, null
  %or.cond611573.i = select i1 %or.cond171572.i, i1 %i.hl, i1 false
  br i1 %or.cond611573.i, label %.lr.ph1579.i.preheader, label %.critedge19.i

.lr.ph1579.i.preheader:                           ; preds = %bytestream2_put_byte.exit1245.i
  %xtraiter575 = and i32 %.4.i, 1
  %i.hm = icmp eq i32 %.4.i, 1
  br i1 %i.hm, label %.lr.ph1579.i.epil.preheader, label %.lr.ph1579.i.preheader.new

.lr.ph1579.i.preheader.new:                       ; preds = %.lr.ph1579.i.preheader
  %unroll_iter582 = and i32 %.4.i, 2147483646
  br label %.lr.ph1579.i

.lr.ph1579.i:                                     ; preds = %bb.aj, %.lr.ph1579.i.preheader.new
  %.131577.i = phi i32 [ %.09961632.i, %.lr.ph1579.i.preheader.new ], [ %.14.i.1, %bb.aj ]
  %.1310141576.i = phi i32 [ %.010011628.i, %.lr.ph1579.i.preheader.new ], [ %.141015.i.1, %bb.aj ] ; 2 uses
  %.1310631575.i = phi ptr [ %.010501616.i, %.lr.ph1579.i.preheader.new ], [ %.141064.i.1, %bb.aj ] ; 3 uses
  %.1310991574.i = phi ptr [ %.010861612.i, %.lr.ph1579.i.preheader.new ], [ %.141100.i.1, %bb.aj ]
  %niter583 = phi i32 [ 0, %.lr.ph1579.i.preheader.new ], [ %niter583.next.1, %bb.aj ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.1310991574.i, i64 4 ; 2 uses
  %i.ho = add nsw i32 %.131577.i, 4
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %.1310631575.i to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %.not1185.i = icmp slt i64 %i.hr, %i.bg
  br i1 %.not1185.i, label %.lr.ph1579.i.1, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph1579.i
  %i.hs = getelementptr inbounds i8, ptr %.1310631575.i, i64 %i.bh ; 2 uses
  %i.ht = add nsw i32 %.1310141576.i, 4
  br label %.lr.ph1579.i.1

.lr.ph1579.i.1:                                   ; preds = %bb.ah, %.lr.ph1579.i
  %.141100.i = phi ptr [ %i.hs, %bb.ah ], [ %i.hn, %.lr.ph1579.i ]
  %.141064.i = phi ptr [ %i.hs, %bb.ah ], [ %.1310631575.i, %.lr.ph1579.i ] ; 3 uses
  %.141015.i = phi i32 [ %i.ht, %bb.ah ], [ %.1310141576.i, %.lr.ph1579.i ] ; 2 uses
  %.14.i = phi i32 [ 0, %bb.ah ], [ %i.ho, %.lr.ph1579.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.141100.i, i64 4 ; 2 uses
  %i.hv = add nsw i32 %.14.i, 4
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = ptrtoint ptr %.141064.i to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %.not1185.i.1 = icmp slt i64 %i.hy, %i.bg
  br i1 %.not1185.i.1, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph1579.i.1
  %i.hz = getelementptr inbounds i8, ptr %.141064.i, i64 %i.bh ; 2 uses
  %i.ia = add nsw i32 %.141015.i, 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph1579.i.1
  %.141100.i.1 = phi ptr [ %i.hz, %bb.ai ], [ %i.hu, %.lr.ph1579.i.1 ] ; 3 uses
  %.141064.i.1 = phi ptr [ %i.hz, %bb.ai ], [ %.141064.i, %.lr.ph1579.i.1 ] ; 3 uses
  %.141015.i.1 = phi i32 [ %i.ia, %bb.ai ], [ %.141015.i, %.lr.ph1579.i.1 ] ; 3 uses
  %.14.i.1 = phi i32 [ 0, %bb.ai ], [ %i.hv, %.lr.ph1579.i.1 ] ; 3 uses
  %niter583.next.1 = add nuw nsw i32 %niter583, 2 ; 2 uses
  %niter583.ncmp.1 = icmp eq i32 %niter583.next.1, %unroll_iter582
  br i1 %niter583.ncmp.1, label %.critedge19.i.loopexit508.unr-lcssa, label %.lr.ph1579.i, !llvm.loop !37

bb.ak:                                            ; preds = %bb.as, %.preheader1318.i
  %indvars.iv1740.i = phi i64 [ 0, %.preheader1318.i ], [ %indvars.iv.next1741.i.1, %bb.as ] ; 5 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv1740.i ; 3 uses
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !32  ; 2 uses
  %i.id = icmp eq i8 %i.ic, %i.gp
  br i1 %i.id, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !32
  %i.ig = icmp eq i8 %i.if, %i.gp
  br i1 %i.ig, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ih = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.ii = icmp eq i8 %i.ic, %i.ih
  br i1 %i.ii, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !32
  %i.il = icmp eq i8 %i.ik, %i.ih
  br i1 %i.il, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %indvars.iv.next1741.i = or disjoint i64 %indvars.iv1740.i, 1 ; 3 uses
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.next1741.i ; 3 uses
  %i.in = load i8, ptr %i.im, align 2, !tbaa !32  ; 2 uses
  %i.io = icmp eq i8 %i.in, %i.gp
  br i1 %i.io, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !32
  %i.ir = icmp eq i8 %i.iq, %i.gp
  br i1 %i.ir, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.is = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.it = icmp eq i8 %i.in, %i.is
  br i1 %i.it, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !32
  %i.iw = icmp eq i8 %i.iv, %i.is
  br i1 %i.iw, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %indvars.iv.next1741.i.1 = add nuw nsw i64 %indvars.iv1740.i, 2 ; 2 uses
  %exitcond1743.not.i.1 = icmp eq i64 %indvars.iv.next1741.i.1, 256
  br i1 %exitcond1743.not.i.1, label %bb.aw, label %bb.ak, !llvm.loop !38

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.an, %bb.am
  %indvars.iv1740.i.lcssa = phi i64 [ %indvars.iv1740.i, %bb.an ], [ %indvars.iv1740.i, %bb.am ], [ %indvars.iv.next1741.i, %bb.aq ], [ %indvars.iv.next1741.i, %bb.ar ] ; 4 uses
  %.not.i1242.i = icmp eq i32 %.sroa.181.1, 0
  %i.ix = ptrtoint ptr %.sroa.0.1 to i64
  %i.iy = sub i64 %i.bz, %i.ix
  %i.iz = icmp sgt i64 %i.iy, 0
  %or.cond367 = select i1 %.not.i1242.i, i1 %i.iz, i1 false
  br i1 %or.cond367, label %bb.au, label %bytestream2_put_byte.exit1241.i

bb.au:                                            ; preds = %bb.at
  %i.ja = trunc i32 %.4.i to i8
  %i.jb = add i8 %i.ja, 127
  %i.jc = or i8 %i.jb, -112
  store i8 %i.jc, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.bz, %i.je
  %i.jg = icmp sgt i64 %i.jf, 0
  br i1 %i.jg, label %bb.av, label %bytestream2_put_byte.exit1241.i

bb.av:                                            ; preds = %bb.au
  %i.jh = trunc i64 %indvars.iv1740.i.lcssa to i8
  store i8 %i.jh, ptr %i.jd, align 1, !tbaa !32
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit1241.i

bb.aw:                                            ; preds = %bb.as
  %.not.i1238.i = icmp eq i32 %.sroa.181.1, 0
  %i.jj = ptrtoint ptr %.sroa.0.1 to i64
  %i.jk = sub i64 %i.bz, %i.jj
  %i.jl = icmp sgt i64 %i.jk, 0
  %or.cond303 = select i1 %.not.i1238.i, i1 %i.jl, i1 false
  br i1 %or.cond303, label %bb.ax, label %bytestream2_put_byte.exit1239.i.thread

bytestream2_put_byte.exit1239.i.thread:           ; preds = %bb.aw
  %i.jm = sext i32 %.010461625.i to i64           ; 2 uses
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.jm
  store i8 %i.gp, ptr %i.jn, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1237.i.thread

bb.ax:                                            ; preds = %bb.aw
  %i.jo = trunc i32 %.4.i to i8
  %i.jp = add i8 %i.jo, 127
  %i.jq = or i8 %i.jp, -128
  store i8 %i.jq, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.js = sext i32 %.010461625.i to i64           ; 4 uses
  %i.jt = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.js ; 2 uses
  %i.ju = load i8, ptr %i.au, align 4, !tbaa !32  ; 2 uses
  store i8 %i.ju, ptr %i.jt, align 1, !tbaa !32
  %i.jv = ptrtoint ptr %i.jr to i64
  %i.jw = sub i64 %i.bz, %i.jv
  %i.jx = icmp sgt i64 %i.jw, 0
  br i1 %i.jx, label %bb.ay, label %bytestream2_put_byte.exit1237.i.thread

bytestream2_put_byte.exit1237.i.thread:           ; preds = %bytestream2_put_byte.exit1239.i.thread, %bb.ax
  %.ph224 = phi i64 [ %i.js, %bb.ax ], [ %i.jm, %bytestream2_put_byte.exit1239.i.thread ] ; 2 uses
  %.sroa.0.33.ph = phi ptr [ %i.jr, %bb.ax ], [ %.sroa.0.1, %bytestream2_put_byte.exit1239.i.thread ]
  %i.jy = getelementptr inbounds [2 x i8], ptr %i.by, i64 %.ph224
  %i.jz = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1237.1.i

bb.ay:                                            ; preds = %bb.ax
  store i8 %i.ju, ptr %i.jr, align 1, !tbaa !32
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.kc = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !32
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.bz, %i.ke
  %i.kg = icmp sgt i64 %i.kf, 0
  br i1 %i.kg, label %bb.az, label %bytestream2_put_byte.exit1237.1.i

bb.az:                                            ; preds = %bb.ay
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !32
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3
  br label %bytestream2_put_byte.exit1237.1.i

bytestream2_put_byte.exit1237.1.i:                ; preds = %bb.ay, %bytestream2_put_byte.exit1237.i.thread, %bb.az
  %i.ki = phi i64 [ %i.js, %bb.az ], [ %.ph224, %bytestream2_put_byte.exit1237.i.thread ], [ %i.js, %bb.ay ]
  %.sroa.181.29 = phi i32 [ 0, %bb.az ], [ 1, %bytestream2_put_byte.exit1237.i.thread ], [ 1, %bb.ay ]
  %.sroa.0.34 = phi ptr [ %i.kh, %bb.az ], [ %.sroa.0.33.ph, %bytestream2_put_byte.exit1237.i.thread ], [ %i.kb, %bb.ay ]
  %i.kj = add nsw i32 %.010461625.i, 1            ; 2 uses
  %i.kk = icmp eq i32 %i.kj, 256
  %spec.store.select.i = select i1 %i.kk, i32 0, i32 %i.kj
  br label %bytestream2_put_byte.exit1241.i

bytestream2_put_byte.exit1241.i:                  ; preds = %bb.at, %bb.au, %bytestream2_put_byte.exit1237.1.i, %bb.av
  %.sroa.181.30 = phi i32 [ 0, %bb.av ], [ %.sroa.181.29, %bytestream2_put_byte.exit1237.1.i ], [ 1, %bb.au ], [ 1, %bb.at ] ; 2 uses
  %.sroa.0.35 = phi ptr [ %i.ji, %bb.av ], [ %.sroa.0.34, %bytestream2_put_byte.exit1237.1.i ], [ %i.jd, %bb.au ], [ %.sroa.0.1, %bb.at ] ; 2 uses
  %.11047.i = phi i32 [ %.010461625.i, %bb.av ], [ %spec.store.select.i, %bytestream2_put_byte.exit1237.1.i ], [ %.010461625.i, %bb.au ], [ %.010461625.i, %bb.at ] ; 2 uses
  %.01037.i = phi i64 [ %indvars.iv1740.i.lcssa, %bb.av ], [ %i.ki, %bytestream2_put_byte.exit1237.1.i ], [ %indvars.iv1740.i.lcssa, %bb.au ], [ %indvars.iv1740.i.lcssa, %bb.at ]
  %i.kl = icmp sgt i32 %.4.i, 0
  br i1 %i.kl, label %.lr.ph1567.i, label %.critedge19.i

.lr.ph1567.i:                                     ; preds = %bytestream2_put_byte.exit1241.i
  %i.km = getelementptr [2 x i8], ptr %i.c, i64 %.01037.i
  %i.kn = getelementptr i8, ptr %i.km, i64 53
  br label %bb.ba

bb.ba:                                            ; preds = %.critedge23.i, %.lr.ph1567.i
  %.sroa.181.31 = phi i32 [ %.sroa.181.30, %.lr.ph1567.i ], [ %.sroa.181.32, %.critedge23.i ]
  %.sroa.0.36 = phi ptr [ %.sroa.0.35, %.lr.ph1567.i ], [ %.sroa.0.37, %.critedge23.i ] ; 4 uses
  %.09561566.i = phi i32 [ 0, %.lr.ph1567.i ], [ %i.oa, %.critedge23.i ]
  %.151565.i = phi i32 [ %.09961632.i, %.lr.ph1567.i ], [ %.16.lcssa.i, %.critedge23.i ] ; 3 uses
  %.1510161564.i = phi i32 [ %.010011628.i, %.lr.ph1567.i ], [ %.161017.lcssa.i, %.critedge23.i ] ; 4 uses
  %.1510651563.i = phi ptr [ %.010501616.i, %.lr.ph1567.i ], [ %.161066.lcssa.i, %.critedge23.i ] ; 5 uses
  %.1511011562.i = phi ptr [ %.010861612.i, %.lr.ph1567.i ], [ %.161102.lcssa.i, %.critedge23.i ] ; 10 uses
  %i.ko = sub nsw i32 %i.aw, %.1510161564.i       ; 4 uses
  %i.kp = sub i32 %i.ay, %.151565.i               ; 13 uses
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !32  ; 16 uses
  %i.kr = icmp sgt i32 %i.ko, 0
  %i.ks = icmp sgt i32 %i.kp, 0
  %or.cond1851.i = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond1851.i, label %.preheader1306.us.i, label %._crit_edge1549.i

.preheader1306.us.i:                              ; preds = %bb.ba
  %i.kt = load i8, ptr %.1511011562.i, align 1, !tbaa !32
  %i.ku = icmp eq i8 %i.kq, %i.kt
  %i.kv = select i1 %i.ku, i16 -32768, i16 0      ; 2 uses
  %exitcond1750.not.i = icmp eq i32 %i.kp, 1
  br i1 %exitcond1750.not.i, label %._crit_edge1543.us.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader1306.us.i
  %i.kw = getelementptr i8, ptr %.1511011562.i, i64 1
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !32
  %i.ky = icmp eq i8 %i.kq, %i.kx
  %i.kz = select i1 %i.ky, i16 16384, i16 0
  %i.la = or disjoint i16 %i.kv, %i.kz            ; 2 uses
  %exitcond1750.not.i.1 = icmp eq i32 %i.kp, 2
  br i1 %exitcond1750.not.i.1, label %._crit_edge1543.us.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lb = getelementptr i8, ptr %.1511011562.i, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !32
  %i.ld = icmp eq i8 %i.kq, %i.lc
  %i.le = select i1 %i.ld, i16 8192, i16 0
  %i.lf = or disjoint i16 %i.la, %i.le            ; 2 uses
  %exitcond1750.not.i.2 = icmp eq i32 %i.kp, 3
  br i1 %exitcond1750.not.i.2, label %._crit_edge1543.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lg = getelementptr i8, ptr %.1511011562.i, i64 3
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !32
  %i.li = icmp eq i8 %i.kq, %i.lh
  %i.lj = select i1 %i.li, i16 4096, i16 0
  %i.lk = or disjoint i16 %i.lf, %i.lj
  br label %._crit_edge1543.us.i

._crit_edge1543.us.i:                             ; preds = %bb.bd, %bb.bc, %bb.bb, %.preheader1306.us.i
  %.lcssa526 = phi i16 [ %i.kv, %.preheader1306.us.i ], [ %i.la, %bb.bb ], [ %i.lf, %bb.bc ], [ %i.lk, %bb.bd ] ; 2 uses
  %exitcond1754.not.i = icmp eq i32 %i.ko, 1
  br i1 %exitcond1754.not.i, label %._crit_edge1549.loopexit.i, label %.preheader1306.us.i.1

.preheader1306.us.i.1:                            ; preds = %._crit_edge1543.us.i
  %i.ll = getelementptr i8, ptr %.1511011562.i, i64 %i.ao ; 4 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !32
  %i.ln = icmp eq i8 %i.kq, %i.lm
  %i.lo = select i1 %i.ln, i16 2048, i16 0
  %i.lp = or i16 %.lcssa526, %i.lo                ; 2 uses
  %exitcond1750.not.i.1573 = icmp eq i32 %i.kp, 1
  br i1 %exitcond1750.not.i.1573, label %._crit_edge1543.us.i.1, label %bb.be

bb.be:                                            ; preds = %.preheader1306.us.i.1
  %i.lq = getelementptr i8, ptr %i.ll, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !32
  %i.ls = icmp eq i8 %i.kq, %i.lr
  %i.lt = select i1 %i.ls, i16 1024, i16 0
  %i.lu = or i16 %i.lp, %i.lt                     ; 2 uses
  %exitcond1750.not.i.1.1 = icmp eq i32 %i.kp, 2
  br i1 %exitcond1750.not.i.1.1, label %._crit_edge1543.us.i.1, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lv = getelementptr i8, ptr %i.ll, i64 2
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !32
  %i.lx = icmp eq i8 %i.kq, %i.lw
  %i.ly = select i1 %i.lx, i16 512, i16 0
  %i.lz = or i16 %i.lu, %i.ly                     ; 2 uses
  %exitcond1750.not.i.2.1 = icmp eq i32 %i.kp, 3
  br i1 %exitcond1750.not.i.2.1, label %._crit_edge1543.us.i.1, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ma = getelementptr i8, ptr %i.ll, i64 3
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !32
  %i.mc = icmp eq i8 %i.kq, %i.mb
  %i.md = select i1 %i.mc, i16 256, i16 0
  %i.me = or i16 %i.lz, %i.md
  br label %._crit_edge1543.us.i.1

._crit_edge1543.us.i.1:                           ; preds = %bb.bg, %bb.bf, %bb.be, %.preheader1306.us.i.1
  %.lcssa526.1 = phi i16 [ %i.lp, %.preheader1306.us.i.1 ], [ %i.lu, %bb.be ], [ %i.lz, %bb.bf ], [ %i.me, %bb.bg ] ; 2 uses
  %exitcond1754.not.i.1 = icmp eq i32 %i.ko, 2
  br i1 %exitcond1754.not.i.1, label %._crit_edge1549.loopexit.i, label %.preheader1306.us.i.2

.preheader1306.us.i.2:                            ; preds = %._crit_edge1543.us.i.1
  %i.mf = getelementptr i8, ptr %.1511011562.i, i64 %i.ce ; 4 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !32
  %i.mh = icmp eq i8 %i.kq, %i.mg
  %i.mi = select i1 %i.mh, i16 128, i16 0
  %i.mj = or i16 %.lcssa526.1, %i.mi              ; 2 uses
  %exitcond1750.not.i.2574 = icmp eq i32 %i.kp, 1
  br i1 %exitcond1750.not.i.2574, label %._crit_edge1543.us.i.2, label %bb.bh

bb.bh:                                            ; preds = %.preheader1306.us.i.2
  %i.mk = getelementptr i8, ptr %i.mf, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !32
  %i.mm = icmp eq i8 %i.kq, %i.ml
  %i.mn = select i1 %i.mm, i16 64, i16 0
  %i.mo = or i16 %i.mj, %i.mn                     ; 2 uses
  %exitcond1750.not.i.1.2 = icmp eq i32 %i.kp, 2
  br i1 %exitcond1750.not.i.1.2, label %._crit_edge1543.us.i.2, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mp = getelementptr i8, ptr %i.mf, i64 2
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !32
  %i.mr = icmp eq i8 %i.kq, %i.mq
  %i.ms = select i1 %i.mr, i16 32, i16 0
  %i.mt = or i16 %i.mo, %i.ms                     ; 2 uses
  %exitcond1750.not.i.2.2 = icmp eq i32 %i.kp, 3
  br i1 %exitcond1750.not.i.2.2, label %._crit_edge1543.us.i.2, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mu = getelementptr i8, ptr %i.mf, i64 3
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !32
  %i.mw = icmp eq i8 %i.kq, %i.mv
  %i.mx = select i1 %i.mw, i16 16, i16 0
  %i.my = or i16 %i.mt, %i.mx
  br label %._crit_edge1543.us.i.2

._crit_edge1543.us.i.2:                           ; preds = %bb.bj, %bb.bi, %bb.bh, %.preheader1306.us.i.2
  %.lcssa526.2 = phi i16 [ %i.mj, %.preheader1306.us.i.2 ], [ %i.mo, %bb.bh ], [ %i.mt, %bb.bi ], [ %i.my, %bb.bj ] ; 2 uses
  %exitcond1754.not.i.2 = icmp eq i32 %i.ko, 3
  br i1 %exitcond1754.not.i.2, label %._crit_edge1549.loopexit.i, label %.preheader1306.us.i.3

.preheader1306.us.i.3:                            ; preds = %._crit_edge1543.us.i.2
  %i.mz = getelementptr i8, ptr %.1511011562.i, i64 %i.cf ; 4 uses
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !32
  %i.nb = icmp eq i8 %i.kq, %i.na
  %i.nc = select i1 %i.nb, i16 8, i16 0
  %i.nd = or i16 %.lcssa526.2, %i.nc              ; 2 uses
  %exitcond1750.not.i.3 = icmp eq i32 %i.kp, 1
  br i1 %exitcond1750.not.i.3, label %._crit_edge1549.loopexit.i, label %bb.bk

bb.bk:                                            ; preds = %.preheader1306.us.i.3
  %i.ne = getelementptr i8, ptr %i.mz, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !32
  %i.ng = icmp eq i8 %i.kq, %i.nf
  %i.nh = select i1 %i.ng, i16 4, i16 0
  %i.ni = or i16 %i.nd, %i.nh                     ; 2 uses
  %exitcond1750.not.i.1.3 = icmp eq i32 %i.kp, 2
  br i1 %exitcond1750.not.i.1.3, label %._crit_edge1549.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nj = getelementptr i8, ptr %i.mz, i64 2
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !32
  %i.nl = icmp eq i8 %i.kq, %i.nk
  %i.nm = select i1 %i.nl, i16 2, i16 0
  %i.nn = or i16 %i.ni, %i.nm                     ; 2 uses
  %exitcond1750.not.i.2.3 = icmp eq i32 %i.kp, 3
  br i1 %exitcond1750.not.i.2.3, label %._crit_edge1549.loopexit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.no = getelementptr i8, ptr %i.mz, i64 3
  %i.np = load i8, ptr %i.no, align 1, !tbaa !32
  %i.nq = icmp eq i8 %i.kq, %i.np
  %i.nr = zext i1 %i.nq to i16
  %i.ns = or i16 %i.nn, %i.nr
  br label %._crit_edge1549.loopexit.i

._crit_edge1549.loopexit.i:                       ; preds = %.preheader1306.us.i.3, %bb.bk, %bb.bl, %bb.bm, %._crit_edge1543.us.i.2, %._crit_edge1543.us.i.1, %._crit_edge1543.us.i
  %.lcssa526.lcssa = phi i16 [ %.lcssa526, %._crit_edge1543.us.i ], [ %.lcssa526.1, %._crit_edge1543.us.i.1 ], [ %.lcssa526.2, %._crit_edge1543.us.i.2 ], [ %i.nd, %.preheader1306.us.i.3 ], [ %i.ni, %bb.bk ], [ %i.nn, %bb.bl ], [ %i.ns, %bb.bm ]
  %i.nt = call i16 @llvm.bswap.i16(i16 %.lcssa526.lcssa)
  br label %._crit_edge1549.i

._crit_edge1549.i:                                ; preds = %._crit_edge1549.loopexit.i, %bb.ba
  %.0954.lcssa.i = phi i16 [ 0, %bb.ba ], [ %i.nt, %._crit_edge1549.loopexit.i ]
  %.not.i1257.i = icmp eq i32 %.sroa.181.31, 0
  %i.nu = ptrtoint ptr %.sroa.0.36 to i64
  %i.nv = sub i64 %i.bz, %i.nu
  %i.nw = icmp sgt i64 %i.nv, 1
  %or.cond307 = select i1 %.not.i1257.i, i1 %i.nw, i1 false
  br i1 %or.cond307, label %bb.bn, label %bytestream2_put_be16.exit1258.i

bb.bn:                                            ; preds = %._crit_edge1549.i
  store i16 %.0954.lcssa.i, ptr %.sroa.0.36, align 1, !tbaa !32
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 2
  br label %bytestream2_put_be16.exit1258.i

bytestream2_put_be16.exit1258.i:                  ; preds = %._crit_edge1549.i, %bb.bn
  %.sroa.181.32 = phi i32 [ 0, %bb.bn ], [ 1, %._crit_edge1549.i ] ; 2 uses
  %.sroa.0.37 = phi ptr [ %i.nx, %bb.bn ], [ %.sroa.0.36, %._crit_edge1549.i ] ; 2 uses
  %i.ny = icmp ne ptr %.1511011562.i, null
  %i.nz = icmp ne ptr %.1510651563.i, null
  %or.cond631552.i = select i1 %i.ny, i1 %i.nz, i1 false
  br i1 %or.cond631552.i, label %.lr.ph1557.i, label %.critedge23.i

.critedge23.i:                                    ; preds = %bb.bo, %.lr.ph1557.i, %bytestream2_put_be16.exit1258.i
  %.161102.lcssa.i = phi ptr [ %.1511011562.i, %bytestream2_put_be16.exit1258.i ], [ %i.og, %bb.bo ], [ %i.ob, %.lr.ph1557.i ] ; 2 uses
  %.161066.lcssa.i = phi ptr [ %.1510651563.i, %bytestream2_put_be16.exit1258.i ], [ %i.og, %bb.bo ], [ %.1510651563.i, %.lr.ph1557.i ] ; 2 uses
  %.161017.lcssa.i = phi i32 [ %.1510161564.i, %bytestream2_put_be16.exit1258.i ], [ %i.oh, %bb.bo ], [ %.1510161564.i, %.lr.ph1557.i ] ; 2 uses
  %.16.lcssa.i = phi i32 [ %.151565.i, %bytestream2_put_be16.exit1258.i ], [ 0, %bb.bo ], [ %i.oc, %.lr.ph1557.i ] ; 2 uses
  %i.oa = add nuw nsw i32 %.09561566.i, 1         ; 2 uses
  %exitcond1755.not.i = icmp eq i32 %i.oa, %.4.i
  br i1 %exitcond1755.not.i, label %.critedge19.i, label %bb.ba, !llvm.loop !39

.lr.ph1557.i:                                     ; preds = %bytestream2_put_be16.exit1258.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.1511011562.i, i64 4 ; 2 uses
  %i.oc = add nsw i32 %.151565.i, 4
  %i.od = ptrtoint ptr %i.ob to i64
  %i.oe = ptrtoint ptr %.1510651563.i to i64
  %i.of = sub i64 %i.od, %i.oe
  %.not1183.i = icmp slt i64 %i.of, %i.bg
  br i1 %.not1183.i, label %.critedge23.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph1557.i
  %i.og = getelementptr inbounds i8, ptr %.1510651563.i, i64 %i.bh ; 2 uses
  %i.oh = add nsw i32 %.1510161564.i, 4
  br label %.critedge23.i

bb.bp:                                            ; preds = %.loopexit.thread.i, %.loopexit.thread.i
  %i.oi = load i8, ptr %i.au, align 4, !tbaa !32  ; 5 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.cg, %bb.bp
  %indvars.iv1714.i = phi i64 [ 0, %bb.bp ], [ %indvars.iv.next1715.i, %bb.cg ] ; 6 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv1714.i ; 13 uses
  %i.ok = load i8, ptr %i.oj, align 4, !tbaa !32  ; 4 uses
  %i.ol = icmp eq i8 %i.ok, %i.oi
  br i1 %i.ol, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.on = load i8, ptr %i.om, align 1, !tbaa !32
  %i.oo = icmp eq i8 %i.on, %i.oi
  br i1 %i.oo, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.oq = load i8, ptr %i.op, align 2, !tbaa !32
  %i.or = icmp eq i8 %i.oq, %i.oi
  br i1 %i.or, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !32
  %i.ou = icmp eq i8 %i.ot, %i.oi
  br i1 %i.ou, label %bb.bu, label %bb.cg

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.ov = load i8, ptr %i.bq, align 1, !tbaa !32  ; 4 uses
  %i.ow = icmp eq i8 %i.ok, %i.ov
  br i1 %i.ow, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !32
  %i.oz = icmp eq i8 %i.oy, %i.ov
  br i1 %i.oz, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.pb = load i8, ptr %i.pa, align 2, !tbaa !32
  %i.pc = icmp eq i8 %i.pb, %i.ov
  br i1 %i.pc, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !32
  %i.pf = icmp eq i8 %i.pe, %i.ov
  br i1 %i.pf, label %bb.by, label %bb.cg

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %i.pg = load i8, ptr %i.br, align 2, !tbaa !32  ; 4 uses
  %i.ph = icmp eq i8 %i.ok, %i.pg
  br i1 %i.ph, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !32
  %i.pk = icmp eq i8 %i.pj, %i.pg
  br i1 %i.pk, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.pm = load i8, ptr %i.pl, align 2, !tbaa !32
  %i.pn = icmp eq i8 %i.pm, %i.pg
  br i1 %i.pn, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.po = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !32
  %i.pq = icmp eq i8 %i.pp, %i.pg
  br i1 %i.pq, label %bb.cc, label %bb.cg

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %i.pr = load i8, ptr %i.bs, align 1, !tbaa !32  ; 4 uses
  %i.ps = icmp eq i8 %i.ok, %i.pr
  br i1 %i.ps, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oj, i64 1
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !32
  %i.pv = icmp eq i8 %i.pu, %i.pr
  br i1 %i.pv, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oj, i64 2
  %i.px = load i8, ptr %i.pw, align 2, !tbaa !32
  %i.py = icmp eq i8 %i.px, %i.pr
  br i1 %i.py, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pz = getelementptr inbounds nuw i8, ptr %i.oj, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !32
  %i.qb = icmp eq i8 %i.qa, %i.pr
  br i1 %i.qb, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cb, %bb.bx, %bb.bt
  %indvars.iv.next1715.i = add nuw nsw i64 %indvars.iv1714.i, 1 ; 2 uses
  %exitcond1717.not.i = icmp eq i64 %indvars.iv.next1715.i, 256
  br i1 %exitcond1717.not.i, label %bb.ck, label %bb.bq, !llvm.loop !40

bb.ch:                                            ; preds = %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.not.i1234.i = icmp eq i32 %.sroa.181.1, 0
  %i.qc = ptrtoint ptr %.sroa.0.1 to i64
  %i.qd = sub i64 %i.bz, %i.qc
  %i.qe = icmp sgt i64 %i.qd, 0
  %or.cond370 = select i1 %.not.i1234.i, i1 %i.qe, i1 false
  br i1 %or.cond370, label %bb.ci, label %bytestream2_put_byte.exit1233.i

bb.ci:                                            ; preds = %bb.ch
  %i.qf = trunc i32 %.4.i to i8
  %i.qg = add i8 %i.qf, 127
  %i.qh = or i8 %i.qg, -80
  store i8 %i.qh, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = sub i64 %i.bz, %i.qj
  %i.ql = icmp sgt i64 %i.qk, 0
  br i1 %i.ql, label %bb.cj, label %bytestream2_put_byte.exit1233.i

bb.cj:                                            ; preds = %bb.ci
  %i.qm = trunc i64 %indvars.iv1714.i to i8
  store i8 %i.qm, ptr %i.qi, align 1, !tbaa !32
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit1233.i

bb.ck:                                            ; preds = %bb.cg
  %.not.i1230.i = icmp eq i32 %.sroa.181.1, 0
  %i.qo = ptrtoint ptr %.sroa.0.1 to i64
  %i.qp = sub i64 %i.bz, %i.qo
  %i.qq = icmp sgt i64 %i.qp, 0
  %or.cond311 = select i1 %.not.i1230.i, i1 %i.qq, i1 false
  br i1 %or.cond311, label %bb.cl, label %bytestream2_put_byte.exit1231.i.thread

bytestream2_put_byte.exit1231.i.thread:           ; preds = %bb.ck
  %i.qr = sext i32 %.010431626.i to i64           ; 2 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.qr ; 2 uses
  store i8 %i.oi, ptr %i.qs, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1229.i.thread

bb.cl:                                            ; preds = %bb.ck
  %i.qt = trunc i32 %.4.i to i8
  %i.qu = add i8 %i.qt, 127
  %i.qv = or i8 %i.qu, -96
  store i8 %i.qv, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.qx = sext i32 %.010431626.i to i64           ; 6 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.qx ; 7 uses
  %i.qz = load i8, ptr %i.au, align 4, !tbaa !32  ; 2 uses
  store i8 %i.qz, ptr %i.qy, align 1, !tbaa !32
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.bz, %i.ra
  %i.rc = icmp sgt i64 %i.rb, 0
  br i1 %i.rc, label %bb.cm, label %bytestream2_put_byte.exit1229.i.thread

bytestream2_put_byte.exit1229.i.thread:           ; preds = %bytestream2_put_byte.exit1231.i.thread, %bb.cl
  %.ph233 = phi ptr [ %i.qy, %bb.cl ], [ %i.qs, %bytestream2_put_byte.exit1231.i.thread ] ; 2 uses
  %.ph234 = phi i64 [ %i.qx, %bb.cl ], [ %i.qr, %bytestream2_put_byte.exit1231.i.thread ]
  %.sroa.0.24.ph = phi ptr [ %i.qw, %bb.cl ], [ %.sroa.0.1, %bytestream2_put_byte.exit1231.i.thread ]
  %i.rd = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.re = getelementptr inbounds nuw i8, ptr %.ph233, i64 1
  store i8 %i.rd, ptr %i.re, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1229.1.i.thread

bb.cm:                                            ; preds = %bb.cl
  store i8 %i.qz, ptr %i.qw, align 1, !tbaa !32
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.rg = load i8, ptr %i.bq, align 1, !tbaa !32  ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  store i8 %i.rg, ptr %i.rh, align 1, !tbaa !32
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = sub i64 %i.bz, %i.ri
  %i.rk = icmp sgt i64 %i.rj, 0
  br i1 %i.rk, label %bb.cn, label %bytestream2_put_byte.exit1229.1.i.thread

bytestream2_put_byte.exit1229.1.i.thread:         ; preds = %bytestream2_put_byte.exit1229.i.thread, %bb.cm
  %.ph239 = phi i64 [ %i.qx, %bb.cm ], [ %.ph234, %bytestream2_put_byte.exit1229.i.thread ]
  %.ph240 = phi ptr [ %i.qy, %bb.cm ], [ %.ph233, %bytestream2_put_byte.exit1229.i.thread ] ; 2 uses
  %.sroa.0.25.ph = phi ptr [ %i.rf, %bb.cm ], [ %.sroa.0.24.ph, %bytestream2_put_byte.exit1229.i.thread ]
  %i.rl = load i8, ptr %i.br, align 2, !tbaa !32
  %i.rm = getelementptr inbounds nuw i8, ptr %.ph240, i64 2
  store i8 %i.rl, ptr %i.rm, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1229.2.i.thread

bb.cn:                                            ; preds = %bb.cm
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !32
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 3 uses
  %i.ro = load i8, ptr %i.br, align 2, !tbaa !32  ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qy, i64 2
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !32
  %i.rq = ptrtoint ptr %i.rn to i64
  %i.rr = sub i64 %i.bz, %i.rq
  %i.rs = icmp sgt i64 %i.rr, 0
  br i1 %i.rs, label %bb.co, label %bytestream2_put_byte.exit1229.2.i.thread

bytestream2_put_byte.exit1229.2.i.thread:         ; preds = %bytestream2_put_byte.exit1229.1.i.thread, %bb.cn
  %.ph245 = phi ptr [ %i.qy, %bb.cn ], [ %.ph240, %bytestream2_put_byte.exit1229.1.i.thread ]
  %.ph246 = phi i64 [ %i.qx, %bb.cn ], [ %.ph239, %bytestream2_put_byte.exit1229.1.i.thread ]
  %.sroa.0.26.ph = phi ptr [ %i.rn, %bb.cn ], [ %.sroa.0.25.ph, %bytestream2_put_byte.exit1229.1.i.thread ]
  %i.rt = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.ru = getelementptr inbounds nuw i8, ptr %.ph245, i64 3
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1229.3.i

bb.co:                                            ; preds = %bb.cn
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !32
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 3 uses
  %i.rw = load i8, ptr %i.bs, align 1, !tbaa !32  ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !32
  %i.ry = ptrtoint ptr %i.rv to i64
  %i.rz = sub i64 %i.bz, %i.ry
  %i.sa = icmp sgt i64 %i.rz, 0
  br i1 %i.sa, label %bb.cp, label %bytestream2_put_byte.exit1229.3.i

bb.cp:                                            ; preds = %bb.co
  store i8 %i.rw, ptr %i.rv, align 1, !tbaa !32
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5
  br label %bytestream2_put_byte.exit1229.3.i

bytestream2_put_byte.exit1229.3.i:                ; preds = %bb.co, %bytestream2_put_byte.exit1229.2.i.thread, %bb.cp
  %i.sc = phi i64 [ %i.qx, %bb.cp ], [ %.ph246, %bytestream2_put_byte.exit1229.2.i.thread ], [ %i.qx, %bb.co ]
  %.sroa.181.23 = phi i32 [ 0, %bb.cp ], [ 1, %bytestream2_put_byte.exit1229.2.i.thread ], [ 1, %bb.co ]
  %.sroa.0.27 = phi ptr [ %i.sb, %bb.cp ], [ %.sroa.0.26.ph, %bytestream2_put_byte.exit1229.2.i.thread ], [ %i.rv, %bb.co ]
  %i.sd = add nsw i32 %.010431626.i, 1            ; 2 uses
  %i.se = icmp eq i32 %i.sd, 256
  %spec.store.select52.i = select i1 %i.se, i32 0, i32 %i.sd
  br label %bytestream2_put_byte.exit1233.i

bytestream2_put_byte.exit1233.i:                  ; preds = %bb.ch, %bb.ci, %bytestream2_put_byte.exit1229.3.i, %bb.cj
  %.sroa.181.24 = phi i32 [ 0, %bb.cj ], [ %.sroa.181.23, %bytestream2_put_byte.exit1229.3.i ], [ 1, %bb.ci ], [ 1, %bb.ch ] ; 2 uses
  %.sroa.0.28 = phi ptr [ %i.qn, %bb.cj ], [ %.sroa.0.27, %bytestream2_put_byte.exit1229.3.i ], [ %i.qi, %bb.ci ], [ %.sroa.0.1, %bb.ch ] ; 2 uses
  %.11044.i = phi i32 [ %.010431626.i, %bb.cj ], [ %spec.store.select52.i, %bytestream2_put_byte.exit1229.3.i ], [ %.010431626.i, %bb.ci ], [ %.010431626.i, %bb.ch ] ; 2 uses
  %.11038.i = phi i64 [ %indvars.iv1714.i, %bb.cj ], [ %i.sc, %bytestream2_put_byte.exit1229.3.i ], [ %indvars.iv1714.i, %bb.ci ], [ %indvars.iv1714.i, %bb.ch ]
  %i.sf = icmp sgt i32 %.4.i, 0
  br i1 %i.sf, label %.lr.ph1532.i, label %.critedge19.i

.lr.ph1532.i:                                     ; preds = %bytestream2_put_byte.exit1233.i
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %.11038.i ; 4 uses
  %.sroa.41771.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %.sroa.51772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 2
  %.sroa.61773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sg, i64 3
  br label %.preheader1311.i

.preheader1311.i:                                 ; preds = %.critedge27.i, %.lr.ph1532.i
  %.sroa.181.25 = phi i32 [ %.sroa.181.24, %.lr.ph1532.i ], [ %.sroa.181.26, %.critedge27.i ]
  %.sroa.0.29 = phi ptr [ %.sroa.0.28, %.lr.ph1532.i ], [ %.sroa.0.30, %.critedge27.i ] ; 4 uses
  %.09461531.i = phi i32 [ 0, %.lr.ph1532.i ], [ %i.wy, %.critedge27.i ]
  %.181530.i = phi i32 [ %.09961632.i, %.lr.ph1532.i ], [ %.19.lcssa.i, %.critedge27.i ] ; 3 uses
  %.1810191529.i = phi i32 [ %.010011628.i, %.lr.ph1532.i ], [ %.191020.lcssa.i, %.critedge27.i ] ; 4 uses
  %.1810681528.i = phi ptr [ %.010501616.i, %.lr.ph1532.i ], [ %.191069.lcssa.i, %.critedge27.i ] ; 5 uses
  %.1811041527.i = phi ptr [ %.010861612.i, %.lr.ph1532.i ], [ %.191105.lcssa.i, %.critedge27.i ] ; 10 uses
  %.sroa.01770.0.copyload.i = load i8, ptr %i.sg, align 1, !tbaa !32 ; 16 uses
  %.sroa.41771.0.copyload.i = load i8, ptr %.sroa.41771.0..sroa_idx.i, align 1, !tbaa !32 ; 16 uses
  %.sroa.51772.0.copyload.i = load i8, ptr %.sroa.51772.0..sroa_idx.i, align 1, !tbaa !32 ; 16 uses
  %.sroa.61773.0.copyload.i = load i8, ptr %.sroa.61773.0..sroa_idx.i, align 1, !tbaa !32 ; 16 uses
  %i.sh = sub nsw i32 %i.aw, %.1810191529.i       ; 4 uses
  %i.si = sub i32 %i.ay, %.181530.i               ; 13 uses
  %i.sj = icmp sgt i32 %i.sh, 0
  %i.sk = icmp sgt i32 %i.si, 0
  %or.cond312 = select i1 %i.sj, i1 %i.sk, i1 false
  br i1 %or.cond312, label %.preheader1307.us.i, label %._crit_edge1514.i

.preheader1307.us.i:                              ; preds = %.preheader1311.i
  %i.sl = load i8, ptr %.1811041527.i, align 1, !tbaa !32 ; 4 uses
  %i.sm = icmp eq i8 %.sroa.01770.0.copyload.i, %i.sl
  br i1 %i.sm, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %.preheader1307.us.i
  %i.sn = icmp eq i8 %.sroa.41771.0.copyload.i, %i.sl
  br i1 %i.sn, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.so = icmp eq i8 %.sroa.51772.0.copyload.i, %i.sl
  br i1 %i.so, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sp = icmp eq i8 %.sroa.61773.0.copyload.i, %i.sl
  %spec.select1852.i = select i1 %i.sp, i32 -1073741824, i32 0
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader1307.us.i
  %.0938.us.i = phi i32 [ -2147483648, %bb.cr ], [ 0, %.preheader1307.us.i ], [ 1073741824, %bb.cq ], [ %spec.select1852.i, %bb.cs ] ; 2 uses
  %exitcond1733.not.i = icmp eq i32 %i.si, 1
  br i1 %exitcond1733.not.i, label %._crit_edge1508.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sq = getelementptr i8, ptr %.1811041527.i, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !32  ; 4 uses
  %i.ss = icmp eq i8 %.sroa.01770.0.copyload.i, %i.sr
  br i1 %i.ss, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.st = icmp eq i8 %.sroa.41771.0.copyload.i, %i.sr
  br i1 %i.st, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.su = icmp eq i8 %.sroa.51772.0.copyload.i, %i.sr
  br i1 %i.su, label %bb.cy, label %bb.cx

end_hunk_0
begin_hunk_1_@smc_encode_frame:bb.a
  br i1 %i.uy, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.uz = icmp eq i8 %.sroa.61773.0.copyload.i, %i.uv
  %spec.select1852.i.1.2 = select i1 %i.uz, i32 12288, i32 0
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.0938.us.i.1.2 = phi i32 [ 8192, %bb.ei ], [ 0, %bb.eg ], [ 4096, %bb.eh ], [ %spec.select1852.i.1.2, %bb.ej ]
  %i.va = or i32 %.0938.us.i.1.2, %i.ut           ; 2 uses
  %exitcond1733.not.i.1.2 = icmp eq i32 %i.si, 2
  br i1 %exitcond1733.not.i.1.2, label %._crit_edge1508.us.i.2, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.vb = getelementptr i8, ptr %i.un, i64 2
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !32  ; 4 uses
  %i.vd = icmp eq i8 %.sroa.01770.0.copyload.i, %i.vc
  br i1 %i.vd, label %bb.ep, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ve = icmp eq i8 %.sroa.41771.0.copyload.i, %i.vc
  br i1 %i.ve, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.vf = icmp eq i8 %.sroa.51772.0.copyload.i, %i.vc
  br i1 %i.vf, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vg = icmp eq i8 %.sroa.61773.0.copyload.i, %i.vc
  %spec.select1852.i.2.2 = select i1 %i.vg, i32 3072, i32 0
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em, %bb.el
  %.0938.us.i.2.2 = phi i32 [ 2048, %bb.en ], [ 0, %bb.el ], [ 1024, %bb.em ], [ %spec.select1852.i.2.2, %bb.eo ]
  %i.vh = or i32 %.0938.us.i.2.2, %i.va           ; 2 uses
  %exitcond1733.not.i.2.2 = icmp eq i32 %i.si, 3
  br i1 %exitcond1733.not.i.2.2, label %._crit_edge1508.us.i.2, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.vi = getelementptr i8, ptr %i.un, i64 3
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !32  ; 4 uses
  %i.vk = icmp eq i8 %.sroa.01770.0.copyload.i, %i.vj
  br i1 %i.vk, label %bb.eu, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.vl = icmp eq i8 %.sroa.41771.0.copyload.i, %i.vj
  br i1 %i.vl, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.vm = icmp eq i8 %.sroa.51772.0.copyload.i, %i.vj
  br i1 %i.vm, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vn = icmp eq i8 %.sroa.61773.0.copyload.i, %i.vj
  %spec.select1852.i.3.2 = select i1 %i.vn, i32 768, i32 0
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es, %bb.er, %bb.eq
  %.0938.us.i.3.2 = phi i32 [ 512, %bb.es ], [ 0, %bb.eq ], [ 256, %bb.er ], [ %spec.select1852.i.3.2, %bb.et ]
  %i.vo = or i32 %.0938.us.i.3.2, %i.vh
  br label %._crit_edge1508.us.i.2

._crit_edge1508.us.i.2:                           ; preds = %bb.eu, %bb.ep, %bb.ek, %bb.ef
  %.lcssa524.2 = phi i32 [ %i.ut, %bb.ef ], [ %i.va, %bb.ek ], [ %i.vh, %bb.ep ], [ %i.vo, %bb.eu ] ; 2 uses
  %exitcond1738.not.i.2 = icmp eq i32 %i.sh, 3
  br i1 %exitcond1738.not.i.2, label %._crit_edge1514.loopexit.i, label %.preheader1307.us.i.3

.preheader1307.us.i.3:                            ; preds = %._crit_edge1508.us.i.2
  %i.vp = getelementptr i8, ptr %.1811041527.i, i64 %i.cd ; 4 uses
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !32  ; 4 uses
  %i.vr = icmp eq i8 %.sroa.01770.0.copyload.i, %i.vq
  br i1 %i.vr, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %.preheader1307.us.i.3
  %i.vs = icmp eq i8 %.sroa.41771.0.copyload.i, %i.vq
  br i1 %i.vs, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vt = icmp eq i8 %.sroa.51772.0.copyload.i, %i.vq
  br i1 %i.vt, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.vu = icmp eq i8 %.sroa.61773.0.copyload.i, %i.vq
  %spec.select1852.i.3571 = select i1 %i.vu, i32 192, i32 0
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %.preheader1307.us.i.3
  %.0938.us.i.3572 = phi i32 [ 128, %bb.ew ], [ 0, %.preheader1307.us.i.3 ], [ 64, %bb.ev ], [ %spec.select1852.i.3571, %bb.ex ]
  %i.vv = or i32 %.0938.us.i.3572, %.lcssa524.2   ; 2 uses
  %exitcond1733.not.i.3 = icmp eq i32 %i.si, 1
  br i1 %exitcond1733.not.i.3, label %._crit_edge1514.loopexit.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.vw = getelementptr i8, ptr %i.vp, i64 1
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !32  ; 4 uses
  %i.vy = icmp eq i8 %.sroa.01770.0.copyload.i, %i.vx
  br i1 %i.vy, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vz = icmp eq i8 %.sroa.41771.0.copyload.i, %i.vx
  br i1 %i.vz, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.wa = icmp eq i8 %.sroa.51772.0.copyload.i, %i.vx
  br i1 %i.wa, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wb = icmp eq i8 %.sroa.61773.0.copyload.i, %i.vx
  %spec.select1852.i.1.3 = select i1 %i.wb, i32 48, i32 0
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez
  %.0938.us.i.1.3 = phi i32 [ 32, %bb.fb ], [ 0, %bb.ez ], [ 16, %bb.fa ], [ %spec.select1852.i.1.3, %bb.fc ]
  %i.wc = or i32 %.0938.us.i.1.3, %i.vv           ; 2 uses
  %exitcond1733.not.i.1.3 = icmp eq i32 %i.si, 2
  br i1 %exitcond1733.not.i.1.3, label %._crit_edge1514.loopexit.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.wd = getelementptr i8, ptr %i.vp, i64 2
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !32  ; 4 uses
  %i.wf = icmp eq i8 %.sroa.01770.0.copyload.i, %i.we
  br i1 %i.wf, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.wg = icmp eq i8 %.sroa.41771.0.copyload.i, %i.we
  br i1 %i.wg, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wh = icmp eq i8 %.sroa.51772.0.copyload.i, %i.we
  br i1 %i.wh, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.wi = icmp eq i8 %.sroa.61773.0.copyload.i, %i.we
  %spec.select1852.i.2.3 = select i1 %i.wi, i32 12, i32 0
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ff, %bb.fe
  %.0938.us.i.2.3 = phi i32 [ 8, %bb.fg ], [ 0, %bb.fe ], [ 4, %bb.ff ], [ %spec.select1852.i.2.3, %bb.fh ]
  %i.wj = or i32 %.0938.us.i.2.3, %i.wc           ; 2 uses
  %exitcond1733.not.i.2.3 = icmp eq i32 %i.si, 3
  br i1 %exitcond1733.not.i.2.3, label %._crit_edge1514.loopexit.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.wk = getelementptr i8, ptr %i.vp, i64 3
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !32  ; 4 uses
  %i.wm = icmp eq i8 %.sroa.01770.0.copyload.i, %i.wl
  br i1 %i.wm, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.wn = icmp eq i8 %.sroa.41771.0.copyload.i, %i.wl
  br i1 %i.wn, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.wo = icmp eq i8 %.sroa.51772.0.copyload.i, %i.wl
  br i1 %i.wo, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.wp = icmp eq i8 %.sroa.61773.0.copyload.i, %i.wl
  %spec.select1852.i.3.3 = select i1 %i.wp, i32 3, i32 0
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fj
  %.0938.us.i.3.3 = phi i32 [ 2, %bb.fl ], [ 0, %bb.fj ], [ 1, %bb.fk ], [ %spec.select1852.i.3.3, %bb.fm ]
  %i.wq = or i32 %.0938.us.i.3.3, %i.wj
  br label %._crit_edge1514.loopexit.i

._crit_edge1514.loopexit.i:                       ; preds = %bb.ey, %bb.fd, %bb.fi, %bb.fn, %._crit_edge1508.us.i.2, %._crit_edge1508.us.i.1, %._crit_edge1508.us.i
  %.lcssa524.lcssa = phi i32 [ %.lcssa524, %._crit_edge1508.us.i ], [ %.lcssa524.1, %._crit_edge1508.us.i.1 ], [ %.lcssa524.2, %._crit_edge1508.us.i.2 ], [ %i.vv, %bb.ey ], [ %i.wc, %bb.fd ], [ %i.wj, %bb.fi ], [ %i.wq, %bb.fn ]
  %i.wr = call i32 @llvm.bswap.i32(i32 %.lcssa524.lcssa)
  br label %._crit_edge1514.i

._crit_edge1514.i:                                ; preds = %._crit_edge1514.loopexit.i, %.preheader1311.i
  %.0944.lcssa.i = phi i32 [ 0, %.preheader1311.i ], [ %i.wr, %._crit_edge1514.loopexit.i ]
  %.not.i.i = icmp eq i32 %.sroa.181.25, 0
  %i.ws = ptrtoint ptr %.sroa.0.29 to i64
  %i.wt = sub i64 %i.bz, %i.ws
  %i.wu = icmp sgt i64 %i.wt, 3
  %or.cond316 = select i1 %.not.i.i, i1 %i.wu, i1 false
  br i1 %or.cond316, label %bb.fo, label %bytestream2_put_be32.exit.i

bb.fo:                                            ; preds = %._crit_edge1514.i
  store i32 %.0944.lcssa.i, ptr %.sroa.0.29, align 1, !tbaa !32
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0.29, i64 4
  br label %bytestream2_put_be32.exit.i

bytestream2_put_be32.exit.i:                      ; preds = %._crit_edge1514.i, %bb.fo
  %.sroa.181.26 = phi i32 [ 0, %bb.fo ], [ 1, %._crit_edge1514.i ] ; 2 uses
  %.sroa.0.30 = phi ptr [ %i.wv, %bb.fo ], [ %.sroa.0.29, %._crit_edge1514.i ] ; 2 uses
  %i.ww = icmp ne ptr %.1811041527.i, null
  %i.wx = icmp ne ptr %.1810681528.i, null
  %or.cond651517.i = select i1 %i.ww, i1 %i.wx, i1 false
  br i1 %or.cond651517.i, label %.lr.ph1522.i, label %.critedge27.i

.critedge27.i:                                    ; preds = %bb.fp, %.lr.ph1522.i, %bytestream2_put_be32.exit.i
  %.191105.lcssa.i = phi ptr [ %.1811041527.i, %bytestream2_put_be32.exit.i ], [ %i.xe, %bb.fp ], [ %i.wz, %.lr.ph1522.i ] ; 2 uses
  %.191069.lcssa.i = phi ptr [ %.1810681528.i, %bytestream2_put_be32.exit.i ], [ %i.xe, %bb.fp ], [ %.1810681528.i, %.lr.ph1522.i ] ; 2 uses
  %.191020.lcssa.i = phi i32 [ %.1810191529.i, %bytestream2_put_be32.exit.i ], [ %i.xf, %bb.fp ], [ %.1810191529.i, %.lr.ph1522.i ] ; 2 uses
  %.19.lcssa.i = phi i32 [ %.181530.i, %bytestream2_put_be32.exit.i ], [ 0, %bb.fp ], [ %i.xa, %.lr.ph1522.i ] ; 2 uses
  %i.wy = add nuw nsw i32 %.09461531.i, 1         ; 2 uses
  %exitcond1739.not.i = icmp eq i32 %i.wy, %.4.i
  br i1 %exitcond1739.not.i, label %.critedge19.i, label %.preheader1311.i, !llvm.loop !41

.lr.ph1522.i:                                     ; preds = %bytestream2_put_be32.exit.i
  %i.wz = getelementptr inbounds nuw i8, ptr %.1811041527.i, i64 4 ; 2 uses
  %i.xa = add nsw i32 %.181530.i, 4
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = ptrtoint ptr %.1810681528.i to i64
  %i.xd = sub i64 %i.xb, %i.xc
  %.not1181.i = icmp slt i64 %i.xd, %i.bg
  br i1 %.not1181.i, label %.critedge27.i, label %bb.fp

bb.fp:                                            ; preds = %.lr.ph1522.i
  %i.xe = getelementptr inbounds i8, ptr %.1810681528.i, i64 %i.bh ; 2 uses
  %i.xf = add nsw i32 %.1810191529.i, 4
  br label %.critedge27.i

bb.fq:                                            ; preds = %.loopexit.thread.i, %.loopexit.thread.i, %.loopexit.thread.i, %.loopexit.thread.i
  %i.xg = load i8, ptr %i.au, align 4, !tbaa !32  ; 9 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.id, %bb.fq
  %indvars.iv1688.i = phi i64 [ 0, %bb.fq ], [ %indvars.iv.next1689.i, %bb.id ] ; 6 uses
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv1688.i ; 57 uses
  %i.xi = load i8, ptr %i.xh, align 4, !tbaa !32  ; 8 uses
  %i.xj = icmp eq i8 %i.xi, %i.xg
  br i1 %i.xj, label %bb.fz, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !32
  %i.xm = icmp eq i8 %i.xl, %i.xg
  br i1 %i.xm, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xo = load i8, ptr %i.xn, align 2, !tbaa !32
  %i.xp = icmp eq i8 %i.xo, %i.xg
  br i1 %i.xp, label %bb.fz, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !32
  %i.xs = icmp eq i8 %i.xr, %i.xg
  br i1 %i.xs, label %bb.fz, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xu = load i8, ptr %i.xt, align 4, !tbaa !32
  %i.xv = icmp eq i8 %i.xu, %i.xg
  br i1 %i.xv, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !32
  %i.xy = icmp eq i8 %i.xx, %i.xg
  br i1 %i.xy, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.ya = load i8, ptr %i.xz, align 2, !tbaa !32
  %i.yb = icmp eq i8 %i.ya, %i.xg
  br i1 %i.yb, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !32
  %i.ye = icmp eq i8 %i.yd, %i.xg
  br i1 %i.ye, label %bb.fz, label %bb.id

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr
  %i.yf = load i8, ptr %i.bq, align 1, !tbaa !32  ; 8 uses
  %i.yg = icmp eq i8 %i.xi, %i.yf
  br i1 %i.yg, label %bb.gh, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !32
  %i.yj = icmp eq i8 %i.yi, %i.yf
  br i1 %i.yj, label %bb.gh, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.yl = load i8, ptr %i.yk, align 2, !tbaa !32
  %i.ym = icmp eq i8 %i.yl, %i.yf
  br i1 %i.ym, label %bb.gh, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !32
  %i.yp = icmp eq i8 %i.yo, %i.yf
  br i1 %i.yp, label %bb.gh, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.yr = load i8, ptr %i.yq, align 4, !tbaa !32
  %i.ys = icmp eq i8 %i.yr, %i.yf
  br i1 %i.ys, label %bb.gh, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !32
  %i.yv = icmp eq i8 %i.yu, %i.yf
  br i1 %i.yv, label %bb.gh, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.yx = load i8, ptr %i.yw, align 2, !tbaa !32
  %i.yy = icmp eq i8 %i.yx, %i.yf
  br i1 %i.yy, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !32
  %i.zb = icmp eq i8 %i.za, %i.yf
  br i1 %i.zb, label %bb.gh, label %bb.id

bb.gh:                                            ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz
  %i.zc = load i8, ptr %i.br, align 2, !tbaa !32  ; 8 uses
  %i.zd = icmp eq i8 %i.xi, %i.zc
  br i1 %i.zd, label %bb.gp, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !32
  %i.zg = icmp eq i8 %i.zf, %i.zc
  br i1 %i.zg, label %bb.gp, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !32
  %i.zj = icmp eq i8 %i.zi, %i.zc
  br i1 %i.zj, label %bb.gp, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.zk = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !32
  %i.zm = icmp eq i8 %i.zl, %i.zc
  br i1 %i.zm, label %bb.gp, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.zo = load i8, ptr %i.zn, align 4, !tbaa !32
  %i.zp = icmp eq i8 %i.zo, %i.zc
  br i1 %i.zp, label %bb.gp, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !32
  %i.zs = icmp eq i8 %i.zr, %i.zc
  br i1 %i.zs, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.zt = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.zu = load i8, ptr %i.zt, align 2, !tbaa !32
  %i.zv = icmp eq i8 %i.zu, %i.zc
  br i1 %i.zv, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.zw = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !32
  %i.zy = icmp eq i8 %i.zx, %i.zc
  br i1 %i.zy, label %bb.gp, label %bb.id

bb.gp:                                            ; preds = %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh
  %i.zz = load i8, ptr %i.bs, align 1, !tbaa !32  ; 8 uses
  %i.aaa = icmp eq i8 %i.xi, %i.zz
  br i1 %i.aaa, label %bb.gx, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !32
  %i.aad = icmp eq i8 %i.aac, %i.zz
  br i1 %i.aad, label %bb.gx, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.aaf = load i8, ptr %i.aae, align 2, !tbaa !32
  %i.aag = icmp eq i8 %i.aaf, %i.zz
  br i1 %i.aag, label %bb.gx, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aah = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !32
  %i.aaj = icmp eq i8 %i.aai, %i.zz
  br i1 %i.aaj, label %bb.gx, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.aal = load i8, ptr %i.aak, align 4, !tbaa !32
  %i.aam = icmp eq i8 %i.aal, %i.zz
  br i1 %i.aam, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !32
  %i.aap = icmp eq i8 %i.aao, %i.zz
  br i1 %i.aap, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.aar = load i8, ptr %i.aaq, align 2, !tbaa !32
  %i.aas = icmp eq i8 %i.aar, %i.zz
  br i1 %i.aas, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.aau = load i8, ptr %i.aat, align 1, !tbaa !32
  %i.aav = icmp eq i8 %i.aau, %i.zz
  br i1 %i.aav, label %bb.gx, label %bb.id

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp
  %i.aaw = load i8, ptr %i.bt, align 8, !tbaa !32 ; 8 uses
  %i.aax = icmp eq i8 %i.xi, %i.aaw
  br i1 %i.aax, label %bb.hf, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aay = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !32
  %i.aba = icmp eq i8 %i.aaz, %i.aaw
  br i1 %i.aba, label %bb.hf, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.abc = load i8, ptr %i.abb, align 2, !tbaa !32
  %i.abd = icmp eq i8 %i.abc, %i.aaw
  br i1 %i.abd, label %bb.hf, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.abe = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !32
  %i.abg = icmp eq i8 %i.abf, %i.aaw
  br i1 %i.abg, label %bb.hf, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.abh = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.abi = load i8, ptr %i.abh, align 4, !tbaa !32
  %i.abj = icmp eq i8 %i.abi, %i.aaw
  br i1 %i.abj, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.abk = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.abl = load i8, ptr %i.abk, align 1, !tbaa !32
  %i.abm = icmp eq i8 %i.abl, %i.aaw
  br i1 %i.abm, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.abn = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.abo = load i8, ptr %i.abn, align 2, !tbaa !32
  %i.abp = icmp eq i8 %i.abo, %i.aaw
  br i1 %i.abp, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.abq = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !32
  %i.abs = icmp eq i8 %i.abr, %i.aaw
  br i1 %i.abs, label %bb.hf, label %bb.id

bb.hf:                                            ; preds = %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx
  %i.abt = load i8, ptr %i.bu, align 1, !tbaa !32 ; 8 uses
  %i.abu = icmp eq i8 %i.xi, %i.abt
  br i1 %i.abu, label %bb.hn, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.abv = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !32
  %i.abx = icmp eq i8 %i.abw, %i.abt
  br i1 %i.abx, label %bb.hn, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.aby = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.abz = load i8, ptr %i.aby, align 2, !tbaa !32
  %i.aca = icmp eq i8 %i.abz, %i.abt
  br i1 %i.aca, label %bb.hn, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.acb = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !32
  %i.acd = icmp eq i8 %i.acc, %i.abt
  br i1 %i.acd, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ace = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.acf = load i8, ptr %i.ace, align 4, !tbaa !32
  %i.acg = icmp eq i8 %i.acf, %i.abt
  br i1 %i.acg, label %bb.hn, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ach = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !32
  %i.acj = icmp eq i8 %i.aci, %i.abt
  br i1 %i.acj, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.ack = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.acl = load i8, ptr %i.ack, align 2, !tbaa !32
  %i.acm = icmp eq i8 %i.acl, %i.abt
  br i1 %i.acm, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.acn = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !32
  %i.acp = icmp eq i8 %i.aco, %i.abt
  br i1 %i.acp, label %bb.hn, label %bb.id

bb.hn:                                            ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf
  %i.acq = load i8, ptr %i.bv, align 2, !tbaa !32 ; 8 uses
  %i.acr = icmp eq i8 %i.xi, %i.acq
  br i1 %i.acr, label %bb.hv, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.acs = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !32
  %i.acu = icmp eq i8 %i.act, %i.acq
  br i1 %i.acu, label %bb.hv, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.acv = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.acw = load i8, ptr %i.acv, align 2, !tbaa !32
  %i.acx = icmp eq i8 %i.acw, %i.acq
  br i1 %i.acx, label %bb.hv, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.acy = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.acz = load i8, ptr %i.acy, align 1, !tbaa !32
  %i.ada = icmp eq i8 %i.acz, %i.acq
  br i1 %i.ada, label %bb.hv, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adb = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.adc = load i8, ptr %i.adb, align 4, !tbaa !32
  %i.add = icmp eq i8 %i.adc, %i.acq
  br i1 %i.add, label %bb.hv, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ade = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !32
  %i.adg = icmp eq i8 %i.adf, %i.acq
  br i1 %i.adg, label %bb.hv, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.adh = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.adi = load i8, ptr %i.adh, align 2, !tbaa !32
  %i.adj = icmp eq i8 %i.adi, %i.acq
  br i1 %i.adj, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.adk = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !32
  %i.adm = icmp eq i8 %i.adl, %i.acq
  br i1 %i.adm, label %bb.hv, label %bb.id

bb.hv:                                            ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn
  %i.adn = load i8, ptr %i.bw, align 1, !tbaa !32 ; 8 uses
  %i.ado = icmp eq i8 %i.xi, %i.adn
  br i1 %i.ado, label %bb.ie, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.adp = getelementptr inbounds nuw i8, ptr %i.xh, i64 1
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !32
  %i.adr = icmp eq i8 %i.adq, %i.adn
  br i1 %i.adr, label %bb.ie, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.ads = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.adt = load i8, ptr %i.ads, align 2, !tbaa !32
  %i.adu = icmp eq i8 %i.adt, %i.adn
  br i1 %i.adu, label %bb.ie, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.adv = getelementptr inbounds nuw i8, ptr %i.xh, i64 3
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !32
  %i.adx = icmp eq i8 %i.adw, %i.adn
  br i1 %i.adx, label %bb.ie, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ady = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.adz = load i8, ptr %i.ady, align 4, !tbaa !32
  %i.aea = icmp eq i8 %i.adz, %i.adn
  br i1 %i.aea, label %bb.ie, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.xh, i64 5
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !32
  %i.aed = icmp eq i8 %i.aec, %i.adn
  br i1 %i.aed, label %bb.ie, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aee = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.aef = load i8, ptr %i.aee, align 2, !tbaa !32
  %i.aeg = icmp eq i8 %i.aef, %i.adn
  br i1 %i.aeg, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.xh, i64 7
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !32
  %i.aej = icmp eq i8 %i.aei, %i.adn
  br i1 %i.aej, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.hu, %bb.hm, %bb.he, %bb.gw, %bb.go, %bb.gg, %bb.fy
  %indvars.iv.next1689.i = add nuw nsw i64 %indvars.iv1688.i, 1 ; 2 uses
  %exitcond1691.not.i = icmp eq i64 %indvars.iv.next1689.i, 256
  br i1 %exitcond1691.not.i, label %bb.ih, label %bb.fr, !llvm.loop !42

bb.ie:                                            ; preds = %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv
  %.not.i1226.i = icmp eq i32 %.sroa.181.1, 0
  %i.aek = ptrtoint ptr %.sroa.0.1 to i64
  %i.ael = sub i64 %i.bz, %i.aek
  %i.aem = icmp sgt i64 %i.ael, 0
  %or.cond373 = select i1 %.not.i1226.i, i1 %i.aem, i1 false
  br i1 %or.cond373, label %bb.if, label %bytestream2_put_byte.exit1225.i

bb.if:                                            ; preds = %bb.ie
  %i.aen = trunc i32 %.4.i to i8
  %i.aeo = add i8 %i.aen, 63
  %i.aep = or i8 %i.aeo, -48
  store i8 %i.aep, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.aeq = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.aer = ptrtoint ptr %i.aeq to i64
  %i.aes = sub i64 %i.bz, %i.aer
  %i.aet = icmp sgt i64 %i.aes, 0
  br i1 %i.aet, label %bb.ig, label %bytestream2_put_byte.exit1225.i

bb.ig:                                            ; preds = %bb.if
  %i.aeu = trunc i64 %indvars.iv1688.i to i8
  store i8 %i.aeu, ptr %i.aeq, align 1, !tbaa !32
  %i.aev = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit1225.i

bb.ih:                                            ; preds = %bb.id
  %.not.i1222.i = icmp eq i32 %.sroa.181.1, 0
  %i.aew = ptrtoint ptr %.sroa.0.1 to i64
  %i.aex = sub i64 %i.bz, %i.aew
  %i.aey = icmp sgt i64 %i.aex, 0
  %or.cond320 = select i1 %.not.i1222.i, i1 %i.aey, i1 false
  br i1 %or.cond320, label %bb.ii, label %bytestream2_put_byte.exit1223.i.thread

bytestream2_put_byte.exit1223.i.thread:           ; preds = %bb.ih
  %i.aez = sext i32 %.010401627.i to i64          ; 2 uses
  %i.afa = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.aez ; 2 uses
  store i8 %i.xg, ptr %i.afa, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.i.thread

bb.ii:                                            ; preds = %bb.ih
  %i.afb = trunc i32 %.4.i to i8
  %i.afc = add i8 %i.afb, 63
  %i.afd = or i8 %i.afc, -64
  store i8 %i.afd, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.afe = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.aff = sext i32 %.010401627.i to i64          ; 10 uses
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.aff ; 15 uses
  %i.afh = load i8, ptr %i.au, align 4, !tbaa !32 ; 2 uses
  store i8 %i.afh, ptr %i.afg, align 1, !tbaa !32
  %i.afi = ptrtoint ptr %i.afe to i64
  %i.afj = sub i64 %i.bz, %i.afi
  %i.afk = icmp sgt i64 %i.afj, 0
  br i1 %i.afk, label %bb.ij, label %bytestream2_put_byte.exit1221.i.thread

bytestream2_put_byte.exit1221.i.thread:           ; preds = %bytestream2_put_byte.exit1223.i.thread, %bb.ii
  %.ph255 = phi ptr [ %i.afg, %bb.ii ], [ %i.afa, %bytestream2_put_byte.exit1223.i.thread ] ; 2 uses
  %.ph256 = phi i64 [ %i.aff, %bb.ii ], [ %i.aez, %bytestream2_put_byte.exit1223.i.thread ]
  %.sroa.0.10.ph = phi ptr [ %i.afe, %bb.ii ], [ %.sroa.0.1, %bytestream2_put_byte.exit1223.i.thread ]
  %i.afl = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.afm = getelementptr inbounds nuw i8, ptr %.ph255, i64 1
  store i8 %i.afl, ptr %i.afm, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.1.i.thread

bb.ij:                                            ; preds = %bb.ii
  store i8 %i.afh, ptr %i.afe, align 1, !tbaa !32
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2 ; 3 uses
  %i.afo = load i8, ptr %i.bq, align 1, !tbaa !32 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  store i8 %i.afo, ptr %i.afp, align 1, !tbaa !32
  %i.afq = ptrtoint ptr %i.afn to i64
  %i.afr = sub i64 %i.bz, %i.afq
  %i.afs = icmp sgt i64 %i.afr, 0
  br i1 %i.afs, label %bb.ik, label %bytestream2_put_byte.exit1221.1.i.thread

bytestream2_put_byte.exit1221.1.i.thread:         ; preds = %bytestream2_put_byte.exit1221.i.thread, %bb.ij
  %.ph261 = phi i64 [ %i.aff, %bb.ij ], [ %.ph256, %bytestream2_put_byte.exit1221.i.thread ]
  %.ph262 = phi ptr [ %i.afg, %bb.ij ], [ %.ph255, %bytestream2_put_byte.exit1221.i.thread ] ; 2 uses
  %.sroa.0.11.ph = phi ptr [ %i.afn, %bb.ij ], [ %.sroa.0.10.ph, %bytestream2_put_byte.exit1221.i.thread ]
  %i.aft = load i8, ptr %i.br, align 2, !tbaa !32
  %i.afu = getelementptr inbounds nuw i8, ptr %.ph262, i64 2
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.2.i.thread

bb.ik:                                            ; preds = %bb.ij
  store i8 %i.afo, ptr %i.afn, align 1, !tbaa !32
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 3 ; 3 uses
  %i.afw = load i8, ptr %i.br, align 2, !tbaa !32 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afg, i64 2
  store i8 %i.afw, ptr %i.afx, align 1, !tbaa !32
  %i.afy = ptrtoint ptr %i.afv to i64
  %i.afz = sub i64 %i.bz, %i.afy
  %i.aga = icmp sgt i64 %i.afz, 0
  br i1 %i.aga, label %bb.il, label %bytestream2_put_byte.exit1221.2.i.thread

bytestream2_put_byte.exit1221.2.i.thread:         ; preds = %bytestream2_put_byte.exit1221.1.i.thread, %bb.ik
  %.ph267 = phi ptr [ %i.afg, %bb.ik ], [ %.ph262, %bytestream2_put_byte.exit1221.1.i.thread ] ; 2 uses
  %.ph268 = phi i64 [ %i.aff, %bb.ik ], [ %.ph261, %bytestream2_put_byte.exit1221.1.i.thread ]
  %.sroa.0.12.ph = phi ptr [ %i.afv, %bb.ik ], [ %.sroa.0.11.ph, %bytestream2_put_byte.exit1221.1.i.thread ]
  %i.agb = load i8, ptr %i.bs, align 1, !tbaa !32
  %i.agc = getelementptr inbounds nuw i8, ptr %.ph267, i64 3
  store i8 %i.agb, ptr %i.agc, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.3.i.thread

bb.il:                                            ; preds = %bb.ik
  store i8 %i.afw, ptr %i.afv, align 1, !tbaa !32
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4 ; 3 uses
  %i.age = load i8, ptr %i.bs, align 1, !tbaa !32 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afg, i64 3
  store i8 %i.age, ptr %i.agf, align 1, !tbaa !32
  %i.agg = ptrtoint ptr %i.agd to i64
  %i.agh = sub i64 %i.bz, %i.agg
  %i.agi = icmp sgt i64 %i.agh, 0
  br i1 %i.agi, label %bb.im, label %bytestream2_put_byte.exit1221.3.i.thread

bytestream2_put_byte.exit1221.3.i.thread:         ; preds = %bytestream2_put_byte.exit1221.2.i.thread, %bb.il
  %.ph273 = phi i64 [ %i.aff, %bb.il ], [ %.ph268, %bytestream2_put_byte.exit1221.2.i.thread ]
  %.ph274 = phi ptr [ %i.afg, %bb.il ], [ %.ph267, %bytestream2_put_byte.exit1221.2.i.thread ] ; 2 uses
  %.sroa.0.13.ph = phi ptr [ %i.agd, %bb.il ], [ %.sroa.0.12.ph, %bytestream2_put_byte.exit1221.2.i.thread ]
  %i.agj = load i8, ptr %i.bt, align 8, !tbaa !32
  %i.agk = getelementptr inbounds nuw i8, ptr %.ph274, i64 4
  store i8 %i.agj, ptr %i.agk, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.4.i.thread

bb.im:                                            ; preds = %bb.il
  store i8 %i.age, ptr %i.agd, align 1, !tbaa !32
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 5 ; 3 uses
  %i.agm = load i8, ptr %i.bt, align 8, !tbaa !32 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afg, i64 4
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !32
  %i.ago = ptrtoint ptr %i.agl to i64
  %i.agp = sub i64 %i.bz, %i.ago
  %i.agq = icmp sgt i64 %i.agp, 0
  br i1 %i.agq, label %bb.in, label %bytestream2_put_byte.exit1221.4.i.thread

bytestream2_put_byte.exit1221.4.i.thread:         ; preds = %bytestream2_put_byte.exit1221.3.i.thread, %bb.im
  %.ph279 = phi ptr [ %i.afg, %bb.im ], [ %.ph274, %bytestream2_put_byte.exit1221.3.i.thread ] ; 2 uses
  %.ph280 = phi i64 [ %i.aff, %bb.im ], [ %.ph273, %bytestream2_put_byte.exit1221.3.i.thread ]
  %.sroa.0.14.ph = phi ptr [ %i.agl, %bb.im ], [ %.sroa.0.13.ph, %bytestream2_put_byte.exit1221.3.i.thread ]
  %i.agr = load i8, ptr %i.bu, align 1, !tbaa !32
  %i.ags = getelementptr inbounds nuw i8, ptr %.ph279, i64 5
  store i8 %i.agr, ptr %i.ags, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.5.i.thread

bb.in:                                            ; preds = %bb.im
  store i8 %i.agm, ptr %i.agl, align 1, !tbaa !32
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 6 ; 3 uses
  %i.agu = load i8, ptr %i.bu, align 1, !tbaa !32 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.afg, i64 5
  store i8 %i.agu, ptr %i.agv, align 1, !tbaa !32
  %i.agw = ptrtoint ptr %i.agt to i64
  %i.agx = sub i64 %i.bz, %i.agw
  %i.agy = icmp sgt i64 %i.agx, 0
  br i1 %i.agy, label %bb.io, label %bytestream2_put_byte.exit1221.5.i.thread

bytestream2_put_byte.exit1221.5.i.thread:         ; preds = %bytestream2_put_byte.exit1221.4.i.thread, %bb.in
  %.ph285 = phi i64 [ %i.aff, %bb.in ], [ %.ph280, %bytestream2_put_byte.exit1221.4.i.thread ]
  %.ph286 = phi ptr [ %i.afg, %bb.in ], [ %.ph279, %bytestream2_put_byte.exit1221.4.i.thread ] ; 2 uses
  %.sroa.0.15.ph = phi ptr [ %i.agt, %bb.in ], [ %.sroa.0.14.ph, %bytestream2_put_byte.exit1221.4.i.thread ]
  %i.agz = load i8, ptr %i.bv, align 2, !tbaa !32
  %i.aha = getelementptr inbounds nuw i8, ptr %.ph286, i64 6
  store i8 %i.agz, ptr %i.aha, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.6.i.thread

bb.io:                                            ; preds = %bb.in
  store i8 %i.agu, ptr %i.agt, align 1, !tbaa !32
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 7 ; 3 uses
  %i.ahc = load i8, ptr %i.bv, align 2, !tbaa !32 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afg, i64 6
  store i8 %i.ahc, ptr %i.ahd, align 1, !tbaa !32
  %i.ahe = ptrtoint ptr %i.ahb to i64
  %i.ahf = sub i64 %i.bz, %i.ahe
  %i.ahg = icmp sgt i64 %i.ahf, 0
  br i1 %i.ahg, label %bb.ip, label %bytestream2_put_byte.exit1221.6.i.thread

bytestream2_put_byte.exit1221.6.i.thread:         ; preds = %bytestream2_put_byte.exit1221.5.i.thread, %bb.io
  %.ph291 = phi ptr [ %i.afg, %bb.io ], [ %.ph286, %bytestream2_put_byte.exit1221.5.i.thread ]
  %.ph292 = phi i64 [ %i.aff, %bb.io ], [ %.ph285, %bytestream2_put_byte.exit1221.5.i.thread ]
  %.sroa.0.16.ph = phi ptr [ %i.ahb, %bb.io ], [ %.sroa.0.15.ph, %bytestream2_put_byte.exit1221.5.i.thread ]
  %i.ahh = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.ahi = getelementptr inbounds nuw i8, ptr %.ph291, i64 7
  store i8 %i.ahh, ptr %i.ahi, align 1, !tbaa !32
  br label %bytestream2_put_byte.exit1221.7.i

bb.ip:                                            ; preds = %bb.io
  store i8 %i.ahc, ptr %i.ahb, align 1, !tbaa !32
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 3 uses
  %i.ahk = load i8, ptr %i.bw, align 1, !tbaa !32 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.afg, i64 7
  store i8 %i.ahk, ptr %i.ahl, align 1, !tbaa !32
  %i.ahm = ptrtoint ptr %i.ahj to i64
  %i.ahn = sub i64 %i.bz, %i.ahm
  %i.aho = icmp sgt i64 %i.ahn, 0
  br i1 %i.aho, label %bb.iq, label %bytestream2_put_byte.exit1221.7.i

bb.iq:                                            ; preds = %bb.ip
  store i8 %i.ahk, ptr %i.ahj, align 1, !tbaa !32
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 9
  br label %bytestream2_put_byte.exit1221.7.i

end_hunk_1
begin_hunk_2_@smc_encode_frame:bb.a
  %.2111071490.i = phi ptr [ %.010861612.i, %.lr.ph1495.i ], [ %.221108.lcssa.i, %.critedge31.i ] ; 4 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.ahu, align 1, !tbaa !32 ; 4 uses
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.6.0.copyload.i = load i8, ptr %.sroa.6.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.7.0.copyload.i = load i8, ptr %.sroa.7.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.8.0.copyload.i = load i8, ptr %.sroa.8.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %.sroa.10.0.copyload.i = load i8, ptr %.sroa.10.0..sroa_idx.i, align 1, !tbaa !32 ; 4 uses
  %i.ahv = sub nsw i32 %i.aw, %.2110221492.i      ; 2 uses
  %i.ahw = sub i32 %i.ay, %.211493.i              ; 4 uses
  %i.ahx = icmp sgt i32 %i.ahv, 0
  %i.ahy = icmp sgt i32 %i.ahw, 0
  %or.cond321 = select i1 %i.ahx, i1 %i.ahy, i1 false
  br i1 %or.cond321, label %.preheader1308.us.preheader.i, label %._crit_edge1477.i

.preheader1308.us.preheader.i:                    ; preds = %.preheader1312.i
  %i.ahz = call i32 @llvm.umin.i32(i32 %i.ahv, i32 4)
  %wide.trip.count1711.i = zext nneg i32 %i.ahz to i64
  %exitcond1707.not.i = icmp eq i32 %i.ahw, 1
  %exitcond1707.not.i.1 = icmp eq i32 %i.ahw, 2
  %exitcond1707.not.i.2 = icmp eq i32 %i.ahw, 3
  br label %.preheader1308.us.i

.preheader1308.us.i:                              ; preds = %._crit_edge1471.us.i, %.preheader1308.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge1471.us.i ], [ 45, %.preheader1308.us.preheader.i ] ; 5 uses
  %indvars.iv1708.i = phi i64 [ %indvars.iv.next1709.i, %._crit_edge1471.us.i ], [ 0, %.preheader1308.us.preheader.i ] ; 2 uses
  %.09311474.us.i = phi i64 [ %.lcssa522, %._crit_edge1471.us.i ], [ 0, %.preheader1308.us.preheader.i ]
  %i.aia = mul nsw i64 %indvars.iv1708.i, %i.ao
  %i.aib = getelementptr i8, ptr %.2111071490.i, i64 %i.aia ; 4 uses
  %i.aic = load i8, ptr %i.aib, align 1, !tbaa !32 ; 8 uses
  %i.aid = icmp eq i8 %.sroa.0.0.copyload.i, %i.aic
  br i1 %i.aid, label %bb.iy, label %bb.ir

bb.ir:                                            ; preds = %.preheader1308.us.i
  %i.aie = icmp eq i8 %.sroa.4.0.copyload.i, %i.aic
  br i1 %i.aie, label %bb.iy, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aif = icmp eq i8 %.sroa.5.0.copyload.i, %i.aic
  br i1 %i.aif, label %bb.iy, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.aig = icmp eq i8 %.sroa.6.0.copyload.i, %i.aic
  br i1 %i.aig, label %bb.iy, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.aih = icmp eq i8 %.sroa.7.0.copyload.i, %i.aic
  br i1 %i.aih, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aii = icmp eq i8 %.sroa.8.0.copyload.i, %i.aic
  br i1 %i.aii, label %bb.iy, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.aij = icmp eq i8 %.sroa.9.0.copyload.i, %i.aic
  br i1 %i.aij, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aik = icmp eq i8 %.sroa.10.0.copyload.i, %i.aic
  %spec.select1853.i = select i1 %i.aik, i64 7, i64 0
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %.preheader1308.us.i
  %.0926.us.i = phi i64 [ 4, %bb.iu ], [ 0, %.preheader1308.us.i ], [ 1, %bb.ir ], [ %spec.select1853.i, %bb.ix ], [ 2, %bb.is ], [ 5, %bb.iv ], [ 3, %bb.it ], [ 6, %bb.iw ]
  %i.ail = shl i64 %.0926.us.i, %indvars.iv
  %i.aim = or i64 %i.ail, %.09311474.us.i         ; 2 uses
  %indvars.iv.next410 = add nsw i64 %indvars.iv, -3
  br i1 %exitcond1707.not.i, label %._crit_edge1471.us.i, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.ain = getelementptr i8, ptr %i.aib, i64 1
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !32 ; 8 uses
  %i.aip = icmp eq i8 %.sroa.0.0.copyload.i, %i.aio
  br i1 %i.aip, label %bb.jh, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.aiq = icmp eq i8 %.sroa.4.0.copyload.i, %i.aio
  br i1 %i.aiq, label %bb.jh, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.air = icmp eq i8 %.sroa.5.0.copyload.i, %i.aio
  br i1 %i.air, label %bb.jh, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.ais = icmp eq i8 %.sroa.6.0.copyload.i, %i.aio
  br i1 %i.ais, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.ait = icmp eq i8 %.sroa.7.0.copyload.i, %i.aio
  br i1 %i.ait, label %bb.jh, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aiu = icmp eq i8 %.sroa.8.0.copyload.i, %i.aio
  br i1 %i.aiu, label %bb.jh, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aiv = icmp eq i8 %.sroa.9.0.copyload.i, %i.aio
  br i1 %i.aiv, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aiw = icmp eq i8 %.sroa.10.0.copyload.i, %i.aio
  %spec.select1853.i.1 = select i1 %i.aiw, i64 7, i64 0
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz
  %.0926.us.i.1 = phi i64 [ 4, %bb.jd ], [ 0, %bb.iz ], [ 1, %bb.ja ], [ %spec.select1853.i.1, %bb.jg ], [ 2, %bb.jb ], [ 5, %bb.je ], [ 3, %bb.jc ], [ 6, %bb.jf ]
  %i.aix = shl i64 %.0926.us.i.1, %indvars.iv.next410
  %i.aiy = or i64 %i.aix, %i.aim                  ; 2 uses
  %indvars.iv.next410.1 = add nsw i64 %indvars.iv, -6
  br i1 %exitcond1707.not.i.1, label %._crit_edge1471.us.i, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aiz = getelementptr i8, ptr %i.aib, i64 2
  %i.aja = load i8, ptr %i.aiz, align 1, !tbaa !32 ; 8 uses
  %i.ajb = icmp eq i8 %.sroa.0.0.copyload.i, %i.aja
  br i1 %i.ajb, label %bb.jq, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ajc = icmp eq i8 %.sroa.4.0.copyload.i, %i.aja
  br i1 %i.ajc, label %bb.jq, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.ajd = icmp eq i8 %.sroa.5.0.copyload.i, %i.aja
  br i1 %i.ajd, label %bb.jq, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aje = icmp eq i8 %.sroa.6.0.copyload.i, %i.aja
  br i1 %i.aje, label %bb.jq, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ajf = icmp eq i8 %.sroa.7.0.copyload.i, %i.aja
  br i1 %i.ajf, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ajg = icmp eq i8 %.sroa.8.0.copyload.i, %i.aja
  br i1 %i.ajg, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.ajh = icmp eq i8 %.sroa.9.0.copyload.i, %i.aja
  br i1 %i.ajh, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.aji = icmp eq i8 %.sroa.10.0.copyload.i, %i.aja
  %spec.select1853.i.2 = select i1 %i.aji, i64 7, i64 0
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji
  %.0926.us.i.2 = phi i64 [ 4, %bb.jm ], [ 0, %bb.ji ], [ 1, %bb.jj ], [ %spec.select1853.i.2, %bb.jp ], [ 2, %bb.jk ], [ 5, %bb.jn ], [ 3, %bb.jl ], [ 6, %bb.jo ]
  %i.ajj = shl i64 %.0926.us.i.2, %indvars.iv.next410.1
  %i.ajk = or i64 %i.ajj, %i.aiy                  ; 2 uses
  %indvars.iv.next410.2 = add nsw i64 %indvars.iv, -9
  br i1 %exitcond1707.not.i.2, label %._crit_edge1471.us.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ajl = getelementptr i8, ptr %i.aib, i64 3
  %i.ajm = load i8, ptr %i.ajl, align 1, !tbaa !32 ; 8 uses
  %i.ajn = icmp eq i8 %.sroa.0.0.copyload.i, %i.ajm
  br i1 %i.ajn, label %bb.jz, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.ajo = icmp eq i8 %.sroa.4.0.copyload.i, %i.ajm
  br i1 %i.ajo, label %bb.jz, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.ajp = icmp eq i8 %.sroa.5.0.copyload.i, %i.ajm
  br i1 %i.ajp, label %bb.jz, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ajq = icmp eq i8 %.sroa.6.0.copyload.i, %i.ajm
  br i1 %i.ajq, label %bb.jz, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ajr = icmp eq i8 %.sroa.7.0.copyload.i, %i.ajm
  br i1 %i.ajr, label %bb.jz, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.ajs = icmp eq i8 %.sroa.8.0.copyload.i, %i.ajm
  br i1 %i.ajs, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.ajt = icmp eq i8 %.sroa.9.0.copyload.i, %i.ajm
  br i1 %i.ajt, label %bb.jz, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aju = icmp eq i8 %.sroa.10.0.copyload.i, %i.ajm
  %spec.select1853.i.3 = select i1 %i.aju, i64 7, i64 0
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr
  %.0926.us.i.3 = phi i64 [ 4, %bb.jv ], [ 0, %bb.jr ], [ 1, %bb.js ], [ %spec.select1853.i.3, %bb.jy ], [ 2, %bb.jt ], [ 5, %bb.jw ], [ 3, %bb.ju ], [ 6, %bb.jx ]
  %i.ajv = shl i64 %.0926.us.i.3, %indvars.iv.next410.2
  %i.ajw = or i64 %i.ajv, %i.ajk
  br label %._crit_edge1471.us.i

._crit_edge1471.us.i:                             ; preds = %bb.jz, %bb.jq, %bb.jh, %bb.iy
  %.lcssa522 = phi i64 [ %i.aim, %bb.iy ], [ %i.aiy, %bb.jh ], [ %i.ajk, %bb.jq ], [ %i.ajw, %bb.jz ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -12
  %indvars.iv.next1709.i = add nuw nsw i64 %indvars.iv1708.i, 1 ; 2 uses
  %exitcond1712.not.i = icmp eq i64 %indvars.iv.next1709.i, %wide.trip.count1711.i
  br i1 %exitcond1712.not.i, label %._crit_edge1477.i, label %.preheader1308.us.i, !llvm.loop !43

._crit_edge1477.i:                                ; preds = %._crit_edge1471.us.i, %.preheader1312.i
  %.0931.lcssa.i = phi i64 [ 0, %.preheader1312.i ], [ %.lcssa522, %._crit_edge1471.us.i ] ; 5 uses
  %i.ajx = lshr i64 %.0931.lcssa.i, 8             ; 2 uses
  %.not.i1255.i = icmp eq i32 %.sroa.181.17, 0
  %i.ajy = ptrtoint ptr %.sroa.0.19 to i64
  %i.ajz = sub i64 %i.bz, %i.ajy
  %i.aka = icmp sgt i64 %i.ajz, 1
  %or.cond376 = select i1 %.not.i1255.i, i1 %i.aka, i1 false
  br i1 %or.cond376, label %bb.ka, label %bytestream2_put_be16.exit.i

bb.ka:                                            ; preds = %._crit_edge1477.i
  %i.akb = lshr i64 %.0931.lcssa.i, 32
  %i.akc = and i64 %i.akb, 65520
  %i.akd = and i64 %i.ajx, 15
  %i.ake = or disjoint i64 %i.akc, %i.akd
  %i.akf = trunc nuw i64 %i.ake to i16
  %i.akg = call i16 @llvm.bswap.i16(i16 %i.akf)
  store i16 %i.akg, ptr %.sroa.0.19, align 1, !tbaa !32
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 2 ; 3 uses
  %i.aki = ptrtoint ptr %i.akh to i64
  %i.akj = sub i64 %i.bz, %i.aki
  %i.akk = icmp sgt i64 %i.akj, 1
  br i1 %i.akk, label %bb.kb, label %bytestream2_put_be16.exit.i

bb.kb:                                            ; preds = %bb.ka
  %i.akl = lshr i64 %.0931.lcssa.i, 20
  %i.akm = and i64 %i.akl, 65520
  %i.akn = lshr i64 %.0931.lcssa.i, 4
  %i.ako = and i64 %i.akn, 15
  %i.akp = or disjoint i64 %i.akm, %i.ako
  %i.akq = trunc nuw i64 %i.akp to i16
  %i.akr = call i16 @llvm.bswap.i16(i16 %i.akq)
  store i16 %i.akr, ptr %i.akh, align 1, !tbaa !32
  %i.aks = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 4 ; 3 uses
  %i.akt = ptrtoint ptr %i.aks to i64
  %i.aku = sub i64 %i.bz, %i.akt
  %i.akv = icmp sgt i64 %i.aku, 1
  br i1 %i.akv, label %bb.kc, label %bytestream2_put_be16.exit.i

bb.kc:                                            ; preds = %bb.kb
  %i.akw = and i64 %i.ajx, 65520
  %i.akx = and i64 %.0931.lcssa.i, 15
  %i.aky = or disjoint i64 %i.akw, %i.akx
  %i.akz = trunc nuw i64 %i.aky to i16
  %i.ala = call i16 @llvm.bswap.i16(i16 %i.akz)
  store i16 %i.ala, ptr %i.aks, align 1, !tbaa !32
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.0.19, i64 6
  br label %bytestream2_put_be16.exit.i

bytestream2_put_be16.exit.i:                      ; preds = %._crit_edge1477.i, %bb.ka, %bb.kb, %bb.kc
  %.sroa.181.18 = phi i32 [ 0, %bb.kc ], [ 1, %bb.kb ], [ 1, %bb.ka ], [ 1, %._crit_edge1477.i ] ; 2 uses
  %.sroa.0.21 = phi ptr [ %i.alb, %bb.kc ], [ %i.aks, %bb.kb ], [ %i.akh, %bb.ka ], [ %.sroa.0.19, %._crit_edge1477.i ] ; 2 uses
  %i.alc = icmp ne ptr %.2111071490.i, null
  %i.ald = icmp ne ptr %.2110711491.i, null
  %or.cond671480.i = select i1 %i.alc, i1 %i.ald, i1 false
  br i1 %or.cond671480.i, label %.lr.ph1485.i, label %.critedge31.i

.critedge31.i:                                    ; preds = %bb.kd, %.lr.ph1485.i, %bytestream2_put_be16.exit.i
  %.221108.lcssa.i = phi ptr [ %.2111071490.i, %bytestream2_put_be16.exit.i ], [ %i.alk, %bb.kd ], [ %i.alf, %.lr.ph1485.i ] ; 2 uses
  %.221072.lcssa.i = phi ptr [ %.2110711491.i, %bytestream2_put_be16.exit.i ], [ %i.alk, %bb.kd ], [ %.2110711491.i, %.lr.ph1485.i ] ; 2 uses
  %.221023.lcssa.i = phi i32 [ %.2110221492.i, %bytestream2_put_be16.exit.i ], [ %i.all, %bb.kd ], [ %.2110221492.i, %.lr.ph1485.i ] ; 2 uses
  %.22.lcssa.i = phi i32 [ %.211493.i, %bytestream2_put_be16.exit.i ], [ 0, %bb.kd ], [ %i.alg, %.lr.ph1485.i ] ; 2 uses
  %i.ale = add nuw nsw i32 %.09331494.i, 1        ; 2 uses
  %exitcond1713.not.i = icmp eq i32 %i.ale, %.4.i
  br i1 %exitcond1713.not.i, label %.critedge19.i, label %.preheader1312.i, !llvm.loop !44

.lr.ph1485.i:                                     ; preds = %bytestream2_put_be16.exit.i
  %i.alf = getelementptr inbounds nuw i8, ptr %.2111071490.i, i64 4 ; 2 uses
  %i.alg = add nsw i32 %.211493.i, 4
  %i.alh = ptrtoint ptr %i.alf to i64
  %i.ali = ptrtoint ptr %.2110711491.i to i64
  %i.alj = sub i64 %i.alh, %i.ali
  %.not1180.i = icmp slt i64 %i.alj, %i.bg
  br i1 %.not1180.i, label %.critedge31.i, label %bb.kd

bb.kd:                                            ; preds = %.lr.ph1485.i
  %i.alk = getelementptr inbounds i8, ptr %.2110711491.i, i64 %i.bh ; 2 uses
  %i.all = add nsw i32 %.2110221492.i, 4
  br label %.critedge31.i

bb.ke:                                            ; preds = %.loopexit.thread.i
  %.not.i1218.i = icmp eq i32 %.sroa.181.1, 0
  %i.alm = ptrtoint ptr %.sroa.0.1 to i64
  %i.aln = sub i64 %i.bz, %i.alm
  %i.alo = icmp sgt i64 %i.aln, 0
  %or.cond325 = select i1 %.not.i1218.i, i1 %i.alo, i1 false
  br i1 %or.cond325, label %bb.kf, label %bytestream2_put_byte.exit1219.i

bb.kf:                                            ; preds = %bb.ke
  %i.alp = trunc i32 %.4.i to i8
  %i.alq = add i8 %i.alp, 31
  %i.alr = or i8 %i.alq, -32
  store i8 %i.alr, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  br label %bytestream2_put_byte.exit1219.i

bytestream2_put_byte.exit1219.i:                  ; preds = %bb.ke, %bb.kf
  %.sroa.181.34 = phi i32 [ 0, %bb.kf ], [ 1, %bb.ke ] ; 2 uses
  %.sroa.0.42 = phi ptr [ %i.als, %bb.kf ], [ %.sroa.0.1, %bb.ke ] ; 2 uses
  %i.alt = icmp sgt i32 %.4.i, 0
  br i1 %i.alt, label %.lr.ph1607.i, label %.critedge19.i

.lr.ph1607.i:                                     ; preds = %bytestream2_put_byte.exit1219.i, %.critedge35.i
  %.sroa.181.35 = phi i32 [ %.sroa.181.39, %.critedge35.i ], [ %.sroa.181.34, %bytestream2_put_byte.exit1219.i ] ; 4 uses
  %.sroa.0.43 = phi ptr [ %.sroa.0.48, %.critedge35.i ], [ %.sroa.0.42, %bytestream2_put_byte.exit1219.i ] ; 10 uses
  %.09231606.i = phi i32 [ %i.aun, %.critedge35.i ], [ 0, %bytestream2_put_byte.exit1219.i ]
  %.241605.i = phi i32 [ %.25.lcssa.i, %.critedge35.i ], [ %.09961632.i, %bytestream2_put_byte.exit1219.i ] ; 3 uses
  %.2410251604.i = phi i32 [ %.251026.lcssa.i, %.critedge35.i ], [ %.010011628.i, %bytestream2_put_byte.exit1219.i ] ; 4 uses
  %.2410741603.i = phi ptr [ %.251075.lcssa.i, %.critedge35.i ], [ %.010501616.i, %bytestream2_put_byte.exit1219.i ] ; 5 uses
  %.2411101602.i = phi ptr [ %.251111.lcssa.i, %.critedge35.i ], [ %.010861612.i, %bytestream2_put_byte.exit1219.i ] ; 10 uses
  %i.alu = sub nsw i32 %i.aw, %.2410251604.i      ; 9 uses
  %i.alv = call i32 @llvm.smin.i32(i32 %i.alu, i32 4)
  %i.alw = sub i32 %i.ay, %.241605.i              ; 23 uses
  %i.alx = call i32 @llvm.smin.i32(i32 %i.alw, i32 4) ; 9 uses
  %i.aly = icmp sgt i32 %i.alu, 0
  br i1 %i.aly, label %.preheader1305.lr.ph.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader1310.i, %.lr.ph1607.i
  %.sroa.181.37.ph = phi i32 [ %.sroa.181.35, %.lr.ph1607.i ], [ %.us-phi, %.preheader1310.i ]
  %.sroa.0.45.ph = phi ptr [ %.sroa.0.43, %.lr.ph1607.i ], [ %.us-phi361, %.preheader1310.i ]
  br label %.preheader.i

.preheader1305.lr.ph.i:                           ; preds = %.lr.ph1607.i
  %i.alz = icmp sgt i32 %i.alw, 0
  %i.ama = icmp slt i32 %i.alw, 4                 ; 4 uses
  br i1 %i.alz, label %.preheader1305.i.us, label %.preheader1305.i.preheader

.preheader1305.i.preheader:                       ; preds = %.preheader1305.lr.ph.i
  %i.amb = sub i32 4, %i.alx                      ; 4 uses
  %xtraiter584 = and i32 %i.amb, 1
  %lcmp.mod585.not = icmp eq i32 %xtraiter584, 0
  br i1 %lcmp.mod585.not, label %.preheader1305.i.new, label %.lr.ph1587.i.prol

.preheader1305.i.us:                              ; preds = %.preheader1305.lr.ph.i
  %.not.i1216.i.us = icmp eq i32 %.sroa.181.35, 0
  %i.amc = ptrtoint ptr %.sroa.0.43 to i64
  %i.amd = sub i64 %i.bz, %i.amc
  %i.ame = icmp sgt i64 %i.amd, 0
  %or.cond329.us = select i1 %.not.i1216.i.us, i1 %i.ame, i1 false ; 2 uses
  br i1 %or.cond329.us, label %bb.kg, label %bytestream2_put_byte.exit1217.i.us

bb.kg:                                            ; preds = %.preheader1305.i.us
  %i.amf = load i8, ptr %.2411101602.i, align 1, !tbaa !32
  store i8 %i.amf, ptr %.sroa.0.43, align 1, !tbaa !32
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 1
  br label %bytestream2_put_byte.exit1217.i.us

bytestream2_put_byte.exit1217.i.us:               ; preds = %bb.kg, %.preheader1305.i.us
  %.sroa.181.46.us = phi i32 [ 0, %bb.kg ], [ 1, %.preheader1305.i.us ]
  %.sroa.0.55.us = phi ptr [ %i.amg, %bb.kg ], [ %.sroa.0.43, %.preheader1305.i.us ] ; 5 uses
  %exitcond1760.not.i.us = icmp eq i32 %i.alw, 1
  br i1 %exitcond1760.not.i.us, label %.preheader1304.i.us, label %bb.kh

bb.kh:                                            ; preds = %bytestream2_put_byte.exit1217.i.us
  %i.amh = ptrtoint ptr %.sroa.0.55.us to i64
  %i.ami = sub i64 %i.bz, %i.amh
  %i.amj = icmp sgt i64 %i.ami, 0
  %or.cond329.us.1 = select i1 %or.cond329.us, i1 %i.amj, i1 false ; 2 uses
  br i1 %or.cond329.us.1, label %bb.ki, label %bytestream2_put_byte.exit1217.i.us.1

bb.ki:                                            ; preds = %bb.kh
  %i.amk = getelementptr i8, ptr %.2411101602.i, i64 1
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !32
  store i8 %i.aml, ptr %.sroa.0.55.us, align 1, !tbaa !32
  %i.amm = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.1

bytestream2_put_byte.exit1217.i.us.1:             ; preds = %bb.ki, %bb.kh
  %.sroa.181.46.us.1 = phi i32 [ 0, %bb.ki ], [ 1, %bb.kh ]
  %.sroa.0.55.us.1 = phi ptr [ %i.amm, %bb.ki ], [ %.sroa.0.55.us, %bb.kh ] ; 5 uses
  %exitcond1760.not.i.us.1 = icmp eq i32 %i.alw, 2
  br i1 %exitcond1760.not.i.us.1, label %.preheader1304.i.us, label %bb.kj

bb.kj:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.1
  %i.amn = ptrtoint ptr %.sroa.0.55.us.1 to i64
  %i.amo = sub i64 %i.bz, %i.amn
  %i.amp = icmp sgt i64 %i.amo, 0
  %or.cond329.us.2 = select i1 %or.cond329.us.1, i1 %i.amp, i1 false ; 2 uses
  br i1 %or.cond329.us.2, label %bb.kk, label %bytestream2_put_byte.exit1217.i.us.2

bb.kk:                                            ; preds = %bb.kj
  %i.amq = getelementptr i8, ptr %.2411101602.i, i64 2
  %i.amr = load i8, ptr %i.amq, align 1, !tbaa !32
  store i8 %i.amr, ptr %.sroa.0.55.us.1, align 1, !tbaa !32
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.1, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.2

bytestream2_put_byte.exit1217.i.us.2:             ; preds = %bb.kk, %bb.kj
  %.sroa.181.46.us.2 = phi i32 [ 0, %bb.kk ], [ 1, %bb.kj ]
  %.sroa.0.55.us.2 = phi ptr [ %i.ams, %bb.kk ], [ %.sroa.0.55.us.1, %bb.kj ] ; 5 uses
  %exitcond1760.not.i.us.2 = icmp eq i32 %i.alw, 3
  br i1 %exitcond1760.not.i.us.2, label %.preheader1304.i.us, label %bb.kl

bb.kl:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.2
  %i.amt = ptrtoint ptr %.sroa.0.55.us.2 to i64
  %i.amu = sub i64 %i.bz, %i.amt
  %i.amv = icmp sgt i64 %i.amu, 0
  %or.cond329.us.3 = select i1 %or.cond329.us.2, i1 %i.amv, i1 false
  br i1 %or.cond329.us.3, label %bb.km, label %.preheader1304.i.us

bb.km:                                            ; preds = %bb.kl
  %i.amw = getelementptr i8, ptr %.2411101602.i, i64 3
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !32
  store i8 %i.amx, ptr %.sroa.0.55.us.2, align 1, !tbaa !32
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.2, i64 1
  br label %.preheader1304.i.us

.preheader1304.i.us:                              ; preds = %bb.kl, %bb.km, %bytestream2_put_byte.exit1217.i.us.2, %bytestream2_put_byte.exit1217.i.us.1, %bytestream2_put_byte.exit1217.i.us
  %.sroa.181.46.us.lcssa = phi i32 [ %.sroa.181.46.us, %bytestream2_put_byte.exit1217.i.us ], [ %.sroa.181.46.us.1, %bytestream2_put_byte.exit1217.i.us.1 ], [ %.sroa.181.46.us.2, %bytestream2_put_byte.exit1217.i.us.2 ], [ 0, %bb.km ], [ 1, %bb.kl ] ; 2 uses
  %.sroa.0.55.us.lcssa = phi ptr [ %.sroa.0.55.us, %bytestream2_put_byte.exit1217.i.us ], [ %.sroa.0.55.us.1, %bytestream2_put_byte.exit1217.i.us.1 ], [ %.sroa.0.55.us.2, %bytestream2_put_byte.exit1217.i.us.2 ], [ %i.amy, %bb.km ], [ %.sroa.0.55.us.2, %bb.kl ] ; 5 uses
  br i1 %i.ama, label %.lr.ph1587.i.us, label %._crit_edge1588.i.us

.lr.ph1587.i.us:                                  ; preds = %.preheader1304.i.us
  %.not.i1214.i.us = icmp eq i32 %.sroa.181.46.us.lcssa, 0
  %i.amz = ptrtoint ptr %.sroa.0.55.us.lcssa to i64
  %i.ana = sub i64 %i.bz, %i.amz
  %i.anb = icmp sgt i64 %i.ana, 0
  %or.cond333.us = select i1 %.not.i1214.i.us, i1 %i.anb, i1 false ; 2 uses
  br i1 %or.cond333.us, label %bb.kn, label %bytestream2_put_byte.exit1215.i.us

bb.kn:                                            ; preds = %.lr.ph1587.i.us
  store i8 0, ptr %.sroa.0.55.us.lcssa, align 1, !tbaa !32
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.lcssa, i64 1
  br label %bytestream2_put_byte.exit1215.i.us

bytestream2_put_byte.exit1215.i.us:               ; preds = %bb.kn, %.lr.ph1587.i.us
  %.sroa.181.43.us = phi i32 [ 0, %bb.kn ], [ 1, %.lr.ph1587.i.us ]
  %.sroa.0.52.us = phi ptr [ %i.anc, %bb.kn ], [ %.sroa.0.55.us.lcssa, %.lr.ph1587.i.us ] ; 5 uses
  %exitcond1761.not.i.us = icmp eq i32 %i.alw, 3
  br i1 %exitcond1761.not.i.us, label %._crit_edge1588.i.us, label %.lr.ph1587.i.us.1

.lr.ph1587.i.us.1:                                ; preds = %bytestream2_put_byte.exit1215.i.us
  %i.and = ptrtoint ptr %.sroa.0.52.us to i64
  %i.ane = sub i64 %i.bz, %i.and
  %i.anf = icmp sgt i64 %i.ane, 0
  %or.cond333.us.1 = select i1 %or.cond333.us, i1 %i.anf, i1 false ; 2 uses
  br i1 %or.cond333.us.1, label %bb.ko, label %bytestream2_put_byte.exit1215.i.us.1

bb.ko:                                            ; preds = %.lr.ph1587.i.us.1
  store i8 0, ptr %.sroa.0.52.us, align 1, !tbaa !32
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.52.us, i64 1
  br label %bytestream2_put_byte.exit1215.i.us.1

bytestream2_put_byte.exit1215.i.us.1:             ; preds = %bb.ko, %.lr.ph1587.i.us.1
  %.sroa.181.43.us.1 = phi i32 [ 0, %bb.ko ], [ 1, %.lr.ph1587.i.us.1 ]
  %.sroa.0.52.us.1 = phi ptr [ %i.ang, %bb.ko ], [ %.sroa.0.52.us, %.lr.ph1587.i.us.1 ] ; 5 uses
  %exitcond1761.not.i.us.1 = icmp eq i32 %i.alw, 2
  br i1 %exitcond1761.not.i.us.1, label %._crit_edge1588.i.us, label %.lr.ph1587.i.us.2

.lr.ph1587.i.us.2:                                ; preds = %bytestream2_put_byte.exit1215.i.us.1
  %i.anh = ptrtoint ptr %.sroa.0.52.us.1 to i64
  %i.ani = sub i64 %i.bz, %i.anh
  %i.anj = icmp sgt i64 %i.ani, 0
  %or.cond333.us.2 = select i1 %or.cond333.us.1, i1 %i.anj, i1 false
  br i1 %or.cond333.us.2, label %bb.kp, label %._crit_edge1588.i.us

bb.kp:                                            ; preds = %.lr.ph1587.i.us.2
  store i8 0, ptr %.sroa.0.52.us.1, align 1, !tbaa !32
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.0.52.us.1, i64 1
  br label %._crit_edge1588.i.us

._crit_edge1588.i.us:                             ; preds = %bytestream2_put_byte.exit1215.i.us, %bytestream2_put_byte.exit1215.i.us.1, %bb.kp, %.lr.ph1587.i.us.2, %.preheader1304.i.us
  %.sroa.181.44.us = phi i32 [ %.sroa.181.46.us.lcssa, %.preheader1304.i.us ], [ %.sroa.181.43.us, %bytestream2_put_byte.exit1215.i.us ], [ %.sroa.181.43.us.1, %bytestream2_put_byte.exit1215.i.us.1 ], [ 0, %bb.kp ], [ 1, %.lr.ph1587.i.us.2 ] ; 2 uses
  %.sroa.0.53.us = phi ptr [ %.sroa.0.55.us.lcssa, %.preheader1304.i.us ], [ %.sroa.0.52.us, %bytestream2_put_byte.exit1215.i.us ], [ %.sroa.0.52.us.1, %bytestream2_put_byte.exit1215.i.us.1 ], [ %i.ank, %bb.kp ], [ %.sroa.0.52.us.1, %.lr.ph1587.i.us.2 ] ; 5 uses
  %exitcond1766.not.i.us = icmp eq i32 %i.alu, 1
end_hunk_2
begin_hunk_3_@smc_encode_frame:bb.a
bb.lm:                                            ; preds = %bb.ll
  %i.aqo = getelementptr i8, ptr %i.aqf, i64 1
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !32
  store i8 %i.aqp, ptr %.sroa.0.55.us.3619, align 1, !tbaa !32
  %i.aqq = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.3619, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.1.3

bytestream2_put_byte.exit1217.i.us.1.3:           ; preds = %bb.lm, %bb.ll
  %.sroa.181.46.us.1.3 = phi i32 [ 0, %bb.lm ], [ 1, %bb.ll ]
  %.sroa.0.55.us.1.3 = phi ptr [ %i.aqq, %bb.lm ], [ %.sroa.0.55.us.3619, %bb.ll ] ; 5 uses
  %exitcond1760.not.i.us.1.3 = icmp eq i32 %i.alw, 2
  br i1 %exitcond1760.not.i.us.1.3, label %.preheader1304.i.us.3, label %bb.ln

bb.ln:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.1.3
  %i.aqr = ptrtoint ptr %.sroa.0.55.us.1.3 to i64
  %i.aqs = sub i64 %i.bz, %i.aqr
  %i.aqt = icmp sgt i64 %i.aqs, 0
  %or.cond329.us.2.3 = select i1 %or.cond329.us.1.3, i1 %i.aqt, i1 false ; 2 uses
  br i1 %or.cond329.us.2.3, label %bb.lo, label %bytestream2_put_byte.exit1217.i.us.2.3

bb.lo:                                            ; preds = %bb.ln
  %i.aqu = getelementptr i8, ptr %i.aqf, i64 2
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !32
  store i8 %i.aqv, ptr %.sroa.0.55.us.1.3, align 1, !tbaa !32
  %i.aqw = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.1.3, i64 1
  br label %bytestream2_put_byte.exit1217.i.us.2.3

bytestream2_put_byte.exit1217.i.us.2.3:           ; preds = %bb.lo, %bb.ln
  %.sroa.181.46.us.2.3 = phi i32 [ 0, %bb.lo ], [ 1, %bb.ln ]
  %.sroa.0.55.us.2.3 = phi ptr [ %i.aqw, %bb.lo ], [ %.sroa.0.55.us.1.3, %bb.ln ] ; 5 uses
  %exitcond1760.not.i.us.2.3 = icmp eq i32 %i.alw, 3
  br i1 %exitcond1760.not.i.us.2.3, label %.preheader1304.i.us.3, label %bb.lp

bb.lp:                                            ; preds = %bytestream2_put_byte.exit1217.i.us.2.3
  %i.aqx = ptrtoint ptr %.sroa.0.55.us.2.3 to i64
  %i.aqy = sub i64 %i.bz, %i.aqx
  %i.aqz = icmp sgt i64 %i.aqy, 0
  %or.cond329.us.3.3 = select i1 %or.cond329.us.2.3, i1 %i.aqz, i1 false
  br i1 %or.cond329.us.3.3, label %bb.lq, label %.preheader1304.i.us.3

bb.lq:                                            ; preds = %bb.lp
  %i.ara = getelementptr i8, ptr %i.aqf, i64 3
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !32
  store i8 %i.arb, ptr %.sroa.0.55.us.2.3, align 1, !tbaa !32
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.2.3, i64 1
  br label %.preheader1304.i.us.3

.preheader1304.i.us.3:                            ; preds = %bb.lp, %bb.lq, %bytestream2_put_byte.exit1217.i.us.2.3, %bytestream2_put_byte.exit1217.i.us.1.3, %bytestream2_put_byte.exit1217.i.us.3620
  %.sroa.181.46.us.lcssa.3 = phi i32 [ %.sroa.181.46.us.3618, %bytestream2_put_byte.exit1217.i.us.3620 ], [ %.sroa.181.46.us.1.3, %bytestream2_put_byte.exit1217.i.us.1.3 ], [ %.sroa.181.46.us.2.3, %bytestream2_put_byte.exit1217.i.us.2.3 ], [ 0, %bb.lq ], [ 1, %bb.lp ] ; 2 uses
  %.sroa.0.55.us.lcssa.3 = phi ptr [ %.sroa.0.55.us.3619, %bytestream2_put_byte.exit1217.i.us.3620 ], [ %.sroa.0.55.us.1.3, %bytestream2_put_byte.exit1217.i.us.1.3 ], [ %.sroa.0.55.us.2.3, %bytestream2_put_byte.exit1217.i.us.2.3 ], [ %i.arc, %bb.lq ], [ %.sroa.0.55.us.2.3, %bb.lp ] ; 5 uses
  br i1 %i.ama, label %.lr.ph1587.i.us.3, label %.preheader1310.i

.lr.ph1587.i.us.3:                                ; preds = %.preheader1304.i.us.3
  %.not.i1214.i.us.3 = icmp eq i32 %.sroa.181.46.us.lcssa.3, 0
  %i.ard = ptrtoint ptr %.sroa.0.55.us.lcssa.3 to i64
  %i.are = sub i64 %i.bz, %i.ard
  %i.arf = icmp sgt i64 %i.are, 0
  %or.cond333.us.3 = select i1 %.not.i1214.i.us.3, i1 %i.arf, i1 false ; 2 uses
  br i1 %or.cond333.us.3, label %bb.lr, label %bytestream2_put_byte.exit1215.i.us.3

bb.lr:                                            ; preds = %.lr.ph1587.i.us.3
  store i8 0, ptr %.sroa.0.55.us.lcssa.3, align 1, !tbaa !32
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.0.55.us.lcssa.3, i64 1
  br label %bytestream2_put_byte.exit1215.i.us.3

bytestream2_put_byte.exit1215.i.us.3:             ; preds = %bb.lr, %.lr.ph1587.i.us.3
  %.sroa.181.43.us.3 = phi i32 [ 0, %bb.lr ], [ 1, %.lr.ph1587.i.us.3 ]
  %.sroa.0.52.us.3 = phi ptr [ %i.arg, %bb.lr ], [ %.sroa.0.55.us.lcssa.3, %.lr.ph1587.i.us.3 ] ; 5 uses
  %exitcond1761.not.i.us.3 = icmp eq i32 %i.alw, 3
  br i1 %exitcond1761.not.i.us.3, label %.preheader1310.i, label %.lr.ph1587.i.us.1.3

.lr.ph1587.i.us.1.3:                              ; preds = %bytestream2_put_byte.exit1215.i.us.3
  %i.arh = ptrtoint ptr %.sroa.0.52.us.3 to i64
  %i.ari = sub i64 %i.bz, %i.arh
  %i.arj = icmp sgt i64 %i.ari, 0
  %or.cond333.us.1.3 = select i1 %or.cond333.us.3, i1 %i.arj, i1 false ; 2 uses
  br i1 %or.cond333.us.1.3, label %bb.ls, label %bytestream2_put_byte.exit1215.i.us.1.3

bb.ls:                                            ; preds = %.lr.ph1587.i.us.1.3
  store i8 0, ptr %.sroa.0.52.us.3, align 1, !tbaa !32
  %i.ark = getelementptr inbounds nuw i8, ptr %.sroa.0.52.us.3, i64 1
  br label %bytestream2_put_byte.exit1215.i.us.1.3

bytestream2_put_byte.exit1215.i.us.1.3:           ; preds = %bb.ls, %.lr.ph1587.i.us.1.3
  %.sroa.181.43.us.1.3 = phi i32 [ 0, %bb.ls ], [ 1, %.lr.ph1587.i.us.1.3 ]
  %.sroa.0.52.us.1.3 = phi ptr [ %i.ark, %bb.ls ], [ %.sroa.0.52.us.3, %.lr.ph1587.i.us.1.3 ] ; 5 uses
  %exitcond1761.not.i.us.1.3 = icmp eq i32 %i.alw, 2
  br i1 %exitcond1761.not.i.us.1.3, label %.preheader1310.i, label %.lr.ph1587.i.us.2.3

.lr.ph1587.i.us.2.3:                              ; preds = %bytestream2_put_byte.exit1215.i.us.1.3
  %i.arl = ptrtoint ptr %.sroa.0.52.us.1.3 to i64
  %i.arm = sub i64 %i.bz, %i.arl
  %i.arn = icmp sgt i64 %i.arm, 0
  %or.cond333.us.2.3 = select i1 %or.cond333.us.1.3, i1 %i.arn, i1 false
  br i1 %or.cond333.us.2.3, label %bb.lt, label %.preheader1310.i

bb.lt:                                            ; preds = %.lr.ph1587.i.us.2.3
  store i8 0, ptr %.sroa.0.52.us.1.3, align 1, !tbaa !32
  %i.aro = getelementptr inbounds nuw i8, ptr %.sroa.0.52.us.1.3, i64 1
  br label %.preheader1310.i

.preheader1310.i:                                 ; preds = %bytestream2_put_byte.exit1215.i.1.3, %._crit_edge1588.i.loopexit, %._crit_edge1588.i.loopexit.1, %._crit_edge1588.i.loopexit.2, %._crit_edge1588.i.us, %._crit_edge1588.i.us.1, %._crit_edge1588.i.us.2, %bytestream2_put_byte.exit1215.i.us.3, %bytestream2_put_byte.exit1215.i.us.1.3, %bb.lt, %.lr.ph1587.i.us.2.3, %.preheader1304.i.us.3
  %.us-phi = phi i32 [ 1, %.lr.ph1587.i.us.2.3 ], [ %.sroa.181.44.us, %._crit_edge1588.i.us ], [ %.sroa.181.44.us.1, %._crit_edge1588.i.us.1 ], [ %.sroa.181.44.us.2, %._crit_edge1588.i.us.2 ], [ %.sroa.181.46.us.lcssa.3, %.preheader1304.i.us.3 ], [ %.sroa.181.43.us.3, %bytestream2_put_byte.exit1215.i.us.3 ], [ %.sroa.181.43.us.1.3, %bytestream2_put_byte.exit1215.i.us.1.3 ], [ 0, %bb.lt ], [ %.sroa.181.43.1, %._crit_edge1588.i.loopexit ], [ %.sroa.181.43.1.1, %._crit_edge1588.i.loopexit.1 ], [ %.sroa.181.43.1.2, %._crit_edge1588.i.loopexit.2 ], [ %.sroa.181.43.1.3, %bytestream2_put_byte.exit1215.i.1.3 ] ; 2 uses
  %.us-phi361 = phi ptr [ %.sroa.0.52.us.1.3, %.lr.ph1587.i.us.2.3 ], [ %.sroa.0.53.us, %._crit_edge1588.i.us ], [ %.sroa.0.53.us.1, %._crit_edge1588.i.us.1 ], [ %.sroa.0.53.us.2, %._crit_edge1588.i.us.2 ], [ %.sroa.0.55.us.lcssa.3, %.preheader1304.i.us.3 ], [ %.sroa.0.52.us.3, %bytestream2_put_byte.exit1215.i.us.3 ], [ %.sroa.0.52.us.1.3, %bytestream2_put_byte.exit1215.i.us.1.3 ], [ %i.aro, %bb.lt ], [ %.sroa.0.52.1, %._crit_edge1588.i.loopexit ], [ %.sroa.0.52.1.1, %._crit_edge1588.i.loopexit.1 ], [ %.sroa.0.52.1.2, %._crit_edge1588.i.loopexit.2 ], [ %.sroa.0.52.1.3, %bytestream2_put_byte.exit1215.i.1.3 ] ; 2 uses
  %i.arp = icmp slt i32 %i.alu, 4
  br i1 %i.arp, label %.preheader.i.preheader, label %.preheader1309.i

.lr.ph1587.i.prol:                                ; preds = %.preheader1305.i.preheader
  %.not.i1214.i.prol = icmp eq i32 %.sroa.181.35, 0
  %i.arq = ptrtoint ptr %.sroa.0.43 to i64
  %i.arr = sub i64 %i.bz, %i.arq
  %i.ars = icmp sgt i64 %i.arr, 0
  %or.cond333.prol = select i1 %.not.i1214.i.prol, i1 %i.ars, i1 false
  br i1 %or.cond333.prol, label %bb.lu, label %bytestream2_put_byte.exit1215.i.prol

bb.lu:                                            ; preds = %.lr.ph1587.i.prol
  store i8 0, ptr %.sroa.0.43, align 1, !tbaa !32
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.0.43, i64 1
  br label %bytestream2_put_byte.exit1215.i.prol

bytestream2_put_byte.exit1215.i.prol:             ; preds = %bb.lu, %.lr.ph1587.i.prol
  %.sroa.181.43.prol = phi i32 [ 0, %bb.lu ], [ 1, %.lr.ph1587.i.prol ]
  %.sroa.0.52.prol = phi ptr [ %i.art, %bb.lu ], [ %.sroa.0.43, %.lr.ph1587.i.prol ]
  %i.aru = add nsw i32 %i.alx, 1
  br label %.preheader1305.i.new

.preheader1305.i.new:                             ; preds = %.preheader1305.i.preheader, %bytestream2_put_byte.exit1215.i.prol
  %.sroa.181.42.unr = phi i32 [ %.sroa.181.35, %.preheader1305.i.preheader ], [ %.sroa.181.43.prol, %bytestream2_put_byte.exit1215.i.prol ]
  %.sroa.0.51.unr = phi ptr [ %.sroa.0.43, %.preheader1305.i.preheader ], [ %.sroa.0.52.prol, %bytestream2_put_byte.exit1215.i.prol ]
  %.09201586.i.unr = phi i32 [ %i.alx, %.preheader1305.i.preheader ], [ %i.aru, %bytestream2_put_byte.exit1215.i.prol ]
  br label %.lr.ph1587.i

._crit_edge1588.i.loopexit:                       ; preds = %bytestream2_put_byte.exit1215.i.1
  %exitcond1766.not.i = icmp eq i32 %i.alu, 1
  br i1 %exitcond1766.not.i, label %.preheader1310.i, label %.preheader1305.i.1

.preheader1305.i.1:                               ; preds = %._crit_edge1588.i.loopexit
  %xtraiter584.1 = and i32 %i.amb, 1
  %lcmp.mod585.1.not = icmp eq i32 %xtraiter584.1, 0
  br i1 %lcmp.mod585.1.not, label %.preheader1305.i.new.1, label %.lr.ph1587.i.prol.1

.lr.ph1587.i.prol.1:                              ; preds = %.preheader1305.i.1
  %.not.i1214.i.prol.1 = icmp eq i32 %.sroa.181.43.1, 0
  %i.arv = ptrtoint ptr %.sroa.0.52.1 to i64
  %i.arw = sub i64 %i.bz, %i.arv
  %i.arx = icmp sgt i64 %i.arw, 0
  %or.cond333.prol.1 = select i1 %.not.i1214.i.prol.1, i1 %i.arx, i1 false
  br i1 %or.cond333.prol.1, label %bb.lv, label %bytestream2_put_byte.exit1215.i.prol.1

bb.lv:                                            ; preds = %.lr.ph1587.i.prol.1
  store i8 0, ptr %.sroa.0.52.1, align 1, !tbaa !32
  %i.ary = getelementptr inbounds nuw i8, ptr %.sroa.0.52.1, i64 1
  br label %bytestream2_put_byte.exit1215.i.prol.1

bytestream2_put_byte.exit1215.i.prol.1:           ; preds = %bb.lv, %.lr.ph1587.i.prol.1
  %.sroa.181.43.prol.1 = phi i32 [ 0, %bb.lv ], [ 1, %.lr.ph1587.i.prol.1 ]
  %.sroa.0.52.prol.1 = phi ptr [ %i.ary, %bb.lv ], [ %.sroa.0.52.1, %.lr.ph1587.i.prol.1 ]
  %i.arz = add nsw i32 %i.alx, 1
  br label %.preheader1305.i.new.1

.preheader1305.i.new.1:                           ; preds = %.preheader1305.i.1, %bytestream2_put_byte.exit1215.i.prol.1
  %.sroa.181.42.unr.1 = phi i32 [ %.sroa.181.43.1, %.preheader1305.i.1 ], [ %.sroa.181.43.prol.1, %bytestream2_put_byte.exit1215.i.prol.1 ]
  %.sroa.0.51.unr.1 = phi ptr [ %.sroa.0.52.1, %.preheader1305.i.1 ], [ %.sroa.0.52.prol.1, %bytestream2_put_byte.exit1215.i.prol.1 ]
  %.09201586.i.unr.1 = phi i32 [ %i.alx, %.preheader1305.i.1 ], [ %i.arz, %bytestream2_put_byte.exit1215.i.prol.1 ]
  br label %.lr.ph1587.i.1

.lr.ph1587.i.1:                                   ; preds = %bytestream2_put_byte.exit1215.i.1.1, %.preheader1305.i.new.1
  %.sroa.181.42.1 = phi i32 [ %.sroa.181.42.unr.1, %.preheader1305.i.new.1 ], [ %.sroa.181.43.1.1, %bytestream2_put_byte.exit1215.i.1.1 ]
  %.sroa.0.51.1 = phi ptr [ %.sroa.0.51.unr.1, %.preheader1305.i.new.1 ], [ %.sroa.0.52.1.1, %bytestream2_put_byte.exit1215.i.1.1 ] ; 4 uses
  %.09201586.i.1 = phi i32 [ %.09201586.i.unr.1, %.preheader1305.i.new.1 ], [ %i.asi, %bytestream2_put_byte.exit1215.i.1.1 ]
  %.not.i1214.i.1586 = icmp eq i32 %.sroa.181.42.1, 0
  %i.asa = ptrtoint ptr %.sroa.0.51.1 to i64
  %i.asb = sub i64 %i.bz, %i.asa
  %i.asc = icmp sgt i64 %i.asb, 0
  %or.cond333.1587 = select i1 %.not.i1214.i.1586, i1 %i.asc, i1 false ; 2 uses
  br i1 %or.cond333.1587, label %bb.lw, label %bytestream2_put_byte.exit1215.i.1590

bb.lw:                                            ; preds = %.lr.ph1587.i.1
  store i8 0, ptr %.sroa.0.51.1, align 1, !tbaa !32
  %i.asd = getelementptr inbounds nuw i8, ptr %.sroa.0.51.1, i64 1
  br label %bytestream2_put_byte.exit1215.i.1590

bytestream2_put_byte.exit1215.i.1590:             ; preds = %bb.lw, %.lr.ph1587.i.1
  %.sroa.0.52.1589 = phi ptr [ %i.asd, %bb.lw ], [ %.sroa.0.51.1, %.lr.ph1587.i.1 ] ; 4 uses
  %i.ase = ptrtoint ptr %.sroa.0.52.1589 to i64
  %i.asf = sub i64 %i.bz, %i.ase
  %i.asg = icmp sgt i64 %i.asf, 0
  %or.cond333.1.1 = select i1 %or.cond333.1587, i1 %i.asg, i1 false
  br i1 %or.cond333.1.1, label %bb.lx, label %bytestream2_put_byte.exit1215.i.1.1

bb.lx:                                            ; preds = %bytestream2_put_byte.exit1215.i.1590
  store i8 0, ptr %.sroa.0.52.1589, align 1, !tbaa !32
  %i.ash = getelementptr inbounds nuw i8, ptr %.sroa.0.52.1589, i64 1
  br label %bytestream2_put_byte.exit1215.i.1.1

bytestream2_put_byte.exit1215.i.1.1:              ; preds = %bb.lx, %bytestream2_put_byte.exit1215.i.1590
  %.sroa.181.43.1.1 = phi i32 [ 0, %bb.lx ], [ 1, %bytestream2_put_byte.exit1215.i.1590 ] ; 4 uses
  %.sroa.0.52.1.1 = phi ptr [ %i.ash, %bb.lx ], [ %.sroa.0.52.1589, %bytestream2_put_byte.exit1215.i.1590 ] ; 7 uses
  %i.asi = add i32 %.09201586.i.1, 2              ; 2 uses
  %exitcond1761.not.i.1.1 = icmp eq i32 %i.asi, 4
  br i1 %exitcond1761.not.i.1.1, label %._crit_edge1588.i.loopexit.1, label %.lr.ph1587.i.1, !llvm.loop !45

._crit_edge1588.i.loopexit.1:                     ; preds = %bytestream2_put_byte.exit1215.i.1.1
  %exitcond1766.not.i.1 = icmp eq i32 %i.alu, 2
  br i1 %exitcond1766.not.i.1, label %.preheader1310.i, label %.preheader1305.i.2

.preheader1305.i.2:                               ; preds = %._crit_edge1588.i.loopexit.1
  %xtraiter584.2 = and i32 %i.amb, 1
  %lcmp.mod585.2.not = icmp eq i32 %xtraiter584.2, 0
  br i1 %lcmp.mod585.2.not, label %.preheader1305.i.new.2, label %.lr.ph1587.i.prol.2

.lr.ph1587.i.prol.2:                              ; preds = %.preheader1305.i.2
  %.not.i1214.i.prol.2 = icmp eq i32 %.sroa.181.43.1.1, 0
  %i.asj = ptrtoint ptr %.sroa.0.52.1.1 to i64
  %i.ask = sub i64 %i.bz, %i.asj
  %i.asl = icmp sgt i64 %i.ask, 0
  %or.cond333.prol.2 = select i1 %.not.i1214.i.prol.2, i1 %i.asl, i1 false
  br i1 %or.cond333.prol.2, label %bb.ly, label %bytestream2_put_byte.exit1215.i.prol.2

bb.ly:                                            ; preds = %.lr.ph1587.i.prol.2
  store i8 0, ptr %.sroa.0.52.1.1, align 1, !tbaa !32
  %i.asm = getelementptr inbounds nuw i8, ptr %.sroa.0.52.1.1, i64 1
  br label %bytestream2_put_byte.exit1215.i.prol.2

bytestream2_put_byte.exit1215.i.prol.2:           ; preds = %bb.ly, %.lr.ph1587.i.prol.2
  %.sroa.181.43.prol.2 = phi i32 [ 0, %bb.ly ], [ 1, %.lr.ph1587.i.prol.2 ]
  %.sroa.0.52.prol.2 = phi ptr [ %i.asm, %bb.ly ], [ %.sroa.0.52.1.1, %.lr.ph1587.i.prol.2 ]
  %i.asn = add nsw i32 %i.alx, 1
  br label %.preheader1305.i.new.2

.preheader1305.i.new.2:                           ; preds = %.preheader1305.i.2, %bytestream2_put_byte.exit1215.i.prol.2
  %.sroa.181.42.unr.2 = phi i32 [ %.sroa.181.43.1.1, %.preheader1305.i.2 ], [ %.sroa.181.43.prol.2, %bytestream2_put_byte.exit1215.i.prol.2 ]
  %.sroa.0.51.unr.2 = phi ptr [ %.sroa.0.52.1.1, %.preheader1305.i.2 ], [ %.sroa.0.52.prol.2, %bytestream2_put_byte.exit1215.i.prol.2 ]
  %.09201586.i.unr.2 = phi i32 [ %i.alx, %.preheader1305.i.2 ], [ %i.asn, %bytestream2_put_byte.exit1215.i.prol.2 ]
  br label %.lr.ph1587.i.2

.lr.ph1587.i.2:                                   ; preds = %bytestream2_put_byte.exit1215.i.1.2, %.preheader1305.i.new.2
  %.sroa.181.42.2 = phi i32 [ %.sroa.181.42.unr.2, %.preheader1305.i.new.2 ], [ %.sroa.181.43.1.2, %bytestream2_put_byte.exit1215.i.1.2 ]
  %.sroa.0.51.2 = phi ptr [ %.sroa.0.51.unr.2, %.preheader1305.i.new.2 ], [ %.sroa.0.52.1.2, %bytestream2_put_byte.exit1215.i.1.2 ] ; 4 uses
  %.09201586.i.2 = phi i32 [ %.09201586.i.unr.2, %.preheader1305.i.new.2 ], [ %i.asw, %bytestream2_put_byte.exit1215.i.1.2 ]
  %.not.i1214.i.2 = icmp eq i32 %.sroa.181.42.2, 0
  %i.aso = ptrtoint ptr %.sroa.0.51.2 to i64
  %i.asp = sub i64 %i.bz, %i.aso
  %i.asq = icmp sgt i64 %i.asp, 0
  %or.cond333.2 = select i1 %.not.i1214.i.2, i1 %i.asq, i1 false ; 2 uses
  br i1 %or.cond333.2, label %bb.lz, label %bytestream2_put_byte.exit1215.i.2

bb.lz:                                            ; preds = %.lr.ph1587.i.2
  store i8 0, ptr %.sroa.0.51.2, align 1, !tbaa !32
  %i.asr = getelementptr inbounds nuw i8, ptr %.sroa.0.51.2, i64 1
  br label %bytestream2_put_byte.exit1215.i.2

bytestream2_put_byte.exit1215.i.2:                ; preds = %bb.lz, %.lr.ph1587.i.2
  %.sroa.0.52.2 = phi ptr [ %i.asr, %bb.lz ], [ %.sroa.0.51.2, %.lr.ph1587.i.2 ] ; 4 uses
  %i.ass = ptrtoint ptr %.sroa.0.52.2 to i64
  %i.ast = sub i64 %i.bz, %i.ass
  %i.asu = icmp sgt i64 %i.ast, 0
  %or.cond333.1.2 = select i1 %or.cond333.2, i1 %i.asu, i1 false
  br i1 %or.cond333.1.2, label %bb.ma, label %bytestream2_put_byte.exit1215.i.1.2

bb.ma:                                            ; preds = %bytestream2_put_byte.exit1215.i.2
  store i8 0, ptr %.sroa.0.52.2, align 1, !tbaa !32
  %i.asv = getelementptr inbounds nuw i8, ptr %.sroa.0.52.2, i64 1
  br label %bytestream2_put_byte.exit1215.i.1.2

bytestream2_put_byte.exit1215.i.1.2:              ; preds = %bb.ma, %bytestream2_put_byte.exit1215.i.2
  %.sroa.181.43.1.2 = phi i32 [ 0, %bb.ma ], [ 1, %bytestream2_put_byte.exit1215.i.2 ] ; 4 uses
  %.sroa.0.52.1.2 = phi ptr [ %i.asv, %bb.ma ], [ %.sroa.0.52.2, %bytestream2_put_byte.exit1215.i.2 ] ; 7 uses
  %i.asw = add i32 %.09201586.i.2, 2              ; 2 uses
  %exitcond1761.not.i.1.2 = icmp eq i32 %i.asw, 4
  br i1 %exitcond1761.not.i.1.2, label %._crit_edge1588.i.loopexit.2, label %.lr.ph1587.i.2, !llvm.loop !45

._crit_edge1588.i.loopexit.2:                     ; preds = %bytestream2_put_byte.exit1215.i.1.2
  %exitcond1766.not.i.2 = icmp eq i32 %i.alu, 3
  br i1 %exitcond1766.not.i.2, label %.preheader1310.i, label %.preheader1305.i.3

.preheader1305.i.3:                               ; preds = %._crit_edge1588.i.loopexit.2
  %xtraiter584.3 = and i32 %i.amb, 1
  %lcmp.mod585.3.not = icmp eq i32 %xtraiter584.3, 0
  br i1 %lcmp.mod585.3.not, label %.preheader1305.i.new.3, label %.lr.ph1587.i.prol.3

.lr.ph1587.i.prol.3:                              ; preds = %.preheader1305.i.3
  %.not.i1214.i.prol.3 = icmp eq i32 %.sroa.181.43.1.2, 0
  %i.asx = ptrtoint ptr %.sroa.0.52.1.2 to i64
  %i.asy = sub i64 %i.bz, %i.asx
  %i.asz = icmp sgt i64 %i.asy, 0
  %or.cond333.prol.3 = select i1 %.not.i1214.i.prol.3, i1 %i.asz, i1 false
  br i1 %or.cond333.prol.3, label %bb.mb, label %bytestream2_put_byte.exit1215.i.prol.3

bb.mb:                                            ; preds = %.lr.ph1587.i.prol.3
  store i8 0, ptr %.sroa.0.52.1.2, align 1, !tbaa !32
  %i.ata = getelementptr inbounds nuw i8, ptr %.sroa.0.52.1.2, i64 1
  br label %bytestream2_put_byte.exit1215.i.prol.3

bytestream2_put_byte.exit1215.i.prol.3:           ; preds = %bb.mb, %.lr.ph1587.i.prol.3
  %.sroa.181.43.prol.3 = phi i32 [ 0, %bb.mb ], [ 1, %.lr.ph1587.i.prol.3 ]
  %.sroa.0.52.prol.3 = phi ptr [ %i.ata, %bb.mb ], [ %.sroa.0.52.1.2, %.lr.ph1587.i.prol.3 ]
  %i.atb = add nsw i32 %i.alx, 1
  br label %.preheader1305.i.new.3

.preheader1305.i.new.3:                           ; preds = %.preheader1305.i.3, %bytestream2_put_byte.exit1215.i.prol.3
  %.sroa.181.42.unr.3 = phi i32 [ %.sroa.181.43.1.2, %.preheader1305.i.3 ], [ %.sroa.181.43.prol.3, %bytestream2_put_byte.exit1215.i.prol.3 ]
  %.sroa.0.51.unr.3 = phi ptr [ %.sroa.0.52.1.2, %.preheader1305.i.3 ], [ %.sroa.0.52.prol.3, %bytestream2_put_byte.exit1215.i.prol.3 ]
  %.09201586.i.unr.3 = phi i32 [ %i.alx, %.preheader1305.i.3 ], [ %i.atb, %bytestream2_put_byte.exit1215.i.prol.3 ]
  br label %.lr.ph1587.i.3

.lr.ph1587.i.3:                                   ; preds = %bytestream2_put_byte.exit1215.i.1.3, %.preheader1305.i.new.3
  %.sroa.181.42.3 = phi i32 [ %.sroa.181.42.unr.3, %.preheader1305.i.new.3 ], [ %.sroa.181.43.1.3, %bytestream2_put_byte.exit1215.i.1.3 ]
  %.sroa.0.51.3 = phi ptr [ %.sroa.0.51.unr.3, %.preheader1305.i.new.3 ], [ %.sroa.0.52.1.3, %bytestream2_put_byte.exit1215.i.1.3 ] ; 4 uses
  %.09201586.i.3 = phi i32 [ %.09201586.i.unr.3, %.preheader1305.i.new.3 ], [ %i.atk, %bytestream2_put_byte.exit1215.i.1.3 ]
  %.not.i1214.i.3 = icmp eq i32 %.sroa.181.42.3, 0
  %i.atc = ptrtoint ptr %.sroa.0.51.3 to i64
  %i.atd = sub i64 %i.bz, %i.atc
  %i.ate = icmp sgt i64 %i.atd, 0
  %or.cond333.3 = select i1 %.not.i1214.i.3, i1 %i.ate, i1 false ; 2 uses
  br i1 %or.cond333.3, label %bb.mc, label %bytestream2_put_byte.exit1215.i.3

bb.mc:                                            ; preds = %.lr.ph1587.i.3
  store i8 0, ptr %.sroa.0.51.3, align 1, !tbaa !32
  %i.atf = getelementptr inbounds nuw i8, ptr %.sroa.0.51.3, i64 1
  br label %bytestream2_put_byte.exit1215.i.3

bytestream2_put_byte.exit1215.i.3:                ; preds = %bb.mc, %.lr.ph1587.i.3
  %.sroa.0.52.3 = phi ptr [ %i.atf, %bb.mc ], [ %.sroa.0.51.3, %.lr.ph1587.i.3 ] ; 4 uses
  %i.atg = ptrtoint ptr %.sroa.0.52.3 to i64
  %i.ath = sub i64 %i.bz, %i.atg
  %i.ati = icmp sgt i64 %i.ath, 0
  %or.cond333.1.3 = select i1 %or.cond333.3, i1 %i.ati, i1 false
  br i1 %or.cond333.1.3, label %bb.md, label %bytestream2_put_byte.exit1215.i.1.3

bb.md:                                            ; preds = %bytestream2_put_byte.exit1215.i.3
  store i8 0, ptr %.sroa.0.52.3, align 1, !tbaa !32
  %i.atj = getelementptr inbounds nuw i8, ptr %.sroa.0.52.3, i64 1
  br label %bytestream2_put_byte.exit1215.i.1.3

bytestream2_put_byte.exit1215.i.1.3:              ; preds = %bb.md, %bytestream2_put_byte.exit1215.i.3
  %.sroa.181.43.1.3 = phi i32 [ 0, %bb.md ], [ 1, %bytestream2_put_byte.exit1215.i.3 ] ; 2 uses
  %.sroa.0.52.1.3 = phi ptr [ %i.atj, %bb.md ], [ %.sroa.0.52.3, %bytestream2_put_byte.exit1215.i.3 ] ; 2 uses
  %i.atk = add i32 %.09201586.i.3, 2              ; 2 uses
  %exitcond1761.not.i.1.3 = icmp eq i32 %i.atk, 4
  br i1 %exitcond1761.not.i.1.3, label %.preheader1310.i, label %.lr.ph1587.i.3, !llvm.loop !45

.lr.ph1587.i:                                     ; preds = %bytestream2_put_byte.exit1215.i.1, %.preheader1305.i.new
  %.sroa.181.42 = phi i32 [ %.sroa.181.42.unr, %.preheader1305.i.new ], [ %.sroa.181.43.1, %bytestream2_put_byte.exit1215.i.1 ]
  %.sroa.0.51 = phi ptr [ %.sroa.0.51.unr, %.preheader1305.i.new ], [ %.sroa.0.52.1, %bytestream2_put_byte.exit1215.i.1 ] ; 4 uses
  %.09201586.i = phi i32 [ %.09201586.i.unr, %.preheader1305.i.new ], [ %i.att, %bytestream2_put_byte.exit1215.i.1 ]
  %.not.i1214.i = icmp eq i32 %.sroa.181.42, 0
  %i.atl = ptrtoint ptr %.sroa.0.51 to i64
  %i.atm = sub i64 %i.bz, %i.atl
  %i.atn = icmp sgt i64 %i.atm, 0
  %or.cond333 = select i1 %.not.i1214.i, i1 %i.atn, i1 false ; 2 uses
  br i1 %or.cond333, label %bb.me, label %bytestream2_put_byte.exit1215.i

bb.me:                                            ; preds = %.lr.ph1587.i
  store i8 0, ptr %.sroa.0.51, align 1, !tbaa !32
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0.51, i64 1
  br label %bytestream2_put_byte.exit1215.i

bytestream2_put_byte.exit1215.i:                  ; preds = %.lr.ph1587.i, %bb.me
  %.sroa.0.52 = phi ptr [ %i.ato, %bb.me ], [ %.sroa.0.51, %.lr.ph1587.i ] ; 4 uses
  %i.atp = ptrtoint ptr %.sroa.0.52 to i64
  %i.atq = sub i64 %i.bz, %i.atp
  %i.atr = icmp sgt i64 %i.atq, 0
  %or.cond333.1 = select i1 %or.cond333, i1 %i.atr, i1 false
  br i1 %or.cond333.1, label %bb.mf, label %bytestream2_put_byte.exit1215.i.1

bb.mf:                                            ; preds = %bytestream2_put_byte.exit1215.i
  store i8 0, ptr %.sroa.0.52, align 1, !tbaa !32
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0.52, i64 1
  br label %bytestream2_put_byte.exit1215.i.1

bytestream2_put_byte.exit1215.i.1:                ; preds = %bb.mf, %bytestream2_put_byte.exit1215.i
  %.sroa.181.43.1 = phi i32 [ 0, %bb.mf ], [ 1, %bytestream2_put_byte.exit1215.i ] ; 4 uses
  %.sroa.0.52.1 = phi ptr [ %i.ats, %bb.mf ], [ %.sroa.0.52, %bytestream2_put_byte.exit1215.i ] ; 7 uses
  %i.att = add i32 %.09201586.i, 2                ; 2 uses
  %exitcond1761.not.i.1 = icmp eq i32 %i.att, 4
  br i1 %exitcond1761.not.i.1, label %._crit_edge1588.i.loopexit, label %.lr.ph1587.i, !llvm.loop !45

.preheader1309.i:                                 ; preds = %bytestream2_put_byte.exit1213.3.i, %.preheader1310.i
  %.sroa.181.39 = phi i32 [ %.us-phi, %.preheader1310.i ], [ %.sroa.181.38, %bytestream2_put_byte.exit1213.3.i ] ; 2 uses
  %.sroa.0.48 = phi ptr [ %.us-phi361, %.preheader1310.i ], [ %.sroa.0.47, %bytestream2_put_byte.exit1213.3.i ] ; 2 uses
  %i.atu = icmp ne ptr %.2411101602.i, null
  %i.atv = icmp ne ptr %.2410741603.i, null
  %or.cond691592.i = select i1 %i.atu, i1 %i.atv, i1 false
  br i1 %or.cond691592.i, label %.lr.ph1597.i, label %.critedge35.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bytestream2_put_byte.exit1213.3.i
  %.sroa.181.37 = phi i32 [ %.sroa.181.38, %bytestream2_put_byte.exit1213.3.i ], [ %.sroa.181.37.ph, %.preheader.i.preheader ]
  %.sroa.0.45 = phi ptr [ %.sroa.0.47, %bytestream2_put_byte.exit1213.3.i ], [ %.sroa.0.45.ph, %.preheader.i.preheader ] ; 7 uses
  %.09191591.i = phi i32 [ %i.aum, %bytestream2_put_byte.exit1213.3.i ], [ %i.alv, %.preheader.i.preheader ]
  %.not.i1212.i = icmp eq i32 %.sroa.181.37, 0
  %i.atw = ptrtoint ptr %.sroa.0.45 to i64
  %i.atx = sub i64 %i.bz, %i.atw
  %i.aty = icmp sgt i64 %i.atx, 0
  %or.cond379 = select i1 %.not.i1212.i, i1 %i.aty, i1 false
  br i1 %or.cond379, label %bb.mg, label %bytestream2_put_byte.exit1213.3.i

bb.mg:                                            ; preds = %.preheader.i
  store i8 0, ptr %.sroa.0.45, align 1, !tbaa !32
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0.45, i64 1 ; 3 uses
  %i.aua = ptrtoint ptr %i.atz to i64
  %i.aub = sub i64 %i.bz, %i.aua
  %i.auc = icmp sgt i64 %i.aub, 0
  br i1 %i.auc, label %bb.mh, label %bytestream2_put_byte.exit1213.3.i

bb.mh:                                            ; preds = %bb.mg
  store i8 0, ptr %i.atz, align 1, !tbaa !32
  %i.aud = getelementptr inbounds nuw i8, ptr %.sroa.0.45, i64 2 ; 3 uses
  %i.aue = ptrtoint ptr %i.aud to i64
  %i.auf = sub i64 %i.bz, %i.aue
  %i.aug = icmp sgt i64 %i.auf, 0
  br i1 %i.aug, label %bb.mi, label %bytestream2_put_byte.exit1213.3.i

bb.mi:                                            ; preds = %bb.mh
  store i8 0, ptr %i.aud, align 1, !tbaa !32
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.0.45, i64 3 ; 3 uses
  %i.aui = ptrtoint ptr %i.auh to i64
  %i.auj = sub i64 %i.bz, %i.aui
  %i.auk = icmp sgt i64 %i.auj, 0
  br i1 %i.auk, label %bb.mj, label %bytestream2_put_byte.exit1213.3.i

bb.mj:                                            ; preds = %bb.mi
  store i8 0, ptr %i.auh, align 1, !tbaa !32
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.0.45, i64 4
  br label %bytestream2_put_byte.exit1213.3.i

bytestream2_put_byte.exit1213.3.i:                ; preds = %.preheader.i, %bb.mg, %bb.mh, %bb.mi, %bb.mj
  %.sroa.181.38 = phi i32 [ 0, %bb.mj ], [ 1, %bb.mi ], [ 1, %bb.mh ], [ 1, %bb.mg ], [ 1, %.preheader.i ] ; 2 uses
  %.sroa.0.47 = phi ptr [ %i.aul, %bb.mj ], [ %i.auh, %bb.mi ], [ %i.aud, %bb.mh ], [ %i.atz, %bb.mg ], [ %.sroa.0.45, %.preheader.i ] ; 2 uses
  %i.aum = add i32 %.09191591.i, 1                ; 2 uses
  %exitcond1768.not.i = icmp eq i32 %i.aum, 4
  br i1 %exitcond1768.not.i, label %.preheader1309.i, label %.preheader.i, !llvm.loop !46

.critedge35.i:                                    ; preds = %bb.mk, %.lr.ph1597.i, %.preheader1309.i
  %.251111.lcssa.i = phi ptr [ %.2411101602.i, %.preheader1309.i ], [ %i.aut, %bb.mk ], [ %i.auo, %.lr.ph1597.i ] ; 2 uses
  %.251075.lcssa.i = phi ptr [ %.2410741603.i, %.preheader1309.i ], [ %i.aut, %bb.mk ], [ %.2410741603.i, %.lr.ph1597.i ] ; 2 uses
  %.251026.lcssa.i = phi i32 [ %.2410251604.i, %.preheader1309.i ], [ %i.auu, %bb.mk ], [ %.2410251604.i, %.lr.ph1597.i ] ; 2 uses
  %.25.lcssa.i = phi i32 [ %.241605.i, %.preheader1309.i ], [ 0, %bb.mk ], [ %i.aup, %.lr.ph1597.i ] ; 2 uses
  %i.aun = add nuw nsw i32 %.09231606.i, 1        ; 2 uses
  %exitcond1769.not.i = icmp eq i32 %i.aun, %.4.i
  br i1 %exitcond1769.not.i, label %.critedge19.i, label %.lr.ph1607.i, !llvm.loop !47

.lr.ph1597.i:                                     ; preds = %.preheader1309.i
  %i.auo = getelementptr inbounds nuw i8, ptr %.2411101602.i, i64 4 ; 2 uses
  %i.aup = add nsw i32 %.241605.i, 4
  %i.auq = ptrtoint ptr %i.auo to i64
  %i.aur = ptrtoint ptr %.2410741603.i to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %.not1186.i = icmp slt i64 %i.aus, %i.bg
  br i1 %.not1186.i, label %.critedge35.i, label %bb.mk

bb.mk:                                            ; preds = %.lr.ph1597.i
  %i.aut = getelementptr inbounds i8, ptr %.2410741603.i, i64 %i.bh ; 2 uses
  %i.auu = add nsw i32 %.2410251604.i, 4
  br label %.critedge35.i

bb.ml:                                            ; preds = %.loopexit.thread.i
  %.not.i1210.i = icmp eq i32 %.sroa.181.1, 0
  %i.auv = ptrtoint ptr %.sroa.0.1 to i64
  %i.auw = sub i64 %i.bz, %i.auv
  %i.aux = icmp sgt i64 %i.auw, 0
  %or.cond337 = select i1 %.not.i1210.i, i1 %i.aux, i1 false
  br i1 %or.cond337, label %bb.mm, label %bytestream2_put_byte.exit1211.i

bb.mm:                                            ; preds = %bb.ml
  %i.auy = trunc i32 %.4.i to i8
  %i.auz = add i8 %i.auy, -1
  %i.ava = or i8 %i.auz, 32
  store i8 %i.ava, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.avb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  br label %bytestream2_put_byte.exit1211.i

bytestream2_put_byte.exit1211.i:                  ; preds = %bb.ml, %bb.mm
  %.sroa.181.6 = phi i32 [ 0, %bb.mm ], [ 1, %bb.ml ] ; 4 uses
  %.sroa.0.8 = phi ptr [ %i.avb, %bb.mm ], [ %.sroa.0.1, %bb.ml ] ; 4 uses
  %i.avc = icmp sgt i32 %.4.i, 0
  %i.avd = icmp ne ptr %.010861612.i, null
  %or.cond371451.i = select i1 %i.avc, i1 %i.avd, i1 false
  %i.ave = icmp ne ptr %.010501616.i, null
  %or.cond711452.i = select i1 %or.cond371451.i, i1 %i.ave, i1 false
  br i1 %or.cond711452.i, label %.lr.ph1458.i.preheader, label %.critedge19.i

.lr.ph1458.i.preheader:                           ; preds = %bytestream2_put_byte.exit1211.i
  %xtraiter556 = and i32 %.4.i, 1
  %i.avf = icmp eq i32 %.4.i, 1
  br i1 %i.avf, label %.lr.ph1458.i.epil.preheader, label %.lr.ph1458.i.preheader.new

.lr.ph1458.i.preheader.new:                       ; preds = %.lr.ph1458.i.preheader
  %unroll_iter563 = and i32 %.4.i, 2147483646
  br label %.lr.ph1458.i

.lr.ph1458.i:                                     ; preds = %bb.mp, %.lr.ph1458.i.preheader.new
  %.271456.i = phi i32 [ %.09961632.i, %.lr.ph1458.i.preheader.new ], [ %.28.i.1, %bb.mp ]
  %.2710281455.i = phi i32 [ %.010011628.i, %.lr.ph1458.i.preheader.new ], [ %.281029.i.1, %bb.mp ] ; 2 uses
  %.2710771454.i = phi ptr [ %.010501616.i, %.lr.ph1458.i.preheader.new ], [ %.281078.i.1, %bb.mp ] ; 3 uses
  %.2711131453.i = phi ptr [ %.010861612.i, %.lr.ph1458.i.preheader.new ], [ %.281114.i.1, %bb.mp ]
  %niter564 = phi i32 [ 0, %.lr.ph1458.i.preheader.new ], [ %niter564.next.1, %bb.mp ]
  %i.avg = getelementptr inbounds nuw i8, ptr %.2711131453.i, i64 4 ; 2 uses
  %i.avh = add nsw i32 %.271456.i, 4
  %i.avi = ptrtoint ptr %i.avg to i64
  %i.avj = ptrtoint ptr %.2710771454.i to i64
  %i.avk = sub i64 %i.avi, %i.avj
  %.not1179.i = icmp slt i64 %i.avk, %i.bg
  br i1 %.not1179.i, label %.lr.ph1458.i.1, label %bb.mn

bb.mn:                                            ; preds = %.lr.ph1458.i
  %i.avl = getelementptr inbounds i8, ptr %.2710771454.i, i64 %i.bh ; 2 uses
  %i.avm = add nsw i32 %.2710281455.i, 4
  br label %.lr.ph1458.i.1

.lr.ph1458.i.1:                                   ; preds = %bb.mn, %.lr.ph1458.i
  %.281114.i = phi ptr [ %i.avl, %bb.mn ], [ %i.avg, %.lr.ph1458.i ]
  %.281078.i = phi ptr [ %i.avl, %bb.mn ], [ %.2710771454.i, %.lr.ph1458.i ] ; 3 uses
  %.281029.i = phi i32 [ %i.avm, %bb.mn ], [ %.2710281455.i, %.lr.ph1458.i ] ; 2 uses
  %.28.i = phi i32 [ 0, %bb.mn ], [ %i.avh, %.lr.ph1458.i ]
  %i.avn = getelementptr inbounds nuw i8, ptr %.281114.i, i64 4 ; 2 uses
  %i.avo = add nsw i32 %.28.i, 4
  %i.avp = ptrtoint ptr %i.avn to i64
  %i.avq = ptrtoint ptr %.281078.i to i64
  %i.avr = sub i64 %i.avp, %i.avq
  %.not1179.i.1 = icmp slt i64 %i.avr, %i.bg
  br i1 %.not1179.i.1, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.lr.ph1458.i.1
  %i.avs = getelementptr inbounds i8, ptr %.281078.i, i64 %i.bh ; 2 uses
  %i.avt = add nsw i32 %.281029.i, 4
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %.lr.ph1458.i.1
  %.281114.i.1 = phi ptr [ %i.avs, %bb.mo ], [ %i.avn, %.lr.ph1458.i.1 ] ; 3 uses
  %.281078.i.1 = phi ptr [ %i.avs, %bb.mo ], [ %.281078.i, %.lr.ph1458.i.1 ] ; 3 uses
  %.281029.i.1 = phi i32 [ %i.avt, %bb.mo ], [ %.281029.i, %.lr.ph1458.i.1 ] ; 3 uses
  %.28.i.1 = phi i32 [ 0, %bb.mo ], [ %i.avo, %.lr.ph1458.i.1 ] ; 3 uses
  %niter564.next.1 = add nuw nsw i32 %niter564, 2 ; 2 uses
  %niter564.ncmp.1 = icmp eq i32 %niter564.next.1, %unroll_iter563
  br i1 %niter564.ncmp.1, label %.critedge19.i.loopexit512.unr-lcssa, label %.lr.ph1458.i, !llvm.loop !48

bb.mq:                                            ; preds = %.loopexit.thread.i
  %.not.i1208.i = icmp eq i32 %.sroa.181.1, 0
  %i.avu = ptrtoint ptr %.sroa.0.1 to i64
  %i.avv = sub i64 %i.bz, %i.avu
  %i.avw = icmp sgt i64 %i.avv, 0
  %or.cond382 = select i1 %.not.i1208.i, i1 %i.avw, i1 false
  br i1 %or.cond382, label %bb.mr, label %bytestream2_put_byte.exit1207.i

bb.mr:                                            ; preds = %bb.mq
  store i8 48, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.avx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.avy = ptrtoint ptr %i.avx to i64
  %i.avz = sub i64 %i.bz, %i.avy
  %i.awa = icmp sgt i64 %i.avz, 0
  br i1 %i.awa, label %bb.ms, label %bytestream2_put_byte.exit1207.i

bb.ms:                                            ; preds = %bb.mr
  %i.awb = trunc i32 %.4.i to i8
  %i.awc = add i8 %i.awb, -1
  store i8 %i.awc, ptr %i.avx, align 1, !tbaa !32
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit1207.i

bytestream2_put_byte.exit1207.i:                  ; preds = %bb.mq, %bb.mr, %bb.ms
  %.sroa.181.5 = phi i32 [ 0, %bb.ms ], [ 1, %bb.mr ], [ 1, %bb.mq ] ; 4 uses
  %.sroa.0.7 = phi ptr [ %i.awd, %bb.ms ], [ %i.avx, %bb.mr ], [ %.sroa.0.1, %bb.mq ] ; 4 uses
  %i.awe = icmp sgt i32 %.4.i, 0
  %i.awf = icmp ne ptr %.010861612.i, null
  %or.cond411439.i = select i1 %i.awe, i1 %i.awf, i1 false
  %i.awg = icmp ne ptr %.010501616.i, null
  %or.cond731440.i = select i1 %or.cond411439.i, i1 %i.awg, i1 false
  br i1 %or.cond731440.i, label %.lr.ph1446.i.preheader, label %.critedge19.i

.lr.ph1446.i.preheader:                           ; preds = %bytestream2_put_byte.exit1207.i
  %xtraiter547 = and i32 %.4.i, 1
  %i.awh = icmp eq i32 %.4.i, 1
  br i1 %i.awh, label %.lr.ph1446.i.epil.preheader, label %.lr.ph1446.i.preheader.new

.lr.ph1446.i.preheader.new:                       ; preds = %.lr.ph1446.i.preheader
  %unroll_iter554 = and i32 %.4.i, 2147483646
  br label %.lr.ph1446.i

.lr.ph1446.i:                                     ; preds = %bb.mv, %.lr.ph1446.i.preheader.new
  %.291444.i = phi i32 [ %.09961632.i, %.lr.ph1446.i.preheader.new ], [ %.30.i.1, %bb.mv ]
  %.2910301443.i = phi i32 [ %.010011628.i, %.lr.ph1446.i.preheader.new ], [ %.301031.i.1, %bb.mv ] ; 2 uses
  %.2910791442.i = phi ptr [ %.010501616.i, %.lr.ph1446.i.preheader.new ], [ %.301080.i.1, %bb.mv ] ; 3 uses
  %.2911151441.i = phi ptr [ %.010861612.i, %.lr.ph1446.i.preheader.new ], [ %.301116.i.1, %bb.mv ]
  %niter555 = phi i32 [ 0, %.lr.ph1446.i.preheader.new ], [ %niter555.next.1, %bb.mv ]
  %i.awi = getelementptr inbounds nuw i8, ptr %.2911151441.i, i64 4 ; 2 uses
  %i.awj = add nsw i32 %.291444.i, 4
  %i.awk = ptrtoint ptr %i.awi to i64
  %i.awl = ptrtoint ptr %.2910791442.i to i64
  %i.awm = sub i64 %i.awk, %i.awl
  %.not1178.i = icmp slt i64 %i.awm, %i.bg
  br i1 %.not1178.i, label %.lr.ph1446.i.1, label %bb.mt

bb.mt:                                            ; preds = %.lr.ph1446.i
  %i.awn = getelementptr inbounds i8, ptr %.2910791442.i, i64 %i.bh ; 2 uses
  %i.awo = add nsw i32 %.2910301443.i, 4
  br label %.lr.ph1446.i.1

.lr.ph1446.i.1:                                   ; preds = %bb.mt, %.lr.ph1446.i
  %.301116.i = phi ptr [ %i.awn, %bb.mt ], [ %i.awi, %.lr.ph1446.i ]
  %.301080.i = phi ptr [ %i.awn, %bb.mt ], [ %.2910791442.i, %.lr.ph1446.i ] ; 3 uses
  %.301031.i = phi i32 [ %i.awo, %bb.mt ], [ %.2910301443.i, %.lr.ph1446.i ] ; 2 uses
  %.30.i = phi i32 [ 0, %bb.mt ], [ %i.awj, %.lr.ph1446.i ]
  %i.awp = getelementptr inbounds nuw i8, ptr %.301116.i, i64 4 ; 2 uses
  %i.awq = add nsw i32 %.30.i, 4
  %i.awr = ptrtoint ptr %i.awp to i64
  %i.aws = ptrtoint ptr %.301080.i to i64
  %i.awt = sub i64 %i.awr, %i.aws
  %.not1178.i.1 = icmp slt i64 %i.awt, %i.bg
  br i1 %.not1178.i.1, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %.lr.ph1446.i.1
  %i.awu = getelementptr inbounds i8, ptr %.301080.i, i64 %i.bh ; 2 uses
  %i.awv = add nsw i32 %.301031.i, 4
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %.lr.ph1446.i.1
  %.301116.i.1 = phi ptr [ %i.awu, %bb.mu ], [ %i.awp, %.lr.ph1446.i.1 ] ; 3 uses
  %.301080.i.1 = phi ptr [ %i.awu, %bb.mu ], [ %.301080.i, %.lr.ph1446.i.1 ] ; 3 uses
  %.301031.i.1 = phi i32 [ %i.awv, %bb.mu ], [ %.301031.i, %.lr.ph1446.i.1 ] ; 3 uses
  %.30.i.1 = phi i32 [ 0, %bb.mu ], [ %i.awq, %.lr.ph1446.i.1 ] ; 3 uses
  %niter555.next.1 = add nuw nsw i32 %niter555, 2 ; 2 uses
  %niter555.ncmp.1 = icmp eq i32 %niter555.next.1, %unroll_iter554
  br i1 %niter555.ncmp.1, label %.critedge19.i.loopexit513.unr-lcssa, label %.lr.ph1446.i, !llvm.loop !49

bb.mw:                                            ; preds = %.loopexit.thread.i
  %.not.i1204.i = icmp eq i32 %.sroa.181.1, 0
  %i.aww = ptrtoint ptr %.sroa.0.1 to i64
  %i.awx = sub i64 %i.bz, %i.aww
  %i.awy = icmp sgt i64 %i.awx, 0
  %or.cond341 = select i1 %.not.i1204.i, i1 %i.awy, i1 false
  br i1 %or.cond341, label %bb.mx, label %bytestream2_put_byte.exit1205.i

bb.mx:                                            ; preds = %bb.mw
  %i.awz = trunc i32 %.4.i to i8
  %i.axa = add i8 %i.awz, -1
  store i8 %i.axa, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.axb = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1
  br label %bytestream2_put_byte.exit1205.i

bytestream2_put_byte.exit1205.i:                  ; preds = %bb.mw, %bb.mx
  %.sroa.181.4 = phi i32 [ 0, %bb.mx ], [ 1, %bb.mw ] ; 4 uses
  %.sroa.0.5 = phi ptr [ %i.axb, %bb.mx ], [ %.sroa.0.1, %bb.mw ] ; 4 uses
  %i.axc = icmp sgt i32 %.4.i, 0
  %i.axd = icmp ne ptr %.010861612.i, null
  %or.cond451427.i = select i1 %i.axc, i1 %i.axd, i1 false
  %i.axe = icmp ne ptr %.010501616.i, null
  %or.cond751428.i = select i1 %or.cond451427.i, i1 %i.axe, i1 false
  br i1 %or.cond751428.i, label %.lr.ph1434.i.preheader, label %.critedge19.i

.lr.ph1434.i.preheader:                           ; preds = %bytestream2_put_byte.exit1205.i
  %xtraiter538 = and i32 %.4.i, 1
  %i.axf = icmp eq i32 %.4.i, 1
  br i1 %i.axf, label %.lr.ph1434.i.epil.preheader, label %.lr.ph1434.i.preheader.new

.lr.ph1434.i.preheader.new:                       ; preds = %.lr.ph1434.i.preheader
  %unroll_iter545 = and i32 %.4.i, 2147483646
  br label %.lr.ph1434.i

.lr.ph1434.i:                                     ; preds = %bb.na, %.lr.ph1434.i.preheader.new
  %.311432.i = phi i32 [ %.09961632.i, %.lr.ph1434.i.preheader.new ], [ %.32.i.1, %bb.na ]
  %.3110321431.i = phi i32 [ %.010011628.i, %.lr.ph1434.i.preheader.new ], [ %.321033.i.1, %bb.na ] ; 2 uses
  %.3110811430.i = phi ptr [ %.010501616.i, %.lr.ph1434.i.preheader.new ], [ %.321082.i.1, %bb.na ] ; 3 uses
  %.3111171429.i = phi ptr [ %.010861612.i, %.lr.ph1434.i.preheader.new ], [ %.321118.i.1, %bb.na ]
  %niter546 = phi i32 [ 0, %.lr.ph1434.i.preheader.new ], [ %niter546.next.1, %bb.na ]
  %i.axg = getelementptr inbounds nuw i8, ptr %.3111171429.i, i64 4 ; 2 uses
  %i.axh = add nsw i32 %.311432.i, 4
  %i.axi = ptrtoint ptr %i.axg to i64
  %i.axj = ptrtoint ptr %.3110811430.i to i64
  %i.axk = sub i64 %i.axi, %i.axj
  %.not1177.i = icmp slt i64 %i.axk, %i.bg
  br i1 %.not1177.i, label %.lr.ph1434.i.1, label %bb.my

bb.my:                                            ; preds = %.lr.ph1434.i
  %i.axl = getelementptr inbounds i8, ptr %.3110811430.i, i64 %i.bh ; 2 uses
  %i.axm = add nsw i32 %.3110321431.i, 4
  br label %.lr.ph1434.i.1

.lr.ph1434.i.1:                                   ; preds = %bb.my, %.lr.ph1434.i
  %.321118.i = phi ptr [ %i.axl, %bb.my ], [ %i.axg, %.lr.ph1434.i ]
  %.321082.i = phi ptr [ %i.axl, %bb.my ], [ %.3110811430.i, %.lr.ph1434.i ] ; 3 uses
  %.321033.i = phi i32 [ %i.axm, %bb.my ], [ %.3110321431.i, %.lr.ph1434.i ] ; 2 uses
  %.32.i = phi i32 [ 0, %bb.my ], [ %i.axh, %.lr.ph1434.i ]
  %i.axn = getelementptr inbounds nuw i8, ptr %.321118.i, i64 4 ; 2 uses
  %i.axo = add nsw i32 %.32.i, 4
  %i.axp = ptrtoint ptr %i.axn to i64
  %i.axq = ptrtoint ptr %.321082.i to i64
  %i.axr = sub i64 %i.axp, %i.axq
  %.not1177.i.1 = icmp slt i64 %i.axr, %i.bg
  br i1 %.not1177.i.1, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %.lr.ph1434.i.1
  %i.axs = getelementptr inbounds i8, ptr %.321082.i, i64 %i.bh ; 2 uses
  %i.axt = add nsw i32 %.321033.i, 4
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %.lr.ph1434.i.1
  %.321118.i.1 = phi ptr [ %i.axs, %bb.mz ], [ %i.axn, %.lr.ph1434.i.1 ] ; 3 uses
  %.321082.i.1 = phi ptr [ %i.axs, %bb.mz ], [ %.321082.i, %.lr.ph1434.i.1 ] ; 3 uses
  %.321033.i.1 = phi i32 [ %i.axt, %bb.mz ], [ %.321033.i, %.lr.ph1434.i.1 ] ; 3 uses
  %.32.i.1 = phi i32 [ 0, %bb.mz ], [ %i.axo, %.lr.ph1434.i.1 ] ; 3 uses
  %niter546.next.1 = add nuw nsw i32 %niter546, 2 ; 2 uses
  %niter546.ncmp.1 = icmp eq i32 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %.critedge19.i.loopexit514.unr-lcssa, label %.lr.ph1434.i, !llvm.loop !50

bb.nb:                                            ; preds = %.loopexit.thread.i
  %.not.i1202.i = icmp eq i32 %.sroa.181.1, 0
  %i.axu = ptrtoint ptr %.sroa.0.1 to i64
  %i.axv = sub i64 %i.bz, %i.axu
  %i.axw = icmp sgt i64 %i.axv, 0
  %or.cond385 = select i1 %.not.i1202.i, i1 %i.axw, i1 false
  br i1 %or.cond385, label %bb.nc, label %bytestream2_put_byte.exit.i

bb.nc:                                            ; preds = %bb.nb
  store i8 16, ptr %.sroa.0.1, align 1, !tbaa !32
  %i.axx = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 3 uses
  %i.axy = ptrtoint ptr %i.axx to i64
  %i.axz = sub i64 %i.bz, %i.axy
  %i.aya = icmp sgt i64 %i.axz, 0
  br i1 %i.aya, label %bb.nd, label %bytestream2_put_byte.exit.i

bb.nd:                                            ; preds = %bb.nc
  %i.ayb = trunc i32 %.4.i to i8
  %i.ayc = add i8 %i.ayb, -1
  store i8 %i.ayc, ptr %i.axx, align 1, !tbaa !32
  %i.ayd = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 2
  br label %bytestream2_put_byte.exit.i

bytestream2_put_byte.exit.i:                      ; preds = %bb.nb, %bb.nc, %bb.nd
  %.sroa.181.2 = phi i32 [ 0, %bb.nd ], [ 1, %bb.nc ], [ 1, %bb.nb ] ; 4 uses
  %.sroa.0.3 = phi ptr [ %i.ayd, %bb.nd ], [ %i.axx, %bb.nc ], [ %.sroa.0.1, %bb.nb ] ; 4 uses
  %i.aye = icmp sgt i32 %.4.i, 0
  %i.ayf = icmp ne ptr %.010861612.i, null
  %or.cond491415.i = select i1 %i.aye, i1 %i.ayf, i1 false
  %i.ayg = icmp ne ptr %.010501616.i, null
  %or.cond771416.i = select i1 %or.cond491415.i, i1 %i.ayg, i1 false
  br i1 %or.cond771416.i, label %.lr.ph1422.i.preheader, label %.critedge19.i

.lr.ph1422.i.preheader:                           ; preds = %bytestream2_put_byte.exit.i
  %xtraiter529 = and i32 %.4.i, 1
  %i.ayh = icmp eq i32 %.4.i, 1
  br i1 %i.ayh, label %.lr.ph1422.i.epil.preheader, label %.lr.ph1422.i.preheader.new

.lr.ph1422.i.preheader.new:                       ; preds = %.lr.ph1422.i.preheader
  %unroll_iter536 = and i32 %.4.i, 2147483646
  br label %.lr.ph1422.i

.lr.ph1422.i:                                     ; preds = %bb.ng, %.lr.ph1422.i.preheader.new
  %.331420.i = phi i32 [ %.09961632.i, %.lr.ph1422.i.preheader.new ], [ %.34.i.1, %bb.ng ]
  %.3310341419.i = phi i32 [ %.010011628.i, %.lr.ph1422.i.preheader.new ], [ %.341035.i.1, %bb.ng ] ; 2 uses
  %.3310831418.i = phi ptr [ %.010501616.i, %.lr.ph1422.i.preheader.new ], [ %.341084.i.1, %bb.ng ] ; 3 uses
  %.3311191417.i = phi ptr [ %.010861612.i, %.lr.ph1422.i.preheader.new ], [ %.341120.i.1, %bb.ng ]
  %niter537 = phi i32 [ 0, %.lr.ph1422.i.preheader.new ], [ %niter537.next.1, %bb.ng ]
  %i.ayi = getelementptr inbounds nuw i8, ptr %.3311191417.i, i64 4 ; 2 uses
  %i.ayj = add nsw i32 %.331420.i, 4
  %i.ayk = ptrtoint ptr %i.ayi to i64
  %i.ayl = ptrtoint ptr %.3310831418.i to i64
  %i.aym = sub i64 %i.ayk, %i.ayl
  %.not1176.i = icmp slt i64 %i.aym, %i.bg
  br i1 %.not1176.i, label %.lr.ph1422.i.1, label %bb.ne

bb.ne:                                            ; preds = %.lr.ph1422.i
  %i.ayn = getelementptr inbounds i8, ptr %.3310831418.i, i64 %i.bh ; 2 uses
  %i.ayo = add nsw i32 %.3310341419.i, 4
  br label %.lr.ph1422.i.1

.lr.ph1422.i.1:                                   ; preds = %bb.ne, %.lr.ph1422.i
  %.341120.i = phi ptr [ %i.ayn, %bb.ne ], [ %i.ayi, %.lr.ph1422.i ]
  %.341084.i = phi ptr [ %i.ayn, %bb.ne ], [ %.3310831418.i, %.lr.ph1422.i ] ; 3 uses
  %.341035.i = phi i32 [ %i.ayo, %bb.ne ], [ %.3310341419.i, %.lr.ph1422.i ] ; 2 uses
  %.34.i = phi i32 [ 0, %bb.ne ], [ %i.ayj, %.lr.ph1422.i ]
  %i.ayp = getelementptr inbounds nuw i8, ptr %.341120.i, i64 4 ; 2 uses
  %i.ayq = add nsw i32 %.34.i, 4
  %i.ayr = ptrtoint ptr %i.ayp to i64
  %i.ays = ptrtoint ptr %.341084.i to i64
  %i.ayt = sub i64 %i.ayr, %i.ays
  %.not1176.i.1 = icmp slt i64 %i.ayt, %i.bg
  br i1 %.not1176.i.1, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %.lr.ph1422.i.1
  %i.ayu = getelementptr inbounds i8, ptr %.341084.i, i64 %i.bh ; 2 uses
  %i.ayv = add nsw i32 %.341035.i, 4
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %.lr.ph1422.i.1
  %.341120.i.1 = phi ptr [ %i.ayu, %bb.nf ], [ %i.ayp, %.lr.ph1422.i.1 ] ; 3 uses
  %.341084.i.1 = phi ptr [ %i.ayu, %bb.nf ], [ %.341084.i, %.lr.ph1422.i.1 ] ; 3 uses
  %.341035.i.1 = phi i32 [ %i.ayv, %bb.nf ], [ %.341035.i, %.lr.ph1422.i.1 ] ; 3 uses
  %.34.i.1 = phi i32 [ 0, %bb.nf ], [ %i.ayq, %.lr.ph1422.i.1 ] ; 3 uses
  %niter537.next.1 = add nuw nsw i32 %niter537, 2 ; 2 uses
  %niter537.ncmp.1 = icmp eq i32 %niter537.next.1, %unroll_iter536
  br i1 %niter537.ncmp.1, label %.critedge19.i.loopexit515.unr-lcssa, label %.lr.ph1422.i, !llvm.loop !51

.critedge19.i.loopexit508.unr-lcssa:              ; preds = %bb.aj
  %lcmp.mod576.not = icmp eq i32 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %.critedge19.i, label %.lr.ph1579.i.epil.preheader

.lr.ph1579.i.epil.preheader:                      ; preds = %.critedge19.i.loopexit508.unr-lcssa, %.lr.ph1579.i.preheader
  %.131577.i.epil.init = phi i32 [ %.09961632.i, %.lr.ph1579.i.preheader ], [ %.14.i.1, %.critedge19.i.loopexit508.unr-lcssa ]
  %.1310141576.i.epil.init = phi i32 [ %.010011628.i, %.lr.ph1579.i.preheader ], [ %.141015.i.1, %.critedge19.i.loopexit508.unr-lcssa ] ; 2 uses
  %.1310631575.i.epil.init = phi ptr [ %.010501616.i, %.lr.ph1579.i.preheader ], [ %.141064.i.1, %.critedge19.i.loopexit508.unr-lcssa ] ; 3 uses
  %.1310991574.i.epil.init = phi ptr [ %.010861612.i, %.lr.ph1579.i.preheader ], [ %.141100.i.1, %.critedge19.i.loopexit508.unr-lcssa ]
  %lcmp.mod581 = trunc i32 %.4.i to i1
  call void @llvm.assume(i1 %lcmp.mod581)
  %i.ayw = getelementptr inbounds nuw i8, ptr %.1310991574.i.epil.init, i64 4 ; 2 uses
  %i.ayx = add nsw i32 %.131577.i.epil.init, 4
  %i.ayy = ptrtoint ptr %i.ayw to i64
  %i.ayz = ptrtoint ptr %.1310631575.i.epil.init to i64
  %i.aza = sub i64 %i.ayy, %i.ayz
  %.not1185.i.epil = icmp slt i64 %i.aza, %i.bg
  br i1 %.not1185.i.epil, label %.critedge19.i, label %bb.nh

bb.nh:                                            ; preds = %.lr.ph1579.i.epil.preheader
  %i.azb = getelementptr inbounds i8, ptr %.1310631575.i.epil.init, i64 %i.bh ; 2 uses
  %i.azc = add nsw i32 %.1310141576.i.epil.init, 4
  br label %.critedge19.i

.critedge19.i.loopexit512.unr-lcssa:              ; preds = %bb.mp
  %lcmp.mod557.not = icmp eq i32 %xtraiter556, 0
  br i1 %lcmp.mod557.not, label %.critedge19.i, label %.lr.ph1458.i.epil.preheader

.lr.ph1458.i.epil.preheader:                      ; preds = %.critedge19.i.loopexit512.unr-lcssa, %.lr.ph1458.i.preheader
  %.271456.i.epil.init = phi i32 [ %.09961632.i, %.lr.ph1458.i.preheader ], [ %.28.i.1, %.critedge19.i.loopexit512.unr-lcssa ]
  %.2710281455.i.epil.init = phi i32 [ %.010011628.i, %.lr.ph1458.i.preheader ], [ %.281029.i.1, %.critedge19.i.loopexit512.unr-lcssa ] ; 2 uses
  %.2710771454.i.epil.init = phi ptr [ %.010501616.i, %.lr.ph1458.i.preheader ], [ %.281078.i.1, %.critedge19.i.loopexit512.unr-lcssa ] ; 3 uses
  %.2711131453.i.epil.init = phi ptr [ %.010861612.i, %.lr.ph1458.i.preheader ], [ %.281114.i.1, %.critedge19.i.loopexit512.unr-lcssa ]
  %lcmp.mod562 = trunc i32 %.4.i to i1
  call void @llvm.assume(i1 %lcmp.mod562)
  %i.azd = getelementptr inbounds nuw i8, ptr %.2711131453.i.epil.init, i64 4 ; 2 uses
  %i.aze = add nsw i32 %.271456.i.epil.init, 4
  %i.azf = ptrtoint ptr %i.azd to i64
  %i.azg = ptrtoint ptr %.2710771454.i.epil.init to i64
  %i.azh = sub i64 %i.azf, %i.azg
  %.not1179.i.epil = icmp slt i64 %i.azh, %i.bg
  br i1 %.not1179.i.epil, label %.critedge19.i, label %bb.ni

bb.ni:                                            ; preds = %.lr.ph1458.i.epil.preheader
  %i.azi = getelementptr inbounds i8, ptr %.2710771454.i.epil.init, i64 %i.bh ; 2 uses
  %i.azj = add nsw i32 %.2710281455.i.epil.init, 4
  br label %.critedge19.i

.critedge19.i.loopexit513.unr-lcssa:              ; preds = %bb.mv
  %lcmp.mod548.not = icmp eq i32 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %.critedge19.i, label %.lr.ph1446.i.epil.preheader

.lr.ph1446.i.epil.preheader:                      ; preds = %.critedge19.i.loopexit513.unr-lcssa, %.lr.ph1446.i.preheader
  %.291444.i.epil.init = phi i32 [ %.09961632.i, %.lr.ph1446.i.preheader ], [ %.30.i.1, %.critedge19.i.loopexit513.unr-lcssa ]
  %.2910301443.i.epil.init = phi i32 [ %.010011628.i, %.lr.ph1446.i.preheader ], [ %.301031.i.1, %.critedge19.i.loopexit513.unr-lcssa ] ; 2 uses
  %.2910791442.i.epil.init = phi ptr [ %.010501616.i, %.lr.ph1446.i.preheader ], [ %.301080.i.1, %.critedge19.i.loopexit513.unr-lcssa ] ; 3 uses
  %.2911151441.i.epil.init = phi ptr [ %.010861612.i, %.lr.ph1446.i.preheader ], [ %.301116.i.1, %.critedge19.i.loopexit513.unr-lcssa ]
  %lcmp.mod553 = trunc i32 %.4.i to i1
  call void @llvm.assume(i1 %lcmp.mod553)
  %i.azk = getelementptr inbounds nuw i8, ptr %.2911151441.i.epil.init, i64 4 ; 2 uses
  %i.azl = add nsw i32 %.291444.i.epil.init, 4
  %i.azm = ptrtoint ptr %i.azk to i64
  %i.azn = ptrtoint ptr %.2910791442.i.epil.init to i64
  %i.azo = sub i64 %i.azm, %i.azn
  %.not1178.i.epil = icmp slt i64 %i.azo, %i.bg
  br i1 %.not1178.i.epil, label %.critedge19.i, label %bb.nj

bb.nj:                                            ; preds = %.lr.ph1446.i.epil.preheader
  %i.azp = getelementptr inbounds i8, ptr %.2910791442.i.epil.init, i64 %i.bh ; 2 uses
  %i.azq = add nsw i32 %.2910301443.i.epil.init, 4
  br label %.critedge19.i

.critedge19.i.loopexit514.unr-lcssa:              ; preds = %bb.na
  %lcmp.mod539.not = icmp eq i32 %xtraiter538, 0
  br i1 %lcmp.mod539.not, label %.critedge19.i, label %.lr.ph1434.i.epil.preheader

.lr.ph1434.i.epil.preheader:                      ; preds = %.critedge19.i.loopexit514.unr-lcssa, %.lr.ph1434.i.preheader
  %.311432.i.epil.init = phi i32 [ %.09961632.i, %.lr.ph1434.i.preheader ], [ %.32.i.1, %.critedge19.i.loopexit514.unr-lcssa ]
  %.3110321431.i.epil.init = phi i32 [ %.010011628.i, %.lr.ph1434.i.preheader ], [ %.321033.i.1, %.critedge19.i.loopexit514.unr-lcssa ] ; 2 uses
  %.3110811430.i.epil.init = phi ptr [ %.010501616.i, %.lr.ph1434.i.preheader ], [ %.321082.i.1, %.critedge19.i.loopexit514.unr-lcssa ] ; 3 uses
  %.3111171429.i.epil.init = phi ptr [ %.010861612.i, %.lr.ph1434.i.preheader ], [ %.321118.i.1, %.critedge19.i.loopexit514.unr-lcssa ]
  %lcmp.mod544 = trunc i32 %.4.i to i1
  call void @llvm.assume(i1 %lcmp.mod544)
  %i.azr = getelementptr inbounds nuw i8, ptr %.3111171429.i.epil.init, i64 4 ; 2 uses
  %i.azs = add nsw i32 %.311432.i.epil.init, 4
  %i.azt = ptrtoint ptr %i.azr to i64
  %i.azu = ptrtoint ptr %.3110811430.i.epil.init to i64
  %i.azv = sub i64 %i.azt, %i.azu
  %.not1177.i.epil = icmp slt i64 %i.azv, %i.bg
  br i1 %.not1177.i.epil, label %.critedge19.i, label %bb.nk

bb.nk:                                            ; preds = %.lr.ph1434.i.epil.preheader
  %i.azw = getelementptr inbounds i8, ptr %.3110811430.i.epil.init, i64 %i.bh ; 2 uses
  %i.azx = add nsw i32 %.3110321431.i.epil.init, 4
  br label %.critedge19.i

.critedge19.i.loopexit515.unr-lcssa:              ; preds = %bb.ng
  %lcmp.mod530.not = icmp eq i32 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %.critedge19.i, label %.lr.ph1422.i.epil.preheader

.lr.ph1422.i.epil.preheader:                      ; preds = %.critedge19.i.loopexit515.unr-lcssa, %.lr.ph1422.i.preheader
  %.331420.i.epil.init = phi i32 [ %.09961632.i, %.lr.ph1422.i.preheader ], [ %.34.i.1, %.critedge19.i.loopexit515.unr-lcssa ]
  %.3310341419.i.epil.init = phi i32 [ %.010011628.i, %.lr.ph1422.i.preheader ], [ %.341035.i.1, %.critedge19.i.loopexit515.unr-lcssa ] ; 2 uses
  %.3310831418.i.epil.init = phi ptr [ %.010501616.i, %.lr.ph1422.i.preheader ], [ %.341084.i.1, %.critedge19.i.loopexit515.unr-lcssa ] ; 3 uses
  %.3311191417.i.epil.init = phi ptr [ %.010861612.i, %.lr.ph1422.i.preheader ], [ %.341120.i.1, %.critedge19.i.loopexit515.unr-lcssa ]
  %lcmp.mod535 = trunc i32 %.4.i to i1
  call void @llvm.assume(i1 %lcmp.mod535)
  %i.azy = getelementptr inbounds nuw i8, ptr %.3311191417.i.epil.init, i64 4 ; 2 uses
  %i.azz = add nsw i32 %.331420.i.epil.init, 4
  %i.baa = ptrtoint ptr %i.azy to i64
  %i.bab = ptrtoint ptr %.3310831418.i.epil.init to i64
  %i.bac = sub i64 %i.baa, %i.bab
  %.not1176.i.epil = icmp slt i64 %i.bac, %i.bg
  br i1 %.not1176.i.epil, label %.critedge19.i, label %bb.nl

bb.nl:                                            ; preds = %.lr.ph1422.i.epil.preheader
  %i.bad = getelementptr inbounds i8, ptr %.3310831418.i.epil.init, i64 %i.bh ; 2 uses
  %i.bae = add nsw i32 %.3310341419.i.epil.init, 4
  br label %.critedge19.i

.critedge19.i:                                    ; preds = %.critedge19.i.loopexit515.unr-lcssa, %bb.nl, %.lr.ph1422.i.epil.preheader, %.critedge19.i.loopexit514.unr-lcssa, %bb.nk, %.lr.ph1434.i.epil.preheader, %.critedge19.i.loopexit513.unr-lcssa, %bb.nj, %.lr.ph1446.i.epil.preheader, %.critedge19.i.loopexit512.unr-lcssa, %bb.ni, %.lr.ph1458.i.epil.preheader, %.critedge31.i, %.critedge27.i, %.critedge23.i, %.critedge19.i.loopexit508.unr-lcssa, %bb.nh, %.lr.ph1579.i.epil.preheader, %.critedge35.i, %bytestream2_put_byte.exit.i, %bytestream2_put_byte.exit1205.i, %bytestream2_put_byte.exit1207.i, %bytestream2_put_byte.exit1211.i, %bytestream2_put_byte.exit1219.i, %bytestream2_put_byte.exit1225.i, %bytestream2_put_byte.exit1233.i, %bytestream2_put_byte.exit1241.i, %bytestream2_put_byte.exit1245.i
  %.sroa.181.3 = phi i32 [ %.sroa.181.2, %bytestream2_put_byte.exit.i ], [ %.sroa.181.34, %bytestream2_put_byte.exit1219.i ], [ %.sroa.181.4, %.critedge19.i.loopexit514.unr-lcssa ], [ %.sroa.181.33, %bytestream2_put_byte.exit1245.i ], [ %.sroa.181.39, %.critedge35.i ], [ %.sroa.181.30, %bytestream2_put_byte.exit1241.i ], [ %.sroa.181.33, %.critedge19.i.loopexit508.unr-lcssa ], [ %.sroa.181.24, %bytestream2_put_byte.exit1233.i ], [ %.sroa.181.32, %.critedge23.i ], [ %.sroa.181.16, %bytestream2_put_byte.exit1225.i ], [ %.sroa.181.26, %.critedge27.i ], [ %.sroa.181.6, %bytestream2_put_byte.exit1211.i ], [ %.sroa.181.18, %.critedge31.i ], [ %.sroa.181.5, %bytestream2_put_byte.exit1207.i ], [ %.sroa.181.6, %.critedge19.i.loopexit512.unr-lcssa ], [ %.sroa.181.4, %bytestream2_put_byte.exit1205.i ], [ %.sroa.181.5, %.critedge19.i.loopexit513.unr-lcssa ], [ %.sroa.181.33, %.lr.ph1579.i.epil.preheader ], [ %.sroa.181.33, %bb.nh ], [ %.sroa.181.6, %.lr.ph1458.i.epil.preheader ], [ %.sroa.181.6, %bb.ni ], [ %.sroa.181.5, %.lr.ph1446.i.epil.preheader ], [ %.sroa.181.5, %bb.nj ], [ %.sroa.181.4, %.lr.ph1434.i.epil.preheader ], [ %.sroa.181.4, %bb.nk ], [ %.sroa.181.2, %.lr.ph1422.i.epil.preheader ], [ %.sroa.181.2, %bb.nl ], [ %.sroa.181.2, %.critedge19.i.loopexit515.unr-lcssa ]
  %.sroa.0.4 = phi ptr [ %.sroa.0.3, %bytestream2_put_byte.exit.i ], [ %.sroa.0.42, %bytestream2_put_byte.exit1219.i ], [ %.sroa.0.5, %.critedge19.i.loopexit514.unr-lcssa ], [ %.sroa.0.40, %bytestream2_put_byte.exit1245.i ], [ %.sroa.0.48, %.critedge35.i ], [ %.sroa.0.35, %bytestream2_put_byte.exit1241.i ], [ %.sroa.0.40, %.critedge19.i.loopexit508.unr-lcssa ], [ %.sroa.0.28, %bytestream2_put_byte.exit1233.i ], [ %.sroa.0.37, %.critedge23.i ], [ %.sroa.0.18, %bytestream2_put_byte.exit1225.i ], [ %.sroa.0.30, %.critedge27.i ], [ %.sroa.0.8, %bytestream2_put_byte.exit1211.i ], [ %.sroa.0.21, %.critedge31.i ], [ %.sroa.0.7, %bytestream2_put_byte.exit1207.i ], [ %.sroa.0.8, %.critedge19.i.loopexit512.unr-lcssa ], [ %.sroa.0.5, %bytestream2_put_byte.exit1205.i ], [ %.sroa.0.7, %.critedge19.i.loopexit513.unr-lcssa ], [ %.sroa.0.40, %.lr.ph1579.i.epil.preheader ], [ %.sroa.0.40, %bb.nh ], [ %.sroa.0.8, %.lr.ph1458.i.epil.preheader ], [ %.sroa.0.8, %bb.ni ], [ %.sroa.0.7, %.lr.ph1446.i.epil.preheader ], [ %.sroa.0.7, %bb.nj ], [ %.sroa.0.5, %.lr.ph1434.i.epil.preheader ], [ %.sroa.0.5, %bb.nk ], [ %.sroa.0.3, %.lr.ph1422.i.epil.preheader ], [ %.sroa.0.3, %bb.nl ], [ %.sroa.0.3, %.critedge19.i.loopexit515.unr-lcssa ] ; 2 uses
  %.351121.i = phi ptr [ %.010861612.i, %bytestream2_put_byte.exit.i ], [ %.010861612.i, %bytestream2_put_byte.exit1219.i ], [ %i.azr, %.lr.ph1434.i.epil.preheader ], [ %.010861612.i, %bytestream2_put_byte.exit1245.i ], [ %.251111.lcssa.i, %.critedge35.i ], [ %.010861612.i, %bytestream2_put_byte.exit1241.i ], [ %i.ayw, %.lr.ph1579.i.epil.preheader ], [ %.010861612.i, %bytestream2_put_byte.exit1233.i ], [ %.161102.lcssa.i, %.critedge23.i ], [ %.010861612.i, %bytestream2_put_byte.exit1225.i ], [ %.191105.lcssa.i, %.critedge27.i ], [ %.010861612.i, %bytestream2_put_byte.exit1211.i ], [ %.221108.lcssa.i, %.critedge31.i ], [ %.010861612.i, %bytestream2_put_byte.exit1207.i ], [ %i.azd, %.lr.ph1458.i.epil.preheader ], [ %.010861612.i, %bytestream2_put_byte.exit1205.i ], [ %i.azk, %.lr.ph1446.i.epil.preheader ], [ %.141100.i.1, %.critedge19.i.loopexit508.unr-lcssa ], [ %i.azb, %bb.nh ], [ %.281114.i.1, %.critedge19.i.loopexit512.unr-lcssa ], [ %i.azi, %bb.ni ], [ %.301116.i.1, %.critedge19.i.loopexit513.unr-lcssa ], [ %i.azp, %bb.nj ], [ %.321118.i.1, %.critedge19.i.loopexit514.unr-lcssa ], [ %i.azw, %bb.nk ], [ %.341120.i.1, %.critedge19.i.loopexit515.unr-lcssa ], [ %i.bad, %bb.nl ], [ %i.azy, %.lr.ph1422.i.epil.preheader ]
  %.351085.i = phi ptr [ %.010501616.i, %bytestream2_put_byte.exit.i ], [ %.010501616.i, %bytestream2_put_byte.exit1219.i ], [ %.3110811430.i.epil.init, %.lr.ph1434.i.epil.preheader ], [ %.010501616.i, %bytestream2_put_byte.exit1245.i ], [ %.251075.lcssa.i, %.critedge35.i ], [ %.010501616.i, %bytestream2_put_byte.exit1241.i ], [ %.1310631575.i.epil.init, %.lr.ph1579.i.epil.preheader ], [ %.010501616.i, %bytestream2_put_byte.exit1233.i ], [ %.161066.lcssa.i, %.critedge23.i ], [ %.010501616.i, %bytestream2_put_byte.exit1225.i ], [ %.191069.lcssa.i, %.critedge27.i ], [ %.010501616.i, %bytestream2_put_byte.exit1211.i ], [ %.221072.lcssa.i, %.critedge31.i ], [ %.010501616.i, %bytestream2_put_byte.exit1207.i ], [ %.2710771454.i.epil.init, %.lr.ph1458.i.epil.preheader ], [ %.010501616.i, %bytestream2_put_byte.exit1205.i ], [ %.2910791442.i.epil.init, %.lr.ph1446.i.epil.preheader ], [ %.141064.i.1, %.critedge19.i.loopexit508.unr-lcssa ], [ %i.azb, %bb.nh ], [ %.281078.i.1, %.critedge19.i.loopexit512.unr-lcssa ], [ %i.azi, %bb.ni ], [ %.301080.i.1, %.critedge19.i.loopexit513.unr-lcssa ], [ %i.azp, %bb.nj ], [ %.321082.i.1, %.critedge19.i.loopexit514.unr-lcssa ], [ %i.azw, %bb.nk ], [ %.341084.i.1, %.critedge19.i.loopexit515.unr-lcssa ], [ %i.bad, %bb.nl ], [ %.3310831418.i.epil.init, %.lr.ph1422.i.epil.preheader ]
  %.21048.i = phi i32 [ %.010461625.i, %bytestream2_put_byte.exit.i ], [ %.010461625.i, %bytestream2_put_byte.exit1219.i ], [ %.010461625.i, %.critedge19.i.loopexit514.unr-lcssa ], [ %.010461625.i, %bytestream2_put_byte.exit1245.i ], [ %.010461625.i, %.critedge35.i ], [ %.11047.i, %bytestream2_put_byte.exit1241.i ], [ %.010461625.i, %.critedge19.i.loopexit508.unr-lcssa ], [ %.010461625.i, %bytestream2_put_byte.exit1233.i ], [ %.11047.i, %.critedge23.i ], [ %.010461625.i, %bytestream2_put_byte.exit1225.i ], [ %.010461625.i, %.critedge27.i ], [ %.010461625.i, %bytestream2_put_byte.exit1211.i ], [ %.010461625.i, %.critedge31.i ], [ %.010461625.i, %bytestream2_put_byte.exit1207.i ], [ %.010461625.i, %.critedge19.i.loopexit512.unr-lcssa ], [ %.010461625.i, %bytestream2_put_byte.exit1205.i ], [ %.010461625.i, %.critedge19.i.loopexit513.unr-lcssa ], [ %.010461625.i, %.lr.ph1579.i.epil.preheader ], [ %.010461625.i, %bb.nh ], [ %.010461625.i, %.lr.ph1458.i.epil.preheader ], [ %.010461625.i, %bb.ni ], [ %.010461625.i, %.lr.ph1446.i.epil.preheader ], [ %.010461625.i, %bb.nj ], [ %.010461625.i, %.lr.ph1434.i.epil.preheader ], [ %.010461625.i, %bb.nk ], [ %.010461625.i, %.lr.ph1422.i.epil.preheader ], [ %.010461625.i, %bb.nl ], [ %.010461625.i, %.critedge19.i.loopexit515.unr-lcssa ]
  %.21045.i = phi i32 [ %.010431626.i, %bytestream2_put_byte.exit.i ], [ %.010431626.i, %bytestream2_put_byte.exit1219.i ], [ %.010431626.i, %.critedge19.i.loopexit514.unr-lcssa ], [ %.010431626.i, %bytestream2_put_byte.exit1245.i ], [ %.010431626.i, %.critedge35.i ], [ %.010431626.i, %bytestream2_put_byte.exit1241.i ], [ %.010431626.i, %.critedge19.i.loopexit508.unr-lcssa ], [ %.11044.i, %bytestream2_put_byte.exit1233.i ], [ %.010431626.i, %.critedge23.i ], [ %.010431626.i, %bytestream2_put_byte.exit1225.i ], [ %.11044.i, %.critedge27.i ], [ %.010431626.i, %bytestream2_put_byte.exit1211.i ], [ %.010431626.i, %.critedge31.i ], [ %.010431626.i, %bytestream2_put_byte.exit1207.i ], [ %.010431626.i, %.critedge19.i.loopexit512.unr-lcssa ], [ %.010431626.i, %bytestream2_put_byte.exit1205.i ], [ %.010431626.i, %.critedge19.i.loopexit513.unr-lcssa ], [ %.010431626.i, %.lr.ph1579.i.epil.preheader ], [ %.010431626.i, %bb.nh ], [ %.010431626.i, %.lr.ph1458.i.epil.preheader ], [ %.010431626.i, %bb.ni ], [ %.010431626.i, %.lr.ph1446.i.epil.preheader ], [ %.010431626.i, %bb.nj ], [ %.010431626.i, %.lr.ph1434.i.epil.preheader ], [ %.010431626.i, %bb.nk ], [ %.010431626.i, %.lr.ph1422.i.epil.preheader ], [ %.010431626.i, %bb.nl ], [ %.010431626.i, %.critedge19.i.loopexit515.unr-lcssa ]
  %.21042.i = phi i32 [ %.010401627.i, %bytestream2_put_byte.exit.i ], [ %.010401627.i, %bytestream2_put_byte.exit1219.i ], [ %.010401627.i, %.critedge19.i.loopexit514.unr-lcssa ], [ %.010401627.i, %bytestream2_put_byte.exit1245.i ], [ %.010401627.i, %.critedge35.i ], [ %.010401627.i, %bytestream2_put_byte.exit1241.i ], [ %.010401627.i, %.critedge19.i.loopexit508.unr-lcssa ], [ %.010401627.i, %bytestream2_put_byte.exit1233.i ], [ %.010401627.i, %.critedge23.i ], [ %.11041.i, %bytestream2_put_byte.exit1225.i ], [ %.010401627.i, %.critedge27.i ], [ %.010401627.i, %bytestream2_put_byte.exit1211.i ], [ %.11041.i, %.critedge31.i ], [ %.010401627.i, %bytestream2_put_byte.exit1207.i ], [ %.010401627.i, %.critedge19.i.loopexit512.unr-lcssa ], [ %.010401627.i, %bytestream2_put_byte.exit1205.i ], [ %.010401627.i, %.critedge19.i.loopexit513.unr-lcssa ], [ %.010401627.i, %.lr.ph1579.i.epil.preheader ], [ %.010401627.i, %bb.nh ], [ %.010401627.i, %.lr.ph1458.i.epil.preheader ], [ %.010401627.i, %bb.ni ], [ %.010401627.i, %.lr.ph1446.i.epil.preheader ], [ %.010401627.i, %bb.nj ], [ %.010401627.i, %.lr.ph1434.i.epil.preheader ], [ %.010401627.i, %bb.nk ], [ %.010401627.i, %.lr.ph1422.i.epil.preheader ], [ %.010401627.i, %bb.nl ], [ %.010401627.i, %.critedge19.i.loopexit515.unr-lcssa ]
  %.351036.i = phi i32 [ %.010011628.i, %bytestream2_put_byte.exit.i ], [ %.010011628.i, %bytestream2_put_byte.exit1219.i ], [ %.3110321431.i.epil.init, %.lr.ph1434.i.epil.preheader ], [ %.010011628.i, %bytestream2_put_byte.exit1245.i ], [ %.251026.lcssa.i, %.critedge35.i ], [ %.010011628.i, %bytestream2_put_byte.exit1241.i ], [ %.1310141576.i.epil.init, %.lr.ph1579.i.epil.preheader ], [ %.010011628.i, %bytestream2_put_byte.exit1233.i ], [ %.161017.lcssa.i, %.critedge23.i ], [ %.010011628.i, %bytestream2_put_byte.exit1225.i ], [ %.191020.lcssa.i, %.critedge27.i ], [ %.010011628.i, %bytestream2_put_byte.exit1211.i ], [ %.221023.lcssa.i, %.critedge31.i ], [ %.010011628.i, %bytestream2_put_byte.exit1207.i ], [ %.2710281455.i.epil.init, %.lr.ph1458.i.epil.preheader ], [ %.010011628.i, %bytestream2_put_byte.exit1205.i ], [ %.2910301443.i.epil.init, %.lr.ph1446.i.epil.preheader ], [ %.141015.i.1, %.critedge19.i.loopexit508.unr-lcssa ], [ %i.azc, %bb.nh ], [ %.281029.i.1, %.critedge19.i.loopexit512.unr-lcssa ], [ %i.azj, %bb.ni ], [ %.301031.i.1, %.critedge19.i.loopexit513.unr-lcssa ], [ %i.azq, %bb.nj ], [ %.321033.i.1, %.critedge19.i.loopexit514.unr-lcssa ], [ %i.azx, %bb.nk ], [ %.341035.i.1, %.critedge19.i.loopexit515.unr-lcssa ], [ %i.bae, %bb.nl ], [ %.3310341419.i.epil.init, %.lr.ph1422.i.epil.preheader ]
  %.35.i = phi i32 [ %.09961632.i, %bytestream2_put_byte.exit.i ], [ %.09961632.i, %bytestream2_put_byte.exit1219.i ], [ %i.azs, %.lr.ph1434.i.epil.preheader ], [ %.09961632.i, %bytestream2_put_byte.exit1245.i ], [ %.25.lcssa.i, %.critedge35.i ], [ %.09961632.i, %bytestream2_put_byte.exit1241.i ], [ %i.ayx, %.lr.ph1579.i.epil.preheader ], [ %.09961632.i, %bytestream2_put_byte.exit1233.i ], [ %.16.lcssa.i, %.critedge23.i ], [ %.09961632.i, %bytestream2_put_byte.exit1225.i ], [ %.19.lcssa.i, %.critedge27.i ], [ %.09961632.i, %bytestream2_put_byte.exit1211.i ], [ %.22.lcssa.i, %.critedge31.i ], [ %.09961632.i, %bytestream2_put_byte.exit1207.i ], [ %i.aze, %.lr.ph1458.i.epil.preheader ], [ %.09961632.i, %bytestream2_put_byte.exit1205.i ], [ %i.azl, %.lr.ph1446.i.epil.preheader ], [ %.14.i.1, %.critedge19.i.loopexit508.unr-lcssa ], [ 0, %bb.nh ], [ %.28.i.1, %.critedge19.i.loopexit512.unr-lcssa ], [ 0, %bb.ni ], [ %.30.i.1, %.critedge19.i.loopexit513.unr-lcssa ], [ 0, %bb.nj ], [ %.32.i.1, %.critedge19.i.loopexit514.unr-lcssa ], [ 0, %bb.nk ], [ %.34.i.1, %.critedge19.i.loopexit515.unr-lcssa ], [ 0, %bb.nl ], [ %i.azz, %.lr.ph1422.i.epil.preheader ]
  %i.baf = add nsw i32 %.4.i, %.010491620.fr.i    ; 2 uses
  %i.bag = icmp slt i32 %i.baf, %i.bd
  br i1 %i.bag, label %.critedge3.preheader.i, label %smc_encode_stream.exit, !llvm.loop !52

smc_encode_stream.exit:                           ; preds = %.critedge19.i, %bb.i
  %.sroa.0.56 = phi ptr [ %.sroa.0.0, %bb.i ], [ %.sroa.0.4, %.critedge19.i ]
  %i.bah = ptrtoint ptr %.sroa.0.56 to i64
  %i.bai = ptrtoint ptr %i.z to i64
  %i.baj = sub i64 %i.bah, %i.bai
  %i.bak = trunc i64 %i.baj to i32
  call void @av_shrink_packet(ptr noundef nonnull %1, i32 noundef %i.bak) #11
  %i.bal = load ptr, ptr %i.y, align 8, !tbaa !60
  store i8 0, ptr %i.bal, align 1, !tbaa !32
  %i.bam = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.ban = trunc i32 %i.bam to i8
  %i.bao = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bao, i64 3
  store i8 %i.ban, ptr %i.bap, align 1, !tbaa !32
  %i.baq = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.bar = lshr i32 %i.baq, 8
  %i.bas = trunc i32 %i.bar to i8
  %i.bat = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bat, i64 2
  store i8 %i.bas, ptr %i.bau, align 1, !tbaa !32
  %i.bav = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.baw = lshr i32 %i.bav, 16
  %i.bax = trunc i32 %i.baw to i8
  %i.bay = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 1
  store i8 %i.bax, ptr %i.baz, align 1, !tbaa !32
  %i.bba = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.bbb = call i32 @av_frame_replace(ptr noundef %i.bba, ptr noundef nonnull %2) #11 ; 2 uses
  %i.bbc = icmp slt i32 %i.bbb, 0
  br i1 %i.bbc, label %bb.nm, label %bb.nn

bb.nm:                                            ; preds = %smc_encode_stream.exit
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2) #11
  br label %bb.nq

bb.nn:                                            ; preds = %smc_encode_stream.exit
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.c, i64 3636
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !58
  %.not43 = icmp eq i32 %i.bbe, 0
  br i1 %.not43, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bbf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bbg = load i32, ptr %i.bbf, align 8, !tbaa !73
  %i.bbh = or i32 %i.bbg, 1
  store i32 %i.bbh, ptr %i.bbf, align 8, !tbaa !73
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nn
  store i32 1, ptr %3, align 4, !tbaa !62
  br label %bb.nq

bb.nq:                                            ; preds = %bytestream2_put_be32.exit, %bb.a, %bb.np, %bb.nm
  %.0 = phi i32 [ %i.l, %bb.a ], [ %i.bbb, %bb.nm ], [ 0, %bb.np ], [ -12, %bytestream2_put_be32.exit ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @smc_encode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call void @av_frame_free(ptr noundef %i.b) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_alloc_packet(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @av_packet_new_side_data(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @smc_cmp_values(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !32
  %i.b = load i8, ptr %1, align 1, !tbaa !32
  %i.c = tail call i32 @llvm.ucmp.i32.i8(i8 %i.a, i8 %i.b)
  ret i32 %i.c
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!30 = !{!"SMCContext", !29, i64 0, !5, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !5, i64 36, !5, i64 52, !5, i64 564, !5, i64 1588, !6, i64 3636}
!31 = !{!30, !29, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!27, !6, i64 648}
!34 = distinct !{!34, !69}
!35 = distinct !{!35, !69}
!36 = distinct !{!36, !69}
!37 = distinct !{!37, !69}
!38 = distinct !{!38, !69}
!39 = distinct !{!39, !69}
!40 = distinct !{!40, !69}
!41 = distinct !{!41, !69}
!42 = distinct !{!42, !69}
!43 = distinct !{!43, !69}
!44 = distinct !{!44, !69}
!45 = distinct !{!45, !69}
!46 = distinct !{!46, !69}
!47 = distinct !{!47, !69}
!48 = distinct !{!48, !69}
!49 = distinct !{!49, !69}
!50 = distinct !{!50, !69}
!51 = distinct !{!51, !69}
!52 = distinct !{!52, !69}
!53 = !{!27, !6, i64 116}
!54 = !{!27, !6, i64 112}
!55 = !{!27, !6, i64 332}
!56 = !{!14, !14, i64 0}
!57 = !{!27, !13, i64 824}
!58 = !{!30, !6, i64 3636}
!59 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!60 = !{!59, !14, i64 24}
!61 = !{!59, !6, i64 32}
!62 = !{!6, !6, i64 0}
!63 = !{!"p2 omnipotent char", !25, i64 0}
!64 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!65 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!66 = !{!"AVFrame", !5, i64 0, !5, i64 64, !63, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !64, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !65, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!67 = !{!66, !6, i64 108}
!68 = !{!66, !6, i64 104}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!30, !6, i64 16}
!71 = !{!30, !6, i64 12}
!72 = !{!30, !5, i64 8}
!73 = !{!59, !6, i64 40}
end_hunk_3
