inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wpacket_st = type { ptr, ptr, i64, i64, i64, ptr, i8 }

@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @ossl_punycode_decode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !5      ; 2 uses
  %.not143 = icmp eq i64 %1, 0
  br i1 %.not143, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 12
  br i1 %min.iters.check, label %.lr.ph.preheader187, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 4294967295
  %i.e = icmp ugt i64 %i.b, 4294967295
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.preheader187, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 4 uses
  %4 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi176 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %vec.phi177 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %wide.load = load <4 x i8>, ptr %5, align 1, !tbaa !9
  %wide.load178 = load <4 x i8>, ptr %i.g, align 1, !tbaa !9
  %6 = icmp eq <4 x i8> %wide.load, splat (i8 45) ; 2 uses
  %i.h = icmp eq <4 x i8> %wide.load178, splat (i8 45) ; 2 uses
  %7 = or <4 x i1> %vec.phi176, %6                ; 2 uses
  %8 = or <4 x i1> %vec.phi177, %i.h              ; 2 uses
  %9 = select <4 x i1> %6, <4 x i32> %vec.ind, <4 x i32> %vec.phi ; 2 uses
  %i.i = select <4 x i1> %i.h, <4 x i32> %step.add, <4 x i32> %vec.phi175 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %9, <4 x i32> %i.i)
  %10 = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  %bin.rdx = or <4 x i1> %8, %7
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %11 = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not180 = icmp eq i4 %11, 0
  %rdx.select = select i1 %.not180, i32 0, i32 %10 ; 2 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader187

.lr.ph.preheader187:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.086125.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %4, %middle.block ]
  %.089124.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader187, %.lr.ph
  %i.k = phi i64 [ %13, %.lr.ph ], [ %.ph, %.lr.ph.preheader187 ]
  %.086125 = phi i32 [ %12, %.lr.ph ], [ %.086125.ph, %.lr.ph.preheader187 ] ; 2 uses
  %.089124 = phi i32 [ %spec.select, %.lr.ph ], [ %.089124.ph, %.lr.ph.preheader187 ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = icmp eq i8 %i.m, 45
  %spec.select = select i1 %i.n, i32 %.086125, i32 %.089124 ; 2 uses
  %12 = add i32 %.086125, 1                       ; 2 uses
  %13 = zext i32 %12 to i64                       ; 2 uses
  %i.o = icmp ugt i64 %1, %13
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ] ; 4 uses
  %.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = icmp ugt i32 %spec.select.lcssa, %i.a
  br i1 %i.p, label %.critedge, label %.preheader116.preheader

.preheader116.preheader:                          ; preds = %bb.b
  %wide.trip.count = zext i32 %spec.select.lcssa to i64 ; 2 uses
  br label %.preheader116

.preheader116:                                    ; preds = %.preheader116.preheader, %bb.c
  %.093126 = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader116.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.093126
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9     ; 2 uses
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader116
  %i.t = zext nneg i8 %i.r to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.093126
  store i32 %i.t, ptr %i.u, align 4, !tbaa !5
  %i.v = add nuw nsw i64 %.093126, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %.preheader116, !llvm.loop !15

