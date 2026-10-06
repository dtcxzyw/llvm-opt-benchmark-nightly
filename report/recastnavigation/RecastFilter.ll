Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastFilter?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @_Z35rcFilterLowHangingWalkableObstaclesP9rcContextiR13rcHeightfield(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 10) #3, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge44.split

.preheader.lr.ph:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.k = icmp sgt i32 %i.g, 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge44.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = zext nneg i32 %i.g to i64                ; 2 uses
  %wide.trip.count49 = zext nneg i32 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge42
  %indvars.iv46 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next47, %._crit_edge42 ] ; 2 uses
  %i.n = mul nuw nsw i64 %indvars.iv46, %i.m
  br label %bb.d

._crit_edge44.split:                              ; preds = %._crit_edge42, %.preheader.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN13rcScopedTimerD2Ev.exit

bb.c:                                             ; preds = %._crit_edge44.split
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 10) #3, !call_target !68, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %._crit_edge44.split, %bb.c
  ret void

._crit_edge42:                                    ; preds = %._crit_edge
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge44.split, label %.preheader

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.n
  %.034 = load ptr, ptr %i.v, align 8, !tbaa !70  ; 2 uses
  %.not3235 = icmp eq ptr %.034, null
  br i1 %.not3235, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge42, label %bb.d

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %.039 = phi ptr [ %.0, %bb.g ], [ %.034, %bb.d ] ; 4 uses
  %.02638 = phi i32 [ %i.af, %bb.g ], [ 0, %bb.d ]
  %.02737 = phi i1 [ %i.x, %bb.g ], [ false, %bb.d ]
  %.02836 = phi ptr [ %.039, %bb.g ], [ null, %bb.d ]
  %i.w = load i32, ptr %.039, align 8             ; 5 uses
  %i.x = icmp ugt i32 %i.w, 67108863              ; 2 uses
  %.not = xor i1 %i.x, true
  %or.cond = and i1 %.02737, %.not
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.y = lshr i32 %i.w, 13
  %i.z = load i32, ptr %.02836, align 8
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.aa, 8191
  %i.ac = sub nsw i32 %i.y, %i.ab
  %.not33 = icmp sgt i32 %i.ac, %1
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i32 %i.w, %.02638           ; 2 uses
  store i32 %i.ad, ptr %.039, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph
  %i.ae = phi i32 [ %i.ad, %bb.f ], [ %i.w, %bb.e ], [ %i.w, %.lr.ph ]
  %i.af = and i32 %i.ae, -67108864
  %i.ag = getelementptr inbounds nuw i8, ptr %.039, i64 8
  %.0 = load ptr, ptr %i.ag, align 8, !tbaa !70   ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind uwtable
define void @_Z18rcFilterLedgeSpansP9rcContextiiR13rcHeightfield(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 7) #3, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !66
  %.fr = freeze i32 %i.g                          ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %.fr203 = freeze i32 %i.i                       ; 3 uses
  %i.j = icmp sgt i32 %.fr203, 0
  br i1 %i.j, label %.preheader135.lr.ph, label %._crit_edge169.split

.preheader135.lr.ph:                              ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.k = icmp sgt i32 %.fr, 0
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.m = sub nsw i32 0, %2                        ; 5 uses
  %i.n = xor i32 %2, -1                           ; 12 uses
  br i1 %i.k, label %.preheader135.preheader, label %._crit_edge169.split

.preheader135.preheader:                          ; preds = %.preheader135.lr.ph
  %i.o = zext nneg i32 %.fr to i64                ; 3 uses
  %i.p = zext nneg i32 %.fr203 to i64             ; 2 uses
  %wide.trip.count175 = zext nneg i32 %.fr203 to i64
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %.preheader135

