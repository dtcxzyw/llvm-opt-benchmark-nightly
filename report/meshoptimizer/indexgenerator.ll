Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/indexgenerator?download=true
inline.NumInlined: 95
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }
%"struct.meshopt::VertexHasher" = type { ptr, i64, i64 }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @meshopt_generateVertexRemap(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 8 uses
  %7 = alloca %"struct.meshopt::VertexHasher", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %3, ptr %7, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %i.a, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %5, ptr %i.b, align 8, !tbaa !23
  %i.c = invoke fastcc noundef i64 @_ZN7meshoptL19generateVertexRemapINS_12VertexHasherEEEmPjPKjmmRKT_R17meshopt_Allocator(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(200) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.04.i = phi i64 [ %i.j, %bb.c ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.g = getelementptr [8 x i8], ptr %6, i64 %.04.i
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  invoke void %i.f(ptr noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = add i64 %.04.i, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.c

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @_ZN7meshoptL19generateVertexRemapINS_12VertexHasherEEEmPjPKjmmRKT_R17meshopt_Allocator(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %5) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 -1, i64 %i.a, i1 false)
  %i.b = lshr i64 %3, 2
  %i.c = add i64 %i.b, %3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]   ; 5 uses
  %i.d = icmp ult i64 %.0.i, %i.c
  %i.e = shl i64 %.0.i, 1
  br i1 %i.d, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.b
  %i.f = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.g = icmp ugt i64 %.0.i, 4611686018427387903
  %i.h = shl i64 %.0.i, 2                         ; 2 uses
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noundef ptr %i.f(i64 noundef %i.i), !inline_history !2 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.l
  store ptr %i.j, ptr %i.n, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 -1, i64 %i.h, i1 false)
  %.not45 = icmp eq i64 %2, 0
  br i1 %.not45, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %.not = icmp eq ptr %1, null
  %i.o = add i64 %.0.i, -1                        ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.r = zext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN7meshoptL11hashBucketsEm.exit
  %.025.lcssa = phi i64 [ 0, %_ZN7meshoptL11hashBucketsEm.exit ], [ %i.r, %._crit_edge.loopexit ]
  ret i64 %.025.lcssa

bb.c:                                             ; preds = %.lr.ph43, %bb.j
  %.042 = phi i64 [ 0, %.lr.ph43 ], [ %i.bx, %bb.j ] ; 3 uses
  %.02540 = phi i32 [ 0, %.lr.ph43 ], [ %.2, %bb.j ] ; 4 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.042
  %i.t = load i32, ptr %i.s, align 4, !tbaa !31
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = trunc i64 %.042 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi i32 [ %i.t, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31
  %.not28 = icmp eq i32 %i.y, -1
  br i1 %.not28, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr %i.p, align 8, !tbaa !22   ; 3 uses
  %i.aa = icmp ugt i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i.preheader.i.i, label %_ZNK7meshopt12VertexHasher4hashEj.exit.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.g
  %6 = load ptr, ptr %4, align 8, !tbaa !21
  %7 = load i64, ptr %i.q, align 8, !tbaa !23
  %8 = mul i64 %7, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %8 ; 2 uses
  %i.ac = add i64 %i.z, -4                        ; 2 uses
  %i.ad = lshr i64 %i.ac, 2                       ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.new

.lr.ph.i.preheader.i.i.new:                       ; preds = %.lr.ph.i.preheader.i.i
  %unroll_iter = and i64 %i.ae, 9223372036854775806
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.preheader.i.i.new
  %.015.i.i.i = phi i32 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %i.au, %.lr.ph.i.i.i ]
  %.01213.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.preheader.i.i.new ], [ %i.av, %.lr.ph.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ag = load i32, ptr %.01213.i.i.i, align 4, !tbaa !31
  %i.ah = mul i32 %i.ag, 1540483477               ; 2 uses
  %i.ai = lshr i32 %i.ah, 24
  %i.aj = xor i32 %i.ai, %i.ah
  %i.ak = mul i32 %i.aj, 1540483477
  %i.al = mul i32 %.015.i.i.i, 1540483477
  %i.am = xor i32 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !31
  %i.ap = mul i32 %i.ao, 1540483477               ; 2 uses
  %i.aq = lshr i32 %i.ap, 24
  %i.ar = xor i32 %i.aq, %i.ap
  %i.as = mul i32 %i.ar, 1540483477
  %i.at = mul i32 %i.am, 1540483477
  %i.au = xor i32 %i.as, %i.at                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01213.i.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %i.aw = and i64 %i.ac, 4
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.epil.preheader, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.preheader.i.i
  %.015.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.au, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa ]
  %.01213.i.i.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.preheader.i.i ], [ %i.av, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod63 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ax = load i32, ptr %.01213.i.i.i.epil.init, align 4, !tbaa !31
  %i.ay = mul i32 %i.ax, 1540483477               ; 2 uses
  %i.az = lshr i32 %i.ay, 24
  %i.ba = xor i32 %i.az, %i.ay
  %i.bb = mul i32 %i.ba, 1540483477
  %i.bc = mul i32 %.015.i.i.i.epil.init, 1540483477
  %i.bd = xor i32 %i.bb, %i.bc
  br label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i

_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i: ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  %.lcssa = phi i32 [ %i.au, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.unr-lcssa ], [ %i.bd, %.lr.ph.i.i.i.epil.preheader ]
  %i.be = zext i32 %.lcssa to i64
  %i.bf = and i64 %i.o, %i.be
  br label %_ZNK7meshopt12VertexHasher4hashEj.exit.i

_ZNK7meshopt12VertexHasher4hashEj.exit.i:         ; preds = %bb.g, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i
  %.0.lcssa.i.i.i = phi i64 [ %i.bf, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0.lcssa.i.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !31 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7meshopt12VertexHasher4hashEj.exit.i
  %9 = load ptr, ptr %4, align 8, !tbaa !21       ; 2 uses
  %10 = load i64, ptr %i.q, align 8, !tbaa !23    ; 2 uses
  %11 = mul i64 %10, %i.w
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 %11
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %.pr = phi i32 [ %i.bh, %.lr.ph ], [ %i.br, %bb.i ]
  %.02311.i39 = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph ], [ %i.bp, %bb.i ]
  %.02212.i38 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %bb.i ]
  %i.bj = zext i32 %.pr to i64                    ; 2 uses
  %i.bk = mul i64 %10, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 %i.bk
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.bl, ptr %12, i64 %i.z)
  %i.bm = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bm, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = add i64 %.02212.i38, 1                  ; 3 uses
  %i.bo = add i64 %i.bn, %.02311.i39
  %i.bp = and i64 %i.bo, %i.o                     ; 3 uses
  %.not.i = icmp ule i64 %i.bn, %i.o
  tail call void @llvm.assume(i1 %.not.i)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31 ; 2 uses
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %bb.h

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %bb.i, %_ZNK7meshopt12VertexHasher4hashEj.exit.i
  %.02311.i.lcssa37 = phi i64 [ %.0.lcssa.i.i.i, %_ZNK7meshopt12VertexHasher4hashEj.exit.i ], [ %i.bp, %bb.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.02311.i.lcssa37
  store i32 %i.v, ptr %i.bt, align 4, !tbaa !31
  %i.bu = add i32 %.02540, 1
  br label %.sink.split

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %.02540.sink = phi i32 [ %.02540, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.bw, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  %.2.ph = phi i32 [ %i.bu, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.02540, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit ]
  store i32 %.02540.sink, ptr %i.x, align 4, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.f
  %.2 = phi i32 [ %.02540, %bb.f ], [ %.2.ph, %.sink.split ] ; 2 uses
  %i.bx = add nuw i64 %.042, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %2
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !41
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #12
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i64 0, 4294967296) i64 @meshopt_generateVertexRemapMulti(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %i.a = invoke fastcc noundef i64 @_ZN7meshoptL19generateVertexRemapINS_18VertexStreamHasherEEEmPjPKjmmRKT_R17meshopt_Allocator(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(200) %6)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.c = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not3.i = icmp eq i64 %i.c, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.04.i = phi i64 [ %i.h, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.e = getelementptr [8 x i8], ptr %6, i64 %.04.i
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  invoke void %i.d(ptr noundef %i.g)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = add i64 %.04.i, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !0

bb.d:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.a

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 0, 4294967296) i64 @_ZN7meshoptL19generateVertexRemapINS_18VertexStreamHasherEEEmPjPKjmmRKT_R17meshopt_Allocator(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %4) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 -1, i64 %i.a, i1 false)
  %i.b = lshr i64 %3, 2
  %i.c = add i64 %i.b, %3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]   ; 5 uses
  %i.d = icmp ult i64 %.0.i, %i.c
  %i.e = shl i64 %.0.i, 1
  br i1 %i.d, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit:                 ; preds = %bb.b
  %.8.val.fr = freeze i64 %.8.val                 ; 3 uses
  %i.f = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.g = icmp ugt i64 %.0.i, 4611686018427387903
  %i.h = shl i64 %.0.i, 2                         ; 2 uses
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noundef ptr %i.f(i64 noundef %i.i), !inline_history !2 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.l
  store ptr %i.j, ptr %i.n, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 -1, i64 %i.h, i1 false)
  %.not14 = icmp eq i64 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7meshoptL11hashBucketsEm.exit
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.o = add i64 %.0.i, -1                        ; 3 uses
  %.not.i.i = icmp eq i64 %.8.val.fr, 0
  br i1 %.not.i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.e
  %.011.us.us = phi i64 [ %i.z, %bb.e ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.02510.us.us = phi i32 [ %.2.us.us, %bb.e ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.p = trunc i64 %.011.us.us to i32
  %i.q = and i64 %.011.us.us, 4294967295
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31
  %.not28.us.us = icmp eq i32 %i.s, -1
  br i1 %.not28.us.us, label %.thread.loopexit9.split.loop.exit11.i.us.us, label %bb.e

.thread.loopexit9.split.loop.exit11.i.us.us:      ; preds = %.lr.ph.split.us.split.us
  %i.t = load i32, ptr %i.j, align 4, !tbaa !31   ; 2 uses
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread.loopexit9.split.loop.exit11.i.us.us
  %i.v = zext i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !31
  br label %.sink.split

bb.d:                                             ; preds = %.thread.loopexit9.split.loop.exit11.i.us.us
  store i32 %i.p, ptr %i.j, align 4, !tbaa !31
  %i.y = add i32 %.02510.us.us, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.02510.us.us.sink = phi i32 [ %.02510.us.us, %bb.d ], [ %i.x, %bb.c ]
  %.2.us.us.ph = phi i32 [ %i.y, %bb.d ], [ %.02510.us.us, %bb.c ]
  store i32 %.02510.us.us.sink, ptr %i.r, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.lr.ph.split.us.split.us
  %.2.us.us = phi i32 [ %.02510.us.us, %.lr.ph.split.us.split.us ], [ %.2.us.us.ph, %.sink.split ] ; 2 uses
end_hunk_0
begin_hunk_1_@meshopt_filterIndexBufferMulti:bb.a

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = add i64 %.04.i, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i, !llvm.loop !0

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #12
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i64 %i.h

bb.g:                                             ; preds = %bb.c, %bb.a, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_generateShadowIndexBuffer(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.meshopt_Allocator, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %7, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.b = icmp ugt i64 %4, 4611686018427387903
  %i.c = shl i64 %4, 2                            ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = invoke noundef ptr %i.a(i64 noundef %i.d)
          to label %.noexc unwind label %bb.i, !inline_history !63 ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 192
  store i64 1, ptr %i.f, align 8, !tbaa !25
  store ptr %i.e, ptr %7, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 -1, i64 %i.c, i1 false)
  %i.g = lshr i64 %4, 2
  %i.h = add i64 %i.g, %4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.noexc
  %.0.i.i = phi i64 [ 1, %.noexc ], [ %i.j, %bb.b ] ; 5 uses
  %i.i = icmp ult i64 %.0.i.i, %i.h
  %i.j = shl i64 %.0.i.i, 1
  br i1 %i.i, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit.i, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit.i:               ; preds = %bb.b
  %i.k = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.l = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.m = shl i64 %.0.i.i, 2                       ; 2 uses
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noundef ptr %i.k(i64 noundef %i.n)
          to label %.noexc8 unwind label %bb.i, !inline_history !63 ; 8 uses

.noexc8:                                          ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 -1, i64 %i.m, i1 false)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.lr.ph.i9, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.noexc8
  %i.q = add i64 %.0.i.i, -1                      ; 5 uses
  %i.r = icmp ugt i64 %5, 3
  br i1 %i.r, label %.lr.ph37.i.split.us.preheader, label %.lr.ph37.i.split

.lr.ph37.i.split.us.preheader:                    ; preds = %.lr.ph37.i
  %i.s = add i64 %5, -4                           ; 2 uses
  %i.t = lshr i64 %i.s, 2                         ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  %unroll_iter = and i64 %i.u, 9223372036854775806
  %i.w = and i64 %i.s, 4
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  %lcmp.mod46 = trunc i64 %i.u to i1
  br label %.lr.ph37.i.split.us

.lr.ph37.i.split.us:                              ; preds = %.lr.ph37.i.split.us.preheader, %bb.d
  %.036.i.us = phi i64 [ %i.bv, %bb.d ], [ 0, %.lr.ph37.i.split.us.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.036.i.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !31   ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !31 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.lr.ph.i.preheader.i.i.i.us, label %bb.d

.lr.ph.i.preheader.i.i.i.us:                      ; preds = %.lr.ph37.i.split.us
  %i.ad = mul i64 %6, %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad ; 3 uses
  br i1 %i.v, label %.lr.ph.i.i.i.i.us.epil.preheader, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.preheader.i.i.i.us, %.lr.ph.i.i.i.i.us
  %.015.i.i.i.i.us = phi i32 [ %i.at, %.lr.ph.i.i.i.i.us ], [ 0, %.lr.ph.i.preheader.i.i.i.us ]
  %.01213.i.i.i.i.us = phi ptr [ %i.au, %.lr.ph.i.i.i.i.us ], [ %i.ae, %.lr.ph.i.preheader.i.i.i.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.us ], [ 0, %.lr.ph.i.preheader.i.i.i.us ]
  %i.af = load i32, ptr %.01213.i.i.i.i.us, align 4, !tbaa !31
  %i.ag = mul i32 %i.af, 1540483477               ; 2 uses
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = xor i32 %i.ah, %i.ag
  %i.aj = mul i32 %i.ai, 1540483477
  %i.ak = mul i32 %.015.i.i.i.i.us, 1540483477
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.01213.i.i.i.i.us, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !31
  %i.ao = mul i32 %i.an, 1540483477               ; 2 uses
  %i.ap = lshr i32 %i.ao, 24
  %i.aq = xor i32 %i.ap, %i.ao
  %i.ar = mul i32 %i.aq, 1540483477
  %i.as = mul i32 %i.al, 1540483477
  %i.at = xor i32 %i.ar, %i.as                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01213.i.i.i.i.us, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa, label %.lr.ph.i.i.i.i.us, !llvm.loop !3

_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.us
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.us.epil.preheader, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us

.lr.ph.i.i.i.i.us.epil.preheader:                 ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa, %.lr.ph.i.preheader.i.i.i.us
  %.015.i.i.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i.i.i.us ], [ %i.at, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa ]
  %.01213.i.i.i.i.us.epil.init = phi ptr [ %i.ae, %.lr.ph.i.preheader.i.i.i.us ], [ %i.au, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.av = load i32, ptr %.01213.i.i.i.i.us.epil.init, align 4, !tbaa !31
  %i.aw = mul i32 %i.av, 1540483477               ; 2 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = xor i32 %i.ax, %i.aw
  %i.az = mul i32 %i.ay, 1540483477
  %i.ba = mul i32 %.015.i.i.i.i.us.epil.init, 1540483477
  %i.bb = xor i32 %i.az, %i.ba
  br label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us

_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us: ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa, %.lr.ph.i.i.i.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.at, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us.unr-lcssa ], [ %i.bb, %.lr.ph.i.i.i.i.us.epil.preheader ]
  %i.bc = zext i32 %.lcssa to i64
  %i.bd = and i64 %i.q, %i.bc                     ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us, %bb.c
  %.pr.i.us = phi i32 [ %i.bp, %bb.c ], [ %i.bf, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us ] ; 2 uses
  %.02311.i35.i.us = phi i64 [ %i.bn, %bb.c ], [ %i.bd, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us ]
  %.02212.i34.i.us = phi i64 [ %i.bl, %bb.c ], [ 0, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us ]
  %i.bh = zext i32 %.pr.i.us to i64
  %i.bi = mul i64 %6, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bi
  %bcmp.i.i.i.us = tail call i32 @bcmp(ptr %i.bj, ptr %i.ae, i64 %5)
  %i.bk = icmp eq i32 %bcmp.i.i.i.us, 0
  br i1 %i.bk, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.bl = add i64 %.02212.i34.i.us, 1             ; 3 uses
  %i.bm = add i64 %i.bl, %.02311.i35.i.us
  %i.bn = and i64 %i.bm, %i.q                     ; 3 uses
  %.not.i.i.us = icmp ule i64 %i.bl, %i.q
  tail call void @llvm.assume(i1 %.not.i.i.us)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us, label %.lr.ph.i.us

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us: ; preds = %bb.c, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us
  %.02311.i.lcssa33.i.us = phi i64 [ %i.bd, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.loopexit.i.i.i.us ], [ %i.bn, %bb.c ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.02311.i.lcssa33.i.us
  store i32 %i.y, ptr %i.br, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i.us

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i.us: ; preds = %.lr.ph.i.us, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us
  %i.bs = phi i32 [ %i.y, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i.us ], [ %.pr.i.us, %.lr.ph.i.us ] ; 2 uses
  store i32 %i.bs, ptr %i.aa, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i.us, %.lr.ph37.i.split.us
  %i.bt = phi i32 [ %i.bs, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i.us ], [ %i.ab, %.lr.ph37.i.split.us ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !31
  %i.bv = add nuw i64 %.036.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bv, %2
  br i1 %exitcond.not.i.us, label %.lr.ph.i9, label %.lr.ph37.i.split.us, !llvm.loop !64

.lr.ph37.i.split:                                 ; preds = %.lr.ph37.i, %bb.g
  %.036.i = phi i64 [ %i.cs, %bb.g ], [ 0, %.lr.ph37.i ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.036.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !31 ; 3 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !31 ; 2 uses
  %i.cb = icmp eq i32 %i.ca, -1
  br i1 %i.cb, label %_ZNK7meshopt12VertexHasher4hashEj.exit.i.i, label %bb.g

_ZNK7meshopt12VertexHasher4hashEj.exit.i.i:       ; preds = %.lr.ph37.i.split
  %i.cc = load i32, ptr %i.o, align 4, !tbaa !31  ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7meshopt12VertexHasher4hashEj.exit.i.i
  %8 = mul i64 %6, %i.by
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 %8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.pr.i = phi i32 [ %i.cc, %.lr.ph.i ], [ %i.cm, %bb.f ] ; 2 uses
  %.02311.i35.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ck, %bb.f ]
  %.02212.i34.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ci, %bb.f ]
  %i.ce = zext i32 %.pr.i to i64
  %i.cf = mul i64 %6, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 %i.cf
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.cg, ptr %9, i64 %5)
  %i.ch = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ch, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = add i64 %.02212.i34.i, 1                ; 3 uses
  %i.cj = add i64 %i.ci, %.02311.i35.i
  %i.ck = and i64 %i.cj, %i.q                     ; 3 uses
  %.not.i.i = icmp ule i64 %i.ci, %i.q
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !31 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %bb.e

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.f, %_ZNK7meshopt12VertexHasher4hashEj.exit.i.i
  %.02311.i.lcssa33.i = phi i64 [ 0, %_ZNK7meshopt12VertexHasher4hashEj.exit.i.i ], [ %i.ck, %bb.f ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.02311.i.lcssa33.i
  store i32 %i.bx, ptr %i.co, align 4, !tbaa !31
  br label %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %bb.e, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %i.cp = phi i32 [ %i.bx, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.pr.i, %bb.e ] ; 2 uses
  store i32 %i.cp, ptr %i.bz, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph37.i.split
  %i.cq = phi i32 [ %i.cp, %_ZN7meshoptL10hashLookupIjNS_12VertexHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.ca, %.lr.ph37.i.split ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !31
  %i.cs = add nuw i64 %.036.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %2
  br i1 %exitcond.not.i, label %.lr.ph.i9, label %.lr.ph37.i.split, !llvm.loop !64

.lr.ph.i9:                                        ; preds = %.noexc8, %bb.d, %bb.g
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28
  invoke void %i.ct(ptr noundef %i.cv)
          to label %.lr.ph.i9.1 unwind label %bb.h

.lr.ph.i9.1:                                      ; preds = %.lr.ph.i9
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.cx = load ptr, ptr %7, align 8, !tbaa !28
  invoke void %i.cw(ptr noundef %i.cx)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.h

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i9.1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret void

bb.h:                                             ; preds = %.lr.ph.i9.1, %.lr.ph.i9
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  tail call void @__clang_call_terminate(ptr %i.cz) #12
  unreachable

bb.i:                                             ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i, %bb.a
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  resume { ptr, i32 } %i.da
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_generateShadowIndexBufferMulti(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.meshopt_Allocator, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %6, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.b = icmp ugt i64 %3, 4611686018427387903
  %i.c = shl i64 %3, 2                            ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = invoke noundef ptr %i.a(i64 noundef %i.d)
          to label %.noexc unwind label %bb.k, !inline_history !65 ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i64 1, ptr %i.f, align 8, !tbaa !25
  store ptr %i.e, ptr %6, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 -1, i64 %i.c, i1 false)
  %i.g = lshr i64 %3, 2
  %i.h = add i64 %i.g, %3
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.noexc
  %.0.i.i = phi i64 [ 1, %.noexc ], [ %i.j, %bb.b ] ; 5 uses
  %i.i = icmp ult i64 %.0.i.i, %i.h
  %i.j = shl i64 %.0.i.i, 1
  br i1 %i.i, label %bb.b, label %_ZN7meshoptL11hashBucketsEm.exit.i, !llvm.loop !1

_ZN7meshoptL11hashBucketsEm.exit.i:               ; preds = %bb.b
  %i.k = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !30
  %i.l = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.m = shl i64 %.0.i.i, 2                       ; 2 uses
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = invoke noundef ptr %i.k(i64 noundef %i.n)
          to label %.noexc12 unwind label %bb.k, !inline_history !65 ; 7 uses

.noexc12:                                         ; preds = %_ZN7meshoptL11hashBucketsEm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 -1, i64 %i.m, i1 false)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %.lr.ph.i13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc12
  %i.q = add i64 %.0.i.i, -1                      ; 3 uses
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.e
  %.010.us.i = phi i64 [ %i.ac, %bb.e ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010.us.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !31   ; 3 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !31   ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %.thread.loopexit9.split.loop.exit11.i.us.i, label %bb.e

.thread.loopexit9.split.loop.exit11.i.us.i:       ; preds = %.lr.ph.split.us.i
  %i.x = load i32, ptr %i.o, align 4, !tbaa !31   ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.loopexit9.split.loop.exit11.i.us.i
  store i32 %i.s, ptr %i.o, align 4, !tbaa !31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread.loopexit9.split.loop.exit11.i.us.i
  %i.z = phi i32 [ %i.s, %bb.c ], [ %i.x, %.thread.loopexit9.split.loop.exit11.i.us.i ] ; 2 uses
  store i32 %i.z, ptr %i.u, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us.i
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.v, %.lr.ph.split.us.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.010.us.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !31
  %i.ac = add nuw i64 %.010.us.i, 1               ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond14.not.i, label %.lr.ph.i13, label %.lr.ph.split.us.i, !llvm.loop !66

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.i
  %.010.i = phi i64 [ %i.cy, %bb.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.010.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !31 ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !31 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %bb.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split.i, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i.i
  %.012.i.i.i = phi i32 [ %.0.lcssa.i.i.i.i, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i.i ], [ 0, %.lr.ph.split.i ] ; 3 uses
  %.01011.i.i.i = phi i64 [ %i.bw, %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %.01011.i.i.i ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !33 ; 4 uses
  %i.am = icmp ugt i64 %i.al, 3
  br i1 %i.am, label %.lr.ph.i.preheader.i.i.i, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !35
  %i.aq = mul i64 %i.ap, %i.af
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 3 uses
  %i.as = add i64 %i.al, -4                       ; 2 uses
  %i.at = and i64 %i.as, 4
  %lcmp.mod.not.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.prol, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.preheader.i.i.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !31
  %i.av = mul i32 %i.au, 1540483477               ; 2 uses
  %i.aw = lshr i32 %i.av, 24
  %i.ax = xor i32 %i.aw, %i.av
  %i.ay = mul i32 %i.ax, 1540483477
  %i.az = mul i32 %.012.i.i.i, 1540483477
  %i.ba = xor i32 %i.ay, %i.az                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bc = add i64 %i.al, -4
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i
  %.015.i.i.i.i.unr = phi i32 [ %.012.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.prol ]
  %.01114.i.i.i.i.unr = phi i64 [ %i.al, %.lr.ph.i.preheader.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.prol ]
  %.01213.i.i.i.i.unr = phi ptr [ %i.ar, %.lr.ph.i.preheader.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader.i.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.prol ]
  %i.bd = icmp ult i64 %i.as, 4
  br i1 %i.bd, label %_ZN7meshoptL11hashUpdate4EjPKhm.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
end_hunk_1