bb.d:                                             ; preds = %bb.c
  %i.w = add i32 %spec.select.lcssa, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  %.097 = phi i32 [ %i.w, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.194 = phi i64 [ %wide.trip.count, %bb.d ], [ 0, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.x = zext i32 %.097 to i64
  %i.y = icmp ugt i64 %1, %i.x
  br i1 %i.y, label %.preheader.lr.ph, label %.._crit_edge141_crit_edge

.._crit_edge141_crit_edge:                        ; preds = %._crit_edge.thread
  %.pre = trunc nuw i64 %.194 to i32
  br label %._crit_edge141

.preheader.lr.ph:                                 ; preds = %._crit_edge.thread
  %i.z = zext i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.q
  %.078140 = phi i32 [ 128, %.preheader.lr.ph ], [ %i.bx, %bb.q ] ; 2 uses
  %.082139 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cc, %bb.q ] ; 3 uses
  %.288138 = phi i32 [ %.097, %.preheader.lr.ph ], [ %i.am, %bb.q ] ; 2 uses
  %.091137 = phi i32 [ 72, %.preheader.lr.ph ], [ %i.bu, %bb.q ] ; 3 uses
  %.295136 = phi i64 [ %.194, %.preheader.lr.ph ], [ %i.ba, %bb.q ] ; 3 uses
  %i.aa = zext i32 %.288138 to i64                ; 2 uses
  %.not104128 = icmp ugt i64 %1, %i.aa
  br i1 %.not104128, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %.preheader
  %i.ab = add i32 %.091137, 26
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph133, %bb.l
  %i.ac = phi i64 [ %i.aa, %.lr.ph133 ], [ %i.az, %bb.l ]
  %.080132 = phi i32 [ 36, %.lr.ph133 ], [ %i.ay, %bb.l ] ; 4 uses
  %.081131 = phi i32 [ 1, %.lr.ph133 ], [ %i.ax, %bb.l ] ; 4 uses
  %.183130 = phi i32 [ %.082139, %.lr.ph133 ], [ %i.ar, %bb.l ] ; 2 uses
  %.3129 = phi i32 [ %.288138, %.lr.ph133 ], [ %i.am, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9   ; 4 uses
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = add i8 %i.ae, -65
  %or.cond.i = icmp ult i8 %i.ag, 26
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.af, -65
  br label %digit_decoded.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ai = add i8 %i.ae, -97
  %or.cond5.i = icmp ult i8 %i.ai, 26
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.af, -97
  br label %digit_decoded.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.af, -22
  %i.al = add i8 %i.ae, -58
  %or.cond = icmp ult i8 %i.al, -10
  br i1 %or.cond, label %.critedge, label %digit_decoded.exit.thread

digit_decoded.exit.thread:                        ; preds = %bb.h, %bb.f, %bb.i
  %.0.i109 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ], [ %i.ah, %bb.f ] ; 3 uses
  %i.am = add i32 %.3129, 1                       ; 4 uses
  %i.an = xor i32 %.183130, -1
  %i.ao = udiv i32 %i.an, %.081131
  %i.ap = icmp ugt i32 %.0.i109, %i.ao
  br i1 %i.ap, label %.critedge, label %bb.j

bb.j:                                             ; preds = %digit_decoded.exit.thread
  %i.aq = mul i32 %.0.i109, %.081131
  %i.ar = add i32 %i.aq, %.183130                 ; 4 uses
  %.not105 = icmp ugt i32 %.080132, %.091137
  %.not106 = icmp ult i32 %.080132, %i.ab
  %i.as = sub nuw i32 %.080132, %.091137
  %i.at = select i1 %.not106, i32 %i.as, i32 26
  %i.au = select i1 %.not105, i32 %i.at, i32 1    ; 2 uses
  %i.av = icmp ult i32 %.0.i109, %i.au
  br i1 %i.av, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = sub nsw i32 36, %i.au                   ; 2 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aw, i32 %.081131)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = mul i32 %i.aw, %.081131
  %i.ay = add i32 %.080132, 36
  %i.az = zext i32 %i.am to i64                   ; 2 uses
  %.not104 = icmp ugt i64 %1, %i.az
  br i1 %.not104, label %bb.e, label %.critedge

bb.m:                                             ; preds = %bb.j
  %i.ba = add nuw nsw i64 %.295136, 1             ; 4 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %.not113 = icmp eq i32 %.082139, 0
  br i1 %.not113, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = udiv i32 %i.ar, 700
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bd = sub i32 %i.ar, %.082139
  %i.be = lshr i32 %i.bd, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bf = phi i32 [ %i.bc, %bb.n ], [ %i.be, %bb.o ] ; 2 uses
  %i.bg = udiv i32 %i.bf, %i.bb
  %i.bh = add nuw i32 %i.bg, %i.bf                ; 3 uses
  %i.bi = icmp ugt i32 %i.bh, 455
  br i1 %i.bi, label %.lr.ph.i, label %adapt.exit

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.014.i = phi i32 [ %i.bk, %.lr.ph.i ], [ 0, %bb.p ]
  %.01213.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %i.bh, %bb.p ] ; 2 uses
  %i.bj = udiv i32 %.01213.i, 35                  ; 2 uses
  %i.bk = add i32 %.014.i, 36                     ; 2 uses
  %i.bl = icmp ugt i32 %.01213.i, 15959
  br i1 %i.bl, label %.lr.ph.i, label %adapt.exit, !llvm.loop !16

