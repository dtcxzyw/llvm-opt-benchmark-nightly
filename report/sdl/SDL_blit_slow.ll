Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blit_slow?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@SDL_expand_byte = external local_unnamed_addr global [9 x ptr], align 16
@.str = private unnamed_addr constant [25 x i8] c"SDL.surface.HDR_headroom\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SDL.surface.tonemap\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"chrome\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@switch.table.SDL_Blit_Slow_Float = private unnamed_addr constant [5 x i8] c"\02\02\01\02\02", align 4

; Function Attrs: nounwind uwtable
define hidden void @SDL_Blit_Slow(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext i8 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.j = load i8, ptr %i.i, align 2
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8              ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8              ; 16 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.z = load i8, ptr %i.y, align 1               ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.ab = load i8, ptr %i.aa, align 1             ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = xor i32 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = load i32, ptr %i.p, align 4             ; 8 uses
  %.not.i = icmp eq i32 %i.ah, 0
  %.mask.i = and i32 %i.ah, -268435456
  %.not41.i = icmp eq i32 %.mask.i, 268435456     ; 2 uses
  %or.cond48.i = or i1 %.not.i, %.not41.i
  %i.ai = and i32 %i.ah, 255
  %i.aj = icmp samesign ugt i32 %i.ai, 4
  %or.cond56.i = select i1 %.not41.i, i1 %i.aj, i1 false
  br i1 %or.cond56.i, label %GetPixelAccessMethod.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.ak = and i32 %i.ah, -15794176
  %or.cond52.i = icmp eq i32 %i.ak, 369557504
  br i1 %or.cond52.i, label %GetPixelAccessMethod.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.al = icmp ne i32 %i.ah, 318769153            ; 2 uses
  %brmerge.not = and i1 %i.al, %or.cond48.i
  %.mux = zext i1 %i.al to i32
  br i1 %brmerge.not, label %bb.c, label %GetPixelAccessMethod.exit

bb.c:                                             ; preds = %bb.b
  %i.am = lshr i32 %i.ah, 24
  %i.an = and i32 %i.am, 15                       ; 2 uses
  %.off.i = add nsw i32 %i.an, -4
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = lshr i32 %i.ah, 20
  %i.ap = and i32 %i.ao, 15
  %i.aq = add nsw i32 %i.ap, -3
  %switch.and.i = and i32 %i.aq, -6
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %spec.select = select i1 %switch.selectcmp.i, i32 2, i32 1
  br label %GetPixelAccessMethod.exit

bb.e:                                             ; preds = %bb.c
  %.off57.i = add nsw i32 %i.an, -7
  %switch58.i = icmp ult i32 %.off57.i, 5
  br i1 %switch58.i, label %bb.f, label %GetPixelAccessMethod.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = lshr i32 %i.ah, 20
  %i.as = and i32 %i.ar, 15
  %switch.tableidx = add nsw i32 %i.as, -2        ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx, 5
  br i1 %i.at, label %switch.lookup, label %GetPixelAccessMethod.exit

switch.lookup:                                    ; preds = %bb.f
  %i.au = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SDL_Blit_Slow_Float, i64 %i.au
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %GetPixelAccessMethod.exit

GetPixelAccessMethod.exit:                        ; preds = %bb.b, %bb.e, %bb.f, %switch.lookup, %bb.d, %bb.a, %.critedge.i
  %.0.i = phi i32 [ 4, %bb.a ], [ 3, %.critedge.i ], [ %spec.select, %bb.d ], [ %.mux, %bb.b ], [ %switch.ext, %switch.lookup ], [ 1, %bb.f ], [ 1, %bb.e ]
  %i.av = load i32, ptr %i.t, align 4             ; 8 uses
  %.not.i634 = icmp eq i32 %i.av, 0
  %.mask.i635 = and i32 %i.av, -268435456
  %.not41.i636 = icmp eq i32 %.mask.i635, 268435456 ; 2 uses
  %or.cond48.i637 = or i1 %.not.i634, %.not41.i636
  %i.aw = and i32 %i.av, 255
  %i.ax = icmp samesign ugt i32 %i.aw, 4
  %or.cond56.i638 = select i1 %.not41.i636, i1 %i.ax, i1 false
  br i1 %or.cond56.i638, label %GetPixelAccessMethod.exit649.thread, label %.critedge.i639

.critedge.i639:                                   ; preds = %GetPixelAccessMethod.exit
  %i.ay = and i32 %i.av, -15794176
  %or.cond52.i640 = icmp eq i32 %i.ay, 369557504
  br i1 %or.cond52.i640, label %GetPixelAccessMethod.exit649.thread, label %bb.g

bb.g:                                             ; preds = %.critedge.i639
  %i.az = icmp eq i32 %i.av, 318769153
  br i1 %i.az, label %GetPixelAccessMethod.exit649, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond48.i637, label %bb.i, label %GetPixelAccessMethod.exit649.thread

bb.i:                                             ; preds = %bb.h
  %i.ba = lshr i32 %i.av, 24
  %i.bb = and i32 %i.ba, 15                       ; 2 uses
  %.off.i643 = add nsw i32 %i.bb, -4
  %switch.i644 = icmp ult i32 %.off.i643, 3
  br i1 %switch.i644, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = lshr i32 %i.av, 20
  %i.bd = and i32 %i.bc, 15
  %i.be = add nsw i32 %i.bd, -3
  %switch.and.i647 = and i32 %i.be, -6
  %switch.selectcmp.i648 = icmp eq i32 %switch.and.i647, 0
  %i.bf = select i1 %switch.selectcmp.i648, i8 2, i8 1
  br label %GetPixelAccessMethod.exit649.thread

bb.k:                                             ; preds = %bb.i
  %.off57.i645 = add nsw i32 %i.bb, -7
  %switch58.i646 = icmp ult i32 %.off57.i645, 5
  br i1 %switch58.i646, label %bb.l, label %GetPixelAccessMethod.exit649.thread

bb.l:                                             ; preds = %bb.k
  %i.bg = lshr i32 %i.av, 20
  %i.bh = and i32 %i.bg, 15
  %switch.tableidx811 = add nsw i32 %i.bh, -2     ; 2 uses
  %i.bi = icmp ult i32 %switch.tableidx811, 5
  br i1 %i.bi, label %switch.lookup812, label %GetPixelAccessMethod.exit649.thread

GetPixelAccessMethod.exit649:                     ; preds = %bb.g
  %i.bj = tail call zeroext i8 @SDL_LookupRGBAColor(ptr noundef %i.x, i32 noundef 0, ptr noundef %i.v) #4
  br label %GetPixelAccessMethod.exit649.thread

switch.lookup812:                                 ; preds = %bb.l
  %i.bk = zext nneg i32 %switch.tableidx811 to i64
  %switch.gep813 = getelementptr inbounds nuw i8, ptr @switch.table.SDL_Blit_Slow_Float, i64 %i.bk
  %switch.load814 = load i8, ptr %switch.gep813, align 1
  br label %GetPixelAccessMethod.exit649.thread

GetPixelAccessMethod.exit649.thread:              ; preds = %bb.h, %bb.k, %bb.l, %switch.lookup812, %bb.j, %.critedge.i639, %GetPixelAccessMethod.exit, %GetPixelAccessMethod.exit649
  %.0.i642651 = phi i8 [ 0, %GetPixelAccessMethod.exit649 ], [ %i.bf, %bb.j ], [ %switch.load814, %switch.lookup812 ], [ 4, %GetPixelAccessMethod.exit ], [ 3, %.critedge.i639 ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %.0557 = phi i8 [ %i.bj, %GetPixelAccessMethod.exit649 ], [ 0, %bb.j ], [ 0, %switch.lookup812 ], [ 0, %GetPixelAccessMethod.exit ], [ 0, %.critedge.i639 ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4            ; 4 uses
  %.not = icmp eq i32 %i.bm, 0                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %GetPixelAccessMethod.exit649.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 16
  %i.br = sext i32 %i.bm to i64
  %i.bs = udiv i64 %i.bq, %i.br
  br label %bb.n

bb.n:                                             ; preds = %GetPixelAccessMethod.exit649.thread, %bb.m
  %i.bt = phi i64 [ %i.bs, %bb.m ], [ 0, %GetPixelAccessMethod.exit649.thread ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8            ; 2 uses
  %.not620 = icmp eq i32 %i.bv, 0                 ; 2 uses
  br i1 %.not620, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 16
  %i.ca = sext i32 %i.bv to i64
  %i.cb = udiv i64 %i.bz, %i.ca
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.cc = phi i64 [ %i.cb, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.cd = add nsw i32 %i.bm, -1
  store i32 %i.cd, ptr %i.bl, align 4
  br i1 %.not, label %._crit_edge761, label %.lr.ph760

.lr.ph760:                                        ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.cf = lshr i64 %i.cc, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ci = zext i8 %i.z to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 25 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 29 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 26 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 30 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.p, i64 27 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.p, i64 31 ; 3 uses
  %i.cu = and i32 %i.b, 1024
  %.not623657 = icmp eq i32 %i.cu, 0              ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cw = icmp eq i8 %i.z, 3
  %i.cx = zext i8 %i.ab to i64                    ; 2 uses
  %i.cy = and i32 %i.b, 1008                      ; 2 uses
  %.not624 = icmp eq i32 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 12 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 28 ; 16 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 25 ; 12 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 29 ; 16 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 26 ; 12 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 30 ; 16 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 27 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 31 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dm = and i32 %i.b, 1
  %.not625 = icmp eq i32 %i.dm, 0
  %i.dn = and i32 %i.b, 2
  %.not626 = icmp eq i32 %i.dn, 0
  %i.do = and i32 %i.b, 80
  %i.dp = icmp ne i32 %i.do, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %.not620, label %.lr.ph760.split.us, label %.lr.ph760.split.preheader

.lr.ph760.split.preheader:                        ; preds = %.lr.ph760
  %i.dr = lshr i64 %i.bt, 1
  %.pre = load ptr, ptr %i.ce, align 8
  br label %.lr.ph760.split

.lr.ph760.split.us:                               ; preds = %.lr.ph760
  %i.ds = load i32, ptr %i.dq, align 8
  %i.dt = sext i32 %i.ds to i64
  %.promoted = load ptr, ptr %i.ce, align 8
  %i.du = zext i32 %i.bm to i64
  %i.dv = mul nsw i64 %i.du, %i.dt
  %scevgep = getelementptr i8, ptr %.promoted, i64 %i.dv
  store ptr %scevgep, ptr %i.ce, align 8
  store i32 -1, ptr %i.bl, align 4
  br label %._crit_edge761

.lr.ph760.split:                                  ; preds = %.lr.ph760.split.preheader, %.outer._crit_edge
  %i.dw = phi ptr [ %i.atc, %.outer._crit_edge ], [ %.pre, %.lr.ph760.split.preheader ]
  %.0554758 = phi i32 [ %.1.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.1558757 = phi i8 [ %.2559.ph.lcssa, %.outer._crit_edge ], [ %.0557, %.lr.ph760.split.preheader ] ; 2 uses
  %.0562756 = phi i32 [ %.1563.ph.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0567755 = phi i64 [ %i.asy, %.outer._crit_edge ], [ %i.dr, %.lr.ph760.split.preheader ] ; 2 uses
  %.0568754 = phi i32 [ %.1569.ph.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0574753 = phi i32 [ %.1575.ph.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0581752 = phi i32 [ %.1582.ph.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0588751 = phi i32 [ %.1589.ph.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0595750 = phi i32 [ %.1596.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0599749 = phi i32 [ %.1600.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0605748 = phi i32 [ %.1606.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %.0611747 = phi i32 [ %.1612.lcssa, %.outer._crit_edge ], [ 0, %.lr.ph760.split.preheader ] ; 2 uses
  %i.dx = load i32, ptr %i.bu, align 8            ; 2 uses
  %i.dy = lshr i64 %.0567755, 16
  %.not622690721 = icmp eq i32 %i.dx, 0
  br i1 %.not622690721, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph760.split, %.outer
  %.in = phi i32 [ %i.ef, %.outer ], [ %i.dx, %.lr.ph760.split ]
  %.1.ph734 = phi i32 [ %.5, %.outer ], [ %.0554758, %.lr.ph760.split ]
  %.0556.ph733 = phi ptr [ %i.asx, %.outer ], [ %i.dw, %.lr.ph760.split ]
  %.2559.ph732 = phi i8 [ %.4561, %.outer ], [ %.1558757, %.lr.ph760.split ] ; 14 uses
  %.1563.ph731 = phi i32 [ %.3565, %.outer ], [ %.0562756, %.lr.ph760.split ] ; 15 uses
  %.0566.ph730 = phi i64 [ %i.asw, %.outer ], [ %i.cf, %.lr.ph760.split ]
  %.1569.ph729 = phi i32 [ %.7, %.outer ], [ %.0568754, %.lr.ph760.split ] ; 4 uses
  %.1575.ph728 = phi i32 [ %.6580, %.outer ], [ %.0574753, %.lr.ph760.split ] ; 4 uses
  %.1582.ph727 = phi i32 [ %.6587, %.outer ], [ %.0581752, %.lr.ph760.split ] ; 4 uses
  %.1589.ph726 = phi i32 [ %.6594, %.outer ], [ %.0588751, %.lr.ph760.split ] ; 4 uses
  %.1596.ph725 = phi i32 [ %.3598, %.outer ], [ %.0595750, %.lr.ph760.split ]
  %.1600.ph724 = phi i32 [ %.5604, %.outer ], [ %.0599749, %.lr.ph760.split ]
  %.1606.ph723 = phi i32 [ %.5610, %.outer ], [ %.0605748, %.lr.ph760.split ]
  %.1612.ph722 = phi i32 [ %.5616, %.outer ], [ %.0611747, %.lr.ph760.split ]
  %i.dz = load ptr, ptr %i.cg, align 8
  %i.ea = load i32, ptr %i.ch, align 8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dy, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ec
  %i.ee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_expand_byte, i64 16), align 16 ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.ak
  %.in764 = phi i32 [ %.in, %.lr.ph ], [ %i.ef, %bb.ak ]
  %.1699 = phi i32 [ %.1.ph734, %.lr.ph ], [ %.4, %bb.ak ]
  %.0556697 = phi ptr [ %.0556.ph733, %.lr.ph ], [ %i.sv, %bb.ak ] ; 30 uses
  %.0566695 = phi i64 [ %.0566.ph730, %.lr.ph ], [ %i.su, %bb.ak ] ; 3 uses
  %.1596694 = phi i32 [ %.1596.ph725, %.lr.ph ], [ %.2597664673, %bb.ak ] ; 2 uses
  %.1600693 = phi i32 [ %.1600.ph724, %.lr.ph ], [ %.3602662676, %bb.ak ] ; 2 uses
  %.1606692 = phi i32 [ %.1606.ph723, %.lr.ph ], [ %.3608660678, %bb.ak ] ; 2 uses
  %.1612691 = phi i32 [ %.1612.ph722, %.lr.ph ], [ %.3614658680, %bb.ak ] ; 2 uses
  %i.ef = add nsw i32 %.in764, -1                 ; 4 uses
  %i.eg = lshr i64 %.0566695, 16
  %i.eh = mul nuw nsw i64 %i.eg, %i.ci
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eh ; 14 uses
  switch i32 %.0.i, label %bb.ah [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.y
    i32 3, label %bb.ac
  ]

bb.r:                                             ; preds = %bb.q
  %i.ej = load i8, ptr %i.ei, align 1             ; 2 uses
  %i.ek = zext i8 %i.ej to i32
  %i.el = load ptr, ptr %i.cv, align 8
  %i.em = zext i8 %i.ej to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.em ; 4 uses
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = zext i8 %i.ex to i32
  br label %bb.ah

bb.s:                                             ; preds = %bb.q
  switch i8 %i.z, label %bb.x [
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.ez = load i8, ptr %i.ei, align 1
  %i.fa = zext i8 %i.ez to i32                    ; 4 uses
  %i.fb = load i8, ptr %i.cj, align 4
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = load i32, ptr %i.ck, align 4
  %i.fg = and i32 %i.ff, %i.fa
  %i.fh = load i8, ptr %i.cl, align 4
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = lshr i32 %i.fg, %i.fi
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = load i8, ptr %i.cm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = load i32, ptr %i.cn, align 4
  %i.fs = and i32 %i.fr, %i.fa
  %i.ft = load i8, ptr %i.co, align 1
  %i.fu = zext nneg i8 %i.ft to i32
  %i.fv = lshr i32 %i.fs, %i.fu
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1
  %i.fz = load i8, ptr %i.cp, align 2
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load i32, ptr %i.cq, align 4
  %i.ge = and i32 %i.gd, %i.fa
  %i.gf = load i8, ptr %i.cr, align 2
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = lshr i32 %i.ge, %i.gg
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.gl = load i16, ptr %i.ei, align 2
  %i.gm = zext i16 %i.gl to i32                   ; 4 uses
  %i.gn = load i8, ptr %i.cj, align 4
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = load i32, ptr %i.ck, align 4
  %i.gs = and i32 %i.gr, %i.gm
  %i.gt = load i8, ptr %i.cl, align 4
  %i.gu = zext nneg i8 %i.gt to i32
  %i.gv = lshr i32 %i.gs, %i.gu
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1
  %i.gz = load i8, ptr %i.cm, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ha
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = load i32, ptr %i.cn, align 4
  %i.he = and i32 %i.hd, %i.gm
  %i.hf = load i8, ptr %i.co, align 1
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = lshr i32 %i.he, %i.hg
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = load i8, ptr %i.cp, align 2
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = load i32, ptr %i.cq, align 4
  %i.hq = and i32 %i.hp, %i.gm
  %i.hr = load i8, ptr %i.cr, align 2
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = lshr i32 %i.hq, %i.hs
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.hx = load i8, ptr %i.cl, align 4
  %i.hy = lshr i8 %i.hx, 3
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = load i8, ptr %i.co, align 1
  %i.id = lshr i8 %i.ic, 3
  %i.ie = zext nneg i8 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = load i8, ptr %i.cr, align 2
  %i.ii = lshr i8 %i.ih, 3
  %i.ij = zext nneg i8 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.im = load i32, ptr %i.ei, align 4            ; 4 uses
  %i.in = load i8, ptr %i.cj, align 4
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.io
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = load i32, ptr %i.ck, align 4
  %i.is = and i32 %i.ir, %i.im
  %i.it = load i8, ptr %i.cl, align 4
  %i.iu = zext nneg i8 %i.it to i32
  %i.iv = lshr i32 %i.is, %i.iu
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1
  %i.iz = load i8, ptr %i.cm, align 1
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = load i32, ptr %i.cn, align 4
  %i.je = and i32 %i.jd, %i.im
  %i.jf = load i8, ptr %i.co, align 1
  %i.jg = zext nneg i8 %i.jf to i32
  %i.jh = lshr i32 %i.je, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = load i8, ptr %i.cp, align 2
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.jm
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = load i32, ptr %i.cq, align 4
  %i.jq = and i32 %i.jp, %i.im
  %i.jr = load i8, ptr %i.cr, align 2
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = lshr i32 %i.jq, %i.js
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w, %bb.v, %bb.u, %bb.t
  %.2613.shrunk = phi i8 [ %i.iy, %bb.w ], [ %i.fm, %bb.t ], [ %i.gy, %bb.u ], [ %i.ib, %bb.v ], [ 0, %bb.s ]
  %.2607.shrunk = phi i8 [ %i.jk, %bb.w ], [ %i.fy, %bb.t ], [ %i.hk, %bb.u ], [ %i.ig, %bb.v ], [ 0, %bb.s ]
  %.2601.shrunk = phi i8 [ %i.jw, %bb.w ], [ %i.gk, %bb.t ], [ %i.hw, %bb.u ], [ %i.il, %bb.v ], [ 0, %bb.s ]
  %.2 = phi i32 [ %i.im, %bb.w ], [ %i.fa, %bb.t ], [ %i.gm, %bb.u ], [ 0, %bb.v ], [ 0, %bb.s ]
  %.2601 = zext i8 %.2601.shrunk to i32
  %.2607 = zext i8 %.2607.shrunk to i32
  %.2613 = zext i8 %.2613.shrunk to i32
  br label %bb.ah

bb.y:                                             ; preds = %bb.q
  switch i8 %i.z, label %bb.ah [
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %.thread
    i8 4, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  %i.jx = load i8, ptr %i.ei, align 1
  %i.jy = zext i8 %i.jx to i32                    ; 5 uses
  %i.jz = load i8, ptr %i.cj, align 4
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ka
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = load i32, ptr %i.ck, align 4
  %i.ke = and i32 %i.kd, %i.jy
  %i.kf = load i8, ptr %i.cl, align 4
  %i.kg = zext nneg i8 %i.kf to i32
  %i.kh = lshr i32 %i.ke, %i.kg
  %i.ki = zext nneg i32 %i.kh to i64
end_hunk_0
