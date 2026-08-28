Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/entropy_common?download=true
inline.NumInlined: 37
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @FSE_versionNumber() local_unnamed_addr #0 {
bb.a:
  ret i32 900
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @FSE_isError(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @FSE_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = icmp ult i64 %0, -119
  %i.a = trunc nsw i64 %0 to i32
  %i.b = sub i32 0, %i.a
  %.0.i.i = select i1 %1, i32 0, i32 %i.b
  %i.c = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #10
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @HUF_isError(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @HUF_getErrorName(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = icmp ult i64 %0, -119
  %i.a = trunc nsw i64 %0 to i32
  %i.b = sub i32 0, %i.a
  %.0.i.i = select i1 %1, i32 0, i32 %i.b
  %i.c = tail call ptr @ERR_getErrorString(i32 noundef %.0.i.i) #10
  ret ptr %i.c
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_readNCount_bmi2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @FSE_readNCount_body_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %FSE_readNCount_body_default.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !8
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = icmp ult i64 %4, 8
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.g = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0), !inline_history !9 ; 3 uses
  %6 = icmp ult i64 %i.g, -119
  %7 = icmp ugt i64 %i.g, %4
  %8 = and i1 %6, %7
  %.0162.i.i = select i1 %8, i64 -20, i64 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %FSE_readNCount_body_default.exit

bb.e:                                             ; preds = %bb.c
  %i.h = zext i32 %i.e to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %i.i, i1 false)
  %.val.i = load i32, ptr %3, align 1, !tbaa !8   ; 2 uses
  %i.j = and i32 %.val.i, 15                      ; 4 uses
  %i.k = icmp samesign ugt i32 %i.j, 10
  br i1 %i.k, label %FSE_readNCount_body_default.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nuw nsw i32 %i.j, 5
  %i.m = lshr i32 %.val.i, 4
  store i32 %i.l, ptr %2, align 4, !tbaa !8
  %i.n = shl nuw nsw i32 32, %i.j                 ; 2 uses
  %i.o = or disjoint i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.j, 6
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -7 ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.y, %bb.f
  %.0153.i.i = phi ptr [ %3, %bb.f ], [ %.6159.i.i, %bb.y ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.p, %bb.f ], [ %.1151.i.i, %bb.y ] ; 3 uses
  %.0147.i.i = phi i32 [ %i.o, %bb.f ], [ %.1148.i.i, %bb.y ] ; 3 uses
  %.0144.i.i = phi i32 [ %i.n, %bb.f ], [ %.1145.i.i, %bb.y ] ; 5 uses
  %.0139.i.i = phi i32 [ %i.m, %bb.f ], [ %i.cc, %bb.y ] ; 3 uses
  %.0135.i.i = phi i32 [ 4, %bb.f ], [ %.7.i.i, %bb.y ] ; 3 uses
  %.0133.i.i = phi i32 [ 0, %bb.f ], [ %i.bm, %bb.y ] ; 3 uses
  %.0132.i.i = phi i1 [ true, %bb.f ], [ %9, %bb.y ]
  br i1 %.0132.i.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = xor i32 %.0139.i.i, -1
  %i.v = or i32 %i.u, -2147483648
  %i.w = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.v, i1 true) ; 2 uses
  %i.x = icmp samesign ugt i32 %i.w, 23
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %bb.k
  %.1134.i.i24 = phi i32 [ %i.y, %bb.k ], [ %.0133.i.i, %bb.h ]
  %.1136.i.i23 = phi i32 [ %.2137.i.i, %bb.k ], [ %.0135.i.i, %bb.h ] ; 2 uses
  %.1154.i.i22 = phi ptr [ %.2155.i.i, %bb.k ], [ %.0153.i.i, %bb.h ] ; 3 uses
  %i.y = add i32 %.1134.i.i24, 36                 ; 2 uses
  %.not187.i.i.a = icmp ugt ptr %.1154.i.i22, %i.q
  br i1 %.not187.i.i.a, label %bb.j, label %bb.i, !prof !10

