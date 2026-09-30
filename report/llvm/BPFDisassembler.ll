Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BPFDisassembler?download=true
inline.NumInlined: 361
inline.NumDeleted: 91
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::SmallVector.142" = type { %"class.llvm::SmallVectorImpl.143", %"struct.llvm::SmallVectorStorage.146" }
%"class.llvm::SmallVectorImpl.143" = type { %"class.llvm::SmallVectorTemplateBase.144" }
%"class.llvm::SmallVectorTemplateBase.144" = type { %"class.llvm::SmallVectorTemplateCommon.145" }
%"class.llvm::SmallVectorTemplateCommon.145" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.146" = type { [64 x i8] }

$_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE = comdat any

$_ZN4llvm14MCDisassembler13setABIVersionEj = comdat any

$_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_115BPFDisassemblerE = internal unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4llvm14MCDisassemblerD2Ev, ptr @_ZN12_GLOBAL__N_115BPFDisassemblerD0Ev, ptr @_ZNK12_GLOBAL__N_115BPFDisassembler14getInstructionERN4llvm6MCInstERmNS1_8ArrayRefIhEEmRNS1_11raw_ostreamE, ptr @_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE, ptr @_ZNK4llvm14MCDisassembler13onSymbolStartERNS_12SymbolInfoTyERmNS_8ArrayRefIhEEm, ptr @_ZNK4llvm14MCDisassembler18suggestBytesToSkipENS_8ArrayRefIhEEm, ptr @_ZN4llvm14MCDisassembler13setABIVersionEj, ptr @_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj] }, align 8
@_ZN12_GLOBAL__N_122DecoderTableBPFALU3264E = internal constant [185 x i8] c"\028\08a\04\05\B1\03\1Ac\04\05\F9\03\1Bi\04\05\AD\03\1Ak\04\05\F5\03\1Bq\04\05\A7\03\1As\04\05\EE\03\1B\C3\01k\02\04\04\00\18\01\08\03\00\04\01\05\88\04\1C\01\08\03\08\01\01\05\B2\03\1A\05\82\04\1C\01\08\03\08\01\01\05\FA\03\1B\04\0E\01\08\03\00\04\01\05\8C\04\1C\05\90\04\1C\05\0E\01\08\03\00\04\01\05\8A\04\1C\05\84\04\1C\0A\0E\01\08\03\00\04\01\05\8E\04\1C\05\96\04\1C\0E\08\03\00\04\01\05\86\04\1C\0F\00\03\00\04\01\05\EB\02\1D\CB\01\0F\02\04\05\10\04\05\AE\03\1A\11\00\05\F6\03\1B\D3\01\00\02\04\05\10\04\05\A8\03\1A\11\00\05\EF\03\1B", align 16
@_ZN12_GLOBAL__N_117DecoderTableBPF64E = internal constant [1279 x i8] c"\028\08\04\08\03 \10\00\05\DD\02\00\05\04\05\FB\02\01\06\04\05\FC\02\02\07\08\03 \10\00\05\DC\02\03\0C\08\03 \10\00\05\DF\02\04\0D\04\05\A5\03\05\0F\08\03 \10\00\05\DE\02\06\14\08\03 \10\00\05\FD\03\00\15\04\05\F7\02\07\16\04\05\F8\02\08\17\08\03 \10\00\05\FC\03\03\18\12\03 \10\00\01\08\034\04\00\05\BA\03\09\05\BB\03\0A\1C\08\03 \10\00\05\FF\03\04\1D\04\05\F9\02\0B\1E\04\05\FA\02\0C\1F\08\03 \10\00\05\FE\03\06 \04\05\B6\03\02$\08\03 \10\00\05\CE\03\00%\04\05\99\03\07&\04\05\9A\03\08'\08\03 \10\00\05\CD\03\03(\04\05\B5\03\02,\08\03 \10\00\05\D0\03\04-\04\05\9B\03\0B.\04\05\9C\03\0C/\08\03 \10\00\05\CF\03\060\04\05\B4\03\024\0F\02 \10\00\04\05\F1\02\00\01\00\05\DA\03\005\04\05\95\03\076\04\05\96\03\087\0F\02 \10\00\04\05\F0\02\03\01\00\05\D9\03\03<\0F\02 \10\00\04\05\F3\02\04\01\00\05\DC\03\04=\04\05\97\03\0B>\04\05\98\03\0C?\0F\02 \10\00\04\05\F2\02\06\01\00\05\DB\03\06@\04\05\B9\03\0DD\08\03 \10\00\05\D5\03\00E\04\05\81\03\07F\04\05\82\03\08G\08\03 \10\00\05\D4\03\03H\04\05\B8\03\0DL\08\03 \10\00\05\D7\03\04M\04\05\83\03\0BN\04\05\84\03\0CO\08\03 \10\00\05\D6\03\06P\04\05\B7\03\0DT\08\03 \10\00\05\E1\02\00U\04\05\FD\02\07V\04\05\FE\02\08W\08\03 \10\00\05\E0\02\03\\\08\03 \10\00\05\E3\02\04]\04\05\FF\02\0B^\04\05\80\03\0C_\08\03 \10\00\05\E2\02\06a\04\05\B0\03\0Eb\04\05\FB\03\0Fc\04\05\F8\03\10d\08\03 \10\00\05\DE\03\00e\04\05\89\03\07f\04\05\8A\03\08g\08\03 \10\00\05\DD\03\03i\04\05\AC\03\0Ej\04\05\F7\03\0Fk\04\05\F4\03\10l\08\03 \10\00\05\E0\03\04m\04\05\8B\03\0Bn\04\05\8C\03\0Co\08\03 \10\00\05\DF\03\06q\04\05\A6\03\0Er\04\05\F0\03\0Fs\04\05\ED\03\10t\08\03 \10\00\05\EA\03\00u\04\05\85\03\07v\04\05\86\03\08w\08\03 \10\00\05\E9\03\03y\04\05\AA\03\0Ez\04\05\F3\03\0F{\04\05\F1\03\10|\08\03 \10\00\05\EC\03\04}\04\05\87\03\0B~\04\05\88\03\0C\7F\08\03 \10\00\05\EB\03\06\81\01\04\05\B3\03\0E\84\01\04\05\D1\03\11\85\01\04\05\F4\02\02\87\01\04\05\D2\03\12\89\01\04\05\AF\03\0E\8D\01\04\05\F5\02\05\91\01\04\05\A9\03\0E\94\01\0F\02 \10\00\04\05\C0\03\00\01\00\05\E2\03\00\95\01\08\03\00 \00\05\D8\03\13\97\01\0F\02 \10\00\04\05\BF\03\03\01\00\05\E1\03\03\9C\01\0F\02 \10\00\04\05\C2\03\04\01\00\05\E4\03\04\9F\01\0F\02 \10\00\04\05\C1\03\06\01\00\05\E3\03\06\A4\01\08\03 \10\00\05\92\04\00\A5\01\04\05\A1\03\07\A6\01\04\05\A2\03\08\A7\01\08\03 \10\00\05\91\04\03\AC\01\08\03 \10\00\05\94\04\04\AD\01\04\05\A3\03\0B\AE\01\04\05\A4\03\0C\AF\01\08\03 \10\00\05\93\04\06\B4\01\08\03 \10\00\05\CA\03\14\B5\01\04\05\9D\03\07\B6\01\04\05\9E\03\08\B7\01\08\03 \10\00\05\C9\03\09\BC\01\15\02 \10\00\04\05\CC\03\15\08\04\05\C6\03\15\10\00\05\C5\03\15\BD\01\04\05\9F\03\0B\BE\01\04\05\A0\03\0C\BF\01!\02 \10\00\04\05\CB\03\16\01\04\05\DB\02\17\08\04\05\C7\03\16\10\04\05\C3\03\16 \00\05\C4\03\16\C3\01\08\03\04\04\00\05\81\04\18\C4\01\08\03 \10\00\05\E6\03\00\C5\01\04\05\91\03\07\C6\01\04\05\92\03\08\C7\01\08\03 \10\00\05\E5\03\03\CC\01\08\03 \10\00\05\E8\03\04\CD\01\04\05\93\03\0B\CE\01\04\05\94\03\0C\CF\01\08\03 \10\00\05\E7\03\06\D4\01\15\02\00 \10\04\05\BC\03\12 \04\05\BD\03\12@\00\05\BE\03\12\D5\01\04\05\8D\03\07\D6\01\04\05\8E\03\08\D7\01\15\02\00 \10\04\05\E7\02\12 \04\05\E8\02\12@\00\05\E9\02\12\DB\01k\02\04\04\00\18\01\08\03\00\04\01\05\87\04\18\01\08\03\08\01\01\05\AB\03\0E\05\80\04\18\01\08\03\08\01\01\05\F2\03\10\04\0E\01\08\03\00\04\01\05\8B\04\18\05\8F\04\18\05\0E\01\08\03\00\04\01\05\89\04\18\05\83\04\18\0A\0E\01\08\03\00\04\01\05\8D\04\18\05\95\04\18\0E\08\03\00\04\01\05\85\04\18\0F\00\03\00\04\01\05\EA\02\19\DC\01\15\02\00 \10\04\05\E4\02\12 \04\05\E5\02\12@\00\05\E6\02\12\DD\01\04\05\8F\03\0B\DE\01\04\05\90\03\0C\E5\01\00\05\F6\02\01", align 16
@.str = private unnamed_addr constant [35 x i8] c": Unexpected decode table opcode: \00", align 1
@_ZL17GPR32DecoderTable = internal unnamed_addr constant [12 x i32] [i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24], align 16
@_ZL15GPRDecoderTable = internal unnamed_addr constant [12 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @LLVMInitializeBPFDisassembler() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm15getTheBPFTargetEv() #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr @_ZL21createBPFDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.b, align 8, !tbaa !27
  %i.c = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheBPFleTargetEv() #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @_ZL21createBPFDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.d, align 8, !tbaa !27
  %i.e = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheBPFbeTargetEv() #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr @_ZL21createBPFDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.f, align 8, !tbaa !27
  ret void
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm15getTheBPFTargetEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZL21createBPFDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_115BPFDisassemblerE, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheBPFleTargetEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheBPFbeTargetEv() local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115BPFDisassemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 4) i32 @_ZNK12_GLOBAL__N_115BPFDisassembler14getInstructionERN4llvm6MCInstERmNS1_8ArrayRefIhEEmRNS1_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree readonly captures(none) %3, i64 %4, i64 %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41, !nonnull !42, !align !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !199, !nonnull !42, !align !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !220, !range !221, !noundef !42
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = icmp ult i64 %4, 8
  br i1 %i.h, label %_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread, label %bb.b

