inline.NumInlined: 32
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::debugging_internal::ElfMemImage::SymbolIterator" = type { %"struct.absl::lts_20250512::debugging_internal::ElfMemImage::SymbolInfo", i32, ptr }
%"struct.absl::lts_20250512::debugging_internal::ElfMemImage::SymbolInfo" = type { ptr, ptr, ptr, ptr }

@_ZN4absl12lts_2025051218debugging_internal11ElfMemImage20kInvalidBaseSentinelE = constant i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/debugging/internal/elf_mem_image.cc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"base != kInvalidBase\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bad pointer\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"index < GetNumSymbols()\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"index >= 0 && index < ehdr_->e_phnum\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"offset < strsize_\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"offset out of range\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"link_base_ < sym->st_value\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"symbol out of range\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"0 <= index && static_cast<size_t>(index) <= verdefnum_\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"image->IsPresent() || increment == 0\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"symbol && version_symbol\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"version_definition->vd_cnt == 1 || version_definition->vd_cnt == 2\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"wrong number of entries\00", align 1

@_ZN4absl12lts_2025051218debugging_internal11ElfMemImageC1EPKv = unnamed_addr alias void (ptr, ptr), ptr @_ZN4absl12lts_2025051218debugging_internal11ElfMemImageC2EPKv
@_ZN4absl12lts_2025051218debugging_internal11ElfMemImage14SymbolIteratorC1EPKvj = unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN4absl12lts_2025051218debugging_internal11ElfMemImage14SymbolIteratorC2EPKvj

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218debugging_internal11ElfMemImageC2EPKv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, @_ZN4absl12lts_2025051218debugging_internal11ElfMemImage20kInvalidBaseSentinelE
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 88, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051218debugging_internal11ElfMemImage4InitEPKv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051218debugging_internal11ElfMemImage4InitEPKv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 44), (48, 72)) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.h, align 8, !tbaa !8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  %.not68 = icmp eq i8 %i.i, 127
  br i1 %.not68, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %.not69 = icmp eq i8 %i.k, 69
  br i1 %.not69, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %.not70 = icmp eq i8 %i.m, 76
  br i1 %.not70, label %bb.e, label %bb.ai

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %.not71 = icmp eq i8 %i.o, 70
  br i1 %.not71, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %.not72 = icmp eq i8 %i.q, 2
  br i1 %.not72, label %bb.g, label %bb.ai

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %cond = icmp eq i8 %i.s, 1
  br i1 %cond, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %0, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i16, ptr %i.t, align 8, !tbaa !16   ; 5 uses
  %.not98 = icmp eq i16 %i.u, 0
  br i1 %.not98, label %._crit_edge.thread, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph

_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph: ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.y = load i16, ptr %i.x, align 2, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 3 uses
  %wide.trip.count = zext i16 %i.y to i64         ; 3 uses
  %i.aa = icmp eq i16 %i.u, 1
  br i1 %i.aa, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new

_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new: ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph
  %2 = and i16 %i.u, -2
  %unroll_iter = zext i16 %2 to i64
  br label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit

._crit_edge.unr-lcssa:                            ; preds = %bb.r
  %lcmp.mod.not = trunc i16 %i.u to i1
  br i1 %lcmp.mod.not, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader, label %._crit_edge

