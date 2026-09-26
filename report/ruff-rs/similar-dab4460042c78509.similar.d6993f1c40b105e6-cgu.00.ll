Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-dab4460042c78509.similar.d6993f1c40b105e6-cgu.00?download=true
inline.NumInlined: 753
inline.NumDeleted: 63
begin_hunk_0_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers18diff_deadline_implINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB14_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB20_B20_INtNtB4_7compact7CompactB20_B20_IB2A_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i: ; preds = %bb.h
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsiqiOkcJdymw_7similar.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit24 unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsiqiOkcJdymw_7similar10algorithms5myers1VEBH_.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.m:                                             ; preds = %bb.f, %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !375, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377), !noalias !375
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !378, !noalias !375, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !379, !noalias !380, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !379, !noalias !380, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !380
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !379, !noalias !380, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !381
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !381
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !381
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !381
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !379, !noalias !380
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.b
  %.sroa.0213.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0213.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0213.0, %i.m        ; 3 uses
  %or.cond330 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond330, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0213.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0213.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa475 = phi i64 [ %.sroa.525.2.i.ph626, %bb.o ], [ %.sroa.525.2.i.ph626, %bb.z ], [ %.sroa.525.2.i.ph626, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa468 = phi i64 [ %.sroa.023.1.i.ph627, %bb.o ], [ %.sroa.023.1.i.ph627, %bb.z ], [ %.sroa.023.1.i.ph627, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa461 = phi i64 [ %.sroa.9.2.i.ph628, %bb.o ], [ %.sroa.9.2.i.ph628, %bb.z ], [ %.sroa.9.2.i.ph628, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa454 = phi i64 [ %.sroa.12.2.i.ph629, %bb.o ], [ %.sroa.12.2.i.ph629, %bb.z ], [ %.sroa.12.2.i.ph629, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select331, 4
  %or.cond336 = or i1 %i.bd, %.not.i57
  br i1 %or.cond336, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa454, %.loopexit ]
  %.sroa.9.0.i633 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa461, %.loopexit ]
  %.sroa.023.0.i632 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa468, %.loopexit ]
  %.sroa.525.0.i631 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa475, %.loopexit ]
  %.sroa.0246.0630 = phi i64 [ 0, %bb.k ], [ %spec.select331, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0246.0630, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0246.0630, 1
  %spec.select331 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0246.0630, 0
  %i.bg = add i64 %.sroa.0246.0630, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa468 to i1
  br i1 %i.bl, label %.loopexit385, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit

.loopexit385:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa475, %bb.m ], [ %.sroa.0246.0630, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa461, %bb.m ], [ %.us-phi538, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa454, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0247.0513 = phi i64 [ %spec.select333, %bb.o ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0247.0513, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0247.0513, 1
  %spec.select333 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !382
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not637 = icmp eq i64 %.sroa.0247.0513, 0
  br i1 %.not637, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i59 = icmp ugt i64 %spec.select333, 4
  %or.cond337 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond337, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1040

.split.loopexit1040:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0213.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1040
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1040 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !383
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split523

.split523:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !384
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !3
  %.not334 = icmp eq i64 %.val49, %.val50
  br i1 %.not334, label %.split527, label %bb.o

.split527.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre840 = sub i64 %i.m, %i.ch
  br label %.split527

.split527:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split527.loopexit
  %.pre-phi = phi i64 [ %.pre840, %.split527.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi533 = phi i64 [ %i.ch, %.split527.loopexit ], [ %.sroa.0213.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi536 = phi i1 [ %i.ce, %.split527.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi537 = phi i64 [ %spec.select333.us, %.split527.loopexit ], [ %spec.select333, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi538 = phi i64 [ %.sroa.0247.0513.us, %.split527.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not638 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not638, label %.outer, label %.lr.ph622

.lr.ph622:                                        ; preds = %.split527
  %i.bs = sub i64 %.us-phi533, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph622, %bb.v
  %.sroa.01.0.i621 = phi i64 [ 0, %.lr.ph622 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i621, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !382
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i621     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !385
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i621     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax839 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax839, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !386
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i64, ptr %i.ca, align 8, !noundef !3
  %.val48 = load i64, ptr %i.cb, align 8, !noundef !3
  %.not335 = icmp eq i64 %.val47, %.val48
  br i1 %.not335, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cc = add nuw i64 %.sroa.01.0.i621, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i621, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split527, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph626, %._crit_edge ], [ %.sroa.525.2.i.ph626, %.split527 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph627, %._crit_edge ], [ %.sroa.023.1.i.ph627, %.split527 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph628, %._crit_edge ], [ %.sroa.9.2.i.ph628, %.split527 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph629, %._crit_edge ], [ %.sroa.12.2.i.ph629, %.split527 ] ; 2 uses
  %.not.i59511 = icmp ugt i64 %.us-phi537, 4
  %or.cond337512 = select i1 %.us-phi536, i1 true, i1 %.not.i59511
  br i1 %or.cond337512, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph629 = phi i64 [ %.sroa.12.0.i634, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph628 = phi i64 [ %.sroa.9.0.i633, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph627 = phi i64 [ %.sroa.023.0.i632, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph626 = phi i64 [ %.sroa.525.0.i631, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0247.0.ph625 = phi i64 [ 0, %bb.l ], [ %.us-phi537, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0247.0513.us = phi i64 [ %spec.select333.us, %bb.y ], [ %.sroa.0247.0.ph625, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0247.0513.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0247.0513.us, 1
  %spec.select333.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !382
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0247.0513.us, 0
  %or.cond636 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond636, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0247.0513.us, %.sroa.0213.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split523

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i64, ptr %i.ck, align 8, !noundef !3
  %.val50.us = load i64, ptr %i.bj, align 8, !noundef !3
  %.not334.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not334.us, label %.split527.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select333.us, 4
  %or.cond337.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond337.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0247.0513.us543 = phi i64 [ %spec.select333.us544, %bb.z ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !382
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0247.0513.us543, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0247.0513.us543, 1
  %spec.select333.us544 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us546 = icmp ugt i64 %spec.select333.us544, 4
  %or.cond337.us547 = select i1 %i.cm, i1 true, i1 %.not.i59.us546
  br i1 %or.cond337.us547, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit385, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi538, i64 %.sroa.0246.0630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !387
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !387
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !387
  store i64 %.sroa.0246.0630, ptr %i.aa, align 8, !noalias !387
  store i64 %.us-phi538, ptr %i.ab, align 8, !noalias !387
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph627 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !387
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph628, i64 %.sroa.525.2.i.ph626)
  store i64 %.sroa.12.2.i.ph629, ptr %i.e, align 8, !noalias !387
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !387
  store i64 %.sroa.525.2.i.ph626, ptr %i.ad, align 8, !noalias !387
  store i64 %.sroa.9.2.i.ph628, ptr %i.ae, align 8, !noalias !387
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !382 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cv = icmp ugt i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi538, %.sroa.9.2.i.ph628
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !387
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph626, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0246.0630, %bb.ab ], [ %.sroa.0246.0630, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph628, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi538, %bb.ab ], [ %.us-phi538, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !387
  br label %.outer

bb.ai:                                            ; preds = %.loopexit385
  %.pre = load ptr, ptr %0, align 8, !noalias !388 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit385
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0213.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !390), !noalias !391
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !392, !noalias !391, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !393, !noalias !394, !noundef !3 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !9, !alias.scope !393, !noalias !394, !noundef !3
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !394
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !393, !noalias !394, !nonnull !3, !noundef !3
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !395
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !395
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !395
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !395
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !393, !noalias !394
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397), !noalias !398
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !399, !noalias !398, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !400, !noalias !401, !noundef !3 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !9, !alias.scope !400, !noalias !401, !noundef !3
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !401
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !400, !noalias !401, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !402
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4279.0..sroa_idx, align 8, !noalias !402
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5280.0..sroa_idx, align 8, !noalias !402
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6281.0..sroa_idx, align 8, !noalias !402
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !400, !noalias !401
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404), !noalias !388
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !405, !noalias !388, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !408
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !409, !noalias !408, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !410, !noalias !411, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !9, !alias.scope !410, !noalias !411, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !411
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !410, !noalias !411, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !412
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !412
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !412
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !412
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !410, !noalias !411
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414), !noalias !388
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !415, !noalias !388, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417), !noalias !418
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !419, !noalias !418, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !420, !noalias !421, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !9, !alias.scope !420, !noalias !421, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !421
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !420, !noalias !421, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !422
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4294.0..sroa_idx, align 8, !noalias !422
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !422
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !422
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !420, !noalias !421
  %i.ev = load i64, ptr %i.em, align 8, !range !9, !alias.scope !423, !noalias !424, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %.sroa.5285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5285.0..sroa_idx, align 8, !noalias !495
  %.sroa.6286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6286.0..sroa_idx, align 8, !noalias !495
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !493, !noalias !494
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !498, !nonnull !3, !align !8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  call void @llvm.experimental.noalias.scope.decl(metadata !500), !noalias !498
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !501, !noalias !498, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !502, !noalias !503, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !9, !alias.scope !502, !noalias !503, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !503
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !502, !noalias !503, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !504
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !504
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !504
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !504
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !502, !noalias !503
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !716)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !718, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720), !noalias !718
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !721, !noalias !718, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !722, !noalias !723, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !722, !noalias !723, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !723
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !722, !noalias !723, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !724
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !724
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !724
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !724
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !722, !noalias !723
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.b
  %.sroa.0213.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0213.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0213.0, %i.m        ; 3 uses
  %or.cond330 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond330, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0213.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0213.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa475 = phi i64 [ %.sroa.525.2.i.ph626, %bb.o ], [ %.sroa.525.2.i.ph626, %bb.z ], [ %.sroa.525.2.i.ph626, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa468 = phi i64 [ %.sroa.023.1.i.ph627, %bb.o ], [ %.sroa.023.1.i.ph627, %bb.z ], [ %.sroa.023.1.i.ph627, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa461 = phi i64 [ %.sroa.9.2.i.ph628, %bb.o ], [ %.sroa.9.2.i.ph628, %bb.z ], [ %.sroa.9.2.i.ph628, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa454 = phi i64 [ %.sroa.12.2.i.ph629, %bb.o ], [ %.sroa.12.2.i.ph629, %bb.z ], [ %.sroa.12.2.i.ph629, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select331, 4
  %or.cond336 = or i1 %i.bd, %.not.i57
  br i1 %or.cond336, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa454, %.loopexit ]
  %.sroa.9.0.i633 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa461, %.loopexit ]
  %.sroa.023.0.i632 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa468, %.loopexit ]
  %.sroa.525.0.i631 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa475, %.loopexit ]
  %.sroa.0246.0630 = phi i64 [ 0, %bb.k ], [ %spec.select331, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0246.0630, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0246.0630, 1
  %spec.select331 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0246.0630, 0
  %i.bg = add i64 %.sroa.0246.0630, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa468 to i1
  br i1 %i.bl, label %.loopexit385, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit

.loopexit385:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa475, %bb.m ], [ %.sroa.0246.0630, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa461, %bb.m ], [ %.us-phi538, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa454, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0247.0513 = phi i64 [ %spec.select333, %bb.o ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0247.0513, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0247.0513, 1
  %spec.select333 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !725
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not637 = icmp eq i64 %.sroa.0247.0513, 0
  br i1 %.not637, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i59 = icmp ugt i64 %spec.select333, 4
  %or.cond337 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond337, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1040

.split.loopexit1040:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0213.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1040
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1040 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !726
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split523

.split523:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !727
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i64, ptr %i.bc, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bj, align 8, !noundef !3
  %.not334 = icmp eq i64 %.val49, %.val50
  br i1 %.not334, label %.split527, label %bb.o

.split527.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre840 = sub i64 %i.m, %i.ch
  br label %.split527

.split527:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split527.loopexit
  %.pre-phi = phi i64 [ %.pre840, %.split527.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi533 = phi i64 [ %i.ch, %.split527.loopexit ], [ %.sroa.0213.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi536 = phi i1 [ %i.ce, %.split527.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi537 = phi i64 [ %spec.select333.us, %.split527.loopexit ], [ %spec.select333, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi538 = phi i64 [ %.sroa.0247.0513.us, %.split527.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not638 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not638, label %.outer, label %.lr.ph622

.lr.ph622:                                        ; preds = %.split527
  %i.bs = sub i64 %.us-phi533, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph622, %bb.v
  %.sroa.01.0.i621 = phi i64 [ 0, %.lr.ph622 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i621, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !725
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i621     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !728
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i621     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax839 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax839, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !729
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i64, ptr %i.ca, align 8, !noundef !3
  %.val48 = load i64, ptr %i.cb, align 8, !noundef !3
  %.not335 = icmp eq i64 %.val47, %.val48
  br i1 %.not335, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cc = add nuw i64 %.sroa.01.0.i621, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i621, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split527, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph626, %._crit_edge ], [ %.sroa.525.2.i.ph626, %.split527 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph627, %._crit_edge ], [ %.sroa.023.1.i.ph627, %.split527 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph628, %._crit_edge ], [ %.sroa.9.2.i.ph628, %.split527 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph629, %._crit_edge ], [ %.sroa.12.2.i.ph629, %.split527 ] ; 2 uses
  %.not.i59511 = icmp ugt i64 %.us-phi537, 4
  %or.cond337512 = select i1 %.us-phi536, i1 true, i1 %.not.i59511
  br i1 %or.cond337512, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph629 = phi i64 [ %.sroa.12.0.i634, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph628 = phi i64 [ %.sroa.9.0.i633, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph627 = phi i64 [ %.sroa.023.0.i632, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph626 = phi i64 [ %.sroa.525.0.i631, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0247.0.ph625 = phi i64 [ 0, %bb.l ], [ %.us-phi537, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0247.0513.us = phi i64 [ %spec.select333.us, %bb.y ], [ %.sroa.0247.0.ph625, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0247.0513.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0247.0513.us, 1
  %spec.select333.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !725
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0247.0513.us, 0
  %or.cond636 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond636, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0247.0513.us, %.sroa.0213.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split523

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i64, ptr %i.ck, align 8, !noundef !3
  %.val50.us = load i64, ptr %i.bj, align 8, !noundef !3
  %.not334.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not334.us, label %.split527.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select333.us, 4
  %or.cond337.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond337.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0247.0513.us543 = phi i64 [ %spec.select333.us544, %bb.z ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !725
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0247.0513.us543, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0247.0513.us543, 1
  %spec.select333.us544 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us546 = icmp ugt i64 %spec.select333.us544, 4
  %or.cond337.us547 = select i1 %i.cm, i1 true, i1 %.not.i59.us546
  br i1 %or.cond337.us547, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit385, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi538, i64 %.sroa.0246.0630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !730
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !730
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !730
  store i64 %.sroa.0246.0630, ptr %i.aa, align 8, !noalias !730
  store i64 %.us-phi538, ptr %i.ab, align 8, !noalias !730
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph627 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !730
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph628, i64 %.sroa.525.2.i.ph626)
  store i64 %.sroa.12.2.i.ph629, ptr %i.e, align 8, !noalias !730
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !730
  store i64 %.sroa.525.2.i.ph626, ptr %i.ad, align 8, !noalias !730
  store i64 %.sroa.9.2.i.ph628, ptr %i.ae, align 8, !noalias !730
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !725 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cv = icmp ugt i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi538, %.sroa.9.2.i.ph628
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !730
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph626, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0246.0630, %bb.ab ], [ %.sroa.0246.0630, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph628, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi538, %bb.ab ], [ %.us-phi538, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !730
  br label %.outer

bb.ai:                                            ; preds = %.loopexit385
  %.pre = load ptr, ptr %0, align 8, !noalias !731 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit385
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0213.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733), !noalias !734
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !735, !noalias !734, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !736, !noalias !737, !noundef !3 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !9, !alias.scope !736, !noalias !737, !noundef !3
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !737
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !736, !noalias !737, !nonnull !3, !noundef !3
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !738
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !738
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !738
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !738
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !736, !noalias !737
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !740), !noalias !741
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !742, !noalias !741, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !743, !noalias !744, !noundef !3 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !9, !alias.scope !743, !noalias !744, !noundef !3
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !744
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !743, !noalias !744, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !745
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4279.0..sroa_idx, align 8, !noalias !745
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5280.0..sroa_idx, align 8, !noalias !745
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6281.0..sroa_idx, align 8, !noalias !745
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !743, !noalias !744
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !746)
  call void @llvm.experimental.noalias.scope.decl(metadata !747), !noalias !731
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !748, !noalias !731, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !751
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !752, !noalias !751, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !753, !noalias !754, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !9, !alias.scope !753, !noalias !754, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !754
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !753, !noalias !754, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !755
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4264.0..sroa_idx, align 8, !noalias !755
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5265.0..sroa_idx, align 8, !noalias !755
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6266.0..sroa_idx, align 8, !noalias !755
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !753, !noalias !754
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.experimental.noalias.scope.decl(metadata !757), !noalias !731
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !758, !noalias !731, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760), !noalias !761
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !762, !noalias !761, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !763, !noalias !764, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !9, !alias.scope !763, !noalias !764, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !764
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !763, !noalias !764, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !765
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4294.0..sroa_idx, align 8, !noalias !765
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !765
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !765
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !763, !noalias !764
  %i.ev = load i64, ptr %i.em, align 8, !range !9, !alias.scope !766, !noalias !767, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEEB6_:bb.a
  store i64 2, ptr %i.zt, align 8, !noalias !838
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4284.0..sroa_idx, align 8, !noalias !838
  %.sroa.5285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5285.0..sroa_idx, align 8, !noalias !838
  %.sroa.6286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6286.0..sroa_idx, align 8, !noalias !838
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !836, !noalias !837
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.experimental.noalias.scope.decl(metadata !840)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !841, !nonnull !3, !align !8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !842)
  call void @llvm.experimental.noalias.scope.decl(metadata !843), !noalias !841
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !844, !noalias !841, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !845, !noalias !846, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !9, !alias.scope !845, !noalias !846, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !846
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !845, !noalias !846, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !847
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !847
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !847
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !847
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !845, !noalias !846
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !981, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !982, !noalias !983, !noundef !3 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !982, !noalias !983, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !983
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !982, !noalias !983, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !981
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !981
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !981
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !981
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !982, !noalias !983
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.b
  %.sroa.0206.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0206.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0206.0, %i.m        ; 3 uses
  %or.cond323 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond323, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0206.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0206.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa468 = phi i64 [ %.sroa.525.2.i.ph619, %bb.o ], [ %.sroa.525.2.i.ph619, %bb.z ], [ %.sroa.525.2.i.ph619, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa461 = phi i64 [ %.sroa.023.1.i.ph620, %bb.o ], [ %.sroa.023.1.i.ph620, %bb.z ], [ %.sroa.023.1.i.ph620, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa454 = phi i64 [ %.sroa.9.2.i.ph621, %bb.o ], [ %.sroa.9.2.i.ph621, %bb.z ], [ %.sroa.9.2.i.ph621, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa447 = phi i64 [ %.sroa.12.2.i.ph622, %bb.o ], [ %.sroa.12.2.i.ph622, %bb.z ], [ %.sroa.12.2.i.ph622, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select324, 4
  %or.cond329 = or i1 %i.bc, %.not.i57
  br i1 %or.cond329, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i627 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa447, %.loopexit ]
  %.sroa.9.0.i626 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa454, %.loopexit ]
  %.sroa.023.0.i625 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa461, %.loopexit ]
  %.sroa.525.0.i624 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa468, %.loopexit ]
  %.sroa.0239.0623 = phi i64 [ 0, %bb.k ], [ %spec.select324, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0239.0623, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0239.0623, 1
  %spec.select324 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0239.0623, 0
  %i.bf = add i64 %.sroa.0239.0623, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa461 to i1
  br i1 %i.bk, label %.loopexit378, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

.loopexit378:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa468, %bb.m ], [ %.sroa.0239.0623, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa454, %bb.m ], [ %.us-phi531, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa447, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0240.0506 = phi i64 [ %spec.select326, %bb.o ], [ %.sroa.0240.0.ph618, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0240.0506, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0240.0506, 1
  %spec.select326 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !984
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not630 = icmp eq i64 %.sroa.0240.0506, 0
  br i1 %.not630, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i59 = icmp ugt i64 %spec.select326, 4
  %or.cond330 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond330, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1047

.split.loopexit1047:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0206.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1047
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1047 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !985
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split516

.split516:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !986
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !3
  %.not327 = icmp eq i64 %.val49, %.val50
  br i1 %.not327, label %.split520, label %bb.o

.split520.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre835 = sub i64 %i.m, %i.cg
  br label %.split520

.split520:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split520.loopexit
  %.pre-phi = phi i64 [ %.pre835, %.split520.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi526 = phi i64 [ %i.cg, %.split520.loopexit ], [ %.sroa.0206.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi529 = phi i1 [ %i.cd, %.split520.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi530 = phi i64 [ %spec.select326.us, %.split520.loopexit ], [ %spec.select326, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi531 = phi i64 [ %.sroa.0240.0506.us, %.split520.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not631 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not631, label %.outer, label %.lr.ph615

.lr.ph615:                                        ; preds = %.split520
  %i.br = sub i64 %.us-phi526, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph615, %bb.v
  %.sroa.01.0.i614 = phi i64 [ 0, %.lr.ph615 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i614, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !984
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i614     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !987
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.bx = add nuw i64 %i.bg, %.sroa.01.0.i614     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.w
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax832 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bg)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax832, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !988
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bx
  %.val47 = load i64, ptr %i.bz, align 8, !noundef !3
  %.val48 = load i64, ptr %i.ca, align 8, !noundef !3
  %.not328 = icmp eq i64 %.val47, %.val48
  br i1 %.not328, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cb = add nuw i64 %.sroa.01.0.i614, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i614, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cc, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split520, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph619, %._crit_edge ], [ %.sroa.525.2.i.ph619, %.split520 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph620, %._crit_edge ], [ %.sroa.023.1.i.ph620, %.split520 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph621, %._crit_edge ], [ %.sroa.9.2.i.ph621, %.split520 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph622, %._crit_edge ], [ %.sroa.12.2.i.ph622, %.split520 ] ; 2 uses
  %.not.i59504 = icmp ugt i64 %.us-phi530, 4
  %or.cond330505 = select i1 %.us-phi529, i1 true, i1 %.not.i59504
  br i1 %or.cond330505, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph622 = phi i64 [ %.sroa.12.0.i627, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph621 = phi i64 [ %.sroa.9.0.i626, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph620 = phi i64 [ %.sroa.023.0.i625, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph619 = phi i64 [ %.sroa.525.0.i624, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0240.0.ph618 = phi i64 [ 0, %bb.l ], [ %.us-phi530, %.outer ] ; 3 uses
  br i1 %i.be, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0240.0506.us = phi i64 [ %spec.select326.us, %bb.y ], [ %.sroa.0240.0.ph618, %.lr.ph ] ; 5 uses
  %i.cd = icmp eq i64 %.sroa.0240.0506.us, 4      ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.0240.0506.us, 1
  %spec.select326.us = select i1 %i.cd, i64 4, i64 %i.ce ; 3 uses
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !984
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0240.0506.us, 0
  %or.cond629 = and i1 %or.cond2.i.us, %i.ay
  br i1 %or.cond629, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = add i64 %.sroa.0240.0506.us, %.sroa.0206.0 ; 3 uses
  %i.ch = sub i64 %i.cg, %i.o                     ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.q
  br i1 %i.ci, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split516

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ch
  %.val49.us = load i64, ptr %i.cj, align 8, !noundef !3
  %.val50.us = load i64, ptr %i.bi, align 8, !noundef !3
  %.not327.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not327.us, label %.split520.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select326.us, 4
  %or.cond330.us = select i1 %i.cd, i1 true, i1 %.not.i59.us
  br i1 %or.cond330.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0240.0506.us536 = phi i64 [ %spec.select326.us537, %bb.z ], [ %.sroa.0240.0.ph618, %.lr.ph.split ] ; 2 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !984
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cl = icmp eq i64 %.sroa.0240.0506.us536, 4   ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0240.0506.us536, 1
  %spec.select326.us537 = select i1 %i.cl, i64 4, i64 %i.cm ; 2 uses
  %.not.i59.us539 = icmp ugt i64 %spec.select326.us537, 4
  %or.cond330.us540 = select i1 %i.cl, i1 true, i1 %.not.i59.us539
  br i1 %or.cond330.us540, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cn = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cn, label %.loopexit378, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi531, i64 %.sroa.0239.0623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !989
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !989
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !989
  store i64 %.sroa.0239.0623, ptr %i.aa, align 8, !noalias !989
  store i64 %.us-phi531, ptr %i.ab, align 8, !noalias !989
  %i.co = trunc nuw i64 %.sroa.023.1.i.ph620 to i1
  br i1 %i.co, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !989
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph621, i64 %.sroa.525.2.i.ph619)
  store i64 %.sroa.12.2.i.ph622, ptr %i.e, align 8, !noalias !989
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !989
  store i64 %.sroa.525.2.i.ph619, ptr %i.ad, align 8, !noalias !989
  store i64 %.sroa.9.2.i.ph621, ptr %i.ae, align 8, !noalias !989
  %i.cp = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph622
  %i.cq = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph622
  %i.cr = zext i1 %i.cq to i8
  br i1 %i.cp, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !984 ; 2 uses
  %.not7.i = icmp eq i8 %i.cs, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ct = icmp eq i64 %.sroa.0239.0623, %.sroa.525.2.i.ph619
  %i.cu = icmp ugt i64 %.sroa.0239.0623, %.sroa.525.2.i.ph619
  %i.cv = zext i1 %i.cu to i8
  br i1 %i.ct, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cw = icmp ugt i64 %.us-phi531, %.sroa.9.2.i.ph621
  %i.cx = zext i1 %i.cw to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cr, %bb.ac ], [ %i.cs, %bb.ad ], [ %i.cx, %bb.af ], [ %i.cv, %bb.ae ]
  %i.cy = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !989
  br i1 %i.cy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph619, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0239.0623, %bb.ab ], [ %.sroa.0239.0623, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph621, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi531, %bb.ab ], [ %.us-phi531, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph622, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !989
  br label %.outer

bb.ai:                                            ; preds = %.loopexit378
  %.pre = load ptr, ptr %0, align 8, !noalias !990 ; 6 uses
  br i1 %i.bm, label %._crit_edge833, label %bb.am

._crit_edge833:                                   ; preds = %bb.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre834 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !991, !noalias !992
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit378
  br i1 %i.bm, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %._crit_edge833, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67
  %i.cz = phi i64 [ %i.eu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %i.dv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre834, %._crit_edge833 ] ; 3 uses
  %i.da = phi ptr [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.dw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %._crit_edge833 ] ; 3 uses
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0206.0     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.df = load i64, ptr %i.dd, align 8, !range !9, !alias.scope !991, !noalias !992, !noundef !3
  %i.dg = icmp eq i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd), !noalias !992
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66: ; preds = %bb.ak, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !991, !noalias !992, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.cz ; 4 uses
  store i64 0, ptr %i.dj, align 8, !noalias !993
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.db, ptr %.sroa.4252.0..sroa_idx, align 8, !noalias !993
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dc, ptr %.sroa.5253.0..sroa_idx, align 8, !noalias !993
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6254.0..sroa_idx, align 8, !noalias !993
  %i.dk = add i64 %i.cz, 1
  store i64 %i.dk, ptr %i.de, align 8, !alias.scope !991, !noalias !992
  %i.dl = add i64 %i.db, %.sroa.12.1.i
  %i.dm = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 136 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !994, !noalias !995, !noundef !3 ; 3 uses
  %i.dq = load i64, ptr %i.dn, align 8, !range !9, !alias.scope !994, !noalias !995, !noundef !3
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn), !noalias !995
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.am, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !994, !noalias !995, !nonnull !3, !noundef !3
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp ; 4 uses
  store i64 2, ptr %i.du, align 8, !noalias !996
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4282.0..sroa_idx, align 8, !noalias !996
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0206.0, ptr %.sroa.5283.0..sroa_idx, align 8, !noalias !996
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6284.0..sroa_idx, align 8, !noalias !996
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !994, !noalias !995
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  call void @llvm.experimental.noalias.scope.decl(metadata !998), !noalias !990
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !999, !noalias !990, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1000, !noalias !1001, !noundef !3 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !9, !alias.scope !1000, !noalias !1001, !noundef !3
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !1001
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1000, !noalias !1001, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !1002
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4267.0..sroa_idx, align 8, !noalias !1002
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5268.0..sroa_idx, align 8, !noalias !1002
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0206.0, ptr %.sroa.6269.0..sroa_idx, align 8, !noalias !1002
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !1000, !noalias !1001
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1004), !noalias !990
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !1005, !noalias !990, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !1006, !noalias !1007, !noundef !3 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !9, !alias.scope !1006, !noalias !1007, !noundef !3
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1007
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !1006, !noalias !1007, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !1008
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4287.0..sroa_idx, align 8, !noalias !1008
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5288.0..sroa_idx, align 8, !noalias !1008
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0206.0, ptr %.sroa.6289.0..sroa_idx, align 8, !noalias !1008
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !1006, !noalias !1007
  %i.eq = load i64, ptr %i.eh, align 8, !range !9, !alias.scope !1009, !noalias !1010, !noundef !3
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1010
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !1009, !noalias !1010, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !1008
end_hunk_2
begin_hunk_3_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 128
  %i.xj = load ptr, ptr %i.xi, align 8, !alias.scope !1054, !noalias !1055, !nonnull !3, !noundef !3
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !1053
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4277.0..sroa_idx, align 8, !noalias !1053
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0206.0, ptr %.sroa.5278.0..sroa_idx, align 8, !noalias !1053
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6279.0..sroa_idx, align 8, !noalias !1053
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !1054, !noalias !1055
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !1058, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !1059, !noalias !1060, !noundef !3 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !9, !alias.scope !1059, !noalias !1060, !noundef !3
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !1060
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !1059, !noalias !1060, !nonnull !3, !noundef !3
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !1058
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4247.0..sroa_idx, align 8, !noalias !1058
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5248.0..sroa_idx, align 8, !noalias !1058
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6249.0..sroa_idx, align 8, !noalias !1058
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !1059, !noalias !1060
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1194, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !1195, !noalias !1196, !noundef !3 ; 3 uses
  %i.aj = load i64, ptr %i.ag, align 8, !range !9, !alias.scope !1195, !noalias !1196, !noundef !3
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag), !noalias !1196
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !1195, !noalias !1196, !nonnull !3, !noundef !3
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.ai ; 4 uses
  store i64 0, ptr %i.an, align 8, !noalias !1194
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1194
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1194
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1194
  %i.ao = add i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !1195, !noalias !1196
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.b
  %.sroa.0206.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0206.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 33 uses
  %i.ap = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.aq = icmp ult i64 %.sroa.0206.0, %i.m        ; 3 uses
  %or.cond323 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond323, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.e
  br i1 %i.ap, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.ar = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.as = sub nuw i64 %i.m, %.sroa.0206.0         ; 6 uses
  %i.at = icmp ult i64 %i.ar, 97
  %i.au = icmp ult i64 %i.as, 97
  %or.cond.i = or i1 %i.au, %i.at
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.as, i64 %i.ar) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.as, i64 %i.ar)
  %i.av = shl nuw i64 %.sroa.0.0.i53, 1
  %i.aw = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.aw, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.av, %bb.h ]
  %i.ax = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ax, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.as, %i.ar
  %i.ay = icmp ule i64 %i.ar, %i.as
  %.not.i.fr = freeze i1 %.not.i
  %i.az = sub i64 %.sroa.0206.0, %i.o             ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.q
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.az
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa468 = phi i64 [ %.sroa.525.2.i.ph619, %bb.o ], [ %.sroa.525.2.i.ph619, %bb.z ], [ %.sroa.525.2.i.ph619, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa461 = phi i64 [ %.sroa.023.1.i.ph620, %bb.o ], [ %.sroa.023.1.i.ph620, %bb.z ], [ %.sroa.023.1.i.ph620, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa454 = phi i64 [ %.sroa.9.2.i.ph621, %bb.o ], [ %.sroa.9.2.i.ph621, %bb.z ], [ %.sroa.9.2.i.ph621, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa447 = phi i64 [ %.sroa.12.2.i.ph622, %bb.o ], [ %.sroa.12.2.i.ph622, %bb.z ], [ %.sroa.12.2.i.ph622, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select324, 4
  %or.cond329 = or i1 %i.bc, %.not.i57
  br i1 %or.cond329, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i627 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa447, %.loopexit ]
  %.sroa.9.0.i626 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa454, %.loopexit ]
  %.sroa.023.0.i625 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa461, %.loopexit ]
  %.sroa.525.0.i624 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa468, %.loopexit ]
  %.sroa.0239.0623 = phi i64 [ 0, %bb.k ], [ %spec.select324, %.loopexit ] ; 11 uses
  %i.bc = icmp eq i64 %.sroa.0239.0623, 4         ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.0239.0623, 1
  %spec.select324 = select i1 %i.bc, i64 4, i64 %i.bd ; 2 uses
  %i.be = icmp eq i64 %.sroa.0239.0623, 0
  %i.bf = add i64 %.sroa.0239.0623, %.sroa.0.0    ; 2 uses
  %i.bg = sub i64 %i.bf, %i.u                     ; 5 uses
  %i.bh = icmp ult i64 %i.bg, %i.w                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bg ; 2 uses
  %i.bj = sub i64 %i.l, %i.bf
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bk = trunc nuw i64 %.sroa.023.1.i.ph.lcssa461 to i1
  br i1 %i.bk, label %.loopexit378, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

.loopexit378:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa468, %bb.m ], [ %.sroa.0239.0623, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa454, %bb.m ], [ %.us-phi531, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa447, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.525.1.i, 0
  %i.bm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bl, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0240.0506 = phi i64 [ %spec.select326, %bb.o ], [ %.sroa.0240.0.ph618, %.lr.ph.split ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.0240.0506, 4         ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.0240.0506, 1
  %spec.select326 = select i1 %i.bn, i64 4, i64 %i.bo ; 3 uses
  %i.bp = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1197
  br i1 %i.bp, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not630 = icmp eq i64 %.sroa.0240.0506, 0
  br i1 %.not630, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i59 = icmp ugt i64 %spec.select326, 4
  %or.cond330 = select i1 %i.bn, i1 true, i1 %.not.i59
  br i1 %or.cond330, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.ba, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1047

.split.loopexit1047:                              ; preds = %bb.p
  %i.bq = sub i64 %.sroa.0206.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1047
  %.us-phi = phi i64 [ %i.bq, %.split.loopexit1047 ], [ %i.ch, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1198
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split516

.split516:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bg, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1199
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i64, ptr %i.bb, align 8, !noundef !3
  %.val50 = load i64, ptr %i.bi, align 8, !noundef !3
  %.not327 = icmp eq i64 %.val49, %.val50
  br i1 %.not327, label %.split520, label %bb.o

.split520.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre835 = sub i64 %i.m, %i.cg
  br label %.split520

.split520:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split520.loopexit
  %.pre-phi = phi i64 [ %.pre835, %.split520.loopexit ], [ %i.as, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi526 = phi i64 [ %i.cg, %.split520.loopexit ], [ %.sroa.0206.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi529 = phi i1 [ %i.cd, %.split520.loopexit ], [ %i.bn, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi530 = phi i64 [ %spec.select326.us, %.split520.loopexit ], [ %spec.select326, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi531 = phi i64 [ %.sroa.0240.0506.us, %.split520.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bj) ; 3 uses
  %.not631 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not631, label %.outer, label %.lr.ph615

.lr.ph615:                                        ; preds = %.split520
  %i.br = sub i64 %.us-phi526, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph615, %bb.v
  %.sroa.01.0.i614 = phi i64 [ 0, %.lr.ph615 ], [ %i.cb, %bb.v ] ; 5 uses
  %i.bs = and i64 %.sroa.01.0.i614, 1023
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bu = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1197
  br i1 %i.bu, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = add nuw i64 %i.br, %.sroa.01.0.i614     ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.q
  br i1 %i.bw, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.br)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1200
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.bx = add nuw i64 %i.bg, %.sroa.01.0.i614     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.w
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax832 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bg)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax832, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1201
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.bx
  %.val47 = load i64, ptr %i.bz, align 8, !noundef !3
  %.val48 = load i64, ptr %i.ca, align 8, !noundef !3
  %.not328 = icmp eq i64 %.val47, %.val48
  br i1 %.not328, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cb = add nuw i64 %.sroa.01.0.i614, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i614, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cc, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split520, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph619, %._crit_edge ], [ %.sroa.525.2.i.ph619, %.split520 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph620, %._crit_edge ], [ %.sroa.023.1.i.ph620, %.split520 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph621, %._crit_edge ], [ %.sroa.9.2.i.ph621, %.split520 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph622, %._crit_edge ], [ %.sroa.12.2.i.ph622, %.split520 ] ; 2 uses
  %.not.i59504 = icmp ugt i64 %.us-phi530, 4
  %or.cond330505 = select i1 %.us-phi529, i1 true, i1 %.not.i59504
  br i1 %or.cond330505, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph622 = phi i64 [ %.sroa.12.0.i627, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph621 = phi i64 [ %.sroa.9.0.i626, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph620 = phi i64 [ %.sroa.023.0.i625, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph619 = phi i64 [ %.sroa.525.0.i624, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0240.0.ph618 = phi i64 [ 0, %bb.l ], [ %.us-phi530, %.outer ] ; 3 uses
  br i1 %i.be, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0240.0506.us = phi i64 [ %spec.select326.us, %bb.y ], [ %.sroa.0240.0.ph618, %.lr.ph ] ; 5 uses
  %i.cd = icmp eq i64 %.sroa.0240.0506.us, 4      ; 3 uses
  %i.ce = add nuw nsw i64 %.sroa.0240.0506.us, 1
  %spec.select326.us = select i1 %i.cd, i64 4, i64 %i.ce ; 3 uses
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1197
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0240.0506.us, 0
  %or.cond629 = and i1 %or.cond2.i.us, %i.ay
  br i1 %or.cond629, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cg = add i64 %.sroa.0240.0506.us, %.sroa.0206.0 ; 3 uses
  %i.ch = sub i64 %i.cg, %i.o                     ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.q
  br i1 %i.ci, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bh, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split516

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ch
  %.val49.us = load i64, ptr %i.cj, align 8, !noundef !3
  %.val50.us = load i64, ptr %i.bi, align 8, !noundef !3
  %.not327.us = icmp eq i64 %.val49.us, %.val50.us
  br i1 %.not327.us, label %.split520.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select326.us, 4
  %or.cond330.us = select i1 %i.cd, i1 true, i1 %.not.i59.us
  br i1 %or.cond330.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0240.0506.us536 = phi i64 [ %spec.select326.us537, %bb.z ], [ %.sroa.0240.0.ph618, %.lr.ph.split ] ; 2 uses
  %i.ck = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1197
  br i1 %i.ck, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cl = icmp eq i64 %.sroa.0240.0506.us536, 4   ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.0240.0506.us536, 1
  %spec.select326.us537 = select i1 %i.cl, i64 4, i64 %i.cm ; 2 uses
  %.not.i59.us539 = icmp ugt i64 %spec.select326.us537, 4
  %or.cond330.us540 = select i1 %i.cl, i1 true, i1 %.not.i59.us539
  br i1 %or.cond330.us540, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cn = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cn, label %.loopexit378, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi531, i64 %.sroa.0239.0623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1202
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1202
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !1202
  store i64 %.sroa.0239.0623, ptr %i.aa, align 8, !noalias !1202
  store i64 %.us-phi531, ptr %i.ab, align 8, !noalias !1202
  %i.co = trunc nuw i64 %.sroa.023.1.i.ph620 to i1
  br i1 %i.co, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1202
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph621, i64 %.sroa.525.2.i.ph619)
  store i64 %.sroa.12.2.i.ph622, ptr %i.e, align 8, !noalias !1202
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !1202
  store i64 %.sroa.525.2.i.ph619, ptr %i.ad, align 8, !noalias !1202
  store i64 %.sroa.9.2.i.ph621, ptr %i.ae, align 8, !noalias !1202
  %i.cp = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph622
  %i.cq = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph622
  %i.cr = zext i1 %i.cq to i8
  br i1 %i.cp, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cs = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1197 ; 2 uses
  %.not7.i = icmp eq i8 %i.cs, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ct = icmp eq i64 %.sroa.0239.0623, %.sroa.525.2.i.ph619
  %i.cu = icmp ugt i64 %.sroa.0239.0623, %.sroa.525.2.i.ph619
  %i.cv = zext i1 %i.cu to i8
  br i1 %i.ct, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cw = icmp ugt i64 %.us-phi531, %.sroa.9.2.i.ph621
  %i.cx = zext i1 %i.cw to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cr, %bb.ac ], [ %i.cs, %bb.ad ], [ %i.cx, %bb.af ], [ %i.cv, %bb.ae ]
  %i.cy = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1202
  br i1 %i.cy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph619, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0239.0623, %bb.ab ], [ %.sroa.0239.0623, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph621, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi531, %bb.ab ], [ %.us-phi531, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph622, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1202
  br label %.outer

bb.ai:                                            ; preds = %.loopexit378
  %.pre = load ptr, ptr %0, align 8, !noalias !1203 ; 6 uses
  br i1 %i.bm, label %._crit_edge833, label %bb.am

._crit_edge833:                                   ; preds = %bb.ai
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %.pre834 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !1204, !noalias !1205
  br label %bb.ak

bb.aj:                                            ; preds = %.loopexit378
  br i1 %i.bm, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %._crit_edge833, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67
  %i.cz = phi i64 [ %i.eu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.ef, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %i.dv, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre834, %._crit_edge833 ] ; 3 uses
  %i.da = phi ptr [ %i.eg, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.dw, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %._crit_edge833 ] ; 3 uses
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0206.0     ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 136
  %i.df = load i64, ptr %i.dd, align 8, !range !9, !alias.scope !1204, !noalias !1205, !noundef !3
  %i.dg = icmp eq i64 %i.cz, %i.df
  br i1 %i.dg, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dd), !noalias !1205
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66: ; preds = %bb.ak, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1204, !noalias !1205, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.cz ; 4 uses
  store i64 0, ptr %i.dj, align 8, !noalias !1206
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.db, ptr %.sroa.4252.0..sroa_idx, align 8, !noalias !1206
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %i.dc, ptr %.sroa.5253.0..sroa_idx, align 8, !noalias !1206
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6254.0..sroa_idx, align 8, !noalias !1206
  %i.dk = add i64 %i.cz, 1
  store i64 %i.dk, ptr %i.de, align 8, !alias.scope !1204, !noalias !1205
  %i.dl = add i64 %i.db, %.sroa.12.1.i
  %i.dm = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 120 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 136 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !1207, !noalias !1208, !noundef !3 ; 3 uses
  %i.dq = load i64, ptr %i.dn, align 8, !range !9, !alias.scope !1207, !noalias !1208, !noundef !3
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn), !noalias !1208
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.am, %bb.an
  %i.ds = getelementptr inbounds nuw i8, ptr %.pre, i64 128
  %i.dt = load ptr, ptr %i.ds, align 8, !alias.scope !1207, !noalias !1208, !nonnull !3, !noundef !3
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp ; 4 uses
  store i64 2, ptr %i.du, align 8, !noalias !1209
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4282.0..sroa_idx, align 8, !noalias !1209
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i64 %.sroa.0206.0, ptr %.sroa.5283.0..sroa_idx, align 8, !noalias !1209
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6284.0..sroa_idx, align 8, !noalias !1209
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.do, align 8, !alias.scope !1207, !noalias !1208
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1211), !noalias !1203
  %i.dw = load ptr, ptr %0, align 8, !alias.scope !1212, !noalias !1203, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 136 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !1213, !noalias !1214, !noundef !3 ; 3 uses
  %i.ea = load i64, ptr %i.dx, align 8, !range !9, !alias.scope !1213, !noalias !1214, !noundef !3
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx), !noalias !1214
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68: ; preds = %bb.ao, %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1213, !noalias !1214, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.dz ; 4 uses
  store i64 1, ptr %i.ee, align 8, !noalias !1215
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4267.0..sroa_idx, align 8, !noalias !1215
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5268.0..sroa_idx, align 8, !noalias !1215
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0206.0, ptr %.sroa.6269.0..sroa_idx, align 8, !noalias !1215
  %i.ef = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ef, ptr %i.dy, align 8, !alias.scope !1213, !noalias !1214
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  call void @llvm.experimental.noalias.scope.decl(metadata !1217), !noalias !1203
  %i.eg = load ptr, ptr %0, align 8, !alias.scope !1218, !noalias !1203, !nonnull !3, !align !8, !noundef !3 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 120 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 136 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !1219, !noalias !1220, !noundef !3 ; 4 uses
  %i.ek = load i64, ptr %i.eh, align 8, !range !9, !alias.scope !1219, !noalias !1220, !noundef !3
  %i.el = icmp eq i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1220
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.aq, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 128 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !1219, !noalias !1220, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw [40 x i8], ptr %i.en, i64 %i.ej ; 4 uses
  store i64 1, ptr %i.eo, align 8, !noalias !1221
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4287.0..sroa_idx, align 8, !noalias !1221
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5288.0..sroa_idx, align 8, !noalias !1221
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i64 %.sroa.0206.0, ptr %.sroa.6289.0..sroa_idx, align 8, !noalias !1221
  %i.ep = add i64 %i.ej, 1                        ; 3 uses
  store i64 %i.ep, ptr %i.ei, align 8, !alias.scope !1219, !noalias !1220
  %i.eq = load i64, ptr %i.eh, align 8, !range !9, !alias.scope !1222, !noalias !1223, !noundef !3
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh), !noalias !1223
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69, %bb.as
  %i.es = load ptr, ptr %i.em, align 8, !alias.scope !1222, !noalias !1223, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.ep ; 4 uses
  store i64 2, ptr %i.et, align 8, !noalias !1221
end_hunk_3
begin_hunk_4_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  %i.xk = getelementptr inbounds nuw [40 x i8], ptr %i.xj, i64 %i.xf ; 4 uses
  store i64 2, ptr %i.xk, align 8, !noalias !1266
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4277.0..sroa_idx, align 8, !noalias !1266
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store i64 %.sroa.0206.0, ptr %.sroa.5278.0..sroa_idx, align 8, !noalias !1266
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store i64 %i.xb, ptr %.sroa.6279.0..sroa_idx, align 8, !noalias !1266
  %i.xl = add i64 %i.xf, 1
  store i64 %i.xl, ptr %i.xe, align 8, !alias.scope !1267, !noalias !1268
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.xm = load ptr, ptr %0, align 8, !alias.scope !1271, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 120 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 136 ; 2 uses
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !1272, !noalias !1273, !noundef !3 ; 3 uses
  %i.xq = load i64, ptr %i.xn, align 8, !range !9, !alias.scope !1272, !noalias !1273, !noundef !3
  %i.xr = icmp eq i64 %i.xp, %i.xq
  br i1 %i.xr, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xn), !noalias !1273
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173: ; preds = %bb.gx, %bb.gy
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  %i.xt = load ptr, ptr %i.xs, align 8, !alias.scope !1272, !noalias !1273, !nonnull !3, !noundef !3
  %i.xu = getelementptr inbounds nuw [40 x i8], ptr %i.xt, i64 %i.xp ; 4 uses
  store i64 0, ptr %i.xu, align 8, !noalias !1271
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store i64 %i.l, ptr %.sroa.4247.0..sroa_idx, align 8, !noalias !1271
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store i64 %i.m, ptr %.sroa.5248.0..sroa_idx, align 8, !noalias !1271
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xu, i64 24
  store i64 %i.k, ptr %.sroa.6249.0..sroa_idx, align 8, !noalias !1271
  %i.xv = add i64 %i.xp, 1
  store i64 %i.xv, ptr %i.xo, align 8, !alias.scope !1272, !noalias !1273
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit173
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.af = load ptr, ptr %0, align 8, !alias.scope !1487, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !1488, !noalias !1487, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 136 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1489, !noalias !1490, !noundef !3 ; 3 uses
  %i.ak = load i64, ptr %i.ah, align 8, !range !9, !alias.scope !1489, !noalias !1490, !noundef !3
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah), !noalias !1490
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !1489, !noalias !1490, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.aj ; 4 uses
  store i64 0, ptr %i.ao, align 8, !noalias !1491
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1491
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1491
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1491
  %i.ap = add i64 %i.aj, 1
  store i64 %i.ap, ptr %i.ai, align 8, !alias.scope !1489, !noalias !1490
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.b
  %.sroa.0213.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0213.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 33 uses
  %i.aq = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ar = icmp ult i64 %.sroa.0213.0, %i.m        ; 3 uses
  %or.cond330 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond330, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.e
  br i1 %i.aq, label %bb.at, label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.as = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.at = sub nuw i64 %i.m, %.sroa.0213.0         ; 6 uses
  %i.au = icmp ult i64 %i.as, 97
  %i.av = icmp ult i64 %i.at, 97
  %or.cond.i = or i1 %i.av, %i.au
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i53 = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as) ; 2 uses
  %.sroa.0.0.i54 = call noundef i64 @llvm.umax.i64(i64 %i.at, i64 %i.as)
  %i.aw = shl nuw i64 %.sroa.0.0.i53, 1
  %i.ax = icmp slt i64 %.sroa.0.0.i53, 0
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.aw, %bb.h ]
  %i.ay = icmp ult i64 %.sroa.0.0.i54, %.sroa.052.0.i
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.at, %i.as
  %i.az = icmp ule i64 %i.as, %i.at
  %.not.i.fr = freeze i1 %.not.i
  %i.ba = sub i64 %.sroa.0213.0, %i.o             ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.q
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ba
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa475 = phi i64 [ %.sroa.525.2.i.ph626, %bb.o ], [ %.sroa.525.2.i.ph626, %bb.z ], [ %.sroa.525.2.i.ph626, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa468 = phi i64 [ %.sroa.023.1.i.ph627, %bb.o ], [ %.sroa.023.1.i.ph627, %bb.z ], [ %.sroa.023.1.i.ph627, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa461 = phi i64 [ %.sroa.9.2.i.ph628, %bb.o ], [ %.sroa.9.2.i.ph628, %bb.z ], [ %.sroa.9.2.i.ph628, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa454 = phi i64 [ %.sroa.12.2.i.ph629, %bb.o ], [ %.sroa.12.2.i.ph629, %bb.z ], [ %.sroa.12.2.i.ph629, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i57 = icmp ugt i64 %spec.select331, 4
  %or.cond336 = or i1 %i.bd, %.not.i57
  br i1 %or.cond336, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i634 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa454, %.loopexit ]
  %.sroa.9.0.i633 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa461, %.loopexit ]
  %.sroa.023.0.i632 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa468, %.loopexit ]
  %.sroa.525.0.i631 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa475, %.loopexit ]
  %.sroa.0246.0630 = phi i64 [ 0, %bb.k ], [ %spec.select331, %.loopexit ] ; 11 uses
  %i.bd = icmp eq i64 %.sroa.0246.0630, 4         ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.0246.0630, 1
  %spec.select331 = select i1 %i.bd, i64 4, i64 %i.be ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0246.0630, 0
  %i.bg = add i64 %.sroa.0246.0630, %.sroa.0.0    ; 2 uses
  %i.bh = sub i64 %i.bg, %i.u                     ; 5 uses
  %i.bi = icmp ult i64 %i.bh, %i.w                ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bh ; 2 uses
  %i.bk = sub i64 %i.l, %i.bg
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa468 to i1
  br i1 %i.bl, label %.loopexit385, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

.loopexit385:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa475, %bb.m ], [ %.sroa.0246.0630, %bb.aa ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa461, %bb.m ], [ %.us-phi538, %bb.aa ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa454, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bm = icmp eq i64 %.sroa.525.1.i, 0
  %i.bn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.bm, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0247.0513 = phi i64 [ %spec.select333, %bb.o ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 3 uses
  %i.bo = icmp eq i64 %.sroa.0247.0513, 4         ; 3 uses
  %i.bp = add nuw nsw i64 %.sroa.0247.0513, 1
  %spec.select333 = select i1 %i.bo, i64 4, i64 %i.bp ; 3 uses
  %i.bq = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1492
  br i1 %i.bq, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not637 = icmp eq i64 %.sroa.0247.0513, 0
  br i1 %.not637, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i59 = icmp ugt i64 %spec.select333, 4
  %or.cond337 = select i1 %i.bo, i1 true, i1 %.not.i59
  br i1 %or.cond337, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bb, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1040

.split.loopexit1040:                              ; preds = %bb.p
  %i.br = sub i64 %.sroa.0213.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1040
  %.us-phi = phi i64 [ %i.br, %.split.loopexit1040 ], [ %i.ci, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1493
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split523

.split523:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bh, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1494
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i32, ptr %i.bc, align 4, !noundef !3
  %.val50 = load i32, ptr %i.bj, align 4, !noundef !3
  %.not334 = icmp eq i32 %.val49, %.val50
  br i1 %.not334, label %.split527, label %bb.o

.split527.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre840 = sub i64 %i.m, %i.ch
  br label %.split527

.split527:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split527.loopexit
  %.pre-phi = phi i64 [ %.pre840, %.split527.loopexit ], [ %i.at, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi533 = phi i64 [ %i.ch, %.split527.loopexit ], [ %.sroa.0213.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi536 = phi i1 [ %i.ce, %.split527.loopexit ], [ %i.bo, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi537 = phi i64 [ %spec.select333.us, %.split527.loopexit ], [ %spec.select333, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi538 = phi i64 [ %.sroa.0247.0513.us, %.split527.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i63 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bk) ; 3 uses
  %.not638 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not638, label %.outer, label %.lr.ph622

.lr.ph622:                                        ; preds = %.split527
  %i.bs = sub i64 %.us-phi533, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph622, %bb.v
  %.sroa.01.0.i621 = phi i64 [ 0, %.lr.ph622 ], [ %i.cc, %bb.v ] ; 5 uses
  %i.bt = and i64 %.sroa.01.0.i621, 1023
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1492
  br i1 %i.bv, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = add nuw i64 %i.bs, %.sroa.01.0.i621     ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.q
  br i1 %i.bx, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bs)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1495
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.by = add nuw i64 %i.bh, %.sroa.01.0.i621     ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.w
  br i1 %i.bz, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax839 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bh)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax839, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1496
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bw
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.by
  %.val47 = load i32, ptr %i.ca, align 4, !noundef !3
  %.val48 = load i32, ptr %i.cb, align 4, !noundef !3
  %.not335 = icmp eq i32 %.val47, %.val48
  br i1 %.not335, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cc = add nuw i64 %.sroa.01.0.i621, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %.sroa.0.0.i63
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i63, %bb.v ], [ %.sroa.01.0.i621, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.cd = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.cd, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split527, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph626, %._crit_edge ], [ %.sroa.525.2.i.ph626, %.split527 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph627, %._crit_edge ], [ %.sroa.023.1.i.ph627, %.split527 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph628, %._crit_edge ], [ %.sroa.9.2.i.ph628, %.split527 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph629, %._crit_edge ], [ %.sroa.12.2.i.ph629, %.split527 ] ; 2 uses
  %.not.i59511 = icmp ugt i64 %.us-phi537, 4
  %or.cond337512 = select i1 %.us-phi536, i1 true, i1 %.not.i59511
  br i1 %or.cond337512, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph629 = phi i64 [ %.sroa.12.0.i634, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph628 = phi i64 [ %.sroa.9.0.i633, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph627 = phi i64 [ %.sroa.023.0.i632, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph626 = phi i64 [ %.sroa.525.0.i631, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0247.0.ph625 = phi i64 [ 0, %bb.l ], [ %.us-phi537, %.outer ] ; 3 uses
  br i1 %i.bf, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0247.0513.us = phi i64 [ %spec.select333.us, %bb.y ], [ %.sroa.0247.0.ph625, %.lr.ph ] ; 5 uses
  %i.ce = icmp eq i64 %.sroa.0247.0513.us, 4      ; 3 uses
  %i.cf = add nuw nsw i64 %.sroa.0247.0513.us, 1
  %spec.select333.us = select i1 %i.ce, i64 4, i64 %i.cf ; 3 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1492
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0247.0513.us, 0
  %or.cond636 = and i1 %or.cond2.i.us, %i.az
  br i1 %or.cond636, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = add i64 %.sroa.0247.0513.us, %.sroa.0213.0 ; 3 uses
  %i.ci = sub i64 %i.ch, %i.o                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.q
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split523

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ci
  %.val49.us = load i32, ptr %i.ck, align 4, !noundef !3
  %.val50.us = load i32, ptr %i.bj, align 4, !noundef !3
  %.not334.us = icmp eq i32 %.val49.us, %.val50.us
  br i1 %.not334.us, label %.split527.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i59.us = icmp ugt i64 %spec.select333.us, 4
  %or.cond337.us = select i1 %i.ce, i1 true, i1 %.not.i59.us
  br i1 %or.cond337.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0247.0513.us543 = phi i64 [ %spec.select333.us544, %bb.z ], [ %.sroa.0247.0.ph625, %.lr.ph.split ] ; 2 uses
  %i.cl = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1492
  br i1 %i.cl, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cm = icmp eq i64 %.sroa.0247.0513.us543, 4   ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0247.0513.us543, 1
  %spec.select333.us544 = select i1 %i.cm, i64 4, i64 %i.cn ; 2 uses
  %.not.i59.us546 = icmp ugt i64 %spec.select333.us544, 4
  %or.cond337.us547 = select i1 %i.cm, i1 true, i1 %.not.i59.us546
  br i1 %or.cond337.us547, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.co = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.co, label %.loopexit385, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i64 = call noundef i64 @llvm.umax.i64(i64 %.us-phi538, i64 %.sroa.0246.0630)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1497
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1497
  store i64 %.sroa.0.0.i64, ptr %i.z, align 8, !noalias !1497
  store i64 %.sroa.0246.0630, ptr %i.aa, align 8, !noalias !1497
  store i64 %.us-phi538, ptr %i.ab, align 8, !noalias !1497
  %i.cp = trunc nuw i64 %.sroa.023.1.i.ph627 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1497
  %.sroa.0.0.i65 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph628, i64 %.sroa.525.2.i.ph626)
  store i64 %.sroa.12.2.i.ph629, ptr %i.e, align 8, !noalias !1497
  store i64 %.sroa.0.0.i65, ptr %i.ac, align 8, !noalias !1497
  store i64 %.sroa.525.2.i.ph626, ptr %i.ad, align 8, !noalias !1497
  store i64 %.sroa.9.2.i.ph628, ptr %i.ae, align 8, !noalias !1497
  %i.cq = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cr = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph629
  %i.cs = zext i1 %i.cr to i8
  br i1 %i.cq, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1492 ; 2 uses
  %.not7.i = icmp eq i8 %i.ct, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cu = icmp eq i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cv = icmp ugt i64 %.sroa.0246.0630, %.sroa.525.2.i.ph626
  %i.cw = zext i1 %i.cv to i8
  br i1 %i.cu, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ugt i64 %.us-phi538, %.sroa.9.2.i.ph628
  %i.cy = zext i1 %i.cx to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.cs, %bb.ac ], [ %i.ct, %bb.ad ], [ %i.cy, %bb.af ], [ %i.cw, %bb.ae ]
  %i.cz = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1497
  br i1 %i.cz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph626, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0246.0630, %bb.ab ], [ %.sroa.0246.0630, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph628, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi538, %bb.ab ], [ %.us-phi538, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph629, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1497
  br label %.outer

bb.ai:                                            ; preds = %.loopexit385
  %.pre = load ptr, ptr %0, align 8, !noalias !1498 ; 3 uses
  br i1 %i.bn, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit385
  br i1 %i.bn, label %bb.ao, label %bb.aq

bb.ak:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67, %bb.ai
  %i.da = phi ptr [ %i.ek, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70 ], [ %i.dz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %bb.ai ]
  %i.db = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.dc = add i64 %.sroa.9.1.i, %.sroa.0213.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1499), !noalias !1498
  %i.dd = load ptr, ptr %i.da, align 8, !alias.scope !1499, !noalias !1500, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !1501, !noalias !1502, !noundef !3 ; 3 uses
  %i.dh = load i64, ptr %i.de, align 8, !range !9, !alias.scope !1501, !noalias !1502, !noundef !3
  %i.di = icmp eq i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de), !noalias !1502
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66: ; preds = %bb.ak, %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !1501, !noalias !1502, !nonnull !3, !noundef !3
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dl, align 8, !noalias !1503
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %i.db, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !1503
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i64 %i.dc, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !1503
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !1503
  %i.dm = add i64 %i.dg, 1
  store i64 %i.dm, ptr %i.df, align 8, !alias.scope !1501, !noalias !1502
  %i.dn = add i64 %i.db, %.sroa.12.1.i
  %i.do = add i64 %i.dc, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1504), !noalias !1498
  %i.dp = load ptr, ptr %.pre, align 8, !alias.scope !1504, !noalias !1505, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !1506, !noalias !1507, !noundef !3 ; 3 uses
  %i.dt = load i64, ptr %i.dq, align 8, !range !9, !alias.scope !1506, !noalias !1507, !noundef !3
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %bb.an, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.an:                                            ; preds = %bb.am
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dq), !noalias !1507
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.am, %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1506, !noalias !1507, !nonnull !3, !noundef !3
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %i.ds ; 4 uses
  store i64 2, ptr %i.dx, align 8, !noalias !1508
  %.sroa.4289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4289.0..sroa_idx, align 8, !noalias !1508
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5290.0..sroa_idx, align 8, !noalias !1508
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6291.0..sroa_idx, align 8, !noalias !1508
  %i.dy = add i64 %i.ds, 1
  store i64 %i.dy, ptr %i.dr, align 8, !alias.scope !1506, !noalias !1507
  br label %bb.ak

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  call void @llvm.experimental.noalias.scope.decl(metadata !1510), !noalias !1498
  %i.dz = load ptr, ptr %0, align 8, !alias.scope !1511, !noalias !1498, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1512), !noalias !1498
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !1512, !noalias !1513, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 136 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1514, !noalias !1515, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %i.eb, align 8, !range !9, !alias.scope !1514, !noalias !1515, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1515
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit68: ; preds = %bb.ao, %bb.ap
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !1514, !noalias !1515, !nonnull !3, !noundef !3
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ed ; 4 uses
  store i64 1, ptr %i.ei, align 8, !noalias !1516
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4274.0..sroa_idx, align 8, !noalias !1516
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !1516
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !1516
  %i.ej = add i64 %i.ed, 1
  store i64 %i.ej, ptr %i.ec, align 8, !alias.scope !1514, !noalias !1515
  br label %bb.ak

bb.aq:                                            ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518), !noalias !1498
  %i.ek = load ptr, ptr %0, align 8, !alias.scope !1519, !noalias !1498, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1520), !noalias !1498
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1520, !noalias !1521, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 120 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 136 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1522, !noalias !1523, !noundef !3 ; 4 uses
  %i.ep = load i64, ptr %i.em, align 8, !range !9, !alias.scope !1522, !noalias !1523, !noundef !3
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1523
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.aq, %bb.ar
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 128 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !1522, !noalias !1523, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %i.eo ; 4 uses
  store i64 1, ptr %i.et, align 8, !noalias !1524
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4294.0..sroa_idx, align 8, !noalias !1524
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !1524
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i64 %.sroa.0213.0, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !1524
  %i.eu = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.eu, ptr %i.en, align 8, !alias.scope !1522, !noalias !1523
  %i.ev = load i64, ptr %i.em, align 8, !range !9, !alias.scope !1525, !noalias !1526, !noundef !3
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %bb.as, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

bb.as:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em), !noalias !1526
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit70: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69, %bb.as
end_hunk_4
begin_hunk_5_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  store i64 2, ptr %i.zt, align 8, !noalias !1599
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4284.0..sroa_idx, align 8, !noalias !1599
  %.sroa.5285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  store i64 %.sroa.0213.0, ptr %.sroa.5285.0..sroa_idx, align 8, !noalias !1599
  %.sroa.6286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  store i64 %i.zj, ptr %.sroa.6286.0..sroa_idx, align 8, !noalias !1599
  %i.zu = add i64 %i.zo, 1
  store i64 %i.zu, ptr %i.zn, align 8, !alias.scope !1597, !noalias !1598
  br label %bb.av

bb.gx:                                            ; preds = %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1601)
  %i.zv = load ptr, ptr %0, align 8, !alias.scope !1602, !nonnull !3, !align !8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  %i.zw = load ptr, ptr %i.zv, align 8, !alias.scope !1603, !noalias !1602, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 120 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zw, i64 136 ; 2 uses
  %i.zz = load i64, ptr %i.zy, align 8, !alias.scope !1604, !noalias !1605, !noundef !3 ; 3 uses
  %i.aaa = load i64, ptr %i.zx, align 8, !range !9, !alias.scope !1604, !noalias !1605, !noundef !3
  %i.aab = icmp eq i64 %i.zz, %i.aaa
  br i1 %i.aab, label %bb.gy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zx), !noalias !1605
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180: ; preds = %bb.gx, %bb.gy
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load ptr, ptr %i.aac, align 8, !alias.scope !1604, !noalias !1605, !nonnull !3, !noundef !3
  %i.aae = getelementptr inbounds nuw [40 x i8], ptr %i.aad, i64 %i.zz ; 4 uses
  store i64 0, ptr %i.aae, align 8, !noalias !1606
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store i64 %i.l, ptr %.sroa.4254.0..sroa_idx, align 8, !noalias !1606
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  store i64 %i.m, ptr %.sroa.5255.0..sroa_idx, align 8, !noalias !1606
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  store i64 %i.k, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !1606
  %i.aaf = add i64 %i.zz, 1
  store i64 %i.aaf, ptr %i.zy, align 8, !alias.scope !1604, !noalias !1605
  br label %bb.gz

bb.gz:                                            ; preds = %bb.av, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit180
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 27 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !3 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8              ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !3 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1697, !noalias !1698, !noundef !3 ; 3 uses
  %i.al = load i64, ptr %i.ai, align 8, !range !9, !alias.scope !1697, !noalias !1698, !noundef !3
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !1698
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1697, !noalias !1698, !nonnull !3, !noundef !3
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.ao, i64 %i.ak ; 4 uses
  store i64 0, ptr %i.ap, align 8
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %2, ptr %.sroa.4250.0..sroa_idx, align 8
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %5, ptr %.sroa.5251.0..sroa_idx, align 8
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i64 %i.h, ptr %.sroa.6252.0..sroa_idx, align 8
  %i.aq = add i64 %i.ak, 1
  store i64 %i.aq, ptr %i.aj, align 8, !alias.scope !1697, !noalias !1698
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %bb.b
  %.sroa.0204.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0204.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit ] ; 31 uses
  %i.ar = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.as = icmp ult i64 %.sroa.0204.0, %i.m        ; 3 uses
  %or.cond321 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond321, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %bb.e
  br i1 %i.ar, label %bb.aq, label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.at = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.au = sub nuw i64 %i.m, %.sroa.0204.0         ; 6 uses
  %i.av = icmp ult i64 %i.at, 97
  %i.aw = icmp ult i64 %i.au, 97
  %or.cond.i = or i1 %i.aw, %i.av
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i51 = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.at) ; 2 uses
  %.sroa.0.0.i52 = call noundef i64 @llvm.umax.i64(i64 %i.au, i64 %i.at)
  %i.ax = shl nuw i64 %.sroa.0.0.i51, 1
  %i.ay = icmp slt i64 %.sroa.0.0.i51, 0
  br i1 %i.ay, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ax, %bb.h ]
  %i.az = icmp ult i64 %.sroa.0.0.i52, %.sroa.052.0.i
  br i1 %i.az, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.au, %i.at
  %i.ba = icmp ule i64 %i.at, %i.au
  %.not.i.fr = freeze i1 %.not.i
  %i.bb = sub i64 %.sroa.0204.0, %i.o             ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.q
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bb
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %bb.z, %bb.o, %bb.y
  %.sroa.525.2.i.ph.lcssa466 = phi i64 [ %.sroa.525.2.i.ph617, %bb.o ], [ %.sroa.525.2.i.ph617, %bb.z ], [ %.sroa.525.2.i.ph617, %bb.y ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa459 = phi i64 [ %.sroa.023.1.i.ph618, %bb.o ], [ %.sroa.023.1.i.ph618, %bb.z ], [ %.sroa.023.1.i.ph618, %bb.y ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa452 = phi i64 [ %.sroa.9.2.i.ph619, %bb.o ], [ %.sroa.9.2.i.ph619, %bb.z ], [ %.sroa.9.2.i.ph619, %bb.y ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa445 = phi i64 [ %.sroa.12.2.i.ph620, %bb.o ], [ %.sroa.12.2.i.ph620, %bb.z ], [ %.sroa.12.2.i.ph620, %bb.y ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i55 = icmp ugt i64 %spec.select322, 4
  %or.cond327 = or i1 %i.be, %.not.i55
  br i1 %or.cond327, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i625 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa445, %.loopexit ]
  %.sroa.9.0.i624 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa452, %.loopexit ]
  %.sroa.023.0.i623 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa459, %.loopexit ]
  %.sroa.525.0.i622 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa466, %.loopexit ]
  %.sroa.0237.0621 = phi i64 [ 0, %bb.k ], [ %spec.select322, %.loopexit ] ; 11 uses
  %i.be = icmp eq i64 %.sroa.0237.0621, 4         ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.0237.0621, 1
  %spec.select322 = select i1 %i.be, i64 4, i64 %i.bf ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0237.0621, 0
  %i.bh = add i64 %.sroa.0237.0621, %.sroa.0.0    ; 2 uses
  %i.bi = sub i64 %i.bh, %i.u                     ; 5 uses
  %i.bj = icmp ult i64 %i.bi, %i.w                ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bi ; 2 uses
  %i.bl = sub i64 %i.l, %i.bh
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.bm = trunc nuw i64 %.sroa.023.1.i.ph.lcssa459 to i1
  br i1 %i.bm, label %.loopexit376, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

.loopexit376:                                     ; preds = %bb.aa, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa466, %bb.m ], [ %.sroa.0237.0621, %bb.aa ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa452, %bb.m ], [ %.us-phi529, %bb.aa ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa445, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.aa ] ; 3 uses
  %i.bn = icmp eq i64 %.sroa.525.1.i, 0
  %i.bo = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre = load i64, ptr %i.ag, align 8, !noalias !1699 ; 10 uses
  br i1 %i.bn, label %bb.ai, label %bb.aj

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %.sroa.0238.0504 = phi i64 [ %spec.select324, %bb.o ], [ %.sroa.0238.0.ph616, %.lr.ph.split ] ; 3 uses
  %i.bp = icmp eq i64 %.sroa.0238.0504, 4         ; 3 uses
  %i.bq = add nuw nsw i64 %.sroa.0238.0504, 1
  %spec.select324 = select i1 %i.bp, i64 4, i64 %i.bq ; 3 uses
  %i.br = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1700
  br i1 %i.br, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split
  %.not628 = icmp eq i64 %.sroa.0238.0504, 0
  br i1 %.not628, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30
  %.not.i57 = icmp ugt i64 %spec.select324, 4
  %or.cond328 = select i1 %i.bp, i1 true, i1 %.not.i57
  br i1 %or.cond328, label %.loopexit, label %.lr.ph.split.split

bb.p:                                             ; preds = %bb.n
  br i1 %i.bc, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, label %.split.loopexit1043

.split.loopexit1043:                              ; preds = %bb.p
  %i.bs = sub i64 %.sroa.0204.0, %i.o
  br label %.split

.split:                                           ; preds = %bb.x, %.split.loopexit1043
  %.us-phi = phi i64 [ %i.bs, %.split.loopexit1043 ], [ %i.cj, %bb.x ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !1701
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31: ; preds = %bb.p
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, label %.split514

.split514:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bi, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !1702
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31
  %.val49 = load i32, ptr %i.bd, align 4, !noundef !3
  %.val50 = load i32, ptr %i.bk, align 4, !noundef !3
  %.not325 = icmp eq i32 %.val49, %.val50
  br i1 %.not325, label %.split518, label %bb.o

.split518.loopexit:                               ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us
  %.pre831 = sub i64 %i.m, %i.ci
  br label %.split518

.split518:                                        ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30, %.split518.loopexit
  %.pre-phi = phi i64 [ %.pre831, %.split518.loopexit ], [ %i.au, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi524 = phi i64 [ %i.ci, %.split518.loopexit ], [ %.sroa.0204.0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi527 = phi i1 [ %i.cf, %.split518.loopexit ], [ %i.bp, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ]
  %.us-phi528 = phi i64 [ %spec.select324.us, %.split518.loopexit ], [ %spec.select324, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 2 uses
  %.us-phi529 = phi i64 [ %.sroa.0238.0504.us, %.split518.loopexit ], [ 0, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30 ] ; 6 uses
  %.sroa.0.0.i61 = call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.bl) ; 3 uses
  %.not629 = icmp eq i64 %.sroa.0.0.i61, 0
  br i1 %.not629, label %.outer, label %.lr.ph613

.lr.ph613:                                        ; preds = %.split518
  %i.bt = sub i64 %.us-phi524, %i.o               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph613, %bb.v
  %.sroa.01.0.i612 = phi i64 [ 0, %.lr.ph613 ], [ %i.cd, %bb.v ] ; 5 uses
  %i.bu = and i64 %.sroa.01.0.i612, 1023
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1700
  br i1 %i.bw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = add nuw i64 %i.bt, %.sroa.01.0.i612     ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.q
  br i1 %i.by, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29, label %bb.t

bb.t:                                             ; preds = %bb.s
  %umax = call i64 @llvm.umax.i64(i64 %i.q, i64 %i.bt)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !1703
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29: ; preds = %bb.s
  %i.bz = add nuw i64 %i.bi, %.sroa.01.0.i612     ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.w
  br i1 %i.ca, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, label %bb.u

bb.u:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %umax830 = call i64 @llvm.umax.i64(i64 %i.w, i64 %i.bi)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax830, i64 noundef %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !1704
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit29
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.bx
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bz
  %.val47 = load i32, ptr %i.cb, align 4, !noundef !3
  %.val48 = load i32, ptr %i.cc, align 4, !noundef !3
  %.not326 = icmp eq i32 %.val47, %.val48
  br i1 %.not326, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit
  %i.cd = add nuw i64 %.sroa.01.0.i612, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %.sroa.0.0.i61
  br i1 %exitcond.not, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i61, %bb.v ], [ %.sroa.01.0.i612, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit ] ; 8 uses
  %i.ce = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.ce, label %bb.aa, label %.outer

.outer:                                           ; preds = %.split518, %bb.ah, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ah ], [ %.sroa.525.2.i.ph617, %._crit_edge ], [ %.sroa.525.2.i.ph617, %.split518 ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ah ], [ %.sroa.023.1.i.ph618, %._crit_edge ], [ %.sroa.023.1.i.ph618, %.split518 ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ah ], [ %.sroa.9.2.i.ph619, %._crit_edge ], [ %.sroa.9.2.i.ph619, %.split518 ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ah ], [ %.sroa.12.2.i.ph620, %._crit_edge ], [ %.sroa.12.2.i.ph620, %.split518 ] ; 2 uses
  %.not.i57502 = icmp ugt i64 %.us-phi528, 4
  %or.cond328503 = select i1 %.us-phi527, i1 true, i1 %.not.i57502
  br i1 %or.cond328503, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph620 = phi i64 [ %.sroa.12.0.i625, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 9 uses
  %.sroa.9.2.i.ph619 = phi i64 [ %.sroa.9.0.i624, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 9 uses
  %.sroa.023.1.i.ph618 = phi i64 [ %.sroa.023.0.i623, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 6 uses
  %.sroa.525.2.i.ph617 = phi i64 [ %.sroa.525.0.i622, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 10 uses
  %.sroa.0238.0.ph616 = phi i64 [ 0, %bb.l ], [ %.us-phi528, %.outer ] ; 3 uses
  br i1 %i.bg, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.sroa.0238.0504.us = phi i64 [ %spec.select324.us, %bb.y ], [ %.sroa.0238.0.ph616, %.lr.ph ] ; 5 uses
  %i.cf = icmp eq i64 %.sroa.0238.0504.us, 4      ; 3 uses
  %i.cg = add nuw nsw i64 %.sroa.0238.0504.us, 1
  %spec.select324.us = select i1 %i.cf, i64 4, i64 %i.cg ; 3 uses
  %i.ch = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1700
  br i1 %i.ch, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.us
  %or.cond2.i.us = icmp ne i64 %.sroa.0238.0504.us, 0
  %or.cond627 = and i1 %or.cond2.i.us, %i.ba
  br i1 %or.cond627, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = add i64 %.sroa.0238.0504.us, %.sroa.0204.0 ; 3 uses
  %i.cj = sub i64 %i.ci, %i.o                     ; 3 uses
  %i.ck = icmp ult i64 %i.cj, %i.q
  br i1 %i.ck, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us, label %.split

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us: ; preds = %bb.x
  br i1 %i.bj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, label %.split514

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit31.us
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cj
  %.val49.us = load i32, ptr %i.cl, align 4, !noundef !3
  %.val50.us = load i32, ptr %i.bk, align 4, !noundef !3
  %.not325.us = icmp eq i32 %.val49.us, %.val50.us
  br i1 %.not325.us, label %.split518.loopexit, label %bb.y

bb.y:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit30.us, %bb.w
  %.not.i57.us = icmp ugt i64 %spec.select324.us, 4
  %or.cond328.us = select i1 %i.cf, i1 true, i1 %.not.i57.us
  br i1 %or.cond328.us, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i.fr, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.z
  %.sroa.0238.0504.us534 = phi i64 [ %spec.select324.us535, %bb.z ], [ %.sroa.0238.0.ph616, %.lr.ph.split ] ; 2 uses
  %i.cm = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1700
  br i1 %i.cm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split.us
  %i.cn = icmp eq i64 %.sroa.0238.0504.us534, 4   ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0238.0504.us534, 1
  %spec.select324.us535 = select i1 %i.cn, i64 4, i64 %i.co ; 2 uses
  %.not.i57.us537 = icmp ugt i64 %spec.select324.us535, 4
  %or.cond328.us538 = select i1 %i.cn, i1 true, i1 %.not.i57.us537
  br i1 %or.cond328.us538, label %.loopexit, label %.lr.ph.split.split.us

bb.aa:                                            ; preds = %._crit_edge
  %i.cp = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.cp, label %.loopexit376, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.0.i62 = call noundef i64 @llvm.umax.i64(i64 %.us-phi529, i64 %.sroa.0237.0621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1705
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !1705
  store i64 %.sroa.0.0.i62, ptr %i.z, align 8, !noalias !1705
  store i64 %.sroa.0237.0621, ptr %i.aa, align 8, !noalias !1705
  store i64 %.us-phi529, ptr %i.ab, align 8, !noalias !1705
  %i.cq = trunc nuw i64 %.sroa.023.1.i.ph618 to i1
  br i1 %i.cq, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1705
  %.sroa.0.0.i63 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph619, i64 %.sroa.525.2.i.ph617)
  store i64 %.sroa.12.2.i.ph620, ptr %i.e, align 8, !noalias !1705
  store i64 %.sroa.0.0.i63, ptr %i.ac, align 8, !noalias !1705
  store i64 %.sroa.525.2.i.ph617, ptr %i.ad, align 8, !noalias !1705
  store i64 %.sroa.9.2.i.ph619, ptr %i.ae, align 8, !noalias !1705
  %i.cr = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph620
  %i.cs = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph620
  %i.ct = zext i1 %i.cs to i8
  br i1 %i.cr, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cu = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac), !noalias !1700 ; 2 uses
  %.not7.i = icmp eq i8 %i.cu, 2
  br i1 %.not7.i, label %bb.ae, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cv = icmp eq i64 %.sroa.0237.0621, %.sroa.525.2.i.ph617
  %i.cw = icmp ugt i64 %.sroa.0237.0621, %.sroa.525.2.i.ph617
  %i.cx = zext i1 %i.cw to i8
  br i1 %i.cv, label %bb.af, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.af:                                            ; preds = %bb.ae
  %i.cy = icmp ugt i64 %.us-phi529, %.sroa.9.2.i.ph619
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.2.i = phi i8 [ %i.ct, %bb.ac ], [ %i.cu, %bb.ad ], [ %i.cz, %bb.af ], [ %i.cx, %bb.ae ]
  %i.da = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1705
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ab, %bb.ag, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph617, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0237.0621, %bb.ab ], [ %.sroa.0237.0621, %bb.ag ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph619, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.us-phi529, %bb.ab ], [ %.us-phi529, %bb.ag ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph620, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ab ], [ %.sroa.01.0.i.lcssa, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1705
  br label %.outer

bb.ai:                                            ; preds = %.loopexit376
  br i1 %i.bo, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %.loopexit376
  %i.db = load i64, ptr %i.af, align 8, !range !9, !noalias !1699, !noundef !3
  %i.dc = icmp eq i64 %.pre, %i.db                ; 2 uses
  br i1 %i.bo, label %bb.an, label %bb.ao

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67, %bb.an, %bb.am
  %.pre.sink.ph = phi i64 [ %.pre, %bb.an ], [ %.pre, %bb.am ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ]
  %.sink1224.ph = phi i64 [ 1, %bb.an ], [ 2, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ]
  %.sroa.0204.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0204.0, %bb.am ], [ %.sroa.0204.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0204.0, %bb.an ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ]
  %.sink1221.ph = phi i64 [ 1, %bb.an ], [ 1, %bb.am ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1699
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67, %bb.an, %bb.am
  %.pre.sink = phi i64 [ %.pre, %bb.an ], [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.pre, %bb.am ], [ %.pre.sink.ph, %.sink.split.sink.split ]
  %.sink1224 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ 2, %bb.am ], [ %.sink1224.ph, %.sink.split.sink.split ]
  %.sroa.0204.0.sink = phi i64 [ %.sroa.525.1.i, %bb.an ], [ %.sroa.0204.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.sroa.0204.0, %bb.am ], [ %.sroa.0204.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0204.0, %bb.an ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ %.sroa.9.1.i, %bb.am ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink1221 = phi i64 [ 1, %bb.an ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67 ], [ 1, %bb.am ], [ %.sink1221.ph, %.sink.split.sink.split ]
  %i.dd = load ptr, ptr %i.ah, align 8, !noalias !1699, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.pre.sink ; 4 uses
  store i64 %.sink1224, ptr %i.de, align 8, !noalias !1699
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4270.0..sroa_idx, align 8, !noalias !1699
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %.sroa.0204.0.sink, ptr %.sroa.5271.0..sroa_idx, align 8, !noalias !1699
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6272.0..sroa_idx, align 8, !noalias !1699
  %i.df = add i64 %.pre, %.sink1221               ; 2 uses
  store i64 %i.df, ptr %i.ag, align 8, !noalias !1699
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ai
  %i.dg = phi i64 [ %.pre, %bb.ai ], [ %i.df, %.sink.split ] ; 3 uses
  %i.dh = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.di = add i64 %.sroa.9.1.i, %.sroa.0204.0     ; 2 uses
  %i.dj = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1706, !noalias !1707, !noundef !3
  %i.dk = icmp eq i64 %i.dg, %i.dj
  br i1 %i.dk, label %bb.al, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64

bb.al:                                            ; preds = %bb.ak
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1707
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64: ; preds = %bb.ak, %bb.al
  %i.dl = load ptr, ptr %i.ah, align 8, !alias.scope !1706, !noalias !1707, !nonnull !3, !noundef !3
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %i.dg ; 4 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1699
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.dh, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1699
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.di, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !1699
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1699
  %i.dn = add i64 %i.dg, 1
  store i64 %i.dn, ptr %i.ag, align 8, !alias.scope !1706, !noalias !1707
  %i.do = add i64 %i.dh, %.sroa.12.1.i
  %i.dp = add i64 %i.di, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

bb.am:                                            ; preds = %bb.ai
  %i.dq = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1708, !noalias !1709, !noundef !3
  %i.dr = icmp eq i64 %.pre, %i.dq
  br i1 %i.dr, label %.sink.split.sink.split, label %.sink.split

bb.an:                                            ; preds = %bb.aj
  br i1 %i.dc, label %.sink.split.sink.split, label %.sink.split

bb.ao:                                            ; preds = %bb.aj
  br i1 %i.dc, label %bb.ap, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1710
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit67: ; preds = %bb.ao, %bb.ap
  %i.ds = load ptr, ptr %i.ah, align 8, !alias.scope !1711, !noalias !1710, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.ds, i64 %.pre ; 4 uses
  store i64 1, ptr %i.dt, align 8, !noalias !1699
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4285.0..sroa_idx, align 8, !noalias !1699
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5286.0..sroa_idx, align 8, !noalias !1699
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 %.sroa.0204.0, ptr %.sroa.6287.0..sroa_idx, align 8, !noalias !1699
  %i.du = add i64 %.pre, 1                        ; 4 uses
  store i64 %i.du, ptr %i.ag, align 8, !alias.scope !1711, !noalias !1710
  %i.dv = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1712, !noalias !1713, !noundef !3
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.r, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64
  %.sroa.0204.2 = phi i64 [ %.sroa.0204.0, %bb.g ], [ %.sroa.0204.0, %bb.j ], [ %.sroa.0204.0, %bb.m ], [ %i.dp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64 ], [ %.sroa.0204.0, %.lr.ph.split.split ], [ %.sroa.0204.0, %.lr.ph.split.us ], [ %.sroa.0204.0, %bb.r ], [ %.sroa.0204.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.do, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.dx = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.dy = icmp eq i64 %.sroa.0204.2, %.sroa.0204.0
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.aq:                                            ; preds = %bb.f
  br i1 %i.as, label %bb.av, label %bb.at

bb.ar:                                            ; preds = %bb.f
  br i1 %i.as, label %.thread, label %bb.as

bb.as:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread318, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit170, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit169, %bb.gn, %bb.ar
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gu, label %bb.gs

bb.at:                                            ; preds = %bb.aq
  %i.dz = sub nuw i64 %i.l, %.sroa.0.0
  %i.ea = load i64, ptr %i.ag, align 8, !alias.scope !1714, !noalias !1715, !noundef !3 ; 3 uses
  %i.eb = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1714, !noalias !1715, !noundef !3
  %i.ec = icmp eq i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.au, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

bb.au:                                            ; preds = %bb.at
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1715
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit69: ; preds = %bb.at, %bb.au
  %i.ed = load ptr, ptr %i.ah, align 8, !alias.scope !1714, !noalias !1715, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.ed, i64 %i.ea ; 4 uses
  store i64 1, ptr %i.ee, align 8
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4260.0..sroa_idx, align 8
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %i.dz, ptr %.sroa.5261.0..sroa_idx, align 8
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i64 %.sroa.0204.0, ptr %.sroa.6262.0..sroa_idx, align 8
  %i.ef = add i64 %i.ea, 1
  store i64 %i.ef, ptr %i.ag, align 8, !alias.scope !1714, !noalias !1715
  br label %bb.as

bb.av:                                            ; preds = %bb.aq
  %i.eg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !1716
  br i1 %i.eg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread, label %bb.aw
end_hunk_5
begin_hunk_6_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a
  %i.vf = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1749, !noalias !1750, !noundef !3
  %i.vg = icmp eq i64 %i.ve, %i.vf
  br i1 %i.vg, label %bb.gp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit168

bb.gp:                                            ; preds = %bb.go
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1750
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit168

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit168: ; preds = %bb.go, %bb.gp
  %i.vh = load ptr, ptr %i.ah, align 8, !alias.scope !1749, !noalias !1750, !nonnull !3, !noundef !3
  %i.vi = getelementptr inbounds nuw [40 x i8], ptr %i.vh, i64 %i.ve ; 4 uses
  store i64 1, ptr %i.vi, align 8
  %.sroa.4265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4265.0..sroa_idx, align 8
  %.sroa.5266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store i64 %i.vd, ptr %.sroa.5266.0..sroa_idx, align 8
  %.sroa.6267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  store i64 %.sroa.0204.0, ptr %.sroa.6267.0..sroa_idx, align 8
  %i.vj = add i64 %i.ve, 1                        ; 3 uses
  store i64 %i.vj, ptr %i.ag, align 8, !alias.scope !1749, !noalias !1750
  %i.vk = sub nuw i64 %i.m, %.sroa.0204.0
  %i.vl = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1751, !noalias !1752, !noundef !3
  %i.vm = icmp eq i64 %i.vj, %i.vl
  br i1 %i.vm, label %bb.gq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit169

bb.gq:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit168
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1752
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit169

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit169: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit168, %bb.gq
  %i.vn = load ptr, ptr %i.ah, align 8, !alias.scope !1751, !noalias !1752, !nonnull !3, !noundef !3
  %i.vo = getelementptr inbounds nuw [40 x i8], ptr %i.vn, i64 %i.vj ; 4 uses
  store i64 2, ptr %i.vo, align 8
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4280.0..sroa_idx, align 8
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store i64 %.sroa.0204.0, ptr %.sroa.5281.0..sroa_idx, align 8
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  store i64 %i.vk, ptr %.sroa.6282.0..sroa_idx, align 8
  %i.vp = add i64 %i.ve, 2
  store i64 %i.vp, ptr %i.ag, align 8, !alias.scope !1751, !noalias !1752
  br label %bb.as

.thread:                                          ; preds = %bb.ar
  %i.vq = sub nuw i64 %i.m, %.sroa.0204.0
  %i.vr = load i64, ptr %i.ag, align 8, !alias.scope !1753, !noalias !1754, !noundef !3 ; 3 uses
  %i.vs = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1753, !noalias !1754, !noundef !3
  %i.vt = icmp eq i64 %i.vr, %i.vs
  br i1 %i.vt, label %bb.gr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit170

bb.gr:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1754
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit170

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit170: ; preds = %.thread, %bb.gr
  %i.vu = load ptr, ptr %i.ah, align 8, !alias.scope !1753, !noalias !1754, !nonnull !3, !noundef !3
  %i.vv = getelementptr inbounds nuw [40 x i8], ptr %i.vu, i64 %i.vr ; 4 uses
  store i64 2, ptr %i.vv, align 8
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4275.0..sroa_idx, align 8
  %.sroa.5276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store i64 %.sroa.0204.0, ptr %.sroa.5276.0..sroa_idx, align 8
  %.sroa.6277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  store i64 %i.vq, ptr %.sroa.6277.0..sroa_idx, align 8
  %i.vw = add i64 %i.vr, 1
  store i64 %i.vw, ptr %i.ag, align 8, !alias.scope !1753, !noalias !1754
  br label %bb.as

bb.gs:                                            ; preds = %bb.as
  %i.vx = load i64, ptr %i.ag, align 8, !alias.scope !1755, !noalias !1756, !noundef !3 ; 3 uses
  %i.vy = load i64, ptr %i.af, align 8, !range !9, !alias.scope !1755, !noalias !1756, !noundef !3
  %i.vz = icmp eq i64 %i.vx, %i.vy
  br i1 %i.vz, label %bb.gt, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit171

bb.gt:                                            ; preds = %bb.gs
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af), !noalias !1756
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit171

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit171: ; preds = %bb.gs, %bb.gt
  %i.wa = load ptr, ptr %i.ah, align 8, !alias.scope !1755, !noalias !1756, !nonnull !3, !noundef !3
  %i.wb = getelementptr inbounds nuw [40 x i8], ptr %i.wa, i64 %i.vx ; 4 uses
  store i64 0, ptr %i.wb, align 8
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %i.l, ptr %.sroa.4245.0..sroa_idx, align 8
  %.sroa.5246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store i64 %i.m, ptr %.sroa.5246.0..sroa_idx, align 8
  %.sroa.6247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 24
  store i64 %i.k, ptr %.sroa.6247.0..sroa_idx, align 8
  %i.wc = add i64 %i.vx, 1
  store i64 %i.wc, ptr %i.ag, align 8, !alias.scope !1755, !noalias !1756
  br label %bb.gu

bb.gu:                                            ; preds = %bb.as, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit171
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  %i.t = load ptr, ptr %0, align 8, !alias.scope !2004, !nonnull !3, !align !8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !2005, !noalias !2004, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !2006, !noalias !2007, !noundef !3 ; 3 uses
  %i.y = load i64, ptr %i.v, align 8, !range !9, !alias.scope !2006, !noalias !2007, !noundef !3
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !2007
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2006, !noalias !2007, !nonnull !3, !noundef !3
  %i.ac = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  store i64 0, ptr %i.ac, align 8, !noalias !2008
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2008
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2008
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2008
  %i.ad = add i64 %i.x, 1
  store i64 %i.ad, ptr %i.w, align 8, !alias.scope !2006, !noalias !2007
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.b
  %.sroa.0236.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0236.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 35 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit ] ; 35 uses
  %i.ae = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.af = icmp ult i64 %.sroa.0236.0, %i.m        ; 3 uses
  %or.cond355 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond355, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %bb.e
  br i1 %i.ae, label %bb.aq, label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.ag = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.ah = sub nuw i64 %i.m, %.sroa.0236.0         ; 5 uses
  %i.ai = icmp ult i64 %i.ag, 97
  %i.aj = icmp ult i64 %i.ah, 97
  %or.cond.i = or i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i46 = call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag) ; 2 uses
  %.sroa.0.0.i47 = call noundef i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ag)
  %i.ak = shl nuw i64 %.sroa.0.0.i46, 1
  %i.al = icmp slt i64 %.sroa.0.0.i46, 0
  br i1 %i.al, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.ak, %bb.h ]
  %i.am = icmp ult i64 %.sroa.0.0.i47, %.sroa.052.0.i
  br i1 %i.am, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.ah, %i.ag
  %i.an = icmp ule i64 %i.ag, %i.ah
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread
  %.sroa.525.2.i.ph.lcssa435 = phi i64 [ %.sroa.525.2.i.ph468, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa432 = phi i64 [ %.sroa.023.1.i.ph469, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa429 = phi i64 [ %.sroa.9.2.i.ph470, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa426 = phi i64 [ %.sroa.12.2.i.ph471, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i50 = icmp ugt i64 %spec.select356, 4
  %or.cond361 = select i1 %i.ao, i1 true, i1 %.not.i50
  br i1 %or.cond361, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i476 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa426, %.loopexit ]
  %.sroa.9.0.i475 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa429, %.loopexit ]
  %.sroa.023.0.i474 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa432, %.loopexit ]
  %.sroa.525.0.i473 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa435, %.loopexit ]
  %.sroa.0269.0472 = phi i64 [ 0, %bb.k ], [ %spec.select356, %.loopexit ] ; 12 uses
  %i.ao = icmp eq i64 %.sroa.0269.0472, 4         ; 2 uses
  %i.ap = add nuw nsw i64 %.sroa.0269.0472, 1
  %spec.select356 = select i1 %i.ao, i64 4, i64 %i.ap ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0269.0472, 0
  %i.ar = add i64 %.sroa.0269.0472, %.sroa.0.0    ; 3 uses
  %i.as = sub i64 %i.l, %i.ar
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.at = trunc nuw i64 %.sroa.023.1.i.ph.lcssa432 to i1
  br i1 %i.at, label %.loopexit409, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

.loopexit409:                                     ; preds = %bb.x, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa435, %bb.m ], [ %.sroa.0269.0472, %bb.x ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa429, %bb.m ], [ %.sroa.0270.0453, %bb.x ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa426, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.x ] ; 3 uses
  %i.au = icmp eq i64 %.sroa.525.1.i, 0
  %i.av = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.au, label %bb.af, label %bb.ag

bb.n:                                             ; preds = %.lr.ph, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread
  %.sroa.0270.0453 = phi i64 [ %.sroa.0270.0.ph467, %.lr.ph ], [ %spec.select358, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ] ; 11 uses
  %i.aw = icmp eq i64 %.sroa.0270.0453, 4         ; 3 uses
  %i.ax = add nuw nsw i64 %.sroa.0270.0453, 1
  %spec.select358 = select i1 %i.aw, i64 4, i64 %i.ax ; 4 uses
  %i.ay = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2009
  br i1 %i.ay, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp eq i64 %.sroa.0270.0453, 0         ; 2 uses
  %i.ba = or i64 %.sroa.0270.0453, %.sroa.0269.0472
  %or.cond2.i = icmp eq i64 %i.ba, 0
  br i1 %or.cond2.i, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.aq, label %bb.r, label %bb.q

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread: ; preds = %bb.s, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit, %bb.r, %bb.q, %bb.o
  %.not.i52 = icmp ugt i64 %spec.select358, 4
  %or.cond362 = select i1 %i.aw, i1 true, i1 %.not.i52
  br i1 %or.cond362, label %.loopexit, label %bb.n

bb.q:                                             ; preds = %bb.p
  %brmerge.i.not = and i1 %.not.i, %i.az
  br i1 %brmerge.i.not, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.r:                                             ; preds = %bb.p
  %or.cond3.old.i = or i1 %i.an, %i.az
  br i1 %or.cond3.old.i, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = add i64 %.sroa.0270.0453, %.sroa.0236.0 ; 3 uses
  %i.bc = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !noalias !2009 ; 2 uses
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  %i.be = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80), !noalias !2009 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 1
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit: ; preds = %bb.s
  %i.bh = extractvalue { ptr, i64 } %i.be, 0
  %i.bi = extractvalue { ptr, i64 } %i.bc, 0
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.bi, ptr nonnull readonly %i.bh, i64 %i.bd), !alias.scope !2010, !noalias !2009
  %.not359 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not359, label %bb.t, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.t:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit
  %i.bj = sub i64 %i.m, %i.bb
  %.sroa.0.0.i56 = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.as) ; 3 uses
  %.not477 = icmp eq i64 %.sroa.0.0.i56, 0
  br i1 %.not477, label %.outer, label %.lr.ph462

