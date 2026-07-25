inline.NumInlined: 35
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"in wwunpack\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"WWPack: next chunk out ouf file, giving up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"WWPack: inconsistent/hacked data, go figure!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"WWPack: Can't allocate %d bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"WWPack: packed data out of bounds, giving up.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"WWPack: unpacking failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"WWPack: found OEP @%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @wwunpack(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address) %6, i32 noundef %7, i16 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 59 uses
  %i.b = alloca i32, align 4                      ; 33 uses
  %i.c = alloca i32, align 4                      ; 18 uses
  %i.d = alloca i8, align 1                       ; 18 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #7
  %i.e = icmp ult i32 %7, 17
  %i.f = zext i32 %7 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 %i.f
  %i.h = zext i32 %2 to i64
  %i.i = zext i32 %3 to i64
  %i.j = sub nsw i64 %i.h, %i.i
  %i.k = zext i32 %1 to i64
  br i1 %i.e, label %.split142, label %.split

.split:                                           ; preds = %bb.a
  %i.l = icmp eq i32 %1, 0
  br i1 %i.l, label %.split.split.us, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  %i.m = getelementptr i8, ptr %6, i64 673        ; 2 uses
  %.not = icmp ult ptr %i.m, %6
  br label %.split.split

.split.split.us:                                  ; preds = %.split
  %.not100.us = icmp ugt i32 %7, 689
  br i1 %.not100.us, label %bb.b, label %.split142

bb.b:                                             ; preds = %.split.split.us
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 681
  %.val121.us = load i32, ptr %i.n, align 1
  %i.o = shl nsw i32 %.val121.us, 2               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 685
  %.val120.us = load i32, ptr %i.p, align 1
  %i.q = add i32 %.val120.us, 4
  %.not101.us = icmp eq i32 %i.o, %i.q
  br i1 %.not101.us, label %bb.c, label %.split146.us

bb.c:                                             ; preds = %bb.b
  %i.r = zext i32 %i.o to i64
  %i.s = tail call ptr @cli_calloc(i64 noundef %i.r, i64 noundef 1) #7 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.split148.us, label %.split150

.split.split:                                     ; preds = %.split.split.preheader, %bb.ez
  %.090 = phi ptr [ %i.u, %bb.ez ], [ %i.m, %.split.split.preheader ] ; 5 uses
  br i1 %.not, label %.split142, label %bb.d

bb.d:                                             ; preds = %.split.split
  %i.u = getelementptr inbounds nuw i8, ptr %.090, i64 17 ; 2 uses
  %.not100.not = icmp ugt ptr %i.u, %i.g
  br i1 %.not100.not, label %.split142, label %bb.e

.split142:                                        ; preds = %bb.d, %.split.split, %.split.split.us, %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #7
  br label %bb.fc

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.090, i64 8
  %.val121 = load i32, ptr %i.v, align 1          ; 2 uses
  %i.w = shl nsw i32 %.val121, 2                  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.090, i64 12
  %.val120 = load i32, ptr %i.x, align 1
  %i.y = add i32 %.val120, 4
  %.not101 = icmp eq i32 %i.w, %i.y
  br i1 %.not101, label %bb.f, label %.split146.us

.split146.us:                                     ; preds = %bb.e, %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #7
  br label %bb.fc

bb.f:                                             ; preds = %bb.e
  %.090.val = load i32, ptr %.090, align 1
  %i.z = zext i32 %i.w to i64                     ; 4 uses
  %i.aa = tail call ptr @cli_calloc(i64 noundef %i.z, i64 noundef 1) #7 ; 38 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.split148.us, label %bb.g

.split148.us:                                     ; preds = %bb.f, %bb.c
  %.us-phi = phi i32 [ %i.o, %bb.c ], [ %i.w, %bb.f ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %.us-phi) #7
  br label %bb.fc

bb.g:                                             ; preds = %bb.f
  %i.ac = sub i32 %4, %.090.val
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.j, %i.ad                 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 10 uses
  %i.ag = icmp eq i32 %.val121, 0
  %.not102 = icmp ugt i32 %i.w, %1
  %or.cond111 = or i1 %i.ag, %.not102
  %.not103 = icmp slt i64 %i.ae, 0
  %or.cond112 = select i1 %or.cond111, i1 true, i1 %.not103
  %i.ah = add nuw nsw i64 %i.ae, %i.z
  %.not104 = icmp sgt i64 %i.ah, %i.k
  %or.cond114 = select i1 %or.cond112, i1 true, i1 %.not104
  br i1 %or.cond114, label %.split150, label %bb.h

