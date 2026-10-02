Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LanaiDisassembler?download=true
inline.NumInlined: 280
inline.NumDeleted: 94
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SmallVector.5" = type { %"class.llvm::SmallVectorImpl.6", %"struct.llvm::SmallVectorStorage.9" }
%"class.llvm::SmallVectorImpl.6" = type { %"class.llvm::SmallVectorTemplateBase.7" }
%"class.llvm::SmallVectorTemplateBase.7" = type { %"class.llvm::SmallVectorTemplateCommon.8" }
%"class.llvm::SmallVectorTemplateCommon.8" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.9" = type { [64 x i8] }

$_ZN4llvm17LanaiDisassemblerD0Ev = comdat any

$_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE = comdat any

$_ZN4llvm14MCDisassembler13setABIVersionEj = comdat any

$_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm17LanaiDisassemblerE = unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4llvm14MCDisassemblerD2Ev, ptr @_ZN4llvm17LanaiDisassemblerD0Ev, ptr @_ZNK4llvm17LanaiDisassembler14getInstructionERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE, ptr @_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE, ptr @_ZNK4llvm14MCDisassembler13onSymbolStartERNS_12SymbolInfoTyERmNS_8ArrayRefIhEEm, ptr @_ZNK4llvm14MCDisassembler18suggestBytesToSkipENS_8ArrayRefIhEEm, ptr @_ZN4llvm14MCDisassembler13setABIVersionEj, ptr @_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj] }, align 8
@_ZL15GPRDecoderTable = internal unnamed_addr constant [32 x i32] [i32 7, i32 8, i32 2, i32 10, i32 5, i32 1, i32 13, i32 14, i32 4, i32 16, i32 39, i32 40, i32 19, i32 20, i32 21, i32 3, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38], align 16
@_ZN12_GLOBAL__N_119DecoderTableLanai32E = internal constant [743 x i8] c"\02\1C\04\00\\\02\10\02\00E\01?\02\00\10\01\08\03\12\0A\00\05\FB\02\00\02\08\03\12\0A\00\05\F5\02\00\03\08\03\12\0A\00\05\F6\02\00\04\08\03\12\0A\00\05\F7\02\00\05\08\03\12\0A\00\05\F8\02\00\06\00\03\12\0A\00\05\F9\02\00\05\DA\02\01\01\04\05\D9\02\01\02\04\05\D7\02\01\03\00\05\D6\02\01\01\1B\02\10\02\00\04\05\D4\02\01\01\04\05\D3\02\01\02\04\05\D1\02\01\03\00\05\D0\02\01\02\1B\02\10\02\00\04\05\A3\03\01\01\04\05\A2\03\01\02\04\05\A0\03\01\03\00\05\9F\03\01\03\1B\02\10\02\00\04\05\9D\03\01\01\04\05\9C\03\01\02\04\05\9A\03\01\03\00\05\99\03\01\04\1B\02\10\02\00\04\05\E0\02\01\01\04\05\DF\02\01\02\04\05\DD\02\01\03\00\05\DC\02\01\05\1B\02\10\02\00\04\05\80\03\01\01\04\05\FF\02\01\02\04\05\FD\02\01\03\00\05\FC\02\01\06\1B\02\10\02\00\04\05\AC\03\01\01\04\05\AB\03\01\02\04\05\A9\03\01\03\00\05\A8\03\01\07\1B\02\10\02\00\04\05\8F\03\02\01\04\05\85\03\02\02\04\05\8E\03\02\03\00\05\84\03\02\08\11\01\0B\03\00\1C\FC\FF\DB\08\05\83\03\00\05\F1\02\03\09\04\05\A5\03\03\0A'\02\00\03\00\04\05\EE\02\04\01\04\05\F0\02\04\02\04\05\F2\02\04\03\04\05\F3\02\04\04\04\05\EA\02\04\05\00\05\EC\02\04\0B\15\02\00\03\00\04\05\98\03\04\02\04\05\A6\03\04\04\00\05\96\03\04\0C\D6\01\02\03\08\00\0F\02\11\01\00\04\05\DB\02\05\01\00\05\D8\02\05 \0F\02\11\01\00\04\05\D5\02\05\01\00\05\D2\02\05@\0F\02\11\01\00\04\05\A4\03\05\01\00\05\A1\03\05`\0F\02\11\01\00\04\05\9E\03\05\01\00\05\9B\03\05\80\01\0F\02\11\01\00\04\05\E1\02\05\01\00\05\DE\02\05\A0\019\02\11\01\00.\01\10\03\00\03\00\03\12\0A@\03\10\01\00\05\E7\02\06\01\0C\03\0B\05\00\03\17\05\02\05\E3\02\07\01\08\03\17\05\02\05\E4\02\08\05\81\03\05\01\00\05\FE\02\05\C0\01\0F\02\11\01\00\04\05\AD\03\05\01\00\05\AA\03\05\E0\01\08\03\11\01\00\05\87\03\09\F0\01\0F\02\11\01\00\04\05\8C\03\05\01\00\05\8B\03\05\F8\01\00\02\11\01\00\04\05\91\03\05\01\00\05\90\03\05\0D\15\02\00\12\01\04\05\82\03\0A\02\04\05\F4\02\0A\03\00\05\A7\03\0A\0E0\02\01\01\00\12\01\0C\03\00\01\00\03\19\03\00\05\E6\02\0B\05\E2\02\0C\01\00\02\17\02\00\08\03\02\10\00\05\86\03\0D\02\00\03\10\07\00\05\E5\02\0E\0F\00\02\10\02\00\04\05\E8\02\0F\01\04\05\94\03\0F\02\04\05\8D\03\0F\03\00\02\0C\04\00\04\05\ED\02\10\01\04\05\EF\02\10\02\04\05\97\03\10\04\04\05\E9\02\10\05\04\05\EB\02\10\06\00\05\95\03\10", align 16
@.str = private unnamed_addr constant [35 x i8] c": Unexpected decode table opcode: \00", align 1

@_ZN4llvm17LanaiDisassemblerC1ERKNS_15MCSubtargetInfoERNS_9MCContextE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN4llvm17LanaiDisassemblerC2ERKNS_15MCSubtargetInfoERNS_9MCContextE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMInitializeLanaiDisassembler() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheLanaiTargetEv() #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr @_ZL23createLanaiDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.b, align 8, !tbaa !19
  ret void
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheLanaiTargetEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noundef nonnull ptr @_ZL23createLanaiDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 1 %2) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 2 uses
  tail call void @_ZN4llvm17LanaiDisassemblerC1ERKNS_15MCSubtargetInfoERNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 1 %2) #10
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm17LanaiDisassemblerC2ERKNS_15MCSubtargetInfoERNS_9MCContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef nonnull align 8 dereferenceable(320) %1, ptr noundef nonnull align 1 %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm17LanaiDisassemblerE, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 31
  br i1 %i.a, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i = zext i32 %i.d to i64  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %.not.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 1, i64 %.sroa.3.8.insert.ext.i)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 2 uses
  store i8 1, ptr %i.l, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.3.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !13
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 3, %bb.c ], [ 3, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK4llvm17LanaiDisassembler14getInstructionERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree readonly captures(none) %3, i64 %4, i64 noundef %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallVector.5", align 8 ; 10 uses
  %i.a = icmp ult i64 %4, 4
  br i1 %i.a, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %8 = load i8, ptr %3, align 1, !tbaa !28
  %9 = zext i8 %8 to i32                          ; 4 uses
  %10 = shl nuw i32 %9, 24
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !28
  %13 = zext i8 %12 to i32                        ; 17 uses
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %14, %10                  ; 10 uses
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !28
  %18 = zext i8 %17 to i32                        ; 7 uses
  %19 = shl nuw nsw i32 %18, 8
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !28
  %22 = zext i8 %21 to i32                        ; 9 uses
  %23 = or disjoint i32 %19, %22                  ; 7 uses
  %24 = or disjoint i32 %23, %15                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 8, ptr %i.d, align 4, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, %bb.b
  %.018.i = phi ptr [ @_ZN12_GLOBAL__N_119DecoderTableLanai32E, %bb.b ], [ %.018.i.be, %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 12 uses
  %i.f = load i8, ptr %.018.i, align 1, !tbaa !28 ; 2 uses
  switch i8 %i.f, label %bb.c [
    i8 1, label %.preheader31.i
    i8 2, label %.preheader32.i
    i8 3, label %.preheader33.i
    i8 5, label %.preheader.i
  ]

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.g = ptrtoint ptr %.018.i to i64
  %i.h = sub i64 %i.g, ptrtoint (ptr @_ZN12_GLOBAL__N_119DecoderTableLanai32E to i64)
  %i.i = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #10
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.h) #10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 34
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull @.str, i64 noundef 34) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.n, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  store ptr %i.u, ptr %i.m, align 8, !tbaa !33
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %bb.e ]
  %i.v = zext i8 %i.f to i64
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef %i.v) #10 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %.not.i.i = icmp ult ptr %i.y, %i.aa
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !33
  store i8 10, ptr %i.y, align 1, !tbaa !28
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

