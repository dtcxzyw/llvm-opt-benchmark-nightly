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
  %i.l = trunc nuw i8 %i.k to i1
  %.not19 = xor i1 %.0.lcssa, true
  %.011 = select i1 %i.l, i1 true, i1 %.not19
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.022 = phi i1 [ %spec.select, %.lr.ph ], [ %i.e, %bb.b ]
  %.sroa.015.021 = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !42
  %.not14 = icmp eq i32 %i.n, 0
  %spec.select = select i1 %.not14, i1 %.022, i1 false ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.021, i64 40 ; 2 uses
  %.not18 = icmp eq ptr %i.o, %i.i
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
  %18 = shl i64 %4, 2                             ; 2 uses
  %min.iters.check = icmp ult i64 %5, 8
  %n.vec = and i64 %5, 4294967288                 ; 3 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.e

._crit_edge326:                                   ; preds = %.loopexit, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !95
  %i.am = zext i32 %i.al to i64                   ; 10 uses
  %i.an = load i8, ptr %6, align 4, !tbaa !96
  switch i8 %i.an, label %"_ZZN3jxl15PerformBlendingEP22JxlMemoryManagerStructPKPKfS5_PKPfmmRKNS_13PatchBlendingEPSA_RKNSt3__16vectorINS_16ExtraChannelInfoENSD_9allocatorISF_EEEEENK3$_0clEv.exit" [
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
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !98
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %4
  %i.at = load ptr, ptr %2, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %4
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !99 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.av, i64 64) ]
  %i.aw = load i8, ptr %i.aq, align 4, !tbaa !100, !range !18, !noundef !19
  %i.ax = trunc nuw i8 %i.aw to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.av, i64 noundef %5, i1 noundef zeroext %i.ax) #8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !98
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %4
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.bf = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bg, i64 64) ]
  %i.bh = load i8, ptr %i.aq, align 4, !tbaa !100, !range !18, !noundef !19
  %i.bi = trunc nuw i8 %i.bh to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.ba, ptr noundef %i.bd, ptr noundef %i.bg, i64 noundef %5, i1 noundef zeroext %i.bi) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !98
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !98
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %4
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !101
  %i.br = shl i64 %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bs, i64 64) ]
  %i.bt = load i8, ptr %i.aq, align 4, !tbaa !100, !range !18, !noundef !19
  %i.bu = trunc nuw i8 %i.bt to i1
  call void @_ZN3jxl18PerformMulBlendingEPKfS1_Pfmb(ptr noundef %i.bl, ptr noundef %i.bo, ptr noundef %i.bs, i64 noundef %5, i1 noundef zeroext %i.bu) #8
  br label %"_ZZN3jxl15PerformBlendingEP22JxlMemoryManagerStructPKPKfS5_PKPfmmRKNS_13PatchBlendingEPSA_RKNSt3__16vectorINS_16ExtraChannelInfoENSD_9allocatorISF_EEEEENK3$_0clEv.exit"

