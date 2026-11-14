Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/punycode?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wpacket_st = type { ptr, ptr, i64, i64, i64, ptr, i8 }

@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1, !guid !10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_punycode_decode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !11     ; 2 uses
  %.not143 = icmp eq i64 %1, 0
  br i1 %.not143, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 12
  br i1 %min.iters.check, label %.lr.ph.preheader184, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  %i.e = icmp ugt i64 %i.b, 4294967295
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934588                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <4 x i8>, ptr %i.h, align 1, !tbaa !12
  %wide.load.fr = freeze <4 x i8> %wide.load
  %i.i = icmp eq <4 x i8> %wide.load.fr, splat (i8 45) ; 2 uses
  %i.j = bitcast <4 x i1> %i.i to i4
  %.not177 = icmp eq i4 %i.j, 0                   ; 2 uses
  %i.k = select i1 %.not177, <4 x i1> %i.g, <4 x i1> %i.i ; 2 uses
  %i.l = select i1 %.not177, <4 x i32> %vec.phi, <4 x i32> %vec.ind ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %i.n = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.l, <4 x i1> %i.k, i32 0) ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader184

.lr.ph.preheader184:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.081124.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader184, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader184 ] ; 3 uses
  %.081124 = phi i32 [ %spec.select, %.lr.ph ], [ %.081124.ph, %.lr.ph.preheader184 ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 45
  %i.r = trunc nuw i64 %indvars.iv to i32
  %spec.select = select i1 %i.q, i32 %i.r, i32 %.081124 ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.s = and i64 %indvars.iv.next, 4294967295
  %i.t = icmp ugt i64 %1, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.n, %middle.block ], [ %spec.select, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.u = icmp ugt i32 %spec.select.lcssa, %i.a
  br i1 %i.u, label %.critedge, label %.preheader116.preheader

.preheader116.preheader:                          ; preds = %bb.b
  %wide.trip.count = zext i32 %spec.select.lcssa to i64 ; 2 uses
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.preheader, %bb.c
  %.083126 = phi i64 [ %i.aa, %bb.c ], [ 0, %.preheader116.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.083126
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12    ; 2 uses
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader116
  %i.y = zext nneg i8 %i.w to i32
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.083126
  store i32 %i.y, ptr %i.z, align 4, !tbaa !11
  %i.aa = add nuw nsw i64 %.083126, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader116, !llvm.loop !16

bb.d:                                             ; preds = %bb.c
  %i.ab = add i32 %spec.select.lcssa, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  %.087 = phi i32 [ %i.ab, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.184 = phi i64 [ %wide.trip.count, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.ac = zext i32 %.087 to i64
  %i.ad = icmp ugt i64 %1, %i.ac
  br i1 %i.ad, label %.preheader.lr.ph, label %.._crit_edge141_crit_edge

.._crit_edge141_crit_edge:                        ; preds = %._crit_edge.thread
  %.pre = trunc nuw i64 %.184 to i32
  br label %._crit_edge141

.preheader.lr.ph:                                 ; preds = %._crit_edge.thread
  %i.ae = zext i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.q
  %.2140 = phi i32 [ %.087, %.preheader.lr.ph ], [ %i.ar, %bb.q ] ; 2 uses
  %.285139 = phi i64 [ %.184, %.preheader.lr.ph ], [ %i.bf, %bb.q ] ; 3 uses
  %.088138 = phi i32 [ 72, %.preheader.lr.ph ], [ %i.by, %bb.q ] ; 3 uses
  %.090137 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cg, %bb.q ] ; 3 uses
  %.093136 = phi i32 [ 128, %.preheader.lr.ph ], [ %i.cb, %bb.q ] ; 2 uses
  %i.af = zext i32 %.2140 to i64                  ; 2 uses
  %.not104128 = icmp ugt i64 %1, %i.af
  br i1 %.not104128, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %.preheader
  %i.ag = add nsw i32 %.088138, 26
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph133, %bb.l
  %i.ah = phi i64 [ %i.af, %.lr.ph133 ], [ %i.be, %bb.l ]
  %.0132 = phi i32 [ 36, %.lr.ph133 ], [ %i.bd, %bb.l ] ; 4 uses
  %.078131 = phi i32 [ 1, %.lr.ph133 ], [ %i.bc, %bb.l ] ; 4 uses
  %.3130 = phi i32 [ %.2140, %.lr.ph133 ], [ %i.ar, %bb.l ]
  %.191129 = phi i32 [ %.090137, %.lr.ph133 ], [ %i.aw, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12  ; 4 uses
  %i.ak = zext i8 %i.aj to i32                    ; 3 uses
  %i.al = add i8 %i.aj, -65
  %or.cond.i = icmp ult i8 %i.al, 26
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = add nsw i32 %i.ak, -65
  br label %digit_decoded.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.an = add i8 %i.aj, -97
  %or.cond5.i = icmp ult i8 %i.an, 26
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.ak, -97
  br label %digit_decoded.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %i.ak, -22
  %i.aq = add i8 %i.aj, -58
  %or.cond = icmp ult i8 %i.aq, -10
  br i1 %or.cond, label %.critedge, label %digit_decoded.exit.thread

digit_decoded.exit.thread:                        ; preds = %bb.h, %bb.f, %bb.i
  %.0.i109 = phi i32 [ %i.ap, %bb.i ], [ %i.ao, %bb.h ], [ %i.am, %bb.f ] ; 3 uses
  %i.ar = add i32 %.3130, 1                       ; 4 uses
  %i.as = xor i32 %.191129, -1
  %i.at = udiv i32 %i.as, %.078131
  %i.au = icmp ugt i32 %.0.i109, %i.at
  br i1 %i.au, label %.critedge, label %bb.j

bb.j:                                             ; preds = %digit_decoded.exit.thread
  %i.av = mul i32 %.0.i109, %.078131
  %i.aw = add i32 %i.av, %.191129                 ; 4 uses
  %.not105 = icmp ugt i32 %.0132, %.088138
  %.not106 = icmp ult i32 %.0132, %i.ag
  %i.ax = sub nuw i32 %.0132, %.088138
  %i.ay = select i1 %.not106, i32 %i.ax, i32 26
  %i.az = select i1 %.not105, i32 %i.ay, i32 1    ; 2 uses
  %i.ba = icmp ult i32 %.0.i109, %i.az
  br i1 %i.ba, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = sub nsw i32 36, %i.az                   ; 2 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.bb, i32 %.078131)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = mul i32 %i.bb, %.078131
  %i.bd = add i32 %.0132, 36
  %i.be = zext i32 %i.ar to i64                   ; 2 uses
  %.not104 = icmp ugt i64 %1, %i.be
  br i1 %.not104, label %bb.e, label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.bf = add nuw nsw i64 %.285139, 1             ; 4 uses
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %.not113 = icmp eq i32 %.090137, 0
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = udiv i32 %i.aw, 700
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = sub i32 %i.aw, %.090137
  %i.bj = lshr i32 %i.bi, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bk = phi i32 [ %i.bh, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  %i.bl = udiv i32 %i.bk, %i.bg
  %i.bm = add nuw i32 %i.bl, %i.bk                ; 11 uses
  %i.bn = icmp ugt i32 %i.bm, 455
  br i1 %i.bn, label %.lr.ph.i, label %adapt.exit

.lr.ph.i:                                         ; preds = %bb.p
  %4 = udiv i32 %i.bm, 35
  %5 = icmp ugt i32 %i.bm, 15959
  br i1 %5, label %.lr.ph.i.1, label %adapt.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %6 = udiv i32 %i.bm, 1225
  %7 = icmp ugt i32 %i.bm, 558599
  br i1 %7, label %.lr.ph.i.2, label %adapt.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %8 = udiv i32 %i.bm, 42875
  %9 = icmp ugt i32 %i.bm, 19550999
  br i1 %9, label %.lr.ph.i.a, label %adapt.exit

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.2
  %i.bo = udiv i32 %i.bm, 1500625
  %i.bp = icmp ugt i32 %i.bm, 684284999
  br i1 %i.bp, label %.lr.ph.i.4, label %adapt.exit

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.a
  %10 = udiv i32 %i.bm, 52521875
  br label %adapt.exit

adapt.exit:                                       ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.a, %.lr.ph.i.4, %bb.p
  %.012.lcssa.i = phi i32 [ %i.bm, %bb.p ], [ %4, %.lr.ph.i ], [ %6, %.lr.ph.i.1 ], [ %8, %.lr.ph.i.2 ], [ %i.bo, %.lr.ph.i.a ], [ %10, %.lr.ph.i.4 ]
  %.0.lcssa.i = phi i32 [ 0, %bb.p ], [ 36, %.lr.ph.i ], [ 72, %.lr.ph.i.1 ], [ 108, %.lr.ph.i.2 ], [ 144, %.lr.ph.i.a ], [ 180, %.lr.ph.i.4 ]
  %i.bq = zext i32 %i.aw to i64                   ; 2 uses
  %i.br = udiv i64 %i.bq, %i.bf                   ; 2 uses
  %i.bs = urem i64 %i.bq, %i.bf                   ; 3 uses
  %i.bt = xor i32 %.093136, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ule i64 %i.br, %i.bu
  %.not107 = icmp samesign ult i64 %.285139, %i.ae
  %or.cond114 = select i1 %i.bv, i1 %.not107, i1 false
  br i1 %or.cond114, label %bb.q, label %.critedge

bb.q:                                             ; preds = %adapt.exit
  %i.bw = trunc nuw i32 %.012.lcssa.i to i16      ; 2 uses
  %.lhs.trunc.i = mul nuw i16 %i.bw, 36
  %.rhs.trunc.i = add nuw nsw i16 %i.bw, 38
  %i.bx = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.bx to i32
  %i.by = add i32 %.0.lcssa.i, %.zext.i
  %i.bz = trunc nuw i64 %i.bs to i32
  %i.ca = trunc nuw i64 %i.br to i32
  %i.cb = add i32 %.093136, %i.ca                 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bs ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = sub nuw nsw i64 %.285139, %i.bs
  %i.cf = shl nuw nsw i64 %i.ce, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %i.cc, i64 %i.cf, i1 false)
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !11
  %i.cg = add i32 %i.bz, 1
  %i.ch = zext i32 %i.ar to i64
  %i.ci = icmp ugt i64 %1, %i.ch
  br i1 %i.ci, label %.preheader, label %._crit_edge141, !llvm.loop !17

._crit_edge141:                                   ; preds = %bb.q, %.._crit_edge141_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge141_crit_edge ], [ %i.bg, %bb.q ]
  store i32 %.pre-phi, ptr %3, align 4, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %.preheader116, %adapt.exit, %.preheader, %bb.k, %bb.l, %digit_decoded.exit.thread, %bb.i, %bb.b, %._crit_edge141
  %.297 = phi i32 [ 1, %._crit_edge141 ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %adapt.exit ], [ 0, %bb.i ], [ 0, %digit_decoded.exit.thread ], [ 0, %bb.l ], [ 0, %.preheader ], [ 0, %.preheader116 ]
  ret i32 %.297
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ossl_a2ulabel(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !guid !22 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  %3 = alloca %struct.wpacket_st, align 8         ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [6 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %.not = icmp eq ptr %1, null
  %.sink34.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sink34.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sink34.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink34.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @WPACKET_init_static_len(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 0) #7
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %bb.t, label %.preheader74

.preheader74:                                     ; preds = %bb.b, %bb.q
  %.030 = phi ptr [ %i.bd, %bb.q ], [ %0, %bb.b ] ; 6 uses
  %.027 = phi i32 [ %spec.select45, %bb.q ], [ 1, %bb.b ] ; 3 uses
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.030, i32 noundef 46) #8 ; 3 uses
  %.not38 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader74
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %.030 to i64
  %i.h = sub i64 %i.f, %i.g
  br label %bb.e

bb.d:                                             ; preds = %.preheader74
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.030) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.030, ptr noundef nonnull dereferenceable(5) @.str, i64 noundef 4) #8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @WPACKET_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %.030, i64 noundef %i.j) #7
  %.not39 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not39, i32 0, i32 %.027
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 512, ptr %i.b, align 4, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.o = add i64 %i.j, -4
  %i.p = call i32 @ossl_punycode_decode(ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not73.not = icmp eq i32 %i.p, 0
  br i1 %.not73.not, label %.thread69, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %.not78 = icmp eq i32 %i.q, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.12876 = phi i32 [ %.027, %.lr.ph.preheader ], [ %spec.select44, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 14 uses
  %i.t = icmp ult i32 %i.s, 128
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.u = trunc nuw nsw i32 %i.s to i8
  store i8 %i.u, ptr %i.c, align 4, !tbaa !12
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph
  %i.v = icmp ult i32 %i.s, 2048
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = lshr i32 %i.s, 6
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, -64
  store i8 %i.y, ptr %i.c, align 4, !tbaa !12
  %i.z = trunc i32 %i.s to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr %.sink34.i.sroa.gep50, align 1, !tbaa !12
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp ult i32 %i.s, 65536
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = lshr i32 %i.s, 12
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, -32
  store i8 %i.af, ptr %i.c, align 4, !tbaa !12
  %i.ag = lshr i32 %i.s, 6
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  store i8 %i.aj, ptr %.sink34.i.sroa.gep50, align 1, !tbaa !12
  %i.ak = trunc i32 %i.s to i8
  %i.al = and i8 %i.ak, 63
  %i.am = or disjoint i8 %i.al, -128
  store i8 %i.am, ptr %.sink34.i.sroa.gep49, align 2, !tbaa !12
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.an = icmp ult i32 %i.s, 1114112
  br i1 %i.an, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = lshr i32 %i.s, 18
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = lshr i32 %i.s, 12
  %i.ar = trunc i32 %i.aq to i8
  %i.as = lshr i32 %i.s, 6
  %i.at = trunc i32 %i.as to i8
  %i.au = trunc i32 %i.s to i8
  %i.av = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.ar, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.at, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.au, i64 3
  %i.az = and <4 x i8> %i.ay, <i8 -1, i8 63, i8 63, i8 63>
  %i.ba = or disjoint <4 x i8> %i.az, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ba, ptr %i.c, align 4, !tbaa !12
  br label %bb.o

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.thread69

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h
  %.sink34.i.sroa.phi.ph = phi ptr [ %.sink34.i.sroa.gep50, %bb.h ], [ %.sink34.i.sroa.gep49, %bb.j ], [ %.sink34.i.sroa.gep, %bb.l ], [ %.sink34.i.sroa.gep47, %bb.n ]
  %.0.i.ph = phi i64 [ 1, %bb.h ], [ 2, %bb.j ], [ 3, %bb.l ], [ 4, %bb.n ]
  store i8 0, ptr %.sink34.i.sroa.phi.ph, align 1, !tbaa !12
  %i.bb = call i32 @WPACKET_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %.0.i.ph) #7
  %.not40 = icmp eq i32 %i.bb, 0
  %spec.select44 = select i1 %.not40, i32 0, i32 %.12876 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

.thread69:                                        ; preds = %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.s

._crit_edge:                                      ; preds = %bb.o, %.preheader
  %.128.lcssa = phi i32 [ %.027, %.preheader ], [ %spec.select44, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.f
  %.5 = phi i32 [ %.128.lcssa, %._crit_edge ], [ %spec.select, %bb.f ] ; 2 uses
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %3, i64 noundef 46, i64 noundef 1) #7
  %.not42 = icmp eq i32 %i.bc, 0
  %spec.select45 = select i1 %.not42, i32 0, i32 %.5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.preheader74

bb.r:                                             ; preds = %bb.p
  %i.be = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #7
  %.not43 = icmp eq i32 %i.be, 0
  %spec.select46 = select i1 %.not43, i32 0, i32 %.5
  br label %bb.s

bb.s:                                             ; preds = %.thread69, %bb.r
  %.8 = phi i32 [ %spec.select46, %bb.r ], [ -1, %.thread69 ]
  call void @WPACKET_cleanup(ptr noundef nonnull %3) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %bb.s
  %.032 = phi i32 [ -1, %bb.b ], [ %.8, %bb.s ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.032
}

declare i32 @WPACKET_init_static_len(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @WPACKET_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @WPACKET_put_bytes__(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WPACKET_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{i64 -2719579786559354004}
!11 = !{!7, !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13, !19, !20}
!15 = distinct !{!15, !13, !19}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{i64 -8838324878497988081}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !13}
!22 = !{i64 4516564615325781916}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
