Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-f11129950cf102f8.similar.cde5bf76a4ae79f3-cgu.05?download=true
inline.NumInlined: 52
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/similar-2.7.0/src/algorithms/lcs.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00\AE\00\00\00\1D\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00\AE\00\00\00'\00\00\00" }>, align 8
@3 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00f\00\00\00\13\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"h\00\00\00\00\00\00\00f\00\00\00(\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %5, %6
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not104 = icmp ult i64 %2, %3
  br i1 %.not104, label %bb.e, label %bb.bf

bb.c:                                             ; preds = %bb.a
  %.sroa.034.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3, !noalias !6, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !9, !alias.scope !3, !noalias !6, !noundef !8
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !6
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !3, !noalias !6, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k ; 4 uses
  store i64 1, ptr %i.p, align 8
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %2, ptr %.sroa.4180.0..sroa_idx, align 8
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.034.0, ptr %.sroa.5181.0..sroa_idx, align 8
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %5, ptr %.sroa.6182.0..sroa_idx, align 8
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !3, !noalias !6
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bb

bb.e:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 11 uses
  %i.s = add i64 %i.r, %2                         ; 7 uses
  %i.t = add i64 %i.r, %5                         ; 7 uses
  %i.u = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.s, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.t, i64 noundef %6) ; 5 uses
  %i.v = sub nuw i64 %3, %2                       ; 4 uses
  %i.w = icmp eq i64 %i.r, %i.v
  %i.x = sub i64 %6, %5                           ; 4 uses
  %i.y = icmp eq i64 %i.v, %i.x
  %or.cond113 = and i1 %i.y, %i.w
  br i1 %or.cond113, label %bb.bd, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.z = sub i64 %i.v, %i.u                       ; 2 uses
  %i.aa = sub i64 %i.x, %i.u                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %.sroa.013.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17
  store ptr null, ptr %i.d, align 8, !noalias !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ab, align 8, !noalias !17
  %.not59.not.i = icmp ugt i64 %i.aa, %i.r
  br i1 %.not59.not.i, label %.lr.ph61.i, label %select.unfold._crit_edge.i

.lr.ph61.i:                                       ; preds = %bb.f
  %spec.select.i = sub nuw i64 %i.aa, %i.r        ; 2 uses
  %.not3457.not.i = icmp ugt i64 %i.z, %i.r
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !15, !noalias !18
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !15, !noalias !18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !13, !noalias !19
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !13, !noalias !19 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !15, !noalias !18, !nonnull !8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !13, !noalias !19, !nonnull !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3457.not.i, label %.lr.ph61.split.i, label %.lr.ph61.split.us.i

.lr.ph61.split.us.i:                              ; preds = %.lr.ph61.i, %.preheader.us.i
  %.sroa.018.160.us.i = phi i64 [ %i.ar, %.preheader.us.i ], [ %spec.select.i, %.lr.ph61.i ]
  %i.ar = add i64 %.sroa.018.160.us.i, -1         ; 2 uses
  %i.as = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !17

bb.g:                                             ; preds = %.lr.ph61.split.us.i
  br i1 %i.as, label %.split.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.g
  %.not.us.i = icmp eq i64 %i.ar, 0
  br i1 %.not.us.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %.lr.ph61.split.us.i
  %lpad.loopexit45.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.select.unfold.loopexit_crit_edge.i:              ; preds = %bb.q
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.i

select.unfold._crit_edge.i:                       ; preds = %.preheader.us.i, %.select.unfold.loopexit_crit_edge.i, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !20
  store i64 1, ptr %i.h, align 8, !alias.scope !10, !noalias !20
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_.exit

.lr.ph61.split.i:                                 ; preds = %.lr.ph61.i, %.select.unfold.loopexit_crit_edge.i
  %.sroa.018.160.i = phi i64 [ %i.au, %.select.unfold.loopexit_crit_edge.i ], [ %spec.select.i, %.lr.ph61.i ] ; 3 uses
  %i.au = add i64 %.sroa.018.160.i, -1            ; 5 uses
  %i.av = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split.i, !noalias !17