.lr.ph462:                                        ; preds = %bb.t, %bb.w
  %.sroa.01.0.i461 = phi i64 [ %i.bw, %bb.w ], [ 0, %bb.t ] ; 6 uses
  %i.bk = and i64 %.sroa.01.0.i461, 1023
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph462
  %i.bm = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2009
  br i1 %i.bm, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph462
  %i.bn = add i64 %.sroa.01.0.i461, %i.bb
  %i.bo = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81), !noalias !2009 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 1      ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i461, %i.ar
  %i.br = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82), !noalias !2009 ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 1
  %i.bt = icmp eq i64 %i.bp, %i.bs
  br i1 %i.bt, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59: ; preds = %bb.v
  %i.bu = extractvalue { ptr, i64 } %i.br, 0
  %i.bv = extractvalue { ptr, i64 } %i.bo, 0
  %bcmp.i.i58 = call i32 @bcmp(ptr nonnull readonly %i.bv, ptr nonnull readonly %i.bu, i64 %i.bp), !alias.scope !2011, !noalias !2009
  %.not360 = icmp eq i32 %bcmp.i.i58, 0
  br i1 %.not360, label %bb.w, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread

bb.w:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59
  %i.bw = add nuw i64 %.sroa.01.0.i461, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %.sroa.0.0.i56
  br i1 %exitcond.not, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread, label %.lr.ph462

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread: ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59, %bb.w, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i461, %bb.v ], [ %.sroa.01.0.i461, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59 ], [ %.sroa.0.0.i56, %bb.w ] ; 8 uses
  %i.bx = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bx, label %bb.x, label %.outer

