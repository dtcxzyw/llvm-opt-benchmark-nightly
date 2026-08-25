Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ModuleDebugInfoPrinter?download=true
inline.NumInlined: 376
inline.NumDeleted: 241
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.25", %"class.llvm::SmallPtrSet.28" }
%"class.llvm::SmallPtrSet.25" = type { %"class.llvm::SmallPtrSetImpl.base.27", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.27" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::SmallPtrSet.28" = type { %"class.llvm::SmallPtrSetImpl.base.30", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.30" = type { %"class.llvm::SmallPtrSetImplBase.base" }

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [15 x i8] c"Compile unit: \00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown-language(\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Subprogram: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" ('\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"')\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Global variable: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Type:\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"unknown-encoding(\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unknown-tag(\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" (identifier: '\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Macro: \00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unknown-macinfo(\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" = '\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" at line \00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c" from \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8

@_ZN4llvm26ModuleDebugInfoPrinterPassC1ERNS_11raw_ostreamE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm26ModuleDebugInfoPrinterPassC2ERNS_11raw_ostreamE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm26ModuleDebugInfoPrinterPassC2ERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.c, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.e, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 8, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.i, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 0, ptr %i.j, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 8, ptr %i.k, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.m, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 0, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 8, ptr %i.o, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.q, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i32 0, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 332
  store i32 8, ptr %i.s, align 4, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.u, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %i.v, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 8, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 568
  store ptr %i.y, ptr %i.x, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 32, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 556
  store i32 0, ptr %i.aa, align 4, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i8 1, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %1, ptr %i.ac, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm26ModuleDebugInfoPrinterPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr noundef nonnull align 8 dereferenceable(832) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4llvm15DebugInfoFinder13processModuleERKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(824) %1, ptr noundef nonnull align 8 dereferenceable(1288) %2) #4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22, !nonnull !57, !align !58 ; 55 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !11   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not128.i = icmp eq i32 %i.e, 0
  br i1 %.not128.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 10 uses
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !11   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx150.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx150.i
  %.not170130.i = icmp eq i32 %i.m, 0
  br i1 %.not170130.i, label %._crit_edge134.i, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %._crit_edge.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 8 uses
  br label %bb.ac

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %.lr.ph.i
  %.0129.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.dj, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.r = load ptr, ptr %.0129.i, align 8, !tbaa !59 ; 10 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 14
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str, i64 noundef 14) #4 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.t, ptr noundef nonnull align 1 dereferenceable(14) @.str, i64 14, i1 false)
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !66
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ab, align 8 ; 2 uses
  %i.ac = and i64 %.sroa.01.0.copyload.i.i, 281474976710656
  %.not124.i = icmp eq i64 %i.ac, 0
  %.sroa.028.4.extract.shift30.i = lshr i64 %.sroa.01.0.copyload.i.i, 32 ; 2 uses
  br i1 %.not124.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %.sroa.028.4.extract.trunc.i = trunc i64 %.sroa.028.4.extract.shift30.i to i16
  %i.ad = tail call { ptr, i64 } @_ZN4llvm5dwarf24SourceLanguageNameStringENS0_18SourceLanguageNameE(i16 noundef zeroext %.sroa.028.4.extract.trunc.i) #4
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %.sroa.028.4.extract.trunc31.i = trunc nuw i64 %.sroa.028.4.extract.shift30.i to i32
  %i.ae = and i32 %.sroa.028.4.extract.trunc31.i, 65535
  %i.af = tail call { ptr, i64 } @_ZN4llvm5dwarf14LanguageStringEj(i32 noundef %i.ae) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i64 } [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %.sroa.025.0.i = extractvalue { ptr, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.526.0.i = extractvalue { ptr, i64 } %.pn.i, 1 ; 5 uses
  %i.ag = icmp eq i64 %.sroa.526.0.i, 0
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !66  ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ugt i64 %.sroa.526.0.i, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %.sroa.025.0.i, i64 noundef %.sroa.526.0.i) #4 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %.sroa.025.0.i, i64 %.sroa.526.0.i, i1 false)
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.526.0.i
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !66
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.k:                                             ; preds = %bb.g
  %i.aq = icmp ult i64 %i.al, 17
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull @.str.1, i64 noundef 17) #4
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185.i

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ai, ptr noundef nonnull align 1 dereferenceable(17) @.str.1, i64 17, i1 false)
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store ptr %i.at, ptr %i.i, align 8, !tbaa !66
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit185.i