.preheader135:                                    ; preds = %.preheader135.preheader, %._crit_edge167
  %indvars.iv172 = phi i64 [ 0, %.preheader135.preheader ], [ %indvars.iv.next173, %._crit_edge167 ] ; 5 uses
  %i.q = mul nuw nsw i64 %indvars.iv172, %i.o     ; 2 uses
  %i.r = and i64 %i.q, 4294967295                 ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv172, 1        ; 2 uses
  %.not111.1 = icmp samesign ult i64 %i.s, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = mul i32 %.fr, %i.t
  %i.v = zext i32 %i.u to i64
  %4 = add nsw i64 %indvars.iv172, -1
  %or.cond118.3 = icmp ult i64 %4, %i.p
  %i.w = trunc i64 %indvars.iv172 to i32
  %i.x = add i32 %i.w, -1
  %i.y = mul i32 %i.x, %.fr
  %i.z = zext i32 %i.y to i64
  br label %bb.d

._crit_edge169.split:                             ; preds = %._crit_edge167, %.preheader135.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_ZN13rcScopedTimerD2Ev.exit

bb.c:                                             ; preds = %._crit_edge169.split
  %i.ac = load ptr, ptr %0, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 7) #3, !call_target !68, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %._crit_edge169.split, %bb.c
  ret void

._crit_edge167:                                   ; preds = %._crit_edge164
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge169.split, label %.preheader135

bb.d:                                             ; preds = %.preheader135, %._crit_edge164
  %indvars.iv = phi i64 [ 0, %.preheader135 ], [ %indvars.iv.next, %._crit_edge164 ] ; 7 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.r
  %.094159 = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 2 uses
  %.not160 = icmp eq ptr %.094159, null
  br i1 %.not160, label %._crit_edge164, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %bb.d
  %5 = add nsw i64 %indvars.iv, -1
  %or.cond117 = icmp ult i64 %5, %i.o
  %i.ai = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %.not110.2 = icmp samesign ult i64 %i.ai, %i.o
  br label %.lr.ph163

._crit_edge164:                                   ; preds = %bb.aq, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge167, label %bb.d

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %bb.aq
  %.094161 = phi ptr [ %.094, %bb.aq ], [ %.094159, %.lr.ph163.preheader ] ; 5 uses
  %i.aj = load i32, ptr %.094161, align 8         ; 4 uses
  %i.ak = icmp ult i32 %i.aj, 67108864
  br i1 %i.ak, label %.lr.ph163._crit_edge, label %bb.e

.lr.ph163._crit_edge:                             ; preds = %.lr.ph163
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.094161, i64 8
  %.094.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !70
  br label %bb.aq

bb.e:                                             ; preds = %.lr.ph163
  %i.al = lshr i32 %i.aj, 13
  %i.am = and i32 %i.al, 8191                     ; 26 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.094161, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72 ; 5 uses
  %.not109 = icmp eq ptr %i.ao, null
  br i1 %.not109, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, 8191
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ar = phi i32 [ %i.aq, %bb.f ], [ 65535, %bb.e ] ; 16 uses
  br i1 %or.cond117, label %bb.h, label %.thread127

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !69  ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.q
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !70 ; 3 uses
  %.not112 = icmp eq ptr %i.aw, null
  br i1 %.not112, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = sub nsw i32 %i.ar, %i.am
  %.not113 = icmp slt i32 %i.ax, %1
  br i1 %.not113, label %._crit_edge, label %.thread127

.thread:                                          ; preds = %bb.h
  %i.ay = load i32, ptr %i.aw, align 8
  %i.az = and i32 %i.ay, 8191
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 %i.az)
  %i.bb = sub nsw i32 %i.ba, %i.am
  %.not113204 = icmp slt i32 %i.bb, %1
  br i1 %.not113204, label %.lr.ph, label %.thread127

