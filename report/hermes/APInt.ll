inline.NumInlined: 1495
inline.NumDeleted: 233
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvh::APInt" = type <{ %union.anon, i32, [4 x i8] }>
%union.anon = type { i64 }
%"struct.llvh::APInt::ms" = type { %"class.llvh::APInt", i32, [4 x i8] }
%"struct.llvh::APInt::mu" = type { %"class.llvh::APInt", i8, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.3 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.3 = type { i64, [8 x i8] }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector.4" }
%"class.llvh::SmallVector.4" = type { %"class.llvh::SmallVectorImpl.0", %"struct.llvh::SmallVectorStorage.5" }
%"class.llvh::SmallVectorImpl.0" = type { %"class.llvh::SmallVectorTemplateBase.1" }
%"class.llvh::SmallVectorTemplateBase.1" = type { %"class.llvh::SmallVectorTemplateCommon.2" }
%"class.llvh::SmallVectorTemplateCommon.2" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.5" = type { [40 x %"struct.llvh::AlignedCharArrayUnion.6"] }
%"struct.llvh::AlignedCharArrayUnion.6" = type { %"struct.llvh::AlignedCharArray.7" }
%"struct.llvh::AlignedCharArray.7" = type { [1 x i8] }
%"class.llvh::Optional" = type { %"struct.llvh::optional_detail::OptionalStorage" }
%"struct.llvh::optional_detail::OptionalStorage" = type { %"struct.llvh::AlignedCharArrayUnion.8", i8, [7 x i8] }
%"struct.llvh::AlignedCharArrayUnion.8" = type { %"struct.llvh::AlignedCharArray.9" }
%"struct.llvh::AlignedCharArray.9" = type { [16 x i8] }

$_ZN4llvh5APIntC2Ejmb = comdat any

$_ZN4llvh5APIntaSERKS0_ = comdat any

$_ZNK4llvh5APInt3absEv = comdat any

$_ZNK4llvh5APInt3shlERKS0_ = comdat any

$_ZN4llvh7hashing6detail10hash_shortEPKcmm = comdat any

$_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_ = comdat any

$_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

$_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = comdat any

@_ZZNK4llvh5APInt4sqrtEvE7results = internal unnamed_addr constant [32 x i8] c"\00\01\01\02\02\02\02\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\06", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@_ZZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbbE6Digits = internal unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden local_unnamed_addr global i64 0, comdat, align 8
@_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed = linkonce_odr hidden global i64 0, comdat, align 8
@_ZN4llvh7hashing6detail19fixed_seed_overrideE = external local_unnamed_addr global i64, align 8
@_ZN4llvhL18BitReverseTable256E = internal unnamed_addr constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16
@switch.table._ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb = private unnamed_addr constant [15 x ptr] [ptr @.str.1, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.2, ptr poison, ptr @.str, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.3], align 8

@_ZN4llvh5APIntC1EjNS_8ArrayRefImEE = hidden unnamed_addr alias void (ptr, i32, ptr, i64), ptr @_ZN4llvh5APIntC2EjNS_8ArrayRefImEE
@_ZN4llvh5APIntC1EjjPKm = hidden unnamed_addr alias void (ptr, i32, i32, ptr), ptr @_ZN4llvh5APIntC2EjjPKm
@_ZN4llvh5APIntC1EjNS_9StringRefEh = hidden unnamed_addr alias void (ptr, i32, ptr, i64, i8), ptr @_ZN4llvh5APIntC2EjNS_9StringRefEh

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5APInt12initSlowCaseEmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 6                         ; 4 uses
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  store ptr %i.g, ptr %0, align 8, !tbaa !9
  store i64 %1, ptr %i.g, align 8, !tbaa !10
  %i.h = icmp slt i64 %1, 0
  %or.cond = and i1 %2, %i.h
  %i.i = icmp ugt i32 %i.b, 64
  %or.cond8 = and i1 %or.cond, %i.i
  br i1 %or.cond8, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = add nsw i64 %i.e, -1                     ; 2 uses
  %i.k = add nsw i64 %i.e, -2
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store i64 -1, ptr %i.n, align 8, !tbaa !10
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 -1, ptr %i.q, align 8, !tbaa !10
  %i.r = load ptr, ptr %0, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 -1, ptr %i.t, align 8, !tbaa !10
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 -1, ptr %i.w, align 8, !tbaa !10
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.thread.unr-lcssa, label %.lr.ph, !llvm.loop !12

.loopexit.thread.unr-lcssa:                       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.thread.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil
  store i64 -1, ptr %i.y, align 8, !tbaa !10
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.thread, label %.lr.ph.epil, !llvm.loop !14

.loopexit.thread:                                 ; preds = %.lr.ph.epil, %.loopexit.thread.unr-lcssa
  %i.z = sub i32 0, %i.b
  %i.aa = and i32 %i.z, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 -1, %i.ab
  br label %bb.c

.loopexit:                                        ; preds = %bb.a
  %i.ad = sub i32 0, %i.b
  %i.ae = and i32 %i.ad, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 -1, %i.af                      ; 2 uses
  %i.ah = icmp ult i32 %i.b, 65
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ai = load i64, ptr %0, align 8, !tbaa !9
  %i.aj = and i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

bb.c:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.ak = phi i64 [ %i.ac, %.loopexit.thread ], [ %i.ag, %.loopexit ]
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = add nuw nsw i64 %i.e, 4294967295
  %i.an = and i64 %i.am, 4294967295
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10
  %i.aq = and i64 %i.ap, %i.ak
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !10
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5APInt12initSlowCaseERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 63
  %i.e = lshr i64 %i.d, 3
  %i.f = and i64 %i.e, 1073741816                 ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #22 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !9
  %i.h = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.h, i64 %i.f, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 4 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !10
  %i.e = sub nsw i32 0, %i.b
  %i.f = and i32 %i.e, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 -1, %i.g
  %i.i = and i64 %i.d, %i.h
  store i64 %i.i, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %i.b to i64
  %i.k = add nuw nsw i64 %i.j, 63
  %i.l = lshr i64 %i.k, 6                         ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.n, i1 false)
  store ptr %i.o, ptr %0, align 8, !tbaa !9
  %i.p = trunc i64 %2 to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.m, i32 %i.p)
  %i.q = shl nuw nsw i32 %.sroa.speculated, 3
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %1, i64 %i.r, i1 false)
  %i.s = sub i32 0, %i.b
  %i.t = and i32 %i.s, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = lshr i64 -1, %i.u
  %i.w = add nuw nsw i64 %i.l, 4294967295
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = and i64 %i.z, %i.v
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !10
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5APIntC2EjNS_8ArrayRefImEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = icmp ult i32 %1, 65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !10
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f
  %i.h = and i64 %i.c, %i.g
  store i64 %i.h, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = zext i32 %1 to i64
  %i.j = add nuw nsw i64 %i.i, 63
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  store ptr %i.n, ptr %0, align 8, !tbaa !9
  %i.o = trunc i64 %3 to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.l, i32 %i.o)
  %i.p = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.q = zext nneg i32 %i.p to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr readonly align 8 %2, i64 %i.q, i1 false)
  %i.r = sub i32 0, %1
  %i.s = and i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t
  %i.v = add nuw nsw i64 %i.k, 4294967295
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = and i64 %i.y, %i.u
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  br label %_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE.exit

_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh5APIntC2EjjPKm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = icmp ult i32 %1, 65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !10
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
  %i.f = zext nneg i32 %i.e to i64
  %i.g = lshr i64 -1, %i.f
  %i.h = and i64 %i.c, %i.g
  store i64 %i.h, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN4llvh5APIntmIEm:bb.a
  %.not.peel.i = icmp ugt i64 %1, %i.o
  br i1 %.not.peel.i, label %.lr.ph.i, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 2 uses
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !10
  %.not.i = icmp ne i64 %i.r, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  %or.cond = select i1 %.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread, label %.lr.ph.i, !llvm.loop !24

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread:  ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.pn.in.in = sub i32 0, %i.b
  %.pn.in = and i32 %.pn.in.in, 63
  %.pn = zext nneg i32 %.pn.in to i64
  %i.t = lshr i64 -1, %.pn
  %i.u = load ptr, ptr %0, align 8, !tbaa !9
  %i.v = add nuw nsw i64 %i.n, 4294967295
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = and i64 %i.y, %i.t
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 0, 2) i64 @_ZN4llvh5APInt14tcSubtractPartEPmmj(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %2 to i64
  %i.a = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = sub i64 %i.a, %1
  store i64 %i.b, ptr %0, align 8, !tbaa !10
  %.not.peel = icmp ugt i64 %1, %i.a
  br i1 %.not.peel, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.preheader
  %exitcond.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !10
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c, %.lr.ph.preheader, %bb.b, %bb.a
  %i.f = phi i64 [ 1, %bb.a ], [ 0, %.lr.ph.preheader ], [ 1, %bb.b ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i64 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APIntmlERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %_ZN4llvh5APIntC2Ejmb.exit, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !9
  %i.e = load i64, ptr %2, align 8, !tbaa !9
  %i.f = mul i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.g, align 8, !tbaa !7
  %i.h = sub nsw i32 0, %i.b
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = and i64 %i.f, %i.k
  store i64 %i.l, ptr %0, align 8, !tbaa !9
  br label %bb.b

_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i:          ; preds = %bb.a
  %i.m = zext i32 %i.b to i64
  %i.n = add nuw nsw i64 %i.m, 63
  %i.o = lshr i64 %i.n, 6                         ; 4 uses
  %i.p = trunc nuw nsw i64 %i.o to i32            ; 2 uses
  %i.q = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #22 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.s, align 8, !tbaa !7
  store ptr %i.r, ptr %0, align 8, !tbaa !9
  %i.t = load ptr, ptr %1, align 8, !tbaa !9
  %i.u = load ptr, ptr %2, align 8, !tbaa !9
  store i64 0, ptr %i.r, align 8, !tbaa !10
  %scevgep.i.i = getelementptr i8, ptr %i.r, i64 8
  %i.v = add nuw nsw i64 %i.q, 34359738360
  %i.w = and i64 %i.v, 34359738360
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 0, i64 %i.w, i1 false), !tbaa !10
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i
  %indvars.iv.i = phi i64 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit.thread.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = trunc i64 %indvars.iv.i to i32
  %i.ab = sub i32 %i.p, %i.aa
  %i.ac = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.x, ptr noundef readonly %i.t, i64 noundef %i.z, i64 noundef 0, i32 noundef %i.p, i32 noundef %i.ab, i1 noundef zeroext true) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit, label %.lr.ph.i, !llvm.loop !27

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %.lr.ph.i
  %i.ad = sub i32 0, %i.b
  %i.ae = and i32 %i.ad, 63
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 -1, %i.af
  %i.ah = add nuw nsw i64 %i.o, 4294967295
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = and i64 %i.ak, %i.ag
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit, %_ZN4llvh5APIntC2Ejmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = icmp ult i32 %1, 65
  br i1 %i.b, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit, label %bb.b

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.a
  %i.c = sub nsw i32 0, %1
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = lshr i64 -1, %i.e
  %i.g = and i64 %i.f, %2
  store i64 %i.g, ptr %0, align 8, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %1 to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 4 uses
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  store i64 %2, ptr %i.l, align 8, !tbaa !10
  %i.m = icmp slt i64 %2, 0
  %or.cond.i = and i1 %3, %i.m
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %_ZN4llvh5APInt12initSlowCaseEmb.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.n = add nsw i64 %i.j, -1                     ; 2 uses
  %i.o = add nsw i64 %i.j, -2
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  store i64 -1, ptr %i.r, align 8, !tbaa !10
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 -1, ptr %i.u, align 8, !tbaa !10
  %i.v = load ptr, ptr %0, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 -1, ptr %i.x, align 8, !tbaa !10
  %i.y = load ptr, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 -1, ptr %i.aa, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ab = load ptr, ptr %0, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.epil
  store i64 -1, ptr %i.ac, align 8, !tbaa !10
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !28

_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit:    ; preds = %.lr.ph.i.epil, %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit.unr-lcssa
  %.pre = load ptr, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt12initSlowCaseEmb.exit

_ZN4llvh5APInt12initSlowCaseEmb.exit:             ; preds = %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit, %bb.b
  %i.ad = phi ptr [ %.pre, %_ZN4llvh5APInt12initSlowCaseEmb.exit.loopexit ], [ %i.l, %bb.b ]
  %.pn.in.in = sub i32 0, %1
  %.pn.in = and i32 %.pn.in.in, 63
  %.pn = zext nneg i32 %.pn.in to i64
  %i.ae = lshr i64 -1, %.pn
  %i.af = add nuw nsw i64 %i.j, 4294967295
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !10
  %i.aj = and i64 %i.ai, %i.ae
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh5APInt12initSlowCaseEmb.exit, %_ZN4llvh5APInt15clearUnusedBitsEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh5APInt10tcMultiplyEPmPKmS3_j(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !10
  %i.a = icmp ugt i32 %3, 1
  br i1 %i.a, label %_ZN4llvh5APInt5tcSetEPmmj.exit.thread, label %_ZN4llvh5APInt5tcSetEPmmj.exit

_ZN4llvh5APInt5tcSetEPmmj.exit.thread:            ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %0, i64 8
  %i.b = add i32 %3, -1
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.d, i1 false), !tbaa !10
  br label %.lr.ph.preheader

_ZN4llvh5APInt5tcSetEPmmj.exit:                   ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4llvh5APInt5tcSetEPmmj.exit.thread, %_ZN4llvh5APInt5tcSetEPmmj.exit
  %i.e = zext i32 %3 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvh5APInt5tcSetEPmmj.exit
  %.014.lcssa = phi i32 [ 0, %_ZN4llvh5APInt5tcSetEPmmj.exit ], [ %i.l, %.lr.ph ]
  ret i32 %.014.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.01416 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.l, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = trunc i64 %indvars.iv to i32
  %i.j = sub i32 %3, %i.i
  %i.k = tail call noundef i32 @_ZN4llvh5APInt14tcMultiplyPartEPmPKmmmjjb(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %i.h, i64 noundef 0, i32 noundef %3, i32 noundef %i.j, i1 noundef zeroext true)
  %i.l = or i32 %i.k, %.01416                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt17AndAssignSlowCaseERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !9      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 7 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4llvh5APInt5tcAndEPmPKmj.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.d, 449
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.h
  %scevgep2 = getelementptr i8, ptr %i.b, i64 %i.h
  %bound0 = icmp ult ptr %i.a, %scevgep2
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !10, !alias.scope !29
  %wide.load3 = load <2 x i64>, ptr %i.j, align 8, !tbaa !10, !alias.scope !29
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %wide.load4 = load <2 x i64>, ptr %i.k, align 8, !tbaa !10, !alias.scope !32, !noalias !29
  %wide.load5 = load <2 x i64>, ptr %i.l, align 8, !tbaa !10, !alias.scope !32, !noalias !29
  %i.m = and <2 x i64> %wide.load4, %wide.load
  %i.n = and <2 x i64> %wide.load5, %wide.load3
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !10, !alias.scope !32, !noalias !29
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !10, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APInt5tcAndEPmPKmj.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader6 ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.prol
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.prol ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !10
  %i.t = and i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !35

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader6 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.u = sub nsw i64 %indvars.iv.i.ph, %i.g
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %_ZN4llvh5APInt5tcAndEPmPKmj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !10
  %i.aa = and i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10
  %i.af = and i64 %i.ae, %i.ac
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !10
  %i.ak = and i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !10
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.2
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = and i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.g
  br i1 %exitcond.not.i.3, label %_ZN4llvh5APInt5tcAndEPmPKmj.exit, label %.lr.ph.i, !llvm.loop !36

_ZN4llvh5APInt5tcAndEPmPKmj.exit:                 ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
end_hunk_1
begin_hunk_2_@_ZNK4llvh5APInt4rotlEj:bb.a
  %i.al = sext i32 %i.ak to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.s, i64 %i.al ; 3 uses
  %i.am = add nsw i32 %i.v, -2
  %xtraiter = and i32 %i.ad, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.an = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.ao = lshr i64 %i.an, %i.ac
  %i.ap = or i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.u, -2  ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.aq = sub nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = shl i64 %i.at, %i.aa                    ; 2 uses
  %i.av = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.av ; 2 uses
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.ai, %.lr.ph.preheader.i ], [ %i.aw, %.lr.ph.i.prol ]
  %.unr33 = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.au, %.lr.ph.i.prol ]
  %i.ax = icmp eq i32 %i.am, %.sroa.speculated.i.i
  br i1 %i.ax, label %.loopexit29, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ay = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ay
  %i.ba = sub nsw i32 %i.v, %.sroa.speculated.i.i
  %i.bb = shl nsw i32 %i.ba, 3
  %i.bc = zext i32 %i.bb to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.s, i64 %i.bc, i1 false)
  br label %.loopexit29

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bd = phi ptr [ %i.by, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.be = phi i64 [ %i.bw, %.lr.ph.i ], [ %.unr33, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bf = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.bg = lshr i64 %i.bf, %i.ac
  %i.bh = or i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bd, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.bi = sub i32 %indvars.i, %.sroa.speculated.i.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = shl i64 %i.bl, %i.aa                    ; 2 uses
  %i.bn = and i64 %indvars.iv.next.i, 4294967295
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bn ; 2 uses
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.bp = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.bq = lshr i64 %i.bp, %i.ac
  %i.br = or i64 %i.bq, %i.bm
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.bs = sub i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = shl i64 %i.bv, %i.aa                    ; 2 uses
  %i.bx = and i64 %indvars.iv.next.i.1, 4294967295
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bx ; 2 uses
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !10
  %i.bz = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.bz, label %.lr.ph.i, label %.loopexit29

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.e
  %i.ca = load i64, ptr %1, align 8               ; 2 uses
  %i.cb = zext nneg i32 %i.c to i64
  %i.cc = shl i64 %i.ca, %i.cb
  %i.cd = sub nsw i32 0, %i.b
  %i.ce = and i32 %i.cd, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = lshr i64 -1, %i.cf
  %i.ch = and i64 %i.cc, %i.cg
  %i.ci = sub nsw i32 %i.b, %i.c
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ca, %i.cj
  %i.cl = or i64 %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cm, align 8, !tbaa !7, !alias.scope !98
  store i64 %i.cl, ptr %0, align 8, !alias.scope !98
  br label %_ZN4llvh5APIntC2ERKS0_.exit

.loopexit29:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %.lr.ph.i.i, %.preheader.i.i
  %i.cn = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.co = zext nneg i32 %i.cn to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.co, i1 false)
  %i.cp = sub i32 0, %i.b
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 -1, %i.cr
  %i.ct = add nuw nsw i64 %i.u, 4294967295
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = and i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !10
  %i.cy = sub i32 %i.b, %i.c                      ; 2 uses
  %i.cz = zext i32 %i.b to i64
  %i.da = add nuw nsw i64 %i.cz, 63               ; 2 uses
  %i.db = lshr i64 %i.da, 3
  %i.dc = and i64 %i.db, 1073741816               ; 2 uses
  %i.dd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dc) #22, !noalias !101 ; 20 uses
  %i.de = ptrtoint ptr %i.dd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.t, i64 %i.dc, i1 false), !noalias !101
  %i.df = lshr i64 %i.da, 6                       ; 2 uses
  %i.dg = trunc nuw nsw i64 %i.df to i32          ; 3 uses
  %i.dh = lshr i32 %i.cy, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 %i.dh) ; 9 uses
  %i.di = and i32 %i.cy, 63                       ; 3 uses
  %i.dj = sub nsw i32 %i.dg, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.dk = icmp eq i32 %i.di, 0
  br i1 %i.dk, label %bb.h, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.loopexit29
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.dh, %i.dg
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.dl = zext nneg i32 %i.di to i64              ; 4 uses
  %i.dm = sub nuw nsw i32 64, %i.di
  %i.dn = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.do = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10, !noalias !101
  %i.dr = lshr i64 %i.dq, %i.dl                   ; 3 uses
  store i64 %i.dr, ptr %i.dd, align 8, !tbaa !10, !noalias !101
  %.not32.i1.i.i.i = icmp eq i32 %i.dj, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ds = zext i32 %i.dj to i64
  %i.dt = add nsw i64 %i.ds, -1                   ; 3 uses
  %xtraiter34 = and i64 %i.dt, 1
  %i.du = icmp eq i32 %i.dj, 2
  br i1 %i.du, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.dt, -2
  br label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.loopexit29
  %i.dv = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dv
  %i.dx = shl nsw i32 %i.dj, 3
  %i.dy = zext i32 %i.dx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dw, i64 %i.dy, i1 false), !noalias !101
  br label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.dz = phi ptr [ %i.dd, %.lr.ph.i.i.i.preheader.new ], [ %i.fb, %.lr.ph.i.i.i ]
  %i.ea = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader.new ], [ %i.fa, %.lr.ph.i.i.i ]
  %i.eb = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.ew, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ec = add i32 %i.eb, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !10, !noalias !101
  %i.eg = shl i64 %i.ef, %i.dn
  %i.eh = or i64 %i.eg, %i.ea
  store i64 %i.eh, ptr %i.dz, align 8, !tbaa !10, !noalias !101
  %i.ei = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.ej = add i32 %.sroa.speculated.i.i.i.i, %i.ei ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !10, !noalias !101
  %i.en = lshr i64 %i.em, %i.dl                   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !10, !noalias !101
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.ep = add i32 %i.ej, 1
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10, !noalias !101
  %i.et = shl i64 %i.es, %i.dn
  %i.eu = or i64 %i.et, %i.en
  store i64 %i.eu, ptr %i.eo, align 8, !tbaa !10, !noalias !101
  %i.ev = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.ew = add i32 %.sroa.speculated.i.i.i.i, %i.ev ; 3 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !10, !noalias !101
  %i.fa = lshr i64 %i.ez, %i.dl                   ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !10, !noalias !101
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i
  %lcmp.mod40.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod40.not, label %.loopexit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.dd, %.lr.ph.i.i.i.preheader ], [ %i.fb, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init37 = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.fa, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init39 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ew, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = trunc i64 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod41)
  %i.fc = add i32 %.epil.init39, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10, !noalias !101
  %i.fg = shl i64 %i.ff, %i.dn
  %i.fh = or i64 %i.fg, %.epil.init37
  store i64 %i.fh, ptr %.epil.init, align 8, !tbaa !10, !noalias !101
  %i.fi = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.fj = add i32 %.sroa.speculated.i.i.i.i, %i.fi
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10, !noalias !101
  %i.fn = lshr i64 %i.fm, %i.dl
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !10, !noalias !101
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader.i.i.i.i, %.lr.ph.i.i.i.i, %bb.h
  %i.fp = zext i32 %i.dj to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.fp
  %i.fr = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.fs = zext nneg i32 %i.fr to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fq, i8 0, i64 %i.fs, i1 false), !noalias !101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %n.vec = and i64 %i.u, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x i64>, ptr %i.ft, align 8, !tbaa !10, !noalias !98
  %wide.load30 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !10, !noalias !98
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %index ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load31 = load <2 x i64>, ptr %i.fv, align 8, !tbaa !10, !noalias !98
  %wide.load32 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !10, !noalias !98
  %i.fx = or <2 x i64> %wide.load31, %wide.load
  %i.fy = or <2 x i64> %wide.load32, %wide.load30
  store <2 x i64> %i.fx, ptr %i.fv, align 8, !tbaa !10, !noalias !98
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !10, !noalias !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %.loopexit, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.loopexit ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10, !noalias !98
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10, !noalias !98
  %i.ge = or i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !10, !noalias !98
  %indvars.iv.next.i.i.i.i5 = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i5, %i.df
  br i1 %exitcond.not.i.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %.lr.ph.i.i.i.i4, !llvm.loop !105

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.i.i4, %middle.block
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.gf, align 8, !tbaa !7, !alias.scope !98
  store i64 %i.de, ptr %0, align 8, !alias.scope !98
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #23
  br label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZN4llvh5APIntD2Ev.exit.thread, %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getHiBitsEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = sub i32 %i.b, %2                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.d, align 8, !tbaa !7, !alias.scope !106
  %i.e = icmp ult i32 %i.b, 65
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !9, !alias.scope !106
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9, !noalias !106
  %i.h = zext nneg i32 %i.c to i64
  %i.i = lshr i64 %i.g, %i.h
  store i64 %i.i, ptr %0, align 8, !tbaa !9, !alias.scope !106
  br label %_ZNK4llvh5APInt4lshrEj.exit