bb.i:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.1154.i.i22, i64 3
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.aa = ptrtoint ptr %.1154.i.i22 to i64
  %.neg188.i.i = sub i64 %i.aa, %i.r
  %.tr.neg189.i.i = trunc i64 %.neg188.i.i to i32
  %.neg190.i.i = shl i32 %.tr.neg189.i.i, 3
  %i.ab = add i32 %.neg190.i.i, %.1136.i.i23
  %i.ac = and i32 %i.ab, 31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2155.i.i = phi ptr [ %i.z, %bb.i ], [ %i.s, %bb.j ] ; 3 uses
  %.2137.i.i = phi i32 [ %.1136.i.i23, %bb.i ], [ %i.ac, %bb.j ] ; 3 uses
  %.2155.i.val.i = load i32, ptr %.2155.i.i, align 1, !tbaa !8
  %i.ad = lshr i32 %.2155.i.val.i, %.2137.i.i     ; 2 uses
  %i.ae = xor i32 %i.ad, -1
  %i.af = or i32 %i.ae, -2147483648
  %i.ag = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.af, i1 true) ; 2 uses
  %i.ah = icmp samesign ugt i32 %i.ag, 23
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.1154.i.i.lcssa = phi ptr [ %.0153.i.i, %bb.h ], [ %.2155.i.i, %bb.k ] ; 5 uses
  %.1140.i.i.lcssa = phi i32 [ %.0139.i.i, %bb.h ], [ %i.ad, %bb.k ]
  %.1136.i.i.lcssa = phi i32 [ %.0135.i.i, %bb.h ], [ %.2137.i.i, %bb.k ]
  %.1134.i.i.lcssa = phi i32 [ %.0133.i.i, %bb.h ], [ %i.y, %bb.k ]
  %.0129.in.i.i.lcssa = phi i32 [ %i.w, %bb.h ], [ %i.ag, %bb.k ] ; 2 uses
  %.0129.i.i = lshr i32 %.0129.in.i.i.lcssa, 1
  %i.ai = mul nuw nsw i32 %.0129.i.i, 3
  %i.aj = add i32 %i.ai, %.1134.i.i.lcssa
  %i.ak = and i32 %.0129.in.i.i.lcssa, 30         ; 2 uses
  %i.al = lshr i32 %.1140.i.i.lcssa, %i.ak
  %i.am = and i32 %i.al, 3
  %i.an = add i32 %i.aj, %i.am                    ; 3 uses
  %i.ao = add nuw nsw i32 %.1136.i.i.lcssa, 2
  %i.ap = add nuw nsw i32 %i.ao, %i.ak            ; 4 uses
  %.not.i.i = icmp ult i32 %i.an, %i.e
  br i1 %.not.i.i, label %bb.l, label %.thread15

bb.l:                                             ; preds = %._crit_edge
  %.not176.i.i = icmp ugt ptr %.1154.i.i.lcssa, %i.q
  %i.aq = lshr i32 %i.ap, 3
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  br i1 %.not176.i.i, label %bb.m, label %._crit_edge31, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %.1154.i.i.lcssa, i64 %i.ar
  %.not177.i.i = icmp ugt ptr %i.as, %i.s
  br i1 %.not177.i.i, label %bb.n, label %._crit_edge31

._crit_edge31:                                    ; preds = %bb.l, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.1154.i.i.lcssa, i64 %i.ar
  %i.au = and i32 %i.ap, 7
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.av = ptrtoint ptr %.1154.i.i.lcssa to i64
  %.neg.i.i = sub i64 %i.av, %i.t
  %.tr.neg.i.i = trunc i64 %.neg.i.i to i32
  %.neg178.i.i = shl i32 %.tr.neg.i.i, 3
  %i.aw = add i32 %i.ap, %.neg178.i.i
  %i.ax = and i32 %i.aw, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge31, %bb.n
  %.3156.i.i = phi ptr [ %i.at, %._crit_edge31 ], [ %i.s, %bb.n ] ; 2 uses
  %.3138.i.i = phi i32 [ %i.au, %._crit_edge31 ], [ %i.ax, %bb.n ] ; 2 uses
  %.3156.i.val.i = load i32, ptr %.3156.i.i, align 1, !tbaa !8
  %i.ay = lshr i32 %.3156.i.val.i, %.3138.i.i
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.g
  %.5158.i.i = phi ptr [ %.3156.i.i, %.thread ], [ %.0153.i.i, %bb.g ] ; 6 uses
  %.3142.i.i = phi i32 [ %i.ay, %.thread ], [ %.0139.i.i, %bb.g ] ; 2 uses
  %.5.i.i = phi i32 [ %.3138.i.i, %.thread ], [ %.0135.i.i, %bb.g ]
  %.2.i.i = phi i32 [ %i.an, %.thread ], [ %.0133.i.i, %bb.g ] ; 2 uses
  %i.az = shl nuw nsw i32 %.0144.i.i, 1
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bb = sub nsw i32 %i.ba, %.0147.i.i           ; 2 uses
  %i.bc = add nsw i32 %.0144.i.i, -1
  %i.bd = and i32 %.3142.i.i, %i.bc               ; 2 uses
  %i.be = icmp ult i32 %i.bd, %i.bb
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = add nsw i32 %.0150.i.i, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bg = and i32 %.3142.i.i, %i.ba               ; 2 uses
  %.not179.i.i = icmp slt i32 %i.bg, %.0144.i.i
  %i.bh = select i1 %.not179.i.i, i32 0, i32 %i.bb
  %spec.select.i.i = sub nsw i32 %i.bg, %i.bh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i.i = phi i32 [ %i.bf, %bb.p ], [ %.0150.i.i, %bb.q ]
  %.1.i.i = phi i32 [ %i.bd, %bb.p ], [ %spec.select.i.i, %bb.q ] ; 3 uses
  %.6.i.i = add nuw nsw i32 %.pn.i.i, %.5.i.i     ; 5 uses
  %i.bi = add nsw i32 %.1.i.i, -1                 ; 3 uses
  %i.bj = icmp sgt i32 %.1.i.i, 0
  %i.bk = sub nsw i32 1, %.1.i.i
  %.1148.i.i.p = select i1 %i.bj, i32 %i.bk, i32 %i.bi
  %.1148.i.i = add i32 %.1148.i.i.p, %.0147.i.i   ; 6 uses
  %i.bl = trunc i32 %i.bi to i16
  %i.bm = add nuw i32 %.2.i.i, 1                  ; 4 uses
  %i.bn = zext i32 %.2.i.i to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !13
  %9 = icmp ne i32 %i.bi, 0
  %i.bp = icmp slt i32 %.1148.i.i, %.0144.i.i
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp slt i32 %.1148.i.i, 2
  br i1 %i.bq, label %.thread15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1148.i.i, i1 true) ; 2 uses
  %i.bs = sub nuw nsw i32 32, %i.br
  %i.bt = lshr exact i32 -2147483648, %i.br
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1151.i.i = phi i32 [ %i.bs, %bb.t ], [ %.0150.i.i, %bb.r ]
  %.1145.i.i = phi i32 [ %i.bt, %bb.t ], [ %.0144.i.i, %bb.r ]
  %.not180.i.i.a = icmp ult i32 %i.bm, %i.e
  br i1 %.not180.i.i.a, label %bb.v, label %.thread15

