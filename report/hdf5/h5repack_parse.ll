inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_filter:bb.a

bb.ey:                                            ; preds = %bb.ex
  %i.sq = add nuw nsw i64 %i.am, 11               ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !10  ; 2 uses
  store i8 %i.ss, ptr %.lcssa502.sroa.gep525, align 1, !tbaa !10
  %i.st = icmp eq i8 %i.ss, 61                    ; 2 uses
  %i.su = icmp eq i64 %i.sq, %i.ao                ; 2 uses
  %or.cond352.11 = or i1 %i.su, %i.st
  br i1 %or.cond352.11, label %bb.q, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %exitcond512.11.not = icmp eq i64 %i.ap, 12
  br i1 %exitcond512.11.not, label %.loopexit385, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.sv = add nuw nsw i64 %i.am, 12               ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !10  ; 2 uses
  store i8 %i.sx, ptr %.lcssa502.sroa.gep526, align 4, !tbaa !10
  %i.sy = icmp eq i8 %i.sx, 61                    ; 2 uses
  %i.sz = icmp eq i64 %i.sv, %i.ao                ; 2 uses
  %or.cond352.12 = or i1 %i.sz, %i.sy
  br i1 %or.cond352.12, label %bb.q, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %exitcond512.12.not = icmp eq i64 %i.ap, 13
  br i1 %exitcond512.12.not, label %.loopexit385, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ta = add nuw nsw i64 %i.am, 13               ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ta
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !10  ; 2 uses
  store i8 %i.tc, ptr %.lcssa502.sroa.gep527, align 1, !tbaa !10
  %i.td = icmp eq i8 %i.tc, 61                    ; 2 uses
  %i.te = icmp eq i64 %i.ta, %i.ao                ; 2 uses
  %or.cond352.13 = or i1 %i.te, %i.td
  br i1 %or.cond352.13, label %bb.q, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %exitcond512.13.not = icmp eq i64 %i.ap, 14
  br i1 %exitcond512.13.not, label %.loopexit385, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.tf = add nuw nsw i64 %i.am, 14               ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !10  ; 2 uses
  store i8 %i.th, ptr %.lcssa502.sroa.gep528, align 2, !tbaa !10
  %i.ti = icmp eq i8 %i.th, 61                    ; 2 uses
  %i.tj = icmp eq i64 %i.tf, %i.ao                ; 2 uses
  %or.cond352.14 = or i1 %i.tj, %i.ti
  br i1 %or.cond352.14, label %bb.q, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %exitcond512.14.not = icmp eq i64 %i.ap, 15
  br i1 %exitcond512.14.not, label %.loopexit385, label %bb.p

.loopexit385:                                     ; preds = %bb.ed, %bb.ef, %bb.eh, %bb.ej, %bb.el, %bb.en, %bb.ep, %bb.er, %bb.et, %bb.ev, %bb.ex, %bb.ez, %bb.fb, %bb.fd, %bb.ff, %bb.o, %bb.ea
  %.pr = load i32, ptr %2, align 8, !tbaa !29
  switch i32 %.pr, label %.thread378 [
    i32 1, label %.thread379
    i32 4, label %.thread380
  ]

.thread379:                                       ; preds = %bb.di, %.loopexit385
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !9
  %i.tm = icmp ugt i32 %i.tl, 9
  br i1 %i.tm, label %bb.fg, label %.thread378

bb.fg:                                            ; preds = %.thread379
  call void @free(ptr noundef %i.s) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.28, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