bb.e:                                             ; preds = %bb.a
  %i.j = zext i32 %i.b to i64
  %i.k = add nuw nsw i64 %i.j, 63                 ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741816                 ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22, !noalias !106 ; 18 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !9, !alias.scope !106
  %i.o = load ptr, ptr %1, align 8, !tbaa !9, !noalias !106
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.o, i64 %i.m, i1 false), !noalias !106
  %i.p = lshr i64 %i.k, 6
  %i.q = trunc nuw nsw i64 %i.p to i32            ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, %2
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt4lshrEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.r) ; 9 uses
  %i.s = and i32 %i.c, 63                         ; 3 uses
  %i.t = sub nsw i32 %i.q, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.u = icmp eq i32 %i.s, 0
  br i1 %i.u, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.r, %i.q
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.v = zext nneg i32 %i.s to i64                ; 4 uses
  %i.w = sub nuw nsw i32 64, %i.s
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !10, !noalias !106
  %i.ab = lshr i64 %i.aa, %i.v                    ; 3 uses
  store i64 %i.ab, ptr %i.n, align 8, !tbaa !10, !noalias !106
  %.not32.i1.i.i.i = icmp eq i32 %i.t, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext i32 %i.t to i64
  %i.ad = add nsw i64 %i.ac, -1                   ; 3 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp eq i32 %i.t, 2
  br i1 %i.ae, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.af = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.af
  %i.ah = shl nsw i32 %i.t, 3
  %i.ai = zext i32 %i.ah to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.ag, i64 %i.ai, i1 false), !noalias !106
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.aj = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i.i ]
  %i.ak = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader.new ], [ %i.bk, %.lr.ph.i.i.i ]
  %i.al = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.am = add i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10, !noalias !106
  %i.aq = shl i64 %i.ap, %i.x
  %i.ar = or i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !10, !noalias !106
  %i.as = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.at = add i32 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10, !noalias !106
  %i.ax = lshr i64 %i.aw, %i.v                    ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !10, !noalias !106
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.az = add i32 %i.at, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !10, !noalias !106
  %i.bd = shl i64 %i.bc, %i.x
  %i.be = or i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !10, !noalias !106
  %i.bf = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bg = add i32 %.sroa.speculated.i.i.i.i, %i.bf ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10, !noalias !106
  %i.bk = lshr i64 %i.bj, %i.v                    ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !10, !noalias !106
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.n, %.lr.ph.i.i.i.preheader ], [ %i.bl, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init3 = phi i64 [ %i.ab, %.lr.ph.i.i.i.preheader ], [ %i.bk, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.bm = add i32 %.epil.init5, 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10, !noalias !106
  %i.bq = shl i64 %i.bp, %i.x
  %i.br = or i64 %i.bq, %.epil.init3
  store i64 %i.br, ptr %.epil.init, align 8, !tbaa !10, !noalias !106
  %i.bs = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.bt = add i32 %.sroa.speculated.i.i.i.i, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10, !noalias !106
  %i.bx = lshr i64 %i.bw, %i.v
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !10, !noalias !106
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.bz = zext i32 %i.t to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bz
  %i.cb = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ca, i8 0, i64 %i.cc, i1 false), !noalias !106
  br label %_ZNK4llvh5APInt4lshrEj.exit

_ZNK4llvh5APInt4lshrEj.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt9getLoBitsEj(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((8, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8, !tbaa !7, !alias.scope !109
  %i.d = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.d, label %_ZN4llvh5APIntC2Ejmb.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #22, !noalias !109 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false), !noalias !109
  store i64 0, ptr %i.i, align 8, !tbaa !10, !noalias !109
  %.pn.in.in.i.i = sub i32 0, %i.b
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.j = lshr i64 -1, %.pn.i.i
  %i.k = add nuw nsw i64 %i.g, 4294967295
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10, !noalias !109
  %i.o = and i64 %i.n, %i.j
  store i64 %i.o, ptr %i.m, align 8, !tbaa !10, !noalias !109
  br label %_ZN4llvh5APIntC2Ejmb.exit.i

_ZN4llvh5APIntC2Ejmb.exit.i:                      ; preds = %bb.b, %bb.a
  %.sink.i.i.i = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.p = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !9, !alias.scope !109
  %i.q = icmp eq i32 %2, 0
  br i1 %i.q, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i
  %i.r = icmp ult i32 %2, 65
  br i1 %i.r, label %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, label %bb.d

_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i: ; preds = %bb.c
  %i.s = sub nuw nsw i32 64, %2
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t
  %i.v = load i64, ptr %.sink.i.i.i, align 8, !tbaa !9
  %i.w = or i64 %i.v, %i.u
  store i64 %i.w, ptr %.sink.i.i.i, align 8, !tbaa !9
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

bb.d:                                             ; preds = %bb.c
  %i.x = lshr i32 %2, 6                           ; 2 uses
  %i.y = and i32 %2, 63                           ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = sub nuw nsw i32 64, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = lshr i64 -1, %i.aa
  %i.ac = zext nneg i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10, !noalias !109
  %i.af = or i64 %i.ae, %i.ab
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10, !noalias !109
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 -1, ptr %i.p, align 8, !tbaa !10, !noalias !109
  %i.ag = icmp ugt i32 %2, 127
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i, label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %scevgep.i = getelementptr i8, ptr %i.p, i64 8
  %i.ah = shl nuw nsw i32 %i.x, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.aj, i1 false), !tbaa !10, !noalias !109
  br label %_ZN4llvh5APInt13getLowBitsSetEjj.exit

_ZN4llvh5APInt13getLowBitsSetEjj.exit:            ; preds = %_ZN4llvh5APIntC2Ejmb.exit.i, %_ZN4llvh5APInt15setBitsSlowCaseEjj.exit.sink.split.i.i.i, %bb.f, %.lr.ph.preheader.i.i.i.i
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.ak = load i64, ptr %1, align 8, !tbaa !9
  %i.al = load i64, ptr %0, align 8, !tbaa !9
  %i.am = and i64 %i.al, %i.ak
  store i64 %i.am, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntaNERKS0_.exit

bb.h:                                             ; preds = %_ZN4llvh5APInt13getLowBitsSetEjj.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !9     ; 8 uses
  %i.ap = zext i32 %i.b to i64
  %i.aq = add nuw nsw i64 %i.ap, 63
  %i.ar = lshr i64 %i.aq, 6                       ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 449
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.h
  %i.as = shl nuw nsw i64 %i.ar, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.as
  %scevgep4 = getelementptr i8, ptr %i.ao, i64 %i.as
  %bound0 = icmp ult ptr %i.an, %scevgep4
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <2 x i64>, ptr %i.at, align 8, !tbaa !10, !alias.scope !112
  %wide.load5 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10, !alias.scope !112
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load6 = load <2 x i64>, ptr %i.av, align 8, !tbaa !10, !alias.scope !115, !noalias !112
  %wide.load7 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !10, !alias.scope !115, !noalias !112
  %i.ax = and <2 x i64> %wide.load6, %wide.load
  %i.ay = and <2 x i64> %wide.load7, %wide.load5
  store <2 x i64> %i.ax, ptr %i.av, align 8, !tbaa !10, !alias.scope !115, !noalias !112
  store <2 x i64> %i.ay, ptr %i.aw, align 8, !tbaa !10, !alias.scope !115, !noalias !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZN4llvh5APIntaNERKS0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %bb.h, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.h ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i.i.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i.i.prol ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.be = and i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !118

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
end_hunk_2
begin_hunk_3_@_ZNK4llvh5APInt8byteSwapEv:bb.a
  %min.iters.check = icmp ult i32 %i.b, 833
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aw = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.ax = shl nuw nsw i64 %i.am, 3
  %i.ay = add nuw nsw i64 %i.ax, 34359738360
  %i.az = and i64 %i.ay, 34359738360              ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 8
  %i.bb = sub nsw i64 %i.ba, %i.aw
  %scevgep28 = getelementptr i8, ptr %.pre, i64 %i.bb
  %i.bc = getelementptr i8, ptr %.pre, i64 %i.az
  %scevgep29 = getelementptr i8, ptr %i.bc, i64 8
  %bound0 = icmp ult ptr %i.au, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = xor i64 %index, -1
  %i.be = add nsw i64 %i.am, %i.bd
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bh, align 8, !tbaa !10, !alias.scope !151
  %wide.load30 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !10, !alias.scope !151
  %i.bj = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bk = shufflevector <2 x i64> %i.bj, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bl = tail call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load30)
  %i.bm = shufflevector <2 x i64> %i.bl, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %i.bk, ptr %i.bn, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  store <2 x i64> %i.bm, ptr %i.bo, align 8, !tbaa !10, !alias.scope !154, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %i.bq = and i64 %i.al, 64
  %lcmp.mod.not = icmp eq i64 %i.bq, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.br = xor i64 %indvars.iv.ph, -1
  %i.bs = add nsw i64 %i.am, %i.br
  %i.bt = and i64 %i.bs, 4294967294
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = tail call noundef i64 @llvm.bswap.i64(i64 %i.bv)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.ph
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.by = icmp eq i64 %i.am, %.neg
  br i1 %i.by, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvh5APIntC2Ejmb.exit22
  %.not15 = icmp eq i32 %i.ao, %i.b
  br i1 %.not15, label %_ZN4llvh5APIntC2Ejmb.exit, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bz = xor i64 %indvars.iv, -1
  %i.ca = add nsw i64 %i.am, %i.bz
  %i.cb = and i64 %i.ca, 4294967295
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = tail call noundef i64 @llvm.bswap.i64(i64 %i.cd)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !10
  %reass.sub = sub i64 %i.am, %indvars.iv
  %i.cg = add i64 %reass.sub, 4294967294
  %i.ch = and i64 %i.cg, 4294967295
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = tail call noundef i64 @llvm.bswap.i64(i64 %i.cj)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not.1 = icmp eq i64 %indvars.iv.next.1, %i.am
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !157

bb.i:                                             ; preds = %._crit_edge
  %i.cn = sub i32 %i.ao, %i.b                     ; 3 uses
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.co = icmp eq i32 %i.b, 0
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.l:                                             ; preds = %bb.j
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = lshr i64 %i.av, %i.cp
  store i64 %i.cq, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.m:                                             ; preds = %bb.i
  %i.cr = and i32 %i.an, 67108863                 ; 3 uses
  %i.cs = lshr i32 %i.cn, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.cs) ; 9 uses
  %i.ct = and i32 %i.cn, 63                       ; 3 uses
  %i.cu = sub nsw i32 %i.cr, %.sroa.speculated.i.i.i ; 5 uses
  %i.cv = icmp eq i32 %i.ct, 0
  br i1 %i.cv, label %bb.n, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.m
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.cw = zext nneg i32 %i.ct to i64              ; 4 uses
  %i.cx = sub nuw nsw i32 64, %i.ct
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = lshr i64 %i.db, %i.cw                   ; 3 uses
  store i64 %i.dc, ptr %i.au, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.cu, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.dd = zext i32 %i.cu to i64
  %i.de = add nsw i64 %i.dd, -1                   ; 3 uses
  %xtraiter32 = and i64 %i.de, 1
  %i.df = icmp eq i32 %i.cu, 2
  br i1 %i.df, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.de, -2
  br label %.lr.ph.i.i

bb.n:                                             ; preds = %bb.m
  %i.dg = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = shl nsw i32 %i.cu, 3
  %i.dj = zext i32 %i.di to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.dh, i64 %i.dj, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.dk = phi ptr [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.em, %.lr.ph.i.i ]
  %i.dl = phi i64 [ %i.dc, %.lr.ph.i.i.preheader.new ], [ %i.el, %.lr.ph.i.i ]
  %i.dm = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.eh, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.dn = add i32 %i.dm, 1
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10
  %i.dr = shl i64 %i.dq, %i.cy
  %i.ds = or i64 %i.dr, %i.dl
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !10
  %i.dt = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.du = add i32 %.sroa.speculated.i.i.i, %i.dt  ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !10
  %i.dy = lshr i64 %i.dx, %i.cw                   ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ea = add i32 %i.du, 1
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10
  %i.ee = shl i64 %i.ed, %i.cy
  %i.ef = or i64 %i.ee, %i.dy
  store i64 %i.ef, ptr %i.dz, align 8, !tbaa !10
  %i.eg = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.eh = add i32 %.sroa.speculated.i.i.i, %i.eg  ; 3 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = lshr i64 %i.ek, %i.cw                   ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.el, ptr %i.em, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod37.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod37.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.au, %.lr.ph.i.i.preheader ], [ %i.em, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init34 = phi i64 [ %i.dc, %.lr.ph.i.i.preheader ], [ %i.el, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init36 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.eh, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.en = add i32 %.epil.init36, 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = shl i64 %i.eq, %i.cy
  %i.es = or i64 %i.er, %.epil.init34
  store i64 %i.es, ptr %.epil.init, align 8, !tbaa !10
  %i.et = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.eu = add i32 %.sroa.speculated.i.i.i, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !10
  %i.ey = lshr i64 %i.ex, %i.cw
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.n, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fa = zext i32 %i.cu to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fa
  %i.fc = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fd = zext nneg i32 %i.fc to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.fd, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.k, %bb.l, %.loopexit.i.i.i
  store i32 %i.b, ptr %i.ap, align 8, !tbaa !7
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.e, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %._crit_edge, %_ZN4llvh5APInt11lshrInPlaceEj.exit, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt11reverseBitsEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvh::APInt") align 8 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.fr89 = freeze i32 %i.b                        ; 36 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.fr89)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.j

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.fr89, i1 true)
  switch i32 %i.e, label %bb.j [
    i32 6, label %bb.b
    i32 5, label %bb.d
    i32 4, label %bb.f
    i32 3, label %bb.h
  ]

bb.b:                                             ; preds = %.split
  %i.f = load i64, ptr %1, align 8, !tbaa !9      ; 8 uses
  %.sroa.410.0.extract.shift.i = lshr i64 %i.f, 8
  %.sroa.511.0.extract.shift.i = lshr i64 %i.f, 16
  %.sroa.612.0.extract.shift.i = lshr i64 %i.f, 24
  %.sroa.713.0.extract.shift.i = lshr i64 %i.f, 32
  %.sroa.814.0.extract.shift.i = lshr i64 %i.f, 40
  %.sroa.915.0.extract.shift.i = lshr i64 %i.f, 48
  %.sroa.1016.0.extract.shift.i = lshr i64 %i.f, 56
  %i.g = and i64 %i.f, 255
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %i.j = and i64 %.sroa.410.0.extract.shift.i, 255
  %i.k = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9
  %i.m = and i64 %.sroa.511.0.extract.shift.i, 255
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = and i64 %.sroa.612.0.extract.shift.i, 255
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !9
  %i.s = and i64 %.sroa.713.0.extract.shift.i, 255
  %i.t = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9
  %i.v = and i64 %.sroa.814.0.extract.shift.i, 255
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = and i64 %.sroa.915.0.extract.shift.i, 255
  %i.z = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.1016.0.extract.shift.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9
  %.sroa.10.0.insert.ext.i = zext i8 %i.i to i64
  %.sroa.10.0.insert.shift.i = shl nuw i64 %.sroa.10.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.l to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.8.0.insert.ext.i = zext i8 %i.o to i64
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40
  %.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.8.0.insert.shift.i
  %.sroa.7.0.insert.ext.i = zext i8 %i.r to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.8.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = zext i8 %i.u to i64
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.5.0.insert.ext.i = zext i8 %i.x to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.aa to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.ac to i64
  %.sroa.0.0.insert.mask.i = or i64 %.sroa.4.0.insert.mask.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.mask.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fr89, ptr %i.ad, align 8, !tbaa !7
  %i.ae = icmp ult i32 %.fr89, 65
  br i1 %i.ae, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.c

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  %i.af = sub nsw i32 0, %.fr89
  %i.ag = and i32 %i.af, 63
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 -1, %i.ah
  %i.aj = and i64 %.sroa.0.0.insert.insert.i, %i.ai
  store i64 %i.aj, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.b
  %i.ak = zext i32 %.fr89 to i64
  %i.al = add nuw nsw i64 %i.ak, 63
  %i.am = lshr i64 %i.al, 6                       ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.an, i1 false)
  store ptr %i.ao, ptr %0, align 8, !tbaa !9
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ao, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %.fr89
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.ap = lshr i64 -1, %.pn.i
  %i.aq = add nuw nsw i64 %i.am, 4294967295
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ar ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = and i64 %i.at, %i.ap
  store i64 %i.au, ptr %i.as, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.d:                                             ; preds = %.split
  %i.av = load i64, ptr %1, align 8, !tbaa !9     ; 4 uses
  %.sroa.410.0.extract.shift.i3 = lshr i64 %i.av, 8
  %.sroa.511.0.extract.shift.i4 = lshr i64 %i.av, 16
  %.sroa.612.0.extract.shift.i5 = lshr i64 %i.av, 24
  %.sroa.612.0.extract.trunc.i = and i64 %.sroa.612.0.extract.shift.i5, 255
  %i.aw = and i64 %i.av, 255
  %i.ax = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = and i64 %.sroa.410.0.extract.shift.i3, 255
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !9
  %i.bc = and i64 %.sroa.511.0.extract.shift.i4, 255
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr @_ZN4llvhL18BitReverseTable256E, i64 %.sroa.612.0.extract.trunc.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %.sroa.6.0.insert.ext.i6 = zext i8 %i.ay to i64
  %.sroa.6.0.insert.shift.i7 = shl nuw nsw i64 %.sroa.6.0.insert.ext.i6, 24
  %.sroa.5.0.insert.ext.i8 = zext i8 %i.bb to i64
  %.sroa.5.0.insert.shift.i9 = shl nuw nsw i64 %.sroa.5.0.insert.ext.i8, 16
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i9, %.sroa.6.0.insert.shift.i7
  %.sroa.4.0.insert.ext.i10 = zext i8 %i.be to i64
  %.sroa.4.0.insert.shift.i11 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i10, 8
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i11
  %.sroa.0.0.insert.ext.i12 = zext i8 %i.bg to i64
  %.sroa.0.0.insert.insert.i13 = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fr89, ptr %i.bh, align 8, !tbaa !7
  %i.bi = icmp ult i32 %.fr89, 65
  br i1 %i.bi, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i17, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i17:       ; preds = %bb.d
  %i.bj = sub nsw i32 0, %.fr89
  %i.bk = and i32 %i.bj, 63
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 -1, %i.bl
  %i.bn = and i64 %.sroa.0.0.insert.insert.i13, %i.bm
  store i64 %i.bn, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %bb.d
  %i.bo = zext i32 %.fr89 to i64
  %i.bp = add nuw nsw i64 %i.bo, 63
  %i.bq = lshr i64 %i.bp, 6                       ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK4llvh5APInt11reverseBitsEv:bb.a
  store i32 %.fr89, ptr %i.en, align 8, !tbaa !7
  store ptr %.sink, ptr %0, align 8, !tbaa !9
  %i.eo = trunc nuw nsw i64 %.pre-phi98 to i32
  %i.ep = shl i32 %i.eo, 6
  %i.eq = and i32 %.fr89, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.eq, 0
  %.neg.i.i.i.i.i = or i32 %.fr89, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %indvars.iv.next.i1.i = add nsw i64 %.pre-phi98, -1 ; 7 uses
  %i.er = and i64 %indvars.iv.next.i1.i, 4294967295
  %i.es = icmp eq i32 %.fr89, 1
  %i.et = ptrtoint ptr %.sink to i64              ; 2 uses
  br i1 %i.du, label %_ZN4llvh5APIntC2Ejmb.exit38.split.us, label %_ZN4llvh5APIntC2Ejmb.exit38.split

_ZN4llvh5APIntC2Ejmb.exit38.split.us:             ; preds = %_ZN4llvh5APIntC2Ejmb.exit38
  %.not63.us70 = icmp eq i64 %.sroa.0.158, 0
  br i1 %.not63.us70, label %_ZN4llvh5APIntlSEj.exit43.split.us, label %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph

_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph:  ; preds = %_ZN4llvh5APIntC2Ejmb.exit38.split.us
  br i1 %i.es, label %_ZNK4llvh5APIntneEm.exit.thread60.us._ZN4llvh5APIntlSEj.exit43.split.us_crit_edge.split.us, label %_ZNK4llvh5APIntneEm.exit.thread.thread.us

_ZNK4llvh5APIntneEm.exit.thread60.us._ZN4llvh5APIntlSEj.exit43.split.us_crit_edge.split.us: ; preds = %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph
  %i.eu = and i64 %.sroa.0.158, 1
  br label %_ZN4llvh5APIntlSEj.exit43.split.us

_ZNK4llvh5APIntneEm.exit.thread.thread.us:        ; preds = %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph, %_ZNK4llvh5APIntneEm.exit.thread.thread.us
  %.0.us72 = phi i32 [ %i.fb, %_ZNK4llvh5APIntneEm.exit.thread.thread.us ], [ %.fr89, %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph ]
  %.sroa.0.0.us71 = phi i64 [ %i.fa, %_ZNK4llvh5APIntneEm.exit.thread.thread.us ], [ %.sroa.0.158, %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph ] ; 2 uses
  %i.ev = phi i64 [ %i.ez, %_ZNK4llvh5APIntneEm.exit.thread.thread.us ], [ %i.et, %_ZNK4llvh5APIntneEm.exit.thread.thread.us.lr.ph ]
  %i.ew = shl i64 %i.ev, 1
  %i.ex = and i64 %.sroa.0.0.us71, 1
  %i.ey = or disjoint i64 %i.ew, %i.ex
  %i.ez = and i64 %i.ey, %.pre-phi106             ; 2 uses
  %i.fa = lshr i64 %.sroa.0.0.us71, 1             ; 2 uses
  %i.fb = add i32 %.0.us72, -1                    ; 2 uses
  %.not63.us = icmp eq i64 %i.fa, 0
  br i1 %.not63.us, label %_ZN4llvh5APIntlSEj.exit43.split.us, label %_ZNK4llvh5APIntneEm.exit.thread.thread.us, !llvm.loop !158