_ZN4llvm11raw_ostreamlsEPKc.exit185.i:            ; preds = %bb.m, %bb.l
  %.0.i.i184.i = phi ptr [ %i.ar, %bb.l ], [ %i.b, %bb.m ]
  %.sroa.01.0.copyload.i186.i = load i64, ptr %i.ab, align 8
  %.sroa.023.4.extract.shift.i = lshr i64 %.sroa.01.0.copyload.i186.i, 32
  %i.au = and i64 %.sroa.023.4.extract.shift.i, 65535
  %i.av = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i184.i, i64 noundef %i.au) #4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !66 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185.i
  %i.bb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull @.str.2, i64 noundef 1) #4 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit185.i
  store i8 41, ptr %i.az, align 1
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.ay, align 8, !tbaa !66
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.o, %bb.n, %bb.j, %bb.i
  %i.be = load i8, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %i.bf = icmp eq i8 %i.be, 16
  br i1 %i.bf, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.bg = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8            ; 3 uses
  %i.bi = and i64 %i.bh, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds i8, ptr %i.r, i64 -32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bl = lshr i64 %i.bh, 2
  %i.bm = and i64 %i.bl, 15
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bn
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i.i

_ZNK4llvm7DIScope7getFileEv.exit.i.i:             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bo, %bb.r ], [ %i.bk, %bb.q ]
  %i.bp = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.not.i.i, label %_ZNK4llvm7DIScope11getFilenameEv.exit.thread.i, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i

_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i:      ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.i.i, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i
  %i.bq = phi ptr [ %i.bp, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ], [ %i.r, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = and i64 %i.bs, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 -32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i

bb.t:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i.i
  %i.bw = lshr i64 %i.bs, 2
  %i.bx = and i64 %i.bw, 15
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.by
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %bb.s ]
  %i.ca = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.not.i.i.i.i, label %_ZNK4llvm7DIScope11getFilenameEv.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i
  %i.cb = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #4 ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !67
  br label %_ZNK4llvm7DIScope11getFilenameEv.exit.i

_ZNK4llvm7DIScope11getFilenameEv.exit.i:          ; preds = %bb.u, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i
  %i.ce = phi i8 [ %i.be, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i ], [ %.pre.i, %bb.u ]
  %.sroa.3.1.i.i = phi i64 [ 0, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i ], [ %i.cd, %bb.u ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ null, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i.i ], [ %i.cc, %bb.u ] ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 16
  br i1 %i.cf, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i200.i, label %_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge

_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge: ; preds = %_ZNK4llvm7DIScope11getFilenameEv.exit.i
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNK4llvm7DIScope11getFilenameEv.exit.thread.i

_ZNK4llvm7DIScope11getFilenameEv.exit.thread.i:   ; preds = %_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge, %_ZNK4llvm7DIScope7getFileEv.exit.i.i
  %i.cg = phi i64 [ %.pre, %_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge ], [ %i.bh, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ] ; 2 uses
  %.sroa.0.1.i238.i = phi ptr [ %.sroa.0.1.i.i, %_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge ], [ @.str.21, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ] ; 2 uses
  %.sroa.3.1.i235.i = phi i64 [ %.sroa.3.1.i.i, %_ZNK4llvm7DIScope11getFilenameEv.exit.i._ZNK4llvm7DIScope11getFilenameEv.exit.thread.i_crit_edge ], [ 0, %_ZNK4llvm7DIScope7getFileEv.exit.i.i ] ; 2 uses
  %i.ch = and i64 %i.cg, 2
  %.not.i.i.i.i.i196.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i196.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm7DIScope11getFilenameEv.exit.thread.i
  %i.ci = getelementptr inbounds i8, ptr %i.r, i64 -32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !8
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i197.i