.lr.ph:                                           ; preds = %.thread, %bb.o
  %.0148 = phi ptr [ %i.bg, %bb.o ], [ %i.aw, %.thread ] ; 2 uses
  %.1147 = phi i32 [ %.4.ph, %bb.o ], [ %i.am, %.thread ] ; 4 uses
  %.179146 = phi i32 [ %.482.ph, %bb.o ], [ %i.am, %.thread ] ; 4 uses
  %.188145 = phi i32 [ %.289.ph, %bb.o ], [ 65535, %.thread ] ; 2 uses
  %i.bc = load i32, ptr %.0148, align 8
  %i.bd = lshr i32 %i.bc, 13
  %i.be = and i32 %i.bd, 8191                     ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0148, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72 ; 3 uses
  %.not115 = icmp eq ptr %i.bg, null              ; 2 uses
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = and i32 %i.bh, 8191
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.bi)
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.bk = phi i32 [ %i.bj, %bb.j ], [ %i.ar, %.lr.ph ]
  %i.bl = tail call noundef i32 @llvm.smax.i32(i32 %i.am, i32 %i.be)
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = icmp slt i32 %i.bm, %1
  br i1 %i.bn, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = sub nsw i32 %i.be, %i.am                ; 3 uses
  %i.bp = tail call noundef i32 @llvm.smin.i32(i32 %.188145, i32 %i.bo) ; 3 uses
  %i.bq = tail call noundef i32 @llvm.abs.i32(i32 %i.bo, i1 true)
  %.not116 = icmp sgt i32 %i.bq, %2
  br i1 %.not116, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = tail call noundef i32 @llvm.smin.i32(i32 %.179146, i32 %i.be)
  %i.bs = tail call noundef i32 @llvm.smax.i32(i32 %.1147, i32 %i.be)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bt = icmp slt i32 %i.bo, %i.m
  br i1 %i.bt, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m
  %.289.ph = phi i32 [ %i.bp, %bb.n ], [ %i.bp, %bb.m ], [ %.188145, %bb.k ] ; 2 uses
  %.482.ph = phi i32 [ %.179146, %bb.n ], [ %i.br, %bb.m ], [ %.179146, %bb.k ] ; 2 uses
  %.4.ph = phi i32 [ %.1147, %bb.n ], [ %i.bs, %bb.m ], [ %.1147, %bb.k ] ; 2 uses
  br i1 %.not115, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.n, %bb.o, %bb.i
  %.179.lcssa = phi i32 [ %i.am, %bb.i ], [ %.482.ph, %bb.o ], [ %.179146, %bb.n ] ; 5 uses
  %.1.lcssa = phi i32 [ %i.am, %bb.i ], [ %.4.ph, %bb.o ], [ %.1147, %bb.n ] ; 5 uses
  %.592 = phi i32 [ 65535, %bb.i ], [ %.289.ph, %bb.o ], [ %i.bp, %bb.n ] ; 2 uses
  br i1 %.not111.1, label %bb.p, label %.thread127

bb.p:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.v
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70 ; 3 uses
  %.not112.1 = icmp eq ptr %i.bw, null
  br i1 %.not112.1, label %bb.q, label %.thread205

bb.q:                                             ; preds = %bb.p
  %i.bx = sub nsw i32 %i.ar, %i.am
  %.not113.1 = icmp slt i32 %i.bx, %1
  br i1 %.not113.1, label %._crit_edge.1, label %.thread127

.thread205:                                       ; preds = %bb.p
  %i.by = load i32, ptr %i.bw, align 8
  %i.bz = and i32 %i.by, 8191
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.bz)
  %i.cb = sub nsw i32 %i.ca, %i.am
  %.not113.1206 = icmp slt i32 %i.cb, %1
  br i1 %.not113.1206, label %.lr.ph.1, label %.thread127