_ZN4llvh5APIntlSEj.exit43.split.us:               ; preds = %_ZNK4llvh5APIntneEm.exit.thread.thread.us, %_ZNK4llvh5APIntneEm.exit.thread60.us._ZN4llvh5APIntlSEj.exit43.split.us_crit_edge.split.us, %_ZN4llvh5APIntC2Ejmb.exit38.split.us
  %.lcssa69 = phi i64 [ %i.et, %_ZN4llvh5APIntC2Ejmb.exit38.split.us ], [ %i.eu, %_ZNK4llvh5APIntneEm.exit.thread60.us._ZN4llvh5APIntlSEj.exit43.split.us_crit_edge.split.us ], [ %i.ez, %_ZNK4llvh5APIntneEm.exit.thread.thread.us ]
  %.0.lcssa68.us = phi i32 [ %.fr89, %_ZN4llvh5APIntC2Ejmb.exit38.split.us ], [ 0, %_ZNK4llvh5APIntneEm.exit.thread60.us._ZN4llvh5APIntlSEj.exit43.split.us_crit_edge.split.us ], [ %i.fb, %_ZNK4llvh5APIntneEm.exit.thread.thread.us ] ; 2 uses
  %i.fc = icmp eq i32 %.0.lcssa68.us, %.fr89
  %i.fd = zext nneg i32 %.0.lcssa68.us to i64
  %i.fe = shl i64 %.lcssa69, %i.fd
  %storemerge.i42 = select i1 %i.fc, i64 0, i64 %i.fe
  %i.ff = and i64 %storemerge.i42, %.pre-phi106
  store i64 %i.ff, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit38.split:                ; preds = %_ZN4llvh5APIntC2Ejmb.exit38
  %i.fg = inttoptr i64 %.sroa.0.158 to ptr        ; 14 uses
  %i.fh = trunc nsw i64 %.pre-phi98 to i32
  %i.fi = and i32 %i.fh, 1
  %lcmp.mod.not.not = icmp eq i32 %i.fi, 0
  %indvars.iv.next.i.prol = add nsw i64 %.pre-phi98, -2 ; 2 uses
  %i.fj = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.fk = icmp eq i64 %.pre-phi98, 2
  %xtraiter125 = and i64 %indvars.iv.next.i1.i, 1
  %i.fl = icmp eq i64 %.pre-phi98, 2
  %unroll_iter = and i64 %indvars.iv.next.i1.i, -2
  %lcmp.mod131.not = icmp eq i64 %xtraiter125, 0
  %lcmp.mod132 = trunc i64 %indvars.iv.next.i1.i to i1
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit, %_ZN4llvh5APIntC2Ejmb.exit38.split
  %i.fm = phi ptr [ %.sink, %_ZN4llvh5APIntC2Ejmb.exit38.split ], [ %i.hc, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit ] ; 7 uses
  %.0 = phi i32 [ %.fr89, %_ZN4llvh5APIntC2Ejmb.exit38.split ], [ %i.ih, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.m ], [ %.pre-phi98, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.ft, %bb.m ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.i.i
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !10 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %bb.m, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.l
  %i.fq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fo, i1 true)
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = or disjoint i32 %.019.i.i.i.i.i, %i.fr
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ft = add i32 %.019.i.i.i.i.i, 64
  %i.fu = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.fu, label %bb.l, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.m, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.fs, %.thread.i.i.i.i.i ], [ %i.ep, %bb.m ]
  %i.fv = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.fw = sub i32 %.fr89, %i.fv
  %i.fx = icmp ult i32 %i.fw, 65
  br i1 %i.fx, label %_ZNK4llvh5APIntneEm.exit, label %.lr.ph.i.i45

_ZNK4llvh5APIntneEm.exit:                         ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %i.fg, align 8, !tbaa !9
  %.not = icmp eq i64 %.0.i.i.pre.i, 0
  br i1 %.not, label %bb.n, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %_ZNK4llvh5APIntneEm.exit, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.er
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !10
  %i.ga = shl i64 %i.fz, 1                        ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !10
  %invariant.gep.i = getelementptr i8, ptr %i.fm, i64 -8 ; 3 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.i45
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.gc = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.gd = lshr i64 %i.gc, 63
  %i.ge = or disjoint i64 %i.gd, %i.ga
  store i64 %i.ge, ptr %i.gb, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fj ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = shl i64 %i.gg, 1                        ; 2 uses
  store i64 %i.gh, ptr %i.gf, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.i45
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.i.i45 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.gb, %.lr.ph.i.i45 ], [ %i.gf, %.lr.ph.i.prol ]
  %.unr124 = phi i64 [ %i.ga, %.lr.ph.i.i45 ], [ %i.gh, %.lr.ph.i.prol ]
  br i1 %i.fk, label %.lr.ph.i.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.gi = phi ptr [ %i.gv, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.gj = phi i64 [ %i.gx, %.lr.ph.i ], [ %.unr124, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.gk = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.gl = lshr i64 %i.gk, 63
  %i.gm = or disjoint i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.gi, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.gn = and i64 %indvars.iv.next.i, 4294967295
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.gn ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !10
  %i.gq = shl i64 %i.gp, 1                        ; 2 uses
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.gr = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.gs = lshr i64 %i.gr, 63
  %i.gt = or disjoint i64 %i.gs, %i.gq
  store i64 %i.gt, ptr %i.go, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.gu = and i64 %indvars.iv.next.i.1, 4294967295 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.gu ; 3 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = shl i64 %i.gw, 1                        ; 2 uses
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !10
  %.not62.1 = icmp eq i64 %i.gu, 0
  br i1 %.not62.1, label %.lr.ph.i.i.i, label %.lr.ph.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.pre-phi110 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10
  %i.ha = and i64 %i.gz, %.pre-phi106
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !10
  %.else.val = load i64, ptr %i.fg, align 8, !tbaa !9
  %i.hb = and i64 %.else.val, 1
  %i.hc = load ptr, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !10
  %i.he = or i64 %i.hd, %i.hb
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !10
  %i.hf = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.hg = lshr i64 %i.hf, 1                       ; 3 uses
  store i64 %i.hg, ptr %i.fg, align 8, !tbaa !10
  br i1 %i.fl, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i
  %indvars.iv.next.i2.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i.i ] ; 4 uses
  %i.hh = phi ptr [ %i.hx, %.lr.ph.i.i ], [ %i.fg, %.lr.ph.i.i.i ]
  %i.hi = phi i64 [ %i.hy, %.lr.ph.i.i ], [ %i.hg, %.lr.ph.i.i.i ]
  %i.hj = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !10
  %i.hn = shl i64 %i.hm, 63
  %i.ho = or disjoint i64 %i.hn, %i.hi
  store i64 %i.ho, ptr %i.hh, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i2.i.i ; 3 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !10
  %i.hr = lshr i64 %i.hq, 1                       ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i2.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !10 ; 2 uses
  %i.hv = shl i64 %i.hu, 63
  %i.hw = or disjoint i64 %i.hv, %i.hr
  store i64 %i.hw, ptr %i.hp, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i.i.i ; 3 uses
  %i.hy = lshr i64 %i.hu, 1                       ; 3 uses
  store i64 %i.hy, ptr %i.hx, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod131.not, label %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.fg, %.lr.ph.i.i.i ], [ %i.hx, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init128 = phi i64 [ %i.hg, %.lr.ph.i.i.i ], [ %i.hy, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  %.epil.init130 = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.epil.init130
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !10
  %i.ic = shl i64 %i.ib, 63
  %i.id = or disjoint i64 %i.ic, %.epil.init128
  store i64 %i.id, ptr %.epil.init, align 8, !tbaa !10
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next.i2.i.i.epil.init ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !10
  %i.ig = lshr i64 %i.if, 1
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !10
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit

_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit:      ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %i.ih = add i32 %.0, -1
  br label %.lr.ph.i.i.i.i.i, !llvm.loop !158

bb.n:                                             ; preds = %_ZNK4llvh5APIntneEm.exit
  tail call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %.0)
  tail call void @_ZdaPv(ptr noundef nonnull %i.fg) #23
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.n, %_ZN4llvh5APIntlSEj.exit43.split.us, %bb.i, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i32, %bb.g, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i27, %bb.e, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i17, %bb.c, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh8APIntOps21GreatestCommonDivisorENS_5APIntES1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = icmp ult i32 %i.b, 65                    ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvh5APInteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8                ; 5 uses
  %i.e = load i64, ptr %2, align 8                ; 4 uses
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.a
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 63                 ; 2 uses
  %i.i = lshr i64 %i.h, 3
  %.idx.i.i = and i64 %i.i, 1073741816
  %i.j = load ptr, ptr %1, align 8                ; 4 uses
  %i.k = load ptr, ptr %2, align 8                ; 3 uses
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.k, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b, %_ZNK4llvh5APInteqERKS0_.exit
  %i.n = phi i64 [ %i.d, %bb.b ], [ %i.m, %_ZNK4llvh5APInteqERKS0_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !7
  store i64 %i.n, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !7
  br label %bb.be

bb.d:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.d to ptr
  %i.q = inttoptr i64 %i.e to ptr
  %i.r = icmp eq i64 %i.d, 0
  br i1 %i.r, label %bb.g, label %bb.h

.lr.ph.i.i:                                       ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  %i.s = lshr i64 %i.h, 6                         ; 2 uses
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = shl i32 %i.t, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  %i.w = load i64, ptr %i.v, align 8, !tbaa !10   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e
  %i.y = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = or disjoint i32 %.019.i.i, %i.z
  br label %_ZNK4llvh5APIntntEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = add i32 %.019.i.i, 64
  %i.ac = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ac, label %bb.e, label %_ZNK4llvh5APIntntEv.exit, !llvm.loop !93

_ZNK4llvh5APIntntEv.exit:                         ; preds = %bb.f, %.thread.i.i
  %.2.i.i = phi i32 [ %i.aa, %.thread.i.i ], [ %i.u, %bb.f ]
  %i.ad = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.ad, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.ae = add i32 %.2.i.i, %.neg15.i.i
  %i.af = icmp eq i32 %i.ae, %i.b
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.d, %_ZNK4llvh5APIntntEv.exit
  %i.ag = phi i64 [ %i.e, %bb.d ], [ %i.l, %_ZNK4llvh5APIntntEv.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !7
  store i64 %i.ag, ptr %0, align 8
  store i32 0, ptr %i.ai, align 8, !tbaa !7
  br label %bb.be

bb.h:                                             ; preds = %bb.d, %_ZNK4llvh5APIntntEv.exit
  %i.ak = phi i64 [ %i.d, %bb.d ], [ %i.m, %_ZNK4llvh5APIntntEv.exit ] ; 3 uses
  %i.al = phi ptr [ %i.p, %bb.d ], [ %i.j, %_ZNK4llvh5APIntntEv.exit ] ; 18 uses
  %i.am = phi i64 [ %i.e, %bb.d ], [ %i.l, %_ZNK4llvh5APIntntEv.exit ] ; 3 uses
  %i.an = phi ptr [ %i.q, %bb.d ], [ %i.k, %_ZNK4llvh5APIntntEv.exit ] ; 19 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !7  ; 9 uses
  %i.aq = icmp ult i32 %i.ap, 65                  ; 3 uses
  br i1 %i.aq, label %bb.i, label %.lr.ph.i.i17

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %bb.l, label %bb.m

.lr.ph.i.i17:                                     ; preds = %bb.h
  %i.as = zext i32 %i.ap to i64
  %i.at = add nuw nsw i64 %i.as, 63
  %i.au = lshr i64 %i.at, 6                       ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = shl i32 %i.av, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i20, %bb.k ], [ %i.au, %.lr.ph.i.i17 ] ; 2 uses
  %.019.i.i19 = phi i32 [ %i.bd, %bb.k ], [ 0, %.lr.ph.i.i17 ] ; 2 uses
  %indvars.iv.next.i20 = add nsw i64 %indvars.iv.i18, -1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i20
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.k, label %.thread.i.i21

.thread.i.i21:                                    ; preds = %bb.j
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 true)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = or disjoint i32 %.019.i.i19, %i.bb
  br label %_ZNK4llvh5APIntntEv.exit28

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %.019.i.i19, 64
  %i.be = icmp samesign ugt i64 %indvars.iv.i18, 1
  br i1 %i.be, label %bb.j, label %_ZNK4llvh5APIntntEv.exit28, !llvm.loop !93

_ZNK4llvh5APIntntEv.exit28:                       ; preds = %bb.k, %.thread.i.i21
  %.2.i.i23 = phi i32 [ %i.bc, %.thread.i.i21 ], [ %i.aw, %bb.k ]
  %i.bf = and i32 %i.ap, 63
  %.not.i.i24 = icmp eq i32 %i.bf, 0
  %.neg.i.i25 = or i32 %i.ap, -64
  %.neg15.i.i26 = select i1 %.not.i.i24, i32 0, i32 %.neg.i.i25
  %i.bg = add i32 %.2.i.i23, %.neg15.i.i26
  %i.bh = icmp eq i32 %i.bg, %i.ap
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.i, %_ZNK4llvh5APIntntEv.exit28
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.bi, align 8, !tbaa !7
  store i64 %i.ak, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !7
  br label %bb.be

bb.m:                                             ; preds = %bb.i, %_ZNK4llvh5APIntntEv.exit28
  br i1 %i.c, label %bb.n, label %.lr.ph.i.i29

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ak, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

.lr.ph.i.i29:                                     ; preds = %bb.m
  %i.bl = zext i32 %i.b to i64
  %i.bm = add nuw nsw i64 %i.bl, 63
  %i.bn = lshr i64 %i.bm, 6                       ; 2 uses
  %i.bo = trunc nuw nsw i64 %i.bn to i32
  %i.bp = shl i32 %i.bo, 6
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i29
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i29 ], [ %indvars.iv.next.i.i, %bb.p ] ; 3 uses
  %.01014.i.i = phi i32 [ 0, %.lr.ph.i.i29 ], [ %i.bt, %bb.p ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add i32 %.01014.i.i, 64
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bn
  br i1 %exitcond.not.i.i, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit, label %bb.o, !llvm.loop !145

bb.q:                                             ; preds = %bb.o
  %i.bu = and i64 %indvars.iv.i.i, 4294967295
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !10
  %i.bx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = add i32 %.01014.i.i, %i.by
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit

_ZNK4llvh5APInt18countTrailingZerosEv.exit:       ; preds = %bb.p, %bb.n, %bb.q
  %.1.i.sink.i = phi i32 [ %i.bk, %bb.n ], [ %i.bz, %bb.q ], [ %i.bp, %bb.p ]
  %.sroa.speculated.i.i = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 %.1.i.sink.i) ; 8 uses
  br i1 %i.aq, label %bb.r, label %.lr.ph.i.i30

bb.r:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.ca = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.am, i1 false)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

.lr.ph.i.i30:                                     ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit
  %i.cc = zext i32 %i.ap to i64
  %i.cd = add nuw nsw i64 %i.cc, 63
  %i.ce = lshr i64 %i.cd, 6                       ; 2 uses
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl i32 %i.cf, 6
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i30
  %indvars.iv.i.i31 = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i35, %bb.t ] ; 3 uses
  %.01014.i.i32 = phi i32 [ 0, %.lr.ph.i.i30 ], [ %i.ck, %bb.t ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i.i31
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = add i32 %.01014.i.i32, 64
  %indvars.iv.next.i.i35 = add nuw nsw i64 %indvars.iv.i.i31, 1 ; 2 uses
  %exitcond.not.i.i36 = icmp eq i64 %indvars.iv.next.i.i35, %i.ce
  br i1 %exitcond.not.i.i36, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37, label %bb.s, !llvm.loop !145

bb.u:                                             ; preds = %bb.s
  %i.cl = and i64 %indvars.iv.i.i31, 4294967295
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cn, i1 false)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = add i32 %.01014.i.i32, %i.cp
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit37

_ZNK4llvh5APInt18countTrailingZerosEv.exit37:     ; preds = %bb.t, %bb.r, %bb.u
  %.1.i.sink.i33 = phi i32 [ %i.cb, %bb.r ], [ %i.cq, %bb.u ], [ %i.cg, %bb.t ]
  %.sroa.speculated.i.i34 = tail call noundef i32 @llvm.umin.i32(i32 %i.ap, i32 %.1.i.sink.i33) ; 7 uses
  %i.cr = icmp ugt i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34
  br i1 %i.cr, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.cs = sub nuw i32 %.sroa.speculated.i.i, %.sroa.speculated.i.i34 ; 4 uses
  br i1 %i.c, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp eq i32 %i.cs, %i.b
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.y:                                             ; preds = %bb.w
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = lshr i64 %i.ak, %i.cu
  store i64 %i.cv, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.z:                                             ; preds = %bb.v
  %i.cw = zext i32 %i.b to i64
  %i.cx = add nuw nsw i64 %i.cw, 63
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = trunc nuw nsw i64 %i.cy to i32          ; 3 uses
  %i.da = lshr i32 %i.cs, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.da) ; 9 uses
  %i.db = and i32 %i.cs, 63                       ; 3 uses
  %i.dc = sub nsw i32 %i.cz, %.sroa.speculated.i.i.i ; 5 uses
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %bb.aa, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.z
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.da, %i.cz
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.de = zext nneg i32 %i.db to i64              ; 4 uses
  %i.df = sub nuw nsw i32 64, %i.db
  %i.dg = zext nneg i32 %i.df to i64              ; 3 uses
  %i.dh = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = lshr i64 %i.dj, %i.de                   ; 3 uses
  store i64 %i.dk, ptr %i.al, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.dc, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %.lr.ph.i.i.i
  %i.dl = zext i32 %i.dc to i64
  %i.dm = add nsw i64 %i.dl, -1                   ; 3 uses
  %xtraiter238 = and i64 %i.dm, 1
  %i.dn = icmp eq i32 %i.dc, 2
  br i1 %i.dn, label %.lr.ph.i.i38.epil.preheader, label %.lr.ph.i.i38.preheader.new

.lr.ph.i.i38.preheader.new:                       ; preds = %.lr.ph.i.i38.preheader
  %unroll_iter247 = and i64 %i.dm, -2
  br label %.lr.ph.i.i38

bb.aa:                                            ; preds = %bb.z
  %i.do = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.do
  %i.dq = shl nsw i32 %i.dc, 3
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.dp, i64 %i.dr, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.i.i38.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i38.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i38 ] ; 4 uses
  %i.ds = phi ptr [ %i.al, %.lr.ph.i.i38.preheader.new ], [ %i.eu, %.lr.ph.i.i38 ]
  %i.dt = phi i64 [ %i.dk, %.lr.ph.i.i38.preheader.new ], [ %i.et, %.lr.ph.i.i38 ]
  %i.du = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader.new ], [ %i.ep, %.lr.ph.i.i38 ]
  %niter248 = phi i64 [ 0, %.lr.ph.i.i38.preheader.new ], [ %niter248.next.1, %.lr.ph.i.i38 ]
  %i.dv = add i32 %i.du, 1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !10
  %i.dz = shl i64 %i.dy, %i.dg
  %i.ea = or i64 %i.dz, %i.dt
  store i64 %i.ea, ptr %i.ds, align 8, !tbaa !10
  %i.eb = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.ec = add i32 %.sroa.speculated.i.i.i, %i.eb  ; 2 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !10
  %i.eg = lshr i64 %i.ef, %i.de                   ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.ei = add i32 %i.ec, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10
  %i.em = shl i64 %i.el, %i.dg
  %i.en = or i64 %i.em, %i.eg
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !10
  %i.eo = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.ep = add i32 %.sroa.speculated.i.i.i, %i.eo  ; 3 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = lshr i64 %i.es, %i.de                   ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter248.next.1 = add i64 %niter248, 2         ; 2 uses
  %niter248.ncmp.1 = icmp eq i64 %niter248.next.1, %unroll_iter247
  br i1 %niter248.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i38

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i38
  %lcmp.mod245.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod245.not, label %.loopexit.i.i.i, label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i38.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i38.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init240 = phi ptr [ %i.al, %.lr.ph.i.i38.preheader ], [ %i.eu, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init242 = phi i64 [ %i.dk, %.lr.ph.i.i38.preheader ], [ %i.et, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init244 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i38.preheader ], [ %i.ep, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i64 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.ev = add i32 %.epil.init244, 1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10
  %i.ez = shl i64 %i.ey, %i.dg
  %i.fa = or i64 %i.ez, %.epil.init242
  store i64 %i.fa, ptr %.epil.init240, align 8, !tbaa !10
  %i.fb = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.fc = add i32 %.sroa.speculated.i.i.i, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fd
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = lshr i64 %i.ff, %i.de
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i38.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.aa, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.fi = zext i32 %i.dc to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.fi
  %i.fk = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.fl = zext nneg i32 %i.fk to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fj, i8 0, i64 %i.fl, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ab:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit37
  %i.fm = icmp ugt i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i
  br i1 %i.fm, label %bb.ac, label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fn = sub nuw i32 %.sroa.speculated.i.i34, %.sroa.speculated.i.i ; 4 uses
  br i1 %i.aq, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fo = icmp eq i32 %i.fn, %i.ap
  br i1 %i.fo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.af:                                            ; preds = %bb.ad
  %i.fp = zext nneg i32 %i.fn to i64
  %i.fq = lshr i64 %i.am, %i.fp
  store i64 %i.fq, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.ag:                                            ; preds = %bb.ac
  %i.fr = zext i32 %i.ap to i64
  %i.fs = add nuw nsw i64 %i.fr, 63
  %i.ft = lshr i64 %i.fs, 6
  %i.fu = trunc nuw nsw i64 %i.ft to i32          ; 3 uses
  %i.fv = lshr i32 %i.fn, 6                       ; 2 uses
  %.sroa.speculated.i.i.i40 = tail call i32 @llvm.umin.i32(i32 %i.fu, i32 %i.fv) ; 9 uses
  %i.fw = and i32 %i.fn, 63                       ; 3 uses
  %i.fx = sub nsw i32 %i.fu, %.sroa.speculated.i.i.i40 ; 5 uses
  %i.fy = icmp eq i32 %i.fw, 0
  br i1 %i.fy, label %bb.ah, label %.preheader.i.i.i41

.preheader.i.i.i41:                               ; preds = %bb.ag
  %.not3137.not.i.i.i42 = icmp samesign ult i32 %i.fv, %i.fu
  br i1 %.not3137.not.i.i.i42, label %.lr.ph.i.i.i44, label %.loopexit.i.i.i43

.lr.ph.i.i.i44:                                   ; preds = %.preheader.i.i.i41
  %i.fz = zext nneg i32 %i.fw to i64              ; 4 uses
  %i.ga = sub nuw nsw i32 64, %i.fw
  %i.gb = zext nneg i32 %i.ga to i64              ; 3 uses
  %i.gc = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = lshr i64 %i.ge, %i.fz                   ; 3 uses
  store i64 %i.gf, ptr %i.an, align 8, !tbaa !10
  %.not32.i1.i.i45 = icmp eq i32 %i.fx, 1
  br i1 %.not32.i1.i.i45, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.preheader

.lr.ph.i.i46.preheader:                           ; preds = %.lr.ph.i.i.i44
  %i.gg = zext i32 %i.fx to i64
  %i.gh = add nsw i64 %i.gg, -1                   ; 3 uses
  %xtraiter = and i64 %i.gh, 1
  %i.gi = icmp eq i32 %i.fx, 2
  br i1 %i.gi, label %.lr.ph.i.i46.epil.preheader, label %.lr.ph.i.i46.preheader.new

.lr.ph.i.i46.preheader.new:                       ; preds = %.lr.ph.i.i46.preheader
  %unroll_iter = and i64 %i.gh, -2
  br label %.lr.ph.i.i46

bb.ah:                                            ; preds = %bb.ag
  %i.gj = zext nneg i32 %.sroa.speculated.i.i.i40 to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gj
  %i.gl = shl nsw i32 %i.fx, 3
  %i.gm = zext i32 %i.gl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.an, ptr align 8 %i.gk, i64 %i.gm, i1 false)
  br label %.loopexit.i.i.i43

.lr.ph.i.i46:                                     ; preds = %.lr.ph.i.i46, %.lr.ph.i.i46.preheader.new
  %indvars.iv.next.i2.i.i47 = phi i64 [ 1, %.lr.ph.i.i46.preheader.new ], [ %indvars.iv.next.i.i.i48.1, %.lr.ph.i.i46 ] ; 4 uses
  %i.gn = phi ptr [ %i.an, %.lr.ph.i.i46.preheader.new ], [ %i.hp, %.lr.ph.i.i46 ]
  %i.go = phi i64 [ %i.gf, %.lr.ph.i.i46.preheader.new ], [ %i.ho, %.lr.ph.i.i46 ]
  %i.gp = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader.new ], [ %i.hk, %.lr.ph.i.i46 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i46.preheader.new ], [ %niter.next.1, %.lr.ph.i.i46 ]
  %i.gq = add i32 %i.gp, 1
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = shl i64 %i.gt, %i.gb
  %i.gv = or i64 %i.gu, %i.go
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !10
  %i.gw = trunc nuw i64 %indvars.iv.next.i2.i.i47 to i32
  %i.gx = add i32 %.sroa.speculated.i.i.i40, %i.gw ; 2 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !10
  %i.hb = lshr i64 %i.ha, %i.fz                   ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47 ; 2 uses
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !10
  %indvars.iv.next.i.i.i48 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 1 ; 2 uses
  %i.hd = add i32 %i.gx, 1
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !10
  %i.hh = shl i64 %i.hg, %i.gb
  %i.hi = or i64 %i.hh, %i.hb
  store i64 %i.hi, ptr %i.hc, align 8, !tbaa !10
  %i.hj = trunc nuw i64 %indvars.iv.next.i.i.i48 to i32
  %i.hk = add i32 %.sroa.speculated.i.i.i40, %i.hj ; 3 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !10
  %i.ho = lshr i64 %i.hn, %i.fz                   ; 3 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i.i.i48 ; 3 uses
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !10
  %indvars.iv.next.i.i.i48.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i47, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i43.loopexit.unr-lcssa, label %.lr.ph.i.i46