_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread: ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !222
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !222
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %7 = load i16, ptr %3, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %i.i = zext i16 %8 to i64
  %i.j = shl nuw nsw i64 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 8
  %i.s = or disjoint i64 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load i32, ptr %i.t, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %9 = load i8, ptr %3, align 1, !tbaa !14
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 24
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !14      ; 2 uses
  %i.v = and i8 %13, 15
  %i.w = zext nneg i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 20
  %14 = or disjoint i64 %i.x, %11
  %i.y = and i8 %13, -16
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 12
  %i.ab = or disjoint i64 %14, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 8
  %i.ag = or disjoint i64 %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = zext i8 %i.ai to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.06.in.i.in = phi i32 [ %i.u, %bb.c ], [ %i.an, %bb.d ]
  %.pn.i = phi i64 [ %i.s, %bb.c ], [ %i.ak, %bb.d ] ; 4 uses
  %.06.in.i = zext i32 %.06.in.i.in to i64
  %i.ao = shl nuw i64 %.pn.i, 32
  %i.ap = or disjoint i64 %i.ao, %.06.in.i
  %i.aq = and i64 %.pn.i, 83886080
  %or.cond = icmp ne i64 %i.aq, 16777216
  %i.ar = and i64 %.pn.i, 402653184
  %.not = icmp eq i64 %i.ar, 402653184
  %or.cond45 = or i1 %or.cond, %.not
  br i1 %or.cond45, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = lshr i64 %.pn.i, 29
  %i.at = trunc nuw nsw i64 %i.as to i8
  switch i8 %i.at, label %bb.h [
    i8 6, label %bb.g
    i8 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !223, !nonnull !42, !align !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 240
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !222
  %i.ay = and i64 %i.ax, 1
  %.not44 = icmp eq i64 %i.ay, 0
  br i1 %.not44, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %_ZN12_GLOBAL__N_117DecoderTableBPF64E.sink = phi ptr [ @_ZN12_GLOBAL__N_117DecoderTableBPF64E, %bb.h ], [ @_ZN12_GLOBAL__N_122DecoderTableBPFALU3264E, %bb.g ]
  %i.az = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionImEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull %_ZN12_GLOBAL__N_117DecoderTableBPF64E.sink, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.ap) ; 3 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %1, align 8, !tbaa !22
  %i.bc = and i32 %i.bb, -2
  %switch = icmp eq i32 %i.bc, 442
  br i1 %switch, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp ult i64 %4, 16
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %2, align 8, !tbaa !222
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i64 16, ptr %2, align 8, !tbaa !222
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %16 = load i32, ptr %15, align 1                ; 2 uses
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %.028.in.in = select i1 %i.g, i32 %16, i32 %17
  %.028.in = zext i32 %.028.in.in to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !14
  %i.bi = shl nuw i64 %.028.in, 32
  %i.bj = and i64 %i.bh, 4294967295
  %i.bk = or disjoint i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread, %bb.l, %bb.i, %bb.j, %bb.m
  %.1 = phi i32 [ 0, %_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread ], [ 0, %bb.l ], [ 0, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.m ]
  ret i32 %.1
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZN12_GLOBAL__N_117decodeInstructionImEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::SmallVector.142", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 8, ptr %i.c, align 4, !tbaa !226
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.backedge, %bb.a
  %.018 = phi ptr [ %0, %bb.a ], [ %.018.be, %_ZN4llvm11raw_ostreamlsEc.exit.backedge ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.018, i64 1 ; 12 uses
  %i.e = load i8, ptr %.018, align 1, !tbaa !14   ; 2 uses
  switch i8 %i.e, label %bb.b [
    i8 1, label %.preheader62
    i8 2, label %.preheader63
    i8 3, label %.preheader64
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.f = ptrtoint ptr %.018 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #10
  %i.j = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.h) #10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !230
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !231  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, 34
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull @.str, i64 noundef 34) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.n, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 34
  store ptr %i.u, ptr %i.m, align 8, !tbaa !231
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.j, %bb.d ]
  %i.v = zext i8 %i.e to i64
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.v) #10 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !231  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !230
  %.not.i = icmp ult ptr %i.y, %i.aa
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !231
  store i8 10, ptr %i.y, align 1, !tbaa !14
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

