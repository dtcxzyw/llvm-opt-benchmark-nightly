inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @SipHash_ctx_size() local_unnamed_addr #0 {
bb.a:
  ret i64 64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967296) i64 @SipHash_hash_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = zext i32 %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @SipHash_set_hash_size(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %spec.store.select.i = select i1 %i.a, i64 16, i64 %1 ; 2 uses
  switch i64 %1, label %bb.d [
    i64 16, label %bb.b
    i64 8, label %bb.b
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %narrow = select i1 %i.d, i32 16, i32 %i.c      ; 2 uses
  %spec.store.select.i12 = zext i32 %narrow to i64
  store i32 %narrow, ptr %i.b, align 4, !tbaa !10
  %.not = icmp eq i64 %spec.store.select.i, %spec.store.select.i12
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = xor i64 %i.f, 238
  store i64 %i.g, ptr %i.e, align 8, !tbaa !13
  %i.h = trunc nuw nsw i64 %spec.store.select.i to i32
  store i32 %i.h, ptr %i.b, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @SipHash_Init(ptr nofree noundef captures(none) initializes((0, 44), (48, 56)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %narrow = select i1 %i.d, i32 16, i32 %i.c      ; 2 uses
  %i.e = icmp eq i32 %3, 0
  %spec.store.select = select i1 %i.e, i32 4, i32 %3
  %i.f = icmp eq i32 %2, 0
  %spec.store.select1 = select i1 %i.f, i32 2, i32 %2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load <2 x i64>, ptr %1, align 1
  %i.k = load i64, ptr %i.a, align 1              ; 2 uses
  store i32 %narrow, ptr %i.b, align 4, !tbaa !10
  store i32 %spec.store.select1, ptr %i.g, align 8, !tbaa !14
  store i32 %spec.store.select, ptr %i.h, align 4, !tbaa !15
  store i32 0, ptr %i.i, align 8, !tbaa !16
  %i.l = shufflevector <2 x i64> %i.j, <2 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0>
  %i.m = insertelement <4 x i64> %i.l, i64 0, i64 0
  %i.n = xor <4 x i64> %i.m, <i64 0, i64 8317987319222330741, i64 7237128888997146477, i64 7816392313619706465>
  store <4 x i64> %i.n, ptr %0, align 8, !tbaa !17
  %i.o = xor i64 %i.k, 8387220255154660723
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %i.p, align 8, !tbaa !18
  %i.q = icmp eq i32 %narrow, 16
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = xor i64 %i.k, 7237128888997146499
  store i64 %i.s, ptr %i.r, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SipHash_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !21
  %i.j = add i64 %i.i, %2
  store i64 %i.j, ptr %0, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16   ; 4 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub i32 8, %i.l
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %.not159 = icmp ult i64 %2, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = zext i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p ; 2 uses
  br i1 %.not159, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %1, i64 %2, i1 false)
  %i.r = trunc nuw i64 %2 to i32
  %i.s = add i32 %i.l, %i.r
  store i32 %i.s, ptr %i.k, align 8, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %1, i64 %i.n, i1 false)
  %i.t = sub nuw i64 %2, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  %i.v = load i64, ptr %i.o, align 8              ; 2 uses
  %i.w = xor i64 %i.v, %i.h                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %.not204 = icmp eq i32 %i.y, 0
  br i1 %.not204, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0132172 = phi i64 [ %i.ai, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %.0135171 = phi i64 [ %i.am, %.lr.ph ], [ %i.f, %bb.c ]
  %.0140170 = phi i64 [ %i.al, %.lr.ph ], [ %i.d, %bb.c ] ; 3 uses
  %.0145169 = phi i64 [ %i.ag, %.lr.ph ], [ %i.b, %bb.c ]
  %.0150168 = phi i32 [ %i.an, %.lr.ph ], [ 0, %bb.c ]
  %i.z = add i64 %.0140170, %.0145169             ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %.0140170, i64 %.0140170, i64 13)
  %i.ab = xor i64 %i.aa, %i.z                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 32)
  %i.ad = add i64 %.0132172, %.0135171            ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %.0132172, i64 %.0132172, i64 16)
  %i.af = xor i64 %i.ae, %i.ad                    ; 3 uses
  %i.ag = add i64 %i.af, %i.ac                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 21)
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  %i.aj = add i64 %i.ad, %i.ab                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 17)
  %i.al = xor i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32) ; 2 uses
  %i.an = add nuw i32 %.0150168, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.an, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0145.lcssa = phi i64 [ %i.b, %bb.c ], [ %i.ag, %.lr.ph ]
  %.0140.lcssa = phi i64 [ %i.d, %bb.c ], [ %i.al, %.lr.ph ]
  %.0135.lcssa = phi i64 [ %i.f, %bb.c ], [ %i.am, %.lr.ph ]
  %.0132.lcssa = phi i64 [ %i.w, %bb.c ], [ %i.ai, %.lr.ph ]
  %i.ao = xor i64 %.0145.lcssa, %i.v
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.1153 = phi i64 [ %i.t, %._crit_edge ], [ %2, %bb.a ] ; 4 uses
  %.2147 = phi i64 [ %i.ao, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %.2142 = phi i64 [ %.0140.lcssa, %._crit_edge ], [ %i.d, %bb.a ] ; 4 uses
  %.2137 = phi i64 [ %.0135.lcssa, %._crit_edge ], [ %i.f, %bb.a ] ; 4 uses
  %.2134 = phi i64 [ %.0132.lcssa, %._crit_edge ], [ %i.h, %bb.a ] ; 4 uses
  %.1 = phi ptr [ %i.u, %._crit_edge ], [ %1, %bb.a ] ; 5 uses
  %i.ap = trunc i64 %.1153 to i32
  %i.aq = and i32 %i.ap, 7                        ; 2 uses
  %i.ar = and i64 %.1153, 7
  %i.as = and i64 %.1153, -8                      ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.1, i64 %i.as ; 3 uses
  %.not160188 = icmp eq i64 %i.as, 0
  br i1 %.not160188, label %._crit_edge196, label %.lr.ph195

.lr.ph195:                                        ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %.not205 = icmp eq i32 %i.av, 0
  br i1 %.not205, label %.lr.ph195.split.preheader, label %.lr.ph182.us

.lr.ph195.split.preheader:                        ; preds = %.lr.ph195
  %i.aw = add i64 %.1153, -8                      ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  br i1 %min.iters.check, label %.lr.ph195.split.preheader252, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195.split.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %.1, i64 %i.az
  %i.bb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2134, i64 0
  %i.bc = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2147, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bb, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi246 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi247 = phi <2 x i64> [ %i.bc, %vector.ph ], [ %i.bh, %vector.body ]
  %vec.phi248 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %i.bd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.1, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1 ; 2 uses
  %wide.load249 = load <2 x i64>, ptr %i.be, align 1 ; 2 uses
  %i.bf = xor <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bg = xor <2 x i64> %wide.load249, %vec.phi246 ; 2 uses
  %i.bh = xor <2 x i64> %vec.phi247, %wide.load   ; 2 uses
  %i.bi = xor <2 x i64> %vec.phi248, %wide.load249 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.bg, %i.bf
  %i.bk = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx250 = xor <2 x i64> %i.bi, %i.bh
  %i.bl = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx250) ; 2 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %._crit_edge196, label %.lr.ph195.split.preheader252