.loopexit.i.i.i43.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i46
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i43, label %.lr.ph.i.i46.epil.preheader

.lr.ph.i.i46.epil.preheader:                      ; preds = %.loopexit.i.i.i43.loopexit.unr-lcssa, %.lr.ph.i.i46.preheader
  %indvars.iv.next.i2.i.i47.epil.init = phi i64 [ 1, %.lr.ph.i.i46.preheader ], [ %indvars.iv.next.i.i.i48.1, %.loopexit.i.i.i43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.an, %.lr.ph.i.i46.preheader ], [ %i.hp, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init234 = phi i64 [ %i.gf, %.lr.ph.i.i46.preheader ], [ %i.ho, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %.epil.init236 = phi i32 [ %.sroa.speculated.i.i.i40, %.lr.ph.i.i46.preheader ], [ %i.hk, %.loopexit.i.i.i43.loopexit.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %i.gh to i1
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.hq = add i32 %.epil.init236, 1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !10
  %i.hu = shl i64 %i.ht, %i.gb
  %i.hv = or i64 %i.hu, %.epil.init234
  store i64 %i.hv, ptr %.epil.init, align 8, !tbaa !10
  %i.hw = trunc nuw i64 %indvars.iv.next.i2.i.i47.epil.init to i32
  %i.hx = add i32 %.sroa.speculated.i.i.i40, %i.hw
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = lshr i64 %i.ia, %i.fz
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next.i2.i.i47.epil.init
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !10
  br label %.loopexit.i.i.i43

.loopexit.i.i.i43:                                ; preds = %.lr.ph.i.i46.epil.preheader, %.loopexit.i.i.i43.loopexit.unr-lcssa, %bb.ah, %.lr.ph.i.i.i44, %.preheader.i.i.i41
  %i.id = zext i32 %i.fx to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.id
  %i.if = shl nuw nsw i32 %.sroa.speculated.i.i.i40, 3
  %i.ig = zext nneg i32 %i.if to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ie, i8 0, i64 %i.ig, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %.loopexit.i.i.i43, %bb.af, %bb.ae, %.loopexit.i.i.i, %bb.y, %bb.x, %bb.ab
  %.0 = phi i32 [ %.sroa.speculated.i.i, %bb.ab ], [ %.sroa.speculated.i.i34, %.loopexit.i.i.i ], [ %.sroa.speculated.i.i34, %bb.x ], [ %.sroa.speculated.i.i34, %bb.y ], [ %.sroa.speculated.i.i, %.loopexit.i.i.i43 ], [ %.sroa.speculated.i.i, %bb.ae ], [ %.sroa.speculated.i.i, %bb.af ] ; 6 uses
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75

_ZN4llvh5APInt11lshrInPlaceEj.exit75:             ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, %_ZN4llvh5APInt11lshrInPlaceEj.exit
  %i.ih = load i32, ptr %i.a, align 8, !tbaa !7   ; 8 uses
  %i.ii = icmp ult i32 %i.ih, 65
  br i1 %i.ii, label %_ZNK4llvh5APIntneERKS0_.exit, label %_ZNK4llvh5APIntneERKS0_.exit.thread

_ZNK4llvh5APIntneERKS0_.exit:                     ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.ij = load i64, ptr %1, align 8               ; 6 uses
  %i.ik = load i64, ptr %2, align 8               ; 5 uses
  %.not118 = icmp eq i64 %i.ij, %i.ik
  br i1 %.not118, label %bb.bd, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111

_ZNK4llvh5APIntneERKS0_.exit.thread:              ; preds = %_ZN4llvh5APInt11lshrInPlaceEj.exit75
  %i.il = zext i32 %i.ih to i64
  %i.im = add nuw nsw i64 %i.il, 63               ; 2 uses
  %i.in = lshr i64 %i.im, 3
  %.idx.i.i.i = and i64 %i.in, 1073741816
  %i.io = load ptr, ptr %1, align 8               ; 7 uses
  %i.ip = load ptr, ptr %2, align 8               ; 7 uses
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.io, ptr %i.ip, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %i.iq = ptrtoint ptr %i.io to i64               ; 4 uses
  %i.ir = ptrtoint ptr %i.ip to i64               ; 3 uses
  br i1 %.not9.i.i.i.i.i.i.i.not, label %bb.bd, label %.thread109

.thread109:                                       ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread
  %i.is = lshr i64 %i.im, 6                       ; 6 uses
  %.not.i.i.i.i213 = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i213, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph

bb.ai:                                            ; preds = %.lr.ph
  %.not.i.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread, label %.lr.ph, !llvm.loop !84

.lr.ph:                                           ; preds = %.thread109, %bb.ai
  %indvars.iv.i.i.i.i214 = phi i64 [ %i.it, %bb.ai ], [ %i.is, %.thread109 ]
  %i.it = add nsw i64 %indvars.iv.i.i.i.i214, -1  ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.it
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %i.it
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !10 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.iv, %i.ix
  br i1 %.not13.i.i.i.i, label %bb.ai, label %_ZNK4llvh5APInt3ugtERKS0_.exit, !llvm.loop !84

_ZNK4llvh5APInt3ugtERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.iv, %i.ix
  br i1 %.not, label %.lr.ph.i.i51, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZNK4llvh5APInt3ugtERKS0_.exit.thread111:         ; preds = %_ZNK4llvh5APIntneERKS0_.exit
  %i.iy = inttoptr i64 %i.ij to ptr
  %i.iz = inttoptr i64 %i.ik to ptr
  %.not119 = icmp ugt i64 %i.ij, %i.ik
  br i1 %.not119, label %_ZN4llvh5APIntmIERKS0_.exit.thread, label %_ZNK4llvh5APInt3ugtERKS0_.exit.thread

_ZN4llvh5APIntmIERKS0_.exit.thread:               ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111
  %i.ja = sub nuw i64 %i.ij, %i.ik
  %i.jb = sub nsw i32 0, %i.ih
  %i.jc = and i32 %i.jb, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 -1, %i.jd
  %i.jf = and i64 %i.ja, %i.je                    ; 3 uses
  store i64 %i.jf, ptr %1, align 8, !tbaa !9
  %i.jg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.jf, i1 false)
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %.sroa.speculated.i.i60115 = tail call noundef i32 @llvm.umin.i32(i32 %i.ih, i32 %i.jh)
  %i.ji = sub i32 %.sroa.speculated.i.i60115, %.0 ; 2 uses
  %i.jj = icmp eq i32 %i.ji, %i.ih
  br i1 %i.jj, label %bb.ap, label %bb.aq

.lr.ph.i.i51:                                     ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit, %bb.al
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i54, %bb.al ], [ 0, %_ZNK4llvh5APInt3ugtERKS0_.exit ] ; 3 uses
  %.022.i.i = phi i1 [ %i.js, %bb.al ], [ true, %_ZNK4llvh5APInt3ugtERKS0_.exit ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %indvars.iv.i.i52 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !10 ; 4 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.i.i52
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !10 ; 3 uses
  br i1 %.022.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i51
  %.neg.i.i53 = xor i64 %i.jn, -1
  %i.jo = add i64 %i.jl, %.neg.i.i53              ; 2 uses
  %i.jp = icmp uge i64 %i.jo, %i.jl
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i51
  %i.jq = sub i64 %i.jl, %i.jn
  %i.jr = icmp ugt i64 %i.jn, %i.jl
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink.i.i = phi i64 [ %i.jq, %bb.ak ], [ %i.jo, %bb.aj ]
  %.1.in.i.i = phi i1 [ %i.jr, %bb.ak ], [ %i.jp, %bb.aj ]
  store i64 %.sink.i.i, ptr %i.jk, align 8, !tbaa !10
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %indvars.iv.next.i.i54, %i.is
  %i.js = xor i1 %.1.in.i.i, true
  br i1 %exitcond.not.i.i55, label %_ZN4llvh5APIntmIERKS0_.exit, label %.lr.ph.i.i51, !llvm.loop !26

_ZN4llvh5APIntmIERKS0_.exit:                      ; preds = %bb.al
  %i.jt = sub i32 0, %i.ih
  %i.ju = and i32 %i.jt, 63
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = lshr i64 -1, %i.jv
  %i.jx = load ptr, ptr %1, align 8, !tbaa !9
  %i.jy = add nuw nsw i64 %i.is, 4294967295
  %i.jz = and i64 %i.jy, 4294967295
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.jz ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !10
  %i.kc = and i64 %i.kb, %i.jw
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !10
  %i.kd = trunc nuw nsw i64 %i.is to i32          ; 4 uses
  %i.ke = load ptr, ptr %1, align 8, !tbaa !9     ; 18 uses
  %i.kf = shl i32 %i.kd, 6
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %_ZN4llvh5APIntmIERKS0_.exit
  %indvars.iv.i.i57 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %indvars.iv.next.i.i61, %bb.an ] ; 3 uses
  %.01014.i.i58 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit ], [ %i.kj, %bb.an ] ; 2 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.i.i57
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !10
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.kj = add i32 %.01014.i.i58, 64
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i57, 1 ; 2 uses
  %exitcond.not.i.i62 = icmp eq i64 %indvars.iv.next.i.i61, %i.is
  br i1 %exitcond.not.i.i62, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, label %bb.am, !llvm.loop !145

bb.ao:                                            ; preds = %bb.am
  %i.kk = and i64 %indvars.iv.i.i57, 4294967295
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !10
  %i.kn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.km, i1 false)
  %i.ko = trunc nuw nsw i64 %i.kn to i32
  %i.kp = add i32 %.01014.i.i58, %i.ko
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit63

_ZNK4llvh5APInt18countTrailingZerosEv.exit63:     ; preds = %bb.an, %bb.ao
  %.1.i.sink.i59 = phi i32 [ %i.kp, %bb.ao ], [ %i.kf, %bb.an ]
  %.sroa.speculated.i.i60 = tail call noundef i32 @llvm.umin.i32(i32 %i.ih, i32 %.1.i.sink.i59) ; 2 uses
  %.not.i.i.i64 = icmp eq i32 %.sroa.speculated.i.i60, %.0
  br i1 %.not.i.i.i64, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.ar

bb.ap:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  store i64 0, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.aq:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit.thread
  %i.kq = zext nneg i32 %i.ji to i64
  %i.kr = lshr i64 %i.jf, %i.kq
  store i64 %i.kr, ptr %1, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ar:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit63
  %i.ks = sub i32 %.sroa.speculated.i.i60, %.0    ; 2 uses
  %i.kt = lshr i32 %i.ks, 6                       ; 2 uses
  %.sroa.speculated.i.i.i65 = tail call i32 @llvm.umin.i32(i32 %i.kd, i32 %i.kt) ; 9 uses
  %i.ku = and i32 %i.ks, 63                       ; 3 uses
  %i.kv = sub nsw i32 %i.kd, %.sroa.speculated.i.i.i65 ; 5 uses
  %i.kw = icmp eq i32 %i.ku, 0
  br i1 %i.kw, label %bb.as, label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %bb.ar
  %.not3137.not.i.i.i67 = icmp samesign ult i32 %i.kt, %i.kd
  br i1 %.not3137.not.i.i.i67, label %.lr.ph.i.i.i69, label %.loopexit.i.i.i68

.lr.ph.i.i.i69:                                   ; preds = %.preheader.i.i.i66
  %i.kx = zext nneg i32 %i.ku to i64              ; 4 uses
  %i.ky = sub nuw nsw i32 64, %i.ku
  %i.kz = zext nneg i32 %i.ky to i64              ; 3 uses
  %i.la = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.la
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !10
  %i.ld = lshr i64 %i.lc, %i.kx                   ; 3 uses
  store i64 %i.ld, ptr %i.ke, align 8, !tbaa !10
  %.not32.i1.i.i70 = icmp eq i32 %i.kv, 1
  br i1 %.not32.i1.i.i70, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.preheader

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.i.i.i69
  %i.le = zext i32 %i.kv to i64
  %i.lf = add nsw i64 %i.le, -1                   ; 3 uses
  %xtraiter249 = and i64 %i.lf, 1
  %i.lg = icmp eq i32 %i.kv, 2
  br i1 %i.lg, label %.lr.ph.i.i71.epil.preheader, label %.lr.ph.i.i71.preheader.new

.lr.ph.i.i71.preheader.new:                       ; preds = %.lr.ph.i.i71.preheader
  %unroll_iter258 = and i64 %i.lf, -2
  br label %.lr.ph.i.i71

bb.as:                                            ; preds = %bb.ar
  %i.lh = zext nneg i32 %.sroa.speculated.i.i.i65 to i64
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.lh
  %i.lj = shl nsw i32 %i.kv, 3
  %i.lk = zext i32 %i.lj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ke, ptr align 8 %i.li, i64 %i.lk, i1 false)
  br label %.loopexit.i.i.i68

.lr.ph.i.i71:                                     ; preds = %.lr.ph.i.i71, %.lr.ph.i.i71.preheader.new
  %indvars.iv.next.i2.i.i72 = phi i64 [ 1, %.lr.ph.i.i71.preheader.new ], [ %indvars.iv.next.i.i.i73.1, %.lr.ph.i.i71 ] ; 4 uses
  %i.ll = phi ptr [ %i.ke, %.lr.ph.i.i71.preheader.new ], [ %i.mn, %.lr.ph.i.i71 ]
  %i.lm = phi i64 [ %i.ld, %.lr.ph.i.i71.preheader.new ], [ %i.mm, %.lr.ph.i.i71 ]
  %i.ln = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader.new ], [ %i.mi, %.lr.ph.i.i71 ]
  %niter259 = phi i64 [ 0, %.lr.ph.i.i71.preheader.new ], [ %niter259.next.1, %.lr.ph.i.i71 ]
  %i.lo = add i32 %i.ln, 1
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !10
  %i.ls = shl i64 %i.lr, %i.kz
  %i.lt = or i64 %i.ls, %i.lm
  store i64 %i.lt, ptr %i.ll, align 8, !tbaa !10
  %i.lu = trunc nuw i64 %indvars.iv.next.i2.i.i72 to i32
  %i.lv = add i32 %.sroa.speculated.i.i.i65, %i.lu ; 2 uses
  %i.lw = zext i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.lw
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !10
  %i.lz = lshr i64 %i.ly, %i.kx                   ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next.i2.i.i72 ; 2 uses
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !10
  %indvars.iv.next.i.i.i73 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 1 ; 2 uses
  %i.mb = add i32 %i.lv, 1
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !10
  %i.mf = shl i64 %i.me, %i.kz
  %i.mg = or i64 %i.mf, %i.lz
  store i64 %i.mg, ptr %i.ma, align 8, !tbaa !10
  %i.mh = trunc nuw i64 %indvars.iv.next.i.i.i73 to i32
  %i.mi = add i32 %.sroa.speculated.i.i.i65, %i.mh ; 3 uses
  %i.mj = zext i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !10
  %i.mm = lshr i64 %i.ml, %i.kx                   ; 3 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i.i73 ; 3 uses
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !10
  %indvars.iv.next.i.i.i73.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i72, 2 ; 2 uses
  %niter259.next.1 = add i64 %niter259, 2         ; 2 uses
  %niter259.ncmp.1 = icmp eq i64 %niter259.next.1, %unroll_iter258
  br i1 %niter259.ncmp.1, label %.loopexit.i.i.i68.loopexit.unr-lcssa, label %.lr.ph.i.i71

.loopexit.i.i.i68.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i71
  %lcmp.mod256.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod256.not, label %.loopexit.i.i.i68, label %.lr.ph.i.i71.epil.preheader