.outer:                                           ; preds = %bb.t, %bb.ae, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ae ], [ %.sroa.525.2.i.ph468, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread ], [ %.sroa.525.2.i.ph468, %bb.t ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ae ], [ %.sroa.023.1.i.ph469, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread ], [ %.sroa.023.1.i.ph469, %bb.t ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ae ], [ %.sroa.9.2.i.ph470, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread ], [ %.sroa.9.2.i.ph470, %bb.t ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ae ], [ %.sroa.12.2.i.ph471, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread ], [ %.sroa.12.2.i.ph471, %bb.t ] ; 2 uses
  %.not.i52451 = icmp ugt i64 %spec.select358, 4
  %or.cond362452 = select i1 %i.aw, i1 true, i1 %.not.i52451
  br i1 %or.cond362452, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph471 = phi i64 [ %.sroa.12.0.i476, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 7 uses
  %.sroa.9.2.i.ph470 = phi i64 [ %.sroa.9.0.i475, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 7 uses
  %.sroa.023.1.i.ph469 = phi i64 [ %.sroa.023.0.i474, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 4 uses
  %.sroa.525.2.i.ph468 = phi i64 [ %.sroa.525.0.i473, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 8 uses
  %.sroa.0270.0.ph467 = phi i64 [ 0, %bb.l ], [ %spec.select358, %.outer ]
  br label %bb.n

bb.x:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit59.thread
  %i.by = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.by, label %.loopexit409, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i60 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0270.0453, i64 %.sroa.0269.0472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2012
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2012
  store i64 %.sroa.0.0.i60, ptr %i.n, align 8, !noalias !2012
  store i64 %.sroa.0269.0472, ptr %i.o, align 8, !noalias !2012
  store i64 %.sroa.0270.0453, ptr %i.p, align 8, !noalias !2012
  %i.bz = trunc nuw i64 %.sroa.023.1.i.ph469 to i1
  br i1 %i.bz, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2012
  %.sroa.0.0.i61 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph470, i64 %.sroa.525.2.i.ph468)
  store i64 %.sroa.12.2.i.ph471, ptr %i.e, align 8, !noalias !2012
  store i64 %.sroa.0.0.i61, ptr %i.q, align 8, !noalias !2012
  store i64 %.sroa.525.2.i.ph468, ptr %i.r, align 8, !noalias !2012
  store i64 %.sroa.9.2.i.ph470, ptr %i.s, align 8, !noalias !2012
  %i.ca = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph471
  %i.cb = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph471
  %i.cc = zext i1 %i.cb to i8
  br i1 %i.ca, label %bb.aa, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.aa:                                            ; preds = %bb.z
  %i.cd = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !2009 ; 2 uses
  %.not7.i = icmp eq i8 %i.cd, 2
  br i1 %.not7.i, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ce = icmp eq i64 %.sroa.0269.0472, %.sroa.525.2.i.ph468
  %i.cf = icmp ugt i64 %.sroa.0269.0472, %.sroa.525.2.i.ph468
  %i.cg = zext i1 %i.cf to i8
  br i1 %i.ce, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = icmp ugt i64 %.sroa.0270.0453, %.sroa.9.2.i.ph470
  %i.ci = zext i1 %i.ch to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.2.i = phi i8 [ %i.cc, %bb.z ], [ %i.cd, %bb.aa ], [ %i.ci, %bb.ac ], [ %i.cg, %bb.ab ]
  %i.cj = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2012
  br i1 %i.cj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph468, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0269.0472, %bb.y ], [ %.sroa.0269.0472, %bb.ad ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph470, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0270.0453, %bb.y ], [ %.sroa.0270.0453, %bb.ad ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph471, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.y ], [ %.sroa.01.0.i.lcssa, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2012
  br label %.outer

bb.af:                                            ; preds = %.loopexit409
  %.pre = load ptr, ptr %0, align 8, !noalias !2013 ; 3 uses
  br i1 %i.av, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %.loopexit409
  br i1 %i.av, label %bb.al, label %bb.an

bb.ah:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63, %bb.af
  %i.ck = phi ptr [ %i.du, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit66 ], [ %i.dj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64 ], [ %.pre, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ %.pre, %bb.af ]
  %i.cl = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cm = add i64 %.sroa.9.1.i, %.sroa.0236.0     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2014), !noalias !2013
  %i.cn = load ptr, ptr %i.ck, align 8, !alias.scope !2014, !noalias !2015, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 120 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 136 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2016, !noalias !2017, !noundef !3 ; 3 uses
  %i.cr = load i64, ptr %i.co, align 8, !range !9, !alias.scope !2016, !noalias !2017, !noundef !3
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit62

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co), !noalias !2017
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit62

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit62: ; preds = %bb.ah, %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !2016, !noalias !2017, !nonnull !3, !noundef !3
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %i.cq ; 4 uses
  store i64 0, ptr %i.cv, align 8, !noalias !2018
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cl, ptr %.sroa.4282.0..sroa_idx, align 8, !noalias !2018
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 %i.cm, ptr %.sroa.5283.0..sroa_idx, align 8, !noalias !2018
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6284.0..sroa_idx, align 8, !noalias !2018
  %i.cw = add i64 %i.cq, 1
  store i64 %i.cw, ptr %i.cp, align 8, !alias.scope !2016, !noalias !2017
  %i.cx = add i64 %i.cl, %.sroa.12.1.i
  %i.cy = add i64 %i.cm, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !2019), !noalias !2013
  %i.cz = load ptr, ptr %.pre, align 8, !alias.scope !2019, !noalias !2020, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 120 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 136 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !2021, !noalias !2022, !noundef !3 ; 3 uses
  %i.dd = load i64, ptr %i.da, align 8, !range !9, !alias.scope !2021, !noalias !2022, !noundef !3
  %i.de = icmp eq i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.ak, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.da), !noalias !2022
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63: ; preds = %bb.aj, %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !2021, !noalias !2022, !nonnull !3, !noundef !3
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dc ; 4 uses
  store i64 2, ptr %i.dh, align 8, !noalias !2023
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4312.0..sroa_idx, align 8, !noalias !2023
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %.sroa.0236.0, ptr %.sroa.5313.0..sroa_idx, align 8, !noalias !2023
  %.sroa.6314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6314.0..sroa_idx, align 8, !noalias !2023
  %i.di = add i64 %i.dc, 1
  store i64 %i.di, ptr %i.db, align 8, !alias.scope !2021, !noalias !2022
  br label %bb.ah

