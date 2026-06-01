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
define hidden void @_ZN4llvh5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN4llvh5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN4llvh5APInt13initFromArrayENS_8ArrayRefImEE(ptr noundef nonnull align 8 captures(none) dereferenceable(12) initializes((0, 8)) %0, ptr readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
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
define hidden void @_ZN4llvh5APIntC2EjNS_8ArrayRefImEE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, i32 noundef %1, ptr readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = icmp ult i32 %1, 65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !10
  %i.d = sub nsw i32 0, %1
  %i.e = and i32 %i.d, 63
end_hunk_0
begin_hunk_1_@_ZNK4llvh5APInt11extractBitsEjj:bb.a
  store ptr %i.bu, ptr %0, align 8, !tbaa !9
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.bs, i32 %i.bo)
  %i.bv = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.bw = zext nneg i32 %i.bv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr readonly align 8 %i.bf, i64 %i.bw, i1 false)
  %i.bx = sub i32 0, %2
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = lshr i64 -1, %i.bz
  %i.cb = add nuw nsw i64 %i.br, 4294967295
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !10
  %i.cf = and i64 %i.ce, %i.ca
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cg = icmp ult i32 %2, 65                     ; 2 uses
  br i1 %i.cg, label %_ZN4llvh5APIntC2Ejmb.exit46, label %_ZN4llvh5APIntC2Ejmb.exit46.thread

_ZN4llvh5APIntC2Ejmb.exit46.thread:               ; preds = %bb.k
  %i.ch = zext i32 %2 to i64
  %i.ci = add nuw nsw i64 %i.ch, 63               ; 2 uses
  %i.cj = lshr i64 %i.ci, 6                       ; 3 uses
  %i.ck = shl nuw nsw i64 %i.cj, 3                ; 2 uses
  %i.cl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #22 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.ck, i1 false)
  store i64 0, ptr %i.cl, align 8, !tbaa !10
  %.pn.in.in.i42 = sub i32 0, %2
  %.pn.in.i43 = and i32 %.pn.in.in.i42, 63
  %.pn.i44 = zext nneg i32 %.pn.in.i43 to i64
  %i.cm = lshr i64 -1, %.pn.i44
  %i.cn = add nuw nsw i64 %i.cj, 4294967295
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = and i64 %i.cq, %i.cm
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !10
  store ptr %i.cl, ptr %4, align 8, !tbaa !9
  br label %.lr.ph