.loopexit.i:                                      ; preds = %bb.p, %bb.l, %bb.k, %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split.i:              ; preds = %.lr.ph61.split.i
  %lpad.loopexit45.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp46.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split.i, %.loopexit.i, %.loopexit.split-lp.loopexit.split.us.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp46.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit45.i, %.loopexit.split-lp.loopexit.split.i ], [ %lpad.loopexit45.us.i, %.loopexit.split-lp.loopexit.split.us.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r, !noalias !17

bb.h:                                             ; preds = %.lr.ph61.split.i
  br i1 %i.av, label %.split.us.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.aw = sub i64 %i.au, %i.ad                    ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.af
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aw
  br i1 %i.ax, label %.lr.ph.split.i, label %.invoke.i

.split.us.i:                                      ; preds = %bb.g, %bb.h
  store i64 0, ptr %i.h, align 8, !alias.scope !10, !noalias !20
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !17
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_.exit

.lr.ph.split.i:                                   ; preds = %.preheader.i, %bb.q
  %.sroa.026.058.i = phi i64 [ %i.az, %bb.q ], [ %.sroa.013.0.i, %.preheader.i ] ; 3 uses
  %i.az = add i64 %.sroa.026.058.i, -1            ; 5 uses
  %i.ba = sub i64 %i.az, %i.ah                    ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.aj
  br i1 %i.bb, label %bb.i, label %.invoke.i

.invoke.i:                                        ; preds = %.preheader.i, %.lr.ph.split.i
  %i.bc = phi i64 [ %i.ba, %.lr.ph.split.i ], [ %i.aw, %.preheader.i ]
  %i.bd = phi i64 [ %i.aj, %.lr.ph.split.i ], [ %i.af, %.preheader.i ]
  %i.be = phi ptr [ @2, %.lr.ph.split.i ], [ @1, %.preheader.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be) #10
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !17

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ba
  %.val.i = load i32, ptr %i.ay, align 4, !noalias !17, !noundef !8
  %.val43.i = load i32, ptr %i.bf, align 4, !noalias !17, !noundef !8
  %i.bg = icmp eq i32 %.val.i, %.val43.i
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17
  store i64 %.sroa.018.160.i, ptr %i.b, align 8, !noalias !17
  store i64 %i.az, ptr %i.ao, align 8, !noalias !17
  %i.bh = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.l unwind label %.loopexit.i, !noalias !17 ; 2 uses

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17
  store i64 %.sroa.018.160.i, ptr %i.c, align 8, !noalias !17
  store i64 %.sroa.026.058.i, ptr %i.aq, align 8, !noalias !17
  %i.bi = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.o unwind label %.loopexit.i, !noalias !17 ; 2 uses

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17
  store i64 %i.au, ptr %i.a, align 8, !noalias !17
  store i64 %.sroa.026.058.i, ptr %i.ap, align 8, !noalias !17
  %i.bj = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.m unwind label %.loopexit.i, !noalias !17 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not35.i = icmp eq ptr %i.bh, null
  %..i = select i1 %.not35.i, ptr @3, ptr %i.bh
  %.not36.i = icmp eq ptr %i.bj, null
  %.39.i = select i1 %.not36.i, ptr @3, ptr %i.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.bk = load i32, ptr %.39.i, align 4, !alias.scope !31, !noalias !32, !noundef !8
  %i.bl = load i32, ptr %..i, align 4, !alias.scope !33, !noalias !34, !noundef !8
  %i.bm = call i32 @llvm.umax.i32(i32 %i.bk, i32 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sroa.02.0.i = phi i32 [ %i.bo, %bb.o ], [ %i.bm, %bb.m ] ; 2 uses
  %.not38.i = icmp eq i32 %.sroa.02.0.i, 0
  br i1 %.not38.i, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.k
  %.not37.i = icmp eq ptr %i.bi, null
  %.40.i = select i1 %.not37.i, ptr @3, ptr %i.bi
  %i.bn = load i32, ptr %.40.i, align 4, !noalias !17, !noundef !8
  %i.bo = add i32 %i.bn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.bp = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.au, i64 noundef %i.az, i32 noundef %.sroa.02.0.i)
          to label %bb.q unwind label %.loopexit.i, !noalias !17 ; 0 uses

bb.q:                                             ; preds = %bb.p, %bb.n
  %.not34.i = icmp eq i64 %i.az, 0
  br i1 %.not34.i, label %.select.unfold.loopexit_crit_edge.i, label %.lr.ph.split.i

bb.r:                                             ; preds = %.loopexit.split-lp.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !17
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.ab, %bb.bc, %.loopexit.split-lp.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.thr_comm.split-lp, %bb.bc ], [ %lpad.phi, %bb.ab ], [ %lpad.thr_comm.split-lp, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_.exit: ; preds = %select.unfold._crit_edge.i, %.split.us.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 %i.de, ptr %.sroa.6192.0..sroa_idx, align 8
  %i.eh = add i64 %i.dz, 1
  store i64 %i.eh, ptr %i.cw, align 8, !alias.scope !60, !noalias !63
  br label %bb.an

bb.an:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit130, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit123, %bb.ao
  %.sroa.016.2 = phi i64 [ %i.eo, %bb.ao ], [ %i.dv, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit130 ], [ %.sroa.016.0252, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit123 ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %i.en, %bb.ao ], [ %.sroa.0.0253, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit130 ], [ %i.dq, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit123 ] ; 3 uses
  %i.ei = icmp ult i64 %.sroa.016.2, %i.bt
  %i.ej = icmp ult i64 %.sroa.0.2, %i.bu
  %or.cond3 = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond3, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECshFZddwsEKsN_7similar.exit

bb.ao:                                            ; preds = %bb.ag, %bb.af
  %i.ek = load ptr, ptr %i.cx, align 8, !alias.scope !50, !noalias !53, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.ds ; 4 uses
  store i64 0, ptr %i.el, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.dd, ptr %.sroa.4170.0..sroa_idx, align 8
  %.sroa.5171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i64 %i.de, ptr %.sroa.5171.0..sroa_idx, align 8
  %.sroa.6172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store i64 1, ptr %.sroa.6172.0..sroa_idx, align 8
  %i.em = add i64 %i.ds, 1
  store i64 %i.em, ptr %i.cw, align 8, !alias.scope !50, !noalias !53
  %i.en = add nuw i64 %.sroa.0.0253, 1
  %i.eo = add nuw i64 %.sroa.016.0252, 1
  br label %bb.an

bb.ap:                                            ; preds = %bb.bc, %bb.ab
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.aq:                                            ; preds = %bb.y, %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !45, !noalias !48, !nonnull !8, !noundef !8
  %i.es = getelementptr inbounds nuw [40 x i8], ptr %i.er, i64 %i.da ; 4 uses
  store i64 1, ptr %i.es, align 8
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.s, ptr %.sroa.4195.0..sroa_idx, align 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 %i.bu, ptr %.sroa.5196.0..sroa_idx, align 8
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 %i.t, ptr %.sroa.6197.0..sroa_idx, align 8
  %i.et = add i64 %i.da, 1                        ; 3 uses
  store i64 %i.et, ptr %i.cz, align 8, !alias.scope !45, !noalias !48
  %i.eu = load i64, ptr %i.cy, align 8, !range !9, !alias.scope !65, !noalias !68, !noundef !8
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ar, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit128

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cy)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit128

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit128: ; preds = %bb.ar, %bb.aq
  %i.ew = load ptr, ptr %i.eq, align 8, !alias.scope !65, !noalias !68, !nonnull !8, !noundef !8
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.et ; 4 uses
  store i64 2, ptr %i.ex, align 8
  %.sroa.4210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %i.s, ptr %.sroa.4210.0..sroa_idx, align 8
  %.sroa.5211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %i.t, ptr %.sroa.5211.0..sroa_idx, align 8
  %.sroa.6212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %i.bt, ptr %.sroa.6212.0..sroa_idx, align 8
  %i.ey = add i64 %i.da, 2
  store i64 %i.ey, ptr %i.cz, align 8, !alias.scope !65, !noalias !68
  br label %bb.aa