.preheader31.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.i
  %.031.i.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i.i = phi i64 [ %.130.i.i.i.i, %bb.i ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.028.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %i.ad = load i8, ptr %.031.i.i.i.i, align 1, !tbaa !28 ; 2 uses
  %i.ae = and i8 %i.ad, 127                       ; 3 uses
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = icmp ugt i32 %.028.i.i.i.i, 62
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !34

bb.h:                                             ; preds = %.preheader31.i
  %.not44.i.i.i.i = icmp eq i32 %.028.i.i.i.i, 63
  %.not.i.i.i.i = icmp samesign ugt i8 %i.ae, 1
  %i.ah = icmp ne i8 %i.ae, 0
  %or.cond43.i.i.i.i = select i1 %.not44.i.i.i.i, i1 %.not.i.i.i.i, i1 %i.ah
  br i1 %or.cond43.i.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader31.i
  %i.ai = icmp ult i32 %.028.i.i.i.i, 64
  %i.aj = zext nneg i32 %.028.i.i.i.i to i64
  %i.ak = shl i64 %i.af, %i.aj
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0, !prof !15
  %.130.i.i.i.i = add i64 %i.al, %.029.i.i.i.i    ; 2 uses
  %i.am = add i32 %.028.i.i.i.i, 7
  %i.an = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 1 ; 2 uses
  %i.ao = icmp slt i8 %i.ad, 0
  br i1 %i.ao, label %.preheader31.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i:  ; preds = %bb.i, %bb.h
  %.132.i.i.i.i = phi ptr [ %i.an, %bb.i ], [ %.031.i.i.i.i, %bb.h ]
  %.3.i.i.i.i = phi i64 [ %.130.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ap = ptrtoint ptr %.132.i.i.i.i to i64
  %i.aq = ptrtoint ptr %i.e to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.as ; 3 uses
  %i.au = and i64 %.3.i.i.i.i, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !14
  %.not.i48.i = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i48.i, label %bb.k, label %bb.j, !prof !15

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.av)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge

bb.k:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %7, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store ptr %i.av, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.c, align 8, !tbaa !13
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge

.preheader32.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.m
  %.031.i.i.i50.i = phi ptr [ %i.bn, %bb.m ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i51.i = phi i64 [ %.130.i.i.i53.i, %bb.m ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.028.i.i.i52.i = phi i32 [ %i.bm, %bb.m ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %i.bd = load i8, ptr %.031.i.i.i50.i, align 1, !tbaa !28 ; 2 uses
  %i.be = and i8 %i.bd, 127                       ; 3 uses
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = icmp ugt i32 %.028.i.i.i52.i, 62
  br i1 %i.bg, label %bb.l, label %bb.m, !prof !34

bb.l:                                             ; preds = %.preheader32.i
  %.not44.i.i.i56.i = icmp eq i32 %.028.i.i.i52.i, 63
  %.not.i.i.i57.i = icmp samesign ugt i8 %i.be, 1
  %i.bh = icmp ne i8 %i.be, 0
  %or.cond43.i.i.i58.i = select i1 %.not44.i.i.i56.i, i1 %.not.i.i.i57.i, i1 %i.bh
  br i1 %or.cond43.i.i.i58.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader32.i
  %i.bi = icmp ult i32 %.028.i.i.i52.i, 64
  %i.bj = zext nneg i32 %.028.i.i.i52.i to i64
  %i.bk = shl i64 %i.bf, %i.bj
  %i.bl = select i1 %i.bi, i64 %i.bk, i64 0, !prof !15
  %.130.i.i.i53.i = add i64 %i.bl, %.029.i.i.i51.i ; 2 uses
  %i.bm = add i32 %.028.i.i.i52.i, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %.031.i.i.i50.i, i64 1 ; 2 uses
  %i.bo = icmp slt i8 %i.bd, 0
  br i1 %i.bo, label %.preheader32.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i: ; preds = %bb.m, %bb.l
  %.132.i.i.i54.i = phi ptr [ %i.bn, %bb.m ], [ %.031.i.i.i50.i, %bb.l ]
  %.3.i.i.i55.i = phi i64 [ %.130.i.i.i53.i, %bb.m ], [ 0, %bb.l ]
  %i.bp = ptrtoint ptr %.132.i.i.i54.i to i64
  %i.bq = ptrtoint ptr %i.e to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  %i.bu = trunc i64 %.3.i.i.i55.i to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bw = load i8, ptr %i.bt, align 1, !tbaa !28  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = icmp eq i8 %i.bw, 0
  %i.bz = sub nsw i32 32, %i.bx
  %i.ca = lshr i32 -1, %i.bz
  %.0.i.i60.i = select i1 %i.by, i32 0, i32 %i.ca
  %i.cb = lshr i32 %24, %i.bu
  %i.cc = and i32 %.0.i.i60.i, %i.cb
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i
  %.1.i = phi ptr [ %i.bv, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i ], [ %i.du, %bb.v ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.031.i.i.i62.i = phi ptr [ %.1.i, %bb.n ], [ %i.co, %bb.q ] ; 3 uses
  %.029.i.i.i63.i = phi i64 [ 0, %bb.n ], [ %.130.i.i.i65.i, %bb.q ]
  %.028.i.i.i64.i = phi i32 [ 0, %bb.n ], [ %i.cn, %bb.q ] ; 5 uses
  %i.ce = load i8, ptr %.031.i.i.i62.i, align 1, !tbaa !28 ; 2 uses
  %i.cf = and i8 %i.ce, 127                       ; 3 uses
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = icmp ugt i32 %.028.i.i.i64.i, 62
  br i1 %i.ch, label %bb.p, label %bb.q, !prof !34

bb.p:                                             ; preds = %bb.o
  %.not44.i.i.i68.i = icmp eq i32 %.028.i.i.i64.i, 63
  %.not.i.i.i69.i = icmp samesign ugt i8 %i.cf, 1
  %i.ci = icmp ne i8 %i.cf, 0
  %or.cond43.i.i.i70.i = select i1 %.not44.i.i.i68.i, i1 %.not.i.i.i69.i, i1 %i.ci
  br i1 %or.cond43.i.i.i70.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cj = icmp ult i32 %.028.i.i.i64.i, 64
  %i.ck = zext nneg i32 %.028.i.i.i64.i to i64
  %i.cl = shl i64 %i.cg, %i.ck
  %i.cm = select i1 %i.cj, i64 %i.cl, i64 0, !prof !15
  %.130.i.i.i65.i = add i64 %i.cm, %.029.i.i.i63.i ; 2 uses
  %i.cn = add i32 %.028.i.i.i64.i, 7
  %i.co = getelementptr inbounds nuw i8, ptr %.031.i.i.i62.i, i64 1 ; 2 uses
  %i.cp = icmp slt i8 %i.ce, 0
  br i1 %i.cp, label %bb.o, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i: ; preds = %bb.q, %bb.p
  %.132.i.i.i66.i = phi ptr [ %i.co, %bb.q ], [ %.031.i.i.i62.i, %bb.p ]
  %.3.i.i.i67.i = phi i64 [ %.130.i.i.i65.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.cq = ptrtoint ptr %.132.i.i.i66.i to i64
  %i.cr = ptrtoint ptr %.1.i to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.ct ; 5 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.u
  %i.cv = add i32 %.028.i.i.i75.i129, 7
  br label %bb.s, !llvm.loop !26

bb.s:                                             ; preds = %bb.r, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i
  %.028.i.i.i75.i129 = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %i.cv, %bb.r ] ; 5 uses
  %.029.i.i.i74.i128 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %.130.i.i.i76.i, %bb.r ]
  %.031.i.i.i73.i127 = phi ptr [ %i.cu, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %i.df, %bb.r ] ; 3 uses
  %i.cw = load i8, ptr %.031.i.i.i73.i127, align 1, !tbaa !28 ; 2 uses
  %i.cx = and i8 %i.cw, 127                       ; 3 uses
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = icmp ugt i32 %.028.i.i.i75.i129, 62
  br i1 %i.cz, label %bb.t, label %bb.u, !prof !34

bb.t:                                             ; preds = %bb.s
  %.not44.i.i.i79.i = icmp eq i32 %.028.i.i.i75.i129, 63
  %.not.i.i.i80.i = icmp samesign ugt i8 %i.cx, 1
  %i.da = icmp ne i8 %i.cx, 0
  %or.cond43.i.i.i81.i = select i1 %.not44.i.i.i79.i, i1 %.not.i.i.i80.i, i1 %i.da
  br i1 %or.cond43.i.i.i81.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.i.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.db = icmp ult i32 %.028.i.i.i75.i129, 64
  %i.dc = zext nneg i32 %.028.i.i.i75.i129 to i64
  %i.dd = shl i64 %i.cy, %i.dc
  %i.de = select i1 %i.db, i64 %i.dd, i64 0, !prof !15
  %.130.i.i.i76.i = add i64 %i.de, %.029.i.i.i74.i128 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.031.i.i.i73.i127, i64 1 ; 2 uses
  %i.dg = icmp slt i8 %i.cw, 0
  br i1 %i.dg, label %bb.r, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.i.loopexit: ; preds = %bb.t
  %i.dh = ptrtoint ptr %.031.i.i.i73.i127 to i64
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dk
  br label %.loopexit.i

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i: ; preds = %bb.u
  %i.dm = ptrtoint ptr %i.df to i64
  %i.dn = ptrtoint ptr %i.cu to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = and i64 %i.do, 4294967295
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dp ; 2 uses
  %i.dr = icmp ne i64 %.3.i.i.i67.i, %i.cd
  %i.ds = and i64 %.130.i.i.i76.i, 4294967295     ; 2 uses
  %i.dt = icmp ne i64 %i.ds, 0
  %or.cond.i = and i1 %i.dr, %i.dt
  br i1 %or.cond.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ds
  br label %bb.n, !llvm.loop !27

.loopexit.i:                                      ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.i.loopexit
  %i.dv = phi ptr [ %i.dl, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.i.loopexit ], [ %i.dq, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i ]
  %.not.i = icmp eq i64 %.3.i.i.i67.i, %i.cd
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, label %bb.eb

.preheader33.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.x
  %.031.i.i.i84.i = phi ptr [ %i.eg, %bb.x ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i85.i = phi i64 [ %.130.i.i.i87.i, %bb.x ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.028.i.i.i86.i = phi i32 [ %i.ef, %bb.x ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %i.dw = load i8, ptr %.031.i.i.i84.i, align 1, !tbaa !28 ; 2 uses
  %i.dx = and i8 %i.dw, 127                       ; 3 uses
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = icmp ugt i32 %.028.i.i.i86.i, 62
  br i1 %i.dz, label %bb.w, label %bb.x, !prof !34

bb.w:                                             ; preds = %.preheader33.i
  %.not44.i.i.i90.i = icmp eq i32 %.028.i.i.i86.i, 63
  %.not.i.i.i91.i = icmp samesign ugt i8 %i.dx, 1
  %i.ea = icmp ne i8 %i.dx, 0
  %or.cond43.i.i.i92.i = select i1 %.not44.i.i.i90.i, i1 %.not.i.i.i91.i, i1 %i.ea
  br i1 %or.cond43.i.i.i92.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader33.i
  %i.eb = icmp ult i32 %.028.i.i.i86.i, 64
  %i.ec = zext nneg i32 %.028.i.i.i86.i to i64
  %i.ed = shl i64 %i.dy, %i.ec
  %i.ee = select i1 %i.eb, i64 %i.ed, i64 0, !prof !15
  %.130.i.i.i87.i = add i64 %i.ee, %.029.i.i.i85.i ; 2 uses
  %i.ef = add i32 %.028.i.i.i86.i, 7
  %i.eg = getelementptr inbounds nuw i8, ptr %.031.i.i.i84.i, i64 1 ; 2 uses
  %i.eh = icmp slt i8 %i.dw, 0
  br i1 %i.eh, label %.preheader33.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i: ; preds = %bb.x, %bb.w
  %.132.i.i.i88.i = phi ptr [ %i.eg, %bb.x ], [ %.031.i.i.i84.i, %bb.w ]
  %.3.i.i.i89.i = phi i64 [ %.130.i.i.i87.i, %bb.x ], [ 0, %bb.w ]
  %i.ei = ptrtoint ptr %.132.i.i.i88.i to i64
  %i.ej = ptrtoint ptr %i.e to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = and i64 %i.ek, 4294967295
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.el ; 2 uses
  %i.en = trunc i64 %.3.i.i.i89.i to i32
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !28  ; 2 uses
  %i.ep = zext i8 %i.eo to i32
  %i.eq = icmp eq i8 %i.eo, 0
  %i.er = sub nsw i32 32, %i.ep
  %i.es = lshr i32 -1, %i.er
  %.0.i.i94.i = select i1 %i.eq, i32 0, i32 %i.es
  %i.et = lshr i32 %24, %i.en
  %i.eu = and i32 %.0.i.i94.i, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 1 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i
  %.031.i.i = phi ptr [ %i.ew, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ], [ %i.fh, %bb.aa ] ; 3 uses
  %.029.i.i = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ], [ %.130.i.i, %bb.aa ]
  %.028.i.i = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ], [ %i.fg, %bb.aa ] ; 5 uses
  %i.ex = load i8, ptr %.031.i.i, align 1, !tbaa !28 ; 2 uses
  %i.ey = and i8 %i.ex, 127                       ; 3 uses
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = icmp ugt i32 %.028.i.i, 62
  br i1 %i.fa, label %bb.z, label %bb.aa, !prof !34

bb.z:                                             ; preds = %bb.y
  %.not44.i.i = icmp eq i32 %.028.i.i, 63
  %.not.i95.i = icmp samesign ugt i8 %i.ey, 1
  %i.fb = icmp ne i8 %i.ey, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i95.i, i1 %i.fb
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fc = icmp ult i32 %.028.i.i, 64
  %i.fd = zext nneg i32 %.028.i.i to i64
  %i.fe = shl i64 %i.ez, %i.fd
  %i.ff = select i1 %i.fc, i64 %i.fe, i64 0, !prof !15
  %.130.i.i = add i64 %i.ff, %.029.i.i            ; 2 uses
  %i.fg = add i32 %.028.i.i, 7
  %i.fh = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1 ; 2 uses
  %i.fi = icmp slt i8 %i.ex, 0
  br i1 %i.fi, label %bb.y, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !26

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.aa, %bb.z
  %.132.i.i = phi ptr [ %i.fh, %bb.aa ], [ %.031.i.i, %bb.z ]
  %.3.i.i = phi i64 [ %.130.i.i, %bb.aa ], [ 0, %bb.z ]
  %i.fj = ptrtoint ptr %.132.i.i to i64
  %i.fk = ptrtoint ptr %i.ew to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = and i64 %i.fl, 4294967295
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fm
  %.not.not.i = icmp eq i64 %.3.i.i, %i.ev
  br i1 %.not.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, label %bb.eb

.preheader.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.ac
  %.031.i.i.i97.i = phi ptr [ %i.fy, %bb.ac ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i98.i = phi i64 [ %.130.i.i.i100.i, %bb.ac ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %.028.i.i.i99.i = phi i32 [ %i.fx, %bb.ac ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %i.fo = load i8, ptr %.031.i.i.i97.i, align 1, !tbaa !28 ; 2 uses
  %i.fp = and i8 %i.fo, 127                       ; 3 uses
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = icmp ugt i32 %.028.i.i.i99.i, 62
  br i1 %i.fr, label %bb.ab, label %bb.ac, !prof !34

bb.ab:                                            ; preds = %.preheader.i
  %.not44.i.i.i103.i = icmp eq i32 %.028.i.i.i99.i, 63
  %.not.i.i.i104.i = icmp samesign ugt i8 %i.fp, 1
  %i.fs = icmp ne i8 %i.fp, 0
  %or.cond43.i.i.i105.i = select i1 %.not44.i.i.i103.i, i1 %.not.i.i.i104.i, i1 %i.fs
  br i1 %or.cond43.i.i.i105.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader.i
  %i.ft = icmp ult i32 %.028.i.i.i99.i, 64
  %i.fu = zext nneg i32 %.028.i.i.i99.i to i64
  %i.fv = shl i64 %i.fq, %i.fu
  %i.fw = select i1 %i.ft, i64 %i.fv, i64 0, !prof !15
  %.130.i.i.i100.i = add i64 %i.fw, %.029.i.i.i98.i ; 2 uses
  %i.fx = add i32 %.028.i.i.i99.i, 7
  %i.fy = getelementptr inbounds nuw i8, ptr %.031.i.i.i97.i, i64 1 ; 2 uses
  %i.fz = icmp slt i8 %i.fo, 0
  br i1 %i.fz, label %.preheader.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i: ; preds = %bb.ac, %bb.ab
  %.132.i.i.i101.i = phi ptr [ %i.fy, %bb.ac ], [ %.031.i.i.i97.i, %bb.ab ]
  %.3.i.i.i102.i = phi i64 [ %.130.i.i.i100.i, %bb.ac ], [ 0, %bb.ab ]
  %i.ga = ptrtoint ptr %.132.i.i.i101.i to i64
  %i.gb = ptrtoint ptr %i.e to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = and i64 %i.gc, 4294967295
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.gd
  %i.gf = trunc i64 %.3.i.i.i102.i to i32         ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i
  %.031.i.i.i108.i = phi ptr [ %i.ge, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ], [ %i.gr, %bb.af ] ; 2 uses
  %.029.i.i.i109.i = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ], [ %.130.i.i.i111.i, %bb.af ]
  %.028.i.i.i110.i = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ], [ %i.gq, %bb.af ] ; 5 uses
  %i.gg = load i8, ptr %.031.i.i.i108.i, align 1, !tbaa !28 ; 2 uses
  %i.gh = and i8 %i.gg, 127                       ; 3 uses
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = icmp ugt i32 %.028.i.i.i110.i, 62
  br i1 %i.gj, label %bb.ae, label %bb.af, !prof !34

bb.ae:                                            ; preds = %bb.ad
  %.not44.i.i.i114.i = icmp eq i32 %.028.i.i.i110.i, 63
  %.not.i.i.i115.i = icmp samesign ugt i8 %i.gh, 1
  %i.gk = icmp ne i8 %i.gh, 0
  %or.cond43.i.i.i116.i = select i1 %.not44.i.i.i114.i, i1 %.not.i.i.i115.i, i1 %i.gk
  br i1 %or.cond43.i.i.i116.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i, label %bb.af

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i: ; preds = %bb.ae
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.gl, align 8, !tbaa !13
  store i32 %i.gf, ptr %1, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gm = icmp ult i32 %.028.i.i.i110.i, 64
  %i.gn = zext nneg i32 %.028.i.i.i110.i to i64
  %i.go = shl i64 %i.gi, %i.gn
  %i.gp = select i1 %i.gm, i64 %i.go, i64 0, !prof !15
  %.130.i.i.i111.i = add i64 %i.gp, %.029.i.i.i109.i ; 2 uses
  %i.gq = add i32 %.028.i.i.i110.i, 7
  %i.gr = getelementptr inbounds nuw i8, ptr %.031.i.i.i108.i, i64 1
  %i.gs = icmp slt i8 %i.gg, 0
  br i1 %i.gs, label %bb.ad, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i, !llvm.loop !26

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i: ; preds = %bb.af
  %i.gt = trunc i64 %.130.i.i.i111.i to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 107 uses
  store i32 0, ptr %i.gu, align 8, !tbaa !13
  store i32 %i.gf, ptr %1, align 8, !tbaa !43
  switch i32 %i.gt, label %bb.ag [
    i32 0, label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i
    i32 1, label %bb.ah
    i32 2, label %bb.ao
    i32 3, label %bb.av
    i32 4, label %bb.bc
    i32 5, label %bb.bj
    i32 6, label %bb.bs
    i32 7, label %bb.bv
    i32 8, label %bb.ca
    i32 9, label %bb.ch
    i32 10, label %bb.cq
    i32 11, label %bb.cv
    i32 12, label %bb.cz
    i32 13, label %bb.df
    i32 14, label %bb.dk
    i32 15, label %bb.dp
    i32 16, label %bb.du
  ]

bb.ag:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  unreachable

bb.ah:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.gv = lshr i32 %15, 23
  %i.gw = and i32 %i.gv, 31
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i.i.i = zext i32 %i.gz to i64 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !14
  %.not.i.i.i.i.not.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i.i.i.i.not.i, label %bb.ai, label %bb.aj, !prof !34

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i.i)
  %.pre91.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.hd, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1
  %i.he = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.hf = add i32 %i.he, 1                        ; 2 uses
  store i32 %i.hf, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i: ; preds = %bb.aj, %bb.ai
  %i.hg = phi i32 [ %.pre91.i, %bb.ai ], [ %i.hf, %bb.aj ] ; 2 uses
  %i.hh = lshr i32 %13, 2
  %i.hi = and i32 %i.hh, 31
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i177.i.i = zext i32 %i.hl to i64 ; 2 uses
  %i.hm = load i32, ptr %i.hb, align 4, !tbaa !14
  %.not.i.i.i178.i.i = icmp ult i32 %i.hg, %i.hm
  br i1 %.not.i.i.i178.i.i, label %bb.al, label %bb.ak, !prof !15

bb.ak:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 1, i64 %.sroa.3.8.insert.ext.i.i177.i.i)
  %.pre92.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i

bb.al:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i
  %i.hn = zext i32 %i.hg to i64
  %i.ho = load ptr, ptr %i.ha, align 8, !tbaa !16
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %i.hn ; 2 uses
  store i8 1, ptr %i.hp, align 1
  %.sroa.4.0..sroa_idx.i.i.i179.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i177.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i179.i.i, align 1
  %i.hq = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.hr = add i32 %i.hq, 1                        ; 2 uses
  store i32 %i.hr, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i: ; preds = %bb.al, %bb.ak
  %i.hs = phi i32 [ %i.hr, %bb.al ], [ %.pre92.i, %bb.ak ] ; 2 uses
  %i.ht = zext nneg i32 %23 to i64                ; 2 uses
  %i.hu = load i32, ptr %i.hb, align 4, !tbaa !14
  %.not.i.i138.i = icmp ult i32 %i.hs, %i.hu
  br i1 %.not.i.i138.i, label %bb.an, label %bb.am, !prof !15

bb.am:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 2, i64 %i.ht)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.an:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i
  %i.hv = zext i32 %i.hs to i64
  %i.hw = load ptr, ptr %i.ha, align 8, !tbaa !16
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hv ; 2 uses
  store i8 2, ptr %i.hx, align 1
  %.sroa.4.0..sroa_idx.i.i139.i = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i64 %i.ht, ptr %.sroa.4.0..sroa_idx.i.i139.i, align 1
  %i.hy = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.hz = add i32 %i.hy, 1
  store i32 %i.hz, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.ao:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ia = lshr i32 %15, 23
  %i.ib = and i32 %i.ia, 31
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i181.i.i = zext i32 %i.ie to i64 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !14
  %.not.i.i.i182.i.not.i = icmp eq i32 %i.ih, 0
  br i1 %.not.i.i.i182.i.not.i, label %bb.ap, label %bb.aq, !prof !34

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 1, i64 %.sroa.3.8.insert.ext.i.i181.i.i)
  %.pre89.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ii = load ptr, ptr %i.if, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.ii, align 1
  %.sroa.4.0..sroa_idx.i.i.i183.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i181.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i183.i.i, align 1
  %i.ij = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ik = add i32 %i.ij, 1                        ; 2 uses
  store i32 %i.ik, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i: ; preds = %bb.aq, %bb.ap
  %i.il = phi i32 [ %.pre89.i, %bb.ap ], [ %i.ik, %bb.aq ] ; 2 uses
  %i.im = lshr i32 %13, 2
  %i.in = and i32 %i.im, 31
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i185.i.i = zext i32 %i.iq to i64 ; 2 uses
  %i.ir = load i32, ptr %i.ig, align 4, !tbaa !14
  %.not.i.i.i186.i.i = icmp ult i32 %i.il, %i.ir
  br i1 %.not.i.i.i186.i.i, label %bb.as, label %bb.ar, !prof !15

bb.ar:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 1, i64 %.sroa.3.8.insert.ext.i.i185.i.i)
  %.pre90.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i

bb.as:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i
  %i.is = zext i32 %i.il to i64
  %i.it = load ptr, ptr %i.if, align 8, !tbaa !16
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.is ; 2 uses
  store i8 1, ptr %i.iu, align 1
  %.sroa.4.0..sroa_idx.i.i.i187.i.i = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i185.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i187.i.i, align 1
  %i.iv = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.iw = add i32 %i.iv, 1                        ; 2 uses
  store i32 %i.iw, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i: ; preds = %bb.as, %bb.ar
  %i.ix = phi i32 [ %i.iw, %bb.as ], [ %.pre90.i, %bb.ar ] ; 2 uses
  %i.iy = shl nuw i32 %23, 16
  %i.iz = ashr exact i32 %i.iy, 16
  %i.ja = sext i32 %i.iz to i64                   ; 2 uses
  %i.jb = load i32, ptr %i.ig, align 4, !tbaa !14
  %.not.i.i.i136.i = icmp ult i32 %i.ix, %i.jb
  br i1 %.not.i.i.i136.i, label %bb.au, label %bb.at, !prof !15

bb.at:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 2, i64 %i.ja)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.au:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i
  %i.jc = zext i32 %i.ix to i64
  %i.jd = load ptr, ptr %i.if, align 8, !tbaa !16
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jc ; 2 uses
  store i8 2, ptr %i.je, align 1
  %.sroa.4.0..sroa_idx.i.i.i137.i = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i64 %i.ja, ptr %.sroa.4.0..sroa_idx.i.i.i137.i, align 1
  %i.jf = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.av:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.jh = lshr i32 %15, 23
  %i.ji = and i32 %i.jh, 31
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i189.i.i = zext i32 %i.jl to i64 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !14
  %.not.i.i.i190.i.not.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i.i.i190.i.not.i, label %bb.aw, label %bb.ax, !prof !34

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 1, i64 %.sroa.3.8.insert.ext.i.i189.i.i)
  %.pre88.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit192.i.i

