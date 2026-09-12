Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ewah_io?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"corrupt ewah bitmap: eof before bit size\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"corrupt ewah bitmap: eof before length\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"corrupt ewah bitmap: eof in data (%lu bytes short)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"corrupt ewah bitmap: eof before rlw\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 12, 5) i32 @ewah_serialize_to(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 13 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !20
  %i.i = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.b, i64 noundef 4) #6
  %.not = icmp eq i32 %i.i, 4
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = trunc i64 %i.k to i32
  %i.m = call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.c, align 4, !tbaa !20
  %i.n = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.c, i64 noundef 4) #6
  %.not37 = icmp eq i32 %i.n, 4
  br i1 %.not37, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !21   ; 3 uses
  %i.q = icmp ugt i64 %i.p, 2047
  br i1 %i.q, label %.preheader42, label %._crit_edge

.preheader42:                                     ; preds = %bb.c, %bb.f
  %.048 = phi i64 [ %i.am, %bb.f ], [ %i.p, %bb.c ]
  %.03347 = phi ptr [ %i.ak, %bb.f ], [ %i.o, %bb.c ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader42
  %.146 = phi ptr [ %.03347, %.preheader42 ], [ %i.ak, %bb.d ] ; 5 uses
  %.03445 = phi i64 [ 0, %.preheader42 ], [ %i.aj, %bb.d ] ; 5 uses
  %i.r = load i64, ptr %.146, align 8, !tbaa !23
  %i.s = call i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445
  store i64 %i.s, ptr %i.t, align 16, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %.146, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !23
  %i.w = call i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %.146, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !23
  %i.ab = call i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ab, ptr %i.ad, align 16, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %.146, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.ag = call i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !23
  %i.aj = add nuw nsw i64 %.03445, 4              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.146, i64 32 ; 3 uses
  %exitcond.not.3 = icmp eq i64 %i.aj, 2048
  br i1 %exitcond.not.3, label %bb.e, label %bb.d, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.al = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 16384) #6
  %.not41 = icmp eq i32 %i.al, 16384
  br i1 %.not41, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.am = add i64 %.048, -2048                    ; 3 uses
  %i.an = icmp ugt i64 %i.am, 2047
  br i1 %i.an, label %.preheader42, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.033.lcssa = phi ptr [ %i.o, %bb.c ], [ %i.ak, %bb.f ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.p, %bb.c ], [ %i.am, %bb.f ] ; 5 uses
  %.not38 = icmp eq i64 %.0.lcssa, 0
  br i1 %.not38, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %.0.lcssa, 3                ; 3 uses
  %i.ao = icmp ult i64 %.0.lcssa, 4
  br i1 %i.ao, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.0.lcssa, 2044
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.251 = phi ptr [ %.033.lcssa, %.preheader.preheader.new ], [ %i.bi, %.preheader ] ; 5 uses
  %.13550 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.bh, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.ap = load i64, ptr %.251, align 8, !tbaa !23
  %i.aq = call i64 @llvm.bswap.i64(i64 %i.ap)
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550
  store i64 %i.aq, ptr %i.ar, align 16, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %.251, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23
  %i.au = call i64 @llvm.bswap.i64(i64 %i.at)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %.251, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.az = call i64 @llvm.bswap.i64(i64 %i.ay)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.az, ptr %i.bb, align 16, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %.251, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !23
  %i.be = call i64 @llvm.bswap.i64(i64 %i.bd)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !23
  %i.bh = add nuw nsw i64 %.13550, 4              ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.251, i64 32 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %.251.epil.init = phi ptr [ %.033.lcssa, %.preheader.preheader ], [ %i.bi, %.unr-lcssa ]
  %.13550.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.bh, %.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.251.epil = phi ptr [ %i.bn, %.preheader.epil ], [ %.251.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.13550.epil = phi i64 [ %i.bm, %.preheader.epil ], [ %.13550.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.bj = load i64, ptr %.251.epil, align 8, !tbaa !23
  %i.bk = call i64 @llvm.bswap.i64(i64 %i.bj)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.epil
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !23
  %i.bm = add nuw nsw i64 %.13550.epil, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.251.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.epil, !llvm.loop !27

.epilog-lcssa:                                    ; preds = %.preheader.epil, %.unr-lcssa
  %i.bo = shl nuw nsw i64 %.0.lcssa, 3            ; 2 uses
  %i.bp = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef %i.bo) #6
  %i.bq = sext i32 %i.bp to i64
  %.not39 = icmp eq i64 %i.bo, %i.bq
  br i1 %.not39, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.epilog-lcssa, %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !26
  %i.bt = load ptr, ptr %0, align 8, !tbaa !22
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %3 = lshr i64 %i.bw, 3
  %i.bx = trunc i64 %3 to i32
  %4 = and i32 %i.bx, 536870911
  %i.by = call i32 @llvm.bswap.i32(i32 %4)
  store i32 %i.by, ptr %i.d, align 4, !tbaa !20
  %i.bz = call i32 %1(ptr noundef %2, ptr noundef nonnull %i.d, i64 noundef 4) #6
  %.not40 = icmp eq i32 %i.bz, 4
  br i1 %.not40, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !21
  %.tr = trunc i64 %i.ca to i32
  %i.cb = shl i32 %.tr, 3
  %i.cc = add i32 %i.cb, 12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %.epilog-lcssa, %bb.b, %bb.a, %bb.h
  %.036 = phi i32 [ %i.cc, %bb.h ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.g ], [ -1, %.epilog-lcssa ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 12, 5) i32 @ewah_serialize_strbuf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 13 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 4) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = trunc i64 %i.j to i32
  %i.l = call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.c, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef 4) #6
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2047
  br i1 %i.o, label %.preheader42.i, label %._crit_edge.i

