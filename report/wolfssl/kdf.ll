Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/kdf?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Hmac = type { %union.wc_Hashes, [36 x i32], [36 x i32], [16 x i32], ptr, i8, i8 }
%union.wc_Hashes = type { %struct.wc_Sha3 }
%struct.wc_Sha3 = type { [25 x i64], [200 x i8], i8, ptr }

@switch.table.wc_PRF = private unnamed_addr constant [5 x i8] [i8 20, i8 poison, i8 32, i8 48, i8 64], align 4
@switch.table.wc_PRF.1 = private unnamed_addr constant [5 x i8] [i8 4, i8 poison, i8 6, i8 7, i8 8], align 4

; Function Attrs: nounwind uwtable
define i32 @wc_PRF(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 12 uses
  %9 = alloca [1 x %struct.Hmac], align 16        ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  %switch.tableidx = add i32 %6, -2               ; 4 uses
  %i.c = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %ForceZero.exit84

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_PRF, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 8 uses
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep122 = getelementptr inbounds nuw i8, ptr @switch.table.wc_PRF.1, i64 %i.e
  %switch.load123 = load i8, ptr %switch.gep122, align 1
  %switch.ext124 = zext i8 %switch.load123 to i32
  %i.f = udiv i32 %1, %switch.ext
  %i.g = urem i32 %1, %switch.ext                 ; 2 uses
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %i.i = zext i1 %i.h to i32
  %spec.select = add nuw nsw i32 %i.f, %i.i       ; 4 uses
  %i.j = icmp eq i32 %spec.select, 0
  br i1 %i.j, label %ForceZero.exit84, label %bb.b

bb.b:                                             ; preds = %switch.lookup
  %i.k = add nsw i32 %spec.select, -1
  %i.l = call i32 @wc_HmacInit(ptr noundef nonnull %9, ptr noundef %7, i32 noundef %8) #6 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.lr.ph25.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 @wc_HmacSetKey(ptr noundef nonnull %9, i32 noundef %switch.ext124, ptr noundef %2, i32 noundef %3) #6 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread86

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef %4, i32 noundef %5) #6 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %.thread86

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #6 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader, label %.thread86

.preheader:                                       ; preds = %bb.e
  br i1 %i.h, label %.preheader.split, label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader, %bb.j
  %.097.us = phi i32 [ %i.aa, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %.04596.us = phi i32 [ %i.ab, %bb.j ], [ 0, %.preheader ]
  %i.t = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef %switch.ext) #6 ; 2 uses
  %.not.us = icmp eq i32 %i.t, 0
  br i1 %.not.us, label %bb.f, label %.thread86

bb.f:                                             ; preds = %.preheader.split.us
  %i.u = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef %4, i32 noundef %5) #6 ; 2 uses
  %.not63.us = icmp eq i32 %i.u, 0
  br i1 %.not63.us, label %bb.g, label %.thread86

bb.g:                                             ; preds = %bb.f
  %i.v = zext i32 %.097.us to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef %i.w) #6 ; 2 uses
  %.not64.us = icmp eq i32 %i.x, 0
  br i1 %.not64.us, label %bb.h, label %.thread86

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef %switch.ext) #6 ; 2 uses
  %.not65.us = icmp eq i32 %i.y, 0
  br i1 %.not65.us, label %bb.i, label %.thread86

bb.i:                                             ; preds = %bb.h
  %i.z = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not66.us = icmp eq i32 %i.z, 0
  br i1 %.not66.us, label %bb.j, label %.thread86

bb.j:                                             ; preds = %bb.i
  %i.aa = add i32 %.097.us, %switch.ext
  %i.ab = add nuw nsw i32 %.04596.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %spec.select
  br i1 %exitcond.not, label %.thread86, label %.preheader.split.us, !llvm.loop !8

.preheader.split:                                 ; preds = %.preheader, %bb.r
  %.097 = phi i32 [ %.1, %bb.r ], [ 0, %.preheader ] ; 4 uses
  %.04596 = phi i32 [ %i.at, %bb.r ], [ 0, %.preheader ] ; 2 uses
  %i.ac = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef %switch.ext) #6 ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.k, label %.thread86

bb.k:                                             ; preds = %.preheader.split
  %i.ad = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef %4, i32 noundef %5) #6 ; 2 uses
  %.not63 = icmp eq i32 %i.ad, 0
  br i1 %.not63, label %bb.l, label %.thread86

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i32 %.04596, %i.k
  br i1 %i.ae, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = zext i32 %.097 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ah = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef %i.ag) #6 ; 2 uses
  %.not64 = icmp eq i32 %i.ah, 0
  br i1 %.not64, label %bb.n, label %.thread86

bb.n:                                             ; preds = %bb.m
  %i.ai = call i32 @wc_HmacUpdate(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i32 noundef %switch.ext) #6 ; 2 uses
  %.not65 = icmp eq i32 %i.ai, 0
  br i1 %.not65, label %bb.o, label %.thread86

bb.o:                                             ; preds = %bb.n
  %i.aj = add i32 %.097, %switch.ext
  %i.ak = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not66 = icmp eq i32 %i.ak, 0
  br i1 %.not66, label %bb.r, label %.thread86

bb.p:                                             ; preds = %bb.l
  %i.al = call i32 @wc_HmacFinal(ptr noundef nonnull %9, ptr noundef nonnull %i.b) #6 ; 2 uses
  %.not67 = icmp eq i32 %i.al, 0
  br i1 %.not67, label %bb.q, label %.thread86