bb.ax:                                            ; preds = %bb.av
  %i.jp = load ptr, ptr %i.jm, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.jp, align 1
  %.sroa.4.0..sroa_idx.i.i.i191.i.i = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i189.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i191.i.i, align 1
  %i.jq = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.jr = add i32 %i.jq, 1                        ; 2 uses
  store i32 %i.jr, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit192.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit192.i.i: ; preds = %bb.ax, %bb.aw
  %i.js = phi i32 [ %.pre88.i, %bb.aw ], [ %i.jr, %bb.ax ] ; 2 uses
  %i.jt = lshr i32 %13, 2
  %i.ju = and i32 %i.jt, 31
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jv
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i193.i.i = zext i32 %i.jx to i64 ; 2 uses
  %i.jy = load i32, ptr %i.jn, align 4, !tbaa !14
  %.not.i.i.i194.i.i = icmp ult i32 %i.js, %i.jy
  br i1 %.not.i.i.i194.i.i, label %bb.az, label %bb.ay, !prof !15

bb.ay:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit192.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 1, i64 %.sroa.3.8.insert.ext.i.i193.i.i)
  %.pre.i.i.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i.i

bb.az:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit192.i.i
  %i.jz = zext i32 %i.js to i64
  %i.ka = load ptr, ptr %i.jm, align 8, !tbaa !16
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.ka, i64 %i.jz ; 2 uses
  store i8 1, ptr %i.kb, align 1
  %.sroa.4.0..sroa_idx.i.i.i195.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i193.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i195.i.i, align 1
  %i.kc = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.kd = add i32 %i.kc, 1                        ; 2 uses
  store i32 %i.kd, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i.i: ; preds = %bb.az, %bb.ay
  %i.ke = phi i32 [ %.pre.i.i.i, %bb.ay ], [ %i.kd, %bb.az ] ; 2 uses
  %i.kf = shl nuw i32 %23, 16
  %i.kg = ashr exact i32 %i.kf, 16
  %i.kh = sext i32 %i.kg to i64                   ; 2 uses
  %i.ki = load i32, ptr %i.jn, align 4, !tbaa !14
  %.not.i.i8.i.i.i = icmp ult i32 %i.ke, %i.ki
  br i1 %.not.i.i8.i.i.i, label %bb.bb, label %bb.ba, !prof !15

