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
  %.0198.ph.i = phi ptr [ %i.bg, %bb.t ], [ %i.az, %bb.m ], [ %i.ee, %bb.bb ], [ %i.mu, %vec.epilog.middle.block ], [ %i.mn, %middle.block ], [ %.lcssa297.unr, %.lr.ph.i.prol.loopexit ], [ %i.od, %.lr.ph.i ]
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

end_hunk_0
begin_hunk_1_@wwunpack:bb.a
  store i8 %.sink.i122, ptr %i.d, align 1, !tbaa !11
  %i.lv = add i32 %i.lu, %.lcssa522.i
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
  %.pre528.i = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i, %bb.et, %bb.dz, %bb.dp, %bb.df
  %i.ma = phi i32 [ %.pre528.i, %._crit_edge.i ], [ %i.ly, %bb.et ], [ %i.jx, %bb.dp ], [ %i.ks, %bb.dz ], [ %i.ja, %bb.df ]
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
  %i.mm = and i64 %i.mi, 28
  %n.vec = and i64 %i.mi, 65504                   ; 5 uses
  %i.mn = getelementptr i8, ptr %.0198.i, i64 %n.vec ; 2 uses
  %i.mo = trunc nuw i64 %n.vec to i16
  %i.mp = sub i16 %.0201.i, %i.mo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0198.i, i64 %index ; 3 uses
  %i.mq = getelementptr inbounds i8, ptr %next.gep, i64 %i.mg ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %wide.load = load <16 x i8>, ptr %i.mq, align 1, !tbaa !11
  %wide.load287 = load <16 x i8>, ptr %i.mr, align 1, !tbaa !11
  %i.ms = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !11
  store <16 x i8> %wide.load287, ptr %i.ms, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mi
  br i1 %cmp.n, label %thread-pre-split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !16

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec289 = and i64 %i.mi, 65532                ; 4 uses
  %i.mu = getelementptr i8, ptr %.0198.i, i64 %n.vec289 ; 2 uses
  %i.mv = trunc nuw i64 %n.vec289 to i16
  %i.mw = sub i16 %.0201.i, %i.mv
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index290 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %next.gep291 = getelementptr i8, ptr %.0198.i, i64 %index290 ; 2 uses
  %i.mx = getelementptr inbounds i8, ptr %next.gep291, i64 %i.mg
  %wide.load292 = load <4 x i8>, ptr %i.mx, align 1, !tbaa !11
  store <4 x i8> %wide.load292, ptr %next.gep291, align 1, !tbaa !11
  %index.next293 = add nuw i64 %index290, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.my, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %n.vec289, %i.mi
  br i1 %cmp.n294, label %thread-pre-split.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.2200504.i.ph = phi ptr [ %.0198.i, %iter.check ], [ %i.mn, %vec.epilog.iter.check ], [ %i.mu, %vec.epilog.middle.block ] ; 2 uses
  %.1202503.i.ph = phi i16 [ %.0201.i, %iter.check ], [ %i.mp, %vec.epilog.iter.check ], [ %i.mw, %vec.epilog.middle.block ] ; 4 uses
  %i.mz = add i16 %.1202503.i.ph, -1
  %xtraiter = and i16 %.1202503.i.ph, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i16 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.2200504.i.prol = phi ptr [ %i.nd, %.lr.ph.i.prol ], [ %.2200504.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.1202503.i.prol = phi i16 [ %i.na, %.lr.ph.i.prol ], [ %.1202503.i.ph, %.lr.ph.i.preheader ]
  %prol.iter = phi i16 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.na = add i16 %.1202503.i.prol, -1            ; 2 uses
  %i.nb = getelementptr inbounds i8, ptr %.2200504.i.prol, i64 %i.mg
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !11
  store i8 %i.nc, ptr %.2200504.i.prol, align 1, !tbaa !11
  %i.nd = getelementptr inbounds nuw i8, ptr %.2200504.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i16 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i16 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !18

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.nd, %.lr.ph.i.prol ]
  %.2200504.i.unr = phi ptr [ %.2200504.i.ph, %.lr.ph.i.preheader ], [ %i.nd, %.lr.ph.i.prol ]
  %.1202503.i.unr = phi i16 [ %.1202503.i.ph, %.lr.ph.i.preheader ], [ %i.na, %.lr.ph.i.prol ]
  %i.ne = icmp ult i16 %i.mz, 7
  br i1 %i.ne, label %thread-pre-split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.2200504.i = phi ptr [ %i.od, %.lr.ph.i ], [ %.2200504.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %.1202503.i = phi i16 [ %i.oa, %.lr.ph.i ], [ %.1202503.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.nf = getelementptr inbounds i8, ptr %.2200504.i, i64 %i.mg
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !11
  store i8 %i.ng, ptr %.2200504.i, align 1, !tbaa !11
  %i.nh = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 1 ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %i.nh, i64 %i.mg
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !11
  store i8 %i.nj, ptr %i.nh, align 1, !tbaa !11
  %i.nk = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 2 ; 2 uses
  %i.nl = getelementptr inbounds i8, ptr %i.nk, i64 %i.mg
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !11
  store i8 %i.nm, ptr %i.nk, align 1, !tbaa !11
  %i.nn = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 3 ; 2 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.mg
  %i.np = load i8, ptr %i.no, align 1, !tbaa !11
  store i8 %i.np, ptr %i.nn, align 1, !tbaa !11
  %i.nq = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 4 ; 2 uses
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.mg
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !11
  store i8 %i.ns, ptr %i.nq, align 1, !tbaa !11
  %i.nt = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 5 ; 2 uses
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 %i.mg
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !11
  store i8 %i.nv, ptr %i.nt, align 1, !tbaa !11
  %i.nw = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 6 ; 2 uses
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %i.mg
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !11
  store i8 %i.ny, ptr %i.nw, align 1, !tbaa !11
  %i.nz = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 7 ; 2 uses
  %i.oa = add i16 %.1202503.i, -8                 ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %i.nz, i64 %i.mg
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !11
  store i8 %i.oc, ptr %i.nz, align 1, !tbaa !11
  %i.od = getelementptr inbounds nuw i8, ptr %.2200504.i, i64 8 ; 2 uses
  %.not276.i.7 = icmp eq i16 %i.oa, 0
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
  %i.oe = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !11
  %.not106 = icmp eq i8 %i.of, 0
  br i1 %.not106, label %bb.fa, label %.split.split

bb.fa:                                            ; preds = %bb.ez
  %i.og = zext i32 %5 to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %i.og ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 6
  store i16 %8, ptr %i.oi, align 1
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 661
  %.val119 = load i32, ptr %i.oj, align 1
  %i.ok = add i32 %4, 665
  %i.ol = add i32 %i.ok, %.val119                 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %i.ol) #7
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  store i32 %i.ol, ptr %i.om, align 1
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 80 ; 2 uses
  %.val118 = load i32, ptr %i.on, align 1
  %i.oo = and i32 %7, 4095
  %.not107 = icmp eq i32 %i.oo, 0
  %i.op = select i1 %.not107, i32 0, i32 4096
  %i.oq = add i32 %i.op, %7
  %i.or = and i32 %i.oq, -4096
  %i.os = sub i32 %.val118, %i.or
  store i32 %i.os, ptr %i.on, align 1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 20
  %.val117 = load i32, ptr %i.ot, align 1
  %i.ou = and i32 %.val117, 65535
  %i.ov = zext nneg i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 24 ; 2 uses
  %.not108152 = icmp eq i16 %8, 0
  br i1 %.not108152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.fa
  %i.oy = sub i32 %2, %3
  br label %bb.fb

bb.fb:                                            ; preds = %.lr.ph, %bb.fb
  %.089154 = phi i16 [ %8, %.lr.ph ], [ %i.oz, %bb.fb ]
  %.1153 = phi ptr [ %i.ox, %.lr.ph ], [ %i.pk, %bb.fb ] ; 5 uses
  %i.oz = add i16 %.089154, -1                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.1153, i64 8 ; 2 uses
  %.val116 = load i32, ptr %i.pa, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %.1153, i64 16 ; 2 uses
  %.val115 = load i32, ptr %i.pb, align 1
  %i.pc = tail call i32 @llvm.umax.i32(i32 %.val115, i32 %.val116) ; 2 uses
  %i.pd = and i32 %i.pc, 4095
  %.not109 = icmp eq i32 %i.pd, 0
  %i.pe = select i1 %.not109, i32 0, i32 4096
  %i.pf = add i32 %i.pe, %i.pc
  %i.pg = and i32 %i.pf, -4096                    ; 2 uses
  store i32 %i.pg, ptr %i.pa, align 1
  store i32 %i.pg, ptr %i.pb, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %.1153, i64 20
  %i.pi = getelementptr inbounds nuw i8, ptr %.1153, i64 12
  %.val = load i32, ptr %i.pi, align 1
  %i.pj = add i32 %i.oy, %.val
  store i32 %i.pj, ptr %i.ph, align 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.1153, i64 40 ; 2 uses
  %.not108 = icmp eq i16 %i.oz, 0
  br i1 %.not108, label %._crit_edge, label %bb.fb, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.fb, %bb.fa
  %.1.lcssa = phi ptr [ %i.ox, %bb.fa ], [ %i.pk, %bb.fb ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.1.lcssa, i8 0, i64 40, i1 false)
  br label %bb.fc

bb.fc:                                            ; preds = %._crit_edge, %getbits.exit.thread, %.split150, %.split148.us, %.split146.us, %.split142
  %.0 = phi i32 [ 1, %.split146.us ], [ 1, %.split148.us ], [ 1, %getbits.exit.thread ], [ 0, %._crit_edge ], [ 1, %.split150 ], [ 1, %.split142 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @getbits(i8 noundef zeroext %0, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull readnone captures(address) %5, i32 noundef range(i32 1, 0) %6) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = zext i8 %0 to i32                        ; 2 uses
  %i.c = sub nsw i32 32, %i.b
  %i.d = lshr i32 %i.a, %i.c                      ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !4
  %i.e = load i8, ptr %3, align 1, !tbaa !11      ; 3 uses
  %i.f = icmp ugt i8 %i.e, %0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 4, !tbaa !4
  %i.h = shl i32 %i.g, %i.b
  store i32 %i.h, ptr %2, align 4, !tbaa !4
  %i.i = load i8, ptr %3, align 1, !tbaa !11
  %i.j = sub i8 %i.i, %0
  br label %getbitmap.exit.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ult i8 %i.e, %0
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw i8 %0, %i.e                   ; 2 uses
  %i.l = zext i8 %narrow to i32                   ; 4 uses
  %i.m = lshr i32 %i.d, %i.l
  store i32 %i.m, ptr %1, align 4, !tbaa !4
  %i.n = icmp ugt i32 %6, 3
  br i1 %i.n, label %bb.e, label %getbitmap.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %4, align 8, !tbaa !8      ; 3 uses
  %.not.i = icmp ult ptr %i.o, %5
  br i1 %.not.i, label %getbitmap.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = zext i32 %6 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 %i.q
  %.not18.not.i = icmp ugt ptr %i.p, %i.r
  br i1 %.not18.not.i, label %getbitmap.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load i32, ptr %i.o, align 1
  store i32 %.val.i, ptr %2, align 4, !tbaa !4
  store ptr %i.p, ptr %4, align 8, !tbaa !8
  store i8 32, ptr %3, align 1, !tbaa !11
  %i.s = load i32, ptr %1, align 4, !tbaa !4
  %i.t = shl i32 %i.s, %i.l                       ; 2 uses
  store i32 %i.t, ptr %1, align 4, !tbaa !4
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  %i.v = sub nsw i32 32, %i.l
  %i.w = lshr i32 %i.u, %i.v
  %i.x = or disjoint i32 %i.w, %i.t
  store i32 %i.x, ptr %1, align 4, !tbaa !4
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = shl i32 %i.y, %i.l
  store i32 %i.z, ptr %2, align 4, !tbaa !4
  %i.aa = load i8, ptr %3, align 1, !tbaa !11
  %i.ab = sub i8 %i.aa, %narrow
  br label %getbitmap.exit.thread.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ac = icmp ugt i32 %6, 3
  br i1 %i.ac, label %bb.i, label %getbitmap.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %4, align 8, !tbaa !8     ; 3 uses
  %.not.i38 = icmp ult ptr %i.ad, %5
  br i1 %.not.i38, label %getbitmap.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = zext i32 %6 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 %i.af
  %.not18.not.i39 = icmp ugt ptr %i.ae, %i.ag
  br i1 %.not18.not.i39, label %getbitmap.exit.thread, label %getbitmap.exit41

getbitmap.exit41:                                 ; preds = %bb.j
  %.val.i40 = load i32, ptr %i.ad, align 1
  store i32 %.val.i40, ptr %2, align 4, !tbaa !4
  store ptr %i.ae, ptr %4, align 8, !tbaa !8
  br label %getbitmap.exit.thread.sink.split

getbitmap.exit.thread.sink.split:                 ; preds = %getbitmap.exit41, %bb.g, %bb.b
  %.sink = phi i8 [ %i.j, %bb.b ], [ %i.ab, %bb.g ], [ 32, %getbitmap.exit41 ]
  store i8 %.sink, ptr %3, align 1, !tbaa !11
  br label %getbitmap.exit.thread

getbitmap.exit.thread:                            ; preds = %getbitmap.exit.thread.sink.split, %bb.h, %bb.i, %bb.j, %bb.d, %bb.e, %bb.f
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %getbitmap.exit.thread.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

end_hunk_1