.preheader62:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.h
  %.031.i.i.i = phi ptr [ %i.an, %bb.h ], [ %i.d, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i = phi i32 [ %i.am, %bb.h ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.ad = load i8, ptr %.031.i.i.i, align 1, !tbaa !14 ; 2 uses
  %i.ae = and i8 %i.ad, 127                       ; 3 uses
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = icmp ugt i32 %.028.i.i.i, 62
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !232

bb.g:                                             ; preds = %.preheader62
  %.not44.i.i.i = icmp eq i32 %.028.i.i.i, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.ae, 1
  %i.ah = icmp ne i8 %i.ae, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.ah
  br i1 %or.cond43.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader62
  %i.ai = icmp ult i32 %.028.i.i.i, 64
  %i.aj = zext nneg i32 %.028.i.i.i to i64
  %i.ak = shl i64 %i.af, %i.aj
  %i.al = select i1 %i.ai, i64 %i.ak, i64 0, !prof !233
  %.130.i.i.i = add i64 %i.al, %.029.i.i.i        ; 2 uses
  %i.am = add i32 %.028.i.i.i, 7
  %i.an = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 1 ; 2 uses
  %i.ao = icmp slt i8 %i.ad, 0
  br i1 %i.ao, label %.preheader62, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit:    ; preds = %bb.g, %bb.h
  %.132.i.i.i = phi ptr [ %i.an, %bb.h ], [ %.031.i.i.i, %bb.g ]
  %.3.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %bb.g ]
  %i.ap = ptrtoint ptr %.132.i.i.i to i64
  %i.aq = ptrtoint ptr %i.d to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as ; 3 uses
  %i.au = and i64 %.3.i.i.i, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !226
  %.not.i48 = icmp ult i32 %i.aw, %i.ax
  br i1 %.not.i48, label %bb.j, label %bb.i, !prof !233

bb.i:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.av)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  %i.ay = zext i32 %i.aw to i64
  %i.az = load ptr, ptr %3, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  store ptr %i.av, ptr %i.ba, align 1
  %i.bb = load i32, ptr %i.b, align 8, !tbaa !24
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.b, align 8, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

