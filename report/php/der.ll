Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/der?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.25 = private unnamed_addr constant [8 x i8] c"t61_str\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"vid_str\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ia5_str\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"utc_time\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"gen_time\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"gr_str\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"vis_str\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"gen_str\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"univ_str\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"char_str\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"bmp_str\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"tod\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"datetime\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"oid-iri\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"rel-oid-iri\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.43 = private unnamed_addr constant [36 x i8] c"20%c%c-%c%c-%c%c %c%c:%c%c:%c%c GMT\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @rcsid], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @der_offs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %. = select i1 %.not, i64 %2, i64 %i.d          ; 6 uses
  %.not.i.not = icmp eq i64 %., 0
  br i1 %.not.i.not, label %gettag.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !tbaa !25
  %i.f = and i8 %i.e, 31
  %.not20.i = icmp eq i8 %i.f, 31
  br i1 %.not20.i, label %bb.c, label %gettag.exit.thread30

bb.c:                                             ; preds = %bb.b
  %.not21.i.not = icmp eq i64 %., 1
  br i1 %.not21.i.not, label %gettag.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.k, %bb.d ], [ 1, %bb.c ]     ; 3 uses
  %.0.i = phi i32 [ %i.n, %bb.d ], [ 31, %bb.c ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.h = load i8, ptr %i.g, align 1, !tbaa !25    ; 2 uses
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %gettag.exit

bb.d:                                             ; preds = %.preheader.i
  %i.j = shl i32 %.0.i, 7
  %i.k = add nuw i64 %.0, 1                       ; 2 uses
  %i.l = zext i8 %i.h to i32
  %i.m = add i32 %i.j, -128
  %i.n = add i32 %i.m, %i.l
  %exitcond.not = icmp eq i64 %i.k, %.
  br i1 %exitcond.not, label %gettag.exit.thread, label %.preheader.i, !llvm.loop !0

gettag.exit:                                      ; preds = %.preheader.i
  %i.o = icmp eq i32 %.0.i, -1
  br i1 %i.o, label %gettag.exit.thread, label %gettag.exit.thread30

gettag.exit.thread30:                             ; preds = %bb.b, %gettag.exit
  %.12733 = phi i64 [ %.0, %gettag.exit ], [ 1, %bb.b ] ; 4 uses
  %.not.i22 = icmp ult i64 %.12733, %.
  br i1 %.not.i22, label %bb.e, label %gettag.exit.thread

bb.e:                                             ; preds = %gettag.exit.thread30
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %.12733
  %i.q = load i8, ptr %i.p, align 1, !tbaa !25    ; 4 uses
  %i.r = add nuw i64 %.12733, 1                   ; 5 uses
  %i.s = and i8 %i.q, 127                         ; 4 uses
  %i.t = zext nneg i8 %i.s to i64                 ; 2 uses
  %i.u = add i64 %i.r, %i.t
  %.not27.i = icmp ult i64 %i.u, %.
  br i1 %.not27.i, label %bb.f, label %gettag.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.v = icmp sgt i8 %i.q, -1
  br i1 %i.v, label %getlength.exit.thread36, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.f
  %.not31.i = icmp eq i8 %i.s, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i23
  %xtraiter = and i8 %i.q, 3                      ; 3 uses
  %i.w = icmp samesign ult i8 %i.s, 4
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i8 %i.q, 124
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.x = phi i64 [ %i.r, %.lr.ph.i.preheader.new ], [ %i.aq, %.lr.ph.i ] ; 5 uses
  %.030.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.av, %.lr.ph.i ]
  %niter = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = zext i8 %i.z to i64
  %i.ab = shl i64 %.030.i, 16
  %i.ac = shl nuw nsw i64 %i.aa, 8
  %i.ad = or disjoint i64 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.x
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !25
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.x
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  %i.am = zext i8 %i.al to i64
  %i.an = shl i64 %i.ai, 16
  %i.ao = shl nuw nsw i64 %i.am, 8
  %i.ap = or disjoint i64 %i.an, %i.ao
  %i.aq = add i64 %i.x, 4                         ; 2 uses
  %i.ar = getelementptr i8, ptr %i.b, i64 %i.x
  %i.as = getelementptr i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = zext i8 %i.at to i64
  %i.av = or disjoint i64 %i.ap, %i.au            ; 3 uses
  %niter.next.3 = add i8 %niter, 4                ; 2 uses
  %niter.ncmp.3 = icmp eq i8 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ %i.r, %.lr.ph.i.preheader ], [ %i.aq, %._crit_edge.i.loopexit.unr-lcssa ]
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.av, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i8 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.aw = phi i64 [ %i.ay, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.030.i.epil = phi i64 [ %i.bc, %.lr.ph.i.epil ], [ %.030.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i8 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ax = shl i64 %.030.i.epil, 8
  %i.ay = add i64 %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ax, %i.bb            ; 2 uses
  %epil.iter.next = add i8 %epil.iter, 1          ; 2 uses
  %epil.iter.cmp.not = icmp eq i8 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !28

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.av, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.i.epil ]
  %i.bd = add nsw i8 %i.s, -1
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = add i64 %.12733, %i.be
  %i.bg = add i64 %i.bf, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i23
  %.2 = phi i64 [ %i.r, %.preheader.i23 ], [ %i.bg, %._crit_edge.i.loopexit ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i23 ], [ %.lcssa, %._crit_edge.i.loopexit ] ; 4 uses
  %i.bh = sub i64 4294967295, %.2
  %i.bi = icmp ugt i64 %.0.lcssa.i, %i.bh
  %i.bj = add i64 %.0.lcssa.i, %.2
  %i.bk = icmp ugt i64 %i.bj, %.
  %or.cond.i = or i1 %i.bi, %i.bk
  %i.bl = and i64 %.0.lcssa.i, 4294967295
  %i.bm = icmp eq i64 %i.bl, 4294967295
  %or.cond = or i1 %i.bm, %or.cond.i
  br i1 %or.cond, label %gettag.exit.thread, label %getlength.exit.thread36

getlength.exit.thread36:                          ; preds = %bb.f, %._crit_edge.i
  %.024.i40 = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.t, %bb.f ]
  %.339 = phi i64 [ %.2, %._crit_edge.i ], [ %i.r, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !31
  %i.br = add i32 %i.bq, %i.bo
  %i.bs = zext i32 %i.br to i64
  %i.bt = add i64 %.339, %i.bs                    ; 2 uses
  %i.bu = load i16, ptr %1, align 8, !tbaa !32    ; 2 uses
  %i.bv = zext i16 %i.bu to i64
  %.not21 = icmp eq i16 %i.bu, 0
  br i1 %.not21, label %bb.i, label %bb.g

bb.g:                                             ; preds = %getlength.exit.thread36
  %i.bw = and i64 %.024.i40, 4294967295
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = icmp ugt i64 %i.bx, %2
  br i1 %i.by, label %gettag.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = trunc i64 %i.bx to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33
  %3 = add nuw nsw i64 %i.bv, 4294967295
  %4 = and i64 %3, 4294967295
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %4
  store i32 %i.bz, ptr %5, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %getlength.exit.thread36
  %i.cc = trunc i64 %i.bt to i32
  br label %gettag.exit.thread

gettag.exit.thread:                               ; preds = %bb.d, %._crit_edge.i, %bb.e, %gettag.exit.thread30, %bb.a, %bb.c, %bb.i, %bb.g, %gettag.exit
  %.1 = phi i32 [ -1, %gettag.exit ], [ %i.cc, %bb.i ], [ -1, %._crit_edge.i ], [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %gettag.exit.thread30 ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @der_cmp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %.not.i.not = icmp eq i64 %i.f, 0
  br i1 %.not.i.not, label %gettag.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1, !tbaa !25
  %i.h = and i8 %i.g, 31                          ; 2 uses
  %.not20.i = icmp eq i8 %i.h, 31
  br i1 %.not20.i, label %bb.c, label %gettag.exit.thread61

gettag.exit.thread61:                             ; preds = %bb.b
  %i.i = zext nneg i8 %i.h to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not21.i.not = icmp eq i64 %i.f, 1
  br i1 %.not21.i.not, label %gettag.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.057 = phi i64 [ %i.n, %bb.d ], [ 1, %bb.c ]   ; 3 uses
  %.0.i = phi i32 [ %i.q, %bb.d ], [ 31, %bb.c ]  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %.057
  %i.k = load i8, ptr %i.j, align 1, !tbaa !25    ; 2 uses
  %i.l = icmp slt i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %gettag.exit

bb.d:                                             ; preds = %.preheader.i
  %i.m = shl i32 %.0.i, 7
  %i.n = add nuw i64 %.057, 1                     ; 2 uses
  %i.o = zext i8 %i.k to i32
  %i.p = add i32 %i.m, -128
  %i.q = add i32 %i.p, %i.o
  %exitcond.not = icmp eq i64 %i.n, %i.f
  br i1 %exitcond.not, label %gettag.exit.thread, label %.preheader.i, !llvm.loop !0

gettag.exit:                                      ; preds = %.preheader.i
  %i.r = icmp eq i32 %.0.i, -1
  br i1 %i.r, label %gettag.exit.thread, label %bb.e

bb.e:                                             ; preds = %gettag.exit.thread61, %gettag.exit
  %.016.i65 = phi i32 [ %i.i, %gettag.exit.thread61 ], [ %.0.i, %gettag.exit ] ; 4 uses
  %.15864 = phi i64 [ 1, %gettag.exit.thread61 ], [ %.057, %gettag.exit ] ; 4 uses
  %.not.i49 = icmp ult i64 %.15864, %i.f
  br i1 %.not.i49, label %bb.f, label %gettag.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %.15864
  %i.t = load i8, ptr %i.s, align 1, !tbaa !25    ; 4 uses
  %i.u = add nuw i64 %.15864, 1                   ; 5 uses
  %i.v = and i8 %i.t, 127                         ; 5 uses
  %i.w = zext nneg i8 %i.v to i64
  %i.x = add i64 %i.u, %i.w
  %.not27.i = icmp ult i64 %i.x, %i.f
  br i1 %.not27.i, label %bb.g, label %gettag.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i8 %i.t, -1
  br i1 %i.y, label %getlength.exit.thread68, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.g
  %.not31.i = icmp eq i8 %i.v, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i50
  %xtraiter = and i8 %i.t, 3                      ; 3 uses
  %i.z = icmp samesign ult i8 %i.v, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i8 %i.t, 124
  br label %.lr.ph.i

getlength.exit.thread68:                          ; preds = %bb.g
  %i.aa = zext nneg i8 %i.v to i32
  br label %bb.h

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.ab = phi i64 [ %i.u, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ] ; 5 uses
  %.030.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.az, %.lr.ph.i ]
  %niter = phi i8 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !25
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl i64 %.030.i, 16
  %i.ag = shl nuw nsw i64 %i.ae, 8
  %i.ah = or disjoint i64 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ah, %i.al
  %i.an = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !25
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl i64 %i.am, 16
  %i.as = shl nuw nsw i64 %i.aq, 8
  %i.at = or disjoint i64 %i.ar, %i.as
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = getelementptr i8, ptr %i.c, i64 %i.ab
  %i.aw = getelementptr i8, ptr %i.av, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !25
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.at, %i.ay            ; 3 uses
  %niter.next.3 = add i8 %niter, 4                ; 2 uses
  %niter.ncmp.3 = icmp eq i8 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ %i.u, %.lr.ph.i.preheader ], [ %i.au, %._crit_edge.i.loopexit.unr-lcssa ]
  %.030.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.az, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod114 = icmp ne i8 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.ba = phi i64 [ %i.bc, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.030.i.epil = phi i64 [ %i.bg, %.lr.ph.i.epil ], [ %.030.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i8 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bb = shl i64 %.030.i.epil, 8
  %i.bc = add i64 %i.ba, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = zext i8 %i.be to i64
  %i.bg = or disjoint i64 %i.bb, %i.bf            ; 2 uses
  %epil.iter.next = add i8 %epil.iter, 1          ; 2 uses
  %epil.iter.cmp.not = icmp eq i8 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil, !llvm.loop !36

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.epil, %._crit_edge.i.loopexit.unr-lcssa
  %.lcssa109 = phi i64 [ %i.az, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph.i.epil ]
  %i.bh = add nsw i8 %i.v, -1
  %i.bi = zext nneg i8 %i.bh to i64
  %i.bj = add i64 %.15864, %i.bi
  %i.bk = add i64 %i.bj, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.preheader.i50
  %.2 = phi i64 [ %i.u, %.preheader.i50 ], [ %i.bk, %._crit_edge.i.loopexit ] ; 3 uses
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i50 ], [ %.lcssa109, %._crit_edge.i.loopexit ] ; 3 uses
  %i.bl = sub i64 4294967295, %.2
  %i.bm = icmp ugt i64 %.0.lcssa.i, %i.bl
  %i.bn = add i64 %.0.lcssa.i, %.2
  %i.bo = icmp ugt i64 %i.bn, %i.f
  %or.cond.i = or i1 %i.bm, %i.bo
  %i.bp = trunc i64 %.0.lcssa.i to i32            ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  %or.cond = or i1 %i.bq, %or.cond.i
  br i1 %or.cond, label %gettag.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %getlength.exit.thread68
  %.024.i72 = phi i32 [ %i.aa, %getlength.exit.thread68 ], [ %i.bp, %._crit_edge.i ] ; 5 uses
  %.371 = phi i64 [ %i.u, %getlength.exit.thread68 ], [ %.2, %._crit_edge.i ]
  %i.br = icmp ult i32 %.016.i65, 37
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = zext nneg i32 %.016.i65 to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @der__tag, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.bu, i64 noundef 128) #8 ; 0 uses
  br label %der_tag.exit

bb.j:                                             ; preds = %bb.h
  %i.bw = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.4, i32 noundef range(i32 0, -1) %.016.i65) #8 ; 0 uses
  br label %der_tag.exit

der_tag.exit:                                     ; preds = %bb.i, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !40
end_hunk_0