bb.as:                                            ; preds = %bb.aa
  %i.ez = add i64 %.sroa.0.1, %i.s
  %i.fa = sub nuw i64 %i.bu, %.sroa.0.1
  %i.fb = add i64 %.sroa.016.1, %i.t
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !70, !noalias !73, !noundef !8 ; 3 uses
  %i.ff = load i64, ptr %i.fc, align 8, !range !9, !alias.scope !70, !noalias !73, !noundef !8
  %i.fg = icmp eq i64 %i.fe, %i.ff
  br i1 %i.fg, label %bb.at, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit

bb.at:                                            ; preds = %bb.as
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fc)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit: ; preds = %bb.at, %bb.as
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !70, !noalias !73, !nonnull !8, !noundef !8
  %i.fj = getelementptr inbounds nuw [40 x i8], ptr %i.fi, i64 %i.fe ; 4 uses
  store i64 1, ptr %i.fj, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.ez, ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %i.fa, ptr %.sroa.5186.0..sroa_idx, align 8
  %.sroa.6187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  store i64 %i.fb, ptr %.sroa.6187.0..sroa_idx, align 8
  %i.fk = add i64 %i.fe, 1
  store i64 %i.fk, ptr %i.fd, align 8, !alias.scope !70, !noalias !73
  br label %bb.au

bb.au:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit, %bb.aa
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %bb.aa ], [ %i.bu, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit ]
  %i.fl = icmp ult i64 %.sroa.016.1, %i.bt
  br i1 %i.fl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fm = add i64 %.sroa.0.3, %i.s
  %i.fn = add i64 %.sroa.016.1, %i.t
  %i.fo = sub nuw i64 %i.bt, %.sroa.016.1
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !75, !noalias !78, !noundef !8 ; 3 uses
  %i.fs = load i64, ptr %i.fp, align 8, !range !9, !alias.scope !75, !noalias !78, !noundef !8
  %i.ft = icmp eq i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.aw, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit

bb.aw:                                            ; preds = %bb.av
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fp)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit: ; preds = %bb.aw, %bb.av
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fv = load ptr, ptr %i.fu, align 8, !alias.scope !75, !noalias !78, !nonnull !8, !noundef !8
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fv, i64 %i.fr ; 4 uses
  store i64 2, ptr %i.fw, align 8
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.fm, ptr %.sroa.4205.0..sroa_idx, align 8
  %.sroa.5206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %i.fn, ptr %.sroa.5206.0..sroa_idx, align 8
  %.sroa.6207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i64 %i.fo, ptr %.sroa.6207.0..sroa_idx, align 8
  %i.fx = add i64 %i.fr, 1
  store i64 %i.fx, ptr %i.fq, align 8, !alias.scope !75, !noalias !78
  br label %bb.ax

bb.ax:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit, %bb.au
  %.not106 = icmp eq i64 %i.u, 0
  br i1 %.not106, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit, %bb.ax
  call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.fy = add i64 %i.s, %i.bu
  %i.fz = add i64 %i.t, %i.bt
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !80, !noalias !83, !noundef !8 ; 3 uses
  %i.gd = load i64, ptr %i.ga, align 8, !range !9, !alias.scope !80, !noalias !83, !noundef !8
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ba, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit

bb.ba:                                            ; preds = %bb.az
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ga)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit: ; preds = %bb.ba, %bb.az
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !80, !noalias !83, !nonnull !8, !noundef !8
  %i.gh = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %i.gc ; 4 uses
  store i64 0, ptr %i.gh, align 8
  %.sroa.4165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %i.fy, ptr %.sroa.4165.0..sroa_idx, align 8
  %.sroa.5166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store i64 %i.fz, ptr %.sroa.5166.0..sroa_idx, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  store i64 %i.u, ptr %.sroa.6167.0..sroa_idx, align 8
  %i.gi = add i64 %i.gc, 1
  store i64 %i.gi, ptr %i.gb, align 8, !alias.scope !80, !noalias !83
  br label %bb.ay

bb.bb:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit160, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit159, %bb.ay
  ret void

bb.bc:                                            ; preds = %bb.s
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gj)
          to label %common.resume unwind label %bb.ap

bb.bd:                                            ; preds = %bb.e
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !85, !noalias !88, !noundef !8 ; 3 uses
  %i.gn = load i64, ptr %i.gk, align 8, !range !9, !alias.scope !85, !noalias !88, !noundef !8
  %i.go = icmp eq i64 %i.gm, %i.gn
  br i1 %i.go, label %bb.be, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit159

bb.be:                                            ; preds = %bb.bd
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gk), !noalias !88
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit159

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit159: ; preds = %bb.bd, %bb.be
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !85, !noalias !88, !nonnull !8, !noundef !8
  %i.gr = getelementptr inbounds nuw [40 x i8], ptr %i.gq, i64 %i.gm ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gs = add i64 %i.gm, 1
  store i64 %i.gs, ptr %i.gl, align 8, !alias.scope !85, !noalias !88
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bb

bb.bf:                                            ; preds = %bb.b
  %i.gt = sub i64 %6, %5
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !90, !noalias !93, !noundef !8 ; 3 uses
  %i.gx = load i64, ptr %i.gu, align 8, !range !9, !alias.scope !90, !noalias !93, !noundef !8
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.bg, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit160

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gu), !noalias !93
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit160

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit160: ; preds = %bb.bf, %bb.bg
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !90, !noalias !93, !nonnull !8, !noundef !8
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %i.gw ; 4 uses
  store i64 2, ptr %i.hb, align 8
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 %2, ptr %.sroa.4200.0..sroa_idx, align 8
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %5, ptr %.sroa.5201.0..sroa_idx, align 8
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i64 %i.gt, ptr %.sroa.6202.0..sroa_idx, align 8
  %i.hc = add i64 %i.gw, 1
  store i64 %i.hc, ptr %i.gv, align 8, !alias.scope !90, !noalias !93
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineSReBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(176) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef range(i64 0, 576460752303423488) %6, i64 noundef %7, i64 noundef %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %.not = icmp ult i64 %7, %8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not104 = icmp ult i64 %3, %4
  br i1 %.not104, label %bb.e, label %bb.be

bb.c:                                             ; preds = %bb.a
  %.sroa.034.0 = tail call i64 @llvm.usub.sat.i64(i64 %4, i64 %3)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !95, !noalias !98, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %i.i, align 8, !range !9, !alias.scope !95, !noalias !98, !noundef !8
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !98
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !95, !noalias !98, !nonnull !8, !noundef !8
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.k ; 4 uses
  store i64 1, ptr %i.p, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %3, ptr %.sroa.4174.0..sroa_idx, align 8
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.034.0, ptr %.sroa.5175.0..sroa_idx, align 8
  %.sroa.6176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %7, ptr %.sroa.6176.0..sroa_idx, align 8
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 8, !alias.scope !95, !noalias !98
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.ba

bb.e:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) ; 12 uses
  %i.s = add i64 %i.r, %3                         ; 7 uses
  %i.t = add i64 %i.r, %7                         ; 7 uses
  %i.u = tail call noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.s, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, i64 noundef %i.t, i64 noundef %8) ; 5 uses
  %i.v = sub nuw i64 %4, %3                       ; 4 uses
  %i.w = icmp eq i64 %i.r, %i.v
  %i.x = sub i64 %8, %7                           ; 4 uses
  %i.y = icmp eq i64 %i.v, %i.x
  %or.cond113 = and i1 %i.y, %i.w
  br i1 %or.cond113, label %bb.bc, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.z = sub i64 %i.v, %i.u                       ; 3 uses
  %i.aa = sub i64 %i.x, %i.u                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %.sroa.013.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !107
  store ptr null, ptr %i.d, align 8, !noalias !107
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ab, align 8, !noalias !107
  %.not59.not.i = icmp ugt i64 %i.aa, %i.r
  br i1 %.not59.not.i, label %.lr.ph61.i, label %select.unfold._crit_edge.i

.lr.ph61.i:                                       ; preds = %bb.f
  %spec.select.i = sub nuw i64 %i.aa, %i.r        ; 3 uses
  %.not3457.not.i = icmp ugt i64 %i.z, %i.r
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3457.not.i, label %.lr.ph61.split.preheader.i, label %.lr.ph61.split.us.i