bb.v:                                             ; preds = %bb.u
  %.not181.i.i = icmp ugt ptr %.5158.i.i, %i.q
  %i.bu = lshr i32 %.6.i.i, 3
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  br i1 %.not181.i.i, label %bb.w, label %._crit_edge32, !prof !10

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %.5158.i.i, i64 %i.bv
  %.not182.i.i = icmp ugt ptr %i.bw, %i.s
  br i1 %.not182.i.i, label %bb.x, label %._crit_edge32

._crit_edge32:                                    ; preds = %bb.v, %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %.5158.i.i, i64 %i.bv
  %i.by = and i32 %.6.i.i, 7
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = ptrtoint ptr %.5158.i.i to i64
  %.neg183.i.i = sub i64 %i.bz, %i.t
  %.tr.neg184.i.i = trunc i64 %.neg183.i.i to i32
  %.neg185.i.i = shl i32 %.tr.neg184.i.i, 3
  %i.ca = add i32 %.6.i.i, %.neg185.i.i
  %i.cb = and i32 %i.ca, 31
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge32, %bb.x
  %.6159.i.i = phi ptr [ %i.bx, %._crit_edge32 ], [ %i.s, %bb.x ] ; 2 uses
  %.7.i.i = phi i32 [ %i.by, %._crit_edge32 ], [ %i.cb, %bb.x ] ; 2 uses
  %.6159.i.val.i = load i32, ptr %.6159.i.i, align 1, !tbaa !8
  %i.cc = lshr i32 %.6159.i.val.i, %.7.i.i
  br label %bb.g

.thread15:                                        ; preds = %bb.u, %bb.s, %._crit_edge
  %.8161.i.i = phi ptr [ %.1154.i.i.lcssa, %._crit_edge ], [ %.5158.i.i, %bb.s ], [ %.5158.i.i, %bb.u ]
  %.2149.i.i = phi i32 [ %.0147.i.i, %._crit_edge ], [ %.1148.i.i, %bb.s ], [ %.1148.i.i, %bb.u ]
  %.9.i.i = phi i32 [ %i.ap, %._crit_edge ], [ %.6.i.i, %bb.s ], [ %.6.i.i, %bb.u ] ; 2 uses
  %.3.i.i = phi i32 [ %i.an, %._crit_edge ], [ %i.bm, %bb.s ], [ %i.bm, %bb.u ] ; 2 uses
  %.not186.i.i = icmp eq i32 %.2149.i.i, 1
  br i1 %.not186.i.i, label %bb.z, label %FSE_readNCount_body_default.exit

bb.z:                                             ; preds = %.thread15
  %i.cd = icmp ugt i32 %.3.i.i, %i.e
  br i1 %i.cd, label %FSE_readNCount_body_default.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = icmp sgt i32 %.9.i.i, 32
  br i1 %i.ce, label %FSE_readNCount_body_default.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cf = add i32 %.3.i.i, -1
  store i32 %i.cf, ptr %1, align 4, !tbaa !8
  %i.cg = add nsw i32 %.9.i.i, 7
  %i.ch = ashr i32 %i.cg, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %.8161.i.i, i64 %i.ci
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %3 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  br label %FSE_readNCount_body_default.exit