.split150:                                        ; preds = %bb.g, %bb.c
  %.us-phi151 = phi ptr [ %i.s, %bb.c ], [ %i.aa, %bb.g ]
  tail call void @free(ptr noundef nonnull %.us-phi151) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #7
  br label %bb.fc

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.af, i64 %i.z, i1 false)
  %i.ai = trunc i64 %i.ae to i32                  ; 2 uses
  %i.aj = sub i32 %1, %i.ai                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.val.i.i = load i32, ptr %i.aa, align 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z ; 30 uses
  %i.am = icmp eq i32 %1, %i.ai                   ; 3 uses
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.an ; 6 uses
  %i.ap = icmp ugt i32 %i.aj, 1
  br label %bb.i

thread-pre-split.i:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.bb, %bb.t, %bb.m
  %.0198.ph.i = phi ptr [ %i.bg, %bb.t ], [ %i.az, %bb.m ], [ %i.ee, %bb.bb ], [ %i.mt, %vec.epilog.middle.block ], [ %i.mm, %middle.block ], [ %.lcssa298.unr, %.lr.ph.i.prol.loopexit ], [ %i.oc, %.lr.ph.i ]
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !4
  %.pre.i = load i8, ptr %i.d, align 1, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split.i, %bb.h
  %i.aq = phi i8 [ %.pre.i, %thread-pre-split.i ], [ 32, %bb.h ]
  %i.ar = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %.val.i.i, %bb.h ] ; 2 uses
  %.0198.i = phi ptr [ %.0198.ph.i, %thread-pre-split.i ], [ %i.af, %bb.h ] ; 19 uses
  %i.as = shl i32 %i.ar, 1                        ; 4 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !4
  %i.at = add i8 %i.aq, -1                        ; 6 uses
  store i8 %i.at, ptr %i.d, align 1, !tbaa !11
  %i.au = icmp sgt i32 %i.ar, -1                  ; 2 uses
  %i.av = icmp ne i8 %i.at, 0
  %or.cond.i = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %.not283.i = icmp ult ptr %i.aw, %i.aa
  br i1 %.not283.i, label %getbits.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %.not284.i = icmp ugt ptr %i.ax, %i.al
  %.not285.i = icmp ult ptr %.0198.i, %i.af
  %i.ay = or i1 %i.am, %.not284.i
  %or.cond505.i = select i1 %i.ay, i1 true, i1 %.not285.i
  br i1 %or.cond505.i, label %getbits.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.0198.i, i64 1 ; 2 uses
  %.not286.not.i = icmp ugt ptr %i.az, %i.ao
  br i1 %.not286.not.i, label %getbits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !8
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !11
  store i8 %i.ba, ptr %.0198.i, align 1, !tbaa !11
  br label %thread-pre-split.i

bb.n:                                             ; preds = %bb.i
  %.not238.i = icmp eq i8 %i.at, 0
  br i1 %.not238.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !8   ; 4 uses
  %.not.i303.i = icmp ult ptr %i.bb, %i.aa
  br i1 %.not.i303.i, label %getbits.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 3 uses
  %.not18.not.i304.i = icmp ugt ptr %i.bc, %i.al
  br i1 %.not18.not.i304.i, label %getbits.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i305.i = load i32, ptr %i.bb, align 1     ; 3 uses
  store i32 %.val.i305.i, ptr %i.b, align 4, !tbaa !4
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !8
  store i8 32, ptr %i.d, align 1, !tbaa !11
  br i1 %i.au, label %bb.r, label %.thread.i

.thread.i:                                        ; preds = %bb.q
  %i.bd = lshr i32 %.val.i305.i, 30
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 5 ; 2 uses
  %.not242.i = icmp ugt ptr %i.be, %i.al
  %.not243.i = icmp ult ptr %.0198.i, %i.af
  %i.bf = or i1 %i.am, %.not242.i
  %or.cond506.i = select i1 %i.bf, i1 true, i1 %.not243.i
  br i1 %or.cond506.i, label %getbits.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %.0198.i, i64 1 ; 2 uses
  %.not244.not.i = icmp ugt ptr %i.bg, %i.ao
  br i1 %.not244.not.i, label %getbits.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %i.a, align 8, !tbaa !8
  %i.bh = load i8, ptr %i.bc, align 1, !tbaa !11
  store i8 %i.bh, ptr %.0198.i, align 1, !tbaa !11
  br label %thread-pre-split.i

