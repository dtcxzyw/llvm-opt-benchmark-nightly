Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/TarOut?download=true
inline.NumInlined: 80
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.CStringBase = type { ptr, i32, i32 }
%"struct.NArchive::NTar::CItem" = type <{ %class.CStringBase, i64, i32, i32, i32, i32, i32, i32, %class.CStringBase, %class.CStringBase, %class.CStringBase, [8 x i8], i8, i8, i8, [5 x i8] }>

$_ZN8NArchive4NTar5CItemC2ERKS1_ = comdat any

$_ZN8NArchive4NTar5CItemaSERKS1_ = comdat any

$_ZN8NArchive4NTar5CItemD2Ev = comdat any

$_ZN11CStringBaseIcEpLEc = comdat any

$_ZNK11CStringBaseIcE3MidEii = comdat any

@_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE = external local_unnamed_addr global ptr, align 8
@_ZN8NArchive4NTar11NFileHeader9kLongLinkE = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NTar11COutArchive10WriteBytesEPKvj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !30 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = zext i32 %2 to i64
  %i.c = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %i.a, ptr noundef %1, i64 noundef %i.b)
  ret i32 %i.c
}

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive4NTar11COutArchive6CreateEP20ISequentialOutStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !32 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e), !inline_history !31 ; 0 uses
  br label %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit

_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NTar11COutArchive15WriteHeaderRealERKNS0_5CItemE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(107) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !37 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 6 uses
  %3 = alloca %class.CStringBase, align 8         ; 6 uses
  %4 = alloca %class.CStringBase, align 8         ; 6 uses
  %5 = alloca %class.CStringBase, align 8         ; 6 uses
  %6 = alloca %class.CStringBase, align 8         ; 6 uses
  %i.a = alloca [512 x i8], align 16              ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = icmp sgt i32 %i.c, 100
  br i1 %i.d, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.g, ptr %i.h, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.g, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 100
  %or.cond.i = select i1 %.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit, label %bb.c, !llvm.loop !35

_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit:         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 100 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.l = zext i32 %i.k to i64
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %6, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %i.o = icmp slt i32 %i.n, 8                     ; 2 uses
  br i1 %i.o, label %bb.d, label %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i

._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i: ; preds = %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !17
  br label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i

bb.d:                                             ; preds = %_ZN8NArchive4NTarL9MyStrNCpyEPcPKci.exit
  %i.p = sub i32 7, %i.n                          ; 2 uses
  %.not.i60 = icmp eq i32 %i.n, 7
  br i1 %.not.i60, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %smax.i = call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %i.q = zext nneg i32 %smax.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.i, i8 32, i64 %i.q, i1 false), !tbaa !13
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 %i.r
  %i.t = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.i
  %.04.i.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.t, %._crit_edge.i ], [ %i.u, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.v = load i8, ptr %.0.i.i, align 1, !tbaa !13 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.v, ptr %.04.i.i, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, label %bb.e, !llvm.loop !0

_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i:            ; preds = %bb.e, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre.i, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i ], [ %i.t, %bb.e ] ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit, label %bb.f

bb.f:                                             ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.x) #13
  br label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit

_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit:    ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br i1 %i.o, label %bb.g, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

bb.g:                                             ; preds = %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 108 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ac = zext i32 %i.ab to i64
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %5, i64 noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !16 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 8                   ; 2 uses
  br i1 %i.af, label %bb.h, label %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i61

._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i61: ; preds = %bb.g
  %.pre.i62 = load ptr, ptr %5, align 8, !tbaa !17
  br label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63

bb.h:                                             ; preds = %bb.g
  %i.ag = sub i32 7, %i.ae                        ; 2 uses
  %.not.i64 = icmp eq i32 %i.ae, 7
  br i1 %.not.i64, label %._crit_edge.i67, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.h
  %smax.i66 = call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %i.ah = zext nneg i32 %smax.i66 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.z, i8 32, i64 %i.ah, i1 false), !tbaa !13
  br label %._crit_edge.i67