FSE_readNCount_body_default.exit:                 ; preds = %bb.ab, %bb.aa, %bb.z, %.thread15, %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %.0162.i.i, %bb.d ], [ %i.cm, %bb.ab ], [ -44, %bb.e ], [ -20, %.thread15 ], [ -48, %bb.z ], [ -20, %bb.aa ]
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @FSE_readNCount_body_bmi2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !8
  %i.d = add i32 %i.c, 1                          ; 4 uses
  %i.e = icmp ult i64 %4, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.f = call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0), !inline_history !15 ; 3 uses
  %5 = icmp ult i64 %i.f, -119
  %6 = icmp ugt i64 %i.f, %4
  %7 = and i1 %5, %6
  %.0162.i = select i1 %7, i64 -20, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %FSE_readNCount_body.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %i.h, i1 false)
  %.val = load i32, ptr %3, align 1, !tbaa !8     ; 2 uses
  %i.i = and i32 %.val, 15                        ; 4 uses
  %i.j = icmp samesign ugt i32 %i.i, 10
  br i1 %i.j, label %FSE_readNCount_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i32 %i.i, 5
  %i.l = lshr i32 %.val, 4
  store i32 %i.k, ptr %2, align 4, !tbaa !8
  %i.m = shl nuw nsw i32 32, %i.i                 ; 2 uses
  %i.n = or disjoint i32 %i.m, 1
  %i.o = add nuw nsw i32 %i.i, 6
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 4 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 6 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.d
  %.0153.i = phi ptr [ %3, %bb.d ], [ %.6159.i, %bb.w ] ; 3 uses
  %.0150.i = phi i32 [ %i.o, %bb.d ], [ %.1151.i, %bb.w ] ; 3 uses
  %.0147.i = phi i32 [ %i.n, %bb.d ], [ %.1148.i, %bb.w ] ; 3 uses
  %.0144.i = phi i32 [ %i.m, %bb.d ], [ %.1145.i, %bb.w ] ; 5 uses
  %.0139.i = phi i32 [ %i.l, %bb.d ], [ %i.cb, %bb.w ] ; 3 uses
  %.0135.i = phi i32 [ 4, %bb.d ], [ %.7.i, %bb.w ] ; 3 uses
  %.0133.i = phi i32 [ 0, %bb.d ], [ %i.bl, %bb.w ] ; 3 uses
  %.0132.i = phi i1 [ true, %bb.d ], [ %8, %bb.w ]
  br i1 %.0132.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = xor i32 %.0139.i, -1
  %i.u = or i32 %i.t, -2147483648
  %i.v = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.u, i1 true) ; 2 uses
  %i.w = icmp samesign ugt i32 %i.v, 23
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.1134.i17 = phi i32 [ %i.x, %bb.i ], [ %.0133.i, %bb.f ]
  %.1136.i16 = phi i32 [ %.2137.i, %bb.i ], [ %.0135.i, %bb.f ] ; 2 uses
  %.1154.i15 = phi ptr [ %.2155.i, %bb.i ], [ %.0153.i, %bb.f ] ; 3 uses
  %i.x = add i32 %.1134.i17, 36                   ; 2 uses
  %.not187.i.a = icmp ugt ptr %.1154.i15, %i.p
  br i1 %.not187.i.a, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.1154.i15, i64 3
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.z = ptrtoint ptr %.1154.i15 to i64
  %.neg188.i = sub i64 %i.z, %i.q
  %.tr.neg189.i = trunc i64 %.neg188.i to i32
  %.neg190.i = shl i32 %.tr.neg189.i, 3
  %i.aa = add i32 %.neg190.i, %.1136.i16
  %i.ab = and i32 %i.aa, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2155.i = phi ptr [ %i.y, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  %.2137.i = phi i32 [ %.1136.i16, %bb.g ], [ %i.ab, %bb.h ] ; 3 uses
  %.2155.i.val = load i32, ptr %.2155.i, align 1, !tbaa !8
  %i.ac = lshr i32 %.2155.i.val, %.2137.i         ; 2 uses
  %i.ad = xor i32 %i.ac, -1
  %i.ae = or i32 %i.ad, -2147483648
  %i.af = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ae, i1 true) ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.af, 23
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.1154.i.lcssa = phi ptr [ %.0153.i, %bb.f ], [ %.2155.i, %bb.i ] ; 5 uses
  %.1140.i.lcssa = phi i32 [ %.0139.i, %bb.f ], [ %i.ac, %bb.i ]
  %.1136.i.lcssa = phi i32 [ %.0135.i, %bb.f ], [ %.2137.i, %bb.i ]
  %.1134.i.lcssa = phi i32 [ %.0133.i, %bb.f ], [ %i.x, %bb.i ]
  %.0129.in.i.lcssa = phi i32 [ %i.v, %bb.f ], [ %i.af, %bb.i ] ; 2 uses
  %.0129.i = lshr i32 %.0129.in.i.lcssa, 1
  %i.ah = mul nuw nsw i32 %.0129.i, 3
  %i.ai = add i32 %i.ah, %.1134.i.lcssa
  %i.aj = and i32 %.0129.in.i.lcssa, 30           ; 2 uses
  %i.ak = lshr i32 %.1140.i.lcssa, %i.aj
  %i.al = and i32 %i.ak, 3
  %i.am = add i32 %i.ai, %i.al                    ; 3 uses
  %i.an = add nuw nsw i32 %.1136.i.lcssa, 2
  %i.ao = add nuw nsw i32 %i.an, %i.aj            ; 4 uses
  %.not.i = icmp ult i32 %i.am, %i.d
  br i1 %.not.i, label %bb.j, label %.thread8

bb.j:                                             ; preds = %._crit_edge
  %.not176.i = icmp ugt ptr %.1154.i.lcssa, %i.p
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  br i1 %.not176.i, label %bb.k, label %._crit_edge24, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.1154.i.lcssa, i64 %i.aq
  %.not177.i = icmp ugt ptr %i.ar, %i.r
  br i1 %.not177.i, label %bb.l, label %._crit_edge24