bb.u:                                             ; preds = %bb.n
  %i.bi = lshr i32 %i.as, 30                      ; 2 uses
  %i.bj = icmp ugt i8 %i.at, 2
  br i1 %i.bj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %.thread.i
  %i.bk = phi i32 [ %i.bd, %.thread.i ], [ %i.bi, %bb.u ]
  %i.bl = phi i32 [ %.val.i305.i, %.thread.i ], [ %i.as, %bb.u ]
  %i.bm = phi i8 [ 32, %.thread.i ], [ %i.at, %bb.u ]
  %i.bn = shl i32 %i.bl, 2
  %i.bo = add i8 %i.bm, -2
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %.not.i = icmp eq i8 %i.at, 2
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = lshr i32 %i.as, 31
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %.not.i.i.i = icmp ult ptr %i.bq, %i.aa
  br i1 %.not.i.i.i, label %getbits.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %.not18.not.i.i.i = icmp ugt ptr %i.br, %i.al
  br i1 %.not18.not.i.i.i, label %getbits.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i = load i32, ptr %i.bq, align 1      ; 2 uses
  store ptr %i.br, ptr %i.a, align 8, !tbaa !8
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %.val.i.i.i, i32 1)
  %i.bt = shl i32 %.val.i.i.i, 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %.not.i38.i.i = icmp ult ptr %i.bu, %i.aa
  br i1 %.not.i38.i.i, label %getbits.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %.not18.not.i39.i.i = icmp ugt ptr %i.bv, %i.al
  br i1 %.not18.not.i39.i.i, label %getbits.exit.thread, label %getbitmap.exit41.i.i

getbitmap.exit41.i.i:                             ; preds = %bb.ab
  %.val.i40.i.i = load i32, ptr %i.bu, align 1
  store ptr %i.bv, ptr %i.a, align 8, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %getbitmap.exit41.i.i, %bb.z, %bb.v
  %i.bw = phi i32 [ %i.bn, %bb.v ], [ %i.bt, %bb.z ], [ %.val.i40.i.i, %getbitmap.exit41.i.i ] ; 5 uses
  %i.bx = phi i32 [ %i.bk, %bb.v ], [ %i.bs, %bb.z ], [ %i.bi, %getbitmap.exit41.i.i ]
  %i.by = phi i8 [ %i.bo, %bb.v ], [ 31, %bb.z ], [ 32, %getbitmap.exit41.i.i ] ; 8 uses
  %i.bz = and i32 %i.bx, 255                      ; 3 uses
  %i.ca = icmp samesign ugt i32 %i.bz, 2
  br i1 %i.ca, label %bb.ad, label %bb.bc

bb.ad:                                            ; preds = %bb.ac
  %i.cb = lshr i32 %i.bw, 30                      ; 2 uses
  %i.cc = icmp ugt i8 %i.by, 2
  br i1 %i.cc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cd = shl i32 %i.bw, 2
  %i.ce = add i8 %i.by, -2
  br label %bb.al

bb.af:                                            ; preds = %bb.ad
  %.not479.i = icmp eq i8 %i.by, 2
  br i1 %.not479.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = lshr i32 %i.bw, 31
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  %.not.i.i316.i = icmp ult ptr %i.cg, %i.aa
  br i1 %.not.i.i316.i, label %getbits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
begin_hunk_1_@wwunpack:bb.a
  %.promoted.i = phi i32 [ %i.kd, %bb.dr ], [ %i.kk, %bb.dv ], [ %.val.i40.i416.i, %getbitmap.exit41.i415.i ] ; 2 uses
  %i.ko = phi i32 [ %i.ka, %bb.dr ], [ %i.kj, %bb.dv ], [ %i.jy, %getbitmap.exit41.i415.i ] ; 2 uses
  %.promoted494.i = phi i8 [ %i.ke, %bb.dr ], [ %i.kl, %bb.dv ], [ 32, %getbitmap.exit41.i415.i ] ; 2 uses
  store i8 %.promoted494.i, ptr %i.d, align 1, !tbaa !11
  %i.kp = and i32 %i.ko, 255
  %.not264.i = icmp eq i32 %i.kp, 0
  br i1 %.not264.i, label %.preheader488.i, label %bb.dz