.lr.ph.1:                                         ; preds = %.thread205, %bb.w
  %.0148.1 = phi ptr [ %i.cg, %bb.w ], [ %i.bw, %.thread205 ] ; 2 uses
  %.1147.1 = phi i32 [ %.4.ph.1, %bb.w ], [ %.1.lcssa, %.thread205 ] ; 4 uses
  %.179146.1 = phi i32 [ %.482.ph.1, %bb.w ], [ %.179.lcssa, %.thread205 ] ; 4 uses
  %.188145.1 = phi i32 [ %.289.ph.1, %bb.w ], [ %.592, %.thread205 ] ; 2 uses
  %i.cc = load i32, ptr %.0148.1, align 8
  %i.cd = lshr i32 %i.cc, 13
  %i.ce = and i32 %i.cd, 8191                     ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0148.1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !72 ; 3 uses
  %.not115.1 = icmp eq ptr %i.cg, null            ; 2 uses
  br i1 %.not115.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.1
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = and i32 %i.ch, 8191
  %i.cj = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ci)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.1
  %i.ck = phi i32 [ %i.cj, %bb.r ], [ %i.ar, %.lr.ph.1 ]
  %i.cl = tail call noundef i32 @llvm.smax.i32(i32 %i.am, i32 %i.ce)
  %i.cm = sub nsw i32 %i.ck, %i.cl
  %i.cn = icmp slt i32 %i.cm, %1
  br i1 %i.cn, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = sub nsw i32 %i.ce, %i.am                ; 3 uses
  %i.cp = tail call noundef i32 @llvm.smin.i32(i32 %.188145.1, i32 %i.co) ; 3 uses
  %i.cq = tail call noundef i32 @llvm.abs.i32(i32 %i.co, i1 true)
  %.not116.1 = icmp sgt i32 %i.cq, %2
  br i1 %.not116.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = tail call noundef i32 @llvm.smin.i32(i32 %.179146.1, i32 %i.ce)
  %i.cs = tail call noundef i32 @llvm.smax.i32(i32 %.1147.1, i32 %i.ce)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ct = icmp slt i32 %i.co, %i.m
  br i1 %i.ct, label %._crit_edge.1, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.289.ph.1 = phi i32 [ %i.cp, %bb.v ], [ %i.cp, %bb.u ], [ %.188145.1, %bb.s ] ; 2 uses
  %.482.ph.1 = phi i32 [ %.179146.1, %bb.v ], [ %i.cr, %bb.u ], [ %.179146.1, %bb.s ] ; 2 uses
  %.4.ph.1 = phi i32 [ %.1147.1, %bb.v ], [ %i.cs, %bb.u ], [ %.1147.1, %bb.s ] ; 2 uses
  br i1 %.not115.1, label %._crit_edge.1, label %.lr.ph.1

._crit_edge.1:                                    ; preds = %bb.v, %bb.w, %bb.q
  %.179.lcssa.1 = phi i32 [ %.179.lcssa, %bb.q ], [ %.482.ph.1, %bb.w ], [ %.179146.1, %bb.v ] ; 5 uses
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %bb.q ], [ %.4.ph.1, %bb.w ], [ %.1147.1, %bb.v ] ; 5 uses
  %.592.1 = phi i32 [ %.592, %bb.q ], [ %.289.ph.1, %bb.w ], [ %i.cp, %bb.v ] ; 2 uses
  br i1 %.not110.2, label %bb.x, label %.thread127

bb.x:                                             ; preds = %._crit_edge.1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.r
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ai
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !70 ; 3 uses
  %.not112.2 = icmp eq ptr %i.cw, null
  br i1 %.not112.2, label %bb.y, label %.thread207

bb.y:                                             ; preds = %bb.x
  %i.cx = sub nsw i32 %i.ar, %i.am
  %.not113.2 = icmp slt i32 %i.cx, %1
  br i1 %.not113.2, label %._crit_edge.2, label %.thread127

.thread207:                                       ; preds = %bb.x
  %i.cy = load i32, ptr %i.cw, align 8
  %i.cz = and i32 %i.cy, 8191
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.cz)
  %i.db = sub nsw i32 %i.da, %i.am
  %.not113.2208 = icmp slt i32 %i.db, %1
  br i1 %.not113.2208, label %.lr.ph.2, label %.thread127