_ZN4llvh5APIntC2Ejmb.exit46:                      ; preds = %bb.k
  %narrow = add nuw nsw i32 %2, 63
  %.pre50 = zext nneg i32 %narrow to i64
  store ptr null, ptr %4, align 8, !tbaa !9
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZN4llvh5APIntC2ERKS0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh5APIntC2Ejmb.exit46.thread, %_ZN4llvh5APIntC2Ejmb.exit46
  %.pre-phi5167 = phi i64 [ %i.ci, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ %.pre50, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %.pre-phi5365 = phi i64 [ %i.cj, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ 1, %_ZN4llvh5APIntC2Ejmb.exit46 ] ; 5 uses
  %i.cs = phi ptr [ %i.cl, %_ZN4llvh5APIntC2Ejmb.exit46.thread ], [ %4, %_ZN4llvh5APIntC2Ejmb.exit46 ] ; 3 uses
  %i.ct = zext i32 %i.b to i64
  %i.cu = add nuw nsw i64 %i.ct, 63
  %i.cv = lshr i64 %i.cu, 6                       ; 3 uses
  %i.cw = zext nneg i32 %i.y to i64               ; 3 uses
  %i.cx = sub nuw nsw i32 64, %i.y
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = zext nneg i32 %i.z to i64               ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !9     ; 6 uses
  %xtraiter = and i64 %.pre-phi5365, 1
  %i.da = icmp eq i64 %.pre-phi5365, 1
  br i1 %i.da, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %.pre-phi5365, 288230376151711742
  br label %bb.n

._crit_edge.unr-lcssa:                            ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i64 %.pre-phi5365 to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.db = add nuw nsw i64 %indvars.iv.epil.init, %i.cz ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !10
  %i.de = add nuw nsw i64 %i.db, 1                ; 2 uses
  %i.df = icmp samesign ult i64 %i.de, %i.cv
  br i1 %i.df, label %bb.l, label %._crit_edge.epilog-lcssa

bb.l:                                             ; preds = %.epil.preheader
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !10
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.l, %.epil.preheader
  %i.di = phi i64 [ %i.dh, %bb.l ], [ 0, %.epil.preheader ]
  %i.dj = lshr i64 %i.dd, %i.cw
  %i.dk = shl i64 %i.di, %i.cy
  %i.dl = or i64 %i.dk, %i.dj
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.epil.init
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %i.dn = sub i32 0, %2
  %i.do = and i32 %i.dn, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = lshr i64 -1, %i.dp                      ; 2 uses
  br i1 %i.cg, label %_ZN4llvh5APIntC2ERKS0_.exit, label %bb.m

_ZN4llvh5APIntC2ERKS0_.exit:                      ; preds = %_ZN4llvh5APIntC2Ejmb.exit46, %._crit_edge
  %i.dr = phi i64 [ %i.dq, %._crit_edge ], [ -1, %_ZN4llvh5APIntC2Ejmb.exit46 ]
  %i.ds = load i64, ptr %4, align 8, !tbaa !9
  %i.dt = and i64 %i.ds, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.du, align 8, !tbaa !7
  store i64 %i.dt, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntD2Ev.exit

bb.m:                                             ; preds = %._crit_edge
  %i.dv = load ptr, ptr %4, align 8, !tbaa !9     ; 3 uses
  %i.dw = add nuw nsw i64 %.pre-phi5365, 4294967295
  %i.dx = and i64 %i.dw, 4294967295
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dx ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !10
  %i.ea = and i64 %i.dz, %i.dq
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.eb, align 8, !tbaa !7
  %i.ec = lshr i64 %.pre-phi5167, 3
  %i.ed = and i64 %i.ec, 1073741816               ; 2 uses
  %i.ee = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ed) #22 ; 2 uses
  store ptr %i.ee, ptr %0, align 8, !tbaa !9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %i.dv, i64 %i.ed, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.dv) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh5APIntC2ERKS0_.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.n:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.r ]
  %i.ef = add nuw nsw i64 %indvars.iv, %i.cz      ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.ei = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %i.ej = icmp samesign ult i64 %i.ei, %i.cv
  br i1 %i.ej, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.em = phi i64 [ %i.el, %bb.o ], [ 0, %bb.n ]
  %i.en = lshr i64 %i.eh, %i.cw
  %i.eo = shl i64 %i.em, %i.cy
  %i.ep = or i64 %i.eo, %i.en
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !10
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = add nuw nsw i64 %indvars.iv.next, %i.cz ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10
  %i.eu = add nuw nsw i64 %i.er, 1                ; 2 uses
  %i.ev = icmp samesign ult i64 %i.eu, %i.cv
  br i1 %i.ev, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.eu
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ey = phi i64 [ %i.ex, %bb.q ], [ 0, %bb.p ]
  %i.ez = lshr i64 %i.et, %i.cw
  %i.fa = shl i64 %i.ey, %i.cy
  %i.fb = or i64 %i.fa, %i.ez
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.n, !llvm.loop !92

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.j, %bb.i, %bb.f, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i40, %bb.c, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZN4llvh5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvh5APInt13getBitsNeededENS_9StringRefEh(ptr readonly captures(address) %0, i64 %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 5 uses
  %i.c = icmp eq i8 %i.a, 43
  %or.cond = or i1 %i.b, %i.c                     ; 2 uses
  %.028.idx = zext i1 %or.cond to i64
  %.028 = getelementptr inbounds nuw i8, ptr %0, i64 %.028.idx
  %i.d = sext i1 %or.cond to i64
  %.027 = add i64 %1, %i.d                        ; 8 uses
  switch i8 %2, label %bb.g [
    i8 2, label %bb.b
    i8 8, label %bb.c
    i8 16, label %bb.d
    i8 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = zext i1 %i.b to i64
  %i.f = add i64 %.027, %i.e
  %i.g = trunc i64 %i.f to i32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = mul i64 %.027, 3
  %i.i = zext i1 %i.b to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.l = shl i64 %.027, 2
  %i.m = zext i1 %i.b to i64
  %i.n = or disjoint i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %.027, 1
  br i1 %i.p, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = shl i64 %.027, 6
  %i.r = udiv i64 %i.q, 18
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.s = icmp eq i64 %.027, 1
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = shl i64 %.027, 4
  %i.u = udiv i64 %i.t, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.v = phi i64 [ 4, %bb.e ], [ %i.r, %bb.f ], [ %i.u, %bb.h ], [ 7, %bb.g ]
  %i.w = trunc i64 %i.v to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %i.w, ptr %i.x, align 8, !tbaa !7
  call void @_ZN4llvh5APInt10fromStringEjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 poison, ptr nonnull readonly %.028, i64 %.027, i8 noundef zeroext %2)
  %i.y = load i32, ptr %i.x, align 8, !tbaa !7    ; 7 uses
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.j, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %.neg.i.i.i = add nsw i32 %i.y, -64
  %i.aa = load i64, ptr %3, align 8               ; 2 uses
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 false)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add nsw i32 %.neg.i.i.i, %i.ac
  %i.ae = inttoptr i64 %i.aa to ptr
  br label %_ZNK4llvh5APInt8logBase2Ev.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.af = zext i32 %i.y to i64
  %i.ag = add nuw nsw i64 %i.af, 63
  %i.ah = lshr i64 %i.ag, 6                       ; 2 uses
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = load ptr, ptr %3, align 8, !tbaa !9     ; 2 uses
  %i.ak = shl i32 %i.ai, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.l ], [ %i.ah, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ar, %bb.l ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !10 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.l, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = or disjoint i32 %.019.i.i.i.i, %i.ap
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ar = add i32 %.019.i.i.i.i, 64
  %i.as = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i: ; preds = %bb.l, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.aq, %.thread.i.i.i.i ], [ %i.ak, %bb.l ]
  %i.at = and i32 %i.y, 63
  %.not.i.i.i.i = icmp eq i32 %i.at, 0
  %.neg.i.i.i.i = or i32 %i.y, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.au = add i32 %.2.i.i.i.i, %.neg15.i.i.i.i
  br label %_ZNK4llvh5APInt8logBase2Ev.exit