.preheader42.i:                                   ; preds = %bb.a, %bb.c
  %.048.i = phi i64 [ %i.aj, %bb.c ], [ %i.n, %bb.a ]
  %.03347.i = phi ptr [ %i.ai, %bb.c ], [ %i.m, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader42.i
  %.146.i = phi ptr [ %.03347.i, %.preheader42.i ], [ %i.ai, %bb.b ] ; 5 uses
  %.03445.i = phi i64 [ 0, %.preheader42.i ], [ %i.ah, %bb.b ] ; 5 uses
  %i.p = load i64, ptr %.146.i, align 8, !tbaa !23
  %i.q = call i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  store i64 %i.q, ptr %i.r, align 16, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %.146.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = call i64 @llvm.bswap.i64(i64 %i.t)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %.146.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = call i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.z, ptr %i.ab, align 16, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %.146.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = call i64 @llvm.bswap.i64(i64 %i.ad)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !23
  %i.ah = add nuw nsw i64 %.03445.i, 4            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.146.i, i64 32 ; 3 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ah, 2048
  br i1 %exitcond.not.i.3, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 16384) #6
  %i.aj = add i64 %.048.i, -2048                  ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 2047
  br i1 %i.ak, label %.preheader42.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.033.lcssa.i = phi ptr [ %i.m, %bb.a ], [ %i.ai, %bb.c ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.n, %bb.a ], [ %i.aj, %bb.c ] ; 5 uses
  %.not38.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not38.i, label %ewah_serialize_to.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter = and i64 %.0.lcssa.i, 3              ; 3 uses
  %i.al = icmp ult i64 %.0.lcssa.i, 4
  br i1 %i.al, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.0.lcssa.i, 2044
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.251.i = phi ptr [ %.033.lcssa.i, %.preheader.i.preheader.new ], [ %i.bf, %.preheader.i ] ; 5 uses
  %.13550.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.be, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.am = load i64, ptr %.251.i, align 8, !tbaa !23
  %i.an = call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  store i64 %i.an, ptr %i.ao, align 16, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %.251.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.ar = call i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.251.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !23
  %i.aw = call i64 @llvm.bswap.i64(i64 %i.av)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.aw, ptr %i.ay, align 16, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %.251.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = call i64 @llvm.bswap.i64(i64 %i.ba)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23
  %i.be = add nuw nsw i64 %.13550.i, 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.251.i, i64 32 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.251.i.epil.init = phi ptr [ %.033.lcssa.i, %.preheader.i.preheader ], [ %i.bf, %.unr-lcssa ]
  %.13550.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.be, %.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod9)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.251.i.epil = phi ptr [ %i.bk, %.preheader.i.epil ], [ %.251.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.13550.i.epil = phi i64 [ %i.bj, %.preheader.i.epil ], [ %.13550.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.bg = load i64, ptr %.251.i.epil, align 8, !tbaa !23
  %i.bh = call i64 @llvm.bswap.i64(i64 %i.bg)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i.epil
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !23
  %i.bj = add nuw nsw i64 %.13550.i.epil, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.251.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !28

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.bl = shl nuw nsw i64 %.0.lcssa.i, 3
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.bl) #6
  br label %ewah_serialize_to.exit

ewah_serialize_to.exit:                           ; preds = %.epilog-lcssa, %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = load ptr, ptr %0, align 8, !tbaa !22
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %2 = lshr i64 %i.br, 3
  %i.bs = trunc i64 %2 to i32
  %3 = and i32 %i.bs, 536870911
  %i.bt = call i32 @llvm.bswap.i32(i32 %3)
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 4) #6
  %i.bu = load i64, ptr %i.i, align 8, !tbaa !21
  %.tr.i = trunc i64 %i.bu to i32
  %i.bv = shl i32 %.tr.i, 3
  %i.bw = add i32 %i.bv, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.bw
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 12, 0) i64 @ewah_read_mmap(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str) #6 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = icmp ult i64 %2, 8
  br i1 %i.g, label %bb.d, label %st_mult.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %bb.k