_ZN4llvm11raw_ostreamlsEc.exit.backedge:          ; preds = %bb.j, %bb.i, %.loopexit, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %bb.jg
  %.018.be = phi ptr [ %i.at, %bb.j ], [ %i.fl, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ %i.du, %.loopexit ], [ %i.at, %bb.i ], [ %i.amo, %bb.jg ]
  br label %_ZN4llvm11raw_ostreamlsEc.exit

.preheader63:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.l
  %.031.i.i.i50 = phi ptr [ %i.bn, %bb.l ], [ %i.d, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i51 = phi i64 [ %.130.i.i.i53, %bb.l ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i52 = phi i32 [ %i.bm, %bb.l ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.bd = load i8, ptr %.031.i.i.i50, align 1, !tbaa !14 ; 2 uses
  %i.be = and i8 %i.bd, 127                       ; 3 uses
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = icmp ugt i32 %.028.i.i.i52, 62
  br i1 %i.bg, label %bb.k, label %bb.l, !prof !232

bb.k:                                             ; preds = %.preheader63
  %.not44.i.i.i56 = icmp eq i32 %.028.i.i.i52, 63
  %.not.i.i.i57 = icmp samesign ugt i8 %i.be, 1
  %i.bh = icmp ne i8 %i.be, 0
  %or.cond43.i.i.i58 = select i1 %.not44.i.i.i56, i1 %.not.i.i.i57, i1 %i.bh
  br i1 %or.cond43.i.i.i58, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117decodeInstructionImEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE:bb.a
  %i.aks = load i32, ptr %i.gs, align 8, !tbaa !24 ; 2 uses
  %i.akt = load i32, ptr %i.ajp, align 4, !tbaa !226
  %.not.i.i.i127 = icmp ult i32 %i.aks, %i.akt
  br i1 %.not.i.i.i127, label %bb.iv, label %bb.iu, !prof !233

bb.iu:                                            ; preds = %bb.it
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ajo, i8 1, i64 %.sroa.3.8.insert.ext.i.i442.i)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.iv:                                            ; preds = %bb.it
  %i.aku = zext i32 %i.aks to i64
  %i.akv = load ptr, ptr %i.ajo, align 8, !tbaa !23
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.akv, i64 %i.aku ; 2 uses
  store i8 1, ptr %i.akw, align 1
  %.sroa.4.0..sroa_idx.i.i.i129 = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i442.i, ptr %.sroa.4.0..sroa_idx.i.i.i129, align 1
  %i.akx = load i32, ptr %i.gs, align 8, !tbaa !24
  %i.aky = add i32 %i.akx, 1
  store i32 %i.aky, ptr %i.gs, align 8, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.iw:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117
  %i.akz = lshr i64 %2, 32                        ; 2 uses
  %i.ala = trunc nuw i64 %i.akz to i32
  %i.alb = and i32 %i.ala, 1048575                ; 2 uses
  %i.alc = icmp samesign ugt i32 %i.alb, 786431
  br i1 %i.alc, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.ald = lshr i32 %i.alb, 16
  %i.ale = zext nneg i32 %i.ald to i64
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.ale
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !235
  %.sroa.3.8.insert.ext.i.i448.i = zext i32 %i.alg to i64 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !226
  %.not.i.i.i449.i.not = icmp eq i32 %i.alj, 0
  br i1 %.not.i.i.i449.i.not, label %bb.iy, label %bb.iz, !prof !232

bb.iy:                                            ; preds = %bb.ix
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.alh, i8 1, i64 %.sroa.3.8.insert.ext.i.i448.i)
  %.pre.i450.i = load i32, ptr %i.gs, align 8, !tbaa !24
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i451.i

bb.iz:                                            ; preds = %bb.ix
  %i.alk = load ptr, ptr %i.alh, align 8, !tbaa !23 ; 2 uses
  store i8 1, ptr %i.alk, align 1
  %.sroa.4.0..sroa_idx.i.i.i455.i = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i448.i, ptr %.sroa.4.0..sroa_idx.i.i.i455.i, align 1
  %i.all = load i32, ptr %i.gs, align 8, !tbaa !24
  %i.alm = add i32 %i.all, 1                      ; 2 uses
  store i32 %i.alm, ptr %i.gs, align 8, !tbaa !24
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i451.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i451.i: ; preds = %bb.iz, %bb.iy
  %i.aln = phi i32 [ %.pre.i450.i, %bb.iy ], [ %i.alm, %bb.iz ] ; 2 uses
  %i.alo = shl i64 %i.akz, 48
  %i.alp = ashr exact i64 %i.alo, 48              ; 2 uses
  %i.alq = load i32, ptr %i.ali, align 4, !tbaa !226
  %.not.i.i11.i452.i = icmp ult i32 %i.aln, %i.alq
  br i1 %.not.i.i11.i452.i, label %bb.jb, label %bb.ja, !prof !233

bb.ja:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i451.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.alh, i8 2, i64 %i.alp)
  br label %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i