.lr.ph.i.i71.epil.preheader:                      ; preds = %.loopexit.i.i.i68.loopexit.unr-lcssa, %.lr.ph.i.i71.preheader
  %indvars.iv.next.i2.i.i72.epil.init = phi i64 [ 1, %.lr.ph.i.i71.preheader ], [ %indvars.iv.next.i.i.i73.1, %.loopexit.i.i.i68.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init251 = phi ptr [ %i.ke, %.lr.ph.i.i71.preheader ], [ %i.mn, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init253 = phi i64 [ %i.ld, %.lr.ph.i.i71.preheader ], [ %i.mm, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %.epil.init255 = phi i32 [ %.sroa.speculated.i.i.i65, %.lr.ph.i.i71.preheader ], [ %i.mi, %.loopexit.i.i.i68.loopexit.unr-lcssa ]
  %lcmp.mod257 = trunc i64 %i.lf to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %i.mo = add i32 %.epil.init255, 1
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.mp
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !10
  %i.ms = shl i64 %i.mr, %i.kz
  %i.mt = or i64 %i.ms, %.epil.init253
  store i64 %i.mt, ptr %.epil.init251, align 8, !tbaa !10
  %i.mu = trunc nuw i64 %indvars.iv.next.i2.i.i72.epil.init to i32
  %i.mv = add i32 %.sroa.speculated.i.i.i65, %i.mu
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.mw
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !10
  %i.mz = lshr i64 %i.my, %i.kx
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %indvars.iv.next.i2.i.i72.epil.init
  store i64 %i.mz, ptr %i.na, align 8, !tbaa !10
  br label %.loopexit.i.i.i68

.loopexit.i.i.i68:                                ; preds = %.lr.ph.i.i71.epil.preheader, %.loopexit.i.i.i68.loopexit.unr-lcssa, %bb.as, %.lr.ph.i.i.i69, %.preheader.i.i.i66
  %i.nb = zext i32 %i.kv to i64
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.nb
  %i.nd = shl nuw nsw i32 %.sroa.speculated.i.i.i65, 3
  %i.ne = zext nneg i32 %i.nd to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.nc, i8 0, i64 %i.ne, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZNK4llvh5APInt3ugtERKS0_.exit.thread:            ; preds = %bb.ai, %.thread109, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111, %_ZNK4llvh5APInt3ugtERKS0_.exit
  %i.nf = phi i64 [ %i.ir, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.ik, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111 ], [ %i.ir, %.thread109 ], [ %i.ir, %bb.ai ]
  %i.ng = phi i64 [ %i.iq, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.ij, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111 ], [ %i.iq, %.thread109 ], [ %i.iq, %bb.ai ]
  %i.nh = phi ptr [ %i.io, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.iy, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111 ], [ %i.io, %.thread109 ], [ %i.io, %bb.ai ]
  %i.ni = phi ptr [ %i.ip, %_ZNK4llvh5APInt3ugtERKS0_.exit ], [ %i.iz, %_ZNK4llvh5APInt3ugtERKS0_.exit.thread111 ], [ %i.ip, %.thread109 ], [ %i.ip, %bb.ai ]
  %i.nj = load i32, ptr %i.ao, align 8, !tbaa !7  ; 7 uses
  %i.nk = icmp ult i32 %i.nj, 65
  br i1 %i.nk, label %_ZN4llvh5APIntmIERKS0_.exit87.thread, label %.lr.ph.preheader.i.i76

_ZN4llvh5APIntmIERKS0_.exit87.thread:             ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nl = sub i64 %i.nf, %i.ng
  %i.nm = sub nsw i32 0, %i.nj
  %i.nn = and i32 %i.nm, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = lshr i64 -1, %i.no
  %i.nq = and i64 %i.nl, %i.np                    ; 3 uses
  store i64 %i.nq, ptr %2, align 8, !tbaa !9
  %i.nr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nq, i1 false)
  %i.ns = trunc nuw nsw i64 %i.nr to i32
  %.sroa.speculated.i.i92117 = tail call noundef i32 @llvm.umin.i32(i32 %i.nj, i32 %i.ns)
  %i.nt = sub i32 %.sroa.speculated.i.i92117, %.0 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, %i.nj
  br i1 %i.nu, label %bb.az, label %bb.ba

.lr.ph.preheader.i.i76:                           ; preds = %_ZNK4llvh5APInt3ugtERKS0_.exit.thread
  %i.nv = zext i32 %i.nj to i64
  %i.nw = add nuw nsw i64 %i.nv, 63
  %i.nx = lshr i64 %i.nw, 6                       ; 4 uses
  br label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %bb.av, %.lr.ph.preheader.i.i76
  %indvars.iv.i.i78 = phi i64 [ 0, %.lr.ph.preheader.i.i76 ], [ %indvars.iv.next.i.i83, %bb.av ] ; 3 uses
  %.022.i.i79 = phi i1 [ true, %.lr.ph.preheader.i.i76 ], [ %i.og, %bb.av ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.i.i78 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !10 ; 4 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.i.i78
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !10 ; 3 uses
  br i1 %.022.i.i79, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i77
  %.neg.i.i80 = xor i64 %i.ob, -1
  %i.oc = add i64 %i.nz, %.neg.i.i80              ; 2 uses
  %i.od = icmp uge i64 %i.oc, %i.nz
  br label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.i77
  %i.oe = sub i64 %i.nz, %i.ob
  %i.of = icmp ugt i64 %i.ob, %i.nz
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sink.i.i81 = phi i64 [ %i.oe, %bb.au ], [ %i.oc, %bb.at ]
  %.1.in.i.i82 = phi i1 [ %i.of, %bb.au ], [ %i.od, %bb.at ]
  store i64 %.sink.i.i81, ptr %i.ny, align 8, !tbaa !10
  %indvars.iv.next.i.i83 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %indvars.iv.next.i.i83, %i.nx
  %i.og = xor i1 %.1.in.i.i82, true
  br i1 %exitcond.not.i.i84, label %_ZN4llvh5APIntmIERKS0_.exit87, label %.lr.ph.i.i77, !llvm.loop !26

_ZN4llvh5APIntmIERKS0_.exit87:                    ; preds = %bb.av
  %i.oh = sub i32 0, %i.nj
  %i.oi = and i32 %i.oh, 63
  %i.oj = zext nneg i32 %i.oi to i64
  %i.ok = lshr i64 -1, %i.oj
  %i.ol = load ptr, ptr %2, align 8, !tbaa !9
  %i.om = add nuw nsw i64 %i.nx, 4294967295
  %i.on = and i64 %i.om, 4294967295
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.on ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !10
  %i.oq = and i64 %i.op, %i.ok
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !10
  %i.or = trunc nuw nsw i64 %i.nx to i32          ; 4 uses
  %i.os = load ptr, ptr %2, align 8, !tbaa !9     ; 18 uses
  %i.ot = shl i32 %i.or, 6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %_ZN4llvh5APIntmIERKS0_.exit87
  %indvars.iv.i.i89 = phi i64 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %indvars.iv.next.i.i93, %bb.ax ] ; 3 uses
  %.01014.i.i90 = phi i32 [ 0, %_ZN4llvh5APIntmIERKS0_.exit87 ], [ %i.ox, %bb.ax ] ; 2 uses
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.i.i89
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !10
  %i.ow = icmp eq i64 %i.ov, 0
  br i1 %i.ow, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ox = add i32 %.01014.i.i90, 64
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i89, 1 ; 2 uses
  %exitcond.not.i.i94 = icmp eq i64 %indvars.iv.next.i.i93, %i.nx
  br i1 %exitcond.not.i.i94, label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, label %bb.aw, !llvm.loop !145

bb.ay:                                            ; preds = %bb.aw
  %i.oy = and i64 %indvars.iv.i.i89, 4294967295
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.oy
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !10
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.pa, i1 false)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = add i32 %.01014.i.i90, %i.pc
  br label %_ZNK4llvh5APInt18countTrailingZerosEv.exit95

_ZNK4llvh5APInt18countTrailingZerosEv.exit95:     ; preds = %bb.ax, %bb.ay
  %.1.i.sink.i91 = phi i32 [ %i.pd, %bb.ay ], [ %i.ot, %bb.ax ]
  %.sroa.speculated.i.i92 = tail call noundef i32 @llvm.umin.i32(i32 %i.nj, i32 %.1.i.sink.i91) ; 2 uses
  %.not.i.i.i96 = icmp eq i32 %.sroa.speculated.i.i92, %.0
  br i1 %.not.i.i.i96, label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge, label %bb.bb

bb.az:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  store i64 0, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.ba:                                            ; preds = %_ZN4llvh5APIntmIERKS0_.exit87.thread
  %i.pe = zext nneg i32 %i.nt to i64
  %i.pf = lshr i64 %i.nq, %i.pe
  store i64 %i.pf, ptr %2, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

bb.bb:                                            ; preds = %_ZNK4llvh5APInt18countTrailingZerosEv.exit95
  %i.pg = sub i32 %.sroa.speculated.i.i92, %.0    ; 2 uses
  %i.ph = lshr i32 %i.pg, 6                       ; 2 uses
  %.sroa.speculated.i.i.i97 = tail call i32 @llvm.umin.i32(i32 %i.or, i32 %i.ph) ; 9 uses
  %i.pi = and i32 %i.pg, 63                       ; 3 uses
  %i.pj = sub nsw i32 %i.or, %.sroa.speculated.i.i.i97 ; 5 uses
  %i.pk = icmp eq i32 %i.pi, 0
  br i1 %i.pk, label %bb.bc, label %.preheader.i.i.i98

.preheader.i.i.i98:                               ; preds = %bb.bb
  %.not3137.not.i.i.i99 = icmp samesign ult i32 %i.ph, %i.or
  br i1 %.not3137.not.i.i.i99, label %.lr.ph.i.i.i101, label %.loopexit.i.i.i100

.lr.ph.i.i.i101:                                  ; preds = %.preheader.i.i.i98
  %i.pl = zext nneg i32 %i.pi to i64              ; 4 uses
  %i.pm = sub nuw nsw i32 64, %i.pi
  %i.pn = zext nneg i32 %i.pm to i64              ; 3 uses
  %i.po = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.po
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !10
  %i.pr = lshr i64 %i.pq, %i.pl                   ; 3 uses
  store i64 %i.pr, ptr %i.os, align 8, !tbaa !10
  %.not32.i1.i.i102 = icmp eq i32 %i.pj, 1
  br i1 %.not32.i1.i.i102, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.preheader

.lr.ph.i.i103.preheader:                          ; preds = %.lr.ph.i.i.i101
  %i.ps = zext i32 %i.pj to i64
  %i.pt = add nsw i64 %i.ps, -1                   ; 3 uses
  %xtraiter260 = and i64 %i.pt, 1
  %i.pu = icmp eq i32 %i.pj, 2
  br i1 %i.pu, label %.lr.ph.i.i103.epil.preheader, label %.lr.ph.i.i103.preheader.new

.lr.ph.i.i103.preheader.new:                      ; preds = %.lr.ph.i.i103.preheader
  %unroll_iter269 = and i64 %i.pt, -2
  br label %.lr.ph.i.i103

bb.bc:                                            ; preds = %bb.bb
  %i.pv = zext nneg i32 %.sroa.speculated.i.i.i97 to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.pv
  %i.px = shl nsw i32 %i.pj, 3
  %i.py = zext i32 %i.px to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.os, ptr align 8 %i.pw, i64 %i.py, i1 false)
  br label %.loopexit.i.i.i100

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103, %.lr.ph.i.i103.preheader.new
  %indvars.iv.next.i2.i.i104 = phi i64 [ 1, %.lr.ph.i.i103.preheader.new ], [ %indvars.iv.next.i.i.i105.1, %.lr.ph.i.i103 ] ; 4 uses
  %i.pz = phi ptr [ %i.os, %.lr.ph.i.i103.preheader.new ], [ %i.rb, %.lr.ph.i.i103 ]
  %i.qa = phi i64 [ %i.pr, %.lr.ph.i.i103.preheader.new ], [ %i.ra, %.lr.ph.i.i103 ]
  %i.qb = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader.new ], [ %i.qw, %.lr.ph.i.i103 ]
  %niter270 = phi i64 [ 0, %.lr.ph.i.i103.preheader.new ], [ %niter270.next.1, %.lr.ph.i.i103 ]
  %i.qc = add i32 %i.qb, 1
  %i.qd = zext i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.qd
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !10
  %i.qg = shl i64 %i.qf, %i.pn
  %i.qh = or i64 %i.qg, %i.qa
  store i64 %i.qh, ptr %i.pz, align 8, !tbaa !10
  %i.qi = trunc nuw i64 %indvars.iv.next.i2.i.i104 to i32
  %i.qj = add i32 %.sroa.speculated.i.i.i97, %i.qi ; 2 uses
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.qk
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !10
  %i.qn = lshr i64 %i.qm, %i.pl                   ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.next.i2.i.i104 ; 2 uses
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !10
  %indvars.iv.next.i.i.i105 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 1 ; 2 uses
  %i.qp = add i32 %i.qj, 1
  %i.qq = zext i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.qq
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !10
  %i.qt = shl i64 %i.qs, %i.pn
  %i.qu = or i64 %i.qt, %i.qn
  store i64 %i.qu, ptr %i.qo, align 8, !tbaa !10
  %i.qv = trunc nuw i64 %indvars.iv.next.i.i.i105 to i32
  %i.qw = add i32 %.sroa.speculated.i.i.i97, %i.qv ; 3 uses
  %i.qx = zext i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.qx
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !10
  %i.ra = lshr i64 %i.qz, %i.pl                   ; 3 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.next.i.i.i105 ; 3 uses
  store i64 %i.ra, ptr %i.rb, align 8, !tbaa !10
  %indvars.iv.next.i.i.i105.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i104, 2 ; 2 uses
  %niter270.next.1 = add i64 %niter270, 2         ; 2 uses
  %niter270.ncmp.1 = icmp eq i64 %niter270.next.1, %unroll_iter269
  br i1 %niter270.ncmp.1, label %.loopexit.i.i.i100.loopexit.unr-lcssa, label %.lr.ph.i.i103

.loopexit.i.i.i100.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i103
  %lcmp.mod267.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod267.not, label %.loopexit.i.i.i100, label %.lr.ph.i.i103.epil.preheader

.lr.ph.i.i103.epil.preheader:                     ; preds = %.loopexit.i.i.i100.loopexit.unr-lcssa, %.lr.ph.i.i103.preheader
  %indvars.iv.next.i2.i.i104.epil.init = phi i64 [ 1, %.lr.ph.i.i103.preheader ], [ %indvars.iv.next.i.i.i105.1, %.loopexit.i.i.i100.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init262 = phi ptr [ %i.os, %.lr.ph.i.i103.preheader ], [ %i.rb, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init264 = phi i64 [ %i.pr, %.lr.ph.i.i103.preheader ], [ %i.ra, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %.epil.init266 = phi i32 [ %.sroa.speculated.i.i.i97, %.lr.ph.i.i103.preheader ], [ %i.qw, %.loopexit.i.i.i100.loopexit.unr-lcssa ]
  %lcmp.mod268 = trunc i64 %i.pt to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.rc = add i32 %.epil.init266, 1
  %i.rd = zext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.rd
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !10
  %i.rg = shl i64 %i.rf, %i.pn
  %i.rh = or i64 %i.rg, %.epil.init264
  store i64 %i.rh, ptr %.epil.init262, align 8, !tbaa !10
  %i.ri = trunc nuw i64 %indvars.iv.next.i2.i.i104.epil.init to i32
  %i.rj = add i32 %.sroa.speculated.i.i.i97, %i.ri
  %i.rk = zext i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.rk
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !10
  %i.rn = lshr i64 %i.rm, %i.pl
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %indvars.iv.next.i2.i.i104.epil.init
  store i64 %i.rn, ptr %i.ro, align 8, !tbaa !10
  br label %.loopexit.i.i.i100

.loopexit.i.i.i100:                               ; preds = %.lr.ph.i.i103.epil.preheader, %.loopexit.i.i.i100.loopexit.unr-lcssa, %bb.bc, %.lr.ph.i.i.i101, %.preheader.i.i.i98
  %i.rp = zext i32 %i.pj to i64
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.rp
  %i.rr = shl nuw nsw i32 %.sroa.speculated.i.i.i97, 3
  %i.rs = zext nneg i32 %i.rr to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rq, i8 0, i64 %i.rs, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge

_ZN4llvh5APInt11lshrInPlaceEj.exit75.backedge:    ; preds = %.loopexit.i.i.i100, %_ZNK4llvh5APInt18countTrailingZerosEv.exit95, %bb.ba, %bb.az, %.loopexit.i.i.i68, %_ZNK4llvh5APInt18countTrailingZerosEv.exit63, %bb.aq, %bb.ap
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit75, !llvm.loop !159

bb.bd:                                            ; preds = %_ZNK4llvh5APIntneERKS0_.exit.thread, %_ZNK4llvh5APIntneERKS0_.exit
  %i.rt = phi i64 [ %i.iq, %_ZNK4llvh5APIntneERKS0_.exit.thread ], [ %i.ij, %_ZNK4llvh5APIntneERKS0_.exit ]
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ih, ptr %i.ru, align 8, !tbaa !7
  store i64 %i.rt, ptr %0, align 8
  store i32 0, ptr %i.a, align 8, !tbaa !7
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.l, %bb.g, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh8APIntOps18RoundDoubleToAPIntEdj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %.not = icmp slt i64 %i.a, 0                    ; 3 uses
  %i.b = lshr i64 %i.a, 52
  %i.c = and i64 %i.b, 2047                       ; 6 uses
  %i.d = icmp samesign ult i64 %i.c, 1023
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !7
  %i.f = icmp ult i32 %2, 65
  br i1 %i.f, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.c

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %2 to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !9
  store i64 0, ptr %i.k, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %2
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.l = lshr i64 -1, %.pn.i
  %i.m = add nuw nsw i64 %i.i, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10
  %i.q = and i64 %i.p, %i.l
  store i64 %i.q, ptr %i.o, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.d:                                             ; preds = %bb.a
  %i.r = and i64 %i.a, 4503599627370495
  %i.s = or disjoint i64 %i.r, 4503599627370496   ; 3 uses
  %i.t = icmp samesign ult i64 %i.c, 1075
  br i1 %i.t, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i64 1075, %i.c
  %i.v = lshr i64 %i.s, %i.u                      ; 4 uses
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ult i32 %2, 65
  br i1 %i.w, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = zext i32 %2 to i64
  %i.y = add nuw nsw i64 %i.x, 63
  %i.z = lshr i64 %i.y, 6                         ; 6 uses
  %i.aa = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #22 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.aa, i1 false)
  store i64 %i.v, ptr %i.ab, align 8, !tbaa !10
  %.pn.in.in.i24 = sub i32 0, %2
  %.pn.in.i25 = and i32 %.pn.in.in.i24, 63
  %.pn.i26 = zext nneg i32 %.pn.in.i25 to i64
  %i.ac = lshr i64 -1, %.pn.i26                   ; 3 uses
  %i.ad = add nuw nsw i64 %i.z, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae ; 6 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ah = and i64 %i.ag, %i.ac
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %min.iters.check135 = icmp ult i32 %2, 193
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %bb.g
  %n.vec138 = and i64 %i.z, 134217724             ; 3 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next143, %vector.body139 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index140 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load141 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !10, !noalias !160
  %wide.load142 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !10, !noalias !160
  %i.ak = xor <2 x i64> %wide.load141, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load142, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !10, !noalias !160
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !10, !noalias !160
  %index.next143 = add nuw i64 %index140, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.am, label %middle.block144, label %vector.body139, !llvm.loop !163

middle.block144:                                  ; preds = %vector.body139
  %cmp.n145 = icmp eq i64 %i.z, %n.vec138
  br i1 %cmp.n145, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g, %middle.block144
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.g ], [ %n.vec138, %middle.block144 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.i.i ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10, !noalias !160
  %i.ap = xor i64 %i.ao, -1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !10, !noalias !160
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.z
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !164

_ZN4llvh5APInt11tcIncrementEPmj.exit.thread1.i.i.i: ; preds = %bb.f
  %i.aq = sub nsw i32 0, %2
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 -1, %i.as                      ; 2 uses
  %i.au = xor i64 %i.v, -1
  %i.av = and i64 %i.at, %i.au
  %i.aw = add nuw i64 %i.av, 1
  %i.ax = and i64 %i.aw, %i.at
  br label %_ZN4llvh5APIntD2Ev.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %middle.block144
  %i.ay = ptrtoint ptr %i.ab to i64
  %i.az = load i64, ptr %i.af, align 8, !tbaa !10, !noalias !160
  %i.ba = and i64 %i.az, %i.ac
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !10, !noalias !160
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !10, !noalias !160
  %i.bc = add i64 %i.bb, 1                        ; 2 uses
  store i64 %i.bc, ptr %i.ab, align 8, !tbaa !10, !noalias !160
  %.not.peel.i.i.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.peel.i.i.i.i.i, label %.lr.ph.i.i.i2.i.i, label %_ZN4llvh5APInt11tcIncrementEPmj.exit.thread.i.i.i

.lr.ph.i.i.i2.i.i:                                ; preds = %.lr.ph.preheader.i.i.i.i.i, %.lr.ph.i.i.i2.i.i
  %indvars.iv.i.i.i3.i.i = phi i64 [ %indvars.iv.next.i.i.i4.i.i, %.lr.ph.i.i.i2.i.i ], [ 1, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i3.i.i ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10, !noalias !160
  %i.bf = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !10, !noalias !160
  %.not.i.i.i.i.i = icmp ne i64 %i.bf, 0
  %indvars.iv.next.i.i.i4.i.i = add nuw nsw i64 %indvars.iv.i.i.i3.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i5.i.i = icmp eq i64 %indvars.iv.next.i.i.i4.i.i, %i.z
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %exitcond.not.i.i.i5.i.i
end_hunk_4
begin_hunk_5_@_ZN4llvh5APInt12ashrSlowCaseEj:bb.a
  %i.dc = and i64 %i.db, %i.cz
  store i64 %i.dc, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

bb.h:                                             ; preds = %bb.f
  %i.dd = load ptr, ptr %0, align 8, !tbaa !9
  %i.de = zext i32 %i.cv to i64
  %i.df = add nuw nsw i64 %i.de, 63
  %i.dg = lshr i64 %i.df, 6
  %i.dh = add nuw nsw i64 %i.dg, 4294967295
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = and i64 %i.dk, %i.cz
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !10
  br label %_ZN4llvh5APInt15clearUnusedBitsEv.exit

_ZN4llvh5APInt15clearUnusedBitsEv.exit:           ; preds = %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11lshrInPlaceERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %.0.in.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !9
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 5 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = icmp eq i32 %i.aa, %i.b
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %0, align 8, !tbaa !9
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = lshr i64 %i.ad, %i.ae
  store i64 %i.af, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

bb.h:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9     ; 16 uses
  %i.ah = add nuw nsw i64 %i.c, 63
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN4llvh5APInt11lshrInPlaceEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i32 %i.aa, 6                       ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ak) ; 9 uses
  %i.al = and i32 %i.aa, 63                       ; 3 uses
  %i.am = sub nsw i32 %i.aj, %.sroa.speculated.i.i.i ; 5 uses
  %i.an = icmp eq i32 %i.al, 0
  br i1 %i.an, label %bb.j, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.i
  %.not3137.not.i.i.i = icmp samesign ult i32 %i.ak, %i.aj
  br i1 %.not3137.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.ao = zext nneg i32 %i.al to i64              ; 4 uses
  %i.ap = sub nuw nsw i32 64, %i.al
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !10
  %i.au = lshr i64 %i.at, %i.ao                   ; 3 uses
  store i64 %i.au, ptr %i.ag, align 8, !tbaa !10
  %.not32.i1.i.i = icmp eq i32 %i.am, 1
  br i1 %.not32.i1.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i
  %i.av = zext i32 %i.am to i64
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ax = icmp eq i32 %i.am, 2
  br i1 %i.ax, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.aw, -2
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = zext nneg i32 %.sroa.speculated.i.i.i to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ay
  %i.ba = shl nsw i32 %i.am, 3
  %i.bb = zext i32 %i.ba to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %i.az, i64 %i.bb, i1 false)
  br label %.loopexit.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %indvars.iv.next.i2.i.i = phi i64 [ 1, %.lr.ph.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %i.bc = phi ptr [ %i.ag, %.lr.ph.i.i.preheader.new ], [ %i.ce, %.lr.ph.i.i ]
  %i.bd = phi i64 [ %i.au, %.lr.ph.i.i.preheader.new ], [ %i.cd, %.lr.ph.i.i ]
  %i.be = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bf = add i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = shl i64 %i.bi, %i.aq
  %i.bk = or i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !10
  %i.bl = trunc nuw i64 %indvars.iv.next.i2.i.i to i32
  %i.bm = add i32 %.sroa.speculated.i.i.i, %i.bl  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = lshr i64 %i.bp, %i.ao                   ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !10
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 2 uses
  %i.bs = add i32 %i.bm, 1
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = shl i64 %i.bv, %i.aq
  %i.bx = or i64 %i.bw, %i.bq
  store i64 %i.bx, ptr %i.br, align 8, !tbaa !10
  %i.by = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  %i.bz = add i32 %.sroa.speculated.i.i.i, %i.by  ; 3 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = lshr i64 %i.cc, %i.ao                   ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i ; 3 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !10
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.loopexit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ce, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init17 = phi i64 [ %i.au, %.lr.ph.i.i.preheader ], [ %i.cd, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.epil.init19 = phi i32 [ %.sroa.speculated.i.i.i, %.lr.ph.i.i.preheader ], [ %i.bz, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod20 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.cf = add i32 %.epil.init19, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = shl i64 %i.ci, %i.aq
  %i.ck = or i64 %i.cj, %.epil.init17
  store i64 %i.ck, ptr %.epil.init, align 8, !tbaa !10
  %i.cl = trunc nuw i64 %indvars.iv.next.i2.i.i.epil.init to i32
  %i.cm = add i32 %.sroa.speculated.i.i.i, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = lshr i64 %i.cp, %i.ao
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i2.i.i.epil.init
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !10
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %bb.j, %.lr.ph.i.i.i, %.preheader.i.i.i
  %i.cs = zext i32 %i.am to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cs
  %i.cu = shl nuw nsw i32 %.sroa.speculated.i.i.i, 3
  %i.cv = zext nneg i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ct, i8 0, i64 %i.cv, i1 false)
  br label %_ZN4llvh5APInt11lshrInPlaceEj.exit

_ZN4llvh5APInt11lshrInPlaceEj.exit:               ; preds = %bb.f, %bb.g, %bb.h, %.loopexit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt12lshrSlowCaseEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 3 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 9 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = sub nsw i32 %i.g, %.sroa.speculated.i    ; 5 uses
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.not3137.not.i = icmp samesign ult i32 %i.h, %i.g
  br i1 %.not3137.not.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = zext nneg i32 %.sroa.speculated.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = lshr i64 %i.q, %i.l                      ; 3 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10
  %.not32.i1 = icmp eq i32 %i.j, 1
  br i1 %.not32.i1, label %.loopexit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.s = zext i32 %i.j to i64
  %i.t = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.j, 2
  br i1 %i.u, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %.sroa.speculated.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v
  %i.x = shl nsw i32 %i.j, 3
  %i.y = zext i32 %i.x to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 8 %i.w, i64 %i.y, i1 false)
  br label %.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv.next.i2 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph ] ; 4 uses
  %i.z = phi ptr [ %i.a, %.lr.ph.preheader.new ], [ %i.bb, %.lr.ph ]
  %i.aa = phi i64 [ %i.r, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ]
  %i.ab = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = add i32 %i.ab, 1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = shl i64 %i.af, %i.n
  %i.ah = or i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !10
  %i.ai = trunc nuw i64 %indvars.iv.next.i2 to i32
  %i.aj = add i32 %.sroa.speculated.i, %i.ai      ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10
  %i.an = lshr i64 %i.am, %i.l                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i2, 1 ; 2 uses
  %i.ap = add i32 %i.aj, 1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = shl i64 %i.as, %i.n
  %i.au = or i64 %i.at, %i.an
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !10
  %i.av = trunc nuw i64 %indvars.iv.next.i to i32
  %i.aw = add i32 %.sroa.speculated.i, %i.av      ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !10
  %i.ba = lshr i64 %i.az, %i.l                    ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i2, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.next.i2.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.i.1, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.bb, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init5 = phi i64 [ %i.r, %.lr.ph.preheader ], [ %i.ba, %.loopexit.i.loopexit.unr-lcssa ]
  %.epil.init7 = phi i32 [ %.sroa.speculated.i, %.lr.ph.preheader ], [ %i.aw, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.bc = add i32 %.epil.init7, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = shl i64 %i.bf, %i.n
  %i.bh = or i64 %i.bg, %.epil.init5
  store i64 %i.bh, ptr %.epil.init, align 8, !tbaa !10
  %i.bi = trunc nuw i64 %indvars.iv.next.i2.epil.init to i32
  %i.bj = add i32 %.sroa.speculated.i, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = lshr i64 %i.bm, %i.l
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i2.epil.init
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !10
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i, %bb.c, %.preheader.i
  %i.bp = zext i32 %i.j to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = shl nuw nsw i32 %.sroa.speculated.i, 3
  %i.bs = zext nneg i32 %i.br to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bs, i1 false)
  br label %_ZN4llvh5APInt12tcShiftRightEPmjj.exit

_ZN4llvh5APInt12tcShiftRightEPmjj.exit:           ; preds = %bb.a, %.loopexit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh5APInt12tcShiftRightEPmjj(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %2, 6                           ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.a) ; 9 uses
  %i.b = and i32 %2, 63                           ; 3 uses
  %i.c = sub i32 %1, %.sroa.speculated            ; 5 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not3137.not = icmp ugt i32 %1, %i.a
  br i1 %.not3137.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = zext nneg i32 %i.b to i64                ; 4 uses
  %i.f = sub nuw nsw i32 64, %i.b
  %i.g = zext nneg i32 %i.f to i64                ; 3 uses
  %i.h = zext nneg i32 %.sroa.speculated to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = lshr i64 %i.j, %i.e                      ; 3 uses
  store i64 %i.k, ptr %0, align 8, !tbaa !10
  %.not3241 = icmp eq i32 %i.c, 1
  br i1 %.not3241, label %.loopexit, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %.lr.ph
  %i.l = zext i32 %i.c to i64
  %i.m = add nsw i64 %i.l, -1                     ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i32 %i.c, 2
  br i1 %i.n, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph43

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %.sroa.speculated to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = shl i32 %i.c, 3
  %i.r = zext i32 %i.q to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.p, i64 %i.r, i1 false)
  br label %.loopexit

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv.next42 = phi i64 [ 1, %.lr.ph43.preheader.new ], [ %indvars.iv.next.1, %.lr.ph43 ] ; 4 uses
  %i.s = phi ptr [ %0, %.lr.ph43.preheader.new ], [ %i.au, %.lr.ph43 ]
  %i.t = phi i64 [ %i.k, %.lr.ph43.preheader.new ], [ %i.at, %.lr.ph43 ]
  %i.u = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader.new ], [ %i.ap, %.lr.ph43 ]
  %niter = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter.next.1, %.lr.ph43 ]
  %i.v = add i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10
  %i.z = shl i64 %i.y, %i.g
  %i.aa = or i64 %i.z, %i.t
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !10
  %i.ab = trunc nuw i64 %indvars.iv.next42 to i32
  %i.ac = add i32 %.sroa.speculated, %i.ab        ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = lshr i64 %i.af, %i.e                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next42, 1 ; 2 uses
  %i.ai = add i32 %i.ac, 1
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = shl i64 %i.al, %i.g
  %i.an = or i64 %i.am, %i.ag
  store i64 %i.an, ptr %i.ah, align 8, !tbaa !10
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = add i32 %.sroa.speculated, %i.ao        ; 3 uses
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = lshr i64 %i.as, %i.e                    ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 3 uses
  store i64 %i.at, ptr %i.au, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next42, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph43

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph43
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv.next42.epil.init = phi i64 [ 1, %.lr.ph43.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %0, %.lr.ph43.preheader ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init45 = phi i64 [ %i.k, %.lr.ph43.preheader ], [ %i.at, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init47 = phi i32 [ %.sroa.speculated, %.lr.ph43.preheader ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.av = add i32 %.epil.init47, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !10
  %i.az = shl i64 %i.ay, %i.g
  %i.ba = or i64 %i.az, %.epil.init45
  store i64 %i.ba, ptr %.epil.init, align 8, !tbaa !10
  %i.bb = trunc nuw i64 %indvars.iv.next42.epil.init to i32
  %i.bc = add i32 %.sroa.speculated, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !10
  %i.bg = lshr i64 %i.bf, %i.e
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next42.epil.init
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph43.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.lr.ph, %.preheader, %bb.c
  %i.bi = zext i32 %i.c to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = shl nuw nsw i32 %.sroa.speculated, 3
  %i.bl = zext nneg i32 %i.bk to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bl, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntlSERKS0_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 6 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvh5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %.0.in.i.i = select i1 %i.f, ptr %1, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !9
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ] ; 3 uses
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  %i.ac = icmp eq i32 %i.aa, %i.b
  %i.ad = load i64, ptr %0, align 8
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = shl i64 %i.ad, %i.ae
  %storemerge.i = select i1 %i.ac, i64 0, i64 %i.af
  %i.ag = sub nsw i32 0, %i.b
  %i.ah = and i32 %i.ag, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = lshr i64 -1, %i.ai
  %i.ak = and i64 %storemerge.i, %i.aj
  store i64 %i.ak, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntlSEj.exit

bb.e:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  tail call void @_ZN4llvh5APInt11shlSlowCaseEj(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.aa)
  br label %_ZN4llvh5APIntlSEj.exit

_ZN4llvh5APIntlSEj.exit:                          ; preds = %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvh5APInt11shlSlowCaseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 63
  %i.f = lshr i64 %i.e, 6                         ; 3 uses
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 4 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN4llvh5APInt11tcShiftLeftEPmjj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i32 %1, 6                           ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.h) ; 11 uses
  %i.i = and i32 %1, 63                           ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.h, %i.g
  br i1 %i.k, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = zext nneg i32 %i.i to i64                ; 4 uses
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %indvars.iv.next.i1 = add nsw i64 %i.f, -1      ; 3 uses
  %indvars.i2 = trunc nsw i64 %indvars.iv.next.i1 to i32 ; 2 uses
  %i.o = sub nsw i32 %indvars.i2, %.sroa.speculated.i ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10
  %i.s = shl i64 %i.r, %i.l                       ; 3 uses
  %i.t = and i64 %indvars.iv.next.i1, 4294967295  ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 3 uses
  store i64 %i.s, ptr %i.u, align 8, !tbaa !10
  %i.v = icmp ult i32 %.sroa.speculated.i, %indvars.i2
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %i.w = xor i32 %.sroa.speculated.i, -1
  %i.x = sext i32 %i.w to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.x ; 3 uses
  %i.y = add nsw i32 %i.g, -2
  %xtraiter = and i32 %i.o, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.t
  %i.z = load i64, ptr %gep.prol, align 8, !tbaa !10
  %i.aa = lshr i64 %i.z, %i.n
  %i.ab = or i64 %i.aa, %i.s
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.f, -2  ; 3 uses
  %indvars.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.ac = sub nsw i32 %indvars.prol, %.sroa.speculated.i
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ag = shl i64 %i.af, %i.l                     ; 2 uses
end_hunk_5
begin_hunk_6_@_ZL12rotateModulojRKN4llvh5APIntE:bb.a
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl i32 %i.ca, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.l ], [ %i.bz, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.ci, %bb.l ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.l, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.k
  %i.cf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = or disjoint i32 %.019.i.i.i.i.i, %i.cg
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ci = add i32 %.019.i.i.i.i.i, 64
  %i.cj = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.cj, label %bb.k, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.l, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.ch, %.thread.i.i.i.i.i ], [ %i.cb, %bb.l ]
  %i.ck = and i32 %i.bv, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.ck, 0
  %.neg.i.i.i.i.i = or i32 %i.bv, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.cl = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.cm = sub i32 %i.bv, %i.cl
  %i.cn = icmp ugt i32 %i.cm, 64
  br i1 %i.cn, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugtEm.exit.i