.thread380:                                       ; preds = %bb.dl, %.loopexit385
  %i.tn = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !9  ; 2 uses
  %i.tp = and i32 %i.to, 1
  %.not344 = icmp eq i32 %i.tp, 0
  br i1 %.not344, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.thread380
  call void @free(ptr noundef %i.s) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.29, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.fi:                                            ; preds = %.thread380
  %i.tq = icmp ugt i32 %i.to, 32
  br i1 %i.tq, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call void @free(ptr noundef %i.s) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.30, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.tr = load i16, ptr %i.d, align 16
  %i.ts = xor i16 %i.tr, 20046
  %i.tt = getelementptr i8, ptr %i.d, i64 2
  %i.tu = load i8, ptr %i.tt, align 2
  %i.tv = zext i8 %i.tu to i16
  %i.tw = or i16 %i.ts, %i.tv
  %i.tx = icmp ne i16 %i.tw, 0
  %i.ty = zext i1 %i.tx to i32
  %.not346 = icmp eq i32 %i.ty, 0
  br i1 %.not346, label %.thread378, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.tz = load i16, ptr %i.d, align 16
  %i.ua = xor i16 %i.tz, 17221
  %i.ub = getelementptr i8, ptr %i.d, i64 2
  %i.uc = load i8, ptr %i.ub, align 2
  %i.ud = zext i8 %i.uc to i16
  %i.ue = or i16 %i.ua, %i.ud
  %i.uf = icmp ne i16 %i.ue, 0
  %i.ug = zext i1 %i.uf to i32
  %.not348 = icmp eq i32 %i.ug, 0
  br i1 %.not348, label %.thread378, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @free(ptr noundef %i.s) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.8) #14
  call void @exit(i32 noundef 1) #16
  unreachable

.thread378:                                       ; preds = %bb.do, %bb.du, %bb.dx, %bb.dr, %bb.dg, %.thread379, %bb.fl, %bb.fk, %.loopexit385, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @error_msg(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @parse_layout(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 12 uses
  %i.c = alloca [10 x i8], align 1                ; 14 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.b, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.preheader189, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 4294967295
  %i.h = icmp ugt i64 %i.e, 4294967295
  %i.i = or i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.d, 8589934588               ; 4 uses
  %4 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph ], [ %i.o, %vector.body ]
  %i.j = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <4 x i8>, ptr %i.k, align 1, !tbaa !10
  %wide.load.fr = freeze <4 x i8> %wide.load      ; 2 uses
  %i.l = icmp eq <4 x i8> %wide.load.fr, splat (i8 58) ; 2 uses
  %i.m = bitcast <4 x i1> %i.l to i4
  %.not188 = icmp eq i4 %i.m, 0                   ; 2 uses
  %i.n = select i1 %.not188, <4 x i1> %i.j, <4 x i1> %i.l ; 2 uses
  %i.o = select i1 %.not188, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %i.p = icmp eq <4 x i8> %wide.load.fr, splat (i8 44)
  %i.q = zext <4 x i1> %i.p to <4 x i32>
  %i.r = add <4 x i32> %vec.phi186, %i.q          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %i.t = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.o, <4 x i1> %i.n, i32 -1) ; 2 uses
  %i.u = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.r) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader189