bb.ba:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 2, i64 %i.kh)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i.i.i
  %i.kj = zext i32 %i.ke to i64
  %i.kk = load ptr, ptr %i.jm, align 8, !tbaa !16
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.kj ; 2 uses
  store i8 2, ptr %i.kl, align 1
  %.sroa.4.0..sroa_idx.i.i9.i.i.i = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store i64 %i.kh, ptr %.sroa.4.0..sroa_idx.i.i9.i.i.i, align 1
  %i.km = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bc:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ko = lshr i32 %15, 23
  %i.kp = and i32 %i.ko, 31
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i196.i.i = zext i32 %i.ks to i64 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !14
  %.not.i.i.i197.i.not.i = icmp eq i32 %i.kv, 0
  br i1 %.not.i.i.i197.i.not.i, label %bb.bd, label %bb.be, !prof !34

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 1, i64 %.sroa.3.8.insert.ext.i.i196.i.i)
  %.pre87.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit200.i.i

bb.be:                                            ; preds = %bb.bc
  %i.kw = load ptr, ptr %i.kt, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.kw, align 1
  %.sroa.4.0..sroa_idx.i.i.i199.i.i = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i196.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i199.i.i, align 1
  %i.kx = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ky = add i32 %i.kx, 1                        ; 2 uses
  store i32 %i.ky, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit200.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit200.i.i: ; preds = %bb.be, %bb.bd
  %i.kz = phi i32 [ %.pre87.i, %bb.bd ], [ %i.ky, %bb.be ] ; 2 uses
  %i.la = lshr i32 %13, 2
  %i.lb = and i32 %i.la, 31
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i201.i.i = zext i32 %i.le to i64 ; 2 uses
  %i.lf = load i32, ptr %i.ku, align 4, !tbaa !14
  %.not.i.i.i202.i.i = icmp ult i32 %i.kz, %i.lf
  br i1 %.not.i.i.i202.i.i, label %bb.bg, label %bb.bf, !prof !15

bb.bf:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit200.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 1, i64 %.sroa.3.8.insert.ext.i.i201.i.i)
  %.pre.i203.i.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i204.i.i

bb.bg:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit200.i.i
  %i.lg = zext i32 %i.kz to i64
  %i.lh = load ptr, ptr %i.kt, align 8, !tbaa !16
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %i.lg ; 2 uses
  store i8 1, ptr %i.li, align 1
  %.sroa.4.0..sroa_idx.i.i.i205.i.i = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i201.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i205.i.i, align 1
  %i.lj = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.lk = add i32 %i.lj, 1                        ; 2 uses
  store i32 %i.lk, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i204.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i204.i.i: ; preds = %bb.bg, %bb.bf
  %i.ll = phi i32 [ %.pre.i203.i.i, %bb.bf ], [ %i.lk, %bb.bg ] ; 2 uses
  %i.lm = lshr i32 %18, 3
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i7.i.i.i = zext i32 %i.lp to i64 ; 2 uses
  %i.lq = load i32, ptr %i.ku, align 4, !tbaa !14
  %.not.i.i9.i.i.i = icmp ult i32 %i.ll, %i.lq
  br i1 %.not.i.i9.i.i.i, label %bb.bi, label %bb.bh, !prof !15

