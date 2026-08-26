Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/globset-979e8a80c21306b3.globset.29dea26dfe336339-cgu.04?download=true
inline.NumInlined: 298
inline.NumDeleted: 146
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtBK_7Builder19build_many_from_hirNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0ECs3AS159VDs7t_7globset, [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtBd_7Builder19build_many_from_hirNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuE9call_once6vtableCs3AS159VDs7t_7globset, ptr @_RNCINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0Cs3AS159VDs7t_7globset, ptr @_RNCINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB8_7Builder19build_many_from_hirNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEs_0Cs3AS159VDs7t_7globset }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB6_7Builder10build_manyNtNtCscdodAO9FK5_5alloc6string6StringECs3AS159VDs7t_7globset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [136 x i8], align 8               ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [128 x i8], align 8               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [128 x i8], align 16              ; 24 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 12 uses
  %i.l = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.635 = alloca [48 x i8], align 8          ; 7 uses
  %.sroa.629 = alloca [48 x i8], align 8          ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6120 = alloca i64, align 8               ; 8 uses
  %.sroa.11 = alloca i64, align 8                 ; 6 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 4 uses
  %i.p = alloca [200 x i8], align 8               ; 24 uses
  %i.q = alloca [128 x i8], align 8               ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 2 uses
  %i.u = alloca [24 x i8], align 8                ; 15 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 0, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.33.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %3 ; 2 uses
  invoke void @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives16IteratorIndexExt16with_pattern_idsCs3AS159VDs7t_7globset(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.t, ptr noundef nonnull %2, ptr noundef nonnull %i.w)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.bz, %bb.bn, %bb.bh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex9RegexInfoECs3AS159VDs7t_7globset.exit55.i, %bb.aj, %bb.an, %bb.ar, %bb.cc, %bb.bt, %bb.bk, %bb.az
  %.pn = phi { ptr, i32 } [ %.pn34.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex9RegexInfoECs3AS159VDs7t_7globset.exit55.i ], [ %i.gv, %bb.bt ], [ %i.hk, %bb.cc ], [ %i.gr, %bb.bn ], [ %i.fy, %bb.az ], [ %eh.lpad-body94.ph, %bb.bk ], [ %i.gk, %bb.bh ], [ %i.he, %bb.bz ], [ %i.fi, %bb.aj ], [ %lpad.thr_comm.split-lp.i, %bb.ar ], [ %i.fo, %bb.an ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit144, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEECs3AS159VDs7t_7globset(ptr noalias noundef align 8 dereferenceable(24) %i.u) #13
          to label %.body91 unwind label %bb.bl

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.c
  %lpad.loopexit144 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs79ICTHwG85D_12regex_syntax3hir9translate8HirFrameEEECs3AS159VDs7t_7globset.exit.i100, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEECs3AS159VDs7t_7globset.exit53.i, %bb.cd, %bb.e, %bb.a
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.aa = load <3 x i8>, ptr %i.z, align 4
  %i.ab = shufflevector <3 x i8> %i.aa, <3 x i8> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 2>
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 188
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.47.sroa.4.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %.sroa.47.sroa.5.0..sroa.47.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.412.sroa.4.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.412.sroa.5.0..sroa.412.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.417.sroa.4.0..sroa.417.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %.sroa.417.sroa.5.0..sroa.417.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.422.sroa.4.0..sroa.422.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %.sroa.422.sroa.5.0..sroa.422.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.cb, %bb.b
  %i.ak = invoke { i32, ptr } @_RNvXs1h_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.al = extractvalue { i32, ptr } %i.ak, 1      ; 3 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.e, label %bb.bu

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives16IteratorIndexExt16with_pattern_idsCs3AS159VDs7t_7globset(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull %2, ptr noundef nonnull %i.w)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.an = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !noundef !3
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.2.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx115, align 8
  %.sroa.3.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  store ptr %i.ao, ptr %.sroa.3.0..sroa_idx116, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.ar = load i8, ptr %i.ap, align 8, !range !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.at = load i8, ptr %i.as, align 1
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %.sroa.459.sroa.4.0..sroa.459.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.459.sroa.5.0..sroa.459.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.bj, %bb.f
  %.sroa.0119.0 = phi i32 [ undef, %bb.f ], [ %.sroa.0119.0.a, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6120)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.experimental.noalias.scope.decl(metadata !5)
  call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.ay = invoke { i32, ptr } @_RNvXs1h_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesINtB6_17WithPatternIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB1r_4iter6traits8iterator8Iterator4nextCs3AS159VDs7t_7globset(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.g
  %i.az = extractvalue { i32, ptr } %i.ay, 0
  %i.ba = extractvalue { i32, ptr } %i.ay, 1      ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.bb = load ptr, ptr %.sroa.2.0..sroa_idx115, align 8, !alias.scope !10, !noalias !5, !nonnull !3, !noundef !3 ; 3 uses
  %i.bc = load ptr, ptr %.sroa.3.0..sroa_idx116, align 8, !alias.scope !10, !noalias !5, !nonnull !3, !noundef !3
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.be, ptr %.sroa.2.0..sroa_idx115, align 8, !alias.scope !10, !noalias !5
  %i.bf = ptrtoint ptr %i.ba to i64
  store i64 %i.bf, ptr %.sroa.6120, align 8, !alias.scope !5, !noalias !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.noexc
  %.sroa.0119.0.a = phi i32 [ %.sroa.0119.0, %.noexc ], [ %.sroa.0119.0, %bb.h ], [ %i.az, %bb.i ] ; 2 uses
  %.sink20.i.sroa.phi = phi ptr [ %.sroa.6120, %.noexc ], [ %.sroa.6120, %bb.h ], [ %.sroa.11, %bb.i ]
  %.sink.i = phi ptr [ null, %.noexc ], [ null, %bb.h ], [ %i.bb, %bb.i ]
  store ptr %.sink.i, ptr %.sink20.i.sroa.phi, align 8, !alias.scope !5, !noalias !8
  %.sroa.6120.0..sroa.6120.0..sroa.6120.0..sroa.6120.8. = load i64, ptr %.sroa.6120, align 8, !noundef !3 ; 2 uses
  %.not76 = icmp eq i64 %.sroa.6120.0..sroa.6120.0..sroa.6120.0..sroa.6120.8., 0
  br i1 %.not76, label %bb.k, label %bb.ba

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6120)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bg = load ptr, ptr %.sroa.22.0..sroa_idx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bh = load i64, ptr %.sroa.33.0..sroa_idx, align 8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !13)
  call void @llvm.experimental.noalias.scope.decl(metadata !16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !18
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bj = load i8, ptr %i.bi, align 2, !range !25, !alias.scope !26, !noalias !27, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 115
  %i.bl = load i8, ptr %i.bk, align 1, !range !25, !alias.scope !26, !noalias !27, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bn = load i8, ptr %i.bm, align 4, !range !25, !alias.scope !26, !noalias !27, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bp = load i8, ptr %i.bo, align 8, !range !28, !alias.scope !26, !noalias !27, !noundef !3 ; 3 uses
  %.not.i.i = icmp eq i8 %i.bp, -1
  br i1 %.not.i.i, label %_RNvXsw_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_6ConfigNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.not.i.i.i = icmp eq i8 %i.bp, 2
  br i1 %.not.i.i.i, label %_RNvXsw_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_6ConfigNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !alias.scope !35, !noalias !36
  %i.bs = load ptr, ptr %i.bq, align 8, !alias.scope !35, !noalias !36, !nonnull !3, !noundef !3
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !39
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !35, !noalias !36, !noundef !3
  br label %_RNvXsw_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_6ConfigNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i

_RNvXsw_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_6ConfigNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i, %bb.l, %bb.k
  %.sroa.5.028.i.i = phi i64 [ %i.bw, %_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.l ], [ undef, %bb.k ]
  %i.bx = phi <2 x ptr> [ %i.br, %_RNvXs1_NtNtCs98D8VPWzHuM_14regex_automata4util9prefilterNtB5_9PrefilterNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i ], [ undef, %bb.l ], [ undef, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.bz = load i8, ptr %i.by, align 2, !range !28, !alias.scope !26, !noalias !27, !noundef !3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !40, !alias.scope !26, !noalias !27, !noundef !3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18.i.i = load i64, ptr %i.cc, align 8, !alias.scope !26, !noalias !27
  %i.cd = and i64 %i.cb, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %.sroa.5.0.i.i = select i1 %i.ce, i64 undef, i64 %.val18.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !range !40, !alias.scope !26, !noalias !27, !noundef !3 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val16.i.i = load i64, ptr %i.ch, align 8, !alias.scope !26, !noalias !27
  %i.ci = and i64 %i.cg, 1
  %i.cj = icmp eq i64 %i.ci, 0
  %.sroa.52.0.i.i = select i1 %i.cj, i64 undef, i64 %.val16.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !range !40, !alias.scope !26, !noalias !27, !noundef !3 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val14.i.i = load i64, ptr %i.cn, align 8, !alias.scope !26, !noalias !27
  %i.co = and i64 %i.cm, 1
  %i.cp = icmp eq i64 %i.co, 0
  %.sroa.54.0.i.i = select i1 %i.cp, i64 undef, i64 %.val14.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cr = load i64, ptr %i.cq, align 8, !range !40, !alias.scope !26, !noalias !27, !noundef !3 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val12.i.i = load i64, ptr %i.cs, align 8, !alias.scope !26, !noalias !27
  %i.ct = and i64 %i.cr, 1
  %i.cu = icmp eq i64 %i.ct, 0
  %.sroa.56.0.i.i = select i1 %i.cu, i64 undef, i64 %.val12.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.cw = load i8, ptr %i.cv, align 1, !range !25, !alias.scope !26, !noalias !27, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cy = load i8, ptr %i.cx, align 8, !range !4, !alias.scope !26, !noalias !27, !noundef !3
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !26, !noalias !27
  %i.db = getelementptr inbounds nuw i8, ptr %i.i, i64 114
  store i8 %i.bj, ptr %i.db, align 2, !alias.scope !20, !noalias !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 115
  store i8 %i.bl, ptr %i.dc, align 1, !alias.scope !20, !noalias !41
  %i.dd = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  store i8 %i.bn, ptr %i.dd, align 4, !alias.scope !20, !noalias !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <2 x ptr> %i.bx, ptr %i.de, align 16, !alias.scope !20, !noalias !41
  %.sroa.5.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %.sroa.5.028.i.i, ptr %.sroa.5.0..sroa_idx25.i.i, align 16, !alias.scope !20, !noalias !41
  %.sroa.6.0..sroa_idx26.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 %i.bp, ptr %.sroa.6.0..sroa_idx26.i.i, align 8, !alias.scope !20, !noalias !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 122
  store i8 %i.bz, ptr %i.df, align 2, !alias.scope !20, !noalias !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.cb, ptr %i.dg, align 16, !alias.scope !20, !noalias !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.5.0.i.i, ptr %i.dh, align 8, !alias.scope !20, !noalias !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.cg, ptr %i.di, align 16, !alias.scope !20, !noalias !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 %.sroa.52.0.i.i, ptr %i.dj, align 8, !alias.scope !20, !noalias !41
  %i.dk = load <2 x i64>, ptr %1, align 8, !alias.scope !26, !noalias !27
  store <2 x i64> %i.dk, ptr %i.i, align 16, !alias.scope !20, !noalias !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 117
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.cm, ptr %i.dm, align 16, !alias.scope !20, !noalias !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.54.0.i.i, ptr %i.dn, align 8, !alias.scope !20, !noalias !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 %i.cr, ptr %i.do, align 16, !alias.scope !20, !noalias !41
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %.sroa.56.0.i.i, ptr %i.dp, align 8, !alias.scope !20, !noalias !41
  %i.dq = load <4 x i8>, ptr %i.ck, align 1, !alias.scope !26, !noalias !27
  store <4 x i8> %i.dq, ptr %i.dl, align 1, !alias.scope !20, !noalias !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 121
  store i8 %i.cw, ptr %i.dr, align 1, !alias.scope !20, !noalias !41
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i8 %i.cy, ptr %i.ds, align 16, !alias.scope !20, !noalias !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 113
  store i8 %i.da, ptr %i.dt, align 1, !alias.scope !20, !noalias !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !18
  %i.du = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %i.bh
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB25_5slice4iter4IterBU_ENCINvMsj_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB3o_7Builder19build_many_from_hirBU_E0EE9from_iterCs3AS159VDs7t_7globset(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 %i.bg, ptr noundef nonnull readonly %i.du)
          to label %bb.o unwind label %bb.ar, !noalias !42

bb.o:                                             ; preds = %_RNvXsw_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_6ConfigNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 16 dereferenceable(128) %i.i, i64 128, i1 false), !noalias !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !18, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !noalias !18, !noundef !3
  %i.dz = invoke noundef nonnull ptr @_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo3new(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dw, i64 noundef %i.dy)
          to label %bb.q unwind label %bb.p, !noalias !42

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex9RegexInfoECs3AS159VDs7t_7globset.exit55.i: ; preds = %bb.aq, %bb.ap, %.body.i, %bb.p
  %.pn34.i = phi { ptr, i32 } [ %i.ea, %bb.p ], [ %i.fe, %.body.i ], [ %.pn.pn.ph.i, %bb.aq ], [ %.pn.pn.ph.i, %bb.ap ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs79ICTHwG85D_12regex_syntax3hir3HirEECs3AS159VDs7t_7globset(ptr noalias noundef align 8 dereferenceable(24) %i.h) #13
          to label %.body unwind label %bb.al, !noalias !42

bb.p:                                             ; preds = %bb.u, %bb.o
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex9RegexInfoECs3AS159VDs7t_7globset.exit55.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.dz, ptr %i.g, align 8, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18
  %i.eb = load ptr, ptr %i.dv, align 8, !noalias !18, !nonnull !3, !noundef !3
  %i.ec = load i64, ptr %i.dx, align 8, !noalias !18, !noundef !3
  invoke void @_RNvNtNtCs98D8VPWzHuM_14regex_automata4meta8strategy3new(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.eb, i64 noundef %i.ec)
          to label %bb.s unwind label %bb.r, !noalias !42

bb.r:                                             ; preds = %bb.q
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.s:                                             ; preds = %bb.q
  %i.ee = load i64, ptr %i.d, align 8, !range !43, !noalias !18, !noundef !3 ; 2 uses
  %.not.i87 = icmp eq i64 %i.ee, -3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !18 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !18 ; 5 uses
  br i1 %.not.i87, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.627.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.627.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.623.0..sroa_idx.i, i64 112, i1 false), !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18
  store i64 %i.ee, ptr %0, align 8, !alias.scope !13, !noalias !44
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %.sroa.425.0..sroa_idx.i, align 8, !alias.scope !13, !noalias !44
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ei, ptr %.sroa.526.0..sroa_idx.i, align 8, !alias.scope !13, !noalias !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ej = load ptr, ptr %i.g, align 8, !alias.scope !54, !noalias !18, !nonnull !3, !noundef !3
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !55
  %i.el = icmp eq i64 %i.ek, 1
end_hunk_0