.lr.ph61.split.preheader.i:                       ; preds = %.lr.ph61.i
  %i.af = xor i64 %i.r, -1                        ; 2 uses
  %i.ag = add i64 %i.aa, %i.af
  %.first_iter72.i = icmp ult i64 %i.ag, %6
  br i1 %.first_iter72.i, label %.lr.ph61.split.preheader.i.split.us, label %.lr.ph61.split.i

.lr.ph61.split.preheader.i.split.us:              ; preds = %.lr.ph61.split.preheader.i
  %i.ah = add i64 %i.z, %i.af
  %.first_iter.i = icmp ult i64 %i.ah, %2
  br i1 %.first_iter.i, label %.lr.ph61.split.i.us.us, label %.lr.ph61.split.i.us

.lr.ph61.split.i.us.us:                           ; preds = %.lr.ph61.split.preheader.i.split.us, %.select.unfold.loopexit_crit_edge.i.split.us.us.us
  %.sroa.018.160.i.us.us = phi i64 [ %i.ai, %.select.unfold.loopexit_crit_edge.i.split.us.us.us ], [ %spec.select.i, %.lr.ph61.split.preheader.i.split.us ] ; 3 uses
  %i.ai = add i64 %.sroa.018.160.i.us.us, -1      ; 5 uses
  %i.aj = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split.us, !noalias !107

bb.g:                                             ; preds = %.lr.ph61.split.i.us.us
  br i1 %i.aj, label %.split.us.i, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ai ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val42.i.us.us.us = load i64, ptr %i.al, align 8, !alias.scope !105, !noalias !108, !noundef !8 ; 2 uses
  br label %.lr.ph.split.i.us.us.us

.lr.ph.split.i.us.us.us:                          ; preds = %bb.n, %.preheader.i.us.us
  %.sroa.026.058.i.us.us.us = phi i64 [ %i.am, %bb.n ], [ %.sroa.013.0.i, %.preheader.i.us.us ] ; 3 uses
  %i.am = add i64 %.sroa.026.058.i.us.us.us, -1   ; 5 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %.val44.i.us.us.us = load i64, ptr %i.ao, align 8, !alias.scope !103, !noalias !109, !noundef !8
  %i.ap = icmp eq i64 %.val42.i.us.us.us, %.val44.i.us.us.us
  br i1 %i.ap, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.i.us.us.us, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.thread.i.us.us.us

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.i.us.us.us: ; preds = %.lr.ph.split.i.us.us.us
  %.val43.i.us.us.us = load ptr, ptr %i.an, align 8, !alias.scope !103, !noalias !109, !nonnull !8, !noundef !8
  %.val.i.us.us.us = load ptr, ptr %i.ak, align 8, !alias.scope !105, !noalias !108, !nonnull !8, !noundef !8
  %bcmp.i.i.i.us.us.us = call i32 @bcmp(ptr nonnull readonly %.val.i.us.us.us, ptr nonnull readonly %.val43.i.us.us.us, i64 %.val42.i.us.us.us), !alias.scope !110, !noalias !107
  %i.aq = icmp eq i32 %bcmp.i.i.i.us.us.us, 0
  br i1 %i.aq, label %bb.j, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.thread.i.us.us.us

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.thread.i.us.us.us: ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.i.us.us.us, %.lr.ph.split.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !107
  store i64 %.sroa.018.160.i.us.us, ptr %i.b, align 8, !noalias !107
  store i64 %i.am, ptr %i.ac, align 8, !noalias !107
  %i.ar = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.h unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !107 ; 2 uses

bb.h:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.thread.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !107
  store i64 %i.ai, ptr %i.a, align 8, !noalias !107
  store i64 %.sroa.026.058.i.us.us.us, ptr %i.ad, align 8, !noalias !107
  %i.as = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.i unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !107 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not35.i.us.us.us = icmp eq ptr %i.ar, null
  %..i.us.us.us = select i1 %.not35.i.us.us.us, ptr @3, ptr %i.ar
  %.not36.i.us.us.us = icmp eq ptr %i.as, null
  %.39.i.us.us.us = select i1 %.not36.i.us.us.us, ptr @3, ptr %i.as
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.at = load i32, ptr %.39.i.us.us.us, align 4, !alias.scope !124, !noalias !125, !noundef !8
  %i.au = load i32, ptr %..i.us.us.us, align 4, !alias.scope !126, !noalias !127, !noundef !8
  %i.av = call i32 @llvm.umax.i32(i32 %i.at, i32 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !107
  br label %bb.l

bb.j:                                             ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.i.us.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !107
  store i64 %.sroa.018.160.i.us.us, ptr %i.c, align 8, !noalias !107
  store i64 %.sroa.026.058.i.us.us.us, ptr %i.ae, align 8, !noalias !107
  %i.aw = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.k unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !107 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not37.i.us.us.us = icmp eq ptr %i.aw, null
  %.40.i.us.us.us = select i1 %.not37.i.us.us.us, ptr @3, ptr %i.aw
  %i.ax = load i32, ptr %.40.i.us.us.us, align 4, !noalias !107, !noundef !8
  %i.ay = add i32 %i.ax, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !107
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.sroa.02.0.i.us.us.us = phi i32 [ %i.ay, %bb.k ], [ %i.av, %bb.i ] ; 2 uses
  %.not38.i.us.us.us = icmp eq i32 %.sroa.02.0.i.us.us.us, 0
  br i1 %.not38.i.us.us.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ai, i64 noundef %i.am, i32 noundef %.sroa.02.0.i.us.us.us)
          to label %bb.n unwind label %.loopexit.i.split.us.split.us.split.us, !noalias !107 ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not34.i.us.us.us = icmp eq i64 %i.am, 0
  br i1 %.not34.i.us.us.us, label %.select.unfold.loopexit_crit_edge.i.split.us.us.us, label %.lr.ph.split.i.us.us.us