bb.al:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.experimental.noalias.scope.decl(metadata !2025), !noalias !2013
  %i.dj = load ptr, ptr %0, align 8, !alias.scope !2026, !noalias !2013, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2027), !noalias !2013
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !2027, !noalias !2028, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 120 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 136 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !2029, !noalias !2030, !noundef !3 ; 3 uses
  %i.do = load i64, ptr %i.dl, align 8, !range !9, !alias.scope !2029, !noalias !2030, !noundef !3
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.am, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dl), !noalias !2030
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit64: ; preds = %bb.al, %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !2029, !noalias !2030, !nonnull !3, !noundef !3
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %i.dn ; 4 uses
  store i64 1, ptr %i.ds, align 8, !noalias !2031
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4297.0..sroa_idx, align 8, !noalias !2031
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5298.0..sroa_idx, align 8, !noalias !2031
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store i64 %.sroa.0236.0, ptr %.sroa.6299.0..sroa_idx, align 8, !noalias !2031
  %i.dt = add i64 %i.dn, 1
  store i64 %i.dt, ptr %i.dm, align 8, !alias.scope !2029, !noalias !2030
  br label %bb.ah

bb.an:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033), !noalias !2013
  %i.du = load ptr, ptr %0, align 8, !alias.scope !2034, !noalias !2013, !nonnull !3, !align !8, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2035), !noalias !2013
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !2035, !noalias !2036, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 120 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 136 ; 3 uses
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !2037, !noalias !2038, !noundef !3 ; 4 uses
  %i.dz = load i64, ptr %i.dw, align 8, !range !9, !alias.scope !2037, !noalias !2038, !noundef !3
  %i.ea = icmp eq i64 %i.dy, %i.dz
  br i1 %i.ea, label %bb.ao, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65