bb.bh:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i204.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 1, i64 %.sroa.3.8.insert.ext.i7.i.i.i)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bi:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i204.i.i
  %i.lr = zext i32 %i.ll to i64
  %i.ls = load ptr, ptr %i.kt, align 8, !tbaa !16
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.ls, i64 %i.lr ; 2 uses
  store i8 1, ptr %i.lt, align 1
  %.sroa.4.0..sroa_idx.i.i10.i.i.i = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store i64 %.sroa.3.8.insert.ext.i7.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i10.i.i.i, align 1
  %i.lu = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.lv = add i32 %i.lu, 1
  store i32 %i.lv, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bj:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.lw = lshr i32 %15, 23
  %i.lx = and i32 %i.lw, 31
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i206.i.i = zext i32 %i.ma to i64 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !14
  %.not.i.i.i207.i.not.i = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i207.i.not.i, label %bb.bk, label %bb.bl, !prof !34

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 1, i64 %.sroa.3.8.insert.ext.i.i206.i.i)
  %.pre84.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit210.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.me = load ptr, ptr %i.mb, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.me, align 1
  %.sroa.4.0..sroa_idx.i.i.i209.i.i = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i206.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i209.i.i, align 1
  %i.mf = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.mg = add i32 %i.mf, 1                        ; 2 uses
  store i32 %i.mg, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit210.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit210.i.i: ; preds = %bb.bl, %bb.bk
  %i.mh = phi i32 [ %.pre84.i, %bb.bk ], [ %i.mg, %bb.bl ] ; 2 uses
  %i.mi = lshr i32 %13, 2
  %i.mj = and i32 %i.mi, 31
  %i.mk = zext nneg i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i211.i.i = zext i32 %i.mm to i64 ; 2 uses
  %i.mn = load i32, ptr %i.mc, align 4, !tbaa !14
  %.not.i.i.i212.i.i = icmp ult i32 %i.mh, %i.mn
  br i1 %.not.i.i.i212.i.i, label %bb.bn, label %bb.bm, !prof !15

bb.bm:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit210.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 1, i64 %.sroa.3.8.insert.ext.i.i211.i.i)
  %.pre85.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit215.i.i

bb.bn:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit210.i.i
  %i.mo = zext i32 %i.mh to i64
  %i.mp = load ptr, ptr %i.mb, align 8, !tbaa !16
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %i.mo ; 2 uses
  store i8 1, ptr %i.mq, align 1
  %.sroa.4.0..sroa_idx.i.i.i214.i.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i211.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i214.i.i, align 1
  %i.mr = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ms = add i32 %i.mr, 1                        ; 2 uses
  store i32 %i.ms, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit215.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit215.i.i: ; preds = %bb.bn, %bb.bm
  %i.mt = phi i32 [ %i.ms, %bb.bn ], [ %.pre85.i, %bb.bm ] ; 2 uses
  %i.mu = lshr i32 %18, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.mv
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i131.i = zext i32 %i.mx to i64 ; 2 uses
  %i.my = load i32, ptr %i.mc, align 4, !tbaa !14
  %.not.i.i.i132.i = icmp ult i32 %i.mt, %i.my
  br i1 %.not.i.i.i132.i, label %bb.bp, label %bb.bo, !prof !15

bb.bo:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit215.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 1, i64 %.sroa.3.8.insert.ext.i.i131.i)
  %.pre86.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit135.i

bb.bp:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit215.i.i
  %i.mz = zext i32 %i.mt to i64
  %i.na = load ptr, ptr %i.mb, align 8, !tbaa !16
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.na, i64 %i.mz ; 2 uses
  store i8 1, ptr %i.nb, align 1
  %.sroa.4.0..sroa_idx.i.i.i134.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i131.i, ptr %.sroa.4.0..sroa_idx.i.i.i134.i, align 1
  %i.nc = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.nd = add i32 %i.nc, 1                        ; 2 uses
  store i32 %i.nd, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit135.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit135.i: ; preds = %bb.bp, %bb.bo
  %i.ne = phi i32 [ %i.nd, %bb.bp ], [ %.pre86.i, %bb.bo ] ; 2 uses
  %i.nf = shl nuw nsw i32 %22, 1
  %i.ng = and i32 %i.nf, 14
  %i.nh = and i32 %13, 1
  %i.ni = or disjoint i32 %i.ng, %i.nh
  %i.nj = zext nneg i32 %i.ni to i64              ; 2 uses
  %i.nk = load i32, ptr %i.mc, align 4, !tbaa !14
  %.not.i.i.i128.i = icmp ult i32 %i.ne, %i.nk
  br i1 %.not.i.i.i128.i, label %bb.br, label %bb.bq, !prof !15

bb.bq:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit135.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 2, i64 %i.nj)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.br:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit135.i
  %i.nl = zext i32 %i.ne to i64
  %i.nm = load ptr, ptr %i.mb, align 8, !tbaa !16
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %i.nm, i64 %i.nl ; 2 uses
  store i8 2, ptr %i.nn, align 1
  %.sroa.4.0..sroa_idx.i.i.i130.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store i64 %i.nj, ptr %.sroa.4.0..sroa_idx.i.i.i130.i, align 1
  %i.no = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.np = add i32 %i.no, 1
  store i32 %i.np, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bs:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.nq = lshr i32 %18, 3
  %i.nr = zext nneg i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i216.i.i = zext i32 %i.nt to i64 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !14
  %.not.i.i.i217.i.not.i = icmp eq i32 %i.nw, 0
  br i1 %.not.i.i.i217.i.not.i, label %bb.bt, label %bb.bu, !prof !34

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.nu, i8 1, i64 %.sroa.3.8.insert.ext.i.i216.i.i)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bu:                                            ; preds = %bb.bs
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.nx, align 1
  %.sroa.4.0..sroa_idx.i.i.i219.i.i = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i216.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i219.i.i, align 1
  %i.ny = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.nz = add i32 %i.ny, 1
  store i32 %i.nz, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bv:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.oa = lshr i32 %13, 2
  %i.ob = and i32 %i.oa, 31
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.oc
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i221.i.i = zext i32 %i.oe to i64 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !14
  %.not.i.i.i222.i.not.i = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i.i222.i.not.i, label %bb.bw, label %bb.bx, !prof !34

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i8 1, i64 %.sroa.3.8.insert.ext.i.i221.i.i)
  %.pre83.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit225.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.oi, align 1
  %.sroa.4.0..sroa_idx.i.i.i224.i.i = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i221.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i224.i.i, align 1
  %i.oj = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ok = add i32 %i.oj, 1                        ; 2 uses
  store i32 %i.ok, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit225.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit225.i.i: ; preds = %bb.bx, %bb.bw
  %i.ol = phi i32 [ %.pre83.i, %bb.bw ], [ %i.ok, %bb.bx ] ; 2 uses
  %i.om = shl nuw nsw i32 %22, 1
  %i.on = and i32 %i.om, 14
  %i.oo = and i32 %13, 1
  %i.op = or disjoint i32 %i.on, %i.oo
  %i.oq = zext nneg i32 %i.op to i64              ; 2 uses
  %i.or = load i32, ptr %i.og, align 4, !tbaa !14
  %.not.i.i.i120.i = icmp ult i32 %i.ol, %i.or
  br i1 %.not.i.i.i120.i, label %bb.bz, label %bb.by, !prof !15

bb.by:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit225.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.of, i8 2, i64 %i.oq)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.bz:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit225.i.i
  %i.os = zext i32 %i.ol to i64
  %i.ot = load ptr, ptr %i.of, align 8, !tbaa !16
  %i.ou = getelementptr inbounds nuw [16 x i8], ptr %i.ot, i64 %i.os ; 2 uses
  store i8 2, ptr %i.ou, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  store i64 %i.oq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.ov = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.ca:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ox = lshr i32 %13, 2
  %i.oy = and i32 %i.ox, 31
  %i.oz = zext nneg i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i227.i.i = zext i32 %i.pb to i64 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !14
  %.not.i.i.i228.i.not.i = icmp eq i32 %i.pe, 0
  br i1 %.not.i.i.i228.i.not.i, label %bb.cb, label %bb.cc, !prof !34

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i8 1, i64 %.sroa.3.8.insert.ext.i.i227.i.i)
  %.pre81.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit231.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.pf = load ptr, ptr %i.pc, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.pf, align 1
  %.sroa.4.0..sroa_idx.i.i.i230.i.i = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i227.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i230.i.i, align 1
  %i.pg = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ph = add i32 %i.pg, 1                        ; 2 uses
  store i32 %i.ph, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit231.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit231.i.i: ; preds = %bb.cc, %bb.cb
  %i.pi = phi i32 [ %.pre81.i, %bb.cb ], [ %i.ph, %bb.cc ] ; 2 uses
  %i.pj = lshr i32 %18, 3
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i232.i.i = zext i32 %i.pm to i64 ; 2 uses
  %i.pn = load i32, ptr %i.pd, align 4, !tbaa !14
  %.not.i.i.i233.i.i = icmp ult i32 %i.pi, %i.pn
  br i1 %.not.i.i.i233.i.i, label %bb.ce, label %bb.cd, !prof !15

bb.cd:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit231.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i8 1, i64 %.sroa.3.8.insert.ext.i.i232.i.i)
  %.pre82.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit236.i.i

bb.ce:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit231.i.i
  %i.po = zext i32 %i.pi to i64
  %i.pp = load ptr, ptr %i.pc, align 8, !tbaa !16
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %i.po ; 2 uses
  store i8 1, ptr %i.pq, align 1
  %.sroa.4.0..sroa_idx.i.i.i235.i.i = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i232.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i235.i.i, align 1
  %i.pr = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ps = add i32 %i.pr, 1                        ; 2 uses
  store i32 %i.ps, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit236.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit236.i.i: ; preds = %bb.ce, %bb.cd
  %i.pt = phi i32 [ %i.ps, %bb.ce ], [ %.pre82.i, %bb.cd ] ; 2 uses
  %i.pu = shl nuw nsw i32 %22, 1
  %i.pv = and i32 %i.pu, 14
  %i.pw = and i32 %13, 1
  %i.px = or disjoint i32 %i.pv, %i.pw
  %i.py = zext nneg i32 %i.px to i64              ; 2 uses
  %i.pz = load i32, ptr %i.pd, align 4, !tbaa !14
  %.not.i.i125.i = icmp ult i32 %i.pt, %i.pz
  br i1 %.not.i.i125.i, label %bb.cg, label %bb.cf, !prof !15