bb.q:                                             ; preds = %bb.p
  %i.am = zext i32 %.097 to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !10
  %.0..0..0..0..0..0..i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  %i.ao = xor i32 %.0..0..0..0..0..0..i, -1
  %i.ap = and i32 %i.g, %i.ao
  %.0..0..0..0..0..0.2.i = load volatile i32, ptr %i.a, align 4, !tbaa !10
  %i.aq = and i32 %.0..0..0..0..0..0.2.i, 64
  %i.ar = or disjoint i32 %i.aq, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = zext nneg i32 %i.ar to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 16 %i.b, i64 %i.as, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.1 = phi i32 [ %.097, %bb.q ], [ %i.aj, %bb.o ]
  %i.at = add nuw nsw i32 %.04596, 1              ; 2 uses
  %exitcond100.not = icmp eq i32 %i.at, %spec.select
  br i1 %exitcond100.not, label %.thread86, label %.preheader.split, !llvm.loop !8

.thread86:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.preheader.split.us, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %.preheader.split, %bb.r, %bb.c, %bb.d, %bb.e
  %.5 = phi i32 [ %i.r, %bb.e ], [ %i.n, %bb.c ], [ %i.p, %bb.d ], [ 0, %bb.r ], [ %i.ak, %bb.o ], [ %i.ai, %bb.n ], [ %i.ah, %bb.m ], [ %i.al, %bb.p ], [ %i.ad, %bb.k ], [ %i.ac, %.preheader.split ], [ 0, %bb.j ], [ %i.z, %bb.i ], [ %i.y, %bb.h ], [ %i.x, %bb.g ], [ %i.t, %.preheader.split.us ], [ %i.u, %bb.f ]
  call void @wc_HmacFree(ptr noundef nonnull %9) #6
  br label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.thread86, %bb.b
  %.6 = phi i32 [ %.5, %.thread86 ], [ %i.l, %bb.b ]
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !11
  fence seq_cst
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(784) %9, i8 0, i64 784, i1 false), !tbaa !11
  fence seq_cst
  br label %ForceZero.exit84

ForceZero.exit84:                                 ; preds = %bb.a, %.lr.ph25.preheader.i, %switch.lookup
  %.048 = phi i32 [ -173, %switch.lookup ], [ -232, %bb.a ], [ %.6, %.lr.ph25.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @wc_HmacInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacSetKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacUpdate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacFinal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @wc_HmacFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 -232, -131) i32 @wc_PRF_TLSv1(ptr nofree noundef readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, ptr nofree noundef readnone captures(none) %8, i32 noundef %9) local_unnamed_addr #3 {
bb.a:
  %i.a = add i32 %3, -521
  %i.b = icmp ult i32 %i.a, -522
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %7, %5
  %i.d = icmp ugt i32 %i.c, 128
  %i.e = icmp ugt i32 %1, 224
  %or.cond = or i1 %i.e, %i.d
  %spec.select = select i1 %or.cond, i32 -132, i32 -232
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -132, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_PRF_TLS(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = add i32 %7, %5                           ; 2 uses
  %i.c = icmp ult i32 %i.b, 129
  br i1 %i.c, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %5 to i64                       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %4, i64 %i.d, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.d
  %i.f = zext i32 %7 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %6, i64 %i.f, i1 false)
  %i.g = icmp eq i32 %9, 8
  %i.h = tail call i32 @llvm.smax.i32(i32 %9, i32 4)
  %spec.store.select = select i1 %i.g, i32 4, i32 %i.h
  %i.i = call i32 @wc_PRF(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef %spec.store.select, ptr noundef %10, i32 noundef %11)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.124.ph = phi i32 [ %i.i, %bb.c ], [ -132, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.124 = phi i32 [ -173, %bb.a ], [ %.124.ph, %.sink.split ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define i32 @wc_Tls13_HKDF_Extract_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  switch i32 %5, label %bb.f [
    i32 6, label %bb.c
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 48, %bb.b ], [ 32, %bb.a ]      ; 2 uses
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = zext nneg i32 %.0 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 0, i64 %i.b, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015 = phi i32 [ %.0, %bb.d ], [ %4, %bb.c ]
  %i.c = tail call i32 @wc_HKDF_Extract_ex(i32 noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %.015, ptr noundef %0, ptr noundef %6, i32 noundef %7) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.014 = phi i32 [ %i.c, %bb.e ], [ -173, %bb.a ]
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @wc_HKDF_Extract_ex(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @wc_Tls13_HKDF_Extract(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  switch i32 %5, label %wc_Tls13_HKDF_Extract_ex.exit [
    i32 6, label %bb.c
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 48, %bb.b ], [ 32, %bb.a ]    ; 2 uses
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.b = zext nneg i32 %.0.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 0, i64 %i.b, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.i = phi i32 [ %.0.i, %bb.d ], [ %4, %bb.c ]
  %i.c = tail call i32 @wc_HKDF_Extract_ex(i32 noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %.015.i, ptr noundef %0, ptr noundef null, i32 noundef -2) #6
  br label %wc_Tls13_HKDF_Extract_ex.exit

wc_Tls13_HKDF_Extract_ex.exit:                    ; preds = %bb.a, %bb.e
  %.014.i = phi i32 [ %i.c, %bb.e ], [ -173, %bb.a ]
  ret i32 %.014.i
}

; Function Attrs: nounwind uwtable
define i32 @wc_Tls13_HKDF_Expand_Label_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [111 x i8], align 16              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = add i32 %7, %5                           ; 2 uses
  %i.c = add i32 %i.b, 4
end_hunk_0