bb.e:                                             ; preds = %.lr.ph325, %.loopexit
  %.094323 = phi i64 [ 0, %.lr.ph325 ], [ %i.iv, %.loopexit ] ; 10 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %7, i64 %.094323 ; 10 uses
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !96
  switch i8 %i.bw, label %.loopexit [
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
  %i.bx = add i64 %.094323, 3                     ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !98 ; 5 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !98 ; 5 uses
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 2 uses
  %i.cd = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.ce = mul i64 %i.cd, %i.bx                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph322
  %i.cg = ptrtoaddr ptr %i.cc to i64
  %i.ch = ptrtoaddr ptr %i.cb to i64
  %i.ci = ptrtoaddr ptr %i.bz to i64
  %19 = add i64 %i.ce, %i.cg                      ; 2 uses
  %i.cj = add i64 %18, %i.ci
  %i.ck = sub i64 %i.cj, %19
  %diff.check = icmp ugt i64 %i.ck, -32
  %20 = add i64 %18, %i.ch
  %i.cl = sub i64 %20, %19
  %diff.check354 = icmp ugt i64 %i.cl, -32
  %conflict.rdx = or i1 %diff.check, %diff.check354
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cm = add i64 %index, %4                      ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !tbaa !102
  %wide.load355 = load <4 x float>, ptr %i.co, align 4, !tbaa !102
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cm ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load356 = load <4 x float>, ptr %i.cp, align 4, !tbaa !102
  %wide.load357 = load <4 x float>, ptr %i.cq, align 4, !tbaa !102
  %i.cr = fadd <4 x float> %wide.load, %wide.load356
  %i.cs = fadd <4 x float> %wide.load355, %wide.load357
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x float> %i.cr, ptr %i.ct, align 32, !tbaa !102
  store <4 x float> %i.cs, ptr %i.cu, align 16, !tbaa !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph322, %middle.block
  %.095321.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph322 ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.095321.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cw = add i64 %.095321.ph, %4                 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !102
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cw
  %i.da = load float, ptr %i.cz, align 4, !tbaa !102
  %i.db = fadd float %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.095321.ph
  store float %i.db, ptr %i.dc, align 32, !tbaa !102
  %i.dd = or disjoint i64 %.095321.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.095321.unr = phi i64 [ %.095321.ph, %scalar.ph.preheader ], [ %i.dd, %scalar.ph.prol ]
  %i.de = icmp eq i64 %5, %.neg
  br i1 %i.de, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.095321 = phi i64 [ %i.du, %scalar.ph ], [ %.095321.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.df = add i64 %.095321, %4                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !102
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.df
  %i.dj = load float, ptr %i.di, align 4, !tbaa !102
  %i.dk = fadd float %i.dh, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.095321
  store float %i.dk, ptr %i.dl, align 4, !tbaa !102
  %i.dm = add nuw i64 %.095321, 1                 ; 2 uses
  %i.dn = add i64 %i.dm, %4                       ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !102
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dn
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !102
  %i.ds = fadd float %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dm
  store float %i.ds, ptr %i.dt, align 4, !tbaa !102
  %i.du = add nuw i64 %.095321, 2                 ; 2 uses
  %exitcond338.not.1 = icmp eq i64 %i.du, %5
  br i1 %exitcond338.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !52

bb.f:                                             ; preds = %bb.e
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !95
  %i.dx = zext i32 %i.dw to i64                   ; 2 uses
  %i.dy = load ptr, ptr %8, align 8, !tbaa !78
  %i.dz = getelementptr inbounds nuw [96 x i8], ptr %i.dy, i64 %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 72
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !105, !range !18, !noundef !19
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = add i64 %.094323, 3                     ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !98
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %4
  %i.eh = add nuw nsw i64 %i.dx, 3                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !98
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %4
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ed
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !98
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %4
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.eh
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %4
  %i.er = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.es = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.et = mul i64 %i.es, %i.ed
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eu, i64 64) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !100, !range !18, !noundef !19
  %i.ex = trunc nuw i8 %i.ew to i1
  call void @_ZN3jxl20PerformAlphaBlendingEPKfS1_S1_S1_Pfmbb(ptr noundef %i.eg, ptr noundef %i.ek, ptr noundef %i.en, ptr noundef %i.eq, ptr noundef %i.eu, i64 noundef %5, i1 noundef zeroext %i.ec, i1 noundef zeroext %i.ex) #8
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !95
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = load ptr, ptr %8, align 8, !tbaa !78
  %i.fc = getelementptr inbounds nuw [96 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 72
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !105, !range !18, !noundef !19
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = add i64 %.094323, 3                     ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !98
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %4
  %i.fk = add nuw nsw i64 %i.fa, 3                ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !98
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %4
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fg
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !98
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fk
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !98
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %4
  %i.fu = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.fv = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.fw = mul i64 %i.fv, %i.fg
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fx, i64 64) ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.fz = load i8, ptr %i.fy, align 4, !tbaa !100, !range !18, !noundef !19
  %i.ga = trunc nuw i8 %i.fz to i1
  call void @_ZN3jxl20PerformAlphaBlendingEPKfS1_S1_S1_Pfmbb(ptr noundef %i.fj, ptr noundef %i.fn, ptr noundef %i.fq, ptr noundef %i.ft, ptr noundef %i.fx, i64 noundef %5, i1 noundef zeroext %i.ff, i1 noundef zeroext %i.ga) #8
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !95
  %i.gd = zext i32 %i.gc to i64
  %i.ge = add i64 %.094323, 3                     ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !98
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %4
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ge
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !98
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %4
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gd
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !98
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %4
  %i.gp = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.gq = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.gr = mul i64 %i.gq, %i.ge
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gr ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gs, i64 64) ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.gu = load i8, ptr %i.gt, align 4, !tbaa !100, !range !18, !noundef !19
  %i.gv = trunc nuw i8 %i.gu to i1
  call void @_ZN3jxl23PerformAlphaWeightedAddEPKfS1_S1_Pfmb(ptr noundef %i.gh, ptr noundef %i.gk, ptr noundef %i.go, ptr noundef %i.gs, i64 noundef %5, i1 noundef zeroext %i.gv) #8
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !95
  %i.gy = zext i32 %i.gx to i64
  %i.gz = add i64 %.094323, 3                     ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !98
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %4
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gz
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !98
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %4
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.gy
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !98
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %4
  %i.hk = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.hl = load i64, ptr %i.ai, align 8, !tbaa !101
  %i.hm = mul i64 %i.hl, %i.gz
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.hn, i64 64) ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.hp = load i8, ptr %i.ho, align 4, !tbaa !100, !range !18, !noundef !19
  %i.hq = trunc nuw i8 %i.hp to i1
  call void @_ZN3jxl23PerformAlphaWeightedAddEPKfS1_S1_Pfmb(ptr noundef %i.hc, ptr noundef %i.hf, ptr noundef %i.hj, ptr noundef %i.hn, i64 noundef %5, i1 noundef zeroext %i.hq) #8
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.hr = add i64 %.094323, 3                     ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hr
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !98
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %4
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hr
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !98
end_hunk_0