bb.cf:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit236.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i8 2, i64 %i.py)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cg:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit236.i.i
  %i.qa = zext i32 %i.pt to i64
  %i.qb = load ptr, ptr %i.pc, align 8, !tbaa !16
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.qb, i64 %i.qa ; 2 uses
  store i8 2, ptr %i.qc, align 1
  %.sroa.4.0..sroa_idx.i.i126.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i64 %i.py, ptr %.sroa.4.0..sroa_idx.i.i126.i, align 1
  %i.qd = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.qe = add i32 %i.qd, 1
  store i32 %i.qe, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.ch:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.qf = lshr i32 %15, 23
  %i.qg = and i32 %i.qf, 31
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i238.i.i = zext i32 %i.qj to i64 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !14
  %.not.i.i.i239.i.not.i = icmp eq i32 %i.qm, 0
  br i1 %.not.i.i.i239.i.not.i, label %bb.ci, label %bb.cj, !prof !34

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 1, i64 %.sroa.3.8.insert.ext.i.i238.i.i)
  %.pre78.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit242.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.qn, align 1
  %.sroa.4.0..sroa_idx.i.i.i241.i.i = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i238.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i241.i.i, align 1
  %i.qo = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.qp = add i32 %i.qo, 1                        ; 2 uses
  store i32 %i.qp, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit242.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit242.i.i: ; preds = %bb.cj, %bb.ci
  %i.qq = phi i32 [ %.pre78.i, %bb.ci ], [ %i.qp, %bb.cj ] ; 2 uses
  %i.qr = lshr i32 %13, 2
  %i.qs = and i32 %i.qr, 31
  %i.qt = zext nneg i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i243.i.i = zext i32 %i.qv to i64 ; 2 uses
  %i.qw = load i32, ptr %i.ql, align 4, !tbaa !14
  %.not.i.i.i244.i.i = icmp ult i32 %i.qq, %i.qw
  br i1 %.not.i.i.i244.i.i, label %bb.cl, label %bb.ck, !prof !15

bb.ck:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit242.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 1, i64 %.sroa.3.8.insert.ext.i.i243.i.i)
  %.pre79.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit247.i.i

bb.cl:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit242.i.i
  %i.qx = zext i32 %i.qq to i64
  %i.qy = load ptr, ptr %i.qk, align 8, !tbaa !16
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.qx ; 2 uses
  store i8 1, ptr %i.qz, align 1
  %.sroa.4.0..sroa_idx.i.i.i246.i.i = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i243.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i246.i.i, align 1
  %i.ra = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.rb = add i32 %i.ra, 1                        ; 2 uses
  store i32 %i.rb, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit247.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit247.i.i: ; preds = %bb.cl, %bb.ck
  %i.rc = phi i32 [ %i.rb, %bb.cl ], [ %.pre79.i, %bb.ck ] ; 2 uses
  %i.rd = lshr i32 %18, 3
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.re
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %i.rg to i64 ; 2 uses
  %i.rh = load i32, ptr %i.ql, align 4, !tbaa !14
  %.not.i.i.i122.i = icmp ult i32 %i.rc, %i.rh
  br i1 %.not.i.i.i122.i, label %bb.cn, label %bb.cm, !prof !15

bb.cm:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit247.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  %.pre80.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

bb.cn:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit247.i.i
  %i.ri = zext i32 %i.rc to i64
  %i.rj = load ptr, ptr %i.qk, align 8, !tbaa !16
  %i.rk = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %i.ri ; 2 uses
  store i8 1, ptr %i.rk, align 1
  %.sroa.4.0..sroa_idx.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i124.i, align 1
  %i.rl = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.rm = add i32 %i.rl, 1                        ; 2 uses
  store i32 %i.rm, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i: ; preds = %bb.cn, %bb.cm
  %i.rn = phi i32 [ %i.rm, %bb.cn ], [ %.pre80.i, %bb.cm ] ; 2 uses
  %i.ro = shl nuw nsw i32 %22, 1
  %i.rp = and i32 %i.ro, 14
  %i.rq = and i32 %13, 1
  %i.rr = or disjoint i32 %i.rp, %i.rq
  %i.rs = zext nneg i32 %i.rr to i64              ; 2 uses
  %i.rt = load i32, ptr %i.ql, align 4, !tbaa !14
  %.not.i.i.i = icmp ult i32 %i.rn, %i.rt
  br i1 %.not.i.i.i, label %bb.cp, label %bb.co, !prof !15

bb.co:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.qk, i8 2, i64 %i.rs)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cp:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  %i.ru = zext i32 %i.rn to i64
  %i.rv = load ptr, ptr %i.qk, align 8, !tbaa !16
  %i.rw = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.ru ; 2 uses
  store i8 2, ptr %i.rw, align 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store i64 %i.rs, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1
  %i.rx = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ry = add i32 %i.rx, 1
  store i32 %i.ry, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cq:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.rz = lshr i32 %15, 23
  %i.sa = and i32 %i.rz, 31
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i249.i.i = zext i32 %i.sd to i64 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !14
  %.not.i.i.i250.i.not.i = icmp eq i32 %i.sg, 0
  br i1 %.not.i.i.i250.i.not.i, label %bb.cr, label %bb.cs, !prof !34

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.se, i8 1, i64 %.sroa.3.8.insert.ext.i.i249.i.i)
  %.pre77.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit253.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.sh = load ptr, ptr %i.se, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.sh, align 1
  %.sroa.4.0..sroa_idx.i.i.i252.i.i = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i249.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i252.i.i, align 1
  %i.si = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.sj = add i32 %i.si, 1                        ; 2 uses
  store i32 %i.sj, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit253.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit253.i.i: ; preds = %bb.cs, %bb.cr
  %i.sk = phi i32 [ %.pre77.i, %bb.cr ], [ %i.sj, %bb.cs ] ; 2 uses
  %i.sl = lshr i32 %13, 2
  %i.sm = and i32 %i.sl, 31
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i254.i.i = zext i32 %i.sp to i64 ; 2 uses
  %i.sq = load i32, ptr %i.sf, align 4, !tbaa !14
  %.not.i.i.i255.i.i = icmp ult i32 %i.sk, %i.sq
  br i1 %.not.i.i.i255.i.i, label %bb.cu, label %bb.ct, !prof !15

bb.ct:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit253.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.se, i8 1, i64 %.sroa.3.8.insert.ext.i.i254.i.i)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cu:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit253.i.i
  %i.sr = zext i32 %i.sk to i64
  %i.ss = load ptr, ptr %i.se, align 8, !tbaa !16
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.ss, i64 %i.sr ; 2 uses
  store i8 1, ptr %i.st, align 1
  %.sroa.4.0..sroa_idx.i.i.i257.i.i = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i254.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i257.i.i, align 1
  %i.su = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.sv = add i32 %i.su, 1
  store i32 %i.sv, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cv:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.sw = and i32 %24, 33554428
  %i.sx = zext nneg i32 %i.sw to i64              ; 3 uses
  %i.sy = add i64 %5, %i.sx
  %i.sz = call noundef zeroext i1 @_ZNK4llvm14MCDisassembler24tryAddingSymbolicOperandERNS_6MCInstElmbmmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.sy, i64 noundef %5, i1 noundef zeroext false, i64 noundef 2, i64 noundef 23, i64 noundef 0) #10
  br i1 %i.sz, label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.tb = load i32, ptr %i.gu, align 8, !tbaa !13 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !14
  %.not.i.i.i259.i.i = icmp ult i32 %i.tb, %i.td
  br i1 %.not.i.i.i259.i.i, label %bb.cy, label %bb.cx, !prof !15

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ta, i8 2, i64 %i.sx)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cy:                                            ; preds = %bb.cw
  %i.te = zext i32 %i.tb to i64
  %i.tf = load ptr, ptr %i.ta, align 8, !tbaa !16
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.tf, i64 %i.te ; 2 uses
  store i8 2, ptr %i.tg, align 1
  %.sroa.4.0..sroa_idx.i.i.i261.i.i = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store i64 %i.sx, ptr %.sroa.4.0..sroa_idx.i.i.i261.i.i, align 1
  %i.th = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.ti = add i32 %i.th, 1
  store i32 %i.ti, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.cz:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.tj = and i32 %24, 33554428
  %i.tk = zext nneg i32 %i.tj to i64              ; 3 uses
  %i.tl = add i64 %5, %i.tk
  %i.tm = call noundef zeroext i1 @_ZNK4llvm14MCDisassembler24tryAddingSymbolicOperandERNS_6MCInstElmbmmm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.tl, i64 noundef %5, i1 noundef zeroext false, i64 noundef 2, i64 noundef 23, i64 noundef 0) #10
  %.pre76.i = load i32, ptr %i.gu, align 8, !tbaa !13 ; 3 uses
  br i1 %i.tm, label %_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !14
  %.not.i.i.i262.i.i = icmp ult i32 %.pre76.i, %i.tp
  br i1 %.not.i.i.i262.i.i, label %bb.dc, label %bb.db, !prof !15

bb.db:                                            ; preds = %bb.da
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.tn, i8 2, i64 %i.tk)
  %.pre75.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i

bb.dc:                                            ; preds = %bb.da
  %i.tq = zext i32 %.pre76.i to i64
  %i.tr = load ptr, ptr %i.tn, align 8, !tbaa !16
  %i.ts = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.tq ; 2 uses
  store i8 2, ptr %i.ts, align 1
  %.sroa.4.0..sroa_idx.i.i.i264.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  store i64 %i.tk, ptr %.sroa.4.0..sroa_idx.i.i.i264.i.i, align 1
  %i.tt = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.tu = add i32 %i.tt, 1                        ; 2 uses
  store i32 %i.tu, ptr %i.gu, align 8, !tbaa !13
  br label %_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i

_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i: ; preds = %bb.dc, %bb.db, %bb.cz
  %i.tv = phi i32 [ %.pre76.i, %bb.cz ], [ %.pre75.i, %bb.db ], [ %i.tu, %bb.dc ] ; 2 uses
  %i.tw = and i32 %22, 1
  %i.tx = and i32 %9, 14
  %i.ty = or disjoint i32 %i.tw, %i.tx
  %i.tz = zext nneg i32 %i.ty to i64              ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !14
  %.not.i.i267.i.i = icmp ult i32 %i.tv, %i.uc
  br i1 %.not.i.i267.i.i, label %bb.de, label %bb.dd, !prof !15

bb.dd:                                            ; preds = %_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ua, i8 2, i64 %i.tz)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.de:                                            ; preds = %_ZL12decodeBranchRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit265.i.i
  %i.ud = zext i32 %i.tv to i64
  %i.ue = load ptr, ptr %i.ua, align 8, !tbaa !16
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.ue, i64 %i.ud ; 2 uses
  store i8 2, ptr %i.uf, align 1
  %.sroa.4.0..sroa_idx.i.i268.i.i = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store i64 %i.tz, ptr %.sroa.4.0..sroa_idx.i.i268.i.i, align 1
  %i.ug = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.uh = add i32 %i.ug, 1
  store i32 %i.uh, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.df:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ui = lshr i32 %13, 2
  %i.uj = and i32 %i.ui, 31
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.uk
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i270.i.i = zext i32 %i.um to i64 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !14
  %.not.i.i.i271.i.not.i = icmp eq i32 %i.up, 0
  br i1 %.not.i.i.i271.i.not.i, label %bb.dg, label %bb.dh, !prof !34