adapt.exit:                                       ; preds = %.lr.ph.i, %bb.p
  %.012.lcssa.i = phi i32 [ %i.bh, %bb.p ], [ %i.bj, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.bk, %.lr.ph.i ]
  %i.bm = zext i32 %i.ar to i64                   ; 2 uses
  %i.bn = udiv i64 %i.bm, %i.ba                   ; 2 uses
  %i.bo = urem i64 %i.bm, %i.ba                   ; 3 uses
  %i.bp = xor i32 %.078140, -1
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ule i64 %i.bn, %i.bq
  %.not107 = icmp samesign ult i64 %.295136, %i.z
  %or.cond114 = select i1 %i.br, i1 %.not107, i1 false
  br i1 %or.cond114, label %bb.q, label %.critedge

bb.q:                                             ; preds = %adapt.exit
  %i.bs = trunc nuw i32 %.012.lcssa.i to i16      ; 2 uses
  %.lhs.trunc.i = mul nuw i16 %i.bs, 36
  %.rhs.trunc.i = add nuw nsw i16 %i.bs, 38
  %i.bt = udiv i16 %.lhs.trunc.i, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.bt to i32
  %i.bu = add i32 %.0.lcssa.i, %.zext.i
  %i.bv = trunc nuw i64 %i.bo to i32
  %i.bw = trunc nuw i64 %i.bn to i32
  %i.bx = add i32 %.078140, %i.bw                 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = sub nsw i64 %.295136, %i.bo
  %i.cb = shl nsw i64 %i.ca, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bz, ptr align 4 %i.by, i64 %i.cb, i1 false)
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !5
  %i.cc = add i32 %i.bv, 1
  %i.cd = zext i32 %i.am to i64
  %i.ce = icmp ugt i64 %1, %i.cd
  br i1 %i.ce, label %.preheader, label %._crit_edge141, !llvm.loop !17

._crit_edge141:                                   ; preds = %bb.q, %.._crit_edge141_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge141_crit_edge ], [ %i.bb, %bb.q ]
  store i32 %.pre-phi, ptr %3, align 4, !tbaa !5
  br label %.critedge

