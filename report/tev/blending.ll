Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/blending?download=true
inline.NumInlined: 78
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.jxl::AlphaBlendingInputLayer" = type { ptr, ptr, ptr, ptr }
%"struct.jxl::AlphaBlendingOutput" = type { ptr, ptr, ptr, ptr }
%"class.jxl::Plane" = type { %"struct.jxl::detail::PlaneBase" }
%"struct.jxl::detail::PlaneBase" = type { i32, i32, i32, i32, i64, %"class.jxl::AlignedMemory", i64 }
%"class.jxl::AlignedMemory" = type { ptr, ptr, ptr }
%"class.jxl::StatusOr" = type <{ %"union.jxl::StatusOr<jxl::Plane<float>>::Storage", i32, [4 x i8] }>
%"union.jxl::StatusOr<jxl::Plane<float>>::Storage" = type { %"class.jxl::Plane" }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN3jxl13NeedsBlendingERKNS_11FrameHeaderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(576) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  switch i32 %i.b, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %.not1820 = icmp eq ptr %i.g, %i.i
  br i1 %.not1820, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i1 [ %i.e, %bb.b ], [ %spec.select, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.k = load i8, ptr %i.j, align 8, !tbaa !45, !range !18, !noundef !19
  %1 = trunc nuw i8 %i.k to i1
  %.not19 = xor i1 %.0.lcssa, true
  %.011 = select i1 %1, i1 true, i1 %.not19
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i1 [ %spec.select, %.lr.ph ], [ %i.e, %bb.b ]
  %.sroa.015.021 = phi ptr [ %i.n, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42
  %.not14.a = icmp eq i32 %i.m, 0
  %spec.select = select i1 %.not14.a, i1 %.022, i1 false ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 40 ; 2 uses
  %.not18 = icmp eq ptr %i.n, %i.i
  br i1 %.not18, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.112 = phi i1 [ %.011, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.112
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl15PerformBlendingEP22JxlMemoryManagerStructPKPKfS5_PKPfmmRKNS_13PatchBlendingEPSA_RKNSt3__16vectorINS_16ExtraChannelInfoENSD_9allocatorISF_EEEE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8) local_unnamed_addr #2 {
bb.a:
  %9 = alloca %"struct.jxl::AlphaBlendingInputLayer", align 8 ; 7 uses
  %10 = alloca %"struct.jxl::AlphaBlendingInputLayer", align 8 ; 7 uses
  %11 = alloca %"struct.jxl::AlphaBlendingOutput", align 8 ; 7 uses
  %12 = alloca %"struct.jxl::AlphaBlendingInputLayer", align 8 ; 7 uses
  %13 = alloca %"struct.jxl::AlphaBlendingInputLayer", align 8 ; 7 uses
  %14 = alloca %"struct.jxl::AlphaBlendingOutput", align 8 ; 7 uses
  %15 = alloca %"class.jxl::Plane", align 8       ; 8 uses
  %16 = alloca %"class.jxl::StatusOr", align 8    ; 10 uses
  %17 = alloca %"class.jxl::Plane", align 8       ; 33 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = load ptr, ptr %8, align 8, !tbaa !78     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.not331 = icmp eq ptr %i.b, %i.c               ; 2 uses
  br i1 %.not331, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.093318 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.c, i64 %.093318
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !82
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  %i.l = add nuw i64 %.093318, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %i.g
  %or.cond556 = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond556, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.k, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #7
  %i.m = add nsw i64 %i.g, 3                      ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.n = icmp ult i64 %5, 4294967296
  %i.o = icmp ult i64 %i.m, 4294967296
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  %i.p = trunc nuw i64 %i.m to i32
  %i.q = trunc nuw i64 %5 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #7, !noalias !84
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef %i.q, i32 noundef %i.p, i64 noundef 4) #8, !noalias !84
  %i.r = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef %0, i64 noundef 0) #8, !noalias !84 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 3 uses
  br i1 %i.s, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.r, ptr %i.t, align 8, !tbaa !87, !alias.scope !84
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.b
  store i32 0, ptr %i.t, align 8, !tbaa !87, !alias.scope !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %16, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !91, !noalias !84
  store i64 %i.y, ptr %i.w, align 8, !tbaa !91, !alias.scope !84
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.c, %.critedge.i
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #7, !noalias !84
  %.pre = load i32, ptr %i.t, align 8, !tbaa !87  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.ab = icmp eq i32 %.pre, 0
  br i1 %i.ab, label %bb.d, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit

bb.d:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #7
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(60) %16, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !91, !noalias !92
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !91, !alias.scope !92
  br i1 %.not331, label %._crit_edge326, label %.lr.ph325

.lr.ph325:                                        ; preds = %bb.d
  %.not96 = icmp eq i64 %5, 0                     ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.aj = shl nuw nsw i64 %5, 2                   ; 2 uses
  %min.iters.check = icmp ult i64 %5, 8
  %i.ak = shl i64 %4, 2
  %n.vec = and i64 %5, 4294967288                 ; 3 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.e

._crit_edge326:                                   ; preds = %.loopexit, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !95
  %i.an = zext i32 %i.am to i64                   ; 10 uses
  %i.ao = load i8, ptr %6, align 4, !tbaa !96
  switch i8 %i.ao, label %"_ZZN3jxl15PerformBlendingEP22JxlMemoryManagerStructPKPKfS5_PKPfmmRKNS_13PatchBlendingEPSA_RKNSt3__16vectorINS_16ExtraChannelInfoENSD_9allocatorISF_EEEEENK3$_0clEv.exit" [
    i8 2, label %bb.o
    i8 6, label %bb.p
    i8 7, label %bb.s
    i8 4, label %bb.v
    i8 5, label %bb.y
    i8 3, label %.preheader
    i8 1, label %bb.ab
    i8 0, label %bb.ac
  ]

.preheader:                                       ; preds = %._crit_edge326
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !98
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %4
  %i.au = load ptr, ptr %2, align 8, !tbaa !98
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %4
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !99 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aw, i64 64) ]
  %i.ax = load i8, ptr %i.ar, align 4, !tbaa !100, !range !18, !noundef !19
  %i.ay = trunc nuw i8 %i.ax to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.at, ptr noundef %i.av, ptr noundef %i.aw, i64 noundef %5, i1 noundef zeroext %i.ay) #8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !98
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %4
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %4
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !99
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !101
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bh, i64 64) ]
  %i.bi = load i8, ptr %i.ar, align 4, !tbaa !100, !range !18, !noundef !19
  %i.bj = trunc nuw i8 %i.bi to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.bb, ptr noundef %i.be, ptr noundef %i.bh, i64 noundef %5, i1 noundef zeroext %i.bj) #8
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !98
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %4
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !99
  %i.br = load i64, ptr %i.aq, align 8, !tbaa !101
  %i.bs = shl i64 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bt, i64 64) ]
  %i.bu = load i8, ptr %i.ar, align 4, !tbaa !100, !range !18, !noundef !19
  %i.bv = trunc nuw i8 %i.bu to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %i.bt, i64 noundef %5, i1 noundef zeroext %i.bv) #8
  br label %"_ZZN3jxl15PerformBlendingEP22JxlMemoryManagerStructPKPKfS5_PKPfmmRKNS_13PatchBlendingEPSA_RKNSt3__16vectorINS_16ExtraChannelInfoENSD_9allocatorISF_EEEEENK3$_0clEv.exit"

bb.e:                                             ; preds = %.lr.ph325, %.loopexit
  %.094323 = phi i64 [ 0, %.lr.ph325 ], [ %i.ix, %.loopexit ] ; 10 uses
  %i.bw = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %.094323 ; 10 uses
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !96
  switch i8 %i.bx, label %.loopexit [
    i8 2, label %.preheader317
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 3, label %bb.j
    i8 1, label %bb.k
    i8 0, label %bb.m
  ]

.preheader317:                                    ; preds = %bb.e
  br i1 %.not96, label %.loopexit, label %.lr.ph322

.lr.ph322:                                        ; preds = %.preheader317
  %i.by = add i64 %.094323, 3                     ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !98 ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.by
end_hunk_0