.preheader488.i:                                  ; preds = %bb.dy
  %.promoted498.i = load ptr, ptr %i.a, align 8   ; 4 uses
  %i.kq = shl i32 %.promoted.i, 1
  %i.kr = add i8 %.promoted494.i, -1              ; 2 uses
  %.not267.i = icmp eq i8 %i.kr, 0
  br i1 %.not267.i, label %bb.ea, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.ks = add i32 %i.ko, 13                       ; 2 uses
  store i32 %i.ks, ptr %i.c, align 4, !tbaa !4
  br label %bb.ev

bb.ea:                                            ; preds = %.preheader488.i
  %.not.i425.i = icmp ult ptr %.promoted498.i, %i.aa
  br i1 %.not.i425.i, label %getbits.exit.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.kt = getelementptr inbounds nuw i8, ptr %.promoted498.i, i64 4 ; 2 uses
  %.not18.not.i426.i = icmp ugt ptr %i.kt, %i.al
  br i1 %.not18.not.i426.i, label %getbits.exit.thread, label %getbitmap.exit428.i

getbitmap.exit428.i:                              ; preds = %bb.eb
  %.val.i427.i = load i32, ptr %.promoted498.i, align 1
  br label %bb.ec

bb.ec:                                            ; preds = %getbitmap.exit428.i, %.preheader488.i
  %i.ku = phi ptr [ %i.kt, %getbitmap.exit428.i ], [ %.promoted498.i, %.preheader488.i ] ; 5 uses
  %i.kv = phi i8 [ 32, %getbitmap.exit428.i ], [ %i.kr, %.preheader488.i ] ; 2 uses
  %.val.i427493.i = phi i32 [ %.val.i427.i, %getbitmap.exit428.i ], [ %i.kq, %.preheader488.i ] ; 3 uses
  %.not269.i = icmp sgt i32 %.promoted.i, -1
  br i1 %.not269.i, label %bb.ed, label %bb.el

bb.ed:                                            ; preds = %bb.ec
  %i.kw = shl i32 %.val.i427493.i, 1
  %i.kx = add i8 %i.kv, -1                        ; 2 uses
  %.not267.1.i = icmp eq i8 %i.kx, 0
  br i1 %.not267.1.i, label %bb.ee, label %bb.eg

bb.ee:                                            ; preds = %bb.ed
  %.not.i425.1.i = icmp ult ptr %i.ku, %i.aa
  br i1 %.not.i425.1.i, label %getbits.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  %.not18.not.i426.1.i = icmp ugt ptr %i.ky, %i.al
  br i1 %.not18.not.i426.1.i, label %getbits.exit.thread, label %getbitmap.exit428.1.i

getbitmap.exit428.1.i:                            ; preds = %bb.ef
  %.val.i427.1.i = load i32, ptr %i.ku, align 1
  br label %bb.eg

bb.eg:                                            ; preds = %getbitmap.exit428.1.i, %bb.ed
  %i.kz = phi ptr [ %i.ky, %getbitmap.exit428.1.i ], [ %i.ku, %bb.ed ] ; 5 uses
  %i.la = phi i8 [ 32, %getbitmap.exit428.1.i ], [ %i.kx, %bb.ed ] ; 2 uses
  %.val.i427493.1.i = phi i32 [ %.val.i427.1.i, %getbitmap.exit428.1.i ], [ %i.kw, %bb.ed ] ; 3 uses
  %.not269.1.i = icmp sgt i32 %.val.i427493.i, -1
  br i1 %.not269.1.i, label %bb.eh, label %bb.el

bb.eh:                                            ; preds = %bb.eg
  %i.lb = shl i32 %.val.i427493.1.i, 1
  %i.lc = add i8 %i.la, -1                        ; 2 uses
  %.not267.2.i = icmp eq i8 %i.lc, 0
  br i1 %.not267.2.i, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %.not.i425.2.i = icmp ult ptr %i.kz, %i.aa
  br i1 %.not.i425.2.i, label %getbits.exit.thread, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 4 ; 2 uses
  %.not18.not.i426.2.i = icmp ugt ptr %i.ld, %i.al
  br i1 %.not18.not.i426.2.i, label %getbits.exit.thread, label %getbitmap.exit428.2.i