.critedge:                                        ; preds = %.preheader116, %adapt.exit, %.preheader, %bb.k, %bb.l, %digit_decoded.exit.thread, %bb.i, %bb.b, %._crit_edge141
  %.2 = phi i32 [ 1, %._crit_edge141 ], [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %adapt.exit ], [ 0, %bb.i ], [ 0, %digit_decoded.exit.thread ], [ 0, %bb.l ], [ 0, %.preheader ], [ 0, %.preheader116 ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ossl_a2ulabel(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  %3 = alloca %struct.wpacket_st, align 8         ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [6 x i8], align 4                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  %.not = icmp eq ptr %1, null
  %.sink34.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sink34.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sink34.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink34.i.sroa.gep50 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @WPACKET_init_static_len(ptr noundef nonnull %3, ptr noundef nonnull %1, i64 noundef %2, i64 noundef 0) #6
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %bb.t, label %.preheader74

.preheader74:                                     ; preds = %bb.b, %bb.q
  %.027 = phi i32 [ %spec.select45, %bb.q ], [ 1, %bb.b ] ; 3 uses
  %.026 = phi ptr [ %i.bd, %bb.q ], [ %0, %bb.b ] ; 6 uses
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.026, i32 noundef 46) #7 ; 3 uses
  %.not38 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader74
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %.026 to i64
  %i.h = sub i64 %i.f, %i.g
  br label %bb.e

bb.d:                                             ; preds = %.preheader74
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.026) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.k = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.026, ptr noundef nonnull dereferenceable(5) @.str, i64 noundef 4) #7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call i32 @WPACKET_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %.026, i64 noundef %i.j) #6
  %.not39 = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not39, i32 0, i32 %.027
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 512, ptr %i.b, align 4, !tbaa !5
  %i.n = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.o = add i64 %i.j, -4
  %i.p = call i32 @ossl_punycode_decode(ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not73.not = icmp eq i32 %i.p, 0
  br i1 %.not73.not, label %.thread69, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = load i32, ptr %i.b, align 4, !tbaa !5    ; 2 uses
  %.not78 = icmp eq i32 %i.q, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.12877 = phi i32 [ %.027, %.lr.ph.preheader ], [ %spec.select44, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !5    ; 14 uses
  %i.t = icmp ult i32 %i.s, 128
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.u = trunc nuw nsw i32 %i.s to i8
  store i8 %i.u, ptr %i.c, align 4, !tbaa !9
  br label %bb.o

bb.i:                                             ; preds = %.lr.ph
  %i.v = icmp ult i32 %i.s, 2048
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = lshr i32 %i.s, 6
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, -64
  store i8 %i.y, ptr %i.c, align 4, !tbaa !9
  %i.z = trunc i32 %i.s to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  store i8 %i.ab, ptr %.sink34.i.sroa.gep50, align 1, !tbaa !9
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp ult i32 %i.s, 65536
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = lshr i32 %i.s, 12
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, -32
  store i8 %i.af, ptr %i.c, align 4, !tbaa !9
  %i.ag = lshr i32 %i.s, 6
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  store i8 %i.aj, ptr %.sink34.i.sroa.gep50, align 1, !tbaa !9
  %i.ak = trunc i32 %i.s to i8
  %i.al = and i8 %i.ak, 63
  %i.am = or disjoint i8 %i.al, -128
  store i8 %i.am, ptr %.sink34.i.sroa.gep49, align 2, !tbaa !9
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.an = icmp ult i32 %i.s, 1114112
  br i1 %i.an, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = lshr i32 %i.s, 6
  %i.ap = lshr i32 %i.s, 12
  %i.aq = lshr i32 %i.s, 18
  %i.ar = trunc i32 %i.s to i8
  %i.as = trunc i32 %i.ao to i8
  %i.at = trunc i32 %i.ap to i8
  %i.au = trunc nuw nsw i32 %i.aq to i8
  %i.av = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %i.aw = insertelement <4 x i8> %i.av, i8 %i.at, i64 1
  %i.ax = insertelement <4 x i8> %i.aw, i8 %i.as, i64 2
  %i.ay = insertelement <4 x i8> %i.ax, i8 %i.ar, i64 3
  %i.az = and <4 x i8> %i.ay, <i8 -1, i8 63, i8 63, i8 63>
  %i.ba = or disjoint <4 x i8> %i.az, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ba, ptr %i.c, align 4, !tbaa !9
  br label %bb.o

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread69

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h
  %.sink34.i.sroa.phi.ph = phi ptr [ %.sink34.i.sroa.gep50, %bb.h ], [ %.sink34.i.sroa.gep49, %bb.j ], [ %.sink34.i.sroa.gep, %bb.l ], [ %.sink34.i.sroa.gep47, %bb.n ]
  %.0.i.ph = phi i64 [ 1, %bb.h ], [ 2, %bb.j ], [ 3, %bb.l ], [ 4, %bb.n ]
  store i8 0, ptr %.sink34.i.sroa.phi.ph, align 1, !tbaa !9
  %i.bb = call i32 @WPACKET_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i64 noundef %.0.i.ph) #6
  %.not40 = icmp eq i32 %i.bb, 0
  %spec.select44 = select i1 %.not40, i32 0, i32 %.12877 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

.thread69:                                        ; preds = %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.s

._crit_edge:                                      ; preds = %bb.o, %.preheader
  %.128.lcssa = phi i32 [ %.027, %.preheader ], [ %spec.select44, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.f
  %.5 = phi i32 [ %.128.lcssa, %._crit_edge ], [ %spec.select, %bb.f ] ; 2 uses
  br i1 %.not38, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %3, i64 noundef 46, i64 noundef 1) #6
  %.not42 = icmp eq i32 %i.bc, 0
  %spec.select45 = select i1 %.not42, i32 0, i32 %.5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %.preheader74

bb.r:                                             ; preds = %bb.p
  %i.be = call i32 @WPACKET_put_bytes__(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #6
  %.not43 = icmp eq i32 %i.be, 0
  %spec.select46 = select i1 %.not43, i32 0, i32 %.5
  br label %bb.s

bb.s:                                             ; preds = %.thread69, %bb.r
  %.8 = phi i32 [ %spec.select46, %bb.r ], [ -1, %.thread69 ]
  call void @WPACKET_cleanup(ptr noundef nonnull %3) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %bb.s
  %.0 = phi i32 [ -1, %bb.b ], [ %.8, %bb.s ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = distinct !{!19, !11}
end_hunk_0
