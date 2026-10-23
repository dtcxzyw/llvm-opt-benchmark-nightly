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
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !222
  %i.i = load i8, ptr %3, align 1, !tbaa !14
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 2
  %7 = load i16, ptr %i.o, align 1
  %i.p = zext i16 %7 to i64
  %i.q = or disjoint i64 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = and i8 %i.l, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 20
  %i.w = and i8 %i.l, -16
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 12
  %i.z = or disjoint i64 %i.v, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 8
  %i.ae = or disjoint i64 %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load i32, ptr %i.aj, align 1
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.06.in.i.in = phi i32 [ %i.s, %bb.c ], [ %i.al, %bb.d ]
  %.pn.i = phi i64 [ %i.q, %bb.c ], [ %i.ai, %bb.d ]
  %.06.in.i = zext i32 %.06.in.i.in to i64
  %i.am = shl nuw i64 %i.j, 56
  %i.an = shl nuw nsw i64 %.pn.i, 32
  %i.ao = or disjoint i64 %i.am, %.06.in.i
  %i.ap = or i64 %i.ao, %i.an                     ; 4 uses
  %i.aq = and i64 %i.ap, 360287970189639680
  %or.cond = icmp ne i64 %i.aq, 72057594037927936
  %i.ar = and i64 %i.ap, 1729382256910270464
  %.not = icmp eq i64 %i.ar, 1729382256910270464
  %or.cond45 = or i1 %or.cond, %.not
  br i1 %or.cond45, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = lshr i64 %i.ap, 61
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
  br i1 %i.ba, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load i32, ptr %1, align 8, !tbaa !22
  %i.bc = and i32 %i.bb, -2
  %switch = icmp eq i32 %i.bc, 442
  br i1 %switch, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp ult i64 %4, 16
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %2, align 8, !tbaa !222
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  store i64 16, ptr %2, align 8, !tbaa !222
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br i1 %i.g, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %i.be, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bg = load i32, ptr %i.be, align 1
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.028.in.in = phi i32 [ %i.bf, %bb.n ], [ %i.bh, %bb.o ]
  %.028.in = zext i32 %.028.in.in to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bm = shl nuw i64 %.028.in, 32
  %i.bn = and i64 %i.bl, 4294967295
  %i.bo = or disjoint i64 %i.bn, %i.bm
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread, %bb.l, %bb.i, %bb.j, %bb.p
  %.1 = phi i32 [ 0, %_ZL17readInstruction64N4llvm8ArrayRefIhEEmRmS2_b.exit.thread ], [ 0, %bb.l ], [ 0, %bb.i ], [ %i.az, %bb.j ], [ %i.az, %bb.p ]
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
end_hunk_0