getbitmap.exit428.2.i:                            ; preds = %bb.ej
  %.val.i427.2.i = load i32, ptr %i.kz, align 1
  br label %bb.ek

bb.ek:                                            ; preds = %getbitmap.exit428.2.i, %bb.eh
  %i.le = phi ptr [ %i.ld, %getbitmap.exit428.2.i ], [ %i.kz, %bb.eh ] ; 2 uses
  %i.lf = phi i8 [ 32, %getbitmap.exit428.2.i ], [ %i.lc, %bb.eh ] ; 2 uses
  %.val.i427493.2.i = phi i32 [ %.val.i427.2.i, %getbitmap.exit428.2.i ], [ %i.lb, %bb.eh ] ; 2 uses
  %.not269.2.i = icmp sgt i32 %.val.i427493.1.i, -1
  br i1 %.not269.2.i, label %bb.eu, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.eg, %bb.ec
  %.lcssa527.i = phi ptr [ %i.ku, %bb.ec ], [ %i.kz, %bb.eg ], [ %i.le, %bb.ek ] ; 7 uses
  %.lcssa526.i = phi i8 [ %i.kv, %bb.ec ], [ %i.la, %bb.eg ], [ %i.lf, %bb.ek ] ; 4 uses
  %.val.i427493.lcssa.i = phi i32 [ %.val.i427493.i, %bb.ec ], [ %.val.i427493.1.i, %bb.eg ], [ %.val.i427493.2.i, %bb.ek ] ; 3 uses
  %.lcssa525.i = phi i8 [ 5, %bb.ec ], [ 6, %bb.eg ], [ 7, %bb.ek ] ; 5 uses
  %.lcssa524.i = phi i32 [ 29, %bb.ec ], [ 61, %bb.eg ], [ 125, %bb.ek ]
  store i32 %.val.i427493.lcssa.i, ptr %i.b, align 4, !tbaa !4
  store ptr %.lcssa527.i, ptr %i.a, align 8
  %i.lg = zext nneg i8 %.lcssa525.i to i32        ; 2 uses
  %i.lh = sub nuw nsw i32 32, %i.lg
  %i.li = lshr i32 %.val.i427493.lcssa.i, %i.lh   ; 4 uses
  store i32 %i.li, ptr %i.c, align 4, !tbaa !4
  %i.lj = icmp ugt i8 %.lcssa526.i, %.lcssa525.i
  br i1 %i.lj, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.lk = shl i32 %.val.i427493.lcssa.i, %i.lg
  store i32 %i.lk, ptr %i.b, align 4, !tbaa !4
  %i.ll = sub nuw i8 %.lcssa526.i, %.lcssa525.i
  br label %bb.et

bb.en:                                            ; preds = %bb.el
  %i.lm = icmp samesign ult i8 %.lcssa526.i, %.lcssa525.i
  br i1 %i.lm, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %narrow.i = sub nuw nsw i8 %.lcssa525.i, %.lcssa526.i ; 2 uses
  %i.ln = zext nneg i8 %narrow.i to i32           ; 3 uses
  %i.lo = lshr i32 %i.li, %i.ln                   ; 2 uses
  store i32 %i.lo, ptr %i.c, align 4, !tbaa !4
  %.not.i.i = icmp ult ptr %.lcssa527.i, %i.aa
  br i1 %.not.i.i, label %getbits.exit.thread, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.lp = getelementptr inbounds nuw i8, ptr %.lcssa527.i, i64 4 ; 2 uses
  %.not18.not.i.i = icmp ugt ptr %i.lp, %i.al
  br i1 %.not18.not.i.i, label %getbits.exit.thread, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.val.i.i123 = load i32, ptr %.lcssa527.i, align 1 ; 2 uses
  store ptr %i.lp, ptr %i.a, align 8, !tbaa !8
  %i.lq = tail call i32 @llvm.fshl.i32(i32 %i.lo, i32 %.val.i.i123, i32 %i.ln)
  %i.lr = shl i32 %.val.i.i123, %i.ln
  store i32 %i.lr, ptr %i.b, align 4, !tbaa !4
  %i.ls = sub nuw nsw i8 32, %narrow.i
  br label %bb.et