._crit_edge24:                                    ; preds = %bb.j, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.1154.i.lcssa, i64 %i.aq
  %i.at = and i32 %i.ao, 7
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = ptrtoint ptr %.1154.i.lcssa to i64
  %.neg.i = sub i64 %i.au, %i.s
  %.tr.neg.i = trunc i64 %.neg.i to i32
  %.neg178.i = shl i32 %.tr.neg.i, 3
  %i.av = add i32 %i.ao, %.neg178.i
  %i.aw = and i32 %i.av, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge24, %bb.l
  %.3156.i = phi ptr [ %i.as, %._crit_edge24 ], [ %i.r, %bb.l ] ; 2 uses
  %.3138.i = phi i32 [ %i.at, %._crit_edge24 ], [ %i.aw, %bb.l ] ; 2 uses
  %.3156.i.val = load i32, ptr %.3156.i, align 1, !tbaa !8
  %i.ax = lshr i32 %.3156.i.val, %.3138.i
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.e
  %.5158.i = phi ptr [ %.3156.i, %.thread ], [ %.0153.i, %bb.e ] ; 6 uses
  %.3142.i = phi i32 [ %i.ax, %.thread ], [ %.0139.i, %bb.e ] ; 2 uses
  %.5.i = phi i32 [ %.3138.i, %.thread ], [ %.0135.i, %bb.e ]
  %.2.i = phi i32 [ %i.am, %.thread ], [ %.0133.i, %bb.e ] ; 2 uses
  %i.ay = shl nuw nsw i32 %.0144.i, 1
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  %i.ba = sub nsw i32 %i.az, %.0147.i             ; 2 uses
  %i.bb = add nsw i32 %.0144.i, -1
  %i.bc = and i32 %.3142.i, %i.bb                 ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.ba
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %.0150.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bf = and i32 %.3142.i, %i.az                 ; 2 uses
  %.not179.i = icmp slt i32 %i.bf, %.0144.i
  %i.bg = select i1 %.not179.i, i32 0, i32 %i.ba
  %spec.select.i = sub nsw i32 %i.bf, %i.bg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi i32 [ %i.be, %bb.n ], [ %.0150.i, %bb.o ]
  %.1.i = phi i32 [ %i.bc, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %.6.i = add nuw nsw i32 %.pn.i, %.5.i           ; 5 uses
  %i.bh = add nsw i32 %.1.i, -1                   ; 3 uses
  %i.bi = icmp sgt i32 %.1.i, 0
  %i.bj = sub nsw i32 1, %.1.i
  %.1148.i.p = select i1 %i.bi, i32 %i.bj, i32 %i.bh
  %.1148.i = add i32 %.1148.i.p, %.0147.i         ; 6 uses
  %i.bk = trunc i32 %i.bh to i16
  %i.bl = add nuw i32 %.2.i, 1                    ; 4 uses
  %i.bm = zext i32 %.2.i to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bm
  store i16 %i.bk, ptr %i.bn, align 2, !tbaa !13
  %8 = icmp ne i32 %i.bh, 0
  %i.bo = icmp slt i32 %.1148.i, %.0144.i
  br i1 %i.bo, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bp = icmp slt i32 %.1148.i, 2
  br i1 %i.bp, label %.thread8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1148.i, i1 true) ; 2 uses
  %i.br = sub nuw nsw i32 32, %i.bq
  %i.bs = lshr exact i32 -2147483648, %i.bq
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1151.i = phi i32 [ %i.br, %bb.r ], [ %.0150.i, %bb.p ]
  %.1145.i = phi i32 [ %i.bs, %bb.r ], [ %.0144.i, %bb.p ]
  %.not180.i.a = icmp ult i32 %i.bl, %i.d
  br i1 %.not180.i.a, label %bb.t, label %.thread8

bb.t:                                             ; preds = %bb.s
  %.not181.i = icmp ugt ptr %.5158.i, %i.p
  %i.bt = lshr i32 %.6.i, 3
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  br i1 %.not181.i, label %bb.u, label %._crit_edge25, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.5158.i, i64 %i.bu
  %.not182.i = icmp ugt ptr %i.bv, %i.r
  br i1 %.not182.i, label %bb.v, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.t, %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.5158.i, i64 %i.bu
  %i.bx = and i32 %.6.i, 7
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.by = ptrtoint ptr %.5158.i to i64
  %.neg183.i = sub i64 %i.by, %i.s
  %.tr.neg184.i = trunc i64 %.neg183.i to i32
  %.neg185.i = shl i32 %.tr.neg184.i, 3
  %i.bz = add i32 %.6.i, %.neg185.i
  %i.ca = and i32 %i.bz, 31
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge25, %bb.v
  %.6159.i = phi ptr [ %i.bw, %._crit_edge25 ], [ %i.r, %bb.v ] ; 2 uses
  %.7.i = phi i32 [ %i.bx, %._crit_edge25 ], [ %i.ca, %bb.v ] ; 2 uses
  %.6159.i.val = load i32, ptr %.6159.i, align 1, !tbaa !8
  %i.cb = lshr i32 %.6159.i.val, %.7.i
  br label %bb.e

