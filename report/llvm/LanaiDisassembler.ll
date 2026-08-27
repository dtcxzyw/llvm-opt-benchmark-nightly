Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LanaiDisassembler?download=true
inline.NumInlined: 280
inline.NumDeleted: 94
begin_hunk_0

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
  store ptr @_ZL23createLanaiDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.b, align 8, !tbaa !8
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
  store ptr %2, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm17LanaiDisassemblerE, i64 16), ptr %0, align 8, !tbaa !18
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i = zext i32 %i.d to i64  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !23
  %.not.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 1, i64 %.sroa.3.8.insert.ext.i)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.j ; 2 uses
  store i8 1, ptr %i.l, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.3.8.insert.ext.i, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !21
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !21
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
  %i.b = load i8, ptr %3, align 1, !tbaa !26
  %i.c = zext i8 %i.b to i32                      ; 4 uses
  %i.d = shl nuw i32 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %i.g = zext i8 %i.f to i32                      ; 17 uses
  %i.h = shl nuw nsw i32 %i.g, 16
  %i.i = or disjoint i32 %i.h, %i.d               ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !26
  %i.l = zext i8 %i.k to i32                      ; 7 uses
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i32                      ; 9 uses
  %i.q = or disjoint i32 %i.m, %i.p               ; 7 uses
  %i.r = or disjoint i32 %i.q, %i.i               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.s, ptr %7, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i32 0, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i32 8, ptr %i.u, align 4, !tbaa !23
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, %bb.b
  %.018.i = phi ptr [ @_ZN12_GLOBAL__N_119DecoderTableLanai32E, %bb.b ], [ %.018.i.be, %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.018.i, i64 1 ; 12 uses
  %i.w = load i8, ptr %.018.i, align 1, !tbaa !26 ; 2 uses
  switch i8 %i.w, label %bb.c [
    i8 1, label %.preheader31.i
    i8 2, label %.preheader32.i
    i8 3, label %.preheader33.i
    i8 5, label %.preheader.i
  ]

bb.c:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.x = ptrtoint ptr %.018.i to i64
  %i.y = sub i64 %i.x, ptrtoint (ptr @_ZN12_GLOBAL__N_119DecoderTableLanai32E to i64)
  %i.z = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #10
  %i.aa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 noundef %i.y) #10 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, 34
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str, i64 noundef 34) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.ae, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 34
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.aj, %bb.d ], [ %i.aa, %bb.e ]
  %i.am = zext i8 %i.w to i64
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef %i.am) #10 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !27
  %.not.i.i = icmp ult ptr %i.ap, %i.ar
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.an, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !31
  store i8 10, ptr %i.ap, align 1, !tbaa !26
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