_ZNK4llvh5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i, %_ZN4llvh5APIntD2Ev.exit9
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._ZNK4llvh5APInt3ugtEm.exit_crit_edge.i ], [ %.pre.i.i.in, %_ZN4llvh5APIntD2Ev.exit9 ]
  %i.co = icmp ugt i64 %.0.i.i.i, %i.ao
  br i1 %i.co, label %_ZNK4llvh5APInt15getLimitedValueEm.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt3ugtEm.exit.i
  %.0.in.i.i = select i1 %i.bw, ptr %2, ptr %.pre.i.i
  %.0.i.i10 = load i64, ptr %.0.in.i.i, align 8, !tbaa !9
  %i.cp = trunc i64 %.0.i.i10 to i32
  br label %_ZNK4llvh5APInt15getLimitedValueEm.exit

_ZNK4llvh5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvh5APInt3ugtEm.exit.i, %bb.m
  %i.cq = phi i32 [ %i.cp, %bb.m ], [ %0, %_ZNK4llvh5APInt3ugtEm.exit.i ], [ %0, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i ]
  %i.cr = icmp eq i64 %.pre.i.i.in, 0
  %or.cond = select i1 %i.bw, i1 true, i1 %i.cr
  br i1 %or.cond, label %_ZN4llvh5APIntD2Ev.exit11, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #23
  br label %_ZN4llvh5APIntD2Ev.exit11

_ZN4llvh5APIntD2Ev.exit11:                        ; preds = %_ZNK4llvh5APInt15getLimitedValueEm.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i32 %i.cq
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrERKS0_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call fastcc noundef i32 @_ZL12rotateModulojRKN4llvh5APIntE(i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(12) %2)
  tail call void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt4rotrEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 13 uses
  %i.c = urem i32 %2, %i.b                        ; 6 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.e, align 8, !tbaa !7
  %i.f = icmp ult i32 %i.b, 65
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !9
  store i64 %i.g, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = zext i32 %i.b to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741816                 ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #22 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !9
  %i.m = load ptr, ptr %1, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr align 8 %i.m, i64 %i.k, i1 false)
  br label %_ZN4llvh5APIntC2ERKS0_.exit

bb.e:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.b, 65
  br i1 %i.n, label %_ZN4llvh5APIntD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext i32 %i.b to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741816                 ; 4 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !197 ; 20 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !9, !noalias !197 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.r, i1 false), !noalias !197
  %i.u = lshr i64 %i.p, 6                         ; 7 uses
  %i.v = trunc nuw nsw i64 %i.u to i32            ; 7 uses
  %i.w = lshr i32 %i.c, 6                         ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.w) ; 9 uses
  %i.x = and i32 %i.c, 63                         ; 3 uses
  %i.y = sub nsw i32 %i.v, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.g, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.f
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.w, %i.v
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.aa = zext nneg i32 %i.x to i64               ; 4 uses
  %i.ab = sub nuw nsw i32 64, %i.x
  %i.ac = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.ad = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !10, !noalias !197
  %i.ag = lshr i64 %i.af, %i.aa                   ; 3 uses
  store i64 %i.ag, ptr %i.s, align 8, !tbaa !10, !noalias !197
  %.not32.i1.i.i.i = icmp eq i32 %i.y, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.ah = zext i32 %i.y to i64
  %i.ai = add nsw i64 %i.ah, -1                   ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.aj = icmp eq i32 %i.y, 2
  br i1 %i.aj, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ai, -2
  br label %.lr.ph.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ak
  %i.am = shl nsw i32 %i.y, 3
  %i.an = zext i32 %i.am to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.al, i64 %i.an, i1 false), !noalias !197
  br label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.ao = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader.new ], [ %i.bq, %.lr.ph.i.i.i ]
  %i.ap = phi i64 [ %i.ag, %.lr.ph.i.i.i.preheader.new ], [ %i.bp, %.lr.ph.i.i.i ]
  %i.aq = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bl, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ar = add i32 %i.aq, 1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !10, !noalias !197
  %i.av = shl i64 %i.au, %i.ac
  %i.aw = or i64 %i.av, %i.ap
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !10, !noalias !197
  %i.ax = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.ay = add i32 %.sroa.speculated.i.i.i.i, %i.ax ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10, !noalias !197
  %i.bc = lshr i64 %i.bb, %i.aa                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !10, !noalias !197
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.be = add i32 %i.ay, 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10, !noalias !197
  %i.bi = shl i64 %i.bh, %i.ac
  %i.bj = or i64 %i.bi, %i.bc
  store i64 %i.bj, ptr %i.bd, align 8, !tbaa !10, !noalias !197
  %i.bk = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bl = add i32 %.sroa.speculated.i.i.i.i, %i.bk ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10, !noalias !197
  %i.bp = lshr i64 %i.bo, %i.aa                   ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !10, !noalias !197
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.bq, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init37 = phi i64 [ %i.ag, %.lr.ph.i.i.i.preheader ], [ %i.bp, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init39 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bl, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.br = add i32 %.epil.init39, 1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !10, !noalias !197
  %i.bv = shl i64 %i.bu, %i.ac
  %i.bw = or i64 %i.bv, %.epil.init37
  store i64 %i.bw, ptr %.epil.init, align 8, !tbaa !10, !noalias !197
  %i.bx = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.by = add i32 %.sroa.speculated.i.i.i.i, %i.bx
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !10, !noalias !197
  %i.cc = lshr i64 %i.cb, %i.aa
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !10, !noalias !197
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.ce = zext i32 %i.y to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ce
  %i.cg = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.ch = zext nneg i32 %i.cg to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cf, i8 0, i64 %i.ch, i1 false), !noalias !197
  %i.ci = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !200 ; 17 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.t, i64 %i.r, i1 false), !noalias !200
  %i.ck = sub i32 %i.b, %i.c                      ; 2 uses
  %i.cl = lshr i32 %i.ck, 6                       ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.cl) ; 11 uses
  %i.cm = and i32 %i.ck, 63                       ; 3 uses
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.h, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit
  %i.co = icmp samesign ult i32 %i.cl, %i.v
  br i1 %i.co, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.cp = zext nneg i32 %i.cm to i64              ; 4 uses
  %i.cq = sub nuw nsw i32 64, %i.cm
  %i.cr = zext nneg i32 %i.cq to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.u, -1    ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.cs = sub nsw i32 %indvars.i2.i, %.sroa.speculated.i.i ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !10
  %i.cw = shl i64 %i.cv, %i.cp                    ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !10
  %i.cy = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.cy, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.cz = xor i32 %.sroa.speculated.i.i, -1
  %i.da = sext i32 %i.cz to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ci, i64 %i.da ; 3 uses
  %i.db = add nsw i32 %i.v, -2
  %xtraiter41 = and i32 %i.cs, 1
  %lcmp.mod42.not = icmp eq i32 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.dc = load i64, ptr %gep.i.prol, align 8, !tbaa !10
  %i.dd = lshr i64 %i.dc, %i.cr
  %i.de = or i64 %i.dd, %i.cw
  store i64 %i.de, ptr %i.cx, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nsw i64 %i.u, -2  ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.df = sub nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !10
  %i.dj = shl i64 %i.di, %i.cp                    ; 2 uses
  %i.dk = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dk ; 2 uses
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !10
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr43 = phi ptr [ %i.cx, %.lr.ph.preheader.i ], [ %i.dl, %.lr.ph.i.prol ]
  %.unr44 = phi i64 [ %i.cw, %.lr.ph.preheader.i ], [ %i.dj, %.lr.ph.i.prol ]
  %i.dm = icmp eq i32 %i.db, %.sroa.speculated.i.i
  br i1 %i.dm, label %.loopexit.i.i, label %.lr.ph.i

bb.h:                                             ; preds = %.loopexit
  %i.dn = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dn
  %i.dp = sub nsw i32 %i.v, %.sroa.speculated.i.i
  %i.dq = shl nsw i32 %i.dp, 3
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.ci, i64 %i.dr, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ds = phi ptr [ %i.en, %.lr.ph.i ], [ %.unr43, %.lr.ph.i.prol.loopexit ]
  %i.dt = phi i64 [ %i.el, %.lr.ph.i ], [ %.unr44, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.du = load i64, ptr %gep.i, align 8, !tbaa !10
  %i.dv = lshr i64 %i.du, %i.cr
  %i.dw = or i64 %i.dv, %i.dt
  store i64 %i.dw, ptr %i.ds, align 8, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.dx = sub i32 %indvars.i, %.sroa.speculated.i.i
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = shl i64 %i.ea, %i.cp                    ; 2 uses
  %i.ec = and i64 %indvars.iv.next.i, 4294967295
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ec ; 2 uses
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !10
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ee = load i64, ptr %gep.i.1, align 8, !tbaa !10
  %i.ef = lshr i64 %i.ee, %i.cr
  %i.eg = or i64 %i.ef, %i.eb
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.eh = sub i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = shl i64 %i.ek, %i.cp                    ; 2 uses
  %i.em = and i64 %indvars.iv.next.i.1, 4294967295
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.em ; 2 uses
  store i64 %i.el, ptr %i.en, align 8, !tbaa !10
  %i.eo = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.eo, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.h, %.lr.ph.i.i, %.preheader.i.i
  %i.ep = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.eq = zext nneg i32 %i.ep to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ci, i8 0, i64 %i.eq, i1 false)
  %i.er = sub i32 0, %i.b
  %i.es = and i32 %i.er, 63
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = lshr i64 -1, %i.et
  %i.ev = add nuw nsw i64 %i.u, 4294967295
  %i.ew = and i64 %i.ev, 4294967295
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ew ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10
  %i.ez = and i64 %i.ey, %i.eu
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %min.iters.check = icmp ult i32 %i.b, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.loopexit.i.i
  %n.vec = and i64 %i.u, 134217724                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x i64>, ptr %i.fa, align 8, !tbaa !10, !noalias !203
  %wide.load32 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !10, !noalias !203
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %index ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load33 = load <2 x i64>, ptr %i.fc, align 8, !tbaa !10, !noalias !203
  %wide.load34 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !10, !noalias !203
  %i.fe = or <2 x i64> %wide.load33, %wide.load
  %i.ff = or <2 x i64> %wide.load34, %wide.load32
  store <2 x i64> %i.fe, ptr %i.fc, align 8, !tbaa !10, !noalias !203
  store <2 x i64> %i.ff, ptr %i.fd, align 8, !tbaa !10, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit35, label %.lr.ph.i.i.i.i4.preheader

.lr.ph.i.i.i.i4.preheader:                        ; preds = %.loopexit.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.loopexit.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i4

.lr.ph.i.i.i.i4:                                  ; preds = %.lr.ph.i.i.i.i4.preheader, %.lr.ph.i.i.i.i4
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i5, %.lr.ph.i.i.i.i4 ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i4.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.i
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !10, !noalias !203
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.i.i.i ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_:bb.a
  %i.ht = load ptr, ptr %1, align 8, !tbaa !9
  %i.hu = load ptr, ptr %2, align 8, !tbaa !9
  %i.hv = load ptr, ptr %3, align 8, !tbaa !9
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.gl, i32 noundef %i.ar, ptr noundef %i.ht, i32 noundef %i.bt, ptr noundef %i.hu, ptr noundef %i.hv)
  %i.hw = load ptr, ptr %2, align 8, !tbaa !9
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.aq
  %i.hy = sub nsw i64 %i.z, %i.aq
  %i.hz = shl nsw i64 %i.hy, 3
  %i.ia = and i64 %i.hz, 4294967288
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hx, i8 0, i64 %i.ia, i1 false)
  %i.ib = load ptr, ptr %3, align 8, !tbaa !9
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.bs
  %i.id = sub nsw i64 %i.z, %i.bs
  %i.ie = shl nsw i64 %i.id, 3
  %i.if = and i64 %i.ie, 4294967288
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ic, i8 0, i64 %i.if, i1 false)
  br label %_ZN4llvh5APIntaSEm.exit134

