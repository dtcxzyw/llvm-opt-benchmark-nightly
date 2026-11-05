Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/gcm?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 23
begin_hunk_0_@mbedtls_gcm_update:bb.a
bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %5, align 8, !tbaa !9
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt ptr %3, %1
  %i.e = ptrtoint ptr %3 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, %2
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 4 uses
  %i.k = add i64 %i.j, %2                         ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = icmp ugt i64 %i.k, 68719476704
  %or.cond96 = or i1 %i.l, %i.m
  br i1 %or.cond96, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  %i.q = and i64 %i.p, 15
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.r)
  %.pre = load i64, ptr %i.i, align 8, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.s = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.e ] ; 2 uses
  %i.t = and i64 %i.s, 15                         ; 4 uses
  %.not88 = icmp eq i64 %i.t, 0
  br i1 %.not88, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i64 16, %i.t
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %2) ; 6 uses
  %i.v = call fastcc i32 @gcm_mask(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef %i.t, i64 noundef %spec.select, ptr noundef %1, ptr noundef %3) ; 2 uses
  %.not89 = icmp eq i32 %i.v, 0
  br i1 %.not89, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.w = add nuw nsw i64 %spec.select, %i.t
  %i.x = icmp eq i64 %i.w, 16
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.y, ptr noundef nonnull %i.y)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = load i64, ptr %i.i, align 8, !tbaa !23
  %i.aa = add i64 %i.z, %spec.select
  %i.ab = sub nuw i64 %2, %spec.select
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.l, %bb.h
  %i.ae = phi i64 [ %i.aa, %bb.l ], [ %i.s, %bb.h ], [ 0, %bb.f ]
  %.177 = phi i64 [ %i.ab, %bb.l ], [ %2, %bb.h ], [ %2, %bb.f ] ; 4 uses
  %.172 = phi ptr [ %i.ac, %bb.l ], [ %1, %bb.h ], [ %1, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %i.ad, %bb.l ], [ %3, %bb.h ], [ %3, %bb.f ] ; 2 uses
  %i.af = add i64 %i.ae, %.177
  store i64 %i.af, ptr %i.i, align 8, !tbaa !23
  %i.ag = icmp ugt i64 %.177, 15
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.2103 = phi ptr [ %.1, %.lr.ph ], [ %i.ap, %bb.n ] ; 2 uses
  %.273102 = phi ptr [ %.172, %.lr.ph ], [ %i.ao, %bb.n ] ; 2 uses
  %.278101 = phi i64 [ %.177, %.lr.ph ], [ %i.an, %bb.n ]
  %.0.copyload.i.i = load i32, ptr %i.ah, align 4
  %i.aj = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.ak = add i32 %i.aj, 1
  %i.al = call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.ah, align 4
  %i.am = call fastcc i32 @gcm_mask(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef 0, i64 noundef 16, ptr noundef %.273102, ptr noundef %.2103) ; 2 uses
  %.not92 = icmp eq i32 %i.am, 0
  br i1 %.not92, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ai)
  %i.an = add i64 %.278101, -16                   ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.273102, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.2103, i64 16 ; 2 uses
  %i.aq = icmp ugt i64 %i.an, 15
  br i1 %i.aq, label %bb.m, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.n, %.thread
  %.278.lcssa = phi i64 [ %.177, %.thread ], [ %i.an, %bb.n ] ; 2 uses
  %.273.lcssa = phi ptr [ %.172, %.thread ], [ %i.ao, %bb.n ]
  %.2.lcssa = phi ptr [ %.1, %.thread ], [ %i.ap, %bb.n ]
  %.not90 = icmp eq i64 %.278.lcssa, 0
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %.0.copyload.i.i97 = load i32, ptr %i.ar, align 4
  %i.as = call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i97)
  %i.at = add i32 %i.as, 1
  %i.au = call i32 @llvm.bswap.i32(i32 %i.at)
  store i32 %i.au, ptr %i.ar, align 4
  %i.av = call fastcc i32 @gcm_mask(ptr noundef nonnull %0, ptr noundef %i.a, i64 noundef 0, i64 noundef %.278.lcssa, ptr noundef %.273.lcssa, ptr noundef %.2.lcssa) ; 2 uses
  %.not91 = icmp eq i32 %i.av, 0
  br i1 %.not91, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o, %._crit_edge
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.m, %bb.i, %bb.o, %bb.d, %bb.c, %bb.b, %bb.a, %bb.p
  %.175 = phi i32 [ %i.v, %bb.i ], [ -138, %bb.a ], [ 0, %bb.b ], [ -135, %bb.c ], [ %i.av, %bb.o ], [ -135, %bb.d ], [ 0, %bb.p ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.175
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gcm_mask(ptr noundef %0, ptr noundef nonnull %1, i64 noundef range(i64 0, 16) %2, i64 noundef range(i64 1, 17) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i64 0, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = call i32 @mbedtls_cipher_update(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 16, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 16) #9
  br label %mbedtls_xor.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !17
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %mbedtls_xor.exit33

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %2 ; 10 uses
  %.not.i3141 = icmp samesign ult i64 %3, 8
  br i1 %.not.i3141, label %iter.check, label %.lr.ph

.preheader40:                                     ; preds = %.lr.ph.1, %.lr.ph
  %.lcssa166 = phi i64 [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 2 uses
  %i.k = icmp samesign ult i64 %.lcssa166, %3
  br i1 %i.k, label %iter.check, label %mbedtls_xor.exit33.thread

mbedtls_xor.exit33.thread:                        ; preds = %.preheader40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph47

iter.check:                                       ; preds = %bb.d, %.preheader40
  %.0.i30.lcssa64 = phi i64 [ %.lcssa166, %.preheader40 ], [ 0, %bb.d ] ; 9 uses
  %i.m = sub nsw i64 %3, %.0.i30.lcssa64          ; 6 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph44.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.n = getelementptr i8, ptr %0, i64 %.0.i30.lcssa64
  %i.o = getelementptr i8, ptr %i.n, i64 %2
  %i.p = getelementptr i8, ptr %i.o, i64 408
  %i.q = getelementptr i8, ptr %0, i64 %3
  %i.r = getelementptr i8, ptr %i.q, i64 %2
  %i.s = getelementptr i8, ptr %i.r, i64 408
  %i.t = getelementptr nuw i8, ptr %4, i64 %.0.i30.lcssa64
  %i.u = getelementptr i8, ptr %4, i64 %3
  %bound0 = icmp ult ptr %i.p, %i.u
  %bound1 = icmp ult ptr %i.t, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph44.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check82 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.m, 24
  %n.vec = and i64 %i.m, -32                      ; 4 uses
  %6 = or disjoint i64 %.0.i30.lcssa64, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %7 = or disjoint i64 %.0.i30.lcssa64, %index    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %7 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  %wide.load83 = load <16 x i8>, ptr %i.x, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %7 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load84 = load <16 x i8>, ptr %i.y, align 1, !tbaa !16, !alias.scope !73
  %wide.load85 = load <16 x i8>, ptr %i.z, align 1, !tbaa !16, !alias.scope !73
  %i.aa = xor <16 x i8> %wide.load84, %wide.load
  %i.ab = xor <16 x i8> %wide.load85, %wide.load83
  store <16 x i8> %i.aa, ptr %i.w, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  store <16 x i8> %i.ab, ptr %i.x, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %mbedtls_xor.exit33, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ad = and i64 %3, 7                           ; 2 uses
  %n.vec86 = sub nsw i64 %i.m, %i.ad              ; 2 uses
  %i.ae = add nsw i64 %.0.i30.lcssa64, %n.vec86
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next90, %vec.epilog.vector.body ] ; 2 uses
  %i.af = add nuw i64 %.0.i30.lcssa64, %index87   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.af ; 2 uses
  %wide.load88 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.af
  %wide.load89 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !16, !alias.scope !73
  %i.ai = xor <8 x i8> %wide.load89, %wide.load88
  store <8 x i8> %i.ai, ptr %i.ag, align 1, !tbaa !16, !alias.scope !72, !noalias !73
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next90, %n.vec86
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n91 = icmp eq i64 %i.ad, 0
  br i1 %cmp.n91, label %mbedtls_xor.exit33, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1.i3243.ph = phi i64 [ %.0.i30.lcssa64, %iter.check ], [ %.0.i30.lcssa64, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 4 uses
  %i.ak = sub i64 %3, %.1.i3243.ph
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader, %.lr.ph44.prol
  %.1.i3243.prol = phi i64 [ %i.aq, %.lr.ph44.prol ], [ %.1.i3243.ph, %.lr.ph44.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph44.prol ], [ 0, %.lr.ph44.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i3243.prol ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i3243.prol
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = xor i8 %i.ao, %i.am
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !16
  %i.aq = add nuw nsw i64 %.1.i3243.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol, !llvm.loop !59

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol, %.lr.ph44.preheader
  %.1.i3243.unr = phi i64 [ %.1.i3243.ph, %.lr.ph44.preheader ], [ %i.aq, %.lr.ph44.prol ]
  %i.ar = sub i64 %.1.i3243.ph, %3
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %mbedtls_xor.exit33, label %.lr.ph44

.lr.ph:                                           ; preds = %bb.d
  %.0.copyload.i34 = load i64, ptr %i.j, align 1
  %.0.copyload.i = load i64, ptr %4, align 1
  %i.at = xor i64 %.0.copyload.i, %.0.copyload.i34
  store i64 %i.at, ptr %i.j, align 1
  %.not.i31 = icmp samesign ult i64 %3, 16
  br i1 %.not.i31, label %.preheader40, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.0.copyload.i34.1 = load i64, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.av, align 1
  %i.aw = xor i64 %.0.copyload.i.1, %.0.copyload.i34.1
  store i64 %i.aw, ptr %i.au, align 1
  br label %.preheader40

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %.1.i3243 = phi i64 [ %i.bu, %.lr.ph44 ], [ %.1.i3243.unr, %.lr.ph44.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %.1.i3243 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i3243
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = xor i8 %i.ba, %i.ay
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !16
  %i.bc = add nuw nsw i64 %.1.i3243, 1            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.bc
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = xor i8 %i.bg, %i.be
  store i8 %i.bh, ptr %i.bd, align 1, !tbaa !16
  %i.bi = add nuw nsw i64 %.1.i3243, 2            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = xor i8 %i.bm, %i.bk
  store i8 %i.bn, ptr %i.bj, align 1, !tbaa !16
  %i.bo = add nuw nsw i64 %.1.i3243, 3            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = xor i8 %i.bs, %i.bq
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !16
  %i.bu = add nuw nsw i64 %.1.i3243, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %3
  br i1 %exitcond.not.3, label %mbedtls_xor.exit33, label %.lr.ph44, !llvm.loop !60

mbedtls_xor.exit33:                               ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %.not.i2745 = icmp samesign ult i64 %3, 8
  br i1 %.not.i2745, label %iter.check110, label %.lr.ph47

.preheader39:                                     ; preds = %.lr.ph47.1, %.lr.ph47
  %.lcssa165 = phi i64 [ 8, %.lr.ph47 ], [ 16, %.lr.ph47.1 ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.lcssa165, %3
  br i1 %i.bw, label %iter.check110, label %mbedtls_xor.exit29

iter.check110:                                    ; preds = %mbedtls_xor.exit33, %.preheader39
  %.0.i26.lcssa72 = phi i64 [ %.lcssa165, %.preheader39 ], [ 0, %mbedtls_xor.exit33 ] ; 7 uses
  %i.bx = phi ptr [ %i.de, %.preheader39 ], [ %i.bv, %mbedtls_xor.exit33 ] ; 8 uses
  %.not.i27456771 = phi i1 [ false, %.preheader39 ], [ true, %mbedtls_xor.exit33 ] ; 4 uses
  %i.by = sub nsw i64 %3, %.0.i26.lcssa72         ; 6 uses
  %min.iters.check94 = icmp ult i64 %i.by, 8
  br i1 %min.iters.check94, label %.lr.ph50.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check110
  %i.bz = ptrtoaddr ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.a
  %diff.check = icmp ugt i64 %i.ca, -32
  %i.cb = sub i64 %i.b, %i.a
  %diff.check96 = icmp ugt i64 %i.cb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check96
  br i1 %conflict.rdx, label %.lr.ph50.preheader, label %vector.main.loop.iter.check97

vector.main.loop.iter.check97:                    ; preds = %vector.memcheck95
  %min.iters.check98 = icmp ult i64 %i.by, 32
  br i1 %min.iters.check98, label %vec.epilog.ph114, label %vector.ph99

vector.ph99:                                      ; preds = %vector.main.loop.iter.check97
  %i.cc = and i64 %i.by, 24
  %n.vec100 = and i64 %i.by, -32                  ; 4 uses
  %8 = or disjoint i64 %.0.i26.lcssa72, %n.vec100
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph99, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 2 uses
  %9 = or disjoint i64 %.0.i26.lcssa72, %index102 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %9 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load103 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !16
  %wide.load104 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !16
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 %9 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load105 = load <16 x i8>, ptr %i.cf, align 1, !tbaa !16
  %wide.load106 = load <16 x i8>, ptr %i.cg, align 1, !tbaa !16
  %i.ch = xor <16 x i8> %wide.load105, %wide.load103
  %i.ci = xor <16 x i8> %wide.load106, %wide.load104
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 %9 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <16 x i8> %i.ch, ptr %i.cj, align 1, !tbaa !16
  store <16 x i8> %i.ci, ptr %i.ck, align 1, !tbaa !16
  %index.next107 = add nuw i64 %index102, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.cl, label %middle.block108, label %vector.body101, !llvm.loop !61

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %i.by, %n.vec100
  br i1 %cmp.n109, label %mbedtls_xor.exit29, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block108
  %min.epilog.iters.check113 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check113, label %.lr.ph50.preheader, label %vec.epilog.ph114, !prof !74

vec.epilog.ph114:                                 ; preds = %vector.main.loop.iter.check97, %vec.epilog.iter.check111
  %vec.epilog.resume.val115 = phi i64 [ %n.vec100, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check97 ]
  %i.cm = and i64 %3, 7                           ; 2 uses
  %n.vec116 = sub nsw i64 %i.by, %i.cm            ; 2 uses
  %i.cn = add nsw i64 %.0.i26.lcssa72, %n.vec116
  br label %vec.epilog.vector.body117

vec.epilog.vector.body117:                        ; preds = %vec.epilog.vector.body117, %vec.epilog.ph114
  %index118 = phi i64 [ %vec.epilog.resume.val115, %vec.epilog.ph114 ], [ %index.next121, %vec.epilog.vector.body117 ] ; 2 uses
  %i.co = add nuw i64 %.0.i26.lcssa72, %index118  ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.co
  %wide.load119 = load <8 x i8>, ptr %i.cp, align 1, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 %i.co
  %wide.load120 = load <8 x i8>, ptr %i.cq, align 1, !tbaa !16
  %i.cr = xor <8 x i8> %wide.load120, %wide.load119
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 %i.co
  store <8 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !16
  %index.next121 = add nuw i64 %index118, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.ct, label %vec.epilog.middle.block122, label %vec.epilog.vector.body117, !llvm.loop !62

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body117
  %cmp.n123 = icmp eq i64 %i.cm, 0
  br i1 %cmp.n123, label %mbedtls_xor.exit29, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %iter.check110, %vector.memcheck95, %vec.epilog.iter.check111, %vec.epilog.middle.block122
  %.1.i2849.ph = phi i64 [ %.0.i26.lcssa72, %iter.check110 ], [ %.0.i26.lcssa72, %vector.memcheck95 ], [ %8, %vec.epilog.iter.check111 ], [ %i.cn, %vec.epilog.middle.block122 ] ; 4 uses
  %i.cu = sub i64 %3, %.1.i2849.ph
  %xtraiter167 = and i64 %i.cu, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol

.lr.ph50.prol:                                    ; preds = %.lr.ph50.preheader, %.lr.ph50.prol
  %.1.i2849.prol = phi i64 [ %i.db, %.lr.ph50.prol ], [ %.1.i2849.ph, %.lr.ph50.preheader ] ; 4 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %.lr.ph50.prol ], [ 0, %.lr.ph50.preheader ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.1.i2849.prol
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i2849.prol
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = xor i8 %i.cy, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i2849.prol
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = add nuw nsw i64 %.1.i2849.prol, 1       ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %.lr.ph50.prol.loopexit, label %.lr.ph50.prol, !llvm.loop !63

.lr.ph50.prol.loopexit:                           ; preds = %.lr.ph50.prol, %.lr.ph50.preheader
  %.1.i2849.unr = phi i64 [ %.1.i2849.ph, %.lr.ph50.preheader ], [ %i.db, %.lr.ph50.prol ]
  %i.dc = sub i64 %.1.i2849.ph, %3
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %mbedtls_xor.exit29, label %.lr.ph50

.lr.ph47:                                         ; preds = %mbedtls_xor.exit33, %mbedtls_xor.exit33.thread
  %i.de = phi ptr [ %i.l, %mbedtls_xor.exit33.thread ], [ %i.bv, %mbedtls_xor.exit33 ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.0.copyload.i36 = load i64, ptr %i.df, align 1
  %.0.copyload.i35 = load i64, ptr %4, align 1
  %i.dg = xor i64 %.0.copyload.i35, %.0.copyload.i36
  store i64 %i.dg, ptr %5, align 1
  %.not.i27 = icmp samesign ult i64 %3, 16
  br i1 %.not.i27, label %.preheader39, label %.lr.ph47.1

.lr.ph47.1:                                       ; preds = %.lr.ph47
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.0.copyload.i36.1 = load i64, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i35.1 = load i64, ptr %i.dj, align 1
  %i.dk = xor i64 %.0.copyload.i35.1, %.0.copyload.i36.1
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dk, ptr %i.dl, align 1
  br label %.preheader39

.lr.ph50:                                         ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50
  %.1.i2849 = phi i64 [ %i.en, %.lr.ph50 ], [ %.1.i2849.unr, %.lr.ph50.prol.loopexit ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.1.i2849
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i2849
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !16
  %i.dq = xor i8 %i.dp, %i.dn
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i2849
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !16
  %i.ds = add nuw nsw i64 %.1.i2849, 1            ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !16
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 %i.ds
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !16
  %i.dx = xor i8 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 %i.ds
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !16
  %i.dz = add nuw nsw i64 %.1.i2849, 2            ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 %i.dz
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = xor i8 %i.ed, %i.eb
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 %i.dz
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !16
  %i.eg = add nuw nsw i64 %.1.i2849, 3            ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !16
  %i.el = xor i8 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 %i.eg
  store i8 %i.el, ptr %i.em, align 1, !tbaa !16
  %i.en = add nuw nsw i64 %.1.i2849, 4            ; 2 uses
  %exitcond59.not.3 = icmp eq i64 %i.en, %3
  br i1 %exitcond59.not.3, label %mbedtls_xor.exit29, label %.lr.ph50, !llvm.loop !64

mbedtls_xor.exit29:                               ; preds = %.lr.ph50.prol.loopexit, %.lr.ph50, %middle.block108, %vec.epilog.middle.block122, %.preheader39
  %.not.i27456770 = phi i1 [ false, %.preheader39 ], [ %.not.i27456771, %middle.block108 ], [ %.not.i27456771, %vec.epilog.middle.block122 ], [ %.not.i27456771, %.lr.ph50 ], [ %.not.i27456771, %.lr.ph50.prol.loopexit ]
  %i.eo = load i8, ptr %i.f, align 8, !tbaa !17
  %i.ep = icmp eq i8 %i.eo, 1
  br i1 %i.ep, label %bb.e, label %mbedtls_xor.exit

bb.e:                                             ; preds = %mbedtls_xor.exit29
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %2 ; 10 uses
  br i1 %.not.i27456770, label %iter.check150, label %.lr.ph53

.preheader:                                       ; preds = %.lr.ph53.1, %.lr.ph53
  %.lcssa = phi i64 [ 8, %.lr.ph53 ], [ 16, %.lr.ph53.1 ] ; 2 uses
  %i.es = icmp samesign ult i64 %.lcssa, %3
  br i1 %i.es, label %iter.check150, label %mbedtls_xor.exit

iter.check150:                                    ; preds = %bb.e, %.preheader
  %.0.i.lcssa74 = phi i64 [ %.lcssa, %.preheader ], [ 0, %bb.e ] ; 9 uses
  %i.et = sub nsw i64 %3, %.0.i.lcssa74           ; 6 uses
  %min.iters.check132 = icmp ult i64 %i.et, 8
  br i1 %min.iters.check132, label %.lr.ph56.preheader, label %vector.memcheck133

vector.memcheck133:                               ; preds = %iter.check150
  %i.eu = getelementptr i8, ptr %0, i64 %.0.i.lcssa74
  %i.ev = getelementptr i8, ptr %i.eu, i64 %2
  %i.ew = getelementptr i8, ptr %i.ev, i64 408
  %i.ex = getelementptr i8, ptr %0, i64 %3
  %i.ey = getelementptr i8, ptr %i.ex, i64 %2
  %i.ez = getelementptr i8, ptr %i.ey, i64 408
  %i.fa = getelementptr nuw i8, ptr %5, i64 %.0.i.lcssa74
  %i.fb = getelementptr i8, ptr %5, i64 %3
  %bound0134 = icmp ult ptr %i.ew, %i.fb
  %bound1135 = icmp ult ptr %i.fa, %i.ez
  %found.conflict136 = and i1 %bound0134, %bound1135
  br i1 %found.conflict136, label %.lr.ph56.preheader, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck133
  %min.iters.check138 = icmp ult i64 %i.et, 32
  br i1 %min.iters.check138, label %vec.epilog.ph154, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %i.fc = and i64 %i.et, 24
  %n.vec140 = and i64 %i.et, -32                  ; 4 uses
  %10 = or disjoint i64 %.0.i.lcssa74, %n.vec140
  br label %vector.body141

vector.body141:                                   ; preds = %vector.ph139, %vector.body141
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %11 = or disjoint i64 %.0.i.lcssa74, %index142  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 %11 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load143 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %wide.load144 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 %11 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load145 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !16, !alias.scope !76
  %wide.load146 = load <16 x i8>, ptr %i.fg, align 1, !tbaa !16, !alias.scope !76
  %i.fh = xor <16 x i8> %wide.load145, %wide.load143
  %i.fi = xor <16 x i8> %wide.load146, %wide.load144
  store <16 x i8> %i.fh, ptr %i.fd, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <16 x i8> %i.fi, ptr %i.fe, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %index.next147 = add nuw i64 %index142, 32      ; 2 uses
  %i.fj = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.fj, label %middle.block148, label %vector.body141, !llvm.loop !68

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.et, %n.vec140
  br i1 %cmp.n149, label %mbedtls_xor.exit, label %vec.epilog.iter.check151

vec.epilog.iter.check151:                         ; preds = %middle.block148
  %min.epilog.iters.check153 = icmp eq i64 %i.fc, 0
  br i1 %min.epilog.iters.check153, label %.lr.ph56.preheader, label %vec.epilog.ph154, !prof !74

vec.epilog.ph154:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check151
  %vec.epilog.resume.val155 = phi i64 [ %n.vec140, %vec.epilog.iter.check151 ], [ 0, %vector.main.loop.iter.check137 ]
  %i.fk = and i64 %3, 7                           ; 2 uses
  %n.vec156 = sub nsw i64 %i.et, %i.fk            ; 2 uses
  %i.fl = add nsw i64 %.0.i.lcssa74, %n.vec156
  br label %vec.epilog.vector.body157

vec.epilog.vector.body157:                        ; preds = %vec.epilog.vector.body157, %vec.epilog.ph154
  %index158 = phi i64 [ %vec.epilog.resume.val155, %vec.epilog.ph154 ], [ %index.next161, %vec.epilog.vector.body157 ] ; 2 uses
  %i.fm = add nuw i64 %.0.i.lcssa74, %index158    ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fm ; 2 uses
  %wide.load159 = load <8 x i8>, ptr %i.fn, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 %i.fm
  %wide.load160 = load <8 x i8>, ptr %i.fo, align 1, !tbaa !16, !alias.scope !76
  %i.fp = xor <8 x i8> %wide.load160, %wide.load159
  store <8 x i8> %i.fp, ptr %i.fn, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %index.next161 = add nuw i64 %index158, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.fq, label %vec.epilog.middle.block162, label %vec.epilog.vector.body157, !llvm.loop !69

vec.epilog.middle.block162:                       ; preds = %vec.epilog.vector.body157
  %cmp.n163 = icmp eq i64 %i.fk, 0
  br i1 %cmp.n163, label %mbedtls_xor.exit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %iter.check150, %vector.memcheck133, %vec.epilog.iter.check151, %vec.epilog.middle.block162
  %.1.i55.ph = phi i64 [ %.0.i.lcssa74, %iter.check150 ], [ %.0.i.lcssa74, %vector.memcheck133 ], [ %10, %vec.epilog.iter.check151 ], [ %i.fl, %vec.epilog.middle.block162 ] ; 4 uses
  %i.fr = sub i64 %3, %.1.i55.ph
  %xtraiter170 = and i64 %i.fr, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.1.i55.prol = phi i64 [ %i.fx, %.lr.ph56.prol ], [ %.1.i55.ph, %.lr.ph56.preheader ] ; 3 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1.i55.prol ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55.prol
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !16
  %i.fw = xor i8 %i.fv, %i.ft
  store i8 %i.fw, ptr %i.fs, align 1, !tbaa !16
  %i.fx = add nuw nsw i64 %.1.i55.prol, 1         ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !70

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.1.i55.unr = phi i64 [ %.1.i55.ph, %.lr.ph56.preheader ], [ %i.fx, %.lr.ph56.prol ]
  %i.fy = sub i64 %.1.i55.ph, %3
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %mbedtls_xor.exit, label %.lr.ph56

.lr.ph53:                                         ; preds = %bb.e
  %.0.copyload.i38 = load i64, ptr %i.er, align 1
  %.0.copyload.i37 = load i64, ptr %5, align 1
  %i.ga = xor i64 %.0.copyload.i37, %.0.copyload.i38
  store i64 %i.ga, ptr %i.er, align 1
  %.not.i = icmp samesign ult i64 %3, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53
  %i.gb = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.0.copyload.i38.1 = load i64, ptr %i.gb, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i37.1 = load i64, ptr %i.gc, align 1
  %i.gd = xor i64 %.0.copyload.i37.1, %.0.copyload.i38.1
  store i64 %i.gd, ptr %i.gb, align 1
  br label %.preheader

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.1.i55 = phi i64 [ %i.hb, %.lr.ph56 ], [ %.1.i55.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1.i55 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gi = xor i8 %i.gh, %i.gf
  store i8 %i.gi, ptr %i.ge, align 1, !tbaa !16
  %i.gj = add nuw nsw i64 %.1.i55, 1              ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gj ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !16
  %i.go = xor i8 %i.gn, %i.gl
  store i8 %i.go, ptr %i.gk, align 1, !tbaa !16
  %i.gp = add nuw nsw i64 %.1.i55, 2              ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %5, i64 %i.gp
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !16
  %i.gu = xor i8 %i.gt, %i.gr
  store i8 %i.gu, ptr %i.gq, align 1, !tbaa !16
  %i.gv = add nuw nsw i64 %.1.i55, 3              ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !16
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 %i.gv
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !16
  %i.ha = xor i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gw, align 1, !tbaa !16
  %i.hb = add nuw nsw i64 %.1.i55, 4              ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.hb, %3
  br i1 %exitcond60.not.3, label %mbedtls_xor.exit, label %.lr.ph56, !llvm.loop !71

mbedtls_xor.exit:                                 ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %middle.block148, %vec.epilog.middle.block162, %.preheader, %mbedtls_xor.exit29, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %i.e
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_gcm_finish(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = shl i64 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %i.h = and i64 %i.e, 15
  %.not = icmp eq i64 %i.h, 0
  %or.cond37 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add i64 %5, -17
  %or.cond = icmp ult i64 %i.j, -13
  br i1 %or.cond, label %mbedtls_xor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !23
  %i.l = and i64 %i.k, 15
  %.not36 = icmp eq i64 %i.l, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 8 %i.n, i64 %5, i1 false)
  %i.o = icmp ne i64 %i.c, 0
  %i.p = icmp ne i64 %i.f, 0
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond3, label %mbedtls_xor.exit41, label %mbedtls_xor.exit

mbedtls_xor.exit41:                               ; preds = %bb.f
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 12 uses
  %.0.copyload.i42 = load i64, ptr %i.q, align 8
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.r = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.0.copyload.i42.1 = load i64, ptr %i.s, align 8
  %i.t = xor i64 %.sroa.6.12.insert.insert, %.0.copyload.i42.1
  store i64 %i.t, ptr %i.s, align 8
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q)
  %.not.i48 = icmp samesign ult i64 %5, 8
  br i1 %.not.i48, label %.preheader, label %.lr.ph50.peel

.lr.ph50.peel:                                    ; preds = %mbedtls_xor.exit41
  %.0.copyload.i44.peel = load i64, ptr %4, align 1
  %.0.copyload.i43.peel = load i64, ptr %i.q, align 8
  %i.u = xor i64 %.0.copyload.i43.peel, %.0.copyload.i44.peel
  store i64 %i.u, ptr %4, align 1
  %.not.i.peel = icmp ult i64 %5, 16
  br i1 %.not.i.peel, label %.preheader, label %.lr.ph50.preheader.peel.newph

.lr.ph50.preheader.peel.newph:                    ; preds = %.lr.ph50.peel
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416
  br label %.lr.ph50

.preheader:                                       ; preds = %.lr.ph50.peel, %.lr.ph50, %mbedtls_xor.exit41
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_xor.exit41 ], [ 8, %.lr.ph50.peel ], [ %i.bc, %.lr.ph50 ] ; 9 uses
  %i.x = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.x, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.y = sub nuw nsw i64 %5, %.0.i.lcssa          ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph52.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = getelementptr i8, ptr %4, i64 %.0.i.lcssa
  %i.aa = getelementptr i8, ptr %4, i64 %5
  %i.ab = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %i.ac = getelementptr i8, ptr %i.ab, i64 408
  %i.ad = getelementptr i8, ptr %0, i64 %5
  %i.ae = getelementptr i8, ptr %i.ad, i64 408
  %bound0 = icmp ult ptr %i.z, %i.ae
  %bound1 = icmp ult ptr %i.ac, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph52.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check57 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.af = add nuw i64 %.0.i.lcssa, %index         ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  %wide.load58 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.af ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load59 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !16, !alias.scope !86
  %wide.load60 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !16, !alias.scope !86
  %i.ak = xor <16 x i8> %wide.load59, %wide.load
  %i.al = xor <16 x i8> %wide.load60, %wide.load58
  store <16 x i8> %i.ak, ptr %i.ag, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  store <16 x i8> %i.al, ptr %i.ah, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %5, 7                           ; 2 uses
  %n.vec61 = sub nsw i64 %i.y, %i.am              ; 2 uses
  %i.an = add i64 %.0.i.lcssa, %n.vec61
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = add nuw i64 %.0.i.lcssa, %index62       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 %i.ao ; 2 uses
  %wide.load63 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ao
  %wide.load64 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !16, !alias.scope !86
  %i.ar = xor <8 x i8> %wide.load64, %wide.load63
  store <8 x i8> %i.ar, ptr %i.ap, align 1, !tbaa !16, !alias.scope !85, !noalias !86
  %index.next65 = add nuw i64 %index62, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next65, %n.vec61
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n66 = icmp eq i64 %i.am, 0
  br i1 %cmp.n66, label %mbedtls_xor.exit, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i51.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.an, %vec.epilog.middle.block ] ; 4 uses
  %i.at = sub i64 %5, %.1.i51.ph
  %xtraiter = and i64 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol

.lr.ph52.prol:                                    ; preds = %.lr.ph52.preheader, %.lr.ph52.prol
  %.1.i51.prol = phi i64 [ %i.az, %.lr.ph52.prol ], [ %.1.i51.ph, %.lr.ph52.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.prol ], [ 0, %.lr.ph52.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51.prol ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51.prol
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !16
  %i.ay = xor i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !16
  %i.az = add nuw nsw i64 %.1.i51.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !82

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol, %.lr.ph52.preheader
  %.1.i51.unr = phi i64 [ %.1.i51.ph, %.lr.ph52.preheader ], [ %i.az, %.lr.ph52.prol ]
  %i.ba = sub i64 %.1.i51.ph, %5
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %mbedtls_xor.exit, label %.lr.ph52

.lr.ph50:                                         ; preds = %.lr.ph50.preheader.peel.newph, %.lr.ph50
  %i.bc = phi i64 [ %i.be, %.lr.ph50 ], [ 16, %.lr.ph50.preheader.peel.newph ] ; 2 uses
  %.0.copyload.i44 = load i64, ptr %i.v, align 1
  %.0.copyload.i43 = load i64, ptr %i.w, align 8
  %i.bd = xor i64 %.0.copyload.i43, %.0.copyload.i44
  store i64 %i.bd, ptr %i.v, align 1
  %i.be = add nuw nsw i64 %i.bc, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.be, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph50, !llvm.loop !83

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %.1.i51 = phi i64 [ %i.cc, %.lr.ph52 ], [ %.1.i51.unr, %.lr.ph52.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = xor i8 %i.bi, %i.bg
  store i8 %i.bj, ptr %i.bf, align 1, !tbaa !16
  %i.bk = add nuw nsw i64 %.1.i51, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bk
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16
  %i.bp = xor i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %i.bl, align 1, !tbaa !16
  %i.bq = add nuw nsw i64 %.1.i51, 2              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = xor i8 %i.bu, %i.bs
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !16
  %i.bw = add nuw nsw i64 %.1.i51, 3              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = xor i8 %i.ca, %i.by
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !16
  %i.cc = add nuw nsw i64 %.1.i51, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cc, %5
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph52, !llvm.loop !84

mbedtls_xor.exit:                                 ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52, %vec.epilog.middle.block, %.preheader, %bb.f, %bb.c
  %.0 = phi i32 [ -135, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph52 ], [ 0, %.lr.ph52.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 2 uses
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %7, i64 noundef %2, ptr noundef %8, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef %10, i64 noundef %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_auth_decrypt(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef 0, ptr noundef readonly %2, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef readonly %4, i64 noundef %5) ; 2 uses
  %.not23.i = icmp eq i32 %i.d, 0
  br i1 %.not23.i, label %bb.c, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %8, i64 noundef %1, ptr noundef %9, i64 noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i = icmp eq i32 %i.e, 0
  br i1 %.not24.i, label %mbedtls_gcm_crypt_and_tag.exit, label %mbedtls_gcm_crypt_and_tag.exit.thread

mbedtls_gcm_crypt_and_tag.exit.thread:            ; preds = %bb.c, %bb.a, %bb.b
  %.0.i.ph = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

mbedtls_gcm_crypt_and_tag.exit:                   ; preds = %bb.c
  %i.f = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit
  %i.g = call i32 @mbedtls_ct_memcmp(ptr noundef %6, ptr noundef nonnull %i.b, i64 noundef %7) #9
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef %9, i64 noundef %1) #9
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit.thread, %bb.d, %mbedtls_gcm_crypt_and_tag.exit, %bb.e
  %.0 = phi i32 [ %i.f, %mbedtls_gcm_crypt_and_tag.exit ], [ -149, %bb.e ], [ 0, %bb.d ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_gcm_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0) #9
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 432) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.mbedtls_gcm_context, align 8 ; 43 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %i.d = alloca [16 x i8], align 16               ; 10 uses
  %i.e = alloca i64, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %.not = icmp eq i32 %0, 0                       ; 8 uses
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.f = tail call i32 @mbedtls_aesni_has_support(i32 noundef 2) #9
  %.not160 = icmp eq i32 %i.f, 0
  %str.str.1 = select i1 %.not160, ptr @str, ptr @str.1
  %puts161 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread238
  %indvars.iv261 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next262, %.thread238 ] ; 3 uses
  %i.h = shl nuw nsw i64 %indvars.iv261, 6
  %i.i = add nuw nsw i64 %i.h, 128                ; 3 uses
  %i.j = icmp eq i64 %i.i, 192
  %i.k = mul nuw nsw i64 %indvars.iv261, 6
  %i.l = trunc nuw nsw i64 %i.i to i32            ; 2 uses
  %.pre = trunc nuw nsw i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.ba
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.ba ] ; 14 uses
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull @.str.3) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %.pre-phi = phi i32 [ %i.l, %bb.e ], [ %.pre, %bb.d ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %1, i8 0, i64 432, i1 false)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @pt_index_test_data, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !90
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr @key_test_data, i64 %i.q ; 4 uses
  %i.s = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.r, i32 noundef %.pre-phi) ; 3 uses
  %i.t = icmp eq i32 %i.s, -134
  %or.cond = select i1 %i.t, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %puts205 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.thread238

bb.g:                                             ; preds = %._crit_edge
  %.not162 = icmp eq i32 %i.s, 0
  br i1 %.not162, label %bb.h, label %.thread248

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @pt_len_test_data, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9    ; 14 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @iv_index_test_data, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !90
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [64 x i8], ptr @iv_test_data, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @iv_len_test_data, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !9  ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @add_index_test_data, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !90
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [64 x i8], ptr @additional_test_data, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @add_len_test_data, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9  ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @pt_index_test_data, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !90
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [64 x i8], ptr @pt_test_data, i64 %i.ak ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.am = call i32 @mbedtls_gcm_starts(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull readonly %i.z, i64 noundef %i.ab) ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.i, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @mbedtls_gcm_update_ad(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.af, i64 noundef %i.ah) ; 2 uses
  %.not23.i = icmp eq i32 %i.an, 0
  br i1 %.not23.i, label %bb.j, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.j:                                             ; preds = %bb.i
end_hunk_0