.lr.ph.preheader189:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0119150.ph = phi i32 [ -1, %vector.scevcheck ], [ -1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.0123149.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.0129148.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %4, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader189, %.lr.ph
  %indvars.iv.a = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader189 ]
  %.0119150 = phi i32 [ %spec.select, %.lr.ph ], [ %.0119150.ph, %.lr.ph.preheader189 ]
  %.0119150.a = phi i32 [ %.1124, %.lr.ph ], [ %.0123149.ph, %.lr.ph.preheader189 ]
  %.0123149 = phi i32 [ %5, %.lr.ph ], [ %.0129148.ph, %.lr.ph.preheader189 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.a
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10    ; 2 uses
  %i.x = icmp eq i8 %i.w, 58
  %spec.select = select i1 %i.x, i32 %.0123149, i32 %.0119150 ; 2 uses
  %i.y = icmp eq i8 %i.w, 44
  %i.z = zext i1 %i.y to i32
  %.1124 = add i32 %.0119150.a, %i.z              ; 2 uses
  %5 = add i32 %.0123149, 1                       ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.aa = icmp ugt i64 %i.d, %6
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.t, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.1124.lcssa = phi i32 [ %i.u, %middle.block ], [ %.1124, %.lr.ph ]
  %i.ab = add i32 %.1124.lcssa, 1                 ; 2 uses
  %i.ac = icmp eq i32 %spec.select.lcssa, -1
  br i1 %i.ac, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0123.lcssa183 = phi i32 [ %i.ab, %._crit_edge ], [ 1, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0119.lcssa184 = phi i32 [ -1, %._crit_edge.thread ], [ %spec.select.lcssa, %._crit_edge ] ; 9 uses
  %.0123.lcssa182 = phi i32 [ %.0123.lcssa183, %._crit_edge.thread ], [ %i.ab, %._crit_edge ] ; 2 uses
  %i.ae = zext i32 %.0123.lcssa182 to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #15 ; 8 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str) #14
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  store i32 %.0123.lcssa182, ptr %1, align 4, !tbaa !9
  %i.ai = icmp sgt i32 %.0119.lcssa184, 0
  br i1 %i.ai, label %.preheader145, label %.loopexit146

.preheader145:                                    ; preds = %bb.d
  %i.aj = add nsw i32 %.0119.lcssa184, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext nneg i32 %.0119.lcssa184 to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader145, %bb.j
  %indvars.iv162 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next163, %bb.j ] ; 3 uses
  %.0121154 = phi i32 [ 0, %.preheader145 ], [ %i.aw, %bb.j ] ; 2 uses
  %.2125153 = phi i32 [ 0, %.preheader145 ], [ %.3126, %bb.j ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv162
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.an = sext i32 %.0121154 to i64
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %i.an ; 3 uses
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !10
  %i.ap = icmp eq i8 %i.am, 44                    ; 2 uses
  %i.aq = icmp eq i64 %indvars.iv162, %i.ak
  %or.cond141 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond141, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.ao, align 1, !tbaa !10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %i.ao, i64 1
  store i8 0, ptr %i.ar, align 1, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.as = zext i32 %.2125153 to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.ag, i64 %i.as
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.at, i64 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.av = add i32 %.2125153, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.3126 = phi i32 [ %i.av, %bb.i ], [ %.2125153, %bb.e ]
  %.1122 = phi i32 [ -1, %bb.i ], [ %.0121154, %bb.e ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.aw = add nsw i32 %.1122, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit146, label %bb.e, !llvm.loop !39

.loopexit146:                                     ; preds = %bb.j, %bb.d
  %i.ax = add nsw i32 %.0119.lcssa184, 1          ; 2 uses
  %i.ay = trunc nuw i64 %i.d to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit146
  call void @free(ptr noundef %i.ag) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.31, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.l:                                             ; preds = %bb.o
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.35, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.m:                                             ; preds = %.loopexit146
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 6500 ; 3 uses
  %i.bc = zext i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  store i8 %i.be, ptr %i.c, align 1, !tbaa !10
  %i.bf = add i32 %.0119.lcssa184, 2
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !10
  %i.bk = add i32 %.0119.lcssa184, 3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !10
  %i.bp = add i32 %.0119.lcssa184, 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !10
  %i.bu = add i32 %.0119.lcssa184, 5
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !10
  store i8 0, ptr %i.ba, align 1, !tbaa !10
  %i.bz = load i32, ptr %i.c, align 1
  %i.ca = xor i32 %i.bz, 1347243843
  %i.cb = getelementptr i8, ptr %i.c, i64 4
  %i.cc = load i16, ptr %i.cb, align 1
  %i.cd = zext i16 %i.cc to i32
  %i.ce = xor i32 %i.cd, 65
  %i.cf = or i32 %i.ca, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %i.c, align 1
  %i.ck = xor i32 %i.cj, 1414418243
  %i.cl = getelementptr i8, ptr %i.c, i64 4
  %i.cm = load i16, ptr %i.cl, align 1
  %i.cn = zext i16 %i.cm to i32
  %i.co = xor i32 %i.cn, 73
  %i.cp = or i32 %i.ck, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load i32, ptr %i.c, align 1
  %i.cu = xor i32 %i.ct, 1314211907
  %i.cv = getelementptr i8, ptr %i.c, i64 4
  %i.cw = load i16, ptr %i.cv, align 1
  %i.cx = zext i16 %i.cw to i32
  %i.cy = xor i32 %i.cx, 75
  %i.cz = or i32 %i.cu, %i.cy
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %bb.l

bb.p:                                             ; preds = %bb.n
  store i32 1, ptr %i.bb, align 4, !tbaa !40
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  store i32 0, ptr %i.bb, align 4, !tbaa !40
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  store i32 2, ptr %i.bb, align 4, !tbaa !40
  %i.dd = add i32 %.0119.lcssa184, 7              ; 2 uses
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = icmp ult i64 %i.d, %i.de
  br i1 %i.df, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.dg = icmp ugt i64 %i.d, %i.de
  br i1 %i.dg, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %.preheader
  %i.dh = tail call ptr @__ctype_b_loc() #17
  %i.di = add nsw i64 %i.d, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 6504 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 6760 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ag) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.36, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

end_hunk_0