.select.unfold.loopexit_crit_edge.i.split.us.us.us: ; preds = %bb.n
  %.not.i.us.us = icmp eq i64 %i.ai, 0
  br i1 %.not.i.us.us, label %select.unfold._crit_edge.i, label %.lr.ph61.split.i.us.us

.loopexit.split-lp.loopexit.split.i.split.us.split.us: ; preds = %.lr.ph61.split.i.us.us
  %lpad.loopexit48.i.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.i.split.us.split.us.split.us:           ; preds = %bb.m, %bb.j, %bb.h, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsReNtB7_9PartialEq2eqCshFZddwsEKsN_7similar.exit.thread.i.us.us.us
  %lpad.loopexit.i.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph61.split.i.us:                              ; preds = %.lr.ph61.split.preheader.i.split.us
  %i.ba = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split.i.split.us.split, !noalias !107

bb.o:                                             ; preds = %.lr.ph61.split.i.us
  br i1 %i.ba, label %.split.us.i, label %.invoke.i

.loopexit.split-lp.loopexit.split.i.split.us.split: ; preds = %.lr.ph61.split.i.us
  %lpad.loopexit48.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.lr.ph61.split.us.i:                              ; preds = %.lr.ph61.i, %.preheader.us.i
  %.sroa.018.160.us.i = phi i64 [ %i.bb, %.preheader.us.i ], [ %spec.select.i, %.lr.ph61.i ]
  %i.bb = add i64 %.sroa.018.160.us.i, -1         ; 2 uses
  %i.bc = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split.us.i, !noalias !107

bb.p:                                             ; preds = %.lr.ph61.split.us.i
  br i1 %i.bc, label %.split.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.p
  %.not.us.i = icmp eq i64 %i.bb, 0
  br i1 %.not.us.i, label %select.unfold._crit_edge.i, label %.lr.ph61.split.us.i

.loopexit.split-lp.loopexit.split.us.i:           ; preds = %.lr.ph61.split.us.i
  %lpad.loopexit48.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

select.unfold._crit_edge.i:                       ; preds = %.preheader.us.i, %.select.unfold.loopexit_crit_edge.i.split.us.us.us, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !128
  store i64 1, ptr %i.h, align 8, !alias.scope !100, !noalias !128
  br label %_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableSReBU_EB6_.exit

.lr.ph61.split.i:                                 ; preds = %.lr.ph61.split.preheader.i
  %i.be = invoke noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split.i.split, !noalias !107