_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader: ; preds = %._crit_edge.unr-lcssa, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph
  %.epil.init = phi i64 [ -1, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph ], [ %i.au, %._crit_edge.unr-lcssa ] ; 4 uses
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.05689.epil.init = phi ptr [ null, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph ], [ %.157.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod180 = trunc i16 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.ab = mul nuw nsw i64 %indvars.iv.epil.init, %wide.trip.count
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21
  switch i32 %i.ad, label %._crit_edge [
    i32 1, label %bb.j
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader
  br label %._crit_edge

bb.j:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader
  %.not83.epil = icmp eq i64 %.epil.init, -1
  br i1 %.not83.epil, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !23 ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader, %bb.i, %bb.j, %bb.k, %._crit_edge.unr-lcssa
  %.lcssa177 = phi i64 [ %i.au, %._crit_edge.unr-lcssa ], [ %.epil.init, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader ], [ %.epil.init, %bb.j ], [ %i.af, %bb.k ], [ %.epil.init, %bb.i ] ; 2 uses
  %.157.lcssa = phi ptr [ %.157.1, %._crit_edge.unr-lcssa ], [ %.05689.epil.init, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.epil.preheader ], [ %.05689.epil.init, %bb.j ], [ %.05689.epil.init, %bb.k ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ag = icmp ne i64 %.lcssa177, -1
  %i.ah = icmp ne ptr %.157.lcssa, null
  %or.cond = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge.thread

_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit: ; preds = %bb.r, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new
  %i.ai = phi i64 [ -1, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new ], [ %i.au, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new ], [ %indvars.iv.next.1, %bb.r ] ; 3 uses
  %.05689 = phi ptr [ null, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new ], [ %.157.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.lr.ph.new ], [ %niter.next.1, %bb.r ]
  %i.aj = mul nuw nsw i64 %indvars.iv, %wide.trip.count
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21
  switch i32 %i.al, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1 [
    i32 1, label %bb.l
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit
  %.not83 = icmp eq i64 %i.ai, -1
  br i1 %.not83, label %bb.m, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23 ; 2 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !8
  br label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1

bb.n:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit
  br label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1

_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1: ; preds = %bb.l, %bb.m, %bb.n, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit
  %i.ao = phi i64 [ %i.ai, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit ], [ %i.ai, %bb.l ], [ %i.an, %bb.m ], [ %i.ai, %bb.n ] ; 4 uses
  %.157 = phi ptr [ %.05689, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit ], [ %.05689, %bb.l ], [ %.05689, %bb.m ], [ %i.ak, %bb.n ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ap = mul nuw nsw i64 %indvars.iv.next, %wide.trip.count
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ap ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !21
  switch i32 %i.ar, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1
  br label %bb.r

bb.p:                                             ; preds = %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1
  %.not83.1 = icmp eq i64 %i.ao, -1
  br i1 %.not83.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  store i64 %i.at, ptr %i.h, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1
  %i.au = phi i64 [ %i.ao, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1 ], [ %i.ao, %bb.p ], [ %i.at, %bb.q ], [ %i.ao, %bb.o ] ; 3 uses
  %.157.1 = phi ptr [ %.157, %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit.1 ], [ %.157, %bb.p ], [ %.157, %bb.q ], [ %i.aq, %bb.o ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi.exit, !llvm.loop !24

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.h, align 8, !tbaa !8
  br label %bb.ai

bb.s:                                             ; preds = %._crit_edge
  %i.av = ptrtoint ptr %1 to i64
  %i.aw = sub i64 %i.av, %.lcssa177               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.157.lcssa, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !23
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not7390 = icmp eq i64 %i.bb, 0
  br i1 %.not7390, label %._crit_edge95.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.ab
  %i.bc = phi i64 [ %i.bs, %bb.ab ], [ 0, %bb.s ] ; 8 uses
  %i.bd = phi i64 [ %i.bt, %bb.ab ], [ 0, %bb.s ] ; 8 uses
  %i.be = phi ptr [ %i.bu, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %i.bf = phi ptr [ %i.bv, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %i.bg = phi ptr [ %i.bw, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %i.bh = phi ptr [ %i.bx, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %i.bi = phi i64 [ %i.bz, %bb.ab ], [ %i.bb, %bb.s ]
  %.05993 = phi ptr [ %i.by, %bb.ab ], [ %i.ba, %bb.s ] ; 2 uses
  %.06092 = phi ptr [ %.161, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %.06291 = phi ptr [ %.163, %bb.ab ], [ null, %bb.s ] ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05993, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !14 ; 5 uses
  %i.bl = add nsw i64 %i.bk, %i.aw                ; 6 uses
  switch i64 %i.bi, label %bb.ab [
    i64 4, label %bb.t
    i64 1879047925, label %bb.u
    i64 6, label %bb.v
    i64 5, label %bb.w
    i64 1879048176, label %bb.x
    i64 1879048188, label %bb.y
    i64 1879048189, label %bb.z
    i64 10, label %bb.aa
  ]

bb.t:                                             ; preds = %.lr.ph
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %bb.ab

bb.u:                                             ; preds = %.lr.ph
  %i.bn = inttoptr i64 %i.bl to ptr
  br label %bb.ab

bb.v:                                             ; preds = %.lr.ph
  %i.bo = inttoptr i64 %i.bl to ptr               ; 2 uses
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !28
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph
  %i.bp = inttoptr i64 %i.bl to ptr               ; 2 uses
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !29
  br label %bb.ab

bb.x:                                             ; preds = %.lr.ph
  %i.bq = inttoptr i64 %i.bl to ptr               ; 2 uses
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !30
  br label %bb.ab

bb.y:                                             ; preds = %.lr.ph
  %i.br = inttoptr i64 %i.bl to ptr               ; 2 uses
  store ptr %i.br, ptr %i.d, align 8, !tbaa !31
  br label %bb.ab

bb.z:                                             ; preds = %.lr.ph
  store i64 %i.bk, ptr %i.g, align 8, !tbaa !32
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph
  store i64 %i.bk, ptr %i.f, align 8, !tbaa !33
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.bs = phi i64 [ %i.bc, %.lr.ph ], [ %i.bc, %bb.t ], [ %i.bc, %bb.u ], [ %i.bc, %bb.v ], [ %i.bc, %bb.w ], [ %i.bc, %bb.x ], [ %i.bc, %bb.y ], [ %i.bc, %bb.z ], [ %i.bk, %bb.aa ] ; 2 uses
  %i.bt = phi i64 [ %i.bd, %.lr.ph ], [ %i.bd, %bb.t ], [ %i.bd, %bb.u ], [ %i.bd, %bb.v ], [ %i.bd, %bb.w ], [ %i.bd, %bb.x ], [ %i.bd, %bb.y ], [ %i.bk, %bb.z ], [ %i.bd, %bb.aa ] ; 2 uses
  %i.bu = phi ptr [ %i.be, %.lr.ph ], [ %i.be, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ], [ %i.be, %bb.x ], [ %i.br, %bb.y ], [ %i.be, %bb.z ], [ %i.be, %bb.aa ] ; 2 uses
  %i.bv = phi ptr [ %i.bf, %.lr.ph ], [ %i.bf, %bb.t ], [ %i.bf, %bb.u ], [ %i.bf, %bb.v ], [ %i.bf, %bb.w ], [ %i.bq, %bb.x ], [ %i.bf, %bb.y ], [ %i.bf, %bb.z ], [ %i.bf, %bb.aa ] ; 2 uses
  %i.bw = phi ptr [ %i.bg, %.lr.ph ], [ %i.bg, %bb.t ], [ %i.bg, %bb.u ], [ %i.bg, %bb.v ], [ %i.bp, %bb.w ], [ %i.bg, %bb.x ], [ %i.bg, %bb.y ], [ %i.bg, %bb.z ], [ %i.bg, %bb.aa ] ; 2 uses
  %i.bx = phi ptr [ %i.bh, %.lr.ph ], [ %i.bh, %bb.t ], [ %i.bh, %bb.u ], [ %i.bo, %bb.v ], [ %i.bh, %bb.w ], [ %i.bh, %bb.x ], [ %i.bh, %bb.y ], [ %i.bh, %bb.z ], [ %i.bh, %bb.aa ] ; 2 uses
  %.163 = phi ptr [ %.06291, %.lr.ph ], [ %i.bm, %bb.t ], [ %.06291, %bb.u ], [ %.06291, %bb.v ], [ %.06291, %bb.w ], [ %.06291, %bb.x ], [ %.06291, %bb.y ], [ %.06291, %bb.z ], [ %.06291, %bb.aa ] ; 3 uses
  %.161 = phi ptr [ %.06092, %.lr.ph ], [ %.06092, %bb.t ], [ %i.bn, %bb.u ], [ %.06092, %bb.v ], [ %.06092, %bb.w ], [ %.06092, %bb.x ], [ %.06092, %bb.y ], [ %.06092, %bb.z ], [ %.06092, %bb.aa ] ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.05993, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26 ; 2 uses
  %.not73 = icmp eq i64 %i.bz, 0
  br i1 %.not73, label %._crit_edge95, label %.lr.ph, !llvm.loop !34

._crit_edge95:                                    ; preds = %bb.ab
  %i.ca = icmp eq ptr %i.bx, null
  %i.cb = icmp eq ptr %i.bw, null
  %i.cc = icmp eq ptr %i.bv, null
  %i.cd = icmp eq ptr %i.bu, null
  %i.ce = icmp eq i64 %i.bt, 0
  %i.cf = icmp eq i64 %i.bs, 0
  %i.cg = icmp eq ptr %.163, null                 ; 2 uses
  %i.ch = icmp eq ptr %.161, null
  %or.cond3.not154 = select i1 %i.cg, i1 %i.ch, i1 false
  %brmerge = select i1 %or.cond3.not154, i1 true, i1 %i.ca
  %brmerge147 = select i1 %brmerge, i1 true, i1 %i.cb
  %brmerge148 = select i1 %brmerge147, i1 true, i1 %i.cc
  %brmerge149 = select i1 %brmerge148, i1 true, i1 %i.cd
  %brmerge150 = select i1 %brmerge149, i1 true, i1 %i.ce
  %brmerge151 = select i1 %brmerge150, i1 true, i1 %i.cf
  br i1 %brmerge151, label %._crit_edge95.thread, label %bb.ac

._crit_edge95.thread:                             ; preds = %._crit_edge95, %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.h, align 8, !tbaa !8
  br label %bb.ai

bb.ac:                                            ; preds = %._crit_edge95
  br i1 %i.cg, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %.163, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.ck = load i32, ptr %.161, align 4, !tbaa !3  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.161, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %.161, i64 8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = zext i32 %i.cn to i64
  %.idx = shl nuw nsw i64 %i.co, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx ; 2 uses
  %i.cq = zext i32 %i.ck to i64                   ; 2 uses
  %.not80164 = icmp eq i32 %i.ck, 0
  br i1 %.not80164, label %.thread, label %.lr.ph167

bb.af:                                            ; preds = %.lr.ph167
  %.not80 = icmp eq i64 %i.cr, 0
  br i1 %.not80, label %.thread, label %.lr.ph167, !llvm.loop !35

.lr.ph167:                                        ; preds = %bb.ae, %bb.af
  %indvars.iv102165 = phi i64 [ %i.cr, %bb.af ], [ %i.cq, %bb.ae ]
  %i.cr = add nsw i64 %indvars.iv102165, -1       ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3  ; 2 uses
  %.not81 = icmp eq i32 %i.ct, 0
  br i1 %.not81, label %bb.af, label %bb.ag, !llvm.loop !35

bb.ag:                                            ; preds = %.lr.ph167
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq
  %i.cv = getelementptr inbounds nuw i8, ptr %.161, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cy
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.2 = phi i32 [ %i.ct, %bb.ag ], [ %i.da, %bb.ah ] ; 2 uses
  %i.da = add i32 %.2, 1                          ; 2 uses
  %i.db = zext i32 %.2 to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %3 = trunc nuw i32 %i.dd to i1
  br i1 %3, label %.thread, label %bb.ah, !llvm.loop !36

.thread:                                          ; preds = %bb.af, %bb.ah, %bb.ae, %bb.ad
  %storemerge = phi i32 [ %i.cj, %bb.ad ], [ 0, %bb.ae ], [ %i.da, %bb.ah ], [ 0, %bb.af ]
  store i32 %storemerge, ptr %i.e, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %._crit_edge.thread, %.thread, %._crit_edge95.thread, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage13GetNumSymbolsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage9GetDynsymEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 95, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage9GetVersymEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
  %.not = icmp ult i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 100, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage7GetPhdrEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %.critedge, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i16, ptr %i.c, align 8, !tbaa !16
  %i.e = zext i16 %i.d to i32
  %.not = icmp samesign ult i32 %1, %i.e
  br i1 %.not, label %bb.c, label %.critedge, !prof !38

.critedge:                                        ; preds = %bb.a, %bb.b
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 105, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5)
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.i = load i16, ptr %i.h, align 2, !tbaa !20
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.l = zext i16 %i.i to i64
  %i.m = mul nuw nsw i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage9GetDynstrEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33
  %.not = icmp ugt i64 %i.c, %i.a
  br i1 %.not, label %bb.c, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 111, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.a
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage10GetSymAddrEPK9Elf64_Sym(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i16, ptr %i.a, align 2, !tbaa !39
  %i.c = add i16 %i.b, 256
  %or.cond = icmp ult i16 %i.c, 257
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = inttoptr i64 %i.e to ptr
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !8    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %.not = icmp ult i64 %i.h, %i.j
  br i1 %.not, label %bb.e, label %bb.d, !prof !38

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 120, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !15
  %i.l = sub nuw i64 %i.j, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK4absl12lts_2025051218debugging_internal11ElfMemImage9GetVerdefEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.d, %i.b
  %i.f = select i1 %i.a, i1 true, i1 %i.e, !prof !7
  br i1 %i.f, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 126, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i16, ptr %i.i, align 4, !tbaa !42
  %i.k = zext i16 %i.j to i32                     ; 3 uses
  %i.l = icmp samesign ugt i32 %1, %i.k
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44   ; 2 uses
  %.not22 = icmp eq i32 %i.n, 0
  br i1 %.not22, label %.critedge, label %.lr.ph24

.lr.ph:                                           ; preds = %.lr.ph24
  %i.o = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !44   ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge, label %.lr.ph24, !llvm.loop !45

.lr.ph24:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.q = phi i32 [ %i.p, %.lr.ph ], [ %i.n, %.lr.ph.preheader ]
  %.01323 = phi ptr [ %i.s, %.lr.ph ], [ %i.h, %.lr.ph.preheader ]
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01323, i64 %i.r ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i16, ptr %i.t, align 4, !tbaa !42
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = icmp samesign ugt i32 %1, %i.v
  br i1 %i.w, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !45

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph24
  br label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.c
  %.0.lcssa = phi ptr [ %i.h, %bb.c ], [ %i.h, %.lr.ph.preheader ], [ %i.s, %..critedge.loopexit_crit_edge ], [ %i.s, %.lr.ph ]
  %.lcssa = phi i32 [ %i.k, %bb.c ], [ %i.k, %.lr.ph.preheader ], [ %i.v, %..critedge.loopexit_crit_edge ], [ %i.v, %.lr.ph ]
end_hunk_0