.lr.ph195.split.preheader252:                     ; preds = %.lr.ph195.split.preheader, %middle.block
  %.2193.ph = phi ptr [ %.1, %.lr.ph195.split.preheader ], [ %i.ba, %middle.block ]
  %.3192.ph = phi i64 [ %.2134, %.lr.ph195.split.preheader ], [ %i.bk, %middle.block ]
  %.3148189.ph = phi i64 [ %.2147, %.lr.ph195.split.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph195.split

.lr.ph182.us:                                     ; preds = %.lr.ph195, %._crit_edge183.us
  %.2193.us = phi ptr [ %i.ce, %._crit_edge183.us ], [ %.1, %.lr.ph195 ] ; 2 uses
  %.3192.us = phi i64 [ %i.bx, %._crit_edge183.us ], [ %.2134, %.lr.ph195 ]
  %.3138191.us = phi i64 [ %i.cb, %._crit_edge183.us ], [ %.2137, %.lr.ph195 ]
  %.3143190.us = phi i64 [ %i.ca, %._crit_edge183.us ], [ %.2142, %.lr.ph195 ]
  %.3148189.us = phi i64 [ %i.cd, %._crit_edge183.us ], [ %.2147, %.lr.ph195 ]
  %i.bm = load i64, ptr %.2193.us, align 1        ; 2 uses
  %i.bn = xor i64 %i.bm, %.3192.us
end_hunk_0