.loopexit.split-lp.loopexit.split.i.split:        ; preds = %.lr.ph61.split.i
  %lpad.loopexit48.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i
  %lpad.loopexit.split-lp49.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split.i.split, %.loopexit.split-lp.loopexit.split.i.split.us.split.us, %.loopexit.split-lp.loopexit.split.i.split.us.split, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.i.split.us.split.us.split.us, %.loopexit.split-lp.loopexit.split.us.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i.us.us.us, %.loopexit.i.split.us.split.us.split.us ], [ %lpad.loopexit.split-lp49.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit48.us.i, %.loopexit.split-lp.loopexit.split.us.i ], [ %lpad.loopexit48.i, %.loopexit.split-lp.loopexit.split.i.split ], [ %lpad.loopexit48.i.us, %.loopexit.split-lp.loopexit.split.i.split.us.split ], [ %lpad.loopexit48.i.us.us, %.loopexit.split-lp.loopexit.split.i.split.us.split.us ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.r, !noalias !107

bb.q:                                             ; preds = %.lr.ph61.split.i
  br i1 %i.be, label %.split.us.i, label %.invoke.i

.split.us.i:                                      ; preds = %bb.p, %bb.g, %bb.o, %bb.q
end_hunk_1
begin_hunk_2_@_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs13diff_deadlineSReBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %i.ck, ptr %.sroa.6186.0..sroa_idx, align 8
  %i.do = add i64 %i.dg, 1
  store i64 %i.do, ptr %i.cc, align 8, !alias.scope !153, !noalias !156
  br label %bb.am

bb.am:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit120, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit117, %bb.an
  %.sroa.016.2 = phi i64 [ %i.dv, %bb.an ], [ %i.dc, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit120 ], [ %.sroa.016.0248, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit117 ] ; 3 uses
  %.sroa.0.2 = phi i64 [ %i.du, %bb.an ], [ %.sroa.0.0249, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit120 ], [ %i.cx, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit117 ] ; 3 uses
  %i.dp = icmp ult i64 %.sroa.016.2, %i.bl
  %i.dq = icmp ult i64 %.sroa.0.2, %i.bm
  %or.cond3 = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %or.cond3, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECshFZddwsEKsN_7similar.exit

bb.an:                                            ; preds = %bb.af, %bb.ae
  %i.dr = load ptr, ptr %i.cd, align 8, !alias.scope !143, !noalias !146, !nonnull !8, !noundef !8
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %i.cz ; 4 uses
  store i64 0, ptr %i.ds, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.cj, ptr %.sroa.4164.0..sroa_idx, align 8
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %i.ck, ptr %.sroa.5165.0..sroa_idx, align 8
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i64 1, ptr %.sroa.6166.0..sroa_idx, align 8
  %i.dt = add i64 %i.cz, 1
  store i64 %i.dt, ptr %i.cc, align 8, !alias.scope !143, !noalias !146
  %i.du = add nuw i64 %.sroa.0.0249, 1
  %i.dv = add nuw i64 %.sroa.016.0248, 1
  br label %bb.am

bb.ao:                                            ; preds = %bb.bb, %bb.ab
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.ap:                                            ; preds = %bb.y, %bb.x
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !134, !noalias !137, !nonnull !8, !noundef !8
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.dy, i64 %i.cg ; 4 uses
  store i64 1, ptr %i.dz, align 8
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i64 %i.s, ptr %.sroa.4189.0..sroa_idx, align 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.bm, ptr %.sroa.5190.0..sroa_idx, align 8
  %.sroa.6191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i64 %i.t, ptr %.sroa.6191.0..sroa_idx, align 8
  %i.ea = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.ea, ptr %i.cf, align 8, !alias.scope !134, !noalias !137
  %i.eb = load i64, ptr %i.ce, align 8, !range !9, !alias.scope !158, !noalias !161, !noundef !8
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.aq, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit119

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit119

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit119: ; preds = %bb.aq, %bb.ap
  %i.ed = load ptr, ptr %i.dx, align 8, !alias.scope !158, !noalias !161, !nonnull !8, !noundef !8
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ea ; 4 uses
  store i64 2, ptr %i.ee, align 8
  %.sroa.4204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.s, ptr %.sroa.4204.0..sroa_idx, align 8
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.t, ptr %.sroa.5205.0..sroa_idx, align 8
  %.sroa.6206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %i.bl, ptr %.sroa.6206.0..sroa_idx, align 8
  %i.ef = add i64 %i.cg, 2
  store i64 %i.ef, ptr %i.cf, align 8, !alias.scope !158, !noalias !161
  br label %bb.aa

bb.ar:                                            ; preds = %bb.aa
  %i.eg = add i64 %.sroa.0.1, %i.s
  %i.eh = sub nuw i64 %i.bm, %.sroa.0.1
  %i.ei = add i64 %.sroa.016.1, %i.t
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !163, !noalias !166, !noundef !8 ; 3 uses
  %i.em = load i64, ptr %i.ej, align 8, !range !9, !alias.scope !163, !noalias !166, !noundef !8
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %bb.as, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit

bb.as:                                            ; preds = %bb.ar
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit: ; preds = %bb.as, %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !163, !noalias !166, !nonnull !8, !noundef !8
  %i.eq = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.el ; 4 uses
  store i64 1, ptr %i.eq, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.eg, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i64 %i.eh, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store i64 %i.ei, ptr %.sroa.6181.0..sroa_idx, align 8
  %i.er = add i64 %i.el, 1
  store i64 %i.er, ptr %i.ek, align 8, !alias.scope !163, !noalias !166
  br label %bb.at

bb.at:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit, %bb.aa
  %.sroa.0.3 = phi i64 [ %.sroa.0.1, %bb.aa ], [ %i.bm, %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteB9_.exit ]
  %i.es = icmp ult i64 %.sroa.016.1, %i.bl
  br i1 %i.es, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.et = add i64 %.sroa.0.3, %i.s
  %i.eu = add i64 %.sroa.016.1, %i.t
  %i.ev = sub nuw i64 %i.bl, %.sroa.016.1
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !168, !noalias !171, !noundef !8 ; 3 uses
  %i.ez = load i64, ptr %i.ew, align 8, !range !9, !alias.scope !168, !noalias !171, !noundef !8
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.av, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit

bb.av:                                            ; preds = %bb.au
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ew)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit: ; preds = %bb.av, %bb.au
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !168, !noalias !171, !nonnull !8, !noundef !8
  %i.fd = getelementptr inbounds nuw [40 x i8], ptr %i.fc, i64 %i.ey ; 4 uses
  store i64 2, ptr %i.fd, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %i.et, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %i.eu, ptr %.sroa.5200.0..sroa_idx, align 8
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  store i64 %i.ev, ptr %.sroa.6201.0..sroa_idx, align 8
  %i.fe = add i64 %i.ey, 1
  store i64 %i.fe, ptr %i.ex, align 8, !alias.scope !168, !noalias !171
  br label %bb.aw

bb.aw:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertB9_.exit, %bb.at
  %.not106 = icmp eq i64 %i.u, 0
  br i1 %.not106, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit, %bb.aw
  call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.ff = add i64 %i.s, %i.bm
  %i.fg = add i64 %i.t, %i.bl
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !173, !noalias !176, !noundef !8 ; 3 uses
  %i.fk = load i64, ptr %i.fh, align 8, !range !9, !alias.scope !173, !noalias !176, !noundef !8
  %i.fl = icmp eq i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.az, label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fh)
  br label %_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit

_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalB9_.exit: ; preds = %bb.az, %bb.ay
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !173, !noalias !176, !nonnull !8, !noundef !8
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.fn, i64 %i.fj ; 4 uses
  store i64 0, ptr %i.fo, align 8
  %.sroa.4159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i64 %i.ff, ptr %.sroa.4159.0..sroa_idx, align 8
  %.sroa.5160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store i64 %i.fg, ptr %.sroa.5160.0..sroa_idx, align 8
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i64 %i.u, ptr %.sroa.6161.0..sroa_idx, align 8
  %i.fp = add i64 %i.fj, 1
  store i64 %i.fp, ptr %i.fi, align 8, !alias.scope !173, !noalias !176
  br label %bb.ax

bb.ba:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit154, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit153, %bb.ax
  ret void

bb.bb:                                            ; preds = %bb.s
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %common.resume unwind label %bb.ao

bb.bc:                                            ; preds = %bb.e
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !alias.scope !178, !noalias !181, !noundef !8 ; 3 uses
  %i.fu = load i64, ptr %i.fr, align 8, !range !9, !alias.scope !178, !noalias !181, !noundef !8
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.bd, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit153

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fr), !noalias !181
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit153

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit153: ; preds = %bb.bc, %bb.bd
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !178, !noalias !181, !nonnull !8, !noundef !8
  %i.fy = getelementptr inbounds nuw [40 x i8], ptr %i.fx, i64 %i.ft ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i8 0, i64 24, i1 false)
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %i.fz = add i64 %i.ft, 1
  store i64 %i.fz, ptr %i.fs, align 8, !alias.scope !178, !noalias !181
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.ba

bb.be:                                            ; preds = %bb.b
  %i.ga = sub i64 %8, %7
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !183, !noalias !186, !noundef !8 ; 3 uses
  %i.ge = load i64, ptr %i.gb, align 8, !range !9, !alias.scope !183, !noalias !186, !noundef !8
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.bf, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit154

bb.bf:                                            ; preds = %bb.be
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gb), !noalias !186
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit154

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_.exit154: ; preds = %bb.be, %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !183, !noalias !186, !nonnull !8, !noundef !8
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gh, i64 %i.gd ; 4 uses
  store i64 2, ptr %i.gi, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %3, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 %7, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i64 %i.ga, ptr %.sroa.6196.0..sroa_idx, align 8
  %i.gj = add i64 %i.gd, 1
  store i64 %i.gj, ptr %i.gc, align 8, !alias.scope !183, !noalias !186
  tail call void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZddwsEKsN_7similar(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCshFZddwsEKsN_7similar16deadline_support17deadline_exceeded(i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECshFZddwsEKsN_7similar(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCshFZddwsEKsN_7similar(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_prefix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtNtCshFZddwsEKsN_7similar10algorithms5utils17common_suffix_lenSReB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms7compactINtB5_7CompactSReB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_(ptr noalias noundef align 8 dereferenceable(176)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { noreturn }
attributes #11 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!5 = distinct !{!5, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!8 = !{}
!9 = !{i64 0, i64 -9223372036854775808}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_: argument 0"}
!12 = distinct !{!12, !"_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_"}
!13 = !{!14}
!14 = distinct !{!14, !12, !"_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_: argument 1"}
!15 = !{!16}
!16 = distinct !{!16, !12, !"_RINvNtNtCshFZddwsEKsN_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_EB6_: argument 2"}
!17 = !{!11, !14, !16}
!18 = !{!11, !14}
!19 = !{!11, !16}
!20 = !{!14, !16}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_RNvYRmNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCshFZddwsEKsN_7similar: argument 0"}
!23 = distinct !{!23, !"_RNvYRmNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCshFZddwsEKsN_7similar"}
!24 = !{!25}
!25 = distinct !{!25, !23, !"_RNvYRmNtNtCs4NRVxsYgnAr_4core3cmp3Ord3maxCshFZddwsEKsN_7similar: argument 1"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!28 = distinct !{!28, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!29 = !{!30}
!30 = distinct !{!30, !28, !"_RNvXs10_NtNtCs4NRVxsYgnAr_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!31 = !{!27, !25}
!32 = !{!30, !22, !11, !14, !16}
!33 = !{!30, !22}
!34 = !{!27, !25, !11, !14, !16}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!37 = distinct !{!37, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!38 = !{!39}
!39 = distinct !{!39, !37, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_: argument 0"}
!42 = distinct !{!42, !"_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_RNvXs1_NtNtCshFZddwsEKsN_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!47 = distinct !{!47, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!52 = distinct !{!52, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!57 = distinct !{!57, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!58 = !{!59}
!59 = distinct !{!59, !57, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!62 = distinct !{!62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!67 = distinct !{!67, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!72 = distinct !{!72, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!77 = distinct !{!77, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 1"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_: argument 0"}
!82 = distinct !{!82, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCshFZddwsEKsN_7similar5types6DiffOpE8push_mutBI_"}
end_hunk_2
