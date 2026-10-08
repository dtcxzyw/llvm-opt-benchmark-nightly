Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/stream_salsa2012_ref?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_stream_salsa2012(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 13 uses
  %i.b = alloca [64 x i8], align 16               ; 12 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %.preheader40.preheader

.preheader40.preheader:                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, ptr noundef nonnull align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.e = load i64, ptr %2, align 1
  store i64 %i.e, ptr %i.a, align 16
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %scevgep, align 8
  %i.f = icmp ugt i64 %1, 63
  br i1 %i.f, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader40.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03447 = phi ptr [ %i.bb, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.03546 = phi i64 [ %i.ba, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %i.n = call i32 @crypto_core_salsa2012(ptr noundef %.03447, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef null) #3 ; 0 uses
  %i.o = load i8, ptr %scevgep, align 8
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %scevgep, align 8
  %i.s = lshr i32 %i.q, 8
  %i.t = load i8, ptr %i.g, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i32 %i.s, %i.u               ; 2 uses
  %i.w = trunc i32 %i.v to i8
  store i8 %i.w, ptr %i.g, align 1
  %i.x = lshr i32 %i.v, 8
  %i.y = load i8, ptr %i.h, align 2
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.x, %i.z              ; 2 uses
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.h, align 2
  %i.ac = lshr i32 %i.aa, 8
  %i.ad = load i8, ptr %i.i, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nuw nsw i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.i, align 1
  %i.ah = lshr i32 %i.af, 8
  %i.ai = load i8, ptr %i.j, align 4
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.ah, %i.aj            ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.j, align 4
  %i.am = lshr i32 %i.ak, 8
  %i.an = load i8, ptr %i.k, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.am, %i.ao            ; 2 uses
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.k, align 1
  %i.ar = lshr i32 %i.ap, 8
  %i.as = load i8, ptr %i.l, align 2
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.l, align 2
  %i.aw = lshr i32 %i.au, 8
  %i.ax = load i8, ptr %i.m, align 1
  %i.ay = trunc nuw nsw i32 %i.aw to i8
  %i.az = add i8 %i.ax, %i.ay
  store i8 %i.az, ptr %i.m, align 1
  %i.ba = add i64 %.03546, -64                    ; 4 uses
  %i.bb = getelementptr i8, ptr %.03447, i64 64   ; 2 uses
  %i.bc = icmp ugt i64 %i.ba, 63
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph
  %.not37 = icmp eq i64 %i.ba, 0
  br i1 %.not37, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader40.preheader, %._crit_edge
  %.034.lcssa61 = phi ptr [ %i.bb, %._crit_edge ], [ %0, %.preheader40.preheader ] ; 8 uses
  %.035.lcssa60 = phi i64 [ %i.ba, %._crit_edge ], [ %1, %.preheader40.preheader ] ; 10 uses
  %i.bd = call i32 @crypto_core_salsa2012(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef null) #3 ; 0 uses
  %min.iters.check = icmp ult i64 %.035.lcssa60, 4
  %.034.lcssa6164 = ptrtoaddr ptr %.034.lcssa61 to i64
  %i.be = sub i64 %i.c, %.034.lcssa6164
  %diff.check = icmp ugt i64 %i.be, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp ult i64 %.035.lcssa60, 32
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %.035.lcssa60, 28
  %n.vec = and i64 %.035.lcssa60, 32              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %4 = getelementptr i8, ptr %i.b, i64 %index     ; 2 uses
  %i.bg = getelementptr i8, ptr %4, i64 16
  %wide.load = load <16 x i8>, ptr %4, align 16
  %wide.load66 = load <16 x i8>, ptr %i.bg, align 16
  %5 = getelementptr i8, ptr %.034.lcssa61, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %5, i64 16
  store <16 x i8> %wide.load, ptr %5, align 1
  store <16 x i8> %wide.load66, ptr %i.bh, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.035.lcssa60, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !7

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec67 = and i64 %.035.lcssa60, 60            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = getelementptr i8, ptr %i.b, i64 %index68
  %wide.load69 = load <4 x i8>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %.034.lcssa61, i64 %index68
  store <4 x i8> %wide.load69, ptr %i.bk, align 1
  %index.next70 = add nuw i64 %index68, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next70, %n.vec67
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n71 = icmp eq i64 %.035.lcssa60, %n.vec67
  br i1 %cmp.n71, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.035.lcssa60, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = getelementptr i8, ptr %i.b, i64 %indvars.iv.prol
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = getelementptr i8, ptr %.034.lcssa61, i64 %indvars.iv.prol
  store i8 %i.bn, ptr %i.bo, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !12

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bp = sub nsw i64 %indvars.iv.ph, %.035.lcssa60
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.br = getelementptr i8, ptr %i.b, i64 %indvars.iv
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = getelementptr i8, ptr %.034.lcssa61, i64 %indvars.iv
  store i8 %i.bs, ptr %i.bt, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %indvars.iv.next
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr i8, ptr %.034.lcssa61, i64 %indvars.iv.next
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.b, i64 %indvars.iv.next.1
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = getelementptr i8, ptr %.034.lcssa61, i64 %indvars.iv.next.1
  store i8 %i.by, ptr %i.bz, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %indvars.iv.next.2
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr i8, ptr %.034.lcssa61, i64 %indvars.iv.next.2
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.035.lcssa60
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !13

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 64) #3
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 32) #3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @crypto_core_salsa2012(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_stream_salsa2012_xor(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = alloca [16 x i8], align 16               ; 13 uses
  %i.d = alloca [64 x i8], align 16               ; 21 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.g = load i64, ptr %3, align 1
  store i64 %i.g, ptr %i.c, align 16
  %scevgep = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store i64 0, ptr %scevgep, align 8
  %i.h = icmp ugt i64 %2, 63
  br i1 %i.h, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader51.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 15 ; 2 uses
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.preheader.preheader
  %.04360 = phi ptr [ %i.cp, %.preheader.preheader ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %.04459 = phi i64 [ %i.co, %.preheader.preheader ], [ %2, %.lr.ph.preheader ]
  %.04558 = phi ptr [ %i.cq, %.preheader.preheader ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %i.t = call i32 @crypto_core_salsa2012(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef null) #3 ; 0 uses
  br i1 %diff.check, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.04558, i64 16
  %wide.load = load <16 x i8>, ptr %.04558, align 1
  %wide.load90 = load <16 x i8>, ptr %i.u, align 1
  %wide.load91 = load <16 x i8>, ptr %i.d, align 16
  %wide.load92 = load <16 x i8>, ptr %i.q, align 16
  %i.v = xor <16 x i8> %wide.load91, %wide.load
  %i.w = xor <16 x i8> %wide.load92, %wide.load90
  %i.x = getelementptr i8, ptr %.04360, i64 16
  store <16 x i8> %i.v, ptr %.04360, align 1
  store <16 x i8> %i.w, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %.04558, i64 32
  %i.z = getelementptr i8, ptr %.04558, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.y, align 1
  %wide.load90.1 = load <16 x i8>, ptr %i.z, align 1
  %wide.load91.1 = load <16 x i8>, ptr %i.r, align 16
  %wide.load92.1 = load <16 x i8>, ptr %i.s, align 16
  %i.aa = xor <16 x i8> %wide.load91.1, %wide.load.1
  %i.ab = xor <16 x i8> %wide.load92.1, %wide.load90.1
  %i.ac = getelementptr i8, ptr %.04360, i64 32
  %i.ad = getelementptr i8, ptr %.04360, i64 48
  store <16 x i8> %i.aa, ptr %i.ac, align 1
  store <16 x i8> %i.ab, ptr %i.ad, align 1
  br label %.preheader.preheader

scalar.ph:                                        ; preds = %.lr.ph, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ 0, %.lr.ph ] ; 7 uses
  %i.ae = getelementptr i8, ptr %.04558, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = getelementptr i8, ptr %i.d, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = xor i8 %i.ah, %i.af
  %i.aj = getelementptr i8, ptr %.04360, i64 %indvars.iv
  store i8 %i.ai, ptr %i.aj, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ak = getelementptr i8, ptr %.04558, i64 %indvars.iv.next
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %i.d, i64 %indvars.iv.next
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = xor i8 %i.an, %i.al
  %i.ap = getelementptr i8, ptr %.04360, i64 %indvars.iv.next
  store i8 %i.ao, ptr %i.ap, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.aq = getelementptr i8, ptr %.04558, i64 %indvars.iv.next.1
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = getelementptr i8, ptr %i.d, i64 %indvars.iv.next.1
  %i.at = load i8, ptr %i.as, align 2
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr i8, ptr %.04360, i64 %indvars.iv.next.1
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.aw = getelementptr i8, ptr %.04558, i64 %indvars.iv.next.2
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr i8, ptr %i.d, i64 %indvars.iv.next.2
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = xor i8 %i.az, %i.ax
  %i.bb = getelementptr i8, ptr %.04360, i64 %indvars.iv.next.2
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 64
  br i1 %exitcond.not.3, label %.preheader.preheader, label %scalar.ph, !llvm.loop !14

.preheader.preheader:                             ; preds = %scalar.ph, %vector.body
  %i.bc = load i8, ptr %scevgep, align 8
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 1                ; 2 uses
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %scevgep, align 8
  %i.bg = lshr i32 %i.be, 8
  %i.bh = load i8, ptr %i.i, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.i, align 1
  %i.bl = lshr i32 %i.bj, 8
  %i.bm = load i8, ptr %i.j, align 2
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.j, align 2
  %i.bq = lshr i32 %i.bo, 8
  %i.br = load i8, ptr %i.k, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.k, align 1
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = load i8, ptr %i.l, align 4
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %i.l, align 4
  %i.ca = lshr i32 %i.by, 8
  %i.cb = load i8, ptr %i.m, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.m, align 1
  %i.cf = lshr i32 %i.cd, 8
  %i.cg = load i8, ptr %i.n, align 2
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cf, %i.ch            ; 2 uses
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.n, align 2
  %i.ck = lshr i32 %i.ci, 8
  %i.cl = load i8, ptr %i.o, align 1
  %i.cm = trunc nuw nsw i32 %i.ck to i8
  %i.cn = add i8 %i.cl, %i.cm
  store i8 %i.cn, ptr %i.o, align 1
  %i.co = add i64 %.04459, -64                    ; 4 uses
  %i.cp = getelementptr i8, ptr %.04360, i64 64   ; 2 uses
  %i.cq = getelementptr i8, ptr %.04558, i64 64   ; 2 uses
  %i.cr = icmp ugt i64 %i.co, 63
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.preheader.preheader
  %.not47 = icmp eq i64 %i.co, 0
  br i1 %.not47, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader51.preheader, %._crit_edge
  %.043.lcssa85 = phi ptr [ %i.cp, %._crit_edge ], [ %0, %.preheader51.preheader ] ; 8 uses
  %.044.lcssa84 = phi i64 [ %i.co, %._crit_edge ], [ %2, %.preheader51.preheader ] ; 10 uses
  %.045.lcssa83 = phi ptr [ %i.cq, %._crit_edge ], [ %1, %.preheader51.preheader ] ; 8 uses
  %i.cs = call i32 @crypto_core_salsa2012(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef null) #3 ; 0 uses
  %min.iters.check = icmp ult i64 %.044.lcssa84, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %iter.check
  %.045.lcssa8395 = ptrtoaddr ptr %.045.lcssa83 to i64
  %.043.lcssa8594 = ptrtoaddr ptr %.043.lcssa85 to i64 ; 2 uses
  %i.ct = sub i64 %.045.lcssa8395, %.043.lcssa8594
  %diff.check96 = icmp ugt i64 %i.ct, -32
  %i.cu = sub i64 %i.e, %.043.lcssa8594
  %diff.check97 = icmp ugt i64 %i.cu, -32
  %conflict.rdx = or i1 %diff.check96, %diff.check97
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck93
  %min.iters.check99 = icmp ult i64 %.044.lcssa84, 32
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check
  %i.cv = and i64 %.044.lcssa84, 28
  %n.vec = and i64 %.044.lcssa84, 32              ; 4 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.ph100, %vector.body101
  %index102 = phi i64 [ 0, %vector.ph100 ], [ %index.next107, %vector.body101 ] ; 4 uses
  %5 = getelementptr i8, ptr %.045.lcssa83, i64 %index102 ; 2 uses
  %i.cw = getelementptr i8, ptr %5, i64 16
  %wide.load103 = load <16 x i8>, ptr %5, align 1
  %wide.load104.a = load <16 x i8>, ptr %i.cw, align 1
  %6 = getelementptr i8, ptr %i.d, i64 %index102  ; 2 uses
  %i.cx = getelementptr i8, ptr %6, i64 16
  %wide.load105 = load <16 x i8>, ptr %6, align 16
  %wide.load106 = load <16 x i8>, ptr %i.cx, align 16
  %7 = xor <16 x i8> %wide.load105, %wide.load103
  %i.cy = xor <16 x i8> %wide.load106, %wide.load104.a
  %8 = getelementptr i8, ptr %.043.lcssa85, i64 %index102 ; 2 uses
  %i.cz = getelementptr i8, ptr %8, i64 16
  store <16 x i8> %7, ptr %8, align 1
  store <16 x i8> %i.cy, ptr %i.cz, align 1
  %index.next107 = add nuw i64 %index102, 32      ; 2 uses
  %i.da = icmp eq i64 %index.next107, %n.vec
  br i1 %i.da, label %middle.block108, label %vector.body101, !llvm.loop !16

middle.block108:                                  ; preds = %vector.body101
  %cmp.n = icmp eq i64 %.044.lcssa84, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block108
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !7

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %.044.lcssa84, 60           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 4 uses
  %i.db = getelementptr i8, ptr %.045.lcssa83, i64 %index110
  %wide.load111 = load <4 x i8>, ptr %i.db, align 1
  %i.dc = getelementptr i8, ptr %i.d, i64 %index110
  %wide.load112 = load <4 x i8>, ptr %i.dc, align 4
  %i.dd = xor <4 x i8> %wide.load112, %wide.load111
  %i.de = getelementptr i8, ptr %.043.lcssa85, i64 %index110
  store <4 x i8> %i.dd, ptr %i.de, align 1
  %index.next113 = add nuw i64 %index110, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next113, %n.vec109
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n114 = icmp eq i64 %.044.lcssa84, %n.vec109
  br i1 %cmp.n114, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck93, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv74.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck93 ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec109, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.044.lcssa84, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv74.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dg = getelementptr i8, ptr %.045.lcssa83, i64 %indvars.iv74.prol
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = getelementptr i8, ptr %i.d, i64 %indvars.iv74.prol
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr i8, ptr %.043.lcssa85, i64 %indvars.iv74.prol
  store i8 %i.dk, ptr %i.dl, align 1
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !18

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next75.prol, %vec.epilog.scalar.ph.prol ]
  %i.dm = sub nsw i64 %indvars.iv74.ph, %.044.lcssa84
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %vec.epilog.scalar.ph ], [ %indvars.iv74.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.do = getelementptr i8, ptr %.045.lcssa83, i64 %indvars.iv74
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = getelementptr i8, ptr %i.d, i64 %indvars.iv74
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = xor i8 %i.dr, %i.dp
  %i.dt = getelementptr i8, ptr %.043.lcssa85, i64 %indvars.iv74
  store i8 %i.ds, ptr %i.dt, align 1
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 3 uses
  %i.du = getelementptr i8, ptr %.045.lcssa83, i64 %indvars.iv.next75
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = getelementptr i8, ptr %i.d, i64 %indvars.iv.next75
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = xor i8 %i.dx, %i.dv
  %i.dz = getelementptr i8, ptr %.043.lcssa85, i64 %indvars.iv.next75
  store i8 %i.dy, ptr %i.dz, align 1
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 3 uses
  %i.ea = getelementptr i8, ptr %.045.lcssa83, i64 %indvars.iv.next75.1
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr i8, ptr %i.d, i64 %indvars.iv.next75.1
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = xor i8 %i.ed, %i.eb
  %i.ef = getelementptr i8, ptr %.043.lcssa85, i64 %indvars.iv.next75.1
  store i8 %i.ee, ptr %i.ef, align 1
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3 ; 3 uses
  %i.eg = getelementptr i8, ptr %.045.lcssa83, i64 %indvars.iv.next75.2
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = getelementptr i8, ptr %i.d, i64 %indvars.iv.next75.2
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = xor i8 %i.ej, %i.eh
  %i.el = getelementptr i8, ptr %.043.lcssa85, i64 %indvars.iv.next75.2
  store i8 %i.ek, ptr %i.el, align 1
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond77.not.3 = icmp eq i64 %indvars.iv.next75.3, %.044.lcssa84
  br i1 %exitcond77.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !19

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block108, %vec.epilog.middle.block, %._crit_edge
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 64) #3
  call void @sodium_memzero(ptr noundef nonnull %i.f, i64 noundef 32) #3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = !{!"branch_weights", i32 4, i32 28}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4, !5, !6}
!11 = distinct !{!11, !4, !5, !6}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !4, !5}
!14 = distinct !{!14, !4, !5}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4, !5, !6}
!17 = distinct !{!17, !4, !5, !6}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !4, !5}
end_hunk_0