.lr.ph.2:                                         ; preds = %.thread207, %bb.ae
  %.0148.2 = phi ptr [ %i.dg, %bb.ae ], [ %i.cw, %.thread207 ] ; 2 uses
  %.1147.2 = phi i32 [ %.4.ph.2, %bb.ae ], [ %.1.lcssa.1, %.thread207 ] ; 4 uses
  %.179146.2 = phi i32 [ %.482.ph.2, %bb.ae ], [ %.179.lcssa.1, %.thread207 ] ; 4 uses
  %.188145.2 = phi i32 [ %.289.ph.2, %bb.ae ], [ %.592.1, %.thread207 ] ; 2 uses
  %i.dc = load i32, ptr %.0148.2, align 8
  %i.dd = lshr i32 %i.dc, 13
  %i.de = and i32 %i.dd, 8191                     ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0148.2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !72 ; 3 uses
  %.not115.2 = icmp eq ptr %i.dg, null            ; 2 uses
  br i1 %.not115.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.2
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = and i32 %i.dh, 8191
  %i.dj = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.di)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.2
  %i.dk = phi i32 [ %i.dj, %bb.z ], [ %i.ar, %.lr.ph.2 ]
  %i.dl = tail call noundef i32 @llvm.smax.i32(i32 %i.am, i32 %i.de)
  %i.dm = sub nsw i32 %i.dk, %i.dl
  %i.dn = icmp slt i32 %i.dm, %1
  br i1 %i.dn, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = sub nsw i32 %i.de, %i.am                ; 3 uses
  %i.dp = tail call noundef i32 @llvm.smin.i32(i32 %.188145.2, i32 %i.do) ; 3 uses
  %i.dq = tail call noundef i32 @llvm.abs.i32(i32 %i.do, i1 true)
  %.not116.2 = icmp sgt i32 %i.dq, %2
  br i1 %.not116.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = tail call noundef i32 @llvm.smin.i32(i32 %.179146.2, i32 %i.de)
  %i.ds = tail call noundef i32 @llvm.smax.i32(i32 %.1147.2, i32 %i.de)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dt = icmp slt i32 %i.do, %i.m
  br i1 %i.dt, label %._crit_edge.2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %.289.ph.2 = phi i32 [ %i.dp, %bb.ad ], [ %i.dp, %bb.ac ], [ %.188145.2, %bb.aa ] ; 2 uses
  %.482.ph.2 = phi i32 [ %.179146.2, %bb.ad ], [ %i.dr, %bb.ac ], [ %.179146.2, %bb.aa ] ; 2 uses
  %.4.ph.2 = phi i32 [ %.1147.2, %bb.ad ], [ %i.ds, %bb.ac ], [ %.1147.2, %bb.aa ] ; 2 uses
  br i1 %.not115.2, label %._crit_edge.2, label %.lr.ph.2

._crit_edge.2:                                    ; preds = %bb.ad, %bb.ae, %bb.y
  %.179.lcssa.2 = phi i32 [ %.179.lcssa.1, %bb.y ], [ %.482.ph.2, %bb.ae ], [ %.179146.2, %bb.ad ] ; 4 uses
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %bb.y ], [ %.4.ph.2, %bb.ae ], [ %.1147.2, %bb.ad ] ; 4 uses
  %.592.2 = phi i32 [ %.592.1, %bb.y ], [ %.289.ph.2, %bb.ae ], [ %i.dp, %bb.ad ] ; 2 uses
  br i1 %or.cond118.3, label %bb.af, label %.thread127

bb.af:                                            ; preds = %._crit_edge.2
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.z
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !70 ; 3 uses
  %.not112.3 = icmp eq ptr %i.dw, null
  br i1 %.not112.3, label %bb.ag, label %.thread209

bb.ag:                                            ; preds = %bb.af
  %i.dx = sub nsw i32 %i.ar, %i.am
  %.not113.3 = icmp slt i32 %i.dx, %1
  %spec.select = select i1 %.not113.3, i32 %.592.2, i32 %i.n
  br label %.thread127

.thread209:                                       ; preds = %bb.af
  %i.dy = load i32, ptr %i.dw, align 8
  %i.dz = and i32 %i.dy, 8191
  %i.ea = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.dz)
  %i.eb = sub nsw i32 %i.ea, %i.am
  %.not113.3210 = icmp slt i32 %i.eb, %1
  br i1 %.not113.3210, label %.lr.ph.3, label %.thread127