_ZNK4llvh5APInt8logBase2Ev.exit:                  ; preds = %bb.j, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i
  %i.av = phi ptr [ %i.ae, %bb.j ], [ %i.aj, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ] ; 2 uses
  %.0.i.i.i = phi i32 [ %i.ad, %bb.j ], [ %i.au, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ]
  %i.aw = xor i32 %.0.i.i.i, -1
  %i.ax = add i32 %i.y, %i.aw                     ; 2 uses
  %i.ay = icmp eq i32 %i.ax, -1
  %i.az = select i1 %i.b, i32 2, i32 1
  %i.ba = select i1 %i.ay, i32 0, i32 %i.ax
  %.0 = add i32 %i.az, %i.ba
  %i.bb = icmp ult i32 %i.y, 65
  %i.bc = icmp eq ptr %i.av, null
  %or.cond44 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond44, label %_ZN4llvh5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.av) #23
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZNK4llvh5APInt8logBase2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.o, %bb.d ], [ %.0, %_ZN4llvh5APIntD2Ev.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN4llvh10hash_valueERKNS_5APIntE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, !prof !94

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #24
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !10 ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.g, 0
  %i.h = select i1 %.not1.i.i.i, i64 -49064778989728563, i64 %i.g
  store i64 %i.h, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #24
  br label %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit

_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.i = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !10
  %i.j = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.k = shl i64 %i.j, 3
  %i.l = and i64 %i.k, 34359738360
  %i.m = add nuw nsw i64 %i.l, 8
  %.sroa.0.4.extract.shift = lshr i64 %i.j, 32
  %i.n = xor i64 %i.i, %.sroa.0.4.extract.shift   ; 2 uses
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.n, %i.q
  %i.s = xor i64 %i.r, %i.p
  %i.t = mul i64 %i.s, -7070675565921424023       ; 2 uses
  %i.u = lshr i64 %i.t, 47
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, -7070675565921424023
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  %i.y = zext i32 %i.b to i64
  %i.z = add nuw nsw i64 %i.y, 63
  %i.aa = lshr i64 %i.z, 6
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_(ptr noundef %i.x, ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit
  %.sroa.0.0 = phi i64 [ %i.w, %_ZN4llvh12hash_combineIJmEEENS_9hash_codeEDpRKT_.exit ], [ %i.ac, %bb.e ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh5APInt7isSplatEj(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNK4llvh5APInt4rotlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = icmp ult i32 %i.b, 65
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !9
  %i.e = load i64, ptr %2, align 8                ; 2 uses
  %i.f = icmp eq i64 %i.d, %i.e
  %i.g = inttoptr i64 %i.e to ptr
end_hunk_1
begin_hunk_2_@_ZNK4llvh5APInt7ushl_ovERKS0_Rb:bb.a
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
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i, label %_ZNK4llvh5APInt3ugeEm.exit.thread

_ZNK4llvh5APInt3ugeEm.exit.thread:                ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  store i8 1, ptr %3, align 1, !tbaa !593
  br label %bb.d

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInt3ugeEm.exit

_ZNK4llvh5APInt3ugeEm.exit:                       ; preds = %bb.a, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp uge i64 %.0.i.i.i, %i.c             ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %3, align 1, !tbaa !593
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit.thread, %_ZNK4llvh5APInt3ugeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.aa, align 8, !tbaa !7
  %i.ab = icmp ult i32 %i.b, 65
  br i1 %i.ab, label %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, label %bb.e

_ZN4llvh5APInt15clearUnusedBitsEv.exit.i:         ; preds = %bb.d
  store i64 0, ptr %0, align 8, !tbaa !9
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = add nuw nsw i64 %i.c, 63
  %i.ad = lshr i64 %i.ac, 6                       ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 2 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #22 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.ae, i1 false)
  store ptr %i.af, ptr %0, align 8, !tbaa !9
  store i64 0, ptr %i.af, align 8, !tbaa !10
  %.pn.in.in.i = sub i32 0, %i.b
  %.pn.in.i = and i32 %.pn.in.in.i, 63
  %.pn.i = zext nneg i32 %.pn.in.i to i64
  %i.ag = lshr i64 -1, %.pn.i
  %i.ah = add nuw nsw i64 %i.ad, 4294967295
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !10
  %i.al = and i64 %i.ak, %i.ag
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !10
  br label %_ZN4llvh5APIntC2Ejmb.exit

bb.f:                                             ; preds = %_ZNK4llvh5APInt3ugeEm.exit
  %i.am = icmp ult i32 %i.b, 65
  br i1 %i.am, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  %.neg.i = add nsw i32 %i.b, -64
  %i.an = load i64, ptr %1, align 8, !tbaa !9
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add nsw i32 %.neg.i, %i.ap
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ar = add nuw nsw i64 %i.c, 63
  %i.as = lshr i64 %i.ar, 6                       ; 2 uses
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = load ptr, ptr %1, align 8, !tbaa !9
  %i.av = shl i32 %i.at, 6
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bc, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 true)
  %i.ba = trunc nuw nsw i64 %i.az to i32
  %i.bb = or disjoint i32 %.019.i.i, %i.ba
  br label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bc = add i32 %.019.i.i, 64
  %i.bd = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bd, label %bb.h, label %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i: ; preds = %bb.i, %.thread.i.i
  %.2.i.i = phi i32 [ %i.bb, %.thread.i.i ], [ %i.av, %bb.i ]
  %i.be = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.be, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.bf = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvh5APInt17countLeadingZerosEv.exit

_ZNK4llvh5APInt17countLeadingZerosEv.exit:        ; preds = %bb.g, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i
  %.0.i = phi i32 [ %i.aq, %bb.g ], [ %i.bf, %_ZNK4llvh5APInt25countLeadingZerosSlowCaseEv.exit.i ]
  %i.bg = zext i32 %.0.i to i64
  %.pre.i = load ptr, ptr %2, align 8             ; 3 uses
  %i.bh = ptrtoint ptr %.pre.i to i64
  br i1 %i.f, label %bb.l, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %i.bi = zext i32 %i.e to i64
  %i.bj = add nuw nsw i64 %i.bi, 63
  %i.bk = lshr i64 %i.bj, 6                       ; 2 uses
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = shl i32 %i.bl, 6
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.k ], [ %i.bk, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.bt, %bb.k ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.i.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.j
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = or disjoint i32 %.019.i.i.i.i, %i.br
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bt = add i32 %.019.i.i.i.i, 64
  %i.bu = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.bu, label %bb.j, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.k, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.bs, %.thread.i.i.i.i ], [ %i.bm, %bb.k ]
  %i.bv = and i32 %i.e, 63
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  %.neg.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.bw = add i32 %.neg15.i.i.i.i, %.2.i.i.i.i
  %i.bx = sub i32 %i.e, %i.bw
  %i.by = icmp ugt i32 %i.bx, 64
  br i1 %i.by, label %_ZNK4llvh5APInt3ugtEm.exit, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge

_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge: ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i
  %.0.i.i.pre = load i64, ptr %.pre.i, align 8, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge, %_ZNK4llvh5APInt17countLeadingZerosEv.exit
  %.0.i.i = phi i64 [ %.0.i.i.pre, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i._crit_edge ], [ %i.bh, %_ZNK4llvh5APInt17countLeadingZerosEv.exit ]
  %i.bz = icmp ugt i64 %.0.i.i, %i.bg
  %i.ca = zext i1 %i.bz to i8
  br label %_ZNK4llvh5APInt3ugtEm.exit

_ZNK4llvh5APInt3ugtEm.exit:                       ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, %bb.l
  %i.cb = phi i8 [ 1, %_ZNK4llvh5APInt13getActiveBitsEv.exit.i ], [ %i.ca, %bb.l ]
  store i8 %i.cb, ptr %3, align 1, !tbaa !593
  tail call void @_ZNK4llvh5APInt3shlERKS0_(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %_ZN4llvh5APIntC2Ejmb.exit

_ZN4llvh5APIntC2Ejmb.exit:                        ; preds = %bb.e, %_ZN4llvh5APInt15clearUnusedBitsEv.exit.i, %_ZNK4llvh5APInt3ugtEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  br i1 %4, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %6 = sext i32 %2 to i64
  %7 = getelementptr [8 x i8], ptr @switch.table._ZNK4llvh5APInt8toStringERNS_15SmallVectorImplIcEEjbb, i64 %6
  %switch.gep = getelementptr i8, ptr %7, i64 -16
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str, %bb.a ], [ %switch.load, %switch.lookup ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7    ; 16 uses
  %i.e = icmp ult i32 %i.d, 65                    ; 2 uses
  %.pre.i = load ptr, ptr %0, align 8             ; 5 uses
  %i.f = ptrtoint ptr %.pre.i to i64              ; 3 uses
  br i1 %i.e, label %_ZNK4llvh5APInteqEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = shl i32 %i.j, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.d ], [ %i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.r, %bb.d ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10   ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.c
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %.019.i.i.i.i, %i.p
  br label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %.019.i.i.i.i, 64
  %i.s = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.s, label %bb.c, label %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, !llvm.loop !93

_ZNK4llvh5APInt13getActiveBitsEv.exit.i:          ; preds = %bb.d, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.q, %.thread.i.i.i.i ], [ %i.k, %bb.d ]
  %i.t = and i32 %i.d, 63
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  %.neg.i.i.i.i = or i32 %i.d, -64
  %.neg15.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 %.neg.i.i.i.i
  %i.u = add i32 %.neg15.i.i.i.i, %.2.i.i.i.i
  %i.v = sub i32 %i.d, %i.u
  %i.w = icmp ult i32 %i.v, 65
  br i1 %i.w, label %_ZNK4llvh5APInteqEm.exitthread-pre-split, label %_ZNK4llvh5APInteqEm.exit.thread

_ZNK4llvh5APInteqEm.exitthread-pre-split:         ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i
  %.0.i.i.pr = load i64, ptr %.pre.i, align 8, !tbaa !9
  br label %_ZNK4llvh5APInteqEm.exit

_ZNK4llvh5APInteqEm.exit:                         ; preds = %_ZNK4llvh5APInteqEm.exitthread-pre-split, %bb.b
  %.0.i.i = phi i64 [ %.0.i.i.pr, %_ZNK4llvh5APInteqEm.exitthread-pre-split ], [ %i.f, %bb.b ]
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %.preheader, label %_ZNK4llvh5APInteqEm.exit.thread

.preheader:                                       ; preds = %_ZNK4llvh5APInteqEm.exit
  %i.y = load i8, ptr %.0, align 1, !tbaa !9      ; 2 uses
  %.not57132 = icmp eq i8 %i.y, 0
  %.phi.trans.insert150 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %.not57132, label %.preheader.._crit_edge135_crit_edge, label %.lr.ph134

.preheader.._crit_edge135_crit_edge:              ; preds = %.preheader
  %.pre151 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %._crit_edge135

.lr.ph134:                                        ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre149 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph134, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.ab = phi i32 [ %.pre149, %.lr.ph134 ], [ %i.aj, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.ac = phi i8 [ %i.y, %.lr.ph134 ], [ %i.al, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %.1133 = phi ptr [ %.0, %.lr.ph134 ], [ %i.ak, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %i.ad = load i32, ptr %i.z, align 4, !tbaa !612
  %.not.i = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.f, !prof !613

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aa, i64 noundef 0, i64 noundef 1) #24
  %.pre.i58 = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.e, %bb.f
  %i.ae = phi i32 [ %.pre.i58, %bb.f ], [ %i.ab, %bb.e ]
  %i.af = load ptr, ptr %1, align 8, !tbaa !614
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  store i8 %i.ac, ptr %i.ah, align 1
  %i.ai = load i32, ptr %.phi.trans.insert150, align 8, !tbaa !609
  %i.aj = add i32 %i.ai, 1                        ; 3 uses
  store i32 %i.aj, ptr %.phi.trans.insert150, align 8, !tbaa !609
  %i.ak = getelementptr inbounds nuw i8, ptr %.1133, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %.not57 = icmp eq i8 %i.al, 0
  br i1 %.not57, label %._crit_edge135, label %bb.e, !llvm.loop !615

._crit_edge135:                                   ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %.preheader.._crit_edge135_crit_edge
  %i.am = phi i32 [ %.pre151, %.preheader.._crit_edge135_crit_edge ], [ %i.aj, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !612
  %.not.i59 = icmp ult i32 %i.am, %i.ap
  br i1 %.not.i59, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61, label %bb.g, !prof !613

bb.g:                                             ; preds = %._crit_edge135
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 1) #24
  %.pre.i60 = load i32, ptr %i.an, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit61: ; preds = %._crit_edge135, %bb.g
  %i.ar = phi i32 [ %.pre.i60, %bb.g ], [ %i.am, %._crit_edge135 ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !614
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 48, ptr %i.au, align 1
  %i.av = load i32, ptr %i.an, align 8, !tbaa !609
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.an, align 8, !tbaa !609
  br label %bb.ak

_ZNK4llvh5APInteqEm.exit.thread:                  ; preds = %_ZNK4llvh5APInt13getActiveBitsEv.exit.i, %_ZNK4llvh5APInteqEm.exit
  br i1 %i.e, label %bb.h, label %_ZN4llvh5APIntC2ERKS0_.exit

bb.h:                                             ; preds = %_ZNK4llvh5APInteqEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  br i1 %3, label %_ZNK4llvh5APInt12getSExtValueEv.exit, label %bb.k

_ZNK4llvh5APInt12getSExtValueEv.exit:             ; preds = %bb.h
  %i.ax = sub nuw nsw i32 64, %i.d
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = shl i64 %i.f, %i.ay
  %i.ba = ashr exact i64 %i.az, %i.ay             ; 3 uses
  %i.bb = icmp sgt i64 %i.ba, -1
  br i1 %i.bb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh5APInt12getSExtValueEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !609 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !612
  %.not.i63 = icmp ult i32 %i.bd, %i.bf
  br i1 %.not.i63, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65, label %bb.j, !prof !613

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bg, i64 noundef 0, i64 noundef 1) #24
  %.pre.i64 = load i32, ptr %i.bc, align 8, !tbaa !609
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65: ; preds = %bb.i, %bb.j
  %i.bh = phi i32 [ %.pre.i64, %bb.j ], [ %i.bd, %bb.i ]
  %i.bi = load ptr, ptr %1, align 8, !tbaa !614
  %i.bj = zext i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  store i8 45, ptr %i.bk, align 1
  %i.bl = load i32, ptr %i.bc, align 8, !tbaa !609
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bc, align 8, !tbaa !609
  %i.bn = sub i64 0, %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65, %_ZNK4llvh5APInt12getSExtValueEv.exit
  %.151 = phi i64 [ %i.ba, %_ZNK4llvh5APInt12getSExtValueEv.exit ], [ %i.bn, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit65 ], [ %i.f, %bb.h ] ; 2 uses
  %i.bo = load i8, ptr %.0, align 1, !tbaa !9     ; 2 uses
  %.not55121 = icmp eq i8 %i.bo, 0
  br i1 %.not55121, label %.preheader108, label %.lr.ph124

.lr.ph124:                                        ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre148 = load i32, ptr %i.bp, align 8, !tbaa !609
  br label %bb.l

.preheader108:                                    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68, %bb.k
  %.not56126 = icmp eq i64 %.151, 0
  br i1 %.not56126, label %._crit_edge130, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader108
  %i.bs = zext i32 %2 to i64                      ; 3 uses
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph124, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68
  %i.bt = phi i32 [ %.pre148, %.lr.ph124 ], [ %i.cb, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ] ; 2 uses
  %i.bu = phi i8 [ %i.bo, %.lr.ph124 ], [ %i.cd, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ]
  %.2122 = phi ptr [ %.0, %.lr.ph124 ], [ %i.cc, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68 ]
  %i.bv = load i32, ptr %i.bq, align 4, !tbaa !612
  %.not.i66 = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit68, label %bb.m, !prof !613

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef 1) #24
end_hunk_2
begin_hunk_3_@_ZN4llvh7hashing6detail23hash_combine_range_implImEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS4_S8_:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.059 = phi ptr [ %.0, %.lr.ph ], [ %.049, %.lr.ph.preheader ] ; 3 uses
  %.pn58 = phi ptr [ %.059, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.057 = phi i64 [ %i.ct, %.lr.ph ], [ %i.az, %.lr.ph.preheader ]
  %.sroa.12.056 = phi i64 [ %i.cq, %.lr.ph ], [ %i.aw, %.lr.ph.preheader ] ; 2 uses
  %.sroa.20.055 = phi i64 [ %i.cn, %.lr.ph ], [ %i.at, %.lr.ph.preheader ]
  %.sroa.28.054 = phi i64 [ %i.dh, %.lr.ph ], [ %i.bn, %.lr.ph.preheader ] ; 2 uses
  %.sroa.38.053 = phi i64 [ %i.dg, %.lr.ph ], [ %i.bm, %.lr.ph.preheader ] ; 2 uses
  %.sroa.48.052 = phi i64 [ %i.dv, %.lr.ph ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %.sroa.58.051 = phi i64 [ %i.du, %.lr.ph ], [ %i.ca, %.lr.ph.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn58, i64 72
  %.0.copyload.i.i = load i64, ptr %i.cc, align 1 ; 2 uses
  %i.cd = add i64 %.sroa.12.056, %.sroa.28.054
  %i.ce = add i64 %i.cd, %.sroa.0.057
  %i.cf = add i64 %i.ce, %.0.copyload.i.i         ; 2 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 27)
  %i.ch = mul i64 %i.cg, -5435081209227447693
  %i.ci = add i64 %.sroa.12.056, %.sroa.38.053
  %i.cj = getelementptr inbounds nuw i8, ptr %.pn58, i64 112
  %.0.copyload.i7.i = load i64, ptr %i.cj, align 1 ; 2 uses
  %i.ck = add i64 %i.ci, %.0.copyload.i7.i        ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 22)
  %i.cm = mul i64 %i.cl, -5435081209227447693
  %i.cn = xor i64 %i.ch, %.sroa.58.051            ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pn58, i64 104
  %.0.copyload.i8.i = load i64, ptr %i.co, align 1 ; 2 uses
  %i.cp = add i64 %.0.copyload.i8.i, %.sroa.28.054
  %i.cq = add i64 %i.cp, %i.cm                    ; 3 uses
  %i.cr = add i64 %.sroa.20.055, %.sroa.48.052    ; 2 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 31)
  %i.ct = mul i64 %i.cs, -5435081209227447693     ; 3 uses
  %i.cu = mul i64 %.sroa.38.053, -5435081209227447693
  %i.cv = add i64 %i.cn, %.sroa.48.052
  %.0.copyload.i.i.i21 = load i64, ptr %.059, align 1
  %i.cw = add i64 %.0.copyload.i.i.i21, %i.cu     ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn58, i64 88
  %.0.copyload.i15.i.i = load i64, ptr %i.cx, align 1 ; 2 uses
  %i.cy = add i64 %i.cv, %i.cw
  %i.cz = add i64 %i.cy, %.0.copyload.i15.i.i     ; 2 uses
  %i.da = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 43)
  %i.db = getelementptr inbounds nuw i8, ptr %.pn58, i64 80
  %.0.copyload.i17.i.i = load i64, ptr %i.db, align 1 ; 2 uses
  %i.dc = add i64 %i.cw, %.0.copyload.i.i
  %i.dd = add i64 %i.dc, %.0.copyload.i17.i.i     ; 3 uses
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 20)
  %i.df = add i64 %i.de, %i.cw
  %i.dg = add i64 %i.df, %i.da                    ; 2 uses
  %i.dh = add i64 %i.dd, %.0.copyload.i15.i.i     ; 2 uses
  %i.di = add i64 %i.ct, %.sroa.58.051
  %i.dj = add i64 %i.cq, %.0.copyload.i17.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn58, i64 96
  %.0.copyload.i.i10.i = load i64, ptr %i.dk, align 1
  %i.dl = add i64 %i.di, %.0.copyload.i.i10.i     ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pn58, i64 120
  %.0.copyload.i15.i11.i = load i64, ptr %i.dm, align 1 ; 2 uses
  %i.dn = add i64 %i.dj, %i.dl
  %i.do = add i64 %i.dn, %.0.copyload.i15.i11.i   ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 43)
  %i.dq = add i64 %.0.copyload.i8.i, %.0.copyload.i7.i
  %i.dr = add i64 %i.dq, %i.dl                    ; 3 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 20)
  %i.dt = add i64 %i.dp, %i.dl
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  %i.dv = add i64 %i.dr, %.0.copyload.i15.i11.i   ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %.not = icmp eq ptr %.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !783

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.58.0.lcssa = phi i64 [ %i.ca, %bb.e ], [ %i.du, %.lr.ph ] ; 3 uses
  %.sroa.48.0.lcssa = phi i64 [ %i.cb, %bb.e ], [ %i.dv, %.lr.ph ] ; 3 uses
  %.sroa.38.0.lcssa = phi i64 [ %i.bm, %bb.e ], [ %i.dg, %.lr.ph ] ; 3 uses
  %.sroa.28.0.lcssa = phi i64 [ %i.bn, %bb.e ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.sroa.20.0.lcssa = phi i64 [ %i.at, %bb.e ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.sroa.12.0.lcssa = phi i64 [ %i.aw, %bb.e ], [ %i.cq, %.lr.ph ] ; 3 uses
  %.sroa.0.0.lcssa = phi i64 [ %i.az, %bb.e ], [ %i.ct, %.lr.ph ] ; 2 uses
  %i.dw = and i64 %i.i, 63
  %.not20 = icmp eq i64 %i.dw, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.dx = getelementptr inbounds i8, ptr %1, i64 -64
  %i.dy = getelementptr inbounds i8, ptr %1, i64 -56
  %.0.copyload.i.i22 = load i64, ptr %i.dy, align 1 ; 2 uses
  %i.dz = add i64 %.sroa.12.0.lcssa, %.sroa.28.0.lcssa
  %i.ea = add i64 %i.dz, %.sroa.0.0.lcssa
  %i.eb = add i64 %i.ea, %.0.copyload.i.i22       ; 2 uses
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 27)
  %i.ed = mul i64 %i.ec, -5435081209227447693
  %i.ee = add i64 %.sroa.12.0.lcssa, %.sroa.38.0.lcssa
  %i.ef = getelementptr inbounds i8, ptr %1, i64 -16
  %.0.copyload.i7.i23 = load i64, ptr %i.ef, align 1 ; 2 uses
  %i.eg = add i64 %i.ee, %.0.copyload.i7.i23      ; 2 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 22)
  %i.ei = mul i64 %i.eh, -5435081209227447693
  %i.ej = xor i64 %i.ed, %.sroa.58.0.lcssa        ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %1, i64 -24
  %.0.copyload.i8.i24 = load i64, ptr %i.ek, align 1 ; 2 uses
  %i.el = add i64 %.0.copyload.i8.i24, %.sroa.28.0.lcssa
  %i.em = add i64 %i.el, %i.ei                    ; 2 uses
  %i.en = add i64 %.sroa.20.0.lcssa, %.sroa.48.0.lcssa ; 2 uses
  %i.eo = tail call i64 @llvm.fshl.i64(i64 %i.en, i64 %i.en, i64 31)
  %i.ep = mul i64 %i.eo, -5435081209227447693     ; 2 uses
  %i.eq = mul i64 %.sroa.38.0.lcssa, -5435081209227447693
  %i.er = add i64 %i.ej, %.sroa.48.0.lcssa
  %.0.copyload.i.i.i25 = load i64, ptr %i.dx, align 1
  %i.es = add i64 %.0.copyload.i.i.i25, %i.eq     ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %1, i64 -40
  %.0.copyload.i15.i.i26 = load i64, ptr %i.et, align 1 ; 2 uses
  %i.eu = add i64 %i.er, %i.es
  %i.ev = add i64 %i.eu, %.0.copyload.i15.i.i26   ; 2 uses
  %i.ew = tail call i64 @llvm.fshl.i64(i64 %i.ev, i64 %i.ev, i64 43)
  %i.ex = getelementptr inbounds i8, ptr %1, i64 -48
  %.0.copyload.i17.i.i28 = load i64, ptr %i.ex, align 1 ; 2 uses
  %i.ey = add i64 %i.es, %.0.copyload.i.i22
  %i.ez = add i64 %i.ey, %.0.copyload.i17.i.i28   ; 3 uses
  %i.fa = tail call i64 @llvm.fshl.i64(i64 %i.ez, i64 %i.ez, i64 20)
  %i.fb = add i64 %i.fa, %i.es
  %i.fc = add i64 %i.fb, %i.ew
  %i.fd = add i64 %i.ez, %.0.copyload.i15.i.i26
  %i.fe = add i64 %i.ep, %.sroa.58.0.lcssa
  %i.ff = add i64 %i.em, %.0.copyload.i17.i.i28
  %i.fg = getelementptr inbounds i8, ptr %1, i64 -32
  %.0.copyload.i.i10.i30 = load i64, ptr %i.fg, align 1
  %i.fh = add i64 %i.fe, %.0.copyload.i.i10.i30   ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i15.i11.i31 = load i64, ptr %i.fi, align 1 ; 2 uses
  %i.fj = add i64 %i.ff, %i.fh
  %i.fk = add i64 %i.fj, %.0.copyload.i15.i11.i31 ; 2 uses
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 43)
  %i.fm = add i64 %.0.copyload.i8.i24, %.0.copyload.i7.i23
  %i.fn = add i64 %i.fm, %i.fh                    ; 3 uses
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %i.fn, i64 %i.fn, i64 20)
  %i.fp = add i64 %i.fl, %i.fh
  %i.fq = add i64 %i.fp, %i.fo
  %i.fr = add i64 %i.fn, %.0.copyload.i15.i11.i31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %.sroa.58.1 = phi i64 [ %.sroa.58.0.lcssa, %._crit_edge ], [ %i.fq, %bb.f ] ; 2 uses
  %.sroa.48.1 = phi i64 [ %.sroa.48.0.lcssa, %._crit_edge ], [ %i.fr, %bb.f ] ; 2 uses
  %.sroa.38.1 = phi i64 [ %.sroa.38.0.lcssa, %._crit_edge ], [ %i.fc, %bb.f ]
  %.sroa.28.1 = phi i64 [ %.sroa.28.0.lcssa, %._crit_edge ], [ %i.fd, %bb.f ]
  %.sroa.20.1 = phi i64 [ %.sroa.20.0.lcssa, %._crit_edge ], [ %i.ej, %bb.f ]
  %.sroa.12.1 = phi i64 [ %.sroa.12.0.lcssa, %._crit_edge ], [ %i.em, %bb.f ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ep, %bb.f ]
  %i.fs = xor i64 %.sroa.28.1, %.sroa.48.1
  %i.ft = mul i64 %i.fs, -7070675565921424023     ; 2 uses
  %i.fu = lshr i64 %i.ft, 47
  %i.fv = xor i64 %.sroa.48.1, %i.fu
  %i.fw = xor i64 %i.fv, %i.ft
  %i.fx = mul i64 %i.fw, -7070675565921424023     ; 2 uses
  %i.fy = lshr i64 %i.fx, 47
  %i.fz = xor i64 %i.fy, %i.fx
  %i.ga = mul i64 %i.fz, -7070675565921424023
  %i.gb = lshr i64 %.sroa.12.1, 47
  %i.gc = xor i64 %i.gb, %.sroa.12.1
  %i.gd = mul i64 %i.gc, -5435081209227447693
  %i.ge = add i64 %i.gd, %.sroa.20.1
  %i.gf = add i64 %i.ge, %i.ga
  %i.gg = xor i64 %.sroa.38.1, %.sroa.58.1
  %i.gh = mul i64 %i.gg, -7070675565921424023     ; 2 uses
  %i.gi = lshr i64 %i.gh, 47
  %i.gj = xor i64 %.sroa.58.1, %i.gi
  %i.gk = xor i64 %i.gj, %i.gh
  %i.gl = mul i64 %i.gk, -7070675565921424023     ; 2 uses
  %i.gm = lshr i64 %i.gl, 47
  %i.gn = xor i64 %i.gm, %i.gl
  %i.go = mul i64 %i.gn, -7070675565921424023
  %i.gp = lshr i64 %i.i, 47
  %i.gq = xor i64 %i.gp, %i.i
  %i.gr = mul i64 %i.gq, -5435081209227447693
  %i.gs = add i64 %.sroa.0.1, %i.gr
  %i.gt = add i64 %i.gs, %i.go                    ; 2 uses
  %i.gu = xor i64 %i.gf, %i.gt
  %i.gv = mul i64 %i.gu, -7070675565921424023     ; 2 uses
  %i.gw = lshr i64 %i.gv, 47
  %i.gx = xor i64 %i.gt, %i.gw
  %i.gy = xor i64 %i.gx, %i.gv
  %i.gz = mul i64 %i.gy, -7070675565921424023     ; 2 uses
  %i.ha = lshr i64 %i.gz, 47
  %i.hb = xor i64 %i.ha, %i.gz
  %i.hc = mul i64 %i.hb, -7070675565921424023
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.sroa.048.0 = phi i64 [ %i.k, %bb.d ], [ %i.hc, %bb.g ]
  ret i64 %.sroa.048.0
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i48 @llvm.bswap.i48(i48) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"_ZTSN4llvh5APIntE", !5, i64 0, !4, i64 8}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !13, !17}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !13, !21, !20}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13, !17}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !15}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !13, !20, !21}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !13, !20}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !13, !20, !21}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !13, !20}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!49}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !13, !20, !21}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !13, !20}
!53 = !{!54}
!54 = distinct !{!54, !55}
!55 = distinct !{!55, !"LVerDomain"}
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !13, !20, !21}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !13, !20}
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !13, !20, !21}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !13, !20}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !13, !20, !21}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !13, !20}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNK4llvh5APIntmlERKS0_: argument 0"}
!79 = distinct !{!79, !"_ZNK4llvh5APIntmlERKS0_"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13, !17, !20, !21}
!82 = distinct !{!82, !13, !17, !21, !20}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13, !20, !21}
!88 = distinct !{!88, !13, !21, !20}
!89 = distinct !{!89, !13, !20, !21}
!90 = distinct !{!90, !13, !21, !20}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = !{!"branch_weights", i32 1, i32 1048575}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK4llvh5APInt3shlEj: argument 0"}
!97 = distinct !{!97, !"_ZNK4llvh5APInt3shlEj"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4llvhorERKNS_5APIntEOS0_: argument 0"}
!100 = distinct !{!100, !"_ZN4llvhorERKNS_5APIntEOS0_"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK4llvh5APInt4lshrEj: argument 0"}
!103 = distinct !{!103, !"_ZNK4llvh5APInt4lshrEj"}
!104 = distinct !{!104, !13, !20, !21}
!105 = distinct !{!105, !13, !21, !20}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK4llvh5APInt4lshrEj: argument 0"}
!108 = distinct !{!108, !"_ZNK4llvh5APInt4lshrEj"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN4llvh5APInt13getLowBitsSetEjj: argument 0"}
!111 = distinct !{!111, !"_ZN4llvh5APInt13getLowBitsSetEjj"}
!112 = !{!113}
!113 = distinct !{!113, !114}
!114 = distinct !{!114, !"LVerDomain"}
!115 = !{!116}
!116 = distinct !{!116, !114}
!117 = distinct !{!117, !13, !20, !21}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !13, !20}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNK4llvh5APInt10zextOrSelfEj: argument 0"}
!122 = distinct !{!122, !"_ZNK4llvh5APInt10zextOrSelfEj"}
!123 = !{!124}
end_hunk_3