bb.ao:                                            ; preds = %bb.an
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw), !noalias !2038
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65: ; preds = %bb.an, %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 128 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !2037, !noalias !2038, !nonnull !3, !noundef !3
  %i.ed = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %i.dy ; 4 uses
  store i64 1, ptr %i.ed, align 8, !noalias !2039
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4317.0..sroa_idx, align 8, !noalias !2039
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5318.0..sroa_idx, align 8, !noalias !2039
  %.sroa.6319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store i64 %.sroa.0236.0, ptr %.sroa.6319.0..sroa_idx, align 8, !noalias !2039
  %i.ee = add i64 %i.dy, 1                        ; 3 uses
  store i64 %i.ee, ptr %i.dx, align 8, !alias.scope !2037, !noalias !2038
  %i.ef = load i64, ptr %i.dw, align 8, !range !9, !alias.scope !2040, !noalias !2041, !noundef !3
end_hunk_6
begin_hunk_7_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  %i.aag = sub nuw i64 %i.m, %.sroa.0236.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.aah = load ptr, ptr %i.zv, align 8, !alias.scope !2113, !noalias !2114, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 120 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 136 ; 2 uses
  %i.aak = load i64, ptr %i.aaj, align 8, !alias.scope !2115, !noalias !2116, !noundef !3 ; 3 uses
  %i.aal = load i64, ptr %i.aai, align 8, !range !9, !alias.scope !2115, !noalias !2116, !noundef !3
  %i.aam = icmp eq i64 %i.aak, %i.aal
  br i1 %i.aam, label %bb.gm, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit201

bb.gm:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit200
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aai), !noalias !2116
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit201

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit201: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit200, %bb.gm
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 128
  %i.aao = load ptr, ptr %i.aan, align 8, !alias.scope !2115, !noalias !2116, !nonnull !3, !noundef !3
  %i.aap = getelementptr inbounds nuw [40 x i8], ptr %i.aao, i64 %i.aak ; 4 uses
  store i64 2, ptr %i.aap, align 8, !noalias !2117
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4302.0..sroa_idx, align 8, !noalias !2117
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  store i64 %.sroa.0236.0, ptr %.sroa.5303.0..sroa_idx, align 8, !noalias !2117
  %.sroa.6304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aap, i64 24
  store i64 %i.aag, ptr %.sroa.6304.0..sroa_idx, align 8, !noalias !2117
  %i.aaq = add i64 %i.aak, 1
  store i64 %i.aaq, ptr %i.aaj, align 8, !alias.scope !2115, !noalias !2116
  br label %bb.as

.thread:                                          ; preds = %bb.ar
  %i.aar = sub nuw i64 %i.m, %.sroa.0236.0
  call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  %i.aas = load ptr, ptr %0, align 8, !alias.scope !2120, !nonnull !3, !align !8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  %i.aat = load ptr, ptr %i.aas, align 8, !alias.scope !2121, !noalias !2120, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 120 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 136 ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 8, !alias.scope !2122, !noalias !2123, !noundef !3 ; 3 uses
  %i.aax = load i64, ptr %i.aau, align 8, !range !9, !alias.scope !2122, !noalias !2123, !noundef !3
  %i.aay = icmp eq i64 %i.aaw, %i.aax
  br i1 %i.aay, label %bb.gn, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit202

bb.gn:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aau), !noalias !2123
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit202

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit202: ; preds = %.thread, %bb.gn
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 128
  %i.aba = load ptr, ptr %i.aaz, align 8, !alias.scope !2122, !noalias !2123, !nonnull !3, !noundef !3
  %i.abb = getelementptr inbounds nuw [40 x i8], ptr %i.aba, i64 %i.aaw ; 4 uses
  store i64 2, ptr %i.abb, align 8, !noalias !2124
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4307.0..sroa_idx, align 8, !noalias !2124
  %.sroa.5308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 16
  store i64 %.sroa.0236.0, ptr %.sroa.5308.0..sroa_idx, align 8, !noalias !2124
  %.sroa.6309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  store i64 %i.aar, ptr %.sroa.6309.0..sroa_idx, align 8, !noalias !2124
  %i.abc = add i64 %i.aaw, 1
  store i64 %i.abc, ptr %i.aav, align 8, !alias.scope !2122, !noalias !2123
  br label %bb.as

bb.go:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.abd = load ptr, ptr %0, align 8, !alias.scope !2127, !nonnull !3, !align !8, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %i.abe = load ptr, ptr %i.abd, align 8, !alias.scope !2128, !noalias !2127, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 120 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abe, i64 136 ; 2 uses
  %i.abh = load i64, ptr %i.abg, align 8, !alias.scope !2129, !noalias !2130, !noundef !3 ; 3 uses
  %i.abi = load i64, ptr %i.abf, align 8, !range !9, !alias.scope !2129, !noalias !2130, !noundef !3
  %i.abj = icmp eq i64 %i.abh, %i.abi
  br i1 %i.abj, label %bb.gp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit203

bb.gp:                                            ; preds = %bb.go
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.abf), !noalias !2130
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit203

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit203: ; preds = %bb.go, %bb.gp
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abe, i64 128
  %i.abl = load ptr, ptr %i.abk, align 8, !alias.scope !2129, !noalias !2130, !nonnull !3, !noundef !3
  %i.abm = getelementptr inbounds nuw [40 x i8], ptr %i.abl, i64 %i.abh ; 4 uses
  store i64 0, ptr %i.abm, align 8, !noalias !2131
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  store i64 %i.l, ptr %.sroa.4277.0..sroa_idx, align 8, !noalias !2131
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store i64 %i.m, ptr %.sroa.5278.0..sroa_idx, align 8, !noalias !2131
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  store i64 %i.k, ptr %.sroa.6279.0..sroa_idx, align 8, !noalias !2131
  %i.abn = add i64 %i.abh, 1
  store i64 %i.abn, ptr %i.abg, align 8, !alias.scope !2129, !noalias !2130
  br label %bb.gq

bb.gq:                                            ; preds = %bb.as, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit203
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit, %bb.a
  %i.i = add i64 %i.h, %2                         ; 2 uses
  %i.j = add i64 %i.h, %5                         ; 2 uses
  %i.k = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.j, i64 noundef %6) ; 4 uses
  %i.l = sub i64 %3, %i.k                         ; 9 uses
  %i.m = sub i64 %6, %i.k                         ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2256, !noalias !2257, !noundef !3 ; 3 uses
  %i.z = load i64, ptr %i.w, align 8, !range !9, !alias.scope !2256, !noalias !2257, !noundef !3
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !2257
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit: ; preds = %bb.c, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !2256, !noalias !2257, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.y ; 4 uses
  store i64 0, ptr %i.ad, align 8
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %2, ptr %.sroa.4273.0..sroa_idx, align 8
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %5, ptr %.sroa.5274.0..sroa_idx, align 8
  %.sroa.6275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 %i.h, ptr %.sroa.6275.0..sroa_idx, align 8
  %i.ae = add i64 %i.y, 1
  store i64 %i.ae, ptr %i.x, align 8, !alias.scope !2256, !noalias !2257
  br label %bb.b

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %bb.b
  %.sroa.0227.0 = phi i64 [ %i.j, %bb.b ], [ %.sroa.0227.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit ] ; 38 uses
  %.sroa.0.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit ] ; 33 uses
  %i.af = icmp ult i64 %.sroa.0.0, %i.l           ; 2 uses
  %i.ag = icmp ult i64 %.sroa.0227.0, %i.m        ; 3 uses
  %or.cond346 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond346, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, %bb.e
  br i1 %i.af, label %bb.an, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.ah = sub nuw i64 %i.l, %.sroa.0.0            ; 5 uses
  %i.ai = sub nuw i64 %i.m, %.sroa.0227.0         ; 5 uses
  %i.aj = icmp ult i64 %i.ah, 97
  %i.ak = icmp ult i64 %i.ai, 97
  %or.cond.i = or i1 %i.ak, %i.aj
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.i44 = call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.ah) ; 2 uses
  %.sroa.0.0.i45 = call noundef i64 @llvm.umax.i64(i64 %i.ai, i64 %i.ah)
  %i.al = shl nuw i64 %.sroa.0.0.i44, 1
  %i.am = icmp slt i64 %.sroa.0.0.i44, 0
  br i1 %i.am, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.052.0.i = phi i64 [ -1, %bb.i ], [ %i.al, %bb.h ]
  %i.an = icmp ult i64 %.sroa.0.0.i45, %.sroa.052.0.i
  br i1 %i.an, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i = icmp ule i64 %i.ai, %i.ah
  %i.ao = icmp ule i64 %i.ah, %i.ai
  br label %bb.l

.loopexit:                                        ; preds = %.outer, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread
  %.sroa.525.2.i.ph.lcssa426 = phi i64 [ %.sroa.525.2.i.ph459, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa423 = phi i64 [ %.sroa.023.1.i.ph460, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa420 = phi i64 [ %.sroa.9.2.i.ph461, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa417 = phi i64 [ %.sroa.12.2.i.ph462, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %.not.i48 = icmp ugt i64 %spec.select347, 4
  %or.cond352 = select i1 %i.ap, i1 true, i1 %.not.i48
  br i1 %or.cond352, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.sroa.12.0.i467 = phi i64 [ undef, %bb.k ], [ %.sroa.12.2.i.ph.lcssa417, %.loopexit ]
  %.sroa.9.0.i466 = phi i64 [ undef, %bb.k ], [ %.sroa.9.2.i.ph.lcssa420, %.loopexit ]
  %.sroa.023.0.i465 = phi i64 [ 0, %bb.k ], [ %.sroa.023.1.i.ph.lcssa423, %.loopexit ]
  %.sroa.525.0.i464 = phi i64 [ undef, %bb.k ], [ %.sroa.525.2.i.ph.lcssa426, %.loopexit ]
  %.sroa.0260.0463 = phi i64 [ 0, %bb.k ], [ %spec.select347, %.loopexit ] ; 12 uses
  %i.ap = icmp eq i64 %.sroa.0260.0463, 4         ; 2 uses
  %i.aq = add nuw nsw i64 %.sroa.0260.0463, 1
  %spec.select347 = select i1 %i.ap, i64 4, i64 %i.aq ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0260.0463, 0
  %i.as = add i64 %.sroa.0260.0463, %.sroa.0.0    ; 3 uses
  %i.at = sub i64 %i.l, %i.as
  br label %.lr.ph

bb.m:                                             ; preds = %.loopexit
  %i.au = trunc nuw i64 %.sroa.023.1.i.ph.lcssa423 to i1
  br i1 %i.au, label %.loopexit400, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

.loopexit400:                                     ; preds = %bb.x, %bb.m
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa426, %bb.m ], [ %.sroa.0260.0463, %bb.x ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa420, %bb.m ], [ %.sroa.0261.0444, %bb.x ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa417, %bb.m ], [ %.sroa.01.0.i.lcssa, %bb.x ] ; 3 uses
  %i.av = icmp eq i64 %.sroa.525.1.i, 0
  %i.aw = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre = load i64, ptr %i.u, align 8, !noalias !2258 ; 10 uses
  br i1 %i.av, label %bb.af, label %bb.ag

bb.n:                                             ; preds = %.lr.ph, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread
  %.sroa.0261.0444 = phi i64 [ %.sroa.0261.0.ph458, %.lr.ph ], [ %spec.select349, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread ] ; 11 uses
  %i.ax = icmp eq i64 %.sroa.0261.0444, 4         ; 3 uses
  %i.ay = add nuw nsw i64 %.sroa.0261.0444, 1
  %spec.select349 = select i1 %i.ax, i64 4, i64 %i.ay ; 4 uses
  %i.az = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2259
  br i1 %i.az, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp eq i64 %.sroa.0261.0444, 0         ; 2 uses
  %i.bb = or i64 %.sroa.0261.0444, %.sroa.0260.0463
  %or.cond2.i = icmp eq i64 %i.bb, 0
  br i1 %or.cond2.i, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.ar, label %bb.r, label %bb.q

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread: ; preds = %bb.s, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit, %bb.r, %bb.q, %bb.o
  %.not.i50 = icmp ugt i64 %spec.select349, 4
  %or.cond353 = select i1 %i.ax, i1 true, i1 %.not.i50
  br i1 %or.cond353, label %.loopexit, label %bb.n

bb.q:                                             ; preds = %bb.p
  %brmerge.i.not = and i1 %.not.i, %i.ba
  br i1 %brmerge.i.not, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.r:                                             ; preds = %bb.p
  %or.cond3.old.i = or i1 %i.ao, %i.ba
  br i1 %or.cond3.old.i, label %bb.s, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = add i64 %.sroa.0261.0444, %.sroa.0227.0 ; 3 uses
  %i.bd = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !noalias !2259 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bf = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80), !noalias !2259 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit: ; preds = %bb.s
  %i.bi = extractvalue { ptr, i64 } %i.bf, 0
  %i.bj = extractvalue { ptr, i64 } %i.bd, 0
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bi, i64 %i.be), !alias.scope !2260, !noalias !2259
  %.not350 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not350, label %bb.t, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit.thread

bb.t:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit
  %i.bk = sub i64 %i.m, %i.bc
  %.sroa.0.0.i54 = call noundef i64 @llvm.umin.i64(i64 %i.bk, i64 %i.at) ; 3 uses
  %.not468 = icmp eq i64 %.sroa.0.0.i54, 0
  br i1 %.not468, label %.outer, label %.lr.ph453

.lr.ph453:                                        ; preds = %bb.t, %bb.w
  %.sroa.01.0.i452 = phi i64 [ %i.bx, %bb.w ], [ 0, %bb.t ] ; 6 uses
  %i.bl = and i64 %.sroa.01.0.i452, 1023
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph453
  %i.bn = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2259
  br i1 %i.bn, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph453
  %i.bo = add i64 %.sroa.01.0.i452, %i.bc
  %i.bp = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81), !noalias !2259 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 1      ; 2 uses
  %i.br = add i64 %.sroa.01.0.i452, %i.as
  %i.bs = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82), !noalias !2259 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 1
  %i.bu = icmp eq i64 %i.bq, %i.bt
  br i1 %i.bu, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57: ; preds = %bb.v
  %i.bv = extractvalue { ptr, i64 } %i.bs, 0
  %i.bw = extractvalue { ptr, i64 } %i.bp, 0
  %bcmp.i.i56 = call i32 @bcmp(ptr nonnull readonly %i.bw, ptr nonnull readonly %i.bv, i64 %i.bq), !alias.scope !2261, !noalias !2259
  %.not351 = icmp eq i32 %bcmp.i.i56, 0
  br i1 %.not351, label %bb.w, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread

bb.w:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57
  %i.bx = add nuw i64 %.sroa.01.0.i452, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %.sroa.0.0.i54
  br i1 %exitcond.not, label %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread, label %.lr.ph453

_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread: ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57, %bb.w, %bb.v
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i452, %bb.v ], [ %.sroa.01.0.i452, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57 ], [ %.sroa.0.0.i54, %bb.w ] ; 8 uses
  %i.by = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.by, label %bb.x, label %.outer

.outer:                                           ; preds = %bb.t, %bb.ae, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ae ], [ %.sroa.525.2.i.ph459, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread ], [ %.sroa.525.2.i.ph459, %bb.t ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ae ], [ %.sroa.023.1.i.ph460, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread ], [ %.sroa.023.1.i.ph460, %bb.t ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ae ], [ %.sroa.9.2.i.ph461, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread ], [ %.sroa.9.2.i.ph461, %bb.t ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ae ], [ %.sroa.12.2.i.ph462, %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread ], [ %.sroa.12.2.i.ph462, %bb.t ] ; 2 uses
  %.not.i50442 = icmp ugt i64 %spec.select349, 4
  %or.cond353443 = select i1 %i.ax, i1 true, i1 %.not.i50442
  br i1 %or.cond353443, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.outer
  %.sroa.12.2.i.ph462 = phi i64 [ %.sroa.12.0.i467, %bb.l ], [ %.sroa.12.3.i, %.outer ] ; 7 uses
  %.sroa.9.2.i.ph461 = phi i64 [ %.sroa.9.0.i466, %bb.l ], [ %.sroa.9.3.i, %.outer ] ; 7 uses
  %.sroa.023.1.i.ph460 = phi i64 [ %.sroa.023.0.i465, %bb.l ], [ %.sroa.023.2.i, %.outer ] ; 4 uses
  %.sroa.525.2.i.ph459 = phi i64 [ %.sroa.525.0.i464, %bb.l ], [ %.sroa.525.3.i, %.outer ] ; 8 uses
  %.sroa.0261.0.ph458 = phi i64 [ 0, %bb.l ], [ %spec.select349, %.outer ]
  br label %bb.n