._crit_edge.i67:                                  ; preds = %.lr.ph.preheader.i65, %bb.h
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds i8, ptr %i.z, i64 %i.ai
  %i.ak = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge.i67
  %.04.i.i68 = phi ptr [ %i.aj, %._crit_edge.i67 ], [ %i.an, %bb.i ] ; 2 uses
  %.0.i.i69 = phi ptr [ %i.ak, %._crit_edge.i67 ], [ %i.al, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i69, i64 1
  %i.am = load i8, ptr %.0.i.i69, align 1, !tbaa !13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.04.i.i68, i64 1
  store i8 %i.am, ptr %.04.i.i68, align 1, !tbaa !13
  %.not.i.i70 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i70, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63, label %bb.i, !llvm.loop !0

_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63:          ; preds = %bb.i, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i61
  %i.ao = phi ptr [ %.pre.i62, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i61 ], [ %i.ak, %bb.i ] ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71, label %bb.j

bb.j:                                             ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #13
  br label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71

_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71:  ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i63, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br i1 %i.af, label %bb.k, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

bb.k:                                             ; preds = %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 116 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.at = zext i32 %i.as to i64
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %4, i64 noundef %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  %i.aw = icmp slt i32 %i.av, 8                   ; 2 uses
  br i1 %i.aw, label %bb.l, label %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i72

._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i72: ; preds = %bb.k
  %.pre.i73 = load ptr, ptr %4, align 8, !tbaa !17
  br label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74

bb.l:                                             ; preds = %bb.k
  %i.ax = sub i32 7, %i.av                        ; 2 uses
  %.not.i75 = icmp eq i32 %i.av, 7
  br i1 %.not.i75, label %._crit_edge.i78, label %.lr.ph.preheader.i76

.lr.ph.preheader.i76:                             ; preds = %bb.l
  %smax.i77 = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %i.ay = zext nneg i32 %smax.i77 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aq, i8 32, i64 %i.ay, i1 false), !tbaa !13
  br label %._crit_edge.i78

._crit_edge.i78:                                  ; preds = %.lr.ph.preheader.i76, %bb.l
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds i8, ptr %i.aq, i64 %i.az
  %i.bb = load ptr, ptr %4, align 8, !tbaa !17    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.i78
  %.04.i.i79 = phi ptr [ %i.ba, %._crit_edge.i78 ], [ %i.be, %bb.m ] ; 2 uses
  %.0.i.i80 = phi ptr [ %i.bb, %._crit_edge.i78 ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i80, i64 1
  %i.bd = load i8, ptr %.0.i.i80, align 1, !tbaa !13 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04.i.i79, i64 1
  store i8 %i.bd, ptr %.04.i.i79, align 1, !tbaa !13
  %.not.i.i81 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i81, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74, label %bb.m, !llvm.loop !0

_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74:          ; preds = %bb.m, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i72
  %i.bf = phi ptr [ %.pre.i73, %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge.i72 ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82, label %bb.n

bb.n:                                             ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #13
  br label %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82

_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82:  ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i74, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.aw, label %bb.o, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

bb.o:                                             ; preds = %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 124 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %3, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !16 ; 4 uses
  %i.bm = icmp sgt i32 %i.bl, 12
  br i1 %i.bm, label %thread-pre-split.i, label %bb.p

thread-pre-split.i:                               ; preds = %bb.o
  store <4 x i8> <i8 -128, i8 0, i8 0, i8 0>, ptr %i.bh, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %7 = bitcast i64 %i.bj to <8 x i8>
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %8, ptr %i.bn, align 16, !tbaa !13
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !17
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bo = sub i32 12, %i.bl                       ; 2 uses
  %.not.i83 = icmp eq i32 %i.bl, 12
  br i1 %.not.i83, label %._crit_edge.i86, label %.lr.ph.preheader.i84

.lr.ph.preheader.i84:                             ; preds = %bb.p
  %smax.i85 = call i32 @llvm.smax.i32(i32 %i.bo, i32 1)
  %i.bp = zext nneg i32 %smax.i85 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bh, i8 32, i64 %i.bp, i1 false), !tbaa !13
  br label %._crit_edge.i86

._crit_edge.i86:                                  ; preds = %.lr.ph.preheader.i84, %bb.p
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 %i.bq
  %i.bs = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.bt = sext i32 %i.bl to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bs, i64 %i.bt, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i86, %thread-pre-split.i
  %i.bu = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.bs, %._crit_edge.i86 ] ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #13
  br label %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit

_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit:   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !41 ; 5 uses
  %i.bz = zext i32 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %2, i64 noundef %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !16 ; 4 uses
  %i.cc = icmp sgt i32 %i.cb, 12
  br i1 %i.cc, label %thread-pre-split.i91, label %bb.s

thread-pre-split.i91:                             ; preds = %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit
  store i8 -128, ptr %i.bw, align 8, !tbaa !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 137
  %9 = lshr i32 %i.by, 24
  %10 = trunc nuw i32 %9 to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.cd, i8 0, i64 7, i1 false)
  store i8 %10, ptr %i.ce, align 16, !tbaa !13
  %11 = lshr i32 %i.by, 16
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  store i8 %12, ptr %13, align 1, !tbaa !13
  %14 = lshr i32 %i.by, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 %15, ptr %16, align 2, !tbaa !13
  %17 = trunc i32 %i.by to i8
  %18 = getelementptr inbounds nuw i8, ptr %i.a, i64 147
  store i8 %17, ptr %18, align 1, !tbaa !13
  %.pr.i92 = load ptr, ptr %2, align 8, !tbaa !17
  br label %bb.t

bb.s:                                             ; preds = %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit
  %i.cf = sub i32 12, %i.cb                       ; 2 uses
  %.not.i87 = icmp eq i32 %i.cb, 12
  br i1 %.not.i87, label %._crit_edge.i90, label %.lr.ph.preheader.i88

.lr.ph.preheader.i88:                             ; preds = %bb.s
  %smax.i89 = call i32 @llvm.smax.i32(i32 %i.cf, i32 1)
  %i.cg = zext nneg i32 %smax.i89 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i8 32, i64 %i.cg, i1 false), !tbaa !13
  br label %._crit_edge.i90

._crit_edge.i90:                                  ; preds = %.lr.ph.preheader.i88, %bb.s
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds i8, ptr %i.bw, i64 %i.ch
  %i.cj = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ck = sext i32 %i.cb to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 1 %i.cj, i64 %i.ck, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i90, %thread-pre-split.i91
  %i.cl = phi ptr [ %.pr.i92, %thread-pre-split.i91 ], [ %i.cj, %._crit_edge.i90 ] ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #13
  br label %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93

_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 148 ; 2 uses
  %i.co = load ptr, ptr @_ZN8NArchive4NTar11NFileHeader15kCheckSumBlanksE, align 8, !tbaa !23
  %i.cp = load i64, ptr %i.co, align 1
  store i64 %i.cp, ptr %i.cn, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !24
  store i8 %i.cs, ptr %i.cq, align 4, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val59 = load i32, ptr %i.ct, align 8, !tbaa !16
  %.not.i94 = icmp slt i32 %.val59, 100
  br i1 %.not.i94, label %.preheader.i.preheader, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