bb.jb:                                            ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i451.i
  %i.alr = zext i32 %i.aln to i64
  %i.als = load ptr, ptr %i.alh, align 8, !tbaa !23
  %i.alt = getelementptr inbounds nuw [16 x i8], ptr %i.als, i64 %i.alr ; 2 uses
  store i8 2, ptr %i.alt, align 1
  %.sroa.4.0..sroa_idx.i.i12.i454.i = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  store i64 %i.alp, ptr %.sroa.4.0..sroa_idx.i.i12.i454.i, align 1
  %i.alu = load i32, ptr %i.gs, align 8, !tbaa !24
  %i.alv = add i32 %i.alu, 1
  store i32 %i.alv, ptr %i.gs, align 8, !tbaa !24
  br label %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i

_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i: ; preds = %bb.ja, %bb.jb
  %i.alw = and i64 %2, 54043195528445952
  %i.alx = icmp eq i64 %i.alw, 54043195528445952
  br i1 %i.alx, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %bb.jc

bb.jc:                                            ; preds = %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i
  %i.aly = lshr i64 %2, 52
  %i.alz = and i64 %i.aly, 15
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GPR32DecoderTable, i64 %i.alz
  %i.amb = load i32, ptr %i.ama, align 4, !tbaa !235
  %.sroa.3.8.insert.ext.i.i = zext i32 %i.amb to i64 ; 2 uses
  %i.amc = load i32, ptr %i.gs, align 8, !tbaa !24 ; 2 uses
  %i.amd = load i32, ptr %i.ali, align 4, !tbaa !226
  %.not.i.i.i123 = icmp ult i32 %i.amc, %i.amd
  br i1 %.not.i.i.i123, label %bb.je, label %bb.jd, !prof !233

bb.jd:                                            ; preds = %bb.jc
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.alh, i8 1, i64 %.sroa.3.8.insert.ext.i.i)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.je:                                            ; preds = %bb.jc
  %i.ame = zext i32 %i.amc to i64
  %i.amf = load ptr, ptr %i.alh, align 8, !tbaa !23
  %i.amg = getelementptr inbounds nuw [16 x i8], ptr %i.amf, i64 %i.ame ; 2 uses
  store i8 1, ptr %i.amg, align 1
  %.sroa.4.0..sroa_idx.i.i.i125 = getelementptr inbounds nuw i8, ptr %i.amg, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i125, align 1
  %i.amh = load i32, ptr %i.gs, align 8, !tbaa !24
  %i.ami = add i32 %i.amh, 1
  store i32 %i.ami, ptr %i.gs, align 8, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.jf:                                            ; preds = %.loopexit, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit
  %i.amj = load i32, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %.not.i122 = icmp eq i32 %i.amj, 0
  br i1 %.not.i122, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.amk = load ptr, ptr %3, align 8, !tbaa !23
  %i.aml = zext i32 %i.amj to i64
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.amk, i64 %i.aml
  %i.amn = getelementptr inbounds i8, ptr %i.amm, i64 -8
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !236
  %i.amp = add i32 %i.amj, -1
  store i32 %i.amp, ptr %i.b, align 8, !tbaa !24
  br label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

_ZN4llvm11raw_ostreamlsEc.exit.thread:            ; preds = %bb.jf, %bb.je, %bb.jd, %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit447.i, %bb.ij, %bb.ii, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit441.i, %bb.ia, %bb.hz, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit435.i, %bb.hr, %bb.hq, %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit429.i, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit420.i, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit412.i, %bb.gk, %bb.gj, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit406.i, %bb.gd, %bb.gc, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit400.i, %bb.fq, %bb.fd, %bb.fc, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit375.i, %bb.em, %bb.el, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit361.i, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit350.i, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit344.i, %bb.cx, %bb.cq, %bb.ch, %bb.by, %bb.iw, %bb.ik, %bb.ib, %bb.hs, %bb.hj, %bb.gx, %bb.gl, %bb.ge, %bb.fx, %bb.ev, %bb.ee, %bb.dq, %bb.dg, %bb.iv, %bb.iu, %bb.hi, %bb.hh, %bb.fp, %bb.fo, %bb.fj, %bb.fi, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit365.i, %bb.et, %bb.eu, %bb.ea, %bb.ec, %bb.ed, %bb.bx, %bb.bw, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit277, %bb.bl, %bb.bn, %bb.bo, %bb.bk, %bb.bj, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit289, %bb.fk, %bb.fe, %bb.bp, %bb.bc, %bb.au, %bb.ag, %bb.at, %bb.as, %bb.aq, %bb.ap, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117, %bb.am, %bb.an, %bb.ba, %bb.bb, %bb.cf, %bb.cg, %bb.co, %bb.cp, %bb.cv, %bb.cw, %bb.de, %bb.df, %bb.do, %bb.dp, %bb.dy, %bb.dz, %bb.fv, %bb.fw, %bb.gv, %bb.gw, %bb.e, %bb.f
  %.347 = phi i32 [ 0, %bb.fk ], [ 3, %bb.gw ], [ 3, %bb.gv ], [ 3, %bb.fv ], [ 0, %bb.bp ], [ 3, %bb.dz ], [ 3, %bb.dy ], [ 3, %bb.do ], [ 3, %bb.de ], [ 3, %bb.cv ], [ 3, %bb.co ], [ 3, %bb.cf ], [ 0, %bb.au ], [ 3, %bb.bb ], [ 3, %bb.ba ], [ 3, %bb.an ], [ 3, %bb.am ], [ 3, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117 ], [ 3, %bb.as ], [ 3, %bb.ap ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit412.i ], [ 3, %bb.gd ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit420.i ], [ 0, %bb.ge ], [ 3, %bb.fw ], [ 0, %bb.fq ], [ 3, %bb.hh ], [ 3, %bb.hr ], [ 3, %bb.fd ], [ 3, %bb.hi ], [ 3, %bb.fj ], [ 3, %bb.fp ], [ 0, %bb.fe ], [ 3, %bb.at ], [ 0, %bb.ee ], [ 0, %bb.f ], [ 0, %bb.gl ], [ 3, %bb.em ], [ 0, %bb.e ], [ 3, %bb.ia ], [ 0, %bb.dq ], [ 0, %bb.gx ], [ 3, %bb.ij ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit350.i ], [ 3, %bb.fo ], [ 0, %bb.dg ], [ 0, %bb.hj ], [ 3, %bb.iv ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit344.i ], [ 3, %bb.bo ], [ 0, %bb.cx ], [ 0, %bb.hs ], [ 3, %bb.dp ], [ 0, %bb.cq ], [ 3, %bb.je ], [ 3, %bb.df ], [ 0, %bb.ch ], [ 3, %bb.cw ], [ 0, %bb.by ], [ 3, %bb.cp ], [ 3, %bb.fi ], [ 3, %bb.cg ], [ 0, %bb.ib ], [ 0, %bb.bc ], [ 3, %bb.bk ], [ 0, %bb.iw ], [ 3, %bb.aq ], [ 3, %bb.iu ], [ 3, %bb.gk ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit447.i ], [ 0, %bb.ag ], [ 0, %bb.ev ], [ 0, %bb.fx ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit289 ], [ 3, %bb.bj ], [ 0, %bb.bl ], [ 3, %bb.bn ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit277 ], [ 3, %bb.bw ], [ 3, %bb.bx ], [ 0, %bb.ik ], [ 0, %bb.ea ], [ 3, %bb.ec ], [ 3, %bb.ed ], [ 0, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit365.i ], [ 3, %bb.et ], [ 3, %bb.eu ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit361.i ], [ 3, %bb.el ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit375.i ], [ 3, %bb.fc ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit400.i ], [ 3, %bb.gc ], [ 0, %_ZL22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit406.i ], [ 3, %bb.gj ], [ 0, %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit429.i ], [ 3, %bb.hq ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit435.i ], [ 3, %bb.hz ], [ 0, %_ZL24DecodeGPR32RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit441.i ], [ 3, %bb.ii ], [ 0, %_ZL19decodeMemoryOpValueRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit456.i ], [ 3, %bb.jd ], [ 0, %bb.jf ]
  %i.amq = load ptr, ptr %3, align 8, !tbaa !23   ; 2 uses
  %i.amr = icmp eq ptr %i.amq, %i.a
  br i1 %i.amr, label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit, label %bb.jh