.thread8:                                         ; preds = %bb.s, %bb.q, %._crit_edge
  %.8161.i = phi ptr [ %.1154.i.lcssa, %._crit_edge ], [ %.5158.i, %bb.q ], [ %.5158.i, %bb.s ]
  %.2149.i = phi i32 [ %.0147.i, %._crit_edge ], [ %.1148.i, %bb.q ], [ %.1148.i, %bb.s ]
  %.9.i = phi i32 [ %i.ao, %._crit_edge ], [ %.6.i, %bb.q ], [ %.6.i, %bb.s ] ; 2 uses
  %.3.i = phi i32 [ %i.am, %._crit_edge ], [ %i.bl, %bb.q ], [ %i.bl, %bb.s ] ; 2 uses
  %.not186.i = icmp eq i32 %.2149.i, 1
  br i1 %.not186.i, label %bb.x, label %FSE_readNCount_body.exit

bb.x:                                             ; preds = %.thread8
  %i.cc = icmp ugt i32 %.3.i, %i.d
  br i1 %i.cc, label %FSE_readNCount_body.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cd = icmp sgt i32 %.9.i, 32
  br i1 %i.cd, label %FSE_readNCount_body.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = add i32 %.3.i, -1
  store i32 %i.ce, ptr %1, align 4, !tbaa !8
  %i.cf = add nsw i32 %.9.i, 7
  %i.cg = ashr i32 %i.cf, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %.8161.i, i64 %i.ch
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %3 to i64
  %i.cl = sub i64 %i.cj, %i.ck
  br label %FSE_readNCount_body.exit