bb.x:                                             ; preds = %_RNvYeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neCsiqiOkcJdymw_7similar.exit57.thread
  %i.bz = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.bz, label %.loopexit400, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i58 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0261.0444, i64 %.sroa.0260.0463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2262
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2262
  store i64 %.sroa.0.0.i58, ptr %i.n, align 8, !noalias !2262
  store i64 %.sroa.0260.0463, ptr %i.o, align 8, !noalias !2262
  store i64 %.sroa.0261.0444, ptr %i.p, align 8, !noalias !2262
  %i.ca = trunc nuw i64 %.sroa.023.1.i.ph460 to i1
  br i1 %i.ca, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2262
  %.sroa.0.0.i59 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph461, i64 %.sroa.525.2.i.ph459)
  store i64 %.sroa.12.2.i.ph462, ptr %i.e, align 8, !noalias !2262
  store i64 %.sroa.0.0.i59, ptr %i.q, align 8, !noalias !2262
  store i64 %.sroa.525.2.i.ph459, ptr %i.r, align 8, !noalias !2262
  store i64 %.sroa.9.2.i.ph461, ptr %i.s, align 8, !noalias !2262
  %i.cb = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph462
  %i.cc = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph462
  %i.cd = zext i1 %i.cc to i8
  br i1 %i.cb, label %bb.aa, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !2259 ; 2 uses
  %.not7.i = icmp eq i8 %i.ce, 2
  br i1 %.not7.i, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cf = icmp eq i64 %.sroa.0260.0463, %.sroa.525.2.i.ph459
  %i.cg = icmp ugt i64 %.sroa.0260.0463, %.sroa.525.2.i.ph459
  %i.ch = zext i1 %i.cg to i8
  br i1 %i.cf, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp ugt i64 %.sroa.0261.0444, %.sroa.9.2.i.ph461
  %i.cj = zext i1 %i.ci to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sroa.0.2.i = phi i8 [ %i.cd, %bb.z ], [ %i.ce, %bb.aa ], [ %i.cj, %bb.ac ], [ %i.ch, %bb.ab ]
  %i.ck = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2262
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.ad, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph459, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0260.0463, %bb.y ], [ %.sroa.0260.0463, %bb.ad ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph461, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0261.0444, %bb.y ], [ %.sroa.0261.0444, %bb.ad ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph462, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.y ], [ %.sroa.01.0.i.lcssa, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2262
  br label %.outer

bb.af:                                            ; preds = %.loopexit400
  br i1 %i.aw, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %.loopexit400
  %i.cl = load i64, ptr %i.t, align 8, !range !9, !noalias !2258, !noundef !3
  %i.cm = icmp eq i64 %.pre, %i.cl                ; 2 uses
  br i1 %i.aw, label %bb.ak, label %bb.al

.sink.split.sink.split:                           ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63, %bb.ak, %bb.aj
  %.pre.sink.ph = phi i64 [ %.pre, %bb.ak ], [ %.pre, %bb.aj ], [ %i.de, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ]
  %.sink792.ph = phi i64 [ 1, %bb.ak ], [ 2, %bb.aj ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ]
  %.sroa.0227.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.ak ], [ %.sroa.0227.0, %bb.aj ], [ %.sroa.0227.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0227.0, %bb.ak ], [ %.sroa.9.1.i, %bb.aj ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ]
  %.sink789.ph = phi i64 [ 1, %bb.ak ], [ 1, %bb.aj ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ]
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2258
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63, %bb.ak, %bb.aj
  %.pre.sink = phi i64 [ %.pre, %bb.ak ], [ %i.de, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ %.pre, %bb.aj ], [ %.pre.sink.ph, %.sink.split.sink.split ]
  %.sink792 = phi i64 [ 1, %bb.ak ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ 2, %bb.aj ], [ %.sink792.ph, %.sink.split.sink.split ]
  %.sroa.0227.0.sink = phi i64 [ %.sroa.525.1.i, %bb.ak ], [ %.sroa.0227.0, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ %.sroa.0227.0, %bb.aj ], [ %.sroa.0227.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0227.0, %bb.ak ], [ %.sroa.9.1.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ %.sroa.9.1.i, %bb.aj ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink789 = phi i64 [ 1, %bb.ak ], [ 2, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63 ], [ 1, %bb.aj ], [ %.sink789.ph, %.sink.split.sink.split ]
  %i.cn = load ptr, ptr %i.v, align 8, !noalias !2258, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %i.cn, i64 %.pre.sink ; 4 uses
  store i64 %.sink792, ptr %i.co, align 8, !noalias !2258
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4293.0..sroa_idx, align 8, !noalias !2258
  %.sroa.5294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %.sroa.0227.0.sink, ptr %.sroa.5294.0..sroa_idx, align 8, !noalias !2258
  %.sroa.6295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6295.0..sroa_idx, align 8, !noalias !2258
  %i.cp = add i64 %.pre, %.sink789                ; 2 uses
  store i64 %i.cp, ptr %i.u, align 8, !noalias !2258
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.af
  %i.cq = phi i64 [ %.pre, %bb.af ], [ %i.cp, %.sink.split ] ; 3 uses
  %i.cr = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cs = add i64 %.sroa.9.1.i, %.sroa.0227.0     ; 2 uses
  %i.ct = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2263, !noalias !2264, !noundef !3
  %i.cu = icmp eq i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.ai, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2264
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60: ; preds = %bb.ah, %bb.ai
  %i.cv = load ptr, ptr %i.v, align 8, !alias.scope !2263, !noalias !2264, !nonnull !3, !noundef !3
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cq ; 4 uses
  store i64 0, ptr %i.cw, align 8, !noalias !2258
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.cr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2258
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 %i.cs, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2258
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2258
  %i.cx = add i64 %i.cq, 1
  store i64 %i.cx, ptr %i.u, align 8, !alias.scope !2263, !noalias !2264
  %i.cy = add i64 %i.cr, %.sroa.12.1.i
  %i.cz = add i64 %i.cs, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit

bb.aj:                                            ; preds = %bb.af
  %i.da = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2265, !noalias !2266, !noundef !3
  %i.db = icmp eq i64 %.pre, %i.da
  br i1 %i.db, label %.sink.split.sink.split, label %.sink.split

bb.ak:                                            ; preds = %bb.ag
  br i1 %i.cm, label %.sink.split.sink.split, label %.sink.split

bb.al:                                            ; preds = %bb.ag
  br i1 %i.cm, label %bb.am, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63

bb.am:                                            ; preds = %bb.al
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2267
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit63: ; preds = %bb.al, %bb.am
  %i.dc = load ptr, ptr %i.v, align 8, !alias.scope !2268, !noalias !2267, !nonnull !3, !noundef !3
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %.pre ; 4 uses
  store i64 1, ptr %i.dd, align 8, !noalias !2258
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4308.0..sroa_idx, align 8, !noalias !2258
  %.sroa.5309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5309.0..sroa_idx, align 8, !noalias !2258
  %.sroa.6310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i64 %.sroa.0227.0, ptr %.sroa.6310.0..sroa_idx, align 8, !noalias !2258
  %i.de = add i64 %.pre, 1                        ; 4 uses
  store i64 %i.de, ptr %i.u, align 8, !alias.scope !2268, !noalias !2267
  %i.df = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2269, !noalias !2270, !noundef !3
  %i.dg = icmp eq i64 %i.de, %i.df
  br i1 %i.dg, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtB6_4text12TextDiffSideeEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %bb.n, %bb.u, %bb.g, %bb.j, %bb.m, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60
  %.sroa.0227.2 = phi i64 [ %.sroa.0227.0, %bb.g ], [ %.sroa.0227.0, %bb.j ], [ %.sroa.0227.0, %bb.m ], [ %i.cz, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60 ], [ %.sroa.0227.0, %bb.u ], [ %.sroa.0227.0, %bb.n ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.m ], [ %i.cy, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit60 ], [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %bb.n ] ; 2 uses
  %i.dh = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.di = icmp eq i64 %.sroa.0227.2, %.sroa.0227.0
  %or.cond = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.an:                                            ; preds = %bb.f
  br i1 %i.ag, label %bb.as, label %bb.aq

bb.ao:                                            ; preds = %bb.f
  br i1 %i.ag, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread343, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit193, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit192, %bb.ge, %bb.ao
  %.not26 = icmp eq i64 %i.k, 0
  br i1 %.not26, label %bb.gl, label %bb.gj

bb.aq:                                            ; preds = %bb.an
  %i.dj = sub nuw i64 %i.l, %.sroa.0.0
  %i.dk = load i64, ptr %i.u, align 8, !alias.scope !2271, !noalias !2272, !noundef !3 ; 3 uses
  %i.dl = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2271, !noalias !2272, !noundef !3
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.ar, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2272
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit65: ; preds = %bb.aq, %bb.ar
  %i.dn = load ptr, ptr %i.v, align 8, !alias.scope !2271, !noalias !2272, !nonnull !3, !noundef !3
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dn, i64 %i.dk ; 4 uses
  store i64 1, ptr %i.do, align 8
  %.sroa.4283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4283.0..sroa_idx, align 8
  %.sroa.5284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %i.dj, ptr %.sroa.5284.0..sroa_idx, align 8
  %.sroa.6285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.do, i64 24
end_hunk_7
begin_hunk_8_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_:bb.a

bb.ga:                                            ; preds = %bb.gb, %bb.fz
  %i.vs = phi ptr [ %i.vw, %bb.gb ], [ %i.vg, %bb.fz ]
  %i.vt = phi i64 [ %i.vk, %bb.gb ], [ %i.vh, %bb.fz ] ; 2 uses
  %.sroa.04.0.i185 = phi i8 [ %i.vz, %bb.gb ], [ %.sroa.0.0.i203.i184, %bb.fz ]
  %i.vu = add i64 %i.us, %i.up                    ; 3 uses
  %i.vv = icmp ult i64 %i.vu, %i.vt
  br i1 %i.vv, label %bb.gc, label %.invoke.i117

bb.gb:                                            ; preds = %bb.fx
  %i.vw = load ptr, ptr %i.nn, align 8, !noalias !2295, !nonnull !3, !noundef !3 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vj
  %i.vy = load i8, ptr %i.vx, align 1, !noundef !3
  %i.vz = add i8 %i.vy, 1
  br label %bb.ga

bb.gc:                                            ; preds = %bb.ga
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vu
  store i8 %.sroa.04.0.i185, ptr %i.wa, align 1
  %.not168.i186 = icmp eq i64 %i.us, 0
  br i1 %.not168.i186, label %..loopexit244_crit_edge.i187, label %bb.fr

.invoke.i117:                                     ; preds = %bb.ga, %bb.fy, %bb.fx, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183, %bb.ed, %bb.eb, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116, %bb.ea, %bb.fc, %bb.fa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129, %bb.ez, %bb.ep, %bb.en, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154, %bb.em, %bb.fl, %bb.fk
  %i.wb = phi i64 [ %i.st, %bb.fc ], [ %i.ud, %bb.fl ], [ %i.pa, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ %i.rd, %bb.ep ], [ %i.tw, %bb.fk ], [ %i.qp, %bb.em ], [ %i.qv, %bb.en ], [ %i.qt, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ %i.sb, %bb.ez ], [ %i.sl, %bb.fa ], [ %i.sh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ %i.pq, %bb.ed ], [ %i.pf, %bb.eb ], [ %i.ou, %bb.ea ], [ %i.vu, %bb.ga ], [ %i.vf, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ %i.vm, %bb.fy ], [ %i.vj, %bb.fx ]
  %i.wc = phi i64 [ %i.sd, %bb.fc ], [ %i.ty, %bb.fl ], [ %i.ow, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ %i.qr, %bb.ep ], [ %i.ty, %bb.fk ], [ %.pre606.i158, %bb.em ], [ %.pre606.i158, %bb.en ], [ %i.qr, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ %.pre602.i142, %bb.ez ], [ %.pre602.i142, %bb.fa ], [ %i.sd, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ %i.ow, %bb.ed ], [ %.pre598.i162, %bb.eb ], [ %.pre598.i162, %bb.ea ], [ %i.vt, %bb.ga ], [ %i.vh, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ %i.vh, %bb.fy ], [ %i.vk, %bb.fx ]
  %i.wd = phi ptr [ @68, %bb.fc ], [ @72, %bb.fl ], [ @55, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i116 ], [ @62, %bb.ep ], [ @71, %bb.fk ], [ @59, %bb.em ], [ @60, %bb.en ], [ @61, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit189.thread.i154 ], [ @65, %bb.ez ], [ @66, %bb.fa ], [ @67, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit194.thread.i129 ], [ @56, %bb.ed ], [ @54, %bb.eb ], [ @53, %bb.ea ], [ @78, %bb.ga ], [ @75, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit202.thread.i183 ], [ @76, %bb.fy ], [ @77, %bb.fx ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.wb, i64 noundef %i.wc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wd) #14
          to label %.cont.i118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i85

.cont.i118:                                       ; preds = %.invoke.i117
  unreachable

bb.gd:                                            ; preds = %.loopexit.split-lp.i87
  %i.we = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit: ; preds = %.loopexit229.i143
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2295
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread: ; preds = %bb.at, %bb.dn, %bb.aw, %bb.au, %bb.as, %.sink.split.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0227.0, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  %i.wf = load i64, ptr %i.g, align 8, !range !5, !noundef !3
  %i.wg = trunc nuw i64 %i.wf to i1
  br i1 %i.wg, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  %i.wh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !noundef !3 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.wk = load i64, ptr %i.wj, align 8, !noundef !3 ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %.sroa.0.0, i64 noundef %i.wi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %.sroa.0227.0, i64 noundef %i.wk, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtB6_4text12TextDiffSideeEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.wi, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.wk, i64 noundef %i.m, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ap

bb.gf:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB6_4text12TextDiffSideeEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.wl = sub nuw i64 %i.l, %.sroa.0.0
  %i.wm = load i64, ptr %i.u, align 8, !alias.scope !2314, !noalias !2315, !noundef !3 ; 4 uses
  %i.wn = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2314, !noalias !2315, !noundef !3
  %i.wo = icmp eq i64 %i.wm, %i.wn
  br i1 %i.wo, label %bb.gg, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit191

bb.gg:                                            ; preds = %bb.gf
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2315
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit191

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit191: ; preds = %bb.gf, %bb.gg
  %i.wp = load ptr, ptr %i.v, align 8, !alias.scope !2314, !noalias !2315, !nonnull !3, !noundef !3
  %i.wq = getelementptr inbounds nuw [40 x i8], ptr %i.wp, i64 %i.wm ; 4 uses
  store i64 1, ptr %i.wq, align 8
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4288.0..sroa_idx, align 8
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store i64 %i.wl, ptr %.sroa.5289.0..sroa_idx, align 8
  %.sroa.6290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wq, i64 24
  store i64 %.sroa.0227.0, ptr %.sroa.6290.0..sroa_idx, align 8
  %i.wr = add i64 %i.wm, 1                        ; 3 uses
  store i64 %i.wr, ptr %i.u, align 8, !alias.scope !2314, !noalias !2315
  %i.ws = sub nuw i64 %i.m, %.sroa.0227.0
  %i.wt = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2316, !noalias !2317, !noundef !3
  %i.wu = icmp eq i64 %i.wr, %i.wt
  br i1 %i.wu, label %bb.gh, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit192

bb.gh:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit191
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2317
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit192

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit192: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit191, %bb.gh
  %i.wv = load ptr, ptr %i.v, align 8, !alias.scope !2316, !noalias !2317, !nonnull !3, !noundef !3
  %i.ww = getelementptr inbounds nuw [40 x i8], ptr %i.wv, i64 %i.wr ; 4 uses
  store i64 2, ptr %i.ww, align 8
  %.sroa.4303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4303.0..sroa_idx, align 8
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  store i64 %.sroa.0227.0, ptr %.sroa.5304.0..sroa_idx, align 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ww, i64 24
  store i64 %i.ws, ptr %.sroa.6305.0..sroa_idx, align 8
  %i.wx = add i64 %i.wm, 2
  store i64 %i.wx, ptr %i.u, align 8, !alias.scope !2316, !noalias !2317
  br label %bb.ap

.thread:                                          ; preds = %bb.ao
  %i.wy = sub nuw i64 %i.m, %.sroa.0227.0
  %i.wz = load i64, ptr %i.u, align 8, !alias.scope !2318, !noalias !2319, !noundef !3 ; 3 uses
  %i.xa = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2318, !noalias !2319, !noundef !3
  %i.xb = icmp eq i64 %i.wz, %i.xa
  br i1 %i.xb, label %bb.gi, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit193

bb.gi:                                            ; preds = %.thread
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2319
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit193

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit193: ; preds = %.thread, %bb.gi
  %i.xc = load ptr, ptr %i.v, align 8, !alias.scope !2318, !noalias !2319, !nonnull !3, !noundef !3
  %i.xd = getelementptr inbounds nuw [40 x i8], ptr %i.xc, i64 %i.wz ; 4 uses
  store i64 2, ptr %i.xd, align 8
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4298.0..sroa_idx, align 8
  %.sroa.5299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 16
  store i64 %.sroa.0227.0, ptr %.sroa.5299.0..sroa_idx, align 8
  %.sroa.6300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  store i64 %i.wy, ptr %.sroa.6300.0..sroa_idx, align 8
  %i.xe = add i64 %i.wz, 1
  store i64 %i.xe, ptr %i.u, align 8, !alias.scope !2318, !noalias !2319
  br label %bb.ap

bb.gj:                                            ; preds = %bb.ap
  %i.xf = load i64, ptr %i.u, align 8, !alias.scope !2320, !noalias !2321, !noundef !3 ; 3 uses
  %i.xg = load i64, ptr %i.t, align 8, !range !9, !alias.scope !2320, !noalias !2321, !noundef !3
  %i.xh = icmp eq i64 %i.xf, %i.xg
  br i1 %i.xh, label %bb.gk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit194

bb.gk:                                            ; preds = %bb.gj
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !2321
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit194

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit194: ; preds = %bb.gj, %bb.gk
  %i.xi = load ptr, ptr %i.v, align 8, !alias.scope !2320, !noalias !2321, !nonnull !3, !noundef !3
  %i.xj = getelementptr inbounds nuw [40 x i8], ptr %i.xi, i64 %i.xf ; 4 uses
  store i64 0, ptr %i.xj, align 8
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  store i64 %i.l, ptr %.sroa.4268.0..sroa_idx, align 8
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  store i64 %i.m, ptr %.sroa.5269.0..sroa_idx, align 8
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  store i64 %i.k, ptr %.sroa.6270.0..sroa_idx, align 8
  %i.xk = add i64 %i.xf, 1
  store i64 %i.xk, ptr %i.u, align 8, !alias.scope !2320, !noalias !2321
  br label %bb.gl

bb.gl:                                            ; preds = %bb.ap, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutBI_.exit194
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtB2_12OffsetLookupmEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val50 = load ptr, ptr %i.m, align 8           ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val51 = load i64, ptr %i.n, align 8           ; 27 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %i.o, align 8           ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val49 = load i64, ptr %i.p, align 8           ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.b
  %.sroa.0253.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0253.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 40 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 39 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0253.0, %i.l         ; 3 uses
  %or.cond325 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond325, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.d
  br i1 %i.w, label %bb.ar, label %bb.as

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0253.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %bb.ac, %bb.ab, %.outer, %bb.z
  %.sroa.525.2.i.ph.lcssa592 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i869, %bb.ab ], [ %.sroa.525.2.i.ph863, %bb.z ], [ %.sroa.525.0.i869, %bb.ac ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa581 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i870, %bb.ab ], [ %.sroa.023.1.i.ph864, %bb.z ], [ %.sroa.023.0.i870, %bb.ac ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa570 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i871, %bb.ab ], [ %.sroa.9.2.i.ph865, %bb.z ], [ %.sroa.9.0.i871, %bb.ac ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa559 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i872, %bb.ab ], [ %.sroa.12.2.i.ph866, %bb.z ], [ %.sroa.12.0.i872, %bb.ac ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select326, 4
  %or.cond331 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond331, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i872 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa559, %.loopexit ] ; 3 uses
  %.sroa.9.0.i871 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa570, %.loopexit ] ; 3 uses
  %.sroa.023.0.i870 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa581, %.loopexit ] ; 3 uses
  %.sroa.525.0.i869 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa592, %.loopexit ] ; 3 uses
  %.sroa.0287.0868 = phi i64 [ 0, %bb.j ], [ %spec.select326, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0287.0868, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0287.0868, 1
  %spec.select326 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0287.0868, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0287.0868, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.preheader, label %.lr.ph.split.a

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph

bb.l:                                             ; preds = %.loopexit
  %i.ap = trunc nuw i64 %.sroa.023.1.i.ph.lcssa581 to i1
  br i1 %i.ap, label %.loopexit383, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit

.loopexit383:                                     ; preds = %bb.ad, %bb.l
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa592, %bb.l ], [ %.sroa.0287.0868, %bb.ad ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa570, %bb.l ], [ %.sroa.0289.0650.us, %bb.ad ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa559, %bb.l ], [ %.sroa.01.0.i.lcssa, %bb.ad ] ; 3 uses
  %i.aq = icmp eq i64 %.sroa.525.1.i, 0
  %i.ar = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.aq, label %bb.al, label %bb.am

.split810:                                        ; preds = %.lr.ph.split.split.split.preheader.a, %bb.aa
  %.us-phi815 = phi i64 [ %.sroa.0289.0650.us803, %bb.aa ], [ 0, %.lr.ph.split.split.split.preheader.a ]
  %i.as = add i64 %.us-phi815, %.sroa.0253.0      ; 2 uses
  %i.at = icmp ult i64 %i.as, %.val51
  br i1 %i.at, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit, label %.split

.split:                                           ; preds = %bb.y, %.split810
  %.us-phi = phi i64 [ %i.as, %.split810 ], [ %i.ca, %bb.y ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !2489
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit: ; preds = %.split810
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !2490
  unreachable

.lr.ph859:                                        ; preds = %.lr.ph859.preheader, %bb.s
  %.sroa.01.0.i858 = phi i64 [ %i.bt, %bb.s ], [ 0, %.lr.ph859.preheader ] ; 7 uses
  %i.au = and i64 %.sroa.01.0.i858, 1023
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph859
  %i.aw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2491
  br i1 %i.aw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph859
  %exitcond.not = icmp eq i64 %.sroa.01.0.i858, %i.cx
  br i1 %exitcond.not, label %bb.o, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !2492
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84: ; preds = %bb.n
  %i.ax = add nuw i64 %.sroa.01.0.i858, %i.aj     ; 2 uses
  %exitcond1161.not = icmp eq i64 %.sroa.01.0.i858, %i.ao
  br i1 %exitcond1161.not, label %bb.p, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85

bb.p:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !2493
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.01.0.i858 ; 2 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ax ; 2 uses
  %.val52 = load ptr, ptr %gep, align 8, !alias.scope !2494, !noalias !2495, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.az = getelementptr i8, ptr %gep, i64 8
  %.val53 = load i64, ptr %i.az, align 8, !alias.scope !2494, !noalias !2495, !noundef !3
  %.val54 = load ptr, ptr %i.ay, align 8          ; 4 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val55 = load i64, ptr %i.ba, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  %i.bb = getelementptr inbounds nuw i8, ptr %.val52, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !2496, !noalias !2497, !noundef !3
  %i.bd = sub i64 %.val53, %i.bc                  ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val52, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !2496, !noalias !2497, !noundef !3 ; 2 uses
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i86, label %bb.q

bb.q:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bd, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2498
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i86: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85
  %i.bh = getelementptr inbounds nuw i8, ptr %.val52, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !2496, !noalias !2497, !nonnull !3, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  %i.bj = getelementptr inbounds nuw i8, ptr %.val54, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2499, !noalias !2500, !noundef !3
  %i.bl = sub i64 %.val55, %i.bk                  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !2499, !noalias !2500, !noundef !3 ; 2 uses
  %i.bo = icmp ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit89, label %bb.r

bb.r:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i86
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2501
  unreachable

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit89: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i86
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  %i.bq = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !2499, !noalias !2500, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bl
  %.val.i87 = load i32, ptr %i.bp, align 4, !noundef !3
  %.val2.i88 = load i32, ptr %i.bs, align 4, !noundef !3
  %.not330 = icmp eq i32 %.val.i87, %.val2.i88
  br i1 %.not330, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit89
  %i.bt = add nuw i64 %.sroa.01.0.i858, 1         ; 2 uses
  %exitcond1162.not = icmp eq i64 %i.bt, %.sroa.0.0.i83
  br i1 %exitcond1162.not, label %._crit_edge, label %.lr.ph859

._crit_edge:                                      ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit89, %bb.s
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i83, %bb.s ], [ %.sroa.01.0.i858, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit89 ] ; 8 uses
  %i.bu = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bu, label %bb.ad, label %.outer

.outer:                                           ; preds = %.split668.us, %bb.ak, %._crit_edge
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.ak ], [ %.sroa.525.2.i.ph863, %._crit_edge ], [ %.sroa.525.2.i.ph863, %.split668.us ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.ak ], [ %.sroa.023.1.i.ph864, %._crit_edge ], [ %.sroa.023.1.i.ph864, %.split668.us ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.ak ], [ %.sroa.9.2.i.ph865, %._crit_edge ], [ %.sroa.9.2.i.ph865, %.split668.us ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.ak ], [ %.sroa.12.2.i.ph866, %._crit_edge ], [ %.sroa.12.2.i.ph866, %.split668.us ] ; 2 uses
  %.not.i78648 = icmp ugt i64 %spec.select327.us, 4
  %or.cond332649 = select i1 %i.bv, i1 true, i1 %.not.i78648
  br i1 %or.cond332649, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.12.2.i.ph866 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i872, %.lr.ph.preheader ] ; 7 uses
  %.sroa.9.2.i.ph865 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i871, %.lr.ph.preheader ] ; 7 uses
  %.sroa.023.1.i.ph864 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i870, %.lr.ph.preheader ] ; 4 uses
  %.sroa.525.2.i.ph863 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i869, %.lr.ph.preheader ] ; 8 uses
  %.sroa.0289.0.ph862 = phi i64 [ %spec.select327.us, %.outer ], [ 0, %.lr.ph.preheader ]
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.lr.ph
  %.sroa.0289.0650.us = phi i64 [ %.sroa.0289.0.ph862, %.lr.ph ], [ %spec.select327.us, %bb.z ] ; 11 uses
  %i.bv = icmp eq i64 %.sroa.0289.0650.us, 4      ; 3 uses
  %i.bw = add nuw nsw i64 %.sroa.0289.0650.us, 1
  %spec.select327.us = select i1 %i.bv, i64 4, i64 %i.bw ; 4 uses
  %i.bx = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2491
  br i1 %i.bx, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i64 %.sroa.0289.0650.us, 0      ; 2 uses
  %i.bz = or i64 %.sroa.0289.0650.us, %.sroa.0287.0868
  %or.cond2.i.us = icmp eq i64 %i.bz, 0
  br i1 %or.cond2.i.us, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.ai, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %brmerge.i.not.us = and i1 %.not.i.fr, %i.by
  br i1 %brmerge.i.not.us, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.v
  %or.cond3.old.i.us = or i1 %i.af, %i.by
  br i1 %or.cond3.old.i.us, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ca = add i64 %.sroa.0289.0650.us, %.sroa.0253.0 ; 7 uses
  %i.cb = icmp ult i64 %i.ca, %.val51
  br i1 %i.cb, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us: ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.ca ; 2 uses
  %.val56.us = load ptr, ptr %i.cc, align 8, !alias.scope !2494, !noalias !2495, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val57.us = load i64, ptr %i.cd, align 8, !alias.scope !2494, !noalias !2495, !noundef !3
  %.val58.us = load ptr, ptr %i.al, align 8       ; 4 uses
  %.val59.us = load i64, ptr %i.am, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %i.ce = getelementptr inbounds nuw i8, ptr %.val56.us, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !2502, !noalias !2503, !noundef !3
  %i.cg = sub i64 %.val57.us, %i.cf               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val56.us, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !2502, !noalias !2503, !noundef !3 ; 2 uses
  %i.cj = icmp ult i64 %i.cg, %i.ci
  br i1 %i.cj, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.us, label %.split660.us

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us
  %i.ck = getelementptr inbounds nuw i8, ptr %.val56.us, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !2502, !noalias !2503, !nonnull !3, !noundef !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val58.us, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !2504, !noalias !2505, !noundef !3
  %i.co = sub i64 %.val59.us, %i.cn               ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.val58.us, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !2504, !noalias !2505, !noundef !3 ; 2 uses
  %i.cr = icmp ult i64 %i.co, %i.cq
  br i1 %i.cr, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us, label %.split664.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.us
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cg
  %i.ct = getelementptr inbounds nuw i8, ptr %.val58.us, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !alias.scope !2504, !noalias !2505, !nonnull !3, !noundef !3
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.co
  %.val.i.us = load i32, ptr %i.cs, align 4, !noundef !3
  %.val2.i.us = load i32, ptr %i.cv, align 4, !noundef !3
  %.not329.us = icmp eq i32 %.val.i.us, %.val2.i.us
  br i1 %.not329.us, label %.split668.us, label %bb.z

bb.z:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us, %bb.x, %bb.w, %bb.u
  %.not.i78.us = icmp ugt i64 %spec.select327.us, 4
  %or.cond332.us = select i1 %i.bv, i1 true, i1 %.not.i78.us
  br i1 %or.cond332.us, label %.loopexit, label %bb.t

.split660.us:                                     ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.ci, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2506
  unreachable

.split664.us:                                     ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit1.i.us
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2507
  unreachable