bb.jh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread
  call void @free(ptr noundef %i.amq) #10
  br label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit:          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.347
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !23
  %i.g = load i32, ptr %i.a, align 8, !tbaa !24
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !24
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !24
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !23
  %i.g = load i32, ptr %i.a, align 8, !tbaa !24
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !24
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = !{!"p1 _ZTSN4llvm9MCContextE", !8, i64 0}
!12 = !{!"p1 _ZTSN4llvm15MCSubtargetInfoE", !8, i64 0}
!13 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !8, i64 0, !5, i64 8, !5, i64 12}
!14 = !{!4, !4, i64 0}
!15 = !{!"_ZTSN4llvm5SMLocE", !9, i64 0}
!16 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9MCOperandEvEE", !13, i64 0}
!17 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EEE", !16, i64 0}
!18 = !{!"_ZTSN4llvm15SmallVectorImplINS_9MCOperandEEE", !17, i64 0}
!19 = !{!"_ZTSN4llvm18SmallVectorStorageINS_9MCOperandELj6EEE", !4, i64 0}
!20 = !{!"_ZTSN4llvm11SmallVectorINS_9MCOperandELj6EEE", !18, i64 0, !19, i64 16}
!21 = !{!"_ZTSN4llvm6MCInstE", !5, i64 0, !5, i64 4, !15, i64 8, !20, i64 16}
!22 = !{!21, !5, i64 0}
!23 = !{!13, !8, i64 0}
!24 = !{!13, !5, i64 8}
!25 = !{!"p1 _ZTSN4llvm6TargetE", !8, i64 0}
!26 = !{!"_ZTSN4llvm6TargetE", !25, i64 0, !8, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !10, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256}
!27 = !{!26, !8, i64 128}
!28 = !{!11, !11, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!"vtable pointer", !3, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 _ZTSN4llvm12MCSymbolizerE", !8, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MCSymbolizerELb0EE", !32, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MCSymbolizerESt14default_deleteIS1_EEE", !33, i64 0}
!35 = !{!"_ZTSSt5tupleIJPN4llvm12MCSymbolizerESt14default_deleteIS1_EEE", !34, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MCSymbolizerESt14default_deleteIS1_EE", !35, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MCSymbolizerESt14default_deleteIS1_ELb1ELb1EE", !36, i64 0}
!38 = !{!"_ZTSSt10unique_ptrIN4llvm12MCSymbolizerESt14default_deleteIS1_EE", !37, i64 0}
!39 = !{!"p1 _ZTSN4llvm11raw_ostreamE", !8, i64 0}
!40 = !{!"_ZTSN4llvm14MCDisassemblerE", !11, i64 8, !12, i64 16, !38, i64 24, !39, i64 32}
!41 = !{!40, !11, i64 8}
!42 = !{}
!43 = !{i64 8}
!44 = !{!"_ZTSN4llvm9MCContext11EnvironmentE", !4, i64 0}
!45 = !{!"long", !4, i64 0}
!46 = !{!"_ZTSN4llvm9StringRefE", !9, i64 0, !45, i64 8}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !45, i64 8, !4, i64 16}
!49 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !4, i64 0}
!50 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !4, i64 0}
!51 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !4, i64 0}
!52 = !{!"_ZTSN4llvm6Triple6OSTypeE", !4, i64 0}
!53 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !4, i64 0}
!54 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !4, i64 0}
!55 = !{!"_ZTSN4llvm6TripleE", !48, i64 0, !49, i64 32, !50, i64 36, !51, i64 40, !52, i64 44, !53, i64 48, !54, i64 52}
!56 = !{!"p1 _ZTSN4llvm9SourceMgrE", !8, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm9SourceMgrELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN4llvm9SourceMgrESt14default_deleteIS1_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm9SourceMgrESt14default_deleteIS1_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm9SourceMgrESt14default_deleteIS1_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrIN4llvm9SourceMgrESt14default_deleteIS1_EE", !61, i64 0}
!63 = !{!"any p2 pointer", !8, i64 0}
!64 = !{!"p2 _ZTSN4llvm6MDNodeE", !63, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIPKN4llvm6MDNodeESaIS3_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIPKN4llvm6MDNodeESaIS3_EE", !67, i64 0}
!69 = !{!"_ZTSSt14_Function_base", !4, i64 0, !8, i64 16}
!70 = !{!"_ZTSSt8functionIFvRKN4llvm12SMDiagnosticEbRKNS0_9SourceMgrERSt6vectorIPKNS0_6MDNodeESaISA_EEEE", !69, i64 0, !8, i64 24}
!71 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !8, i64 0}
!72 = !{!"p1 _ZTSN4llvm14MCRegisterInfoE", !8, i64 0}
!73 = !{!"p1 _ZTSN4llvm16MCObjectFileInfoE", !8, i64 0}
!74 = !{!"p1 _ZTSN4llvm15CodeViewContextE", !8, i64 0}
!75 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm15CodeViewContextELb0EE", !74, i64 0}
!76 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !75, i64 0}
!77 = !{!"_ZTSSt5tupleIJPN4llvm15CodeViewContextESt14default_deleteIS1_EEE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !77, i64 0}
!79 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm15CodeViewContextESt14default_deleteIS1_ELb1ELb1EE", !78, i64 0}
!80 = !{!"_ZTSSt10unique_ptrIN4llvm15CodeViewContextESt14default_deleteIS1_EE", !79, i64 0}
!81 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !13, i64 0}
!82 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !81, i64 0}
!83 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !82, i64 0}
!84 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !4, i64 0}
!85 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !83, i64 0, !84, i64 16}
!86 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !13, i64 0}
!87 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !86, i64 0}
!88 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !87, i64 0}
!89 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !9, i64 0, !45, i64 8, !85, i64 16, !89, i64 64}
!91 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EEE", !9, i64 0, !45, i64 8, !85, i64 16, !89, i64 64}
!92 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionCOFFEEE", !91, i64 0}
!93 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_20MCSectionDXContainerEEE", !91, i64 0}
!94 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_12MCSectionELFEEE", !91, i64 0}
!95 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionMachOEEE", !91, i64 0}
!96 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionGOFFEEE", !91, i64 0}
!97 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionSPIRVEEE", !91, i64 0}
!98 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_13MCSectionWasmEEE", !91, i64 0}
!99 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_14MCSectionXCOFFEEE", !91, i64 0}
!100 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_6MCInstEEE", !91, i64 0}
!101 = !{!"_ZTSN4llvm24SpecificBumpPtrAllocatorINS_4wasm13WasmSignatureEEE", !91, i64 0}
!102 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !63, i64 0}
!103 = !{!"_ZTSN4llvm13StringMapImplE", !102, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!104 = !{!"p1 _ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !8, i64 0}
!105 = !{!"_ZTSN4llvm6detail15AllocatorHolderIRNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !104, i64 0}
!106 = !{!"_ZTSN4llvm9StringMapINS_18MCSymbolTableValueERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !103, i64 0, !105, i64 24}
!107 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt4pairIjjEPNS_8MCSymbolEEE", !8, i64 0}
!108 = !{!"p1 int", !8, i64 0}
!109 = !{!"_ZTSN4llvm8DenseMapISt4pairIjjEPNS_8MCSymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !107, i64 0, !108, i64 8, !5, i64 16, !5, i64 20}
!110 = !{!"_ZTSN4llvm9StringMapIPNS_8MCSymbolERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEEE", !103, i64 0, !105, i64 24}
!111 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjPNS_7MCLabelEEE", !8, i64 0}
!112 = !{!"_ZTSN4llvm8DenseMapIjPNS_7MCLabelENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEE", !111, i64 0, !108, i64 8, !5, i64 16, !5, i64 20}
!113 = !{!"p1 _ZTSN4llvm14raw_fd_ostreamE", !8, i64 0}
!114 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm14raw_fd_ostreamELb0EE", !113, i64 0}
!115 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !114, i64 0}
!116 = !{!"_ZTSSt5tupleIJPN4llvm14raw_fd_ostreamESt14default_deleteIS1_EEE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm14raw_fd_ostreamESt14default_deleteIS1_ELb1ELb1EE", !117, i64 0}
!119 = !{!"_ZTSSt10unique_ptrIN4llvm14raw_fd_ostreamESt14default_deleteIS1_EE", !118, i64 0}
!120 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !8, i64 0, !45, i64 8, !45, i64 16}
!121 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIcvEE", !120, i64 0}
!122 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIcLb1EEE", !121, i64 0}
!123 = !{!"_ZTSN4llvm15SmallVectorImplIcEE", !122, i64 0}
!124 = !{!"_ZTSN4llvm18SmallVectorStorageIcLj128EEE", !4, i64 0}
!125 = !{!"_ZTSN4llvm11SmallVectorIcLj128EEE", !123, i64 0, !124, i64 24}
!126 = !{!"_ZTSN4llvm11SmallStringILj128EEE", !125, i64 0}
!127 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EvEE", !13, i64 0}
!128 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELb0EEE", !127, i64 0}
!129 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE", !128, i64 0}
!130 = !{!"_ZTSN4llvm11SmallVectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ELj0EEE", !129, i64 0}
!131 = !{!"_ZTSSt4lessIjE"}
!132 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !131, i64 0}
!133 = !{!"_ZTSSt14_Rb_tree_color", !4, i64 0}
!134 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !8, i64 0}
!135 = !{!"_ZTSSt18_Rb_tree_node_base", !133, i64 0, !134, i64 8, !134, i64 16, !134, i64 24}
!136 = !{!"_ZTSSt15_Rb_tree_header", !135, i64 0, !45, i64 32}
!137 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !132, i64 0, !136, i64 8}
!138 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm16MCDwarfLineTableEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !137, i64 0}
!139 = !{!"_ZTSSt3mapIjN4llvm16MCDwarfLineTableESt4lessIjESaISt4pairIKjS1_EEE", !138, i64 0}
!140 = !{!"short", !4, i64 0}
!141 = !{!"_ZTSN4llvm10MCDwarfLocE", !5, i64 0, !5, i64 4, !140, i64 8, !4, i64 10, !4, i64 11, !5, i64 12}
!142 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIPNS_9MCSectionEEE", !8, i64 0}
!143 = !{!"_ZTSN4llvm8DenseMapIPNS_9MCSectionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !142, i64 0, !108, i64 8, !5, i64 16, !5, i64 20}
!144 = !{!"_ZTSN4llvm6detail12DenseSetImplIPNS_9MCSectionENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !143, i64 0}
!145 = !{!"_ZTSN4llvm8DenseSetIPNS_9MCSectionENS_12DenseMapInfoIS2_vEEEE", !144, i64 0}
!146 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_9MCSectionEvEE", !13, i64 0}
!147 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_9MCSectionELb1EEE", !146, i64 0}
!148 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_9MCSectionEEE", !147, i64 0}
!149 = !{!"_ZTSN4llvm11SmallVectorIPNS_9MCSectionELj0EEE", !148, i64 0}
!150 = !{!"_ZTSN4llvm9SetVectorIPNS_9MCSectionENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEE", !145, i64 0, !149, i64 24}
!151 = !{!"p1 _ZTSN4llvm20MCGenDwarfLabelEntryE", !8, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!153 = !{!"_ZTSNSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE12_Vector_implE", !152, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !153, i64 0}
!155 = !{!"_ZTSSt6vectorIN4llvm20MCGenDwarfLabelEntryESaIS1_EE", !154, i64 0}
!156 = !{!"_ZTSN4llvm5dwarf11DwarfFormatE", !4, i64 0}
!157 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !63, i64 0}
!158 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !8, i64 0}
!159 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !158, i64 0}
!160 = !{!"float", !4, i64 0}
!161 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !160, i64 0, !45, i64 8}
!162 = !{!"_ZTSSt10_HashtableIPN4llvm8MCSymbolESt4pairIKS2_NS0_23MCPseudoProbeInlineTreeEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !157, i64 0, !45, i64 8, !159, i64 16, !45, i64 24, !161, i64 32, !158, i64 48}
!163 = !{!"_ZTSSt13unordered_mapIPN4llvm8MCSymbolENS0_23MCPseudoProbeInlineTreeESt4hashIS2_ESt8equal_toIS2_ESaISt4pairIKS2_S3_EEE", !162, i64 0}
!164 = !{!"_ZTSN4llvm21MCPseudoProbeSectionsE", !163, i64 0}
!165 = !{!"_ZTSN4llvm18MCPseudoProbeTableE", !164, i64 0}
!166 = !{!"_ZTSN4llvm9StringMapIPNS_14MCSectionMachOENS_15MallocAllocatorEEE", !103, i64 0}
!167 = !{!"_ZTSSt4lessIN4llvm9MCContext14COFFSectionKeyEE"}
!168 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9MCContext14COFFSectionKeyEEE", !167, i64 0}
!169 = !{!"_ZTSNSt8_Rb_treeIN4llvm9MCContext14COFFSectionKeyESt4pairIKS2_PNS0_13MCSectionCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !168, i64 0, !136, i64 8}
!170 = !{!"_ZTSSt8_Rb_treeIN4llvm9MCContext14COFFSectionKeyESt4pairIKS2_PNS0_13MCSectionCOFFEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !169, i64 0}
!171 = !{!"_ZTSSt3mapIN4llvm9MCContext14COFFSectionKeyEPNS0_13MCSectionCOFFESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !170, i64 0}
!172 = !{!"_ZTSN4llvm9StringMapIPNS_12MCSectionELFENS_15MallocAllocatorEEE", !103, i64 0}
!173 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!174 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !173, i64 0}
!175 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm13MCSectionGOFFEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !174, i64 0, !136, i64 8}
!176 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN4llvm13MCSectionGOFFEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !175, i64 0}
!177 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4llvm13MCSectionGOFFESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !176, i64 0}
!178 = !{!"_ZTSSt4lessIN4llvm9MCContext14WasmSectionKeyEE"}
!179 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4llvm9MCContext14WasmSectionKeyEEE", !178, i64 0}
end_hunk_1