.lr.ph.3:                                         ; preds = %.thread209, %bb.am
  %.0148.3 = phi ptr [ %i.eg, %bb.am ], [ %i.dw, %.thread209 ] ; 2 uses
  %.1147.3 = phi i32 [ %.4.ph.3, %bb.am ], [ %.1.lcssa.2, %.thread209 ] ; 4 uses
  %.179146.3 = phi i32 [ %.482.ph.3, %bb.am ], [ %.179.lcssa.2, %.thread209 ] ; 4 uses
  %.188145.3 = phi i32 [ %.289.ph.3, %bb.am ], [ %.592.2, %.thread209 ] ; 2 uses
  %i.ec = load i32, ptr %.0148.3, align 8
  %i.ed = lshr i32 %i.ec, 13
  %i.ee = and i32 %i.ed, 8191                     ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.0148.3, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72 ; 3 uses
  %.not115.3 = icmp eq ptr %i.eg, null            ; 2 uses
  br i1 %.not115.3, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.3
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = and i32 %i.eh, 8191
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.ei)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.3
  %i.ek = phi i32 [ %i.ej, %bb.ah ], [ %i.ar, %.lr.ph.3 ]
  %i.el = tail call noundef i32 @llvm.smax.i32(i32 %i.am, i32 %i.ee)
  %i.em = sub nsw i32 %i.ek, %i.el
  %i.en = icmp slt i32 %i.em, %1
  br i1 %i.en, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = sub nsw i32 %i.ee, %i.am                ; 3 uses
  %i.ep = tail call noundef i32 @llvm.smin.i32(i32 %.188145.3, i32 %i.eo) ; 3 uses
  %i.eq = tail call noundef i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %.not116.3 = icmp sgt i32 %i.eq, %2
  br i1 %.not116.3, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = tail call noundef i32 @llvm.smin.i32(i32 %.179146.3, i32 %i.ee)
  %i.es = tail call noundef i32 @llvm.smax.i32(i32 %.1147.3, i32 %i.ee)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.et = icmp slt i32 %i.eo, %i.m
  br i1 %i.et, label %.thread127, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.289.ph.3 = phi i32 [ %i.ep, %bb.al ], [ %i.ep, %bb.ak ], [ %.188145.3, %bb.ai ] ; 2 uses
  %.482.ph.3 = phi i32 [ %.179146.3, %bb.al ], [ %i.er, %bb.ak ], [ %.179146.3, %bb.ai ] ; 2 uses
  %.4.ph.3 = phi i32 [ %.1147.3, %bb.al ], [ %i.es, %bb.ak ], [ %.1147.3, %bb.ai ] ; 2 uses
  br i1 %.not115.3, label %.thread127, label %.lr.ph.3