.split668.us:                                     ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtB5_12OffsetLookupmEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us
  %i.cw = sub i64 %i.l, %i.ca
  %.sroa.0.0.i83 = call noundef i64 @llvm.umin.i64(i64 %i.cw, i64 %i.an) ; 3 uses
  %.not876 = icmp eq i64 %.sroa.0.0.i83, 0
  br i1 %.not876, label %.outer, label %.lr.ph859.preheader

.lr.ph859.preheader:                              ; preds = %.split668.us
  %umax = call i64 @llvm.umax.i64(i64 %.val51, i64 %i.ca) ; 2 uses
  %i.cx = sub i64 %umax, %i.ca
  %invariant.gep = getelementptr [16 x i8], ptr %.val50, i64 %i.ca
  br label %.lr.ph859

.lr.ph.split.a:                                   ; preds = %bb.k
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split.a

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.a, %bb.ab
  %.sroa.0289.0650.us803 = phi i64 [ %spec.select327.us804, %bb.ab ], [ 0, %.lr.ph.split.a ] ; 4 uses
  %11 = icmp eq i64 %.sroa.0289.0650.us803, 4     ; 2 uses
  %12 = add nuw nsw i64 %.sroa.0289.0650.us803, 1
  %spec.select327.us804 = select i1 %11, i64 4, i64 %12 ; 2 uses
  %i.cy = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2491
  br i1 %i.cy, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.split.us
  %or.cond2.i.us805 = icmp ne i64 %.sroa.0289.0650.us803, 0
  %or.cond874 = and i1 %or.cond2.i.us805, %i.af
  br i1 %or.cond874, label %.split810, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i78.us807 = icmp ugt i64 %spec.select327.us804, 4
  %or.cond332.us808 = select i1 %11, i1 true, i1 %.not.i78.us807
  br i1 %or.cond332.us808, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.a
  br i1 %.not.i.fr, label %.lr.ph.split.split.split.preheader.a, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader.a:             ; preds = %.lr.ph.split.split.a
  %i.cz = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2491
  br i1 %i.cz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %.split810

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.a, %bb.ac
  %.sroa.0289.0650.us844 = phi i64 [ %spec.select327.us845, %bb.ac ], [ 0, %.lr.ph.split.split.a ] ; 2 uses
  %i.da = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2491
  br i1 %i.da, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split.split.split.us
  %13 = icmp eq i64 %.sroa.0289.0650.us844, 4     ; 2 uses
  %14 = add nuw nsw i64 %.sroa.0289.0650.us844, 1
  %spec.select327.us845 = select i1 %13, i64 4, i64 %14 ; 2 uses
  %.not.i78.us848 = icmp ugt i64 %spec.select327.us845, 4
  %or.cond332.us849 = select i1 %13, i1 true, i1 %.not.i78.us848
  br i1 %or.cond332.us849, label %.loopexit, label %.lr.ph.split.split.split.us

bb.ad:                                            ; preds = %._crit_edge
  %i.db = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.db, label %.loopexit383, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.i90 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0289.0650.us, i64 %.sroa.0287.0868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2508
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2508
  store i64 %.sroa.0.0.i90, ptr %i.q, align 8, !noalias !2508
  store i64 %.sroa.0287.0868, ptr %i.r, align 8, !noalias !2508
  store i64 %.sroa.0289.0650.us, ptr %i.s, align 8, !noalias !2508
  %i.dc = trunc nuw i64 %.sroa.023.1.i.ph864 to i1
  br i1 %i.dc, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2508
  %.sroa.0.0.i91 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph865, i64 %.sroa.525.2.i.ph863)
  store i64 %.sroa.12.2.i.ph866, ptr %i.e, align 8, !noalias !2508
  store i64 %.sroa.0.0.i91, ptr %i.t, align 8, !noalias !2508
  store i64 %.sroa.525.2.i.ph863, ptr %i.u, align 8, !noalias !2508
  store i64 %.sroa.9.2.i.ph865, ptr %i.v, align 8, !noalias !2508
  %i.dd = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph866
  %i.de = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph866
  %i.df = zext i1 %i.de to i8
  br i1 %i.dd, label %bb.ag, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ag:                                            ; preds = %bb.af
  %i.dg = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2491 ; 2 uses
  %.not7.i = icmp eq i8 %i.dg, 2
  br i1 %.not7.i, label %bb.ah, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dh = icmp eq i64 %.sroa.0287.0868, %.sroa.525.2.i.ph863
  %i.di = icmp ugt i64 %.sroa.0287.0868, %.sroa.525.2.i.ph863
  %i.dj = zext i1 %i.di to i8
  br i1 %i.dh, label %bb.ai, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dk = icmp ugt i64 %.sroa.0289.0650.us, %.sroa.9.2.i.ph865
  %i.dl = zext i1 %i.dk to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.sroa.0.2.i = phi i8 [ %i.df, %bb.af ], [ %i.dg, %bb.ag ], [ %i.dl, %bb.ai ], [ %i.dj, %bb.ah ]
  %i.dm = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2508
  br i1 %i.dm, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ae, %bb.aj, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph863, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0287.0868, %bb.ae ], [ %.sroa.0287.0868, %bb.aj ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph865, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0289.0650.us, %bb.ae ], [ %.sroa.0289.0650.us, %bb.aj ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph866, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.ae ], [ %.sroa.01.0.i.lcssa, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2508
  br label %.outer

bb.al:                                            ; preds = %.loopexit383
  br i1 %i.ar, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %.loopexit383
  br i1 %i.ar, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.al
  %i.dn = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.do = add i64 %.sroa.9.1.i, %.sroa.0253.0     ; 2 uses
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.dn, i64 noundef %i.do, i64 noundef %.sroa.12.1.i), !noalias !2509
  %i.dp = add i64 %i.dn, %.sroa.12.1.i
  %i.dq = add i64 %i.do, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit

bb.ao:                                            ; preds = %bb.al
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0253.0, i64 noundef %.sroa.9.1.i), !noalias !2509
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0253.0), !noalias !2509
  br label %bb.an

bb.aq:                                            ; preds = %bb.am
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0253.0, i64 noundef %.sroa.9.1.i), !noalias !2509
  br label %bb.an

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2x_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.us, %bb.t, %bb.m, %.lr.ph.split.split.split.preheader.a, %bb.f, %bb.i, %bb.l, %bb.an
  %.sroa.0253.2 = phi i64 [ %.sroa.0253.0, %bb.f ], [ %.sroa.0253.0, %bb.i ], [ %.sroa.0253.0, %bb.l ], [ %i.dq, %bb.an ], [ %.sroa.0253.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0253.0, %bb.m ], [ %.sroa.0253.0, %bb.t ], [ %.sroa.0253.0, %.lr.ph.split.split.us ], [ %.sroa.0253.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.l ], [ %i.dp, %bb.an ], [ %.sroa.0.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.t ], [ %.sroa.0.0, %.lr.ph.split.split.us ], [ %.sroa.0.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.dr = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.ds = icmp eq i64 %.sroa.0253.2, %.sroa.0253.0
  %or.cond = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.ar:                                            ; preds = %bb.e
  br i1 %i.x, label %bb.av, label %bb.au

bb.as:                                            ; preds = %bb.e
  br i1 %i.x, label %.thread, label %bb.at

bb.at:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread317, %bb.au, %.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit, %bb.ji, %bb.as
  %.not26 = icmp eq i64 %i.j, 0
  br i1 %.not26, label %bb.jk, label %bb.jj

bb.au:                                            ; preds = %bb.ar
  %i.dt = sub nuw i64 %i.k, %.sroa.0.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %i.dt, i64 noundef %.sroa.0253.0)
  br label %bb.at

bb.av:                                            ; preds = %bb.ar
  %i.du = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2510
  %.pre = sub nuw i64 %i.k, %.sroa.0.0            ; 29 uses
  %.pre1163 = sub nuw i64 %i.l, %.sroa.0253.0     ; 27 uses
  br i1 %i.du, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.pre, i64 %.pre1163) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.dx = extractvalue { i64, i1 } %i.dv, 0
  %.sroa.0.0.i94 = call noundef i64 @llvm.umax.i64(i64 %.pre1163, i64 %.pre)
  %.sroa.0.0.i93 = call noundef i64 @llvm.umin.i64(i64 %.pre1163, i64 %.pre)
  %i.dy = add i64 %.sroa.0.0.i93, -65
  %or.cond.i27 = icmp ult i64 %i.dy, -64
  %i.dz = icmp ult i64 %.sroa.0.0.i94, 512
  %or.cond1.i = or i1 %i.dz, %or.cond.i27
  %i.ea = icmp ugt i64 %i.dx, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.ea
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i28 = icmp ugt i64 %.pre, %.pre1163
  %i.eb = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.az, label %bb.du

bb.az:                                            ; preds = %bb.ay
  br i1 %i.eb, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ec = add i64 %.pre, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2511
  %i.ed = add nuw i64 %.pre1163, 1
  %i.ee = mul i64 %i.ec, %i.ed                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2513
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ee, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2512
  %i.ef = load i64, ptr %i.c, align 8, !range !5, !noalias !2513, !noundef !3
  %i.eg = trunc nuw i64 %i.ef to i1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !range !6, !noalias !2513, !noundef !3 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.eg, label %bb.bb, label %.lr.ph682.i, !prof !7

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load i64, ptr %i.ej, align 8, !noalias !2513
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ei, i64 %i.ek) #14, !noalias !2512
  unreachable

.lr.ph682.i:                                      ; preds = %bb.ba
  %i.el = load ptr, ptr %i.ej, align 8, !noalias !2513, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2513
  store i64 %i.ei, ptr %i.d, align 8, !alias.scope !2512, !noalias !2511
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store ptr %i.el, ptr %i.em, align 8, !alias.scope !2512, !noalias !2511
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 %i.ee, ptr %i.en, align 8, !alias.scope !2512, !noalias !2511
  br label %.lr.ph682.split.i

.lr.ph682.split.i:                                ; preds = %.lr.ph682.i, %..loopexit20_crit_edge.split.us.i
  %.sroa.0102.0681.i = phi i64 [ %i.eo, %..loopexit20_crit_edge.split.us.i ], [ %.pre1163, %.lr.ph682.i ] ; 2 uses
  %i.eo = add i64 %.sroa.0102.0681.i, -1          ; 4 uses
  %i.ep = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i

._crit_edge708.i:                                 ; preds = %bb.cq
  br i1 %i.lf, label %bb.bc, label %bb.bd

.lr.ph707.i:                                      ; preds = %..loopexit20_crit_edge.split.us.i, %bb.cq
  %.sroa.05.0.not706.i = phi i1 [ false, %bb.cq ], [ true, %..loopexit20_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0705.i = phi i64 [ %.sroa.09.3.i, %bb.cq ], [ 0, %..loopexit20_crit_edge.split.us.i ] ; 12 uses
  %.sroa.038.0704.i = phi i64 [ %.sroa.038.3.i, %bb.cq ], [ 0, %..loopexit20_crit_edge.split.us.i ] ; 17 uses
  %i.eq = and i64 %.sroa.038.0704.i, 1023
  %i.er = icmp eq i64 %i.eq, 0
  %or.cond170.i = select i1 %.sroa.05.0.not706.i, i1 %i.er, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bg, label %bb.bf

bb.bc:                                            ; preds = %._crit_edge708.i
  %i.es = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.et = sub nuw i64 %.pre, %.sroa.038.3.i
  %i.eu = add i64 %.sroa.09.3.i, %.sroa.0253.0
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.es, i64 noundef %i.et, i64 noundef %i.eu)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.bd:                                            ; preds = %bb.bc, %._crit_edge708.i
  br i1 %i.le, label %bb.be, label %.sink.split.i.thread

.loopexit.i:                                      ; preds = %bb.cs
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.bs
  %lpad.loopexit7.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.cf
  %lpad.loopexit12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %._crit_edge694.i, %._crit_edge2036, %._crit_edge.i, %bb.bg
  %lpad.loopexit16.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i: ; preds = %bb.dq
  %lpad.loopexit21.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i: ; preds = %.lr.ph682.split.i
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split.us.invoke.i, %bb.be, %bb.bc
  %lpad.loopexit.split-lp25.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit7.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit12.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit16.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit21.us.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i ], [ %lpad.loopexit21.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i ], [ %lpad.loopexit.split-lp25.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit24.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.dt

bb.be:                                            ; preds = %bb.bd
  %i.ev = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.ew = add i64 %.sroa.09.3.i, %.sroa.0253.0
  %i.ex = sub nuw i64 %.pre1163, %.sroa.09.3.i
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ev, i64 noundef %i.ew, i64 noundef %i.ex)
          to label %.sink.split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.sink.split.i.thread:                             ; preds = %bb.bd, %bb.be
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2511
  br label %bb.at

.sink.split.i:                                    ; preds = %.loopexit5.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2511
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1M_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

bb.bf:                                            ; preds = %bb.bh, %.lr.ph707.i
  %i.ey = mul i64 %.sroa.09.0705.i, %i.ec         ; 4 uses
  %i.ez = add i64 %.sroa.038.0704.i, %.sroa.0.0   ; 6 uses
  %i.fa = add i64 %.sroa.09.0705.i, %.sroa.0253.0 ; 6 uses
  %i.fb = icmp ult i64 %i.fa, %.val51
  br i1 %i.fb, label %bb.bi, label %.split.us.invoke.i

bb.bg:                                            ; preds = %.lr.ph707.i
  %i.fc = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.fc, label %.loopexit5.i, label %bb.bf

bb.bi:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.fa ; 3 uses
  %i.fe = icmp ult i64 %i.ez, %.val49
  br i1 %i.fe, label %bb.bj, label %.split.us.invoke.i

bb.bj:                                            ; preds = %bb.bi
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ez ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  %i.fg = load ptr, ptr %i.fd, align 8, !alias.scope !2514, !noalias !2516, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !2514, !noalias !2516, !noundef !3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !2517, !noalias !2518, !noundef !3
  %i.fl = sub i64 %i.fi, %i.fk                    ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !2517, !noalias !2518, !noundef !3 ; 2 uses
  %i.fo = icmp ult i64 %i.fl, %i.fn
  br i1 %i.fo, label %.noexc195.i, label %.split.us.invoke.i

end_hunk_8
begin_hunk_9_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.agt = add i64 %i.agl, %.sroa.0253.0          ; 3 uses
  %i.agu = sub i64 %i.k, %i.ags
  %i.agv = sub i64 %i.l, %i.agt
  %.sroa.0.0.i158.i = call noundef i64 @llvm.umin.i64(i64 %i.agv, i64 %i.agu) ; 3 uses
  %.not139.i = icmp eq i64 %.sroa.0.0.i158.i, 0
  br i1 %.not139.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.it
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax215.i = call i64 @llvm.umax.i64(i64 %.val69, i64 %i.ags) ; 2 uses
  %i.agw = sub i64 %umax215.i, %i.ags
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val68, i64 %i.ags
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iz, %.lr.ph.i217
  %.sroa.0.0.i114.i = phi i64 [ 0, %.lr.ph.i217 ], [ %i.ahz, %bb.iz ] ; 5 uses
  %i.agx = add nuw i64 %.sroa.0.0.i114.i, %i.agt  ; 2 uses
  %i.agy = icmp ult i64 %i.agx, %.val71
  br i1 %i.agy, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %umax.i218 = call i64 @llvm.umax.i64(i64 %.val71, i64 %i.agt)
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i218, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !noalias !2614
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i: ; preds = %bb.iu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i219 = icmp eq i64 %.sroa.0.0.i114.i, %i.agw
  br i1 %exitcond.not.i219, label %bb.iw, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i

bb.iw:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax215.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !noalias !2615
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit159.i
  %i.agz = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.agx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2616)
  call void @llvm.experimental.noalias.scope.decl(metadata !2617)
  %i.aha = load ptr, ptr %i.agz, align 8, !alias.scope !2616, !noalias !2618, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahc = load i64, ptr %i.ahb, align 8, !alias.scope !2616, !noalias !2618, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  %i.ahe = load i64, ptr %i.ahd, align 8, !alias.scope !2619, !noalias !2620, !noundef !3
  %i.ahf = sub i64 %i.ahc, %i.ahe                 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahh = load i64, ptr %i.ahg, align 8, !alias.scope !2619, !noalias !2620, !noundef !3 ; 2 uses
  %i.ahi = icmp ult i64 %i.ahf, %i.ahh
  br i1 %i.ahi, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i, label %bb.ix

bb.ix:                                            ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahf, i64 noundef %i.ahh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2621
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtBH_12OffsetLookupmEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit160.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.0.0.i114.i ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !alias.scope !2619, !noalias !2620, !nonnull !3, !noundef !3
  %i.ahl = load ptr, ptr %gep.i, align 8, !alias.scope !2617, !noalias !2622, !nonnull !3, !align !8, !noundef !3 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.ahn = load i64, ptr %i.ahm, align 8, !alias.scope !2617, !noalias !2622, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24
  %i.ahp = load i64, ptr %i.aho, align 8, !alias.scope !2623, !noalias !2624, !noundef !3
  %i.ahq = sub i64 %i.ahn, %i.ahp                 ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !2623, !noalias !2624, !noundef !3 ; 2 uses
  %i.aht = icmp ult i64 %i.ahq, %i.ahs
  br i1 %i.aht, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i, label %bb.iy

bb.iy:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ahq, i64 noundef %i.ahs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !2625
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit137.i
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahk, i64 %i.ahf
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahw = load ptr, ptr %i.ahv, align 8, !alias.scope !2623, !noalias !2624, !nonnull !3, !noundef !3
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.ahq
  %.val.i220 = load i32, ptr %i.ahu, align 4, !noalias !2600, !noundef !3
  %.val140.i = load i32, ptr %i.ahx, align 4, !noalias !2600, !noundef !3
  %i.ahy = icmp eq i32 %.val.i220, %.val140.i
  br i1 %i.ahy, label %bb.iz, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i

bb.iz:                                            ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i
  %i.ahz = add nuw i64 %.sroa.0.0.i114.i, 1       ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.ahz, %.sroa.0.0.i158.i
  br i1 %exitcond216.not.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.iu

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers20common_prefix_len_atINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1F_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.iz, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i, %bb.it
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.it ], [ %.sroa.0.0.i114.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB9_.exit.i ], [ %.sroa.0.0.i158.i, %bb.iz ]
  %i.aia = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i213
  br label %bb.is

bb.ja:                                            ; preds = %bb.is
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.agq
  store i64 %.sroa.04.1.i, ptr %i.aib, align 8, !noalias !2600
  br i1 %.not.i212, label %bb.jc, label %bb.jd

bb.jb:                                            ; preds = %bb.is
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.agq, i64 noundef %i.aca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !2600
  unreachable

bb.jc:                                            ; preds = %bb.jf, %bb.jd, %bb.ja
  %.not.i.i = icmp slt i64 %.sroa.7.1.i, %i.acz
  %or.cond42.i = select i1 %.sroa.11.1.i, i1 true, i1 %.not.i.i
  br i1 %or.cond42.i, label %.lr.ph131.preheader.i, label %.lr.ph119.i

bb.jd:                                            ; preds = %bb.ja
  %i.aic = sub i64 %i.ada, %i.abu                 ; 2 uses
  %.sroa.010.0.i = call i64 @llvm.abs.i64(i64 %i.aic, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0135.i
  br i1 %.not134.not.i, label %bb.je, label %bb.jc

bb.je:                                            ; preds = %bb.jd
  %i.aid = sub i64 %i.acg, %i.aic                 ; 3 uses
  %i.aie = icmp ult i64 %i.aid, %i.acj
  br i1 %i.aie, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %bb.je
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %i.acm, i64 %i.aid
  %i.aig = load i64, ptr %i.aif, align 8, !noalias !2600, !noundef !3
  %i.aih = add i64 %i.aig, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.aih, %.pre
  br i1 %.not135.i, label %bb.jc, label %bb.jh

bb.jg:                                            ; preds = %bb.je
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aid, i64 noundef %i.acj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !2600
  unreachable

bb.jh:                                            ; preds = %bb.jf
  %i.aii = add i64 %.sroa.04.0.i213, %.sroa.0.0
  %i.aij = add i64 %i.agl, %.sroa.0253.0
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.ig
  %.sroa.7.0.ph = phi i64 [ %i.aij, %bb.jh ], [ %i.afx, %bb.ig ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.aii, %bb.jh ], [ %i.afw, %bb.ig ] ; 2 uses
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0253.0, i64 noundef %.sroa.7.0.ph, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  call fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1r_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2h_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef align 8 dereferenceable(208) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.l, ptr noalias noundef align 8 dereferenceable(32) %7, ptr noalias noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %bb.at

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1C_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %._crit_edge132.i, %bb.gx
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.pre, i64 noundef %.sroa.0253.0)
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0253.0, i64 noundef %.pre1163)
  br label %bb.at

.thread:                                          ; preds = %bb.as
  %i.aik = sub nuw i64 %i.l, %.sroa.0253.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0253.0, i64 noundef %i.aik)
  br label %bb.at

bb.jj:                                            ; preds = %bb.at
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.k, i64 noundef %i.l, i64 noundef %i.j)
  br label %bb.jk

bb.jk:                                            ; preds = %bb.at, %bb.jj
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers7conquerINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1O_B1O_INtNtB4_7compact7CompactB1O_B1O_IB2n_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias noundef nonnull align 8 dereferenceable(32) %7, ptr noalias noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6) ; 4 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.h = add i64 %i.g, %2                         ; 2 uses
  %i.i = add i64 %i.g, %5                         ; 2 uses
  %i.j = tail call noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtCscdodAO9FK5_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.h, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %i.i, i64 noundef %6) ; 4 uses
  %i.k = sub i64 %3, %i.j                         ; 11 uses
  %i.l = sub i64 %6, %i.j                         ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.val50 = load ptr, ptr %i.m, align 8           ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.val51 = load i64, ptr %i.n, align 8           ; 25 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val48 = load ptr, ptr %i.o, align 8           ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val49 = load i64, ptr %i.p, align 8           ; 22 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %2, i64 noundef %5, i64 noundef %i.g)
  br label %bb.b

bb.d:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.b
  %.sroa.0260.0 = phi i64 [ %i.i, %bb.b ], [ %.sroa.0260.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 41 uses
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %.sroa.0.2, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit ] ; 40 uses
  %i.w = icmp ult i64 %.sroa.0.0, %i.k            ; 2 uses
  %i.x = icmp ult i64 %.sroa.0260.0, %i.l         ; 3 uses
  %or.cond334 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond334, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, %bb.d
  br i1 %i.w, label %bb.am, label %bb.an

bb.f:                                             ; preds = %bb.d
  %i.y = sub nuw i64 %i.k, %.sroa.0.0             ; 5 uses
  %i.z = sub nuw i64 %i.l, %.sroa.0260.0          ; 5 uses
  %i.aa = icmp ult i64 %i.y, 97
  %i.ab = icmp ult i64 %i.z, 97
  %or.cond.i = or i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.i72 = call noundef i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %.sroa.0.0.i73 = call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %i.y)
  %i.ac = shl nuw i64 %.sroa.0.0.i72, 1
  %i.ad = icmp slt i64 %.sroa.0.0.i72, 0
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.052.0.i = phi i64 [ -1, %bb.h ], [ %i.ac, %bb.g ]
  %i.ae = icmp ult i64 %.sroa.0.0.i73, %.sroa.052.0.i
  br i1 %i.ae, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp ule i64 %i.z, %i.y
  %.not.i.fr = freeze i1 %.not.i                  ; 2 uses
  %i.af = icmp ule i64 %i.y, %i.z                 ; 2 uses
  br label %bb.k

.loopexit:                                        ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a, %.outer, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us
  %.sroa.525.2.i.ph.lcssa511 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i719, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a ], [ %.sroa.525.2.i.ph713, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us ], [ %.sroa.525.0.i719, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696 ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa504 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i720, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a ], [ %.sroa.023.1.i.ph714, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us ], [ %.sroa.023.0.i720, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696 ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa497 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i721, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a ], [ %.sroa.9.2.i.ph715, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us ], [ %.sroa.9.0.i721, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696 ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa490 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i722, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a ], [ %.sroa.12.2.i.ph716, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us ], [ %.sroa.12.0.i722, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696 ] ; 2 uses
  %.not.i76 = icmp ugt i64 %spec.select335, 4
  %or.cond340 = select i1 %i.ag, i1 true, i1 %.not.i76
  br i1 %or.cond340, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %.sroa.12.0.i722 = phi i64 [ undef, %bb.j ], [ %.sroa.12.2.i.ph.lcssa490, %.loopexit ] ; 3 uses
  %.sroa.9.0.i721 = phi i64 [ undef, %bb.j ], [ %.sroa.9.2.i.ph.lcssa497, %.loopexit ] ; 3 uses
  %.sroa.023.0.i720 = phi i64 [ 0, %bb.j ], [ %.sroa.023.1.i.ph.lcssa504, %.loopexit ] ; 3 uses
  %.sroa.525.0.i719 = phi i64 [ undef, %bb.j ], [ %.sroa.525.2.i.ph.lcssa511, %.loopexit ] ; 3 uses
  %.sroa.0294.0718 = phi i64 [ 0, %bb.j ], [ %spec.select335, %.loopexit ] ; 12 uses
  %i.ag = icmp eq i64 %.sroa.0294.0718, 4         ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0294.0718, 1
  %spec.select335 = select i1 %i.ag, i64 4, i64 %i.ah ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0294.0718, 0         ; 2 uses
  %i.aj = add i64 %.sroa.0294.0718, %.sroa.0.0    ; 6 uses
  %i.ak = icmp ult i64 %i.aj, %.val49
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.aj ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.fr = freeze i1 %i.ak
  %i.an = sub i64 %i.k, %i.aj
  br i1 %.fr, label %.lr.ph.preheader, label %.lr.ph.split.a

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %.val49, i64 %i.aj)
  br label %.lr.ph