FSE_readNCount_body.exit:                         ; preds = %bb.b, %bb.c, %.thread8, %bb.x, %bb.y, %bb.z
  %.1163.i = phi i64 [ %.0162.i, %bb.b ], [ %i.cl, %bb.z ], [ -44, %bb.c ], [ -20, %.thread8 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1163.i
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_readNCount(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %10 = and i32 %9, 1
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %HUF_readStats_body_default.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %HUF_readStats_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load i8, ptr %5, align 1, !tbaa !16      ; 2 uses
  %i.c = zext i8 %i.b to i64                      ; 7 uses
  %i.d = icmp slt i8 %i.b, 0
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i64 %i.c, -127                   ; 6 uses
  %i.f = add nsw i64 %i.c, -126
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.not90.i.i = icmp ult i64 %i.g, %6
  br i1 %.not90.i.i, label %bb.f, label %HUF_readStats_body_default.exit

bb.f:                                             ; preds = %bb.e
  %.not91.i.i = icmp ult i64 %i.e, %1
  br i1 %.not91.i.i, label %iter.check, label %HUF_readStats_body_default.exit

iter.check:                                       ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax29 = tail call i64 @llvm.umax.i64(i64 %i.e, i64 2)
  %i.i = add nsw i64 %umax29, -1
  %i.j = lshr i64 %i.i, 1
  %i.k = add nuw i64 %i.j, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = add nsw i64 %i.c, -128
  %i.m = and i64 %i.c, 126
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 2
  %i.o = lshr i64 %i.l, 1
  %i.p = getelementptr i8, ptr %5, i64 %i.o
  %scevgep28 = getelementptr i8, ptr %i.p, i64 2
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %i.h, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.e, 31
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.k, 12
  %n.vec = and i64 %i.k, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.h, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.t = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.u = lshr <8 x i8> %wide.load31, splat (i8 4)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = and <8 x i8> %wide.load, splat (i8 15)
  %i.x = and <8 x i8> %wide.load31, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34 = shufflevector <8 x i8> %i.u, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %i.v, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %i.y = icmp eq i64 %n.vec, 16
  br i1 %i.y, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.ab = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ac = lshr <8 x i8> %wide.load31.1, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.ag = and <8 x i8> %wide.load31.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ad, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.1 = shufflevector <8 x i8> %i.ac, <8 x i8> %i.ag, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.1, ptr %i.ae, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %i.ah = icmp eq i64 %n.vec, 32
  br i1 %i.ah, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.2 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.ak = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.al = lshr <8 x i8> %wide.load31.2, splat (i8 4)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ap = and <8 x i8> %wide.load31.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.am, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.2 = shufflevector <8 x i8> %i.al, <8 x i8> %i.ap, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.2, ptr %i.an, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %i.aq = icmp eq i64 %n.vec, 48
  br i1 %i.aq, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %wide.load31.3 = load <8 x i8>, ptr %i.as, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.at = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.au = lshr <8 x i8> %wide.load31.3, splat (i8 4)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ax = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ay = and <8 x i8> %wide.load31.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.av, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.3 = shufflevector <8 x i8> %i.au, <8 x i8> %i.ay, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.3, ptr %i.aw, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.k, -4                     ; 3 uses
  %i.az = shl i64 %n.vec35, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = shl nuw i64 %index36, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.bc = lshr <4 x i8> %wide.load37, splat (i8 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba
  %i.be = and <4 x i8> %wide.load37, splat (i8 15)
  %interleaved.vec39 = shufflevector <4 x i8> %i.bc, <4 x i8> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec39, ptr %i.bd, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next40 = add nuw i64 %index36, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %i.k, %n.vec35
  br i1 %cmp.n41, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.bg = phi i64 [ %i.bp, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bh = lshr exact i64 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !16
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !16
  %i.bn = and i8 %i.bm, 15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !16
  %i.bp = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.e, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !26

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.g:                                             ; preds = %bb.d
  %.not88.i.i = icmp ugt i64 %6, %i.c
  br i1 %.not88.i.i, label %bb.h, label %HUF_readStats_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.br = add i64 %1, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.c, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10 ; 4 uses
  %11 = icmp ult i64 %i.bt, -119
  br i1 %11, label %.loopexit.i, label %HUF_readStats_body_default.exit

.loopexit.i:                                      ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not92.i10.not.i, label %HUF_readStats_body_default.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.074.i26.i = phi i64 [ %i.e, %.loopexit.thread.i ], [ %i.bt, %.loopexit.i ] ; 3 uses
  %.075.i24.i = phi i64 [ %i.g, %.loopexit.thread.i ], [ %i.c, %.loopexit.i ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.i, %.lr.ph13.preheader.i
  %i.bu = phi i64 [ %i.ci, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.0.i12.i = phi i32 [ %i.ch, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.076.i11.i = phi i32 [ %i.cg, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16  ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 12
  br i1 %i.bx, label %HUF_readStats_body_default.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph13.i
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = ashr i32 %i.ce, 1
  %i.cg = add i32 %i.cf, %.076.i11.i              ; 4 uses
  %i.ch = add i32 %.0.i12.i, 1                    ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %.not92.i.i = icmp ugt i64 %.074.i26.i, %i.ci
  br i1 %.not92.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !27

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.cg, 0
  br i1 %.old.i.i, label %HUF_readStats_body_default.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.cj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true) ; 2 uses
  %i.ck = xor i32 %i.cj, 31                       ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 11
  br i1 %i.cl, label %HUF_readStats_body_default.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = sub nuw nsw i32 32, %i.cj
  store i32 %i.cm, ptr %4, align 4, !tbaa !8
  %i.cn = shl nuw nsw i32 2, %i.ck
  %i.co = sub i32 %i.cn, %i.cg                    ; 2 uses
  %i.cp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = lshr exact i32 -2147483648, %i.cp
  %.not93.i.i = icmp eq i32 %i.cq, %i.co
  br i1 %.not93.i.i, label %bb.l, label %HUF_readStats_body_default.exit

bb.l:                                             ; preds = %bb.k
  %i.cr = sub nuw nsw i32 32, %i.cp               ; 2 uses
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i26.i
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8  ; 2 uses
  %12 = icmp ugt i32 %i.cz, 1
  %13 = and i32 %i.cz, 1
  %.not94.i.i = icmp eq i32 %13, 0
  %or.cond.i.i = and i1 %12, %.not94.i.i
  br i1 %or.cond.i.i, label %bb.m, label %HUF_readStats_body_default.exit

bb.m:                                             ; preds = %bb.l
  %i.da = trunc nuw i64 %.074.i26.i to i32
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %3, align 4, !tbaa !8
  %i.dc = add nuw nsw i64 %.075.i24.i, 1
  br label %HUF_readStats_body_default.exit

HUF_readStats_body_default.exit:                  ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.critedge.i.i, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.bt, %bb.h ], [ -20, %bb.j ], [ %i.dc, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge.i.i ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %HUF_readStats_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !16      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -127                   ; 6 uses
  %i.e = add nsw i64 %i.b, -126
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %.not90.i = icmp ult i64 %i.f, %6
  br i1 %.not90.i, label %bb.d, label %HUF_readStats_body.exit

bb.d:                                             ; preds = %bb.c
  %.not91.i = icmp ult i64 %i.d, %1
  br i1 %.not91.i, label %iter.check, label %HUF_readStats_body.exit

iter.check:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax33 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2)
  %i.h = add nsw i64 %umax33, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add nsw i64 %i.b, -128
  %i.l = and i64 %i.b, 126
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 2
  %i.n = lshr i64 %i.k, 1
  %i.o = getelementptr i8, ptr %5, i64 %i.n
  %scevgep32 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %scevgep32
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.q = shl i64 %n.vec, 1
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.g, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %wide.load35 = load <8 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.s = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.t = lshr <8 x i8> %wide.load35, splat (i8 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = and <8 x i8> %wide.load, splat (i8 15)
  %i.w = and <8 x i8> %wide.load35, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.s, <8 x i8> %i.v, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %interleaved.vec38 = shufflevector <8 x i8> %i.t, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38, ptr %i.u, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %i.x = icmp eq i64 %n.vec, 16
  br i1 %i.x, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %i.y, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %wide.load35.1 = load <8 x i8>, ptr %i.z, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.aa = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %i.ab = lshr <8 x i8> %wide.load35.1, splat (i8 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = and <8 x i8> %wide.load.1, splat (i8 15)
  %i.af = and <8 x i8> %wide.load35.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %i.aa, <8 x i8> %i.ae, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %i.ac, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %interleaved.vec38.1 = shufflevector <8 x i8> %i.ab, <8 x i8> %i.af, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.1, ptr %i.ad, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %i.ag = icmp eq i64 %n.vec, 32
  br i1 %i.ag, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.2 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %wide.load35.2 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.aj = lshr <8 x i8> %wide.load.2, splat (i8 4)
  %i.ak = lshr <8 x i8> %wide.load35.2, splat (i8 4)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.an = and <8 x i8> %wide.load.2, splat (i8 15)
  %i.ao = and <8 x i8> %wide.load35.2, splat (i8 15)
  %interleaved.vec.2 = shufflevector <8 x i8> %i.aj, <8 x i8> %i.an, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.2, ptr %i.al, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %interleaved.vec38.2 = shufflevector <8 x i8> %i.ak, <8 x i8> %i.ao, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.2, ptr %i.am, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %i.ap = icmp eq i64 %n.vec, 48
  br i1 %i.ap, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 49
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %wide.load35.3 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.as = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %i.at = lshr <8 x i8> %wide.load35.3, splat (i8 4)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = and <8 x i8> %wide.load.3, splat (i8 15)
  %i.ax = and <8 x i8> %wide.load35.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %i.as, <8 x i8> %i.aw, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %i.au, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %interleaved.vec38.3 = shufflevector <8 x i8> %i.at, <8 x i8> %i.ax, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.3, ptr %i.av, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.j, -4                     ; 3 uses
  %i.ay = shl i64 %n.vec39, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 3 uses
  %i.az = shl nuw i64 %index40, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 %index40
  %wide.load41 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !16, !alias.scope !28 ; 2 uses
  %i.bb = lshr <4 x i8> %wide.load41, splat (i8 4)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  %i.bd = and <4 x i8> %wide.load41, splat (i8 15)
  %interleaved.vec43 = shufflevector <4 x i8> %i.bb, <4 x i8> %i.bd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec43, ptr %i.bc, align 1, !tbaa !16, !alias.scope !31, !noalias !28
  %index.next44 = add nuw i64 %index40, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next44, %n.vec39
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n45 = icmp eq i64 %i.j, %n.vec39
  br i1 %cmp.n45, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bf = phi i64 [ %i.bp, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.bg = lshr exact i64 %i.bf, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = lshr i8 %i.bi, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !16
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bm = and i8 %i.bl, 15
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !16
  %i.bp = add nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bq = icmp samesign ugt i64 %i.d, %i.bp
  br i1 %i.bq, label %.lr.ph, label %.loopexit.thread, !llvm.loop !34

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not88.i = icmp ugt i64 %6, %i.b
  br i1 %.not88.i, label %bb.f, label %HUF_readStats_body.exit

bb.f:                                             ; preds = %bb.e
  %i.br = add i64 %1, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.bt = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.br, ptr noundef nonnull %i.bs, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10 ; 4 uses
  %9 = icmp ult i64 %i.bt, -119
  br i1 %9, label %.loopexit, label %HUF_readStats_body.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not92.i10.not = icmp eq i64 %i.bt, 0
  br i1 %.not92.i10.not, label %HUF_readStats_body.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.074.i26 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.bt, %.loopexit ] ; 3 uses
  %.075.i24 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.bu = phi i64 [ %i.ci, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.0.i12 = phi i32 [ %i.ch, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.076.i11 = phi i32 [ %i.cg, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !16  ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 12
  br i1 %i.bx, label %HUF_readStats_body.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !16
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = shl nuw i32 1, %i.cd
  %i.cf = ashr i32 %i.ce, 1
  %i.cg = add i32 %i.cf, %.076.i11                ; 4 uses
  %i.ch = add i32 %.0.i12, 1                      ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %.not92.i = icmp ugt i64 %.074.i26, %i.ci
  br i1 %.not92.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !27

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.cg, 0
  br i1 %.old.i, label %HUF_readStats_body.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.cj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true) ; 2 uses
  %i.ck = xor i32 %i.cj, 31                       ; 2 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 11
  br i1 %i.cl, label %HUF_readStats_body.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = sub nuw nsw i32 32, %i.cj
  store i32 %i.cm, ptr %4, align 4, !tbaa !8
  %i.cn = shl nuw nsw i32 2, %i.ck
  %i.co = sub i32 %i.cn, %i.cg                    ; 2 uses
  %i.cp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = lshr exact i32 -2147483648, %i.cp
  %.not93.i = icmp eq i32 %i.cq, %i.co
  br i1 %.not93.i, label %bb.j, label %HUF_readStats_body.exit

bb.j:                                             ; preds = %bb.i
  %i.cr = sub nuw nsw i32 32, %i.cp               ; 2 uses
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i26
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !16
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8  ; 2 uses
  %10 = icmp ugt i32 %i.cz, 1
  %11 = and i32 %i.cz, 1
  %.not94.i = icmp eq i32 %11, 0
  %or.cond.i = and i1 %10, %.not94.i
  br i1 %or.cond.i, label %bb.k, label %HUF_readStats_body.exit

bb.k:                                             ; preds = %bb.j
  %i.da = trunc nuw i64 %.074.i26 to i32
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %3, align 4, !tbaa !8
  %i.dc = add nuw nsw i64 %.075.i24, 1
  br label %HUF_readStats_body.exit

HUF_readStats_body.exit:                          ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.bt, %bb.f ], [ -20, %bb.h ], [ %i.dc, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.critedge.i ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
  ret i64 %.3.i
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{ptr @FSE_readNCount, null}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{ptr @FSE_readNCount}
!16 = !{!6, !6, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = !{!"branch_weights", i32 4, i32 12}
!23 = distinct !{!23, !12, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !12, !24}
!27 = distinct !{!27, !12}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !12, !24, !25}
!34 = distinct !{!34, !12, !24}
end_hunk_0