.thread127:                                       ; preds = %bb.am, %bb.al, %bb.ag, %.thread209, %.thread207, %.thread205, %.thread, %._crit_edge.2, %bb.y, %._crit_edge.1, %bb.q, %._crit_edge, %bb.i, %bb.g
  %.078141 = phi i32 [ %i.am, %bb.i ], [ %i.am, %bb.g ], [ %.179.lcssa.2, %.thread209 ], [ %.179.lcssa, %._crit_edge ], [ %.179.lcssa, %bb.q ], [ %.179.lcssa.2, %bb.ag ], [ %.179.lcssa.1, %._crit_edge.1 ], [ %.179.lcssa.1, %bb.y ], [ %.179.lcssa.2, %._crit_edge.2 ], [ %i.am, %.thread ], [ %.179.lcssa, %.thread205 ], [ %.179.lcssa.1, %.thread207 ], [ %.179146.3, %bb.al ], [ %.482.ph.3, %bb.am ]
  %.077138 = phi i32 [ %i.am, %bb.i ], [ %i.am, %bb.g ], [ %.1.lcssa.2, %.thread209 ], [ %.1.lcssa, %._crit_edge ], [ %.1.lcssa, %bb.q ], [ %.1.lcssa.2, %bb.ag ], [ %.1.lcssa.1, %._crit_edge.1 ], [ %.1.lcssa.1, %bb.y ], [ %.1.lcssa.2, %._crit_edge.2 ], [ %i.am, %.thread ], [ %.1.lcssa, %.thread205 ], [ %.1.lcssa.1, %.thread207 ], [ %.1147.3, %bb.al ], [ %.4.ph.3, %bb.am ]
  %.693 = phi i32 [ %i.n, %bb.i ], [ %i.n, %bb.g ], [ %i.n, %.thread209 ], [ %i.n, %._crit_edge ], [ %i.n, %bb.q ], [ %spec.select, %bb.ag ], [ %i.n, %._crit_edge.1 ], [ %i.n, %bb.y ], [ %i.n, %._crit_edge.2 ], [ %i.n, %.thread ], [ %i.n, %.thread205 ], [ %i.n, %.thread207 ], [ %i.ep, %bb.al ], [ %.289.ph.3, %bb.am ]
  %i.eu = icmp slt i32 %.693, %i.m
  br i1 %i.eu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread127
  %i.ev = and i32 %i.aj, 67108863
  store i32 %i.ev, ptr %.094161, align 8
  br label %bb.aq

bb.ao:                                            ; preds = %.thread127
  %i.ew = sub nsw i32 %.077138, %.078141
  %i.ex = icmp sgt i32 %i.ew, %2
  br i1 %i.ex, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ey = and i32 %i.aj, 67108863
  store i32 %i.ey, ptr %.094161, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph163._crit_edge, %bb.an, %bb.ap, %bb.ao
  %.094 = phi ptr [ %.094.pre, %.lr.ph163._crit_edge ], [ %i.ao, %bb.an ], [ %i.ao, %bb.ap ], [ %i.ao, %bb.ao ] ; 2 uses
  %.not = icmp eq ptr %.094, null
  br i1 %.not, label %._crit_edge164, label %.lr.ph163
}

; Function Attrs: nounwind uwtable
define void @_Z30rcFilterWalkableLowHeightSpansP9rcContextiR13rcHeightfield(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 8) #3, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %2, align 8, !tbaa !66     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge33.split

.preheader.lr.ph:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.k = icmp sgt i32 %i.g, 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge33.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = zext nneg i32 %i.g to i64                ; 2 uses
  %wide.trip.count38 = zext nneg i32 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge31
  %indvars.iv35 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next36, %._crit_edge31 ] ; 2 uses
  %i.n = mul nuw nsw i64 %indvars.iv35, %i.m
  br label %bb.d

._crit_edge33.split:                              ; preds = %._crit_edge31, %.preheader.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !17, !range !18, !noundef !19
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %_ZN13rcScopedTimerD2Ev.exit

bb.c:                                             ; preds = %._crit_edge33.split
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 8) #3, !call_target !68, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %._crit_edge33.split, %bb.c
  ret void

._crit_edge31:                                    ; preds = %._crit_edge
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33.split, label %.preheader

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.n
  %.026 = load ptr, ptr %i.v, align 8, !tbaa !70  ; 2 uses
  %.not27 = icmp eq ptr %.026, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge31, label %bb.d

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.028 = phi ptr [ %i.aa, %bb.h ], [ %.026, %bb.d ] ; 3 uses
  %i.w = load i32, ptr %.028, align 8             ; 2 uses
  %i.x = lshr i32 %i.w, 13
  %i.y = and i32 %i.x, 8191
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72  ; 3 uses
  %.not25 = icmp eq ptr %i.aa, null               ; 2 uses
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = and i32 %i.ab, 8191
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ad = phi i32 [ %i.ac, %bb.e ], [ 65535, %.lr.ph ]
  %i.ae = sub nsw i32 %i.ad, %i.y
  %i.af = icmp slt i32 %i.ae, %1
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = and i32 %i.w, 67108863
  store i32 %i.ag, ptr %.028, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %.not25, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