_ZN4llvh5APIntaSEm.exit134:                       ; preds = %bb.ap, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i133, %_ZN4llvh5APIntD2Ev.exit99, %_ZN4llvh5APIntD2Ev.exit115, %_ZN4llvh5APIntD2Ev.exit129, %bb.aq, %_ZN4llvh5APIntD2Ev.exit72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt5magicEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.llvh::APInt::ms") align 8 captures(none) initializes((0, 12)) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 12 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !7, !alias.scope !244
  %i.g = icmp ult i32 %i.e, 65
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.e, 63
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = inttoptr i64 %i.k to ptr
  br label %_ZN4llvh5APIntD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.m = zext i32 %i.e to i64
  %i.n = add nuw nsw i64 %i.m, 63
  %i.o = lshr i64 %i.n, 6                         ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22, !noalias !244 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.p, i1 false), !noalias !244
  store i64 0, ptr %i.q, align 8, !tbaa !10, !noalias !244
  %.pn.in.in.i.i = sub i32 0, %i.e
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.r = lshr i64 -1, %.pn.i.i
  %i.s = add nuw nsw i64 %i.o, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10, !noalias !244
  %i.w = and i64 %i.v, %i.r
  store i64 %i.w, ptr %i.u, align 8, !tbaa !10, !noalias !244
  %i.x = add i32 %i.e, -1                         ; 2 uses
  %i.y = and i32 %i.x, 63
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = lshr i32 %i.x, 6
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !10, !noalias !244
  %i.af = or i64 %i.ae, %i.aa
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !10, !noalias !244
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 12 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !9, !alias.scope !244
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !7
  store i64 0, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZNK4llvh5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ai = load i64, ptr %6, align 8               ; 7 uses
  store i64 %i.ai, ptr %2, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !7  ; 5 uses
  store i32 %i.ak, ptr %i.a, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.al = load i32, ptr %i.d, align 8, !tbaa !7   ; 7 uses
  %i.am = add i32 %i.al, -1                       ; 3 uses
  %i.an = icmp ult i32 %i.al, 65                  ; 3 uses
  %i.ao = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.ap = inttoptr i64 %i.ai to ptr               ; 5 uses
  br i1 %i.an, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.aq = zext i32 %i.al to i64
  %i.ar = add nuw nsw i64 %i.aq, 63               ; 3 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741816               ; 4 uses
  %i.au = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #22, !noalias !247 ; 24 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = load ptr, ptr %1, align 8, !tbaa !9, !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr align 8 %i.aw, i64 %i.at, i1 false), !noalias !247
  %i.ax = lshr i64 %i.ar, 6                       ; 6 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i32          ; 3 uses
  %i.az = lshr i32 %i.am, 6                       ; 2 uses
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.az) ; 9 uses
  %i.ba = and i32 %i.am, 63                       ; 3 uses
  %i.bb = sub nsw i32 %i.ay, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.bc = icmp eq i32 %i.ba, 0
  br i1 %i.bc, label %bb.e, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.az, %i.ay
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.bd = zext nneg i32 %i.ba to i64              ; 4 uses
  %i.be = sub nuw nsw i32 64, %i.ba
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10, !noalias !247
  %i.bj = lshr i64 %i.bi, %i.bd                   ; 3 uses
  store i64 %i.bj, ptr %i.au, align 8, !tbaa !10, !noalias !247
  %.not32.i1.i.i.i = icmp eq i32 %i.bb, 1
  br i1 %.not32.i1.i.i.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.bk = zext i32 %i.bb to i64
  %i.bl = add nsw i64 %i.bk, -1                   ; 3 uses
  %xtraiter = and i64 %i.bl, 1
  %i.bm = icmp eq i32 %i.bb, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.bl, -2
  br label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bn = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bn
  %i.bp = shl nsw i32 %i.bb, 3
  %i.bq = zext i32 %i.bp to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull align 8 %i.bo, i64 %i.bq, i1 false), !noalias !247
  br label %.lr.ph.preheader.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.br = phi ptr [ %i.au, %.lr.ph.i.i.i.preheader.new ], [ %i.ct, %.lr.ph.i.i.i ]
  %i.bs = phi i64 [ %i.bj, %.lr.ph.i.i.i.preheader.new ], [ %i.cs, %.lr.ph.i.i.i ]
  %i.bt = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.co, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bu = add i32 %i.bt, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10, !noalias !247
  %i.by = shl i64 %i.bx, %i.bf
  %i.bz = or i64 %i.by, %i.bs
  store i64 %i.bz, ptr %i.br, align 8, !tbaa !10, !noalias !247
  %i.ca = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.cb = add i32 %.sroa.speculated.i.i.i.i, %i.ca ; 2 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !10, !noalias !247
  %i.cf = lshr i64 %i.ce, %i.bd                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !10, !noalias !247
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.ch = add i32 %i.cb, 1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10, !noalias !247
  %i.cl = shl i64 %i.ck, %i.bf
  %i.cm = or i64 %i.cl, %i.cf
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !10, !noalias !247
  %i.cn = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.co = add i32 %.sroa.speculated.i.i.i.i, %i.cn ; 3 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10, !noalias !247
  %i.cs = lshr i64 %i.cr, %i.bd                   ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !10, !noalias !247
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.lr.ph.preheader.i.i.i.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.au, %.lr.ph.i.i.i.preheader ], [ %i.ct, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init798 = phi i64 [ %i.bj, %.lr.ph.i.i.i.preheader ], [ %i.cs, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %.epil.init800 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.co, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod801 = trunc i64 %i.bl to i1
  call void @llvm.assume(i1 %lcmp.mod801)
  %i.cu = add i32 %.epil.init800, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !10, !noalias !247
  %i.cy = shl i64 %i.cx, %i.bf
  %i.cz = or i64 %i.cy, %.epil.init798
  store i64 %i.cz, ptr %.epil.init, align 8, !tbaa !10, !noalias !247
  %i.da = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.db = add i32 %.sroa.speculated.i.i.i.i, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10, !noalias !247
  %i.df = lshr i64 %i.de, %i.bd
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !10, !noalias !247
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i.i.i.epil.preheader, %.lr.ph.preheader.i.i.i.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.dh = zext i32 %i.bb to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dh
  %i.dj = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.dk = zext nneg i32 %i.dj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.di, i8 0, i64 %i.dk, i1 false), !noalias !247
  %i.dl = icmp eq i64 %i.ax, 1
  br i1 %i.dl, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter805 = and i64 %i.ax, 134217726
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i12 ] ; 4 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i.new ], [ %.1.in.i.i.i.1, %.lr.ph.i.i.i12 ] ; 2 uses
  %niter806 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter806.next.1, %.lr.ph.i.i.i12 ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.i ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !10, !noalias !250 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10, !noalias !250
  %i.dq = add i64 %i.dp, %i.dn                    ; 3 uses
  %i.dr = icmp uge i64 %i.dq, %i.dn
  %i.ds = add i64 %i.dq, 1                        ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, %i.dn
  %.sink.i.i.i = select i1 %.022.i.i.i, i64 %i.dq, i64 %i.ds
  %.1.in.i.i.i = select i1 %.022.i.i.i, i1 %i.dr, i1 %i.dt ; 2 uses
  store i64 %.sink.i.i.i, ptr %i.dm, align 8, !tbaa !10, !noalias !250
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !10, !noalias !250 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !10, !noalias !250
  %i.dy = add i64 %i.dx, %i.dv                    ; 3 uses
  %i.dz = icmp uge i64 %i.dy, %i.dv
  %i.ea = add i64 %i.dy, 1                        ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, %i.dv
  %.sink.i.i.i.1 = select i1 %.1.in.i.i.i, i64 %i.dy, i64 %i.ea
  %.1.in.i.i.i.1 = select i1 %.1.in.i.i.i, i1 %i.dz, i1 %i.eb ; 2 uses
  store i64 %.sink.i.i.i.1, ptr %i.du, align 8, !tbaa !10, !noalias !250
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter806.next.1 = add i64 %niter806, 2         ; 2 uses
  %niter806.ncmp.1 = icmp eq i64 %niter806.next.1, %unroll_iter805
  br i1 %niter806.ncmp.1, label %.lr.ph.preheader.i.i.i16.unr-lcssa, label %.lr.ph.i.i.i12, !llvm.loop !25

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i: ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ec = load i64, ptr %1, align 8, !tbaa !9, !noalias !247
  %i.ed = zext nneg i32 %i.am to i64
  %i.ee = lshr i64 %i.ec, %i.ed
  %i.ef = add i64 %i.ee, %i.ao
  %i.eg = sub nsw i32 0, %i.al
  %i.eh = and i32 %i.eg, 63
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = lshr i64 -1, %i.ei                      ; 2 uses
  %i.ek = and i64 %i.ef, %i.ej                    ; 3 uses
  store i64 %i.ek, ptr %4, align 8
  store i32 %i.al, ptr %i.c, align 8, !tbaa !7
  %i.el = add i64 %i.ek, -1
  %i.em = and i64 %i.el, %i.ej
  %i.en = inttoptr i64 %i.ek to ptr
  br label %_ZN4llvhmiENS_5APIntEm.exit

.lr.ph.preheader.i.i.i16.unr-lcssa:               ; preds = %.lr.ph.i.i.i12
  %i.eo = and i64 %i.ar, 64
  %lcmp.mod803.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod803.not, label %.lr.ph.preheader.i.i.i16, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ] ; 2 uses
  %.022.i.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %.1.in.i.i.i.1, %.lr.ph.preheader.i.i.i16.unr-lcssa ]
  %lcmp.mod804 = trunc i64 %i.ax to i1
  call void @llvm.assume(i1 %lcmp.mod804)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10, !noalias !250
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.epil.init
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10, !noalias !250
  %i.et = add i64 %i.es, %i.eq
  %not..022.i.i.i.epil.init = xor i1 %.022.i.i.i.epil.init, true
  %i.eu = zext i1 %not..022.i.i.i.epil.init to i64
  %.sink.i.i.i.epil = add i64 %i.et, %i.eu
  store i64 %.sink.i.i.i.epil, ptr %i.ep, align 8, !tbaa !10, !noalias !250
  br label %.lr.ph.preheader.i.i.i16

.lr.ph.preheader.i.i.i16:                         ; preds = %.lr.ph.preheader.i.i.i16.unr-lcssa, %.lr.ph.i.i.i12.epil.preheader
  %i.ev = sub i32 0, %i.al
  %i.ew = and i32 %i.ev, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 -1, %i.ex                      ; 2 uses
  %i.ez = add nuw nsw i64 %i.ax, 4294967295
  %i.fa = and i64 %i.ez, 4294967295               ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10, !noalias !250
  %i.fd = and i64 %i.fc, %i.ey
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !10, !noalias !250
  store i64 %i.av, ptr %4, align 8
  store i32 %i.al, ptr %i.c, align 8, !tbaa !7
  %i.fe = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #22 ; 6 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %i.au, i64 %i.at, i1 false)
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !10, !noalias !253 ; 2 uses
  %i.fh = add i64 %i.fg, -1
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !10, !noalias !253
  %.not.peel.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not.peel.i.i.i, label %.lr.ph.i.i.i21, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.preheader.i.i.i16, %.lr.ph.i.i.i21
  %indvars.iv.i.i.i22 = phi i64 [ %indvars.iv.next.i.i.i23, %.lr.ph.i.i.i21 ], [ 1, %.lr.ph.preheader.i.i.i16 ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i22 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !10, !noalias !253 ; 2 uses
  %i.fk = add i64 %i.fj, -1
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !10, !noalias !253
  %.not.i.i.i = icmp ne i64 %i.fj, 0
  %indvars.iv.next.i.i.i23 = add nuw nsw i64 %indvars.iv.i.i.i22, 1 ; 2 uses
  %exitcond.not.i.i.i24 = icmp eq i64 %indvars.iv.next.i.i.i23, %i.ax
  %or.cond.i.i = select i1 %.not.i.i.i, i1 true, i1 %exitcond.not.i.i.i24
  br i1 %or.cond.i.i, label %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i, label %.lr.ph.i.i.i21, !llvm.loop !24

_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i21, %.lr.ph.preheader.i.i.i16
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fa ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10, !noalias !253
  %i.fn = and i64 %i.fm, %i.ey
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !10, !noalias !253
  br label %_ZN4llvhmiENS_5APIntEm.exit

_ZN4llvhmiENS_5APIntEm.exit:                      ; preds = %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i
  %i.fo = phi ptr [ %i.en, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i ], [ %i.au, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i ] ; 2 uses
  %.sroa.0448.1 = phi i64 [ %i.em, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread2.i.i ], [ %i.ff, %_ZN4llvh5APInt14tcSubtractPartEPmmj.exit.thread.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @_ZNK4llvh5APInt4uremERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !7, !noalias !256 ; 7 uses
  %i.fr = icmp ult i32 %i.fq, 65
  br i1 %i.fr, label %_ZN4llvh5APInt5tcAddEPmPKmmj.exit.thread.i.i35, label %bb.f

bb.f:                                             ; preds = %_ZN4llvhmiENS_5APIntEm.exit
  %i.fs = load ptr, ptr %7, align 8, !tbaa !9, !noalias !256 ; 2 uses
  %i.ft = zext i32 %i.fq to i64
  %i.fu = add nuw nsw i64 %i.ft, 63               ; 2 uses
  %i.fv = lshr i64 %i.fu, 6                       ; 8 uses
  %min.iters.check = icmp ult i32 %i.fq, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.f
  %n.vec = and i64 %i.fv, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fw, align 8, !tbaa !10, !noalias !256
  %wide.load742 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10, !noalias !256
  %i.fy = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.fz = xor <2 x i64> %wide.load742, splat (i64 -1)
  store <2 x i64> %i.fy, ptr %i.fw, align 8, !tbaa !10, !noalias !256
  store <2 x i64> %i.fz, ptr %i.fx, align 8, !tbaa !10, !noalias !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.f, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
end_hunk_7
begin_hunk_8_@_ZNK4llvh5APInt4uremERKS0_:bb.a
  %.not13.i.i.i = icmp eq i64 %i.ci, %i.ck
  br i1 %.not13.i.i.i, label %bb.i, label %_ZNK4llvh5APInt3ultERKS0_.exit, !llvm.loop !84

_ZNK4llvh5APInt3ultERKS0_.exit:                   ; preds = %.lr.ph
  %.not = icmp ugt i64 %i.ci, %i.ck
  br i1 %.not, label %_ZNK4llvh5APInteqERKS0_.exit, label %_ZN4llvh5APIntC2ERKS0_.exit

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvh5APInt3ultERKS0_.exit, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.cl, align 8, !tbaa !7
  %i.cm = lshr i64 %i.n, 3
  %i.cn = and i64 %i.cm, 1073741816               ; 2 uses
  %i.co = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cn) #22 ; 2 uses
  store ptr %i.co, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.co, ptr align 8 %i.q, i64 %i.cn, i1 false)
  br label %bb.n

_ZNK4llvh5APInteqERKS0_.exit:                     ; preds = %bb.i, %.preheader, %_ZNK4llvh5APInt3ultERKS0_.exit
  %i.cp = lshr i64 %i.n, 3
  %.idx.i.i = and i64 %i.cp, 1073741816
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.q, ptr %i.bf, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  br label %bb.n

bb.k:                                             ; preds = %_ZNK4llvh5APInteqERKS0_.exit
  %i.cq = icmp eq i64 %i.af, 1
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i64, ptr %i.q, align 8, !tbaa !10
  %i.cs = load i64, ptr %i.bf, align 8, !tbaa !10
  %i.ct = urem i64 %i.cr, %i.cs
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef %i.ct, i1 noundef zeroext false)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN4llvh5APIntC2Ejmb(ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %i.b, i64 noundef 0, i1 noundef zeroext false)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !9
  %i.cv = load ptr, ptr %2, align 8, !tbaa !9
  %i.cw = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @_ZN4llvh5APInt6divideEPKmjS2_jPmS3_(ptr noundef %i.cu, i32 noundef %i.ag, ptr noundef %i.cv, i32 noundef %i.bk, ptr noundef null, ptr noundef %i.cw)
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntC2Ejmb.exit33, %_ZN4llvh5APIntC2Ejmb.exit38, %_ZN4llvh5APIntC2ERKS0_.exit, %bb.j, %bb.l, %bb.m, %_ZN4llvh5APIntC2Ejmb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt6magicuEj(ptr dead_on_unwind noalias nofree writable sret(%"struct.llvh::APInt::mu") align 8 captures(none) initializes((0, 12), (16, 17)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 7 uses
  %4 = alloca %"class.llvh::APInt", align 8       ; 11 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 12 uses
  %6 = alloca %"class.llvh::APInt", align 8       ; 14 uses
  %7 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %8 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  %9 = alloca %"class.llvh::APInt", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 1, ptr %i.a, align 8, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.b, align 8, !tbaa !7
  store i64 0, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !328
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !7    ; 11 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 4 uses
  br i1 %i.f, label %_ZN4llvh5APIntD2Ev.exit.thread, label %bb.b

_ZN4llvh5APIntD2Ev.exit.thread:                   ; preds = %bb.a
  %i.g = icmp eq i32 %2, %i.e
  %i.h = sub nsw i32 0, %i.e
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 -1, %i.j
  %i.l = zext nneg i32 %2 to i64
  %i.m = lshr i64 %i.k, %i.l
  %.sroa.0659.0779.ph = select i1 %i.g, i64 0, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.e, ptr %i.n, align 8, !tbaa !7, !alias.scope !331
  br label %_ZN4llvh5APInt17getSignedMaxValueEj.exit

bb.b:                                             ; preds = %bb.a
  %i.o = zext i32 %i.e to i64
  %i.p = add nuw nsw i64 %i.o, 63                 ; 2 uses
  %i.q = lshr i64 %i.p, 6                         ; 3 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 3 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #22, !noalias !334 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.r, i1 false), !noalias !334
  store i64 -1, ptr %i.s, align 8, !tbaa !10, !noalias !334
  %scevgep.i = getelementptr i8, ptr %i.s, i64 8
  %i.t = add nsw i64 %i.r, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 -1, i64 %i.t, i1 false), !tbaa !10, !noalias !334
  %.pn.in.in.i.i = sub i32 0, %i.e
  %.pn.in.i.i = and i32 %.pn.in.in.i.i, 63
  %.pn.i.i = zext nneg i32 %.pn.in.i.i to i64
  %i.u = lshr i64 -1, %.pn.i.i
  %i.v = add nuw nsw i64 %i.q, 4294967295
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !10, !noalias !334
  %i.z = and i64 %i.y, %i.u
  store i64 %i.z, ptr %i.x, align 8, !tbaa !10, !noalias !334
  %i.aa = lshr i64 %i.p, 3
  %i.ab = and i64 %i.aa, 1073741816               ; 2 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #22, !noalias !337 ; 18 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.s, i64 %i.ab, i1 false), !noalias !337
  %i.ae = trunc nuw nsw i64 %i.q to i32           ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh5APIntD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = lshr i32 %2, 6                          ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 %i.af) ; 9 uses
  %i.ag = and i32 %2, 63                          ; 3 uses
  %i.ah = sub nsw i32 %i.ae, %.sroa.speculated.i.i.i.i ; 5 uses
  %i.ai = icmp eq i32 %i.ag, 0
  br i1 %i.ai, label %bb.d, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %.not3137.not.i.i.i.i = icmp samesign ult i32 %i.af, %i.ae
  br i1 %.not3137.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.aj = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ak = sub nuw nsw i32 64, %i.ag
  %i.al = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.am = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10, !noalias !337
  %i.ap = lshr i64 %i.ao, %i.aj                   ; 3 uses
  store i64 %i.ap, ptr %i.ac, align 8, !tbaa !10, !noalias !337
  %.not32.i1.i.i.i = icmp eq i32 %i.ah, 1
  br i1 %.not32.i1.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.i.i.i
  %i.aq = zext i32 %i.ah to i64
  %i.ar = add nsw i64 %i.aq, -1                   ; 3 uses
  %xtraiter = and i64 %i.ar, 1
  %i.as = icmp eq i32 %i.ah, 2
  br i1 %i.as, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.ar, -2
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.at = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.at
  %i.av = shl nsw i32 %i.ah, 3
  %i.aw = zext i32 %i.av to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.au, i64 %i.aw, i1 false), !noalias !337
  br label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.ax = phi ptr [ %i.ac, %.lr.ph.i.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i.i ]
  %i.ay = phi i64 [ %i.ap, %.lr.ph.i.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i.i ]
  %i.az = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.ba = add i32 %i.az, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !10, !noalias !337
  %i.be = shl i64 %i.bd, %i.al
  %i.bf = or i64 %i.be, %i.ay
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !10, !noalias !337
  %i.bg = trunc nuw i64 %indvars.iv.next.i2.i.i.i to i32
  %i.bh = add i32 %.sroa.speculated.i.i.i.i, %i.bg ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !10, !noalias !337
  %i.bl = lshr i64 %i.bk, %i.aj                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i2.i.i.i ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !10, !noalias !337
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 2 uses
  %i.bn = add i32 %i.bh, 1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bo
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !10, !noalias !337
  %i.br = shl i64 %i.bq, %i.al
  %i.bs = or i64 %i.br, %i.bl
  store i64 %i.bs, ptr %i.bm, align 8, !tbaa !10, !noalias !337
  %i.bt = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  %i.bu = add i32 %.sroa.speculated.i.i.i.i, %i.bt ; 3 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10, !noalias !337
  %i.by = lshr i64 %i.bx, %i.aj                   ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !10, !noalias !337
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

.loopexit.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.loopexit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.1, %.loopexit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1087 = phi i64 [ %i.ap, %.lr.ph.i.i.i.preheader ], [ %i.by, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %.epil.init1089 = phi i32 [ %.sroa.speculated.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bu, %.loopexit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1090 = trunc i64 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod1090)
  %i.ca = add i32 %.epil.init1089, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10, !noalias !337
  %i.ce = shl i64 %i.cd, %i.al
  %i.cf = or i64 %i.ce, %.epil.init1087
  store i64 %i.cf, ptr %.epil.init, align 8, !tbaa !10, !noalias !337
  %i.cg = trunc nuw i64 %indvars.iv.next.i2.i.i.i.epil.init to i32
  %i.ch = add i32 %.sroa.speculated.i.i.i.i, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !10, !noalias !337
  %i.cl = lshr i64 %i.ck, %i.aj
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i2.i.i.i.epil.init
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !10, !noalias !337
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.epil.preheader, %.loopexit.i.i.i.i.loopexit.unr-lcssa, %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %i.cn = zext i32 %i.ah to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.cn
  %i.cp = shl nuw nsw i32 %.sroa.speculated.i.i.i.i, 3
  %i.cq = zext nneg i32 %i.cp to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.co, i8 0, i64 %i.cq, i1 false), !noalias !337
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %bb.b, %.loopexit.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #23
  %.pre = load i32, ptr %i.d, align 8, !tbaa !7   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.pre, ptr %i.cr, align 8, !tbaa !7, !alias.scope !340
  %i.cs = icmp ult i32 %.pre, 65
  br i1 %i.cs, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit, label %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread

_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread:  ; preds = %_ZN4llvh5APIntD2Ev.exit
  %i.ct = zext i32 %.pre to i64
  %i.cu = add nuw nsw i64 %i.ct, 63
  %i.cv = lshr i64 %i.cu, 6                       ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 3                ; 5 uses
  %i.cx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #22, !noalias !340 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cx, i8 0, i64 %i.cw, i1 false), !noalias !340
  store i64 0, ptr %i.cx, align 8, !tbaa !10, !noalias !340
  %.pn.in.in.i.i21 = sub i32 0, %.pre
  %.pn.in.i.i22 = and i32 %.pn.in.in.i.i21, 63
  %.pn.i.i23 = zext nneg i32 %.pn.in.i.i22 to i64
  %i.cy = lshr i64 -1, %.pn.i.i23                 ; 2 uses
  %i.cz = add nuw nsw i64 %i.cv, 4294967295
  %i.da = and i64 %i.cz, 4294967295               ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.da ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !10, !noalias !340
  %i.dd = and i64 %i.dc, %i.cy
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !10, !noalias !340
  %i.de = add i32 %.pre, -1                       ; 2 uses
  %i.df = and i32 %i.de, 63
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg                    ; 2 uses
  %i.di = lshr i32 %i.de, 6
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dj ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !10, !noalias !340
  %i.dm = or i64 %i.dl, %i.dh
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !10, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cw) #22, !noalias !348 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dn, i8 0, i64 %i.cw, i1 false), !noalias !348
  store i64 -1, ptr %i.dn, align 8, !tbaa !10, !noalias !348
  %scevgep.i.i = getelementptr i8, ptr %i.dn, i64 8
  %i.do = add nsw i64 %i.cw, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i, i8 -1, i64 %i.do, i1 false), !tbaa !10, !noalias !348
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.da ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10, !noalias !348
  %i.dr = and i64 %i.dq, %i.cy
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !10, !noalias !348
  %i.ds = xor i64 %i.dh, -1
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dj ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !10, !noalias !342
  %i.dv = and i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !10, !noalias !342
  store ptr %i.cx, ptr %4, align 8, !tbaa !9, !alias.scope !340
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.pre, ptr %i.dw, align 8, !tbaa !7, !alias.scope !349
  store ptr %i.dn, ptr %5, align 8, !tbaa !9, !alias.scope !342
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dx = ptrtoint ptr %i.cx to i64
  %i.dy = ptrtoint ptr %i.dn to i64
  br label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt17getSignedMaxValueEj.exit:         ; preds = %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh5APIntD2Ev.exit.thread
  %.sroa.0659.0779979 = phi i64 [ %.sroa.0659.0779.ph, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %i.ad, %_ZN4llvh5APIntD2Ev.exit ] ; 3 uses
  %i.dz = phi i32 [ %i.e, %_ZN4llvh5APIntD2Ev.exit.thread ], [ %.pre, %_ZN4llvh5APIntD2Ev.exit ] ; 5 uses
  %i.ea = add nuw nsw i32 %i.dz, 63
  %i.eb = and i32 %i.ea, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec                    ; 4 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ef = sub nsw i32 0, %i.dz
  %i.eg = and i32 %i.ef, 63
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = lshr i64 -1, %i.eh
  %i.ej = xor i64 %i.ed, -1
  %i.ek = and i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = inttoptr i64 %i.ek to ptr               ; 3 uses
  store ptr %i.ee, ptr %4, align 8, !tbaa !9, !alias.scope !340
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.dz, ptr %i.em, align 8, !tbaa !7, !alias.scope !349
  store ptr %i.el, ptr %5, align 8, !tbaa !9, !alias.scope !342
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  br i1 %i.f, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.thread.i.i: ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.en = load i64, ptr %1, align 8, !tbaa !9, !noalias !352
  %i.eo = sub i64 %.sroa.0659.0779979, %i.en
  %i.ep = sub nsw i32 0, %i.e
  %i.eq = and i32 %i.ep, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = lshr i64 -1, %i.er
  %i.et = and i64 %i.eo, %i.es
  br label %_ZN4llvhmiENS_5APIntERKS0_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread, %_ZN4llvh5APInt17getSignedMaxValueEj.exit
  %i.eu = phi i64 [ %i.dy, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.ek, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ev = phi i64 [ %i.dx, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.ed, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ew = phi ptr [ %i.dn, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.el, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ex = phi ptr [ %i.cx, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.ee, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %i.ey = phi i32 [ %.pre, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %i.dz, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ]
  %.sroa.0659.0779978982 = phi i64 [ %i.ad, %_ZN4llvh5APInt17getSignedMaxValueEj.exit.thread ], [ %.sroa.0659.0779979, %_ZN4llvh5APInt17getSignedMaxValueEj.exit ] ; 2 uses
  %i.ez = zext i32 %i.e to i64
  %i.fa = add nuw nsw i64 %i.ez, 63               ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = and i64 %i.fb, 1073741816               ; 2 uses
  %i.fd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fc) #22 ; 4 uses
  %i.fe = inttoptr i64 %.sroa.0659.0779978982 to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr align 8 %i.fe, i64 %i.fc, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.ff = load ptr, ptr %1, align 8, !tbaa !9, !noalias !352
  %i.fg = lshr i64 %i.fa, 6                       ; 2 uses
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.g ] ; 3 uses
  %.022.i.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.i ], [ %i.fp, %bb.g ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i.i.i ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !10, !noalias !352 ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i.i.i
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !10, !noalias !352 ; 3 uses
  br i1 %.022.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i24
  %.neg.i.i.i = xor i64 %i.fk, -1
  %i.fl = add i64 %i.fi, %.neg.i.i.i              ; 2 uses
  %i.fm = icmp uge i64 %i.fl, %i.fi
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i24
  %i.fn = sub i64 %i.fi, %i.fk
  %i.fo = icmp ugt i64 %i.fk, %i.fi
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i.i.i = phi i64 [ %i.fn, %bb.f ], [ %i.fl, %bb.e ]
  %.1.in.i.i.i = phi i1 [ %i.fo, %bb.f ], [ %i.fm, %bb.e ]
  store i64 %.sink.i.i.i, ptr %i.fh, align 8, !tbaa !10, !noalias !352
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.fg
  %i.fp = xor i1 %.1.in.i.i.i, true
  br i1 %exitcond.not.i.i.i, label %_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i, label %.lr.ph.i.i.i24, !llvm.loop !26

_ZN4llvh5APInt10tcSubtractEPmPKmmj.exit.i.i:      ; preds = %bb.g
  %i.fq = ptrtoint ptr %i.fd to i64
  %i.fr = sub i32 0, %i.e
  %i.fs = and i32 %i.fr, 63
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = lshr i64 -1, %i.ft
  %i.fv = add nuw nsw i64 %i.fg, 4294967295
  %i.fw = and i64 %i.fv, 4294967295
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fw ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !10, !noalias !352
  %i.fz = and i64 %i.fy, %i.fu
  store i64 %i.fz, ptr %i.fx, align 8, !tbaa !10, !noalias !352
  br label %_ZN4llvhmiENS_5APIntERKS0_.exit
end_hunk_8
begin_hunk_9_@_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb:bb.a
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr %i.eo, align 8, !tbaa !609
  br label %bb.u

bb.u:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit74, %bb.r, %_ZN4llvh5APIntC2ERKS0_.exit
  %i.ez = load i8, ptr %.0, align 1, !tbaa !9     ; 2 uses
  %.not119 = icmp eq i8 %i.ez, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %.not119, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.u
  %.pre145 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !609
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !609
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77
  %i.fc = phi i32 [ %.pre, %.lr.ph ], [ %i.fk, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77 ] ; 2 uses
  %i.fd = phi i8 [ %i.ez, %.lr.ph ], [ %i.fm, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77 ]
  %.3120 = phi ptr [ %.0, %.lr.ph ], [ %i.fl, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77 ]
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !612
  %.not.i75 = icmp ult i32 %i.fc, %i.fe
  br i1 %.not.i75, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77, label %bb.w, !prof !613

bb.w:                                             ; preds = %bb.v
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.fb, i64 noundef 0, i64 noundef 1) #24
  %.pre.i76 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77: ; preds = %bb.v, %bb.w
  %i.ff = phi i32 [ %.pre.i76, %bb.w ], [ %i.fc, %bb.v ]
  %i.fg = load ptr, ptr %1, align 8, !tbaa !614
  %i.fh = zext i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh
  store i8 %i.fd, ptr %i.fi, align 1
  %i.fj = load i32, ptr %.phi.trans.insert, align 8, !tbaa !609
  %i.fk = add i32 %i.fj, 1                        ; 3 uses
  store i32 %i.fk, ptr %.phi.trans.insert, align 8, !tbaa !609
  %i.fl = getelementptr inbounds nuw i8, ptr %.3120, i64 1 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9   ; 2 uses
  %.not = icmp eq i8 %i.fm, 0
  br i1 %.not, label %._crit_edge, label %bb.v, !llvm.loop !620

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77, %.._crit_edge_crit_edge
  %i.fn = phi i32 [ %.pre145, %.._crit_edge_crit_edge ], [ %i.fk, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit77 ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.fp = zext i32 %i.fn to i64                   ; 2 uses
  switch i32 %2, label %.preheader109 [
    i32 16, label %bb.x
    i32 8, label %bb.x
    i32 2, label %bb.x
  ]

.preheader109:                                    ; preds = %._crit_edge
  %i.fq = zext i32 %2 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.ac

bb.x:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %i.ft = icmp eq i32 %2, 16
  %i.fu = icmp eq i32 %2, 8
  %i.fv = select i1 %i.fu, i32 3, i32 1
  %i.fw = select i1 %i.ft, i32 4, i32 %i.fv       ; 2 uses
  %i.fx = add nsw i32 %2, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ga = zext nneg i32 %i.fw to i64              ; 4 uses
  %i.gb = sub nuw nsw i32 64, %i.fw
  %i.gc = zext nneg i32 %i.gb to i64              ; 3 uses
  %i.gd = lshr i64 %i.dc, 6                       ; 4 uses
  %i.ge = trunc nuw nsw i64 %i.gd to i32
  %i.gf = shl i32 %i.ge, 6
  %i.gg = and i32 %i.f, 63
  %.not.i.i.i = icmp eq i32 %i.gg, 0
  %.neg.i.i.i = or i32 %i.f, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i
  %i.gh = add nsw i64 %i.gd, -1                   ; 3 uses
  %xtraiter = and i64 %i.gh, 1
  %i.gi = icmp eq i64 %i.gd, 2
  %unroll_iter = and i64 %i.gh, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod222 = trunc i64 %i.gh to i1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i84
  %indvars.iv.next.i2.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i84 ], [ %indvars.iv.next.i.i.i85.1, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.df, %.lr.ph.i.i.i84 ], [ %i.ih, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  %.epil.init219 = phi i64 [ %i.hq, %.lr.ph.i.i.i84 ], [ %i.ii, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  %.epil.init221 = phi i64 [ 0, %.lr.ph.i.i.i84 ], [ %indvars.iv.next.i.i.i85, %.lr.ph.i.i.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.epil.init221
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !10
  %i.gm = shl i64 %i.gl, %i.gc
  %i.gn = or i64 %i.gm, %.epil.init219
  store i64 %i.gn, ptr %.epil.init, align 8, !tbaa !10
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i2.i.i.epil.init ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !10
  %i.gq = lshr i64 %i.gp, %i.ga
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !10
  br label %.lr.ph.i.i.i.loopexit

.lr.ph.i.i.i.loopexit:                            ; preds = %.lr.ph.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil.preheader
  br label %.lr.ph.i.i.i, !llvm.loop !621

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.loopexit, %bb.x
  %i.gr = phi i32 [ %i.fn, %bb.x ], [ %i.ho, %.lr.ph.i.i.i.loopexit ] ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.z ], [ %i.gd, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.gy, %bb.z ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i.i
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.z, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.y
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gt, i1 true)
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = or disjoint i32 %.019.i.i.i, %i.gw
  br label %_ZNK4llvh5APInt12getBoolValueEv.exit

bb.z:                                             ; preds = %bb.y
  %i.gy = add i32 %.019.i.i.i, 64
  %i.gz = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.gz, label %bb.y, label %_ZNK4llvh5APInt12getBoolValueEv.exit, !llvm.loop !93

_ZNK4llvh5APInt12getBoolValueEv.exit:             ; preds = %bb.z, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.gx, %.thread.i.i.i ], [ %i.gf, %bb.z ]
  %i.ha = add i32 %.2.i.i.i, %.neg15.i.i.i
  %i.hb = icmp eq i32 %i.ha, %i.f
  br i1 %i.hb, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvh5APInt12getBoolValueEv.exit
  %i.hc = load i64, ptr %i.df, align 8, !tbaa !10
  %i.hd = trunc i64 %i.hc to i32
  %i.he = and i32 %i.fx, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbbE6Digits, i64 %i.hf
  %i.hh = load i32, ptr %i.fy, align 4, !tbaa !612
  %.not.i80 = icmp ult i32 %i.gr, %i.hh
  br i1 %.not.i80, label %.lr.ph.i.i.i84, label %bb.ab, !prof !613

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.fz, i64 noundef 0, i64 noundef 1) #24
  %.pre.i81 = load i32, ptr %i.fo, align 8, !tbaa !609
  br label %.lr.ph.i.i.i84

.lr.ph.i.i.i84:                                   ; preds = %bb.ab, %bb.aa
  %i.hi = phi i32 [ %.pre.i81, %bb.ab ], [ %i.gr, %bb.aa ]
  %i.hj = load ptr, ptr %1, align 8, !tbaa !614
  %i.hk = zext i32 %i.hi to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hk
  %i.hm = load i8, ptr %i.hg, align 1
  store i8 %i.hm, ptr %i.hl, align 1
  %i.hn = load i32, ptr %i.fo, align 8, !tbaa !609
  %i.ho = add i32 %i.hn, 1                        ; 2 uses
  store i32 %i.ho, ptr %i.fo, align 8, !tbaa !609
  %i.hp = load i64, ptr %i.df, align 8, !tbaa !10
  %i.hq = lshr i64 %i.hp, %i.ga                   ; 3 uses
  store i64 %i.hq, ptr %i.df, align 8, !tbaa !10
  br i1 %i.gi, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i84, %.lr.ph.i.i
  %indvars.iv.next.i2.i.i = phi i64 [ %indvars.iv.next.i.i.i85.1, %.lr.ph.i.i ], [ 1, %.lr.ph.i.i.i84 ] ; 4 uses
  %i.hr = phi ptr [ %i.ih, %.lr.ph.i.i ], [ %i.df, %.lr.ph.i.i.i84 ]
  %i.hs = phi i64 [ %i.ii, %.lr.ph.i.i ], [ %i.hq, %.lr.ph.i.i.i84 ]
  %i.ht = phi i64 [ %indvars.iv.next.i.i.i85, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i84 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.i84 ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = shl i64 %i.hw, %i.gc
  %i.hy = or i64 %i.hx, %i.hs
  store i64 %i.hy, ptr %i.hr, align 8, !tbaa !10
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i2.i.i ; 3 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = lshr i64 %i.ia, %i.ga                   ; 2 uses
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !10
  %indvars.iv.next.i.i.i85 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i2.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10 ; 2 uses
  %i.if = shl i64 %i.ie, %i.gc
  %i.ig = or i64 %i.if, %i.ib
  store i64 %i.ig, ptr %i.hz, align 8, !tbaa !10
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i85 ; 3 uses
  %i.ii = lshr i64 %i.ie, %i.ga                   ; 3 uses
  store i64 %i.ii, ptr %i.ih, align 8, !tbaa !10
  %indvars.iv.next.i.i.i85.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !621

bb.ac:                                            ; preds = %.preheader109, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100
  %i.ij = phi i32 [ %i.fn, %.preheader109 ], [ %i.jp, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100 ] ; 2 uses
  %i.ik = phi i32 [ %i.f, %.preheader109 ], [ %.pre146, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100 ] ; 7 uses
  %i.il = icmp ult i32 %i.ik, 65
  br i1 %i.il, label %bb.ad, label %.lr.ph.i.i.i86

bb.ad:                                            ; preds = %bb.ac
  %i.im = load i64, ptr %5, align 8, !tbaa !9
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %.loopexit, label %bb.ag

.lr.ph.i.i.i86:                                   ; preds = %bb.ac
  %i.io = zext i32 %i.ik to i64
  %i.ip = add nuw nsw i64 %i.io, 63
  %i.iq = lshr i64 %i.ip, 6                       ; 2 uses
  %i.ir = trunc nuw nsw i64 %i.iq to i32
  %i.is = load ptr, ptr %5, align 8, !tbaa !9
  %i.it = shl i32 %i.ir, 6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i.i.i86
  %indvars.iv.i.i87 = phi i64 [ %indvars.iv.next.i.i89, %bb.af ], [ %i.iq, %.lr.ph.i.i.i86 ] ; 2 uses
  %.019.i.i.i88 = phi i32 [ %i.ja, %bb.af ], [ 0, %.lr.ph.i.i.i86 ] ; 2 uses
  %indvars.iv.next.i.i89 = add nsw i64 %indvars.iv.i.i87, -1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv.next.i.i89
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.af, label %.thread.i.i.i90

.thread.i.i.i90:                                  ; preds = %bb.ae
  %i.ix = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.iv, i1 true)
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = or disjoint i32 %.019.i.i.i88, %i.iy
  br label %_ZNK4llvh5APInt12getBoolValueEv.exit97

bb.af:                                            ; preds = %bb.ae
  %i.ja = add i32 %.019.i.i.i88, 64
  %i.jb = icmp samesign ugt i64 %indvars.iv.i.i87, 1
  br i1 %i.jb, label %bb.ae, label %_ZNK4llvh5APInt12getBoolValueEv.exit97, !llvm.loop !93

_ZNK4llvh5APInt12getBoolValueEv.exit97:           ; preds = %bb.af, %.thread.i.i.i90
  %.2.i.i.i92 = phi i32 [ %i.iz, %.thread.i.i.i90 ], [ %i.it, %bb.af ]
  %i.jc = and i32 %i.ik, 63
  %.not.i.i.i93 = icmp eq i32 %i.jc, 0
  %.neg.i.i.i94 = or i32 %i.ik, -64
  %.neg15.i.i.i95 = select i1 %.not.i.i.i93, i32 0, i32 %.neg.i.i.i94
  %i.jd = add i32 %.2.i.i.i92, %.neg15.i.i.i95
  %i.je = icmp eq i32 %i.jd, %i.ik
  br i1 %i.je, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %_ZNK4llvh5APInt12getBoolValueEv.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @_ZN4llvh5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.fq, ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.jf = load i64, ptr %i.b, align 8, !tbaa !10
  %i.jg = getelementptr inbounds nuw i8, ptr @_ZZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbbE6Digits, i64 %i.jf
  %i.jh = load i32, ptr %i.fo, align 8, !tbaa !609 ; 2 uses
  %i.ji = load i32, ptr %i.fr, align 4, !tbaa !612
  %.not.i98 = icmp ult i32 %i.jh, %i.ji
  br i1 %.not.i98, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100, label %bb.ah, !prof !613

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.fs, i64 noundef 0, i64 noundef 1) #24
  %.pre.i99 = load i32, ptr %i.fo, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit100: ; preds = %bb.ag, %bb.ah
  %i.jj = phi i32 [ %.pre.i99, %bb.ah ], [ %i.jh, %bb.ag ]
  %i.jk = load ptr, ptr %1, align 8, !tbaa !614
  %i.jl = zext i32 %i.jj to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jl
  %i.jn = load i8, ptr %i.jg, align 1
  store i8 %i.jn, ptr %i.jm, align 1
  %i.jo = load i32, ptr %i.fo, align 8, !tbaa !609
  %i.jp = add i32 %i.jo, 1                        ; 2 uses
  store i32 %i.jp, ptr %i.fo, align 8, !tbaa !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.pre146 = load i32, ptr %i.da, align 8, !tbaa !7
  br label %bb.ac, !llvm.loop !622

.loopexit:                                        ; preds = %_ZNK4llvh5APInt12getBoolValueEv.exit, %_ZNK4llvh5APInt12getBoolValueEv.exit97, %bb.ad
  %i.jq = phi i32 [ %i.ik, %_ZNK4llvh5APInt12getBoolValueEv.exit97 ], [ %i.ik, %bb.ad ], [ %i.f, %_ZNK4llvh5APInt12getBoolValueEv.exit ]
  %i.jr = phi i32 [ %i.ij, %_ZNK4llvh5APInt12getBoolValueEv.exit97 ], [ %i.ij, %bb.ad ], [ %i.gr, %_ZNK4llvh5APInt12getBoolValueEv.exit ] ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = icmp ne i32 %i.fn, %i.jr
  %i.ju = add nsw i64 %i.js, -1                   ; 2 uses
  %i.jv = icmp sgt i64 %i.ju, %i.fp
  %or.cond.i.i101 = select i1 %i.jt, i1 %i.jv, i1 false
  br i1 %or.cond.i.i101, label %.lr.ph.i.i102.preheader, label %_ZSt7reverseIPcEvT_S1_.exit

.lr.ph.i.i102.preheader:                          ; preds = %.loopexit
  %i.jw = load ptr, ptr %1, align 8, !tbaa !614   ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %i.jw, i64 %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.fp
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader, %.lr.ph.i.i102
  %.014.i.i = phi ptr [ %.0.i.i103, %.lr.ph.i.i102 ], [ %.012.i.i, %.lr.ph.i.i102.preheader ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.ka, %.lr.ph.i.i102 ], [ %i.jx, %.lr.ph.i.i102.preheader ] ; 3 uses
  %i.jy = load i8, ptr %.0913.i.i, align 1, !tbaa !9
  %i.jz = load i8, ptr %.014.i.i, align 1, !tbaa !9
  store i8 %i.jz, ptr %.0913.i.i, align 1, !tbaa !9
  store i8 %i.jy, ptr %.014.i.i, align 1, !tbaa !9
  %i.ka = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i103 = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.kb = icmp ult ptr %i.ka, %.0.i.i103
  br i1 %i.kb, label %.lr.ph.i.i102, label %_ZSt7reverseIPcEvT_S1_.exit.loopexit, !llvm.loop !623

_ZSt7reverseIPcEvT_S1_.exit.loopexit:             ; preds = %.lr.ph.i.i102
  %.pre147 = load i32, ptr %i.da, align 8, !tbaa !7
  br label %_ZSt7reverseIPcEvT_S1_.exit

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %_ZSt7reverseIPcEvT_S1_.exit.loopexit, %.loopexit
  %i.kc = phi i32 [ %.pre147, %_ZSt7reverseIPcEvT_S1_.exit.loopexit ], [ %i.jq, %.loopexit ]
  %i.kd = icmp ugt i32 %i.kc, 64
  br i1 %i.kd, label %bb.ai, label %_ZN4llvh5APIntD2Ev.exit

bb.ai:                                            ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ke = load ptr, ptr %5, align 8, !tbaa !9     ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_ZN4llvh5APIntD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ke) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZSt7reverseIPcEvT_S1_.exit, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvh5APIntD2Ev.exit, %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8toStringB5cxx11Ejb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvh::SmallString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !614
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !609
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 40, ptr %i.d, align 4, !tbaa !612
  call void @_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext false)
  %i.e = load ptr, ptr %4, align 8, !tbaa !614    ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !609  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %.not.i.i = icmp eq ptr %i.e, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !630, !alias.scope !633
  br i1 %.not.i.i, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread, label %bb.b

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !634, !alias.scope !633
  store i8 0, ptr %i.h, align 8, !tbaa !9, !alias.scope !633
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !633
  store i64 %i.g, ptr %i.a, align 8, !tbaa !10, !noalias !633
  %i.j = icmp ugt i32 %i.f, 15
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #24 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !636, !alias.scope !633
  %i.l = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !633
  store i64 %i.l, ptr %i.h, align 8, !tbaa !9, !alias.scope !633
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !9
  store i8 %i.n, ptr %i.m, align 1, !tbaa !9
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !633 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !634, !alias.scope !633
  %i.q = load ptr, ptr %0, align 8, !tbaa !636, !alias.scope !633
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
end_hunk_9