bb.l:                                             ; preds = %.loopexit
  %i.ap = trunc nuw i64 %.sroa.023.1.i.ph.lcssa504 to i1
  br i1 %i.ap, label %.loopexit394, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit

.loopexit394:                                     ; preds = %bb.y, %bb.l
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa511, %bb.l ], [ %.sroa.0294.0718, %bb.y ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa497, %bb.l ], [ %.sroa.0296.0549.us, %bb.y ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa490, %bb.l ], [ %.sroa.01.0.i.lcssa, %bb.y ] ; 3 uses
  %i.aq = icmp eq i64 %.sroa.525.1.i, 0
  %i.ar = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.aq, label %bb.ag, label %bb.ah

.split662:                                        ; preds = %.lr.ph.split.split.split.preheader.a, %bb.x
  %.us-phi667 = phi i64 [ %.sroa.0296.0549.us654, %bb.x ], [ 0, %.lr.ph.split.split.split.preheader.a ]
  %i.as = add i64 %.us-phi667, %.sroa.0260.0      ; 2 uses
  %i.at = icmp ult i64 %i.as, %.val51
  br i1 %i.at, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit, label %.split

.split:                                           ; preds = %bb.w, %.split662
  %.us-phi = phi i64 [ %i.as, %.split662 ], [ %i.br, %bb.w ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #14, !noalias !2751
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit: ; preds = %.split662
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aj, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #14, !noalias !2752
  unreachable

.lr.ph708:                                        ; preds = %.lr.ph708.preheader, %bb.q
  %.sroa.01.0.i707 = phi i64 [ %i.bk, %bb.q ], [ 0, %.lr.ph708.preheader ] ; 8 uses
  %i.au = and i64 %.sroa.01.0.i707, 1023
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph708
  %i.aw = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2753
  br i1 %i.aw, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph708
  %i.ax = add nuw i64 %.sroa.01.0.i707, %i.br     ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.01.0.i707, %i.cd
  br i1 %exitcond.not, label %bb.o, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ax, i64 noundef range(i64 0, 576460752303423488) %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #14, !noalias !2754
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84: ; preds = %bb.n
  %i.ay = add nuw i64 %.sroa.01.0.i707, %i.aj     ; 2 uses
  %exitcond919.not = icmp eq i64 %.sroa.01.0.i707, %i.ao
  br i1 %exitcond919.not, label %bb.p, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85

bb.p:                                             ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ay, i64 noundef range(i64 0, 576460752303423488) %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #14, !noalias !2755
  unreachable

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit84
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ay ; 2 uses
  %.val52 = load ptr, ptr %i.az, align 8, !alias.scope !2756, !noalias !2757, !nonnull !3, !align !8, !noundef !3
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val53 = load i64, ptr %i.bb, align 8, !alias.scope !2756, !noalias !2757, !noundef !3
  %.val54 = load ptr, ptr %i.ba, align 8          ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val55 = load i64, ptr %i.bc, align 8
  %i.bd = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val52, i64 noundef %.val53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2758 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val54) ]
  %i.bf = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val54, i64 noundef %.val55, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2758 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85
  %i.bi = extractvalue { ptr, i64 } %i.bf, 0
  %i.bj = extractvalue { ptr, i64 } %i.bd, 0
  %bcmp.i.i87 = call i32 @bcmp(ptr nonnull readonly %i.bj, ptr nonnull readonly %i.bi, i64 %i.be), !alias.scope !2759, !noalias !2758
  %.not339 = icmp eq i32 %bcmp.i.i87, 0
  br i1 %.not339, label %bb.q, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread

bb.q:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88
  %i.bk = add nuw i64 %.sroa.01.0.i707, 1         ; 2 uses
  %exitcond920.not = icmp eq i64 %i.bk, %.sroa.0.0.i83
  br i1 %exitcond920.not, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread, label %.lr.ph708

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88, %bb.q, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.01.0.i707, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit85 ], [ %.sroa.01.0.i707, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88 ], [ %.sroa.0.0.i83, %bb.q ] ; 8 uses
  %i.bl = icmp ugt i64 %.sroa.01.0.i.lcssa, 95
  br i1 %i.bl, label %bb.y, label %.outer

.outer:                                           ; preds = %.split559.us, %bb.af, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread
  %.sroa.525.3.i = phi i64 [ %.sroa.525.4.i, %bb.af ], [ %.sroa.525.2.i.ph713, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread ], [ %.sroa.525.2.i.ph713, %.split559.us ] ; 2 uses
  %.sroa.023.2.i = phi i64 [ 1, %bb.af ], [ %.sroa.023.1.i.ph714, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread ], [ %.sroa.023.1.i.ph714, %.split559.us ] ; 2 uses
  %.sroa.9.3.i = phi i64 [ %.sroa.9.4.i, %bb.af ], [ %.sroa.9.2.i.ph715, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread ], [ %.sroa.9.2.i.ph715, %.split559.us ] ; 2 uses
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %bb.af ], [ %.sroa.12.2.i.ph716, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread ], [ %.sroa.12.2.i.ph716, %.split559.us ] ; 2 uses
  %.not.i78547 = icmp ugt i64 %spec.select336.us, 4
  %or.cond341548 = select i1 %i.bm, i1 true, i1 %.not.i78547
  br i1 %or.cond341548, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.outer
  %.sroa.12.2.i.ph716 = phi i64 [ %.sroa.12.3.i, %.outer ], [ %.sroa.12.0.i722, %.lr.ph.preheader ] ; 7 uses
  %.sroa.9.2.i.ph715 = phi i64 [ %.sroa.9.3.i, %.outer ], [ %.sroa.9.0.i721, %.lr.ph.preheader ] ; 7 uses
  %.sroa.023.1.i.ph714 = phi i64 [ %.sroa.023.2.i, %.outer ], [ %.sroa.023.0.i720, %.lr.ph.preheader ] ; 4 uses
  %.sroa.525.2.i.ph713 = phi i64 [ %.sroa.525.3.i, %.outer ], [ %.sroa.525.0.i719, %.lr.ph.preheader ] ; 8 uses
  %.sroa.0296.0.ph712 = phi i64 [ %spec.select336.us, %.outer ], [ 0, %.lr.ph.preheader ]
  br label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us, %.lr.ph
  %.sroa.0296.0549.us = phi i64 [ %.sroa.0296.0.ph712, %.lr.ph ], [ %spec.select336.us, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us ] ; 11 uses
  %i.bm = icmp eq i64 %.sroa.0296.0549.us, 4      ; 3 uses
  %i.bn = add nuw nsw i64 %.sroa.0296.0549.us, 1
  %spec.select336.us = select i1 %i.bm, i64 4, i64 %i.bn ; 4 uses
  %i.bo = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2753
  br i1 %i.bo, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = icmp eq i64 %.sroa.0296.0549.us, 0      ; 2 uses
  %i.bq = or i64 %.sroa.0296.0549.us, %.sroa.0294.0718
  %or.cond2.i.us = icmp eq i64 %i.bq, 0
  br i1 %or.cond2.i.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.ai, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %brmerge.i.not.us = and i1 %.not.i.fr, %i.bp
  br i1 %brmerge.i.not.us, label %bb.w, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us

bb.v:                                             ; preds = %bb.t
  %or.cond3.old.i.us = or i1 %i.af, %i.bp
  br i1 %or.cond3.old.i.us, label %bb.w, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.br = add i64 %.sroa.0296.0549.us, %.sroa.0260.0 ; 6 uses
  %i.bs = icmp ult i64 %i.br, %.val51
  br i1 %i.bs, label %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us, label %.split

_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us: ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.br ; 2 uses
  %.val56.us = load ptr, ptr %i.bt, align 8, !alias.scope !2756, !noalias !2757, !nonnull !3, !align !8, !noundef !3
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val57.us = load i64, ptr %i.bu, align 8, !alias.scope !2756, !noalias !2757, !noundef !3
  %.val58.us = load ptr, ptr %i.al, align 8       ; 2 uses
  %.val59.us = load i64, ptr %i.am, align 8
  %i.bv = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val56.us, i64 noundef %.val57.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2760 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val58.us) ]
  %i.bx = call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val58.us, i64 noundef %.val59.us, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84), !noalias !2760 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 1
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us: ; preds = %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us
  %i.ca = extractvalue { ptr, i64 } %i.bx, 0
  %i.cb = extractvalue { ptr, i64 } %i.bv, 0
  %bcmp.i.i.us = call i32 @bcmp(ptr nonnull readonly %i.cb, ptr nonnull readonly %i.ca, i64 %i.bw), !alias.scope !2761, !noalias !2760
  %.not338.us = icmp eq i32 %bcmp.i.i.us, 0
  br i1 %.not338.us, label %.split559.us, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us: ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us, %_RNvXsc_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtBL_4text12TextDiffSideeEEEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexBL_.exit.us, %bb.v, %bb.u, %bb.s
  %.not.i78.us = icmp ugt i64 %spec.select336.us, 4
  %or.cond341.us = select i1 %i.bm, i1 true, i1 %.not.i78.us
  br i1 %or.cond341.us, label %.loopexit, label %bb.r

.split559.us:                                     ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.us
  %i.cc = sub i64 %i.l, %i.br
  %.sroa.0.0.i83 = call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %i.an) ; 3 uses
  %.not726 = icmp eq i64 %.sroa.0.0.i83, 0
  br i1 %.not726, label %.outer, label %.lr.ph708.preheader

.lr.ph708.preheader:                              ; preds = %.split559.us
  %i.cd = call i64 @llvm.usub.sat.i64(i64 %.val51, i64 %i.br)
  br label %.lr.ph708

.lr.ph.split.a:                                   ; preds = %bb.k
  br i1 %i.ai, label %.lr.ph.split.split.us, label %.lr.ph.split.split.a

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.a, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a
  %.sroa.0296.0549.us654 = phi i64 [ %spec.select336.us655, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a ], [ 0, %.lr.ph.split.a ] ; 4 uses
  %11 = icmp eq i64 %.sroa.0296.0549.us654, 4     ; 2 uses
  %12 = add nuw nsw i64 %.sroa.0296.0549.us654, 1
  %spec.select336.us655 = select i1 %11, i64 4, i64 %12 ; 2 uses
  %i.ce = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2753
  br i1 %i.ce, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split.split.us
  %or.cond2.i.us656 = icmp ne i64 %.sroa.0296.0549.us654, 0
  %or.cond724 = and i1 %or.cond2.i.us656, %i.af
  br i1 %or.cond724, label %.split662, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us658.a: ; preds = %bb.x
  %.not.i78.us659 = icmp ugt i64 %spec.select336.us655, 4
  %or.cond341.us660 = select i1 %11, i1 true, i1 %.not.i78.us659
  br i1 %or.cond341.us660, label %.loopexit, label %.lr.ph.split.split.us

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.a
  br i1 %.not.i.fr, label %.lr.ph.split.split.split.preheader.a, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader.a:             ; preds = %.lr.ph.split.split.a
  %i.cf = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2753
  br i1 %i.cf, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %.split662

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.a, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696
  %.sroa.0296.0549.us692 = phi i64 [ %spec.select336.us693, %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696 ], [ 0, %.lr.ph.split.split.a ] ; 2 uses
  %i.cg = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2753
  br i1 %i.cg, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit, label %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696

_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit.thread.us696: ; preds = %.lr.ph.split.split.split.us
  %13 = icmp eq i64 %.sroa.0296.0549.us692, 4     ; 2 uses
  %14 = add nuw nsw i64 %.sroa.0296.0549.us692, 1
  %spec.select336.us693 = select i1 %13, i64 4, i64 %14 ; 2 uses
  %.not.i78.us697 = icmp ugt i64 %spec.select336.us693, 4
  %or.cond341.us698 = select i1 %13, i1 true, i1 %.not.i78.us697
  br i1 %or.cond341.us698, label %.loopexit, label %.lr.ph.split.split.split.us

bb.y:                                             ; preds = %_RNvYINtNtNtCsiqiOkcJdymw_7similar10algorithms5utils10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2neB9_.exit88.thread
  %i.ch = icmp ugt i64 %.sroa.01.0.i.lcssa, 767
  br i1 %i.ch, label %.loopexit394, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.i89 = call noundef i64 @llvm.umax.i64(i64 %.sroa.0296.0549.us, i64 %.sroa.0294.0718)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2762
  store i64 %.sroa.01.0.i.lcssa, ptr %i.f, align 8, !noalias !2762
  store i64 %.sroa.0.0.i89, ptr %i.q, align 8, !noalias !2762
  store i64 %.sroa.0294.0718, ptr %i.r, align 8, !noalias !2762
  store i64 %.sroa.0296.0549.us, ptr %i.s, align 8, !noalias !2762
  %i.ci = trunc nuw i64 %.sroa.023.1.i.ph714 to i1
  br i1 %i.ci, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2762
  %.sroa.0.0.i90 = call noundef i64 @llvm.umax.i64(i64 %.sroa.9.2.i.ph715, i64 %.sroa.525.2.i.ph713)
  store i64 %.sroa.12.2.i.ph716, ptr %i.e, align 8, !noalias !2762
  store i64 %.sroa.0.0.i90, ptr %i.t, align 8, !noalias !2762
  store i64 %.sroa.525.2.i.ph713, ptr %i.u, align 8, !noalias !2762
  store i64 %.sroa.9.2.i.ph715, ptr %i.v, align 8, !noalias !2762
  %i.cj = icmp eq i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph716
  %i.ck = icmp ugt i64 %.sroa.01.0.i.lcssa, %.sroa.12.2.i.ph716
  %i.cl = zext i1 %i.ck to i8
  br i1 %i.cj, label %bb.ab, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cm = call noundef range(i8 0, 3) i8 @_RINvNtCs4NRVxsYgnAr_4core3cmp21default_chaining_implINtB2_7ReversejEBO_NvMB2_NtB2_8Ordering5is_gtECsiqiOkcJdymw_7similar(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2753 ; 2 uses
  %.not7.i = icmp eq i8 %i.cm, 2
  br i1 %.not7.i, label %bb.ac, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cn = icmp eq i64 %.sroa.0294.0718, %.sroa.525.2.i.ph713
  %i.co = icmp ugt i64 %.sroa.0294.0718, %.sroa.525.2.i.ph713
  %i.cp = zext i1 %i.co to i8
  br i1 %i.cn, label %bb.ad, label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cq = icmp ugt i64 %.sroa.0296.0549.us, %.sroa.9.2.i.ph715
  %i.cr = zext i1 %i.cq to i8
  br label %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit

_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.sroa.0.2.i = phi i8 [ %i.cl, %bb.aa ], [ %i.cm, %bb.ab ], [ %i.cr, %bb.ad ], [ %i.cp, %bb.ac ]
  %i.cs = trunc nuw i8 %.sroa.0.2.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2762
  br i1 %i.cs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ae, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit
  %.sroa.525.4.i = phi i64 [ %.sroa.525.2.i.ph713, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0294.0718, %bb.z ], [ %.sroa.0294.0718, %bb.ae ]
  %.sroa.9.4.i = phi i64 [ %.sroa.9.2.i.ph715, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.0296.0549.us, %bb.z ], [ %.sroa.0296.0549.us, %bb.ae ]
  %.sroa.12.4.i = phi i64 [ %.sroa.12.2.i.ph716, %_RNvXsw_NtCs4NRVxsYgnAr_4core5tupleTjINtNtB7_3cmp7ReversejEjjENtBB_10PartialOrd2gtCsiqiOkcJdymw_7similar.exit ], [ %.sroa.01.0.i.lcssa, %bb.z ], [ %.sroa.01.0.i.lcssa, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2762
  br label %.outer

bb.ag:                                            ; preds = %.loopexit394
  br i1 %i.ar, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %.loopexit394
  br i1 %i.ar, label %bb.ak, label %bb.al

bb.ai:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag
  %i.ct = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.cu = add i64 %.sroa.9.1.i, %.sroa.0260.0     ; 2 uses
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook5equalB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.ct, i64 noundef %i.cu, i64 noundef %.sroa.12.1.i), !noalias !2763
  %i.cv = add i64 %i.ct, %.sroa.12.1.i
  %i.cw = add i64 %i.cu, %.sroa.12.1.i
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit

bb.aj:                                            ; preds = %bb.ag
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.0260.0, i64 noundef %.sroa.9.1.i), !noalias !2763
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0260.0), !noalias !2763
  br label %bb.ai

bb.al:                                            ; preds = %bb.ah
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook7replaceB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %.sroa.525.1.i, i64 noundef %.sroa.0260.0, i64 noundef %.sroa.9.1.i), !noalias !2763
  br label %bb.ai

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers21try_emit_front_anchorINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB17_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB23_B23_INtNtB4_7compact7CompactB23_B23_IB2D_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.us, %bb.r, %bb.m, %.lr.ph.split.split.split.preheader.a, %bb.f, %bb.i, %bb.l, %bb.ai
  %.sroa.0260.2 = phi i64 [ %.sroa.0260.0, %bb.f ], [ %.sroa.0260.0, %bb.i ], [ %.sroa.0260.0, %bb.l ], [ %i.cw, %bb.ai ], [ %.sroa.0260.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0260.0, %bb.m ], [ %.sroa.0260.0, %bb.r ], [ %.sroa.0260.0, %.lr.ph.split.split.us ], [ %.sroa.0260.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.i ], [ %.sroa.0.0, %bb.l ], [ %i.cv, %bb.ai ], [ %.sroa.0.0, %.lr.ph.split.split.split.preheader.a ], [ %.sroa.0.0, %bb.m ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %.lr.ph.split.split.us ], [ %.sroa.0.0, %.lr.ph.split.split.split.us ] ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.cy = icmp eq i64 %.sroa.0260.2, %.sroa.0260.0
  %or.cond = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.am:                                            ; preds = %bb.e
  br i1 %i.x, label %bb.aq, label %bb.ap

bb.an:                                            ; preds = %bb.e
  br i1 %i.x, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %.sink.split.i.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread326, %bb.ap, %.thread, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers17find_middle_snakeINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit, %bb.ih, %bb.an
  %.not26 = icmp eq i64 %i.j, 0
  br i1 %.not26, label %bb.ij, label %bb.ii

bb.ap:                                            ; preds = %bb.am
  %i.cz = sub nuw i64 %i.k, %.sroa.0.0
  call void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %.sroa.0.0, i64 noundef %i.cz, i64 noundef %.sroa.0260.0)
  br label %bb.ao

bb.aq:                                            ; preds = %bb.am
  %i.da = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !2764
  %.pre = sub nuw i64 %i.k, %.sroa.0.0            ; 28 uses
  %.pre921 = sub nuw i64 %i.l, %.sroa.0260.0      ; 26 uses
  br i1 %i.da, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.db = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.pre, i64 %.pre921) ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.as, !prof !7

bb.as:                                            ; preds = %bb.ar
  %i.dd = extractvalue { i64, i1 } %i.db, 0
  %.sroa.0.0.i92 = call noundef i64 @llvm.umax.i64(i64 %.pre921, i64 %.pre)
  %.sroa.0.0.i91 = call noundef i64 @llvm.umin.i64(i64 %.pre921, i64 %.pre)
  %i.de = add i64 %.sroa.0.0.i91, -65
  %or.cond.i27 = icmp ult i64 %i.de, -64
  %i.df = icmp ult i64 %.sroa.0.0.i92, 512
  %or.cond1.i = or i1 %i.df, %or.cond.i27
  %i.dg = icmp ugt i64 %i.dd, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.dg
  br i1 %or.cond3.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i28 = icmp ugt i64 %.pre, %.pre921
  %i.dh = call noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !3 ; 2 uses
  br i1 %.not.i28, label %bb.au, label %bb.dg

bb.au:                                            ; preds = %bb.at
  br i1 %i.dh, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.di = add i64 %.pre, 1                        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2765
  %i.dj = add nuw i64 %.pre921, 1
  %i.dk = mul i64 %i.di, %i.dj                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2767
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.dk, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !2766
  %i.dl = load i64, ptr %i.c, align 8, !range !5, !noalias !2767, !noundef !3
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !range !6, !noalias !2767, !noundef !3 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.dm, label %bb.aw, label %.lr.ph385.i, !prof !7

bb.aw:                                            ; preds = %bb.av
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !2767
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dq) #14, !noalias !2766
  unreachable

.lr.ph385.i:                                      ; preds = %bb.av
  %i.dr = load ptr, ptr %i.dp, align 8, !noalias !2767, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2767
  store i64 %i.do, ptr %i.d, align 8, !alias.scope !2766, !noalias !2765
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 10 uses
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !2766, !noalias !2765
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 10 uses
  store i64 %i.dk, ptr %i.dt, align 8, !alias.scope !2766, !noalias !2765
  br label %.lr.ph385.split.i

.lr.ph385.split.i:                                ; preds = %.lr.ph385.i, %..loopexit25_crit_edge.split.us.i
  %.sroa.0102.0384.i = phi i64 [ %i.du, %..loopexit25_crit_edge.split.us.i ], [ %.pre921, %.lr.ph385.i ] ; 2 uses
  %i.du = add i64 %.sroa.0102.0384.i, -1          ; 4 uses
  %i.dv = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i

._crit_edge411.i:                                 ; preds = %bb.cf
  br i1 %i.jq, label %bb.ax, label %bb.ay

.lr.ph410.i:                                      ; preds = %.lr.ph410.i.preheader, %bb.cf
  %.sroa.05.0.not409.i = phi i1 [ false, %bb.cf ], [ true, %.lr.ph410.i.preheader ] ; 3 uses
  %.sroa.09.0408.i = phi i64 [ %.sroa.09.3.i, %bb.cf ], [ 0, %.lr.ph410.i.preheader ] ; 13 uses
  %.sroa.038.0407.i = phi i64 [ %.sroa.038.3.i, %bb.cf ], [ 0, %.lr.ph410.i.preheader ] ; 17 uses
  %i.dw = and i64 %.sroa.038.0407.i, 1023
  %i.dx = icmp eq i64 %i.dw, 0
  %or.cond170.i = select i1 %.sroa.05.0.not409.i, i1 %i.dx, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bb, label %bb.ba

bb.ax:                                            ; preds = %._crit_edge411.i
  %i.dy = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.dz = sub nuw i64 %.pre, %.sroa.038.3.i
  %i.ea = add i64 %.sroa.09.3.i, %.sroa.0260.0
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.dy, i64 noundef %i.dz, i64 noundef %i.ea)
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.ay:                                            ; preds = %bb.ax, %._crit_edge411.i
  br i1 %i.jp, label %bb.az, label %.sink.split.i.thread

.loopexit.i:                                      ; preds = %.noexc183.i, %bb.ck, %bb.ch
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc191.i, %bb.bo, %bb.bl
  %lpad.loopexit12.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.noexc187.i, %bb.bz, %bb.bw
  %lpad.loopexit17.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %_RNvXs0_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqB9_.exit186.thread.i, %._crit_edge1538, %._crit_edge.i, %.noexc195.i, %bb.be, %bb.bb
  %lpad.loopexit21.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i: ; preds = %bb.dc
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i: ; preds = %.lr.ph385.split.i
  %lpad.loopexit29.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split.us.invoke.i, %bb.az, %bb.ax
  %lpad.loopexit.split-lp30.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit12.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit17.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit21.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit26.us.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.i ], [ %lpad.loopexit26.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i ], [ %lpad.loopexit.split-lp30.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit29.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24) %i.d) #15
          to label %common.resume unwind label %bb.df

bb.az:                                            ; preds = %bb.ay
  %i.eb = add i64 %.sroa.038.3.i, %.sroa.0.0
  %i.ec = add i64 %.sroa.09.3.i, %.sroa.0260.0
  %i.ed = sub nuw i64 %.pre921, %.sroa.09.3.i
  invoke void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6insertB9_(ptr noalias noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %i.eb, i64 noundef %i.ec, i64 noundef %i.ed)
          to label %.sink.split.i.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.sink.split.i.thread:                             ; preds = %bb.ay, %bb.az
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsiqiOkcJdymw_7similar(ptr noalias noundef align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2765
  br label %bb.ao

.sink.split.i:                                    ; preds = %.loopexit10.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2765
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB29_B29_INtNtB4_7compact7CompactB29_B29_IB2J_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

bb.ba:                                            ; preds = %bb.bc, %.lr.ph410.i
  %i.ee = mul i64 %.sroa.09.0408.i, %i.di         ; 4 uses
  %i.ef = add i64 %.sroa.038.0407.i, %.sroa.0.0   ; 7 uses
  %i.eg = add i64 %.sroa.09.0408.i, %.sroa.0260.0 ; 6 uses
  %i.eh = icmp ult i64 %i.eg, %.val51
  br i1 %i.eh, label %bb.bd, label %.split.us.invoke.i

bb.bb:                                            ; preds = %.lr.ph410.i
  %i.ei = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ei, label %.loopexit10.i, label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.val50, i64 %i.eg ; 3 uses
  %i.ek = icmp ult i64 %i.ef, %.val49
  br i1 %i.ek, label %bb.be, label %.split.us.invoke.i

bb.be:                                            ; preds = %bb.bd
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.val48, i64 %i.ef ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2768)
  call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  %i.em = load ptr, ptr %i.ej, align 8, !alias.scope !2768, !noalias !2770, !nonnull !3, !align !8, !noundef !3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !2768, !noalias !2770, !noundef !3
  %i.ep = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexB7_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.em, i64 noundef %i.eo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84)
          to label %.noexc195.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ; 2 uses

.noexc195.i:                                      ; preds = %bb.be
  %i.eq = extractvalue { ptr, i64 } %i.ep, 0
  %i.er = extractvalue { ptr, i64 } %i.ep, 1      ; 2 uses
  %i.es = load ptr, ptr %i.el, align 8, !alias.scope !2769, !noalias !2771, !nonnull !3, !align !8, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
end_hunk_9