bb.dg:                                            ; preds = %bb.df
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.un, i8 1, i64 %.sroa.3.8.insert.ext.i.i270.i.i)
  %.pre74.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit274.i.i

bb.dh:                                            ; preds = %bb.df
  %i.uq = load ptr, ptr %i.un, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.uq, align 1
  %.sroa.4.0..sroa_idx.i.i.i273.i.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i270.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i273.i.i, align 1
  %i.ur = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.us = add i32 %i.ur, 1                        ; 2 uses
  store i32 %i.us, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit274.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit274.i.i: ; preds = %bb.dh, %bb.dg
  %i.ut = phi i32 [ %.pre74.i, %bb.dg ], [ %i.us, %bb.dh ] ; 2 uses
  %i.uu = and i32 %22, 1
  %i.uv = and i32 %9, 14
  %i.uw = or disjoint i32 %i.uu, %i.uv
  %i.ux = zext nneg i32 %i.uw to i64              ; 2 uses
  %i.uy = load i32, ptr %i.uo, align 4, !tbaa !14
  %.not.i.i276.i.i = icmp ult i32 %i.ut, %i.uy
  br i1 %.not.i.i276.i.i, label %bb.dj, label %bb.di, !prof !15

bb.di:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit274.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.un, i8 2, i64 %i.ux)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.dj:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit274.i.i
  %i.uz = zext i32 %i.ut to i64
  %i.va = load ptr, ptr %i.un, align 8, !tbaa !16
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %i.va, i64 %i.uz ; 2 uses
  store i8 2, ptr %i.vb, align 1
  %.sroa.4.0..sroa_idx.i.i277.i.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store i64 %i.ux, ptr %.sroa.4.0..sroa_idx.i.i277.i.i, align 1
  %i.vc = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.vd = add i32 %i.vc, 1
  store i32 %i.vd, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.dk:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ve = and i32 %23, 65532
  %i.vf = zext nneg i32 %i.ve to i64              ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !14
  %.not.i.i280.i.not.i = icmp eq i32 %i.vi, 0
  br i1 %.not.i.i280.i.not.i, label %bb.dl, label %bb.dm, !prof !34

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, i8 2, i64 %i.vf)
  %.pre.i.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit282.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.vj = load ptr, ptr %i.vg, align 8, !tbaa !16 ; 2 uses
  store i8 2, ptr %i.vj, align 1
  %.sroa.4.0..sroa_idx.i.i281.i.i = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  store i64 %i.vf, ptr %.sroa.4.0..sroa_idx.i.i281.i.i, align 1
  %i.vk = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.vl = add i32 %i.vk, 1                        ; 2 uses
  store i32 %i.vl, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit282.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit282.i.i: ; preds = %bb.dm, %bb.dl
  %i.vm = phi i32 [ %.pre.i.i, %bb.dl ], [ %i.vl, %bb.dm ] ; 2 uses
  %i.vn = and i32 %22, 1
  %i.vo = and i32 %9, 14
  %i.vp = or disjoint i32 %i.vn, %i.vo
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %i.vr = load i32, ptr %i.vh, align 4, !tbaa !14
  %.not.i.i284.i.i = icmp ult i32 %i.vm, %i.vr
  br i1 %.not.i.i284.i.i, label %bb.do, label %bb.dn, !prof !15

bb.dn:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit282.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.vg, i8 2, i64 %i.vq)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.do:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit282.i.i
  %i.vs = zext i32 %i.vm to i64
  %i.vt = load ptr, ptr %i.vg, align 8, !tbaa !16
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vt, i64 %i.vs ; 2 uses
  store i8 2, ptr %i.vu, align 1
  %.sroa.4.0..sroa_idx.i.i285.i.i = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store i64 %i.vq, ptr %.sroa.4.0..sroa_idx.i.i285.i.i, align 1
  %i.vv = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.vw = add i32 %i.vv, 1
  store i32 %i.vw, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.dp:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.vx = lshr i32 %15, 23
  %i.vy = and i32 %i.vx, 31
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i287.i.i = zext i32 %i.wb to i64 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !14
  %.not.i.i.i288.i.not.i = icmp eq i32 %i.we, 0
  br i1 %.not.i.i.i288.i.not.i, label %bb.dq, label %bb.dr, !prof !34

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wc, i8 1, i64 %.sroa.3.8.insert.ext.i.i287.i.i)
  %.pre73.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit291.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.wf = load ptr, ptr %i.wc, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.wf, align 1
  %.sroa.4.0..sroa_idx.i.i.i290.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i287.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i290.i.i, align 1
  %i.wg = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.wh = add i32 %i.wg, 1                        ; 2 uses
  store i32 %i.wh, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit291.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit291.i.i: ; preds = %bb.dr, %bb.dq
  %i.wi = phi i32 [ %.pre73.i, %bb.dq ], [ %i.wh, %bb.dr ] ; 2 uses
  %25 = shl nuw nsw i32 %13, 14
  %i.wj = and i32 %25, 2031616
  %i.wk = or disjoint i32 %23, %i.wj
  %i.wl = zext nneg i32 %i.wk to i64              ; 2 uses
  %i.wm = load i32, ptr %i.wd, align 4, !tbaa !14
  %.not.i.i293.i.i = icmp ult i32 %i.wi, %i.wm
  br i1 %.not.i.i293.i.i, label %bb.dt, label %bb.ds, !prof !15

bb.ds:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit291.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wc, i8 2, i64 %i.wl)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.dt:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit291.i.i
  %i.wn = zext i32 %i.wi to i64
  %i.wo = load ptr, ptr %i.wc, align 8, !tbaa !16
  %i.wp = getelementptr inbounds nuw [16 x i8], ptr %i.wo, i64 %i.wn ; 2 uses
  store i8 2, ptr %i.wp, align 1
  %.sroa.4.0..sroa_idx.i.i294.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i64 %i.wl, ptr %.sroa.4.0..sroa_idx.i.i294.i.i, align 1
  %i.wq = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.wr = add i32 %i.wq, 1
  store i32 %i.wr, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.du:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ws = lshr i32 %15, 23
  %i.wt = and i32 %i.ws, 31
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i296.i.i = zext i32 %i.ww to i64 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !14
  %.not.i.i.i297.i.not.i = icmp eq i32 %i.wz, 0
  br i1 %.not.i.i.i297.i.not.i, label %bb.dv, label %bb.dw, !prof !34

bb.dv:                                            ; preds = %bb.du
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 1, i64 %.sroa.3.8.insert.ext.i.i296.i.i)
  %.pre.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit300.i.i

bb.dw:                                            ; preds = %bb.du
  %i.xa = load ptr, ptr %i.wx, align 8, !tbaa !16 ; 2 uses
  store i8 1, ptr %i.xa, align 1
  %.sroa.4.0..sroa_idx.i.i.i299.i.i = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i296.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i299.i.i, align 1
  %i.xb = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.xc = add i32 %i.xb, 1                        ; 2 uses
  store i32 %i.xc, ptr %i.gu, align 8, !tbaa !13
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit300.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit300.i.i: ; preds = %bb.dw, %bb.dv
  %i.xd = phi i32 [ %.pre.i, %bb.dv ], [ %i.xc, %bb.dw ] ; 2 uses
  %i.xe = lshr i32 %13, 2
  %i.xf = and i32 %i.xe, 31
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !11
  %.sroa.3.8.insert.ext.i.i301.i.i = zext i32 %i.xi to i64 ; 2 uses
  %i.xj = load i32, ptr %i.wy, align 4, !tbaa !14
  %.not.i.i.i302.i.i = icmp ult i32 %i.xd, %i.xj
  br i1 %.not.i.i.i302.i.i, label %bb.dy, label %bb.dx, !prof !15

bb.dx:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit300.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 1, i64 %.sroa.3.8.insert.ext.i.i301.i.i)
  %.pre.i303.i.i = load i32, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i304.i.i

bb.dy:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit300.i.i
  %i.xk = zext i32 %i.xd to i64
  %i.xl = load ptr, ptr %i.wx, align 8, !tbaa !16
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %i.xl, i64 %i.xk ; 2 uses
  store i8 1, ptr %i.xm, align 1
  %.sroa.4.0..sroa_idx.i.i.i307.i.i = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i301.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i307.i.i, align 1
  %i.xn = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.xo = add i32 %i.xn, 1                        ; 2 uses
  store i32 %i.xo, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i304.i.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i304.i.i: ; preds = %bb.dy, %bb.dx
  %i.xp = phi i32 [ %.pre.i303.i.i, %bb.dx ], [ %i.xo, %bb.dy ] ; 2 uses
  %i.xq = shl i32 %23, 22
  %i.xr = ashr exact i32 %i.xq, 22
  %i.xs = sext i32 %i.xr to i64                   ; 2 uses
  %i.xt = load i32, ptr %i.wy, align 4, !tbaa !14
  %.not.i.i8.i305.i.i = icmp ult i32 %i.xp, %i.xt
  br i1 %.not.i.i8.i305.i.i, label %bb.ea, label %bb.dz, !prof !15

bb.dz:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i304.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, i8 2, i64 %i.xs)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.ea:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i304.i.i
  %i.xu = zext i32 %i.xp to i64
  %i.xv = load ptr, ptr %i.wx, align 8, !tbaa !16
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %i.xv, i64 %i.xu ; 2 uses
  store i8 2, ptr %i.xw, align 1
  %.sroa.4.0..sroa_idx.i.i9.i306.i.i = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  store i64 %i.xs, ptr %.sroa.4.0..sroa_idx.i.i9.i306.i.i, align 1
  %i.xx = load i32, ptr %i.gu, align 8, !tbaa !13
  %i.xy = add i32 %i.xx, 1
  store i32 %i.xy, ptr %i.gu, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.eb:                                            ; preds = %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, %.loopexit.i
  %i.xz = load i32, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %.not.i121.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i121.i, label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ya = load ptr, ptr %7, align 8, !tbaa !16
  %i.yb = zext i32 %i.xz to i64
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yb
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !44
  %i.yf = add i32 %i.xz, -1
  store i32 %i.yf, ptr %i.c, align 8, !tbaa !13
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge

_ZN4llvm11raw_ostreamlsEc.exit.i.backedge:        ; preds = %bb.ec, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, %.loopexit.i, %bb.k, %bb.j
  %.018.i.be = phi ptr [ %i.at, %bb.k ], [ %i.fn, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i ], [ %i.dv, %.loopexit.i ], [ %i.at, %bb.j ], [ %i.ye, %bb.ec ]
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.thread.i:          ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dt, %bb.ds, %bb.do, %bb.dn, %bb.dj, %bb.di, %bb.de, %bb.dd, %bb.cy, %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cp, %bb.co, %bb.cg, %bb.cf, %bb.bz, %bb.by, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.au, %bb.at, %bb.an, %bb.am, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i, %bb.g, %bb.f
  %.not = phi i1 [ false, %bb.cv ], [ false, %bb.cp ], [ false, %bb.co ], [ false, %bb.am ], [ false, %bb.ea ], [ false, %bb.dz ], [ false, %bb.ds ], [ false, %bb.dn ], [ false, %bb.di ], [ false, %bb.dd ], [ false, %bb.ct ], [ false, %bb.dj ], [ false, %bb.cg ], [ false, %bb.an ], [ false, %bb.br ], [ false, %bb.bz ], [ true, %bb.f ], [ false, %bb.by ], [ false, %bb.cf ], [ false, %bb.cu ], [ false, %bb.de ], [ false, %bb.at ], [ false, %bb.do ], [ false, %bb.bh ], [ true, %bb.g ], [ false, %bb.bt ], [ false, %bb.bb ], [ false, %bb.dt ], [ false, %bb.bi ], [ false, %bb.au ], [ false, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i ], [ false, %bb.ba ], [ false, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i ], [ false, %bb.bq ], [ false, %bb.bu ], [ false, %bb.cy ], [ false, %bb.cx ], [ true, %bb.eb ]
  %.330.i = phi i32 [ 3, %bb.cv ], [ 3, %bb.cp ], [ 3, %bb.co ], [ 3, %bb.am ], [ 3, %bb.ea ], [ 3, %bb.dz ], [ 3, %bb.ds ], [ 3, %bb.dn ], [ 3, %bb.di ], [ 3, %bb.dd ], [ 3, %bb.ct ], [ 3, %bb.dj ], [ 3, %bb.cg ], [ 3, %bb.an ], [ 3, %bb.br ], [ 3, %bb.bz ], [ 0, %bb.f ], [ 3, %bb.by ], [ 3, %bb.cf ], [ 3, %bb.cu ], [ 3, %bb.de ], [ 3, %bb.at ], [ 3, %bb.do ], [ 3, %bb.bh ], [ 0, %bb.g ], [ 3, %bb.bt ], [ 3, %bb.bb ], [ 3, %bb.dt ], [ 3, %bb.bi ], [ 3, %bb.au ], [ 3, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i ], [ 3, %bb.ba ], [ 3, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i ], [ 3, %bb.bq ], [ 3, %bb.bu ], [ 3, %bb.cy ], [ 3, %bb.cx ], [ 0, %bb.eb ] ; 3 uses
  %i.yg = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.b
  br i1 %i.yh, label %_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread.i
  call void @free(ptr noundef %i.yg) #10
  br label %_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit

_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br i1 %.not, label %bb.eq, label %bb.ee

bb.ee:                                            ; preds = %_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit
  %i.yi = load i32, ptr %1, align 8, !tbaa !43
  switch i32 %i.yi, label %.sink.split [
    i32 421, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
    i32 369, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
    i32 361, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 363, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 365, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 367, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 405, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 407, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i
    i32 362, label %bb.ef
    i32 364, label %bb.ef
    i32 366, label %bb.ef
    i32 368, label %bb.ef
    i32 371, label %bb.ef
    i32 370, label %bb.ef
    i32 406, label %bb.ef
    i32 408, label %bb.ef
    i32 422, label %bb.ef
  ]

bb.ef:                                            ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee
  %i.yj = and i32 %18, 7                          ; 2 uses
  %i.yk = icmp eq i32 %i.yj, 7
  br i1 %i.yk, label %bb.eg, label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i

bb.eg:                                            ; preds = %bb.ef
  %i.yl = lshr i32 %22, 2
  %i.ym = or i32 %i.yl, 39
  br label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i

_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i: ; preds = %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee, %bb.ee
  br label %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i

_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i:          ; preds = %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i, %bb.eg, %bb.ef, %bb.ee, %bb.ee
  %.018.i12 = phi i32 [ 16, %bb.ef ], [ 16, %bb.ee ], [ 16, %bb.eg ], [ 16, %bb.ee ], [ 10, %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i ]
  %.0.i13 = phi i32 [ %i.yj, %bb.ef ], [ 0, %bb.ee ], [ %i.ym, %bb.eg ], [ 0, %bb.ee ], [ 0, %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.fold.split.i ] ; 5 uses
  %i.yn = lshr i32 %24, %.018.i12
  %i.yo = and i32 %i.yn, 3
  switch i32 %i.yo, label %default.unreachable [
    i32 0, label %bb.eh
    i32 1, label %bb.el
    i32 3, label %bb.em
    i32 2, label %bb.en
  ]

bb.eh:                                            ; preds = %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !16 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.ys = load i8, ptr %i.yr, align 8, !tbaa !47  ; 2 uses
  %i.yt = icmp eq i8 %i.ys, 1
  br i1 %i.yt, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  store i32 7, ptr %i.yu, align 8, !tbaa !28
  %.pre.i17 = load ptr, ptr %i.yp, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i17, i64 32
  %.pre24.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !47
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.yv = phi i8 [ %.pre24.i, %bb.ei ], [ %i.ys, %bb.eh ]
  %i.yw = phi ptr [ %.pre.i17, %bb.ei ], [ %i.yq, %bb.eh ]
  %i.yx = icmp eq i8 %i.yv, 2
  br i1 %i.yx, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 40
  store i64 0, ptr %i.yy, align 8, !tbaa !28
  br label %bb.en

bb.el:                                            ; preds = %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
  %i.yz = or disjoint i32 %.0.i13, 128
  br label %bb.en

bb.em:                                            ; preds = %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
  %i.za = or disjoint i32 %.0.i13, 64
  br label %bb.en

default.unreachable:                              ; preds = %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
  unreachable

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej, %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i
  %.1.i14 = phi i32 [ %.0.i13, %_ZN4llvmL12isSPLSOpcodeEj.exit.thread.i ], [ %.0.i13, %bb.ek ], [ %.0.i13, %bb.ej ], [ %i.yz, %bb.el ], [ %i.za, %bb.em ]
  %i.zb = zext nneg i32 %.1.i14 to i64            ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !13 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !14
  %.not.i.i.i15 = icmp ult i32 %i.ze, %i.zg
  br i1 %.not.i.i.i15, label %bb.ep, label %bb.eo, !prof !15

bb.eo:                                            ; preds = %bb.en
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.zc, i8 2, i64 %i.zb)
  br label %.sink.split

bb.ep:                                            ; preds = %bb.en
  %i.zh = zext i32 %i.ze to i64
  %i.zi = load ptr, ptr %i.zc, align 8, !tbaa !16
  %i.zj = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %i.zh ; 2 uses
  store i8 2, ptr %i.zj, align 1
  %.sroa.4.0..sroa_idx.i.i.i16 = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store i64 %i.zb, ptr %.sroa.4.0..sroa_idx.i.i.i16, align 1
  %i.zk = load i32, ptr %i.zd, align 8, !tbaa !13
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %i.zd, align 8, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ep, %bb.eo, %bb.ee, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ 4, %bb.ee ], [ 4, %bb.eo ], [ 4, %bb.ep ]
  %.0.ph = phi i32 [ 0, %bb.a ], [ %.330.i, %bb.ee ], [ %.330.i, %bb.eo ], [ %.330.i, %bb.ep ]
  store i64 %.sink, ptr %2, align 8, !tbaa !49
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split, %_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit
  %.0 = phi i32 [ 0, %_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE.exit ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17LanaiDisassemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3, i64 %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK4llvm14MCDisassembler13onSymbolStartERNS_12SymbolInfoTyERmNS_8ArrayRefIhEEm() unnamed_addr

declare noundef i64 @_ZNK4llvm14MCDisassembler18suggestBytesToSkipENS_8ArrayRefIhEEm(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14MCDisassembler13setABIVersionEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !13
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !13
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !13
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  %i.g = load i32, ptr %i.a, align 8, !tbaa !13
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !13
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !13
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm14MCDisassembler24tryAddingSymbolicOperandERNS_6MCInstElmbmmm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i64 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"bool", !4, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!13 = !{!12, !5, i64 8}
!14 = !{!12, !5, i64 12}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!12, !8, i64 0}
!17 = !{!"p1 _ZTSN4llvm6TargetE", !8, i64 0}
!18 = !{!"_ZTSN4llvm6TargetE", !17, i64 0, !8, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!19 = !{!18, !8, i64 128}
!20 = !{!"p1 _ZTSN4llvm9MCContextE", !8, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"vtable pointer", !3, i64 0}
!25 = !{!24, !24, i64 0}
!26 = distinct !{!26, !35}
!27 = distinct !{!27, !35}
!28 = !{!4, !4, i64 0}
!29 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !4, i64 0}
!30 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !4, i64 0}
!31 = !{!"_ZTSN4llvm11raw_ostreamE", !29, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !30, i64 44}
!32 = !{!31, !9, i64 24}
!33 = !{!31, !9, i64 32}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"_ZTSN4llvm5SMLocE", !9, i64 0}
!37 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9MCOperandEvEE", !12, i64 0}
!38 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm15SmallVectorImplINS_9MCOperandEEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm18SmallVectorStorageINS_9MCOperandELj6EEE", !4, i64 0}
!41 = !{!"_ZTSN4llvm11SmallVectorINS_9MCOperandELj6EEE", !39, i64 0, !40, i64 16}
!42 = !{!"_ZTSN4llvm6MCInstE", !5, i64 0, !5, i64 4, !36, i64 8, !41, i64 16}
!43 = !{!42, !5, i64 0}
!44 = !{!9, !9, i64 0}
!45 = !{!"_ZTSN4llvm9MCOperand18MachineOperandTypeE", !4, i64 0}
!46 = !{!"_ZTSN4llvm9MCOperandE", !45, i64 0, !4, i64 8}
!47 = !{!46, !45, i64 0}
!48 = !{!"long", !4, i64 0}
!49 = !{!48, !48, i64 0}
end_hunk_0