bb.w:                                             ; preds = %_ZNK4llvm7DIScope11getFilenameEv.exit.thread.i
  %i.ck = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.cl = lshr i64 %i.cg, 2
  %i.cm = and i64 %i.cl, 15
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cn
  br label %_ZNK4llvm7DIScope7getFileEv.exit.i197.i

_ZNK4llvm7DIScope7getFileEv.exit.i197.i:          ; preds = %bb.w, %bb.v
  %.sroa.0.0.i.i.i.i.i198.i = phi ptr [ %i.co, %bb.w ], [ %i.cj, %bb.v ]
  %i.cp = load ptr, ptr %.sroa.0.0.i.i.i.i.i198.i, align 8, !tbaa !70 ; 2 uses
  %.not.not.i199.i = icmp eq ptr %i.cp, null
  br i1 %.not.not.i199.i, label %_ZNK4llvm7DIScope12getDirectoryEv.exit.i, label %_ZNK4llvm7DIScope7getFileEv.exit.thread.i200.i

_ZNK4llvm7DIScope7getFileEv.exit.thread.i200.i:   ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.i197.i, %_ZNK4llvm7DIScope11getFilenameEv.exit.i
  %.sroa.0.1.i236.i = phi ptr [ %.sroa.0.1.i238.i, %_ZNK4llvm7DIScope7getFileEv.exit.i197.i ], [ %.sroa.0.1.i.i, %_ZNK4llvm7DIScope11getFilenameEv.exit.i ] ; 2 uses
  %.sroa.3.1.i233.i = phi i64 [ %.sroa.3.1.i235.i, %_ZNK4llvm7DIScope7getFileEv.exit.i197.i ], [ %.sroa.3.1.i.i, %_ZNK4llvm7DIScope11getFilenameEv.exit.i ] ; 2 uses
  %i.cq = phi ptr [ %i.cp, %_ZNK4llvm7DIScope7getFileEv.exit.i197.i ], [ %i.r, %_ZNK4llvm7DIScope11getFilenameEv.exit.i ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %i.ct = and i64 %i.cs, 2
  %.not.i.i.i.i.i.i201.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i201.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i200.i
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 -32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !8
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i202.i

bb.y:                                             ; preds = %_ZNK4llvm7DIScope7getFileEv.exit.thread.i200.i
  %i.cw = lshr i64 %i.cs, 2
  %i.cx = and i64 %i.cw, 15
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cy
  br label %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i202.i

_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i202.i: ; preds = %bb.y, %bb.x
  %.sroa.0.0.i.i.i.i.i.i203.i = phi ptr [ %i.cz, %bb.y ], [ %i.cv, %bb.x ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i203.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !70 ; 2 uses
  %.not.not.i.i.i204.i = icmp eq ptr %i.db, null
  br i1 %.not.not.i.i.i204.i, label %_ZNK4llvm7DIScope12getDirectoryEv.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i202.i
  %i.dc = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #4 ; 2 uses
  %i.dd = extractvalue { ptr, i64 } %i.dc, 0
  %i.de = extractvalue { ptr, i64 } %i.dc, 1
  br label %_ZNK4llvm7DIScope12getDirectoryEv.exit.i

_ZNK4llvm7DIScope12getDirectoryEv.exit.i:         ; preds = %bb.z, %_ZNK4llvm6DINode12getOperandAsINS_8MDStringEEEPT_j.exit.i.i.i202.i, %_ZNK4llvm7DIScope7getFileEv.exit.i197.i
end_hunk_0