bb.er:                                            ; preds = %bb.en
  %.not.i38.i = icmp ult ptr %.lcssa527.i, %i.aa
  br i1 %.not.i38.i, label %getbits.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.lt = getelementptr inbounds nuw i8, ptr %.lcssa527.i, i64 4 ; 2 uses
  %.not18.not.i39.i = icmp ugt ptr %i.lt, %i.al
  br i1 %.not18.not.i39.i, label %getbits.exit.thread, label %getbitmap.exit41.i

getbitmap.exit41.i:                               ; preds = %bb.es
  %.val.i40.i = load i32, ptr %.lcssa527.i, align 1
  store i32 %.val.i40.i, ptr %i.b, align 4, !tbaa !4
  store ptr %i.lt, ptr %i.a, align 8, !tbaa !8
  br label %bb.et

bb.et:                                            ; preds = %getbitmap.exit41.i, %bb.eq, %bb.em
  %i.lu = phi i32 [ %i.li, %bb.em ], [ %i.lq, %bb.eq ], [ %i.li, %getbitmap.exit41.i ] ; 2 uses
  %.sink.i122 = phi i8 [ %i.ll, %bb.em ], [ %i.ls, %bb.eq ], [ 32, %getbitmap.exit41.i ]
  store i8 %.sink.i122, ptr %i.d, align 1, !tbaa !11
  %i.lv = add i32 %i.lu, %.lcssa524.i
  %i.lw = and i32 %i.lu, -256
  %i.lx = and i32 %i.lv, 255
  %i.ly = or disjoint i32 %i.lx, %i.lw            ; 2 uses
  store i32 %i.ly, ptr %i.c, align 4, !tbaa !4
  br label %bb.ev

bb.eu:                                            ; preds = %bb.ek
  store i32 %.val.i427493.2.i, ptr %i.b, align 4, !tbaa !4
  store i8 %i.lf, ptr %i.d, align 1, !tbaa !11
  store ptr %i.le, ptr %i.a, align 8
  %i.lz = call fastcc i32 @getbits(i8 noundef zeroext 14, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.a, ptr noundef nonnull %i.aa, i32 noundef range(i32 1, 0) %i.w)
  %.not266.i = icmp eq i32 %i.lz, 0
  br i1 %.not266.i, label %._crit_edge.i, label %getbits.exit.thread

._crit_edge.i:                                    ; preds = %bb.eu
  %.pre530.i = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i, %bb.et, %bb.dz, %bb.dp, %bb.df
  %i.ma = phi i32 [ %.pre530.i, %._crit_edge.i ], [ %i.ly, %bb.et ], [ %i.jx, %bb.dp ], [ %i.ks, %bb.dz ], [ %i.ja, %bb.df ]
  %i.mb = trunc i32 %i.ma to i16
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.cx
  %.0201.i = phi i16 [ %i.mb, %bb.ev ], [ %i.il, %bb.cx ] ; 8 uses
  %i.mc = icmp eq i16 %.0201.i, 0
  %i.md = zext i16 %.0201.i to i32
  %.not271.i = icmp ult i32 %i.aj, %i.md
  %i.me = or i1 %i.mc, %.not271.i
  %or.cond298.i = select i1 %i.am, i1 true, i1 %i.me
  br i1 %or.cond298.i, label %getbits.exit.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.mf = zext nneg i32 %i.ik to i64
  %i.mg = sub nsw i64 0, %i.mf                    ; 12 uses
  %i.mh = getelementptr inbounds i8, ptr %.0198.i, i64 %i.mg ; 2 uses
  %.not272.i = icmp ult ptr %i.mh, %i.af
  br i1 %.not272.i, label %getbits.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.mi = zext i16 %.0201.i to i64                ; 7 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mi
  %.not273.i = icmp ule ptr %i.mj, %i.ao
  %.not274.i = icmp uge ptr %.0198.i, %i.af
  %or.cond300.not508.i = select i1 %.not273.i, i1 %.not274.i, i1 false
  %i.mk = getelementptr inbounds nuw i8, ptr %.0198.i, i64 %i.mi
  %.not275.i = icmp ule ptr %i.mk, %i.ao
  %or.cond507.i = select i1 %or.cond300.not508.i, i1 %.not275.i, i1 false
  br i1 %or.cond507.i, label %iter.check, label %getbits.exit.thread