.preheader31.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.i ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %.031.i.i.i.i = phi ptr [ %i.bc, %bb.i ], [ %i.v, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i.i = phi i64 [ %.130.i.i.i.i, %bb.i ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.au = load i8, ptr %.031.i.i.i.i, align 1, !tbaa !26 ; 2 uses
  %i.av = and i8 %i.au, 127                       ; 3 uses
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = icmp samesign ugt i64 %indvars.iv.i.i.i, 62
  br i1 %i.ax, label %bb.h, label %bb.i, !prof !32

bb.h:                                             ; preds = %.preheader31.i
  %.not44.i.i.i.i = icmp eq i64 %indvars.iv.i.i.i, 63
  %.not.i.i.i.i = icmp samesign ugt i8 %i.av, 1
  %i.ay = icmp ne i8 %i.av, 0
  %or.cond43.i.i.i.i = select i1 %.not44.i.i.i.i, i1 %.not.i.i.i.i, i1 %i.ay
  br i1 %or.cond43.i.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader31.i
  %i.az = icmp samesign ult i64 %indvars.iv.i.i.i, 64
  %i.ba = shl i64 %i.aw, %indvars.iv.i.i.i
  %i.bb = select i1 %i.az, i64 %i.ba, i64 0, !prof !24
  %.130.i.i.i.i = add i64 %i.bb, %.029.i.i.i.i    ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 7
  %i.bc = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i, i64 1 ; 2 uses
  %i.bd = icmp slt i8 %i.au, 0
  br i1 %i.bd, label %.preheader31.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i:  ; preds = %bb.i, %bb.h
  %.132.i.i.i.i = phi ptr [ %i.bc, %bb.i ], [ %.031.i.i.i.i, %bb.h ]
  %.3.i.i.i.i = phi i64 [ %.130.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.be = ptrtoint ptr %.132.i.i.i.i to i64
  %i.bf = ptrtoint ptr %i.v to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh ; 3 uses
  %i.bj = and i64 %.3.i.i.i.i, 4294967295
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %i.bm = load i32, ptr %i.u, align 4, !tbaa !23
  %.not.i48.i = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i48.i, label %bb.k, label %bb.j, !prof !24

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.bk)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge

bb.k:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit.i
  %i.bn = zext i32 %i.bl to i64
  %i.bo = load ptr, ptr %7, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  store ptr %i.bk, ptr %i.bp, align 1
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !21
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.t, align 8, !tbaa !21
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge

.preheader32.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.m
  %indvars.iv.i.i50.i = phi i64 [ %indvars.iv.next.i.i54.i, %bb.m ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %.031.i.i.i51.i = phi ptr [ %i.ca, %bb.m ], [ %i.v, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i52.i = phi i64 [ %.130.i.i.i53.i, %bb.m ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.bs = load i8, ptr %.031.i.i.i51.i, align 1, !tbaa !26 ; 2 uses
  %i.bt = and i8 %i.bs, 127                       ; 3 uses
  %i.bu = zext nneg i8 %i.bt to i64
  %i.bv = icmp samesign ugt i64 %indvars.iv.i.i50.i, 62
  br i1 %i.bv, label %bb.l, label %bb.m, !prof !32

bb.l:                                             ; preds = %.preheader32.i
  %.not44.i.i.i56.i = icmp eq i64 %indvars.iv.i.i50.i, 63
  %.not.i.i.i57.i = icmp samesign ugt i8 %i.bt, 1
  %i.bw = icmp ne i8 %i.bt, 0
  %or.cond43.i.i.i58.i = select i1 %.not44.i.i.i56.i, i1 %.not.i.i.i57.i, i1 %i.bw
  br i1 %or.cond43.i.i.i58.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader32.i
  %i.bx = icmp samesign ult i64 %indvars.iv.i.i50.i, 64
  %i.by = shl i64 %i.bu, %indvars.iv.i.i50.i
  %i.bz = select i1 %i.bx, i64 %i.by, i64 0, !prof !24
  %.130.i.i.i53.i = add i64 %i.bz, %.029.i.i.i52.i ; 2 uses
  %indvars.iv.next.i.i54.i = add nuw nsw i64 %indvars.iv.i.i50.i, 7
  %i.ca = getelementptr inbounds nuw i8, ptr %.031.i.i.i51.i, i64 1 ; 2 uses
  %i.cb = icmp slt i8 %i.bs, 0
  br i1 %i.cb, label %.preheader32.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i: ; preds = %bb.m, %bb.l
  %.132.i.i.i54.i = phi ptr [ %i.ca, %bb.m ], [ %.031.i.i.i51.i, %bb.l ]
  %.3.i.i.i55.i = phi i64 [ %.130.i.i.i53.i, %bb.m ], [ 0, %bb.l ]
  %i.cc = ptrtoint ptr %.132.i.i.i54.i to i64
  %i.cd = ptrtoint ptr %i.v to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = and i64 %i.ce, 4294967295
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cf ; 2 uses
  %i.ch = trunc i64 %.3.i.i.i55.i to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !26  ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %i.cl = icmp eq i8 %i.cj, 0
  %i.cm = sub nsw i32 32, %i.ck
  %i.cn = lshr i32 -1, %i.cm
  %.0.i.i60.i = select i1 %i.cl, i32 0, i32 %i.cn
  %i.co = lshr i32 %i.r, %i.ch
  %i.cp = and i32 %.0.i.i60.i, %i.co
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i
  %.1.i = phi ptr [ %i.ci, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit59.i ], [ %i.ed, %bb.v ] ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %indvars.iv.i.i63.i = phi i64 [ %indvars.iv.next.i.i67.i, %bb.q ], [ 0, %bb.n ] ; 5 uses
  %.031.i.i.i64.i = phi ptr [ %i.cz, %bb.q ], [ %.1.i, %bb.n ] ; 3 uses
  %.029.i.i.i65.i = phi i64 [ %.130.i.i.i65.i, %bb.q ], [ 0, %bb.n ]
  %i.cr = load i8, ptr %.031.i.i.i64.i, align 1, !tbaa !26 ; 2 uses
  %i.cs = and i8 %i.cr, 127                       ; 3 uses
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = icmp samesign ugt i64 %indvars.iv.i.i63.i, 62
  br i1 %i.cu, label %bb.p, label %bb.q, !prof !32

bb.p:                                             ; preds = %bb.o
  %.not44.i.i.i68.i = icmp eq i64 %indvars.iv.i.i63.i, 63
  %.not.i.i.i69.i = icmp samesign ugt i8 %i.cs, 1
  %i.cv = icmp ne i8 %i.cs, 0
  %or.cond43.i.i.i70.i = select i1 %.not44.i.i.i68.i, i1 %.not.i.i.i69.i, i1 %i.cv
  br i1 %or.cond43.i.i.i70.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cw = icmp samesign ult i64 %indvars.iv.i.i63.i, 64
  %i.cx = shl i64 %i.ct, %indvars.iv.i.i63.i
  %i.cy = select i1 %i.cw, i64 %i.cx, i64 0, !prof !24
  %.130.i.i.i65.i = add i64 %i.cy, %.029.i.i.i65.i ; 2 uses
  %indvars.iv.next.i.i67.i = add nuw nsw i64 %indvars.iv.i.i63.i, 7
  %i.cz = getelementptr inbounds nuw i8, ptr %.031.i.i.i64.i, i64 1 ; 2 uses
  %i.da = icmp slt i8 %i.cr, 0
  br i1 %i.da, label %bb.o, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i: ; preds = %bb.q, %bb.p
  %.132.i.i.i66.i = phi ptr [ %i.cz, %bb.q ], [ %.031.i.i.i64.i, %bb.p ]
  %.3.i.i.i67.i = phi i64 [ %.130.i.i.i65.i, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.db = ptrtoint ptr %.132.i.i.i66.i to i64
  %i.dc = ptrtoint ptr %.1.i to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = and i64 %i.dd, 4294967295
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i, i64 %i.de ; 5 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.u
  %indvars.iv.next.i.i79.i = add nuw nsw i64 %indvars.iv.i.i75.i127, 7
  br label %bb.s, !llvm.loop !33

bb.s:                                             ; preds = %bb.r, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i
  %.029.i.i.i77.i129 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %.130.i.i.i76.i, %bb.r ]
  %.031.i.i.i76.i128 = phi ptr [ %i.df, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %i.do, %bb.r ] ; 3 uses
  %indvars.iv.i.i75.i127 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit71.i ], [ %indvars.iv.next.i.i79.i, %bb.r ] ; 5 uses
  %i.dg = load i8, ptr %.031.i.i.i76.i128, align 1, !tbaa !26 ; 2 uses
  %i.dh = and i8 %i.dg, 127                       ; 3 uses
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = icmp samesign ugt i64 %indvars.iv.i.i75.i127, 62
  br i1 %i.dj, label %bb.t, label %bb.u, !prof !32

bb.t:                                             ; preds = %bb.s
  %.not44.i.i.i79.i = icmp eq i64 %indvars.iv.i.i75.i127, 63
  %.not.i.i.i80.i = icmp samesign ugt i8 %i.dh, 1
  %i.dk = icmp ne i8 %i.dh, 0
  %or.cond43.i.i.i81.i = select i1 %.not44.i.i.i79.i, i1 %.not.i.i.i80.i, i1 %i.dk
  br i1 %or.cond43.i.i.i81.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.loopexit.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = icmp samesign ult i64 %indvars.iv.i.i75.i127, 64
  %i.dm = shl i64 %i.di, %indvars.iv.i.i75.i127
  %i.dn = select i1 %i.dl, i64 %i.dm, i64 0, !prof !24
  %.130.i.i.i76.i = add i64 %i.dn, %.029.i.i.i77.i129 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.031.i.i.i76.i128, i64 1 ; 2 uses
  %i.dp = icmp slt i8 %i.dg, 0
  br i1 %i.dp, label %bb.r, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.loopexit.i: ; preds = %bb.t
  %i.dq = ptrtoint ptr %.031.i.i.i76.i128 to i64
  %i.dr = ptrtoint ptr %i.df to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dt
  br label %.loopexit.i

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i: ; preds = %bb.u
  %i.dv = ptrtoint ptr %i.do to i64
  %i.dw = ptrtoint ptr %i.df to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = and i64 %i.dx, 4294967295
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dy ; 2 uses
  %i.ea = icmp ne i64 %.3.i.i.i67.i, %i.cq
  %i.eb = and i64 %.130.i.i.i76.i, 4294967295     ; 2 uses
  %i.ec = icmp ne i64 %i.eb, 0
  %or.cond.i = and i1 %i.ea, %i.ec
  br i1 %or.cond.i, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  br label %bb.n, !llvm.loop !35

.loopexit.i:                                      ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.loopexit.i
  %i.ee = phi ptr [ %i.du, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.thread.loopexit.i ], [ %i.dz, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit82.i ]
  %.not.i = icmp eq i64 %.3.i.i.i67.i, %i.cq
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, label %bb.eb

.preheader33.i:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.x
  %indvars.iv.i.i87.i = phi i64 [ %indvars.iv.next.i.i91.i, %bb.x ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %.031.i.i.i88.i = phi ptr [ %i.en, %bb.x ], [ %i.v, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i89.i = phi i64 [ %.130.i.i.i87.i, %bb.x ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.ef = load i8, ptr %.031.i.i.i88.i, align 1, !tbaa !26 ; 2 uses
  %i.eg = and i8 %i.ef, 127                       ; 3 uses
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = icmp samesign ugt i64 %indvars.iv.i.i87.i, 62
  br i1 %i.ei, label %bb.w, label %bb.x, !prof !32

bb.w:                                             ; preds = %.preheader33.i
  %.not44.i.i.i90.i = icmp eq i64 %indvars.iv.i.i87.i, 63
  %.not.i.i.i91.i = icmp samesign ugt i8 %i.eg, 1
  %i.ej = icmp ne i8 %i.eg, 0
  %or.cond43.i.i.i92.i = select i1 %.not44.i.i.i90.i, i1 %.not.i.i.i91.i, i1 %i.ej
  br i1 %or.cond43.i.i.i92.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader33.i
  %i.ek = icmp samesign ult i64 %indvars.iv.i.i87.i, 64
  %i.el = shl i64 %i.eh, %indvars.iv.i.i87.i
  %i.em = select i1 %i.ek, i64 %i.el, i64 0, !prof !24
  %.130.i.i.i87.i = add i64 %i.em, %.029.i.i.i89.i ; 2 uses
  %indvars.iv.next.i.i91.i = add nuw nsw i64 %indvars.iv.i.i87.i, 7
  %i.en = getelementptr inbounds nuw i8, ptr %.031.i.i.i88.i, i64 1 ; 2 uses
  %i.eo = icmp slt i8 %i.ef, 0
  br i1 %i.eo, label %.preheader33.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i: ; preds = %bb.x, %bb.w
  %.132.i.i.i88.i = phi ptr [ %i.en, %bb.x ], [ %.031.i.i.i88.i, %bb.w ]
  %.3.i.i.i89.i = phi i64 [ %.130.i.i.i87.i, %bb.x ], [ 0, %bb.w ]
  %i.ep = ptrtoint ptr %.132.i.i.i88.i to i64
  %i.eq = ptrtoint ptr %i.v to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = and i64 %i.er, 4294967295
  %i.et = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.es ; 2 uses
  %i.eu = trunc i64 %.3.i.i.i89.i to i32
  %i.ev = load i8, ptr %i.et, align 1, !tbaa !26  ; 2 uses
  %i.ew = zext i8 %i.ev to i32
  %i.ex = icmp eq i8 %i.ev, 0
  %i.ey = sub nsw i32 32, %i.ew
  %i.ez = lshr i32 -1, %i.ey
  %.0.i.i94.i = select i1 %i.ex, i32 0, i32 %i.ez
  %i.fa = lshr i32 %i.r, %i.eu
  %i.fb = and i32 %.0.i.i94.i, %i.fa
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 1 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.aa ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ] ; 5 uses
  %.031.i.i = phi ptr [ %i.fm, %bb.aa ], [ %i.fd, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ] ; 3 uses
  %.029.i.i = phi i64 [ %.130.i.i, %bb.aa ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit93.i ]
  %i.fe = load i8, ptr %.031.i.i, align 1, !tbaa !26 ; 2 uses
  %i.ff = and i8 %i.fe, 127                       ; 3 uses
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = icmp samesign ugt i64 %indvars.iv.i, 62
  br i1 %i.fh, label %bb.z, label %bb.aa, !prof !32

bb.z:                                             ; preds = %bb.y
  %.not44.i.i = icmp eq i64 %indvars.iv.i, 63
  %.not.i95.i = icmp samesign ugt i8 %i.ff, 1
  %i.fi = icmp ne i8 %i.ff, 0
  %or.cond43.i.i = select i1 %.not44.i.i, i1 %.not.i95.i, i1 %i.fi
  br i1 %or.cond43.i.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fj = icmp samesign ult i64 %indvars.iv.i, 64
  %i.fk = shl i64 %i.fg, %indvars.iv.i
  %i.fl = select i1 %i.fj, i64 %i.fk, i64 0, !prof !24
  %.130.i.i = add i64 %i.fl, %.029.i.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 7
  %i.fm = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1 ; 2 uses
  %i.fn = icmp slt i8 %i.fe, 0
  br i1 %i.fn, label %bb.y, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i, !llvm.loop !33

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit.i:      ; preds = %bb.aa, %bb.z
  %.132.i.i = phi ptr [ %i.fm, %bb.aa ], [ %.031.i.i, %bb.z ]
  %.3.i.i = phi i64 [ %.130.i.i, %bb.aa ], [ 0, %bb.z ]
  %i.fo = ptrtoint ptr %.132.i.i to i64
  %i.fp = ptrtoint ptr %i.fd to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = and i64 %i.fq, 4294967295
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fr
  %.not.not.i = icmp eq i64 %.3.i.i, %i.fc
  br i1 %.not.not.i, label %_ZN4llvm11raw_ostreamlsEc.exit.i.backedge, label %bb.eb

.preheader.i:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.ac
  %indvars.iv.i.i101.i = phi i64 [ %indvars.iv.next.i.i105.i, %bb.ac ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 5 uses
  %.031.i.i.i102.i = phi ptr [ %i.gb, %bb.ac ], [ %i.v, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 3 uses
  %.029.i.i.i103.i = phi i64 [ %.130.i.i.i100.i, %bb.ac ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i ]
  %i.ft = load i8, ptr %.031.i.i.i102.i, align 1, !tbaa !26 ; 2 uses
  %i.fu = and i8 %i.ft, 127                       ; 3 uses
  %i.fv = zext nneg i8 %i.fu to i64
  %i.fw = icmp samesign ugt i64 %indvars.iv.i.i101.i, 62
  br i1 %i.fw, label %bb.ab, label %bb.ac, !prof !32

bb.ab:                                            ; preds = %.preheader.i
  %.not44.i.i.i103.i = icmp eq i64 %indvars.iv.i.i101.i, 63
  %.not.i.i.i104.i = icmp samesign ugt i8 %i.fu, 1
  %i.fx = icmp ne i8 %i.fu, 0
  %or.cond43.i.i.i105.i = select i1 %.not44.i.i.i103.i, i1 %.not.i.i.i104.i, i1 %i.fx
  br i1 %or.cond43.i.i.i105.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.preheader.i
  %i.fy = icmp samesign ult i64 %indvars.iv.i.i101.i, 64
  %i.fz = shl i64 %i.fv, %indvars.iv.i.i101.i
  %i.ga = select i1 %i.fy, i64 %i.fz, i64 0, !prof !24
  %.130.i.i.i100.i = add i64 %i.ga, %.029.i.i.i103.i ; 2 uses
  %indvars.iv.next.i.i105.i = add nuw nsw i64 %indvars.iv.i.i101.i, 7
  %i.gb = getelementptr inbounds nuw i8, ptr %.031.i.i.i102.i, i64 1 ; 2 uses
  %i.gc = icmp slt i8 %i.ft, 0
  br i1 %i.gc, label %.preheader.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i: ; preds = %bb.ac, %bb.ab
  %.132.i.i.i101.i = phi ptr [ %i.gb, %bb.ac ], [ %.031.i.i.i102.i, %bb.ab ]
  %.3.i.i.i102.i = phi i64 [ %.130.i.i.i100.i, %bb.ac ], [ 0, %bb.ab ]
  %i.gd = ptrtoint ptr %.132.i.i.i101.i to i64
  %i.ge = ptrtoint ptr %i.v to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = and i64 %i.gf, 4294967295
  %i.gh = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.gg
  %i.gi = trunc i64 %.3.i.i.i102.i to i32         ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i
  %indvars.iv.i.i113.i = phi i64 [ %indvars.iv.next.i.i117.i, %bb.af ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ] ; 5 uses
  %.031.i.i.i114.i = phi ptr [ %i.gs, %bb.af ], [ %i.gh, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ] ; 2 uses
  %.029.i.i.i115.i = phi i64 [ %.130.i.i.i111.i, %bb.af ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit106.i ]
  %i.gj = load i8, ptr %.031.i.i.i114.i, align 1, !tbaa !26 ; 2 uses
  %i.gk = and i8 %i.gj, 127                       ; 3 uses
  %i.gl = zext nneg i8 %i.gk to i64
  %i.gm = icmp samesign ugt i64 %indvars.iv.i.i113.i, 62
  br i1 %i.gm, label %bb.ae, label %bb.af, !prof !32

bb.ae:                                            ; preds = %bb.ad
  %.not44.i.i.i114.i = icmp eq i64 %indvars.iv.i.i113.i, 63
  %.not.i.i.i115.i = icmp samesign ugt i8 %i.gk, 1
  %i.gn = icmp ne i8 %i.gk, 0
  %or.cond43.i.i.i116.i = select i1 %.not44.i.i.i114.i, i1 %.not.i.i.i115.i, i1 %i.gn
  br i1 %or.cond43.i.i.i116.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i, label %bb.af

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.thread.i: ; preds = %bb.ae
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.go, align 8, !tbaa !21
  store i32 %i.gi, ptr %1, align 8, !tbaa !36
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gp = icmp samesign ult i64 %indvars.iv.i.i113.i, 64
  %i.gq = shl i64 %i.gl, %indvars.iv.i.i113.i
  %i.gr = select i1 %i.gp, i64 %i.gq, i64 0, !prof !24
  %.130.i.i.i111.i = add i64 %i.gr, %.029.i.i.i115.i ; 2 uses
  %indvars.iv.next.i.i117.i = add nuw nsw i64 %indvars.iv.i.i113.i, 7
  %i.gs = getelementptr inbounds nuw i8, ptr %.031.i.i.i114.i, i64 1
  %i.gt = icmp slt i8 %i.gj, 0
  br i1 %i.gt, label %bb.ad, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i, !llvm.loop !33

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i: ; preds = %bb.af
  %i.gu = trunc i64 %.130.i.i.i111.i to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 107 uses
  store i32 0, ptr %i.gv, align 8, !tbaa !21
  store i32 %i.gi, ptr %1, align 8, !tbaa !36
  switch i32 %i.gu, label %bb.ag [
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
  %i.gw = lshr i32 %i.i, 23
  %i.gx = and i32 %i.gw, 31
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i.i.i.i = zext i32 %i.ha to i64 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !23
  %.not.i.i.i.i.not.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i.i.i.not.i, label %bb.ai, label %bb.aj, !prof !32

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i.i)
  %.pre91.i.a = load i32, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !25 ; 2 uses
  store i8 1, ptr %i.he, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 1
  %i.hf = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.hg = add i32 %i.hf, 1                        ; 2 uses
  store i32 %i.hg, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i: ; preds = %bb.aj, %bb.ai
  %i.hh = phi i32 [ %.pre91.i.a, %bb.ai ], [ %i.hg, %bb.aj ] ; 2 uses
  %i.hi = lshr i32 %i.g, 2
  %i.hj = and i32 %i.hi, 31
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i.i177.i.i = zext i32 %i.hm to i64 ; 2 uses
  %i.hn = load i32, ptr %i.hc, align 4, !tbaa !23
  %.not.i.i.i178.i.i = icmp ult i32 %i.hh, %i.hn
  br i1 %.not.i.i.i178.i.i, label %bb.al, label %bb.ak, !prof !24

bb.ak:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 1, i64 %.sroa.3.8.insert.ext.i.i177.i.i)
  %.pre92.i = load i32, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i

bb.al:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i.i
  %i.ho = zext i32 %i.hh to i64
  %i.hp = load ptr, ptr %i.hb, align 8, !tbaa !25
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.ho ; 2 uses
  store i8 1, ptr %i.hq, align 1
  %.sroa.4.0..sroa_idx.i.i.i179.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i177.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i179.i.i, align 1
  %i.hr = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.hs = add i32 %i.hr, 1                        ; 2 uses
  store i32 %i.hs, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i: ; preds = %bb.al, %bb.ak
  %i.ht = phi i32 [ %i.hs, %bb.al ], [ %.pre92.i, %bb.ak ] ; 2 uses
  %i.hu = zext nneg i32 %i.q to i64               ; 2 uses
  %i.hv = load i32, ptr %i.hc, align 4, !tbaa !23
  %.not.i.i138.i = icmp ult i32 %i.ht, %i.hv
  br i1 %.not.i.i138.i, label %bb.an, label %bb.am, !prof !24

bb.am:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i8 2, i64 %i.hu)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.an:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit180.i.i
  %i.hw = zext i32 %i.ht to i64
  %i.hx = load ptr, ptr %i.hb, align 8, !tbaa !25
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hx, i64 %i.hw ; 2 uses
  store i8 2, ptr %i.hy, align 1
  %.sroa.4.0..sroa_idx.i.i139.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i64 %i.hu, ptr %.sroa.4.0..sroa_idx.i.i139.i, align 1
  %i.hz = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.gv, align 8, !tbaa !21
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.ao:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ib = lshr i32 %i.i, 23
  %i.ic = and i32 %i.ib, 31
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i.i181.i.i = zext i32 %i.if to i64 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !23
  %.not.i.i.i182.i.not.i = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i.i182.i.not.i, label %bb.ap, label %bb.aq, !prof !32

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 1, i64 %.sroa.3.8.insert.ext.i.i181.i.i)
  %.pre89.i.a = load i32, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ij = load ptr, ptr %i.ig, align 8, !tbaa !25 ; 2 uses
  store i8 1, ptr %i.ij, align 1
  %.sroa.4.0..sroa_idx.i.i.i183.i.i = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i181.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i183.i.i, align 1
  %i.ik = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.il = add i32 %i.ik, 1                        ; 2 uses
  store i32 %i.il, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i: ; preds = %bb.aq, %bb.ap
  %i.im = phi i32 [ %.pre89.i.a, %bb.ap ], [ %i.il, %bb.aq ] ; 2 uses
  %i.in = lshr i32 %i.g, 2
  %i.io = and i32 %i.in, 31
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i.i185.i.i = zext i32 %i.ir to i64 ; 2 uses
  %i.is = load i32, ptr %i.ih, align 4, !tbaa !23
  %.not.i.i.i186.i.i = icmp ult i32 %i.im, %i.is
  br i1 %.not.i.i.i186.i.i, label %bb.as, label %bb.ar, !prof !24

bb.ar:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 1, i64 %.sroa.3.8.insert.ext.i.i185.i.i)
  %.pre90.i = load i32, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i

bb.as:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit184.i.i
  %i.it = zext i32 %i.im to i64
  %i.iu = load ptr, ptr %i.ig, align 8, !tbaa !25
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.iu, i64 %i.it ; 2 uses
  store i8 1, ptr %i.iv, align 1
  %.sroa.4.0..sroa_idx.i.i.i187.i.i = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i185.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i187.i.i, align 1
  %i.iw = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.ix = add i32 %i.iw, 1                        ; 2 uses
  store i32 %i.ix, ptr %i.gv, align 8, !tbaa !21
  br label %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i

_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i: ; preds = %bb.as, %bb.ar
  %i.iy = phi i32 [ %i.ix, %bb.as ], [ %.pre90.i, %bb.ar ] ; 2 uses
  %i.iz = shl nuw i32 %i.q, 16
  %i.ja = ashr exact i32 %i.iz, 16
  %i.jb = sext i32 %i.ja to i64                   ; 2 uses
  %i.jc = load i32, ptr %i.ih, align 4, !tbaa !23
  %.not.i.i.i136.i = icmp ult i32 %i.iy, %i.jc
  br i1 %.not.i.i.i136.i, label %bb.au, label %bb.at, !prof !24

bb.at:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 2, i64 %i.jb)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.au:                                            ; preds = %_Z22DecodeGPRRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit188.i.i
  %i.jd = zext i32 %i.iy to i64
  %i.je = load ptr, ptr %i.ig, align 8, !tbaa !25
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %i.jd ; 2 uses
  store i8 2, ptr %i.jf, align 1
  %.sroa.4.0..sroa_idx.i.i.i137.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store i64 %i.jb, ptr %.sroa.4.0..sroa_idx.i.i.i137.i, align 1
  %i.jg = load i32, ptr %i.gv, align 8, !tbaa !21
  %i.jh = add i32 %i.jg, 1
  store i32 %i.jh, ptr %i.gv, align 8, !tbaa !21
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread.i

bb.av:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit117.i
  %i.ji = lshr i32 %i.i, 23
  %i.jj = and i32 %i.ji, 31
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jk
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !20
  %.sroa.3.8.insert.ext.i.i189.i.i = zext i32 %i.jm to i64 ; 2 uses
end_hunk_0