st_mult.exit:                                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.n = load i8, ptr %i.m, align 1, !tbaa !30
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 16
  %i.q = or disjoint i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !21
  %i.ac = add i64 %2, -8                          ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !22
  %i.ae = shl nuw nsw i64 %i.z, 3
  %i.af = tail call ptr @xrealloc(ptr noundef %i.ad, i64 noundef %i.ae) #6 ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !22
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !21 ; 3 uses
  %mul.ov.i49 = icmp ugt i64 %i.ag, 2305843009213693951
  br i1 %mul.ov.i49, label %bb.e, label %st_mult.exit50

bb.e:                                             ; preds = %st_mult.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.4, i64 noundef %i.ag, i64 noundef 8) #7
  unreachable

st_mult.exit50:                                   ; preds = %st_mult.exit
  %i.ah = shl nuw i64 %i.ag, 3                    ; 6 uses
  %i.ai = icmp ult i64 %i.ac, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %st_mult.exit50
  %i.aj = sub nuw i64 %i.ah, %i.ac
  %i.ak = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, i64 noundef %i.aj) #6 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %st_mult.exit50
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.af, ptr nonnull align 1 %i.al, i64 %i.ah, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah ; 4 uses
  %i.an = sub nuw i64 %i.ac, %i.ah
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !21
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ap = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.054 = phi i64 [ 0, %.lr.ph ], [ %i.at, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.054 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.ar)
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !23
  %i.at = add nuw i64 %.054, 1                    ; 2 uses
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !21
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.aw = icmp ult i64 %i.an, 4
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ax = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %0, align 8, !tbaa !22
  %i.az = load i8, ptr %i.am, align 1, !tbaa !30
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !30
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !30
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bj = zext i8 %i.bi to i64
  %.idx = shl nuw nsw i64 %i.bd, 19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %.idx52 = shl nuw nsw i64 %i.ba, 27
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx52
  %.idx53 = shl nuw nsw i64 %i.bg, 11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx53
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !26
  %i.bp = add nuw nsw i64 %i.ah, 12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d, %bb.b
  %.042 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.bp, %bb.j ]
  ret i64 %.042
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 long", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"ewah_bitmap", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !16, i64 32}
!19 = !{!18, !17, i64 24}
!20 = !{!12, !12, i64 0}
!21 = !{!18, !17, i64 8}
!22 = !{!18, !16, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!18, !16, i64 32}
!27 = distinct !{!27, !25}
end_hunk_0