iter.check:                                       ; preds = %bb.ey
  %min.iters.check = icmp ult i16 %.0201.i, 4
  %i.ml = add nsw i32 %i.ik, -1
  %diff.check = icmp ult i32 %i.ml, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check286 = icmp ult i16 %.0201.i, 32
  br i1 %min.iters.check286, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.mi, 28
  %n.vec = and i64 %i.mi, 65504                   ; 5 uses
  %i.mm = getelementptr i8, ptr %.0198.i, i64 %n.vec ; 2 uses
  %i.mn = trunc nuw i64 %n.vec to i16
  %i.mo = sub i16 %.0201.i, %i.mn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0198.i, i64 %index ; 3 uses
  %i.mp = getelementptr inbounds i8, ptr %next.gep, i64 %i.mg ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load = load <16 x i8>, ptr %i.mp, align 1, !tbaa !11
  %wide.load287 = load <16 x i8>, ptr %i.mq, align 1, !tbaa !11
  %i.mr = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !11
  store <16 x i8> %wide.load287, ptr %i.mr, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %thread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec290 = and i64 %i.mi, 65532                ; 4 uses
  %i.mt = getelementptr i8, ptr %.0198.i, i64 %n.vec290 ; 2 uses
  %i.mu = trunc nuw i64 %n.vec290 to i16
  %i.mv = sub i16 %.0201.i, %i.mu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index291 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next294, %vec.epilog.vector.body ] ; 2 uses
  %next.gep292 = getelementptr i8, ptr %.0198.i, i64 %index291 ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %next.gep292, i64 %i.mg
  %wide.load293 = load <4 x i8>, ptr %i.mw, align 1, !tbaa !11
  store <4 x i8> %wide.load293, ptr %next.gep292, align 1, !tbaa !11
  %index.next294 = add nuw i64 %index291, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next294, %n.vec290
  br i1 %i.mx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n295 = icmp eq i64 %n.vec290, %i.mi
  br i1 %cmp.n295, label %thread-pre-split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2200504.i.ph = phi ptr [ %.0198.i, %iter.check ], [ %i.mm, %vec.epilog.iter.check ], [ %i.mt, %vec.epilog.middle.block ] ; 2 uses
  %.1202503.i.ph = phi i16 [ %.0201.i, %iter.check ], [ %i.mo, %vec.epilog.iter.check ], [ %i.mv, %vec.epilog.middle.block ] ; 4 uses
  %i.my = add i16 %.1202503.i.ph, -1
  %xtraiter = and i16 %.1202503.i.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.2200504.i.prol = phi ptr [ %i.nc, %.lr.ph.i.prol ], [ %.2200504.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.1202503.i.prol = phi i16 [ %i.mz, %.lr.ph.i.prol ], [ %.1202503.i.ph, %.lr.ph.i.preheader ]
  %prol.iter = phi i16 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.mz = add i16 %.1202503.i.prol, -1            ; 2 uses
  %i.na = getelementptr inbounds i8, ptr %.2200504.i.prol, i64 %i.mg
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !11
  store i8 %i.nb, ptr %.2200504.i.prol, align 1, !tbaa !11
  %i.nc = getelementptr inbounds nuw i8, ptr %.2200504.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !18

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa298.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.nc, %.lr.ph.i.prol ]
  %.2200504.i.unr = phi ptr [ %.2200504.i.ph, %.lr.ph.i.preheader ], [ %i.nc, %.lr.ph.i.prol ]
  %.1202503.i.unr = phi i16 [ %.1202503.i.ph, %.lr.ph.i.preheader ], [ %i.mz, %.lr.ph.i.prol ]
  %i.nd = icmp ult i16 %i.my, 7
  br i1 %i.nd, label %thread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.2200504.i = phi ptr [ %i.oc, %.lr.ph.i ], [ %.2200504.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.1202503.i = phi i16 [ %i.nz, %.lr.ph.i ], [ %.1202503.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ne = getelementptr inbounds i8, ptr %.2200504.i, i64 %i.mg
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !11
  store i8 %i.nf, ptr %.2200504.i, align 1, !tbaa !11
  %i.ng = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 1 ; 2 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %i.mg
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !11
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !11
  %i.nj = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 2 ; 2 uses
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %i.mg
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !11
  store i8 %i.nl, ptr %i.nj, align 1, !tbaa !11
  %i.nm = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 3 ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 %i.mg
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !11
  store i8 %i.no, ptr %i.nm, align 1, !tbaa !11
  %i.np = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 4 ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 %i.mg
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !11
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !11
  %i.ns = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 5 ; 2 uses
  %i.nt = getelementptr inbounds i8, ptr %i.ns, i64 %i.mg
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !11
  store i8 %i.nu, ptr %i.ns, align 1, !tbaa !11
  %i.nv = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 6 ; 2 uses
  %i.nw = getelementptr inbounds i8, ptr %i.nv, i64 %i.mg
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !11
  store i8 %i.nx, ptr %i.nv, align 1, !tbaa !11
  %i.ny = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 7 ; 2 uses
  %i.nz = add i16 %.1202503.i, -8                 ; 2 uses
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.mg
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !11
  store i8 %i.ob, ptr %i.ny, align 1, !tbaa !11
  %i.oc = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 8 ; 2 uses
  %.not276.i.7 = icmp eq i16 %i.nz, 0
  br i1 %.not276.i.7, label %thread-pre-split.i, label %.lr.ph.i, !llvm.loop !20

getbits.exit.thread:                              ; preds = %bb.ep, %bb.eo, %bb.er, %bb.es, %bb.ea, %bb.ej, %bb.ei, %bb.ef, %bb.ee, %bb.eb, %bb.cb, %bb.cz, %bb.cd, %bb.ce, %bb.de, %bb.bs, %bb.bt, %bb.bn, %bb.bo, %bb.bg, %bb.du, %bb.bi, %bb.bj, %bb.cn, %bb.as, %bb.cv, %bb.au, %bb.av, %bb.dn, %bb.ag, %bb.ah, %bb.ck, %bb.aj, %bb.ak, %bb.cu, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.y, %bb.dd, %bb.aa, %bb.ab, %bb.dw, %bb.o, %bb.p, %bb.dx, %bb.eu, %bb.ex, %bb.ey, %bb.x, %bb.ca, %bb.r, %bb.s, %bb.k, %bb.l, %bb.j, %bb.da, %bb.cs, %bb.bf, %bb.ar, %bb.dt, %bb.ew, %bb.cr, %bb.cj, %bb.dk, %bb.dj, %bb.dm, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  tail call void @free(ptr noundef %i.aa) #7
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #7
  br label %bb.fc

bb.ez:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  tail call void @free(ptr noundef %i.aa) #7
  %i.od = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !11
  %.not106 = icmp eq i8 %i.oe, 0
  br i1 %.not106, label %bb.fa, label %.split.split

bb.fa:                                            ; preds = %bb.ez
  %i.of = zext i32 %5 to i64
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 %i.of ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 6
  store i16 %8, ptr %i.oh, align 1
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 661
  %.val119 = load i32, ptr %i.oi, align 1
  %i.oj = add i32 %4, 665
  %i.ok = add i32 %i.oj, %.val119                 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %i.ok) #7
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  store i32 %i.ok, ptr %i.ol, align 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 80 ; 2 uses
  %.val118 = load i32, ptr %i.om, align 1
  %i.on = and i32 %7, 4095
  %.not107 = icmp eq i32 %i.on, 0
  %i.oo = select i1 %.not107, i32 0, i32 4096
  %i.op = add i32 %i.oo, %7
  %i.oq = and i32 %i.op, -4096
  %i.or = sub i32 %.val118, %i.oq
  store i32 %i.or, ptr %i.om, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  %.val117 = load i32, ptr %i.os, align 1
  %i.ot = and i32 %.val117, 65535
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  %.not108152 = icmp eq i16 %8, 0
  br i1 %.not108152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fa
  %i.ox = sub i32 %2, %3
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph, %bb.fb
  %.089154 = phi i16 [ %8, %.lr.ph ], [ %i.oy, %bb.fb ]
  %.1153 = phi ptr [ %i.ow, %.lr.ph ], [ %i.pj, %bb.fb ] ; 5 uses
  %i.oy = add i16 %.089154, -1                    ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 2 uses
  %.val116 = load i32, ptr %i.oz, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.1153, i64 16 ; 2 uses
  %.val115 = load i32, ptr %i.pa, align 1
  %i.pb = tail call i32 @llvm.umax.i32(i32 %.val115, i32 %.val116) ; 2 uses
  %i.pc = and i32 %i.pb, 4095
  %.not109 = icmp eq i32 %i.pc, 0
end_hunk_1