.preheader.i.preheader:                           ; preds = %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val58 = load ptr, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 157
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.04.i.i96 = phi ptr [ %i.cy, %.preheader.i ], [ %i.cv, %.preheader.i.preheader ] ; 2 uses
  %.0.i.i97 = phi ptr [ %i.cw, %.preheader.i ], [ %.val58, %.preheader.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i97, i64 1
  %i.cx = load i8, ptr %.0.i.i97, align 1, !tbaa !13 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.04.i.i96, i64 1
  store i8 %i.cx, ptr %.04.i.i96, align 1, !tbaa !13
  %.not.i.i98 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i98, label %bb.v, label %.preheader.i, !llvm.loop !0

bb.v:                                             ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 257
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.db = load i64, ptr %i.da, align 8
  store i64 %i.db, ptr %i.cz, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val57 = load i32, ptr %i.dc, align 8, !tbaa !16
  %.not.i99 = icmp slt i32 %.val57, 32
  br i1 %.not.i99, label %.preheader.i101.preheader, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

.preheader.i101.preheader:                        ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val56 = load ptr, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 265
  br label %.preheader.i101

.preheader.i101:                                  ; preds = %.preheader.i101.preheader, %.preheader.i101
  %.04.i.i102 = phi ptr [ %i.dh, %.preheader.i101 ], [ %i.de, %.preheader.i101.preheader ] ; 2 uses
  %.0.i.i103 = phi ptr [ %i.df, %.preheader.i101 ], [ %.val56, %.preheader.i101.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i103, i64 1
  %i.dg = load i8, ptr %.0.i.i103, align 1, !tbaa !13 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.04.i.i102, i64 1
  store i8 %i.dg, ptr %.04.i.i102, align 1, !tbaa !13
  %.not.i.i104 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i104, label %bb.w, label %.preheader.i101, !llvm.loop !0

bb.w:                                             ; preds = %.preheader.i101
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val55 = load i32, ptr %i.di, align 8, !tbaa !16
  %.not.i106 = icmp slt i32 %.val55, 32
  br i1 %.not.i106, label %.preheader.i108.preheader, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

.preheader.i108.preheader:                        ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 297
  br label %.preheader.i108

.preheader.i108:                                  ; preds = %.preheader.i108.preheader, %.preheader.i108
  %.04.i.i109 = phi ptr [ %i.dn, %.preheader.i108 ], [ %i.dk, %.preheader.i108.preheader ] ; 2 uses
  %.0.i.i110 = phi ptr [ %i.dl, %.preheader.i108 ], [ %.val, %.preheader.i108.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i110, i64 1
  %i.dm = load i8, ptr %.0.i.i110, align 1, !tbaa !13 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.04.i.i109, i64 1
  store i8 %i.dm, ptr %.04.i.i109, align 1, !tbaa !13
  %.not.i.i111 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i111, label %bb.x, label %.preheader.i108, !llvm.loop !0

bb.x:                                             ; preds = %.preheader.i108
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !42, !range !43, !noundef !44
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 329
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !45
  %i.du = call fastcc noundef zeroext i1 @_ZN8NArchive4NTarL16MakeOctalString8EPcj(ptr noundef %i.dr, i32 noundef %i.dt)
  br i1 %i.du, label %bb.z, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !46, !range !43, !noundef !44
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.aa, label %vector.body.preheader

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 337
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !47
  %i.eb = call fastcc noundef zeroext i1 @_ZN8NArchive4NTarL16MakeOctalString8EPcj(ptr noundef %i.dy, i32 noundef %i.ea)
  br i1 %i.eb, label %vector.body.preheader, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

vector.body.preheader:                            ; preds = %bb.z, %bb.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.en, %vector.body ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.eo, %vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load = load <4 x i8>, ptr %i.ec, align 16, !tbaa !13
  %wide.load128 = load <4 x i8>, ptr %i.ed, align 4, !tbaa !13
  %i.ee = zext <4 x i8> %wide.load to <4 x i32>
  %i.ef = zext <4 x i8> %wide.load128 to <4 x i32>
  %i.eg = add <4 x i32> %vec.phi, %i.ee
  %i.eh = add <4 x i32> %vec.phi127, %i.ef
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.ej, align 8, !tbaa !13
  %wide.load128.1 = load <4 x i8>, ptr %i.ek, align 4, !tbaa !13
  %i.el = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.em = zext <4 x i8> %wide.load128.1 to <4 x i32>
  %i.en = add <4 x i32> %i.eg, %i.el              ; 2 uses
  %i.eo = add <4 x i32> %i.eh, %i.em              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ep = icmp eq i64 %index.next.1, 512
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eo, %i.en
  %i.eq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.er = call fastcc noundef zeroext i1 @_ZN8NArchive4NTarL16MakeOctalString8EPcj(ptr noundef %i.cn, i32 noundef %i.eq)
  br i1 %i.er, label %bb.ab, label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

bb.ab:                                            ; preds = %middle.block
  %i.es = load ptr, ptr %0, align 8, !tbaa !12
  %i.et = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %i.es, ptr noundef nonnull %i.a, i64 noundef 512)
  br label %_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit

_ZN8NArchive4NTarL10CopyStringEPcRK11CStringBaseIcEi.exit: ; preds = %bb.w, %bb.v, %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93, %bb.ab, %middle.block, %bb.aa, %bb.y, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit, %bb.a
  %.154 = phi i32 [ -2147467259, %bb.a ], [ -2147467259, %bb.aa ], [ -2147467259, %bb.y ], [ -2147467259, %bb.v ], [ -2147467259, %_ZN8NArchive4NTarL17MakeOctalString12EPcy.exit93 ], [ -2147467259, %middle.block ], [ -2147467259, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit82 ], [ -2147467259, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit71 ], [ -2147467259, %_ZN8NArchive4NTarL16MakeOctalString8EPcj.exit ], [ %i.et, %bb.ab ], [ -2147467259, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.154
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN8NArchive4NTarL16MakeOctalString8EPcj(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !48 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = zext i32 %1 to i64
  call fastcc void @_ZN8NArchive4NTarL15MakeOctalStringEy(ptr dead_on_unwind noalias writable align 8 %2, i64 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.d = icmp slt i32 %i.c, 8                     ; 2 uses
  br i1 %i.d, label %bb.b, label %._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge

._Z12MyStringCopyIcEPT_S1_PKS0_.exit_crit_edge:   ; preds = %bb.a
  %.pre = load ptr, ptr %2, align 8, !tbaa !17
  br label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit

end_hunk_0
begin_hunk_1_@_Znam
; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11CStringBaseIcE3MidEii(ptr dead_on_unwind noalias writable sret(%class.CStringBase) align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !100 {
bb.a:
  %i.a = add nsw i32 %3, %2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %2
  %spec.select = select i1 %i.d, i32 %i.e, i32 %3 ; 8 uses
  %i.f = icmp eq i32 %2, 0
  %i.g = icmp eq i32 %spec.select, %i.c
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN11CStringBaseIcEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.h = add nsw i32 %i.c, 1                      ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = sext i32 %i.h to i64
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #14 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  store i8 0, ptr %i.l, align 1, !tbaa !13
  store i32 %i.h, ptr %i.j, align 4, !tbaa !27
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %._crit_edge.i.i, %bb.b
  %i.m = phi ptr [ null, %bb.b ], [ %i.l, %._crit_edge.i.i ]
  %i.n = load ptr, ptr %1, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.q, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.p = load i8, ptr %.0.i.i, align 1, !tbaa !13 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.p, ptr %.04.i.i, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2ERKS0_.exit, label %bb.c, !llvm.loop !0

_ZN11CStringBaseIcEC2ERKS0_.exit:                 ; preds = %bb.c
  %i.r = load i32, ptr %i.b, align 8, !tbaa !16
  br label %bb.e

_ZN11CStringBaseIcEC2Ev.exit:                     ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #14 ; 5 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !17
  store i8 0, ptr %i.u, align 1, !tbaa !13
  store i32 4, ptr %i.s, align 4, !tbaa !27
  %i.v = add nsw i32 %spec.select, 1              ; 3 uses
  %i.w = icmp eq i32 %i.v, 4
  br i1 %i.w, label %iter.check, label %bb.d

bb.d:                                             ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  %i.x = sext i32 %i.v to i64
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #14
          to label %_ZN11CStringBaseIcE11SetCapacityEi.exit unwind label %_ZN11CStringBaseIcED2Ev.exit ; 4 uses

_ZN11CStringBaseIcE11SetCapacityEi.exit:          ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #13
  store ptr %i.y, ptr %0, align 8, !tbaa !17
  store i8 0, ptr %i.y, align 1, !tbaa !13
  store i32 %i.v, ptr %i.s, align 4, !tbaa !27
  %i.z = icmp sgt i32 %spec.select, 0
  br i1 %i.z, label %iter.check, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.._crit_edge_crit_edge

_ZN11CStringBaseIcE11SetCapacityEi.exit.._crit_edge_crit_edge: ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit
  %.pre39 = sext i32 %spec.select to i64
  br label %._crit_edge

iter.check:                                       ; preds = %_ZN11CStringBaseIcEC2Ev.exit, %_ZN11CStringBaseIcE11SetCapacityEi.exit
  %i.aa = phi ptr [ %i.y, %_ZN11CStringBaseIcE11SetCapacityEi.exit ], [ %i.u, %_ZN11CStringBaseIcEC2Ev.exit ] ; 7 uses
  %i.ab = sext i32 %2 to i64                      ; 2 uses
  %i.ac = zext nneg i32 %spec.select to i64       ; 7 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %.pre, i64 %i.ab ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 3 uses
  %min.iters.check = icmp ult i32 %spec.select, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.pre44 = ptrtoaddr ptr %.pre to i64
  %i.ad = ptrtoaddr ptr %i.aa to i64
  %i.ae = add i64 %.pre44, %i.ab
  %i.af = sub i64 %i.ae, %i.ad
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check45 = icmp ult i32 %spec.select, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %umax, 28
  %n.vec = and i64 %umax, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !13
  %wide.load46 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <16 x i8> %wide.load, ptr %i.aj, align 1, !tbaa !13
  store <16 x i8> %wide.load46, ptr %i.ak, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %umax, 2147483644            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 3 uses
  %i.am = getelementptr i8, ptr %invariant.gep, i64 %index48
  %wide.load49 = load <4 x i8>, ptr %i.am, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %index48
  store <4 x i8> %wide.load49, ptr %i.an, align 1, !tbaa !13
  %index.next50 = add nuw i64 %index48, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next50, %n.vec47
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %n.vec47, %i.ac
  br i1 %cmp.n51, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec47, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN11CStringBaseIcE11SetCapacityEi.exit.._crit_edge_crit_edge
  %i.ap = phi ptr [ %i.y, %_ZN11CStringBaseIcE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.aa, %middle.block ], [ %i.aa, %vec.epilog.middle.block ], [ %i.aa, %vec.epilog.scalar.ph ]
  %.pre-phi = phi i64 [ %.pre39, %_ZN11CStringBaseIcE11SetCapacityEi.exit.._crit_edge_crit_edge ], [ %i.ac, %middle.block ], [ %i.ac, %vec.epilog.middle.block ], [ %i.ac, %vec.epilog.scalar.ph ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi
  store i8 0, ptr %i.aq, align 1, !tbaa !13
  br label %bb.e

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #13
  resume { ptr, i32 } %i.ar

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.as = load i8, ptr %gep, align 1, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv
  store i8 %i.as, ptr %i.at, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.au, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !99

bb.e:                                             ; preds = %._crit_edge, %_ZN11CStringBaseIcEC2ERKS0_.exit
  %spec.select.sink = phi i32 [ %spec.select, %._crit_edge ], [ %i.r, %_ZN11CStringBaseIcEC2ERKS0_.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.sink, ptr %i.av, align 8, !tbaa !16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !18}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 _ZTS20ISequentialOutStream", !9, i64 0}
!11 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTS11CStringBaseIcE", !14, i64 0, !7, i64 8, !7, i64 12}
!16 = !{!15, !7, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"long long", !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!"_ZTSN8NArchive4NTar5CItemE", !15, i64 0, !19, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !15, i64 48, !15, i64 64, !15, i64 80, !6, i64 96, !6, i64 104, !20, i64 105, !20, i64 106}
!22 = !{!21, !19, i64 16}
!23 = !{!14, !14, i64 0}
!24 = !{!21, !6, i64 104}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!15, !7, i64 12}
!28 = !{!"branch_weights", i32 4, i32 28}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{i64 -8056982535176321794}
!31 = distinct !{null}
!32 = !{i64 5810587501633394763}
!33 = !{!"vtable pointer", !5, i64 0}
!34 = !{!33, !33, i64 0}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18, !25, !26}
!37 = !{i64 -3086769616502789247}
!38 = !{!21, !7, i64 24}
!39 = !{!21, !7, i64 28}
!40 = !{!21, !7, i64 32}
!41 = !{!21, !7, i64 36}
!42 = !{!21, !20, i64 105}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!21, !7, i64 40}
!46 = !{!21, !20, i64 106}
!47 = !{!21, !7, i64 44}
!48 = !{i64 -8057987987125017718}
!49 = distinct !{!49, !18, !25, !26}
!50 = distinct !{!50, !18, !25, !26}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !18, !25}
!53 = distinct !{!53, !18, !25, !26}
!54 = distinct !{!54, !18, !25, !26}
!55 = distinct !{!55, !18, !26, !25}
!56 = !{i64 9204005438263154178}
!57 = distinct !{!57, !18, !25, !26}
!58 = distinct !{!58, !18, !25, !26}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !18, !25}
!61 = distinct !{!61, !18, !25, !26}
!62 = distinct !{!62, !18, !25, !26}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !18, !25}
!65 = distinct !{!65, !18, !25, !26}
!66 = distinct !{!66, !18, !25, !26}
!67 = distinct !{!67, !18, !26, !25}
!68 = distinct !{!68, !18, !25, !26}
!69 = distinct !{!69, !18, !25, !26}
!70 = distinct !{!70, !18, !26, !25}
!71 = !{i64 -1365843892699602146}
!72 = !{i64 154512685906461505}
!73 = distinct !{!73, !18, !25, !26}
!74 = distinct !{!74, !18, !25, !26}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !18, !25}
!77 = distinct !{!77, !18, !25, !26}
!78 = distinct !{!78, !18, !25, !26}
!79 = distinct !{!79, !18, !26, !25}
!80 = distinct !{!80, !18, !25, !26}
!81 = distinct !{!81, !18, !25, !26}
!82 = distinct !{!82, !18, !26, !25}
!83 = distinct !{!83, !18, !25, !26}
!84 = distinct !{!84, !18, !25, !26}
!85 = distinct !{!85, !18, !26, !25}
!86 = !{i64 -2301392859946241278}
!87 = !{i64 -6724413825142040119}
!88 = !{i64 7314070088350945548}
!89 = distinct !{!89, i1 true, !"_ZplIcE11CStringBaseIT_ERKS2_S1_"}
!90 = distinct !{!90, !89, !"_ZplIcE11CStringBaseIT_ERKS2_S1_: argument 0"}
!91 = !{i64 5731389938013409519}
!92 = !{!90}
!93 = distinct !{!93, !18, !25, !26}
!94 = distinct !{!94, !18, !25, !26}
!95 = distinct !{!95, !18, !26, !25}
!96 = !{i64 6973886134403465436}
!97 = distinct !{!97, !18, !25, !26}
!98 = distinct !{!98, !18, !25, !26}
!99 = distinct !{!99, !18, !25}
!100 = !{i64 4651050881156871045}
end_hunk_1
